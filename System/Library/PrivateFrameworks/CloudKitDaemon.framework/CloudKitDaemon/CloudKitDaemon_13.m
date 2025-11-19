uint64_t sub_2252D4660(uint64_t a1, void *a2, uint64_t a3)
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
        v82 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v82, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v82 & 0x7F) << v10;
        if ((v82 & 0x80) == 0)
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
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v83 = 0;
            v61 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
            {
              v69 = objc_msgSend_data(a2, v64, v65);
              v72 = objc_msgSend_position(a2, v70, v71);
              objc_msgSend_getBytes_range_(v69, v73, &v83, v72, 1);

              v76 = objc_msgSend_position(a2, v74, v75);
              objc_msgSend_setPosition_(a2, v77, v76 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v64, v65);
            }

            v60 |= (v83 & 0x7F) << v58;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v30 = v59++ >= 9;
            if (v30)
            {
              v78 = 0;
              goto LABEL_52;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v78 = 0;
          }

          else
          {
            v78 = v60;
          }

LABEL_52:
          *(a1 + 8) = v78;
        }

        else
        {
          if (v32 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_53;
          }

          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v84 = 0;
            v38 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v84, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v84 & 0x7F) << v35;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_48;
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

LABEL_48:
          *(a1 + 32) = v55;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = PBReaderReadData();
          v34 = 16;
        }

        else
        {
          if (v32 != 2)
          {
            goto LABEL_32;
          }

          v33 = PBReaderReadString();
          v34 = 24;
        }

        v57 = *(a1 + v34);
        *(a1 + v34) = v33;
      }

LABEL_53:
      v79 = objc_msgSend_position(a2, v32, v9);
    }

    while (v79 < objc_msgSend_length(a2, v80, v81));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252D5038()
{
  v0 = qword_280D54F18;
  qword_280D54F18 = &unk_2838C92F0;
}

uint64_t sub_2252D5810(uint64_t a1, void *a2, uint64_t a3)
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
      if ((v31 >> 3) <= 3)
      {
        switch(v32)
        {
          case 1:
            v33 = objc_alloc_init(MEMORY[0x277CBC278]);
            objc_storeStrong((a1 + 40), v33);
            v65 = 0;
            v66 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
            {
LABEL_55:

              return 0;
            }

            goto LABEL_49;
          case 2:
            v33 = objc_alloc_init(CKDPSupportedCapabilitiesCapability);
            objc_msgSend_addZoneLevelCapabilities_(a1, v59, v33);
LABEL_47:
            v65 = 0;
            v66 = 0;
            if (!PBReaderPlaceMark() || !sub_22536EBA4(v33, a2, v60))
            {
              goto LABEL_55;
            }

LABEL_49:
            PBReaderRecallMark();

            goto LABEL_50;
          case 3:
            v33 = objc_alloc_init(CKDPSupportedCapabilitiesCapability);
            objc_msgSend_addRecordLevelCapabilities_(a1, v34, v33);
            goto LABEL_47;
        }
      }

      else if (v32 > 5)
      {
        if (v32 == 6)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v65) = 0;
            v41 = objc_msgSend_position(a2, v32, v9, v65) + 1;
            if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
            {
              v49 = objc_msgSend_data(a2, v44, v45);
              v52 = objc_msgSend_position(a2, v50, v51);
              objc_msgSend_getBytes_range_(v49, v53, &v65, v52, 1);

              v56 = objc_msgSend_position(a2, v54, v55);
              objc_msgSend_setPosition_(a2, v57, v56 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v44, v45);
            }

            v40 |= (v65 & 0x7F) << v38;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v30 = v39++ >= 9;
            if (v30)
            {
              LOBYTE(v58) = 0;
              goto LABEL_53;
            }
          }

          v58 = (v40 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_53:
          *(a1 + 56) = v58;
          goto LABEL_50;
        }

        if (v32 == 7)
        {
          v35 = PBReaderReadData();
          v36 = *(a1 + 8);
          *(a1 + 8) = v35;

          goto LABEL_50;
        }
      }

      else
      {
        if (v32 == 4)
        {
          v33 = objc_alloc_init(CKDPSupportedCapabilitiesCapability);
          objc_msgSend_addFieldLevelCapabilities_(a1, v37, v33);
          goto LABEL_47;
        }

        if (v32 == 5)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBC240]);
          objc_storeStrong((a1 + 16), v33);
          v65 = 0;
          v66 = 0;
          if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
          {
            goto LABEL_55;
          }

          goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v61 = objc_msgSend_position(a2, v32, v9);
    }

    while (v61 < objc_msgSend_length(a2, v62, v63));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D6D54(uint64_t a1, void *a2, uint64_t a3)
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
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v41 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
            if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
            {
              v49 = objc_msgSend_data(a2, v44, v45);
              v52 = objc_msgSend_position(a2, v50, v51);
              objc_msgSend_getBytes_range_(v49, v53, v63, v52, 1);

              v56 = objc_msgSend_position(a2, v54, v55);
              objc_msgSend_setPosition_(a2, v57, v56 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v44, v45);
            }

            v40 |= (v63[0] & 0x7F) << v38;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v30 = v39++ >= 9;
            if (v30)
            {
              LOBYTE(v58) = 0;
              goto LABEL_42;
            }
          }

          v58 = (v40 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_42:
          *(a1 + 40) = v58;
          goto LABEL_43;
        }

        if (v32 != 2)
        {
          goto LABEL_39;
        }

        v35 = objc_alloc_init(CKDPSignedVersionedBlob);
        v36 = 24;
      }

      else
      {
        switch(v32)
        {
          case 3:
            v35 = objc_alloc_init(CKDPSignedVersionedBlob);
            v36 = 16;
            break;
          case 4:
            v35 = objc_alloc_init(CKDPSignedVersionedBlob);
            v36 = 32;
            break;
          case 5:
            v33 = PBReaderReadData();
            v34 = *(a1 + 8);
            *(a1 + 8) = v33;

            goto LABEL_43;
          default:
LABEL_39:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_43;
        }
      }

      objc_storeStrong((a1 + v36), v35);
      v63[0] = 0;
      v63[1] = 0;
      if (!PBReaderPlaceMark() || !sub_225360D24(v35, a2, v37))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252D77E0()
{
  v0 = qword_280D58418;
  qword_280D58418 = &unk_2838C9318;
}

uint64_t sub_2252D7930(uint64_t a1, void *a2, uint64_t a3)
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

      if ((v31 >> 3) == 3)
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

uint64_t sub_2252D859C(uint64_t a1, void *a2, uint64_t a3)
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
          v33 = objc_alloc_init(CKDPAdopterFeatureSetAdopterFeature);
          objc_msgSend_addRecordFeatures_(a1, v57, v33);
        }

        else
        {
          if (v32 != 4)
          {
            goto LABEL_24;
          }

          v33 = objc_alloc_init(CKDPAdopterFeatureSetAdopterFeature);
          objc_msgSend_addFieldFeatures_(a1, v35, v33);
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
            LOBYTE(v63[0]) = 0;
            v39 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
            if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
            {
              v47 = objc_msgSend_data(a2, v42, v43);
              v50 = objc_msgSend_position(a2, v48, v49);
              objc_msgSend_getBytes_range_(v47, v51, v63, v50, 1);

              v54 = objc_msgSend_position(a2, v52, v53);
              objc_msgSend_setPosition_(a2, v55, v54 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v42, v43);
            }

            v38 |= (v63[0] & 0x7F) << v36;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v30 = v37++ >= 9;
            if (v30)
            {
              v56 = 0;
              goto LABEL_42;
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

LABEL_42:
          *(a1 + 16) = v56;
          goto LABEL_43;
        }

        if (v32 != 2)
        {
LABEL_24:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_43;
        }

        v33 = objc_alloc_init(CKDPAdopterFeatureSetAdopterFeature);
        objc_msgSend_addZoneFeatures_(a1, v34, v33);
      }

      v63[0] = 0;
      v63[1] = 0;
      if (!PBReaderPlaceMark() || !sub_2252D95D4(v33, a2, v58))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D95D4(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = &OBJC_IVAR___CKDPAdopterFeatureSetAdopterFeature__value;
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

    v32 = &OBJC_IVAR___CKDPAdopterFeatureSetAdopterFeature__key;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D9FA4(uint64_t a1, void *a2, uint64_t a3)
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
        *(a1 + 20) |= 1u;
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
        *(a1 + 16) = v56;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPAncestryEtagAncestorInformation);
        objc_msgSend_addAncestorInformation_(a1, v34, v33);
        v61[0] = 0;
        v61[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252DAA34(v33, a2, v35))
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

uint64_t sub_2252DAA34(uint64_t a1, void *a2, uint64_t a3)
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

    v33 = PBReaderReadString();
    v32 = *(a1 + 8);
    *(a1 + 8) = v33;
LABEL_23:

    goto LABEL_25;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252DB064()
{
  v0 = qword_280D58428;
  qword_280D58428 = &unk_2838C9340;
}

uint64_t sub_2252DB1D8(uint64_t a1, void *a2, uint64_t a3)
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

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = &OBJC_IVAR___CKDPAnonymousShareAddRequest__anonymousShareTupleHash;
LABEL_21:
        v34 = *v33;
        v35 = *(a1 + v34);
        *(a1 + v34) = v32;

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

    v32 = PBReaderReadData();
    v33 = &OBJC_IVAR___CKDPAnonymousShareAddRequest__encryptedShareTuple;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252DB87C(uint64_t a1, void *a2, uint64_t a3)
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
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
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
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252DBC18()
{
  v0 = qword_280D58438;
  qword_280D58438 = &unk_2838C9368;
}

uint64_t sub_2252DBD8C(uint64_t a1, void *a2, uint64_t a3)
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

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = &OBJC_IVAR___CKDPAnonymousShareRemoveRequest__anonymousShareTupleHash;
LABEL_21:
        v34 = *v33;
        v35 = *(a1 + v34);
        *(a1 + v34) = v32;

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

    v32 = PBReaderReadData();
    v33 = &OBJC_IVAR___CKDPAnonymousShareRemoveRequest__encryptedShareTuple;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252DC430(uint64_t a1, void *a2, uint64_t a3)
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
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
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
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252DC8D4(uint64_t a1, void *a2, uint64_t a3)
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

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = &OBJC_IVAR___CKDPAnonymousZoneInfo__anonymousZoneInfoID;
LABEL_21:
        v34 = *v33;
        v35 = *(a1 + v34);
        *(a1 + v34) = v32;

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

    v32 = PBReaderReadData();
    v33 = &OBJC_IVAR___CKDPAnonymousZoneInfo__anonymousZoneInfoData;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252DCE94()
{
  v0 = qword_280D58448;
  qword_280D58448 = &unk_2838C9390;
}

