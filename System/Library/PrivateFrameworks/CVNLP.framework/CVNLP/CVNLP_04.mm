void sub_1D9D4A83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D4A86C(uint64_t a1)
{
  v7 = 0;
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    sub_1D9D4C084(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(a1 + 10))
  {
    v2 = 0;
    v3 = &v1[8 * *(a1 + 10)];
    v4 = *(a1 + 16);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += sub_1D9D4A900(v1 + 1, v5);
      v1 = v4;
    }

    while (v4 != v3);
  }

  else
  {
    return 0;
  }

  return v2;
}

unint64_t sub_1D9D4A900(_DWORD **a1, int a2)
{
  if (*(a1 + 9) == 1)
  {
    v4 = *(a1 + 8);
    v5 = v4 - 19;
    if (*(a1 + 11) == 1)
    {
      if (v5 <= 0xFFFFFFED)
      {
        sub_1D9D418C4(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v6 = sub_1D9D418DC(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_1D9D41A18(&v102, &v6->__r_.__value_.__l.__data_);
        sub_1D9D41A20(v103);
      }

      switch(v4)
      {
        case 1:
        case 6:
        case 16:
          v22 = 8 * **a1;
          goto LABEL_71;
        case 2:
        case 7:
        case 15:
          v22 = 4 * **a1;
          goto LABEL_71;
        case 3:
          v45 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v46 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_1D9D523E0(v45, v46++) | 1) ^ 0x3F) + 73) >> 6;
            v45 = *a1;
          }

          while (v46 < **a1);
          goto LABEL_71;
        case 4:
          v47 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v48 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_1D9D52A0C(v47, v48++) | 1) ^ 0x3F) + 73) >> 6;
            v47 = *a1;
          }

          while (v48 < **a1);
          goto LABEL_71;
        case 5:
          v37 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v38 = 0;
          do
          {
            v39 = sub_1D9D51788(v37, v38);
            v40 = (9 * (__clz(*v39 | 1) ^ 0x1F) + 73) >> 6;
            if (*v39 >= 0)
            {
              v41 = v40;
            }

            else
            {
              v41 = 10;
            }

            v22 += v41;
            ++v38;
            v37 = *a1;
          }

          while (v38 < **a1);
          goto LABEL_71;
        case 8:
          v22 = **a1;
          goto LABEL_71;
        case 9:
        case 10:
        case 11:
        case 12:
          sub_1D9D418C4(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1599);
          v7 = sub_1D9D418DC(v103, "Non-primitive types can't be packed.");
          sub_1D9D41A18(&v102, &v7->__r_.__value_.__l.__data_);
          sub_1D9D41A20(v103);
          goto LABEL_7;
        case 13:
          v30 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v31 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_1D9D51DB4(v30, v31++) | 1) ^ 0x1F) + 73) >> 6;
            v30 = *a1;
          }

          while (v31 < **a1);
          goto LABEL_71;
        case 14:
          v32 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v33 = 0;
          do
          {
            v34 = sub_1D9D51788(v32, v33);
            v35 = (9 * (__clz(*v34 | 1) ^ 0x1F) + 73) >> 6;
            if (*v34 >= 0)
            {
              v36 = v35;
            }

            else
            {
              v36 = 10;
            }

            v22 += v36;
            ++v33;
            v32 = *a1;
          }

          while (v33 < **a1);
          goto LABEL_71;
        case 17:
          v27 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v28 = 0;
          do
          {
            v29 = sub_1D9D51788(v27, v28);
            v22 += (9 * (__clz((2 * *v29) ^ (*v29 >> 31) | 1) ^ 0x1F) + 73) >> 6;
            ++v28;
            v27 = *a1;
          }

          while (v28 < **a1);
          goto LABEL_71;
        case 18:
          v42 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v43 = 0;
          do
          {
            v44 = sub_1D9D523E0(v42, v43);
            v22 += (9 * (__clz((2 * *v44) ^ (*v44 >> 63) | 1) ^ 0x3F) + 73) >> 6;
            ++v43;
            v42 = *a1;
          }

          while (v43 < **a1);
LABEL_71:
          *(a1 + 3) = v22;
          v49 = v22 + ((9 * (__clz((8 * a2) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
          if (v22)
          {
            v8 = v49;
          }

          else
          {
            v8 = 0;
          }

          break;
        default:
LABEL_7:
          v8 = 0;
          *(a1 + 3) = 0;
          break;
      }
    }

    else
    {
      if (v5 > 0xFFFFFFED)
      {
        v11 = 0;
        v10 = *(a1 + 8);
      }

      else
      {
        sub_1D9D418C4(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v9 = sub_1D9D418DC(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_1D9D41A18(&v102, &v9->__r_.__value_.__l.__data_);
        sub_1D9D41A20(v103);
        v10 = *(a1 + 8);
        v11 = (v10 - 19) < 0xFFFFFFEE;
      }

      v16 = v4 == 10;
      if (v11)
      {
        sub_1D9D418C4(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v17 = sub_1D9D418DC(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_1D9D41A18(&v102, &v17->__r_.__value_.__l.__data_);
        sub_1D9D41A20(v103);
      }

      v18 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v16;
      switch(v10)
      {
        case 1:
        case 6:
        case 16:
          v19 = v18 + 8;
          goto LABEL_27;
        case 2:
        case 7:
        case 15:
          v19 = v18 + 4;
LABEL_27:
          v8 = v19 * **a1;
          break;
        case 3:
          v85 = *a1;
          v86 = **a1;
          v8 = v18 * v86;
          if (v86 >= 1)
          {
            v87 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_1D9D523E0(v85, v87++) | 1) ^ 0x3F) + 73) >> 6;
              v85 = *a1;
            }

            while (v87 < **a1);
          }

          break;
        case 4:
          v88 = *a1;
          v89 = **a1;
          v8 = v18 * v89;
          if (v89 >= 1)
          {
            v90 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_1D9D52A0C(v88, v90++) | 1) ^ 0x3F) + 73) >> 6;
              v88 = *a1;
            }

            while (v90 < **a1);
          }

          break;
        case 5:
          v75 = *a1;
          v76 = **a1;
          v8 = v18 * v76;
          if (v76 >= 1)
          {
            v77 = 0;
            do
            {
              v78 = sub_1D9D51788(v75, v77);
              v79 = (9 * (__clz(*v78 | 1) ^ 0x1F) + 73) >> 6;
              if (*v78 >= 0)
              {
                v80 = v79;
              }

              else
              {
                v80 = 10;
              }

              v8 += v80;
              ++v77;
              v75 = *a1;
            }

            while (v77 < **a1);
          }

          break;
        case 8:
          v8 = **a1 + **a1 * v18;
          break;
        case 9:
          v96 = *a1;
          v97 = (*a1)[2];
          v8 = v18 * v97;
          if (v97 >= 1)
          {
            v98 = 0;
            do
            {
              v99 = sub_1D9D3BE10(v96, v98);
              v100 = *(v99 + 23);
              if ((v100 & 0x80u) != 0)
              {
                v100 = *(v99 + 8);
              }

              v8 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6);
              ++v98;
              v96 = *a1;
            }

            while (v98 < (*a1)[2]);
          }

          break;
        case 10:
          v58 = *a1;
          v59 = (*a1)[2];
          v8 = v18 * v59;
          if (v59 >= 1)
          {
            v60 = 0;
            do
            {
              v61 = sub_1D9D4B8E0(v58, v60);
              v8 += (*(*v61 + 72))(v61);
              ++v60;
              v58 = *a1;
            }

            while (v60 < (*a1)[2]);
          }

          break;
        case 11:
          v64 = *a1;
          v65 = (*a1)[2];
          v8 = v18 * v65;
          if (v65 >= 1)
          {
            v66 = 0;
            do
            {
              v67 = sub_1D9D4B8E0(v64, v66);
              v68 = (*(*v67 + 72))(v67);
              v8 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6);
              ++v66;
              v64 = *a1;
            }

            while (v66 < (*a1)[2]);
          }

          break;
        case 12:
          v91 = *a1;
          v92 = (*a1)[2];
          v8 = v18 * v92;
          if (v92 >= 1)
          {
            v93 = 0;
            do
            {
              v94 = sub_1D9D3BE10(v91, v93);
              v95 = *(v94 + 23);
              if ((v95 & 0x80u) != 0)
              {
                v95 = *(v94 + 8);
              }

              v8 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6);
              ++v93;
              v91 = *a1;
            }

            while (v93 < (*a1)[2]);
          }

          break;
        case 13:
          v55 = *a1;
          v56 = **a1;
          v8 = v18 * v56;
          if (v56 >= 1)
          {
            v57 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_1D9D51DB4(v55, v57++) | 1) ^ 0x1F) + 73) >> 6;
              v55 = *a1;
            }

            while (v57 < **a1);
          }

          break;
        case 14:
          v69 = *a1;
          v70 = **a1;
          v8 = v18 * v70;
          if (v70 >= 1)
          {
            v71 = 0;
            do
            {
              v72 = sub_1D9D51788(v69, v71);
              v73 = (9 * (__clz(*v72 | 1) ^ 0x1F) + 73) >> 6;
              if (*v72 >= 0)
              {
                v74 = v73;
              }

              else
              {
                v74 = 10;
              }

              v8 += v74;
              ++v71;
              v69 = *a1;
            }

            while (v71 < **a1);
          }

          break;
        case 17:
          v50 = *a1;
          v51 = **a1;
          v8 = v18 * v51;
          if (v51 >= 1)
          {
            v52 = 0;
            do
            {
              v53 = sub_1D9D51788(v50, v52);
              v8 += (9 * (__clz((2 * *v53) ^ (*v53 >> 31) | 1) ^ 0x1F) + 73) >> 6;
              ++v52;
              v50 = *a1;
            }

            while (v52 < **a1);
          }

          break;
        case 18:
          v81 = *a1;
          v82 = **a1;
          v8 = v18 * v82;
          if (v82 >= 1)
          {
            v83 = 0;
            do
            {
              v84 = sub_1D9D523E0(v81, v83);
              v8 += (9 * (__clz((2 * *v84) ^ (*v84 >> 63) | 1) ^ 0x3F) + 73) >> 6;
              ++v83;
              v81 = *a1;
            }

            while (v83 < **a1);
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (*(a1 + 10))
  {
    return 0;
  }

  else
  {
    v12 = *(a1 + 8);
    if ((v12 - 19) > 0xFFFFFFED)
    {
      v15 = 0;
      v14 = *(a1 + 8);
    }

    else
    {
      sub_1D9D418C4(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v13 = sub_1D9D418DC(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v102, &v13->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v103);
      v14 = *(a1 + 8);
      v15 = (v14 - 19) < 0xFFFFFFEE;
    }

    v20 = v12 == 10;
    if (v15)
    {
      sub_1D9D418C4(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v21 = sub_1D9D418DC(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v102, &v21->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v103);
    }

    v8 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v20;
    switch(v14)
    {
      case 1:
      case 6:
      case 16:
        v8 += 8;
        return v8;
      case 2:
      case 7:
      case 15:
        v8 += 4;
        return v8;
      case 3:
      case 4:
        v23 = *a1;
        goto LABEL_116;
      case 5:
      case 14:
        v24 = (9 * (__clz(*a1 | 1) ^ 0x1F) + 73) >> 6;
        if (*a1 >= 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 10;
        }

        v8 += v25;
        return v8;
      case 8:
        return ++v8;
      case 9:
      case 12:
        v26 = *(*a1 + 1);
        if (*(*a1 + 23) >= 0)
        {
          v26 = *(*a1 + 23);
        }

        v8 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 10:
        v8 += (*(**a1 + 72))();
        return v8;
      case 11:
        v62 = **a1;
        if ((*(a1 + 10) & 0x10) != 0)
        {
          v63 = (*(v62 + 88))();
        }

        else
        {
          v63 = (*(v62 + 72))();
        }

        v8 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 13:
        v54 = *a1;
        goto LABEL_103;
      case 17:
        v54 = (2 * *a1) ^ (*a1 >> 31);
LABEL_103:
        v8 += (9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6;
        break;
      case 18:
        v23 = (2 * *a1) ^ (*a1 >> 63);
LABEL_116:
        v8 += (9 * (__clz(v23 | 1) ^ 0x3F) + 73) >> 6;
        break;
      default:
        return v8;
    }
  }

  return v8;
}

void sub_1D9D4B500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1D9D4B540(unsigned __int8 *result)
{
  v1 = result;
  v2 = result[8];
  v3 = v2 - 19;
  if (result[9] != 1)
  {
    if (v3 <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v7 = sub_1D9D418DC(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v12, &v7->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v13);
    }

    v8 = dword_1D9DDD9F0[v2];
    if (v8 == 10)
    {
      result = *v1;
      if ((v1[10] & 0x10) != 0)
      {
        if (!result)
        {
          return result;
        }
      }

      else if (!result)
      {
        return result;
      }

      return (*(*result + 8))(result);
    }

    if (v8 == 9)
    {
      v9 = *v1;
      if (v9)
      {
        if (v9[23] < 0)
        {
          operator delete(*v9);
        }

        v10 = 0x1012C40EC159624;
        v6 = v9;
        return MEMORY[0x1DA741280](v6, v10);
      }
    }

    return result;
  }

  if (v3 <= 0xFFFFFFED)
  {
    sub_1D9D418C4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v4 = sub_1D9D418DC(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_1D9D41A18(&v12, &v4->__r_.__value_.__l.__data_);
    result = sub_1D9D41A20(v13);
  }

  v5 = dword_1D9DDD9F0[v2];
  if (v5 > 5)
  {
    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        result = *v1;
        if (!*v1)
        {
          return result;
        }

        v6 = sub_1D9D53160();
      }

      else
      {
        result = *v1;
        if (!*v1)
        {
          return result;
        }

        v6 = sub_1D9D51288();
      }

      goto LABEL_44;
    }

    if (v5 != 8)
    {
      if (v5 == 9)
      {
        result = *v1;
        if (!*v1)
        {
          return result;
        }

        v6 = sub_1D9D53A24();
      }

      else
      {
        if (v5 != 10)
        {
          return result;
        }

        v11 = *v1;
        if (!v11)
        {
          return result;
        }

        sub_1D9D4C1E0(v11);
        v6 = sub_1D9D34660(v11);
      }

      v10 = 0x1020C4014030ADELL;
      return MEMORY[0x1DA741280](v6, v10);
    }

LABEL_34:
    result = *v1;
    if (!*v1)
    {
      return result;
    }

    v6 = sub_1D9D518B0();
    goto LABEL_44;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_1D9D51EDC();
    }

    else if (v5 == 4)
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_1D9D52B34();
    }

    else
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_1D9D5378C();
    }

    goto LABEL_44;
  }

  if (v5 == 1)
  {
    goto LABEL_34;
  }

  if (v5 == 2)
  {
    result = *v1;
    if (*v1)
    {
      v6 = sub_1D9D52508();
LABEL_44:
      v10 = 0x1080C4057E67DB5;
      return MEMORY[0x1DA741280](v6, v10);
    }
  }

  return result;
}

