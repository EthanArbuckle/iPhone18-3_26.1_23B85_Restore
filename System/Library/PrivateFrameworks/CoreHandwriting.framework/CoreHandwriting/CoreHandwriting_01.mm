__n128 sub_18368D064(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_18368D1E8(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 16);
      v8 = *(a1 + 16);
      v10 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 >= v8)
        {
          v29 = *a1;
          *a1 = *v7;
          *v7 = v29;
          if (v4->n128_u64[0] < *(a1 + 16))
          {
            v30 = *v7;
            *v7 = *v4;
            *v4 = v30;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *v7;
      *v7 = *v4;
      *v4 = v24;
LABEL_49:
      if (*(a1 + 16) < *a1)
      {
        v43 = *a1;
        *a1 = *v7;
        *v7 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_18368D064(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v7 = (a1 + 16);
    v18 = *(a1 + 16);
    v19 = (a1 + 32);
    v20 = *(a1 + 32);
    v21 = a2 - 1;
    v22 = *a1;
    if (v18 >= *a1)
    {
      if (v20 < v18)
      {
        v27 = *v7;
        *v7 = *v19;
        *v19 = v27;
        if (v7->n128_u64[0] < v22)
        {
          v28 = *a1;
          *a1 = *v7;
          *v7 = v28;
        }
      }

      goto LABEL_46;
    }

    if (v20 >= v18)
    {
      v40 = *a1;
      *a1 = *v7;
      *v7 = v40;
      if (v20 >= *(a1 + 16))
      {
        goto LABEL_46;
      }

      v23 = *v7;
      *v7 = *v19;
    }

    else
    {
      v23 = *a1;
      *a1 = *v19;
    }

    *v19 = v23;
LABEL_46:
    if (v21->n128_u64[0] >= v19->n128_u64[0])
    {
      return 1;
    }

    v41 = *v19;
    *v19 = *v21;
    *v21 = v41;
    if (v19->n128_u64[0] >= v7->n128_u64[0])
    {
      return 1;
    }

    v42 = *v7;
    *v7 = *v19;
    *v19 = v42;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

LABEL_12:
    v11 = *a1;
    *a1 = *v4;
    *v4 = v11;
    return 1;
  }

LABEL_13:
  v12 = (a1 + 32);
  v13 = *(a1 + 32);
  v14 = (a1 + 16);
  v15 = *(a1 + 16);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      v25 = *v14;
      *v14 = *v12;
      *v12 = v25;
      if (v14->n128_u64[0] < v16)
      {
        v26 = *a1;
        *a1 = *v14;
        *v14 = v26;
      }
    }
  }

  else
  {
    if (v13 >= v15)
    {
      v31 = *a1;
      *a1 = *v14;
      *v14 = v31;
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_32;
      }

      v17 = *v14;
      *v14 = *v12;
    }

    else
    {
      v17 = *a1;
      *a1 = *v12;
    }

    *v12 = v17;
  }

LABEL_32:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (v32->n128_u64[0] < v12->n128_u64[0])
    {
      break;
    }

LABEL_41:
    v12 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }

  v36 = v32->n128_i64[1];
  v37 = v33;
  do
  {
    *(a1 + v37 + 48) = *(a1 + v37 + 32);
    if (v37 == -32)
    {
      *a1 = v35;
      *(a1 + 8) = v36;
      if (++v34 != 8)
      {
        goto LABEL_41;
      }

      return &v32[1] == a2;
    }

    v38 = *(a1 + v37 + 16);
    v37 -= 16;
  }

  while (v35 < v38);
  v39 = a1 + v37;
  *(v39 + 48) = v35;
  *(v39 + 56) = v36;
  if (++v34 != 8)
  {
    goto LABEL_41;
  }

  return &v32[1] == a2;
}

void sub_18368D56C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_18368D56C(a1, *a2);
    sub_18368D56C(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_18368D5C4(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

id sub_18368D774(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CHModelCatalog);
  v6 = objc_msgSend_getMetadata_variant_(v2, v3, 0, a1, v4, v5);
  v11 = v6;
  if (v6)
  {
    v16 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"prototypes", v8, v9, v10);
    if (v16)
    {
      v17 = MEMORY[0x1E695DFF8];
      v18 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"modelResourceURL", v13, v14, v15);
      v23 = objc_msgSend_URLWithString_(v17, v19, v18, v20, v21, v22);
      v28 = objc_msgSend_URLByAppendingPathComponent_(v23, v24, v16, v25, v26, v27);

      v34 = objc_msgSend_path(v28, v29, v30, v31, v32, v33);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v35 = qword_1EA84DC98;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 138412290;
        v38 = v34;
        _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_DEFAULT, "CHFastPathCharacterHolderMMap: ModelCatalog resources path %@ ", &v37, 0xCu);
      }
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v28 = qword_1EA84DC98;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderMMap failed to load prototypes path component from metadata dictionary.", &v37, 2u);
      }

      v34 = 0;
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v16 = qword_1EA84DC98;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderMMap failed to load metadata dictionary from model catalog.", &v37, 2u);
    }

    v34 = 0;
  }

  return v34;
}

void sub_18368DA1C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_18368DA9C(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
  *(a1 + 40) = 0;
  *a1 = &unk_1EF1BB3D0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 64) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  if (v9)
  {
    v11 = v9;
    v17 = objc_msgSend_UTF8String(v11, v12, v13, v14, v15, v16);
    v18 = strlen(v17);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_183688FF0();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v49 = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    *(&__dst + v19) = 0;
    sub_1837AE724(buf, &__dst);
    sub_1837AFDAC(a1 + 64, buf);
    if (*buf)
    {
      sub_1837AF2FC(buf);
    }

    sub_18368D56C(v52, v52[1]);
    if (v49 < 0)
    {
      operator delete(__dst);
    }

    v20 = v10;
    CodepointInString = objc_msgSend_firstCodepointInString(v20, v21, v22, v23, v24, v25);
    sub_1837AF508(a1 + 64, CodepointInString, buf);
    if (v51)
    {
      objc_msgSend_bounds(*buf, v27, v28, v29, v30, v31);
      *(a1 + 48) = v37;
      if ((v51 & 1) == 0)
      {
        sub_18368EC64();
      }

      objc_msgSend_bounds(*buf, v32, v33, v34, v35, v36);
      if ((v51 & 1) == 0)
      {
        sub_18368EC64();
      }

      v44 = v43;
      objc_msgSend_bounds(*buf, v38, v39, v40, v41, v42);
      *(a1 + 56) = v44 + v45;
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v46 = qword_1EA84DC98;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *v53 = 138412290;
        v54 = v20;
        _os_log_impl(&dword_18366B000, v46, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderMMap failed to load character %@ for retrieving scale of the inventory.", v53, 0xCu);
      }
    }

    if (v51 == 1)
    {
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v20 = qword_1EA84DC98;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderMMap failed to load prototypes: resourcePath is nil.", buf, 2u);
    }
  }

  return a1;
}

void sub_18368DDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
  }

  sub_1837AFF34(v21);
  sub_18368DE64(v18);

  _Unwind_Resume(a1);
}

uint64_t sub_18368DE64(uint64_t a1)
{
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_18368DEB8()
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v0 = qword_1EA84DC98;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_18366B000, v0, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderMMap reloadAllCharactersIfNeeded not supported!", v2, 2u);
  }

  return 0;
}

void sub_18368DF50()
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v0 = qword_1EA84DC98;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_18366B000, v0, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderMMap addCharacter not supported!", v1, 2u);
  }
}

void sub_18368DFE4(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 64))
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x4812000000;
    v14 = sub_18368E220;
    v15 = sub_18368E25C;
    v16 = &unk_183A5AC72;
    v18[0] = 0;
    v18[1] = 0;
    v17 = v18;
    v3 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_18368E268;
    block[3] = &unk_1E6DDBFC0;
    block[4] = &v11;
    block[5] = a1;
    dispatch_sync(v3, block);
    a2[1] = 0;
    v4 = v12;
    a2[2] = 0;
    *a2 = a2 + 1;
    v5 = v4[6];
    v6 = (v4 + 7);
    if (v5 != (v4 + 7))
    {
      do
      {
        if (!*sub_18368ECB0(a2, a2 + 1, &v20, &v19, v5 + 8))
        {
          operator new();
        }

        v7 = *(v5 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v5 + 2);
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }

      while (v8 != v6);
    }

    _Block_object_dispose(&v11, 8);
    sub_18368D56C(&v17, v18[0]);
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }
}

void sub_18368E1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  sub_18368D56C(v23, *(v23 + 8));
  _Block_object_dispose(&a16, 8);
  sub_18368D56C(v24 + 48, a23);
  _Unwind_Resume(a1);
}

void *sub_18368E220(void *result, void *a2)
{
  v2 = a2 + 7;
  v3 = a2[7];
  v4 = a2[6];
  result[7] = v3;
  v5 = result + 7;
  result[6] = v4;
  v6 = a2[8];
  result[8] = v6;
  if (v6)
  {
    *(v3 + 16) = v5;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v5;
  }

  return result;
}

void sub_18368E268(uint64_t a1)
{
  sub_1837AFB30((*(a1 + 40) + 64), &v7);
  v2 = *(*(a1 + 32) + 8);
  v4 = *(v2 + 56);
  v3 = (v2 + 56);
  sub_18368D56C((v3 - 1), v4);
  v5 = v8;
  *(v3 - 1) = v7;
  *v3 = v5;
  v6 = v9;
  v3[1] = v9;
  if (v6)
  {
    v5[2] = v3;
    v7 = &v8;
    v8 = 0;
    v9 = 0;
    v5 = 0;
  }

  else
  {
    *(v3 - 1) = v3;
  }

  sub_18368D56C(&v7, v5);
}

void sub_18368E2FC(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  if (v6)
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    sub_1837AF508(v5, a2, &v55);
    if (v56)
    {
      v8 = v55;
      objc_msgSend_bounds(v8, v9, v10, v11, v12, v13);
      objc_msgSend_bounds(v8, v14, v15, v16, v17, v18, v19, v20);
      objc_msgSend_bounds(v8, v21, v22, v23, v24, v25);
      v26 = *(a1 + 48);
      v27 = *(a1 + 56);
      v28 = v8;
      objc_msgSend_bounds(v28, v29, v30, v31, v32, v33);
      v34 = v27;
      v35 = v26;
      v42 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v28, v37, v38, v39, v40, v41, (0.0 / (1.0 / (v34 - v35))) - v36, ((1.0 / (1.0 / (v34 - v35))) - v34), (1.0 / (v34 - v35)));

      if (objc_msgSend_pointCount(v42, v43, v44, v45, v46, v47) == 96)
      {
        objc_msgSend_copy(v42, v48, v49, v50, v51, v52);
        operator new();
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v54 = qword_1EA84DC98;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v61 = a2;
        v62 = 1024;
        v63 = 96;
        _os_log_impl(&dword_18366B000, v54, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderMMap character %u contains not %d points", buf, 0xEu);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v53 = qword_1EA84DC98;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v61 = a2;
        _os_log_impl(&dword_18366B000, v53, OS_LOG_TYPE_ERROR, "CHFastPathCharacterHolderMMap character %u cannot be obtained by mmap", buf, 8u);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    if (v56 == 1)
    {
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_18368E5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, ...)
{
  va_start(va, a6);

  if (a6)
  {
  }

  sub_18368EE60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_18368E650(uint64_t a1, int a2, int a3, void *a4)
{
  *sub_18368DA9C(a1, a2, a3, a4, @"n") = &unk_1EF1BB410;
  v10 = objc_msgSend_UTF8String(@"com.apple.CoreHandwriting.CHFastPathCharacterHolderMMapZhJa", v5, v6, v7, v8, v9);
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create(v10, v11);
  v13 = *(a1 + 40);
  *(a1 + 40) = v12;

  return a1;
}

uint64_t sub_18368E6F8(uint64_t a1)
{
  *a1 = &unk_1EF1BB3D0;
  v3 = *(a1 + 64);
  v2 = a1 + 64;
  if (v3)
  {
    sub_1837AF2FC(v2);
  }

  sub_18368D56C(a1 + 120, *(a1 + 128));
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_18368E784(uint64_t a1, int a2, int a3, void *a4)
{
  *sub_18368DA9C(a1, a2, a3, a4, @"돧") = &unk_1EF1BB450;
  v10 = objc_msgSend_UTF8String(@"com.apple.CoreHandwriting.CHFastPathCharacterHolderMMapKo", v5, v6, v7, v8, v9);
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create(v10, v11);
  v13 = *(a1 + 40);
  *(a1 + 40) = v12;

  return a1;
}

uint64_t sub_18368E82C(uint64_t a1)
{
  *a1 = &unk_1EF1BB3D0;
  v3 = *(a1 + 64);
  v2 = a1 + 64;
  if (v3)
  {
    sub_1837AF2FC(v2);
  }

  sub_18368D56C(a1 + 120, *(a1 + 128));
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_18368E8B8(uint64_t a1)
{
  *a1 = &unk_1EF1BB3D0;
  v3 = *(a1 + 64);
  v2 = a1 + 64;
  if (v3)
  {
    sub_1837AF2FC(v2);
  }

  sub_18368D56C(a1 + 120, *(a1 + 128));
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_18368E964(uint64_t a1)
{
  *a1 = &unk_1EF1BB3D0;
  v3 = *(a1 + 64);
  v2 = a1 + 64;
  if (v3)
  {
    sub_1837AF2FC(v2);
  }

  sub_18368D56C(a1 + 120, *(a1 + 128));
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_18368E9F0(uint64_t a1)
{
  *a1 = &unk_1EF1BB3D0;
  v3 = *(a1 + 64);
  v2 = a1 + 64;
  if (v3)
  {
    sub_1837AF2FC(v2);
  }

  sub_18368D56C(a1 + 120, *(a1 + 128));
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_18368EA9C(uint64_t a1)
{
  *a1 = &unk_1EF1BB3D0;
  v3 = *(a1 + 64);
  v2 = a1 + 64;
  if (v3)
  {
    sub_1837AF2FC(v2);
  }

  sub_18368D56C(a1 + 120, *(a1 + 128));
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_18368EB28(uint64_t a1)
{
  *a1 = &unk_1EF1BB3D0;
  v3 = *(a1 + 64);
  v2 = a1 + 64;
  if (v3)
  {
    sub_1837AF2FC(v2);
  }

  sub_18368D56C(a1 + 120, *(a1 + 128));
  *a1 = &unk_1EF1BCD08;

  sub_18368EBD4(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1865E5EC0);
}

void sub_18368EBD4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_18368EBD4(a1, *a2);
    sub_18368EBD4(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      v5 = a2[6];
      v6 = a2[5];
      if (v5 != v4)
      {
        do
        {
          v7 = *(v5 - 24);
          v5 -= 24;
        }

        while (v5 != v4);
        v6 = a2[5];
      }

      a2[6] = v4;
      operator delete(v6);
    }

    operator delete(a2);
  }
}

void sub_18368EC64()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

uint64_t *sub_18368ECB0(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 32);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 8))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 32);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void **sub_18368EE60(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        v3 -= 24;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_18368F4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);

  sub_183695894(va);
  _Unwind_Resume(a1);
}

void sub_18368F8D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @".@#:/-_", a4, a5, a6);
  v7 = qword_1EA84CCA0;
  qword_1EA84CCA0 = v6;
}

void sub_18368FD84(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void sub_18368FF14(uint64_t a1, void *a2, void *a3)
{
  v106 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = a3;
  v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v100, v105, 16, v6);
  if (v85)
  {
    v86 = *v101;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v101 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v100 + 1) + 8 * i);
        v92 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v90 = *(a1 + 32);
        v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v13, &v96, v104, 16, v14);
        if (v93)
        {
          v91 = *v97;
          do
          {
            for (j = 0; j != v93; ++j)
            {
              if (*v97 != v91)
              {
                objc_enumerationMutation(v90);
              }

              v20 = *(*(&v96 + 1) + 8 * j);
              v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17, v18, v19);
              v27 = objc_msgSend_length(v20, v22, v23, v24, v25, v26);
              v33 = objc_msgSend_rangeOfString_options_range_(v20, v28, v4, 0, 0, v27);
              v95 = v20;
              if (v33 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v34 = v29;
                do
                {
                  v35 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v95, v29, v33, v34, v12, v32);
                  v45 = objc_msgSend_count(v21, v36, v37, v38, v39, v40);
                  if (v45)
                  {
                    for (k = 0; k != v45; ++k)
                    {
                      v47 = objc_msgSend_objectAtIndexedSubscript_(v21, v41, k, v42, v43, v44);
                      v52 = objc_msgSend_rangeOfString_(v47, v48, v4, v49, v50, v51);
                      v54 = v53;

                      v59 = objc_msgSend_objectAtIndexedSubscript_(v21, v55, k, v56, v57, v58);
                      v62 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v59, v60, v52, v54, v12, v61);

                      objc_msgSend_addObject_(v21, v63, v62, v64, v65, v66);
                    }
                  }

                  objc_msgSend_addObject_(v21, v41, v35, v42, v43, v44);
                  v72 = objc_msgSend_length(v12, v67, v68, v69, v70, v71);
                  v78 = objc_msgSend_length(v95, v73, v74, v75, v76, v77);
                  v33 = objc_msgSend_rangeOfString_options_range_(v95, v79, v4, 0, v72 + v33, v78 - (v72 + v33));
                  v34 = v80;
                }

                while (v33 != 0x7FFFFFFFFFFFFFFFLL);
              }

              objc_msgSend_addObjectsFromArray_(v92, v29, v21, v30, v31, v32);
            }

            v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v15, &v96, v104, 16, v19);
          }

          while (v93);
        }

        objc_msgSend_addObjectsFromArray_(*(a1 + 32), v81, v92, v82, v83, v84);
      }

      v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v100, v105, 16, v11);
    }

    while (v85);
  }
}

void sub_183690FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_183691020(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  cf = v5;
  if (v5)
  {
    v6 = CFGetTypeID(v5);
    if (v6 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  LXEntryGetPartialProbability();
  v8 = v7;
  isEqualToString = objc_msgSend_isEqualToString_(cf, v9, a1[4], v10, v11, v12);
  v14 = *(a1[5] + 8);
  if ((isEqualToString & 1) != 0 || v8 > *(v14 + 24))
  {
    *(v14 + 24) = v8;
    *(*(a1[6] + 8) + 24) = LXEntryGetTokenID();
  }

  *a3 = isEqualToString;
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_18369111C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_183695860(&a10);
  _Unwind_Resume(a1);
}

void sub_183691140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_183691154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183695860(va);
  _Unwind_Resume(a1);
}

void sub_183691168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_18369117C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183691190(va);
  _Unwind_Resume(a1);
}

const void **sub_183691190(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1836912D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_183691300(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  *(*(a1[5] + 8) + 24) = 1;
  if (!a1[7])
  {
    *a3 = 1;
    return;
  }

  v5 = LXEntryCopyString();
  cf = v5;
  if (v5)
  {
    v10 = CFGetTypeID(v5);
    if (v10 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v5 = cf;
  }

  if (objc_msgSend_caseInsensitiveCompare_(v5, v6, a1[4], v7, v8, v9))
  {
    v11 = cf;
    if (!cf)
    {
      return;
    }

LABEL_10:
    CFRelease(v11);
    return;
  }

  *(*(a1[6] + 8) + 24) = 1;
  *a3 = 1;
  v11 = cf;
  if (cf)
  {
    goto LABEL_10;
  }
}

void sub_183691400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_183695860(&a10);
  _Unwind_Resume(a1);
}

void sub_183691424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183695860(va);
  _Unwind_Resume(a1);
}

void sub_183691438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183691190(va);
  _Unwind_Resume(a1);
}

void sub_183691550(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v11 = objc_msgSend_mutableCopy(v63, v6, v7, v8, v9, v10);
  v12 = qword_1EA84CCB8;
  qword_1EA84CCB8 = v11;

  v13 = qword_1EA84CCB8;
  v64 = objc_msgSend_ch_basicAlphanumericCharacterSet(MEMORY[0x1E696AB08], v14, v15, v16, v17, v18);
  objc_msgSend_formUnionWithCharacterSet_(v13, v19, v64, v20, v21, v22);

  v23 = qword_1EA84CCB8;
  v65 = objc_msgSend_ch_hiraganaCharacterSet(MEMORY[0x1E696AB08], v24, v25, v26, v27, v28);
  objc_msgSend_formUnionWithCharacterSet_(v23, v29, v65, v30, v31, v32);

  v33 = qword_1EA84CCB8;
  v66 = objc_msgSend_ch_katakanaCharacterSet(MEMORY[0x1E696AB08], v34, v35, v36, v37, v38);
  objc_msgSend_formUnionWithCharacterSet_(v33, v39, v66, v40, v41, v42);

  v43 = qword_1EA84CCB8;
  v67 = objc_msgSend_ch_kanjiCharacterSet(MEMORY[0x1E696AB08], v44, v45, v46, v47, v48);
  objc_msgSend_formUnionWithCharacterSet_(v43, v49, v67, v50, v51, v52);

  v53 = qword_1EA84CCB8;
  v68 = objc_msgSend_ch_kanjiCompCharacterSet(MEMORY[0x1E696AB08], v54, v55, v56, v57, v58);
  objc_msgSend_formUnionWithCharacterSet_(v53, v59, v68, v60, v61, v62);
}

void sub_183691E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183691EA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"¡¿", a4, a5, a6);
  v7 = qword_1EA84DAA0;
  qword_1EA84DAA0 = v6;
}

void sub_183691EE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  if (objc_msgSend_isEqualToString_(v32, v7, *MEMORY[0x1E696A558], v8, v9, v10))
  {
    v15 = 1;
LABEL_9:
    *(*(*(a1 + 40) + 8) + 24) = v15;
    goto LABEL_10;
  }

  if (!objc_msgSend_isEqualToString_(v32, v11, *MEMORY[0x1E696A520], v12, v13, v14))
  {
    if (objc_msgSend_isEqualToString_(v32, v16, *MEMORY[0x1E696A560], v17, v18, v19))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a4 != 1 || (v20 = qword_1EA84DAA0, objc_msgSend_substringWithRange_(*(a1 + 32), v16, a3, 1, v18, v19), v21 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_characterAtIndex_(v21, v22, 0, v23, v24, v25), IsMember = objc_msgSend_characterIsMember_(v20, v27, v26, v28, v29, v30), v21, (IsMember & 1) == 0))
  {
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

void sub_183692CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23)
{
  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1836938FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40, void *a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  _Block_object_dispose(&STACK[0x2A8], 8);

  _Block_object_dispose(&STACK[0x2C8], 8);
  _Block_object_dispose(&STACK[0x2E8], 8);
  _Block_object_dispose((v76 - 248), 8);

  _Block_object_dispose((v76 - 216), 8);
  _Block_object_dispose((v76 - 184), 8);

  _Unwind_Resume(a1);
}

void sub_183693B28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"-/", a4, a5, a6);
  v7 = qword_1EA84CCC0;
  qword_1EA84CCC0 = v6;

  v12 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v8, @"!?():", v9, v10, v11);;
  v13 = qword_1EA84CCC8;
  qword_1EA84CCC8 = v12;

  v18 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v14, @"àáâäãçèéêëìíîïñòóôõöùúûü\xFFÀÁÂÄÃÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜŸ", v15, v16, v17);
  v19 = qword_1EA84CCD0;
  qword_1EA84CCD0 = v18;

  v25 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AD48], v20, v21, v22, v23, v24);
  v26 = qword_1EA84CCD8;
  qword_1EA84CCD8 = v25;

  v27 = qword_1EA84CCD8;
  v37 = objc_msgSend_symbolCharacterSet(MEMORY[0x1E696AB08], v28, v29, v30, v31, v32);
  objc_msgSend_formUnionWithCharacterSet_(v27, v33, v37, v34, v35, v36);
}

