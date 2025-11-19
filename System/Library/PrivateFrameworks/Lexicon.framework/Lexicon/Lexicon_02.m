uint64_t sub_1B5CF8C58(uint64_t result, _DWORD *a2, int a3, _BYTE *a4)
{
  if (result)
  {
    if (*result == 1)
    {
LABEL_5:
      *(result + 4) = a2[1];
      *(result + 8) = *a2;
LABEL_6:
      *a4 = 1;
      return result;
    }

    if (!*result)
    {
      if (!a3)
      {
        return result;
      }

      goto LABEL_5;
    }

    v5 = 0;
    if (*(result + 48))
    {
      result = sub_1B5CF9B70(result + 24, *(result + 16), a2, &v5);
      if (v5)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_1B5CF8CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0;
  if (a5 >= a4)
  {
    v18 = *(a2 + 1024);
    if (v18)
    {
      v31[0] = 0;
      v31[1] = v18;
      v32 = a3;
      v33 = a4;
      sub_1B5CF9A6C(a8, a7, v31, 1, &v34);
      v17 = v34;
      if (v34)
      {
        v17 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      v17 = 0;
    }

    if (a6)
    {
      goto LABEL_27;
    }

    v22 = 0;
    while (1)
    {
      v23 = *(a2 + 4 * v22);
      *(a3 + a5) = v22;
      if ((v23 & 3u) > 1uLL)
      {
        v26 = *(a1 + 2080);
        if ((v23 & 3) == 2)
        {
          sub_1B5CF9AD8(v35, a8);
          v34 = sub_1B5CFA1B8(a1, ((v23 & 0xFFFFFFFC) + v26), a3, a4 + 1, a5 + 1, 0, a7, v35);
          v25 = v35;
        }

        else
        {
          sub_1B5CF9AD8(v36, a8);
          v34 = sub_1B5CF9DA4(a1, ((v23 & 0xFFFFFFFC) + v26), a3, (a4 + 1), a5 + 1, 0, a7, v36);
          v25 = v36;
        }
      }

      else
      {
        if ((v23 & 3) == 0)
        {
          goto LABEL_20;
        }

        v24 = *(a1 + 2080);
        sub_1B5CF9AD8(v37, a8);
        v34 = sub_1B5CF8CE4(a1, (v23 & 0xFFFFFFFC) + v24, a3, (a4 + 1), a5 + 1, 0, a7, v37);
        v25 = v37;
      }

      sub_1B5CF9D24(v25);
LABEL_20:
      v17 = v34;
      if ((v34 & 1) == 0 && v22++ != 255)
      {
        continue;
      }

      goto LABEL_27;
    }
  }

  v16 = *(a2 + 4 * *(a3 + a5));
  if ((v16 & 3u) > 1uLL)
  {
    v19 = *(a1 + 2080);
    if ((v16 & 3) == 2)
    {
      sub_1B5CF9AD8(v38, a8);
      v20 = v38;
      v21 = sub_1B5CFA1B8(a1, ((v16 & 0xFFFFFFFC) + v19), a3, a4, a5 + 1, a6, a7, v38);
    }

    else
    {
      sub_1B5CF9AD8(v39, a8);
      v20 = v39;
      v21 = sub_1B5CF9DA4(a1, ((v16 & 0xFFFFFFFC) + v19), a3, a4, a5 + 1, a6, a7, v39);
    }

    goto LABEL_26;
  }

  if ((v16 & 3) != 0)
  {
    v28 = *(a1 + 2080);
    sub_1B5CF9AD8(v40, a8);
    v20 = v40;
    v21 = sub_1B5CF8CE4(a1, (v16 & 0xFFFFFFFC) + v28, a3, a4, a5 + 1, a6, a7, v40);
LABEL_26:
    v17 = v21;
    sub_1B5CF9D24(v20);
    goto LABEL_27;
  }

  v17 = 0;
LABEL_27:
  v29 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t sub_1B5CF9020(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0;
  if (a4 >= a3)
  {
    v17 = *(a1 + 8);
    if (v17)
    {
      v27[0] = *(a1 + 4);
      v27[1] = v17;
      v28 = a2;
      v29 = a4;
      sub_1B5CF9A6C(a7, a6, v27, 1, &v30);
      v18 = v30;
      if (v30)
      {
        v18 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v18 = 0;
    }

    if (a5)
    {
      goto LABEL_23;
    }

    v19 = 0;
    v20 = a1 + 12;
    while (1)
    {
      v21 = *(v20 + 8 * v19);
      *(a2 + a4) = v19;
      if ((v21 & 3) == 2)
      {
        sub_1B5CF9AD8(v31, a7);
        v22 = v31;
        v23 = sub_1B5CFA51C((v21 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v31);
      }

      else
      {
        if ((v21 & 3) != 1)
        {
          goto LABEL_16;
        }

        sub_1B5CF9AD8(v32, a7);
        v22 = v32;
        v23 = sub_1B5CF9020(v21 & 0xFFFFFFFFFFFFFFFCLL, a2, (a3 + 1), a4 + 1, 0, a6, v32);
      }

      v30 = v23;
      sub_1B5CF9D24(v22);
LABEL_16:
      v18 = v30;
      if ((v30 & 1) == 0 && v19++ != 255)
      {
        continue;
      }

      goto LABEL_23;
    }
  }

  v14 = *(a1 + 8 * *(a2 + a4) + 12);
  if ((v14 & 3) == 2)
  {
    sub_1B5CF9AD8(v33, a7);
    v15 = v33;
    v16 = sub_1B5CFA51C((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v33);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      v18 = 0;
      goto LABEL_23;
    }

    sub_1B5CF9AD8(v34, a7);
    v15 = v34;
    v16 = sub_1B5CF9020(v14 & 0xFFFFFFFFFFFFFFFCLL, a2, a3, a4 + 1, a5, a6, v34);
  }

  v18 = v16;
  sub_1B5CF9D24(v15);
LABEL_23:
  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1B5CF9254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1B5CF9D24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CF9294(int *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0;
  if (a4 >= a3)
  {
    v17 = *a1;
    if (*a1)
    {
      v27[0] = 0;
      v27[1] = v17;
      v28 = a2;
      v29 = a4;
      sub_1B5CF9A6C(a7, a6, v27, 1, &v30);
      v18 = v30;
      if (v30)
      {
        v18 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v18 = 0;
    }

    if (a5)
    {
      goto LABEL_23;
    }

    v19 = 0;
    v20 = a1 + 1;
    while (1)
    {
      v21 = *&v20[2 * v19];
      *(a2 + a4) = v19;
      if ((v21 & 3) == 2)
      {
        sub_1B5CF9AD8(v31, a7);
        v22 = v31;
        v23 = sub_1B5CFA650((v21 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v31);
      }

      else
      {
        if ((v21 & 3) != 1)
        {
          goto LABEL_16;
        }

        sub_1B5CF9AD8(v32, a7);
        v22 = v32;
        v23 = sub_1B5CF9294(v21 & 0xFFFFFFFFFFFFFFFCLL, a2, (a3 + 1), a4 + 1, 0, a6, v32);
      }

      v30 = v23;
      sub_1B5CF9D24(v22);
LABEL_16:
      v18 = v30;
      if ((v30 & 1) == 0 && v19++ != 255)
      {
        continue;
      }

      goto LABEL_23;
    }
  }

  v14 = *&a1[2 * *(a2 + a4) + 1];
  if ((v14 & 3) == 2)
  {
    sub_1B5CF9AD8(v33, a7);
    v15 = v33;
    v16 = sub_1B5CFA650((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v33);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      v18 = 0;
      goto LABEL_23;
    }

    sub_1B5CF9AD8(v34, a7);
    v15 = v34;
    v16 = sub_1B5CF9294(v14 & 0xFFFFFFFFFFFFFFFCLL, a2, a3, a4 + 1, a5, a6, v34);
  }

  v18 = v16;
  sub_1B5CF9D24(v15);
LABEL_23:
  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1B5CF94C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1B5CF9D24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CF9500(uint64_t a1, int8x8_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v50 = 0;
  if (a5 < a4)
  {
    v14 = *(a3 + a5);
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    v17 = 1 << v14;
    if (((1 << v14) & *&v16) != 0)
    {
      if (v14 >= 0x40)
      {
        v18 = 0;
        v33 = a2;
        do
        {
          v34 = *v33++;
          v35 = vcnt_s8(v34);
          v35.i16[0] = vaddlv_u8(v35);
          v18 += v35.i32[0];
          --v15;
        }

        while (v15);
      }

      else
      {
        v18 = 0;
      }

      v36 = vcnt_s8(((v17 - 1) & *&v16));
      v36.i16[0] = vaddlv_u8(v36);
      v37 = a2[5].i32[v18 + v36.i32[0] + 1];
      if ((v37 & 3u) > 1)
      {
        if ((v37 & 3) == 2)
        {
          v38 = *(a1 + 2080);
          sub_1B5CF9AD8(v54, a8);
          v39 = v54;
          v40 = sub_1B5CF9914(((v37 & 0xFFFFFFFC) + v38), a3, a4, a5 + 1, a6, a7, v54);
        }

        else
        {
          v42 = *(a1 + 2080);
          sub_1B5CF9AD8(v55, a8);
          v39 = v55;
          v40 = sub_1B5CF9500(a1, (v37 & 0xFFFFFFFC) + v42, a3, a4, a5 + 1, a6, a7, v55);
        }
      }

      else
      {
        if ((v37 & 3) == 0)
        {
          goto LABEL_33;
        }

        v41 = *(a1 + 2080);
        sub_1B5CF9AD8(v56, a8);
        v39 = v56;
        v40 = sub_1B5CF891C(a1, (v37 & 0xFFFFFFFC) + v41, a3, a4, a5 + 1, a6, a7, v56);
      }

      v20 = v40;
      sub_1B5CF9D24(v39);
      goto LABEL_39;
    }

LABEL_33:
    v20 = 0;
    goto LABEL_39;
  }

  v19 = a2[5].i32[0];
  if (!v19)
  {
    v20 = 0;
    goto LABEL_9;
  }

  v47[0] = a2[4].i32[1];
  v47[1] = v19;
  v48 = a3;
  v49 = a4;
  sub_1B5CF9A6C(a8, a7, v47, 1, &v50);
  v20 = v50;
  if ((v50 & 1) == 0)
  {
LABEL_9:
    if (a6)
    {
      goto LABEL_39;
    }

    v21 = 0;
    while (1)
    {
      if (v21 >> 6 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21 >> 6;
      }

      v23 = a2[v21 >> 6];
      if ((*&v23 & (1 << v21)) == 0)
      {
        goto LABEL_26;
      }

      if (v21 >= 0x40)
      {
        v24 = 0;
        v25 = a2;
        do
        {
          v26 = *v25++;
          v27 = vcnt_s8(v26);
          v27.i16[0] = vaddlv_u8(v27);
          v24 += v27.i32[0];
          --v22;
        }

        while (v22);
      }

      else
      {
        v24 = 0;
      }

      v28 = vcnt_s8((*&v23 & ((1 << v21) - 1)));
      v28.i16[0] = vaddlv_u8(v28);
      v29 = a2[5].i32[v24 + v28.i32[0] + 1];
      *(a3 + a5) = v21;
      if ((v29 & 3u) > 1)
      {
        v32 = *(a1 + 2080);
        if ((v29 & 3) == 2)
        {
          sub_1B5CF9AD8(v51, a8);
          v50 = sub_1B5CF9914((v32 + (v29 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v51);
          v31 = v51;
        }

        else
        {
          sub_1B5CF9AD8(v52, a8);
          v50 = sub_1B5CF9500(a1, v32 + (v29 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v52);
          v31 = v52;
        }
      }

      else
      {
        if ((v29 & 3) == 0)
        {
          goto LABEL_26;
        }

        v30 = *(a1 + 2080);
        sub_1B5CF9AD8(v53, a8);
        v50 = sub_1B5CF891C(a1, v30 + (v29 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v53);
        v31 = v53;
      }

      sub_1B5CF9D24(v31);
LABEL_26:
      v20 = v50;
      if ((v50 & 1) == 0 && ++v21 != 256)
      {
        continue;
      }

      goto LABEL_39;
    }
  }

  v20 = 1;
LABEL_39:
  v43 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t sub_1B5CF9914(unsigned int *a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, uint64_t a6, uint64_t a7)
{
  v31 = 0;
  v7 = *a1;
  if (*a1)
  {
    v8 = a4;
    v9 = 0;
    v10 = (a2 + a4);
    v11 = a3 - a4;
    v12 = a1 + 2;
    v22 = a3;
    __dst = (a2 + a3);
    do
    {
      v13 = v12 + v9;
      v14 = *(v13 + 4);
      if (v11 <= v14 && !memcmp(v13 + 10, v10, v11))
      {
        v15 = a5;
        if (v11 == v14)
        {
          v15 = 0;
        }

        if ((v15 & 1) == 0)
        {
          v16 = v14 + v8;
          v17 = v16 - a3;
          v18 = v22;
          if (v17 >= 1)
          {
            memcpy(__dst, &v13[v14 - v17 + 10], v17);
            v18 = v16;
          }

          *(a2 + v18) = 0;
          v28[0] = *v13;
          v28[1] = *(v13 + 1);
          v29 = a2;
          v30 = v18;
          sub_1B5CF9A6C(a7, a6, v28, v11 == v14, &v31);
          if (v31)
          {
            return 1;
          }

          LODWORD(v14) = *(v13 + 4);
          v8 = a4;
        }
      }

      v9 += v14 + 10;
    }

    while (v9 < v7);
  }

  return 0;
}

uint64_t sub_1B5CF9A6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_1B5CEC274();
  }

  return (*(*v5 + 48))(v5, &v10, &v9, &v8, &v7);
}

uint64_t sub_1B5CF9AD8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B5CF9B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_1B5CEC274();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t sub_1B5CF9C40(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D55690;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5CF9C84(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56BA8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B5CF9CD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_1B5CF9D24(uint64_t a1)
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

uint64_t sub_1B5CF9DA4(uint64_t a1, int8x8_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = *MEMORY[0x1E69E9840];
  v49 = 0;
  if (a5 < a4)
  {
    v14 = *(a3 + a5);
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    v17 = 1 << v14;
    if (((1 << v14) & *&v16) != 0)
    {
      if (v14 >= 0x40)
      {
        v18 = 0;
        v33 = a2;
        do
        {
          v34 = *v33++;
          v35 = vcnt_s8(v34);
          v35.i16[0] = vaddlv_u8(v35);
          v18 += v35.i32[0];
          --v15;
        }

        while (v15);
      }

      else
      {
        v18 = 0;
      }

      v36 = vcnt_s8(((v17 - 1) & *&v16));
      v36.i16[0] = vaddlv_u8(v36);
      v37 = a2[4].i32[v18 + v36.i32[0] + 1];
      if ((v37 & 3u) > 1)
      {
        v38 = *(a1 + 2080);
        if ((v37 & 3) == 2)
        {
          sub_1B5CF9AD8(v53, a8);
          v39 = v53;
          v40 = sub_1B5CFA1B8(a1, ((v37 & 0xFFFFFFFC) + v38), a3, a4, a5 + 1, a6, a7, v53);
        }

        else
        {
          sub_1B5CF9AD8(v54, a8);
          v39 = v54;
          v40 = sub_1B5CF9DA4(a1, (v37 & 0xFFFFFFFC) + v38, a3, a4, a5 + 1, a6, a7, v54);
        }
      }

      else
      {
        if ((v37 & 3) == 0)
        {
          goto LABEL_33;
        }

        v41 = *(a1 + 2080);
        sub_1B5CF9AD8(v55, a8);
        v39 = v55;
        v40 = sub_1B5CF8CE4(a1, (v37 & 0xFFFFFFFC) + v41, a3, a4, a5 + 1, a6, a7, v55);
      }

      v20 = v40;
      sub_1B5CF9D24(v39);
      goto LABEL_39;
    }

LABEL_33:
    v20 = 0;
    goto LABEL_39;
  }

  v19 = a2[4].i32[0];
  if (!v19)
  {
    v20 = 0;
    goto LABEL_9;
  }

  v46[0] = 0;
  v46[1] = v19;
  v47 = a3;
  v48 = a4;
  sub_1B5CF9A6C(a8, a7, v46, 1, &v49);
  v20 = v49;
  if ((v49 & 1) == 0)
  {
LABEL_9:
    if (a6)
    {
      goto LABEL_39;
    }

    v21 = 0;
    while (1)
    {
      if (v21 >> 6 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21 >> 6;
      }

      v23 = a2[v21 >> 6];
      if ((*&v23 & (1 << v21)) == 0)
      {
        goto LABEL_26;
      }

      if (v21 >= 0x40)
      {
        v24 = 0;
        v25 = a2;
        do
        {
          v26 = *v25++;
          v27 = vcnt_s8(v26);
          v27.i16[0] = vaddlv_u8(v27);
          v24 += v27.i32[0];
          --v22;
        }

        while (v22);
      }

      else
      {
        v24 = 0;
      }

      v28 = vcnt_s8((*&v23 & ((1 << v21) - 1)));
      v28.i16[0] = vaddlv_u8(v28);
      v29 = a2[4].i32[v24 + v28.i32[0] + 1];
      *(a3 + a5) = v21;
      if ((v29 & 3u) > 1)
      {
        v32 = *(a1 + 2080);
        if ((v29 & 3) == 2)
        {
          sub_1B5CF9AD8(v50, a8);
          v49 = sub_1B5CFA1B8(a1, (v32 + (v29 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v50);
          v31 = v50;
        }

        else
        {
          sub_1B5CF9AD8(v51, a8);
          v49 = sub_1B5CF9DA4(a1, v32 + (v29 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v51);
          v31 = v51;
        }
      }

      else
      {
        if ((v29 & 3) == 0)
        {
          goto LABEL_26;
        }

        v30 = *(a1 + 2080);
        sub_1B5CF9AD8(v52, a8);
        v49 = sub_1B5CF8CE4(a1, v30 + (v29 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v52);
        v31 = v52;
      }

      sub_1B5CF9D24(v31);
LABEL_26:
      v20 = v49;
      if ((v49 & 1) == 0 && ++v21 != 256)
      {
        continue;
      }

      goto LABEL_39;
    }
  }

  v20 = 1;
LABEL_39:
  v42 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t sub_1B5CFA1B8(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int a4, unsigned int a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v78 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v10 = a4 - a5;
  v11 = *a2;
  if ((*(a1 + 2064) & 4) != 0)
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    __s1 = 0u;
    if (v11)
    {
      v22 = 0;
      v23 = 0;
      v24 = a2 + 1;
      __dsta = a5 - a4;
      __s2a = (a3 + a5);
      v43 = (a3 + a4);
      v44 = a2 + 1;
      do
      {
        v25 = v23;
        v23 = v24 + v22;
        v26 = v23[6];
        if (v25)
        {
          v27 = v25[6];
          if (v26 > v27)
          {
            memcpy(&__s1 + v27, v25 + 7, v26 - v27);
          }
        }

        v28 = *(v23 + 2);
        v29 = v28 + v26;
        if ((v28 + v26) >= v10)
        {
          if (v9 == v8 || (v26 >= v10 ? (v30 = v10) : (v30 = v26), !memcmp(&__s1, __s2a, v30)))
          {
            v31 = v10 - v26;
            if (v10 - v26 < 0 || (v28 >= v31 ? (v32 = v31) : (v32 = v28), !memcmp(v23 + 7, &__s2a[v26], v32)))
            {
              v33 = a6;
              if (v10 == v29)
              {
                v33 = 0;
              }

              if ((v33 & 1) == 0)
              {
                v34 = v26 + v8;
                v35 = v9;
                v36 = v34 - v9;
                if (v36 < 1)
                {
                  v34 = v35;
                }

                else
                {
                  memcpy(v43, &__s1 + v26 - v36, v36);
                  v28 = *(v23 + 2);
                  LODWORD(v26) = v23[6];
                }

                v37 = __dsta + v28 + v26;
                if (v37 < 1)
                {
                  v9 = a4;
                  v39 = a3;
                }

                else
                {
                  v38 = v37 - (v36 & ~(v36 >> 31));
                  v39 = a3;
                  memcpy((a3 + v34), &v23[v28 - v38 + 7], v38);
                  v34 += v38;
                  v9 = a4;
                }

                *(v39 + v34) = 0;
                v40 = *v23;
                v58[0] = 0;
                v58[1] = v40;
                v59 = v39;
                v60 = v34;
                sub_1B5CF9A6C(a8, a7, v58, v10 == v29, &v61);
                if (v61)
                {
LABEL_46:
                  result = 1;
                  goto LABEL_45;
                }

                v28 = *(v23 + 2);
                v8 = a5;
                v24 = v44;
              }
            }
          }
        }

        v22 += v28 + 7;
      }

      while (v22 < v11);
    }
  }

  else if (v11)
  {
    v12 = 0;
    v13 = (a3 + a5);
    v14 = a2 + 1;
    __s2 = a4;
    v15 = a6;
    __dst = (a3 + a4);
    do
    {
      v16 = v14 + v12;
      v17 = *(v16 + 2);
      if (v10 <= v17 && !memcmp(v16 + 6, v13, v10))
      {
        v18 = v10 == v17 ? 0 : v15;
        if ((v18 & 1) == 0)
        {
          v19 = v17 + a5 - a4;
          v20 = __s2;
          if (v19 >= 1)
          {
            memcpy(__dst, &v16[v17 - v19 + 6], v19);
            v20 = v17 + a5;
          }

          *(a3 + v20) = 0;
          v21 = *v16;
          LODWORD(__s1) = 0;
          DWORD1(__s1) = v21;
          *(&__s1 + 1) = a3;
          *&v63 = v20;
          sub_1B5CF9A6C(a8, a7, &__s1, v10 == v17, &v61);
          if (v61)
          {
            goto LABEL_46;
          }

          LODWORD(v17) = *(v16 + 2);
          v15 = a6;
        }
      }

      v12 += v17 + 6;
    }

    while (v12 < v11);
  }

  result = 0;
LABEL_45:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5CFA51C(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, uint64_t a6, uint64_t a7)
{
  v27 = 0;
  if (a1)
  {
    v10 = a1;
    v11 = 0;
    v12 = (a2 + a4);
    v13 = (a3 - a4);
    __dst = (a2 + a3);
    v21 = a3;
    while (1)
    {
      v15 = *(v10 + 10);
      if (v13 <= v15 && !memcmp(v10 + 22, v12, v13))
      {
        v16 = v13 == v15 ? 0 : a5;
        if ((v16 & 1) == 0)
        {
          v17 = v15 + a4 - a3;
          v18 = v21;
          if (v17 >= 1)
          {
            memcpy(__dst, v10 + v15 - v17 + 22, v17);
            v18 = v15 + a4;
          }

          *(a2 + v18) = 0;
          v24[0] = *(v10 + 3);
          v24[1] = *(v10 + 4);
          v25 = a2;
          v26 = v18;
          sub_1B5CF9A6C(a7, a6, v24, v13 == v15, &v27);
          v11 = v27;
          if (v27)
          {
            break;
          }
        }
      }

      v10 = *v10;
      if (!v10)
      {
        return v11 & 1;
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1B5CFA650(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, uint64_t a6, uint64_t a7)
{
  v28 = 0;
  if (a1)
  {
    v10 = a1;
    v11 = 0;
    v12 = (a2 + a4);
    v13 = (a3 - a4);
    __dst = (a2 + a3);
    v22 = a3;
    while (1)
    {
      v15 = *(v10 + 6);
      if (v13 <= v15 && !memcmp(v10 + 14, v12, v13))
      {
        v16 = v13 == v15 ? 0 : a5;
        if ((v16 & 1) == 0)
        {
          v17 = v15 + a4 - a3;
          v18 = v22;
          if (v17 >= 1)
          {
            memcpy(__dst, v10 + v15 - v17 + 14, v17);
            v18 = v15 + a4;
          }

          *(a2 + v18) = 0;
          v19 = *(v10 + 2);
          v25[0] = 0;
          v25[1] = v19;
          v26 = a2;
          v27 = v18;
          sub_1B5CF9A6C(a7, a6, v25, v13 == v15, &v28);
          v11 = v28;
          if (v28)
          {
            break;
          }
        }
      }

      v10 = *v10;
      if (!v10)
      {
        return v11 & 1;
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1B5CFA77C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v6 = a2;
  v7 = a1;
  v8 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080);
  if (*(a1 + 2064))
  {
    if (!a4)
    {
      *(a2 + 16) = *(v8 + 1024);
      *(a2 + 20) = *(v8 + 1032);
      return 1;
    }
  }

  else if (!a4)
  {
    *(a2 + 16) = *(v8 + 1024);
    return 1;
  }

  sub_1B5CFA834(a1, a2, *(v8 + 4 * *a3));

  return sub_1B5CF6CC0(v7, v6, a3 + 1, (a4 - 1));
}

uint64_t sub_1B5CFA834(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a2 != a3)
  {
    if ((a3 & 3u) <= 1uLL)
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 16) = 0;
LABEL_18:
        *a2 = a3;
        *(a2 + 8) = 0;
        return result;
      }

      v6 = *(result + 2064);
      v7 = (a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080);
      *(a2 + 16) = *(v7 + 1024);
      if ((v6 & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = *(v7 + 1032);
LABEL_17:
      *(a2 + 20) = v8;
      goto LABEL_18;
    }

    if ((a3 & 3) == 2)
    {
      v3 = *(result + 2064);
      if ((v3 & 4) != 0)
      {
        v5 = *((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
      }

      else
      {
        v4 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
        if (v3)
        {
          *(a2 + 16) = v4[1];
          v8 = *v4;
          goto LABEL_17;
        }

        v5 = *v4;
      }
    }

    else
    {
      v9 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
      if (*(result + 2064))
      {
        *(a2 + 16) = v9[10];
        v8 = v9[9];
        goto LABEL_17;
      }

      v5 = v9[8];
    }

    *(a2 + 16) = v5;
    goto LABEL_18;
  }

  return result;
}

unint64_t sub_1B5CFA8FC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 8);
  if ((*(a1 + 2064) & 1) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *(a2 + 16);
    if (v9 > *(v8 + 12))
    {
      sub_1B5CFD380();
    }

    if (!v8)
    {
      LOBYTE(v10) = 0;
      goto LABEL_46;
    }

    v10 = v8;
    while (1)
    {
      v11 = *(v10 + 12);
      if (v10 != v8)
      {
        if (v9 >= v11)
        {
          goto LABEL_18;
        }

        if (v9)
        {
          v12 = (v10 + 14);
          v13 = *(a2 + 16);
          v14 = (v8 + 14);
          do
          {
            v16 = *v12++;
            v15 = v16;
            v17 = *v14++;
            if (v15 != v17)
            {
              goto LABEL_18;
            }
          }

          while (--v13);
        }
      }

      if (v9 >= v11 || a4 == 0)
      {
        LODWORD(v19) = 0;
        LODWORD(v20) = *(a2 + 16);
      }

      else
      {
        v19 = 0;
        v20 = *(a2 + 16);
        do
        {
          if (*(v10 + 14 + v20) != a3[v19])
          {
            break;
          }

          ++v20;
          ++v19;
          if (v20 >= v11)
          {
            break;
          }
        }

        while (v19 < a4);
      }

      if (v19 == a4)
      {
        *(a2 + 8) = v10 | 2;
        if (v20 == v11)
        {
          *(a2 + 16) = v11;
          *(a2 + 20) = *(v10 + 8);
        }

        else
        {
          *(a2 + 16) = v9 + a4;
        }

        LOBYTE(v10) = 1;
        goto LABEL_46;
      }

LABEL_18:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_46;
      }
    }
  }

  v36[1] = v36;
  v36[0] = *a2;
  v21 = *(a2 + 16);
  v39 = *(a2 + 20);
  v40 = v7;
  v22 = *(a2 + 24);
  MEMORY[0x1EEE9AC00]();
  v23 = v36 - ((v21 + 15) & 0x1FFFFFFF0);
  v24 = *(a2 + 16);
  memcpy(v23, (v25 + 22), v24);
  v26 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
  if (v26)
  {
    v38 = 0;
    v27 = v24 + a4;
    v37 = a4;
    do
    {
      v28 = *(v26 + 20);
      if (v27 <= v28 && !memcmp((v26 + 22), v23, v24) && !memcmp((v26 + 22 + v24), a3, v37))
      {
        if (v27 == v28)
        {
          *(a2 + 8) = v26 | 2;
          v35 = *(v26 + 16);
          *(a2 + 24) = *(v26 + 12);
          *(a2 + 16) = v27;
          *(a2 + 20) = v35;
          LOBYTE(v10) = 1;
          goto LABEL_46;
        }

        v29 = v39;
        if ((v38 & 1) == 0)
        {
          v29 = 0;
          LODWORD(v21) = v21 + a4;
        }

        v30 = v40;
        if ((v38 & 1) == 0)
        {
          v30 = v26 | 2;
        }

        v40 = v30;
        if ((v38 & 1) == 0)
        {
          v22 = 0.0;
        }

        v38 = 1;
        v39 = v29;
      }

      v26 = *v26;
    }

    while (v26);
  }

  else
  {
    v38 = 0;
  }

  v31 = v40;
  *a2 = v36[0];
  *(a2 + 8) = v31;
  LOBYTE(v10) = v38;
  v32 = v39;
  *(a2 + 16) = v21;
  *(a2 + 20) = v32;
  *(a2 + 24) = v22;
LABEL_46:
  v33 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1B5CFABCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != a3)
  {
    if ((a3 & 3u) > 1uLL)
    {
      if ((a3 & 3) != 2)
      {
        goto LABEL_15;
      }

      v3 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(result + 2064))
      {
        *(a2 + 20) = v3[4];
        *(a2 + 24) = v3[3];
        *a2 = a3;
        goto LABEL_15;
      }

      if (*(v3 + 6))
      {
        v4 = 0;
      }

      else
      {
        v4 = v3[2];
      }
    }

    else
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 20) = 0;
LABEL_15:
        *(a2 + 8) = a3;
        *(a2 + 16) = 0;
        return result;
      }

      v5 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(result + 2064))
      {
        *(a2 + 20) = v5[2];
        *(a2 + 24) = v5[1];
        goto LABEL_15;
      }

      v4 = *v5;
    }

    *(a2 + 20) = v4;
    goto LABEL_15;
  }

  return result;
}

void sub_1B5CFAC84(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = a1;
  v5 = 0;
  v32 = *MEMORY[0x1E69E9840];
  v6 = a2 + 12;
  v26 = a2 + 12;
  do
  {
    v7 = *(v6 + 8 * v5);
    if ((v7 & 3) == 2)
    {
      v8 = v3 + *(*v3 - 24);
      if ((v8[32] & 5) != 0)
      {
        v9 = 0xFFFFFFFFLL;
      }

      else
      {
        (*(**(v8 + 5) + 32))(v30);
        v9 = v31 | 2;
      }

      v29 = v9;
      v10 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      v11 = *(v4 + 2088);
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10[2];
      v14 = malloc_type_malloc(1035 * v12 + 8, 0x100004077774924uLL);
      v15 = malloc_type_malloc(8 * v12, 0x2004093837F09uLL);
      LODWORD(v16) = 0;
      v17 = 1;
      v18 = v10;
      do
      {
        LODWORD(v19) = v17;
        if (v12 <= v16)
        {
          v15 = malloc_type_realloc(v15, 16 * v12, 0x2004093837F09uLL);
          v12 *= 2;
        }

        *(v15 + v16) = v18;
        v18 = *v18;
        v16 = (v16 + 1);
        v17 = v19 + 1;
      }

      while (v18);
      qsort(v15, v16, 8uLL, sub_1B5CF88DC);
      v20 = 0;
      if (v16)
      {
        v21 = v15;
        v19 = v19;
        do
        {
          v22 = *v21++;
          v23 = v14 + v20 + 8;
          *(v23 + 8) = *(v22 + 20);
          *v23 = *(v22 + 12);
          *(v23 + 4) = *(v22 + 16);
          memcpy((v23 + 10), (v22 + 22), *(v22 + 20));
          v20 += *(v22 + 20) + 10;
          --v19;
        }

        while (v19);
      }

      *v14 = v20;
      v14[1] = v13;
      v3 = a3;
      std::ostream::write();
      free(v15);
      free(v14);
      do
      {
        v24 = *v10;
        free(v10);
        v10 = v24;
      }

      while (v24);
      v6 = v26;
      v4 = a1;
      *(v26 + 8 * v5) = v29;
    }

    else if ((v7 & 3) == 1)
    {
      sub_1B5CFAC84(v4, v7 & 0xFFFFFFFFFFFFFFFCLL, v3);
    }

    ++v5;
  }

  while (v5 != 256);
  v25 = *MEMORY[0x1E69E9840];
}

void sub_1B5CFAF34(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = a1;
  v5 = 0;
  v41 = *MEMORY[0x1E69E9840];
  v6 = a2 + 4;
  v36 = a2 + 4;
  do
  {
    v7 = *(v6 + 8 * v5);
    if ((v7 & 3) == 2)
    {
      v8 = v3 + *(*v3 - 24);
      if ((v8[32] & 5) != 0)
      {
        v9 = 0xFFFFFFFFLL;
      }

      else
      {
        (*(**(v8 + 5) + 32))(v39);
        v9 = v40 | 2;
      }

      v38 = v9;
      v10 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      v11 = *(v4 + 2088);
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = malloc_type_malloc(1031 * v12 + 4, 0x100004077774924uLL);
      v14 = malloc_type_malloc(8 * v12, 0x2004093837F09uLL);
      v15 = 0;
      if (v10)
      {
        v16 = v10;
        do
        {
          if (v12 <= v15)
          {
            v14 = malloc_type_realloc(v14, 16 * v12, 0x2004093837F09uLL);
            v12 *= 2;
          }

          *(v14 + v15) = v16;
          v16 = *v16;
          ++v15;
        }

        while (v16);
      }

      v17 = *(v4 + 2064);
      if ((v17 & 4) != 0)
      {
        v24 = v15;
        qsort(v14, v15, 8uLL, sub_1B5CF83D0);
        if (v15)
        {
          v25 = 0;
          v20 = 0;
          v26 = 0;
          do
          {
            v27 = v26;
            v26 = *(v14 + v25);
            if (v27)
            {
              v28 = 0;
              v29 = *(v26 + 12);
              v30 = *(v26 + 12);
              while (v29 != v28)
              {
                if (*(v27 + 12) <= v28 || *(v26 + 14 + v28) != *(v27 + 14 + v28))
                {
                  v30 = v28;
                  break;
                }

                if (++v28 == 255)
                {
                  v30 = 255;
                  break;
                }
              }
            }

            else
            {
              v30 = 0;
              LOWORD(v29) = *(v26 + 12);
            }

            v31 = v13 + v20 + 4;
            v32 = v29 - v30;
            *(v31 + 4) = v32;
            *v31 = *(v26 + 8);
            *(v31 + 6) = v30;
            memcpy((v31 + 7), (v26 + v30 + 14), v32);
            v20 = v20 - v30 + *(v26 + 12) + 7;
            ++v25;
          }

          while (v25 != v24);
          v3 = a3;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v18 = v15;
        if (v17)
        {
          v19 = sub_1B5CF88DC;
        }

        else
        {
          v19 = sub_1B5CF83D0;
        }

        qsort(v14, v15, 8uLL, v19);
        v20 = 0;
        if (v15)
        {
          v21 = v14;
          do
          {
            v22 = *v21++;
            v23 = v13 + v20 + 4;
            *(v23 + 4) = *(v22 + 12);
            *v23 = *(v22 + 8);
            memcpy((v23 + 6), (v22 + 14), *(v22 + 12));
            v20 += *(v22 + 12) + 6;
            --v18;
          }

          while (v18);
        }
      }

      *v13 = v20;
      std::ostream::write();
      free(v14);
      free(v13);
      v6 = v36;
      v4 = a1;
      do
      {
        v33 = *v10;
        free(v10);
        v10 = v33;
      }

      while (v33);
      *(v36 + 8 * v5) = v38;
    }

    else if ((v7 & 3) == 1)
    {
      sub_1B5CFAF34(v4, v7 & 0xFFFFFFFFFFFFFFFCLL, v3);
    }

    ++v5;
  }

  while (v5 != 256);
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B5CFB2E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a1 + *(*a1 - 24);
  if ((v6[32] & 5) != 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v33 = -1;
  }

  else
  {
    (*(**(v6 + 5) + 32))(&v25);
  }

  MEMORY[0x1B8C87EC0](v34, a1);
  v7 = a1 + *(*a1 - 24);
  if ((v7[32] & 5) == 0)
  {
    (*(**(v7 + 5) + 32))(v35);
    if (v36 == -1)
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B8C87ED0](v34);
  while (1)
  {
    v8 = a1 + *(*a1 - 24);
    if ((v8[32] & 5) != 0)
    {
      v9 = -1;
    }

    else
    {
      (*(**(v8 + 5) + 32))(v35);
      v9 = v36;
    }

    if (v9 >= a4)
    {
      break;
    }

    LOBYTE(v35[0]) = 0;
    sub_1B5CE599C(a1, v35, 1);
  }

  MEMORY[0x1B8C87EC0](v34, a1);
  v10 = a1 + *(*a1 - 24);
  if ((v10[32] & 5) == 0)
  {
    (*(**(v10 + 5) + 32))(v35);
    if (v36 == -1)
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B8C87ED0](v34);
  std::ostream::write();
  v22 = v31;
  v23 = v32;
  v24 = v33;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v21 = v30;
  v16 = v25;
  v17 = v26;
  MEMORY[0x1B8C87EC0](v15, a1);
  v11 = a1 + *(*a1 - 24);
  if ((v11[32] & 5) == 0)
  {
    v12 = *(v11 + 5);
    v35[0] = v16;
    v35[1] = v17;
    v35[2] = v18;
    v35[3] = v19;
    v36 = v24;
    v35[6] = v22;
    v35[7] = v23;
    v35[4] = v20;
    v35[5] = v21;
    (*(*v12 + 40))(v34);
    if (v34[16] == -1)
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  result = MEMORY[0x1B8C87ED0](v15);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5CFB6DC(_DWORD *a1, void *a2, int a3, int a4, int *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = 0uLL;
  for (i = 3; i != 515; i += 8)
  {
    v9 = vsubq_s32(v9, vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&a1[i]), vceqzq_s64(*&a1[i + 4]))));
  }

  v11 = vaddvq_s32(v9);
  if (v11 > 0xC7)
  {
    a4 = 1;
  }

  v35 = a4;
  if (a4)
  {
    v13 = 0;
    v14 = *a5;
    *a5 = v14 + 1036;
    do
    {
      v15 = *&a1[2 * v13 + 3];
      if ((v15 & 3) == 1)
      {
        v16 = *a5;
        if (sub_1B5CFB6DC(v15 & 0xFFFFFFFFFFFFFFFCLL, a2, 1, 0, a5))
        {
          v17 = v16 | 1;
        }

        else
        {
          v17 = v16 | 3;
        }

        v36[v13] = v17;
      }

      else
      {
        v36[v13] = v15;
      }

      ++v13;
    }

    while (v13 != 256);
    v36[256] = a1[2];
    v37 = *a1;
    sub_1B5CFB2E4(a2, v36, 1036, v14);
    if (a3)
    {
LABEL_16:
      free(a1);
    }
  }

  else
  {
    v33 = a3;
    v34 = v11;
    v20 = 4 * v11 + 44;
    v21 = *a5;
    MEMORY[0x1EEE9AC00]();
    v23 = (&v30 - v22);
    bzero(&v30 - v22, v20);
    bzero(v23, v20);
    v24 = 0;
    v25 = 0;
    v31 = v21;
    v32 = v20;
    *a5 = v21 + v20;
    v26 = &v23[2].i8[12];
    do
    {
      v27 = *&a1[2 * v24 + 3];
      if (v27)
      {
        v23->i64[v24 >> 6] |= 1 << v24;
        if ((v27 & 3) == 1)
        {
          v28 = *a5;
          if (sub_1B5CFB6DC(v27 & 0xFFFFFFFFFFFFFFFCLL, a2, 1, 0, a5))
          {
            v29 = v28 | 1;
          }

          else
          {
            v29 = v28 | 3;
          }

          *&v26[4 * v25] = v29;
        }

        else
        {
          *&v26[4 * v25] = v27;
        }

        ++v25;
      }

      ++v24;
    }

    while (v24 != 256);
    if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v23)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v23[1])))))) != v34)
    {
      sub_1B5CFD3AC();
    }

    v23[2].i32[2] = a1[2];
    v23[2].i64[0] = *a1;
    sub_1B5CFB2E4(a2, v23, v32, v31);
    if (v33)
    {
      goto LABEL_16;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v35;
}

uint64_t sub_1B5CFB99C(_DWORD *a1, void *a2, int a3, int a4, int *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = 0uLL;
  for (i = 1; i != 513; i += 8)
  {
    v9 = vsubq_s32(v9, vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&a1[i]), vceqzq_s64(*&a1[i + 4]))));
  }

  v11 = vaddvq_s32(v9);
  if (v11 > 0xC7)
  {
    a4 = 1;
  }

  v34 = a4;
  if (a4)
  {
    v13 = 0;
    v14 = *a5;
    *a5 = v14 + 1028;
    do
    {
      v15 = *&a1[2 * v13 + 1];
      if ((v15 & 3) == 1)
      {
        v16 = *a5;
        if (sub_1B5CFB99C(v15 & 0xFFFFFFFFFFFFFFFCLL, a2, 1, 0, a5))
        {
          v17 = v16 | 1;
        }

        else
        {
          v17 = v16 | 3;
        }

        v35[v13] = v17;
      }

      else
      {
        v35[v13] = v15;
      }

      ++v13;
    }

    while (v13 != 256);
    v35[256] = *a1;
    sub_1B5CFB2E4(a2, v35, 1028, v14);
    if (a3)
    {
LABEL_16:
      free(a1);
    }
  }

  else
  {
    v32 = a3;
    v33 = v11;
    v20 = 4 * v11 + 36;
    v21 = *a5;
    MEMORY[0x1EEE9AC00]();
    v23 = (&v30 - v22);
    bzero(&v30 - v22, v20);
    bzero(v23, v20);
    v24 = 0;
    v25 = 0;
    v30 = v21;
    v31 = v20;
    *a5 = v21 + v20;
    v26 = &v23[2].i8[4];
    do
    {
      v27 = *&a1[2 * v24 + 1];
      if (v27)
      {
        v23->i64[v24 >> 6] |= 1 << v24;
        if ((v27 & 3) == 1)
        {
          v28 = *a5;
          if (sub_1B5CFB99C(v27 & 0xFFFFFFFFFFFFFFFCLL, a2, 1, 0, a5))
          {
            v29 = v28 | 1;
          }

          else
          {
            v29 = v28 | 3;
          }

          *&v26[4 * v25] = v29;
        }

        else
        {
          *&v26[4 * v25] = v27;
        }

        ++v25;
      }

      ++v24;
    }

    while (v24 != 256);
    if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v23)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v23[1])))))) != v33)
    {
      sub_1B5CFD3D8();
    }

    v23[2].i32[0] = *a1;
    sub_1B5CFB2E4(a2, v23, v31, v30);
    if (v32)
    {
      goto LABEL_16;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t sub_1B5CFBC44(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_1B5CFBD94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1B8C87DF0](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t sub_1B5CFBE5C(uint64_t a1)
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

uint64_t sub_1B5CFBF4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D556E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5CFBF8C(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56BC8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5CFBFD8(uint64_t a1)
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

uint64_t sub_1B5CFC058(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B5CFC0F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5CFC164(result, a4);
  }

  return result;
}

void sub_1B5CFC148(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5CFC164(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1B5CEDC00(a1, a2);
  }

  sub_1B5D04FA0();
}

void *sub_1B5CFC1A0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 2080))
    {
      sub_1B5CFD404();
    }

    v2 = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
    if (sub_1B5CF6AF4(a1, v2))
    {
      v2[1] = a2 | 1;
      *(v2 + 5) = *(a2 + 8);
      *(v2 + 6) = *(a2 + 4);
    }

    else if (v2)
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void *sub_1B5CFC244(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1B5CFC3DC(result, a2);
    }

    sub_1B5D04FA0();
  }

  return result;
}