uint64_t sub_2252DD198(void *a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(MEMORY[0x277CBC268]);
        objc_msgSend_addIdsToArchive_(a1, v33, v32);
        v40[0] = 0;
        v40[1] = 0;
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

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252DF538(uint64_t a1, void *a2, uint64_t a3)
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
        v54 = objc_alloc_init(CKDPRequestedFields);
        objc_storeStrong((a1 + 8), v54);
        v60[0] = 0;
        v60[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRequestedFieldsReadFrom(v54, a2, v55))
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
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v60[0]) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, v60, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v60[0] & 0x7F) << v33;
          if ((v60[0] & 0x80) == 0)
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
        *(a1 + 16) = v53;
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

void sub_2252DFC3C()
{
  v0 = qword_280D54EB8;
  qword_280D54EB8 = &unk_2838C93B8;
}

uint64_t sub_2252E05F8(uint64_t a1, void *a2, uint64_t a3)
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
      if ((v31 >> 3) > 4)
      {
        if (v32 > 7)
        {
          if (v32 == 8)
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              LOBYTE(v90) = 0;
              v71 = objc_msgSend_position(a2, v32, v9, v90) + 1;
              if (v71 >= objc_msgSend_position(a2, v72, v73) && (v76 = objc_msgSend_position(a2, v74, v75) + 1, v76 <= objc_msgSend_length(a2, v77, v78)))
              {
                v79 = objc_msgSend_data(a2, v74, v75);
                v82 = objc_msgSend_position(a2, v80, v81);
                objc_msgSend_getBytes_range_(v79, v83, &v90, v82, 1);

                v86 = objc_msgSend_position(a2, v84, v85);
                objc_msgSend_setPosition_(a2, v87, v86 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v74, v75);
              }

              v70 |= (v90 & 0x7F) << v68;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              v30 = v69++ >= 9;
              if (v30)
              {
                v88 = 0;
                goto LABEL_69;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v88 = 0;
            }

            else
            {
              v88 = v70;
            }

LABEL_69:
            *(a1 + 32) = v88;
            goto LABEL_53;
          }

          if (v32 == 9)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              LOBYTE(v90) = 0;
              v42 = objc_msgSend_position(a2, v32, v9, v90) + 1;
              if (v42 >= objc_msgSend_position(a2, v43, v44) && (v47 = objc_msgSend_position(a2, v45, v46) + 1, v47 <= objc_msgSend_length(a2, v48, v49)))
              {
                v50 = objc_msgSend_data(a2, v45, v46);
                v53 = objc_msgSend_position(a2, v51, v52);
                objc_msgSend_getBytes_range_(v50, v54, &v90, v53, 1);

                v57 = objc_msgSend_position(a2, v55, v56);
                objc_msgSend_setPosition_(a2, v58, v57 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v45, v46);
              }

              v41 |= (v90 & 0x7F) << v39;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v30 = v40++ >= 9;
              if (v30)
              {
                v59 = 0;
                goto LABEL_73;
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

LABEL_73:
            *(a1 + 8) = v59;
            goto LABEL_53;
          }
        }

        else
        {
          if (v32 == 5)
          {
            v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveRequestHeaderInfo);
            objc_msgSend_addContentRequestHeaders_(a1, v61, v33);
            v90 = 0;
            v91 = 0;
            if (!PBReaderPlaceMark() || !sub_2252E277C(v33, a2, v62))
            {
LABEL_75:

              return 0;
            }

            goto LABEL_52;
          }

          if (v32 == 6)
          {
            v35 = PBReaderReadData();
            v36 = *(a1 + 24);
            *(a1 + 24) = v35;

            goto LABEL_53;
          }
        }
      }

      else if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPAsset);
          objc_msgSend_addAssets_(a1, v63, v33);
          v90 = 0;
          v91 = 0;
          if (!PBReaderPlaceMark() || !CKDPAssetReadFrom(v33, a2, v64))
          {
            goto LABEL_75;
          }

          goto LABEL_52;
        }

        if (v32 == 4)
        {
          v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveRequestRecordAssetUpload);
          objc_msgSend_addUploads_(a1, v37, v33);
          v90 = 0;
          v91 = 0;
          if (!PBReaderPlaceMark() || !sub_2252E3094(&v33->super.super.isa, a2, v38))
          {
            goto LABEL_75;
          }

          goto LABEL_52;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(CKDPRecordType);
          objc_storeStrong((a1 + 56), v33);
          v90 = 0;
          v91 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v33, a2, v60))
          {
            goto LABEL_75;
          }

          goto LABEL_52;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPRecordFieldIdentifier);
          objc_storeStrong((a1 + 48), v33);
          v90 = 0;
          v91 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordFieldIdentifierReadFrom(v33, a2, v34))
          {
            goto LABEL_75;
          }

LABEL_52:
          PBReaderRecallMark();

          goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_53:
      v65 = objc_msgSend_position(a2, v32, v9);
    }

    while (v65 < objc_msgSend_length(a2, v66, v67));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E1DF0(id *a1, void *a2, uint64_t a3)
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
        objc_storeStrong(a1 + 2, v32);
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

    v32 = objc_alloc_init(CKDPAsset);
    objc_msgSend_addAssets_(a1, v34, v32);
    v42 = 0;
    v43 = 0;
    if (!PBReaderPlaceMark() || !CKDPAssetReadFrom(v32, a2, v35))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E277C(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = &OBJC_IVAR___CKDPAssetUploadTokenRetrieveRequestHeaderInfo__headerValue;
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

    v32 = &OBJC_IVAR___CKDPAssetUploadTokenRetrieveRequestHeaderInfo__headerKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E3094(id *a1, void *a2, uint64_t a3)
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

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveRequestAssetField);
        objc_msgSend_addAssetFields_(a1, v35, v33);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_2252E1DF0(&v33->super.super.isa, a2, v36))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v32 == 2)
      {
        break;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(MEMORY[0x277CBC268]);
        objc_storeStrong(a1 + 2, v33);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v39 = objc_msgSend_position(a2, v37, v38);
      if (v39 >= objc_msgSend_length(a2, v40, v41))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPRecordType);
    objc_storeStrong(a1 + 3, v33);
    v43 = 0;
    v44 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v33, a2, v34))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E3F04(void *a1, void *a2, uint64_t a3)
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
      if ((v31 >> 3) == 4)
      {
        break;
      }

      if (v32 == 3)
      {
        v36 = PBReaderReadData();
        v33 = a1[1];
        a1[1] = v36;
        goto LABEL_27;
      }

      if (v32 == 2)
      {
        v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveResponseUploadToken);
        objc_msgSend_addUploadTokens_(a1, v34, v33);
        v45 = 0;
        v46 = 0;
        if (!PBReaderPlaceMark() || !sub_2252E5394(v33, a2, v35))
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

    v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveResponseHeaderInfo);
    objc_msgSend_addContentResponseHeaders_(a1, v37, v33);
    v45 = 0;
    v46 = 0;
    if (!PBReaderPlaceMark() || !sub_2252E4B48(v33, a2, v38))
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

uint64_t sub_2252E4B48(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = &OBJC_IVAR___CKDPAssetUploadTokenRetrieveResponseHeaderInfo__headerValue;
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

    v32 = &OBJC_IVAR___CKDPAssetUploadTokenRetrieveResponseHeaderInfo__headerKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E5394(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v83[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v83[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v83, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v83[0] & 0x7F) << v10;
        if ((v83[0] & 0x80) == 0)
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

      if (v32 == 1)
      {
        v56 = PBReaderReadString();
        v57 = *(a1 + 24);
        *(a1 + 24) = v56;

        goto LABEL_52;
      }

      if (v32 != 2)
      {
        goto LABEL_34;
      }

      v33 = objc_alloc_init(CKDPAsset);
      objc_storeStrong((a1 + 16), v33);
      v83[0] = 0;
      v83[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPAssetReadFrom(v33, a2, v34))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_52:
      v79 = objc_msgSend_position(a2, v32, v9);
      if (v79 >= objc_msgSend_length(a2, v80, v81))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 3)
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v83[0]) = 0;
        v61 = objc_msgSend_position(a2, v32, v9, v83[0]) + 1;
        if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
        {
          v69 = objc_msgSend_data(a2, v64, v65);
          v72 = objc_msgSend_position(a2, v70, v71);
          objc_msgSend_getBytes_range_(v69, v73, v83, v72, 1);

          v76 = objc_msgSend_position(a2, v74, v75);
          objc_msgSend_setPosition_(a2, v77, v76 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v64, v65);
        }

        v60 |= (v83[0] & 0x7F) << v58;
        if ((v83[0] & 0x80) == 0)
        {
          break;
        }

        v58 += 7;
        v30 = v59++ >= 9;
        if (v30)
        {
          v78 = 0;
          goto LABEL_51;
        }
      }

      if (objc_msgSend_hasError(a2, v32, v9))
      {
        v78 = 0;
      }

      else
      {
        v78 = v60;
      }

LABEL_51:
      *(a1 + 8) = v78;
      goto LABEL_52;
    }

    if (v32 == 4)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v83[0]) = 0;
        v38 = objc_msgSend_position(a2, v32, v9, v83[0]) + 1;
        if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
        {
          v46 = objc_msgSend_data(a2, v41, v42);
          v49 = objc_msgSend_position(a2, v47, v48);
          objc_msgSend_getBytes_range_(v46, v50, v83, v49, 1);

          v53 = objc_msgSend_position(a2, v51, v52);
          objc_msgSend_setPosition_(a2, v54, v53 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v41, v42);
        }

        v37 |= (v83[0] & 0x7F) << v35;
        if ((v83[0] & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v30 = v36++ >= 9;
        if (v30)
        {
          LOBYTE(v55) = 0;
          goto LABEL_47;
        }
      }

      v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_47:
      *(a1 + 32) = v55;
      goto LABEL_52;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_52;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252E5DF4()
{
  v0 = qword_280D58458;
  qword_280D58458 = &unk_2838C93E0;
}

uint64_t sub_2252E6138(void *a1, void *a2, uint64_t a3)
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
        objc_msgSend_addBundleID_(a1, v32, v33);
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

void sub_2252E67E0()
{
  v0 = qword_280D54F28;
  qword_280D54F28 = &unk_2838C9408;
}

uint64_t sub_2252E6A78(id *a1, void *a2, uint64_t a3)
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
      if ((v31 >> 3) > 3)
      {
        switch(v32)
        {
          case 4:
            v35 = objc_alloc_init(CKDPCodeFunctionInvokeRequestProtectedCloudComputeMetadata);
            objc_storeStrong(a1 + 3, v35);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !sub_2252E7C3C(v35, a2, v37))
            {
LABEL_42:

              return 0;
            }

LABEL_38:
            PBReaderRecallMark();
LABEL_39:

            goto LABEL_40;
          case 5:
            v35 = objc_alloc_init(CKDPCodeFunctionInvokeRequestAttestationRequest);
            objc_storeStrong(a1 + 1, v35);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !sub_2252E7608(v35, a2, v40))
            {
              goto LABEL_42;
            }

            goto LABEL_38;
          case 6:
            v35 = objc_alloc_init(CKCDPTrustedTargetCryptoMetadata);
            objc_storeStrong(a1 + 6, v35);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !sub_2252D4660(v35, a2, v36))
            {
              goto LABEL_42;
            }

            goto LABEL_38;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v33 = PBReaderReadString();
            v34 = 5;
            goto LABEL_35;
          case 2:
            v33 = PBReaderReadString();
            v34 = 2;
            goto LABEL_35;
          case 3:
            v33 = PBReaderReadData();
            v34 = 4;