void sub_183693C1C(uint64_t a1, uint64_t a2)
{
  v4 = LXEntryCopyString();
  v390 = v4;
  if (v4)
  {
    v5 = CFGetTypeID(v4);
    if (v5 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1865E5C80](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = v390;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v13 = objc_msgSend_copy(v7, v8, v9, v10, v11, v12);

  LXEntryGetPartialProbability();
  v15 = v14;
  LXEntryGetProbability();
  v17 = v16;
  UserBitfield = LXEntryGetUserBitfield();
  v19 = *(a1 + 160);
  v25 = objc_msgSend_length(*(a1 + 32), v20, v21, v22, v23, v24);
  v26 = *(a1 + 168);
  v32 = objc_msgSend_length(*(a1 + 32), v27, v28, v29, v30, v31);
  v38 = objc_msgSend_length(v13, v33, v34, v35, v36, v37);
  v43 = objc_msgSend_compare_(v13, v39, *(a1 + 40), v40, v41, v42);
  MetaFlags = LXEntryGetMetaFlags();
  v50 = objc_msgSend_length(*(a1 + 32), v45, v46, v47, v48, v49);
  if (!v43 || ((MetaFlags & 0x200000) != 0 ? (v51 = v50 >= *(a1 + 176)) : (v51 = 1), !v51 ? (v52 = 0) : (v52 = 1), v32 != v38 ? (v53 = v25 >= v26) : (v53 = 1), !v53 ? (v54 = v17 < v19) : (v54 = 0), !v54 && (v52 & 1) != 0))
  {
    v59 = __exp10(v15);
    if ((MetaFlags & 0x200000) != 0)
    {
      hasPrefix = objc_msgSend_hasPrefix_(v13, v55, *(a1 + 48), v56, v57, v58);
    }

    else
    {
      v60 = objc_msgSend_substringWithRange_(v13, v55, *(a1 + 184), *(a1 + 192), v57, v58);
      hasPrefix = objc_msgSend_caseInsensitiveCompare_(v60, v61, *(a1 + 48), v62, v63, v64) == 0;
    }

    if (!objc_msgSend_length(*(a1 + 48), v66, v67, v68, v69, v70) || ((objc_msgSend_length(*(a1 + 48), v71, v72, v73, v74, v75) != 0) & hasPrefix) == 1)
    {
      v76 = *(a1 + 200);
      if (v76)
      {
        *v76 = 1;
      }

      TokenID = LXEntryGetTokenID();
      isInappropriateLexiconEntry = objc_msgSend_isInappropriateLexiconEntry_(*(a1 + 56), v78, a2, v79, v80, v81);
      v375 = objc_msgSend_properties(*(a1 + 64), v83, v84, v85, v86, v87);
      v93 = 260;
      if (isInappropriateLexiconEntry)
      {
        v93 = 276;
      }

      v373 = v93;
      v380 = objc_msgSend_inputSources(*(a1 + 64), v88, v89, v90, v91, v92);
      v99 = v15 < *(a1 + 208) && objc_msgSend_caseInsensitiveCompare_(*(a1 + 32), v94, v13, v96, v97, v98) != 0;
      objc_msgSend_combinedScore(*(a1 + 64), v94, v95, v96, v97, v98);
      v104 = v103;
      if (*(a1 + 216))
      {
        TokenIDForLemma = LMVocabularyGetTokenIDForLemma();
        if (TokenIDForLemma)
        {
          TokenID = TokenIDForLemma;
        }
      }

      if (!v43)
      {
        v106 = *(a1 + 224);
        if (v106)
        {
          *v106 = 1;
        }
      }

      if (*(a1 + 272) == 1)
      {
        if ((MetaFlags & 0x200000) == 0 || *(*(*(a1 + 112) + 8) + 24) == 1)
        {
          v107 = sub_1837A47B8(*(a1 + 32));
          v108 = sub_1837A47B8(v13);
          isEqualToString = objc_msgSend_isEqualToString_(v107, v109, v108, v110, v111, v112);
LABEL_45:

          goto LABEL_47;
        }
      }

      else if ((MetaFlags & 0x200000) == 0 || *(*(*(a1 + 112) + 8) + 24) == 1)
      {
        v107 = sub_1837A4A4C(*(a1 + 32));
        v108 = sub_1837A4A4C(v13);
        isEqualToString = objc_msgSend_isEqualToString_(v107, v113, v108, v114, v115, v116);
        goto LABEL_45;
      }

      isEqualToString = 0;
LABEL_47:
      v372 = UserBitfield;
      v377 = TokenID;
      if ((v43 == 0) | isEqualToString & 1)
      {
        v117 = 1;
      }

      else
      {
        v117 = objc_msgSend_rangeOfString_options_(*(a1 + 32), v100, v13, 1, v101, v102) != 0x7FFFFFFFFFFFFFFFLL;
      }

      v123 = objc_msgSend_rangeOfString_options_(*(a1 + 72), v100, v13, 129, v101, v102);
      v124 = v118;
      v125 = 1.0 - v59;
      v126 = *(a1 + 80);
      if (v126)
      {
        if (!*(a1 + 192))
        {
          v150 = objc_msgSend_objectForKey_(v126, v118, v13, v120, v121, v122);

          if (v150)
          {
            if (v124 == objc_msgSend_length(*(a1 + 72), v118, v119, v120, v121, v122))
            {
              v127 = objc_msgSend_objectForKey_(*(a1 + 80), v118, v13, v120, v121, v122);
              v380 |= 0x10uLL;
              goto LABEL_86;
            }

LABEL_53:
            v127 = 0;
            goto LABEL_86;
          }
        }
      }

      if (*(a1 + 273))
      {
        goto LABEL_53;
      }

      if ((v43 == 0) | isEqualToString & 1)
      {
        v128 = objc_msgSend_rangeOfString_options_(*(a1 + 72), v118, v13, 1, v121, v122);
        v130 = v129;
        v131 = v13;
        v127 = v131;
        if (*(a1 + 272) == 1)
        {
          v137 = ((MetaFlags & 0x200000) == 0) | *(*(*(a1 + 112) + 8) + 24);
          if ((MetaFlags & 0x200000) == 0 && (*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
          {
            v138 = sub_1837A47B8(v131);

            v137 = 0;
            v127 = v138;
            v144 = objc_msgSend_length(v138, v139, v140, v141, v142, v143);
LABEL_73:
            if (v144 != objc_msgSend_length(*(a1 + 72), v145, v146, v147, v148, v149))
            {
              v158 = objc_msgSend_stringByReplacingCharactersInRange_withString_(*(a1 + 72), v118, v128, v130, v127, v122);

              if (v137)
              {
                v159 = sub_1837A47B8(v158);

                v127 = v159;
              }

              else
              {
                v127 = v158;
              }
            }

            if (v43)
            {
              v125 = v125 * 0.5;
            }

            else
            {
              v125 = 0.0;
            }

LABEL_86:
            if (*(a1 + 248) + 0.0001 > v104)
            {
              v104 = *(a1 + 248) + 0.0001;
            }

            v178 = *(*(a1 + 128) + 8);
            v179 = *(v178 + 24);
            if (v179 >= v104)
            {
              v179 = v104;
            }

            *(v178 + 24) = v179;
            if ((*(*(*(a1 + 136) + 8) + 24) & 1) != 0 || !v117)
            {
              if (v117 || (*(*(*(a1 + 136) + 8) + 24) & 1) == 0)
              {
                v182 = *(*(a1 + 144) + 8);
                v181 = v380;
                if (v125 >= *(v182 + 24))
                {
                  v180 = 0;
                  if (!v127)
                  {
LABEL_163:

                    goto LABEL_164;
                  }
                }

                else
                {
                  *(v182 + 24) = v125;
                  v180 = 1;
                  if (!v127)
                  {
                    goto LABEL_163;
                  }
                }
              }

              else
              {
                v180 = 0;
                v181 = v380;
                if (!v127)
                {
                  goto LABEL_163;
                }
              }
            }

            else
            {
              *(*(*(a1 + 144) + 8) + 24) = v125;
              v180 = 1;
              *(*(*(a1 + 136) + 8) + 24) = 1;
              v181 = v380;
              if (!v127)
              {
                goto LABEL_163;
              }
            }

            if ((v181 & 0x10) == 0)
            {
              if (objc_msgSend_length(v127, v118, v119, v120, v121, v122) <= *(a1 + 192))
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v188 = qword_1EA84DC50[0];
                if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_18366B000, v188, OS_LOG_TYPE_ERROR, "The corrected entry string length must be greater than the length of the active prefix", buf, 2u);
                }
              }

              if (objc_msgSend_length(v127, v183, v184, v185, v186, v187) <= *(a1 + 192))
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v189 = qword_1EA84DC50[0];
                if (os_log_type_enabled(v189, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_18366B000, v189, OS_LOG_TYPE_FAULT, "The corrected entry string length must be greater than the length of the active prefix", buf, 2u);
                }
              }
            }

            v381 = v180;
            v190 = v127;
            v194 = *(a1 + 192);
            v195 = v190;
            v368 = v190;
            if (!v194)
            {
LABEL_141:
              v225 = v375 | v373;
              if ((v181 & 0x10) != 0)
              {
LABEL_154:
                v379 = v127;
                v229 = [CHTokenizedTextResultToken alloc];
                v235 = objc_msgSend_strokeIndexes(*(a1 + 64), v230, v231, v232, v233, v234);
                v376 = v104;
                objc_msgSend_modelScore(*(a1 + 64), v236, v237, v238, v239, v240);
                v374 = v241;
                objc_msgSend_recognitionScore(*(a1 + 64), v242, v243, v244, v245, v246);
                v370 = v247;
                objc_msgSend_alignmentScore(*(a1 + 64), v248, v249, v250, v251, v252);
                v369 = v253;
                v259 = objc_msgSend_recognizerSourceLocale(*(a1 + 64), v254, v255, v256, v257, v258);
                v265 = objc_msgSend_substrokeCount(*(a1 + 64), v260, v261, v262, v263, v264);
                objc_msgSend_bounds(*(a1 + 64), v266, v267, v268, v269, v270);
                v272 = v271;
                v274 = v273;
                v276 = v275;
                v278 = v277;
                objc_msgSend_originalBounds(*(a1 + 64), v279, v280, v281, v282, v283);
                v290 = v289;
                v292 = v291;
                v294 = v293;
                v296 = v295;
                v297 = *(a1 + 64);
                if (v297)
                {
                  objc_msgSend_principalLines(v297, v284, v285, v286, v287, v288);
                  objc_msgSend_principalPoints(*(a1 + 64), v298, v299, v300, v301, v302);
                }

                else
                {
                  v388 = 0u;
                  v389 = 0u;
                  v386 = 0u;
                  v387 = 0u;
                  v384 = 0u;
                  v385 = 0u;
                  *buf = 0u;
                  v383 = 0u;
                  objc_msgSend_principalPoints(0, v284, v285, v286, v287, v288);
                }
                v303 = ;
                v305 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_originalBounds_principalLines_principalPoints_(v229, v304, v195, v235, v377, v225, v259, v181, v374, v370, v376, v369, v272, v274, v276, v278, v265, v290, v292, v294, v296, buf, v303, v368);

                objc_msgSend_addObject_(*(a1 + 104), v306, v305, v307, v308, v309);
                v127 = v379;
                if (((objc_msgSend_count(*(a1 + 104), v310, v311, v312, v313, v314) != 1) & ~v381) == 0)
                {
                  if (*(a1 + 256))
                  {
                    **(a1 + 256) = objc_msgSend_count(*(a1 + 104), v315, v316, v317, v318, v319) - 1;
                  }

                  v320 = *(a1 + 264);
                  if (v320)
                  {
                    *v320 = v372 & 1;
                  }
                }

                goto LABEL_163;
              }

              if ((MetaFlags & 0x200000) != 0)
              {
                v181 |= 0x40uLL;
              }

              else
              {
                if (objc_msgSend_caseInsensitiveCompare_(*(a1 + 32), v191, v195, v194, v192, v193))
                {
                  v181 |= 0x40uLL;
                }

                if ((*(a1 + 272) & 1) == 0 && ((isEqualToString ^ 1) & 1) == 0)
                {
                  goto LABEL_150;
                }
              }

              v225 |= 0x200uLL;
LABEL_150:
              v226 = objc_msgSend_uppercaseStringWithLocale_(v195, v191, *(a1 + 88), v194, v192, v193);
              buf[0] = 0;
              objc_msgSend_computeEditPenalizationFromString_toReferenceString_withSuffix_withCaseSensitivity_withFirstLetterCaseSensitivity_withDiacriticSensitivity_withDiacriticsCharSet_withConsumableStrokesCharSet_outputSuffix_lexiconExtraCharacters_firstLetterCaseFlipped_(CHLanguageUtilities, v227, v195, v226, &stru_1EF1C0318, 1, 1, 0, 0, *(a1 + 96), 0, 0, buf);
              if (*(*(*(a1 + 152) + 8) + 24) != buf[0] || *(a1 + 232) != v228)
              {
                v181 |= 0x100uLL;
              }

              goto LABEL_154;
            }

            v196 = v190;
            if ((MetaFlags & 0x200000) != 0)
            {
              if ((objc_msgSend_hasPrefix_(v190, v191, *(a1 + 48), v194, v192, v193) & 1) == 0)
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v223 = qword_1EA84DC50[0];
                if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_18366B000, v223, OS_LOG_TYPE_ERROR, "The token prefix should be case-sensitive equal after lexicon correction", buf, 2u);
                }
              }

              if (objc_msgSend_hasPrefix_(v196, v219, *(a1 + 48), v220, v221, v222))
              {
                goto LABEL_140;
              }

              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v217 = qword_1EA84DC50[0];
              if (!os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_139;
              }

              *buf = 0;
              v218 = "The token prefix should be case-sensitive equal after lexicon correction";
            }

            else
            {
              v197 = objc_msgSend_substringWithRange_(v190, v191, *(a1 + 184), v194, v192, v193);
              v202 = objc_msgSend_caseInsensitiveCompare_(v197, v198, *(a1 + 48), v199, v200, v201);

              if (v202)
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v206 = qword_1EA84DC50[0];
                if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_18366B000, v206, OS_LOG_TYPE_ERROR, "The token prefix should be case-insensitive equal after lexicon correction", buf, 2u);
                }
              }

              v207 = objc_msgSend_substringWithRange_(v196, v203, *(a1 + 184), *(a1 + 192), v204, v205);
              v212 = objc_msgSend_caseInsensitiveCompare_(v207, v208, *(a1 + 48), v209, v210, v211);

              if (!v212)
              {
                goto LABEL_140;
              }

              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v217 = qword_1EA84DC50[0];
              if (!os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
              {
LABEL_139:

LABEL_140:
                v224 = objc_msgSend_substringFromIndex_(v196, v213, *(a1 + 192), v214, v215, v216);

                v195 = v224;
                goto LABEL_141;
              }

              *buf = 0;
              v218 = "The token prefix should be case-insensitive equal after lexicon correction";
            }

            _os_log_impl(&dword_18366B000, v217, OS_LOG_TYPE_FAULT, v218, buf, 2u);
            goto LABEL_139;
          }
        }

        else
        {
          v137 = 0;
        }

        v144 = objc_msgSend_length(v131, v132, v133, v134, v135, v136);
        goto LABEL_73;
      }

      if (v123 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v99)
        {
          goto LABEL_53;
        }

        v151 = objc_msgSend_rangeOfCharacterFromSet_(*(a1 + 72), v118, qword_1EA84CCC0, v120, v121, v122);
        if ((v151 != 0x7FFFFFFFFFFFFFFFLL) != (objc_msgSend_rangeOfCharacterFromSet_(v13, v152, qword_1EA84CCC0, v153, v154, v155) != 0x7FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_53;
        }
      }

      else
      {
        v156 = v124;
        if (*(a1 + 240) <= v124)
        {
          v156 = *(a1 + 240);
        }

        *(*(*(a1 + 120) + 8) + 24) = *(a1 + 232) / v156 < 0.5;
        v157 = *(*(a1 + 120) + 8);
        if (*(a1 + 274) == 1)
        {
          *(v157 + 24) &= 1u;
          if (v99)
          {
            goto LABEL_53;
          }
        }

        else
        {
          *(v157 + 24) = 0;
          if (v99)
          {
            goto LABEL_53;
          }
        }
      }

      v160 = objc_opt_class();
      v165 = objc_msgSend_singleScriptCodeForString_(v160, v161, *(a1 + 32), v162, v163, v164);
      v166 = objc_opt_class();
      v171 = objc_msgSend_singleScriptCodeForString_(v166, v167, v13, v168, v169, v170);
      if ((v165 & 0xFFFFFFFD) == 0x14 && v165 != v171 && (v171 & 0xFFFFFFFD) == 0x14)
      {
        goto LABEL_53;
      }

      v172 = *(a1 + 72);
      if (v123 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v173 = v172;
      }

      else
      {
        v173 = objc_msgSend_substringWithRange_(v172, v118, v123, v124, v121, v122);
      }

      v371 = v173;
      if (*(*(*(a1 + 120) + 8) + 24) == 1)
      {
        if (*(*(*(a1 + 112) + 8) + 24))
        {
          v127 = v13;
          v322 = 0;
          v323 = 1;
          goto LABEL_181;
        }

        v324 = objc_msgSend_uppercaseStringWithLocale_(v13, v174, *(a1 + 88), v175, v176, v177);
      }

      else
      {
        if (*(a1 + 272) != 1 || (MetaFlags & 0x200021) != 0)
        {
          v127 = v13;
          if (*(*(*(a1 + 112) + 8) + 24) == 1)
          {
            v323 = 0;
            v322 = *(a1 + 272);
            goto LABEL_181;
          }

LABEL_180:
          v323 = 0;
          v322 = 0;
LABEL_181:
          buf[0] = 0;
          objc_msgSend_computeEditPenalizationFromString_toReferenceString_withSuffix_withCaseSensitivity_withFirstLetterCaseSensitivity_withDiacriticSensitivity_withDiacriticsCharSet_withConsumableStrokesCharSet_outputSuffix_lexiconExtraCharacters_firstLetterCaseFlipped_(CHLanguageUtilities, v321, v371, v127, &stru_1EF1C0318, 1, 1, 1, qword_1EA84CCD0, *(a1 + 96), 0, 0, buf);
          v326 = v325;
          v104 = v104 + v325 / objc_msgSend_length(v371, v327, v328, v329, v330, v331);
          if (v123 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v337 = objc_msgSend_length(v371, v332, v333, v334, v335, v336);
            v343 = objc_msgSend_length(v13, v338, v339, v340, v341, v342);
            v348 = objc_msgSend_rangeOfCharacterFromSet_(*(a1 + 72), v344, qword_1EA84CCC8, v345, v346, v347);
            v349 = v337 - v343;
            if (v337 - v343 < 0)
            {
              v349 = v343 - v337;
            }

            if (v348 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v104 = v104 + v349 * 0.2;
            }

            else
            {
              v104 = v104 + v349 * 0.2 + 0.6;
            }

            goto LABEL_199;
          }

          v354 = v323;
          if (v124 == objc_msgSend_length(*(a1 + 72), v332, v333, v334, v335, v336) && v123 == 0)
          {
            v356 = v377;
          }

          else
          {
            v356 = 0;
          }

          v377 = v356;
          v357 = objc_msgSend_lowercaseStringWithLocale_(*(a1 + 72), v350, *(a1 + 88), v351, v352, v353);
          v360 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v357, v358, v123, v124, v127, v359);

          if (v322)
          {
            v365 = sub_1837A47B8(v360);
          }

          else
          {
            if (!v354)
            {
LABEL_198:

              v127 = v360;
LABEL_199:
              v125 = v125 * v326;

              goto LABEL_86;
            }

            v365 = objc_msgSend_uppercaseStringWithLocale_(v360, v361, *(a1 + 88), v362, v363, v364);
          }

          v366 = v365;

          v360 = v366;
          goto LABEL_198;
        }

        if (*(*(*(a1 + 112) + 8) + 24))
        {
          v127 = v13;
          v323 = 0;
          v322 = 1;
          goto LABEL_181;
        }

        v324 = sub_1837A47B8(v13);
      }

      v127 = v324;
      goto LABEL_180;
    }
  }

LABEL_164:

  if (v390)
  {
    CFRelease(v390);
  }
}

void sub_18369502C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4, a5, a6);
  v7 = qword_1EA84DAB0;
  qword_1EA84DAB0 = v6;

  v8 = qword_1EA84DAB0;
  v160 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v9, &stru_1EF1C0318, v10, v11, v12);
  objc_msgSend_setValue_forKey_(v8, v13, v160, @"ms", v14, v15);

  v16 = qword_1EA84DAB0;
  v161 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v17, &stru_1EF1C0318, v18, v19, v20);
  objc_msgSend_setValue_forKey_(v16, v21, v161, @"id", v22, v23);

  v24 = qword_1EA84DAB0;
  v162 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v25, &stru_1EF1C0318, v26, v27, v28);
  objc_msgSend_setValue_forKey_(v24, v29, v162, @"en", v30, v31);

  v32 = qword_1EA84DAB0;
  v163 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v33, @"åäö", v34, v35, v36);
  objc_msgSend_setValue_forKey_(v32, v37, v163, @"sv", v38, v39);

  v40 = qword_1EA84DAB0;
  v164 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v41, @"åäö", v42, v43, v44);
  objc_msgSend_setValue_forKey_(v40, v45, v164, @"fi", v46, v47);

  v48 = qword_1EA84DAB0;
  v165 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v49, @"æøå", v50, v51, v52);
  objc_msgSend_setValue_forKey_(v48, v53, v165, @"da", v54, v55);

  v56 = qword_1EA84DAB0;
  v166 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v57, @"æøå", v58, v59, v60);
  objc_msgSend_setValue_forKey_(v56, v61, v166, @"nb", v62, v63);

  v64 = qword_1EA84DAB0;
  v167 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v65, @"ßäéöü", v66, v67, v68);
  objc_msgSend_setValue_forKey_(v64, v69, v167, @"de", v70, v71);

  v72 = qword_1EA84DAB0;
  v168 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v73, @"âăîșț", v74, v75, v76);
  objc_msgSend_setValue_forKey_(v72, v77, v168, @"ro", v78, v79);

  v80 = qword_1EA84DAB0;
  v169 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v81, @"ğışçöü", v82, v83, v84);
  objc_msgSend_setValue_forKey_(v80, v85, v169, @"tr", v86, v87);

  v88 = qword_1EA84DAB0;
  v170 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v89, @"àèéìòóù", v90, v91, v92);
  objc_msgSend_setValue_forKey_(v88, v93, v170, @"it", v94, v95);

  v96 = qword_1EA84DAB0;
  v171 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v97, @"áéíóúñü", v98, v99, v100);
  objc_msgSend_setValue_forKey_(v96, v101, v171, @"es", v102, v103);

  v104 = qword_1EA84DAB0;
  v172 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v105, @"ąćóęłńśźż", v106, v107, v108);
  objc_msgSend_setValue_forKey_(v104, v109, v172, @"pl", v110, v111);

  v112 = qword_1EA84DAB0;
  v173 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v113, @"æøåéèêóòôù", v114, v115, v116);
  objc_msgSend_setValue_forKey_(v112, v117, v173, @"nn", v118, v119);

  v120 = qword_1EA84DAB0;
  v174 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v121, @"éèêîôûâàçëïüœæ", v122, v123, v124);
  objc_msgSend_setValue_forKey_(v120, v125, v174, @"fr", v126, v127);

  v128 = qword_1EA84DAB0;
  v175 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v129, @"àáâãçéêìíîòóôõú", v130, v131, v132);
  objc_msgSend_setValue_forKey_(v128, v133, v175, @"pt", v134, v135);

  v136 = qword_1EA84DAB0;
  v176 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v137, @"áàäéèêëíîïóôöúûüç", v138, v139, v140);
  objc_msgSend_setValue_forKey_(v136, v141, v176, @"nl", v142, v143);

  v144 = qword_1EA84DAB0;
  v177 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v145, @"áčďéěíňóřšťúůýž", v146, v147, v148);
  objc_msgSend_setValue_forKey_(v144, v149, v177, @"cs", v150, v151);

  v152 = qword_1EA84DAB0;
  v178 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v153, @"àáâãèéêìíñòóôõùúýăćđēĝġĩńňũơưǵḡạảấầẩẫậắằẳặẹẻẽếềểễệỉịọỏốồổỗộớờởỡợụủứừửữựỳỷỹ", v154, v155, v156);
  objc_msgSend_setValue_forKey_(v152, v157, v178, @"vi", v158, v159);
}