void sub_1D9D4B7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1D9D4B818(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_1D9D4B540(v3 + 40);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *sub_1D9D4B8A8(uint64_t *a1)
{
  sub_1D9D4C1E0(a1);

  return sub_1D9D34660(a1);
}

uint64_t sub_1D9D4B8E0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1D9D4B9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D4B9C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return sub_1D9D4BA14(result, a2);
  }

  v3 = *v2;
  if (v3 >= *(result + 12))
  {
    return sub_1D9D4BA14(result, a2);
  }

  v4 = v2 + 2;
  v5 = *(result + 8);
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  *(result + 8) = v5 + 1;
  ++**(result + 16);
  return result;
}

uint64_t sub_1D9D4BA14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
    v5 = *(result + 12);
    goto LABEL_11;
  }

  v5 = *(result + 8);
  v6 = *(result + 12);
  if (v5 == v6)
  {
LABEL_11:
    result = sub_1D9D53A28(result, v5 + 1);
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v9 = v7 + 1;
      goto LABEL_13;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_12:
    v4 = *(v3 + 16);
    v9 = *v4 + 1;
LABEL_13:
    *v4 = v9;
    goto LABEL_14;
  }

  result = *&v4[2 * v5 + 2];
  if (result)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    result = (*(*result + 8))(result);
    v4 = *(v3 + 16);
  }

LABEL_14:
  v10 = *(v3 + 8);
  *(v3 + 8) = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return result;
}

unsigned __int8 *sub_1D9D4BAF4(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_1D9D41FB4(v3 + 40);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *sub_1D9D4BB64(void *a1, void *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_1D9D45C94(a3, *(v5 + 8), v5 + 5);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

_OWORD *sub_1D9D4BBE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v6 = a3;
    MEMORY[0x1DA740EE0](a4, a2, a3);
    return (a2 + v6);
  }

  else
  {

    return sub_1D9DD99C8();
  }
}