LABEL_35:
            v35 = a1[v34];
            a1[v34] = v33;
            goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v41 = objc_msgSend_position(a2, v38, v39);
    }

    while (v41 < objc_msgSend_length(a2, v42, v43));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E7608(uint64_t a1, void *a2, uint64_t a3)
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
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
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
        v32 = PBReaderReadData();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E7C3C(void *a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPCodeFunctionInvokeRequestProtectedCloudComputeMetadataCryptoSession);
        objc_msgSend_addCryptoSessions_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252E8444(v32, a2, v34))
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

uint64_t sub_2252E8444(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = &OBJC_IVAR___CKDPCodeFunctionInvokeRequestProtectedCloudComputeMetadataCryptoSession__routingToken;
LABEL_21:
        v33 = PBReaderReadData();
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

    v32 = &OBJC_IVAR___CKDPCodeFunctionInvokeRequestProtectedCloudComputeMetadataCryptoSession__wrappedInvocationKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E8B1C(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = PBReaderReadData();
        v33 = *(a1 + 16);
        *(a1 + 16) = v32;
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

    v33 = objc_alloc_init(CKDPCodeFunctionInvokeResponseAttestationResponse);
    objc_storeStrong((a1 + 8), v33);
    v41[0] = 0;
    v41[1] = 0;
    if (!PBReaderPlaceMark() || !sub_2252E93E0(v33, a2, v34))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E93E0(void *a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPCodeFunctionInvokeResponseAttestationResponseAttestation);
        objc_msgSend_addAttestations_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252E9C58(v32, a2, v34))
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

uint64_t sub_2252E9C58(uint64_t a1, void *a2, uint64_t a3)
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
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = PBReaderReadString();
          v34 = &OBJC_IVAR___CKDPCodeFunctionInvokeResponseAttestationResponseAttestation__pckCertificate;
          goto LABEL_28;
        }

        if (v32 == 4)
        {
          v33 = PBReaderReadData();
          v34 = &OBJC_IVAR___CKDPCodeFunctionInvokeResponseAttestationResponseAttestation__routingToken;
          goto LABEL_28;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = PBReaderReadData();
          v34 = &OBJC_IVAR___CKDPCodeFunctionInvokeResponseAttestationResponseAttestation__appQuote;
          goto LABEL_28;
        }

        if (v32 == 2)
        {
          v33 = PBReaderReadData();
          v34 = &OBJC_IVAR___CKDPCodeFunctionInvokeResponseAttestationResponseAttestation__aqeQuote;
LABEL_28:
          v37 = *v34;
          v38 = *(a1 + v37);
          *(a1 + v37) = v33;

          goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v39 = objc_msgSend_position(a2, v35, v36);
    }

    while (v39 < objc_msgSend_length(a2, v40, v41));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252EB49C(uint64_t a1, void *a2, uint64_t a3)
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

    v33 = objc_alloc_init(CKDPConfigurationFieldValue);
    objc_storeStrong((a1 + 16), v33);
    v41[0] = 0;
    v41[1] = 0;
    if (!PBReaderPlaceMark() || !sub_2252EC3BC(v33, a2, v34))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252EC3BC(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v123) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v123) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v123, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v123 & 0x7F) << v10;
        if ((v123 & 0x80) == 0)
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
            v57 = objc_alloc_init(CKDPConfigurationField);
            objc_msgSend_addFieldValues_(a1, v109, v57);
            v123 = 0;
            v124 = 0;
            if (!PBReaderPlaceMark() || !sub_2252EB49C(v57, a2))
            {
LABEL_83:

              return 0;
            }

            goto LABEL_66;
          }

          if (v32 == 8)
          {
            v57 = objc_alloc_init(CKDPConfigurationFieldValue);
            objc_msgSend_addListValues_(a1, v58, v57);
            v123 = 0;
            v124 = 0;
            if (!PBReaderPlaceMark() || !sub_2252EC3BC(v57, a2))
            {
              goto LABEL_83;
            }

LABEL_66:
            PBReaderRecallMark();

            goto LABEL_81;
          }
        }

        else
        {
          if (v32 == 5)
          {
            *(a1 + 64) |= 1u;
            v123 = 0;
            v80 = objc_msgSend_position(a2, v32, v9) + 8;
            if (v80 >= objc_msgSend_position(a2, v81, v82) && (v85 = objc_msgSend_position(a2, v83, v84) + 8, v85 <= objc_msgSend_length(a2, v86, v87)))
            {
              v110 = objc_msgSend_data(a2, v83, v84);
              v113 = objc_msgSend_position(a2, v111, v112);
              objc_msgSend_getBytes_range_(v110, v114, &v123, v113, 8);

              v117 = objc_msgSend_position(a2, v115, v116);
              objc_msgSend_setPosition_(a2, v118, v117 + 8);
            }

            else
            {
              objc_msgSend__setError(a2, v83, v84);
            }

            *(a1 + 8) = v123;
            goto LABEL_81;
          }

          if (v32 == 6)
          {
            v33 = PBReaderReadString();
            v34 = 48;
            goto LABEL_26;
          }
        }
      }

      else if (v32 > 2)
      {
        if (v32 == 3)
        {
          v88 = 0;
          v89 = 0;
          v90 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            LOBYTE(v123) = 0;
            v91 = objc_msgSend_position(a2, v32, v9, v123) + 1;
            if (v91 >= objc_msgSend_position(a2, v92, v93) && (v96 = objc_msgSend_position(a2, v94, v95) + 1, v96 <= objc_msgSend_length(a2, v97, v98)))
            {
              v99 = objc_msgSend_data(a2, v94, v95);
              v102 = objc_msgSend_position(a2, v100, v101);
              objc_msgSend_getBytes_range_(v99, v103, &v123, v102, 1);

              v106 = objc_msgSend_position(a2, v104, v105);
              objc_msgSend_setPosition_(a2, v107, v106 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v94, v95);
            }

            v90 |= (v123 & 0x7F) << v88;
            if ((v123 & 0x80) == 0)
            {
              break;
            }

            v88 += 7;
            v30 = v89++ >= 9;
            if (v30)
            {
              LOBYTE(v108) = 0;
              goto LABEL_74;
            }
          }

          v108 = (v90 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_74:
          *(a1 + 60) = v108;
          goto LABEL_81;
        }

        if (v32 == 4)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            LOBYTE(v123) = 0;
            v39 = objc_msgSend_position(a2, v32, v9, v123) + 1;
            if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
            {
              v47 = objc_msgSend_data(a2, v42, v43);
              v50 = objc_msgSend_position(a2, v48, v49);
              objc_msgSend_getBytes_range_(v47, v51, &v123, v50, 1);

              v54 = objc_msgSend_position(a2, v52, v53);
              objc_msgSend_setPosition_(a2, v55, v54 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v42, v43);
            }

            v38 |= (v123 & 0x7F) << v36;
            if ((v123 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v30 = v37++ >= 9;
            if (v30)
            {
              v56 = 0;
              goto LABEL_78;
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

LABEL_78:
          *(a1 + 16) = v56;
          goto LABEL_81;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            LOBYTE(v123) = 0;
            v62 = objc_msgSend_position(a2, v32, v9, v123) + 1;
            if (v62 >= objc_msgSend_position(a2, v63, v64) && (v67 = objc_msgSend_position(a2, v65, v66) + 1, v67 <= objc_msgSend_length(a2, v68, v69)))
            {
              v70 = objc_msgSend_data(a2, v65, v66);
              v73 = objc_msgSend_position(a2, v71, v72);
              objc_msgSend_getBytes_range_(v70, v74, &v123, v73, 1);

              v77 = objc_msgSend_position(a2, v75, v76);
              objc_msgSend_setPosition_(a2, v78, v77 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v65, v66);
            }

            v61 |= (v123 & 0x7F) << v59;
            if ((v123 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v30 = v60++ >= 9;
            if (v30)
            {
              v79 = 0;
              goto LABEL_72;
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

LABEL_72:
          *(a1 + 56) = v79;
          goto LABEL_81;
        }

        if (v32 == 2)
        {
          v33 = PBReaderReadData();
          v34 = 24;
LABEL_26:
          v35 = *(a1 + v34);
          *(a1 + v34) = v33;

          goto LABEL_81;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_81:
      v119 = objc_msgSend_position(a2, v32, v9);
    }

    while (v119 < objc_msgSend_length(a2, v120, v121));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPContactInformationReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3) - 1;
      if (v32 >= 6)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v33 = off_27854C850[v32];
        v34 = PBReaderReadString();
        v35 = *v33;
        v36 = *(a1 + v35);
        *(a1 + v35) = v34;
      }

      v39 = objc_msgSend_position(a2, v37, v38);
    }

    while (v39 < objc_msgSend_length(a2, v40, v41));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252EE4B8(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = &OBJC_IVAR___CKDPCryptoRequirementsSigningKey__signingPublicKeySignature;
LABEL_21:
        v33 = PBReaderReadData();
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

    v32 = &OBJC_IVAR___CKDPCryptoRequirementsSigningKey__signingPublicKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252EFE4C()
{
  v0 = qword_280D58468;
  qword_280D58468 = &unk_2838C9430;
}

uint64_t CKDPEncryptedMergeableValueReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(MEMORY[0x277CBC250]);
        objc_storeStrong((a1 + 8), v32);
        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
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

void sub_2252F0694()
{
  v0 = qword_280D54FB8;
  qword_280D54FB8 = &unk_2838C9458;
}

uint64_t sub_2252F09B0(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v83) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v83) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v83, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v83 & 0x7F) << v10;
        if ((v83 & 0x80) == 0)
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
          v33 = objc_alloc_init(MEMORY[0x277CBC278]);
          objc_storeStrong((a1 + 32), v33);
          v83 = 0;
          v84 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
          {
LABEL_58:

            return 0;
          }

          goto LABEL_47;
        }

        if (v32 == 2)
        {
          v35 = PBReaderReadData();
          v36 = *(a1 + 8);
          *(a1 + 8) = v35;

          goto LABEL_56;
        }
      }

      else
      {
        switch(v32)
        {
          case 3:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v83) = 0;
              v40 = objc_msgSend_position(a2, v32, v9, v83) + 1;
              if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
              {
                v48 = objc_msgSend_data(a2, v43, v44);
                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_getBytes_range_(v48, v52, &v83, v51, 1);

                v55 = objc_msgSend_position(a2, v53, v54);
                objc_msgSend_setPosition_(a2, v56, v55 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v43, v44);
              }

              v39 |= (v83 & 0x7F) << v37;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v30 = v38++ >= 9;
              if (v30)
              {
                LOBYTE(v57) = 0;
                goto LABEL_51;
              }
            }

            v57 = (v39 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_51:
            *(a1 + 40) = v57;
            goto LABEL_56;
          case 4:
            v58 = 0;
            v59 = 0;
            v60 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v83) = 0;
              v61 = objc_msgSend_position(a2, v32, v9, v83) + 1;
              if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
              {
                v69 = objc_msgSend_data(a2, v64, v65);
                v72 = objc_msgSend_position(a2, v70, v71);
                objc_msgSend_getBytes_range_(v69, v73, &v83, v72, 1);

                v76 = objc_msgSend_position(a2, v74, v75);
                objc_msgSend_setPosition_(a2, v77, v76 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v64, v65);
              }

              v60 |= (v83 & 0x7F) << v58;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v30 = v59++ >= 9;
              if (v30)
              {
                v78 = 0;
                goto LABEL_55;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v78 = 0;
            }

            else
            {
              v78 = v60;
            }