uint64_t sub_18369562C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v11 = objc_msgSend_languageCode(a2, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_languageCode(v5, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84DAB0, v18, v11, v19, v20, v21);

  if (v22)
  {
    v28 = MEMORY[0x1E696AD98];
    v29 = objc_msgSend_lowercaseString(*(a1 + 32), v23, v24, v25, v26, v27);
    v34 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84DAB0, v30, v11, v31, v32, v33);
    v38 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v29, v35, v34, -1, v36, v37);
    v43 = objc_msgSend_numberWithInteger_(v28, v39, v38, v40, v41, v42);
  }

  else
  {
    v43 = &unk_1EF1EC9B8;
  }

  v44 = &unk_1EF1EC9B8;
  v45 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84DAB0, v23, v17, v25, v26, v27);

  if (v45)
  {
    v51 = MEMORY[0x1E696AD98];
    v52 = objc_msgSend_lowercaseString(*(a1 + 32), v46, v47, v48, v49, v50);
    v57 = objc_msgSend_objectForKeyedSubscript_(qword_1EA84DAB0, v53, v17, v54, v55, v56);
    v61 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v52, v58, v57, -1, v59, v60);
    v44 = objc_msgSend_numberWithInteger_(v51, v62, v61, v63, v64, v65);
  }

  v66 = objc_msgSend_compare_(v44, v46, v43, v48, v49, v50);

  return v66;
}