char *sub_1D9D4BC54(uint64_t a1, char *a2, __int128 *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      goto LABEL_20;
    }

    v5 = v7;
  }

  else
  {
    result = a2 + 1;
  }

  v8 = *(a1 + 8);
  v9 = v8 - result;
  if (v5 <= v8 - result)
  {
LABEL_15:
    v15 = &result[v5];
    v16 = a3[1];
    v19 = *a3;
    v20 = v16;
    v21 = *(a3 + 4);
    result = sub_1D9D4BEA4(result, v15, &v19);
    if (v15 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      v10 = a3[1];
      v19 = *a3;
      v20 = v10;
      v21 = *(a3 + 4);
      result = sub_1D9D4BEA4(result, v8, &v19);
      if (!result)
      {
        break;
      }

      v11 = result - *(a1 + 8);
      if (v11 >= 0x11)
      {
        sub_1D9D418C4(&v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v12 = sub_1D9D418DC(&v19, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1D9D41A18(&v22, &v12->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v19);
      }

      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        v24 = 0;
        v23 = 0;
        v22 = **(a1 + 8);
        v17 = a3[1];
        v19 = *a3;
        v20 = v17;
        v21 = *(a3 + 4);
        if (sub_1D9D4BEA4(&v22 + v11, &v22 + v13, &v19) != &v22 + v13)
        {
LABEL_19:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v13);
        break;
      }

      v5 = v5 - v9 - v11;
      if (v5 <= 0)
      {
        sub_1D9D418C4(&v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v14 = sub_1D9D418DC(&v19, "CHECK failed: (size) > (0): ");
        sub_1D9D41A18(&v22, &v14->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v19);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_19;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        break;
      }

      result += v11;
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_20:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1D9D4BEA4(char *a1, unint64_t a2, unsigned int **a3)
{
  v3 = a1;
  while (v3 < a2)
  {
    v6 = *v3;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v3[1] << 7) + v6;
      v6 = (v7 - 128);
      if (v3[1] < 0)
      {
        v3 = sub_1D9D4E718(v3, (v7 - 128));
        if (!v3)
        {
          return v3;
        }

        v6 = v8;
      }

      else
      {
        v3 += 2;
      }
    }

    else
    {
      ++v3;
    }

    if ((a3[1])(a3[2], v6))
    {
      v9 = *a3;
      v10 = **a3;
      if (v10 == (*a3)[1])
      {
        v11 = v10 + 1;
        sub_1D9D51444(*a3, v10 + 1);
        *(sub_1D9D518B4(v9) + 4 * v10) = v6;
      }

      else
      {
        *(sub_1D9D518B4(*a3) + 4 * v10) = v6;
        v11 = v10 + 1;
      }

      *v9 = v11;
    }

    else
    {
      v12 = *(a3 + 8);
      v13 = a3[3];
      if (*v13)
      {
        v14 = ((*v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v14 = sub_1D9D34364(v13);
      }

      sub_1D9D4E600(v12, v6, v14);
    }
  }

  return v3;
}

char *sub_1D9D4BFD0(uint64_t a1, char *__src, int64_t __n)
{
  *(a1 + 84) = 0;
  if (__n >= 17)
  {
    *(a1 + 28) = 16;
    v6 = &__src[__n - 16];
    *a1 = v6;
    *(a1 + 8) = v6;
    *(a1 + 16) = a1 + 40;
    if (*(a1 + 72) != 1)
    {
      return __src;
    }

    v7 = 2;
    v8 = __src;
    goto LABEL_6;
  }

  v8 = (a1 + 40);
  memcpy((a1 + 40), __src, __n);
  *(a1 + 28) = 0;
  *a1 = &v8[__n];
  *(a1 + 8) = &v8[__n];
  *(a1 + 16) = 0;
  if (*(a1 + 72) == 1)
  {
    v7 = __src - v8;
LABEL_6:
    *(a1 + 72) = v7;
  }

  return v8;
}

void *sub_1D9D4C084(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += sub_1D9D4A900(v5 + 5, *(v5 + 8));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_1D9D4C110(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_1D9D418C4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_1D9D418DC(v7, "CHECK failed: (n) >= (0): ");
    sub_1D9D41A18(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_1D9D41A20(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      v4 = *v3++;
      result = (*(*v4 + 40))(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_1D9D4C1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D4C1E0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_1D9D4C26C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1D9D4C340(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1D9D4C3D8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1D9D4C3D8(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

uint64_t *sub_1D9D4C580(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t sub_1D9D4C910(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    sub_1D9D12C38(a2, *(a2 + 8));

    JUMPOUT(0x1DA741280);
  }

  return result;
}

void sub_1D9D4CE14(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1D9D4CE28()
{
  if ((atomic_load_explicit(&qword_1ECB71B88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECB71B88))
  {
    qword_1ECB71FE0 = 0;
    *algn_1ECB71FE8 = 0;
    qword_1ECB71FF0 = 0;
    sub_1D9D4D92C(sub_1D9D4CE14, &qword_1ECB71FE0);
    atomic_store(1u, byte_1ECB71C38);

    __cxa_guard_release(&qword_1ECB71B88);
  }
}

uint64_t sub_1D9D4CED4(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  (*(*v4 + 64))(v4, a1);
  (*(*a1 + 40))(a1);
  (*(*a1 + 64))(a1, a2);
  (*(*a2 + 40))(a2);
  (*(*a2 + 64))(a2, v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void sub_1D9D4D060(_DWORD *a1)
{
  if ((atomic_load_explicit(&qword_1ECB71B90, memory_order_acquire) & 1) == 0)
  {
    sub_1D9D4D23C();
  }

  v2 = pthread_self();
  if (qword_1ECB71BD0 == v2)
  {
    if (*a1 != 1)
    {
      sub_1D9D418C4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 785);
      v3 = sub_1D9D418DC(v5, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      sub_1D9D41A18(&v4, &v3->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v5);
    }
  }

  else
  {
    if ((atomic_load_explicit(byte_1ECB71C38, memory_order_acquire) & 1) == 0)
    {
      sub_1D9D4CE28();
    }

    std::mutex::lock(&stru_1ECB717C8);
    qword_1ECB71BD0 = v2;
    sub_1D9D4D184(a1);
    qword_1ECB71BD0 = 0;

    std::mutex::unlock(&stru_1ECB717C8);
  }
}

void sub_1D9D4D168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_1D9D4D184(_DWORD *result)
{
  if (*result == -1)
  {
    v1 = result;
    *result = 1;
    v2 = result + 6;
    v3 = result[1];
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        if (*&v2[2 * i])
        {
          sub_1D9D4D184();
          v3 = *(v1 + 1);
        }
      }
    }

    v5 = v3;
    v6 = *(v1 + 2);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = &v2[2 * v5];
      do
      {
        if (**&v8[2 * v7])
        {
          sub_1D9D4D184();
          v6 = *(v1 + 2);
        }

        ++v7;
      }

      while (v7 < v6);
    }

    result = v1[2]();
    atomic_store(0, v1);
  }

  return result;
}

void sub_1D9D4D23C()
{
  if (__cxa_guard_acquire(&qword_1ECB71B90))
  {
    __cxa_atexit(std::mutex::~mutex, &unk_1ECB717C8, &dword_1D9D0A000);

    __cxa_guard_release(&qword_1ECB71B90);
  }
}

uint64_t sub_1D9D4D310(uint64_t a1)
{
  sub_1D9D418C4(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 133);
  sub_1D9D4D3C4("parse", a1, &__p);
  v2 = sub_1D9D41908(v6, &__p);
  sub_1D9D41A18(&v4, &v2->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return sub_1D9D41A20(v6);
}

void sub_1D9D4D394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D41A20(&a16);
  _Unwind_Resume(a1);
}

void sub_1D9D4D3C4(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a3, "Can't ");
  std::string::append(a3, a1);
  std::string::append(a3, " message of type ");
  (*(*a2 + 16))(&__p, a2);
  if ((v12 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v11;
  }

  std::string::append(a3, p_p, v7);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a3, " because it is missing required fields: ");
  (*(*a2 + 56))(&__p, a2);
  if ((v12 & 0x80u) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v11;
  }

  std::string::append(a3, v8, v9);
  if (v12 < 0)
  {
    operator delete(__p);
  }
}

void sub_1D9D4D500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D4D540(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    sub_1D9D4DCFC();
  }

  sub_1D9D4DC9C(a3, a2, a1);
  return v4;
}

BOOL sub_1D9D4D57C(uint64_t a1, std::string *a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    sub_1D9D418C4(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 449);
    v4 = sub_1D9D418DC(v9, "CHECK failed: IsInitialized(): ");
    sub_1D9D4D3C4("serialize", a1, &__p);
    v5 = sub_1D9D41908(v4, &__p);
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_1D9D41A20(v9);
  }

  return sub_1D9D4D688(a1, a2);
}

void sub_1D9D4D654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D41A20(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_1D9D4D688(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 72))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    sub_1D9D418C4(v17, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v10 = sub_1D9D41908(v17, __p);
    v11 = sub_1D9D418DC(v10, " exceeded maximum protobuf size of 2GB: ");
    v12 = sub_1D9D41B54(v11, v6);
    sub_1D9D41A18(&v15, &v12->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v9 = v17;
    goto LABEL_11;
  }

  std::string::resize(v2, v5 + size, 0);
  if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v2->__r_.__value_.__r.__words[0];
  }

  *&v17[0].__r_.__value_.__l.__data_ = v2 + size + v6;
  v18 = 0;
  v19 = 0;
  v20 = byte_1ECB71FDC & 1;
  if (v17[0].__r_.__value_.__r.__words[0] != (*(*a1 + 96))(a1))
  {
    sub_1D9D418C4(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v8 = sub_1D9D418DC(__p, "CHECK failed: target + size == res: ");
    sub_1D9D41A18(&v15, &v8->__r_.__value_.__l.__data_);
    v9 = __p;
LABEL_11:
    sub_1D9D41A20(v9);
  }

  result = v7 == 0;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1D9D4D8BC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_1D9D4D57C(a1, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_1D9D4D910(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D4D92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9D4DA38();
  std::mutex::lock((v4 + 24));
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_1D9D84AB0();
    }

    v10 = v5 - *v4;
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
      sub_1D9D4DBD8(v4, v11);
    }

    v12 = (16 * v8);
    *v12 = a1;
    v12[1] = a2;
    v7 = 16 * v8 + 16;
    v13 = *(v4 + 8) - *v4;
    v14 = (16 * v8 - v13);
    memcpy(v14, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = a1;
    v6[1] = a2;
    v7 = (v6 + 2);
  }

  *(v4 + 8) = v7;

  std::mutex::unlock((v4 + 24));
}

uint64_t sub_1D9D4DA38()
{
  if ((atomic_load_explicit(&qword_1ECB71848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECB71848))
  {
    operator new();
  }

  return qword_1ECB717C0;
}

void sub_1D9D4DAE0()
{
  if ((byte_1ECB71BD8 & 1) == 0)
  {
    v0 = sub_1D9D4DA38();
    if (v0)
    {
      v1 = sub_1D9D4DB30(v0);
      MEMORY[0x1DA741280](v1, 0x1020C40A0054943);
    }

    byte_1ECB71BD8 = 1;
  }
}

uint64_t sub_1D9D4DB30(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - 2;
  if (*a1 != v3 && v4 > v2)
  {
    do
    {
      v6 = *v2;
      *v2 = *v4;
      *v4 = v6;
      v7 = v2[1];
      v2[1] = v4[1];
      v4[1] = v7;
      v2 += 2;
      v4 -= 2;
    }

    while (v2 < v4);
    v2 = *a1;
    v3 = *(a1 + 8);
  }

  while (v2 != v3)
  {
    (*v2)(v2[1]);
    v2 += 2;
  }

  std::mutex::~mutex((a1 + 24));
  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_1D9D4DBD8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1D9D10E9C();
}

uint64_t sub_1D9D4DC9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1D9D4DC80(a1, a2, a3);
  (*(v4 + 40))(v5);
  result = sub_1D9DD98D8();
  *v3 = result;
  return result;
}

_OWORD *sub_1D9D4DD28(uint64_t a1)
{
  if (*(a1 + 28) <= 16)
  {
    sub_1D9D418C4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 158);
    v2 = sub_1D9D418DC(v7, "CHECK failed: limit_ > kSlopBytes: ");
    sub_1D9D41A18(&v6, &v2->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v7);
  }

  result = sub_1D9D4DDF0(a1, 0, -1);
  v4 = *(a1 + 8);
  if (result)
  {
    v5 = *(a1 + 28) + result - v4;
    *(a1 + 28) = v5;
    v4 += v5 & (v5 >> 31);
  }

  else
  {
    *(a1 + 80) = 1;
  }

  *a1 = v4;
  return result;
}

void sub_1D9D4DDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1D9D4DDF0(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = (a1 + 40);
  if (v3 != a1 + 40)
  {
    v6 = *(a1 + 24);
    if (v6 <= 16)
    {
      sub_1D9D418C4(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 105);
      v7 = sub_1D9D418DC(v34, "CHECK failed: size_ > kSlopBytes: ");
      sub_1D9D41A18(&__src, &v7->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v34);
      v3 = *(a1 + 16);
      v6 = *(a1 + 24);
    }

    *(a1 + 8) = v3 + v6 - 16;
    *(a1 + 16) = v5;
    if (*(a1 + 72) == 1)
    {
      *(a1 + 72) = 2;
    }

    return v3;
  }

  *v5 = **(a1 + 8);
  if (*(a1 + 84) < 1)
  {
    goto LABEL_23;
  }

  v8 = a3;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_1D9D418C4(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 53);
    v11 = sub_1D9D418DC(v34, "CHECK failed: overrun >= 0: ");
    sub_1D9D41A18(&__src, &v11->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v34);
LABEL_27:
    v16 = a1 + 56;
    v17 = v5 + a2;
    v18 = v17;
    while (1)
    {
      v19 = *v18++;
      v20 = v19;
      if (v19 < 0)
      {
        v20 = v20 + (*v18 << 7) - 128;
        if (*v18 < 0)
        {
          v18 = v17 + 3;
          v25 = -21;
          while (1)
          {
            v20 += (*(v18 - 1) - 1) << (v25 + 35);
            if ((*(v18 - 1) & 0x80000000) == 0)
            {
              break;
            }

            ++v18;
            v25 += 7;
            if (!v25)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v18 = v17 + 2;
        }
      }

      if (v18 > v16)
      {
        goto LABEL_16;
      }

      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = v20 & 7;
      if (v21 > 2)
      {
        switch(v21)
        {
          case 3:
            ++v8;
            break;
          case 4:
            v24 = __OFSUB__(v8--, 1);
            if (v8 < 0 != v24)
            {
              goto LABEL_23;
            }

            break;
          case 5:
            v18 += 4;
            break;
          default:
            goto LABEL_16;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          v18 += 8;
        }

        else
        {
          v22 = *v18;
          if (*v18 < 0)
          {
            v23 = sub_1D9DD9CE8(v18, v22);
            if (!v23)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v23 = (v18 + 1);
          }

          if ((v16 - v23) < v22)
          {
            goto LABEL_16;
          }

          v18 = (v23 + v22);
        }
      }

      else
      {
        v34[0].__r_.__value_.__r.__words[0] = 0;
        v18 = sub_1D9D4EDF0(v18, v34);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      v17 = v18;
      if (v18 >= v16)
      {
        goto LABEL_16;
      }
    }
  }

  if (a2 >= 0x11)
  {
    sub_1D9D418C4(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 54);
    v10 = sub_1D9D418DC(v34, "CHECK failed: overrun <= kSlopBytes: ");
    sub_1D9D41A18(&__src, &v10->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v34);
    goto LABEL_16;
  }

  if (a2 != 16)
  {
    goto LABEL_27;
  }

LABEL_16:
  __src = 0;
  if (!(*(**(a1 + 32) + 16))(*(a1 + 32), &__src, a1 + 24))
  {
LABEL_22:
    *(a1 + 84) = 0;
LABEL_23:
    if (*(a1 + 72) == 2)
    {
      *(a1 + 72) = *(a1 + 8) - v3;
    }

    *(a1 + 8) = a1 + 56;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    return v5;
  }

  while (1)
  {
    v12 = *(a1 + 24);
    *(a1 + 84) -= v12;
    if (v12 >= 17)
    {
      v28 = *(a1 + 72);
      v27 = (a1 + 72);
      v26 = v28;
      v29 = (v27 - 2);
      v30 = __src;
      *(v27 - 1) = *__src;
      *(v27 - 7) = v30;
      goto LABEL_59;
    }

    if (v12 >= 1)
    {
      break;
    }

    if (v12)
    {
      sub_1D9D418C4(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 137);
      v13 = sub_1D9D418DC(v34, "CHECK failed: size_ == 0: ");
      v14 = sub_1D9D41AD4(v13, *(a1 + 24));
      sub_1D9D41A18(&v32, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v34);
    }

    if (((*(**(a1 + 32) + 16))(*(a1 + 32), &__src, a1 + 24) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  memcpy((a1 + 56), __src, v12);
  v31 = *(a1 + 72);
  v27 = (a1 + 72);
  v26 = v31;
  v29 = v5 + v12;
  *(v27 - 7) = v5;
LABEL_59:
  *(v27 - 8) = v29;
  if (v26 > 1)
  {
    *v27 = 1;
  }

  return v5;
}

void sub_1D9D4E1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D4E21C(uint64_t a1, signed int a2, int a3)
{
  v3 = *(a1 + 28);
  if (v3 < a2)
  {
    return 0;
  }

  v5 = a2;
  if (v3 == a2)
  {
    sub_1D9D418C4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 175);
    v7 = sub_1D9D418DC(v19, "CHECK failed: overrun != limit_: ");
    sub_1D9D41A18(&v18, &v7->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= v5)
  {
    sub_1D9D418C4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 176);
    v8 = sub_1D9D418DC(v19, "CHECK failed: overrun < limit_: ");
    sub_1D9D41A18(&v18, &v8->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v19);
    v3 = *(a1 + 28);
  }

  if (*a1 != *(a1 + 8) + (v3 & (v3 >> 31)))
  {
    sub_1D9D418C4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 181);
    v9 = sub_1D9D418DC(v19, "CHECK failed: limit_end_ == buffer_end_ + (std::min)(0, limit_): ");
    sub_1D9D41A18(&v18, &v9->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= 0)
  {
    sub_1D9D418C4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 183);
    v10 = sub_1D9D418DC(v19, "CHECK failed: limit_ > 0: ");
    sub_1D9D41A18(&v18, &v10->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v19);
  }

  if (*a1 != *(a1 + 8))
  {
    sub_1D9D418C4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 184);
    v11 = sub_1D9D418DC(v19, "CHECK failed: limit_end_ == buffer_end_: ");
    sub_1D9D41A18(&v18, &v11->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v19);
  }

  while (1)
  {
    if (v5 < 0)
    {
      sub_1D9D418C4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 188);
      v12 = sub_1D9D418DC(v19, "CHECK failed: overrun >= 0: ");
      sub_1D9D41A18(&v18, &v12->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v19);
    }

    v13 = sub_1D9D4DDF0(a1, v5, a3);
    if (!v13)
    {
      break;
    }

    v14 = *(a1 + 8);
    v15 = *(a1 + 28) + v13 - v14;
    *(a1 + 28) = v15;
    result = v13 + v5;
    v5 = result - v14;
    if (result - v14 < 0)
    {
      *a1 = v14 + (v15 & (v15 >> 31));
      return result;
    }
  }

  if (v5)
  {
    return 0;
  }

  if (*(a1 + 28) <= 0)
  {
    sub_1D9D418C4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 193);
    v17 = sub_1D9D418DC(v19, "CHECK failed: limit_ > 0: ");
    sub_1D9D41A18(&v18, &v17->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v19);
  }

  result = *(a1 + 8);
  *a1 = result;
  *(a1 + 80) = 1;
  return result;
}

void sub_1D9D4E4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1D9D4E514(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 8) - a2 + 16;
  while (1)
  {
    v6 = __OFSUB__(a3, v5);
    a3 -= v5;
    if ((a3 < 0) ^ v6 | (a3 == 0))
    {
      sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 323);
      v7 = sub_1D9D418DC(v10, "CHECK failed: size > chunk_size: ");
      sub_1D9D41A18(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v10);
    }

    if (!*(a1 + 16) || *(a1 + 28) < 17)
    {
      break;
    }

    result = sub_1D9D4DD28(a1);
    if (!result)
    {
      return result;
    }

    v5 = *(a1 + 8) - result;
    if (a3 <= v5)
    {
      return (result + a3 + 16);
    }
  }

  return 0;
}

void sub_1D9D4E5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D4E600(int a1, unint64_t a2, std::string *this)
{
  v5 = (8 * a1);
  if (v5 < 0x80)
  {
    LOBYTE(v6) = 8 * a1;
  }

  else
  {
    do
    {
      std::string::push_back(this, v5 | 0x80);
      v6 = v5 >> 7;
      v7 = v5 >> 14;
      v5 >>= 7;
    }

    while (v7);
  }

  std::string::push_back(this, v6);
  if (a2 < 0x80)
  {
    LOBYTE(v8) = a2;
  }

  else
  {
    do
    {
      std::string::push_back(this, a2 | 0x80);
      v8 = a2 >> 7;
      v9 = a2 >> 14;
      a2 >>= 7;
    }

    while (v9);
  }

  std::string::push_back(this, v8);
}

uint64_t sub_1D9D4E6AC(uint64_t a1, int a2)
{
  result = a1 + 3;
  v4 = -21;
  while (1)
  {
    a2 += (*(result - 1) - 1) << (v4 + 35);
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = a1 + 6;
      v6 = 5;
      result = 0;
      while (*(v5 - 1) < 0)
      {
        ++v5;
        if (!--v6)
        {
          return result;
        }
      }

      return v5;
    }
  }

  return result;
}

uint64_t sub_1D9D4E718(uint64_t a1, uint64_t a2)
{
  a2 = a2;
  result = a1 + 3;
  v4 = (a1 + 2);
  v5 = 14;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << v5;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (v5 == 70)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9D4E760(uint64_t a1, int a2)
{
  result = a1 + 3;
  v4 = (a1 + 2);
  v5 = -21;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << (v5 + 35);
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

_OWORD *sub_1D9D4E7A4(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = (a2 + 1);
  }

  return sub_1D9D4BBE8(a3, v6, v5, a1);
}

char *sub_1D9D4E890(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_1D9D50230(a3, v6, v5, a1);
}

char *sub_1D9D4E90C(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_1D9D50338(a3, v6, v5, a1);
}

char *sub_1D9D4E988(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_1D9D50440(a3, v6, v5, a1);
}

char *sub_1D9D4EA04(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_1D9D50548(a3, v6, v5, a1);
}

char *sub_1D9D4EA80(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_1D9D50650(a3, v6, v5, a1);
}

char *sub_1D9D4EAFC(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_1D9D50758(a3, v6, v5, a1);
}

char *sub_1D9D4EB74(uint64_t a1, char *a2, uint64_t a3)
{
  v10 = a2;
  while (1)
  {
    if (sub_1D9D34224(a3, &v10, *(a3 + 92)))
    {
      return v10;
    }

    v5 = v10 + 1;
    v6 = *v10;
    if (*v10 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v5 = v10 + 3;
        v8 = -21;
        while (1)
        {
          v6 += (*(v5 - 1) - 1) << (v8 + 35);
          if ((*(v5 - 1) & 0x80000000) == 0)
          {
            break;
          }

          ++v5;
          v8 += 7;
          if (!v8)
          {
            return 0;
          }
        }
      }

      else
      {
        v5 = v10 + 2;
      }
    }

    v10 = v5;
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = sub_1D9D4EC8C(v6, a1);
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v5;
}

char *sub_1D9D4EC8C(unint64_t a1, std::string *a2, int *a3, int32x2_t *a4)
{
  v4 = a1 >> 3;
  if (!(a1 >> 3))
  {
    return 0;
  }

  v5 = a3;
  v7 = a1;
  result = 0;
  v9 = v7 & 7;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        sub_1D9D418C4(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 758);
        v10 = sub_1D9D418DC(v12, "Can't happen");
        sub_1D9D41A18(&v11, &v10->__r_.__value_.__l.__data_);
        sub_1D9D41A20(v12);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = a3 + 1;
        sub_1D9D50C94(a2, v4, *a3);
      }

      return v5;
    }

    result = sub_1D9D50B68(a2, v4, a3, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = sub_1D9D4EDF0(a3, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_1D9D50860(a2, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = a3 + 2;
    sub_1D9D50928(a2, v4, *a3);
    return v5;
  }

  result = sub_1D9D509E8(a2, v4, a3, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_1D9D4EDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D4EDF0(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      result = a1 + 3;
      v5 = 14;
      while (1)
      {
        v4 += (*(result - 1) - 1) << v5;
        if ((*(result - 1) & 0x80000000) == 0)
        {
          break;
        }

        ++result;
        v5 += 7;
        if (v5 == 70)
        {
          result = 0;
          v4 = 0;
          break;
        }
      }

      *a2 = v4;
    }

    else
    {
      *a2 = v4;
      return a1 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a1 + 1;
  }

  return result;
}

char *sub_1D9D4EE60(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_1D9D4F080(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1D9D4F080(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1D9D418DC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1D9D41A18(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1D9D4F080(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1D9D418DC(&v17, "CHECK failed: (size) > (0): ");
        sub_1D9D41A18(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D4F058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D4F080(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1D9D4EDF0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1D9D51444(a3, v7 + 1);
      *(sub_1D9D518B4(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_1D9D518B4(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1D9D4F130(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_1D9D4F350(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1D9D4F350(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1D9D418DC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1D9D41A18(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1D9D4F350(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1D9D418DC(&v17, "CHECK failed: (size) > (0): ");
        sub_1D9D41A18(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D4F328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D4F350(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1D9D4EDF0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1D9D51A70(a3, v7 + 1);
      *(sub_1D9D51EE0(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_1D9D51EE0(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1D9D4F400(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_1D9D4F620(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1D9D4F620(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1D9D418DC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1D9D41A18(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1D9D4F620(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1D9D418DC(&v17, "CHECK failed: (size) > (0): ");
        sub_1D9D41A18(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D4F5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D4F620(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1D9D4EDF0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1D9D5209C(a3, v7 + 1);
      *(sub_1D9D5250C(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_1D9D5250C(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1D9D4F6D0(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_1D9D4F8F0(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1D9D4F8F0(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1D9D418DC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1D9D41A18(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1D9D4F8F0(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1D9D418DC(&v17, "CHECK failed: (size) > (0): ");
        sub_1D9D41A18(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D4F8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D4F8F0(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1D9D4EDF0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1D9D526C8(a3, v7 + 1);
      *(sub_1D9D52B38(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_1D9D52B38(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1D9D4F9A0(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_1D9D4FBC0(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1D9D4FBC0(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1D9D418DC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1D9D41A18(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1D9D4FBC0(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1D9D418DC(&v17, "CHECK failed: (size) > (0): ");
        sub_1D9D41A18(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D4FB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D4FBC0(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1D9D4EDF0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1D9D51444(a3, v7 + 1);
      *(sub_1D9D518B4(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_1D9D518B4(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1D9D4FC7C(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_1D9D4FE9C(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1D9D4FE9C(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1D9D418DC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1D9D41A18(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1D9D4FE9C(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1D9D418DC(&v17, "CHECK failed: (size) > (0): ");
        sub_1D9D41A18(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D4FE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D4FE9C(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1D9D4EDF0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1D9D5209C(a3, v7 + 1);
      *(sub_1D9D5250C(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_1D9D5250C(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1D9D4FF58(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1D9DD9CE8(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_1D9D50178(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1D9D50178(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1D9D418DC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1D9D41A18(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1D9D50178(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1D9D418C4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1D9D418DC(&v17, "CHECK failed: (size) > (0): ");
        sub_1D9D41A18(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D50150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D50178(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1D9D4EDF0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10 != 0;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1D9D50E20(a3, v7 + 1);
      *(sub_1D9D5128C(a3) + v7) = v6;
    }

    else
    {
      *(sub_1D9D5128C(a3) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1D9D50230(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1D9D51A70(a4, *a4 + (v5 >> 2));
    v11 = sub_1D9D51C14(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_1D9D51A70(a4, *a4 + (v7 >> 2));
      v9 = sub_1D9D51C14(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = &result[-(v7 & 3) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_1D9D50338(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1D9D51444(a4, *a4 + (v5 >> 2));
    v11 = sub_1D9D515E8(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_1D9D51444(a4, *a4 + (v7 >> 2));
      v9 = sub_1D9D515E8(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = &result[-(v7 & 3) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_1D9D50440(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1D9D526C8(a4, *a4 + (v5 >> 3));
    v11 = sub_1D9D5286C(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_1D9D526C8(a4, *a4 + (v7 >> 3));
      v9 = sub_1D9D5286C(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = &result[-(v7 & 7) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_1D9D50548(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1D9D5209C(a4, *a4 + (v5 >> 3));
    v11 = sub_1D9D52240(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_1D9D5209C(a4, *a4 + (v7 >> 3));
      v9 = sub_1D9D52240(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = &result[-(v7 & 7) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_1D9D50650(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1D9D52CF4(a4, *a4 + (v5 >> 2));
    v11 = sub_1D9D52E98(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_1D9D52CF4(a4, *a4 + (v7 >> 2));
      v9 = sub_1D9D52E98(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = &result[-(v7 & 3) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_1D9D50758(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1D9D53320(a4, *a4 + (v5 >> 3));
    v11 = sub_1D9D534C4(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_1D9D53320(a4, *a4 + (v7 >> 3));
      v9 = sub_1D9D534C4(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1D9D4DD28(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = &result[-(v7 & 7) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_1D9D50860(std::string **a1, int a2, unint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    v6 = (8 * a2);
    if (v6 < 0x80)
    {
      LOBYTE(v7) = 8 * a2;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v9 = *a1;
    if (a3 < 0x80)
    {
      LOBYTE(v10) = a3;
    }

    else
    {
      do
      {
        std::string::push_back(v9, a3 | 0x80);
        v10 = a3 >> 7;
        v11 = a3 >> 14;
        a3 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v9, v10);
  }
}

std::string *sub_1D9D50928(std::string *result, int a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
    v6 = (8 * a2) | 1u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 1;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v10[0] = a3;
    result = std::string::append(*v5, v10, 8uLL);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

std::string::value_type *sub_1D9D509E8(std::string **a1, int a2, char *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3 < 0)
  {
    result = sub_1D9DD9CE8(a3, *a3);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v19;
  }

  else
  {
    v8 = a3 + 1;
  }

  v9 = *a1;
  if (*a1)
  {
    v10 = (8 * a2) | 2u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 2;
    }

    else
    {
      do
      {
        std::string::push_back(v9, v10 | 0x80);
        v11 = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }

    std::string::push_back(v9, v11);
    v14 = v7;
    v15 = *a1;
    if (v7 < 0x80)
    {
      LOBYTE(v16) = v7;
    }

    else
    {
      do
      {
        std::string::push_back(v15, v14 | 0x80);
        v16 = v14 >> 7;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
    }

    std::string::push_back(v15, v16);
    v18 = *a1;

    return sub_1D9D50D28(a4, v8, v7, v18);
  }

  else if (*(a4 + 8) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return sub_1D9D4E514(a4, v8, v7);
  }
}

char *sub_1D9D50B68(std::string **a1, int a2, char *a3, int32x2_t *a4)
{
  v7 = *a1;
  v8 = 8 * a2;
  if (*a1)
  {
    v9 = v8 | 3;
    if (v8 < 0x80)
    {
      LOBYTE(v10) = v8 | 3;
    }

    else
    {
      do
      {
        std::string::push_back(v7, v9 | 0x80);
        v10 = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v7, v10);
  }

  v12 = a4[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a4[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  ++a4[11].i32[1];
  v14 = sub_1D9D4EB74(a1, a3, a4);
  a4[11] = vadd_s32(a4[11], 0xFFFFFFFF00000001);
  v15 = a4[10].i32[0];
  a4[10].i32[0] = 0;
  if (v15 != (v8 | 3) || v14 == 0)
  {
    return 0;
  }

  v17 = v14;
  v18 = *a1;
  if (v18)
  {
    v19 = v8 | 4;
    if (v8 < 0x80)
    {
      LOBYTE(v20) = v8 | 4;
    }

    else
    {
      do
      {
        std::string::push_back(v18, v19 | 0x80);
        v20 = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }

    std::string::push_back(v18, v20);
  }

  return v17;
}

std::string *sub_1D9D50C94(std::string *result, int a2, int a3)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
    v6 = (8 * a2) | 5u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 5;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    *__s = a3;
    return std::string::append(*v5, __s, 4uLL);
  }

  return result;
}

std::string::value_type *sub_1D9D50D28(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return sub_1D9DD9AF4();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void sub_1D9D50D94(uint64_t a1@<X8>)
{
  if (v1 >= 50000000)
  {
    v4 = 50000000;
  }

  else
  {
    v4 = v1;
  }

  std::string::reserve(v2, a1 + v4);
}

uint64_t sub_1D9D50DE8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1D9D418C4(va, 3, v2, 323);
}

std::string *sub_1D9D50E08(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void sub_1D9D50E20(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_1D9D5128C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1D9D418C4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1D9D418DC(v13, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1D9D41A18(&v12, &v8->__r_.__value_.__l.__data_);
            sub_1D9D41A20(v13);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_1D9D5128C(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  if (v6)
  {
    if (*(v6 + 24))
    {
      sub_1D9D53B50(v6);
    }

    v10 = sub_1D9D401C0(v6, (v3 + 15) & 0xFFFFFFF8);
  }

  else
  {
    v10 = operator new(v3 + 8);
  }

  *v10 = v6;
  a1[1] = v3;
  *(a1 + 1) = v10 + 1;
  sub_1D9D5128C(a1);
  if (*a1 >= 1)
  {
    v11 = sub_1D9D5128C(a1);
    memcpy(v11, v5 + 1, *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1D9D50FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D50FC0(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1D9D418DC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1D9D41AD4(v5, *(a1 + 4));
    v7 = sub_1D9D418DC(v6, ", ");
    v8 = sub_1D9D41AD4(v7, *a1);
    sub_1D9D41A18(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1D9D51068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D51080(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D5128C(a1) + a2;
}

void sub_1D9D51140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D51160(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D5128C(a1) + a2;
}

void sub_1D9D51220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D51240(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1D9D5128C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1D9D5128C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1D9D418C4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1D9D418DC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1D9D41A18(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v5);
  }

  return *(a1 + 8);
}

void sub_1D9D51300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

int *sub_1D9D51318(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1D9D418DC(v10, "CHECK failed: (&other) != (this): ");
    sub_1D9D41A18(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1D9D41A20(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1D9D50E20(v3, *v3 + *a2);
    sub_1D9D50FC0(v3, *a2);
    v6 = sub_1D9D51080(v3, v5);
    if (*a2 <= 0)
    {
      sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1D9D418DC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1D9D41A18(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v10);
    }

    v8 = sub_1D9D5128C(a2);
    return memcpy(v6, v8, *a2);
  }

  return result;
}

void sub_1D9D51424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D51444(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_1D9D518B4(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1D9D418DC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1D9D41A18(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1D9D41A20(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_1D9D518B4(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_1D9D53B50(v6);
    }

    v12 = sub_1D9D401C0(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1D9D518B4(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1D9D518B4(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1D9D515D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D515E8(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1D9D418DC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1D9D41AD4(v5, *(a1 + 4));
    v7 = sub_1D9D418DC(v6, ", ");
    v8 = sub_1D9D41AD4(v7, *a1);
    sub_1D9D41A18(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1D9D51690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D516A8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D518B4(a1) + 4 * a2;
}

void sub_1D9D51768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D51788(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D518B4(a1) + 4 * a2;
}

void sub_1D9D51848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D51868(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1D9D518B4(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1D9D518B4(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1D9D418C4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1D9D418DC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1D9D41A18(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v5);
  }

  return *(a1 + 8);
}

void sub_1D9D51928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

int *sub_1D9D51940(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1D9D418DC(v10, "CHECK failed: (&other) != (this): ");
    sub_1D9D41A18(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1D9D41A20(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1D9D51444(v3, *v3 + *a2);
    sub_1D9D515E8(v3, *a2);
    v6 = sub_1D9D516A8(v3, v5);
    if (*a2 <= 0)
    {
      sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1D9D418DC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1D9D41A18(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v10);
    }

    v8 = sub_1D9D518B4(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_1D9D51A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D51A70(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_1D9D51EE0(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1D9D418DC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1D9D41A18(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1D9D41A20(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_1D9D51EE0(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_1D9D53B50(v6);
    }

    v12 = sub_1D9D401C0(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1D9D51EE0(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1D9D51EE0(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1D9D51BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D51C14(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1D9D418DC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1D9D41AD4(v5, *(a1 + 4));
    v7 = sub_1D9D418DC(v6, ", ");
    v8 = sub_1D9D41AD4(v7, *a1);
    sub_1D9D41A18(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1D9D51CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D51CD4(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D51EE0(a1) + 4 * a2;
}

void sub_1D9D51D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D51DB4(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D51EE0(a1) + 4 * a2;
}

void sub_1D9D51E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D51E94(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1D9D51EE0(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1D9D51EE0(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1D9D418C4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1D9D418DC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1D9D41A18(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v5);
  }

  return *(a1 + 8);
}

void sub_1D9D51F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

int *sub_1D9D51F6C(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1D9D418DC(v10, "CHECK failed: (&other) != (this): ");
    sub_1D9D41A18(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1D9D41A20(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1D9D51A70(v3, *v3 + *a2);
    sub_1D9D51C14(v3, *a2);
    v6 = sub_1D9D51CD4(v3, v5);
    if (*a2 <= 0)
    {
      sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1D9D418DC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1D9D41A18(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v10);
    }

    v8 = sub_1D9D51EE0(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_1D9D5207C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D5209C(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_1D9D5250C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1D9D418DC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1D9D41A18(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1D9D41A20(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_1D9D5250C(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_1D9D53B50(v6);
    }

    v12 = sub_1D9D401C0(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1D9D5250C(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1D9D5250C(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1D9D52228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D52240(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1D9D418DC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1D9D41AD4(v5, *(a1 + 4));
    v7 = sub_1D9D418DC(v6, ", ");
    v8 = sub_1D9D41AD4(v7, *a1);
    sub_1D9D41A18(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1D9D522E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D52300(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D5250C(a1) + 8 * a2;
}

void sub_1D9D523C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D523E0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D5250C(a1) + 8 * a2;
}

void sub_1D9D524A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D524C0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1D9D5250C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1D9D5250C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1D9D418C4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1D9D418DC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1D9D41A18(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v5);
  }

  return *(a1 + 8);
}

void sub_1D9D52580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

int *sub_1D9D52598(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1D9D418DC(v10, "CHECK failed: (&other) != (this): ");
    sub_1D9D41A18(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1D9D41A20(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1D9D5209C(v3, *v3 + *a2);
    sub_1D9D52240(v3, *a2);
    v6 = sub_1D9D52300(v3, v5);
    if (*a2 <= 0)
    {
      sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1D9D418DC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1D9D41A18(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v10);
    }

    v8 = sub_1D9D5250C(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_1D9D526A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D526C8(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_1D9D52B38(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1D9D418DC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1D9D41A18(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1D9D41A20(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_1D9D52B38(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_1D9D53B50(v6);
    }

    v12 = sub_1D9D401C0(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1D9D52B38(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1D9D52B38(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1D9D52854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D5286C(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1D9D418DC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1D9D41AD4(v5, *(a1 + 4));
    v7 = sub_1D9D418DC(v6, ", ");
    v8 = sub_1D9D41AD4(v7, *a1);
    sub_1D9D41A18(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1D9D52914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D5292C(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D52B38(a1) + 8 * a2;
}

void sub_1D9D529EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D52A0C(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D52B38(a1) + 8 * a2;
}

void sub_1D9D52ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D52AEC(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1D9D52B38(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1D9D52B38(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1D9D418C4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1D9D418DC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1D9D41A18(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v5);
  }

  return *(a1 + 8);
}

void sub_1D9D52BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

int *sub_1D9D52BC4(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1D9D418DC(v10, "CHECK failed: (&other) != (this): ");
    sub_1D9D41A18(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1D9D41A20(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1D9D526C8(v3, *v3 + *a2);
    sub_1D9D5286C(v3, *a2);
    v6 = sub_1D9D5292C(v3, v5);
    if (*a2 <= 0)
    {
      sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1D9D418DC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1D9D41A18(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v10);
    }

    v8 = sub_1D9D52B38(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_1D9D52CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D52CF4(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_1D9D53164(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1D9D418DC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1D9D41A18(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1D9D41A20(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_1D9D53164(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_1D9D53B50(v6);
    }

    v12 = sub_1D9D401C0(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1D9D53164(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1D9D53164(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1D9D52E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D52E98(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1D9D418DC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1D9D41AD4(v5, *(a1 + 4));
    v7 = sub_1D9D418DC(v6, ", ");
    v8 = sub_1D9D41AD4(v7, *a1);
    sub_1D9D41A18(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1D9D52F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D52F58(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D53164(a1) + 4 * a2;
}

void sub_1D9D53018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D53038(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D53164(a1) + 4 * a2;
}

void sub_1D9D530F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D53118(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1D9D53164(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1D9D53164(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1D9D418C4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1D9D418DC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1D9D41A18(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v5);
  }

  return *(a1 + 8);
}

void sub_1D9D531D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

int *sub_1D9D531F0(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1D9D418DC(v10, "CHECK failed: (&other) != (this): ");
    sub_1D9D41A18(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1D9D41A20(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1D9D52CF4(v3, *v3 + *a2);
    sub_1D9D52E98(v3, *a2);
    v6 = sub_1D9D52F58(v3, v5);
    if (*a2 <= 0)
    {
      sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1D9D418DC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1D9D41A18(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v10);
    }

    v8 = sub_1D9D53164(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_1D9D53300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D53320(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_1D9D53790(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1D9D418DC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1D9D41A18(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1D9D41A20(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_1D9D53790(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_1D9D53B50(v6);
    }

    v12 = sub_1D9D401C0(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1D9D53790(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1D9D53790(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1D9D534AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D534C4(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1D9D418DC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1D9D41AD4(v5, *(a1 + 4));
    v7 = sub_1D9D418DC(v6, ", ");
    v8 = sub_1D9D41AD4(v7, *a1);
    sub_1D9D41A18(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1D9D5356C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D53584(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D53790(a1) + 8 * a2;
}

void sub_1D9D53644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D53664(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*a1 <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return sub_1D9D53790(a1) + 8 * a2;
}

void sub_1D9D53724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D53744(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1D9D53790(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1D9D53790(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1D9D418C4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1D9D418DC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1D9D41A18(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v5);
  }

  return *(a1 + 8);
}

void sub_1D9D53804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

int *sub_1D9D5381C(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1D9D418DC(v10, "CHECK failed: (&other) != (this): ");
    sub_1D9D41A18(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1D9D41A20(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1D9D53320(v3, *v3 + *a2);
    sub_1D9D534C4(v3, *a2);
    v6 = sub_1D9D53584(v3, v5);
    if (*a2 <= 0)
    {
      sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1D9D418DC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1D9D41A18(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v10);
    }

    v8 = sub_1D9D53790(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_1D9D5392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D5394C(uint64_t *a1)
{
  sub_1D9D53988(a1);

  return sub_1D9D34660(a1);
}

void sub_1D9D53988(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x1DA741280](v5, 0x1012C40EC159624);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_1D9D53A28(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return sub_1D9D53A3C(result, v4);
  }

  return result;
}

uint64_t sub_1D9D53A3C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = v2 + a2;
  v5 = *(a1 + 16);
  if (v3 < v2 + a2)
  {
    v7 = *a1;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (*(v7 + 24))
      {
        sub_1D9D53B8C(*a1);
      }

      v12 = sub_1D9D401C0(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      v12 = operator new(v10 + 8);
    }

    *(a1 + 16) = v12;
    *(a1 + 12) = v9;
    if (v5 && (v13 = *v5, v13 >= 1))
    {
      memcpy(v12 + 2, v5 + 2, 8 * v13);
      v12 = *(a1 + 16);
      *v12 = *v5;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v12 = 0;
      if (!v7)
      {
LABEL_17:
        operator delete(v5);
        v12 = *(a1 + 16);
      }
    }

    v2 = *(a1 + 8);
    v5 = v12;
  }

  return &v5[2 * v2 + 2];
}

uint64_t *sub_1D9D53B38(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

uint64_t sub_1D9D53BC4(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_1F554E070;
  *(a1 + 16) = &unk_1F554E030;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_1F554E030;
  *(a1 + 40) = 0;
  sub_1D9D3F470((a1 + 88));
  sub_1D9D53CB8(a1, a2, a3, &v7);
  sub_1D9D3F690((a1 + 88), &v7);
  sub_1D9D3F478(&v7);
  return a1;
}

void sub_1D9D53C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D3F478(va);
  sub_1D9D3F478((v2 + 88));
  _Unwind_Resume(a1);
}

void *sub_1D9D53CB8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v13 = a2;
  v14 = a3;
  v12 = 0;
  result = sub_1D9D0CC14(a2, a3, &v12, a4);
  if (!*a4)
  {
    sub_1D9D3F478(a4);
    result = sub_1D9D3D904(&v13, 4uLL, a4);
    if (!*a4)
    {
      sub_1D9D3F478(a4);
      *(a1 + 8) = v12;
      v11 = 0;
      result = sub_1D9D0CC14(v13, v14, &v11, a4);
      if (!*a4)
      {
        sub_1D9D3F478(a4);
        result = sub_1D9D3D904(&v13, 4uLL, a4);
        if (!*a4)
        {
          sub_1D9D3F478(a4);
          *(a1 + 24) = v11;
          v10 = 0;
          result = sub_1D9D0CC14(v13, v14, &v10, a4);
          if (!*a4)
          {
            sub_1D9D3F478(a4);
            result = sub_1D9D3D904(&v13, 4uLL, a4);
            if (!*a4)
            {
              sub_1D9D3F478(a4);
              v7 = v10;
              *(a1 + 48) = 0;
              *(a1 + 40) = v7;
              result = sub_1D9D0CA08(v13, v14, (a1 + 48), a4);
              if (!*a4)
              {
                sub_1D9D3F478(a4);
                result = sub_1D9D3D904(&v13, 4uLL, a4);
                if (!*a4)
                {
                  sub_1D9D3F478(a4);
                  *(a1 + 56) = v13;
                  v8 = sub_1D9D3D874(*(a1 + 48), 4uLL);
                  result = sub_1D9D3D904(&v13, v8, a4);
                  if (!*a4)
                  {
                    sub_1D9D3F478(a4);
                    *(a1 + 64) = v13;
                    result = sub_1D9D3D904(&v13, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sub_1D9D3F478(a4);
                      *(a1 + 72) = v13;
                      result = sub_1D9D3D904(&v13, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        v9 = sub_1D9D3F478(a4);
                        *(a1 + 80) = v13;
                        return sub_1D9D3F470(v9);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_1D9D53EFC(void *a1)
{
  *a1 = &unk_1F554E070;
  sub_1D9D3F478(a1 + 11);
  return a1;
}

void sub_1D9D53F40(void *a1)
{
  *a1 = &unk_1F554E070;
  sub_1D9D3F478(a1 + 11);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D53FAC(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = **(a1 + 72);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1D9D53FE0(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 4);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1D9D54014(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 8);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1D9D54048(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 12);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1D9D5407C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 16);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1D9D540D4(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  v3 = *(*(a1 + 72) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

BOOL sub_1D9D541A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v8);
  v6 = sub_1D9D3CF9C(v3, a2, v5);
  return (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
}

void sub_1D9D54284(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  while (sub_1D9D541A0(a1, __p))
  {
    v5 = a2[1];
    if (v5 < a2[2])
    {
      if (SHIBYTE(v7) < 0)
      {
        sub_1D9D12B94(a2[1], __p[0], __p[1]);
      }

      else
      {
        v4 = *__p;
        *(v5 + 16) = v7;
        *v5 = v4;
      }

      a2[1] = v5 + 24;
    }

    else
    {
      a2[1] = sub_1D9D54CE0(a2, __p);
    }
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D9D54358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D54C6C(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D54388(uint64_t a1)
{
  std::ios_base::clear((*(a1 + 32) + *(**(a1 + 32) - 24)), 0);
  v2 = *(a1 + 32);

  return MEMORY[0x1EEE63DC0](v2, 0, 0);
}

uint64_t sub_1D9D543E8(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

uint64_t sub_1D9D54428(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

uint64_t sub_1D9D54468(uint64_t a1)
{
  *a1 = &unk_1F554E158;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1D9D544F8(uint64_t a1)
{
  *a1 = &unk_1F554E158;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1DA741280);
}

BOOL sub_1D9D54598(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    sub_1D9D12B94(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *(a1 + 8);
  }

  v7 = __p;
  memset(&__p, 0, sizeof(__p));
  std::__fs::filesystem::__status(&v7, 0);
  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      result = 0;
      v3 = v5.__pn_.__r_.__value_.__s.__data_[0];
      if (!v5.__pn_.__r_.__value_.__s.__data_[0])
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  result = 0;
  v3 = v5.__pn_.__r_.__value_.__s.__data_[0];
  if (!v5.__pn_.__r_.__value_.__s.__data_[0])
  {
    return result;
  }

LABEL_10:
  if (v3 == 255)
  {
    return result;
  }

  if (*(a1 + 31) < 0)
  {
    sub_1D9D12B94(&v5, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
  }

  __p = v5;
  memset(&v5, 0, sizeof(v5));
  std::__fs::filesystem::__canonical(&v7, &__p, 0);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(v5.__pn_.__r_.__value_.__l.__data_);
LABEL_16:
  std::__fs::filesystem::__status(&v7, 0);
  result = __p.__pn_.__r_.__value_.__s.__data_[0] == 1;
  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = __p.__pn_.__r_.__value_.__s.__data_[0] == 1;
    operator delete(v7.__pn_.__r_.__value_.__l.__data_);
    return v4;
  }

  return result;
}

void sub_1D9D54720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D54794(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1DA741280);
}

BOOL sub_1D9D5480C(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    sub_1D9D12B94(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *(a1 + 8);
  }

  v5 = __p;
  memset(&__p, 0, sizeof(__p));
  std::__fs::filesystem::__status(&v5, 0);
  v1 = v6;
  if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(__p.__pn_.__r_.__value_.__l.__data_);
LABEL_6:
  if (v1)
  {
    v2 = v1 == 255;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

void sub_1D9D548C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D548FC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D9D12B94(__p, *a2, *(a2 + 8));
    if ((SHIBYTE(v6) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
    if ((SHIBYTE(v6) & 0x80000000) == 0)
    {
LABEL_3:
      *(a1 + 8) = *__p;
      *(a1 + 24) = v6;
      *a1 = &unk_1F554E230;
      goto LABEL_7;
    }
  }

  sub_1D9D12B94((a1 + 8), __p[0], __p[1]);
  v3 = SHIBYTE(v6);
  *a1 = &unk_1F554E230;
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_7:
  *a1 = &unk_1F554E258;
  return a1;
}

void sub_1D9D549EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D54A08(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1DA741280);
}

BOOL sub_1D9D54A80(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    sub_1D9D12B94(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *(a1 + 8);
  }

  v7 = __p;
  memset(&__p, 0, sizeof(__p));
  std::__fs::filesystem::__status(&v7, 0);
  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      result = 0;
      v3 = v5.__pn_.__r_.__value_.__s.__data_[0];
      if (!v5.__pn_.__r_.__value_.__s.__data_[0])
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  result = 0;
  v3 = v5.__pn_.__r_.__value_.__s.__data_[0];
  if (!v5.__pn_.__r_.__value_.__s.__data_[0])
  {
    return result;
  }

LABEL_10:
  if (v3 == 255)
  {
    return result;
  }

  if (*(a1 + 31) < 0)
  {
    sub_1D9D12B94(&v5, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
  }

  __p = v5;
  memset(&v5, 0, sizeof(v5));
  std::__fs::filesystem::__canonical(&v7, &__p, 0);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(v5.__pn_.__r_.__value_.__l.__data_);
LABEL_16:
  std::__fs::filesystem::__status(&v7, 0);
  result = __p.__pn_.__r_.__value_.__s.__data_[0] == 2;
  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = __p.__pn_.__r_.__value_.__s.__data_[0] == 2;
    operator delete(v7.__pn_.__r_.__value_.__l.__data_);
    return v4;
  }

  return result;
}

void sub_1D9D54C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  _Unwind_Resume(exception_object);
}

void ***sub_1D9D54C6C(void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
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

uint64_t sub_1D9D54CE0(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1D9D84AB0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_1D9D12B94(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_1D9D54E20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D12978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D54E34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    sub_1D9D12B94(__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *__p = *(a2 + 8);
    v7 = *(a2 + 24);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = SHIBYTE(v7);
  if (v7 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v7 < 0)
  {
    v3 = __p[1];
  }

  sub_1D9D2B214((a1 + 8), v4, (v3 + v4));
  *a1 = &unk_1F554E230;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F554E258;
  return a1;
}

void sub_1D9D54F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 31) < 0)
  {
    operator delete(*v15);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

id sub_1D9D54F4C(int a1)
{
  if (qword_1ECB72028 == -1)
  {
    v2 = qword_1ECB71FF8[a1];
  }

  else
  {
    dispatch_once(&qword_1ECB72028, &unk_1F554E288);
    v2 = qword_1ECB71FF8[a1];
  }

  return v2;
}

uint64_t sub_1D9D54FD0()
{
  v0 = os_log_create("com.apple.cvnlp", "General");
  v1 = qword_1ECB71FF8;
  qword_1ECB71FF8 = v0;

  v2 = os_log_create("com.apple.cvnlp", "TextDecoder");
  v3 = qword_1ECB72000;
  qword_1ECB72000 = v2;

  v4 = os_log_create("com.apple.cvnlp", "CTCTextDecoder");
  v5 = qword_1ECB72008;
  qword_1ECB72008 = v4;

  v6 = os_log_create("com.apple.cvnlp", "CVNLPLanguageModel");
  v7 = qword_1ECB72010;
  qword_1ECB72010 = v6;

  v8 = os_log_create("com.apple.cvnlp", "CVNLPCLIPModel");
  v9 = qword_1ECB72018;
  qword_1ECB72018 = v8;

  qword_1ECB72020 = os_log_create("com.apple.cvnlp", "CVNLPVideoCaptioningModel");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D9D550B0(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t sub_1D9D551B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F554E2B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1D9D551DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v6 = 2;
  if (*v5)
  {
    v7 = *a3;
  }

  else
  {
    v6 = 4;
    v7 = *a2;
  }

  if (!*v5)
  {
    v3 = *a3;
  }

  return v3 + v7 * *&v5[v6];
}

uint64_t sub_1D9D55210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001D9DDDBCFLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001D9DDDBCFLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001D9DDDBCFLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001D9DDDBCFLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1D9D55298(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](a1 + 112);
  return a1;
}

uint64_t sub_1D9D553B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = *a1;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 == a1 + 8)
    {
      v28 = v27;
      v6 = a1;
      (*(*v5 + 24))(v5, v27);
      a1 = v6;
    }

    else
    {
      v28 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = *(a1 + 40);
  v30 = *(a1 + 56);
  sub_1D9D55A2C(&v26, &v31);
  v16 = *a2;
  v7 = *(a2 + 32);
  if (v7)
  {
    if (v7 == a2 + 8)
    {
      v18 = v17;
      (*(*v7 + 24))(v7, v17);
    }

    else
    {
      v18 = *(a2 + 32);
      *(a2 + 32) = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a2 + 40);
  v20 = *(a2 + 56);
  sub_1D9D55A2C(&v16, &v21);
  v8 = v33;
  *a3 = v31;
  v9 = a3 + 8;
  if (v8)
  {
    if (v8 == v32)
    {
      *(a3 + 32) = v9;
      (*(*v8 + 24))(v8);
    }

    else
    {
      *(a3 + 32) = v8;
      v33 = 0;
    }
  }

  else
  {
    *(a3 + 32) = 0;
  }

  *(a3 + 40) = v34;
  v10 = v21;
  v11 = v23;
  *(a3 + 56) = v35;
  *(a3 + 64) = v10;
  if (v11)
  {
    if (v11 == v22)
    {
      *(a3 + 96) = a3 + 72;
      (*(*v11 + 24))(v11);
    }

    else
    {
      *(a3 + 96) = v11;
      v23 = 0;
    }
  }

  else
  {
    *(a3 + 96) = 0;
  }

  *(a3 + 104) = v24;
  *(a3 + 120) = v25;
  if (v23 == v22)
  {
    (*(*v23 + 32))(v23, v9);
    v12 = v18;
    if (v18 != v17)
    {
      goto LABEL_25;
    }

LABEL_34:
    (*(*v12 + 32))(v12, v9);
    v13 = v33;
    if (v33 != v32)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if (v23)
  {
    (*(*v23 + 40))();
  }

  v12 = v18;
  if (v18 == v17)
  {
    goto LABEL_34;
  }

LABEL_25:
  if (v12)
  {
    (*(*v12 + 40))(v12, v9);
  }

  v13 = v33;
  if (v33 != v32)
  {
LABEL_28:
    if (v13)
    {
      (*(*v13 + 40))(v13, v9);
    }

    result = v28;
    if (v28 != v27)
    {
      goto LABEL_31;
    }

LABEL_36:
    result = (*(*result + 32))(result, v9);
    goto LABEL_37;
  }

LABEL_35:
  (*(*v13 + 32))(v13, v9);
  result = v28;
  if (v28 == v27)
  {
    goto LABEL_36;
  }

LABEL_31:
  if (result)
  {
    result = (*(*result + 40))(result, v9);
  }

LABEL_37:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D557C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D9D3FB90(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D557E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = *a1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      v18 = v17;
      v5 = a1;
      v6 = a3;
      (*(*v4 + 24))(v4, v17);
      a1 = v5;
      a3 = v6;
    }

    else
    {
      v18 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 56);
  v11 = *a2;
  v7 = *(a2 + 32);
  if (v7)
  {
    if (v7 == a2 + 8)
    {
      v13 = v12;
      v8 = a3;
      (*(*v7 + 24))(v7, v12);
      a3 = v8;
    }

    else
    {
      v13 = *(a2 + 32);
      *(a2 + 32) = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 40);
  v15 = *(a2 + 56);
  sub_1D9D55C20(&v16, &v11, a3);
  if (v13 != v12)
  {
    if (v13)
    {
      (*(*v13 + 40))();
    }

    result = v18;
    if (v18 != v17)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (*(*v13 + 32))(v13);
  result = v18;
  if (v18 == v17)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D55A1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D9D3FB90(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D55A2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v10 = *a1;
  v5 = a1[4];
  if (v5)
  {
    if (v5 == a1 + 1)
    {
      v12 = v11;
      (*(*v5 + 24))(v5, v11);
      v6 = v12;
    }

    else
    {
      v6 = (*(*v5 + 16))(v5);
      v12 = v6;
    }

    v13 = *(a1 + 5);
    v14 = a1[7];
    *a2 = v10;
    if (v6)
    {
      if (v6 == v11)
      {
        *(a2 + 32) = a2 + 8;
        (*(*v6 + 24))(v6);
      }

      else
      {
        *(a2 + 32) = v6;
        v12 = 0;
      }
    }

    else
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = *(a1 + 5);
    v14 = a1[7];
    *a2 = v4;
    *(a2 + 32) = 0;
  }

  v7 = v13;
  *(a2 + 56) = v14;
  *(a2 + 40) = v7;
  result = v12;
  if (v12 == v11)
  {
    result = (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    result = (*(*v12 + 40))();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D55C10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D9D3FB90(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D55C20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = *a1;
  v5 = a1[4];
  if (v5)
  {
    if (v5 == a1 + 1)
    {
      v20 = v19;
      v6 = a1;
      (*(*v5 + 24))(v5, v19);
      a1 = v6;
    }

    else
    {
      v20 = a1[4];
      a1[4] = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + 5);
  v22 = a1[7];
  v7 = *a2;
  v13 = *a2;
  v8 = a2[4];
  if (v8)
  {
    if (v8 == a2 + 1)
    {
      v15 = v14;
      (*(*v8 + 24))(v8, v14);
      v7 = v13;
    }

    else
    {
      v15 = a2[4];
      a2[4] = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a2 + 5);
  v17 = a2[7];
  *a3 = v7;
  v9 = a3 + 8;
  v10 = v15;
  if (v15)
  {
    if (v15 == v14)
    {
      *(a3 + 32) = v9;
      (*(*v10 + 24))(v10);
    }

    else
    {
      *(a3 + 32) = v15;
      v15 = 0;
    }
  }

  else
  {
    *(a3 + 32) = 0;
  }

  *(a3 + 40) = v16;
  *(a3 + 56) = v17;
  if (v15 != v14)
  {
    if (v15)
    {
      (*(*v15 + 40))();
    }

    result = v20;
    if (v20 != v19)
    {
      goto LABEL_20;
    }

LABEL_23:
    result = (*(*result + 32))(result, v9);
    goto LABEL_24;
  }

  (*(*v15 + 32))(v15, v9);
  result = v20;
  if (v20 == v19)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (result)
  {
    result = (*(*result + 40))(result, v9);
  }

LABEL_24:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D55EC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D9D3FB90(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9D55ED8(uint64_t a1)
{
  v2 = a1 + 72;
  v3 = *(a1 + 96);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 32);
    if (v4 != a1 + 8)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 32);
  if (v4 == a1 + 8)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

void sub_1D9D55FD4(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, int64_t a4@<X3>, void **a5@<X8>)
{
  v8 = 0;
  v9 = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v10 = (a1 + a2);
  do
  {
    v12 = a2 - v9;
    if (a2 <= v9)
    {
      break;
    }

    v13 = v9;
    if (a4)
    {
      if (v12 >= a4)
      {
        v22 = (a1 + v9);
        v23 = *a3;
        v24 = a2 - v9;
        do
        {
          v25 = v24 - a4;
          if (v25 == -1)
          {
            break;
          }

          v26 = memchr(v22, v23, v25 + 1);
          if (!v26)
          {
            break;
          }

          v14 = v26;
          if (!memcmp(v26, a3, a4))
          {
            goto LABEL_9;
          }

          v22 = v14 + 1;
          v24 = v10 - (v14 + 1);
        }

        while (v24 >= a4);
      }

      v14 = v10;
LABEL_9:
      if (v14 == v10)
      {
        v13 = -1;
      }

      else
      {
        v13 = &v14[-a1];
      }
    }

    if (v13 == v9)
    {
      goto LABEL_4;
    }

    if (v12 >= v13 - v9)
    {
      v12 = v13 - v9;
    }

    memset(&v32, 0, sizeof(v32));
    if (v12)
    {
      v15 = (a1 + v9);
      do
      {
        std::string::push_back(&v32, *v15++);
        --v12;
      }

      while (v12);
    }

    v16 = a5[2];
    if (v8 < v16)
    {
      v11 = *&v32.__r_.__value_.__l.__data_;
      v8->__r_.__value_.__r.__words[2] = v32.__r_.__value_.__r.__words[2];
      *&v8->__r_.__value_.__l.__data_ = v11;
      ++v8;
    }

    else
    {
      v17 = *a5;
      v18 = v8 - *a5;
      v19 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3) + 1;
      if (v19 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1D9D84AB0();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3);
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (v21 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1D9D10E9C();
      }

      v27 = (8 * (v18 >> 3));
      *v27 = v32;
      memset(&v32, 0, sizeof(v32));
      v8 = v27 + 1;
      v28 = v27 - v18;
      memcpy(v27 - v18, v17, v18);
      *a5 = v28;
      a5[2] = 0;
      if (v17)
      {
        operator delete(v17);
        v29 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
        a5[1] = v8;
        if (v29 < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        goto LABEL_4;
      }
    }

    a5[1] = v8;
LABEL_4:
    v9 = v13 + 1;
  }

  while (v13 != -1);
}

void sub_1D9D56220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D54C6C(v17);
  _Unwind_Resume(a1);
}

void sub_1D9D5624C(std::string *a1)
{
  MEMORY[0x1DA741190](&v22);
  v23 = 0x4000;
  std::locale::locale(&v24, &v22);
  v25 = v23;
  std::locale::locale(&v26, &v24);
  v2 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v5 = (v3 + size);
  v27 = v25;
  std::locale::locale(&v28, &v26);
  v29 = v27;
  std::locale::locale(&v30, &v28);
  v6 = MEMORY[0x1E69E5318];
  while (size)
  {
    v7 = size;
    v8 = v3->__r_.__value_.__s.__data_[size - 1];
    v9 = std::locale::use_facet(&v30, v6);
    if ((v8 & 0x80) != 0)
    {
      v3 = v5;
      break;
    }

    v5 = (v5 - 1);
    v10 = *(&v9[1].~facet + v8);
    size = v7 - 1;
    if ((v10 & v29) == 0)
    {
      v3 = (v3 + v7);
      break;
    }
  }

  std::locale::~locale(&v30);
  v11 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v11 & 0x80u) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = a1->__r_.__value_.__l.__size_;
  }

  std::string::erase(a1, v3 - v12, v12 + v11 - v3);
  std::locale::~locale(&v28);
  std::locale::~locale(&v26);
  v27 = v23;
  std::locale::locale(&v28, &v24);
  v13 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v13 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = a1->__r_.__value_.__r.__words[0];
  }

  if (v13 >= 0)
  {
    v15 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = a1->__r_.__value_.__l.__size_;
  }

  v29 = v27;
  std::locale::locale(&v30, &v28);
  if (v15)
  {
    v16 = v14 + v15;
    v17 = MEMORY[0x1E69E5318];
    v18 = v14;
    while (1)
    {
      v19 = v18->__r_.__value_.__s.__data_[0];
      v20 = std::locale::use_facet(&v30, v17);
      if ((v19 & 0x80) != 0 || (*(&v20[1].~facet + v19) & v29) == 0)
      {
        break;
      }

      v18 = (v18 + 1);
      if (!--v15)
      {
        v18 = v16;
        break;
      }
    }
  }

  else
  {
    v18 = v14;
  }

  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = a1;
  }

  else
  {
    v21 = a1->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a1, v14 - v21, v18 - v14);
  std::locale::~locale(&v30);
  std::locale::~locale(&v28);
  std::locale::~locale(&v24);
  std::locale::~locale(&v22);
}

void sub_1D9D56498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(v11);
  std::locale::~locale(v10);
  std::locale::~locale(v12 + 1);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

void *sub_1D9D564DC(void *result, uint64_t a2, unint64_t a3)
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

    sub_1D9D84AB0();
  }

  return result;
}

void sub_1D9D565F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_1D9D29D18(&a11);
  *(v11 + 8) = v12;
  sub_1D9D56614(&a9);
  _Unwind_Resume(a1);
}

void ****sub_1D9D56614(void ****a1)
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
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_1D9D56698(std::string *a1, unsigned __int8 **a2, char *a3, char *a4, char *a5, char *a6, char *a7, char *a8)
{
  v200 = 0u;
  v201 = 0u;
  *__p = 0u;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a1->__r_.__value_.__r.__words[0];
  }

  if (a5 != a6)
  {
    v14 = a6;
    v12 = v9;
    v11 = v9;
    while (1)
    {
      __src = a7;
      __dst = sub_1D9D58758(__p, v12, v11, a5);
      v15 = v201.i64[1];
      v16 = v201.i16[0];
      v17 = v201.i64[0] + v201.i64[1];
      v18 = __p[1];
      v19 = v200;
      v20 = v200 - __p[1];
      if (v200 == __p[1])
      {
        v22 = a8 - __src;
        v23 = v201.i64[0] >> 12;
        v195 = v14;
        v196 = 0;
        if (v201.i64[1])
        {
          goto LABEL_13;
        }
      }

      else
      {
        v21 = (v17 >> 9) & 0x7FFFFFFFFFFFF8;
        v22 = a8 - __src;
        v23 = v201.i64[0] >> 12;
        v24 = 8 * (v201.i64[0] >> 12);
        if (*(__p[1] + v21) + (v17 & 0xFFF) == *(__p[1] + v24) + (v201.i16[0] & 0xFFF))
        {
          v195 = v14;
          v196 = 0;
          if (v201.i64[1])
          {
LABEL_13:
            if (v22 > v201.i64[0])
            {
              v25 = (v20 << 9) - 1;
              if (v200 == __p[1])
              {
                v25 = 0;
                v26 = v22 - v201.i64[0] + 1;
              }

              else
              {
                v26 = v22 - v201.i64[0];
              }

              if ((v26 & 0xFFF) != 0)
              {
                v27 = (v26 >> 12) + 1;
              }

              else
              {
                v27 = v26 >> 12;
              }

              v28 = (v25 - v17) >> 12;
              if (v27 >= v28)
              {
                v29 = v28;
              }

              else
              {
                v29 = v27;
              }

              if (v27 <= v28)
              {
                v201.i64[0] += v29 << 12;
                if (!v29)
                {
                  goto LABEL_89;
                }

                do
                {
                  v48 = *(v19 - 1);
                  v19 -= 8;
                  v47 = v48;
                  *&v200 = v19;
                  if (v18 == __p[0])
                  {
                    if (v19 >= *(&v200 + 1))
                    {
                      if (*(&v200 + 1) == v18)
                      {
                        v50 = 1;
                      }

                      else
                      {
                        v50 = (*(&v200 + 1) - v18) >> 2;
                      }

                      if (!(v50 >> 61))
                      {
                        operator new();
                      }

                      goto LABEL_382;
                    }

                    v49 = &v19[8 * ((((*(&v200 + 1) - v19) >> 3) + 1 + ((((*(&v200 + 1) - v19) >> 3) + 1) >> 63)) >> 1)];
                    v45 = &v18[8 * ((((*(&v200 + 1) - v19) >> 3) + 1 + ((((*(&v200 + 1) - v19) >> 3) + 1) >> 63)) >> 1)];
                    if (v19 != v18)
                    {
                      memmove(&v18[8 * ((((*(&v200 + 1) - v19) >> 3) + 1 + ((((*(&v200 + 1) - v19) >> 3) + 1) >> 63)) >> 1)], v18, v19 - v18);
                    }

                    *&v200 = v49;
                    v19 = v49;
                  }

                  else
                  {
                    v45 = v18;
                  }

                  *(v45 - 1) = v47;
                  v46 = v45 - 8;
                  __p[1] = v46;
                  v18 = v46;
                  --v29;
                }

                while (v29);
              }

              else
              {
                v30 = v27 - v29;
                v31 = (v200 - __p[1]) >> 3;
                if (v27 - v29 > ((*(&v200 + 1) - __p[0]) >> 3) - v31)
                {
                  v32 = v30 + v31;
                  if ((*(&v200 + 1) - __p[0]) >> 2 <= v32)
                  {
                    v33 = v32;
                  }

                  else
                  {
                    v33 = (*(&v200 + 1) - __p[0]) >> 2;
                  }

                  if (!v33)
                  {
                    operator new();
                  }

                  if (!(v33 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_382;
                }

                if (v30)
                {
                  if (__p[1] != __p[0])
                  {
                    operator new();
                  }

                  operator new();
                }

                v201.i64[0] += v29 << 12;
                if (v29)
                {
                  do
                  {
                    v59 = *(v19 - 1);
                    v19 -= 8;
                    v58 = v59;
                    *&v200 = v19;
                    if (v18 == __p[0])
                    {
                      if (v19 >= *(&v200 + 1))
                      {
                        if (*(&v200 + 1) == v18)
                        {
                          v61 = 1;
                        }

                        else
                        {
                          v61 = (*(&v200 + 1) - v18) >> 2;
                        }

                        if (!(v61 >> 61))
                        {
                          operator new();
                        }

                        goto LABEL_382;
                      }

                      v60 = &v19[8 * ((((*(&v200 + 1) - v19) >> 3) + 1 + ((((*(&v200 + 1) - v19) >> 3) + 1) >> 63)) >> 1)];
                      v57 = &v18[8 * ((((*(&v200 + 1) - v19) >> 3) + 1 + ((((*(&v200 + 1) - v19) >> 3) + 1) >> 63)) >> 1)];
                      if (v19 != v18)
                      {
                        memmove(&v18[8 * ((((*(&v200 + 1) - v19) >> 3) + 1 + ((((*(&v200 + 1) - v19) >> 3) + 1) >> 63)) >> 1)], v18, v19 - v18);
                      }

                      *&v200 = v60;
                      v19 = v60;
                    }

                    else
                    {
                      v57 = v18;
                    }

                    *(v57 - 1) = v58;
                    v46 = v57 - 8;
                    __p[1] = v46;
                    v18 = v46;
                    --v29;
                  }

                  while (v29);
                }

                else
                {
LABEL_89:
                  v46 = __p[1];
                }
              }

              v16 = v201.i16[0];
              v23 = v201.i64[0] >> 12;
              v18 = v46;
            }

            v68 = &v18[8 * v23];
            if (v19 == v18)
            {
              v69 = 0;
            }

            else
            {
              v69 = *v68 + (v16 & 0xFFF);
            }

            v70 = a8;
            a7 = __src;
            v71 = v69;
            v72 = &v18[8 * v23];
            v73 = __src;
            if (v196 >= v22)
            {
              goto LABEL_129;
            }

            v22 = v196;
            v73 = &a8[-v196];
            if (&a8[-v196] == __src)
            {
              v71 = v69;
              v72 = &v18[8 * v23];
LABEL_129:
              if (!v22)
              {
                goto LABEL_302;
              }

LABEL_130:
              v74 = v69 - *v68 + v22;
              if (v74 >= 1)
              {
                v75 = &v68[v74 >> 12];
                v76 = *v75 + (v74 & 0xFFF);
                v77 = v75;
                v78 = v76;
                if (v76 != v69)
                {
                  goto LABEL_151;
                }

LABEL_140:
                if (v22 >= v196)
                {
                  goto LABEL_256;
                }

                v83 = *v68;
                v84 = v69 - *v68 + v196;
                if (v84 >= 1)
                {
                  v85 = &v68[v84 >> 12];
                  v86 = *v85 + (v84 & 0xFFF);
                  if (v75 != v85)
                  {
                    goto LABEL_143;
                  }

LABEL_164:
                  if (v76 != v86)
                  {
                    ++v68;
                    v95 = v83 - v69 + 4096;
                    if (v86 - v76 >= v95)
                    {
                      v96 = v95;
                    }

                    else
                    {
                      v96 = v86 - v76;
                    }

                    if (v96)
                    {
                      goto LABEL_174;
                    }

                    while (1)
                    {
                      v76 += v96;
                      if (v76 == v86)
                      {
                        break;
                      }

                      v97 = *v68++;
                      v69 = v97;
                      if (v86 - v76 >= 4096)
                      {
                        v96 = 4096;
                      }

                      else
                      {
                        v96 = v86 - v76;
                      }

                      if (v96)
                      {
LABEL_174:
                        memmove(v69, v76, v96);
                      }
                    }

LABEL_250:
                    v69 += v96;
                    if (*(v68 - 1) + 4096 == v69)
                    {
                      v69 = *v68;
                    }

                    else
                    {
                      --v68;
                    }

                    v70 = a8;
LABEL_256:
                    if (v70 == v73)
                    {
                      goto LABEL_302;
                    }

LABEL_257:
                    v136 = *v68;
                    v135 = v68 + 1;
                    v137 = v136 - v69 + 4096;
                    if (v70 - v73 >= v137)
                    {
                      v138 = v137;
                    }

                    else
                    {
                      v138 = v70 - v73;
                    }

                    if (v138)
                    {
                      goto LABEL_266;
                    }

                    while (1)
                    {
                      do
                      {
                        v73 += v138;
                        if (v73 == v70)
                        {
                          goto LABEL_302;
                        }

                        v139 = *v135++;
                        v69 = v139;
                        if (v70 - v73 >= 4096)
                        {
                          v138 = 4096;
                        }

                        else
                        {
                          v138 = v70 - v73;
                        }
                      }

                      while (!v138);
LABEL_266:
                      memmove(v69, v73, v138);
                    }
                  }

LABEL_252:
                  v70 = a8;
                  if (a8 == v73)
                  {
                    goto LABEL_302;
                  }

                  goto LABEL_257;
                }

                v94 = 4095 - v84;
                v85 = &v68[-(v94 >> 12)];
                v86 = *v85 + (~v94 & 0xFFF);
                if (v75 == v85)
                {
                  goto LABEL_164;
                }

LABEL_143:
                v87 = *v75 + 4096;
                if (v87 != v76)
                {
                  ++v68;
                  v88 = v83 - v69 + 4096;
                  if (v87 - v76 >= v88)
                  {
                    v89 = v88;
                  }

                  else
                  {
                    v89 = v87 - v76;
                  }

                  if (v89)
                  {
                    goto LABEL_158;
                  }

                  while (1)
                  {
                    v76 += v89;
                    if (v76 == v87)
                    {
                      break;
                    }

                    v93 = *v68++;
                    v69 = v93;
                    if (v87 - v76 >= 4096)
                    {
                      v89 = 4096;
                    }

                    else
                    {
                      v89 = v87 - v76;
                    }

                    if (v89)
                    {
LABEL_158:
                      memmove(v69, v76, v89);
                    }
                  }

                  v69 += v89;
                  v83 = *(v68 - 1);
                  if (v83 + 4096 == v69)
                  {
                    v83 = *v68;
                    v69 = *v68;
                    if (++v75 != v85)
                    {
                      goto LABEL_225;
                    }
                  }

                  else
                  {
                    --v68;
                    if (++v75 != v85)
                    {
                      goto LABEL_225;
                    }
                  }

LABEL_238:
                  v131 = *v75;
                  if (*v75 != v86)
                  {
                    v132 = *v68++;
                    v133 = v132 - v69 + 4096;
                    if (v86 - v131 >= v133)
                    {
                      v96 = v133;
                    }

                    else
                    {
                      v96 = v86 - v131;
                    }

                    if (v96)
                    {
                      goto LABEL_248;
                    }

                    while (1)
                    {
                      v131 += v96;
                      if (v131 == v86)
                      {
                        break;
                      }

                      v134 = *v68++;
                      v69 = v134;
                      if (v86 - v131 >= 4096)
                      {
                        v96 = 4096;
                      }

                      else
                      {
                        v96 = v86 - v131;
                      }

                      if (v96)
                      {
LABEL_248:
                        memmove(v69, v131, v96);
                      }
                    }

                    goto LABEL_250;
                  }

                  goto LABEL_252;
                }

LABEL_224:
                if (++v75 == v85)
                {
                  goto LABEL_238;
                }

LABEL_225:
                v126 = 0;
                v127 = *v75;
                ++v68;
                v128 = v83 - v69 + 4096;
                if (v128 <= 4096)
                {
                  v129 = v128;
                }

                else
                {
                  v129 = 4096;
                }

                if (v129)
                {
                  goto LABEL_234;
                }

                while (1)
                {
                  do
                  {
                    v126 += v129;
                    if (v126 == 4096)
                    {
                      v69 += v129;
                      v83 = *(v68 - 1);
                      if (v83 + 4096 != v69)
                      {
                        --v68;
                        a7 = __src;
                        goto LABEL_224;
                      }

                      v83 = *v68;
                      v69 = *v68;
                      a7 = __src;
                      if (++v75 == v85)
                      {
                        goto LABEL_238;
                      }

                      goto LABEL_225;
                    }

                    v130 = *v68++;
                    v69 = v130;
                    if (4096 - v126 >= 4096)
                    {
                      v129 = 4096;
                    }

                    else
                    {
                      v129 = 4096 - v126;
                    }
                  }

                  while (!v129);
LABEL_234:
                  memmove(v69, &v127[v126], v129);
                }
              }

              v82 = 4095 - v74;
              v75 = &v68[-(v82 >> 12)];
              v76 = *v75 + (~v82 & 0xFFF);
              v77 = v75;
              v78 = v76;
              if (v76 == v69)
              {
                goto LABEL_140;
              }

LABEL_151:
              while (2)
              {
                if (v71 == *v72)
                {
                  v90 = *--v72;
                  v71 = (v90 + 4096);
                  if (v78 == *v77)
                  {
                    goto LABEL_153;
                  }
                }

                else if (v78 == *v77)
                {
LABEL_153:
                  v92 = *--v77;
                  v78 = (v92 + 4096);
                }

                v91 = *--v78;
                *--v71 = v91;
                v201 = vaddq_s64(v201, xmmword_1D9DDDC00);
                if (v78 == v69)
                {
                  goto LABEL_140;
                }

                continue;
              }
            }

            v79 = &a8[-v196];
            v72 = v68;
            v71 = v69;
            do
            {
              if (v71 == *v72)
              {
                v81 = *--v72;
                v71 = (v81 + 4096);
              }

              v80 = *--v79;
              *--v71 = v80;
              v201 = vaddq_s64(v201, xmmword_1D9DDDC00);
            }

            while (v79 != __src);
            v22 = v196;
            if (v196)
            {
              goto LABEL_130;
            }

            goto LABEL_302;
          }
        }

        else
        {
          v195 = v14;
          v196 = (v17 & 0xFFF) + ((v21 - v24) << 9) - (v201.i16[0] & 0xFFF);
          if (v196 < v201.i64[1] - v196)
          {
            goto LABEL_13;
          }
        }
      }

      v34 = (v20 << 9) - 1;
      v35 = v200 - __p[1];
      if (v200 == __p[1])
      {
        v34 = 0;
      }

      v36 = v34 - v17;
      v37 = v22 >= v36;
      v38 = v22 - v36;
      if (v38 != 0 && v37)
      {
        if (v200 == __p[1])
        {
          v39 = v38 + 1;
        }

        else
        {
          v39 = v38;
        }

        if ((v39 & 0xFFF) != 0)
        {
          v40 = (v39 >> 12) + 1;
        }

        else
        {
          v40 = v39 >> 12;
        }

        if (v40 >= v23)
        {
          v41 = v23;
        }

        else
        {
          v41 = v40;
        }

        if (v40 <= v23)
        {
          v201.i64[0] -= v41 << 12;
          if (v41)
          {
            v51 = *(&v200 + 1);
            do
            {
              v52 = v18 + 8;
              v53 = *v18;
              __p[1] = v18 + 8;
              if (v19 == v51)
              {
                if (v52 <= __p[0])
                {
                  if (v51 == __p[0])
                  {
                    v56 = 1;
                  }

                  else
                  {
                    v56 = (v51 - __p[0]) >> 2;
                  }

                  if (!(v56 >> 61))
                  {
                    operator new();
                  }

LABEL_382:
                  sub_1D9D10E9C();
                }

                v54 = (((v52 - __p[0]) >> 3) + 1 + ((((v52 - __p[0]) >> 3) + 1) >> 63)) >> 1;
                v18 = &v52[-8 * v54];
                v55 = v51 - v52;
                if (v51 != v52)
                {
                  memmove(&v52[-8 * v54], v52, v51 - v52);
                }

                v19 = &v18[v55];
                __p[1] = v18;
              }

              else
              {
                v18 += 8;
              }

              *v19 = v53;
              v19 += 8;
              *&v200 = v19;
              --v41;
            }

            while (v41);
          }
        }

        else
        {
          v42 = v40 - v41;
          v43 = v35 >> 3;
          if (v40 - v41 > ((*(&v200 + 1) - __p[0]) >> 3) - (v35 >> 3))
          {
            if ((*(&v200 + 1) - __p[0]) >> 2 <= v42 + v43)
            {
              v44 = v42 + v43;
            }

            else
            {
              v44 = (*(&v200 + 1) - __p[0]) >> 2;
            }

            if (!v44)
            {
              operator new();
            }

            if (!(v44 >> 61))
            {
              operator new();
            }

            goto LABEL_382;
          }

          if (v42)
          {
            if (*(&v200 + 1) != v200)
            {
              operator new();
            }

            operator new();
          }

          v201.i64[0] -= v41 << 12;
          if (v41)
          {
            v62 = *(&v200 + 1);
            do
            {
              v63 = v18 + 8;
              v64 = *v18;
              __p[1] = v18 + 8;
              if (v19 == v62)
              {
                if (v63 <= __p[0])
                {
                  if (v62 == __p[0])
                  {
                    v67 = 1;
                  }

                  else
                  {
                    v67 = (v62 - __p[0]) >> 2;
                  }

                  if (!(v67 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_382;
                }

                v65 = (((v63 - __p[0]) >> 3) + 1 + ((((v63 - __p[0]) >> 3) + 1) >> 63)) >> 1;
                v18 = &v63[-8 * v65];
                v66 = v62 - v63;
                if (v62 != v63)
                {
                  memmove(&v63[-8 * v65], v63, v62 - v63);
                }

                v19 = &v18[v66];
                __p[1] = v18;
              }

              else
              {
                v18 += 8;
              }

              *v19 = v64;
              v19 += 8;
              *&v200 = v19;
              --v41;
            }

            while (v41);
          }
        }

        v15 = v201.i64[1];
        v17 = v201.i64[0] + v201.i64[1];
      }

      v98 = &v18[8 * (v17 >> 12)];
      if (v19 == v18)
      {
        v99 = 0;
      }

      else
      {
        v99 = (*v98 + (v17 & 0xFFF));
      }

      a7 = __src;
      v100 = v15 - v196;
      v101 = v99;
      v102 = v98;
      v103 = a8;
      if (v100 < v22)
      {
        v103 = &__src[v100];
        if (&__src[v100] == a8)
        {
          v101 = v99;
          v102 = v98;
        }

        else
        {
          v109 = &__src[v100];
          v102 = v98;
          v101 = v99;
          do
          {
            *v101++ = *v109;
            if (&v101[-*v102] == 4096)
            {
              v110 = *(v102 + 1);
              v102 += 8;
              v101 = v110;
            }

            ++v109;
            ++v201.i64[1];
          }

          while (v109 != a8);
        }

        v22 = v100;
      }

      if (v22)
      {
        v104 = &v99[-v22 - *v98];
        if (v104 >= 1)
        {
          v105 = &v98[8 * (v104 >> 12)];
          v106 = (*v105 + (v104 & 0xFFF));
          v107 = v105;
          v108 = v106;
          if (v106 != v99)
          {
            goto LABEL_207;
          }

LABEL_195:
          if (v22 >= v100)
          {
            goto LABEL_290;
          }

          v112 = *v98;
          v113 = &v99[-v100 - *v98];
          if (v113 < 1)
          {
            v122 = 4095 - v113;
            v114 = &v98[-8 * (v122 >> 12)];
            v115 = (*v114 + (~v122 & 0xFFF));
            if (v114 == v105)
            {
              goto LABEL_213;
            }

LABEL_198:
            v116 = *v105;
            if (*v105 != v106)
            {
              while (1)
              {
                v117 = (v99 - v112);
                if (v106 - v116 >= v117)
                {
                  v118 = v117;
                }

                else
                {
                  v118 = v106 - v116;
                }

                v106 -= v118;
                v99 -= v118;
                if (v118)
                {
                  memmove(v99, v106, v118);
                }

                if (v106 == v116)
                {
                  break;
                }

                v119 = *(v98 - 1);
                v98 -= 8;
                v112 = v119;
                v99 = v119 + 4096;
              }

              goto LABEL_278;
            }

            while (1)
            {
              v105 -= 8;
              if (v105 == v114)
              {
                break;
              }

              v140 = *v105;
              v141 = (*v105 + 4096);
              while (1)
              {
                v142 = (v99 - v112);
                if (v141 - v140 >= v142)
                {
                  v143 = v142;
                }

                else
                {
                  v143 = v141 - v140;
                }

                v141 -= v143;
                v99 -= v143;
                if (v143)
                {
                  memmove(v99, v141, v143);
                }

                if (v141 == v140)
                {
                  break;
                }

                v144 = *(v98 - 1);
                v98 -= 8;
                v112 = v144;
                v99 = v144 + 4096;
              }

LABEL_278:
              v112 = *v98;
              if ((*v98 + 4096) == v99)
              {
                v145 = *(v98 + 1);
                v98 += 8;
                v112 = v145;
                v99 = v145;
              }
            }

            v146 = (*v105 + 4096);
            if (v146 != v115)
            {
              v147 = *v98;
              while (1)
              {
                v148 = &v99[-v147];
                if (v146 - v115 >= v148)
                {
                  v149 = v148;
                }

                else
                {
                  v149 = v146 - v115;
                }

                v146 -= v149;
                v99 -= v149;
                if (v149)
                {
                  memmove(v99, v146, v149);
                }

                if (v146 == v115)
                {
                  break;
                }

                v150 = *(v98 - 1);
                v98 -= 8;
                v147 = v150;
                v99 = (v150 + 4096);
              }

              goto LABEL_289;
            }

LABEL_290:
            if (__src == v103)
            {
              goto LABEL_302;
            }
          }

          else
          {
            v114 = &v98[8 * (v113 >> 12)];
            v115 = (*v114 + (v113 & 0xFFF));
            if (v114 != v105)
            {
              goto LABEL_198;
            }

LABEL_213:
            if (v115 == v106)
            {
              goto LABEL_290;
            }

            while (1)
            {
              v123 = (v99 - v112);
              if (v106 - v115 >= v123)
              {
                v124 = v123;
              }

              else
              {
                v124 = v106 - v115;
              }

              v106 -= v124;
              v99 -= v124;
              if (v124)
              {
                memmove(v99, v106, v124);
              }

              if (v106 == v115)
              {
                break;
              }

              v125 = *(v98 - 1);
              v98 -= 8;
              v112 = v125;
              v99 = v125 + 4096;
            }

LABEL_289:
            if ((*v98 + 4096) != v99)
            {
              goto LABEL_290;
            }

            v162 = *(v98 + 1);
            v98 += 8;
            v99 = v162;
            if (__src == v103)
            {
              goto LABEL_302;
            }
          }

          v152 = *v98;
          v151 = v98 - 8;
          v153 = &v99[-v152];
          if (v103 - __src >= &v99[-v152])
          {
            v154 = v153;
          }

          else
          {
            v154 = v103 - __src;
          }

          v155 = &v103[-v154];
          if (v154)
          {
            goto LABEL_300;
          }

          while (1)
          {
            do
            {
              if (v155 == __src)
              {
                goto LABEL_302;
              }

              v156 = *v151;
              v151 -= 8;
              v99 = (v156 + 4096);
              if (v155 - __src >= 4096)
              {
                v154 = 4096;
              }

              else
              {
                v154 = v155 - __src;
              }

              v155 -= v154;
            }

            while (!v154);
LABEL_300:
            memmove(&v99[-v154], v155, v154);
          }
        }

        v111 = 4095 - v104;
        v105 = &v98[-8 * (v111 >> 12)];
        v106 = (*v105 + (~v111 & 0xFFF));
        v107 = v105;
        v108 = v106;
        if (v106 == v99)
        {
          goto LABEL_195;
        }

LABEL_207:
        while (2)
        {
          *v101++ = *v108;
          if (&v101[-*v102] == 4096)
          {
            v120 = *(v102 + 1);
            v102 += 8;
            v101 = v120;
            if (&(++v108)[-*v107] == 4096)
            {
LABEL_211:
              v121 = *(v107 + 1);
              v107 += 8;
              v108 = v121;
            }
          }

          else if (&(++v108)[-*v107] == 4096)
          {
            goto LABEL_211;
          }

          ++v201.i64[1];
          if (v108 == v99)
          {
            goto LABEL_195;
          }

          continue;
        }
      }

LABEL_302:
      v10 = a1;
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = a1->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      v157 = &v9[size];
      v11 = v195;
      if (v195 == &v9[size])
      {
        v12 = __dst;
        goto LABEL_327;
      }

      v158 = a2[1];
      if (*a2 == v158)
      {
        v12 = __dst;
        goto LABEL_327;
      }

      a5 = v195;
      while (1)
      {
        v159 = *a2;
        v160 = a5;
        do
        {
          if (*v160 != *v159)
          {
            break;
          }

          ++v160;
          ++v159;
          if (v160 == v157)
          {
            break;
          }
        }

        while (v159 != v158);
        if (v159 == v158)
        {
          break;
        }

        if (++a5 == v157)
        {
          a5 = &v9[size];
          v160 = &v9[size];
          goto LABEL_318;
        }
      }

      v157 = v160;
LABEL_318:
      v161 = a8;
      if (a5 != v160)
      {
        v161 = a4;
      }

      a8 = v161;
      if (a5 != v160)
      {
        a7 = a3;
      }

      v14 = v157;
      v12 = __dst;
      if (a5 == v157)
      {
        goto LABEL_327;
      }
    }
  }

  v10 = a1;
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v11 = v9;
  v12 = v9;
LABEL_327:
  v163 = sub_1D9D58758(__p, v12, v11, &v9[size]);
  v164 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
  if (v164 >= 0)
  {
    v165 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v165 = v10->__r_.__value_.__l.__size_;
  }

  if (!v201.i64[1])
  {
    if (v164 >= 0)
    {
      v172 = v10;
    }

    else
    {
      v172 = v10->__r_.__value_.__r.__words[0];
    }

    std::string::erase(v10, &v163[-v172], v172 + v165 - v163);
    goto LABEL_362;
  }

  v166 = (v201.i64[0] >> 9) & 0x7FFFFFFFFFFFF8;
  v167 = __p[1] + v166;
  if (v200 == __p[1])
  {
    goto LABEL_362;
  }

  v168 = (*v167 + (v201.i16[0] & 0xFFF));
  v169 = ((v201.i64[0] + v201.i64[1]) >> 9) & 0x7FFFFFFFFFFFF8;
  v170 = *(__p[1] + v169) + ((v201.i64[0] + v201.i64[1]) & 0xFFF);
  if (v170 == v168)
  {
    goto LABEL_362;
  }

  v171 = *v167 + ((v169 - v166) << 9) - v168 + ((v201.i16[0] + v201.i16[4]) & 0xFFF);
  if (!v171)
  {
    goto LABEL_362;
  }

  memset(&v202, 0, sizeof(v202));
  if (v168 == v170)
  {
    v173 = 0;
    v174 = 0;
    v175 = 0;
  }

  else
  {
    do
    {
      std::string::push_back(&v202, *v168++);
      if (&v168[-*v167] == 4096)
      {
        v176 = v167[1];
        ++v167;
        v168 = v176;
      }
    }

    while (v168 != v170);
    v175 = HIBYTE(v202.__r_.__value_.__r.__words[2]);
    v173 = v202.__r_.__value_.__l.__size_;
    v174 = v202.__r_.__value_.__r.__words[0];
    LOBYTE(v164) = *(&a1->__r_.__value_.__s + 23);
  }

  if ((v175 & 0x80u) == 0)
  {
    v177 = &v202;
  }

  else
  {
    v177 = v174;
  }

  if ((v175 & 0x80u) == 0)
  {
    v178 = v175;
  }

  else
  {
    v178 = v173;
  }

  if ((v164 & 0x80) == 0)
  {
    v179 = v164;
    v180 = 22;
    v181 = a1;
    if (22 - v164 >= v171)
    {
      v182 = v164 - v165;
      if (v164 == v165)
      {
        goto LABEL_355;
      }

      goto LABEL_379;
    }

LABEL_358:
    v183 = a1;
    std::string::__grow_by(a1, v180, v179 + v171 - v180, v179, v165, 0, v171);
    a1->__r_.__value_.__l.__size_ = v179 + v171;
    v181 = a1->__r_.__value_.__r.__words[0];
    v184 = v179 + v171;
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_380;
    }

    goto LABEL_359;
  }

  v179 = a1->__r_.__value_.__l.__size_;
  v180 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v180 - v179 < v171)
  {
    goto LABEL_358;
  }

  v181 = a1->__r_.__value_.__r.__words[0];
  v182 = v179 - v165;
  if (v179 != v165)
  {
LABEL_379:
    memmove(v181 + v165 + v171, v181 + v165, v182);
    v183 = a1;
    v184 = v179 + v171;
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_380;
    }

LABEL_359:
    *(&v183->__r_.__value_.__s + 23) = v184 & 0x7F;
    v181->__r_.__value_.__s.__data_[v184] = 0;
    if (!v178)
    {
      goto LABEL_361;
    }

    goto LABEL_360;
  }

LABEL_355:
  v183 = a1;
  v184 = v165 + v171;
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_359;
  }

LABEL_380:
  v183->__r_.__value_.__l.__size_ = v184;
  v181->__r_.__value_.__s.__data_[v184] = 0;
  if (v178)
  {
LABEL_360:
    memmove(v181 + v165, v177, v178);
  }

LABEL_361:
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__data_);
    v185 = __p[1];
    v186 = v200;
    v201.i64[1] = 0;
    v187 = (v200 - __p[1]) >> 3;
    if (v187 < 3)
    {
      goto LABEL_364;
    }

    goto LABEL_363;
  }

LABEL_362:
  v185 = __p[1];
  v186 = v200;
  v201.i64[1] = 0;
  v187 = (v200 - __p[1]) >> 3;
  if (v187 < 3)
  {
    goto LABEL_364;
  }

  do
  {
LABEL_363:
    operator delete(*v185);
    v186 = v200;
    v185 = (__p[1] + 8);
    __p[1] = v185;
    v187 = (v200 - v185) >> 3;
  }

  while (v187 > 2);
LABEL_364:
  if (v187 == 1)
  {
    v188 = 2048;
    goto LABEL_368;
  }

  if (v187 == 2)
  {
    v188 = 4096;
LABEL_368:
    v201.i64[0] = v188;
  }

  if (v185 != v186)
  {
    do
    {
      v189 = *v185++;
      operator delete(v189);
    }

    while (v185 != v186);
    if (v200 != __p[1])
    {
      *&v200 = v200 + ((__p[1] - v200 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}