LABEL_55:
            *(a1 + 24) = v78;
            goto LABEL_56;
          case 5:
            v33 = objc_alloc_init(CKDPAssetsToDownload);
            objc_storeStrong((a1 + 16), v33);
            v83 = 0;
            v84 = 0;
            if (!PBReaderPlaceMark() || !sub_2252DF538(v33, a2, v34))
            {
              goto LABEL_58;
            }

LABEL_47:
            PBReaderRecallMark();

            goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v79 = objc_msgSend_position(a2, v32, v9);
    }

    while (v79 < objc_msgSend_length(a2, v80, v81));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252F1A14(uint64_t a1, void *a2, uint64_t a3)
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
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v41 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
          if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
          {
            v49 = objc_msgSend_data(a2, v44, v45);
            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_getBytes_range_(v49, v53, v63, v52, 1);

            v56 = objc_msgSend_position(a2, v54, v55);
            objc_msgSend_setPosition_(a2, v57, v56 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v44, v45);
          }

          v40 |= (v63[0] & 0x7F) << v38;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v30 = v39++ >= 9;
          if (v30)
          {
            v58 = 0;
            goto LABEL_38;
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

LABEL_38:
        *(a1 + 24) = v58;
      }

      else if (v32 == 2)
      {
        v36 = PBReaderReadData();
        v37 = *(a1 + 8);
        *(a1 + 8) = v36;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPRecord);
        objc_msgSend_addRecord_(a1, v34, v33);
        v63[0] = 0;
        v63[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v33, a2, v35))
        {

          return 0;
        }

        PBReaderRecallMark();
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

uint64_t sub_2252F263C(id *a1, void *a2, uint64_t a3)
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

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        v33 = objc_alloc_init(CKDPFieldActionReplaceListRange);
        objc_storeStrong(a1 + 3, v33);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_2252F4464(&v33->super.super.isa, a2, v36))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v32 == 2)
      {
        break;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPFieldActionInsertIntoList);
        objc_storeStrong(a1 + 2, v33);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_2252F3694(v33, a2, v34))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v39 = objc_msgSend_position(a2, v37, v38);
      if (v39 >= objc_msgSend_length(a2, v40, v41))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPFieldActionDeleteListRange);
    objc_storeStrong(a1 + 1, v33);
    v43 = 0;
    v44 = 0;
    if (!PBReaderPlaceMark() || !sub_2252F2ED0(v33, a2, v35))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252F2ED0(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPListRange);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252F7AB4(v32, a2, v33))
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

uint64_t sub_2252F3694(uint64_t a1, void *a2, uint64_t a3)
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
            LOBYTE(v55) = 0;
            goto LABEL_38;
          }
        }

        v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_38:
        *(a1 + 24) = v55;
        goto LABEL_39;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPListPosition);
        objc_storeStrong((a1 + 8), v33);
        v62 = 0;
        v63 = 0;
        if (!PBReaderPlaceMark() || !sub_2252F721C(v33, a2, v34))
        {
          goto LABEL_41;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_39;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v58 = objc_msgSend_position(a2, v32, v9);
      if (v58 >= objc_msgSend_length(a2, v59, v60))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPRecordFieldValue);
    objc_msgSend_addValue_(a1, v56, v33);
    v62 = 0;
    v63 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordFieldValueReadFrom(v33, a2, v57))
    {
LABEL_41:

      return 0;
    }

    goto LABEL_34;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252F4464(id *a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPListRange);
        objc_storeStrong(a1 + 1, v32);
        v42 = 0;
        v43 = 0;
        if (!PBReaderPlaceMark() || !sub_2252F7AB4(v32, a2, v33))
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

    v32 = objc_alloc_init(CKDPRecordFieldValue);
    objc_msgSend_addValue_(a1, v34, v32);
    v42 = 0;
    v43 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordFieldValueReadFrom(v32, a2, v35))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252F5068(uint64_t a1, void *a2, uint64_t a3)
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
        v117 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v117, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v117 & 0x7F) << v10;
        if ((v117 & 0x80) == 0)
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
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v94 = 0;
          v95 = 0;
          v35 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v119 = 0;
            v96 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v96 >= objc_msgSend_position(a2, v97, v98) && (v101 = objc_msgSend_position(a2, v99, v100) + 1, v101 <= objc_msgSend_length(a2, v102, v103)))
            {
              v104 = objc_msgSend_data(a2, v99, v100);
              v107 = objc_msgSend_position(a2, v105, v106);
              objc_msgSend_getBytes_range_(v104, v108, &v119, v107, 1);

              v111 = objc_msgSend_position(a2, v109, v110);
              objc_msgSend_setPosition_(a2, v112, v111 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v99, v100);
            }

            v35 |= (v119 & 0x7F) << v94;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v53 = v95++ > 8;
            if (v53)
            {
              v54 = 0;
              v55 = &OBJC_IVAR___CKDPFieldCryptoFeatureSet__encryptedFieldContextType;
              goto LABEL_67;
            }
          }

          v55 = &OBJC_IVAR___CKDPFieldCryptoFeatureSet__encryptedFieldContextType;
          goto LABEL_64;
        }

        if (v32 == 4)
        {
          v56 = 0;
          v57 = 0;
          v35 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v118 = 0;
            v58 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v58 >= objc_msgSend_position(a2, v59, v60) && (v63 = objc_msgSend_position(a2, v61, v62) + 1, v63 <= objc_msgSend_length(a2, v64, v65)))
            {
              v66 = objc_msgSend_data(a2, v61, v62);
              v69 = objc_msgSend_position(a2, v67, v68);
              objc_msgSend_getBytes_range_(v66, v70, &v118, v69, 1);

              v73 = objc_msgSend_position(a2, v71, v72);
              objc_msgSend_setPosition_(a2, v74, v73 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v61, v62);
            }

            v35 |= (v118 & 0x7F) << v56;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v53 = v57++ > 8;
            if (v53)
            {
              v54 = 0;
              v55 = &OBJC_IVAR___CKDPFieldCryptoFeatureSet__assetKeyEncryptionType;
              goto LABEL_67;
            }
          }

          v55 = &OBJC_IVAR___CKDPFieldCryptoFeatureSet__assetKeyEncryptionType;
LABEL_64:
          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v54 = 0;
          }

          else
          {
            v54 = v35;
          }

LABEL_67:
          *(a1 + *v55) = v54;
          goto LABEL_68;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v75 = 0;
          v76 = 0;
          v35 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v121 = 0;
            v77 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v77 >= objc_msgSend_position(a2, v78, v79) && (v82 = objc_msgSend_position(a2, v80, v81) + 1, v82 <= objc_msgSend_length(a2, v83, v84)))
            {
              v85 = objc_msgSend_data(a2, v80, v81);
              v88 = objc_msgSend_position(a2, v86, v87);
              objc_msgSend_getBytes_range_(v85, v89, &v121, v88, 1);

              v92 = objc_msgSend_position(a2, v90, v91);
              objc_msgSend_setPosition_(a2, v93, v92 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v80, v81);
            }

            v35 |= (v121 & 0x7F) << v75;
            if ((v121 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v53 = v76++ > 8;
            if (v53)
            {
              v54 = 0;
              v55 = &OBJC_IVAR___CKDPFieldCryptoFeatureSet__minimumSchemaVersion;
              goto LABEL_67;
            }
          }

          v55 = &OBJC_IVAR___CKDPFieldCryptoFeatureSet__minimumSchemaVersion;
          goto LABEL_64;
        }

        if (v32 == 2)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 24) |= 8u;
          while (1)
          {
            v120 = 0;
            v36 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v120, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v120 & 0x7F) << v33;
            if ((v120 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v53 = v34++ > 8;
            if (v53)
            {
              v54 = 0;
              v55 = &OBJC_IVAR___CKDPFieldCryptoFeatureSet__mmcsVersion;
              goto LABEL_67;
            }
          }

          v55 = &OBJC_IVAR___CKDPFieldCryptoFeatureSet__mmcsVersion;
          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v113 = objc_msgSend_position(a2, v32, v9);
    }

    while (v113 < objc_msgSend_length(a2, v114, v115));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252F6140(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v205) = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v205, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v205 & 0x7F) << v10;
        if ((v205 & 0x80) == 0)
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
          if (v9 != 2)
          {
            v182 = 0;
            v183 = 0;
            v184 = 0;
            while (1)
            {
              LOBYTE(v205) = 0;
              v185 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v185 >= objc_msgSend_position(a2, v186, v187) && (v190 = objc_msgSend_position(a2, v188, v189) + 1, v190 <= objc_msgSend_length(a2, v191, v192)))
              {
                v193 = objc_msgSend_data(a2, v188, v189);
                v196 = objc_msgSend_position(a2, v194, v195);
                objc_msgSend_getBytes_range_(v193, v197, &v205, v196, 1);

                v200 = objc_msgSend_position(a2, v198, v199);
                objc_msgSend_setPosition_(a2, v201, v200 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v188, v189);
              }

              v184 |= (v205 & 0x7F) << v182;
              if ((v205 & 0x80) == 0)
              {
                goto LABEL_110;
              }

              v182 += 7;
              v30 = v183++ >= 9;
              if (v30)
              {
                goto LABEL_111;
              }
            }
          }

          v205 = 0;
          v206 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v115 = objc_msgSend_position(a2, v113, v114);
            if (v115 >= objc_msgSend_length(a2, v116, v117) || (objc_msgSend_hasError(a2, v118, v119) & 1) != 0)
            {
              break;
            }

            v122 = 0;
            v123 = 0;
            v124 = 0;
            while (1)
            {
              v207 = 0;
              v125 = objc_msgSend_position(a2, v120, v121) + 1;
              if (v125 >= objc_msgSend_position(a2, v126, v127) && (v130 = objc_msgSend_position(a2, v128, v129) + 1, v130 <= objc_msgSend_length(a2, v131, v132)))
              {
                v133 = objc_msgSend_data(a2, v128, v129);
                v136 = objc_msgSend_position(a2, v134, v135);
                objc_msgSend_getBytes_range_(v133, v137, &v207, v136, 1);

                v140 = objc_msgSend_position(a2, v138, v139);
                objc_msgSend_setPosition_(a2, v141, v140 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v128, v129);
              }

              v124 |= (v207 & 0x7F) << v122;
              if ((v207 & 0x80) == 0)
              {
                break;
              }

              v122 += 7;
              v30 = v123++ >= 9;
              if (v30)
              {
                goto LABEL_77;
              }
            }

            objc_msgSend_hasError(a2, v120, v121);