const void **sub_183695860(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_183695894(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1836958C8(uint64_t a1, void *a2, float a3, float a4, float a5, float a6)
{
  v225 = *MEMORY[0x1E69E9840];
  v11 = a2;
  *a1 = &unk_1EF1BB578;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = a5;
  *(a1 + 44) = a6;
  v206 = 0;
  v207 = 0;
  v208 = 0;
  v17.n128_f32[0] = sub_183696B2C(v11, &v206, 20.0);
  v19 = v206;
  v18 = v207;
  v20 = 0xCCCCCCCCCCCCCCCDLL * ((v207 - v206) >> 3);
  if (v20 < 7)
  {
    objc_msgSend_bounds(v11, v12, v13, v14, v15, v16, v17.n128_f64[0]);
    operator new();
  }

  v21 = 0;
  v17.n128_f64[0] = v17.n128_f32[0] * 1.5;
  v22 = v20 - 4;
  v23 = (v206 + 128);
  v24 = -1;
  do
  {
    if (v21 == v20 - 3)
    {
      break;
    }

    v25 = (v206 + 40 * v21);
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[5] - *v25;
    v29 = v25[6] - v27;
    v30 = (v29 * v29) + (v28 * v28);
    v31 = v29 / v30;
    if (v30 > 0.0)
    {
      v32 = v28 / v30;
    }

    else
    {
      v31 = v25[6] - v27;
      v32 = v25[5] - *v25;
    }

    if (v20 - 1 > v21 + 3)
    {
      v33 = sqrtf(v30);
      v34 = v32;
      v35 = v31;
      v36 = v23;
      v37 = v22;
      while (1)
      {
        v38 = ((*v36 - v27) * v35 + (*(v36 - 1) - v26) * v34) * v33;
        v39 = v38 <= 0.0 || v17.n128_f64[0] <= v38;
        if (!v39)
        {
          break;
        }

        v36 += 5;
        if (!--v37)
        {
          goto LABEL_4;
        }
      }

      v24 = v21;
    }

LABEL_4:
    ++v21;
    --v22;
    v23 += 5;
  }

  while ((v24 & 0x80000000) != 0);
  v40 = v20 - 4;
  v41 = v20;
  v42 = v20 - 3;
  while (1)
  {
LABEL_20:
    if (v41 < 4)
    {
      goto LABEL_33;
    }

    v43 = v41 - 1;
    v44 = (v206 + 40 * (v41 - 1));
    v45 = *v44;
    v46 = v44[1];
    v47 = (v206 + 40 * v41);
    v48 = *(v47 - 10) - *v44;
    v49 = *(v47 - 9) - v46;
    v50 = (v49 * v49) + (v48 * v48);
    if (v50 > 0.0)
    {
      v48 = v48 / v50;
      v49 = v49 / v50;
    }

    v51 = (v206 + 40 * v40 + 8);
    v52 = sqrtf(v50);
    v53 = v48;
    v54 = v49;
    v55 = v42;
    while (1)
    {
      v56 = ((*v51 - v46) * v54 + (*(v51 - 1) - v45) * v53) * v52;
      if (v56 > 0.0 && v17.n128_f64[0] > v56)
      {
        break;
      }

      --v55;
      v51 -= 5;
      if (v55 <= 0)
      {
        --v40;
        --v42;
        v41 = v43;
        goto LABEL_20;
      }
    }

    --v40;
    --v42;
    v41 = v43;
    if ((v43 & 0x80000000) == 0)
    {
      if (v206 + 40 * v43 != v207)
      {
        v18 = v206 + 40 * v43;
        v207 = v18;
      }

LABEL_33:
      if ((v24 & 0x80000000) != 0 || (0xCCCCCCCCCCCCCCCDLL * ((v18 - v206) >> 3) > v24 ? (v58 = v24 == 0) : (v58 = 1), v58))
      {
        v204 = 0;
        v205 = 0;
        __p = 0;
        v59 = v18 - v206;
        if (v18 == v206)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v114 = v206 + 40 * v24;
        v115 = v206;
        v116 = v18 - v114;
        if (v18 != v114)
        {
          memmove(v206, v114, v116 - 3);
          v115 = v206;
        }

        v207 = &v19[v116];
        v204 = 0;
        v205 = 0;
        __p = 0;
        v59 = &v19[v116] - v115;
        if (v207 == v115)
        {
LABEL_42:
          sub_183696ECC(&__p, &v214, v17);
          v66 = v214.f64[1];
          v65 = v214.f64[0];
          *v215 = 0;
          v214 = 0uLL;
          if (__p)
          {
            v204 = __p;
            operator delete(__p);
          }

          v67 = *&v66 - *&v65;
          if (0xCCCCCCCCCCCCCCCDLL * ((*&v66 - *&v65) >> 3) < 3)
          {
            objc_msgSend_bounds(v11, v60, v61, v62, v63, v64);
            operator new();
          }

          for (; v67 != 120; v67 = v112 + v113 - *&v65)
          {
            v84 = *(*&v66 - 40);
            v83 = *(*&v66 - 32);
            v85 = *(*&v65 + 40) - v84;
            v86 = *(*&v65 + 48) - v83;
            v87 = (v86 * v86) + (v85 * v85);
            if (v87 > 0.0)
            {
              v85 = v85 / v87;
              v86 = v86 / v87;
            }

            v88 = 0xCCCCCCCCCCCCCCCDLL * (v67 >> 3);
            v89 = sqrtf(v87);
            v90 = *(*&v65 + 8);
            v91 = ((**&v65 - v84) * v86 - (v90 - v83) * v85) * v89;
            v92 = fabsf(v91);
            if (v88 - 1 < 2)
            {
              v93 = 0;
            }

            else
            {
              v93 = 0;
              v94 = v88 - 2;
              v95 = 1;
              v96 = (*&v65 + 48);
              do
              {
                v100 = *(v96 - 6);
                v99 = *(v96 - 5);
                v101 = v96[4] - v100;
                v102 = v96[5] - v99;
                v103 = (v102 * v102) + (v101 * v101);
                if (v103 > 0.0)
                {
                  v101 = v101 / v103;
                  v102 = v102 / v103;
                }

                v97 = ((*(v96 - 1) - v100) * v102 - (*v96 - v99) * v101) * sqrtf(v103);
                v98 = fabsf(v97);
                if (v98 < v92)
                {
                  v92 = v98;
                  v93 = v95;
                }

                ++v95;
                v96 += 5;
                --v94;
              }

              while (v94);
            }

            v104 = *&v65 + v67;
            v106 = *(v104 - 80);
            v105 = *(v104 - 72);
            v107 = **&v65 - v106;
            v108 = v90 - v105;
            v109 = (v108 * v108) + (v107 * v107);
            if (v109 > 0.0)
            {
              v107 = v107 / v109;
              v108 = v108 / v109;
            }

            v110 = ((v84 - v106) * v108 - (v83 - v105) * v107) * sqrtf(v109);
            v111 = v88 - 1;
            if (fabsf(v110) >= v92)
            {
              v111 = v93;
            }

            v112 = *&v65 + 40 * v111;
            v113 = *&v66 - (v112 + 40);
            if (*&v66 != v112 + 40)
            {
              memmove((*&v65 + 40 * v111), (v112 + 40), v113 - 3);
            }

            *&v66 -= 40;
          }

          v214 = 0uLL;
          v216 = 0;
          *&v215[4] = 0;
          v217 = 0uLL;
          v220 = 0;
          v219 = 0;
          v221 = 0uLL;
          v224 = 0;
          v223 = 0;
          v68 = *(*&v65 + 40);
          v214 = **&v65;
          v69 = vcvt_f32_f64(vsubq_f64(v68, v214));
          *&v215[4] = v69;
          v70 = vmul_f32(v69, v69);
          *v70.i32 = *&v70.i32[1] + (v69.f32[0] * v69.f32[0]);
          *&v216 = *v70.i32;
          HIDWORD(v216) = sqrtf(*v70.i32);
          if (*v70.i32 > 0.0)
          {
            *&v215[4] = vdiv_f32(v69, vdup_lane_s32(v70, 0));
          }

          v215[0] = 1;
          v71 = *(*&v65 + 80);
          v217 = v68;
          v72 = vcvt_f32_f64(vsubq_f64(v71, v68));
          v219 = v72;
          v73 = vmul_f32(v72, v72);
          *v73.i32 = *&v73.i32[1] + (v72.f32[0] * v72.f32[0]);
          *&v220 = *v73.i32;
          HIDWORD(v220) = sqrtf(*v73.i32);
          if (*v73.i32 > 0.0)
          {
            v219 = vdiv_f32(v72, vdup_lane_s32(v73, 0));
          }

          v218 = 1;
          v74 = **&v65;
          v221 = v71;
          v75 = vcvt_f32_f64(vsubq_f64(v74, v71));
          v223 = v75;
          v76 = vmul_f32(v75, v75);
          *v76.i32 = *&v76.i32[1] + (v75.f32[0] * v75.f32[0]);
          *&v224 = *v76.i32;
          HIDWORD(v224) = sqrtf(*v76.i32);
          if (*v76.i32 > 0.0)
          {
            v223 = vdiv_f32(v75, vdup_lane_s32(v76, 0));
          }

          v222 = 1;
          v201 = 0u;
          memset(v202, 0, 24);
          *v199 = 0u;
          *v200 = 0u;
          v77 = (v207 - v206) >> 3;
          v78 = 0xCCCCCCCCCCCCCCCDLL * v77 - 1;
          if (0xCCCCCCCCCCCCCCCDLL * v77 == 1)
          {
            v79 = 0;
            v81 = 1;
            v82 = v78;
            if (!v78)
            {
              goto LABEL_79;
            }

LABEL_55:
            sub_183699848(&v200[1], v82);
          }

          else
          {
            sub_183699848(v199, 0xCCCCCCCCCCCCCCCDLL * v77 - 1);
            v79 = v200[1];
            v80 = (v201 - v200[1]) >> 2;
            v81 = v78 >= v80;
            v82 = v78 - v80;
            if (v78 > v80)
            {
              goto LABEL_55;
            }

LABEL_79:
            if (!v81)
            {
              *&v201 = &v79[4 * v78];
            }
          }

          v117 = (v202[1] - v202[0]) >> 2;
          if (v78 <= v117)
          {
            if (v78 < v117)
            {
              v202[1] = v202[0] + 4 * v78;
            }
          }

          else
          {
            sub_183699848(v202, v78 - v117);
          }

          v198 = 0;
          v196 = 0u;
          *v197 = 0u;
          *v194 = 0u;
          *v195 = 0u;
          v118 = (v207 - v206) >> 3;
          v119 = -1 - 0x3333333333333333 * v118;
          if (v119)
          {
            sub_18369999C(v194, -1 - 0x3333333333333333 * v118);
            v120 = v195[1];
            v121 = (v196 - v195[1]) >> 2;
            v122 = v119 >= v121;
            if (v119 > v121)
            {
              sub_18369999C(&v195[1], v119 - v121);
              goto LABEL_91;
            }
          }

          else
          {
            v120 = 0;
            v122 = 1;
          }

          if (!v122)
          {
            *&v196 = &v120[4 * v119];
          }

LABEL_91:
          v123 = (v197[1] - v197[0]) >> 2;
          if (v119 <= v123)
          {
            if (v119 < v123)
            {
              v197[1] = v197[0] + 4 * v119;
            }
          }

          else
          {
            sub_18369999C(v197, v119 - v123);
          }

          v124 = v206;
          v125 = *(v206 + 5);
          v126 = *(v206 + 6);
          v127 = v125 - *v206;
          v128 = v126 - *(v206 + 1);
          v129 = (v128 * v128) + (v127 * v127);
          v130 = sqrtf(v129);
          if (v129 > 0.0)
          {
            v127 = v127 / v129;
            v128 = v128 / v129;
          }

          v131 = v199[0];
          *v199[0] = fabsf(v130 * (*(&v216 + 1) * ((v128 * *&v215[8]) + (*&v215[4] * v127))));
          v132 = v200[1];
          *v200[1] = fabsf(v130 * (*(&v220 + 1) * ((v128 * v219.f32[1]) + (v219.f32[0] * v127))));
          v133 = fabsf(v130 * (*(&v224 + 1) * ((v128 * v223.f32[1]) + (v223.f32[0] * v127))));
          v134 = v202[0];
          *v202[0] = v133;
          v135 = v207;
          v136 = 0xCCCCCCCCCCCCCCCDLL * ((v207 - v124) >> 3);
          if (v136 - 3 > 0xFFFFFFFFFFFFFFFDLL)
          {
LABEL_125:
            v175 = 4 * v136 - 8;
            v176 = *(v131 + v175);
            v177 = *(v132 + v175);
            v178 = v177 > v176;
            if (v177 > v176)
            {
              v176 = *(v132 + v175);
            }

            v179 = *(v134 + v175);
            v213 = 0;
            v211 = 0u;
            v212 = 0u;
            *v209 = 0u;
            v210 = 0u;
            if (v179 <= v176)
            {
              v180 = v178;
            }

            else
            {
              v180 = 2;
            }

            sub_1836973A4(&v209[3 * v180], v135 - 40);
            v181 = 0xCCCCCCCCCCCCCCCDLL * ((v207 - v206) >> 3);
            if (v181 >= 3)
            {
              v182 = (v181 - 2);
              v183 = 40 * v182;
              do
              {
                sub_1836973A4(&v209[3 * v180], v206 + v183);
                v184 = *(v194[3 * v180] + v182);
                if (v180 != v184)
                {
                  sub_1836973A4(&v209[3 * v184], v206 + v183);
                  v180 = v184;
                }

                v183 -= 40;
                v39 = v182-- <= 1;
              }

              while (!v39);
            }

            v191 = 0;
            v192 = 0;
            v193 = 0;
            if (v209[1] == v209[0])
            {
              sub_1839B6524(&v214, &v191, 0);
              if (v191)
              {
                v192 = v191;
                operator delete(v191);
              }

              v191 = 0;
              v192 = 0;
              v193 = 0;
              if (v211 == *(&v210 + 1))
              {
                sub_1839B6524(&v217, &v191, 0);
                if (v191)
                {
                  v192 = v191;
                  operator delete(v191);
                }

                v191 = 0;
                v192 = 0;
                v193 = 0;
                if (*(&v212 + 1) == v212)
                {
                  sub_1839B6524(&v221, &v191, 0);
                  if (v191)
                  {
                    v192 = v191;
                    operator delete(v191);
                  }

                  v185 = vcvtq_f64_f32(*&v215[4]);
                  v186 = vcvtq_f64_f32(v219);
                  v187 = vmuld_lane_f64(v185.f64[0], v186, 1) - v185.f64[1] * v186.f64[0];
                  if (v187 != 0.0)
                  {
                    v188 = vcvtq_f64_f32(v223);
                    v189 = vmuld_lane_f64(v186.f64[0], v188, 1) - v186.f64[1] * v188.f64[0];
                    if (v189 != 0.0)
                    {
                      v190 = v185.f64[1] * v188.f64[0] - v185.f64[0] * v188.f64[1];
                      if (v190 != 0.0)
                      {
                        operator new();
                      }
                    }
                  }

                  operator new();
                }

                if (((*(&v212 + 1) - v212) & 0x8000000000000000) == 0)
                {
                  operator new();
                }
              }

              else if (((v211 - *(&v210 + 1)) & 0x8000000000000000) == 0)
              {
                operator new();
              }
            }

            else if (((v209[1] - v209[0]) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_18369761C();
          }

          v137 = v214;
          v138 = v217;
          v139 = v136 - 2;
          v140 = (v124 + 88);
          v141 = v221;
          v142 = v197[0] + 4;
          v143 = v195[1] + 4;
          v144 = (v194[0] + 4);
          v145 = v134;
          v146 = v131;
          v147 = v132;
          while (2)
          {
            v150 = v125;
            v151 = v126;
            v125 = *(v140 - 1);
            v126 = *v140;
            v152 = v125 - v150;
            v153 = *v140 - v151;
            v154 = (v153 * v153) + (v152 * v152);
            if (v154 > 0.0)
            {
              v152 = v152 / v154;
              v153 = v153 / v154;
            }

            v155 = *v146;
            v156 = *v146 + 0.5;
            v157 = *v147;
            if (*v147 <= v156)
            {
              v158 = *v146 + 0.5;
            }

            else
            {
              v158 = *v147 + 0.0;
            }

            v159 = v133 + 0.0;
            if (v133 <= v158)
            {
              v159 = v158;
            }

            *v144 = 0;
            if (v157 > v156 || v133 > v158)
            {
              if (v133 <= v158)
              {
                v161 = 1;
              }

              else
              {
                v161 = 2;
              }

              *v144 = v161;
            }

            v162 = sqrtf(v154);
            v163 = (v159 + fabsf(v162 * (*(&v216 + 1) * ((v153 * *&v215[8]) + (*&v215[4] * v152)))));
            v165 = *(v140 - 6);
            v164 = *(v140 - 5);
            v166 = ((v165 - v137.f64[0]) * *&v215[8] - (v164 - v137.f64[1]) * *&v215[4]) * *(&v216 + 1);
            v167 = v163 + fabsf(v166) * -0.005;
            v146[1] = v167;
            *v143 = 0;
            v168 = *v147;
            v169 = *v147 + 0.5;
            if (v169 <= v155)
            {
              v169 = v155 + 0.0;
              v170 = *v145;
              if (*v145 <= v169)
              {
                goto LABEL_121;
              }
            }

            else
            {
              *v143 = 1;
              v170 = *v145;
              if (*v145 <= v169)
              {
LABEL_121:
                v171 = ((v165 - v138.f64[0]) * v219.f32[1] - (v164 - v138.f64[1]) * v219.f32[0]) * *(&v220 + 1);
                v172 = (v169 + fabsf(v162 * (*(&v220 + 1) * ((v153 * v219.f32[1]) + (v219.f32[0] * v152))))) + fabsf(v171) * -0.005;
                v147[1] = v172;
                *v142 = 0;
                v173 = *v146;
                if (v168 > *v146)
                {
                  *v142 = 1;
                  v173 = v168;
                }

                v174 = *v145 + 0.5;
                if (v174 > v173)
                {
                  *v142 = 2;
                }

                else
                {
                  v174 = v173 + 0.0;
                }

                v148 = (v174 + fabsf(v162 * (*(&v224 + 1) * ((v153 * v223.f32[1]) + (v223.f32[0] * v152)))));
                v149 = ((v165 - v141.f64[0]) * v223.f32[1] - (v164 - v141.f64[1]) * v223.f32[0]) * *(&v224 + 1);
                v133 = v148 + fabsf(v149) * -0.005;
                v145[1] = v133;
                ++v145;
                v140 += 5;
                ++v142;
                ++v147;
                ++v143;
                ++v146;
                ++v144;
                if (!--v139)
                {
                  goto LABEL_125;
                }

                continue;
              }
            }

            break;
          }

          v169 = v170 + 0.0;
          *v143 = 2;
          goto LABEL_121;
        }
      }

      if (0xCCCCCCCCCCCCCCCDLL * (v59 >> 3) < 0x666666666666667)
      {
        operator new();
      }

      sub_18369761C();
    }
  }
}

void sub_183696A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a63)
  {
    a64 = a63;
    operator delete(a63);
    v66 = a60;
    if (a60)
    {
LABEL_12:
      a61 = v66;
      operator delete(v66);
      v67 = __p;
      if (!__p)
      {
LABEL_5:
        sub_1836997F4(&a31);
        sub_1836997F4(&a41);
        if (v65)
        {
          operator delete(v65);
        }

        if (a54)
        {
          a55 = a54;
          operator delete(a54);
        }

        _Unwind_Resume(a1);
      }

LABEL_4:
      a58 = v67;
      operator delete(v67);
      goto LABEL_5;
    }
  }

  else
  {
    v66 = a60;
    if (a60)
    {
      goto LABEL_12;
    }
  }

  v67 = __p;
  if (!__p)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

float sub_183696B2C(void *a1, void *a2, float a3)
{
  v5 = a1;
  objc_msgSend_bounds(v5, v6, v7, v8, v9, v10);
  v18 = v17;
  v20 = v19;
  v21 = v15;
  v22 = v16;
  if (v15 >= v16)
  {
    v23 = v15;
  }

  else
  {
    v23 = v16;
  }

  v24 = objc_msgSend_pointCountForStrokeIndex_(v5, v11, 0, v12, v13, v14);
  if (0xCCCCCCCCCCCCCCCDLL * ((a2[2] - *a2) >> 3) < v24)
  {
    if (v24 < 0x666666666666667)
    {
      operator new();
    }

    sub_18369761C();
  }

  objc_msgSend_pointForStrokeIndex_pointIndex_(v5, v25, 0, 0, v26, v27);
  *&v84 = v28;
  *(&v84 + 1) = v29;
  v85 = 0;
  v86 = 1;
  v87 = 0;
  v88 = 0;
  sub_1836974D0(a2, &v84);
  objc_msgSend_pointForStrokeIndex_pointIndex_(v5, v30, 0, 0, v31, v32);
  v33 = v23 / a3;
  *&v34 = v18 + 0.1;
  *&v35 = v20 + 0.1;
  v36 = v18 + v21 + -0.1;
  v37 = v20 + v22 + -0.1;
  v39 = v38;
  v41 = v40;
  v42 = 0.0;
  v43 = 1;
  v44 = 1;
  v45 = 1;
  for (i = objc_msgSend_pointCountForStrokeIndex_(v5, v46, 0, v47, v48, v49, __PAIR64__(v34, v35)); i > v43; i = objc_msgSend_pointCountForStrokeIndex_(v5, v55, 0, v56, v57, v58, v83))
  {
    objc_msgSend_pointForStrokeIndex_pointIndex_(v5, v51, 0, v43, v53, v54);
    v60 = v59;
    v62 = v61;
    v42 = v42 + sqrtf(((v62 - v41) * (v62 - v41)) + ((v60 - v39) * (v60 - v39)));
    if (v42 > v33)
    {
      *&v84 = v60;
      *(&v84 + 1) = v62;
      v85 = __PAIR64__(v43, v44);
      v86 = v45;
      v87 = 0;
      v88 = 0;
      sub_1836974D0(a2, &v84);
      v45 = 0;
      ++v44;
LABEL_8:
      v42 = 0.0;
      goto LABEL_9;
    }

    if (v60 < *(&v83 + 1) || v60 > v36 || v62 < *&v83 || v62 > v37)
    {
      v66 = a2[1];
      v67 = v66 - 40;
      LODWORD(v66) = *(v66 - 16);
      a2[1] = v67;
      *&v84 = v60;
      *(&v84 + 1) = v62;
      LODWORD(v85) = v44 - 1;
      HIDWORD(v85) = v43;
      v86 = v66;
      v87 = 0;
      v88 = 0;
      sub_1836974D0(a2, &v84);
      v45 = 0;
      goto LABEL_8;
    }

LABEL_9:
    ++v45;
    ++v43;
    v39 = v60;
    v41 = v62;
  }

  v68 = objc_msgSend_pointCountForStrokeIndex_(v5, v51, 0, v52, v53, v54);
  objc_msgSend_pointForStrokeIndex_pointIndex_(v5, v69, 0, v68 - 1, v70, v71);
  v72 = a2[1];
  *(v72 - 40) = v73;
  *(v72 - 32) = v74;
  v79 = objc_msgSend_pointCountForStrokeIndex_(v5, v75, 0, v76, v77, v78);
  v80 = a2[1];
  v81 = *(v80 - 16) + v45;
  *(v80 - 20) = v79 - 1;
  *(v80 - 16) = v81;

  return v33;
}

__int128 *sub_183696ECC@<X0>(uint64_t a1@<X0>, void *a2@<X8>, __n128 a3@<Q0>)
{
  result = *a1;
  v6 = *(a1 + 8);
  a2[1] = 0;
  a2[2] = 0;
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - result) >> 3);
  *a2 = 0;
  if (v8 >= 4)
  {
    v11 = sub_183697634;
    v9 = 126 - 2 * __clz(v8);
    if (v6 == result)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    sub_183697654(result, v6, &v11, v10, 1, a3);
    sub_1836974D0(a2, *a1);
    sub_1836974D0(a2, (*a1 + 40));
    operator new();
  }

  return result;
}

void sub_183697354(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    v4 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v4;
  operator delete(v4);
  _Unwind_Resume(exception_object);
}

void sub_1836973A4(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_18369761C();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_183688F00();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_1836974D0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x666666666666666)
  {
    sub_18369761C();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    sub_183688F00();
  }

  v13 = 8 * ((v3 - *a1) >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = 40 * v9 + 40;
  v15 = 40 * v9 - (v3 - v8);
  memcpy((v13 - (v3 - v8)), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

BOOL sub_183697634(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

double sub_183697654(uint64_t a1, char *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5, __n128 a6)
{
  while (2)
  {
    v10 = (a2 - 40);
    v263 = (a2 - 80);
    v11 = a2 - 120;
    v12 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v12;
        v13 = &a2[-v12];
        v14 = 0xCCCCCCCCCCCCCCCDLL * (&a2[-v12] >> 3);
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v195 = (*a3)((v12 + 40), v12);
            v196 = (*a3)((a2 - 40), (v12 + 40));
            if (v195)
            {
              if (v196)
              {
                goto LABEL_109;
              }

              v241 = *v12;
              v242 = *(v12 + 16);
              *&v268[16] = *(v12 + 32);
              v267 = v241;
              *v268 = v242;
              v243 = *(v12 + 56);
              *v12 = *(v12 + 40);
              *(v12 + 16) = v243;
              *(v12 + 29) = *(v12 + 69);
              v244 = *v268;
              *(v12 + 40) = v267;
              *(v12 + 56) = v244;
              *(v12 + 69) = *&v268[13];
              if (!(*a3)((a2 - 40), (v12 + 40)))
              {
                return a6.n128_f64[0];
              }

              a6 = *(v12 + 40);
              *&v268[16] = *(v12 + 72);
              v201 = *(v12 + 56);
              v267 = a6;
              *v268 = v201;
              v246 = *v10;
              v245 = *(a2 - 24);
              *(v12 + 69) = *(a2 - 11);
              *(v12 + 40) = v246;
              *(v12 + 56) = v245;
LABEL_110:
              *(a2 - 11) = *&v268[13];
              *v10 = a6;
              *(a2 - 24) = v201;
              return a6.n128_f64[0];
            }

            if (!v196)
            {
              return a6.n128_f64[0];
            }

            v222 = *(v12 + 40);
            *&v268[16] = *(v12 + 72);
            v223 = *(v12 + 56);
            v267 = v222;
            *v268 = v223;
            v225 = *v10;
            v224 = *(a2 - 24);
            *(v12 + 69) = *(a2 - 11);
            *(v12 + 40) = v225;
            *(v12 + 56) = v224;
            *(a2 - 11) = *&v268[13];
            *v10 = v222;
            *(a2 - 24) = v223;
LABEL_153:
            if ((*a3)((v12 + 40), v12))
            {
              a6 = *v12;
              v259 = *(v12 + 16);
              *&v268[16] = *(v12 + 32);
              v267 = a6;
              *v268 = v259;
              v260 = *(v12 + 56);
              *v12 = *(v12 + 40);
              *(v12 + 16) = v260;
              *(v12 + 29) = *(v12 + 69);
              a6.n128_u64[0] = v267.n128_u64[0];
              v261 = *v268;
              *(v12 + 40) = v267;
              *(v12 + 56) = v261;
              *(v12 + 69) = *&v268[13];
            }

            return a6.n128_f64[0];
          }

          if (v14 != 4)
          {
            if (v14 == 5)
            {
              a6.n128_u64[0] = sub_1836985DC(v12, (v12 + 40), (v12 + 80), (v12 + 120), (a2 - 40), a3).n128_u64[0];
              return a6.n128_f64[0];
            }

            goto LABEL_9;
          }

          v202 = (*a3)((v12 + 40), v12);
          v203 = (*a3)((v12 + 80), (v12 + 40));
          if ((v202 & 1) == 0)
          {
            if (v203)
            {
              v226 = *(v12 + 40);
              v227 = *(v12 + 96);
              *(v12 + 40) = *(v12 + 80);
              *v268 = *(v12 + 56);
              v228 = *v268;
              *&v268[16] = *(v12 + 72);
              *(v12 + 56) = v227;
              *(v12 + 69) = *(v12 + 109);
              *(v12 + 80) = v226;
              *(v12 + 96) = v228;
              *(v12 + 109) = *&v268[13];
              if ((*a3)((v12 + 40), v12))
              {
                v229 = *v12;
                v230 = *(v12 + 16);
                *&v268[16] = *(v12 + 32);
                v267 = v229;
                *v268 = v230;
                v231 = *(v12 + 56);
                *v12 = *(v12 + 40);
                *(v12 + 16) = v231;
                *(v12 + 29) = *(v12 + 69);
                v232 = *v268;
                *(v12 + 40) = v267;
                *(v12 + 56) = v232;
                *(v12 + 69) = *&v268[13];
              }
            }

            goto LABEL_150;
          }

          if (v203)
          {
            v204 = *v12;
            v205 = *(v12 + 16);
            *&v268[16] = *(v12 + 32);
            v267 = v204;
            *v268 = v205;
            v206 = *(v12 + 96);
            *v12 = *(v12 + 80);
            *(v12 + 16) = v206;
            *(v12 + 29) = *(v12 + 109);
            v207 = v267;
            v208 = *v268;
          }

          else
          {
            v247 = *v12;
            v248 = *(v12 + 16);
            *&v268[16] = *(v12 + 32);
            v267 = v247;
            *v268 = v248;
            v249 = *(v12 + 56);
            *v12 = *(v12 + 40);
            *(v12 + 16) = v249;
            *(v12 + 29) = *(v12 + 69);
            v250 = *v268;
            *(v12 + 40) = v267;
            *(v12 + 56) = v250;
            *(v12 + 69) = *&v268[13];
            if (!(*a3)((v12 + 80), (v12 + 40)))
            {
              goto LABEL_150;
            }

            v207 = *(v12 + 40);
            v251 = *(v12 + 96);
            *(v12 + 40) = *(v12 + 80);
            v208 = *(v12 + 56);
            *v268 = v208;
            *&v268[16] = *(v12 + 72);
            *(v12 + 56) = v251;
            *(v12 + 69) = *(v12 + 109);
          }

          *(v12 + 80) = v207;
          *(v12 + 96) = v208;
          *(v12 + 109) = *&v268[13];
LABEL_150:
          if (!(*a3)((a2 - 40), (v12 + 80)))
          {
            return a6.n128_f64[0];
          }

          *&v268[16] = *(v12 + 112);
          v253 = *(v12 + 96);
          v267 = *(v12 + 80);
          v252 = v267;
          *v268 = v253;
          v255 = *v10;
          v254 = *(a2 - 24);
          *(v12 + 109) = *(a2 - 11);
          *(v12 + 80) = v255;
          *(v12 + 96) = v254;
          *(a2 - 11) = *&v268[13];
          *v10 = v252;
          *(a2 - 24) = v253;
          if (!(*a3)((v12 + 80), (v12 + 40)))
          {
            return a6.n128_f64[0];
          }

          v256 = *(v12 + 40);
          v257 = *(v12 + 96);
          *(v12 + 40) = *(v12 + 80);
          *v268 = *(v12 + 56);
          v258 = *v268;
          *&v268[16] = *(v12 + 72);
          *(v12 + 56) = v257;
          *(v12 + 69) = *(v12 + 109);
          *(v12 + 80) = v256;
          *(v12 + 96) = v258;
          *(v12 + 109) = *&v268[13];
          goto LABEL_153;
        }

        if (v14 < 2)
        {
          return a6.n128_f64[0];
        }

        if (v14 == 2)
        {
          if (!(*a3)((a2 - 40), v12))
          {
            return a6.n128_f64[0];
          }

LABEL_109:
          v197 = *v12;
          v198 = *(v12 + 16);
          *&v268[16] = *(v12 + 32);
          v267 = v197;
          *v268 = v198;
          v199 = *v10;
          v200 = *(a2 - 24);
          *(v12 + 29) = *(a2 - 11);
          *v12 = v199;
          *(v12 + 16) = v200;
          a6 = v267;
          v201 = *v268;
          goto LABEL_110;
        }

LABEL_9:
        if (v13 <= 959)
        {
          v209 = (v12 + 40);
          v211 = v12 == a2 || v209 == a2;
          if (a5)
          {
            if (!v211)
            {
              v212 = 0;
              v213 = v12;
              do
              {
                v216 = v213;
                v213 = v209;
                if ((*a3)(v209, v216))
                {
                  v217 = *v213;
                  v218 = *(v213 + 16);
                  *&v268[16] = *(v213 + 32);
                  v267 = v217;
                  *v268 = v218;
                  v219 = v212;
                  do
                  {
                    v220 = v12 + v219;
                    v221 = *(v12 + v219 + 16);
                    *(v220 + 40) = *(v12 + v219);
                    *(v220 + 56) = v221;
                    *(v220 + 69) = *(v12 + v219 + 29);
                    if (!v219)
                    {
                      v214 = v12;
                      goto LABEL_124;
                    }

                    v219 -= 40;
                  }

                  while (((*a3)(&v267, (v219 + v12)) & 1) != 0);
                  v214 = v12 + v219 + 40;
LABEL_124:
                  a6 = v267;
                  v215 = *v268;
                  *(v214 + 29) = *&v268[13];
                  *v214 = a6;
                  *(v214 + 16) = v215;
                }

                v209 = (v213 + 40);
                v212 += 40;
              }

              while ((v213 + 40) != a2);
            }
          }

          else if (!v211)
          {
            v233 = v12 - 40;
            do
            {
              v234 = a1;
              a1 = v209;
              if ((*a3)(v209, v234))
              {
                v235 = *a1;
                v236 = *(a1 + 16);
                *&v268[16] = *(a1 + 32);
                v267 = v235;
                *v268 = v236;
                v237 = v233;
                do
                {
                  v238 = *(v237 + 56);
                  *(v237 + 80) = *(v237 + 40);
                  *(v237 + 96) = v238;
                  *(v237 + 109) = *(v237 + 69);
                  v239 = (*a3)(&v267, v237);
                  v237 -= 40;
                }

                while ((v239 & 1) != 0);
                a6 = v267;
                v240 = *v268;
                *(v237 + 109) = *&v268[13];
                *(v237 + 80) = a6;
                *(v237 + 96) = v240;
              }

              v209 = (a1 + 40);
              v233 += 40;
            }

            while ((a1 + 40) != a2);
          }

          return a6.n128_f64[0];
        }

        if (!a4)
        {
          if (v12 != a2)
          {
            sub_183698F88(v12, a2, a2, a3);
          }

          return a6.n128_f64[0];
        }

        v15 = v14 >> 1;
        v16 = v12 + 40 * (v14 >> 1);
        v17 = *a3;
        if (v13 >= 0x1401)
        {
          break;
        }

        v24 = v17(a1, v16);
        v25 = (*a3)((a2 - 40), a1);
        if (v24)
        {
          if (v25)
          {
            v26 = *v16;
            v27 = *(v16 + 16);
            *&v268[16] = *(v16 + 32);
            v267 = v26;
            *v268 = v27;
            v28 = *v10;
            v29 = *(a2 - 24);
            *(v16 + 29) = *(a2 - 11);
            *v16 = v28;
            *(v16 + 16) = v29;
          }

          else
          {
            v84 = *v16;
            v85 = *(v16 + 16);
            *&v268[16] = *(v16 + 32);
            v267 = v84;
            *v268 = v85;
            v86 = *a1;
            v87 = *(a1 + 16);
            *(v16 + 29) = *(a1 + 29);
            *v16 = v86;
            *(v16 + 16) = v87;
            v88 = v267;
            v89 = *v268;
            *(a1 + 29) = *&v268[13];
            *a1 = v88;
            *(a1 + 16) = v89;
            if (!(*a3)((a2 - 40), a1))
            {
              goto LABEL_37;
            }

            v90 = *a1;
            v91 = *(a1 + 16);
            *&v268[16] = *(a1 + 32);
            v267 = v90;
            *v268 = v91;
            v92 = *v10;
            v93 = *(a2 - 24);
            *(a1 + 29) = *(a2 - 11);
            *a1 = v92;
            *(a1 + 16) = v93;
          }

          v94 = v267;
          v95 = *v268;
          *(a2 - 11) = *&v268[13];
          *v10 = v94;
          *(a2 - 24) = v95;
LABEL_37:
          --a4;
          if (a5)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        if (!v25)
        {
          goto LABEL_37;
        }

        v42 = *a1;
        v43 = *(a1 + 16);
        *&v268[16] = *(a1 + 32);
        v267 = v42;
        *v268 = v43;
        v44 = *v10;
        v45 = *(a2 - 24);
        *(a1 + 29) = *(a2 - 11);
        *a1 = v44;
        *(a1 + 16) = v45;
        v46 = v267;
        v47 = *v268;
        *(a2 - 11) = *&v268[13];
        *v10 = v46;
        *(a2 - 24) = v47;
        if (!(*a3)(a1, v16))
        {
          goto LABEL_37;
        }

        v48 = *v16;
        v49 = *(v16 + 16);
        *&v268[16] = *(v16 + 32);
        v267 = v48;
        *v268 = v49;
        v50 = *a1;
        v51 = *(a1 + 16);
        *(v16 + 29) = *(a1 + 29);
        *v16 = v50;
        *(v16 + 16) = v51;
        v52 = v267;
        v53 = *v268;
        *(a1 + 29) = *&v268[13];
        *a1 = v52;
        *(a1 + 16) = v53;
        --a4;
        if (a5)
        {
          goto LABEL_62;
        }

LABEL_61:
        if ((*a3)((a1 - 40), a1))
        {
          goto LABEL_62;
        }

        v179 = *a1;
        v180 = *(a1 + 16);
        *&v266[16] = *(a1 + 32);
        v265 = v179;
        *v266 = v180;
        if ((*a3)(&v265, (a2 - 40)))
        {
          v12 = a1;
          do
          {
            v12 += 40;
          }

          while (((*a3)(&v265, v12) & 1) == 0);
        }

        else
        {
          v181 = (a1 + 40);
          do
          {
            v12 = v181;
            if (v181 >= a2)
            {
              break;
            }

            v182 = (*a3)(&v265, v181);
            v181 = (v12 + 40);
          }

          while (!v182);
        }

        v183 = a2;
        if (v12 < a2)
        {
          v183 = a2;
          do
          {
            v183 -= 40;
          }

          while (((*a3)(&v265, v183) & 1) != 0);
        }

        while (v12 < v183)
        {
          v184 = *v12;
          v185 = *(v12 + 16);
          *&v268[16] = *(v12 + 32);
          v267 = v184;
          *v268 = v185;
          v186 = *v183;
          v187 = *(v183 + 1);
          *(v12 + 29) = *(v183 + 29);
          *v12 = v186;
          *(v12 + 16) = v187;
          v188 = v267;
          v189 = *v268;
          *(v183 + 29) = *&v268[13];
          *v183 = v188;
          *(v183 + 1) = v189;
          do
          {
            v12 += 40;
          }

          while (!(*a3)(&v265, v12));
          do
          {
            v183 -= 40;
          }

          while (((*a3)(&v265, v183) & 1) != 0);
        }

        v190 = (v12 - 40);
        if (v12 - 40 != a1)
        {
          v191 = *v190;
          v192 = *(v12 - 24);
          *(a1 + 29) = *(v12 - 11);
          *a1 = v191;
          *(a1 + 16) = v192;
        }

        a5 = 0;
        a6 = v265;
        v193 = *v266;
        *(v12 - 11) = *&v266[13];
        *v190 = a6;
        *(v12 - 24) = v193;
      }

      v18 = v17(v16, a1);
      v19 = (*a3)((a2 - 40), v16);
      if (v18)
      {
        if (v19)
        {
          v20 = *a1;
          v21 = *(a1 + 16);
          *&v268[16] = *(a1 + 32);
          v267 = v20;
          *v268 = v21;
          v22 = *v10;
          v23 = *(a2 - 24);
          *(a1 + 29) = *(a2 - 11);
          *a1 = v22;
          *(a1 + 16) = v23;
        }

        else
        {
          v54 = *a1;
          v55 = *(a1 + 16);
          *&v268[16] = *(a1 + 32);
          v267 = v54;
          *v268 = v55;
          v56 = *v16;
          v57 = *(v16 + 16);
          *(a1 + 29) = *(v16 + 29);
          *a1 = v56;
          *(a1 + 16) = v57;
          v58 = v267;
          v59 = *v268;
          *(v16 + 29) = *&v268[13];
          *v16 = v58;
          *(v16 + 16) = v59;
          if (!(*a3)((a2 - 40), v16))
          {
            goto LABEL_28;
          }

          v60 = *v16;
          v61 = *(v16 + 16);
          *&v268[16] = *(v16 + 32);
          v267 = v60;
          *v268 = v61;
          v62 = *v10;
          v63 = *(a2 - 24);
          *(v16 + 29) = *(a2 - 11);
          *v16 = v62;
          *(v16 + 16) = v63;
        }

        v64 = v267;
        v65 = *v268;
        *(a2 - 11) = *&v268[13];
        *v10 = v64;
        *(a2 - 24) = v65;
      }

      else if (v19)
      {
        v30 = *v16;
        v31 = *(v16 + 16);
        *&v268[16] = *(v16 + 32);
        v267 = v30;
        *v268 = v31;
        v32 = *v10;
        v33 = *(a2 - 24);
        *(v16 + 29) = *(a2 - 11);
        *v16 = v32;
        *(v16 + 16) = v33;
        v34 = v267;
        v35 = *v268;
        *(a2 - 11) = *&v268[13];
        *v10 = v34;
        *(a2 - 24) = v35;
        if ((*a3)(v16, a1))
        {
          v36 = *a1;
          v37 = *(a1 + 16);
          *&v268[16] = *(a1 + 32);
          v267 = v36;
          *v268 = v37;
          v38 = *v16;
          v39 = *(v16 + 16);
          *(a1 + 29) = *(v16 + 29);
          *a1 = v38;
          *(a1 + 16) = v39;
          v40 = v267;
          v41 = *v268;
          *(v16 + 29) = *&v268[13];
          *v16 = v40;
          *(v16 + 16) = v41;
        }
      }

LABEL_28:
      v66 = a1 + 40 * v15 - 40;
      v67 = (*a3)(v66, (a1 + 40));
      v68 = (*a3)(v263, v66);
      if (v67)
      {
        if (v68)
        {
          v69 = *(a1 + 40);
          *&v268[16] = *(a1 + 72);
          v70 = *(a1 + 56);
          v267 = v69;
          *v268 = v70;
          v71 = a2 - 80;
          v73 = *v263;
          v72 = *(a2 - 4);
          *(a1 + 69) = *(a2 - 51);
          *(a1 + 40) = v73;
          *(a1 + 56) = v72;
        }

        else
        {
          v96 = *(a1 + 40);
          *&v268[16] = *(a1 + 72);
          v97 = *(a1 + 56);
          v267 = v96;
          *v268 = v97;
          v99 = *v66;
          v98 = *(a1 + 40 * v15 - 24);
          *(a1 + 69) = *(a1 + 40 * v15 - 11);
          *(a1 + 40) = v99;
          *(a1 + 56) = v98;
          *(a1 + 40 * v15 - 11) = *&v268[13];
          *v66 = v96;
          *(a1 + 40 * v15 - 24) = v97;
          if (!(*a3)(v263, (a1 + 40 * v15 - 40)))
          {
            goto LABEL_42;
          }

          v100 = *v66;
          v101 = *(a1 + 40 * v15 - 24);
          *&v268[16] = *(a1 + 40 * v15 - 8);
          v267 = v100;
          *v268 = v101;
          v71 = a2 - 80;
          v102 = *v263;
          v103 = *(a2 - 4);
          *(a1 + 40 * v15 - 11) = *(a2 - 51);
          *v66 = v102;
          *(a1 + 40 * v15 - 24) = v103;
          v69 = v267;
          v70 = *v268;
        }

        *(v71 + 29) = *&v268[13];
        *v71 = v69;
        *(v71 + 1) = v70;
      }

      else if (v68)
      {
        v74 = *v66;
        v75 = *(a1 + 40 * v15 - 24);
        *&v268[16] = *(a1 + 40 * v15 - 8);
        v267 = v74;
        *v268 = v75;
        v76 = *v263;
        v77 = *(a2 - 4);
        *(a1 + 40 * v15 - 11) = *(a2 - 51);
        *v66 = v76;
        *(a1 + 40 * v15 - 24) = v77;
        v78 = v267;
        v79 = *v268;
        *(a2 - 51) = *&v268[13];
        *v263 = v78;
        *(a2 - 4) = v79;
        if ((*a3)((a1 + 40 * v15 - 40), (a1 + 40)))
        {
          v80 = *(a1 + 40);
          *&v268[16] = *(a1 + 72);
          v81 = *(a1 + 56);
          v267 = v80;
          *v268 = v81;
          v83 = *v66;
          v82 = *(a1 + 40 * v15 - 24);
          *(a1 + 69) = *(a1 + 40 * v15 - 11);
          *(a1 + 40) = v83;
          *(a1 + 56) = v82;
          *(a1 + 40 * v15 - 11) = *&v268[13];
          *v66 = v80;
          *(a1 + 40 * v15 - 24) = v81;
        }
      }

LABEL_42:
      v104 = a1 + 40 * v15;
      v105 = (*a3)((v104 + 40), (a1 + 80));
      v106 = (*a3)((a2 - 120), (v104 + 40));
      if (v105)
      {
        if (v106)
        {
          *&v268[16] = *(a1 + 112);
          v107 = *(a1 + 80);
          v108 = *(a1 + 96);
          v267 = v107;
          *v268 = v108;
          v110 = *v11;
          v109 = *(a2 - 104);
          *(a1 + 109) = *(a2 - 91);
          *(a1 + 80) = v110;
          *(a1 + 96) = v109;
        }

        else
        {
          *&v268[16] = *(a1 + 112);
          v122 = *(a1 + 96);
          v267 = *(a1 + 80);
          v121 = v267;
          *v268 = v122;
          v123 = *(v104 + 56);
          v124 = *(v104 + 40);
          *(a1 + 109) = *(v104 + 69);
          *(a1 + 80) = v124;
          *(a1 + 96) = v123;
          *(v104 + 69) = *&v268[13];
          *(v104 + 56) = v122;
          *(v104 + 40) = v121;
          if (!(*a3)((a2 - 120), (v104 + 40)))
          {
            goto LABEL_51;
          }

          v125 = *(v104 + 40);
          v126 = *(v104 + 56);
          *&v268[16] = *(v104 + 72);
          v267 = v125;
          *v268 = v126;
          v127 = *v11;
          v128 = *(a2 - 104);
          *(v104 + 69) = *(a2 - 91);
          *(v104 + 56) = v128;
          *(v104 + 40) = v127;
          v107 = v267;
          v108 = *v268;
        }

        *(a2 - 91) = *&v268[13];
        *v11 = v107;
        *(a2 - 104) = v108;
      }

      else if (v106)
      {
        v111 = *(v104 + 40);
        v112 = *(v104 + 56);
        *&v268[16] = *(v104 + 72);
        v267 = v111;
        *v268 = v112;
        v113 = *v11;
        v114 = *(a2 - 104);
        *(v104 + 69) = *(a2 - 91);
        *(v104 + 56) = v114;
        *(v104 + 40) = v113;
        v115 = v267;
        v116 = *v268;
        *(a2 - 91) = *&v268[13];
        *v11 = v115;
        *(a2 - 104) = v116;
        if ((*a3)((v104 + 40), (a1 + 80)))
        {
          *&v268[16] = *(a1 + 112);
          v118 = *(a1 + 96);
          v267 = *(a1 + 80);
          v117 = v267;
          *v268 = v118;
          v119 = *(v104 + 56);
          v120 = *(v104 + 40);
          *(a1 + 109) = *(v104 + 69);
          *(a1 + 80) = v120;
          *(a1 + 96) = v119;
          *(v104 + 69) = *&v268[13];
          *(v104 + 56) = v118;
          *(v104 + 40) = v117;
        }
      }

LABEL_51:
      v129 = (*a3)(v16, v66);
      v130 = (*a3)((v104 + 40), v16);
      if (v129)
      {
        if (v130)
        {
          v131 = *v66;
          v132 = *(v66 + 16);
          *&v268[16] = *(v66 + 32);
          v267 = v131;
          *v268 = v132;
          v133 = *(v104 + 56);
          *v66 = *(v104 + 40);
          *(v66 + 16) = v133;
          *(v66 + 29) = *(v104 + 69);
        }

        else
        {
          v144 = *v66;
          v145 = *(v66 + 16);
          *&v268[16] = *(v66 + 32);
          v267 = v144;
          *v268 = v145;
          v146 = *(v16 + 16);
          *v66 = *v16;
          *(v66 + 16) = v146;
          *(v66 + 29) = *(v16 + 29);
          v147 = v267;
          v148 = *v268;
          *(v16 + 29) = *&v268[13];
          *v16 = v147;
          *(v16 + 16) = v148;
          if (!(*a3)((v104 + 40), v16))
          {
            goto LABEL_60;
          }

          v149 = *v16;
          v150 = *(v16 + 16);
          *&v268[16] = *(v16 + 32);
          v267 = v149;
          *v268 = v150;
          v151 = *(v104 + 56);
          *v16 = *(v104 + 40);
          *(v16 + 16) = v151;
          *(v16 + 29) = *(v104 + 69);
        }

        v152 = v267;
        v153 = *v268;
        *(v104 + 69) = *&v268[13];
        *(v104 + 56) = v153;
        *(v104 + 40) = v152;
      }

      else if (v130)
      {
        v134 = *v16;
        v135 = *(v16 + 16);
        *&v268[16] = *(v16 + 32);
        v267 = v134;
        *v268 = v135;
        v136 = *(v104 + 56);
        *v16 = *(v104 + 40);
        *(v16 + 16) = v136;
        *(v16 + 29) = *(v104 + 69);
        v137 = v267;
        v138 = *v268;
        *(v104 + 69) = *&v268[13];
        *(v104 + 56) = v138;
        *(v104 + 40) = v137;
        if ((*a3)(v16, v66))
        {
          v139 = *v66;
          v140 = *(v66 + 16);
          *&v268[16] = *(v66 + 32);
          v267 = v139;
          *v268 = v140;
          v141 = *(v16 + 16);
          *v66 = *v16;
          *(v66 + 16) = v141;
          *(v66 + 29) = *(v16 + 29);
          v142 = v267;
          v143 = *v268;
          *(v16 + 29) = *&v268[13];
          *v16 = v142;
          *(v16 + 16) = v143;
        }
      }

LABEL_60:
      v154 = *a1;
      v155 = *(a1 + 16);
      *&v268[16] = *(a1 + 32);
      v267 = v154;
      *v268 = v155;
      v156 = *v16;
      v157 = *(v16 + 16);
      *(a1 + 29) = *(v16 + 29);
      *a1 = v156;
      *(a1 + 16) = v157;
      v158 = v267;
      v159 = *v268;
      *(v16 + 29) = *&v268[13];
      *v16 = v158;
      *(v16 + 16) = v159;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v160 = 0;
      v161 = *a1;
      v162 = *(a1 + 16);
      *&v266[16] = *(a1 + 32);
      v265 = v161;
      *v266 = v162;
      do
      {
        v160 += 40;
      }

      while (((*a3)((v160 + a1), &v265) & 1) != 0);
      v163 = a1 + v160;
      v164 = a2;
      if (v160 == 40)
      {
        v164 = a2;
        do
        {
          if (v163 >= v164)
          {
            break;
          }

          v164 = (v164 - 40);
        }

        while (((*a3)(v164, &v265) & 1) == 0);
      }

      else
      {
        do
        {
          v164 = (v164 - 40);
        }

        while (!(*a3)(v164, &v265));
      }

      if (v163 >= v164)
      {
        v173 = v163 - 40;
        if (v163 - 40 == a1)
        {
          goto LABEL_80;
        }

LABEL_79:
        v174 = *v173;
        v175 = *(v173 + 16);
        *(a1 + 29) = *(v173 + 29);
        *a1 = v174;
        *(a1 + 16) = v175;
        goto LABEL_80;
      }

      v165 = a1 + v160;
      v166 = v164;
      do
      {
        v167 = *v165;
        v168 = *(v165 + 16);
        *&v268[16] = *(v165 + 32);
        v267 = v167;
        *v268 = v168;
        v169 = *v166;
        v170 = v166[1];
        *(v165 + 29) = *(v166 + 29);
        *v165 = v169;
        *(v165 + 16) = v170;
        v171 = v267;
        v172 = *v268;
        *(v166 + 29) = *&v268[13];
        *v166 = v171;
        v166[1] = v172;
        do
        {
          v165 += 40;
        }

        while (((*a3)(v165, &v265) & 1) != 0);
        do
        {
          v166 = (v166 - 40);
        }

        while (!(*a3)(v166, &v265));
      }

      while (v165 < v166);
      v173 = v165 - 40;
      if (v173 != a1)
      {
        goto LABEL_79;
      }

LABEL_80:
      v176 = v265;
      v177 = *v266;
      *(v173 + 29) = *&v266[13];
      *v173 = v176;
      *(v173 + 16) = v177;
      if (v163 < v164)
      {
        goto LABEL_83;
      }

      v178 = sub_183698920(a1, v173, a3);
      v12 = v173 + 40;
      if (sub_183698920(v173 + 40, a2, a3))
      {
        break;
      }

      if (!v178)
      {
LABEL_83:
        sub_183697654(a1, v173, a3, a4, a5 & 1);
        a5 = 0;
        v12 = v173 + 40;
      }
    }

    a2 = v173;
    if (!v178)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

__n128 sub_1836985DC(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t (**a6)(__int128 *, __int128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v15 = *a1;
      v14 = a1[1];
      *v61 = HIDWORD(v14);
      *&v61[4] = *(a1 + 4);
      v16 = *(a3 + 29);
      v17 = a3[1];
      *a1 = *a3;
      a1[1] = v17;
      *(a1 + 29) = v16;
LABEL_9:
      *a3 = v15;
      a3[1] = v14;
      *(a3 + 29) = *&v61[1];
      goto LABEL_10;
    }

    v24 = *a1;
    *v53 = a1[1];
    *&v53[16] = *(a1 + 4);
    v25 = *(a2 + 29);
    v26 = a2[1];
    *a1 = *a2;
    a1[1] = v26;
    *(a1 + 29) = v25;
    *a2 = v24;
    a2[1] = *v53;
    *(a2 + 29) = *&v53[13];
    if ((*a6)(a3, a2))
    {
      v15 = *a2;
      v14 = a2[1];
      *v61 = HIDWORD(v14);
      *&v61[4] = *(a2 + 4);
      v27 = *(a3 + 29);
      v28 = a3[1];
      *a2 = *a3;
      a2[1] = v28;
      *(a2 + 29) = v27;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v18 = *a2;
    *v51 = a2[1];
    *&v51[16] = *(a2 + 4);
    v19 = *(a3 + 29);
    v20 = a3[1];
    *a2 = *a3;
    a2[1] = v20;
    *(a2 + 29) = v19;
    *a3 = v18;
    a3[1] = *v51;
    *(a3 + 29) = *&v51[13];
    if ((*a6)(a2, a1))
    {
      v21 = *a1;
      *v52 = a1[1];
      *&v52[16] = *(a1 + 4);
      v22 = *(a2 + 29);
      v23 = a2[1];
      *a1 = *a2;
      a1[1] = v23;
      *(a1 + 29) = v22;
      *a2 = v21;
      a2[1] = *v52;
      *(a2 + 29) = *&v52[13];
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v29 = *a3;
    *v54 = a3[1];
    *&v54[16] = *(a3 + 4);
    v30 = *(a4 + 29);
    v31 = a4[1];
    *a3 = *a4;
    a3[1] = v31;
    *(a3 + 29) = v30;
    *a4 = v29;
    a4[1] = *v54;
    *(a4 + 29) = *&v54[13];
    if ((*a6)(a3, a2))
    {
      v32 = *a2;
      *v55 = a2[1];
      *&v55[16] = *(a2 + 4);
      v33 = *(a3 + 29);
      v34 = a3[1];
      *a2 = *a3;
      a2[1] = v34;
      *(a2 + 29) = v33;
      *a3 = v32;
      a3[1] = *v55;
      *(a3 + 29) = *&v55[13];
      if ((*a6)(a2, a1))
      {
        v35 = *a1;
        *v56 = a1[1];
        *&v56[16] = *(a1 + 4);
        v36 = *(a2 + 29);
        v37 = a2[1];
        *a1 = *a2;
        a1[1] = v37;
        *(a1 + 29) = v36;
        *a2 = v35;
        a2[1] = *v56;
        *(a2 + 29) = *&v56[13];
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v39 = *a4;
    *v57 = a4[1];
    *&v57[16] = *(a4 + 4);
    v40 = *(a5 + 29);
    v41 = a5[1];
    *a4 = *a5;
    a4[1] = v41;
    *(a4 + 29) = v40;
    *a5 = v39;
    a5[1] = *v57;
    *(a5 + 29) = *&v57[13];
    if ((*a6)(a4, a3))
    {
      v42 = *a3;
      *v58 = a3[1];
      *&v58[16] = *(a3 + 4);
      v43 = *(a4 + 29);
      v44 = a4[1];
      *a3 = *a4;
      a3[1] = v44;
      *(a3 + 29) = v43;
      *a4 = v42;
      a4[1] = *v58;
      *(a4 + 29) = *&v58[13];
      if ((*a6)(a3, a2))
      {
        v45 = *a2;
        *v59 = a2[1];
        *&v59[16] = *(a2 + 4);
        v46 = *(a3 + 29);
        v47 = a3[1];
        *a2 = *a3;
        a2[1] = v47;
        *(a2 + 29) = v46;
        *a3 = v45;
        a3[1] = *v59;
        *(a3 + 29) = *&v59[13];
        if ((*a6)(a2, a1))
        {
          v48 = *a1;
          *v60 = a1[1];
          result = *v60;
          *&v60[16] = *(a1 + 4);
          v49 = *(a2 + 29);
          v50 = a2[1];
          *a1 = *a2;
          a1[1] = v50;
          *(a1 + 29) = v49;
          *a2 = v48;
          a2[1] = *v60;
          *(a2 + 29) = *&v60[13];
        }
      }
    }
  }

  return result;
}

BOOL sub_183698920(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v12 = a2 - 40;
      v13 = (*a3)((a1 + 40), a1);
      v14 = (*a3)(v12, (a1 + 40));
      if (v13)
      {
        if (v14)
        {
          v16 = *a1;
          v15 = *(a1 + 16);
          *v89 = v15;
          *&v89[16] = *(a1 + 32);
          v17 = *(v12 + 29);
          v18 = *(v12 + 16);
          *a1 = *v12;
          *(a1 + 16) = v18;
          *(a1 + 29) = v17;
        }

        else
        {
          v51 = *a1;
          *v89 = *(a1 + 16);
          v50 = *v89;
          *&v89[16] = *(a1 + 32);
          v52 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v52;
          *(a1 + 29) = *(a1 + 69);
          *(a1 + 40) = v51;
          *(a1 + 56) = v50;
          *(a1 + 69) = *&v89[13];
          if (!(*a3)(v12, (a1 + 40)))
          {
            return 1;
          }

          v15 = *(a1 + 56);
          *v89 = v15;
          *&v89[16] = *(a1 + 72);
          v16 = *(a1 + 40);
          v53 = *(v12 + 29);
          v54 = *(v12 + 16);
          *(a1 + 40) = *v12;
          *(a1 + 56) = v54;
          *(a1 + 69) = v53;
        }

        *v12 = v16;
        *(v12 + 16) = v15;
        *(v12 + 29) = *&v89[13];
        return 1;
      }

      if (!v14)
      {
        return 1;
      }

      *v89 = *(a1 + 56);
      v33 = *v89;
      *&v89[16] = *(a1 + 72);
      v34 = *(a1 + 40);
      v35 = *(v12 + 29);
      v36 = *(v12 + 16);
      *(a1 + 40) = *v12;
      *(a1 + 56) = v36;
      *(a1 + 69) = v35;
      *v12 = v34;
      *(v12 + 16) = v33;
      *(v12 + 29) = *&v89[13];
LABEL_48:
      if ((*a3)((a1 + 40), a1))
      {
        v85 = *a1;
        *v89 = *(a1 + 16);
        v84 = *v89;
        *&v89[16] = *(a1 + 32);
        v86 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v86;
        *(a1 + 29) = *(a1 + 69);
        *(a1 + 40) = v85;
        *(a1 + 56) = v84;
        *(a1 + 69) = *&v89[13];
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_1836985DC(a1, (a1 + 40), (a1 + 80), (a1 + 120), (a2 - 40), a3);
      return 1;
    }

    v27 = a2 - 40;
    v28 = (*a3)((a1 + 40), a1);
    v29 = (*a3)((a1 + 80), (a1 + 40));
    if ((v28 & 1) == 0)
    {
      if (v29)
      {
        v44 = *(a1 + 40);
        v45 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *v89 = *(a1 + 56);
        v46 = *v89;
        *&v89[16] = *(a1 + 72);
        *(a1 + 56) = v45;
        *(a1 + 69) = *(a1 + 109);
        *(a1 + 80) = v44;
        *(a1 + 96) = v46;
        *(a1 + 109) = *&v89[13];
        if ((*a3)((a1 + 40), a1))
        {
          v48 = *a1;
          *v89 = *(a1 + 16);
          v47 = *v89;
          *&v89[16] = *(a1 + 32);
          v49 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v49;
          *(a1 + 29) = *(a1 + 69);
          *(a1 + 40) = v48;
          *(a1 + 56) = v47;
          *(a1 + 69) = *&v89[13];
        }
      }

      goto LABEL_45;
    }

    if (v29)
    {
      v31 = *a1;
      *v89 = *(a1 + 16);
      v30 = *v89;
      *&v89[16] = *(a1 + 32);
      v32 = *(a1 + 96);
      *a1 = *(a1 + 80);
      *(a1 + 16) = v32;
      *(a1 + 29) = *(a1 + 109);
      *(a1 + 80) = v31;
      *(a1 + 96) = v30;
    }

    else
    {
      v72 = *a1;
      *v89 = *(a1 + 16);
      v71 = *v89;
      *&v89[16] = *(a1 + 32);
      v73 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v73;
      *(a1 + 29) = *(a1 + 69);
      *(a1 + 40) = v72;
      *(a1 + 56) = v71;
      *(a1 + 69) = *&v89[13];
      if (!(*a3)((a1 + 80), (a1 + 40)))
      {
        goto LABEL_45;
      }

      v74 = *(a1 + 40);
      v75 = *(a1 + 96);
      *(a1 + 40) = *(a1 + 80);
      *v89 = *(a1 + 56);
      v76 = *v89;
      *&v89[16] = *(a1 + 72);
      *(a1 + 56) = v75;
      *(a1 + 69) = *(a1 + 109);
      *(a1 + 80) = v74;
      *(a1 + 96) = v76;
    }

    *(a1 + 109) = *&v89[13];
LABEL_45:
    if (!(*a3)(v27, (a1 + 80)))
    {
      return 1;
    }

    v78 = *(a1 + 80);
    *v89 = *(a1 + 96);
    v77 = *v89;
    *&v89[16] = *(a1 + 112);
    v79 = *(v27 + 29);
    v80 = *(v27 + 16);
    *(a1 + 80) = *v27;
    *(a1 + 96) = v80;
    *(a1 + 109) = v79;
    *v27 = v78;
    *(v27 + 16) = v77;
    *(v27 + 29) = *&v89[13];
    if (!(*a3)((a1 + 80), (a1 + 40)))
    {
      return 1;
    }

    v81 = *(a1 + 40);
    v82 = *(a1 + 96);
    *(a1 + 40) = *(a1 + 80);
    *v89 = *(a1 + 56);
    v83 = *v89;
    *&v89[16] = *(a1 + 72);
    *(a1 + 56) = v82;
    *(a1 + 69) = *(a1 + 109);
    *(a1 + 80) = v81;
    *(a1 + 96) = v83;
    *(a1 + 109) = *&v89[13];
    goto LABEL_48;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 40);
    if ((*a3)((a2 - 40), a1))
    {
      v9 = *a1;
      *v89 = *(a1 + 16);
      v8 = *v89;
      *&v89[16] = *(a1 + 32);
      v10 = *(a2 - 11);
      v11 = *(a2 - 24);
      *a1 = *v7;
      *(a1 + 16) = v11;
      *(a1 + 29) = v10;
      *v7 = v9;
      *(a2 - 24) = v8;
      *(a2 - 11) = *&v89[13];
    }

    return 1;
  }

LABEL_13:
  v20 = (*a3)((a1 + 40), a1);
  v21 = (a1 + 80);
  v19 = (a1 + 80);
  v22 = (*a3)((a1 + 80), (a1 + 40));
  if (v20)
  {
    if (v22)
    {
      v24 = *a1;
      *v89 = *(a1 + 16);
      v23 = *v89;
      *&v89[16] = *(a1 + 32);
      v25 = (a1 + 80);
      v26 = *(a1 + 96);
      *a1 = *v19;
      *(a1 + 16) = v26;
      *(a1 + 29) = *(a1 + 109);
      *v19 = v24;
      *(a1 + 96) = v23;
      *(a1 + 109) = *&v89[13];
    }

    else
    {
      v56 = *a1;
      *v89 = *(a1 + 16);
      v55 = *v89;
      *&v89[16] = *(a1 + 32);
      v57 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v57;
      *(a1 + 29) = *(a1 + 69);
      *(a1 + 40) = v56;
      *(a1 + 56) = v55;
      *(a1 + 69) = *&v89[13];
      v58 = (*a3)((a1 + 80), (a1 + 40));
      v25 = (a1 + 80);
      if (v58)
      {
        v59 = *(a1 + 40);
        v60 = *(a1 + 96);
        *(a1 + 40) = *v21;
        *v89 = *(a1 + 56);
        v61 = *v89;
        *&v89[16] = *(a1 + 72);
        *(a1 + 56) = v60;
        *(a1 + 69) = *(a1 + 109);
        *v21 = v59;
        *(a1 + 96) = v61;
        *(a1 + 109) = *&v89[13];
      }
    }
  }

  else
  {
    v25 = (a1 + 80);
    if (v22)
    {
      v37 = *(a1 + 40);
      v38 = *(a1 + 96);
      *(a1 + 40) = *v21;
      *v89 = *(a1 + 56);
      v39 = *v89;
      *&v89[16] = *(a1 + 72);
      *(a1 + 56) = v38;
      *(a1 + 69) = *(a1 + 109);
      *v21 = v37;
      *(a1 + 96) = v39;
      *(a1 + 109) = *&v89[13];
      v40 = (*a3)((a1 + 40), a1);
      v25 = (a1 + 80);
      if (v40)
      {
        v42 = *a1;
        *v89 = *(a1 + 16);
        v41 = *v89;
        *&v89[16] = *(a1 + 32);
        v43 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v43;
        *(a1 + 29) = *(a1 + 69);
        *(a1 + 40) = v42;
        *(a1 + 56) = v41;
        *(a1 + 69) = *&v89[13];
      }
    }
  }

  v62 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v63 = 0;
  v64 = 0;
  while (1)
  {
    if ((*a3)(v62, v25))
    {
      v67 = *(v62 + 16);
      v88 = *v62;
      *v89 = v67;
      *&v89[16] = *(v62 + 32);
      v68 = v63;
      do
      {
        v69 = a1 + v68;
        v70 = *(a1 + v68 + 96);
        *(v69 + 120) = *(a1 + v68 + 80);
        *(v69 + 136) = v70;
        *(v69 + 149) = *(a1 + v68 + 109);
        if (v68 == -80)
        {
          v65 = a1;
          goto LABEL_35;
        }

        v68 -= 40;
      }

      while (((*a3)(&v88, (v69 + 40)) & 1) != 0);
      v65 = a1 + v68 + 120;
LABEL_35:
      v66 = *v89;
      *v65 = v88;
      *(v65 + 16) = v66;
      *(v65 + 29) = *&v89[13];
      if (++v64 == 8)
      {
        return v62 + 40 == a2;
      }
    }

    v25 = v62;
    v63 += 40;
    v62 += 40;
    if (v62 == a2)
    {
      return 1;
    }
  }
}

char *sub_183698F88(char *a1, char *a2, char *a3, unsigned int (**a4)(char *, char *))
{
  if (a1 == a2)
  {
    return a3;
  }

  v77 = v4;
  v78 = v5;
  v7 = a2;
  v8 = a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  v69 = a2 - a1;
  v70 = a3;
  if (a2 - a1 >= 41 && v69 >= 0x50)
  {
    v54 = (v9 - 2) >> 1;
    v55 = v54;
    do
    {
      if (v54 >= v55)
      {
        v58 = (2 * (v55 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v59 = &v8[40 * v58];
        if (2 * v55 + 2 < v9 && (*a4)(&v8[40 * v58], v59 + 40))
        {
          v59 += 40;
          v58 = 2 * v55 + 2;
        }

        v60 = &v8[40 * v55];
        if (((*a4)(v59, v60) & 1) == 0)
        {
          v61 = *(v60 + 1);
          v75 = *v60;
          *v76 = v61;
          *&v76[16] = *(v60 + 4);
          do
          {
            v62 = v59;
            v63 = *v59;
            v64 = *(v59 + 1);
            *(v60 + 29) = *(v59 + 29);
            *v60 = v63;
            *(v60 + 1) = v64;
            if (v54 < v58)
            {
              break;
            }

            v65 = (2 * v58) | 1;
            v59 = &a1[40 * v65];
            v66 = 2 * v58 + 2;
            if (v66 < v9 && (*a4)(&a1[40 * v65], v59 + 40))
            {
              v59 += 40;
              v65 = v66;
            }

            v60 = v62;
            v58 = v65;
          }

          while (!(*a4)(v59, &v75));
          v56 = v75;
          v57 = *v76;
          *(v62 + 29) = *&v76[13];
          *v62 = v56;
          v62[1] = v57;
          v8 = a1;
        }
      }

      v33 = v55-- <= 0;
    }

    while (!v33);
  }

  i = v7;
  v11 = v70;
  if (v7 != v70)
  {
    if (v69 < 80)
    {
      i = v7;
      do
      {
        if ((*a4)(i, v8))
        {
          v13 = *i;
          *v76 = *(i + 1);
          v12 = *v76;
          *&v76[16] = *(i + 4);
          v14 = *(v8 + 29);
          v15 = *(v8 + 1);
          *i = *v8;
          *(i + 1) = v15;
          *(i + 29) = v14;
          *v8 = v13;
          *(v8 + 1) = v12;
          *(v8 + 29) = *&v76[13];
        }

        i += 40;
      }

      while (i != v70);
      goto LABEL_28;
    }

    v16 = v8 + 40;
    v67 = v8 + 80;
    v68 = v8 + 40;
    for (i = v7; i != v11; i += 40)
    {
      if ((*a4)(i, v8))
      {
        v20 = *i;
        *v76 = *(i + 1);
        v19 = *v76;
        *&v76[16] = *(i + 4);
        v21 = *(v8 + 29);
        v22 = *(v8 + 1);
        *i = *v8;
        *(i + 1) = v22;
        *(i + 29) = v21;
        *v8 = v20;
        *(v8 + 1) = v19;
        *(v8 + 29) = *&v76[13];
        if (v9 < 3)
        {
          v23 = v16;
          v24 = 1;
          if (((*a4)(v16, v8) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v23 = v67;
          if ((*a4)(v16, v67))
          {
            v24 = 2;
          }

          else
          {
            v23 = v16;
            v24 = 1;
          }

          if (((*a4)(v23, v8) & 1) == 0)
          {
LABEL_21:
            v25 = *(v8 + 1);
            v75 = *v8;
            *v76 = v25;
            *&v76[16] = *(v8 + 4);
            v26 = v8;
            do
            {
              v28 = v23;
              v29 = *v23;
              v30 = *(v23 + 1);
              *(v26 + 29) = *(v23 + 29);
              *v26 = v29;
              *(v26 + 1) = v30;
              if (((v9 - 2) >> 1) < v24)
              {
                break;
              }

              v31 = (2 * v24) | 1;
              v23 = &a1[40 * v31];
              if (2 * v24 + 2 < v9 && (*a4)(&a1[40 * v31], v23 + 40))
              {
                v23 += 40;
                v31 = 2 * v24 + 2;
              }

              v27 = (*a4)(v23, &v75);
              v26 = v28;
              v24 = v31;
            }

            while (!v27);
            v17 = v75;
            v18 = *v76;
            *(v28 + 29) = *&v76[13];
            *v28 = v17;
            *(v28 + 1) = v18;
            v11 = v70;
            v8 = a1;
            v16 = v68;
          }
        }
      }
    }
  }

LABEL_28:
  if (v69 >= 41)
  {
    v32 = 0xCCCCCCCCCCCCCCCDLL * (v69 >> 3);
    do
    {
      v71 = v7;
      v34 = 0;
      v73 = *v8;
      *v74 = *(v8 + 1);
      *&v74[16] = *(v8 + 4);
      do
      {
        v37 = &v8[40 * v34];
        v38 = (v37 + 40);
        v39 = (2 * v34) | 1;
        v40 = 2 * v34 + 2;
        if (v40 < v32)
        {
          v41 = (v37 + 80);
          if ((*a4)(v37 + 40, v37 + 80))
          {
            v38 = v41;
            v39 = v40;
          }
        }

        v35 = *v38;
        v36 = v38[1];
        *(v8 + 29) = *(v38 + 29);
        *v8 = v35;
        *(v8 + 1) = v36;
        v8 = v38;
        v34 = v39;
      }

      while (v39 <= ((v32 - 2) >> 1));
      v7 = v71 - 40;
      if (v38 == (v71 - 40))
      {
        *(v38 + 29) = *&v74[13];
        *v38 = v73;
        v38[1] = *v74;
        v8 = a1;
      }

      else
      {
        v42 = *v7;
        v43 = *(v71 - 24);
        *(v38 + 29) = *(v71 - 11);
        *v38 = v42;
        v38[1] = v43;
        *v7 = v73;
        *(v71 - 24) = *v74;
        *(v71 - 11) = *&v74[13];
        v8 = a1;
        v44 = v38 - a1 + 40;
        if (v44 >= 41)
        {
          v45 = (-2 - 0x3333333333333333 * (v44 >> 3)) >> 1;
          v46 = &a1[40 * v45];
          if ((*a4)(v46, v38))
          {
            v47 = *v38;
            v48 = v38[1];
            *&v76[16] = *(v38 + 4);
            v75 = v47;
            *v76 = v48;
            do
            {
              v49 = v46;
              v50 = *v46;
              v51 = *(v46 + 1);
              *(v38 + 29) = *(v46 + 29);
              *v38 = v50;
              v38[1] = v51;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &a1[40 * v45];
              v38 = v49;
            }

            while (((*a4)(v46, &v75) & 1) != 0);
            v52 = *v76;
            *v49 = v75;
            v49[1] = v52;
            *(v49 + 29) = *&v76[13];
          }
        }
      }

      v33 = v32-- <= 2;
    }

    while (!v33);
  }

  return i;
}

char *sub_1836994E0(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3)) < a5)
  {
    v10 = *a1;
    v11 = a5 - 0x3333333333333333 * ((v9 - *a1) >> 3);
    if (v11 > 0x666666666666666)
    {
      sub_18369761C();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x666666666666666)
      {
        operator new();
      }

      sub_183688F00();
    }

    v33 = 8 * ((__dst - v10) >> 3);
    v34 = 40 * a5;
    v35 = v33 + 40 * a5;
    v36 = v33;
    do
    {
      v37 = *v6;
      v38 = *(v6 + 1);
      *(v36 + 32) = *(v6 + 4);
      *v36 = v37;
      *(v36 + 16) = v38;
      v36 += 40;
      v6 += 40;
      v34 -= 40;
    }

    while (v34);
    v39 = *(a1 + 8) - __dst;
    memcpy((v33 + 40 * a5), __dst, v39);
    v40 = v35 + v39;
    *(a1 + 8) = v5;
    v41 = *a1;
    v42 = &v5[-*a1];
    v43 = v33 - v42;
    memcpy((v33 - v42), *a1, v42);
    *a1 = v43;
    *(a1 + 8) = v40;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v33;
  }

  v14 = v9 - __dst;
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - __dst) >> 3)) >= a5)
  {
    v27 = &__dst[40 * a5];
    v28 = v9 - 40 * a5;
    for (i = *(a1 + 8); v28 < v9; i += 40)
    {
      v30 = *v28;
      v31 = *(v28 + 16);
      *(i + 32) = *(v28 + 32);
      *i = v30;
      *(i + 16) = v31;
      v28 += 40;
    }

    *(a1 + 8) = i;
    if (v9 != v27)
    {
      v32 = a5;
      memmove(v27, __dst, v9 - v27 - 3);
      a5 = v32;
    }

    v26 = 40 * a5 - 3;
    goto LABEL_28;
  }

  v15 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v16 = a5;
    v17 = a4;
    memmove(*(a1 + 8), &__src[v14], v15 - 3);
    a4 = v17;
    a5 = v16;
  }

  v18 = (v9 + v15);
  *(a1 + 8) = v9 + v15;
  if (v14 >= 1)
  {
    v19 = &v5[40 * a5];
    v20 = v9 + v15;
    if (&v18[-40 * a5] < v9)
    {
      v21 = &v5[a4];
      v22 = &v5[a4 + -40 * a5];
      do
      {
        v23 = v21 - v6;
        v24 = *(v22 - v6);
        v25 = *(v22 - v6 + 16);
        *(v23 + 32) = *(v22 - v6 + 32);
        *v23 = v24;
        *(v23 + 16) = v25;
        v22 += 40;
        v21 += 40;
      }

      while (v22 - v6 < v9);
      v20 = v21 - v6;
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(v19, v5, v18 - v19 - 3);
    }

    v26 = v14 - 3;
LABEL_28:
    memmove(v5, v6, v26);
  }

  return v5;
}

