__n128 sub_1AE6E9508(uint64_t a1, __int128 *a2, __int128 *a3, const void **a4)
{
  sub_1AE6E92C4(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 1);
  }

  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v9, v12, v14);
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v10 >= v13)
  {
    return result;
  }

  v17 = *(a3 + 2);
  v18 = *a3;
  v19 = a4[2];
  *a3 = *a4;
  *(a3 + 2) = v19;
  *a4 = v18;
  a4[2] = v17;
  v20 = *(a3 + 23);
  if (v20 >= 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = *a3;
  }

  if (v20 >= 0)
  {
    v22 = *(a3 + 23);
  }

  else
  {
    v22 = *(a3 + 1);
  }

  v23 = *(a2 + 23);
  if (v23 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = *a2;
  }

  if (v23 >= 0)
  {
    v25 = *(a2 + 23);
  }

  else
  {
    v25 = *(a2 + 1);
  }

  if (v25 >= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  v27 = memcmp(v21, v24, v26);
  if (v27)
  {
    if ((v27 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v22 >= v25)
  {
    return result;
  }

  v28 = *(a2 + 2);
  v29 = *a2;
  v30 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v30;
  *a3 = v29;
  *(a3 + 2) = v28;
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = a2;
  }

  else
  {
    v32 = *a2;
  }

  if (v31 >= 0)
  {
    v33 = *(a2 + 23);
  }

  else
  {
    v33 = *(a2 + 1);
  }

  v34 = *(a1 + 23);
  if (v34 >= 0)
  {
    v35 = a1;
  }

  else
  {
    v35 = *a1;
  }

  if (v34 >= 0)
  {
    v36 = *(a1 + 23);
  }

  else
  {
    v36 = *(a1 + 8);
  }

  if (v36 >= v33)
  {
    v37 = v33;
  }

  else
  {
    v37 = v36;
  }

  v38 = memcmp(v32, v35, v37);
  if (v38)
  {
    if ((v38 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v33 >= v36)
  {
    return result;
  }

  v39 = *(a1 + 16);
  result = *a1;
  v40 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 16) = v40;
  *a2 = result;
  *(a2 + 2) = v39;
  return result;
}

__n128 sub_1AE6E96A0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void **a5)
{
  sub_1AE6E9508(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 1);
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v12 >= v15)
  {
    return result;
  }

  v19 = *(a4 + 2);
  v20 = *a4;
  v21 = a5[2];
  *a4 = *a5;
  *(a4 + 2) = v21;
  *a5 = v20;
  a5[2] = v19;
  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 1);
  }

  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 8);
  }

  if (v27 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  v29 = memcmp(v23, v26, v28);
  if (v29)
  {
    if ((v29 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v24 >= v27)
  {
    return result;
  }

  v30 = *(a3 + 16);
  v31 = *a3;
  v32 = *(a4 + 2);
  *a3 = *a4;
  *(a3 + 16) = v32;
  *a4 = v31;
  *(a4 + 2) = v30;
  v33 = *(a3 + 23);
  if (v33 >= 0)
  {
    v34 = a3;
  }

  else
  {
    v34 = *a3;
  }

  if (v33 >= 0)
  {
    v35 = *(a3 + 23);
  }

  else
  {
    v35 = *(a3 + 8);
  }

  v36 = *(a2 + 23);
  if (v36 >= 0)
  {
    v37 = a2;
  }

  else
  {
    v37 = *a2;
  }

  if (v36 >= 0)
  {
    v38 = *(a2 + 23);
  }

  else
  {
    v38 = *(a2 + 8);
  }

  if (v38 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v38;
  }

  v40 = memcmp(v34, v37, v39);
  if (v40)
  {
    if ((v40 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v35 >= v38)
  {
    return result;
  }

  v41 = *(a2 + 16);
  v42 = *a2;
  v43 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v43;
  *a3 = v42;
  *(a3 + 16) = v41;
  v44 = *(a2 + 23);
  if (v44 >= 0)
  {
    v45 = a2;
  }

  else
  {
    v45 = *a2;
  }

  if (v44 >= 0)
  {
    v46 = *(a2 + 23);
  }

  else
  {
    v46 = *(a2 + 8);
  }

  v47 = *(a1 + 23);
  if (v47 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v47 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = *(a1 + 8);
  }

  if (v49 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v45, v48, v50);
  if (v51)
  {
    if ((v51 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v46 >= v49)
  {
    return result;
  }

  v52 = *(a1 + 16);
  result = *a1;
  v53 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v53;
  *a2 = result;
  *(a2 + 16) = v52;
  return result;
}

BOOL sub_1AE6E98B4(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_1AE6E92C4(a1, (a1 + 24), a2 - 3);
        return 1;
      case 4:
        sub_1AE6E9508(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return 1;
      case 5:
        sub_1AE6E96A0(a1, a1 + 24, a1 + 48, (a1 + 72), a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = a2 - 3;
      v7 = *(a2 - 1);
      if (v7 >= 0)
      {
        v8 = a2 - 3;
      }

      else
      {
        v8 = *(a2 - 3);
      }

      if (v7 >= 0)
      {
        v9 = *(a2 - 1);
      }

      else
      {
        v9 = *(a2 - 2);
      }

      v10 = *(a1 + 23);
      if (v10 >= 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = *a1;
      }

      if (v10 >= 0)
      {
        v12 = *(a1 + 23);
      }

      else
      {
        v12 = *(a1 + 8);
      }

      if (v12 >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v12;
      }

      v14 = memcmp(v8, v11, v13);
      if (v14)
      {
        if ((v14 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v9 >= v12)
      {
        return 1;
      }

      v38 = *(a1 + 16);
      v39 = *a1;
      v40 = v6[2];
      *a1 = *v6;
      *(a1 + 16) = v40;
      *v6 = v39;
      v6[2] = v38;
      return 1;
    }
  }

  v15 = a1 + 48;
  sub_1AE6E92C4(a1, (a1 + 24), (a1 + 48));
  v16 = (a1 + 72);
  if ((a1 + 72) == v2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  v41 = v2;
  while (2)
  {
    v20 = *(v16 + 23);
    if (v20 >= 0)
    {
      v21 = v16;
    }

    else
    {
      v21 = *v16;
    }

    if (v20 >= 0)
    {
      v22 = *(v16 + 23);
    }

    else
    {
      v22 = v16[1];
    }

    v23 = *(v15 + 23);
    if (v23 >= 0)
    {
      v24 = v15;
    }

    else
    {
      v24 = *v15;
    }

    if (v23 >= 0)
    {
      v25 = *(v15 + 23);
    }

    else
    {
      v25 = *(v15 + 8);
    }

    if (v25 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v25;
    }

    v27 = memcmp(v21, v24, v26);
    if (v27)
    {
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (v22 >= v25)
    {
      goto LABEL_32;
    }

    v42 = v18;
    v43 = *v16;
    v44 = v16[2];
    *v16 = *v15;
    v16[2] = *(v15 + 16);
    *(v15 + 23) = 0;
    *v15 = 0;
    v28 = v17;
    while (1)
    {
      v29 = a1 + v28;
      v30 = (a1 + v28 + 24);
      if (SHIBYTE(v44) >= 0)
      {
        v31 = &v43;
      }

      else
      {
        v31 = v43;
      }

      if (SHIBYTE(v44) >= 0)
      {
        v32 = HIBYTE(v44);
      }

      else
      {
        v32 = *(&v43 + 1);
      }

      v33 = *(v29 + 47);
      if (v33 >= 0)
      {
        v34 = (a1 + v28 + 24);
      }

      else
      {
        v34 = *(a1 + v28 + 24);
      }

      if (v33 >= 0)
      {
        v35 = *(v29 + 47);
      }

      else
      {
        v35 = *(v29 + 32);
      }

      if (v35 >= v32)
      {
        v36 = v32;
      }

      else
      {
        v36 = v35;
      }

      v37 = memcmp(v31, v34, v36);
      if (!v37)
      {
        if (v32 >= v35)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if ((v37 & 0x80000000) == 0)
      {
        break;
      }

LABEL_54:
      v15 -= 24;
      *(v29 + 48) = *v30;
      *(v29 + 64) = *(a1 + v28 + 40);
      *(v29 + 47) = 0;
      *v30 = 0;
      v28 -= 24;
      if (v28 == -48)
      {
        v15 = a1;
        goto LABEL_31;
      }
    }

    v15 = a1 + v28 + 48;
LABEL_31:
    v19 = v43;
    *(v15 + 16) = v44;
    *v15 = v19;
    v18 = v42 + 1;
    v2 = v41;
    if (v42 != 7)
    {
LABEL_32:
      v15 = v16;
      v17 += 24;
      v16 += 3;
      if (v16 == v2)
      {
        return 1;
      }

      continue;
    }

    return v16 + 3 == v41;
  }
}

void sub_1AE6E9BA8(uint64_t a1, int a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, CFStringRef theString, double a7)
{
  if (theString)
  {
    Length = CFStringGetLength(theString);
    sub_1AE5CC874(a3, &v36);
    v15 = HIBYTE(v37);
    if (v37 < 0)
    {
      v15 = *(&v36 + 1);
    }

    if (!v15 || !CEMStringContainsEmoji())
    {
      goto LABEL_10;
    }

    v28 = MEMORY[0x1E69E9820];
    v29 = 1174405120;
    v30 = sub_1AE6E9EC0;
    v31 = &unk_1F242DC70;
    v32 = a1;
    if (SHIBYTE(v37) < 0)
    {
      sub_1AE5DBF1C(&v33, v36, *(&v36 + 1));
    }

    else
    {
      v33 = v36;
      v34 = v37;
    }

    v35 = a7;
    CEMEnumerateEmojiTokensInStringWithBlock();
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33);
      if (Length < 25)
      {
LABEL_30:
        if (SHIBYTE(v37) < 0)
        {
          operator delete(v36);
        }

        return;
      }
    }

    else
    {
LABEL_10:
      if (Length < 25)
      {
        goto LABEL_30;
      }
    }

    v27 = 0;
    if (a4)
    {
      CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(*MEMORY[0x1E695E480], a4);
    }

    else
    {
      v39.location = 0;
      v39.length = Length;
      CanonicalLocaleIdentifierFromString = CFStringTokenizerCopyBestStringLanguage(theString, v39);
    }

    v17 = CanonicalLocaleIdentifierFromString;
    v27 = CanonicalLocaleIdentifierFromString;
    sub_1AE5CC874(CanonicalLocaleIdentifierFromString, v25);
    v18 = v26;
    v19 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v18 = v25[1];
    }

    if (v18)
    {
      sub_1AE5CC874(a5, __p);
      v38 = __p;
      v20 = sub_1AE651AB8(a1 + 152, __p);
      v38 = v25;
      v21 = sub_1AE651C68((v20 + 7), v25);
      *(v21 + 14) += Length;
      if (a2 == 1)
      {
        *(a1 + 264) = 1;
        v22 = HIBYTE(v37);
        if (v37 < 0)
        {
          v22 = *(&v36 + 1);
        }

        if (v22)
        {
          v38 = &v36;
          *(sub_1AE6274E4(a1 + 200, &v36) + 7) = a7;
        }
      }

      *(a1 + 248) = 1;
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      v19 = v26;
    }

    if ((v19 & 0x80) != 0)
    {
      operator delete(v25[0]);
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    else if (!v17)
    {
      goto LABEL_30;
    }

    CFRelease(v17);
    goto LABEL_30;
  }
}

void sub_1AE6E9E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1AE66A6D4(&a21);
  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1AE6E9EC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (a1 + 40);
  v3 = *(a1 + 64);
  v4 = sub_1AE651E0C(v1 + 176, (a1 + 40));
  ++*(v4 + 14);
  result = sub_1AE651E0C(v1 + 176, v2);
  result[8] = v3;
  *(v1 + 248) = 1;
  return result;
}

void sub_1AE6E9F38(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

char *sub_1AE6E9F4C(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_1AE5DBF1C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_1AE6E9F78(uint64_t a1)
{
  sub_1AE6E9FB0(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6E9FB0(uint64_t a1)
{
  *a1 = &unk_1F242DC20;
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (v2 != (a1 + 16))
  {
    do
    {
      v4 = v2[7];
      if (v4)
      {
        v5 = sub_1AE6E903C(v4);
        MEMORY[0x1B2706400](v5, 0x10E0C40868D66FELL);
      }

      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  sub_1AE627688(*(a1 + 16));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = v3;
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  sub_1AE627688(*(a1 + 208));
  sub_1AE627688(*(a1 + 184));
  sub_1AE651274(*(a1 + 160));
  sub_1AE6512D8(a1 + 56);
  sub_1AE627688(*(a1 + 40));
  sub_1AE627688(*(a1 + 16));
  return a1;
}

void *sub_1AE6EA0C0(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

uint64_t sub_1AE6EA1E0(uint64_t a1)
{
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_1AE627688(*(a1 + 152));
  sub_1AE627688(*(a1 + 128));
  sub_1AE651274(*(a1 + 104));

  return sub_1AE6512D8(a1);
}

uint64_t sub_1AE6EA23C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t sub_1AE6EA29C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1[31])
  {
    return 29;
  }

  if (v1[17] == v1[16])
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sub_1AE6EA2C0(uint64_t a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  v3 = *(*(a1 + 64) + 232);
  v4 = *(v3 + 428);
  v5 = *MEMORY[0x1E695E4D0];
  v6 = *MEMORY[0x1E695E4C0];
  if (*(v3 + 429))
  {
    v7 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = *MEMORY[0x1E695E4C0];
  }

  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = Mutable;
  if (v4)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  CFDictionarySetValue(Mutable, kLMLanguageModelSwearWordPolicyEnabledKey, v11);
  CFDictionarySetValue(v10, kLMLanguageModelSupportsNormalizedNameTokenKey, v7);
  if (*(v3 + 455) < 0)
  {
    sub_1AE5DBF1C(__p, *(v3 + 432), *(v3 + 440));
  }

  else
  {
    *__p = *(v3 + 432);
    v16 = *(v3 + 448);
  }

  v12 = SHIBYTE(v16);
  if ((SHIBYTE(v16) & 0x8000000000000000) != 0)
  {
    v12 = __p[1];
    if (!__p[1])
    {
      goto LABEL_17;
    }

    v13 = __p[0];
  }

  else
  {
    if (!HIBYTE(v16))
    {
      goto LABEL_17;
    }

    v13 = __p;
  }

  v14 = sub_1AE61D700(v13, v12);
  CFDictionarySetValue(v10, kLMLanguageModelLegacyGenericNameTokenKey, v14);
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_17:
  *a2 = CFDictionaryCreateCopy(v8, v10);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
    if (!v10)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v10)
  {
LABEL_21:
    CFRelease(v10);
  }
}

void sub_1AE6EA434(uint64_t a1@<X0>, int a2@<W1>, CFDictionaryRef *a3@<X8>)
{
  v5 = *(a1 + 64);
  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  sub_1AE68CF18(&__p, **(v5 + 416), a2);
  v6 = __p;
  v7 = v15;
  v8 = *MEMORY[0x1E695E480];
  while (v6 != v7)
  {
    Copy = CFDictionaryCreateCopy(v8, **v6);
    CFArrayAppendValue(theArray, Copy);
    if (Copy)
    {
      CFRelease(Copy);
    }

    v6 += 2;
  }

  *a3 = CFDictionaryCreate(v8, &kLMLinguisticDataResources, &theArray, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = __p;
  if (__p)
  {
    v11 = v15;
    v12 = __p;
    if (v15 != __p)
    {
      do
      {
        v13 = *(v11 - 1);
        if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v11 -= 2;
      }

      while (v11 != v10);
      v12 = __p;
    }

    v15 = v10;
    operator delete(v12);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void sub_1AE6EA5B0(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1AE6315E0(va);
  sub_1AE672C9C(va1);
  sub_1AE6090F0(a1);
}

uint64_t sub_1AE6EA5F8(uint64_t result)
{
  v1 = *(*(result + 64) + 248);
  if (v1)
  {
    return (*(**(*(v1 + 16) + 16) + 72))();
  }

  return result;
}

void sub_1AE6EA644(uint64_t a1)
{
  v2 = *(a1 + 64);
  std::recursive_mutex::lock((v2 + 480));
  sub_1AE671920(*(a1 + 64), 0);

  std::recursive_mutex::unlock((v2 + 480));
}

void sub_1AE6EA6A4(uint64_t a1)
{
  v2 = *(a1 + 64);
  std::recursive_mutex::lock((v2 + 480));
  v3 = *(a1 + 64);
  if (*(v3[29] + 192) == 1)
  {
    v4 = v3[6];
    if (v4)
    {
      sub_1AE689200(v4);
      v5 = v3[58];
      if (v5)
      {
        std::recursive_mutex::lock(v5);
        sub_1AE689200(v5[2].__m_.__sig);
        std::recursive_mutex::unlock(v5);
      }
    }
  }

  std::recursive_mutex::unlock((v2 + 480));
}

void sub_1AE6EA72C(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock(v1);
  std::recursive_mutex::unlock((v2 + 480));
  _Unwind_Resume(a1);
}

void sub_1AE6EA750(uint64_t a1, void *cf)
{
  if (!cf)
  {
    __assert_rtn("removeVocabulary", "TokenIDLanguageModel.cpp", 325, "vocabulary");
  }

  v3 = *(a1 + 64);
  v4 = cf[3];
  v6 = v3[3];
  v5 = v3[4];
  if (v6 != v5)
  {
    while (*v6 != v4)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = v3[4];
        break;
      }
    }
  }

  if (v5 != v6)
  {
    v7 = v5 - (v6 + 8);
    if (v5 != v6 + 8)
    {
      memmove(v6, v6 + 8, v5 - (v6 + 8));
    }

    v3[4] = &v6[v7];
    v8 = v3[31];
    if (v8)
    {
      (*(**(*(v8 + 16) + 16) + 104))(*(*(v8 + 16) + 16), v4);
    }
  }

  CFRelease(cf);
}

void sub_1AE6EA848(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    __assert_rtn("addVocabulary", "TokenIDLanguageModel.cpp", 318, "vocabulary");
  }

  CFRetain(cf);
  v4 = *(a1 + 64);
  v5 = *(cf + 3);
  v10 = v5;
  v6 = v4[3];
  v7 = v4[4];
  if (v6 != v7)
  {
    while (*v6 != v5)
    {
      if (++v6 == v7)
      {
        goto LABEL_7;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_7:
    sub_1AE671F84((v4 + 3), &v10);
    v8 = v4[31];
    if (v8)
    {
      v9 = *(**(*(v8 + 16) + 16) + 96);

      v9();
    }
  }
}

void sub_1AE6EA940(uint64_t a1, size_t *a2)
{
  v2 = *(a1 + 64);
  v3 = sub_1AE6EA980(a2);

  sub_1AE672654(v2, v3);
}

uint64_t sub_1AE6EA980(size_t *a1)
{
  v2 = strlen(language_modeling::v1::kStaticPhraseLexicon);
  v3 = v2;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v8 = a1[1];
    if (v2 != v8)
    {
      v6 = language_modeling::v1::kNamedEntityWordLexicon;
      if (strlen(language_modeling::v1::kNamedEntityWordLexicon) != v8)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    if (v2 == -1)
    {
      sub_1AE61F754();
    }

    v5 = *a1;
  }

  else
  {
    v5 = a1;
    if (v3 != v4)
    {
      v6 = language_modeling::v1::kNamedEntityWordLexicon;
      v7 = strlen(language_modeling::v1::kNamedEntityWordLexicon);
      goto LABEL_9;
    }
  }

  if (!memcmp(v5, language_modeling::v1::kStaticPhraseLexicon, v3))
  {
    return 0;
  }

  v6 = language_modeling::v1::kNamedEntityWordLexicon;
  v7 = strlen(language_modeling::v1::kNamedEntityWordLexicon);
  if ((v4 & 0x80000000) != 0)
  {
    v8 = a1[1];
    if (v7 != v8)
    {
LABEL_21:
      v10 = language_modeling::v1::kNamedEntityPhraseLexicon;
      if (strlen(language_modeling::v1::kNamedEntityPhraseLexicon) != v8)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

LABEL_12:
    if (v8 == -1)
    {
      sub_1AE61F754();
    }

    v9 = *a1;
    goto LABEL_14;
  }

LABEL_9:
  v8 = v4;
  v9 = a1;
  if (v7 != v4)
  {
    v10 = language_modeling::v1::kNamedEntityPhraseLexicon;
    v11 = strlen(language_modeling::v1::kNamedEntityPhraseLexicon);
    goto LABEL_16;
  }

LABEL_14:
  if (!memcmp(v9, v6, v8))
  {
    return 1;
  }

  v10 = language_modeling::v1::kNamedEntityPhraseLexicon;
  v11 = strlen(language_modeling::v1::kNamedEntityPhraseLexicon);
  if ((v4 & 0x80000000) != 0)
  {
    v8 = a1[1];
    if (v11 != v8)
    {
LABEL_30:
      v13 = language_modeling::v1::kSupplementalWordLexicon;
      if (strlen(language_modeling::v1::kSupplementalWordLexicon) != v8)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_22:
    if (v8 == -1)
    {
      sub_1AE61F754();
    }

    v12 = *a1;
    goto LABEL_24;
  }

LABEL_16:
  v8 = v4;
  v12 = a1;
  if (v11 != v4)
  {
    v13 = language_modeling::v1::kSupplementalWordLexicon;
    v14 = strlen(language_modeling::v1::kSupplementalWordLexicon);
    goto LABEL_26;
  }

LABEL_24:
  if (!memcmp(v12, v10, v8))
  {
    return 2;
  }

  v13 = language_modeling::v1::kSupplementalWordLexicon;
  v14 = strlen(language_modeling::v1::kSupplementalWordLexicon);
  if ((v4 & 0x80000000) != 0)
  {
    v8 = a1[1];
    if (v14 != v8)
    {
LABEL_39:
      v17 = language_modeling::v1::kSupplementalPhraseLexicon;
      if (strlen(language_modeling::v1::kSupplementalPhraseLexicon) != v8)
      {
        goto LABEL_48;
      }

      goto LABEL_40;
    }

LABEL_31:
    if (v8 == -1)
    {
      sub_1AE61F754();
    }

    v16 = *a1;
    goto LABEL_33;
  }

LABEL_26:
  v8 = v4;
  v16 = a1;
  if (v14 != v4)
  {
    v17 = language_modeling::v1::kSupplementalPhraseLexicon;
    v18 = strlen(language_modeling::v1::kSupplementalPhraseLexicon);
    goto LABEL_35;
  }

LABEL_33:
  if (!memcmp(v16, v13, v8))
  {
    return 3;
  }

  v17 = language_modeling::v1::kSupplementalPhraseLexicon;
  v18 = strlen(language_modeling::v1::kSupplementalPhraseLexicon);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_35:
    v8 = v4;
    v19 = a1;
    if (v18 != v4)
    {
      v20 = language_modeling::v1::kContactNamesWordLexicon;
      v21 = strlen(language_modeling::v1::kContactNamesWordLexicon);
LABEL_44:
      v22 = a1;
      if (v21 != v4)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }

    goto LABEL_42;
  }

  v8 = a1[1];
  if (v18 != v8)
  {
LABEL_48:
    v20 = language_modeling::v1::kContactNamesWordLexicon;
    if (strlen(language_modeling::v1::kContactNamesWordLexicon) != v8)
    {
LABEL_56:
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      std::logic_error::logic_error(exception, &v24);
      exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
      __cxa_throw(exception, off_1E7A2D6D8, MEMORY[0x1E69E5298]);
    }

    goto LABEL_51;
  }

LABEL_40:
  if (v8 == -1)
  {
    sub_1AE61F754();
  }

  v19 = *a1;
LABEL_42:
  if (!memcmp(v19, v17, v8))
  {
    return 4;
  }

  v20 = language_modeling::v1::kContactNamesWordLexicon;
  v21 = strlen(language_modeling::v1::kContactNamesWordLexicon);
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  v8 = a1[1];
  if (v21 != v8)
  {
    goto LABEL_56;
  }

LABEL_51:
  if (v8 == -1)
  {
    sub_1AE61F754();
  }

  v22 = *a1;
  v4 = v8;
LABEL_53:
  if (memcmp(v22, v20, v4))
  {
    goto LABEL_56;
  }

  return 5;
}

void sub_1AE6EAD58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_1AE6EAD90(uint64_t a1, uint64_t a2, size_t *a3)
{
  v4 = *(a1 + 64);
  v5 = sub_1AE6EA980(a3);

  sub_1AE672088(v4, a2, v5);
}

void sub_1AE6EADE4(uint64_t a1, const void *a2)
{
  sub_1AE661F24(*(a1 + 64), a2);

  sub_1AE6EAE20(a1);
}

void sub_1AE6EAE20(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(v1 + 184);
  for (i = *(v1 + 192); v2 != i; v2 += 2)
  {
    sub_1AE66A074(__p, **v2);
    if (!sub_1AE6EB070((a1 + 88), __p))
    {
      operator new();
    }

    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1AE6EAFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1AE6EB070(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AE5DA928(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_1AE6EB228(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AE5DA928(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1AE6EB76C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6EB788(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE6EB788(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1AE6EB80C(uint64_t *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v97 = *MEMORY[0x1E69E9840];
  if (*(a2 + 24))
  {
    return 0;
  }

  v6 = *(*a3 + 8);
  if (v6 == **a3)
  {
    return 0;
  }

  v11 = a1[8];
  std::recursive_mutex::lock((v11 + 480));
  v12 = a1[8];
  v13 = *(v12 + 464);
  if (v13 && sub_1AE7098C0(v13, (v6 - 32)))
  {
    v14 = sub_1AE709F30(*(v12 + 464));
    std::recursive_mutex::unlock((v11 + 480));
    if (v14)
    {
      return 1;
    }
  }

  else
  {
    std::recursive_mutex::unlock((v11 + 480));
  }

  v83 = a2;
  v15 = *a3;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v16 = a1[8];
  v17 = *(v16 + 184);
  v18 = *(v16 + 192);
  v19 = 0;
  if (v17 == v18)
  {
    goto LABEL_80;
  }

  v4 = 0;
  while (2)
  {
    sub_1AE66A074(__p, **v17);
    v20 = sub_1AE6EB070(a1 + 11, __p);
    if (((*(*v20[5] + 48))(v20[5]) & 1) == 0)
    {
      if (qword_1EB5E0E50 != -1)
      {
        dispatch_once(&qword_1EB5E0E50, &unk_1F242DD98);
      }

      v24 = qword_1EB5E0E48;
      if (os_log_type_enabled(qword_1EB5E0E48, OS_LOG_TYPE_ERROR))
      {
        v47 = v85;
        v48 = __p[0];
        sub_1AE643F18(&v93, v15);
        v49 = __p;
        if (v47 < 0)
        {
          v49 = v48;
        }

        if (v95 >= 0)
        {
          v50 = &v93;
        }

        else
        {
          v50 = v93;
        }

        *buf = 136315394;
        v90 = v49;
        v91 = 2080;
        v92 = v50;
        _os_log_error_impl(&dword_1AE5C8000, v24, OS_LOG_TYPE_ERROR, "BlocklistStatus check skipped for locale: %s - Unable to convert blocklist tokens ('%s')", buf, 0x16u);
        if (v95 < 0)
        {
          operator delete(v93);
        }
      }

      v25 = 3;
      if (v85 < 0)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    v21 = *(sub_1AE6AAE78(a1 + 16, __p) + 10);
    v22 = sub_1AE6EB070(a1 + 11, __p)[5];
    v93 = &unk_1F242DDC8;
    v94 = v22;
    v96 = &v93;
    sub_1AE6542DC(v15, v21, &v93);
    if (v96 == &v93)
    {
      (*(*v96 + 4))(v96);
      v23 = *(v15 + 56);
      if (!v23)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v96)
      {
        (*(*v96 + 5))();
      }

      v23 = *(v15 + 56);
      if (!v23)
      {
        goto LABEL_48;
      }
    }

    v26 = vcnt_s8(v23);
    v26.i16[0] = vaddlv_u8(v26);
    if (v26.u32[0] > 1uLL)
    {
      v27 = v21;
      if (v23 <= v21)
      {
        v27 = v21 % v23;
      }
    }

    else
    {
      v27 = (v23 - 1) & v21;
    }

    v28 = *(*(v15 + 48) + 8 * v27);
    if (!v28 || (v29 = *v28) == 0)
    {
LABEL_47:
      v23 = 0;
LABEL_48:
      v33 = 0;
      goto LABEL_49;
    }

    if (v26.u32[0] < 2uLL)
    {
      v30 = v23 - 1;
      while (1)
      {
        v32 = v29[1];
        if (v32 == v21)
        {
          if (*(v29 + 4) == v21)
          {
            goto LABEL_70;
          }
        }

        else if ((v32 & v30) != v27)
        {
          goto LABEL_47;
        }

        v29 = *v29;
        if (!v29)
        {
          goto LABEL_47;
        }
      }
    }

    while (1)
    {
      v31 = v29[1];
      if (v31 == v21)
      {
        break;
      }

      if (v31 >= v23)
      {
        v31 %= v23;
      }

      if (v31 != v27)
      {
        goto LABEL_47;
      }

LABEL_37:
      v29 = *v29;
      if (!v29)
      {
        goto LABEL_47;
      }
    }

    if (*(v29 + 4) != v21)
    {
      goto LABEL_37;
    }

LABEL_70:
    v33 = v29[3];
    v23 = (v29[4] - v33) >> 2;
LABEL_49:
    v34 = 4 * v23;
    if (*&v33[v34 - 4] == 2)
    {
      v35 = -1;
    }

    else
    {
      v35 = 0;
    }

    sub_1AE6EC330(&v86, v33, &v33[4 * v35 + v34], (4 * v35 + v34) >> 2);
    v36 = sub_1AE6EB070(a1 + 11, __p);
    v37 = (*(*v36[5] + 16))(v36[5], v83);
    v38 = v87;
    if (v87 >= v88)
    {
      v40 = v86;
      v41 = v87 - v86;
      v42 = (v87 - v86) >> 2;
      v43 = v42 + 1;
      if ((v42 + 1) >> 62)
      {
        sub_1AE5CBB70();
      }

      v44 = v88 - v86;
      if ((v88 - v86) >> 1 > v43)
      {
        v43 = v44 >> 1;
      }

      if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v45 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v43;
      }

      if (v45)
      {
        if (!(v45 >> 62))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v19 = 0;
      v46 = (4 * v42);
      *v46 = v37;
      v39 = (v46 + 1);
      memcpy(0, v40, v41);
      v86 = 0;
      v88 = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v87 = v37;
      v39 = v38 + 4;
      v19 = v86;
    }

    v87 = v39;
    v4 = sub_1AE670588(a1[8], v19, (v39 - v19) >> 2, 2, 0, 0, a4, *v17);
    if (v4)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    if (v85 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }

LABEL_24:
    if (v25 == 3 || !v25)
    {
      v17 += 2;
      if (v17 != v18)
      {
        continue;
      }
    }

    break;
  }

  if (v4 != 1)
  {
    v51 = a1[8];
    v17 = *(v51 + 184);
    v18 = *(v51 + 192);
LABEL_80:
    if (v17 != v18)
    {
      v4 = 0;
      while (1)
      {
        sub_1AE66A074(__p, **v17);
        v52 = sub_1AE6EB070(a1 + 11, __p);
        if (((*(*v52[5] + 48))(v52[5]) & 1) == 0)
        {
          if (qword_1EB5E0E50 != -1)
          {
            dispatch_once(&qword_1EB5E0E50, &unk_1F242DD98);
          }

          v56 = qword_1EB5E0E48;
          if (os_log_type_enabled(qword_1EB5E0E48, OS_LOG_TYPE_ERROR))
          {
            v79 = v85;
            v80 = __p[0];
            sub_1AE643F18(&v93, v15);
            v81 = __p;
            if (v79 < 0)
            {
              v81 = v80;
            }

            if (v95 >= 0)
            {
              v82 = &v93;
            }

            else
            {
              v82 = v93;
            }

            *buf = 136315394;
            v90 = v81;
            v91 = 2080;
            v92 = v82;
            _os_log_error_impl(&dword_1AE5C8000, v56, OS_LOG_TYPE_ERROR, "BlocklistStatus check skipped for locale: %s - Unable to convert blocklist tokens ('%s')", buf, 0x16u);
            if (v95 < 0)
            {
              operator delete(v93);
            }
          }

          v57 = 5;
          if (v85 < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_94;
        }

        v53 = *(sub_1AE6AAE78(a1 + 16, __p) + 10);
        v54 = sub_1AE6EB070(a1 + 11, __p)[5];
        v93 = &unk_1F242DDC8;
        v94 = v54;
        v96 = &v93;
        sub_1AE6542DC(v15, v53, &v93);
        if (v96 == &v93)
        {
          (*(*v96 + 4))(v96);
          v55 = *(v15 + 56);
          if (!v55)
          {
            goto LABEL_118;
          }
        }

        else
        {
          if (v96)
          {
            (*(*v96 + 5))();
          }

          v55 = *(v15 + 56);
          if (!v55)
          {
            goto LABEL_118;
          }
        }

        v58 = vcnt_s8(v55);
        v58.i16[0] = vaddlv_u8(v58);
        if (v58.u32[0] > 1uLL)
        {
          v59 = v53;
          if (v55 <= v53)
          {
            v59 = v53 % v55;
          }
        }

        else
        {
          v59 = (v55 - 1) & v53;
        }

        v60 = *(*(v15 + 48) + 8 * v59);
        if (!v60 || (v61 = *v60) == 0)
        {
LABEL_117:
          v55 = 0;
LABEL_118:
          v65 = 0;
          goto LABEL_119;
        }

        if (v58.u32[0] < 2uLL)
        {
          v62 = v55 - 1;
          while (1)
          {
            v64 = v61[1];
            if (v64 == v53)
            {
              if (*(v61 + 4) == v53)
              {
                goto LABEL_140;
              }
            }

            else if ((v64 & v62) != v59)
            {
              goto LABEL_117;
            }

            v61 = *v61;
            if (!v61)
            {
              goto LABEL_117;
            }
          }
        }

        while (1)
        {
          v63 = v61[1];
          if (v63 == v53)
          {
            break;
          }

          if (v63 >= v55)
          {
            v63 %= v55;
          }

          if (v63 != v59)
          {
            goto LABEL_117;
          }

LABEL_107:
          v61 = *v61;
          if (!v61)
          {
            goto LABEL_117;
          }
        }

        if (*(v61 + 4) != v53)
        {
          goto LABEL_107;
        }

LABEL_140:
        v65 = v61[3];
        v55 = (v61[4] - v65) >> 2;
LABEL_119:
        v66 = 4 * v55;
        if (*&v65[v66 - 4] == 2)
        {
          v67 = -1;
        }

        else
        {
          v67 = 0;
        }

        sub_1AE6EC330(&v86, v65, &v65[4 * v67 + v66], (4 * v67 + v66) >> 2);
        v68 = sub_1AE6EB070(a1 + 11, __p);
        v69 = (*(*v68[5] + 16))(v68[5], v83);
        v70 = v87;
        if (v87 >= v88)
        {
          v72 = v86;
          v73 = v87 - v86;
          v74 = (v87 - v86) >> 2;
          v75 = v74 + 1;
          if ((v74 + 1) >> 62)
          {
            sub_1AE5CBB70();
          }

          v76 = v88 - v86;
          if ((v88 - v86) >> 1 > v75)
          {
            v75 = v76 >> 1;
          }

          if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v77 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v77 = v75;
          }

          if (v77)
          {
            if (!(v77 >> 62))
            {
              operator new();
            }

            sub_1AE5CB09C();
          }

          v19 = 0;
          v78 = (4 * v74);
          *v78 = v69;
          v71 = (v78 + 1);
          memcpy(0, v72, v73);
          v86 = 0;
          v88 = 0;
          if (v72)
          {
            operator delete(v72);
          }
        }

        else
        {
          *v87 = v69;
          v71 = v70 + 4;
          v19 = v86;
        }

        v87 = v71;
        v4 = sub_1AE670588(a1[8], v19, (v71 - v19) >> 2, 3, 0, 4, a4, *v17);
        if (v4)
        {
          v57 = 4;
        }

        else
        {
          v57 = 0;
        }

        if (v85 < 0)
        {
LABEL_93:
          operator delete(__p[0]);
        }

LABEL_94:
        if (v57 == 5 || !v57)
        {
          v17 += 2;
          if (v17 != v18)
          {
            continue;
          }
        }

        goto LABEL_149;
      }
    }

    v4 = 0;
  }

LABEL_149:
  if (v19)
  {
    v87 = v19;
    operator delete(v19);
  }

  return v4;
}

void sub_1AE6EC238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (!a19)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a19);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6EC2B0(uint64_t a1)
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

char *sub_1AE6EC330(char **a1, char *__src, char *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_1AE5CBB70();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 > (v12 - result) >> 2)
  {
    v14 = &__src[v13];
    if (v12 != result)
    {
      result = memmove(result, __src, v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v14 == a3)
    {
      goto LABEL_26;
    }

    v16 = v14;
    v17 = a3 - v14 - 4;
    if (v17 < 0x1C)
    {
      v15 = v12;
    }

    else
    {
      v15 = v12;
      if ((v12 - v14) >= 0x20)
      {
        v18 = (v17 >> 2) + 1;
        v19 = 4 * (v18 & 0x7FFFFFFFFFFFFFF8);
        v16 = &v14[v19];
        v20 = v12 + 16;
        v21 = (v14 + 16);
        v22 = v18 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v23 = *v21;
          *(v20 - 1) = *(v21 - 1);
          *v20 = v23;
          v20 += 2;
          v21 += 2;
          v22 -= 8;
        }

        while (v22);
        v15 = &v12[v19];
        if (v18 == (v18 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_26;
        }
      }
    }

    do
    {
      v27 = *v16;
      v16 += 4;
      *v15 = v27;
      v15 += 4;
    }

    while (v16 != a3);
LABEL_26:
    v26 = v15;
    goto LABEL_27;
  }

  v24 = a3 - __src;
  if (v24)
  {
    v25 = result;
    memmove(result, __src, v24);
    result = v25;
  }

  v26 = &result[v24];
LABEL_27:
  a1[1] = v26;
  return result;
}

uint64_t sub_1AE6EC55C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v1L24blocklistContextTokenIDsERNS0_21LinguisticContextImplEjRKNS0_14TokenConverterENS0_9MatchTypeEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v1L24blocklistContextTokenIDsERNS0_21LinguisticContextImplEjRKNS0_14TokenConverterENS0_9MatchTypeEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v1L24blocklistContextTokenIDsERNS0_21LinguisticContextImplEjRKNS0_14TokenConverterENS0_9MatchTypeEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v1L24blocklistContextTokenIDsERNS0_21LinguisticContextImplEjRKNS0_14TokenConverterENS0_9MatchTypeEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE6EC60C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242DDC8;
  a2[1] = v2;
  return result;
}

os_log_t sub_1AE6EC6A0()
{
  result = os_log_create("com.apple.LanguageModeling", "Blocklist");
  qword_1EB5E0E48 = result;
  return result;
}

uint64_t sub_1AE6EC6D0(uint64_t *a1, uint64_t *a2, int a3, int a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = *(*a2 + 8);
  if (v4 == **a2)
  {
    return 0;
  }

  v9 = a1[8];
  std::recursive_mutex::lock((v9 + 480));
  v10 = a1[8];
  v11 = *(v10 + 464);
  if (!v11 || !sub_1AE7098C0(v11, (v4 - 32)))
  {
    std::recursive_mutex::unlock((v9 + 480));
LABEL_7:
    v14 = a1[8];
    v15 = *(v14 + 184);
    v16 = *(v14 + 192);
    if (v15 != v16)
    {
      v13 = 0;
      v17 = *a2;
      while (1)
      {
        sub_1AE66A074(__p, **v15);
        v18 = sub_1AE6EB070(a1 + 11, __p);
        if ((*(*v18[5] + 48))(v18[5]))
        {
          break;
        }

        if (qword_1EB5E0E50 != -1)
        {
          dispatch_once(&qword_1EB5E0E50, &unk_1F242DD98);
        }

        v22 = qword_1EB5E0E48;
        if (os_log_type_enabled(qword_1EB5E0E48, OS_LOG_TYPE_ERROR))
        {
          v41 = a4;
          v36 = v43;
          v37 = __p[0];
          sub_1AE643F18(v48, v17);
          v38 = __p;
          if (v36 < 0)
          {
            v38 = v37;
          }

          if (v49 >= 0)
          {
            v39 = v48;
          }

          else
          {
            v39 = v48[0];
          }

          *buf = 136315394;
          v45 = v38;
          v46 = 2080;
          v47 = v39;
          _os_log_error_impl(&dword_1AE5C8000, v22, OS_LOG_TYPE_ERROR, "BlocklistStatus check skipped for locale: %s - Unable to convert blocklist tokens ('%s')", buf, 0x16u);
          if (v49 < 0)
          {
            operator delete(v48[0]);
          }

          v23 = 3;
          a4 = v41;
          if (v43 < 0)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v23 = 3;
          if (v43 < 0)
          {
            goto LABEL_61;
          }
        }

LABEL_62:
        if (v23 == 3 || !v23)
        {
          v15 += 2;
          if (v15 != v16)
          {
            continue;
          }
        }

        return v13;
      }

      v19 = *(sub_1AE6AAE78(a1 + 16, __p) + 10);
      v20 = sub_1AE6EB070(a1 + 11, __p)[5];
      v48[0] = &unk_1F242DDC8;
      v48[1] = v20;
      v50 = v48;
      sub_1AE6542DC(v17, v19, v48);
      if (v50 == v48)
      {
        (*(*v50 + 4))(v50);
        v21 = *(v17 + 56);
        if (!*&v21)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v50)
        {
          (*(*v50 + 5))();
        }

        v21 = *(v17 + 56);
        if (!*&v21)
        {
          goto LABEL_41;
        }
      }

      v24 = vcnt_s8(v21);
      v24.i16[0] = vaddlv_u8(v24);
      if (v24.u32[0] > 1uLL)
      {
        v25 = v19;
        if (*&v21 <= v19)
        {
          v25 = v19 % v21.i32[0];
        }
      }

      else
      {
        v25 = (v21.i32[0] - 1) & v19;
      }

      v26 = *(*(v17 + 48) + 8 * v25);
      if (v26)
      {
        v27 = *v26;
        if (v27)
        {
          if (v24.u32[0] < 2uLL)
          {
            v28 = *&v21 - 1;
            while (1)
            {
              v30 = v27[1];
              if (v30 == v19)
              {
                if (*(v27 + 4) == v19)
                {
                  goto LABEL_48;
                }
              }

              else if ((v30 & v28) != v25)
              {
                goto LABEL_41;
              }

              v27 = *v27;
              if (!v27)
              {
                goto LABEL_41;
              }
            }
          }

          do
          {
            v29 = v27[1];
            if (v29 == v19)
            {
              if (*(v27 + 4) == v19)
              {
LABEL_48:
                v32 = v27[3];
                v31 = (v27[4] - v32) >> 2;
                if (a3 <= 1)
                {
LABEL_49:
                  if (a3)
                  {
                    if (a3 == 1)
                    {
                      v34 = *v32 == 1;
                      if (*v32 == 1)
                      {
                        ++v32;
                      }

                      v31 -= v34;
                      v33 = 1;
                      goto LABEL_57;
                    }

LABEL_76:
                    __assert_rtn("convertMatchType", "TokenIDLanguageModel.cpp", 110, "false && Invalid match type");
                  }

                  v33 = 0;
                  v35 = *v32 == 1;
                  if (*v32 == 1)
                  {
                    ++v32;
                  }

                  v31 = v31 - v35 - (v32[v31 - v35 - 1] == 2);
LABEL_57:
                  v13 = sub_1AE670588(a1[8], v32, v31, v33, 0, 0, a4, *v15);
                  if (v13)
                  {
                    v23 = 2;
                  }

                  else
                  {
                    v23 = 0;
                  }

                  if (v43 < 0)
                  {
LABEL_61:
                    operator delete(__p[0]);
                  }

                  goto LABEL_62;
                }

LABEL_42:
                switch(a3)
                {
                  case 2:
                    v31 -= v32[v31 - 1] == 2;
                    v33 = 2;
                    goto LABEL_57;
                  case 3:
                    v33 = 4;
                    goto LABEL_57;
                  case 4:
                    v31 -= v32[v31 - 1] == 2;
                    v33 = 3;
                    goto LABEL_57;
                }

                goto LABEL_76;
              }
            }

            else
            {
              if (v29 >= *&v21)
              {
                v29 %= *&v21;
              }

              if (v29 != v25)
              {
                break;
              }
            }

            v27 = *v27;
          }

          while (v27);
        }
      }

LABEL_41:
      v31 = 0;
      v32 = 0;
      if (a3 <= 1)
      {
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    return 0;
  }

  v12 = sub_1AE709F30(*(v10 + 464));
  std::recursive_mutex::unlock((v9 + 480));
  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  return 1;
}

void sub_1AE6ECBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE6ECC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = strlen(language_modeling::v1::kEnvironmentAppIdentifierKey);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v15 = v5;
  if (v5)
  {
    memmove(&__dst, language_modeling::v1::kEnvironmentAppIdentifierKey, v5);
  }

  *(&__dst + v6) = 0;
  v7 = sub_1AE63148C(a3, &__dst);
  if (v15 < 0)
  {
    operator delete(__dst);
  }

  if ((a3 + 8) == v7)
  {
LABEL_22:
    operator new();
  }

  if (*(v7 + 20) != 1)
  {
    sub_1AE631594();
  }

  v8 = *(a2 + 64);
  v9 = kLMLanguageModelAppContextKey;
  v10 = *(v7 + 79);
  if (v10 < 0)
  {
    v11 = v7[7];
    if (!v11)
    {
      v12 = 0;
      __dst = 0;
LABEL_16:
      if (sub_1AE7471FC(v8[29], v9, v12, 0) && *(v8[29] + 192) == 1 && !v8[6])
      {
        sub_1AE66652C(v8);
      }

      if (__dst)
      {
        CFRelease(__dst);
      }

      goto LABEL_22;
    }

    v10 = v7[8];
  }

  else
  {
    v11 = (v7 + 7);
  }

  v12 = CFStringCreateWithBytes(0, v11, v10, 0x8000100u, 0);
  __dst = v12;
  if (!v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  goto LABEL_16;
}

void sub_1AE6ED500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ED9AC5D0);
  sub_1AE678458(v26);
  sub_1AE6ED83C((v24 + 136));
  sub_1AE622290(v27);
  v29 = *(v24 + 112);
  *(v24 + 112) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(v24 + 104);
  *(v24 + 104) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(v24 + 96);
  *(v24 + 96) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  sub_1AE622290(v25);
  if (*(v24 + 71) < 0)
  {
    operator delete(*(v24 + 48));
  }

  if (*(v24 + 39) < 0)
  {
    operator delete(*(v24 + 16));
  }

  sub_1AE622290(&a10);
  MEMORY[0x1B2706400](v24, v23);
  _Unwind_Resume(a1);
}

char *sub_1AE6ED73C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[63] < 0)
  {
    return sub_1AE5DBF1C(a2, *(result + 5), *(result + 6));
  }

  *a2 = *(result + 40);
  *(a2 + 16) = *(result + 7);
  return result;
}

void sub_1AE6ED764(uint64_t a1)
{
  sub_1AE6782A0(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6ED7A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 5);
      *(v2 + 5) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_1AE6ED83C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1AE5CA370(v2);
    MEMORY[0x1B2706400](v4, 0x10F0C4069D522A4);
    return v3;
  }

  return v1;
}

void sub_1AE6ED890(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_1F242DCC8;
  v5 = atomic_load(word_1ED9AC550);
  if (v5 == 0xFFFF)
  {
    atomic_store(0, word_1ED9AC550);
  }

  *(a1 + 8) = atomic_fetch_add(word_1ED9AC550, 1u);
  v6 = MEMORY[0x1B2705500](*(*a3 + 8));
  sub_1AE66A174(cf, v6);
  v7 = cf[0];
  if (cf[0])
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      sub_1AE5CAD24((a1 + 16), v7);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      sub_1AE7700A8((a1 + 40), (a1 + 16));
      v11 = *a3;
      *a3 = 0;
      a3[1] = 0;
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not convert");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
  }

  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1AE6EDB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE65A004(va);
  v9 = *(v3 + 264);
  if (v9)
  {
    *(v3 + 272) = v9;
    operator delete(v9);
  }

  sub_1AE678458(v6);
  sub_1AE6206F4(*v7);
  sub_1AE66D210(v5);
  sub_1AE6ED7A0(v4);
  sub_1AE6ED83C((v3 + 80));
  sub_1AE622290(v3 + 64);
  if (*(v3 + 63) < 0)
  {
    operator delete(*(v3 + 40));
    if ((*(v3 + 39) & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v3 + 39) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v3 + 16));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6EDCD0(void *a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v2 = a2;
  v3 = a1[6];
  if (a2 >= (a1[7] - v3) >> 3)
  {
    return -1;
  }

  if (a1[4] <= a2)
  {
    v5 = *(v3 + 8 * a2);
    v6 = strlen(v5);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AE5DB4F0();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v10 = v6;
    if (v6)
    {
      memmove(&__dst, v5, v6);
    }

    *(&__dst + v7) = 0;
    v2 = sub_1AE6EDDDC(a1, &__dst);
    if (v10 < 0)
    {
      operator delete(__dst);
    }
  }

  return v2;
}

uint64_t sub_1AE6EDDDC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AE5DA928(&v17, a2, v5);
  v7 = a1[13];
  v8 = a1[10];
  v9 = a1[5];
  v10 = v7 & v6;
  v11 = *(v8 + 8 * (v7 & v6));
  if (v11 == v9)
  {
LABEL_9:
    v11 = v9;
  }

  else
  {
    v12 = a1[6];
    if (*(v2 + 23) < 0)
    {
      v2 = *v2;
    }

    while (strcmp(*(v12 + 8 * v11), v2))
    {
      v10 = (v10 + 1) & v7;
      v11 = *(v8 + 8 * v10);
      if (v11 == v9)
      {
        goto LABEL_9;
      }
    }
  }

  if (v11 != -1)
  {
    v13 = a1[4];
    v14 = __OFSUB__(v11, v13);
    v15 = v11 - v13;
    if (v15 < 0 == v14)
    {
      return *(a1[15] + 8 * v15);
    }
  }

  return v11;
}

uint64_t sub_1AE6EDEDC(uint64_t a1, char *__s)
{
  v3 = *(a1 + 8);
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  result = sub_1AE6EDDDC(v3, &__dst);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__dst);
    return v7;
  }

  return result;
}

size_t sub_1AE6EDFC8@<X0>(size_t result@<X0>, int64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(result + 8);
  if (a2 < 0 || v3[4] <= a2)
  {
    v4 = v3[19];
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = v3 + 19;
    do
    {
      if (v4[4] >= a2)
      {
        v5 = v4;
      }

      v4 = v4[v4[4] < a2];
    }

    while (v4);
    if (v5 == v3 + 19)
    {
      goto LABEL_16;
    }

    if (v5[4] > a2)
    {
      goto LABEL_16;
    }

    a2 = v5[5];
    if (a2 < 0)
    {
      goto LABEL_16;
    }
  }

  v7 = v3 + 6;
  v6 = v3[6];
  if (a2 >= ((v7[1] - v6) >> 3))
  {
LABEL_16:
    a3[23] = 0;
  }

  else
  {
    v8 = a3;
    v9 = *(v6 + 8 * a2);
    result = strlen(v9);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AE5DB4F0();
    }

    v10 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    v11 = v8;
    v8[23] = result;
    if (result)
    {
      result = memmove(v8, v9, result);
      v11 = v8;
    }

    a3 = &v11[v10];
  }

  *a3 = 0;
  return result;
}

BOOL sub_1AE6EE0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 16);
  }

  v28 = v3;
  if (v3)
  {
    v6 = (*(*a1 + 120))(a1);
    v7 = (*(*a1 + 128))(a1, 0);
    if (v6)
    {
      v8 = v7;
      v31 = 0;
      v29 = *(MEMORY[0x1E69E54E8] + 24);
      v30 = *MEMORY[0x1E69E54E8];
      for (i = 1; i - v6 != 1; ++i)
      {
        sub_1AE5D9464(&v37);
        if (!((v8 >= 0) | v31 & 1 | *a3 & 1))
        {
          v36 = 7;
          strcpy(__p, "WARNING");
          v10 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 7);
          sub_1AE5DB608(v10, ": ", 2);
          sub_1AE5DB608(MEMORY[0x1E69E5300], "Negative symbol table entry when not allowed", 44);
          sub_1AE696D18();
          if (v36 < 0)
          {
            operator delete(__p[0]);
          }

          v31 = 1;
        }

        (*(*a1 + 88))(__p, a1, v8);
        if (v36 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        if (v36 >= 0)
        {
          v12 = v36;
        }

        else
        {
          v12 = __p[1];
        }

        v13 = sub_1AE5DB608(&v37, v11, v12);
        if (*(a3 + 31) >= 0)
        {
          v14 = (a3 + 8);
        }

        else
        {
          v14 = *(a3 + 8);
        }

        LOBYTE(__dst) = *v14;
        v15 = sub_1AE5DB608(v13, &__dst, 1);
        v16 = MEMORY[0x1B2706130](v15, v8);
        LOBYTE(__dst) = 10;
        sub_1AE5DB608(v16, &__dst, 1);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }

        v32 = v8;
        if ((v47 & 0x10) != 0)
        {
          v18 = v46;
          v19 = &v42;
          if (v46 < v43)
          {
            v46 = v43;
            v18 = v43;
            v19 = &v42;
          }
        }

        else
        {
          if ((v47 & 8) == 0)
          {
            v17 = 0;
            v36 = 0;
            goto LABEL_34;
          }

          v18 = v41;
          v19 = v40;
        }

        v20 = *v19;
        v17 = v18 - *v19;
        if (v17 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1AE5DB4F0();
        }

        if (v17 >= 0x17)
        {
          operator new();
        }

        v36 = v18 - *v19;
        if (v17)
        {
          memmove(__p, v20, v17);
        }

LABEL_34:
        *(__p + v17) = 0;
        if ((v47 & 0x10) != 0)
        {
          v22 = v46;
          v23 = &v42;
          if (v46 < v43)
          {
            v46 = v43;
            v22 = v43;
            v23 = &v42;
          }
        }

        else
        {
          if ((v47 & 8) == 0)
          {
            v21 = 0;
            v34 = 0;
            goto LABEL_46;
          }

          v22 = v41;
          v23 = v40;
        }

        v24 = *v23;
        v21 = v22 - *v23;
        if (v21 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1AE5DB4F0();
        }

        if (v21 >= 0x17)
        {
          operator new();
        }

        v34 = v22 - *v23;
        if (v21)
        {
          memmove(&__dst, v24, v21);
        }

LABEL_46:
        *(&__dst + v21) = 0;
        v25 = v34;
        std::ostream::write();
        if (v25 < 0)
        {
          operator delete(__dst);
          if (v36 < 0)
          {
LABEL_53:
            operator delete(__p[0]);
          }
        }

        else if (v36 < 0)
        {
          goto LABEL_53;
        }

        v37 = v30;
        *(&v37 + *(v30 - 3)) = v29;
        v38 = MEMORY[0x1E69E5548] + 16;
        if (v45 < 0)
        {
          operator delete(v44);
        }

        v38 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v39);
        std::ostream::~ostream();
        MEMORY[0x1B2706340](&v48);
        v8 = v32;
        if (i < v6)
        {
          v8 = (*(*a1 + 128))(a1, i);
        }
      }
    }
  }

  else
  {
    HIBYTE(v39.__locale_) = 5;
    strcpy(&v37, "ERROR");
    v26 = sub_1AE5DB608(MEMORY[0x1E69E5300], &v37, 5);
    sub_1AE5DB608(v26, ": ", 2);
    sub_1AE5DB608(MEMORY[0x1E69E5300], "Missing required field separator", 32);
    sub_1AE696D18();
    if (SHIBYTE(v39.__locale_) < 0)
    {
      operator delete(v37);
    }
  }

  return v28 != 0;
}

void sub_1AE6EE734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_1AE696D18();
  if (a33 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE6EE798(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (v19 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1AE6EE7B0);
}

void sub_1AE6EE7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_1AE693EF8(&a28);
  _Unwind_Resume(a1);
}

BOOL sub_1AE6EE7D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  LODWORD(__p) = 2125658996;
  std::ostream::write();
  LODWORD(v4) = *(v3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(v3 + 8);
  }

  LODWORD(__p) = v4;
  std::ostream::write();
  std::ostream::write();
  __p = *(v3 + 24);
  std::ostream::write();
  __p = ((*(v3 + 56) - *(v3 + 48)) >> 3);
  std::ostream::write();
  v5 = *(v3 + 48);
  if (*(v3 + 56) != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v3 + 32);
      v8 = v6;
      if (v6 >= v7)
      {
        v8 = *(*(v3 + 120) - 8 * v7 + 8 * v6);
      }

      v9 = *(v5 + 8 * v6);
      v10 = strlen(v9);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AE5DB4F0();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      v18 = v10;
      if (v10)
      {
        memmove(&__p, v9, v10);
      }

      *(&__p + v11) = 0;
      v12 = v18;
      if (v18 < 0)
      {
        v12 = v17;
      }

      v19 = v12;
      std::ostream::write();
      std::ostream::write();
      if (v18 < 0)
      {
        operator delete(__p);
      }

      __p = v8;
      std::ostream::write();
      ++v6;
      v5 = *(v3 + 48);
    }

    while (v6 < (*(v3 + 56) - v5) >> 3);
  }

  std::ostream::flush();
  v13 = *(a2 + *(*a2 - 24) + 32) & 5;
  if (v13)
  {
    v18 = 5;
    strcpy(&__p, "ERROR");
    v14 = sub_1AE5DB608(MEMORY[0x1E69E5300], &__p, 5);
    sub_1AE5DB608(v14, ": ", 2);
    sub_1AE5DB608(MEMORY[0x1E69E5300], "SymbolTable::Write: write failed", 32);
    sub_1AE696D18();
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  return v13 == 0;
}

void sub_1AE6EEA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1AE696D18();
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1AE6EEAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1AE6EEB20(v3);
  if (*(v3 + 223) < 0)
  {
    v6 = *(v3 + 200);
    v7 = *(v3 + 208);

    return sub_1AE5DBF1C(a2, v6, v7);
  }

  else
  {
    v5 = *(v3 + 200);
    *(a2 + 16) = *(v3 + 216);
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AE6EEB20(uint64_t result)
{
  if ((*(result + 172) & 1) == 0)
  {
    v1 = 0;
    v3 = 0uLL;
    v2 = 0;
    operator new();
  }

  return result;
}

void sub_1AE6EF730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (*(v26 - 121) < 0)
  {
    operator delete(*(v26 - 144));
    if ((*(v26 - 89) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v26 - 89) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*(v26 - 112));
  _Unwind_Resume(a1);
}

void *sub_1AE6EF81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1AE6EEB20(v3);
  if (*(v3 + 199) < 0)
  {
    v6 = *(v3 + 176);
    v7 = *(v3 + 184);

    return sub_1AE5DBF1C(a2, v6, v7);
  }

  else
  {
    v5 = *(v3 + 176);
    *(a2 + 16) = *(v3 + 192);
    *a2 = v5;
  }

  return result;
}

void sub_1AE6EF88C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 168);
  if (v5 >= 2)
  {
    *(v4 + 168) = v5 - 1;
    operator new();
  }

  v6 = (*(*a2 + 120))(a2);
  v7 = (*(*a2 + 128))(a2, 0);
  if (v6)
  {
    v8 = v7;
    for (i = 1; i - v6 != 1; ++i)
    {
      v10 = *(a1 + 8);
      (*(*a2 + 88))(__p, a2, v8);
      sub_1AE6EFE88(v10, __p, v10[3]);
      if (v12 < 0)
      {
        operator delete(__p[0]);
        if (i < v6)
        {
LABEL_10:
          v8 = (*(*a2 + 128))(a2, i);
        }
      }

      else if (i < v6)
      {
        goto LABEL_10;
      }
    }
  }
}

void sub_1AE6EFA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1AE6EFA64(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 24);
  v7 = *(a2 + 6);
  v6 = *(a2 + 7);
  *(__dst + 6) = 0;
  *(__dst + 24) = v5;
  *(__dst + 5) = -1;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(__dst + 10) = 0;
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  v9 = *(a2 + 10);
  v8 = *(a2 + 11);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(__dst + 13) = *(a2 + 13);
  *(__dst + 28) = *(a2 + 28);
  *(__dst + 15) = 0;
  *(__dst + 16) = 0;
  *(__dst + 17) = 0;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(__dst + 19) = 0;
  *(__dst + 20) = 0;
  *(__dst + 18) = __dst + 152;
  v12 = *(a2 + 18);
  if (v12 != (a2 + 152))
  {
    do
    {
      v13 = *(__dst + 19);
      v14 = __dst + 152;
      if (*(__dst + 18) == __dst + 152)
      {
        goto LABEL_22;
      }

      v15 = *(__dst + 19);
      v16 = __dst + 152;
      if (v13)
      {
        do
        {
          v14 = v15;
          v15 = v15[1];
        }

        while (v15);
      }

      else
      {
        do
        {
          v14 = *(v16 + 2);
          v17 = *v14 == v16;
          v16 = v14;
        }

        while (v17);
      }

      v18 = v12[4];
      if (v14[4] < v18)
      {
LABEL_22:
        if (v13)
        {
          v19 = v14 + 1;
        }

        else
        {
          v19 = __dst + 152;
        }
      }

      else
      {
        v19 = __dst + 152;
        if (v13)
        {
          v19 = __dst + 152;
          while (1)
          {
            while (1)
            {
              v21 = v13;
              v22 = v13[4];
              if (v18 >= v22)
              {
                break;
              }

              v13 = *v21;
              v19 = v21;
              if (!*v21)
              {
                goto LABEL_34;
              }
            }

            if (v22 >= v18)
            {
              break;
            }

            v19 = v21 + 1;
            v13 = v21[1];
            if (!v13)
            {
              goto LABEL_34;
            }
          }
        }
      }

      if (!*v19)
      {
LABEL_34:
        operator new();
      }

      v20 = v12[1];
      if (v20)
      {
        do
        {
          v23 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v23 = v12[2];
          v17 = *v23 == v12;
          v12 = v23;
        }

        while (!v17);
      }

      v12 = v23;
    }

    while (v23 != (a2 + 152));
  }

  *(__dst + 42) = 1;
  __dst[172] = 0;
  *(__dst + 11) = 0u;
  *(__dst + 12) = 0u;
  *(__dst + 13) = 0u;
  return __dst;
}

void sub_1AE6EFDF8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 128) = v5;
    operator delete(v5);
  }

  sub_1AE6F0464(v2);
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6EFE88(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == -1)
  {
    return -1;
  }

  v5 = a1[10];
  v6 = a1[11];
  v7 = v6 - v5;
  v8 = v6 - v5;
  if ((v8 * 0.75) <= ((a1[7] - a1[6]) >> 3))
  {
    v9 = v7 >> 2;
    v10 = (v7 >> 2) - v8;
    if (v7 >> 2 <= v8)
    {
      if (v7 >> 2 >= v8)
      {
        goto LABEL_16;
      }

      v6 = &v5[v9];
    }

    else
    {
      v11 = a1[12];
      if (v10 > (v11 - v6) >> 3)
      {
        if (!(v9 >> 61))
        {
          v12 = v11 - v5;
          if (v12 >> 2 > v9)
          {
            v9 = v12 >> 2;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v9 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (!(v9 >> 61))
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        sub_1AE5CBB70();
      }

      bzero(v6, 8 * v10);
      v6 += v10;
    }

    a1[11] = v6;
LABEL_16:
    a1[13] = v6 - v5 - 1;
    if (v5 == v6)
    {
      goto LABEL_23;
    }

    v13 = a1[5];
    v14 = v6 - v5 - 8;
    if (v14 >= 0x18)
    {
      v15 = (v14 >> 3) + 1;
      v16 = vdupq_n_s64(v13);
      v17 = (v5 + 2);
      v18 = v15 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v17[-1] = v16;
        *v17 = v16;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      if (v15 == (v15 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_23:
        v19 = a1[6];
        if (a1[7] != v19)
        {
          v20 = 0;
          do
          {
            v21 = *(v19 + 8 * v20);
            v22 = strlen(v21);
            if (v22 >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_1AE5DB4F0();
            }

            v23 = v22;
            if (v22 >= 0x17)
            {
              operator new();
            }

            v45 = v22;
            if (v22)
            {
              memmove(__dst, v21, v22);
            }

            *(__dst + v23) = 0;
            if ((v45 & 0x80u) == 0)
            {
              v24 = __dst;
            }

            else
            {
              v24 = __dst[0];
            }

            if ((v45 & 0x80u) == 0)
            {
              v25 = v45;
            }

            else
            {
              v25 = __dst[1];
            }

            v26 = sub_1AE5DA928(&v46, v24, v25);
            v27 = a1[13];
            if (v45 < 0)
            {
              v28 = v26;
              operator delete(__dst[0]);
              v26 = v28;
            }

            v29 = v27 & v26;
            v30 = a1[10];
            v31 = a1[5];
            if (*(v30 + 8 * (v27 & v26)) != v31)
            {
              do
              {
                v29 = a1[13] & (v29 + 1);
              }

              while (*(v30 + 8 * v29) != v31);
            }

            *(v30 + 8 * v29) = v20++;
            v19 = a1[6];
          }

          while (v20 < (a1[7] - v19) >> 3);
        }

        goto LABEL_43;
      }

      v5 += v15 & 0x3FFFFFFFFFFFFFFCLL;
    }

    do
    {
      *v5++ = v13;
    }

    while (v5 != v6);
    goto LABEL_23;
  }

LABEL_43:
  v32 = *(a2 + 23);
  if (v32 >= 0)
  {
    v33 = a2;
  }

  else
  {
    v33 = *a2;
  }

  if (v32 >= 0)
  {
    v34 = *(a2 + 23);
  }

  else
  {
    v34 = *(a2 + 8);
  }

  v35 = sub_1AE5DA928(__dst, v33, v34);
  v36 = a1[13];
  v37 = a1[10];
  v38 = v35 & v36;
  v39 = *(v37 + 8 * (v35 & v36));
  v41 = a1[5];
  v40 = a1[6];
  if (v39 == v41)
  {
LABEL_55:
    *(v37 + 8 * v38) = (a1[7] - v40) >> 3;
    operator new[]();
  }

  if (*(a2 + 23) >= 0)
  {
    v42 = a2;
  }

  else
  {
    v42 = *a2;
  }

  while (strcmp(*(v40 + 8 * v39), v42))
  {
    v38 = (v38 + 1) & v36;
    v39 = *(v37 + 8 * v38);
    if (v39 == v41)
    {
      goto LABEL_55;
    }
  }

  return sub_1AE6EDCD0(a1, v39);
}

void *sub_1AE6F0464(void *a1)
{
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x1B27063D0](v2[v5], 0x1000C8077774924);
        v2 = a1[1];
        v3 = a1[2];
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1AE6F0504(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 168);
  if (v3 >= 2)
  {
    *(v2 + 168) = v3 - 1;
    operator new();
  }

  v4 = *(v2 + 24);

  return sub_1AE6EFE88(v2, a2, v4);
}

uint64_t sub_1AE6F05A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 168);
  if (v4 >= 2)
  {
    *(v3 + 168) = v4 - 1;
    operator new();
  }

  return sub_1AE6EFE88(v3, a2, a3);
}

void sub_1AE6F06BC(void *a1)
{
  *a1 = &unk_1F242DE48;
  v1 = a1[1];
  v2 = *(v1 + 168) - 1;
  *(v1 + 168) = v2;
  if (!v2)
  {
    v3 = sub_1AE6F074C(v1);
    MEMORY[0x1B2706400](v3, 0x10B2C404FCE5648);
  }

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6F074C(uint64_t a1)
{
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
    if ((*(a1 + 199) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 199) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 176));
LABEL_3:
  sub_1AE673B40(*(a1 + 152));
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v4 != v3)
  {
    v5 = 0;
    do
    {
      if (v3[v5])
      {
        MEMORY[0x1B27063D0](v3[v5], 0x1000C8077774924);
        v3 = *(a1 + 48);
        v4 = *(a1 + 56);
      }

      ++v5;
    }

    while (v5 < (v4 - v3) >> 3);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
    v3 = *(a1 + 48);
  }

  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1AE6F0840(void *result)
{
  *result = &unk_1F242DE48;
  v1 = result[1];
  v2 = *(v1 + 168) - 1;
  *(v1 + 168) = v2;
  if (!v2)
  {
    v3 = result;
    v4 = sub_1AE6F074C(v1);
    MEMORY[0x1B2706400](v4, 0x10B2C404FCE5648);
    return v3;
  }

  return result;
}

BOOL sub_1AE6F08B0(__CFBundle *a1)
{
  InfoDictionary = CFBundleGetInfoDictionary(a1);
  if (!InfoDictionary)
  {
    __assert_rtn("_getInfoDictionary", "BlocklistBundle.cpp", 218, "d && An Info.plist file was unable to be read from the bundle");
  }

  Value = CFDictionaryGetValue(InfoDictionary, @"Contents");
  if (!Value)
  {
    __assert_rtn("_getContents", "BlocklistBundle.cpp", 229, "(contents != 0) && There should files contained within the blocklist bundle");
  }

  v3 = Value;
  if (CFArrayGetCount(Value) != 1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
  valuePtr = 0;
  v5 = CFDictionaryGetValue(ValueAtIndex, @"Type");
  CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
  return valuePtr == 10;
}

uint64_t sub_1AE6F0978(__CFBundle *a1)
{
  InfoDictionary = CFBundleGetInfoDictionary(a1);
  if (!InfoDictionary)
  {
    __assert_rtn("_getInfoDictionary", "BlocklistBundle.cpp", 218, "d && An Info.plist file was unable to be read from the bundle");
  }

  Value = CFDictionaryGetValue(InfoDictionary, @"Contents");
  if (!Value)
  {
    __assert_rtn("_getContents", "BlocklistBundle.cpp", 229, "(contents != 0) && There should files contained within the blocklist bundle");
  }

  v3 = Value;
  Count = CFArrayGetCount(Value);
  if (Count >= 2)
  {
    v6 = Count;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
      valuePtr = 0;
      v11 = CFDictionaryGetValue(ValueAtIndex, @"Type");
      CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
      v9 |= valuePtr == 41;
      v8 |= valuePtr == 42;
      ++v7;
    }

    while (v6 != v7);
    v5 = v9 & v8;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1AE6F0A88(__CFBundle *a1)
{
  InfoDictionary = CFBundleGetInfoDictionary(a1);
  if (!InfoDictionary)
  {
    __assert_rtn("_getInfoDictionary", "BlocklistBundle.cpp", 218, "d && An Info.plist file was unable to be read from the bundle");
  }

  Value = CFDictionaryGetValue(InfoDictionary, @"Contents");
  if (!Value)
  {
    __assert_rtn("_getContents", "BlocklistBundle.cpp", 229, "(contents != 0) && There should files contained within the blocklist bundle");
  }

  v3 = Value;
  Count = CFArrayGetCount(Value);
  if (Count >= 2)
  {
    v6 = Count;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
      valuePtr = 0;
      v11 = CFDictionaryGetValue(ValueAtIndex, @"Type");
      CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
      v9 |= valuePtr == 41;
      v8 |= valuePtr == 53;
      ++v7;
    }

    while (v6 != v7);
    v5 = v9 & v8;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

__CFDictionary *sub_1AE6F0B98(CFURLRef *a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  LODWORD(valuePtr) = 0;
  Value = CFDictionaryGetValue(a2, @"Type");
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v12 = valuePtr;
  v7 = CFDictionaryGetValue(a2, @"Name");
  v8 = CFStringCreateWithFormat(v4, 0, @"%@.%@", v7, @"dat");
  valuePtr = v8;
  v9 = CFURLCreateCopyAppendingPathComponent(v4, *a1, v8, 0);
  if (v8)
  {
    CFRelease(v8);
  }

  v10 = CFNumberCreate(v4, kCFNumberIntType, &v12);
  valuePtr = v10;
  CFDictionarySetValue(Mutable, @"Name", v7);
  CFDictionarySetValue(Mutable, @"URL", v9);
  CFDictionarySetValue(Mutable, @"Type", v10);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

void sub_1AE6F0D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AE6883BC(va);
  _Unwind_Resume(a1);
}

const void **sub_1AE6F0D40(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

CFIndex sub_1AE6F0D78(void *a1, CFURLRef *a2)
{
  if ((sub_1AE6F0978(a2[1]) & 1) == 0 && (sub_1AE6F0A88(a2[1]) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&valuePtr, "Malformed lemmatized/V3 blocklist bundle configuration: cannot load the lemmatized blocklist resource");
    sub_1AE660DB0(exception, &valuePtr);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  InfoDictionary = CFBundleGetInfoDictionary(a2[1]);
  if (!InfoDictionary)
  {
    __assert_rtn("_getInfoDictionary", "BlocklistBundle.cpp", 218, "d && An Info.plist file was unable to be read from the bundle");
  }

  Value = CFDictionaryGetValue(InfoDictionary, @"Contents");
  if (!Value)
  {
    __assert_rtn("_getContents", "BlocklistBundle.cpp", 229, "(contents != 0) && There should files contained within the blocklist bundle");
  }

  v6 = Value;
  for (i = 0; ; ++i)
  {
    result = CFArrayGetCount(v6);
    if (i >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
    LODWORD(valuePtr) = 0;
    v10 = CFDictionaryGetValue(ValueAtIndex, @"Type");
    CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
    if (valuePtr == 41)
    {
      *&valuePtr = sub_1AE6F0B98(a2, ValueAtIndex);
      operator new();
    }
  }

  *a1 = 0;
  return result;
}

void sub_1AE6F0F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_1AE6F0F6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x1B2706400](v2, 0x1060C40C2E02434);
  sub_1AE65B3D4(va);
  _Unwind_Resume(a1);
}

__n128 sub_1AE6F0FA0(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1AE6F1000(uint64_t a1, const void **a2, CFErrorRef err)
{
  v21[2] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2432938;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = CFErrorCopyDescription(err);
  v20 = v6;
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v8 + 2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v8 + 2 >= 0x17)
  {
    operator new();
  }

  memset(&v19, 0, sizeof(v19));
  *(&v19.__r_.__value_.__s + 23) = v8 + 2;
  if (v8)
  {
    if ((v7 & 0x80u) == 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(&v19, v9, v8);
  }

  strcpy(&v19 + v8, ": ");
  sub_1AE5CC874(v6, __p);
  if ((v18 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v11 = v18;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v19, v10, v11);
  v13 = v12->__r_.__value_.__r.__words[0];
  v21[0] = v12->__r_.__value_.__l.__size_;
  *(v21 + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*v5);
  }

  v15 = v21[0];
  *(a1 + 8) = v13;
  *(a1 + 16) = v15;
  *(a1 + 23) = *(v21 + 7);
  *(a1 + 31) = v14;
  if (v18 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_22:
      if (!v6)
      {
        return a1;
      }

      goto LABEL_26;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if (v6)
  {
LABEL_26:
    CFRelease(v6);
  }

  return a1;
}

void sub_1AE6F120C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1AE6F1280(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

BOOL sub_1AE6F12B8(CFURLRef fileURL, const void *a2, int a3)
{
  v9 = 0;
  result = sub_1AE61DA04(a2, fileURL, kCFPropertyListXMLFormat_v1_0, a3 == 1, &v9);
  if (!result)
  {
    v4 = v9;
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_1AE5CC990(&v7, "writeInfoDictionary failed: unspecified error");
      sub_1AE660DB0(exception, &v7);
      __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
    }

    v8 = v9;
    v6 = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&v7, "writeInfoDictionary failed:");
    sub_1AE6F1000(v6, &v7, v4);
    __cxa_throw(v6, &unk_1F2432910, sub_1AE64FC40);
  }

  return result;
}

void sub_1AE6F13C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_1AE6F1280(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_1AE6F143C(uint64_t a1, int a2, const __CFString *a3)
{
  valuePtr = a2;
  v13 = 0;
  std::mutex::lock((a1 + 64));
  if (*(a1 + 56))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    for (i = 0; i < CFArrayGetCount(*(a1 + 56)); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
      Value = CFDictionaryGetValue(ValueAtIndex, @"Name");
      if (Value)
      {
        if (CFStringCompare(Value, a3, 0))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }
    }

    v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v11 = CFNumberCreate(0, kCFNumberCFIndexType, &v13);
    CFDictionarySetValue(v9, @"Name", a3);
    CFDictionarySetValue(v9, @"Type", v10);
    CFDictionarySetValue(v9, @"Priority", v11);
    CFArrayAppendValue(Mutable, v9);
    CFDictionarySetValue(*(a1 + 48), @"Contents", Mutable);
    v12 = *(a1 + 56);
    if (v12)
    {
      CFRelease(v12);
    }

    *(a1 + 56) = Mutable;
    sub_1AE6F12B8(*(a1 + 8), *(a1 + 48), *a1);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  std::mutex::unlock((a1 + 64));
}

void sub_1AE6F161C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_1AE68C7C0(va);
  sub_1AE66A268(va1);
  sub_1AE650924(va2);
  std::mutex::unlock(v2 + 1);
  _Unwind_Resume(a1);
}

BOOL sub_1AE6F167C(uint64_t a1, const __CFString *a2)
{
  std::mutex::lock((a1 + 64));
  if (*(a1 + 56))
  {
    v4 = 0;
    while (1)
    {
      Count = CFArrayGetCount(*(a1 + 56));
      v6 = v4 < Count;
      if (v4 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v4);
      Value = CFDictionaryGetValue(ValueAtIndex, @"Name");
      ++v4;
      if (CFStringCompare(Value, a2, 0) == kCFCompareEqualTo)
      {
        v6 = 1;
        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  std::mutex::unlock((a1 + 64));
  return v6;
}

uint64_t sub_1AE6F173C(const void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(a1);
  theDict = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v10, "Could not construct");
    __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (CFDictionaryContainsKey(theDict, @"TrainedWithUNK"))
  {
    Value = CFDictionaryGetValue(theDict, @"TrainedWithUNK");
    if (Value)
    {
      v4 = sub_1AE6311E0(Value);
      if (v4 > 0xFFu)
      {
        v6 = v4;
        v7 = theDict;
        goto LABEL_11;
      }
    }

    if (qword_1ED9ACA10 != -1)
    {
      dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
    }

    v5 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "modelWasTrainedWithUNK";
      v14 = 2112;
      v15 = @"TrainedWithUNK";
      _os_log_error_impl(&dword_1AE5C8000, v5, OS_LOG_TYPE_ERROR, "%s: Malformed options dictionary: invalid value for key='%@'", buf, 0x16u);
    }
  }

  v6 = 0;
  v7 = theDict;
LABEL_11:
  CFRelease(v7);
  return v6 & 1;
}

void sub_1AE6F1960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE62A408(va);
  _Unwind_Resume(a1);
}

void sub_1AE6F19A8(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  JUMPOUT(0x1AE6F19C8);
}

uint64_t sub_1AE6F19D0(uint64_t a1, const char *a2)
{
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  result = sqlite3_prepare_v2(*(a1 + 16), a2, -1, (a1 + 8), 0);
  if (result)
  {
    if (result == 26 || result == 11)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_1AE6522FC(exception, 1);
      goto LABEL_10;
    }

LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE6522FC(exception, 5);
LABEL_10:
    __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
  }

  return result;
}

unint64_t sub_1AE6F1A98(unint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = (v2 + 1);
      v5 = v2[1];
      do
      {
        v6 = v5[4];
        v7 = v6 >= a1;
        v8 = v6 < a1;
        if (v7)
        {
          v4 = v5;
        }

        v5 = v5[v8];
      }

      while (v5);
      if (v4 != (v2 + 1) && v4[4] <= a1)
      {
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
          v11 = v4;
          do
          {
            v10 = v11[2];
            v12 = *v10 == v11;
            v11 = v10;
          }

          while (!v12);
        }

        if (*v2 == v4)
        {
          *v2 = v10;
        }

        v2[2] = (v2[2] - 1);
        sub_1AE615AE0(v3, v4);
        operator delete(v4);
      }
    }
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    sqlite3_finalize(v13);
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t sub_1AE6F1B74(uint64_t a1)
{
  *(a1 + 24) = 1;
  v2 = sqlite3_reset(*(a1 + 8));
  if (v2)
  {
    v3 = v2;
    if (qword_1ED9AC8F8 != -1)
    {
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    }

    v4 = qword_1ED9AC900;
    sqlite3_errmsg(*(a1 + 16));
    sub_1AE731C2C(v4, v5, "Could not reset statement, error code: %d error message: %s\n", v6, v7, v8, v9, v10, v3);
  }

  result = sqlite3_clear_bindings(*(a1 + 8));
  if (result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE6522FC(exception, 3);
    __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
  }

  return result;
}

uint64_t sub_1AE6F1C5C(sqlite3_stmt *a1)
{
  result = sqlite3_step(a1);
  if (result == 26 || result == 11)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE6522FC(exception, 1);
    __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
  }

  return result;
}

uint64_t sub_1AE6F1CD4(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = v4 + 1;
  result = sqlite3_bind_int(*(a1 + 8), v4, a2);
  if (result)
  {
    v6 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = a1;
    v9 = exception;
    v10 = sqlite3_errmsg(*(v8 + 16));
    sub_1AE693A80("Could not bind int, error code: %d error message: %s\n", &v11, v6, v10);
    sub_1AE6F1DC0(v9, &v11);
    __cxa_throw(v9, &unk_1F242DEE0, sub_1AE6521F8);
  }

  return result;
}

void sub_1AE6F1D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void *sub_1AE6F1DC0(void *a1, __int128 *a2)
{
  *a1 = &unk_1F242DF08;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

uint64_t sub_1AE6F1E3C(uint64_t a1, double a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = v3 + 1;
  result = sqlite3_bind_double(*(a1 + 8), v3, a2);
  if (result)
  {
    v5 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = a1;
    v8 = exception;
    v9 = sqlite3_errmsg(*(v7 + 16));
    sub_1AE693A80("Could not bind double, error code %d error message: %s", &v10, v5, v9);
    sub_1AE6F1DC0(v8, &v10);
    __cxa_throw(v8, &unk_1F242DEE0, sub_1AE6521F8);
  }

  return result;
}

void sub_1AE6F1EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void sub_1AE6F1F24(uint64_t a1, CFStringRef theString)
{
  ++*(a1 + 24);
  Length = CFStringGetLength(theString);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

void sub_1AE6F2060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      MEMORY[0x1B27063D0](v18, v17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

uint64_t sub_1AE6F20B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = v3 + 1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  result = sqlite3_bind_text(v4, v3, v6, v7, 0xFFFFFFFFFFFFFFFFLL);
  if (result)
  {
    v9 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = sqlite3_errmsg(*(a1 + 16));
    sub_1AE693A80("Could not bind text, error code %d error message: %s\n", &v12, v9, v11);
    sub_1AE6F1DC0(exception, &v12);
    __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
  }

  return result;
}

void sub_1AE6F2180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t sub_1AE6F21E4(void *a1, uint64_t a2)
{
  if (*(a1[19] + 144) == 1)
  {
LABEL_2:
    v3 = *(*a1 + 32);

    return v3();
  }

  v5 = *(a2 + 24);
  if ((v5 - 1) < 2)
  {
    return *(a2 + 24);
  }

  if (v5 != 3)
  {
    if (v5)
    {
      __assert_rtn("convert", "BlocklistTokenConverter.cpp", 104, "false");
    }

    goto LABEL_2;
  }

  return sub_1AE7004D8(a2);
}

uint64_t sub_1AE6F22AC(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F242E018;
  v6 = v5;
  v3[0] = &unk_1F242E098;
  v3[1] = a1;
  v4 = v3;
  v7[0] = &unk_1F2431D10;
  v7[1] = v3;
  v8 = v7;
  sub_1AE6F24C0(a2, v5, v7);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))();
  }

  return result;
}

void sub_1AE6F249C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1AE6F2684(v2 - 56);
  sub_1AE6F2704(va);
  sub_1AE6F2784(va1);
  _Unwind_Resume(a1);
}

void sub_1AE6F24C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  if (v3 != (a1[4] - a1[3]) >> 2)
  {
    __assert_rtn("updateTokenIDs", "TokenSequence.hpp", 68, "m_tokens.size() == m_tokenIDs.size()");
  }

  v8 = a1[6];
  v9 = a1[7];
  v7 = (a1 + 6);
  v10 = (v9 - v8) >> 3;
  if (v3 <= v10)
  {
    if (v3 < v10)
    {
      v11 = v8 + 8 * v3;
      while (v9 != v11)
      {
        v13 = *(v9 - 8);
        v9 -= 8;
        v12 = v13;
        if (v13)
        {
          CFRelease(v12);
        }
      }

      a1[7] = v11;
    }
  }

  else
  {
    sub_1AE654A4C(v7, v3 - v10);
  }

  if (a1[1] != *a1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = a1[3];
    while (1)
    {
      LODWORD(v24[0]) = *(a1[3] + 4 * v16);
      v18 = *(a2 + 24);
      if (!v18)
      {
        break;
      }

      if ((*(*v18 + 48))(v18, v24))
      {
        v19 = *a1;
        v20 = a1[6];
        v21 = *(a1[3] + 4 * v16);
        v24[0] = v17;
        v24[1] = v16;
        v23 = v21;
        v22 = *(a3 + 24);
        if (!v22)
        {
          break;
        }

        *(a1[3] + 4 * v16) = (*(*v22 + 48))(v22, v19 + v15, v20 + v14, &v23, v24);
      }

      ++v16;
      v15 += 24;
      v14 += 8;
      if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= v16)
      {
        return;
      }
    }

    sub_1AE60819C();
  }
}