LABEL_77:
            PBRepeatedInt32Add();
          }

LABEL_78:
          PBReaderRecallMark();
          goto LABEL_112;
        }

        if (v32 == 4)
        {
          if (v9 != 2)
          {
            v162 = 0;
            v163 = 0;
            v164 = 0;
            while (1)
            {
              LOBYTE(v205) = 0;
              v165 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v165 >= objc_msgSend_position(a2, v166, v167) && (v170 = objc_msgSend_position(a2, v168, v169) + 1, v170 <= objc_msgSend_length(a2, v171, v172)))
              {
                v173 = objc_msgSend_data(a2, v168, v169);
                v176 = objc_msgSend_position(a2, v174, v175);
                objc_msgSend_getBytes_range_(v173, v177, &v205, v176, 1);

                v180 = objc_msgSend_position(a2, v178, v179);
                objc_msgSend_setPosition_(a2, v181, v180 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v168, v169);
              }

              v164 |= (v205 & 0x7F) << v162;
              if ((v205 & 0x80) == 0)
              {
                break;
              }

              v162 += 7;
              v30 = v163++ >= 9;
              if (v30)
              {
                goto LABEL_111;
              }
            }

LABEL_110:
            objc_msgSend_hasError(a2, v32, v9);
LABEL_111:
            PBRepeatedInt32Add();
            goto LABEL_112;
          }

          v205 = 0;
          v206 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v65 = objc_msgSend_position(a2, v63, v64);
            if (v65 >= objc_msgSend_length(a2, v66, v67) || (objc_msgSend_hasError(a2, v68, v69) & 1) != 0)
            {
              goto LABEL_78;
            }

            v72 = 0;
            v73 = 0;
            v74 = 0;
            while (1)
            {
              v207 = 0;
              v75 = objc_msgSend_position(a2, v70, v71) + 1;
              if (v75 >= objc_msgSend_position(a2, v76, v77) && (v80 = objc_msgSend_position(a2, v78, v79) + 1, v80 <= objc_msgSend_length(a2, v81, v82)))
              {
                v83 = objc_msgSend_data(a2, v78, v79);
                v86 = objc_msgSend_position(a2, v84, v85);
                objc_msgSend_getBytes_range_(v83, v87, &v207, v86, 1);

                v90 = objc_msgSend_position(a2, v88, v89);
                objc_msgSend_setPosition_(a2, v91, v90 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v78, v79);
              }

              v74 |= (v207 & 0x7F) << v72;
              if ((v207 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              v30 = v73++ >= 9;
              if (v30)
              {
                goto LABEL_51;
              }
            }

            objc_msgSend_hasError(a2, v70, v71);
LABEL_51:
            PBRepeatedInt32Add();
          }
        }
      }

      else
      {
        if (v32 == 1)
        {
          v92 = 0;
          v93 = 0;
          v94 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            LOBYTE(v205) = 0;
            v95 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v95 >= objc_msgSend_position(a2, v96, v97) && (v100 = objc_msgSend_position(a2, v98, v99) + 1, v100 <= objc_msgSend_length(a2, v101, v102)))
            {
              v103 = objc_msgSend_data(a2, v98, v99);
              v106 = objc_msgSend_position(a2, v104, v105);
              objc_msgSend_getBytes_range_(v103, v107, &v205, v106, 1);

              v110 = objc_msgSend_position(a2, v108, v109);
              objc_msgSend_setPosition_(a2, v111, v110 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v98, v99);
            }

            v94 |= (v205 & 0x7F) << v92;
            if ((v205 & 0x80) == 0)
            {
              break;
            }

            v92 += 7;
            v30 = v93++ >= 9;
            if (v30)
            {
              v112 = 0;
              goto LABEL_82;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v112 = 0;
          }

          else
          {
            v112 = v94;
          }

LABEL_82:
          *(a1 + 80) = v112;
          goto LABEL_112;
        }

        if (v32 == 2)
        {
          if (v9 != 2)
          {
            v142 = 0;
            v143 = 0;
            v144 = 0;
            while (1)
            {
              LOBYTE(v205) = 0;
              v145 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v145 >= objc_msgSend_position(a2, v146, v147) && (v150 = objc_msgSend_position(a2, v148, v149) + 1, v150 <= objc_msgSend_length(a2, v151, v152)))
              {
                v153 = objc_msgSend_data(a2, v148, v149);
                v156 = objc_msgSend_position(a2, v154, v155);
                objc_msgSend_getBytes_range_(v153, v157, &v205, v156, 1);

                v160 = objc_msgSend_position(a2, v158, v159);
                objc_msgSend_setPosition_(a2, v161, v160 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v148, v149);
              }

              v144 |= (v205 & 0x7F) << v142;
              if ((v205 & 0x80) == 0)
              {
                goto LABEL_110;
              }

              v142 += 7;
              v30 = v143++ >= 9;
              if (v30)
              {
                goto LABEL_111;
              }
            }
          }

          v205 = 0;
          v206 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v36 = objc_msgSend_position(a2, v34, v35);
            if (v36 >= objc_msgSend_length(a2, v37, v38) || (objc_msgSend_hasError(a2, v39, v40) & 1) != 0)
            {
              goto LABEL_78;
            }

            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              v207 = 0;
              v46 = objc_msgSend_position(a2, v41, v42) + 1;
              if (v46 >= objc_msgSend_position(a2, v47, v48) && (v51 = objc_msgSend_position(a2, v49, v50) + 1, v51 <= objc_msgSend_length(a2, v52, v53)))
              {
                v54 = objc_msgSend_data(a2, v49, v50);
                v57 = objc_msgSend_position(a2, v55, v56);
                objc_msgSend_getBytes_range_(v54, v58, &v207, v57, 1);

                v61 = objc_msgSend_position(a2, v59, v60);
                objc_msgSend_setPosition_(a2, v62, v61 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v49, v50);
              }

              v45 |= (v207 & 0x7F) << v43;
              if ((v207 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v30 = v44++ >= 9;
              if (v30)
              {
                goto LABEL_34;
              }
            }

            objc_msgSend_hasError(a2, v41, v42);
LABEL_34:
            PBRepeatedInt32Add();
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_112:
      v202 = objc_msgSend_position(a2, v32, v9);
    }

    while (v202 < objc_msgSend_length(a2, v203, v204));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252F721C(uint64_t a1, void *a2, uint64_t a3)
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

uint64_t sub_2252F7AB4(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPListPosition);
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

        v32 = objc_alloc_init(CKDPListPosition);
        v33 = 8;
      }

      objc_storeStrong((a1 + v33), v32);
      v41[0] = 0;
      v41[1] = 0;
      if (!PBReaderPlaceMark() || !sub_2252F721C(v32, a2, v34))
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

uint64_t sub_2252F81F8(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = &OBJC_IVAR___CKDPLocale__regionCode;
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

    v32 = &OBJC_IVAR___CKDPLocale__languageCode;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252F9034(uint64_t a1, void *a2, uint64_t a3)
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
        v56 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v56, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v56 & 0x7F) << v10;
        if ((v56 & 0x80) == 0)
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
        *(a1 + 16) |= 1u;
        v55 = 0;
        v32 = objc_msgSend_position(a2, (v31 >> 3), v9) + 8;
        if (v32 >= objc_msgSend_position(a2, v33, v34) && (v37 = objc_msgSend_position(a2, v35, v36) + 8, v37 <= objc_msgSend_length(a2, v38, v39)))
        {
          v43 = objc_msgSend_data(a2, v35, v36);
          v46 = objc_msgSend_position(a2, v44, v45);
          objc_msgSend_getBytes_range_(v43, v47, &v55, v46, 8);

          v50 = objc_msgSend_position(a2, v48, v49);
          objc_msgSend_setPosition_(a2, v51, v50 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v35, v36);
        }

        *(a1 + 8) = v55;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v52 = objc_msgSend_position(a2, v40, v41);
    }

    while (v52 < objc_msgSend_length(a2, v53, v54));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252F951C()
{
  v0 = qword_280D54FC8;
  qword_280D54FC8 = &unk_2838C9480;
}