uint64_t sub_1836997F4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_183699848(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_18369761C();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_183688F00();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_18369999C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_18368964C();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_183688F00();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_183699E30()
{
  v0 = objc_opt_class();
  v6 = objc_msgSend_defaultURLOfModelInThisBundle(v0, v1, v2, v3, v4, v5);
  v18 = objc_msgSend_URLByAppendingPathComponent_(v6, v7, @"model_hash.dat", v8, v9, v10);

  v11 = objc_opt_class();
  v16 = objc_msgSend_loadHashWithURL_(v11, v12, v18, v13, v14, v15);
  v17 = qword_1EA84CCE8;
  qword_1EA84CCE8 = v16;
}

void *sub_18369AE18(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  if (a1)
  {
    v74.receiver = a1;
    v74.super_class = CHStrokeGroupQueryItem;
    a1 = objc_msgSendSuper2(&v74, sel_init);
    if (a1)
    {
      v29 = objc_msgSend_copy(v17, v24, v25, v26, v27, v28);
      v30 = a1[1];
      a1[1] = v29;

      v36 = objc_msgSend_copy(v18, v31, v32, v33, v34, v35);
      v37 = a1[2];
      a1[2] = v36;

      v43 = objc_msgSend_copy(v19, v38, v39, v40, v41, v42);
      v44 = a1[3];
      a1[3] = v43;

      a1[9] = a5;
      a1[4] = a6;
      v50 = objc_msgSend_copy(v20, v45, v46, v47, v48, v49);
      v51 = a1[5];
      a1[5] = v50;

      v57 = objc_msgSend_copy(v21, v52, v53, v54, v55, v56);
      v58 = a1[7];
      a1[7] = v57;

      v64 = objc_msgSend_copy(v22, v59, v60, v61, v62, v63);
      v65 = a1[6];
      a1[6] = v64;

      v71 = objc_msgSend_copy(v23, v66, v67, v68, v69, v70);
      v72 = a1[8];
      a1[8] = v71;
    }
  }

  return a1;
}

void sub_18369B0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18369B108(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18369B120(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_18369B440(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC88;
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CHStrokeGroupQuery_resultsForInitialStrokes", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "END CHStrokeGroupQuery_resultsForInitialStrokes", v8, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_18369B7E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC88;
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CHStrokeGroupQuery_strokesCoveredByStroke", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_DEFAULT, "END CHStrokeGroupQuery_strokesCoveredByStroke", v11, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_18369BA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18369BA78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_copy(*(*(a1 + 32) + 72), a2, a3, a4, a5, a6);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

uint64_t sub_18369D048(uint64_t result, int a2)
{
  if (a2 != 32)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

void **sub_18369D068(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      v6 = a1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

void sub_18369D0EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = (*(*a1 + 24))(a1, a2);
  (*(*a1 + 32))(&v56, a1, a2);
  v7 = (*(*a1 + 40))(a1, a2);
  if (v6)
  {
    v13 = v7;
    if (objc_msgSend_strokeCount(v6, v8, v9, v10, v11, v12))
    {
      sub_1837BD608(v6, MEMORY[0x1E695EFF8], 0, &v51);
      v14 = v56;
      for (i = v57; v14 != i; ++v14)
      {
        (*(**v14 + 24))(*v14, &v51, 0);
      }

      v16 = v51;
      if (v51 == v52)
      {
        v18 = 0;
      }

      else
      {
        v17 = v52 - v51 - 24;
        if (v17 >= 0x60)
        {
          v19 = v17 / 0x18 + 1;
          v20 = v19 & 3;
          if ((v19 & 3) == 0)
          {
            v20 = 4;
          }

          v21 = v19 - v20;
          v22 = (v51 + 24 * v21);
          v23 = 0uLL;
          v24 = 0uLL;
          do
          {
            v25 = v16;
            v16 += 12;
            v60 = vld3q_f64(v25);
            v25 += 6;
            v23 = vsraq_n_s64(v23, vsubq_s64(v60.val[1], v60.val[0]), 5uLL);
            v61 = vld3q_f64(v25);
            v24 = vsraq_n_s64(v24, vsubq_s64(v61.val[1], v61.val[0]), 5uLL);
            v21 -= 4;
          }

          while (v21);
          v18 = vaddvq_s64(vaddq_s64(v24, v23));
          v16 = v22;
        }

        else
        {
          v18 = 0;
        }

        do
        {
          v26 = *v16;
          v27 = *(v16 + 1);
          v16 += 3;
          v18 += (v27 - *&v26) >> 5;
        }

        while (v16 != v52);
      }

      v58 = &unk_1EF1BDA80;
      v59 = v13;
      sub_18379E8FC(&v58, &v51);
      v46 = 0;
      v47 = 0;
      v45 = 0;
      v58 = &v45;
      LOBYTE(v59) = 0;
      if (v52 != v51)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_18369F168();
      }

      sub_18369F384(&__p, &v53);
      v49 = v54;
      v50 = v55;
      (*(*a1 + 48))(a1, a2, &v45, v18);
      if (__p)
      {
        operator delete(__p);
      }

      v28 = v45;
      if (v45)
      {
        v29 = v46;
        v30 = v45;
        if (v46 != v45)
        {
          v31 = v46;
          do
          {
            v33 = *(v31 - 3);
            v31 -= 24;
            v32 = v33;
            if (v33)
            {
              *(v29 - 2) = v32;
              operator delete(v32);
            }

            v29 = v31;
          }

          while (v31 != v28);
          v30 = v45;
        }

        v46 = v28;
        operator delete(v30);
      }

      if (v53)
      {
        operator delete(v53);
      }

      v34 = v51;
      if (v51)
      {
        v35 = v52;
        v36 = v51;
        if (v52 != v51)
        {
          v37 = v52;
          do
          {
            v39 = *(v37 - 3);
            v37 -= 24;
            v38 = v39;
            if (v39)
            {
              *(v35 - 2) = v38;
              operator delete(v38);
            }

            v35 = v37;
          }

          while (v37 != v34);
          v36 = v51;
        }

        v52 = v34;
        operator delete(v36);
      }
    }
  }

  v40 = v56;
  if (v56)
  {
    v41 = v57;
    v42 = v56;
    if (v57 != v56)
    {
      do
      {
        v44 = *--v41;
        v43 = v44;
        *v41 = 0;
        if (v44)
        {
          (*(*v43 + 8))(v43);
        }
      }

      while (v41 != v40);
      v42 = v56;
    }

    v57 = v40;
    operator delete(v42);
  }
}

void sub_18369D514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_18369F2FC((v13 - 104));
  sub_18369D068(va);
  sub_18369D5BC((v13 - 128));

  _Unwind_Resume(a1);
}

void *sub_18369D5BC(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_18369D64C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_18369D894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  sub_18369D8F8(&a10);
  sub_18369D8F8(&a15);
  sub_18369D5BC(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_18369D8F8(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_18369D970(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  v14 = v2;
  v15 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v4 = *(v2 + 72);
  v5 = (v2 + 80);
  if (v4 != (v2 + 80))
  {
    do
    {
      sub_1837DE228(&v16, v17, v4 + 4);
      v9 = v4[1];
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
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  v13 = 21;
  strcpy(__p, "model_features_length");
  v17[3] = __p;
  v6 = sub_18369F498(&v16, __p)[7];
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  sub_18368922C(&v16, v17[0]);
  v7 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return v6;
}

void sub_18369DAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, char *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_18368922C(&a17, a18);
  sub_18369D8F8(&a15);
  _Unwind_Resume(a1);
}

id sub_18369DB28(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v3;
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v6 = *a2;
    v7 = *(a2 + 8);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = v6[3];
    goto LABEL_9;
  }

  v5 = *v3;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = v6[3];
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_9:
  v12 = objc_msgSend_concatenatedSampleWithDrawings_transcriptions_(CHSynthesisStyleInventory, v8, v5, v11, v9, v10);
  v18 = objc_msgSend_drawing(v12, v13, v14, v15, v16, v17);

  return v18;
}

id sub_18369DCA0(uint64_t a1, uint64_t a2)
{
  v125 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v3;
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v6 = *a2;
    v7 = *(a2 + 8);
    if (v7)
    {
LABEL_5:
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = v6[3];
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = *(a2 + 32);
      v10 = *(a2 + 40);
      if (v10)
      {
        goto LABEL_8;
      }

LABEL_12:
      v112 = *(v9 + 184);
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *v3;
    v6 = *a2;
    v7 = *(a2 + 8);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v8 = v6[3];
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_8:
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v112 = *(v9 + 184);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_13:
  v11 = v5;
  v12 = v8;
  v18 = objc_msgSend_count(v11, v13, v14, v15, v16, v17);
  if (v18 != objc_msgSend_count(v12, v19, v20, v21, v22, v23))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v29 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = objc_msgSend_count(v11, v30, v31, v32, v33, v34);
      *&buf[12] = 2048;
      *&buf[14] = objc_msgSend_count(v12, v35, v36, v37, v38, v39);
      _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_ERROR, "Got mismatching number of drawings and content: %lu vs %lu", buf, 0x16u);
    }
  }

  v40 = objc_msgSend_count(v11, v24, v25, v26, v27, v28);
  if (v40 != objc_msgSend_count(v12, v41, v42, v43, v44, v45))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v51 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      v57 = objc_msgSend_count(v11, v52, v53, v54, v55, v56);
      v63 = objc_msgSend_count(v12, v58, v59, v60, v61, v62);
      *buf = 134218240;
      *&buf[4] = v57;
      *&buf[12] = 2048;
      *&buf[14] = v63;
      _os_log_impl(&dword_18366B000, v51, OS_LOG_TYPE_FAULT, "Got mismatching number of drawings and content: %lu vs %lu", buf, 0x16u);
    }
  }

  v64 = 0;
  v115 = 0u;
  memset(v116, 0, sizeof(v116));
  *v113 = 0u;
  *v114 = 0u;
  v65 = MEMORY[0x1E695EFF8];
  while (1)
  {
    v67 = objc_msgSend_count(v11, v46, v47, v48, v49, v50);
    v73 = objc_msgSend_count(v12, v68, v69, v70, v71, v72);
    v78 = v73 >= v67 ? v67 : v73;
    if (v78 <= v64)
    {
      break;
    }

    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0;
    v79 = objc_msgSend_objectAtIndexedSubscript_(v12, v74, v64, v75, v76, v77);
    v84 = objc_msgSend_objectAtIndexedSubscript_(v12, v80, v64, v81, v82, v83);
    v90 = objc_msgSend_length(v84, v85, v86, v87, v88, v89);
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = sub_18369D048;
    v118[3] = &unk_1E6DDC1A8;
    v118[4] = &v119;
    objc_msgSend_enumerateCodepointsInRange_usingBlock_(v79, v91, 0, v90, v118, v92);

    v93 = v120[3] * v112;
    v117[0] = &off_1EF1BDCA0;
    v117[1] = v93;
    v98 = objc_msgSend_objectAtIndexedSubscript_(v11, v94, v64, v95, v96, v97);
    sub_1837BD608(v98, v65, 0, buf);

    sub_18379F484(v117, buf, 0);
    sub_1837C11B0(v113, buf);
    if (__p)
    {
      operator delete(__p);
    }

    v99 = *buf;
    if (*buf)
    {
      v100 = *&buf[8];
      v66 = *buf;
      if (*&buf[8] != *buf)
      {
        v101 = *&buf[8];
        do
        {
          v103 = *(v101 - 24);
          v101 -= 24;
          v102 = v103;
          if (v103)
          {
            *(v100 - 16) = v102;
            operator delete(v102);
          }

          v100 = v101;
        }

        while (v101 != v99);
        v66 = *buf;
      }

      *&buf[8] = v99;
      operator delete(v66);
    }

    _Block_object_dispose(&v119, 8);
    ++v64;
  }

  v104 = sub_1837BDED8(v113);
  if (v114[1])
  {
    operator delete(v114[1]);
  }

  v105 = v113[0];
  if (v113[0])
  {
    v106 = v113[1];
    v107 = v113[0];
    if (v113[1] != v113[0])
    {
      v108 = v113[1];
      do
      {
        v110 = *(v108 - 3);
        v108 -= 24;
        v109 = v110;
        if (v110)
        {
          *(v106 - 2) = v109;
          operator delete(v109);
        }

        v106 = v108;
      }

      while (v108 != v105);
      v107 = v113[0];
    }

    v113[1] = v105;
    operator delete(v107);
  }

  return v104;
}

void sub_18369E2EC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

uint64_t sub_18369E3BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  v14 = v2;
  v15 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v4 = *(v2 + 72);
  v5 = (v2 + 80);
  if (v4 != (v2 + 80))
  {
    do
    {
      sub_1837DE228(&v16, v17, v4 + 4);
      v9 = v4[1];
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
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  v13 = 21;
  strcpy(__p, "model_features_length");
  v17[3] = __p;
  v6 = sub_18369F498(&v16, __p)[7];
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  sub_18368922C(&v16, v17[0]);
  v7 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return v6;
}

void sub_18369E53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, char *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_18368922C(&a17, a18);
  sub_18369D8F8(&a15);
  _Unwind_Resume(a1);
}

void sub_18369E574(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

uint64_t sub_18369E644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  v14 = v2;
  v15 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v4 = *(v2 + 72);
  v5 = (v2 + 80);
  if (v4 != (v2 + 80))
  {
    do
    {
      sub_1837DE228(&v16, v17, v4 + 4);
      v9 = v4[1];
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
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  v13 = 21;
  strcpy(__p, "model_features_length");
  v17[3] = __p;
  v6 = sub_18369F498(&v16, __p)[7];
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  sub_18368922C(&v16, v17[0]);
  v7 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return v6;
}

void sub_18369E7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, char *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_18368922C(&a17, a18);
  sub_18369D8F8(&a15);
  _Unwind_Resume(a1);
}

id sub_18369E7FC(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v3;
    if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_7:
      v13 = v6[3];
      goto LABEL_8;
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v6 = *a2;
    v7 = *(a2 + 8);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *v3;
    v6 = *a2;
    v7 = *(a2 + 8);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = v6[3];
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_8:
  v14 = MEMORY[0x1E695DF70];
  v15 = objc_msgSend_count(v5, v8, v9, v10, v11, v12);
  v20 = objc_msgSend_arrayWithCapacity_(v14, v16, v15, v17, v18, v19);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = v5;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v47, v51, 16, v23);
  if (v28)
  {
    v29 = *v48;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v48 != v29)
        {
          objc_enumerationMutation(v21);
        }

        v31 = objc_msgSend_sortedDrawingUsingStrokeMidPoint_(*(*(&v47 + 1) + 8 * i), v24, 0, v25, v26, v27, v47);
        objc_msgSend_addObject_(v20, v32, v31, v33, v34, v35);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v47, v51, 16, v27);
    }

    while (v28);
  }

  v39 = objc_msgSend_concatenatedSampleWithDrawings_transcriptions_(CHSynthesisStyleInventory, v36, v20, v13, v37, v38);
  v45 = objc_msgSend_drawing(v39, v40, v41, v42, v43, v44);

  return v45;
}