uint64_t sub_1AE6F2684(uint64_t a1)
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

uint64_t sub_1AE6F2704(uint64_t a1)
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

uint64_t sub_1AE6F2784(uint64_t a1)
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

uint64_t sub_1AE6F2810(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v113TokenSequence14updateTokenIDsERKNSt3__18functionIFbjEEERKNS3_IFjRKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERN10applesauce2CF9StringRefEjEEEEUlSF_SJ_jNS2_4spanIKjLm18446744073709551615EEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v113TokenSequence14updateTokenIDsERKNSt3__18functionIFbjEEERKNS3_IFjRKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERN10applesauce2CF9StringRefEjEEEEUlSF_SJ_jNS2_4spanIKjLm18446744073709551615EEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v113TokenSequence14updateTokenIDsERKNSt3__18functionIFbjEEERKNS3_IFjRKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERN10applesauce2CF9StringRefEjEEEEUlSF_SJ_jNS2_4spanIKjLm18446744073709551615EEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v113TokenSequence14updateTokenIDsERKNSt3__18functionIFbjEEERKNS3_IFjRKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERN10applesauce2CF9StringRefEjEEEEUlSF_SJ_jNS2_4spanIKjLm18446744073709551615EEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE6F287C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = *(a1 + 8);
  v7 = *a4;
  v5 = *(v4 + 24);
  if (!v5)
  {
    sub_1AE60819C();
  }

  return (*(*v5 + 48))(v5, a2, a3, &v7);
}