uint64_t sub_2252F9A78(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v106[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v106[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v106, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v106[0] & 0x7F) << v10;
        if ((v106[0] & 0x80) == 0)
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
            v33 = PBReaderReadString();
            v34 = 8;
            goto LABEL_65;
          }

          if (v32 == 8)
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              LOBYTE(v106[0]) = 0;
              v61 = objc_msgSend_position(a2, v32, v9, v106[0]) + 1;
              if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
              {
                v69 = objc_msgSend_data(a2, v64, v65);
                v72 = objc_msgSend_position(a2, v70, v71);
                objc_msgSend_getBytes_range_(v69, v73, v106, v72, 1);

                v76 = objc_msgSend_position(a2, v74, v75);
                objc_msgSend_setPosition_(a2, v77, v76 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v64, v65);
              }

              v60 |= (v106[0] & 0x7F) << v58;
              if ((v106[0] & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v30 = v59++ >= 9;
              if (v30)
              {
                LOBYTE(v55) = 0;
                goto LABEL_75;
              }
            }

            v55 = (v60 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_75:
            v101 = 57;
            goto LABEL_76;
          }
        }

        else
        {
          if (v32 == 5)
          {
            v57 = PBReaderReadData();
            if (v57)
            {
              objc_msgSend_addReferenceSignature_(a1, v78, v57);
            }

            goto LABEL_54;
          }

          if (v32 == 6)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              LOBYTE(v106[0]) = 0;
              v38 = objc_msgSend_position(a2, v32, v9, v106[0]) + 1;
              if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
              {
                v46 = objc_msgSend_data(a2, v41, v42);
                v49 = objc_msgSend_position(a2, v47, v48);
                objc_msgSend_getBytes_range_(v46, v50, v106, v49, 1);

                v53 = objc_msgSend_position(a2, v51, v52);
                objc_msgSend_setPosition_(a2, v54, v53 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v41, v42);
              }

              v37 |= (v106[0] & 0x7F) << v35;
              if ((v106[0] & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v30 = v36++ >= 9;
              if (v30)
              {
                LOBYTE(v55) = 0;
                goto LABEL_73;
              }
            }

            v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_73:
            v101 = 56;
LABEL_76:
            *(a1 + v101) = v55;
            goto LABEL_77;
          }
        }
      }

      else if (v32 > 2)
      {
        if (v32 == 3)
        {
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v106[0]) = 0;
            v82 = objc_msgSend_position(a2, v32, v9, v106[0]) + 1;
            if (v82 >= objc_msgSend_position(a2, v83, v84) && (v87 = objc_msgSend_position(a2, v85, v86) + 1, v87 <= objc_msgSend_length(a2, v88, v89)))
            {
              v90 = objc_msgSend_data(a2, v85, v86);
              v93 = objc_msgSend_position(a2, v91, v92);
              objc_msgSend_getBytes_range_(v90, v94, v106, v93, 1);

              v97 = objc_msgSend_position(a2, v95, v96);
              objc_msgSend_setPosition_(a2, v98, v97 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v85, v86);
            }

            v81 |= (v106[0] & 0x7F) << v79;
            if ((v106[0] & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v30 = v80++ >= 9;
            if (v30)
            {
              v99 = 0;
              goto LABEL_71;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v99 = 0;
          }

          else
          {
            v99 = v81;
          }

LABEL_71:
          *(a1 + 40) = v99;
          goto LABEL_77;
        }

        if (v32 == 4)
        {
          v57 = PBReaderReadData();
          if (v57)
          {
            objc_msgSend_addFileSignature_(a1, v56, v57);
          }

LABEL_54:

          goto LABEL_77;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v57 = objc_alloc_init(MEMORY[0x277CBC268]);
          objc_storeStrong((a1 + 16), v57);
          v106[0] = 0;
          v106[1] = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_54;
        }

        if (v32 == 2)
        {
          v33 = PBReaderReadString();
          v34 = 24;
LABEL_65:
          v100 = *(a1 + v34);
          *(a1 + v34) = v33;

          goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v102 = objc_msgSend_position(a2, v32, v9);
    }

    while (v102 < objc_msgSend_length(a2, v103, v104));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252FAF48(uint64_t a1, void *a2, uint64_t a3)
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

uint64_t CKDPMergeableDeltaReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
      if ((v31 >> 3) > 16)
      {
        switch(v32)
        {
          case 0x11:
            objc_msgSend_clearOneofValuesForPayload(a1, v32, v9);
            *(a1 + 52) |= 1u;
            *(a1 + 48) = 2;
            v33 = PBReaderReadData();
            v34 = 32;
            goto LABEL_36;
          case 0x12:
            objc_msgSend_clearOneofValuesForPayload(a1, v32, v9);
            *(a1 + 52) |= 1u;
            *(a1 + 48) = 3;
            v35 = objc_alloc_init(CKDPAsset);
            v36 = 8;
            goto LABEL_43;
          case 0x13:
            objc_msgSend_clearOneofValuesForPayload(a1, v32, v9);
            *(a1 + 52) |= 1u;
            *(a1 + 48) = 4;
            v35 = objc_alloc_init(CKDPAsset);
            v36 = 24;
LABEL_43:
            objc_storeStrong((a1 + v36), v35);
            v63 = 0;
            v64 = 0;
            if (!PBReaderPlaceMark() || !CKDPAssetReadFrom(v35, a2, v58))
            {
LABEL_50:

              return 0;
            }

            goto LABEL_45;
        }
      }

      else
      {
        switch(v32)
        {
          case 0:
            v37 = 0;
            while (1)
            {
              LOBYTE(v63) = 0;
              v38 = objc_msgSend_position(a2, v32, v9, v63) + 1;
              if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
              {
                v46 = objc_msgSend_data(a2, v41, v42);
                v49 = objc_msgSend_position(a2, v47, v48);
                objc_msgSend_getBytes_range_(v46, v50, &v63, v49, 1);

                v53 = objc_msgSend_position(a2, v51, v52);
                objc_msgSend_setPosition_(a2, v54, v53 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v41, v42);
              }

              if ((v63 & 0x80000000) == 0)
              {
                break;
              }

              if (v37++ > 8)
              {
                goto LABEL_46;
              }
            }

            objc_msgSend_hasError(a2, v32, v9);
            goto LABEL_46;
          case 1:
            v35 = objc_alloc_init(CKDPMergeableDeltaMetadata);
            objc_storeStrong((a1 + 40), v35);
            v63 = 0;
            v64 = 0;
            if (!PBReaderPlaceMark() || !sub_2252FC858(&v35->super.super.isa, a2, v57))
            {
              goto LABEL_50;
            }

LABEL_45:
            PBReaderRecallMark();

            goto LABEL_46;
          case 0x10:
            objc_msgSend_clearOneofValuesForPayload(a1, v32, v9);
            *(a1 + 52) |= 1u;
            *(a1 + 48) = 1;
            v33 = PBReaderReadData();
            v34 = 16;
LABEL_36:
            v56 = *(a1 + v34);
            *(a1 + v34) = v33;

            goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252FC858(id *a1, void *a2, uint64_t a3)
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
        switch(v32)
        {
          case 4:
            v36 = objc_alloc_init(MEMORY[0x277CBC248]);
            objc_storeStrong(a1 + 5, v36);
            v44 = 0;
            v45 = 0;
            if (!PBReaderPlaceMark() || !CKDPDistributedTimestampsReadFrom())
            {
LABEL_41:

              return 0;
            }

LABEL_35:
            PBReaderRecallMark();
LABEL_38:

            goto LABEL_39;
          case 5:
            v33 = PBReaderReadData();
            v34 = 6;
LABEL_37:
            v36 = a1[v34];
            a1[v34] = v33;
            goto LABEL_38;
          case 6:
            v36 = PBReaderReadString();
            if (v36)
            {
              objc_msgSend_addReplacedDeltaIdentifiers_(a1, v35, v36);
            }

            goto LABEL_38;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v33 = PBReaderReadString();
            v34 = 2;
            goto LABEL_37;
          case 2:
            v36 = objc_alloc_init(CKDPProtectionInfo);
            objc_storeStrong(a1 + 3, v36);
            v44 = 0;
            v45 = 0;
            if (!PBReaderPlaceMark() || !CKDPProtectionInfoReadFrom(v36, a2, v39))
            {
              goto LABEL_41;
            }

            goto LABEL_35;
          case 3:
            v33 = PBReaderReadData();
            v34 = 1;
            goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v40 = objc_msgSend_position(a2, v37, v38);
    }

    while (v40 < objc_msgSend_length(a2, v41, v42));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252FD4FC()
{
  v0 = qword_280D54FD8;
  qword_280D54FD8 = &unk_2838C94A8;
}

uint64_t sub_2252FD68C(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPMergeableValueIdentifier);
        objc_storeStrong((a1 + 16), v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2253021B0(v32, a2, v33))
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
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v34 = PBReaderReadData();
    v32 = *(a1 + 8);
    *(a1 + 8) = v34;
LABEL_23:

    goto LABEL_25;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252FDFA8(void *a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPMergeableDeltaMetadata);
        objc_msgSend_addMetadata_(a1, v33, v32);
        v42[0] = 0;
        v42[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252FC858(&v32->super.super.isa, a2, v34))
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

    v35 = PBReaderReadData();
    v32 = a1[1];
    a1[1] = v35;
LABEL_23:

    goto LABEL_25;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252FE824()
{
  v0 = qword_280D54FE8;
  qword_280D54FE8 = &unk_2838C94D0;
}

uint64_t sub_2252FED90(uint64_t a1, void *a2, uint64_t a3)
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
      if ((v31 >> 3) <= 2)
      {
        if (v32 == 1)
        {
          v55 = objc_alloc_init(CKDPMergeableValueIdentifier);
          objc_storeStrong((a1 + 24), v55);
          v84 = 0;
          v85 = 0;
          if (!PBReaderPlaceMark() || !sub_2253021B0(v55, a2, v78))
          {
LABEL_59:

            return 0;
          }

          goto LABEL_48;
        }

        if (v32 == 2)
        {
          v55 = PBReaderReadString();
          if (v55)
          {
            objc_msgSend_addDeltaIdentifiers_(a1, v54, v55);
          }

          goto LABEL_49;
        }
      }

      else
      {
        switch(v32)
        {
          case 3:
            v55 = objc_alloc_init(CKDPMergeableDelta);
            objc_msgSend_addDeltas_(a1, v56, v55);
            v84 = 0;
            v85 = 0;
            if (!PBReaderPlaceMark() || !CKDPMergeableDeltaReadFrom(v55, a2, v57))
            {
              goto LABEL_59;
            }

LABEL_48:
            PBReaderRecallMark();
LABEL_49:

            goto LABEL_57;
          case 4:
            v58 = 0;
            v59 = 0;
            v60 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v61 = objc_msgSend_position(a2, v32, v9, v84) + 1;
              if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
              {
                v69 = objc_msgSend_data(a2, v64, v65);
                v72 = objc_msgSend_position(a2, v70, v71);
                objc_msgSend_getBytes_range_(v69, v73, &v84, v72, 1);

                v76 = objc_msgSend_position(a2, v74, v75);
                objc_msgSend_setPosition_(a2, v77, v76 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v64, v65);
              }

              v60 |= (v84 & 0x7F) << v58;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v30 = v59++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_53;
              }
            }

            v53 = (v60 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_53:
            v79 = 33;
            goto LABEL_56;
          case 5:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v36 = objc_msgSend_position(a2, v32, v9, v84) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v84, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v84 & 0x7F) << v33;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_55;
              }
            }

            v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_55:
            v79 = 32;
LABEL_56:
            *(a1 + v79) = v53;
            goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v80 = objc_msgSend_position(a2, v32, v9);
    }

    while (v80 < objc_msgSend_length(a2, v81, v82));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252FFEC0()
{
  v0 = qword_280D54FF8;
  qword_280D54FF8 = &unk_2838C94F8;
}

uint64_t sub_225300050(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPMergeableValueIdentifier);
        objc_storeStrong((a1 + 16), v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2253021B0(v32, a2, v33))
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
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v34 = PBReaderReadData();
    v32 = *(a1 + 8);
    *(a1 + 8) = v34;
LABEL_23:

    goto LABEL_25;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22530096C(void *a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPMergeableDelta);
        objc_msgSend_addDeltas_(a1, v33, v32);
        v42[0] = 0;
        v42[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPMergeableDeltaReadFrom(v32, a2, v34))
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

    v35 = PBReaderReadData();
    v32 = a1[1];
    a1[1] = v35;
LABEL_23:

    goto LABEL_25;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253011E8()
{
  v0 = qword_280D58478;
  qword_280D58478 = &unk_2838C9520;
}

uint64_t CKDPMergeableDeltaSaveRequestReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPMergeableValueIdentifier);
        objc_storeStrong((a1 + 16), v32);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || !sub_2253021B0(v32, a2, v33))
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

    v32 = objc_alloc_init(CKDPMergeableDelta);
    objc_storeStrong((a1 + 8), v32);
    v41 = 0;
    v42 = 0;
    if (!PBReaderPlaceMark() || !CKDPMergeableDeltaReadFrom(v32, a2, v34))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPMergeableValueReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(MEMORY[0x277CBC250]);
        objc_storeStrong((a1 + 8), v32);
        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
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

uint64_t sub_2253021B0(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v39) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v39) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v39, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v39 & 0x7F) << v10;
        if ((v39 & 0x80) == 0)
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
        v32 = objc_alloc_init(MEMORY[0x277CBC250]);
        objc_storeStrong((a1 + 8), v32);
        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
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
      v35 = objc_msgSend_position(a2, v33, v34);
      if (v35 >= objc_msgSend_length(a2, v36, v37))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(MEMORY[0x277CBC278]);
    objc_storeStrong((a1 + 16), v32);
    v39 = 0;
    v40 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225302904(uint64_t a1, void *a2, uint64_t a3)
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

void sub_225302D48()
{
  v0 = qword_280D58488;
  qword_280D58488 = &unk_2838C9548;
}