void sub_18369EAD8(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v24 = v7;
  v25 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v8 = *a3;
  v9 = a3[1];
  v26 = &v18;
  v27 = 0;
  if (v9 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18369F168();
  }

  sub_18369F384(&__p, (a3 + 3));
  v10 = *(a3 + 4);
  v22 = *(a3 + 3);
  v23 = v10;
  v11 = sub_1836EDB94(v7, &v18, a4);
  if (__p)
  {
    operator delete(__p);
  }

  v12 = v18;
  if (v18)
  {
    v13 = v19;
    v14 = v18;
    if (v19 != v18)
    {
      v15 = v19;
      do
      {
        v17 = *(v15 - 3);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v13 - 2) = v16;
          operator delete(v16);
        }

        v13 = v15;
      }

      while (v15 != v12);
      v14 = v18;
    }

    v19 = v12;
    operator delete(v14);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6, v11);
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_18369EC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_18369F2FC(va1);
  sub_18369D8F8(va);
  _Unwind_Resume(a1);
}

void sub_18369ECA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_18369D068(&a9);
  sub_18369D8F8(&a19);
  _Unwind_Resume(a1);
}

void sub_18369ECC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_18369F0F0(&a9);
  sub_18369D8F8(&a19);
  _Unwind_Resume(a1);
}