uint64_t sub_1AE6F28E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2431D10;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE6F2980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v123BlocklistTokenConverter7convertERNS0_13TokenSequenceEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v123BlocklistTokenConverter7convertERNS0_13TokenSequenceEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v123BlocklistTokenConverter7convertERNS0_13TokenSequenceEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v123BlocklistTokenConverter7convertERNS0_13TokenSequenceEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE6F2A1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242E098;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE6F2ABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v123BlocklistTokenConverter7convertERNS0_13TokenSequenceEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v123BlocklistTokenConverter7convertERNS0_13TokenSequenceEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v123BlocklistTokenConverter7convertERNS0_13TokenSequenceEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v123BlocklistTokenConverter7convertERNS0_13TokenSequenceEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE6F2BC0(uint64_t a1, uint64_t a2)
{
  v68[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 128);
  if (v4 < 1)
  {
LABEL_19:
    v17 = *(a1 + 152);
    ++*(a1 + 144);
    if (*(v17 + 144) != 1)
    {
      LODWORD(v55) = 0;
      v57[0] = *MEMORY[0x1E69AC018];
      v63 = &unk_1F242DF98;
      v64 = v57;
      v65 = &v55;
      v66 = &v63;
      __p[0] = 1;
      cf[0] = 0;
      operator new();
    }

    if (*(a2 + 23) < 0)
    {
      sub_1AE5DBF1C(__p, *a2, *(a2 + 8));
      v17 = *(a1 + 152);
    }

    else
    {
      *__p = *a2;
      v62 = *(a2 + 16);
    }

    if (*(v17 + 145) != 1 || !*(v17 + 136))
    {
LABEL_53:
      v26 = v57;
      sub_1AE6937A8(v57, __p);
      if (v58 < 0)
      {
        v26 = v57[0];
      }

      LODWORD(v63) = 0x100000;
      WORD2(v63) = 0;
      BYTE6(v63) = 1;
      v64 = 0;
      if (v26)
      {
        v27 = strlen(v26);
        v28 = v27;
        v65 = 0;
        v66 = 0;
        if (v27)
        {
          sub_1AE75B958(&v63, v27);
          if (WORD1(v63) < v28)
          {
            __assert_rtn("initialize", "LMTIString.cpp", 269, "len <= m_capacity");
          }

          if (v64)
          {
            v29 = v64;
          }

          else
          {
            v29 = &v65;
          }

          memcpy(v29, v26, v28);
          LOWORD(v63) = v28;
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
      }

      sub_1AE75BB40(&v67, &v63);
      if (*(&v67 + 1))
      {
        v30 = *(&v67 + 1);
      }

      else
      {
        v30 = v68;
      }

      v31 = strlen(v30);
      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AE5DB4F0();
      }

      v32 = v31;
      if (v31 >= 0x17)
      {
        operator new();
      }

      v56 = v31;
      if (v31)
      {
        memmove(&v55, v30, v31);
      }

      *(&v55 + v32) = 0;
      if (*(&v67 + 1) && BYTE6(v67) == 1)
      {
        free(*(&v67 + 1));
      }

      if (v64 && BYTE6(v63) == 1)
      {
        free(v64);
      }

      v33 = *(*(a1 + 152) + 104);
      if (*(*(a1 + 152) + 112) - v33 == 8)
      {
        v34 = (*(**v33 + 24))(*v33, &v55, 0);
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v34 = 0;
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_83;
        }
      }

      operator delete(v55);
LABEL_83:
      if (v58 < 0)
      {
        operator delete(v57[0]);
        if ((SHIBYTE(v62) & 0x80000000) == 0)
        {
          goto LABEL_85;
        }
      }

      else if ((SHIBYTE(v62) & 0x80000000) == 0)
      {
LABEL_85:
        v16 = *(a1 + 96);
        v35 = *(a1 + 104);
        if (v16 != v35)
        {
          while (*v16 != v34)
          {
            if (++v16 == v35)
            {
              goto LABEL_90;
            }
          }
        }

        if (v16 == v35)
        {
LABEL_90:
          v36 = *(a1 + 128);
          v37 = *(a1 + 24);
          if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - v37) >> 3) <= v36)
          {
            if (v36 < 2)
            {
              v38 = 0;
            }

            else
            {
              v38 = 0;
              v39 = *(a1 + 72);
              v40 = *v39;
              for (i = 1; i != v36; ++i)
              {
                v42 = v39[i];
                if (v40 > v42)
                {
                  v38 = i;
                }

                if (v40 >= v42)
                {
                  v40 = v39[i];
                }
              }
            }
          }

          else
          {
            *(a1 + 128) = v36 + 1;
            v38 = v36;
          }

          v43 = v37 + 24 * v38;
          if (v43 != a2)
          {
            v44 = *(a2 + 23);
            if (*(v43 + 23) < 0)
            {
              if (v44 >= 0)
              {
                v46 = a2;
              }

              else
              {
                v46 = *a2;
              }

              if (v44 >= 0)
              {
                v47 = *(a2 + 23);
              }

              else
              {
                v47 = *(a2 + 8);
              }

              sub_1AE621B84(v43, v46, v47);
            }

            else if ((*(a2 + 23) & 0x80) != 0)
            {
              sub_1AE621AB4(v43, *a2, *(a2 + 8));
            }

            else
            {
              v45 = *a2;
              *(v43 + 16) = *(a2 + 16);
              *v43 = v45;
            }
          }

          v16 = (*(a1 + 48) + 4 * v38);
          *v16 = v34;
          v48 = *(a1 + 120) + 1;
          *(a1 + 120) = v48;
          *(*(a1 + 72) + 8 * v38) = v48;
        }

        goto LABEL_116;
      }

      operator delete(__p[0]);
      goto LABEL_85;
    }

    v18 = *(a2 + 23);
    if (v18 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v19)
    {
      if (v18 >= 0)
      {
        v20 = *(a2 + 23);
      }

      else
      {
        v20 = *(a2 + 8);
      }

      *&v67 = CFStringCreateWithBytes(0, v19, v20, 0x8000100u, 0);
      if (!v67)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      *&v67 = 0;
    }

    v22 = LXTransliterationCopyNativeForTransliterated();
    v63 = v22;
    if (v22)
    {
      v23 = CFGetTypeID(v22);
      if (v23 != CFStringGetTypeID())
      {
        v54 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v54, "Could not construct");
        __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    if (v67)
    {
      CFRelease(v67);
    }

    v24 = v63;
    if (*(a2 + 23) < 0)
    {
      sub_1AE5DBF1C(cf, *a2, *(a2 + 8));
    }

    else
    {
      *cf = *a2;
      v60 = *(a2 + 16);
    }

    if (v24 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v24)))
    {
      sub_1AE621740(&v67, v24);
      if (SHIBYTE(v62) < 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v67 = *cf;
      v68[0] = v60;
      cf[1] = 0;
      v60 = 0;
      cf[0] = 0;
      if (SHIBYTE(v62) < 0)
      {
LABEL_48:
        operator delete(__p[0]);
      }
    }

    *__p = v67;
    v62 = v68[0];
    HIBYTE(v68[0]) = 0;
    LOBYTE(v67) = 0;
    if (SHIBYTE(v60) < 0)
    {
      operator delete(cf[0]);
    }

    if (v63)
    {
      CFRelease(v63);
    }

    goto LABEL_53;
  }

  v5 = 0;
  v6 = *(a1 + 24);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  while (1)
  {
    v10 = *(v6 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v6 + 8);
    }

    if (v10 == v8)
    {
      v12 = v11 >= 0 ? v6 : *v6;
      if (!memcmp(v12, v9, v8))
      {
        break;
      }
    }

    ++v5;
    v6 += 24;
    if (v4 == v5)
    {
      goto LABEL_19;
    }
  }

  ++*(a1 + 136);
  v13 = *(a1 + 72);
  v14 = *(a1 + 120);
  if (*(v13 + 8 * v5) != v14)
  {
    v15 = v14 + 1;
    *(a1 + 120) = v15;
    *(v13 + 8 * v5) = v15;
  }

  v16 = (*(a1 + 48) + 4 * v5);