uint64_t sub_225302E84(uint64_t a1, void *a2, uint64_t a3)
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
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
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
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225303384()
{
  v0 = qword_280D55008;
  qword_280D55008 = &unk_2838C9570;
}

uint64_t sub_225303608(uint64_t a1, void *a2, uint64_t a3)
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
        v81 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v81, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v81 & 0x7F) << v10;
        if ((v81 & 0x80) == 0)
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
          v83 = 0;
          v59 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
          {
            v67 = objc_msgSend_data(a2, v62, v63);
            v70 = objc_msgSend_position(a2, v68, v69);
            objc_msgSend_getBytes_range_(v67, v71, &v83, v70, 1);

            v74 = objc_msgSend_position(a2, v72, v73);
            objc_msgSend_setPosition_(a2, v75, v74 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v62, v63);
          }

          v58 |= (v83 & 0x7F) << v56;
          if ((v83 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v30 = v57++ >= 9;
          if (v30)
          {
            LOBYTE(v76) = 0;
            goto LABEL_46;
          }
        }

        v76 = (v58 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_46:
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
          v82 = 0;
          v38 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v82, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v82 & 0x7F) << v35;
          if ((v82 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_44;
          }
        }

        v55 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v37;
LABEL_44:
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

      v78 = objc_msgSend_position(a2, v32, v9);
    }

    while (v78 < objc_msgSend_length(a2, v79, v80));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPNotificationSyncResponseReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v41 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
          if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
          {
            v49 = objc_msgSend_data(a2, v44, v45);
            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_getBytes_range_(v49, v53, v63, v52, 1);

            v56 = objc_msgSend_position(a2, v54, v55);
            objc_msgSend_setPosition_(a2, v57, v56 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v44, v45);
          }

          v40 |= (v63[0] & 0x7F) << v38;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v30 = v39++ >= 9;
          if (v30)
          {
            LOBYTE(v58) = 0;
            goto LABEL_36;
          }
        }

        v58 = (v40 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_36:
        *(a1 + 24) = v58;
      }

      else if (v32 == 2)
      {
        v35 = objc_alloc_init(CKDPNotificationSyncResponsePushMessage);
        objc_msgSend_addPushMessage_(a1, v36, v35);
        v63[0] = 0;
        v63[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPNotificationSyncResponsePushMessageReadFrom(v35, a2, v37))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadData();
        v34 = *(a1 + 8);
        *(a1 + 8) = v33;
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

uint64_t CKDPNotificationSyncResponsePushMessageReadFrom(_BYTE *a1, void *a2, uint64_t a3)
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
        v106 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v106, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v106 & 0x7F) << v10;
        if ((v106 & 0x80) == 0)
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
      switch((v31 >> 3))
      {
        case 1u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          a1[116] |= 4u;
          while (1)
          {
            v107 = 0;
            v36 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v107, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v107 & 0x7F) << v33;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              LOBYTE(v53) = 0;
LABEL_69:
              a1[112] = v53;
              goto LABEL_60;
            }
          }

          v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
          goto LABEL_69;
        case 2u:
          v54 = PBReaderReadString();
          v55 = 104;
          goto LABEL_59;
        case 3u:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          a1[116] |= 2u;
          while (1)
          {
            v109 = 0;
            v59 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
            {
              v67 = objc_msgSend_data(a2, v62, v63);
              v70 = objc_msgSend_position(a2, v68, v69);
              objc_msgSend_getBytes_range_(v67, v71, &v109, v70, 1);

              v74 = objc_msgSend_position(a2, v72, v73);
              objc_msgSend_setPosition_(a2, v75, v74 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v62, v63);
            }

            v58 |= (v109 & 0x7F) << v56;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v30 = v57++ >= 9;
            if (v30)
            {
              v76 = 0;
              goto LABEL_67;
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

LABEL_67:
          v105 = 48;
          goto LABEL_74;
        case 4u:
          v54 = PBReaderReadString();
          v55 = 24;
          goto LABEL_59;
        case 5u:
          v54 = PBReaderReadString();
          v55 = 40;
          goto LABEL_59;
        case 6u:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          a1[116] |= 1u;
          break;
        case 7u:
          v54 = PBReaderReadData();
          v55 = 32;
          goto LABEL_59;
        case 8u:
          v54 = PBReaderReadString();
          v55 = 16;
          goto LABEL_59;
        case 9u:
          v54 = PBReaderReadString();
          v55 = 80;
          goto LABEL_59;
        case 0xAu:
          v54 = PBReaderReadString();
          v55 = 96;
          goto LABEL_59;
        case 0xBu:
          v98 = PBReaderReadString();
          if (v98)
          {
            objc_msgSend_addTitleLocalizedArguments_(a1, v99, v98);
          }

          goto LABEL_57;
        case 0xCu:
          v54 = PBReaderReadString();
          v55 = 56;
          goto LABEL_59;
        case 0xDu:
          v54 = PBReaderReadString();
          v55 = 72;
LABEL_59:
          v100 = *&a1[v55];
          *&a1[v55] = v54;

          goto LABEL_60;
        case 0xEu:
          v98 = PBReaderReadString();
          if (v98)
          {
            objc_msgSend_addSubtitleLocalizedArguments_(a1, v97, v98);
          }

LABEL_57:

          goto LABEL_60;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_60;
      }

      while (1)
      {
        v108 = 0;
        v80 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v80 >= objc_msgSend_position(a2, v81, v82) && (v85 = objc_msgSend_position(a2, v83, v84) + 1, v85 <= objc_msgSend_length(a2, v86, v87)))
        {
          v88 = objc_msgSend_data(a2, v83, v84);
          v91 = objc_msgSend_position(a2, v89, v90);
          objc_msgSend_getBytes_range_(v88, v92, &v108, v91, 1);

          v95 = objc_msgSend_position(a2, v93, v94);
          objc_msgSend_setPosition_(a2, v96, v95 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v83, v84);
        }

        v79 |= (v108 & 0x7F) << v77;
        if ((v108 & 0x80) == 0)
        {
          break;
        }

        v77 += 7;
        v30 = v78++ >= 9;
        if (v30)
        {
          v76 = 0;
          goto LABEL_73;
        }
      }

      v76 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v79;
LABEL_73:
      v105 = 8;
LABEL_74:
      *&a1[v105] = v76;
LABEL_60:
      v101 = objc_msgSend_position(a2, v32, v9);
    }

    while (v101 < objc_msgSend_length(a2, v102, v103));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225308BF0(uint64_t a1, void *a2, uint64_t a3)
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

uint64_t sub_225309318(id *a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPAsset);
        objc_msgSend_addSections_(a1, v33, v32);
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

        v32 = objc_alloc_init(CKDPAsset);
        objc_storeStrong(a1 + 1, v32);
      }

      v41[0] = 0;
      v41[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPAssetReadFrom(v32, a2, v34))
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

uint64_t CKDPParticipantReadFrom(uint64_t a1, void *a2, uint64_t a3)
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
      LOBYTE(v308) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v308) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v308, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v308 & 0x7F) << v10;
      if ((v308 & 0x80) == 0)
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
        v33 = objc_alloc_init(MEMORY[0x277CBC250]);
        v34 = 88;
        goto LABEL_104;
      case 2u:
        v33 = objc_alloc_init(MEMORY[0x277CBC250]);
        v34 = 136;
        goto LABEL_104;
      case 3u:
        v33 = objc_alloc_init(CKDPContactInformation);
        objc_storeStrong((a1 + 32), v33);
        v308 = 0;
        v309 = 0;
        if (!PBReaderPlaceMark() || !CKDPContactInformationReadFrom(v33, a2, v81))
        {
          goto LABEL_207;
        }

        goto LABEL_162;
      case 4u:
        v183 = 0;
        v184 = 0;
        v185 = 0;
        *(a1 + 152) |= 0x40u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v186 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v186 >= objc_msgSend_position(a2, v187, v188) && (v191 = objc_msgSend_position(a2, v189, v190) + 1, v191 <= objc_msgSend_length(a2, v192, v193)))
          {
            v194 = objc_msgSend_data(a2, v189, v190);
            v197 = objc_msgSend_position(a2, v195, v196);
            objc_msgSend_getBytes_range_(v194, v198, &v308, v197, 1);

            v201 = objc_msgSend_position(a2, v199, v200);
            objc_msgSend_setPosition_(a2, v202, v201 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v189, v190);
          }

          v185 |= (v308 & 0x7F) << v183;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v183 += 7;
          v30 = v184++ >= 9;
          if (v30)
          {
            v78 = 0;
            goto LABEL_190;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v78 = 0;
        }

        else
        {
          v78 = v185;
        }

LABEL_190:
        v306 = 132;
        goto LABEL_191;
      case 5u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 152) |= 8u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v85 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v85 >= objc_msgSend_position(a2, v86, v87) && (v90 = objc_msgSend_position(a2, v88, v89) + 1, v90 <= objc_msgSend_length(a2, v91, v92)))
          {
            v93 = objc_msgSend_data(a2, v88, v89);
            v96 = objc_msgSend_position(a2, v94, v95);
            objc_msgSend_getBytes_range_(v93, v97, &v308, v96, 1);

            v100 = objc_msgSend_position(a2, v98, v99);
            objc_msgSend_setPosition_(a2, v101, v100 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v88, v89);
          }

          v84 |= (v308 & 0x7F) << v82;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v30 = v83++ >= 9;
          if (v30)
          {
            v78 = 0;
            goto LABEL_172;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v78 = 0;
        }

        else
        {
          v78 = v84;
        }

LABEL_172:
        v306 = 96;
        goto LABEL_191;
      case 6u:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        *(a1 + 152) |= 0x10u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v165 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v165 >= objc_msgSend_position(a2, v166, v167) && (v170 = objc_msgSend_position(a2, v168, v169) + 1, v170 <= objc_msgSend_length(a2, v171, v172)))
          {
            v173 = objc_msgSend_data(a2, v168, v169);
            v176 = objc_msgSend_position(a2, v174, v175);
            objc_msgSend_getBytes_range_(v173, v177, &v308, v176, 1);

            v180 = objc_msgSend_position(a2, v178, v179);
            objc_msgSend_setPosition_(a2, v181, v180 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v168, v169);
          }

          v164 |= (v308 & 0x7F) << v162;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v30 = v163++ >= 9;
          if (v30)
          {
            v78 = 0;
            goto LABEL_186;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v78 = 0;
        }

        else
        {
          v78 = v164;
        }

LABEL_186:
        v306 = 100;
        goto LABEL_191;
      case 7u:
        v33 = objc_alloc_init(MEMORY[0x277CBC250]);
        v34 = 64;