void sub_18369ECE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_18369F2FC(va1);
  sub_18369D8F8(va);
  _Unwind_Resume(a1);
}

void sub_18369ED14(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v24 = v7;
  v25 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v8 = *a3;
  v9 = a3[1];
  v26 = &v18;
  v27 = 0;
  if (v9 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18369F168();
  }

  sub_18369F384(&__p, (a3 + 3));
  v10 = *(a3 + 4);
  v22 = *(a3 + 3);
  v23 = v10;
  v11 = sub_1836EDB94(v7, &v18, a4);
  if (__p)
  {
    operator delete(__p);
  }

  v12 = v18;
  if (v18)
  {
    v13 = v19;
    v14 = v18;
    if (v19 != v18)
    {
      v15 = v19;
      do
      {
        v17 = *(v15 - 3);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v13 - 2) = v16;
          operator delete(v16);
        }

        v13 = v15;
      }

      while (v15 != v12);
      v14 = v18;
    }

    v19 = v12;
    operator delete(v14);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6, v11);
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_18369EEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_18369F2FC(va1);
  sub_18369D8F8(va);
  _Unwind_Resume(a1);
}

void sub_18369EEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_18369D068(&a9);
  sub_18369D8F8(&a19);
  _Unwind_Resume(a1);
}

void sub_18369EF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_18369F0F0(&a9);
  sub_18369D8F8(&a19);
  _Unwind_Resume(a1);
}

void sub_18369EF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_18369F2FC(va1);
  sub_18369D8F8(va);
  _Unwind_Resume(a1);
}

id sub_18369EF50(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(v2 + 8);
    if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
    }

    else
    {
      v6 = v4;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      v4 = v6;
    }
  }

  else
  {
    v4 = *(v2 + 8);
  }

  return v4;
}

void sub_18369F01C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_1836EDDB8(v4, a3, a4);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5, v6);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void **sub_18369F0F0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_18369F180(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369F168();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_18369F264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_18369F28C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_18369F28C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void ***sub_18369F2FC(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *sub_18369F384(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369F168();
  }

  return result;
}

void *sub_18369F498(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_1836A09A4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EA84CD00 != -1)
  {
    dispatch_once(&qword_1EA84CD00, &unk_1EF1BB798);
  }

  PPSSendTelemetry();
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_msgSend_ch_descriptionWithSeparator_(*(a1 + 32), v3, @", ", v4, v5, v6);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_DEFAULT, "CHPowerLog: logModelLoadedUnloaded with payload = {%@}", &v8, 0xCu);
  }
}

uint64_t sub_1836A0AC8()
{
  result = PPSCreateTelemetryIdentifier();
  qword_1EA84CCF8 = result;
  return result;
}

void sub_1836A0BC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (qword_1EA84CD10 != -1)
    {
      dispatch_once(&qword_1EA84CD10, &unk_1EF1BB7B8);
    }

    v7 = objc_msgSend_mutableCopy(*(a1 + 32), a2, a3, a4, a5, a6);
    v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v8, *(a1 + 40), v9, v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v13, v12, @"model", v14, v15);

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v16 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      v22 = objc_msgSend_ch_descriptionWithSeparator_(v7, v17, @", ", v18, v19, v20);
      v42 = 134218242;
      v43 = v21;
      v44 = 2112;
      v45 = v22;
      _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_DEFAULT, "CHPowerLog: logModelInference for model %ld with payload = {%@}", &v42, 0x16u);
    }

    v28 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v23, v24, v25, v26, v27, *(a1 + 48));
    objc_msgSend_setObject_forKeyedSubscript_(v7, v29, v28, @"startTimestamp", v30, v31);

    v37 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v32, v33, v34, v35, v36, *(a1 + 56));
    objc_msgSend_setObject_forKeyedSubscript_(v7, v38, v37, @"endTimestamp", v39, v40);

    PPSSendTelemetry();
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v7 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 40);
      v42 = 134217984;
      v43 = v41;
      _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_ERROR, "CHPowerLog: logModelInference for model %ld with nil data", &v42, 0xCu);
    }
  }
}

uint64_t sub_1836A0E28()
{
  result = PPSCreateTelemetryIdentifier();
  qword_1EA84CD08 = result;
  return result;
}

void sub_1836A1188(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC88;
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v11, OS_SIGNPOST_INTERVAL_END, v12, "CHTextSynthesisQuery_refineContext", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "END CHTextSynthesisQuery_refineContext", v14, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1836A1650(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC88;
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CHTextSynthesisQuery_refinedTokens", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_DEFAULT, "END CHTextSynthesisQuery_refinedTokens", v11, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1836A1C50(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = v5;
  v16 = 0;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v50, v55, 16, v15);
  if (v22)
  {
    v23 = *v51;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v51 != v23)
        {
          objc_enumerationMutation(v13);
        }

        v30 = objc_msgSend_drawing(*(*(&v50 + 1) + 8 * i), v17, v18, v19, v20, v21);
        if (v16)
        {
          objc_msgSend_appendDrawing_(v16, v25, v30, v27, v28, v29);
        }

        else
        {
          v16 = objc_msgSend_copy(v30, v25, v26, v27, v28, v29);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v17, &v50, v55, 16, v21);
    }

    while (v22);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v31 = v6;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v46, v54, 16, v33);
  if (v38)
  {
    v39 = *v47;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(v31);
        }

        objc_msgSend_addObjectsFromArray_(v12, v34, *(*(&v46 + 1) + 8 * j), v35, v36, v37);
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v46, v54, 16, v37);
    }

    while (v38);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v41 = qword_1EA84DC88;
  v42 = v41;
  v43 = *(a1 + 40);
  if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *v45 = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v42, OS_SIGNPOST_INTERVAL_END, v43, "CHTextSynthesisQuery_refineSingleLine", "", v45, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v44 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *v45 = 0;
    _os_log_impl(&dword_18366B000, v44, OS_LOG_TYPE_DEFAULT, "END CHTextSynthesisQuery_refineSingleLine", v45, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1836A2314(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC88;
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CHTextSynthesisQuery_refinedTokensSingleLine", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_DEFAULT, "END CHTextSynthesisQuery_refinedTokensSingleLine", v11, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1836A2864(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC88;
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v11, OS_SIGNPOST_INTERVAL_END, v12, "CHTextSynthesisQuery_synthesizeTokens", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "END CHTextSynthesisQuery_synthesizeTokens", v14, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1836A2CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v19 = v17;

  _Unwind_Resume(a1);
}

void sub_1836A2D34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC88;
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v11, OS_SIGNPOST_INTERVAL_END, v12, "CHTextSynthesisQuery_synthesizeTokensReplacing", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "END CHTextSynthesisQuery_synthesizeTokensReplacing", v14, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1836A3044(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  *(a1 + 8) = 0;
  v7 = (a1 + 8);
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  v8 = (a1 + 72);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 80) = 0;
  objc_storeStrong((a1 + 8), a2);
  v285 = a3;
  *a1 = a3;
  v9 = *(a1 + 40);
  *(a1 + 40) = 0;

  v10 = *(a1 + 72);
  *(a1 + 72) = 0;

  v11 = *(a1 + 80);
  *(a1 + 80) = 0;

  v286 = v6;
  v16 = sub_1836A4100(v6, (a1 + 104), a1 + 128, 1, 15.0);
  *(a1 + 96) = v16;
  *(a1 + 176) = 0;
  *(a1 + 32) = 0;
  v17 = *(a1 + 104);
  v18 = (*(a1 + 112) - v17) >> 3;
  v19 = 0xCCCCCCCCCCCCCCCDLL * v18;
  v20 = (-858993459 * v18 - 1);
  *(a1 + 160) = v20;
  *(a1 + 64) = 0;
  if (0xCCCCCCCCCCCCCCCDLL * v18 < 7)
  {
    v31 = objc_msgSend_copy(v6, v20, v12, v13, v14, v15);
    v32 = *(a1 + 80);
    *(a1 + 80) = v31;

    v33 = v285;
    goto LABEL_134;
  }

  v283 = -858993459 * v18 - 1;
  v21 = sub_1836A46D4(a1, v20, -1);
  *(a1 + 172) = v21;
  v22 = 1;
  v23 = sub_1836A46D4(a1, 1, 1);
  *(a1 + 188) = v23;
  *(a1 + 164) = -803929351;
  v24 = v19 - 2;
  v25 = v21;
  if (v19 - 2 > v21)
  {
    v26 = 0;
    v27 = v17 + 1;
    v28 = v21 + 1;
    v29 = 0.0;
    v30 = -1.0e10;
    do
    {
      v37 = &v17[5 * v25];
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v37 - 5) - *v37;
      v41 = *(v37 - 4) - v38;
      v42 = (v41 * v41) + (v40 * v40);
      if (v42 > 0.0)
      {
        v40 = v40 / v42;
        v41 = v41 / v42;
      }

      ++v21;
      v43 = v25 + 1;
      if (v19 > v25 + 1)
      {
        v44 = 0;
        v45 = &v27[5 * v28];
        v46 = -1.0e10;
        v47 = 1.0e10;
        v48 = v21;
        v49 = -v40;
        v50 = -v41;
        v51 = v49;
        v52 = -v41;
        v53 = sqrtf(v42);
        v54 = 1.0e10;
        v55 = -1.0e10;
        do
        {
          v56 = *(v45 - 1) - v39;
          v57 = *v45 - v38;
          v58 = v57 * v52 + v56 * v51;
          v59 = v58 * v53;
          v60 = v58;
          v61 = v56 * v52 - v57 * v51;
          if (v47 > v60)
          {
            v47 = v60;
          }

          if (v46 < v60)
          {
            v46 = v60;
          }

          v44 |= (v16 * 0.5) > v59;
          if (v54 > v61)
          {
            v54 = v61;
          }

          if (v55 < v61)
          {
            v55 = v61;
          }

          ++v48;
          v45 += 5;
        }

        while (v19 > v48);
        if (v44)
        {
          v62 = (v46 + v47) * 0.5;
          v63 = (v55 + v54) * 0.5;
          v64 = v39 + (v42 * (v62 * v49)) + (v42 * (v63 * v50));
          v65 = v38 + (v42 * (v62 * v50)) - (v42 * (v63 * v49));
          v66 = v64 - v39;
          v67 = v65 - v38;
          *&v64 = (v67 * v52 + (v64 - v39) * v51) * v53;
          v68 = (v66 * v52 - v67 * v51) * v53;
          v69 = fabsf(v68);
          if ((v16 * -0.5) < *&v64 && v69 < v16)
          {
            v71 = v42 * ((v55 - v54) * (v46 - v47));
            if ((v26 & 1) == 0)
            {
              v29 = v71;
            }

            if (v25 < 3)
            {
              v74 = -2.0;
              if (v25 == 2)
              {
                v75 = (*v17 - v39) * v52 - (v17[1] - v38) * v51;
                v74 = -1.0 - fabsf(v75);
              }
            }

            else
            {
              v72 = (*(v37 - 10) - v39) * v52 - (*(v37 - 9) - v38) * v51;
              v73 = (*(v37 - 15) - v39) * v52 - (*(v37 - 14) - v38) * v51;
              v74 = -fabsf(v72) + fabsf(v73) * -0.5;
            }

            v76 = ((v71 / v29) - ((v55 + v54) * (v55 + v54))) + v74;
            if (v76 > v30)
            {
              *(a1 + 164) = v76;
              *(a1 + 160) = v25;
              v284 = v8;
              v282 = v24;
              v34 = v23;
              v35 = v27;
              v36 = atan2f(v50, v49);
              v27 = v35;
              v23 = v34;
              v24 = v282;
              v8 = v284;
              *(a1 + 168) = v36;
              v26 = 1;
              v30 = v76;
            }

            else
            {
              v26 = 1;
            }
          }
        }
      }

      ++v28;
      v25 = v43;
    }

    while (v43 != v24);
    v22 = v30 < -2.0;
  }

  *(a1 + 180) = -803929351;
  if (v23 < 2)
  {
    v83 = -1.0e10;
  }

  else
  {
    v77 = 0;
    v78 = v23;
    v79 = v19 - 3;
    v80 = v23 - 1;
    v81 = v23 + 1;
    v82 = 0.0;
    v83 = -1.0e10;
    do
    {
      v85 = &v17[5 * v78];
      v87 = *v85;
      v86 = v85[1];
      v88 = v85[5] - *v85;
      v89 = v85[6] - v86;
      v90 = (v89 * v89) + (v88 * v88);
      if (v90 > 0.0)
      {
        v88 = v88 / v90;
        v89 = v89 / v90;
      }

      v91 = 0;
      v92 = -v88;
      v93 = -v89;
      v94 = v92;
      v95 = -v89;
      v96 = -1.0e10;
      v97 = 1.0e10;
      v98 = sqrtf(v90);
      v99 = v81;
      v100 = v80;
      v101 = 1.0e10;
      v102 = -1.0e10;
      do
      {
        v103 = &v17[5 * v100];
        v104 = *v103 - v87;
        v105 = v103[1] - v86;
        v106 = v105 * v95 + v104 * v94;
        v107 = v106 * v98;
        v108 = v106;
        v109 = v104 * v95 - v105 * v94;
        if (v97 > v108)
        {
          v97 = v108;
        }

        if (v96 < v108)
        {
          v96 = v108;
        }

        v91 |= (v16 * 0.5) > v107;
        if (v101 > v109)
        {
          v101 = v109;
        }

        if (v102 < v109)
        {
          v102 = v109;
        }

        --v100;
        --v99;
      }

      while (v99 > 2);
      if (v91)
      {
        v110 = (v96 + v97) * 0.5;
        v111 = (v102 + v101) * 0.5;
        v112 = v87 + (v90 * (v110 * v92)) + (v90 * (v111 * v93));
        v113 = v86 + (v90 * (v110 * v93)) - (v90 * (v111 * v92));
        v114 = v112 - v87;
        v115 = v113 - v86;
        *&v112 = (v115 * v95 + (v112 - v87) * v94) * v98;
        v116 = (v114 * v95 - v115 * v94) * v98;
        v117 = fabsf(v116);
        if (v16 * -0.5 < *&v112 && v117 < v16)
        {
          v119 = v90 * ((v102 - v101) * (v96 - v97));
          if ((v77 & 1) == 0)
          {
            v82 = v119;
          }

          if (v79 <= v78)
          {
            v122 = -2.0;
            if (v24 > v78)
            {
              v123 = (v85[10] - v87) * v95 - (v85[11] - v86) * v94;
              v122 = -1.0 - fabsf(v123);
            }
          }

          else
          {
            v120 = (v85[10] - v87) * v95 - (v85[11] - v86) * v94;
            v121 = (v85[15] - v87) * v95 - (v85[16] - v86) * v94;
            v122 = -fabsf(v120) + fabsf(v121) * -0.5;
          }

          v124 = ((v119 / v82) - ((v102 + v101) * (v102 + v101))) + v122;
          if (v124 > v83)
          {
            *(a1 + 180) = v124;
            *(a1 + 176) = v78;
            *(a1 + 184) = atan2f(v93, v92);
            v77 = 1;
            v83 = v124;
          }

          else
          {
            v77 = 1;
          }
        }
      }

      --v80;
      --v81;
      v84 = v78-- <= 2;
    }

    while (!v84);
  }

  if (v22)
  {
    *(a1 + 64) = 0;
    *(a1 + 160) = v283;
    v6 = v286;
    if (v83 < -2.0)
    {
LABEL_68:
      *(a1 + 32) = 0;
      *(a1 + 176) = 0;
      goto LABEL_77;
    }
  }

  else
  {
    v6 = v286;
    v125 = objc_alloc_init(CHDrawing);
    v126 = objc_alloc_init(CHDrawing);
    v127 = *(a1 + 72);
    *(a1 + 72) = v126;

    for (i = *(*(a1 + 104) + 40 * *(a1 + 160) + 60); objc_msgSend_pointCountForStrokeIndex_(*v7, v128, 0, v129, v130, v131, v282) > i; ++i)
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(*v7, v133, 0, i, v134, v135);
      v137 = v136;
      v139 = v138;
      objc_msgSend_addPoint_(*v8, v140, v141, v142, v143, v144);
      v145 = __sincosf_stret(*(a1 + 184));
      objc_msgSend_addPoint_(v125, v146, v147, v148, v149, v150, v139 * v145.__sinval + v137 * v145.__cosval, v139 * v145.__cosval - v137 * v145.__sinval);
    }

    *(a1 + 64) = 1;

    if (*(a1 + 180) < -2.0)
    {
      goto LABEL_68;
    }
  }

  v151 = objc_alloc_init(CHDrawing);
  v152 = objc_alloc_init(CHDrawing);
  v153 = *(a1 + 40);
  *(a1 + 40) = v152;

  v157 = *(*(a1 + 104) + 40 * *(a1 + 176) - 20);
  if (v157 >= 1)
  {
    do
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(*v7, v154, 0, v157, v155, v156, v282);
      v159 = v158;
      v161 = v160;
      objc_msgSend_addPoint_(*(a1 + 40), v162, v163, v164, v165, v166);
      v167 = __sincosf_stret(*(a1 + 184));
      objc_msgSend_addPoint_(v151, v168, v169, v170, v171, v172, v161 * v167.__sinval + v159 * v167.__cosval, v161 * v167.__cosval - v159 * v167.__sinval);
      v84 = v157-- <= 1;
    }

    while (!v84);
  }

  *(a1 + 32) = 1;