LABEL_116:
  result = *v16;
  v50 = *(a1 + 152);
  if ((*(v50 + 144) & 1) == 0 && !result)
  {
    v51 = *(a1 + 8);
    v52 = *(a1 + 160);
    *&v67 = v50;
    *(&v67 + 1) = v52;
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LOBYTE(v68[0]) = 1;
    result = sub_1AE6582D8(v51, a2, 0, &v67);
    if (!result)
    {
      result = sub_1AE70DB1C(a2, *(v51[29] + 358));
    }

    if (v52)
    {
      if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v53 = result;
        (v52->__on_zero_shared)(v52);
        std::__shared_weak_count::__release_weak(v52);
        return v53;
      }
    }
  }

  return result;
}

void sub_1AE6F345C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, const void *a32, char a33, char a34, void *a35)
{
  __cxa_free_exception(v35);
  sub_1AE621E54(&a32);
  sub_1AE63109C((v36 - 112));
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6F35C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v1L53bestLinguisticallyEquivalentTokenIDFromStaticLexiconsERKNSt3__16vectorINS1_10unique_ptrIN2LM7LexiconENS1_14default_deleteIS5_EEEENS1_9allocatorIS8_EEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS9_IcEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v1L53bestLinguisticallyEquivalentTokenIDFromStaticLexiconsERKNSt3__16vectorINS1_10unique_ptrIN2LM7LexiconENS1_14default_deleteIS5_EEEENS1_9allocatorIS8_EEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS9_IcEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v1L53bestLinguisticallyEquivalentTokenIDFromStaticLexiconsERKNSt3__16vectorINS1_10unique_ptrIN2LM7LexiconENS1_14default_deleteIS5_EEEENS1_9allocatorIS8_EEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS9_IcEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v1L53bestLinguisticallyEquivalentTokenIDFromStaticLexiconsERKNSt3__16vectorINS1_10unique_ptrIN2LM7LexiconENS1_14default_deleteIS5_EEEENS1_9allocatorIS8_EEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS9_IcEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE6F3634(uint64_t result, uint64_t a2, _DWORD *a3, double *a4)
{
  v4 = *(result + 8);
  v5 = *a4;
  if (*v4 < *a4)
  {
    **(result + 16) = *a3;
    *v4 = v5;
  }

  return result;
}

__n128 sub_1AE6F3664(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242DF98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1AE6F3700(void *a1)
{
  *a1 = &unk_1F242DF30;
  v2 = a1[20];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = a1[4];
    v8 = a1[3];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[3];
    }

    a1[4] = v6;
    operator delete(v8);
  }

  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6F3870(void *a1)
{
  *a1 = &unk_1F242DF30;
  v2 = a1[20];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = a1[4];
    v8 = a1[3];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[3];
    }

    a1[4] = v6;
    operator delete(v8);
  }

  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return a1;
}