uint64_t sub_1B5CFC350(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D55480;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5CFC390(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56B48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5CFC3DC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t sub_1B5CFC424(uint64_t a1)
{
  sub_1B5CFC45C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5CFC45C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1B5CFC528(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D554D8;
  a2[1] = v2;
  return result;
}

void sub_1B5CFC554(uint64_t a1, uint64_t a2, void **a3, unsigned int *a4, int *a5, int *a6)
{
  v6 = *a5;
  v7 = *a6;
  v8 = *(a1 + 8);
  sub_1B5D5EC18(__p, *a3, *a4);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  if (v9 >= v10)
  {
    v12 = (v9 - *v8) >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
      sub_1B5D04FA0();
    }

    v14 = v10 - *v8;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    v26[4] = v8;
    if (v15)
    {
      sub_1B5CFC3DC(v8, v15);
    }

    v16 = 32 * v12;
    v17 = *__p;
    *(v16 + 16) = v25;
    *v16 = v17;
    __p[1] = 0;
    v25 = 0;
    __p[0] = 0;
    *(v16 + 24) = v6;
    *(v16 + 28) = v7;
    v18 = 32 * v12 + 32;
    v19 = *(v8 + 8) - *v8;
    v20 = (32 * v12 - v19);
    memcpy(v20, *v8, v19);
    v21 = *v8;
    *v8 = v20;
    v26[0] = v21;
    v26[1] = v21;
    *(v8 + 8) = v18;
    v26[2] = v21;
    v22 = *(v8 + 16);
    *(v8 + 16) = 0;
    v26[3] = v22;
    sub_1B5CFC424(v26);
    v23 = SHIBYTE(v25);
    *(v8 + 8) = v18;
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v11 = *__p;
    *(v9 + 16) = v25;
    *v9 = v11;
    *(v9 + 24) = v6;
    *(v9 + 28) = v7;
    *(v8 + 8) = v9 + 32;
  }
}

void sub_1B5CFC6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CFC6C4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56B58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5CFC710(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1B5CFC764(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1B5CFC764(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1B5CFC7B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5CFC164(result, a4);
  }

  return result;
}

void sub_1B5CFC80C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5CFC828(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 2080))
    {
      sub_1B5CFD404();
    }

    v2 = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
    if (sub_1B5CF6AF4(a1, v2))
    {
      v2[1] = a2 | 1;
      *(v2 + 5) = *a2;
    }

    else if (v2)
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1B5CFC934(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D55530;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B5CFC974(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56B68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5CFCA30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D55588;
  a2[1] = v2;
  return result;
}

void sub_1B5CFCA5C(uint64_t a1, uint64_t a2, void **a3, unsigned int *a4, int *a5, int *a6)
{
  v6 = *a5;
  v7 = *a6;
  v8 = *(a1 + 8);
  sub_1B5D5EC18(__p, *a3, *a4);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  if (v9 >= v10)
  {
    v12 = (v9 - *v8) >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
      sub_1B5D04FA0();
    }

    v14 = v10 - *v8;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    v26[4] = v8;
    if (v15)
    {
      sub_1B5CFC3DC(v8, v15);
    }

    v16 = 32 * v12;
    v17 = *__p;
    *(v16 + 16) = v25;
    *v16 = v17;
    __p[1] = 0;
    v25 = 0;
    __p[0] = 0;
    *(v16 + 24) = v6;
    *(v16 + 28) = v7;
    v18 = 32 * v12 + 32;
    v19 = *(v8 + 8) - *v8;
    v20 = (32 * v12 - v19);
    memcpy(v20, *v8, v19);
    v21 = *v8;
    *v8 = v20;
    v26[0] = v21;
    v26[1] = v21;
    *(v8 + 8) = v18;
    v26[2] = v21;
    v22 = *(v8 + 16);
    *(v8 + 16) = 0;
    v26[3] = v22;
    sub_1B5CFC424(v26);
    v23 = SHIBYTE(v25);
    *(v8 + 8) = v18;
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v11 = *__p;
    *(v9 + 16) = v25;
    *v9 = v11;
    *(v9 + 24) = v6;
    *(v9 + 28) = v7;
    *(v8 + 8) = v9 + 32;
  }
}

void sub_1B5CFCBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5CFCBCC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56B78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5CFCC18(uint64_t a1, uint64_t a2)
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

__n128 sub_1B5CFCD2C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D555E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B5CFCD64(uint64_t a1, uint64_t a2, const void **a3, unsigned int *a4, int *a5, int *a6, uint64_t *a7)
{
  v8 = *a4;
  v9 = (*(a1 + 8) + v8);
  v10 = *(a1 + 16);
  v11 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
  if (v11 < 0)
  {
    size = v10->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
  }

  v13 = *a3;
  v14 = *a7;
  v15 = *a5;
  v16 = *a6;
  if (size < v9)
  {
    std::string::resize(v10, v9, 0);
    v10 = *(a1 + 16);
    LOBYTE(v11) = *(&v10->__r_.__value_.__s + 23);
  }

  if ((v11 & 0x80) != 0)
  {
    v10 = v10->__r_.__value_.__r.__words[0];
  }

  memcpy(v10 + *(a1 + 8), v13, v8);
  v19[0] = v16;
  v19[1] = v15;
  v17 = *(a1 + 16);
  if (*(v17 + 23) < 0)
  {
    v17 = *v17;
  }

  v20 = v17;
  v21 = v9;
  return sub_1B5CF9B70(*(a1 + 24), 0, v19, v14);
}

uint64_t sub_1B5CFCE40(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D56B88))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5CFCE8C(uint64_t a1)
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

uint64_t sub_1B5CFCF0C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B5CFCFA4(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8C87FF0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_1B5CFD060(a1);
  return a1;
}

void sub_1B5CFD038(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1B5CFD060(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t *sub_1B5CFD168(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v3 = *(MEMORY[0x1E69E54D0] + 16);
  v4 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x1B8C87DE0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1B5CFD2F0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CFD430(uint64_t a1, uint64_t a2, unsigned __int8 **a3, uint64_t *a4, _DWORD *a5)
{
  v5 = 1;
  if (a1)
  {
    v6 = a2;
    if (a2)
    {
      v7 = a3;
      if (a3)
      {
        v8 = a4;
        if (a4)
        {
          v50 = 1024;
          v33 = 0;
          v34 = 0;
          v32 = 0x10000;
          v36 = malloc_type_malloc(0x10000uLL, 0xEEAB27BFuLL);
          v35 = 0;
          bzero(v36, 0x10000uLL);
          __n = 0;
          v39 = 0;
          v37 = 0x10000;
          __src = malloc_type_malloc(0x10000uLL, 0xEEAB27BFuLL);
          v40 = 0;
          bzero(__src, 0x10000uLL);
          size = 0;
          v44 = 0;
          v42 = *(a1 + 40);
          v11 = *(a1 + 8);
          v47 = *(a1 + 56);
          v46 = a1 + 48;
          ptr = v11;
          v45 = 1;
          bzero(v11, v42);
          v12 = sub_1B5CFD850(&v32, 1028, 4);
          v13 = (v12 >> 2) | 0x300000000;
          if (v12 == -1)
          {
            v13 = 0;
          }

          v49 = v13;
          while (1)
          {
            v15 = *v8++;
            v14 = v15;
            if ((v15 - 257) <= 0xFFFFFFFFFFFFFEFFLL)
            {
              break;
            }

            v17 = *v7++;
            v16 = v17;
            LODWORD(v17) = *a5++;
            sub_1B5CFD6A8(&v32, v49, v16, v14, v17);
            if (!--v6)
            {
              v37 = (v39 & 0xFFFFFFFC) + *(__src + (v39 & 0xFFFFFFFC)) + 4;
              __n = v37;
              v32 = v33;
              v18 = sub_1B5CFD850(&v42, 24, 4);
              v19 = sub_1B5CFDA90(&v32, v49, &v42, 1);
              v20 = size;
              v21 = sub_1B5CFD850(&v42, __n, 4096);
              if (v21 == -1)
              {
                v5 = 0xFFFFFFFFLL;
              }

              else
              {
                v22 = v21;
                memcpy(ptr + v21, __src, __n);
                v23 = ptr;
                v24 = v47;
                v25 = ptr + v18;
                v26 = HIDWORD(v19) + 4 * v19;
                *v25 = 1;
                v25[1] = v26;
                v25[2] = v20;
                v25[3] = v22;
                v27 = v50;
                v28 = __n;
                v29 = size;
                v25[4] = __n;
                v25[5] = v27;
                *a1 = v26;
                *(a1 + 24) = v28;
                *(a1 + 32) = v27;
                v42 = v29;
                if (v24)
                {
                  v30 = v24();
                }

                else
                {
                  v30 = malloc_type_realloc(v23, v29, 0x5097AE5DuLL);
                }

                v5 = 0;
                ptr = v30;
                *(a1 + 8) = v30;
                *(a1 + 16) = &v30[v22];
              }

              if (v36)
              {
                free(v36);
              }

              if (__src)
              {
                free(__src);
              }

              return v5;
            }
          }

          if (v36)
          {
            free(v36);
          }

          if (__src)
          {
            free(__src);
          }

          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1B5CFD6A8(uint64_t result, int a2, unsigned __int8 *a3, int a4, unsigned int a5)
{
  v6 = *(result + 56);
  v7 = 4 * (a2 & 0x3FFFFFFF);
  v8 = (v6 + v7);
  if (!a4)
  {
LABEL_19:
    *v8 = a5;
    return result;
  }

  v9 = a4;
  v11 = result;
  while (1)
  {
    v12 = *a3;
    v13 = v8 + 1;
    v14 = v8[v12 + 1];
    v15 = v8[v12 + 1] & 3;
    result = v14 >> 2;
    if ((v14 & 3) > 1)
    {
      if (v15 != 3)
      {
        return result;
      }

      ++a3;
      LODWORD(v18) = v9 - 1;
      goto LABEL_18;
    }

    if (!v15)
    {
      if (*(v11 + 80) != *(v11 + 72))
      {
        *(v11 + 72) = (*(v11 + 80) & 0xFFFFFFFCLL) + *(*(v11 + 120) + (*(v11 + 80) & 0xFFFFFFFCLL)) + 4;
      }

      v16 = sub_1B5CFD850((v11 + 64), *(v11 + 200), 4);
      if (v16 == -1)
      {
        v17 = 0;
      }

      else
      {
        v17 = (v16 >> 2) | 0x100000000;
      }

      v13[v12] = HIDWORD(v17) | (4 * v17);
      result = v17;
    }

    v19 = (*(v11 + 120) + 4 * (result & 0x3FFFFFFF));
    v18 = (v9 - 1);
    if (v9 == 1)
    {
      v19[1] = a5;
      v23 = 4;
      goto LABEL_22;
    }

    v20 = *v19;
    if (!v20)
    {
      *v19 = 4;
      v20 = 4;
    }

    ++a3;
    v21 = (v9 + 4);
    v22 = v20 + 4;
    if (v22 + v21 < *(v11 + 200))
    {
      break;
    }

    result = sub_1B5CFD94C(v11);
    v6 = *(v11 + 56);
    *(v6 + v7 + 4 * v12 + 4) = HIDWORD(result) | (4 * result);
LABEL_18:
    v7 = 4 * (result & 0x3FFFFFFF);
    v8 = (v6 + v7);
    v9 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }
  }

  *(v19 + v22) = v18;
  v24 = v19 + v22 + 1;
  result = memcpy(v24, a3, v18);
  *&v24[v18] = a5;
  v23 = *v19 + v21;
LABEL_22:
  *v19 = v23;
  return result;
}

uint64_t sub_1B5CFD850(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = (a3 + a1[1] - 1) & -a3;
  v6 = v5 + a2;
  if (v5 + a2 <= *a1)
  {
LABEL_13:
    a1[1] = v6;
    a1[2] = v5;
    return v5;
  }

  while (1)
  {
    v7 = 2 * v4 ? 2 * v4 : 0x10000;
    if (!*(a1 + 6))
    {
      break;
    }

    v8 = a1[5];
    v9 = a1[7];
    v4 = v7;
    if (!v8)
    {
      v10 = malloc_type_realloc(v9, v7, 0x6D379E7AuLL);
      a1[7] = v10;
      *a1[4] = 1;
      goto LABEL_11;
    }

    a1[7] = v8(v9, v7, a1[6]);
LABEL_12:
    *a1 = v4;
    if (v6 <= v4)
    {
      goto LABEL_13;
    }
  }

  v4 = v7;
  v10 = malloc_type_realloc(a1[7], v7, 0x63DA57CuLL);
  a1[7] = v10;
  if (v10)
  {
LABEL_11:
    bzero(&v10[*a1], v4 - *a1);
    goto LABEL_12;
  }

  return -1;
}

uint64_t sub_1B5CFD94C(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 200);
  v3 = MEMORY[0x1EEE9AC00]();
  v5 = (v18 - ((v4 + 19) & 0x1FFFFFFF0));
  v7 = 4 * (v6 & 0x3FFFFFFF);
  v8 = (*(v3 + 120) + v7);
  v9 = *v8;
  *v5 = v9;
  memcpy(v5 + 1, v8 + 1, v9);
  if (*(a1 + 80) == v7)
  {
    bzero(v8, *(a1 + 72) - v7);
    *(a1 + 72) = *(a1 + 80);
  }

  v10 = sub_1B5CFD850(a1, 1028, 4);
  if (v10 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = (v10 >> 2) | 0x300000000;
  }

  *(*(a1 + 56) + 4 * (v11 & 0x3FFFFFFF)) = v5[1];
  if (v9 >= 5)
  {
    v12 = v5 + v9;
    v13 = (v5 + 2);
    do
    {
      v14 = &v13[*v13 + 1];
      v15 = *v14;
      sub_1B5CFD6A8(a1, v11);
      v13 = v14 + 4;
    }

    while (v14 < v12);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

unint64_t sub_1B5CFDA90(uint64_t a1, unint64_t a2, unint64_t *a3, int a4)
{
  LODWORD(v4) = a2;
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) == 3)
  {
    v8 = 0;
    v9 = (*(a1 + 56) + 4 * (a2 & 0x3FFFFFFF));
    v10 = v9 + 1;
    v11 = 0uLL;
    v12.i64[0] = 0x300000003;
    v12.i64[1] = 0x300000003;
    do
    {
      v11 = vsubq_s32(v11, vtstq_s32(*&v10[v8], v12));
      v8 += 4;
    }

    while (v8 != 256);
    if (a4 || (v13 = vaddvq_s32(v11), v13 >= 0x21))
    {
      v21 = sub_1B5CFD850(a3, 1028, 4);
      v22 = 0;
      if (v21 == -1)
      {
        v4 = 0;
      }

      else
      {
        v4 = (v21 >> 2) | 0x300000000;
      }

      v23 = 4 * (v4 & 0x3FFFFFFF);
      *(a3[7] + v23) = *v9;
      v24 = v23 + 4;
      do
      {
        v25 = sub_1B5CFDA90(a1, (v10[v22] >> 2) | ((v10[v22] & 3) << 32), a3, 0);
        *(a3[7] + v24) = HIDWORD(v25) + 4 * v25;
        v24 += 4;
        ++v22;
      }

      while (v22 != 256);
    }

    else
    {
      v14 = sub_1B5CFD850(a3, 4 * v13 + 40, 4);
      v15 = 0;
      if (v14 == -1)
      {
        v4 = 0;
      }

      else
      {
        v4 = (v14 >> 2) | 0x200000000;
      }

      v16 = 4 * (v4 & 0x3FFFFFFF);
      v17 = a3[7] + v16;
      *v17 = *v9;
      *(v17 + 37) = v13;
      do
      {
        v18 = sub_1B5CFDA90(a1, (v10[v15] >> 2) | ((v10[v15] & 3) << 32), a3, 0);
        if (HIDWORD(v18))
        {
          v19 = a3[7] + v16;
          v20 = *(v19 + 36);
          *(v19 + 36) = v20 + 1;
          *(v19 + 4 * v20 + 40) = HIDWORD(v18) + 4 * v18;
          *(v19 + 4 * (v15 >> 5) + 4) |= 1 << v15;
        }

        ++v15;
      }

      while (v15 != 256);
    }

    v5 = HIDWORD(v4);
  }

  return v4 | (v5 << 32);
}

void *sub_1B5CFDC5C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  return result;
}

uint64_t sub_1B5CFDC68(uint64_t *a1, _DWORD *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = v2 + 4;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *a1;
  a1[2] = v4;
  if (!v6)
  {
    return 0;
  }

  *a2 = bswap32(*(v6 + v2));
  return 1;
}

uint64_t sub_1B5CFDCA4(uint64_t *a1, void *__dst, size_t a3)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = v3 + a3;
  if (v4)
  {
    v6 = v5 > v4;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 0;
  }

  v7 = *a1;
  a1[2] = v5;
  if (!v7)
  {
    return 0;
  }

  memcpy(__dst, (v7 + v3), a3);
  return 1;
}

uint64_t sub_1B5CFDCF8(uint64_t *a1, _WORD *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = v2 + 2;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *a1;
  a1[2] = v4;
  if (!v6)
  {
    return 0;
  }

  *a2 = bswap32(*(v6 + v2)) >> 16;
  return 1;
}

uint64_t sub_1B5CFDD38(uint64_t *a1, _BYTE *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = v2 + 1;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *a1;
  a1[2] = v4;
  if (!v6)
  {
    return 0;
  }

  *a2 = *(v6 + v2);
  return 1;
}

uint64_t sub_1B5CFDE88(unsigned int a1)
{
  if (a1 >= 0x3FFF)
  {
    v1 = 4;
  }

  else
  {
    v1 = 2;
  }

  if (a1 < 0x7F)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B5CFDEA8(uint64_t a1)
{
  v4[17] = *MEMORY[0x1E69E9840];
  v1 = a1 + 16 + *(*(a1 + 16) - 24);
  if ((*(v1 + 32) & 5) != 0)
  {
    result = -1;
  }

  else
  {
    (*(**(v1 + 40) + 32))(v4);
    result = v4[16];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5CFDF5C(uint64_t a1, uint64_t a2)
{
  v10[17] = *MEMORY[0x1E69E9840];
  for (i = sub_1B5CFDEA8(a1); i < a2; i = sub_1B5CFDEA8(a1))
  {
    LOBYTE(v10[0]) = 0;
    std::ostream::write();
  }

  v5 = (a1 + 16);
  MEMORY[0x1B8C87EC0](v9, v5);
  v6 = v5 + *(*v5 - 24);
  if ((v6[32] & 5) == 0)
  {
    (*(**(v6 + 5) + 32))(v10);
    if (v10[16] == -1)
    {
      std::ios_base::clear((v5 + *(*v5 - 24)), *(v5 + *(*v5 - 24) + 32) | 4);
    }
  }

  result = MEMORY[0x1B8C87ED0](v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B5CFE0A8(uint64_t a1, uint64_t *a2, int a3, BOOL *a4)
{
  v8 = a2[2];
  v28 = 0;
  result = sub_1B5CFDD38(a2, &v28);
  if (result)
  {
    v10 = v28;
    *(a1 + 3) = v28;
    result = sub_1B5CFDCA4(a2, (a1 + 16), (v10 & 3) + 1);
    if (result)
    {
      v11 = *a1;
      v12 = (*a1 >> 26) & 3;
      v27 = 0;
      v26 = 0;
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          result = sub_1B5CFDCA4(a2, __dst, 3uLL);
          if (!result)
          {
            return result;
          }

          v11 = (__dst[0] << 16) | (*(a1 + 3) << 24) | (__dst[1] << 8) | __dst[2];
          goto LABEL_13;
        }

        result = sub_1B5CFDCF8(a2, &v26);
        if (!result)
        {
          return result;
        }

        v13 = v26;
      }

      else
      {
        if (!v12)
        {
          goto LABEL_14;
        }

        result = sub_1B5CFDD38(a2, &v27);
        if (!result)
        {
          return result;
        }

        v13 = v27;
      }

      v11 = (v13 + v8) & 0xFFFFFF | (*(a1 + 3) << 24);
LABEL_13:
      *a1 = v11;
LABEL_14:
      if ((v11 & 0x40000000) != 0)
      {
        v24 = 0;
        result = sub_1B5CFDD38(a2, &v24);
        if (!result)
        {
          return result;
        }

        v14 = *(a1 + 8) & 0xFFFFFF00FFFFFFFFLL | (v24 << 32);
        *(a1 + 8) = v14;
        v11 = *a1;
        if ((*a1 & 0x20000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v14 = *(a1 + 8) | 0xFF00000000;
        *(a1 + 8) = v14;
        if ((v11 & 0x20000000) == 0)
        {
          if ((v11 & 0x10000000) == 0)
          {
            goto LABEL_17;
          }

LABEL_16:
          v21 = 0;
          result = sub_1B5CFDD38(a2, &v21);
          if (!result)
          {
            return result;
          }

          v17 = v21;
          v14 = *(a1 + 8) & 0xFFFFFFFFFFFFFF00 | v21;
          *(a1 + 8) = v14;
          if ((*(a1 + 3) & 0x10) != 0)
          {
            v15 = 0;
            if (!v12 && !v17)
            {
              goto LABEL_38;
            }
          }

          else
          {
LABEL_17:
            v15 = 1;
          }

          if (!v12)
          {
            v15 = 0;
          }

          if (a3 & 0x10000) == 0 || (v15)
          {
            goto LABEL_38;
          }

          v20 = 0;
          if (sub_1B5CFDD38(a2, &v20))
          {
            v16 = v20;
            v14 = *(a1 + 8) & 0xFFFFFFFFFFFF00FFLL | (v20 << 8);
            *(a1 + 8) = v14;
            if ((v16 & 0x80000000) == 0)
            {
LABEL_38:
              v18 = *a1;
              *(a1 + 8) = v14 & 0xFFFFF8FFFFFFFFFFLL | (((*a1 >> 29) & 1) << 40) | (((*a1 >> 28) & 1) << 41) | (((*a1 & 0xFFFFFF) == 0) << 42);
              *a4 = v18 < 0;
              return 1;
            }

            v19 = 0;
            if (sub_1B5CFDD38(a2, &v19))
            {
              v14 = *(a1 + 8) & 0xFFFFFFFFFF00FFFFLL | (v19 << 16);
              goto LABEL_38;
            }
          }

          return 0;
        }
      }

      if ((a3 & 0x20000) != 0)
      {
        if (sub_1B5CFDCA4(a2, &v22, 4uLL))
        {
          v14 = v22 & 0x80000000 | (*(a1 + 12) << 32) | __rev16(*&v23[1]) | (v23[0] << 16) & 0xFFFFFFFF80FFFFFFLL | ((v22 & 0x7FLL) << 24);
          goto LABEL_38;
        }
      }

      else if (sub_1B5CFDCA4(a2, &v22, 3uLL))
      {
        v14 = ((v22 << 24) | (v22 << 16)) & 0x807F0000 | (*(a1 + 12) << 32) | __rev16(*v23);
        goto LABEL_38;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1B5CFE358(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= 1)
  {
    v5 = v4 + 1;
    v6 = (v4 + a1 + 11);
    do
    {
      v7 = *v6--;
      v8 = a1 + 272 + 24 * v7;
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      --v5;
    }

    while (v5 > 1);
  }

  *(a1 + 8) = 0;
  *a1 = a2;
  v9 = (a1 + 6424);
  sub_1B5CFDC5C(v20, *(a1 + 6424), *(a1 + 6432));
  v20[2] = a2 - *(a1 + 6424);
  v19 = 1;
  while (1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    result = sub_1B5CFE0A8(&v16, v20, *(a1 + 6416), &v19);
    if ((result & 1) == 0)
    {
      break;
    }

    v11 = v18;
    v12 = a1 + 272 + 24 * v18;
    if (v12 != &v16)
    {
      *v12 = v16;
      *(v12 + 8) = v17;
      *(v12 + 16) = v18;
    }

    v13 = *(a1 + 8);
    *(a1 + 8) = v13 + 1;
    *(a1 + 12 + v13) = v11;
    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  *(a1 + 252) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v14 = (a1 + 288);
  v15 = 256;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  do
  {
    *(v14 - 4) = 0;
    *(v14 - 1) = 0;
    *v14 = 0;
    v14 += 6;
    --v15;
  }

  while (v15);
  *(a1 + 6416) = 0;
  *v9 = 0;
  *(a1 + 6432) = 0;
  return result;
}

uint64_t sub_1B5CFE4E8(const void *a1, size_t a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  *__p = xmmword_1B5DC3840;
  v21 = unk_1B5DC3850;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_1B5CFE668(&v17, __p, v22, 8uLL);
  v4 = v17;
  v5 = v18;
  if (v17 == v18)
  {
LABEL_14:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  while (1)
  {
    v6 = *v4;
    v16 = *v4;
    sub_1B5CFE4CC(&v16, __p);
    v7 = BYTE7(v21);
    v8 = SBYTE7(v21);
    if (SBYTE7(v21) < 0)
    {
      v7 = __p[1];
    }

    if (v7 != a2)
    {
      v10 = 0;
      if ((SBYTE7(v21) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      operator delete(__p[0]);
      goto LABEL_12;
    }

    if ((SBYTE7(v21) & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = memcmp(v9, a1, a2) == 0;
    if (v8 < 0)
    {
      goto LABEL_11;
    }

LABEL_12:
    if (v10)
    {
      break;
    }

    if (++v4 == v5)
    {
      goto LABEL_14;
    }
  }

  v13 = v6 & 0xFFFFFF00;
  v12 = v6;
  v11 = 0x100000000;
LABEL_16:
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11 | v13 | v12;
}

uint64_t sub_1B5CFE668(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5CFE6DC(result, a4);
  }

  return result;
}

void sub_1B5CFE6C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5CFE6DC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1B5CFE718(a1, a2);
  }

  sub_1B5D04FA0();
}

void sub_1B5CFE718(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t sub_1B5CFE760(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  __src = 0;
  sub_1B5CFF868((a1 + 104), &__src, &v4, 1uLL);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 168) = -1;
  ++dword_1EB90CD3C;
  return a1;
}

void sub_1B5CFE804(_Unwind_Exception *a1)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 152) = v6;
    operator delete(v6);
  }

  sub_1B5CFFB14((v1 + 104), (v1 + 24), v1, v2);
  _Unwind_Resume(a1);
}

void *sub_1B5CFE838(uint64_t a1)
{
  *(a1 + 8) = *a1;
  *(a1 + 96) = 0;
  __src = 0;
  result = sub_1B5CFF868((a1 + 104), &__src, &v4, 1uLL);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 168) = -1;
  return result;
}

uint64_t sub_1B5CFE8A4(uint64_t a1)
{
  if (((*(a1 + 8) - *a1) & 0x7FFFFFFF8) != 0 && *(a1 + 88) == 1 && !*(a1 + 24))
  {
    v3 = *(a1 + 80) / *(a1 + 96);
    v4 = (sqrt(v3) * 255.0);
    if (v4 >= 0xFF)
    {
      v5 = -1;
    }

    else
    {
      v5 = v4;
    }

    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 <= 0.0;
    }

    if (v6)
    {
      return v5;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1B5CFE914(uint64_t *result)
{
  v1 = *result;
  v2 = result[1] - *result;
  v3 = v2 >> 3;
  if ((v2 >> 3))
  {
    v4 = 0;
    v5 = 0;
    v6 = (v2 >> 3);
    do
    {
      if (*(*v1 + 104) != *(*v1 + 112))
      {
        if (*(*v1 + 128))
        {
          v4 = (v4 + 1);
        }

        else
        {
          v5 = (v5 + 1);
        }
      }

      v1 += 8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 != v3 && v5 != v3)
  {
    result = sub_1B5CE5804();
    if (result <= 0)
    {
      v19 = 0;
      v8 = sub_1B5CE599C(MEMORY[0x1E69E5300], "UnigramTrieNode.cpp", 19);
      v9 = sub_1B5CE599C(v8, "(", 1);
      v10 = MEMORY[0x1B8C87F00](v9, 109);
      v11 = sub_1B5CE599C(v10, ") ", 2);
      v12 = sub_1B5CE599C(v11, "LOG(", 4);
      v13 = sub_1B5CE599C(v12, "INFO", 4);
      v14 = sub_1B5CE599C(v13, ") ", 2);
      v15 = sub_1B5CE599C(v14, "YIKES:  ", 8);
      v16 = MEMORY[0x1B8C87F00](v15, v4);
      v17 = sub_1B5CE599C(v16, " grandchildren already have trie offsets but ", 45);
      v18 = MEMORY[0x1B8C87F00](v17, v5);
      sub_1B5CE599C(v18, " don't!", 7);
      return sub_1B5CFF628(&v19);
    }
  }

  return result;
}

void sub_1B5CFEA78(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  if (*(a1 + 88))
  {
    LODWORD(v2) = v2 + 1;
  }

  if (v2 <= 1)
  {
    v5 = **(a1 + 104);
    v7 = a2[14];
    v6 = a2[15];
    if (v7 >= v6)
    {
      v9 = a2[13];
      v10 = (v7 - v9);
      v11 = v7 - v9 + 1;
      if (v11 < 0)
      {
        sub_1B5D04FA0();
      }

      v12 = v6 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        operator new();
      }

      v14 = v7 - v9;
      *v10 = v5;
      v8 = v10 + 1;
      memcpy(0, v9, v14);
      a2[13] = 0;
      a2[14] = v10 + 1;
      a2[15] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[14] = v8;
    if (a2 != a1)
    {
      sub_1B5CFF9E8(a2, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 3);
    }

    if (((*(a1 + 8) - *a1) & 0x7FFFFFFF8) == 8)
    {
      **(**a1 + 144) = a2;
      *(a1 + 8) = *a1;
      if (a2[14] - a2[13] <= 3uLL)
      {
        sub_1B5CFEA78();
      }
    }

    else if (*(a1 + 88))
    {
      a2[3] = *(a1 + 24);
      sub_1B5CFF708((a2 + 4), (a1 + 32));
      sub_1B5CFF708((a2 + 7), (a1 + 56));
      v15 = *(a1 + 80);
      *(a2 + 85) = *(a1 + 85);
      a2[10] = v15;
    }

    *(a1 + 152) = *(a1 + 144);
  }
}

uint64_t sub_1B5CFEC30(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (((v1 - *a1) & 0x7FFFFFFF8) == 0)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(v2 + 8 * v4);
    if (*(v6 + 104) != *(v6 + 112))
    {
      if (((*(v6 + 8) - *v6) & 0x7FFFFFFF8) == 8)
      {
        v7 = *(v6 + 168);
        v9 = v7 != -1 && v7 <= *(a1 + 42);
        if (!*(v6 + 88) && !v9)
        {
          sub_1B5CFEA78(**v6, v6);
          LODWORD(v5) = v5 + *(v6 + 112) - *(v6 + 104) - 1;
        }
      }

      v5 = sub_1B5CFEC30(v6) + v5;
      v2 = *a1;
      v1 = a1[1];
    }

    ++v4;
  }

  while (v4 < ((v1 - v2) >> 3));
  return v5;
}

uint64_t *sub_1B5CFED04(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  if (((v1 - *result) & 0x7FFFFFFF8) != 0)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (*(v5 + 104) != *(v5 + 112))
      {
        if (((*(v5 + 8) - *v5) & 0x7FFFFFFF8) != 0 && (v6 = *(**v5 + 128)) != 0)
        {
          v7 = v6 - *(v5 + 128);
          if (v7 > 0xFF)
          {
            if (v7 == v7)
            {
              *(v5 + 136) = 2;
            }

            else
            {
              *(v5 + 136) = 3;
            }
          }

          else
          {
            *(v5 + 136) = 1;
          }
        }

        else
        {
          *(v5 + 136) = 0;
        }

        result = sub_1B5CFED04(v5);
        *(v5 + 128) = 0;
        v2 = *v3;
        v1 = v3[1];
      }

      ++v4;
    }

    while (v4 < ((v1 - v2) >> 3));
  }

  dword_1EB90CD40 = 0;
  return result;
}

uint64_t sub_1B5CFEDE8(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  if ((v6 & 0x7FFFFFFF8) != 0)
  {
    v8 = 0;
    v9 = *(a1 + 22) + (v6 >> 3) > 1;
    if ((a3 & 0x1000) != 0)
    {
      v10 = 4;
    }

    else
    {
      v10 = 3;
    }

    v29 = v10;
    v30 = v9;
    do
    {
      v11 = *(v4 + 8 * v8);
      v12 = *(v11 + 104);
      v13 = *(v11 + 112);
      if (v12 != v13)
      {
        ++dword_1EB90CD40;
        *(v11 + 128) = a2;
        v14 = a2 + v13 - v12 + 1;
        v15 = (*(v11 + 8) - *v11) >> 3;
        if (v15)
        {
          v16 = *(v11 + 136);
          v17 = v14 + 2;
          if (v16 == 1)
          {
            ++v14;
          }

          else
          {
            v14 += 3;
          }

          if (v16 == 2)
          {
            v14 = v17;
          }
        }

        v18 = v14 + v30;
        v19 = *(v11 + 88);
        if (v19 && *(v11 + 24))
        {
          a2 = (v18 + v29);
        }

        else
        {
          v20 = sub_1B5CFE8A4(v11);
          v21 = v19 + v15 == 0;
          if (v19 + v15)
          {
            v22 = v15 == 0;
          }

          else
          {
            v22 = 0;
          }

          if (v20)
          {
            v21 = 1;
          }

          a2 = (v18 + v21);
          if (v20)
          {
            v23 = 1;
          }

          else
          {
            v23 = v22;
          }

          if (v23 == 1 && (a3 & 0x100) != 0)
          {
            a2 = sub_1B5CFDE88(*(v11 + 28)) + a2;
            v4 = *a1;
            v5 = a1[1];
          }
        }
      }

      ++v8;
    }

    while (v8 < ((v5 - v4) >> 3));
    if (((v5 - v4) & 0x7FFFFFFF8) != 0)
    {
      v25 = 0;
      do
      {
        v26 = *(v4 + 8 * v25);
        if (v26[13] != v26[14])
        {
          sub_1B5CFE914(*(v4 + 8 * v25));
          if (v26[13] != v26[14] && (((v26[1] - *v26) & 0x7FFFFFFF8) == 0 || !*(**v26 + 128)))
          {
            a2 = sub_1B5CFEDE8(v26, a2, a3);
          }
        }

        ++v25;
        v4 = *a1;
      }

      while (v25 < ((a1[1] - *a1) >> 3));
    }
  }

  return a2;
}

uint64_t sub_1B5CFEFD8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 a6)
{
  v9 = *(a1 + 128);
  *(a1 + 132) = v9;
  if (sub_1B5CFDEA8(a2) != v9)
  {
    sub_1B5CFFB6C();
  }

  if (*(a1 + 88))
  {
    v11 = *(a1 + 24);
  }

  else
  {
    v11 = 0;
  }

  v26 = sub_1B5CFE8A4(a1);
  v25 = a3;
  if (((*(a1 + 8) - *a1) & 0x7FFFFFFF8) == 0)
  {
    v12 = (a1 + 104);
    v13 = (a1 + 112);
    if (~*(a1 + 104) + *(a1 + 112) <= 3uLL)
    {
      v14 = 0;
      v24 = -*(a1 + 128);
      v15 = 1;
      goto LABEL_12;
    }

LABEL_43:
    sub_1B5CFFC1C();
  }

  v12 = (a1 + 104);
  v13 = (a1 + 112);
  if (~*(a1 + 104) + *(a1 + 112) > 3uLL)
  {
    goto LABEL_43;
  }

  v14 = *(**a1 + 128);
  v24 = v14 - *(a1 + 128);
  if (v14)
  {
    v15 = 0;
    *(a1 + 136);
  }

  else
  {
    v15 = 1;
  }

LABEL_12:
  result = sub_1B5CFDD78();
  v17 = *v12;
  if (*v13 != *v12)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = *(v17 + v18);
      result = sub_1B5CFDD78();
      v18 = v19;
      v17 = *v12;
    }

    while (*v13 - *v12 > v19++);
  }

  if ((v15 & 1) == 0)
  {
    v22 = *(a1 + 136);
    if (v22 == 2)
    {
      if (v24 != v24)
      {
        sub_1B5CFFB98();
      }

      result = sub_1B5CFDE54();
    }

    else
    {
      if (v22 == 1)
      {
        if (v24 >= 0x100)
        {
          sub_1B5CFFBC4();
        }
      }

      else
      {
        if (HIBYTE(v14))
        {
          sub_1B5CFFBF0();
        }

        sub_1B5CFDD78();
        sub_1B5CFDD78();
      }

      result = sub_1B5CFDD78();
    }
  }

  if (a4)
  {
    *(a1 + 96);
    *(v25 + 96);
    result = sub_1B5CFDD78();
  }

  if (v11)
  {
    *(a1 + 92);
    return sub_1B5CFDD70();
  }

  if (v26)
  {
    result = sub_1B5CFDD78();
LABEL_31:
    if ((a6 & 0x100) != 0)
    {
      v23 = *(a1 + 28);

      return sub_1B5CFDDDC();
    }

    return result;
  }

  if (*(a1 + 88) + ((*(a1 + 8) - *a1) >> 3))
  {
    if (!v15)
    {
      return result;
    }
  }

  else
  {
    result = sub_1B5CFDD78();
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  if (*(a1 + 88) + ((*(a1 + 8) - *a1) >> 3))
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1B5CFF364(uint64_t result, uint64_t a2, __int16 a3)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = v3 - *result;
  if ((v5 & 0x7FFFFFFF8) != 0)
  {
    v7 = result;
    v8 = 0;
    v9 = v5 >> 3;
    v10 = *(result + 88) + v9;
    v11 = (v9 - 1);
    do
    {
      result = *(v4 + 8 * v8);
      if (*(result + 104) != *(result + 112))
      {
        if (!*(result + 128))
        {
          sub_1B5CF7CDC(&v22);
          v14 = sub_1B5CE599C(v23, "UnigramTrieNode ", 16);
          v15 = MEMORY[0x1B8C87F10](v14, v8);
          v16 = sub_1B5CE599C(v15, "/", 1);
          v17 = MEMORY[0x1B8C87F10](v16, (*(v7 + 8) - *v7) >> 3);
          v18 = sub_1B5CE599C(v17, " was not allocated a write file offset: parent @0x", 50);
          *(v18 + *(*v18 - 24) + 8) = *(v18 + *(*v18 - 24) + 8) & 0xFFFFFFB5 | 8;
          v19 = *(v7 + 128);
          MEMORY[0x1B8C87F10]();
          exception = __cxa_allocate_exception(0x20uLL);
          std::stringbuf::str();
          sub_1B5CFF75C(exception, &v21);
          __cxa_throw(exception, &unk_1F2D573E0, sub_1B5CFF5C8);
        }

        ++dword_1EB90CD44;
        result = sub_1B5CFEFD8(result, a2, v7, v10 > 1, v8 < v11, a3);
        v4 = *v7;
        v3 = *(v7 + 8);
      }

      ++v8;
    }

    while (v8 < ((v3 - v4) >> 3));
    if (((v3 - v4) & 0x7FFFFFFF8) != 0)
    {
      v13 = 0;
      do
      {
        result = *(v4 + 8 * v13);
        if (*(result + 104) != *(result + 112) && (((*(result + 8) - *result) & 0x7FFFFFFF8) == 0 || !*(**result + 132)))
        {
          result = sub_1B5CFF364();
          v4 = *v7;
          v3 = *(v7 + 8);
        }

        ++v13;
      }

      while (v13 < ((v3 - v4) >> 3));
    }
  }

  return result;
}

void sub_1B5CFF56C(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a7 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      sub_1B5CFBC44(&a8, MEMORY[0x1E69E54D8]);
      MEMORY[0x1B8C88080](va);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void sub_1B5CFF5C8(std::exception *this)
{
  this->__vftable = &unk_1F2D566C8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

_BYTE *sub_1B5CFF628(_BYTE *a1)
{
  std::ios_base::getloc((MEMORY[0x1E69E5300] + *(*MEMORY[0x1E69E5300] - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  if (*a1 == 1)
  {
    sub_1B5CE5824();
  }

  return a1;
}

__n128 sub_1B5CFF708(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void *sub_1B5CFF75C(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2D566C8;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_1B5CE4AC4(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void sub_1B5CFF7D8(std::exception *this)
{
  this->__vftable = &unk_1F2D566C8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5CFF84C(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_1B5CFF868(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1B5CFF998(v6, v10);
    }

    sub_1B5D04FA0();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
        ++v14;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_1B5CFF998(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1B5D04FA0();
}

void *sub_1B5CFF9E8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1B5CFC164(v6, v10);
    }

    sub_1B5D04FA0();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_1B5CFFB14(void **a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  if (v7)
  {
    *(a3 + 112) = v7;
    operator delete(v7);
  }

  sub_1B5D5F4E4(a2);
  v8 = *a3;
  if (*a3)
  {
    *a4 = v8;
    operator delete(v8);
  }
}

void sub_1B5CFFD38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1B5D018D4(va);
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5CFFD9C(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  if (v4 >= v3)
  {
    v4 = 0;
    ++v2;
    a1[4] = 0;
    a1[5] = v2;
  }

  v5 = a1[1];
  if (v2 == (a1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0xB0uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 176 * v4;
  a1[4] = v4 + 1;
  return result;
}

void sub_1B5CFFEB8(_Unwind_Exception *a1)
{
  if (v3)
  {
    v6 = v4 - 160;
    v7 = -v3;
    do
    {
      v6 = sub_1B5D014D0(v6) - 176;
      v7 += 176;
    }

    while (v7);
  }

  MEMORY[0x1B8C880C0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5CFFEEC(uint64_t a1)
{
  result = sub_1B5CE5814((*(a1 + 64) >> 19) & 1);
  v3 = *(a1 + 64);
  if ((v3 & 0x8000) != 0)
  {
    *(a1 + 68) = 1;
  }

  if ((v3 & 0x10000) != 0)
  {
    *(a1 + 68) = 2;
  }

  return result;
}

uint64_t *sub_1B5CFFF3C(uint64_t *a1)
{
  sub_1B5D01F0C((a1 + 5), a1[6]);
  v4 = (a1 + 2);
  sub_1B5D018D4(&v4);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

_BYTE *sub_1B5CFFFB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  while (v2 != v3)
  {
    sub_1B5D001AC(a1, *(a1 + 8), v2, 0);
    v2 += 72;
  }

  result = sub_1B5CE5804();
  if (result < 1)
  {
    v25 = 0;
    v5 = sub_1B5CE599C(MEMORY[0x1E69E5300], "UnigramsCompiler.cpp", 20);
    v6 = sub_1B5CE599C(v5, "(", 1);
    v7 = MEMORY[0x1B8C87F00](v6, 85);
    v8 = sub_1B5CE599C(v7, ") ", 2);
    v9 = sub_1B5CE599C(v8, "LOG(", 4);
    v10 = sub_1B5CE599C(v9, "INFO", 4);
    v11 = sub_1B5CE599C(v10, ") ", 2);
    v12 = sub_1B5CE599C(v11, "\tInserted ", 10);
    v13 = MEMORY[0x1B8C87F10](v12, dword_1EB90CD3C);
    sub_1B5CE599C(v13, " trie nodes.", 12);
    result = sub_1B5CFF628(&v25);
  }

  if (*(a1 + 64))
  {
    v14 = sub_1B5CFEC30(*(a1 + 8));
    result = sub_1B5CE5804();
    if (result <= 0)
    {
      v24 = 0;
      v15 = sub_1B5CE599C(MEMORY[0x1E69E5300], "UnigramsCompiler.cpp", 20);
      v16 = sub_1B5CE599C(v15, "(", 1);
      v17 = MEMORY[0x1B8C87F00](v16, 89);
      v18 = sub_1B5CE599C(v17, ") ", 2);
      v19 = sub_1B5CE599C(v18, "LOG(", 4);
      v20 = sub_1B5CE599C(v19, "INFO", 4);
      v21 = sub_1B5CE599C(v20, ") ", 2);
      v22 = sub_1B5CE599C(v21, "\tCondensed ", 11);
      v23 = MEMORY[0x1B8C87F10](v22, v14);
      sub_1B5CE599C(v23, " nodes into patricia nodes.", 27);
      return sub_1B5CFF628(&v24);
    }
  }

  return result;
}

uint64_t sub_1B5D001AC(void **a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  while (1)
  {
    *(a2 + 96) = *(a3 + 56) + *(a2 + 96);
    v8 = a4 - 1;
    v9 = *(a3 + 32);
    if (*(a3 + 40) - v9 <= v8)
    {
      v11 = (a2 + 168);
      v10 = *(a2 + 168);
    }

    else
    {
      v10 = *(v9 + v8);
      v11 = (a2 + 168);
      if (*(a2 + 168) < v10)
      {
        v10 = *(a2 + 168);
      }
    }

    *v11 = v10;
    if (*(a3 + 16) - *(a3 + 8) <= a4)
    {
      break;
    }

    a2 = sub_1B5D002A4(a1, a2, (a3 + 8), a4++);
  }

  if (a4)
  {
    *(a2 + 24) = *a3;
    if (a2 + 24 != a3)
    {
      sub_1B5D00EC0((a2 + 32), *(a3 + 8), *(a3 + 16), *(a3 + 16) - *(a3 + 8));
      sub_1B5D00EC0((a2 + 56), *(a3 + 32), *(a3 + 40), *(a3 + 40) - *(a3 + 32));
    }

    v12 = *(a3 + 56);
    *(a2 + 85) = *(a3 + 61);
    *(a2 + 80) = v12;
  }

  return a2;
}

uint64_t sub_1B5D002A4(void **a1, void *a2, void *a3, unsigned int a4)
{
  v5 = *(*a3 + a4);
  v6 = (a2[1] - *a2) >> 3;
  if (v6 < 1)
  {
    v10 = 0;
  }

  else
  {
    v7 = -1;
    do
    {
      v8 = *(*a2 + 8 * ((v7 + v6) >> 1));
      v9 = **(v8 + 104);
      if (v9 <= v5)
      {
        v7 = (v7 + v6) >> 1;
        if (v9 >= v5)
        {
          return v8;
        }
      }

      else
      {
        LODWORD(v6) = (v7 + v6) >> 1;
      }
    }

    while ((v6 - v7) > 1);
    v10 = v7 + 1;
  }

  if (v6 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  v13 = sub_1B5CFFD9C(*a1);
  sub_1B5CFE838(v13);
  LOBYTE(__src) = v5;
  sub_1B5CFF868((v13 + 104), &__src, &__src + 1, 1uLL);
  __src = a2;
  sub_1B5D00FE8(v13 + 144, &__src);
  sub_1B5D0039C(a2, (*a2 + 8 * v11), &v13);
  return v13;
}

char *sub_1B5D0039C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1B5D04FA0();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_1B5CEDC00(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1B5CED9EC(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1B5D00538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D00570(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  sub_1B5CFDDA8();
  sub_1B5CFDDA8();
  sub_1B5CFDDA8();
  sub_1B5CFDD70();
  sub_1B5CFDD70();
  v33 = 0;
  v34 = 0;
  sub_1B5CFDD70();
  v4 = *(*(a1 + 8) + 96);
  sub_1B5CFDE1C();
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = 70;
  }

  else
  {
    v6 = 6;
  }

  sub_1B5CFDDA8();
  if (*(a1 + 68) >= 2)
  {
    memset(&v32, 0, sizeof(v32));
    std::string::append(&v32, " CommonLetterForms,");
    std::string::append(&v32, " PartialProbability,");
    std::string::append(&v32, " UnigramRecordV2,");
    std::string::append(&v32, " VarByteTrieNodesV2,");
    std::string::append(&v32, " RelativeChildOffsetsV2,");
    if ((v6 & 0x40) != 0)
    {
      std::string::append(&v32, " PatriciaTrieRuns,");
    }

    std::string::append(&v32, " AllSortKeysAreDistributive,");
    if (((v5 << 8) & 0x10000) != 0)
    {
      std::string::append(&v32, " WriteWordIds");
    }

    if (((32 * v5) & 0x20000) != 0)
    {
      std::string::append(&v32, " Write4ByteUnigramOffsets");
    }

    if (sub_1B5CE5804() <= 0)
    {
      v31 = 0;
      v7 = sub_1B5CE599C(MEMORY[0x1E69E5300], "UnigramsCompiler.cpp", 20);
      v8 = sub_1B5CE599C(v7, "(", 1);
      v9 = MEMORY[0x1B8C87F00](v8, 241);
      v10 = sub_1B5CE599C(v9, ") ", 2);
      v11 = sub_1B5CE599C(v10, "LOG(", 4);
      v12 = sub_1B5CE599C(v11, "INFO", 4);
      v13 = sub_1B5CE599C(v12, ") ", 2);
      v14 = sub_1B5CE599C(v13, "    Options: ", 13);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v32;
      }

      else
      {
        v15 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v32.__r_.__value_.__l.__size_;
      }

      sub_1B5CE599C(v14, v15, size);
      sub_1B5CFF628(&v31);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  sub_1B5CFDDA8();
  sub_1B5CFDDA8();
  sub_1B5CFDDA8();
  sub_1B5CFDDA8();
  sub_1B5CFDDA8();
  v17 = 8 * *(a1 + 56) + 8;
  sub_1B5CFDDA8();
  sub_1B5CFDDA8();
  result = sub_1B5CFDF5C(a2, 128);
  if (v17)
  {
    v19 = *(a1 + 56);
    sub_1B5CFDDA8();
    result = sub_1B5CFDDA8();
    v20 = *(a1 + 40);
    v21 = (a1 + 48);
    if (v20 != (a1 + 48))
    {
      do
      {
        if (v20[6] - v20[5] <= 4uLL)
        {
          v22 = *(v20 + 8);
          sub_1B5CFDD70();
          v24 = v20[5];
          v23 = v20[6];
          if (v24 - v23 != -4)
          {
            v25 = v23 - v24 - 4;
            do
            {
              sub_1B5CFDD78();
            }

            while (!__CFADD__(v25++, 1));
          }

          result = sub_1B5CFDDA8();
        }

        v27 = v20[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v20[2];
            v29 = *v28 == v20;
            v20 = v28;
          }

          while (!v29);
        }

        v20 = v28;
      }

      while (v28 != v21);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D00924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_1B5CFF628(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D00958(uint64_t a1)
{
  sub_1B5D010BC(v35, 20);
  if (sub_1B5CE5804() <= 0)
  {
    LOBYTE(v33[0]) = 0;
    v2 = sub_1B5CE599C(MEMORY[0x1E69E5300], "UnigramsCompiler.cpp", 20);
    v3 = sub_1B5CE599C(v2, "(", 1);
    v4 = MEMORY[0x1B8C87F00](v3, 323);
    v5 = sub_1B5CE599C(v4, ") ", 2);
    v6 = sub_1B5CE599C(v5, "LOG(", 4);
    v7 = sub_1B5CE599C(v6, "INFO", 4);
    v8 = sub_1B5CE599C(v7, ") ", 2);
    v9 = sub_1B5CE599C(v8, "\tAllocating trie slots: magic_number=", 37);
    v10 = MEMORY[0x1B8C87F10](v9, 1);
    v11 = sub_1B5CE599C(v10, ", root_usage_sum=", 17);
    MEMORY[0x1B8C87EF0](v11, *(*(a1 + 8) + 96));
    sub_1B5CFF628(v33);
  }

  sub_1B5D00570(a1, v35);
  v12 = sub_1B5CFDEA8(v35);
  sub_1B5CFEDE8(*(a1 + 8), v12, *(a1 + 64));
  sub_1B5CFED04(*(a1 + 8));
  v13 = sub_1B5CFEDE8(*(a1 + 8), v12, *(a1 + 64));
  if (v13 >= 0x1000001)
  {
    sub_1B5CF7CDC(v33);
    v28 = sub_1B5CE599C(v34, "Trie size=", 10);
    v29 = MEMORY[0x1B8C87F10](v28, v13);
    v30 = sub_1B5CE599C(v29, " bytes exceeds trie addressing capacity=", 40);
    MEMORY[0x1B8C87F00](v30, 0x1000000);
    exception = __cxa_allocate_exception(0x20uLL);
    std::stringbuf::str();
    sub_1B5CFF75C(exception, &v32);
    __cxa_throw(exception, &unk_1F2D573E0, sub_1B5CFF5C8);
  }

  sub_1B5CFF364(*(a1 + 8), v35, *(a1 + 64));
  if (sub_1B5CE5804() <= 0)
  {
    LOBYTE(v33[0]) = 0;
    v14 = sub_1B5CE599C(MEMORY[0x1E69E5300], "UnigramsCompiler.cpp", 20);
    v15 = sub_1B5CE599C(v14, "(", 1);
    v16 = MEMORY[0x1B8C87F00](v15, 352);
    v17 = sub_1B5CE599C(v16, ") ", 2);
    v18 = sub_1B5CE599C(v17, "LOG(", 4);
    v19 = sub_1B5CE599C(v18, "INFO", 4);
    v20 = sub_1B5CE599C(v19, ") ", 2);
    v21 = sub_1B5CE599C(v20, "\tReserved ", 10);
    v22 = MEMORY[0x1B8C87F10](v21, dword_1EB90CD40);
    v23 = sub_1B5CE599C(v22, " and wrote ", 11);
    v24 = MEMORY[0x1B8C87F10](v23, dword_1EB90CD44);
    v25 = sub_1B5CE599C(v24, " trie nodes in ", 15);
    v26 = MEMORY[0x1B8C87F10](v25, v13);
    sub_1B5CE599C(v26, " bytes", 6);
    sub_1B5CFF628(v33);
  }

  sub_1B5CFDDA8();
  std::stringbuf::str();
  return sub_1B5D0B3AC(v35);
}

void sub_1B5D00C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v52 & 1) == 0)
    {
LABEL_6:
      sub_1B5CFBC44(&a16, MEMORY[0x1E69E54D8]);
      MEMORY[0x1B8C88080](&a32);
      sub_1B5D0B3AC(&a51);
      _Unwind_Resume(a1);
    }
  }

  else if (!v52)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v51);
  goto LABEL_6;
}

uint64_t sub_1B5D00CEC(uint64_t a1, uint64_t a2)
{
  sub_1B5CFFFB8(a1);
  sub_1B5D00958(a1);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v5;
  *(a2 + 16) = v6;
  return 1;
}

void sub_1B5D00D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2 == 1)
  {
    v10 = __cxa_begin_catch(exception_object);
    if (sub_1B5CE5804() <= 0)
    {
      a10 = 0;
      v11 = sub_1B5CE599C(MEMORY[0x1E69E5300], "UnigramsCompiler.cpp", 20);
      v12 = sub_1B5CE599C(v11, "(", 1);
      v13 = MEMORY[0x1B8C87F00](v12, 367);
      v14 = sub_1B5CE599C(v13, ") ", 2);
      v15 = sub_1B5CE599C(v14, "LOG(", 4);
      v16 = sub_1B5CE599C(v15, "INFO", 4);
      v17 = sub_1B5CE599C(v16, ") ", 2);
      v18 = sub_1B5CE599C(v17, "Error occurred during trie construction: ", 41);
      v19 = (*(*v10 + 16))(v10);
      v20 = strlen(v19);
      v21 = sub_1B5CE599C(v18, v19, v20);
      sub_1B5CE58B0(v21);
      sub_1B5CFF628(&a10);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B5D00D3CLL);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5D00EC0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1B5CFF998(v6, v10);
    }

    sub_1B5D04FA0();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_1B5D00FE8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1B5D04FA0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1B5CEDC00(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t *sub_1B5D010BC(uint64_t *a1, int a2)
{
  a1[22] = 0;
  v4 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v5 = a1 + 2;
  v6 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v7 = MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 24);
  v9 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v9;
  *(a1 + *(v9 - 24)) = v8;
  a1[1] = 0;
  v10 = (a1 + *(*a1 - 24));
  std::ios_base::init(v10, a1 + 3);
  v11 = MEMORY[0x1E69E5560] + 24;
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v12 = v7[5];
  v13 = v7[4];
  a1[2] = v13;
  *(v5 + *(v13 - 24)) = v12;
  v14 = v7[1];
  *a1 = v14;
  *(a1 + *(v14 - 24)) = v7[6];
  *a1 = v11;
  a1[16] = v4;
  a1[2] = v6;
  sub_1B5CFCFA4((a1 + 3), a2);
  return a1;
}

void sub_1B5D01344(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](v1);
  _Unwind_Resume(a1);
}

void sub_1B5D01370(void *a1)
{
  sub_1B5D013A8(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D013A8(void *a1)
{
  *a1 = &unk_1F2D56830;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        v5 = *(v4 - 8);
        if (v5)
        {
          v6 = -176 * v5;
          v7 = v4 + 176 * v5 - 72;
          do
          {
            v8 = *(v7 + 40);
            if (v8)
            {
              *(v7 + 48) = v8;
              operator delete(v8);
            }

            v9 = *v7;
            if (*v7)
            {
              *(v7 + 8) = v9;
              operator delete(v9);
            }

            v10 = *(v7 - 48);
            if (v10)
            {
              *(v7 - 40) = v10;
              operator delete(v10);
            }

            v11 = *(v7 - 72);
            if (v11)
            {
              *(v7 - 64) = v11;
              operator delete(v11);
            }

            v12 = *(v7 - 104);
            if (v12)
            {
              *(v7 - 96) = v12;
              operator delete(v12);
            }

            v7 -= 176;
            v6 += 176;
          }

          while (v6);
        }

        MEMORY[0x1B8C880C0](v4 - 16, 0x1090C8033691413);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1B5D014D0(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(a1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_1B5D01544(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5D015CC(result, a4);
  }

  return result;
}

void sub_1B5D015AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1B5D018D4(&a9);
  _Unwind_Resume(a1);
}

void sub_1B5D015CC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_1B5D0161C(a1, a2);
  }

  sub_1B5D04FA0();
}

void sub_1B5D0161C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1B5CE5968();
}

void *sub_1B5D01678(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v4[1] = 0;
      *v4 = v7;
      v4[2] = 0;
      v4[3] = 0;
      sub_1B5D01774((v4 + 1), v6[1], v6[2], v6[2] - v6[1]);
      v4[4] = 0;
      v4[5] = 0;
      v4[6] = 0;
      sub_1B5D01774((v4 + 4), v6[4], v6[5], v6[5] - v6[4]);
      v8 = v6[7];
      *(v4 + 61) = *(v6 + 61);
      v4[7] = v8;
      v6 += 9;
      v4 = v13 + 9;
      v13 += 9;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_1B5D017F0(v10);
  return v4;
}

uint64_t sub_1B5D01774(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B5CFF998(result, a4);
  }

  return result;
}

void sub_1B5D017D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D017F0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1B5D01828(a1);
  }

  return a1;
}

void sub_1B5D01828(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 9;
      sub_1B5D0187C(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_1B5D0187C(uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    a2[5] = v3;
    operator delete(v3);
  }

  v4 = a2[1];
  if (v4)
  {
    a2[2] = v4;

    operator delete(v4);
  }
}

void sub_1B5D018D4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 9;
        sub_1B5D0187C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_1B5D0195C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1B5D019B4(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1B5D019B4(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1B5D01A3C(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1B5D01A3C(void *a1, uint64_t *a2, unsigned int *a3)
{
  result = *sub_1B5D01AC0(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1B5D01C68();
  }

  return result;
}

uint64_t *sub_1B5D01AC0(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
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
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1B5D01CF0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1B5D01EA8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1B5D01D0C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_1B5D01EA8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1B5D01F0C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1B5D01F0C(a1, *a2);
    sub_1B5D01F0C(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void sub_1B5D01F70(uint64_t a1)
{
  sub_1B5D01FA8(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D01FA8(uint64_t a1)
{
  *a1 = &unk_1F2D55E50;
  v2 = a1 + 136;
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  *(a1 + 136) = *MEMORY[0x1E69E54E8];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 144) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  *(a1 + 144) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 152));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 248);
  sub_1B5D0213C((a1 + 88), 0);
  v5 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::mutex::~mutex((a1 + 16));
  return a1;
}

uint64_t sub_1B5D0213C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1B5D0C498(result);

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

uint64_t *sub_1B5D0218C(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_1B5CFCFA4((a1 + 1), 16);
  return a1;
}

void sub_1B5D022D0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D022F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v6 = (a4 + 8 * a2);
  while (1)
  {
    v7 = *v6;
    if (!*v6)
    {
      break;
    }

    v8 = 0;
    v9 = *(a1 + 88);
    v10 = *(v4 + 102);
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = *(v4 + 80);
    do
    {
      v13 = *(v7 + 112);
      v14 = sub_1B5D023CC(v9, *(v7 + 100), v10);
      if (v13 + v12 + v14 < v11)
      {
        v11 = v13 + v12 + v14;
        v8 = v7;
      }

      v7 = *(v7 + 16);
    }

    while (v7);
    if (!v8)
    {
      break;
    }

    *v4 = v8;
    *(v4 + 8) = 0;
    *(v4 + 112) = v11;
    v15 = *(v4 + 98);
    *(v4 + 16) = v6[v15];
    v6[v15] = v4;
    v4 = *(v4 + 24);
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B5D023CC(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(*(a1 + 8) + 4 * a2);
  if (*(*(a1 + 8) + 4 * a2 + 4) - v3 == *(a1 + 34))
  {
    return *(*(a1 + 24) + 2 * (v3 + a3));
  }

  else
  {
    return sub_1B5D023FC(a1, a2, a3);
  }
}

uint64_t sub_1B5D023FC(void *a1, unsigned int a2, int a3)
{
  v3 = (a1[1] + 4 * a2);
  v4 = *v3;
  v5 = v3[1] - 1;
  if (v4 > v5)
  {
    return 0x7FFFLL;
  }

  while (1)
  {
    v6 = *(a1[2] + 2 * ((v5 + v4) / 2));
    if (v6 >= a3)
    {
      break;
    }

    v4 = (v5 + v4) / 2 + 1;
LABEL_6:
    if (v4 > v5)
    {
      return 0x7FFFLL;
    }
  }

  if (v6 > a3)
  {
    v5 = (v5 + v4) / 2 - 1;
    goto LABEL_6;
  }

  return *(a1[3] + 2 * ((v5 + v4 + ((v5 + v4) >> 31)) >> 1));
}

void sub_1B5D02A5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1B5D02D54(v21);
}

void sub_1B5D02A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1B5D02C64(uint64_t a1)
{
  v2 = sub_1B5D03500(a1 + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v8) = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
  }

  *(&__dst + v4) = 0;
  v5 = (a1 + 264);
  if (*(a1 + 287) < 0)
  {
    operator delete(*v5);
  }

  *v5 = __dst;
  *(a1 + 280) = v8;
  if (*(a1 + 287) < 0)
  {
    return *v5;
  }

  return v5;
}

uint64_t sub_1B5D02D74(uint64_t a1, char *a2)
{
  sub_1B5CE410C(&__p, a2);
  v3 = sub_1B5D030FC(a1 + 8, &__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v3)
  {
    operator new();
  }

  if (*(v3 + 79) < 0)
  {
    sub_1B5CE4AC4(v11, *(v3 + 56), *(v3 + 64));
  }

  else
  {
    *v11 = *(v3 + 56);
    v12 = *(v3 + 72);
  }

  sub_1B5CF7CDC(&__p);
  v13 = 0;
  if (v12 >= 0)
  {
    v4 = v11;
  }

  else
  {
    v4 = v11[0];
  }

  if (v12 >= 0)
  {
    v5 = HIBYTE(v12);
  }

  else
  {
    v5 = v11[1];
  }

  v6 = sub_1B5CE599C(&v15, v4, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0 || (v7 = MEMORY[0x1B8C87E60](&__p, &v13), (*(v7 + *(*v7 - 24) + 32) & 5) != 0) || (sub_1B5D0317C(&__p), (*(&v17[0].__locale_ + *(__p - 3)) & 2) == 0))
  {
    operator new();
  }

  v10 = v13;
  __p = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(&__p + *(__p - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  v15 = v8;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](&v19);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v10;
}

void sub_1B5D030B8(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_1B5CFBC44(&a12, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C88080](va);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D030FC(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1B5D03480((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_1B5D03480(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void *sub_1B5D0317C(void *a1)
{
  MEMORY[0x1B8C87E10](&v12, a1, 1);
  if (v12 != 1)
  {
    return a1;
  }

  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v11, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v11);
  v3 = a1 + 5;
  while (1)
  {
    v4 = *(v3 + *(*a1 - 24));
    v5 = v4[3];
    if (v5 == v4[4])
    {
      break;
    }

    LOBYTE(v6) = *v5;
LABEL_6:
    if ((v6 & 0x80) != 0 || (*(&v2[1].~facet + (v6 & 0x7F)) & 0x4000) == 0)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 = *(v3 + *(*a1 - 24));
    v8 = v7[3];
    if (v8 == v7[4])
    {
      (*(*v7 + 80))(v7);
    }

    else
    {
      v7[3] = v8 + 1;
    }
  }

  v6 = (*(*v4 + 72))(v4);
  if (v6 != -1)
  {
    goto LABEL_6;
  }

  v9 = 2;
LABEL_12:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1B5D03300(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B5D032BCLL);
  }

  __cxa_rethrow();
}

void sub_1B5D033A8(void *a1)
{
  *a1 = &unk_1F2D562E0;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x1B8C880F0](v1, 0x1000C4052888210);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D03424(void *a1)
{
  *a1 = &unk_1F2D562E0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x1B8C880F0](v2, 0x1000C4052888210);
  }

  return a1;
}

uint64_t sub_1B5D03480(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t sub_1B5D03500(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_1B5D0354C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a1;
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 0x40000000;
  v98 = sub_1B5D04450;
  v99 = &unk_1E7C20528;
  v100 = a1;
  std::mutex::lock((a1 + 16));
  *(v5 + 8) = 1;
  std::mutex::unlock((v5 + 16));
  if (((*(*a2 + 168))(a2, 2) & 1) != 0 || (*(*a2 + 168))(a2, 8))
  {
    *(v5 + 120) = sub_1B5D05258;
    *(v5 + 128) = 0;
  }

  if ((*(*a2 + 168))(a2, 4))
  {
    sub_1B5D04490(a2);
    if (!v6)
    {
      goto LABEL_184;
    }
  }

  if (!(*(*a2 + 64))(a2))
  {
    goto LABEL_184;
  }

  v7 = (*(*a2 + 40))(a2);
  v91 = (*(*a2 + 32))(a2);
  v96 = (*(*a2 + 200))(a2);
  v8 = (*(*a2 + 88))(a2);
  v90 = (*(*a2 + 64))(a2);
  v9 = *(v5 + 80);
  v10 = sub_1B5D05010(*(v96 + 16));
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 124) = 2;
  v88 = v90 + v8;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = *(v9 + 136);
  *(v10 + 48) = v90;
  *(v10 + 56) = v11;
  *v7 = v10;
  if ((a3 & 2) == 0)
  {
    v12 = sub_1B5D04ED0(v10);
    *(v5 + 112) = v12;
    if (v12 == -1)
    {
LABEL_11:
      *(v5 + 116) = v12;
      v13 = (v5 + 116);
      if (v8 >= 2)
      {
        v94 = &v90[*v90 == 32];
        goto LABEL_19;
      }

      v94 = v90;
      if (v8)
      {
LABEL_19:
        v22 = 0;
        v85 = v8;
        v82 = a2;
        v80 = v7;
        v81 = v5;
        v79 = (v5 + 116);
        while (1)
        {
          if (*(v5 + 8) == 2)
          {
            goto LABEL_184;
          }

          if (v7[v22])
          {
            break;
          }

LABEL_164:
          v22 += 2;
          if (v22 >= v8)
          {
            goto LABEL_178;
          }
        }

        if (!v22 && *v91)
        {
          v94 = (v94 + *(*v91 + 98));
LABEL_157:
          v59 = *(v5 + 120);
          v60 = *(v5 + 128);
          v61 = (v5 + (v60 >> 1));
          if (v60)
          {
            v59 = *(*v61 + v59);
          }

          v62 = v22;
          if (!v59(v61))
          {
            goto LABEL_184;
          }

          if (*v13 == -1)
          {
            v8 = v85;
            v22 = v62;
          }

          else
          {
            v8 = v85;
            v22 = v62;
            if (*v13 >= *(v5 + 112))
            {
              goto LABEL_178;
            }
          }

          goto LABEL_164;
        }

        v23 = *(v5 + 80);
        if (v90 + v22 + 0xFFFF <= v88)
        {
          v24 = v90 + v22 + 0xFFFF;
        }

        else
        {
          v24 = v88;
        }

        if (v24 <= v90 + v22)
        {
          v29 = 0;
          v26 = v90 + v22;
LABEL_53:
          v30 = 0;
          if (v26 && v26 != v24)
          {
            v83 = v29;
            v84 = v22;
            v87 = v90 + v22;
            v104[0] = 0;
            v92 = v24;
            v89 = v24 - v26;
            v31 = *(v23 + 8);
            v32 = *(v23 + 16);
            if (v31 != v32)
            {
              v93 = (v24 - v94) >> 1;
              v33 = v22 >> 1;
              v86 = *(v96 + 104);
              do
              {
                v34 = *(v23 + 1327);
                if ((v34 & 0x8000000000000000) != 0)
                {
                  v35 = *(v23 + 1304);
                  v34 = *(v23 + 1312);
                }

                else
                {
                  v35 = (v23 + 1304);
                }

                v36 = *(v23 + 1351);
                if ((v36 & 0x8000000000000000) != 0)
                {
                  v37 = *(v23 + 1328);
                  v36 = *(v23 + 1336);
                }

                else
                {
                  v37 = (v23 + 1328);
                }

                v38 = (*(**v31 + 160))(*v31);
                if ((sub_1B5D061F0(v35, v34, v37, v36, v38, a3, v94, v93, v33) & 1) == 0)
                {
                  v39 = *(*v31 + 52);
                  if (((a3 & 0x40000) != 0 || v39 != 1) && ((a3 & 0x100000) == 0 || (v39 & 0xFFFFFFFD) != 1))
                  {
                    v40 = (*(**v31 + 160))(*v31);
                    v41 = (a3 >> 3) & 1;
                    if (v40 == 1)
                    {
                      LOBYTE(v41) = 1;
                    }

                    if (((v89 > 1) & v41) != 0)
                    {
                      v42 = 2;
                    }

                    else
                    {
                      v42 = 0;
                    }

                    bzero(v86, 0x3000uLL);
                    v43 = (*(**v31 + 80))(*v31, (a3 >> 2) & 5 | (a3 >> 4) & 8 | (a3 >> 15) & 0x10 | v42, v26, v89, *(v23 + 1288), *(v23 + 1296), v26 - v94, v86, 512);
                    if ((*(**v31 + 160))() == 1)
                    {
                      sub_1B5D062E0(v23, v96, v104, v43);
                    }

                    else
                    {
                      sub_1B5D06538(v23, v96, v87, v26, v89, a3, v43, *v31);
                    }

                    if (v43)
                    {
                      v44 = 16;
                      do
                      {
                        sub_1B5D066D0((*(v96 + 104) + v44), 0);
                        v44 += 24;
                        --v43;
                      }

                      while (v43);
                    }
                  }
                }

                v31 += 2;
              }

              while (v31 != v32);
            }

            a2 = v82;
            v7 = v80;
            v5 = v81;
            v13 = v79;
            if (*(v23 + 105))
            {
              sub_1B5D9DD90(&v101, v26, v89 >> 1);
              if (v103 == 1)
              {
                sub_1B5D06708(v23, v96, *(v23 + 96) + v101, v87, v26, v26 + 2 * v102, v104);
              }
            }

            v30 = v104[0];
            if ((v3 & 0x80000000) == 0 && v104[0])
            {
              goto LABEL_155;
            }

            v45 = &v26[v83];
            if (&v26[v83] > v92)
            {
              v30 = sub_1B5D06708(v23, v96, (v3 >> 18), v87, v26, v45, v104);
              goto LABEL_155;
            }

            if ((v3 & 0x40000000) == 0)
            {
              v46 = 0;
              goto LABEL_123;
            }

            if (v45 >= v92)
            {
              v47 = 0;
              v46 = &v26[v83];
              goto LABEL_120;
            }

            v47 = 0;
            v46 = &v26[v83];
            v48 = v3;
            v49 = v92;
            while (2)
            {
              v50 = v49 - v46;
              if ((*(v23 + 304) - 4) <= 2)
              {
                if (v50 < 2)
                {
                  if ((v48 & **(v23 + 296) & 0x3FFFF) == 0)
                  {
LABEL_120:
                    if (v46)
                    {
LABEL_121:
                      if (v47 <= *(v23 + 792))
                      {
                        sub_1B5D06708(v23, v96, (v3 >> 18), v87, v26, v46, v104);
                      }

LABEL_123:
                      v54 = (v3 >> 26) & 0xF;
                      if (!v54)
                      {
LABEL_153:
                        v30 = v104[0];
                        a2 = v82;
                        v7 = v80;
                        v5 = v81;
                        v13 = v79;
                        if (!v104[0])
                        {
                          sub_1B5D06708(v23, v96, (v3 >> 18), v87, v26, v45, v104);
                          v30 = v104[0];
                        }

                        goto LABEL_155;
                      }

                      v55 = 1;
                      while (2)
                      {
                        if (v45 != v46)
                        {
                          sub_1B5D06708(v23, v96, (v3 >> 18), v87, v26, v45, v104);
                          v56 = v92 - v45;
                          if ((*(v23 + 304) - 4) > 2)
                          {
                            v57 = *v45;
                            if (*v45 < 0)
                            {
                              if (v56 >= 2 && (v57 & 0xE0) == 0xC0)
                              {
                                v58 = 2;
                                v57 = v45[1] & 0x3F | ((v57 & 0x1F) << 6);
                                goto LABEL_135;
                              }

                              if (v56 >= 3)
                              {
                                if ((v57 & 0xF0) == 0xE0)
                                {
                                  v57 = (v57 << 12) | ((v45[1] & 0x3F) << 6) | v45[2] & 0x3F;
                                  v58 = 3;
                                  goto LABEL_135;
                                }

                                if (v56 != 3)
                                {
                                  if ((v57 & 0xF8) == 0xF0)
                                  {
                                    v57 = 0;
                                    v58 = 4;
                                    goto LABEL_135;
                                  }

                                  if (v56 >= 5)
                                  {
                                    if ((v57 & 0xFC) == 0xF8)
                                    {
                                      v57 = 0;
                                      v58 = 5;
                                      goto LABEL_135;
                                    }

                                    if (v56 != 5 && (v57 & 0xFE) == 0xFC)
                                    {
                                      v57 = 0;
                                      v58 = 6;
                                      goto LABEL_135;
                                    }
                                  }
                                }
                              }

                              v57 = 0;
                            }

                            v58 = 1;
                            goto LABEL_135;
                          }

                          if (v56 < 2)
                          {
                            v58 = 0;
                            v57 = 0;
                          }

                          else
                          {
                            v57 = *v45;
                            v58 = 2;
                          }

LABEL_135:
                          if ((v3 & 0x3FFFF & *(*(v23 + 296) + 4 * v57)) == 0)
                          {
                            goto LABEL_153;
                          }

                          v45 += v58;
                        }

                        if (v55 >= v54)
                        {
                          goto LABEL_153;
                        }

                        ++v55;
                        if (v45 > v92)
                        {
                          goto LABEL_153;
                        }

                        continue;
                      }
                    }
                  }

LABEL_155:
                  v22 = v84;
                  break;
                }

                v51 = *v46;
                v52 = 2;
                goto LABEL_103;
              }

              v51 = *v46;
              if (*v46 < 0)
              {
                if (v50 < 2 || (v51 & 0xE0) != 0xC0)
                {
                  if (v50 >= 3)
                  {
                    if ((v51 & 0xF0) == 0xE0)
                    {
                      v51 = (v51 << 12) | ((v46[1] & 0x3F) << 6) | v46[2] & 0x3F;
                      v52 = 3;
                      goto LABEL_103;
                    }

                    if (v50 != 3)
                    {
                      if ((v51 & 0xF8) == 0xF0)
                      {
                        v51 = 0;
                        v52 = 4;
                        goto LABEL_103;
                      }

                      if (v50 >= 5)
                      {
                        if ((v51 & 0xFC) == 0xF8)
                        {
                          v51 = 0;
                          v52 = 5;
                          goto LABEL_103;
                        }

                        if (v50 != 5 && (v51 & 0xFE) == 0xFC)
                        {
                          v51 = 0;
                          v52 = 6;
                          goto LABEL_103;
                        }
                      }
                    }
                  }

                  v51 = 0;
                  goto LABEL_99;
                }

                v52 = 2;
                v51 = v46[1] & 0x3F | ((v51 & 0x1F) << 6);
              }

              else
              {
LABEL_99:
                v52 = 1;
              }

LABEL_103:
              v53 = *(*(v23 + 296) + 4 * v51);
              if ((v48 & v53 & 0x3FFFF) == 0)
              {
                goto LABEL_121;
              }

              v46 += v52;
              ++v47;
              v48 = v53;
              v49 = v92;
              if (v46 >= v92)
              {
                goto LABEL_121;
              }

              continue;
            }
          }

LABEL_156:
          *(v91 + 8 * v22) = v30;
          goto LABEL_157;
        }

        v25 = *(v23 + 248);
        v26 = v90 + v22;
        while (1)
        {
          v27 = v24 - v26;
          if ((*(v23 + 304) - 4) > 2)
          {
            v28 = *v26;
            if ((*v26 & 0x80000000) == 0)
            {
              goto LABEL_32;
            }

            if (v27 >= 2 && (v28 & 0xE0) == 0xC0)
            {
              v29 = 2;
              v28 = v26[1] & 0x3F | ((v28 & 0x1F) << 6);
            }

            else
            {
              if (v27 < 3)
              {
                goto LABEL_43;
              }

              if ((v28 & 0xF0) == 0xE0)
              {
                v28 = (v28 << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
                v29 = 3;
              }

              else
              {
                if (v27 == 3)
                {
                  goto LABEL_43;
                }

                if ((v28 & 0xF8) == 0xF0)
                {
                  v28 = 0;
                  v29 = 4;
                }

                else
                {
                  if (v27 < 5)
                  {
                    goto LABEL_43;
                  }

                  if ((v28 & 0xFC) == 0xF8)
                  {
                    v28 = 0;
                    v29 = 5;
                  }

                  else
                  {
                    if (v27 == 5 || (v28 & 0xFE) != 0xFC)
                    {
LABEL_43:
                      v28 = 0;
LABEL_32:
                      v29 = 1;
                      goto LABEL_36;
                    }

                    v28 = 0;
                    v29 = 6;
                  }
                }
              }
            }
          }

          else
          {
            if (v27 < 2)
            {
              v30 = 0;
              v3 = **(v23 + 296);
              if ((v25 & v3 & 0x3FFFF) == 0)
              {
                v29 = 0;
                goto LABEL_53;
              }

              goto LABEL_156;
            }

            v28 = *v26;
            v29 = 2;
          }

LABEL_36:
          v3 = *(*(v23 + 296) + 4 * v28);
          if ((v25 & v3 & 0x3FFFF) != 0)
          {
            v26 += v29;
            v25 = *(*(v23 + 296) + 4 * v28);
            if (v26 < v24)
            {
              continue;
            }
          }

          goto LABEL_53;
        }
      }

      goto LABEL_178;
    }

    if (v12)
    {
      v12 = 0;
      goto LABEL_11;
    }

LABEL_184:
    v75 = 0;
    goto LABEL_185;
  }

  *(v5 + 116) = -1;
  v14 = *v91;
  if (!*v91)
  {
    v18 = sub_1B5D07E40(*(v5 + 80), v90, v88, v96, a3);
    *v91 = v18;
    v19 = *(v5 + 120);
    v20 = *(v5 + 128);
    v21 = (v5 + (v20 >> 1));
    if (v20)
    {
      v19 = *(*v21 + v19);
    }

    v68 = v19(v21, 0, v18, v7, v96, v5 + 116);
LABEL_177:
    if (v68)
    {
      goto LABEL_178;
    }

    goto LABEL_184;
  }

  v15 = *(v5 + 120);
  v16 = *(v5 + 128);
  v17 = (v5 + (v16 >> 1));
  if (v16)
  {
    v15 = *(*v17 + v15);
  }

  if (!v15(v17, 0, v14, v7, v96, v5 + 116))
  {
    goto LABEL_184;
  }

  v63 = *(v14 + 98);
  if (v7[v63])
  {
    v64 = sub_1B5D07E40(*(v5 + 80), v90 + v63, v88, v96, a3);
    *(v91 + 8 * v63) = v64;
    v65 = *(v5 + 120);
    v66 = *(v5 + 128);
    v67 = (v5 + (v66 >> 1));
    if (v66)
    {
      v65 = *(*v67 + v65);
    }

    v68 = v65(v67, v63, v64, v7, v96, v5 + 116);
    goto LABEL_177;
  }

LABEL_178:
  v69 = *(v5 + 80);
  v70 = sub_1B5D05010(*(v96 + 16));
  *(v70 + 96) = 0u;
  *(v70 + 112) = 0u;
  *(v70 + 124) = 3;
  *(v70 + 64) = 0u;
  *(v70 + 80) = 0u;
  *(v70 + 32) = 0u;
  *(v70 + 48) = 0u;
  *v70 = 0u;
  *(v70 + 16) = 0u;
  v71 = *(v69 + 136);
  *(v70 + 48) = v88;
  *(v70 + 56) = v71;
  *(v91 + 8 * v8) = v70;
  if (v7[v8])
  {
    v72 = *(v5 + 120);
    v73 = *(v5 + 128);
    v74 = (v5 + (v73 >> 1));
    if (v73)
    {
      v72 = *(*v74 + v72);
    }

    if (!v72(v74, v8, v70, v7, v96, v5 + 116))
    {
      goto LABEL_184;
    }
  }

  if ((*(*a2 + 168))(a2, 32, v70))
  {
    sub_1B5D04DB4(a2);
  }

  else
  {
    v77 = (*(*a2 + 24))(a2);
    v78 = *v77;
    if (*v77)
    {
      do
      {
        v78[1] = v77;
        v77 = v78;
        v78 = *v78;
      }

      while (v78);
    }
  }

  v75 = 1;
LABEL_185:
  v98(v97);
  return v75;
}

void sub_1B5D04450(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((v1 + 16));
  *(v1 + 8) = 0;

  std::mutex::unlock((v1 + 16));
}

void sub_1B5D04490(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = (*(*a1 + 200))(a1);
  (*(*a1 + 32))(a1);
  v12 = a1;
  v3 = (*(*a1 + 88))(a1) + 1;
  v5 = v2[9];
  v4 = v2[10];
  v6 = v3 - (v4 - v5);
  if (v3 <= v4 - v5)
  {
    if (v3 < v4 - v5)
    {
      v2[10] = &v5[v3];
    }
  }

  else
  {
    if (v2[11] - v4 < v6)
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1B5D04FA0();
    }

    bzero(v4, v6);
    v2[10] = &v5[v3];
    v5 = v2[9];
  }

  v7 = v12;
  v8 = (*(*v12 + 64))(v12);
  v9 = (*(*v7 + 88))(v7);
  memcpy(v5, v8, v9);
  v10 = &v5[(*(*v7 + 88))(v7) & 0xFFFFFFFFFFFFFFFELL];
  if (v5 < v10)
  {
    v11 = v5;
    do
    {
      if (*v11 == 10)
      {
        break;
      }

      v11 += 2;
    }

    while (v11 < v10);
  }

  sub_1B5D04F58(1uLL);
}

void sub_1B5D04D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  sub_1B5D14FF0(&a17);
  MEMORY[0x1B8C880C0](a9, 0x1000C8077774924);
  if (v23)
  {
    operator delete(v23);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D04DB4(uint64_t a1)
{
  v2 = (*(*a1 + 24))(a1);
  v3 = *v2;
  if (*v2)
  {
    do
    {
      v3[1] = v2;
      v2 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  v4 = (*(*a1 + 16))(a1);
  v5 = (*(*a1 + 88))(a1);
  result = (*(*a1 + 32))(a1);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      for (i = *(result + 8 * v7); i; i = i[3])
      {
        *(v4 + 8) = i;
        *i = v4;
        v4 = i;
      }
    }

    while (v7++ != v5);
  }

  return result;
}

unint64_t sub_1B5D04ED0(uint64_t a1)
{
  v4 = 15;
  v1 = MEMORY[0x1B8C88460](a1);
  if (host_statistics(v1, 2, host_info_out, &v4))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *MEMORY[0x1E69E9AC8] * host_info_out[0];
  if (v3 <= 0x100000)
  {
    return 0;
  }

  if (v3 >= 0x800FFFFF)
  {
    LODWORD(v3) = -2146435073;
  }

  return (v3 - 0x100000) / 0x18uLL;
}

void sub_1B5D04F58(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D04FB8(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t sub_1B5D05010(void *a1)
{
  v1 = a1[5];
  v2 = a1[4];
  if (v2 == a1[6])
  {
    v2 = 0;
    ++v1;
    a1[4] = 0;
    a1[5] = v1;
  }

  v3 = a1[1];
  if (v1 == (a1[2] - v3) >> 3)
  {
    operator new[]();
  }

  v4 = *(v3 + 8 * v1);
  a1[4] = v2 + 1;
  v5 = v4 + (v2 << 7);
  sub_1B5D05220((v5 + 104), 0);
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  return v5;
}

void sub_1B5D051D8(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D05220(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_1B5D05258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (!a3)
  {
    return 1;
  }

  v8 = a3;
  v10 = (a4 + 8 * a2);
  v26 = v10;
  while (1)
  {
    v11 = *v10;
    if (*v10)
    {
      v12 = 0;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        if ((!*(v11 + 122) || *(v11 + 80) <= 20000) && (!*(v8 + 122) || *(v8 + 80) <= 20000))
        {
          v14 = sub_1B5D0542C(*(a1 + 88), *(v11 + 100), *(v8 + 102));
          if (v14 <= 32766)
          {
            v15 = *(v8 + 80) + v14;
            if (*(v11 + 112) + v15 < v13)
            {
              v12 = v11;
              v13 = *(v11 + 112) + v15;
            }

            v16 = sub_1B5D054BC(a5);
            *(v16 + 4) = v15;
            v17 = *a6;
            if (*a6 != -1 && v17 < *(a1 + 112))
            {
              *a6 = v17 + 1;
            }

            v18 = *(v8 + 40);
            *v16 = v11;
            v16[1] = v18;
            *(v8 + 40) = v16;
            *(v11 + 32) = v16;
          }
        }

        v11 = *(v11 + 16);
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (*(v8 + 40))
    {
      goto LABEL_30;
    }

    v20 = *v26;
    if (!*v26)
    {
      goto LABEL_30;
    }

    v25 = *(v8 + 80) + sub_1B5D023CC(*(a1 + 88), *(v20 + 100), *(v8 + 102));
    v19 = *(v20 + 112) + v25;
    v22 = sub_1B5D054BC(a5);
    *(v22 + 4) = v25;
    v23 = *(v8 + 40);
    *v22 = v20;
    v22[1] = v23;
    *(v8 + 40) = v22;
    *(v20 + 32) = v22;
    if (v19 >= v13)
    {
LABEL_30:
      v19 = v13;
      v20 = v12;
      if (!v12)
      {
        return 0;
      }
    }

    *v8 = v20;
    *(v8 + 8) = 0;
    *(v8 + 112) = v19;
    v21 = *(v8 + 98);
    v10 = v26;
    *(v8 + 16) = v26[v21];
    v26[v21] = v8;
    v8 = *(v8 + 24);
    if (!v8)
    {
      return 1;
    }
  }
}

uint64_t sub_1B5D0542C(uint64_t a1, unsigned int a2, int a3)
{
  v4 = *(*(a1 + 8) + 4 * a2);
  if (*(*(a1 + 8) + 4 * a2 + 4) - v4 == *(a1 + 34))
  {
    return *(*(a1 + 24) + 2 * (v4 + a3));
  }

  v6 = a3 | (a2 << 16);
  v7 = *(a1 + 36) & (3 * a2 + a3);
  v8 = *(a1 + 40);
  if (*(v8 + 4 * v7) == v6)
  {
    return *(*(a1 + 48) + 4 * v7);
  }

  *(v8 + 4 * v7) = v6;
  result = sub_1B5D023FC(a1, a2, a3);
  *(*(a1 + 48) + 4 * v7) = result;
  return result;
}

void *sub_1B5D054BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    operator new();
  }

  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[4];
  if (v4 == v3)
  {
    v4 = 0;
    ++v2;
    v1[4] = 0;
    v1[5] = v2;
  }

  v5 = v1[1];
  if (v2 == (v1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x18uLL);
    operator new[]();
  }

  v6 = *(v5 + 8 * v2);
  v1[4] = v4 + 1;
  result = (v6 + 24 * v4);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_1B5D056B4(void *a1)
{
  sub_1B5D056EC(a1);

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D056EC(void *a1)
{
  *a1 = &unk_1F2D55E10;
  a1[5] = 0;
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
        MEMORY[0x1B8C880C0](v2[v5], 0x1020C80EDCEB4C7);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1B5D05790(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((v1 + 16));
  *(v1 + 8) = 0;

  std::mutex::unlock((v1 + 16));
}

void sub_1B5D057D0(uint64_t a1)
{
  sub_1B5D05808(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D05808(uint64_t a1)
{
  *a1 = &unk_1F2D56050;
  sub_1B5D05B2C(a1);
  v2 = *(a1 + 1360);
  v3 = *(a1 + 1368);
  *(a1 + 1392) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v2 = (*(a1 + 1360) + 8);
      *(a1 + 1360) = v2;
      v3 = *(a1 + 1368);
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 1384) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v7 = *(a1 + 1360);
    v8 = *(a1 + 1368);
    if (v8 != v7)
    {
      *(a1 + 1368) = v8 + ((v7 - v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v9 = *(a1 + 1352);
  if (v9)
  {
    operator delete(v9);
  }

  if (*(a1 + 1351) < 0)
  {
    operator delete(*(a1 + 1328));
  }

  if (*(a1 + 1327) < 0)
  {
    operator delete(*(a1 + 1304));
  }

  if (*(a1 + 1087) < 0)
  {
    operator delete(*(a1 + 1064));
  }

  v10 = MEMORY[0x1E69E54E8];
  v11 = *MEMORY[0x1E69E54E8];
  *(a1 + 800) = *MEMORY[0x1E69E54E8];
  *(a1 + 800 + *(v11 - 24)) = *(v10 + 24);
  *(a1 + 808) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 895) < 0)
  {
    operator delete(*(a1 + 872));
  }

  *(a1 + 808) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 816));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 912);
  sub_1B5D05B74(a1 + 256);
  v12 = *(a1 + 216);
  if (v12)
  {
    *(a1 + 224) = v12;
    operator delete(v12);
  }

  sub_1B5D05CE8((a1 + 160));
  *(a1 + 144) = &unk_1F2D56090;
  v13 = *(a1 + 152);
  if (v13)
  {
    MEMORY[0x1B8C880C0](v13, 0x1000C8077774924);
  }

  *(a1 + 128) = &unk_1F2D56090;
  v14 = *(a1 + 136);
  if (v14)
  {
    MEMORY[0x1B8C880C0](v14, 0x1000C8077774924);
  }

  v15 = *(a1 + 88);
  if (v15)
  {
    sub_1B5CDD904(v15);
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    sub_1B5CDD904(v16);
  }

  v17 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v19 = (a1 + 32);
  sub_1B5D05D88(&v19);
  v19 = (a1 + 8);
  sub_1B5D05D88(&v19);
  return a1;
}

uint64_t sub_1B5D05B2C(void *a1)
{
  sub_1B5D05DDC(a1 + 1);
  sub_1B5D05DDC(a1 + 4);
  a1[28] = a1[27];
  v2 = sub_1B5D11D28();
  result = sub_1B5D11DFC(v2, a1[33]);
  a1[33] = 0;
  return result;
}

uint64_t sub_1B5D05B74(uint64_t a1)
{
  *a1 = &unk_1F2D56138;
  v2 = sub_1B5D11D28();
  sub_1B5D11DFC(v2, *(a1 + 8));
  *(a1 + 8) = 0;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  *(a1 + 56) = *MEMORY[0x1E69E54E8];
  *(a1 + 56 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 64) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *(a1 + 64) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 72));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 168);
  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

void *sub_1B5D05CE8(void *a1)
{
  *a1 = &unk_1F2D55DF0;
  a1[5] = 0;
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
        MEMORY[0x1B8C880C0](v2[v5], 0x1070C802D7A0B02);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1B5D05D88(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1B5D05DDC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1B5D05DDC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_1B5CDD904(v4);
    }
  }

  a1[1] = v2;
}

void sub_1B5D05E28(void *a1)
{
  *a1 = &unk_1F2D56090;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x1B8C880C0](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D05EA4(void *a1)
{
  *a1 = &unk_1F2D56090;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_1B5D05F00(void *a1)
{
  sub_1B5D05CE8(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D05F3C(uint64_t a1)
{
  sub_1B5D05B74(a1);

  JUMPOUT(0x1B8C880F0);
}

void sub_1B5D05F7C(void *a1)
{
  *a1 = &unk_1F2D56030;
  a1[1] = 0;
  sub_1B5D0600C(a1, "");
}

void sub_1B5D05FC8(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F2D56090;
  v3 = v1[1];
  if (v3)
  {
    MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D0607C(void *a1)
{
  *a1 = &unk_1F2D56090;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x1B8C880C0](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D060F8(void *a1)
{
  *a1 = &unk_1F2D56090;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_1B5D0617C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D575C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D061F0(const void *a1, size_t a2, const void *a3, size_t a4, int a5, int a6, unsigned __int16 *a7, uint64_t a8, uint64_t a9)
{
  if (a5 == 2 && (a6 & 0x200000) == 0)
  {
    return 1;
  }

  result = sub_1B5D07070(a1, a2, "ko", 2uLL);
  if (result)
  {
    v15 = sub_1B5D07070(a3, a4, "en", 2uLL);
    result = 0;
    if (a9)
    {
      if (a5 == 1 && v15)
      {
        if (a8)
        {
          v16 = 2 * a8;
          v17 = a7;
          while (1)
          {
            v18 = *v17;
            if (v18 > 0xFF || (*(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x400) == 0)
            {
              break;
            }

            ++v17;
            v16 -= 2;
            if (!v16)
            {
              v17 = &a7[a8];
              return a9 != v17 - a7;
            }
          }
        }

        else
        {
          v17 = a7;
        }

        return a9 != v17 - a7;
      }
    }
  }

  return result;
}

uint64_t sub_1B5D062E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(result + 80) && *(result + 105) == 1)
  {
    v4 = *(result + 1351);
    if (v4 < 0)
    {
      v5 = *(result + 1328);
      v4 = *(result + 1336);
    }

    else
    {
      v5 = (result + 1328);
    }

    if (v4 == 5)
    {
      v6 = bswap64(*v5 | (*(v5 + 4) << 32));
      v7 = v6 >= 0x656E5F5553000000;
      v8 = v6 > 0x656E5F5553000000;
      v9 = !v7;
      v10 = v8 == v9;
    }

    else
    {
      v10 = 0;
    }

    v12 = *(a2 + 104);
    v13 = *(*(result + 216) + 16 * *(result + 96) + 16 * v10);
    if (a4)
    {
      operator new();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D0650C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1B5D06D50(v5 + 32);
  sub_1B5D06D50(va);
  _Unwind_Resume(a1);
}

void sub_1B5D06538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a8 + 52);
  v9 = *(a2 + 104);
  if (a7)
  {
    operator new();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B5D066D0(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_1B5D06708(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  v8 = (*(a1 + 216) + 16 * a3);
  v9 = v8[1];
  if (!v9)
  {
    return *a7;
  }

  v14 = *v8;
  v15 = a6 - a5;
  v23 = 5000 * (a6 - a5);
  v16 = a6 - a4;
  do
  {
    v17 = sub_1B5D05010(*(a2 + 16));
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    *v17 = 0u;
    *(v17 + 16) = 0u;
    v18 = *(a1 + 56);
    HIDWORD(v19) = *v14;
    LODWORD(v19) = *v14;
    *(v17 + 100) = v19 >> 16;
    *(v17 + 64) = *(v14 + 8) + (v18[13] << 28);
    v20 = *(v14 + 6);
    *(v17 + 76) = v20;
    *(v17 + 80) = v20;
    v21 = (*(*v18 + 152))(v18, v14);
    *(v17 + 48) = a5;
    *(v17 + 56) = v21;
    *(v17 + 96) = v15;
    if (!a3)
    {
      *(v17 + 80) += v23;
    }

    *(v17 + 98) = v16;
    *(v17 + 24) = *a7;
    *(v17 + 124) = 1;
    *(v17 + 72) = 0;
    *(v17 + 123) = *(*(a1 + 56) + 656);
    *a7 = v17;
    v14 += 12;
    --v9;
  }

  while (v9);
  return v17;
}

uint64_t sub_1B5D06858(uint64_t a1)
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

uint64_t sub_1B5D068E4(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D576F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B5D06924(uint64_t a1, uint64_t *a2, const void **a3)
{
  v3 = *a2;
  if ((*(*a2 + 4) & 0x40) != 0)
  {
    return;
  }

  v5 = *a3;
  v6 = *(a1 + 88);
  v7 = sub_1B5D05010(*(**(a1 + 8) + 16));
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = **(a1 + 16);
  HIDWORD(v9) = *v3;
  LODWORD(v9) = *v3;
  *(v7 + 100) = v9 >> 16;
  *(v7 + 64) = *(v3 + 8) + (v8[13] << 28);
  v10 = *(v3 + 6);
  *(v7 + 76) = v10;
  *(v7 + 80) = v10;
  *(v7 + 56) = (*(*v8 + 152))(v8, v3);
  if (v5)
  {
    sub_1B5D06BFC((v7 + 104), v5);
  }

  v11 = *(a1 + 24);
  if ((*v11 & 2) != 0)
  {
    if ((*v11 & 0x10) != 0)
    {
      v12 = *(a1 + 32);
      v13 = *v12;
      v14 = **(a1 + 40);
      v20 = *(*v12 + 24 * v14 + 12);
      v19 = **(a1 + 48);
    }

    else
    {
      v19 = **(a1 + 48);
      v12 = *(a1 + 32);
      v13 = *v12;
      v14 = **(a1 + 40);
      v20 = v19;
    }

    *(v7 + 96) = v20;
    v17 = **(a1 + 56);
    v18 = v17 - **(a1 + 64) + v19;
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *v12;
    v14 = **(a1 + 40);
    v15 = *(*v12 + 24 * v14 + 12);
    *(v7 + 96) = v15;
    v16 = **(a1 + 48);
    if (v16 < v15)
    {
      *(v7 + 96) = v16;
      LODWORD(v15) = v16;
    }

    v17 = **(a1 + 56);
    v18 = v15 + v17 - **(a1 + 64);
  }

  *(v7 + 98) = v18;
  v21 = (v13 + 24 * v14);
  v22 = *(a1 + 72);
  if (*v22 == 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v21 + 2) + (*v22 << 28);
  }

  v24 = *v21;
  *(v7 + 72) = v23;
  *(v7 + 123) = *(**(a1 + 16) + 656);
  *(v7 + 48) = v17;
  v25 = *v22;
  v26 = *(v3 + 4);
  if (*v22 == 7)
  {
    v27 = 9;
  }

  else if ((v26 & 2) != 0)
  {
    v27 = 5;
  }

  else if ((v26 & 1) == 0 || v25 == 6)
  {
    v27 = 6;
  }

  else
  {
    v27 = 0;
  }

  *(v7 + 124) = v27;
  v29 = *(a1 + 80);
  *(v7 + 24) = *v29;
  *(v7 + 122) = v24;
  if (v25 == 8)
  {
    v26 |= 0x10u;
  }

  *(v7 + 120) = v26;
  v30 = *v11;
  if ((v30 & 0x80) != 0)
  {
    if ((v30 & 0x80000) != 0 && v24 && (v26 & 2) == 0)
    {
      return;
    }
  }

  else if ((v30 & 0x1500) == 0)
  {
LABEL_36:
    v32 = 0;
    if ((v30 & 8) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  v31 = *v12 + 24 * v14;
  if (!*v31)
  {
    goto LABEL_36;
  }

  v32 = (0.0 - (*(v31 + 4) * *(v6 + 1280)));
  if ((v30 & 8) != 0)
  {
LABEL_37:
    v33 = *(*v12 + 24 * v14 + 14);
    if (v33 >= 2)
    {
      v34 = 1000 * (v33 >> 1) + 1000;
    }

    else
    {
      v34 = 0;
    }

    v32 += v34;
  }

LABEL_41:
  v35 = *(v7 + 80) + v32;
  if (v35 >= 0x7FFF)
  {
    v35 = 0x7FFF;
  }

  if (v32 >= 0x7FFF)
  {
    v36 = 0x7FFF;
  }

  else
  {
    v36 = v32;
  }

  *(v7 + 80) = v35;
  *(v7 + 84) = v36;
  *v29 = v7;
}

void sub_1B5D06BFC(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_1B5D05220(a1, cf);
  }
}

__n128 sub_1B5D06C64(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D57698;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_1B5D06D50(uint64_t a1)
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

uint64_t sub_1B5D06DDC(uint64_t a1, uint64_t a2)
{
  if (sub_1B5CF9CD0(a2, &unk_1F2D57788))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1B5D06E1C(uint64_t a1, const void **a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = sub_1B5D05010(*(**(a1 + 8) + 16));
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  v6 = *(v4 + 56);
  v7 = **(a1 + 24);
  HIDWORD(v8) = *v7;
  LODWORD(v8) = *v7;
  *(v5 + 100) = v8 >> 16;
  *(v5 + 64) = *(v7 + 8) + (v6[13] << 28);
  v9 = *(v7 + 6);
  *(v5 + 76) = v9;
  *(v5 + 80) = v9;
  *(v5 + 56) = (*(*v6 + 152))(v6);
  if (v3)
  {
    sub_1B5D06BFC((v5 + 104), v3);
  }

  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = **(a1 + 40);
  v14 = *(*v10 + 24 * v13 + 12);
  *(v5 + 96) = v14;
  *(v5 + 98) = v14;
  *(v5 + 72) = 0;
  *(v5 + 123) = *(*(v4 + 56) + 656);
  *(v5 + 124) = 0;
  *(v5 + 24) = *v12;
  v15 = *v10;
  v16 = (v15 + 24 * v13);
  v17 = *v16;
  *(v5 + 122) = v17;
  *(v5 + 120) = *(*v11 + 4);
  v18 = *(v5 + 80);
  if (v17)
  {
    v18 -= (v16[1] * *(v4 + 1280));
  }

  v19 = *(v15 + 24 * v13 + 14);
  v20 = 1000 * (v19 >> 1) + 1000;
  if (v19 == 1)
  {
    v20 = 0;
  }

  v21 = v20 + v18;
  if (*(v15 + 24 * v13 + 14))
  {
    v18 = v21;
  }

  if (v18 >= 0x7FFF)
  {
    v18 = 0x7FFF;
  }

  *(v5 + 80) = v18;
  result = *(v15 + 24 * v13 + 4);
  *(v5 + 88) = result;
  *v12 = v5;
  return result;
}

__n128 sub_1B5D06FB4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D57718;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_1B5D070AC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1B5D07108(exception, a1);
  __cxa_throw(exception, off_1E7C20490, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_1B5D07108(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t sub_1B5D0713C(uint64_t a1, uint64_t a2, int a3, unsigned __int16 *a4, unint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = a6;
  v71 = *MEMORY[0x1E69E9840];
  v62[0] = 0;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v10 != v11)
  {
    v57 = (a1 + 1328);
    v58 = a1 + 1304;
    v54 = a3;
    v14 = a3 >> 1;
    v53 = (a7 >> 2) & 5 | (a7 >> 4) & 8 | (a7 >> 15) & 0x10;
    v52 = a3 / 2;
    v51 = *(a6 + 104);
    do
    {
      sub_1B5D7CED0(__p, a2);
      v15 = *(a1 + 1327);
      if ((v15 & 0x8000000000000000) != 0)
      {
        v7 = *(a1 + 1304);
        v15 = *(a1 + 1312);
      }

      else
      {
        v7 = v58;
      }

      v16 = *(a1 + 1351);
      if ((v16 & 0x8000000000000000) != 0)
      {
        v17 = *(a1 + 1328);
        v16 = *(a1 + 1336);
      }

      else
      {
        v17 = v57;
      }

      v18 = (*(**v10 + 160))();
      if ((v61 & 0x80u) == 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v20 = v61;
      }

      else
      {
        v20 = __p[1];
      }

      v21 = sub_1B5D061F0(v7, v15, v17, v16, v18, a7, v19, v20, v14);
      v8 = a6;
      if ((v21 & 1) == 0)
      {
        v22 = *(*v10 + 52);
        if (((a7 & 0x40000) != 0 || v22 != 1) && ((a7 & 0x100000) == 0 || (v22 & 0xFFFFFFFD) != 1))
        {
          v23 = (*(*a2 + 24))(a2);
          v24 = (*(**v10 + 160))();
          v25 = (a7 >> 3) & 1;
          if (v24 == 1)
          {
            LOBYTE(v25) = 1;
          }

          if ((((2 * v23 - v54) > 1) & v25) != 0)
          {
            LODWORD(v7) = 2;
          }

          else
          {
            LODWORD(v7) = 0;
          }

          bzero(v51, 0x3000uLL);
          v26 = (*(**v10 + 88))(*v10, v53 | v7, a2, v52, v51, 512);
          if ((*(**v10 + 160))() == 1)
          {
            sub_1B5D062E0(a1, a6, v62, v26);
            if (v26)
            {
              v7 = 16;
              do
              {
                sub_1B5D066D0((*(a6 + 104) + v7), 0);
                v7 += 24;
                --v26;
              }

              while (v26);
            }
          }

          else
          {
            v27 = *v10;
            v66 = a6;
            v65 = a7;
            v64 = v27;
            v63 = *(v27 + 52);
            v28 = *(a6 + 104);
            v62[1] = 0;
            v62[2] = v28;
            if (v26)
            {
              v70 = 0;
              operator new();
            }

            v8 = a6;
          }
        }
      }

      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      v10 += 2;
    }

    while (v10 != v11);
  }

  v29 = a4;
  if (!a4)
  {
    goto LABEL_138;
  }

  v30 = a5;
  if (a4 >= a5)
  {
    v35 = 0;
    v32 = a4;
    goto LABEL_64;
  }

  v31 = *(a1 + 248);
  v32 = a4;
  while (1)
  {
    v33 = a5 - v32;
    if ((*(a1 + 304) - 4) <= 2)
    {
      break;
    }

    v34 = *v32;
    if ((*v32 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    if (v33 >= 2 && (v34 & 0xE0) == 0xC0)
    {
      v35 = 2;
      v34 = *(v32 + 1) & 0x3F | ((v34 & 0x1F) << 6);
    }

    else
    {
      if (v33 < 3)
      {
        goto LABEL_54;
      }

      if ((v34 & 0xF0) == 0xE0)
      {
        v34 = (v34 << 12) | ((*(v32 + 1) & 0x3F) << 6) | v32[1] & 0x3F;
        v35 = 3;
      }

      else
      {
        if (v33 == 3)
        {
          goto LABEL_54;
        }

        if ((v34 & 0xF8) == 0xF0)
        {
          v34 = 0;
          v35 = 4;
        }

        else
        {
          if (v33 < 5)
          {
            goto LABEL_54;
          }

          if ((v34 & 0xFC) == 0xF8)
          {
            v34 = 0;
            v35 = 5;
          }

          else
          {
            if (v33 == 5 || (v34 & 0xFE) != 0xFC)
            {
LABEL_54:
              v34 = 0;
LABEL_43:
              v35 = 1;
              goto LABEL_47;
            }

            v34 = 0;
            v35 = 6;
          }
        }
      }
    }

LABEL_47:
    LODWORD(v7) = *(*(a1 + 296) + 4 * v34);
    if ((v31 & v7 & 0x3FFFF) != 0)
    {
      v32 = (v32 + v35);
      v31 = *(*(a1 + 296) + 4 * v34);
      if (v32 < a5)
      {
        continue;
      }
    }

    goto LABEL_64;
  }

  if (v33 >= 2)
  {
    v34 = *v32;
    v35 = 2;
    goto LABEL_47;
  }

  v35 = 0;
  LODWORD(v7) = **(a1 + 296);
  if ((v31 & v7 & 0x3FFFF) != 0)
  {
    v32 = 0;
  }

LABEL_64:
  if (*(a1 + 105) == 1)
  {
    sub_1B5D9DD90(&v67, v32, (a5 - v32) >> 1);
    if (v69 == 1)
    {
      sub_1B5D06708(a1, v8, *(a1 + 96) + v67, a4, v32, v32 + 2 * v68, v62);
      v29 = a4;
      v30 = a5;
      v8 = a6;
    }
  }

  result = v62[0];
  if (!v62[0] || (v7 & 0x80000000) != 0)
  {
    v37 = v32 + v35;
    if (v32 + v35 > v30)
    {
      result = sub_1B5D06708(a1, v8, (v7 >> 18), v29, v32, v32 + v35, v62);
      goto LABEL_139;
    }

    if ((v7 & 0x40000000) == 0)
    {
      v38 = 0;
      goto LABEL_106;
    }

    if (v37 >= v30)
    {
      v39 = 0;
      v38 = v32 + v35;
      goto LABEL_103;
    }

    v39 = 0;
    v38 = v32 + v35;
    v40 = v7;
    while (2)
    {
      v41 = v30 - v38;
      if ((*(a1 + 304) - 4) > 2)
      {
        v42 = *v38;
        if (*v38 < 0)
        {
          if (v41 >= 2 && (v42 & 0xE0) == 0xC0)
          {
            v43 = 2;
            v42 = v38[1] & 0x3F | ((v42 & 0x1F) << 6);
            goto LABEL_83;
          }

          if (v41 >= 3)
          {
            if ((v42 & 0xF0) == 0xE0)
            {
              v42 = (v42 << 12) | ((v38[1] & 0x3F) << 6) | v38[2] & 0x3F;
              v43 = 3;
              goto LABEL_83;
            }

            if (v41 != 3)
            {
              if ((v42 & 0xF8) == 0xF0)
              {
                v42 = 0;
                v43 = 4;
                goto LABEL_83;
              }

              if (v41 >= 5)
              {
                if ((v42 & 0xFC) == 0xF8)
                {
                  v42 = 0;
                  v43 = 5;
                  goto LABEL_83;
                }

                if (v41 != 5 && (v42 & 0xFE) == 0xFC)
                {
                  v42 = 0;
                  v43 = 6;
                  goto LABEL_83;
                }
              }
            }
          }

          v42 = 0;
        }

        v43 = 1;
LABEL_83:
        v44 = *(*(a1 + 296) + 4 * v42);
        if ((v40 & v44 & 0x3FFFF) == 0)
        {
          goto LABEL_104;
        }

        v38 += v43;
        ++v39;
        v40 = v44;
        if (v38 >= v30)
        {
          goto LABEL_104;
        }

        continue;
      }

      break;
    }

    if (v41 >= 2)
    {
      v42 = *v38;
      v43 = 2;
      goto LABEL_83;
    }

    if ((v40 & **(a1 + 296) & 0x3FFFF) != 0)
    {
      goto LABEL_139;
    }

LABEL_103:
    if (v38)
    {
LABEL_104:
      if (v39 <= *(a1 + 792))
      {
        sub_1B5D06708(a1, a6, (v7 >> 18), v29, v32, v38, v62);
      }

LABEL_106:
      v45 = (v7 >> 26) & 0xF;
      if (v45)
      {
        v46 = 1;
        while (v37 == v38)
        {
LABEL_120:
          if (v46 < v45)
          {
            ++v46;
            if (v37 <= a5)
            {
              continue;
            }
          }

          goto LABEL_136;
        }

        sub_1B5D06708(a1, a6, (v7 >> 18), a4, v32, v37, v62);
        v47 = a5 - v37;
        if ((*(a1 + 304) - 4) <= 2)
        {
          if (v47 < 2)
          {
            v49 = 0;
            v48 = 0;
          }

          else
          {
            v48 = *v37;
            v49 = 2;
          }

          goto LABEL_118;
        }

        v48 = *v37;
        if (*v37 < 0)
        {
          if (v47 < 2 || (v48 & 0xE0) != 0xC0)
          {
            if (v47 >= 3)
            {
              if ((v48 & 0xF0) == 0xE0)
              {
                v48 = (v48 << 12) | ((v37[1] & 0x3F) << 6) | v37[2] & 0x3F;
                v49 = 3;
                goto LABEL_118;
              }

              if (v47 != 3)
              {
                if ((v48 & 0xF8) == 0xF0)
                {
                  v48 = 0;
                  v49 = 4;
                  goto LABEL_118;
                }

                if (v47 >= 5)
                {
                  if ((v48 & 0xFC) == 0xF8)
                  {
                    v48 = 0;
                    v49 = 5;
                    goto LABEL_118;
                  }

                  if (v47 != 5 && (v48 & 0xFE) == 0xFC)
                  {
                    v48 = 0;
                    v49 = 6;
                    goto LABEL_118;
                  }
                }
              }
            }

            v48 = 0;
            goto LABEL_113;
          }

          v49 = 2;
          v48 = v37[1] & 0x3F | ((v48 & 0x1F) << 6);
        }

        else
        {
LABEL_113:
          v49 = 1;
        }

LABEL_118:
        if ((v7 & 0x3FFFF & *(*(a1 + 296) + 4 * v48)) == 0)
        {
          goto LABEL_136;
        }

        v37 += v49;
        goto LABEL_120;
      }

LABEL_136:
      result = v62[0];
      if (v62[0])
      {
        goto LABEL_139;
      }

      sub_1B5D06708(a1, a6, (v7 >> 18), a4, v32, v37, v62);
LABEL_138:
      result = v62[0];
    }
  }

LABEL_139:
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D07A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}