LABEL_77:
  v173 = objc_alloc_init(CHDrawing);
  v174 = *(a1 + 80);
  *(a1 + 80) = v173;

  v179 = *(a1 + 176);
  if (v179 < 2)
  {
    v221 = 0;
  }

  else
  {
    v180 = *(a1 + 104) + 40 * v179;
    v181 = *(v180 + 40);
    v182 = *(v180 + 48);
    v183 = *v180 - v181;
    v184 = *(v180 + 8) - v182;
    v185 = (v184 * v184) + (v183 * v183);
    if (v185 > 0.0)
    {
      v183 = v183 / v185;
      v184 = v184 / v185;
    }

    v186 = 0;
    v187 = 0;
    v188 = *(v180 + 20);
    v189 = v183;
    v190 = v184;
    objc_msgSend_pointForStrokeIndex_pointIndex_(*v7, v175, 0, v188, v177, v178, v282);
    while (1)
    {
      v194 = v187 - v186;
      v195 = 0xCCCCCCCCCCCCCCCDLL * ((v187 - v186) >> 3);
      v196 = v195 + 1;
      if (v195 + 1 > 0x666666666666666)
      {
        sub_18369761C();
      }

      if (0x999999999999999ALL * (-v186 >> 3) > v196)
      {
        v196 = 0x999999999999999ALL * (-v186 >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * (-v186 >> 3) >= 0x333333333333333)
      {
        v197 = 0x666666666666666;
      }

      else
      {
        v197 = v196;
      }

      if (v197)
      {
        if (v197 <= 0x666666666666666)
        {
          operator new();
        }

        sub_183688F00();
      }

      v198 = 40 * v195;
      *v198 = v191;
      *(v198 + 8) = v192;
      *(v198 + 16) = 0;
      *(v198 + 21) = 0;
      v193 = (v192 - v182) * v190 + (v191 - v181) * v189;
      *(v198 + 32) = v193;
      v187 = 40 * v195 + 40;
      v199 = (v198 + 40 * (v194 / -40));
      memcpy(v199, v186, v194);
      if (v186)
      {
        operator delete(v186);
      }

      v186 = v199;
      v84 = v188-- <= 1;
      if (v84)
      {
        break;
      }

      objc_msgSend_pointForStrokeIndex_pointIndex_(*v7, v200, 0, v188, v201, v202, v282);
    }

    v203 = v199;
    if (v199 != v187)
    {
      v204 = (v199 + 40);
      v203 = v199;
      if (v199 + 40 != v187)
      {
        v203 = v199;
        do
        {
          if (*(v203 + 8) < v204[8])
          {
            v203 = v204;
          }

          v204 += 10;
        }

        while (v204 != v187);
      }
    }

    v206 = *v203;
    v205 = *(v203 + 1);
    v207 = *(v203 + 8);
    objc_msgSend_pointForStrokeIndex_pointIndex_(*(a1 + 8), v200, 0, *(*(a1 + 104) + 40 * *(a1 + 176) + 20), v201, v202);
    v210 = v209;
    v212 = v211;
    v213 = v206 - v209;
    v214 = v205 - v211;
    v215 = (v214 * v214) + (v213 * v213);
    if (v215 > 0.0)
    {
      v216 = v213 / v215;
    }

    else
    {
      v216 = v213;
    }

    if (v215 > 0.0)
    {
      v217 = v214 / v215;
    }

    else
    {
      v217 = v214;
    }

    v6 = v286;
    if (v207 > 0.0)
    {
      v218 = sqrtf(v215);
      v219 = 1.0;
      v220 = 1.0 / ceilf((v218 + v218) / *(a1 + 96));
      do
      {
        objc_msgSend_addPoint_(*(a1 + 80), v175, v208, v176, v177, v178, v210 + (v215 * (v216 * v219)), v212 + (v215 * (v217 * v219)));
        v219 = v219 - v220;
      }

      while (v219 > 0.01);
    }

    v221 = v199;
  }

  v222 = *(a1 + 104);
  v223 = *(v222 + 40 * *(a1 + 176) + 20);
  v224 = *(a1 + 160);
  v225 = v222 + 40 * v224;
  LODWORD(v226) = *(v225 + 20);
  if (v223 <= v226)
  {
    do
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(*v7, v175, 0, v223, v177, v178, v282);
      objc_msgSend_addPoint_(*(a1 + 80), v228, v229, v230, v231, v232);
      v224 = *(a1 + 160);
      v222 = *(a1 + 104);
      v225 = v222 + 40 * v224;
      v226 = *(v225 + 20);
      v84 = v223++ < v226;
    }

    while (v84);
    v227 = v224;
  }

  else
  {
    v227 = v224;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 112) - v222) >> 3) - 2 <= v227)
  {
    v33 = v285;
    if (!v221)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

  v233 = v222 + 40 * v224;
  v234 = *(v233 - 40);
  v235 = *(v233 - 32);
  v236 = *v225 - v234;
  v237 = *(v225 + 8) - v235;
  v238 = (v237 * v237) + (v236 * v236);
  if (v238 > 0.0)
  {
    v236 = v236 / v238;
    v237 = v237 / v238;
  }

  v239 = v236;
  v240 = v226;
  v241 = v237;
  v242 = v221;
  while (objc_msgSend_pointCountForStrokeIndex_(*v7, v175, 0, v176, v177, v178, v282) > v240)
  {
    objc_msgSend_pointForStrokeIndex_pointIndex_(*v7, v243, 0, v240, v244, v245);
    v249 = &v221[-v242];
    v250 = 0xCCCCCCCCCCCCCCCDLL * (&v221[-v242] >> 3) + 1;
    if (v250 > 0x666666666666666)
    {
      sub_18369761C();
    }

    if (0x999999999999999ALL * (-v242 >> 3) > v250)
    {
      v250 = 0x999999999999999ALL * (-v242 >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * (-v242 >> 3) >= 0x333333333333333)
    {
      v251 = 0x666666666666666;
    }

    else
    {
      v251 = v250;
    }

    if (v251)
    {
      if (v251 <= 0x666666666666666)
      {
        operator new();
      }

      sub_183688F00();
    }

    v252 = 8 * (&v221[-v242] >> 3);
    *v252 = v246;
    *(v252 + 8) = v247;
    *(v252 + 16) = 0;
    *(v252 + 21) = 0;
    v248 = (v247 - v235) * v241 + (v246 - v234) * v239;
    *(v252 + 32) = v248;
    v221 = (v252 + 40);
    v253 = (v252 + 40 * (v249 / -40));
    memcpy(v253, v242, v249);
    if (v242)
    {
      operator delete(v242);
    }

    v242 = v253;
    ++v240;
  }

  v259 = v242;
  if (v242 != v221)
  {
    v260 = (v242 + 40);
    v259 = v242;
    if ((v242 + 40) != v221)
    {
      v259 = v242;
      do
      {
        if (*(v259 + 32) < v260[8])
        {
          v259 = v260;
        }

        v260 += 10;
      }

      while (v260 != v221);
    }
  }

  v262 = *v259;
  v261 = *(v259 + 8);
  v263 = *(v259 + 32);
  v6 = v286;
  objc_msgSend_pointForStrokeIndex_pointIndex_(*(a1 + 8), v243, 0, *(*(a1 + 104) + 40 * *(a1 + 160) + 20), v244, v245);
  v33 = v285;
  v270 = v269;
  v272 = v271;
  v273 = v262 - v269;
  v274 = v261 - v271;
  v275 = (v274 * v274) + (v273 * v273);
  *&v276 = v273 / v275;
  if (v275 > 0.0)
  {
    v277 = v274 / v275;
  }

  else
  {
    v277 = v274;
  }

  if (v275 > 0.0)
  {
    v278 = v273 / v275;
  }

  else
  {
    v278 = v273;
  }

  if (v263 > 0.0)
  {
    v279 = sqrtf(v275);
    v280 = 1.0 / ceilf((v279 + v279) / *(a1 + 96));
    if (v280 < 1.01)
    {
      v281 = v280;
      do
      {
        objc_msgSend_addPoint_(*(a1 + 80), v264, v265, v266, v267, v268, v270 + (v275 * (v278 * v281)), v272 + (v275 * (v277 * v281)), v276);
        v281 = v280 + v281;
      }

      while (v281 < 1.01);
    }
  }

  v221 = v242;
  if (v242)
  {
LABEL_133:
    operator delete(v221);
  }

LABEL_134:
  sub_1837E4BD0(v288, v6, a1 + 16, *(a1 + 80), a1 + 48, v33);
  v254 = v291;
  *(a1 + 88) = v291;
  if (fabsf(v292) <= 0.98)
  {
    if (v254)
    {
      MEMORY[0x1865E5EC0](v254, 0x1081C4095753B69);
    }

    *(a1 + 88) = 0;
    sub_18397E1EC(v287, a1 + 16, *(a1 + 80), a1 + 48, v33);
  }

  v255 = *(a1 + 40);
  *(a1 + 40) = 0;

  v256 = *(a1 + 80);
  *(a1 + 80) = 0;

  v257 = *(a1 + 72);
  *(a1 + 72) = 0;

  return a1;
}

void sub_1836A4020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, void *a14)
{
  if (v15)
  {
    operator delete(v15);
  }

  v17 = *a12;
  if (*a12)
  {
    *(v14 + 112) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

float sub_1836A4100(void *a1, void **a2, uint64_t a3, char a4, float a5)
{
  v8 = a1;
  objc_msgSend_bounds(v8, v9, v10, v11, v12, v13);
  if (v18 >= v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = objc_msgSend_pointCountForStrokeIndex_(v8, v14, 0, v15, v16, v17, a3);
  if (0xCCCCCCCCCCCCCCCDLL * ((a2[2] - *a2) >> 3) < v21)
  {
    if (v21 <= 0x666666666666666)
    {
      operator new();
    }

    sub_18369761C();
  }

  objc_msgSend_pointForStrokeIndex_pointIndex_(v8, v22, 0, 0, v23, v24);
  v103.f64[0] = v25;
  v103.f64[1] = v26;
  v104 = 0;
  v105 = 1;
  v106 = 0;
  v107 = 0;
  sub_1836974D0(a2, &v103);
  objc_msgSend_pointForStrokeIndex_pointIndex_(v8, v27, 0, 0, v28, v29);
  v34 = v20 / a5;
  v36.f64[1] = v35;
  *&v36.f64[0] = vcvt_f32_f64(v36);
  v38 = *(v36.f64 + 1);
  v37 = *v36.f64;
  v97 = v36;
  if (a4)
  {
    v39 = 1;
    v40 = 0.0;
    v41 = 1;
    v42 = 1;
    v96 = v36;
    v95 = v8;
    while (1)
    {
      if (objc_msgSend_pointCountForStrokeIndex_(v8, v30, 0, v31, v32, v33) <= v39)
      {
        goto LABEL_39;
      }

      objc_msgSend_pointForStrokeIndex_pointIndex_(v8, v45, 0, v39, v47, v48);
      v50.f64[1] = v49;
      v51 = vcvt_f32_f64(v50);
      *v50.f64 = v51.f32[0] - v37;
      v52 = v51.f32[1];
      v40 = v40 + sqrtf(((v51.f32[1] - v38) * (v51.f32[1] - v38)) + (*v50.f64 * *v50.f64));
      if (v40 > (v34 + v34))
      {
        break;
      }

      if (v40 > v34)
      {
        v103 = vcvtq_f64_f32(v51);
        v104 = __PAIR64__(v39, v41);
        v105 = v42;
        v106 = 0;
        v107 = 0;
        v100 = v51;
        sub_1836974D0(a2, &v103);
        v42 = 0;
        ++v41;
        v43 = v96;
        v51 = v100;
LABEL_11:
        *&v43.f64[0] = vminnm_f32(*&v43.f64[0], v51);
        v96 = v43;
        v44.f64[1] = v97.f64[1];
        *&v44.f64[0] = vmaxnm_f32(*&v97.f64[0], v51);
        v97 = v44;
        v40 = 0.0;
      }

      ++v42;
      ++v39;
      v38 = v52;
      v37 = v51.f32[0];
    }

    v53 = vcvtms_s32_f32(v40 / v34);
    v54 = v53 - 1;
    if (v53 >= 1)
    {
      v55 = a2[1];
      v56 = *(v55 - 40);
      v57 = v53;
      v58 = 1;
      v101 = v42 / v53;
      v98 = v56;
      v99 = v51;
      do
      {
        while (1)
        {
          v59 = v41 + v58 - 1;
          v60 = vcvtq_f64_f32(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(v51, v58 / v57)), v56, (v54 / v57))));
          v61 = a2[2];
          if (v55 >= v61)
          {
            break;
          }

          *v55 = v60;
          *(v55 + 16) = v59;
          *(v55 + 20) = v39;
          *(v55 + 24) = v101;
          *(v55 + 28) = 0;
          *(v55 + 32) = 0;
          v55 += 40;
          a2[1] = v55;
          ++v58;
          if (--v54 == -1)
          {
            goto LABEL_9;
          }
        }

        v62 = *a2;
        v63 = 0xCCCCCCCCCCCCCCCDLL * ((v55 - *a2) >> 3);
        v64 = v63 + 1;
        if (v63 + 1 > 0x666666666666666)
        {
          sub_18369761C();
        }

        v65 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - v62) >> 3);
        if (2 * v65 > v64)
        {
          v64 = 2 * v65;
        }

        if (v65 >= 0x333333333333333)
        {
          v66 = 0x666666666666666;
        }

        else
        {
          v66 = v64;
        }

        if (v66)
        {
          if (v66 <= 0x666666666666666)
          {
            operator new();
          }

          sub_183688F00();
        }

        v67 = v55;
        v68 = 8 * ((v55 - *a2) >> 3);
        *v68 = v60;
        *(v68 + 16) = v59;
        *(v68 + 20) = v39;
        *(v68 + 24) = v101;
        *(v68 + 28) = 0;
        *(v68 + 32) = 0;
        v55 = 40 * v63 + 40;
        v69 = (40 * v63 - (v67 - v62));
        memcpy(v69, v62, v67 - v62);
        *a2 = v69;
        a2[1] = v55;
        a2[2] = 0;
        if (v62)
        {
          operator delete(v62);
        }

        v56 = v98;
        v51 = v99;
        a2[1] = v55;
        ++v58;
        --v54;
      }

      while (v54 != -1);
LABEL_9:
      v41 = v41 + v58 - 1;
      v8 = v95;
    }

    v42 = 0;
    v43 = v96;
    goto LABEL_11;
  }

  v70 = 0.0;
  v71 = 1;
  v72 = 1;
  v42 = 1;
  v96 = v36;
  while (objc_msgSend_pointCountForStrokeIndex_(v8, v30, 0, v31, v32, v33) > v71)
  {
    objc_msgSend_pointForStrokeIndex_pointIndex_(v8, v45, 0, v71, v47, v48);
    v75.f64[1] = v74;
    v76 = vcvt_f32_f64(v75);
    *v75.f64 = v76.f32[0] - v37;
    v77 = v76.f32[1];
    v70 = v70 + sqrtf(((v76.f32[1] - v38) * (v76.f32[1] - v38)) + (*v75.f64 * *v75.f64));
    if (v70 > v34)
    {
      v102 = v76;
      v103 = vcvtq_f64_f32(v76);
      v104 = __PAIR64__(v71, v72);
      v105 = v42;
      v106 = 0;
      v107 = 0;
      sub_1836974D0(a2, &v103);
      v42 = 0;
      ++v72;
      v73.f64[1] = v96.f64[1];
      v76.i32[0] = v102.i32[0];
      *&v73.f64[0] = vminnm_f32(*&v96.f64[0], v102);
      v96 = v73;
      v73.f64[1] = v97.f64[1];
      *&v73.f64[0] = vmaxnm_f32(*&v97.f64[0], v102);
      v97 = v73;
      v70 = 0.0;
    }

    ++v42;
    ++v71;
    v38 = v77;
    v37 = v76.f32[0];
  }

LABEL_39:
  v78 = objc_msgSend_pointCountForStrokeIndex_(v8, v45, 0, v46, v47, v48);
  objc_msgSend_pointForStrokeIndex_pointIndex_(v8, v79, 0, v78 - 1, v80, v81);
  v82 = a2[1];
  *(v82 - 5) = v83;
  *(v82 - 4) = v84;
  v89 = objc_msgSend_pointCountForStrokeIndex_(v8, v85, 0, v86, v87, v88);
  v90 = a2[1];
  v91 = *(v90 - 4) + v42;
  *(v90 - 5) = v89 - 1;
  *(v90 - 4) = v91;
  v94->f64[0] = *v96.f64;
  v94->f64[1] = *(v96.f64 + 1);
  v94[1] = vcvtq_f64_f32(vsub_f32(*&v97.f64[0], *&v96.f64[0]));

  return v34;
}

uint64_t sub_1836A46D4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 144);
  v3 = *(a1 + 152);
  v5 = v4 * v4 + v3 * v3;
  v6 = *(a1 + 104);
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 112) - v6) >> 3);
  LODWORD(v8) = -1;
  if (a2 < 1 || v7 <= a2)
  {
    v20 = v4 * v4 + v3 * v3;
    LODWORD(result) = -1;
LABEL_29:
    if (v5 >= v20)
    {
      result = result;
    }

    else
    {
      result = v8;
    }

    goto LABEL_32;
  }

  v9 = 0;
  v10 = 0;
  v11 = v4 * 0.5 + *(a1 + 128);
  v12 = v3 * 0.0625 * (v3 * 0.0625) + v4 * 0.0625 * (v4 * 0.0625);
  v13 = v11;
  v14 = v3 * 0.5 + *(a1 + 136);
  v15 = v13;
  v16 = a3 + a2;
  v17 = (v6 + 40 * a2 + 8);
  v18 = v14;
  result = 0xFFFFFFFFLL;
  v20 = v5;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v21 = *(v17 - 6);
    if (v21 < v15 && *(v17 - 1) >= v15)
    {
      v22 = 1;
      v23 = *(v17 - 5);
      if (v23 >= v18)
      {
        goto LABEL_13;
      }
    }

    else if (v21 <= v15)
    {
      v22 = 0;
      v23 = *(v17 - 5);
      if (v23 >= v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v22 = *(v17 - 1) <= v15;
      v23 = *(v17 - 5);
      if (v23 >= v18)
      {
        goto LABEL_13;
      }
    }

    v24 = *v17;
    if (*v17 >= v18)
    {
      v25 = 1;
      goto LABEL_17;
    }

LABEL_13:
    if (v23 <= v18)
    {
      v25 = 0;
      v24 = *v17;
    }

    else
    {
      v24 = *v17;
      v25 = *v17 <= v18;
    }

LABEL_17:
    v26 = (v24 - v18) * (v24 - v18) + (*(v17 - 1) - v15) * (*(v17 - 1) - v15);
    if (v22)
    {
      ++v9;
      if ((v20 - v26) > v12)
      {
        v20 = v26;
        result = a2;
      }
    }

    if (v25)
    {
      ++v10;
      if ((v5 - v26) > v12)
      {
        v8 = a2;
        v5 = v26;
      }
    }

    if (v16 < 1)
    {
      break;
    }

    a2 = (a2 + a3);
    v17 += 5 * a3;
    v27 = v7 > v16;
    v16 += a3;
  }

  while (v27);
  if (v10 != 1 || v9 == 1)
  {
    if (v10 != 1 && v9 == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  result = v8;
LABEL_32:
  if (result < 1)
  {
    return 1;
  }

  if (v7 - 2 < result)
  {
    return (v7 - 2);
  }

  return result;
}

void sub_1836A4A10(uint64_t a1, void *a2, void *a3)
{
  v29 = a2;
  v5 = a3;
  v11 = objc_msgSend_intValue(v5, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v12, v29, v13, v14, v15);
  v17 = *(a1 + 40);
  v23 = objc_msgSend_intValue(v29, v18, v19, v20, v21, v22);
  v24 = *(v17 + 16);
  if (!v24)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v25 = v24;
      v26 = v24[4];
      if (v26 <= v23)
      {
        break;
      }

      v24 = *v25;
      if (!*v25)
      {
        goto LABEL_8;
      }
    }

    if (v26 >= v23)
    {
      break;
    }

    v24 = v25[1];
    if (!v24)
    {
      goto LABEL_8;
    }
  }

  v27 = v25[6];
  v25[5] = v11;
  v25[6] = v16;
  v28 = v16;
}

void sub_1836A4EC0(_Unwind_Exception *a1)
{
  operator delete(v3);

  _Unwind_Resume(a1);
}

void sub_1836A4EE0(_Unwind_Exception *a1)
{
  operator delete(v3);

  _Unwind_Resume(a1);
}

void sub_1836A4F00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      v9 = v7[4];
      if (v9 <= a2)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_8;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v10 = v8[6];
  v8[5] = a3;
  v8[6] = v11;
}

void sub_1836A53B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_1836A555C(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = objc_alloc_init(CHModelCatalog);
  v9 = objc_msgSend_assetDeliveryReady(v3, v4, v5, v6, v7, v8);
  if (v9 && CHHasHandwritingGenerationAllowed(v9, v10, v11, v12, v13, v14))
  {
    v18 = objc_msgSend_getModelURL_variant_(v3, v15, 0, a2, v16, v17);
    v19 = v18 != 0;

    return v19;
  }

  else
  {

    return 0;
  }
}

void sub_1836A563C(void *a1)
{
  if (a1)
  {
    sub_1836A563C(*a1);
    sub_1836A563C(a1[1]);

    operator delete(a1);
  }
}

void sub_1836A6760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a20, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);

  _Block_object_dispose((v44 - 192), 8);
  _Block_object_dispose((v44 - 144), 8);

  _Unwind_Resume(a1);
}

id sub_1836A6854(unsigned __int8 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [CHRemoteRecognitionTextRequest alloc];
    v13 = objc_msgSend_locales(a1, v8, v9, v10, v11, v12);
    v19 = objc_msgSend_recognitionMode(a1, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_priority(a1, v20, v21, v22, v23, v24);
    v27 = objc_msgSend_initWithLocales_recognitionMode_drawing_options_priority_(v7, v26, v13, v19, v5, v6, v25);

    v33 = objc_msgSend_activeCharacterSetPerLocale(a1, v28, v29, v30, v31, v32);
    objc_msgSend_setActiveCharacterSetPerLocale_(v27, v34, v33, v35, v36, v37);

    v43 = objc_msgSend_contentType(a1, v38, v39, v40, v41, v42);
    objc_msgSend_setContentType_(v27, v44, v43, v45, v46, v47);
    v53 = objc_msgSend_autoCapitalizationMode(a1, v48, v49, v50, v51, v52);
    objc_msgSend_setAutoCapitalizationMode_(v27, v54, v53, v55, v56, v57);
    v63 = objc_msgSend_autoCorrectionMode(a1, v58, v59, v60, v61, v62);
    objc_msgSend_setAutoCorrectionMode_(v27, v64, v63, v65, v66, v67);
    v73 = objc_msgSend_baseWritingDirection(a1, v68, v69, v70, v71, v72);
    objc_msgSend_setBaseWritingDirection_(v27, v74, v73, v75, v76, v77);
    v83 = objc_msgSend_maxRecognitionResultCount(a1, v78, v79, v80, v81, v82);
    objc_msgSend_setMaxRecognitionResultCount_(v27, v84, v83, v85, v86, v87);
    objc_msgSend_minimumDrawingSize(a1, v88, v89, v90, v91, v92);
    objc_msgSend_setMinimumDrawingSize_(v27, v93, v94, v95, v96, v97);
    shouldUseTextReplacements = objc_msgSend_shouldUseTextReplacements(a1, v98, v99, v100, v101, v102);
    objc_msgSend_setShouldUseTextReplacements_(v27, v104, shouldUseTextReplacements, v105, v106, v107);
    v113 = objc_msgSend_enableCachingIfAvailable(a1, v108, v109, v110, v111, v112);
    objc_msgSend_setEnableCachingIfAvailable_(v27, v114, v113, v115, v116, v117);
    v123 = objc_msgSend_enableGen2ModelIfAvailable(a1, v118, v119, v120, v121, v122);
    objc_msgSend_setEnableGen2ModelIfAvailable_(v27, v124, v123, v125, v126, v127);
    v133 = objc_msgSend_enableGen2CharacterLMIfAvailable(a1, v128, v129, v130, v131, v132);
    objc_msgSend_setEnableGen2CharacterLMIfAvailable_(v27, v134, v133, v135, v136, v137);
    objc_msgSend_setEnableStrokeReordering_(v27, v138, a1[56], v139, v140, v141);
    v147 = objc_msgSend_declaredVariables(a1, v142, v143, v144, v145, v146);
    objc_msgSend_setCustomLexiconEntries_(v27, v148, v147, v149, v150, v151);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

uint64_t sub_1836A6EAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1836A6EC4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC70;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_1836A6FE4(void *a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v8 && v9)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else if (v10)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a4);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC70;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_msgSend_localizedDescription(*(*(a1[6] + 8) + 40), v13, v14, v15, v16, v17);
      v19 = 138412290;
      v20 = v18;
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_DEBUG, "Error during recognition: %@", &v19, 0xCu);
    }
  }
}

void sub_1836A7184(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC70;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_msgSend_description(v3, v5, v6, v7, v8, v9);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "An XPC proxy service error occurred: %@", &v13, 0xCu);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_1836A72A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v13 = v10;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    if (!v10)
    {
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC70;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_msgSend_localizedDescription(v13, v15, v16, v17, v18, v19);
      v30 = 138412290;
      v31 = v20;
      _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEBUG, "Error during recognition: %@", &v30, 0xCu);
    }
  }

  if (v9)
  {
LABEL_10:
    v21 = *(*(a1 + 64) + 8);
    v22 = v9;
    v23 = *(v21 + 40);
    *(v21 + 40) = v22;
    goto LABEL_11;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v23 = qword_1EA84DC70;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v29 = objc_msgSend_localizedDescription(v13, v24, v25, v26, v27, v28);
    v30 = 138412290;
    v31 = v29;
    _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_DEBUG, "Error during recognition: %@", &v30, 0xCu);
  }

LABEL_11:

LABEL_12:
  objc_msgSend_logDrawingsAndResultsForRequest_result_error_(*(a1 + 32), v11, *(a1 + 40), v8, v13, v12);
  *(*(*(a1 + 72) + 8) + 24) = 1;
}