uint64_t *sub_1AE6F39C0(uint64_t *a1, CFStringRef a2)
{
  v2 = a2;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (a2)
  {
    info = v2->info;
    if ((data_high & 0x80u) == 0)
    {
      v6 = data_high;
    }

    else
    {
      v6 = info;
    }

    a2 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    cf = a2;
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  v8 = CFLocaleCreate(*MEMORY[0x1E695E480], a2);
  if (cf)
  {
    CFRelease(cf);
  }

  *a1 = sub_1AE5CA070(v8, 134217984);
  if (v8)
  {
    CFRelease(v8);
  }

  return a1;
}

void sub_1AE6F3AE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE622258(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6F3B10(uint64_t *a1, uint64_t a2, void ***a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v27[0] = &unk_1F242E118;
  v28 = v27;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 0x40000000;
  v25[2] = sub_1AE6F3DD8;
  v25[3] = &unk_1E7A2E3C8;
  v25[4] = v27;
  v25[5] = a3;
  v7 = *a3;
  v6 = a3[1];
  while (v6 != v7)
  {
    v8 = *(v6 - 1);
    v6 -= 3;
    if (v8 < 0)
    {
      operator delete(*v6);
    }
  }

  v9 = a3[3];
  a3[1] = v7;
  a3[4] = v9;
  v10 = a3[6];
  for (i = a3[7]; i != v10; --i)
  {
    v13 = *(i - 1);
    v12 = v13;
    if (v13)
    {
      CFRelease(v12);
    }
  }

  a3[7] = v10;
  v14 = *a1;
  *(v14 + 184) = *(*a1 + 176);
  *(v14 + 208) = *(v14 + 200);
  *(v14 + 232) = *(v14 + 224);
  *(v14 + 264) = *(v14 + 256);
  *(v14 + 280) = 0;
  *(v14 + 288) = xmmword_1AE79A570;
  *(v14 + 304) = -1;
  *(v14 + 312) = 0;
  *(v14 + 248) = -1;
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  sub_1AE5C93A4(v14, v16, v17, v25);
  sub_1AE5C93A4(*a1, " NSt3__110__function6__funcIZNK17language_modeling2v115StringTokenizer8tokenizeERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS3_13TokenSequenceEE3$_0NS8_ISF_EEFbjEEE", 1, v25);
  v19 = *a3;
  v18 = a3[1];
  if (*a3 == v18 && a3[3] == a3[4])
  {
    HIBYTE(v24) = 0;
    LOBYTE(__p[0]) = 0;
    v26 = 1;
    if (v19 >= a3[2])
    {
      v21 = sub_1AE5DBDDC(a3, __p);
    }

    else
    {
      v20 = *__p;
      v18[2] = v24;
      *v18 = v20;
      v21 = (v18 + 3);
      a3[1] = v18 + 3;
    }

    a3[1] = v21;
    sub_1AE6369B4((a3 + 3), &v26);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = v28;
  if (v28 == v27)
  {
    return (*(*v28 + 32))(v28);
  }

  if (v28)
  {
    return (*(*v28 + 40))();
  }

  return result;
}

void sub_1AE6F3D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1AE6F2784(&a23);
  _Unwind_Resume(a1);
}

void sub_1AE6F3DC0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1AE6090F0(exception_object);
}

void sub_1AE6F3DD8(uint64_t a1, const void *a2, size_t a3, int a4)
{
  v5 = *(a1 + 32);
  LODWORD(__p[0]) = a4;
  v6 = *(v5 + 24);
  if (!v6)
  {
    sub_1AE60819C();
  }

  if ((*(*v6 + 48))(v6, __p))
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AE5DB4F0();
    }

    v10 = *(a1 + 40);
    if (a3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v15) = a3;
    if (a3)
    {
      memcpy(__p, a2, a3);
    }

    *(__p + a3) = 0;
    v16 = a4;
    v11 = *(v10 + 8);
    if (v11 >= *(v10 + 16))
    {
      v13 = sub_1AE5DBDDC(v10, __p);
    }

    else
    {
      if (SHIBYTE(v15) < 0)
      {
        sub_1AE5DBF1C(*(v10 + 8), __p[0], __p[1]);
      }

      else
      {
        v12 = *__p;
        *(v11 + 16) = v15;
        *v11 = v12;
      }

      v13 = v11 + 24;
      *(v10 + 8) = v11 + 24;
    }

    *(v10 + 8) = v13;
    sub_1AE6369B4(v10 + 24, &v16);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1AE6F3F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  operator delete(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6F3F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v115StringTokenizer8tokenizeERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERNS0_13TokenSequenceEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v115StringTokenizer8tokenizeERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERNS0_13TokenSequenceEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v115StringTokenizer8tokenizeERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERNS0_13TokenSequenceEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v115StringTokenizer8tokenizeERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERNS0_13TokenSequenceEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE6F407C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      result = 0;
      do
      {
        if (*(v1 + 16) < 0x10000u)
        {
          v3 = 1;
        }

        else
        {
          v3 = 2;
        }

        result += v3;
        v1 = v2;
        v2 = *(v2 + 8);
      }

      while (v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE6F40C4(uint64_t a1)
{
  v1 = *(*(a1 + 24) + 16);
  if (qword_1EB5E0C40 == -1)
  {
    v2 = *v1;
    if (*v1)
    {
      return ((*(**(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)) + 40))(*(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)), v2, a1 + 32) >> 30) & 1;
    }
  }

  else
  {
    v4 = a1;
    dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
    a1 = v4;
    v2 = *v1;
    if (*v1)
    {
      return ((*(**(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)) + 40))(*(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)), v2, a1 + 32) >> 30) & 1;
    }
  }

  return 0;
}