LABEL_104:
        objc_storeStrong((a1 + v34), v33);
        v308 = 0;
        v309 = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
        {
          goto LABEL_207;
        }

        goto LABEL_162;
      case 8u:
        v203 = 0;
        v204 = 0;
        v205 = 0;
        *(a1 + 152) |= 0x100u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v206 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v206 >= objc_msgSend_position(a2, v207, v208) && (v211 = objc_msgSend_position(a2, v209, v210) + 1, v211 <= objc_msgSend_length(a2, v212, v213)))
          {
            v214 = objc_msgSend_data(a2, v209, v210);
            v217 = objc_msgSend_position(a2, v215, v216);
            objc_msgSend_getBytes_range_(v214, v218, &v308, v217, 1);

            v221 = objc_msgSend_position(a2, v219, v220);
            objc_msgSend_setPosition_(a2, v222, v221 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v209, v210);
          }

          v205 |= (v308 & 0x7F) << v203;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v203 += 7;
          v30 = v204++ >= 9;
          if (v30)
          {
            LOBYTE(v57) = 0;
            goto LABEL_193;
          }
        }

        v57 = (v205 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_193:
        v305 = 145;
        goto LABEL_204;
      case 9u:
        v33 = objc_alloc_init(CKDPProtectionInfo);
        v80 = 120;
        goto LABEL_146;
      case 0xAu:
        v263 = 0;
        v264 = 0;
        v265 = 0;
        *(a1 + 152) |= 1u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v266 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v266 >= objc_msgSend_position(a2, v267, v268) && (v271 = objc_msgSend_position(a2, v269, v270) + 1, v271 <= objc_msgSend_length(a2, v272, v273)))
          {
            v274 = objc_msgSend_data(a2, v269, v270);
            v277 = objc_msgSend_position(a2, v275, v276);
            objc_msgSend_getBytes_range_(v274, v278, &v308, v277, 1);

            v281 = objc_msgSend_position(a2, v279, v280);
            objc_msgSend_setPosition_(a2, v282, v281 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v269, v270);
          }

          v265 |= (v308 & 0x7F) << v263;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v263 += 7;
          v30 = v264++ >= 9;
          if (v30)
          {
            v283 = 0;
            goto LABEL_201;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v283 = 0;
        }

        else
        {
          v283 = v265;
        }

LABEL_201:
        *(a1 + 8) = v283;
        goto LABEL_205;
      case 0xBu:
        v33 = objc_alloc_init(CKDPProtectionInfo);
        v80 = 104;
LABEL_146:
        objc_storeStrong((a1 + v80), v33);
        v308 = 0;
        v309 = 0;
        if (!PBReaderPlaceMark() || !CKDPProtectionInfoReadFrom(v33, a2, v284))
        {
          goto LABEL_207;
        }

        goto LABEL_162;
      case 0xCu:
        v35 = PBReaderReadData();
        v36 = 80;
        goto LABEL_91;
      case 0xDu:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 152) |= 4u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v125 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v125 >= objc_msgSend_position(a2, v126, v127) && (v130 = objc_msgSend_position(a2, v128, v129) + 1, v130 <= objc_msgSend_length(a2, v131, v132)))
          {
            v133 = objc_msgSend_data(a2, v128, v129);
            v136 = objc_msgSend_position(a2, v134, v135);
            objc_msgSend_getBytes_range_(v133, v137, &v308, v136, 1);

            v140 = objc_msgSend_position(a2, v138, v139);
            objc_msgSend_setPosition_(a2, v141, v140 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v128, v129);
          }

          v124 |= (v308 & 0x7F) << v122;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v30 = v123++ >= 9;
          if (v30)
          {
            v78 = 0;
            goto LABEL_178;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v78 = 0;
        }

        else
        {
          v78 = v124;
        }

LABEL_178:
        v306 = 76;
        goto LABEL_191;
      case 0xEu:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 152) |= 0x20u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v61 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
          {
            v69 = objc_msgSend_data(a2, v64, v65);
            v72 = objc_msgSend_position(a2, v70, v71);
            objc_msgSend_getBytes_range_(v69, v73, &v308, v72, 1);

            v76 = objc_msgSend_position(a2, v74, v75);
            objc_msgSend_setPosition_(a2, v77, v76 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v64, v65);
          }

          v60 |= (v308 & 0x7F) << v58;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v30 = v59++ >= 9;
          if (v30)
          {
            v78 = 0;
            goto LABEL_168;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v78 = 0;
        }

        else
        {
          v78 = v60;
        }

LABEL_168:
        v306 = 128;
        goto LABEL_191;
      case 0xFu:
        v223 = 0;
        v224 = 0;
        v225 = 0;
        *(a1 + 152) |= 0x80u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v226 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v226 >= objc_msgSend_position(a2, v227, v228) && (v231 = objc_msgSend_position(a2, v229, v230) + 1, v231 <= objc_msgSend_length(a2, v232, v233)))
          {
            v234 = objc_msgSend_data(a2, v229, v230);
            v237 = objc_msgSend_position(a2, v235, v236);
            objc_msgSend_getBytes_range_(v234, v238, &v308, v237, 1);

            v241 = objc_msgSend_position(a2, v239, v240);
            objc_msgSend_setPosition_(a2, v242, v241 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v229, v230);
          }

          v225 |= (v308 & 0x7F) << v223;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v223 += 7;
          v30 = v224++ >= 9;
          if (v30)
          {
            LOBYTE(v57) = 0;
            goto LABEL_195;
          }
        }

        v57 = (v225 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_195:
        v305 = 144;
        goto LABEL_204;
      case 0x10u:
        v243 = 0;
        v244 = 0;
        v245 = 0;
        *(a1 + 152) |= 0x800u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v246 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v246 >= objc_msgSend_position(a2, v247, v248) && (v251 = objc_msgSend_position(a2, v249, v250) + 1, v251 <= objc_msgSend_length(a2, v252, v253)))
          {
            v254 = objc_msgSend_data(a2, v249, v250);
            v257 = objc_msgSend_position(a2, v255, v256);
            objc_msgSend_getBytes_range_(v254, v258, &v308, v257, 1);

            v261 = objc_msgSend_position(a2, v259, v260);
            objc_msgSend_setPosition_(a2, v262, v261 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v249, v250);
          }

          v245 |= (v308 & 0x7F) << v243;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v243 += 7;
          v30 = v244++ >= 9;
          if (v30)
          {
            LOBYTE(v57) = 0;
            goto LABEL_197;
          }
        }

        v57 = (v245 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_197:
        v305 = 148;
        goto LABEL_204;
      case 0x11u:
        v33 = objc_alloc_init(MEMORY[0x277CBC240]);
        v79 = 24;
        goto LABEL_160;
      case 0x12u:
        v285 = 0;
        v286 = 0;
        v287 = 0;
        *(a1 + 152) |= 0x1000u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v288 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v288 >= objc_msgSend_position(a2, v289, v290) && (v293 = objc_msgSend_position(a2, v291, v292) + 1, v293 <= objc_msgSend_length(a2, v294, v295)))
          {
            v296 = objc_msgSend_data(a2, v291, v292);
            v299 = objc_msgSend_position(a2, v297, v298);
            objc_msgSend_getBytes_range_(v296, v300, &v308, v299, 1);

            v303 = objc_msgSend_position(a2, v301, v302);
            objc_msgSend_setPosition_(a2, v304, v303 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v291, v292);
          }

          v287 |= (v308 & 0x7F) << v285;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v285 += 7;
          v30 = v286++ >= 9;
          if (v30)
          {
            LOBYTE(v57) = 0;
            goto LABEL_203;
          }
        }

        v57 = (v287 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_203:
        v305 = 149;
        goto LABEL_204;
      case 0x13u:
        v35 = PBReaderReadData();
        v36 = 112;
        goto LABEL_91;
      case 0x14u:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 152) |= 2u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v145 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v145 >= objc_msgSend_position(a2, v146, v147) && (v150 = objc_msgSend_position(a2, v148, v149) + 1, v150 <= objc_msgSend_length(a2, v151, v152)))
          {
            v153 = objc_msgSend_data(a2, v148, v149);
            v156 = objc_msgSend_position(a2, v154, v155);
            objc_msgSend_getBytes_range_(v153, v157, &v308, v156, 1);

            v160 = objc_msgSend_position(a2, v158, v159);
            objc_msgSend_setPosition_(a2, v161, v160 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v148, v149);
          }

          v144 |= (v308 & 0x7F) << v142;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v30 = v143++ >= 9;
          if (v30)
          {
            v78 = 0;
            goto LABEL_182;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v78 = 0;
        }

        else
        {
          v78 = v144;
        }

LABEL_182:
        v306 = 72;
LABEL_191:
        *(a1 + v306) = v78;
        goto LABEL_205;
      case 0x15u:
        v33 = objc_alloc_init(MEMORY[0x277CBC240]);
        v79 = 56;
        goto LABEL_160;
      case 0x17u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 152) |= 0x200u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v40 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
          {
            v48 = objc_msgSend_data(a2, v43, v44);
            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_getBytes_range_(v48, v52, &v308, v51, 1);

            v55 = objc_msgSend_position(a2, v53, v54);
            objc_msgSend_setPosition_(a2, v56, v55 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v43, v44);
          }

          v39 |= (v308 & 0x7F) << v37;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v30 = v38++ >= 9;
          if (v30)
          {
            LOBYTE(v57) = 0;
            goto LABEL_164;
          }
        }

        v57 = (v39 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_164:
        v305 = 146;
        goto LABEL_204;
      case 0x18u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 152) |= 0x400u;
        while (1)
        {
          LOBYTE(v308) = 0;
          v105 = objc_msgSend_position(a2, v32, v9, v308) + 1;
          if (v105 >= objc_msgSend_position(a2, v106, v107) && (v110 = objc_msgSend_position(a2, v108, v109) + 1, v110 <= objc_msgSend_length(a2, v111, v112)))
          {
            v113 = objc_msgSend_data(a2, v108, v109);
            v116 = objc_msgSend_position(a2, v114, v115);
            objc_msgSend_getBytes_range_(v113, v117, &v308, v116, 1);

            v120 = objc_msgSend_position(a2, v118, v119);
            objc_msgSend_setPosition_(a2, v121, v120 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v108, v109);
          }

          v104 |= (v308 & 0x7F) << v102;
          if ((v308 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v30 = v103++ >= 9;
          if (v30)
          {
            LOBYTE(v57) = 0;
            goto LABEL_174;
          }
        }

        v57 = (v104 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_174:
        v305 = 147;
LABEL_204:
        *(a1 + v305) = v57;
        goto LABEL_205;
      case 0x19u:
        v35 = PBReaderReadData();
        v36 = 40;
LABEL_91:
        v182 = *(a1 + v36);
        *(a1 + v36) = v35;

        goto LABEL_205;
      case 0x1Au:
        v33 = objc_alloc_init(MEMORY[0x277CBC240]);
        v79 = 48;
        goto LABEL_160;
      case 0x1Bu:
        v33 = objc_alloc_init(MEMORY[0x277CBC240]);
        v79 = 16;
LABEL_160:
        objc_storeStrong((a1 + v79), v33);
        v308 = 0;
        v309 = 0;
        if (PBReaderPlaceMark() && CKDPDateReadFrom())
        {
LABEL_162:
          PBReaderRecallMark();

LABEL_205:
          v5 = objc_msgSend_position(a2, v32, v9);
          continue;
        }

LABEL_207:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_205;
    }
  }
}