uint64_t sub_1AE6F4174(uint64_t a1)
{
  v1 = *(*(a1 + 24) + 16);
  if (qword_1EB5E0C40 == -1)
  {
    v2 = *v1;
    if (*v1)
    {
      return (*(**(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)) + 40))(*(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)), v2, a1 + 32) & 0x3FFFFFFF;
    }
  }

  else
  {
    v4 = a1;
    dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
    a1 = v4;
    v2 = *v1;
    if (*v1)
    {
      return (*(**(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)) + 40))(*(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)), v2, a1 + 32) & 0x3FFFFFFF;
    }
  }

  return 0;
}

uint64_t sub_1AE6F4224(uint64_t a1)
{
  v1 = *(*(a1 + 24) + 16);
  if (qword_1EB5E0C40 == -1)
  {
    v2 = *v1;
    if (*v1)
    {
      return (*(**(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)) + 40))(*(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)), v2, a1 + 32) >> 31;
    }
  }

  else
  {
    v4 = a1;
    dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
    a1 = v4;
    v2 = *v1;
    if (*v1)
    {
      return (*(**(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)) + 40))(*(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)), v2, a1 + 32) >> 31;
    }
  }

  return 0;
}

uint64_t sub_1AE6F42D4(uint64_t a1)
{
  if (qword_1EB5E0C40 != -1)
  {
    v4 = a1;
    v5 = **(*(a1 + 24) + 16);
    dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
    a1 = v4;
    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!**(*(a1 + 24) + 16))
  {
    return 0;
  }

LABEL_3:
  v1 = *(**(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3)) + 48);
  v2 = *(qword_1EB5E0C48 + 8 * (*(a1 + 32) & 3));

  return v1(v2);
}

_DWORD *sub_1AE6F43AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  LODWORD(v22) = *(a1 + 32);
  *(&v22 + 1) = *(a1 + 40);
  LOBYTE(v23) = *(a1 + 48);
  if (a3)
  {
    v5 = 0;
    v18 = a3 - 1;
    v6 = *(*(a1 + 24) + 16);
    v7 = a1;
    while (1)
    {
      v10 = (a2 + 2 * v5);
      v11 = *v10 & 0xFC00;
      if (v11 == 55296)
      {
        if (v5 >= v18 || (v10[1] & 0xFC00) != 0xDC00)
        {
          return 0;
        }

        sub_1AE6B035C(&v20, v6, &v22, a2 + 2 * v5, 4);
        v22 = v20;
        v23 = v21;
        v12 = v10[1] + (*v10 << 10) - 56613888;
      }

      else
      {
        sub_1AE6B035C(&v20, v6, &v22, a2 + 2 * v5, 2);
        v22 = v20;
        v23 = v21;
        v12 = *v10;
      }

      v13 = *(a1 + 24);
      v14 = *(v13 + 48);
      if (!v14)
      {
        break;
      }

      v15 = *(v13 + 56);
      v16 = v15 - v14;
      if (0x6DB6DB6DB6DB6DB7 * ((v15 - v14) >> 3) == *(v13 + 64))
      {
        goto LABEL_17;
      }

      v8 = *(a1 + 24);
LABEL_4:
      ++*(v13 + 72);
      *(v13 + 56) = v15 + 14;
      v15[4] = v12;
      *v15 = &unk_1F2431B10;
      *(v15 + 1) = v7;
      *(v15 + 3) = v8;
      v15[8] = v22;
      *(v15 + 5) = *(&v22 + 1);
      *(v15 + 48) = v23;
      if (v11 == 55296)
      {
        v9 = v5 + 1;
      }

      else
      {
        v9 = v5;
      }

      v5 = v9 + 1;
      v7 = v15;
      if (v9 + 1 >= a3)
      {
        return v15;
      }
    }

    v16 = 56 * *(v13 + 64);
LABEL_17:
    v15 = malloc_type_malloc(v16, 0x10F10408BCD9BB6uLL);
    *&v20 = v15;
    sub_1AE671F84(v13 + 24, &v20);
    *(v13 + 48) = v15;
    v8 = *(a1 + 24);
    goto LABEL_4;
  }

  return a1;
}

float sub_1AE6F4600(uint64_t a1, int a2)
{
  v2 = 224;
  if (a2 == 1)
  {
    v2 = 220;
  }

  return *(*(a1 + 24) + v2);
}

float sub_1AE6F461C(uint64_t a1, int a2)
{
  v2 = 224;
  if (a2 == 1)
  {
    v2 = 216;
  }

  return *(*(a1 + 24) + v2);
}

void sub_1AE6F4638(void *a1)
{
  sub_1AE6F4670(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6F4670(void *a1)
{
  *a1 = &unk_1F2431EC0;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[6];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[4];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

uint64_t sub_1AE6F4814(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double *a5, uint64_t a6, uint64_t a7)
{
  v39 = *MEMORY[0x1E69E9840];
  *a5 = 0.0;
  if (a2 == 1 && !a4)
  {
    return 1;
  }

  if (*(a1 + 48) != 1)
  {
    v34 = 0.0;
    v20 = a3;
    if ((*(**(a1 + 16) + 16))(*(a1 + 16), a2, a3, a4, &v34, 0))
    {
      v22 = v34;
      goto LABEL_17;
    }

    result = *(a1 + 24);
    if (!result)
    {
      return result;
    }

    *v35 = 0;
    v36 = 0;
    if ((*(*result + 16))(result, a2, v20, a4, &v34, v35, a7))
    {
      if (a4)
      {
        v23 = v34 + -0.5 + *(a1 + 40) + *a5;
      }

      else
      {
        v23 = *a5 + v34;
      }

      *a5 = v23;
    }

    else
    {
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v24 = qword_1ED9AC9E0;
      v25 = os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR);
      v26 = a7;
      v27 = v20;
      if (!v25)
      {
        goto LABEL_47;
      }

      sub_1AE693C34(__p, a2, v20, a4);
      if (v33 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v28;
      _os_log_error_impl(&dword_1AE5C8000, v24, OS_LOG_TYPE_ERROR, "Supplemental LM failed to calculate %s", &buf, 0xCu);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v26 = a7;
    v27 = v20;
LABEL_47:
    if (*v35 < 1 || *v35 > a4 || *v35 == 1)
    {
      result = (*(**(a1 + 24) + 16))(*(a1 + 24), *(a1 + 32), 0, 0, &v34, 0, v26);
      if (result)
      {
        v31 = a4 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        return result;
      }
    }

    else if (((*(**(a1 + 24) + 16))(*(a1 + 24), *(a1 + 32), v27 + 4 * (a4 - (*v35 - 1))) & 1) == 0)
    {
      return 0;
    }

    if (fabs(*a5) <= fabs(v34))
    {
      return 1;
    }

    v22 = *a5 - v34;
LABEL_17:
    *a5 = v22;
    return 1;
  }

  *&buf = a3;
  *(&buf + 1) = a4;
  if (!a4 || (v12 = a3, v13 = sub_1AE6FAC88(*(a1 + 16), a2), a3 = v12, v13))
  {
    result = *(a1 + 24);
    if (!result)
    {
      return result;
    }

    v34 = 0.0;
    result = (*(*result + 16))(result, a2, a3, a4, &v34);
    if ((result & 1) == 0)
    {
      v15 = result;
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v16 = qword_1ED9AC9E0;
      v17 = os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR);
      result = v15;
      if (v17)
      {
        sub_1AE6F4D20(__p, &buf);
        if (v33 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        *v35 = 67109378;
        *&v35[4] = a2;
        v36 = 2080;
        v37 = v18;
        v19 = "Supplemental model failed calculating P( %d | [ %s ])";
LABEL_41:
        _os_log_error_impl(&dword_1AE5C8000, v16, OS_LOG_TYPE_ERROR, v19, v35, 0x12u);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        return v15;
      }

      return result;
    }

LABEL_25:
    *a5 = v34;
    return result;
  }

  v34 = 0.0;
  result = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, v12, a4, &v34, 0, a7);
  if (result)
  {
    goto LABEL_25;
  }

  v15 = result;
  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  v16 = qword_1ED9AC9E0;
  v29 = os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR);
  result = v15;
  if (v29)
  {
    sub_1AE6F4D20(__p, &buf);
    if (v33 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    *v35 = 67109378;
    *&v35[4] = a2;
    v36 = 2080;
    v37 = v30;
    v19 = "Montreal failed calculating P( %d | [ %s ])";
    goto LABEL_41;
  }

  return result;
}

uint64_t sub_1AE6F4D20(_BYTE *a1, unsigned int **a2)
{
  sub_1AE5D9464(&v20);
  v3 = a2[1];
  if (v3)
  {
    v4 = *a2;
    for (i = 4 * v3; i; i -= 4)
    {
      if ((v30 & 0x10) != 0)
      {
        v7 = v29;
        v8 = &v25;
        if (v29 < v26)
        {
          v29 = v26;
          v7 = v26;
          v8 = &v25;
        }
      }

      else
      {
        if ((v30 & 8) == 0)
        {
          v6 = 0;
          v19 = 0;
          goto LABEL_15;
        }

        v7 = v24;
        v8 = v23;
      }

      v9 = *v8;
      v6 = v7 - *v8;
      if (v6 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1AE5DB4F0();
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      v19 = v7 - *v8;
      if (v6)
      {
        memmove(__dst, v9, v6);
      }

LABEL_15:
      *(__dst + v6) = 0;
      if ((v19 & 0x80000000) == 0)
      {
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_1AE5DB608(&v20, " ", 1);
        goto LABEL_20;
      }

      v10 = __dst[1];
      operator delete(__dst[0]);
      if (v10)
      {
        goto LABEL_19;
      }

LABEL_20:
      MEMORY[0x1B2706110](&v20, *v4++);
    }
  }

  if ((v30 & 0x10) != 0)
  {
    v13 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v13 = v26;
    }

    v14 = &v25;
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v11 = 0;
      v12 = a1;
      a1[23] = 0;
      goto LABEL_34;
    }

    v14 = v23;
    v13 = v24;
  }

  v15 = *v14;
  v11 = v13 - *v14;
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v12 = a1;
  if (v11 >= 0x17)
  {
    operator new();
  }

  a1[23] = v11;
  if (v11)
  {
    memmove(a1, v15, v11);
  }

LABEL_34:
  v12[v11] = 0;
  v20 = *MEMORY[0x1E69E54E8];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v22);
  std::ostream::~ostream();
  return MEMORY[0x1B2706340](&v31);
}

void sub_1AE6F5068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1AE5F13B8(&a13, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B2706340](&a27);
  _Unwind_Resume(a1);
}

void sub_1AE6F509C(void *a1)
{
  *a1 = &unk_1F242E220;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6F515C(void *a1)
{
  *a1 = &unk_1F242E220;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1AE6F51FC(uint64_t a1, CFDictionaryRef theDict)
{
  Count = CFDictionaryGetCount(theDict);
  if (Count)
  {
    if (!(Count >> 61))
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  CFDictionaryGetKeysAndValues(theDict, 0, 0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
}

void sub_1AE6F612C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_1AE6F613C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29)
{
  sub_1AE6F7514(&a21);
  v30 = a29;
  if (a29)
  {
    do
    {
      v44 = *v30;
      v45 = v30[5];
      if (v45)
      {
        do
        {
          v46 = *v45;
          operator delete(v45);
          v45 = v46;
        }

        while (v46);
      }

      v47 = v30[3];
      v30[3] = 0;
      if (v47)
      {
        operator delete(v47);
      }

      operator delete(v30);
      v30 = v44;
    }

    while (v44);
  }

  v31 = a27;
  a27 = 0;
  if (v31)
  {
    operator delete(v31);
    v32 = a19;
    if (!a19)
    {
LABEL_4:
      v33 = __p;
      if (!__p)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v32 = a19;
    if (!a19)
    {
      goto LABEL_4;
    }
  }

  operator delete(v32);
  v33 = __p;
  if (!__p)
  {
LABEL_6:
    v34 = *a10;
    if (*a10)
    {
      do
      {
        v37 = *v34;
        v38 = v34[5];
        if (v38)
        {
          do
          {
            v40 = *v38;
            v41 = v38[5];
            if (v41)
            {
              do
              {
                v42 = *v41;
                operator delete(v41);
                v41 = v42;
              }

              while (v42);
            }

            v43 = v38[3];
            v38[3] = 0;
            if (v43)
            {
              operator delete(v43);
            }

            operator delete(v38);
            v38 = v40;
          }

          while (v40);
        }

        v39 = v34[3];
        v34[3] = 0;
        if (v39)
        {
          operator delete(v39);
        }

        operator delete(v34);
        v34 = v37;
      }

      while (v37);
    }

    v35 = *a14;
    *a14 = 0;
    if (v35)
    {
      operator delete(v35);
      v36 = a13;
      if (!a13)
      {
LABEL_9:
        if (!a12)
        {
          goto LABEL_10;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v36 = a13;
      if (!a13)
      {
        goto LABEL_9;
      }
    }

    operator delete(v36);
    if (!a12)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }

LABEL_27:
    JUMPOUT(0x1AE6F63A4);
  }

LABEL_5:
  operator delete(v33);
  goto LABEL_6;
}

void sub_1AE6F6174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a19)
  {
    JUMPOUT(0x1AE6F63BCLL);
  }

  JUMPOUT(0x1AE6F629CLL);
}

void sub_1AE6F618C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (!a29)
  {
    if (!a27)
    {
      if (!a19)
      {
        if (a18)
        {
          operator delete(a18);
        }

        if (!*a10)
        {
          v29 = *a14;
          *a14 = 0;
          if (!v29)
          {
            if (!a13)
            {
              JUMPOUT(0x1AE6F62CCLL);
            }

            JUMPOUT(0x1AE6F6398);
          }

          JUMPOUT(0x1AE6F638CLL);
        }

        JUMPOUT(0x1AE6F62ECLL);
      }

      JUMPOUT(0x1AE6F63BCLL);
    }

    JUMPOUT(0x1AE6F63B0);
  }

  JUMPOUT(0x1AE6F635CLL);
}

void sub_1AE6F61C0()
{
  if (v0)
  {
    JUMPOUT(0x1AE6F626CLL);
  }

  JUMPOUT(0x1AE6F6254);
}

void sub_1AE6F61D0(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_1AE6F61F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  __cxa_end_catch();
  v31 = a23;
  if (a23)
  {
    do
    {
      v32 = *v31;
      operator delete(v31);
      v31 = v32;
    }

    while (v32);
  }

  if (a21)
  {
    operator delete(a21);
    if (!v29)
    {
LABEL_5:
      if (!v30)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!v29)
  {
    goto LABEL_5;
  }

  operator delete(v29);
  if (!v30)
  {
LABEL_6:
    if (!a29)
    {
LABEL_11:
      JUMPOUT(0x1AE6F6288);
    }

LABEL_12:
    JUMPOUT(0x1AE6F635CLL);
  }

LABEL_10:
  operator delete(v30);
  if (!a29)
  {
    goto LABEL_11;
  }

  goto LABEL_12;
}

void sub_1AE6F6200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  operator delete(v29);
  v32 = a23;
  if (a23)
  {
    do
    {
      v33 = *v32;
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  if (a21)
  {
    operator delete(a21);
    if (!v30)
    {
LABEL_5:
      if (!v31)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!v30)
  {
    goto LABEL_5;
  }

  operator delete(v30);
  if (!v31)
  {
LABEL_6:
    if (!a29)
    {
LABEL_11:
      JUMPOUT(0x1AE6F6288);
    }

LABEL_12:
    JUMPOUT(0x1AE6F635CLL);
  }

LABEL_10:
  operator delete(v31);
  if (!a29)
  {
    goto LABEL_11;
  }

  goto LABEL_12;
}

void sub_1AE6F6214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  operator delete(v30);
  v32 = a23;
  if (a23)
  {
    do
    {
      v33 = *v32;
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  if (a21)
  {
    operator delete(a21);
    if (!v29)
    {
LABEL_5:
      if (!v31)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!v29)
  {
    goto LABEL_5;
  }

  operator delete(v29);
  if (!v31)
  {
LABEL_6:
    if (!a29)
    {
LABEL_11:
      JUMPOUT(0x1AE6F6288);
    }

LABEL_12:
    JUMPOUT(0x1AE6F635CLL);
  }

LABEL_10:
  operator delete(v31);
  if (!a29)
  {
    goto LABEL_11;
  }

  goto LABEL_12;
}

void *sub_1AE6F63CC(uint64_t a1, unint64_t a2, void *a3)
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

      sub_1AE5CB09C();
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

        v32 = *a1;
        *a1 = 0;
        if (v32)
        {
          operator delete(v32);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
    v17 = *(*a1 + 8 * (v16 & a2));
    if (v17)
    {
      v18 = 0;
      do
      {
        result = v17;
        v17 = *v17;
        if (!v17)
        {
          break;
        }

        v23 = v17[1];
        if ((v23 & v16) != (v16 & a2))
        {
          break;
        }

        v19 = v23 == a2 && v17[2] == *a3;
        v20 = v19 != (v18 & 1);
        v21 = v18 & v20;
        v18 |= v20;
      }

      while ((v21 & 1) == 0);
      return result;
    }

    return 0;
  }

  v24 = a2;
  if (v6 <= a2)
  {
    v24 = a2 % v6;
  }

  v25 = *(*a1 + 8 * v24);
  if (!v25)
  {
    return 0;
  }

  v26 = 0;
  do
  {
    result = v25;
    v25 = *v25;
    if (!v25)
    {
      break;
    }

    v30 = v25[1];
    v31 = v30;
    if (v30 >= v6)
    {
      v31 = v30 % v6;
    }

    if (v31 != v24)
    {
      break;
    }

    v27 = v30 == a2 && v25[2] == *a3;
    v28 = v27 != (v26 & 1);
    v29 = v26 & v28;
    v26 |= v28;
  }

  while (v29 != 1);
  return result;
}

void *sub_1AE6F67B8(uint64_t *a1, void *a2)
{
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  result = sub_1AE6F63CC(a1, v4, v5);
  v7 = a1[1];
  v8 = *(v5 - 1);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
  }

  if (result)
  {
    *a2 = *result;
    *result = a2;
    if (*a2)
    {
      v10 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v10 >= *&v7)
        {
          v10 %= *&v7;
        }
      }

      else
      {
        v10 &= *&v7 - 1;
      }

      if (v10 != v8)
      {
        v13 = (*a1 + 8 * v10);
LABEL_19:
        *v13 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v11 = *a1;
    *(*a1 + 8 * v8) = a1 + 2;
    if (*a2)
    {
      v12 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      v13 = (v11 + 8 * v12);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return result;
}

void sub_1AE6F68E4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 && (bzero(*a1, 8 * v4), v5 = *(a1 + 16), *(a1 + 16) = 0, *(a1 + 24) = 0, v5))
  {
    while (a2)
    {
      v5[2] = a2[2];
      if (v5 != a2)
      {
        *(v5 + 14) = *(a2 + 14);
        v6 = a2[5];
        v7 = v5[4];
        if (v7 && (bzero(v5[3], 8 * v7), v8 = v5[5], v5[5] = 0, v5[6] = 0, v8))
        {
          while (v6)
          {
            v8[2] = v6[2];
            *(v8 + 6) = *(v6 + 6);
            v9 = *v8;
            sub_1AE6F67B8(v5 + 3, v8);
            v6 = *v6;
            v8 = v9;
            if (!v9)
            {
              goto LABEL_9;
            }
          }

          do
          {
            v10 = *v8;
            operator delete(v8);
            v8 = v10;
          }

          while (v10);
        }

        else
        {
LABEL_9:
          if (v6)
          {
            operator new();
          }
        }
      }

      v11 = *v5;
      sub_1AE6F6C6C(a1, v5);
      a2 = *a2;
      v5 = v11;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v12 = *v5;
      v13 = v5[5];
      if (v13)
      {
        do
        {
          v14 = *v13;
          operator delete(v13);
          v13 = v14;
        }

        while (v14);
      }

      v15 = v5[3];
      v5[3] = 0;
      if (v15)
      {
        operator delete(v15);
      }

      operator delete(v5);
      v5 = v12;
    }

    while (v12);
  }

  else
  {
LABEL_13:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_1AE6F6BD4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1AE6F714C(v1);
  __cxa_rethrow();
}

void sub_1AE6F6C6C(uint64_t a1, void *a2)
{
  v4 = a2[2];
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v35 = *a1;
        *a1 = 0;
        if (v35)
        {
          operator delete(v35);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v15 = vcnt_s8(v5);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] >= 2uLL)
  {
    v25 = v4;
    if (v5 <= v4)
    {
      v25 = v4 % v5;
    }

    v17 = *a1;
    v26 = *(*a1 + 8 * v25);
    if (!v26)
    {
      v23 = 0;
      v33 = a2[1];
      if (v33 < v5)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v27 = 0;
    do
    {
      v23 = v26;
      v26 = *v26;
      if (!v26)
      {
        break;
      }

      v31 = v26[1];
      v32 = v31;
      if (v31 >= v5)
      {
        v32 = v31 % v5;
      }

      if (v32 != v25)
      {
        break;
      }

      v28 = v31 == v4 && v26[2] == a2[2];
      v29 = v28 != (v27 & 1);
      v30 = v27 & v29;
      v27 |= v29;
    }

    while (v30 != 1);
  }

  else
  {
    v16 = (v5 - 1) & v4;
    v17 = *a1;
    v18 = *(*a1 + 8 * v16);
    if (!v18)
    {
      v23 = 0;
      v33 = a2[1];
      goto LABEL_46;
    }

    v19 = 0;
    do
    {
      v23 = v18;
      v18 = *v18;
      if (!v18)
      {
        break;
      }

      v24 = v18[1];
      if ((v24 & (v5 - 1)) != v16)
      {
        break;
      }

      v20 = v24 == v4 && v18[2] == a2[2];
      v21 = v20 != (v19 & 1);
      v22 = v19 & v21;
      v19 |= v21;
    }

    while ((v22 & 1) == 0);
  }

  v33 = a2[1];
  if (v15.u32[0] <= 1uLL)
  {
LABEL_46:
    v33 &= v5 - 1;
    goto LABEL_49;
  }

  if (v33 >= v5)
  {
LABEL_48:
    v33 %= v5;
  }

LABEL_49:
  if (!v23)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v17[v33] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_63;
    }

    v34 = *(*a2 + 8);
    if (v15.u32[0] > 1uLL)
    {
      if (v34 >= v5)
      {
        v34 %= v5;
      }
    }

    else
    {
      v34 &= v5 - 1;
    }

LABEL_62:
    v17[v34] = a2;
    goto LABEL_63;
  }

  *a2 = *v23;
  *v23 = a2;
  if (*a2)
  {
    v34 = *(*a2 + 8);
    if (v15.u32[0] > 1uLL)
    {
      if (v34 >= v5)
      {
        v34 %= v5;
      }
    }

    else
    {
      v34 &= v5 - 1;
    }

    if (v34 != v33)
    {
      goto LABEL_62;
    }
  }

LABEL_63:
  ++*(a1 + 24);
}

void sub_1AE6F714C(void **__p)
{
  do
  {
    v2 = *__p;
    v3 = __p[5];
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = __p[3];
    __p[3] = 0;
    if (v5)
    {
      operator delete(v5);
    }

    operator delete(__p);
    __p = v2;
  }

  while (v2);
}

uint64_t sub_1AE6F71B8(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        do
        {
          v4 = *v3;
          operator delete(v3);
          v3 = v4;
        }

        while (v4);
      }

      v5 = v1[3];
      v1[3] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_1AE6F722C(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_22;
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
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return result;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1AE6F7514(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        do
        {
          v5 = *v3;
          v6 = v3[5];
          if (v6)
          {
            do
            {
              v7 = *v6;
              operator delete(v6);
              v6 = v7;
            }

            while (v7);
          }

          v8 = v3[3];
          v3[3] = 0;
          if (v8)
          {
            operator delete(v8);
          }

          operator delete(v3);
          v3 = v5;
        }

        while (v5);
      }

      v4 = v1[3];
      v1[3] = 0;
      if (v4)
      {
        operator delete(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1AE6F75C0(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7, void *a8, float a9, float a10)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v16 = a2[1];
  if (v16 != *a2)
  {
    if (((v16 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(a1 + 24) = a9;
  *(a1 + 28) = a10;
  if (*(a3 + 23) < 0)
  {
    sub_1AE5DBF1C((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v17 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v17;
  }

  sub_1AE61E1B4(a1 + 56, a4);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v18 = *a5;
  v19 = a5[1];
  v20 = v19 - *a5;
  if (v19 != v18)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v20 >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(a1 + 264) = a6;
  *(a1 + 272) = a7;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  v21 = a8[1] - *a8;
  if (v21)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  if (a7 == 1)
  {
    if (*(a1 + 28) > 0.0001)
    {
      v22 = "m_incompleteWordProb <= 1e-4";
      v23 = 36;
LABEL_20:
      __assert_rtn("ToucanHypothesis", "ToucanHypothesis.cpp", v23, v22);
    }
  }

  else if (!a7 && *(a1 + 28) != 0.0)
  {
    v22 = "m_incompleteWordProb == 0";
    v23 = 33;
    goto LABEL_20;
  }

  return a1;
}

void sub_1AE6F7830(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFIndex sub_1AE6F78A4(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v2)
  {
    if (v1 >= 0)
    {
      v3 = *(a1 + 23);
    }

    else
    {
      v3 = *(a1 + 8);
    }

    v4 = CFStringCreateWithBytes(0, v2, v3, 0x8000100u, 0);
    cf = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v4 = 0;
    cf = 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v4, @"com.apple.LanguageModeling", &keyExistsAndHasValidFormat);
  v7 = keyExistsAndHasValidFormat;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    return AppIntegerValue;
  }

  else
  {
    return 0;
  }
}

void sub_1AE6F7984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE631068(va);
  _Unwind_Resume(a1);
}

void sub_1AE6F79AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE621E20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6F79C4(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = sub_1AE6F7A28(a1, a2, a3, &stru_1F24332A0, a4);
  CFRelease(&stru_1F24332A0);
  return v4;
}

void sub_1AE6F7A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6F7A28(uint64_t *a1, uint64_t a2, unint64_t a3, CFStringRef theString, unint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  if (a5)
  {
    if (a3 < a5)
    {
      return 0;
    }

    v8 = a1 + 8;
    v7 = a1[8];
    if (v7 == 3)
    {
      v9 = a2;
      v10 = a3;
      v11 = theString;
      if (CFStringGetLength(theString) < 4)
      {
        return 0;
      }

      v7 = *v8;
      a3 = v10;
      a2 = v9;
      theString = v11;
    }

    if (v7 != 5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = a1 + 8;
    if (a1[8] != 5)
    {
      return 0;
    }
  }

  v12 = a3;
  v13 = a2;
  v14 = theString;
  Length = CFStringGetLength(theString);
  theString = v14;
  a2 = v13;
  a3 = v12;
  if (Length < 2)
  {
    return 0;
  }

LABEL_11:
  v16 = a1[5];
  if (v16)
  {
    v17 = theString;
    v18 = a2;
    v19 = a3;
    v20 = std::__shared_weak_count::lock(v16);
    if (v20)
    {
      v21 = a1[4];
      if (v21)
      {
        appendedString = v17;
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        if (a5)
        {
          v23 = v18 + 4 * v19;
          v24 = -a5;
          do
          {
            (*(*v21 + 32))(&__p, v21, *(v23 + 4 * v24));
            if (SHIBYTE(v48) >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (SHIBYTE(v48) >= 0)
            {
              v28 = HIBYTE(v48);
            }

            else
            {
              v28 = v47;
            }

            v29 = sub_1AE61D700(p_p, v28);
            v44[0] = v29;
            if (SHIBYTE(v48) < 0)
            {
              operator delete(__p);
            }

            CFStringAppend(Mutable, v29);
            CFStringAppend(Mutable, @" ");
            if (v29)
            {
              CFRelease(v29);
            }
          }

          while (!__CFADD__(v24++, 1));
        }

        v30 = CFStringGetLength(Mutable);
        CFStringAppend(Mutable, appendedString);
        v44[0] = 0;
        v44[1] = 0;
        v45 = 0;
        v31 = a1[9];
        v43 = v30;
        v32 = a1[2];
        v33 = v32[2];
        if (v33)
        {
          v34 = vcnt_s8(v33);
          v34.i16[0] = vaddlv_u8(v34);
          if (v34.u32[0] > 1uLL)
          {
            v35 = v31;
            if (*&v33 <= v31)
            {
              v35 = v31 % *&v33;
            }
          }

          else
          {
            v35 = (*&v33 - 1) & v31;
          }

          v36 = *(*&v32[1] + 8 * v35);
          if (v36)
          {
            v37 = *v36;
            if (v37)
            {
              if (v34.u32[0] < 2uLL)
              {
                v38 = *&v33 - 1;
                while (1)
                {
                  v40 = v37[1];
                  if (v40 == v31)
                  {
                    if (v37[2] == v31)
                    {
                      goto LABEL_50;
                    }
                  }

                  else if ((v40 & v38) != v35)
                  {
                    goto LABEL_55;
                  }

                  v37 = *v37;
                  if (!v37)
                  {
                    goto LABEL_55;
                  }
                }
              }

              do
              {
                v39 = v37[1];
                if (v39 == v31)
                {
                  if (v37[2] == v31)
                  {
LABEL_50:
                    __p = &unk_1F242E358;
                    v47 = &v43;
                    v48 = v44;
                    v49 = &__p;
                    sub_1AE720B08();
                    if (v49 == &__p)
                    {
                      (*(*v49 + 4))(v49);
                    }

                    else if (v49)
                    {
                      (*(*v49 + 5))();
                    }

                    if (v44[1] == v44[0])
                    {
                      break;
                    }

LABEL_57:
                    operator new();
                  }
                }

                else
                {
                  if (v39 >= *&v33)
                  {
                    v39 %= *&v33;
                  }

                  if (v39 != v35)
                  {
                    break;
                  }
                }

                v37 = *v37;
              }

              while (v37);
            }
          }
        }

LABEL_55:
        if (*v8 == 3)
        {
          sub_1AE6F814C(a1[2], appendedString, v44);
          operator new();
        }

        goto LABEL_57;
      }

      if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v41 = v20;
        (v20->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v41);
      }
    }
  }

  return 0;
}

void sub_1AE6F8004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_1AE6F80CC(&__p);
  sub_1AE6F8404(&a23);
  sub_1AE67D824(&a17);
  sub_1AE622290(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6F80CC(uint64_t a1)
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

uint64_t sub_1AE6F814C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = *&v3 <= 3uLL ? 3uLL % *&v3 : 3;
    }

    else
    {
      v5 = (v3.i32[0] - 1) & 3;
    }

    v6 = *(*(result + 8) + 8 * v5);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        if (v4.u32[0] < 2uLL)
        {
          v8 = *&v3 - 1;
          while (1)
          {
            v9 = v7[1];
            if (v9 == 3)
            {
              if (v7[2] == 3)
              {
                goto LABEL_23;
              }
            }

            else if ((v9 & v8) != v5)
            {
              return result;
            }

            v7 = *v7;
            if (!v7)
            {
              return result;
            }
          }
        }

        do
        {
          v10 = v7[1];
          if (v10 == 3)
          {
            if (v7[2] == 3)
            {
LABEL_23:
              v12[0] = &unk_1F242E358;
              v12[1] = &v11;
              v12[2] = a3;
              v13 = v12;
              sub_1AE720B08();
              result = v13;
              if (v13 == v12)
              {
                return (*(*v13 + 32))(v13);
              }

              if (v13)
              {
                return (*(*v13 + 40))(v13);
              }

              return result;
            }
          }

          else
          {
            if (v10 >= *&v3)
            {
              v10 %= *&v3;
            }

            if (v10 != v5)
            {
              return result;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }

  return result;
}

void sub_1AE6F830C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6F80CC(va);
  _Unwind_Resume(a1);
}

void *sub_1AE6F8320(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_1F242E2A8;
  a1[1] = a2;
  a1[2] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v11.location = 0;
  v11.length = 0;
  a1[3] = CFStringTokenizerCreate(*MEMORY[0x1E695E480], 0, v11, 0, 0);
  a1[4] = a6;
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  *(a1 + 5) = *a4;
  a1[7] = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0xFFEFFFFFFFFFFFFFLL;
  a1[13] = a5;
  return a1;
}

void *sub_1AE6F8404(void *a1)
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
        v6 = *(v3 - 2);
        v3 -= 2;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }

        *v3 = 0;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE6F8478(void *a1, void *__dst, uint64_t a3)
{
  v5 = a1[9];
  v6 = a1[10];
  if (v6 != v5)
  {
    memmove(__dst, v5, v6 - v5);
  }

  if (a3)
  {
    *a3 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    *(a3 + 40) = xmmword_1AE79A550;
    *(a3 + 56) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = a1[13];
    *(a3 + 116) = 8;
    *(a3 + 64) = xmmword_1AE79A550;
    *(a3 + 80) = xmmword_1AE79A6B0;
    v7 = a1[12];
    *a3 = v7;
    *(a3 + 80) = v7;
  }

  return (a1[10] - a1[9]) >> 2;
}

uint64_t sub_1AE6F851C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 48))
  {
    return 0;
  }

  v2 = a1;
  alloc = *MEMORY[0x1E695E480];
  do
  {
    v2[10] = v2[9];
    v3 = v2[3];
    v4 = *v1;
    v47.length = CFStringGetLength(*v1);
    v5 = v4;
    v2 = a1;
    v47.location = 0;
    CFStringTokenizerSetString(v3, v5, v47);
    while (CFStringTokenizerAdvanceToNextToken(*(a1 + 24)))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*(a1 + 24));
      v6 = CFStringCreateWithSubstring(alloc, *v1, CurrentTokenRange);
      v35 = v6;
      v7 = (*(a1 + 8) + 24);
      do
      {
        v7 = *v7;
        if (!v7)
        {
          v9 = 1;
          if (!v6)
          {
            goto LABEL_5;
          }

LABEL_16:
          CFRelease(v6);
          goto LABEL_5;
        }

        v43 = 0;
        v44 = &v43;
        v46 = 0;
        v45 = 0x2000000000;
        v36 = MEMORY[0x1E69E9820];
        v37 = 0x40000000;
        v38 = sub_1AE75EA84;
        v39 = &unk_1E7A2FDF8;
        v40 = &v43;
        v41 = v6;
        v42 = 0;
        LXLexiconEnumerateEntriesForString();
        v8 = *(v44 + 6);
        _Block_object_dispose(&v43, 8);
      }

      while (!v8);
      v34 = v8;
      sub_1AE6369B4(a1 + 72, &v34);
      if (*(a1 + 32) <= ((*(a1 + 80) - *(a1 + 72)) >> 2))
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }

      if (v6)
      {
        goto LABEL_16;
      }

LABEL_5:
      if (v9)
      {
        if (v9 == 1)
        {
          v10 = 0;
          goto LABEL_20;
        }

        break;
      }
    }

    *(a1 + 96) = v1[1];
    v10 = 1;
LABEL_20:
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v33 = (v12 - v11) >> 4;
    if (v33 >= 2)
    {
      v28 = v10;
      v13 = 0;
      v29 = *v11;
      v30 = *(a1 + 48);
      *v11 = 0;
      v14 = v11;
      v27 = v11;
      v15 = v11[1];
      do
      {
        v16 = &v14[2 * v13 + 2];
        v17 = 2 * v13;
        v13 = (2 * v13) | 1;
        v18 = v17 + 2;
        if (v18 < v33 && *(v16 + 8) < *(v16 + 24))
        {
          v16 += 16;
          v13 = v18;
        }

        v19 = *v16;
        *v16 = 0;
        if (*v14)
        {
          CFRelease(*v14);
        }

        *v14 = v19;
        v14[1] = *(v16 + 8);
        v14 = v16;
      }

      while (v13 <= ((v33 - 2) >> 1));
      v20 = (v30 - 16);
      if (v16 == v30 - 16)
      {
        v2 = a1;
        if (*v16)
        {
          CFRelease(*v16);
        }

        *v16 = v29;
        *(v16 + 8) = v15;
      }

      else
      {
        v21 = *v20;
        *v20 = 0;
        v2 = a1;
        if (*v16)
        {
          CFRelease(*v16);
        }

        *v16 = v21;
        *(v16 + 8) = *(v30 - 8);
        v22 = *(v30 - 16);
        if (v22)
        {
          CFRelease(v22);
        }

        *(v30 - 16) = v29;
        *(v30 - 8) = v15;
        sub_1AE6F889C(v27, v16 + 16, (v16 + 16 - v27) >> 4);
      }

      v12 = v2[6];
      v10 = v28;
    }

    v25 = *(v12 - 16);
    v24 = (v12 - 16);
    v23 = v25;
    if (v25)
    {
      CFRelease(v23);
    }

    *v24 = 0;
    v2[6] = v24;
    v1 = v2[5];
  }

  while (((v1 != v24) & ~v10) != 0);
  return v10;
}