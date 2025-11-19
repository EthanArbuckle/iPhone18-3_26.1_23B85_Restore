void sub_34F9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a23);
  if (a16)
  {
    operator delete(a16);
    if (!a15)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!a15)
  {
    goto LABEL_5;
  }

  operator delete(a15);
  _Unwind_Resume(a1);
}

uint64_t sub_34FA80(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

unint64_t sub_34FA94@<X0>(uint64_t a1@<X0>, float **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 255;
  *(a5 + 18) = 0;
  *(a5 + 24) = 0;
  v9 = (a5 + 24);
  *(a5 + 32) = 0;
  *(a5 + 40) = xmmword_2291150;
  *(a5 + 56) = 0;
  *(a5 + 58) = 0;
  v10 = *(a1 + 16);
  v11 = a2[1] + *a2;
  v102 = *a2;
  v103 = v11;
  v104 = 0x2C700000000;
  result = sub_32BB58(&v102);
  if ((result & 1) == 0)
  {
    return result;
  }

  v96 = a1;
  v13 = 0;
  v14 = 0;
  v15 = -1.0;
  v98 = a4;
  do
  {
    if (v104 > 9)
    {
      if (v104 == 10)
      {
        v21 = sub_32BDF0(&v102, v103);
        v22 = v102;
        v23 = v102 + v21;
        v102 = v23;
        if (v23 > v103)
        {
LABEL_213:
          exception = __cxa_allocate_exception(0x40uLL);
          v95 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        v107 = v22;
        v108 = v23;
        v109.__locale_ = 0x2C700000000;
        v24 = sub_32BB58(&v107);
        if (v24)
        {
          while (LODWORD(v109.__locale_) != 1)
          {
            sub_32BC3C(&v107);
            if (!sub_32BB58(&v107))
            {
              *(a5 + 56) = 0;
              goto LABEL_4;
            }
          }

          LOWORD(v24) = sub_32BDF0(&v107, v108);
        }

        *(a5 + 56) = v24;
      }

      else
      {
        if (v104 != 11)
        {
LABEL_3:
          sub_32BC3C(&v102);
          goto LABEL_4;
        }

        v20 = *v102++;
        if (v102 > v103)
        {
LABEL_212:
          v92 = __cxa_allocate_exception(0x40uLL);
          v93 = sub_2D390(v92, "Skipping over bytes exceeded message length.", 0x2CuLL);
        }

        *(a5 + 48) = v20 * 60.0;
      }
    }

    else
    {
      if (v104 != 1)
      {
        if (v104 != 2)
        {
          goto LABEL_3;
        }

        v16 = *v102++;
        if (v102 > v103)
        {
          goto LABEL_212;
        }

        if (v16 > 0.0 && v16 <= 250.0)
        {
          v25 = roundf(v16 * 100.0) / 100.0;
          if (v25 <= v10)
          {
            v15 = v10;
          }

          else
          {
            v15 = v25;
          }

LABEL_31:
          *(a5 + 40) = v15;
          goto LABEL_4;
        }

        v15 = -1.0;
        if (!sub_7E7E4(3u))
        {
          goto LABEL_31;
        }

        sub_19594F8(&v107);
        sub_4A5C(&v107, "Encountered invalid speed ", 26);
        v18 = std::ostream::operator<<();
        sub_4A5C(v18, ".", 1);
        if ((v117 & 0x10) != 0)
        {
          v26 = v116;
          v27 = &v112;
          if (v116 < v113)
          {
            v116 = v113;
            v26 = v113;
            v27 = &v112;
          }
        }

        else
        {
          if ((v117 & 8) == 0)
          {
            v19 = 0;
            v106 = 0;
LABEL_43:
            *(&__dst + v19) = 0;
            sub_7E854(&__dst, 3u);
            a4 = v98;
            if (v106 < 0)
            {
              operator delete(__dst);
            }

            v107 = v100;
            *(&v107 + *(v100 - 3)) = v99;
            if (v115 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v109);
            std::ostream::~ostream();
            std::ios::~ios();
            *(a5 + 40) = -1.0;
            goto LABEL_4;
          }

          v26 = v111;
          v27 = v110;
        }

        v28 = *v27;
        v19 = v26 - *v27;
        if (v19 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v19 >= 0x17)
        {
          operator new();
        }

        v106 = v26 - *v27;
        if (v19)
        {
          memmove(&__dst, v28, v19);
        }

        goto LABEL_43;
      }

      v14 = sub_32BDF0(&v102, v103);
      v13 = v102;
      v102 = &v14[v102];
      if (v102 > v103)
      {
        goto LABEL_213;
      }
    }

LABEL_4:
    result = sub_32BB58(&v102);
  }

  while ((result & 1) != 0);
  v101[0] = v13;
  v101[1] = v14;
  if (!v13)
  {
    return result;
  }

  v29 = (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v30 = v15 < 0.0 && ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v15 >= 0.0)
  {
    v29 = 0;
  }

  v31 = (*&v15 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v29;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v31 = 1;
  }

  if ((v31 | v30))
  {
    return result;
  }

  v102 = v13;
  v103 = &v14[v13];
  v104 = 0x2C700000000;
  result = sub_32BB58(&v102);
  v32 = 0;
  if (result)
  {
    v97 = 1;
    v33 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      if (v104 > 5)
      {
        if (v104 == 6)
        {
          v33 = sub_32C014(&v102, v103);
          goto LABEL_63;
        }

        if (v104 == 7)
        {
          v32 = sub_3360D8(&v102);
          goto LABEL_63;
        }

        if (v104 == 8 && !*(a5 + 8))
        {
          v34 = sub_32C014(&v102, v103);
          if (v34)
          {
            if (v34 != 0x7FFFFFFFFFFFFFFFLL && (v34 >= 0 ? (v35 = v34) : (v35 = -v34), (v36 = v32, v37 = v34, v38 = sub_2D54A0(**(v96 + 8), 22, v35), v40 = v37, v32 = v36, HIDWORD(v38)) ? (v41 = v39 == 0) : (v41 = 0), v41))
            {
              *(&v60 + 1) = v38 & 0x3FFFFFFF | ((v40 > 0) << 30);
              *&v60 = v38;
              *(a5 + 8) = v60 >> 32;
            }

            else
            {
              v97 = 0;
            }
          }

          goto LABEL_63;
        }

LABEL_62:
        sub_32BC3C(&v102);
        goto LABEL_63;
      }

      if (v104 != 3)
      {
        break;
      }

      v45 = *v102++;
      if (v102 > v103)
      {
        goto LABEL_212;
      }

      if (v45 >= 0.0)
      {
        v47 = v45 * 100.0;
        if (v47 >= 0.0)
        {
          v48 = v45 * 100.0;
          if (v47 < 4.50359963e15)
          {
            v49 = (v47 + v47) + 1;
LABEL_103:
            v48 = (v49 >> 1);
          }
        }

        else
        {
          v48 = v45 * 100.0;
          if (v47 > -4.50359963e15)
          {
            v49 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
            goto LABEL_103;
          }
        }

        if (v48 >= 9.22337204e18)
        {
          v54 = 0x7FFFFFFFFFFFFFFELL;
        }

        else
        {
          if (v47 >= 0.0)
          {
            if (v47 < 4.50359963e15)
            {
              v53 = (v47 + v47) + 1;
LABEL_119:
              v47 = (v53 >> 1);
            }
          }

          else if (v47 > -4.50359963e15)
          {
            v53 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
            goto LABEL_119;
          }

          v54 = v47;
        }

        *v9 = v54;
        goto LABEL_63;
      }

      if (sub_7E7E4(1u))
      {
        sub_19594F8(&v107);
        sub_4A5C(&v107, "Encountered invalid start offset ", 33);
        v46 = std::ostream::operator<<();
        sub_4A5C(v46, ".", 1);
        if ((v117 & 0x10) != 0)
        {
          v56 = v116;
          v57 = &v112;
          if (v116 < v113)
          {
            v116 = v113;
            v56 = v113;
            v57 = &v112;
          }
        }

        else
        {
          if ((v117 & 8) == 0)
          {
            v44 = 0;
            v106 = 0;
            goto LABEL_146;
          }

          v56 = v111;
          v57 = v110;
        }

        v61 = *v57;
        v44 = v56 - *v57;
        if (v44 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v44 >= 0x17)
        {
          operator new();
        }

        v106 = v56 - *v57;
        if (v44)
        {
          memmove(&__dst, v61, v44);
        }

        goto LABEL_146;
      }

LABEL_63:
      result = sub_32BB58(&v102);
      if ((result & 1) == 0)
      {
        goto LABEL_152;
      }
    }

    if (v104 != 4)
    {
      goto LABEL_62;
    }

    v42 = *v102++;
    if (v102 > v103)
    {
      goto LABEL_212;
    }

    if (v42 < 0.0)
    {
      if (sub_7E7E4(1u))
      {
        sub_19594F8(&v107);
        sub_4A5C(&v107, "Encountered invalid end offset ", 31);
        v43 = std::ostream::operator<<();
        sub_4A5C(v43, ".", 1);
        if ((v117 & 0x10) != 0)
        {
          v58 = v116;
          v59 = &v112;
          if (v116 < v113)
          {
            v116 = v113;
            v58 = v113;
            v59 = &v112;
          }
        }

        else
        {
          if ((v117 & 8) == 0)
          {
            v44 = 0;
            v106 = 0;
LABEL_146:
            *(&__dst + v44) = 0;
            sub_7E854(&__dst, 1u);
            if (v106 < 0)
            {
              operator delete(__dst);
            }

            v107 = v100;
            *(&v107 + *(v100 - 3)) = v99;
            if (v115 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v109);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_63;
          }

          v58 = v111;
          v59 = v110;
        }

        v62 = *v59;
        v44 = v58 - *v59;
        if (v44 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v44 >= 0x17)
        {
          operator new();
        }

        v106 = v58 - *v59;
        if (v44)
        {
          memmove(&__dst, v62, v44);
        }

        a4 = v98;
        goto LABEL_146;
      }

      goto LABEL_63;
    }

    v50 = v42 * 100.0;
    if (v50 >= 0.0)
    {
      v51 = v42 * 100.0;
      if (v50 < 4.50359963e15)
      {
        v52 = (v50 + v50) + 1;
LABEL_111:
        v51 = (v52 >> 1);
      }
    }

    else
    {
      v51 = v42 * 100.0;
      if (v50 > -4.50359963e15)
      {
        v52 = (v50 + v50) - 1 + (((v50 + v50) - 1) >> 63);
        goto LABEL_111;
      }
    }

    if (v51 < 9.22337204e18)
    {
      if (v50 >= 0.0)
      {
        if (v50 < 4.50359963e15)
        {
          v55 = (v50 + v50) + 1;
LABEL_124:
          v50 = (v55 >> 1);
        }
      }

      else if (v50 > -4.50359963e15)
      {
        v55 = (v50 + v50) - 1 + (((v50 + v50) - 1) >> 63);
        goto LABEL_124;
      }

      *(a5 + 32) = v50;
      goto LABEL_63;
    }

    *(a5 + 32) = 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_63;
  }

  v97 = 1;
  v33 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_152:
  v63 = v32;
  v65 = (a4 + 16);
  v64 = *(a4 + 16);
  if (!v64)
  {
LABEL_158:
    operator new();
  }

  v66 = *(a4 + 16);
  while (1)
  {
    while (1)
    {
      v67 = v66;
      v68 = *(v66 + 28);
      if (v68 <= a3)
      {
        break;
      }

      v66 = *v67;
      if (!*v67)
      {
        goto LABEL_158;
      }
    }

    if (v68 >= a3)
    {
      break;
    }

    v66 = v67[1];
    if (!v66)
    {
      goto LABEL_158;
    }
  }

  ++*(v67 + 9);
  v69 = v32;
  while (1)
  {
    while (1)
    {
      v70 = v64;
      v71 = *(v64 + 28);
      if (v71 <= a3)
      {
        break;
      }

      v64 = *v70;
      if (!*v70)
      {
        goto LABEL_164;
      }
    }

    if (v71 >= a3)
    {
      break;
    }

    v64 = v70[1];
    if (!v64)
    {
LABEL_164:
      operator new();
    }
  }

  *(v70 + 11) += v69;
  if (v33 == 0x7FFFFFFFFFFFFFFFLL || (v33 >= 0 ? (v72 = v33) : (v72 = -v33), (result = sub_2D54A0(**(v96 + 8), 22, v72), HIDWORD(result)) ? (v74 = v73 == 0) : (v74 = 0), !v74))
  {
    v75 = 0;
    *a5 = 0;
    v76 = v97;
    goto LABEL_174;
  }

  *(&v85 + 1) = result & 0x3FFFFFFF | ((v33 > 0) << 30);
  *&v85 = result;
  v84 = v85 >> 32;
  *a5 = v84;
  v76 = v97;
  if ((v97 & 1) == 0)
  {
    v75 = 1;
LABEL_174:
    if (v33 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v75 = 1;
    }

    v77 = v75 & v76 ^ 1;
    v78 = *v65;
    if (!*v65)
    {
LABEL_182:
      operator new();
    }

    v79 = *v65;
    while (1)
    {
      while (1)
      {
        v80 = v79;
        v81 = *(v79 + 28);
        if (v81 <= a3)
        {
          break;
        }

        v79 = *v80;
        if (!*v80)
        {
          goto LABEL_182;
        }
      }

      if (v81 >= a3)
      {
        break;
      }

      v79 = v80[1];
      if (!v79)
      {
        goto LABEL_182;
      }
    }

    *(v80 + 14) += v77;
    if (!v78)
    {
LABEL_189:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v82 = v78;
        v83 = *(v78 + 28);
        if (v83 <= a3)
        {
          break;
        }

        v78 = *v82;
        if (!*v82)
        {
          goto LABEL_189;
        }
      }

      if (v83 >= a3)
      {
        break;
      }

      v78 = v82[1];
      if (!v78)
      {
        goto LABEL_189;
      }
    }

    *(v82 + 15) += v33 == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_191;
  }

  if (v63)
  {
    result = sub_350B88(v96, v101, v84, a3, a4);
    if ((result & 1) == 0)
    {
LABEL_191:
      *a5 = 0;
      return result;
    }
  }

  v86 = *v65;
  if (!*v65)
  {
LABEL_202:
    operator new();
  }

  v87 = *v65;
  while (1)
  {
    while (1)
    {
      v88 = v87;
      v89 = *(v87 + 28);
      if (v89 <= a3)
      {
        break;
      }

      v87 = *v88;
      if (!*v88)
      {
        goto LABEL_202;
      }
    }

    if (v89 >= a3)
    {
      break;
    }

    v87 = v88[1];
    if (!v87)
    {
      goto LABEL_202;
    }
  }

  ++*(v88 + 10);
  if (!v86)
  {
LABEL_209:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v90 = v86;
      v91 = *(v86 + 28);
      if (v91 <= a3)
      {
        break;
      }

      v86 = *v90;
      if (!*v90)
      {
        goto LABEL_209;
      }
    }

    if (v91 >= a3)
    {
      break;
    }

    v86 = v90[1];
    if (!v86)
    {
      goto LABEL_209;
    }
  }

  *(v90 + 12) += v69;
  return result;
}

uint64_t sub_350B88(uint64_t a1, char **a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  sub_7E9A4(v24);
  v10 = &a2[1][*a2];
  v21 = *a2;
  v22 = v10;
  v23 = 0x2C700000000;
  v25[0] = v21;
  v25[1] = v10;
  v26 = 0x2C700000000;
  if (sub_32BB58(v25))
  {
    v11 = 0;
    do
    {
      while (v26 != 2)
      {
        sub_32BC3C(v25);
        if (!sub_32BB58(v25))
        {
          goto LABEL_7;
        }
      }

      ++v11;
      sub_32BC3C(v25);
    }

    while (sub_32BB58(v25));
LABEL_7:
    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1794();
    }
  }

  while (sub_32BB58(&v21))
  {
    if (v23 == 2)
    {
      sub_32C014(&v21, v22);
      operator new();
    }

    sub_32BC3C(&v21);
  }

  sub_351010(*(a1 + 8), a3, (a1 + 24));
  if (*(a1 + 32) == *(a1 + 24))
  {
    v12 = sub_7EA60(v24);
    LODWORD(v13) = *(a5 + 36);
    *(a5 + 36) = (v12 + v13);
    return 1;
  }

  else
  {
    v15 = sub_7EA60(v24);
    v16 = *(a5 + 16);
    LODWORD(v17) = *(a5 + 36);
    *(a5 + 36) = (v15 + v17);
    if (!v16)
    {
LABEL_23:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v18 = v16;
        v19 = *(v16 + 28);
        if (v19 <= a4)
        {
          break;
        }

        v16 = *v18;
        if (!*v18)
        {
          goto LABEL_23;
        }
      }

      if (v19 >= a4)
      {
        break;
      }

      v16 = v18[1];
      if (!v16)
      {
        goto LABEL_23;
      }
    }

    v14 = 0;
    ++*(v18 + 13);
  }

  return v14;
}

void sub_350FD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

int *sub_351010(int *result, unint64_t a2, unint64_t *a3)
{
  v5 = *a3;
  a3[1] = *a3;
  v6 = HIDWORD(a2);
  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = result;
    result = sub_31D994((result + 4), a2, 1);
    if (!result)
    {
      return result;
    }

    v8 = (result - *result);
    if (*v8 < 5u)
    {
      return result;
    }

    v9 = v8[2];
    if (!v9)
    {
      return result;
    }

    v10 = (result + v9 + *(result + v9));
    if (*v10 <= (v6 & 0x3FFFFFFF))
    {
      return result;
    }

    v11 = (&v10[(v6 & 0x3FFFFFFF) + 1] + v10[(v6 & 0x3FFFFFFF) + 1]);
    v12 = (v11 - *v11);
    v13 = *v12;
    if (v13 >= 0xB)
    {
      if (!v12[5] || (v14 = *(v7 + 3889), v14 == 254))
      {
LABEL_24:
        v23 = v12[2];
        if (v12[2])
        {
          v24 = a2 >> 62;
          if (a2 >> 62 || v13 < 0xD || (v25 = v12[6]) == 0 || (*(v11 + v25) & 1) == 0)
          {
            if (*(v11 + v23 + *(v11 + v23)) > ((a3[2] - *a3) >> 3))
            {
              operator new();
            }

            v26 = (v11 - *v11);
            if (*v26 < 5u)
            {
              v27 = 0;
            }

            else
            {
              v27 = v26[2];
              if (v27)
              {
                v27 = (v27 + v11 + *(v27 + v11));
              }
            }

            v28 = *v27;
            v39 = a3;
            if (v28)
            {
              v29 = 8 * v28;
              v30 = (v27 + 1);
              do
              {
                v31 = *v30++;
                LODWORD(v38) = v31;
                WORD2(v38) = WORD2(v31);
                BYTE6(v38) = (v24 != 0) != ((v31 & 0xFF000000000000) != 0);
                result = sub_2B5858(&v39, &v38);
                v29 -= 8;
              }

              while (v29);
            }

            if (!v24)
            {
              v33 = *a3;
              v32 = a3[1];
              if (*a3 != v32)
              {
                v34 = (v32 - 8);
                if (v34 > v33)
                {
                  v35 = v33 + 8;
                  do
                  {
                    v36 = *(v35 - 8);
                    v37 = *v34;
                    *(v35 - 5) = *(v34 + 3);
                    *(v35 - 8) = v37;
                    *v34 = v36;
                    *(v34 + 6) = BYTE6(v36);
                    *(v34 + 2) = WORD2(v36);
                    v34 -= 2;
                    v21 = v35 >= v34;
                    v35 += 8;
                  }

                  while (!v21);
                }
              }
            }
          }
        }

        return result;
      }

      v15 = (v11 + v12[5] + *(v11 + v12[5]));
      v16 = *v15;
      if (!v16)
      {
        return result;
      }

      for (i = (v15 + 1); v14 != *i; ++i)
      {
        if (!--v16)
        {
          return result;
        }
      }
    }

    if (v13 < 5)
    {
      return result;
    }

    goto LABEL_24;
  }

  v18 = a3[2];
  if (v5 >= v18)
  {
    v19 = v18 - v5;
    v20 = v19 >> 2;
    if ((v19 >> 2) <= 1)
    {
      v20 = 1;
    }

    v21 = v19 >= 0x7FFFFFFFFFFFFFF8;
    v22 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v20;
    }

    if (!(v22 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  *v5 = a2;
  *(v5 + 4) = WORD2(a2);
  *(v5 + 6) = (a2 & 0x4000000000000000) == 0;
  a3[1] = v5 + 8;
  return result;
}

void sub_35136C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_3513BC(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_17:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_17;
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    do
    {
      v8 = *v4;
      if (*(v4 + 63) < 0)
      {
        operator delete(v4[5]);
        if (*(v4 + 39) < 0)
        {
LABEL_23:
          operator delete(v4[2]);
        }
      }

      else if (*(v4 + 39) < 0)
      {
        goto LABEL_23;
      }

      operator delete(v4);
      v4 = v8;
    }

    while (v8);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_3514EC(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_12:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_12;
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t **sub_351584(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_56D1C(v2);
    operator delete();
  }

  return a1;
}

void sub_3515D8(uint64_t a1, const void **a2, uint64_t a3, _DWORD *a4)
{
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  if (sub_329CC(a4))
  {
    *(&v33.__r_.__value_.__s + 23) = 0;
    v33.__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    sub_34C58(a4, &v33);
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (byte_278F1FF >= 0)
  {
    v8 = byte_278F1FF;
  }

  else
  {
    v8 = qword_278F1F0;
  }

  if (v8 + v7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v8 + v7 > 0x16)
  {
    operator new();
  }

  memset(&__dst, 0, sizeof(__dst));
  *(&__dst.__r_.__value_.__s + 23) = v8 + v7;
  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(&__dst, v9, v7);
  }

  if (v8)
  {
    if (byte_278F1FF >= 0)
    {
      v10 = &qword_278F1E8;
    }

    else
    {
      v10 = qword_278F1E8;
    }

    memmove(&__dst + v7, v10, v8);
  }

  __dst.__r_.__value_.__s.__data_[v7 + v8] = 0;
  v11 = std::string::append(&__dst, "/", 1uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  v16 = std::string::append(&v27, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (size + 6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (size + 6 > 0x16)
    {
      operator new();
    }

    v29 = 0;
    v30 = 0;
    v28 = 0x3D786F62623FLL;
    HIBYTE(v30) = size + 6;
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v33;
    }

    else
    {
      v20 = v33.__r_.__value_.__r.__words[0];
    }

    memmove(&v28 + 6, v20, size);
    *(&v28 + size + 6) = 0;
    v19 = HIBYTE(v30);
  }

  else
  {
    v19 = 0;
    HIBYTE(v30) = 0;
    LOBYTE(v28) = 0;
  }

  if ((v19 & 0x80u) == 0)
  {
    v21 = &v28;
  }

  else
  {
    v21 = v28;
  }

  if ((v19 & 0x80u) == 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = v29;
  }

  v23 = std::string::append(&__p, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v32 = v23->__r_.__value_.__r.__words[2];
  v31 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_52:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_53:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_58:
    operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_54:
    sub_56B7C();
  }

LABEL_57:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_54;
  }

  goto LABEL_58;
}

void sub_351E14(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a9);
  sub_3514EC(v52 - 240);
  sub_351584((v52 - 160));
  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  if (*(v52 - 81) < 0)
  {
    operator delete(*(v52 - 104));
  }

  __cxa_begin_catch(a1);
  if (*(v51 + 23) < 0)
  {
    **v51 = 0;
    *(v51 + 8) = 0;
  }

  else
  {
    *v51 = 0;
    *(v51 + 23) = 0;
  }

  __cxa_end_catch();
  JUMPOUT(0x351BF8);
}

_BYTE *sub_351F94(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_3520DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_3520F8(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_352240(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_35225C(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, (a1[1] - *a1) >> 4);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 16 * a2;
}

void sub_352390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_352470(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_3525AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3525E4(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 176));
  std::mutex::~mutex((a1 + 112));
  std::mutex::~mutex((a1 + 48));
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = *(a1 + 8);
    v8 = *a1;
    if (v7 != v6)
    {
      do
      {
        std::thread::~thread(v7 - 1);
      }

      while (v7 != v6);
      v8 = *a1;
    }

    *(a1 + 8) = v6;
    operator delete(v8);
  }

  return a1;
}

void sub_352708(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_352764(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v10 = &v4[2 * a2];
      do
      {
        v11 = a3[1];
        *v4 = *a3;
        v4[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v4 += 2;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      sub_1794();
    }

    v8 = v5 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 16 * v6;
    v13 = 16 * v6 + 16 * a2;
    v14 = (16 * v6);
    do
    {
      v15 = a3[1];
      *v14 = *a3;
      v14[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v14 += 2;
    }

    while (v14 != v13);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v12 - v17;
    memcpy((v12 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t **sub_3528E8(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_AAD8(&v17, v7, v8);
  *(a2 + 8) = v9;
  result = sub_352A30(a1, v9, v4);
  if (!result)
  {
    v11 = a1[1];
    v12 = *(a2 + 8);
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v11)
      {
        v12 %= *&v11;
      }
    }

    else
    {
      v12 &= *&v11 - 1;
    }

    v14 = *a1;
    v15 = *(*a1 + 8 * v12);
    if (v15)
    {
      *a2 = *v15;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v14 + 8 * v12) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_15;
      }

      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }

        v15 = (v14 + 8 * v16);
      }

      else
      {
        v15 = (v14 + 8 * (v16 & (*&v11 - 1)));
      }
    }

    *v15 = a2;
LABEL_15:
    ++a1[3];
    return a2;
  }

  return result;
}

uint64_t **sub_352A30(uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_42;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    if (v4 <= a2)
    {
      v7 = a2 % v4;
    }

    else
    {
      v7 = a2;
    }

    v8 = *(*a1 + 8 * v7);
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v7 = (v4 - 1) & a2;
    v8 = *(*a1 + 8 * v7);
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  v9 = *v8;
  if (*v8)
  {
    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = a3[1];
    }

    if (v10 >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (v6.u32[0] < 2uLL)
    {
      while (1)
      {
        v13 = v9[1];
        if (v13 == a2)
        {
          v14 = *(v9 + 39);
          v15 = v14;
          if (v14 < 0)
          {
            v14 = v9[3];
          }

          if (v14 == v11)
          {
            v16 = v15 >= 0 ? (v9 + 2) : v9[2];
            if (!memcmp(v16, v12, v11))
            {
              return v9;
            }
          }
        }

        else if ((v13 & (v4 - 1)) != v7)
        {
          goto LABEL_42;
        }

        v9 = *v9;
        if (!v9)
        {
          goto LABEL_42;
        }
      }
    }

    do
    {
      v17 = v9[1];
      if (v17 == a2)
      {
        v18 = *(v9 + 39);
        v19 = v18;
        if (v18 < 0)
        {
          v18 = v9[3];
        }

        if (v18 == v11)
        {
          v20 = v19 >= 0 ? (v9 + 2) : v9[2];
          if (!memcmp(v20, v12, v11))
          {
            return v9;
          }
        }
      }

      else
      {
        if (v17 >= v4)
        {
          v17 %= v4;
        }

        if (v17 != v7)
        {
          break;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

LABEL_42:
  v21 = (*(a1 + 24) + 1);
  v22 = *(a1 + 32);
  if (v4 && (v22 * v4) >= v21)
  {
    return 0;
  }

  v23 = 1;
  if (v4 >= 3)
  {
    v23 = (v4 & (v4 - 1)) != 0;
  }

  v24 = v23 | (2 * v4);
  v25 = vcvtps_u32_f32(v21 / v22);
  if (v24 <= v25)
  {
    prime = v25;
  }

  else
  {
    prime = v24;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v4 = *(a1 + 8);
  }

  if (prime <= v4)
  {
    if (prime >= v4)
    {
      return 0;
    }

    v27 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v4 < 3 || (v28 = vcnt_s8(v4), v28.i16[0] = vaddlv_u8(v28), v28.u32[0] > 1uLL))
    {
      v30 = prime;
      v31 = std::__next_prime(v27);
      if (v30 <= v31)
      {
        prime = v31;
      }

      else
      {
        prime = v30;
      }

      if (prime >= v4)
      {
        return 0;
      }
    }

    else
    {
      v29 = 1 << -__clz(v27 - 1);
      if (v27 >= 2)
      {
        v27 = v29;
      }

      if (prime <= v27)
      {
        prime = v27;
      }

      if (prime >= v4)
      {
        return 0;
      }
    }
  }

  sub_B07C(a1, prime);
  return 0;
}

void sub_352E50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AB28(va);
  _Unwind_Resume(a1);
}

void sub_352E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_2CD04(&xmmword_278F200);
  sub_1AB28(va1);
  sub_1AB28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_352E94(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 40);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_352FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_353010(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_35314C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_353184(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_3532B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_746A0(&a11);
  *(v11 + 8) = v12;
  sub_99B5C(&a9);
  _Unwind_Resume(a1);
}

void sub_3532D0(char ***a1, char **a2, char **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          sub_35354C(v8, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 2));
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    if (v15 != v8)
    {
      v22 = v15;
      do
      {
        v24 = *(v22 - 3);
        v22 -= 24;
        v23 = v24;
        if (v24)
        {
          *(v15 - 2) = v23;
          operator delete(v23);
        }

        v15 = v22;
      }

      while (v22 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    if (v15 != v8)
    {
      v17 = v15 - v8;
      v18 = a2;
      do
      {
        if (v18 != v8)
        {
          sub_35354C(v8, *v18, v18[1], 0xAAAAAAAAAAAAAAABLL * ((v18[1] - *v18) >> 2));
        }

        v18 += 3;
        v8 += 3;
        v17 -= 24;
      }

      while (v17);
      v15 = a1[1];
    }

    a1[1] = sub_53224(a1, (v5 + v16), a3, v15);
  }
}

char *sub_35354C(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2) >= a4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t **sub_3536DC(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v25, a2, v5);
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
        if (v20 == v8)
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
      if (v16 == v8)
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

uint64_t **sub_353894(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v24, a2, v5);
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

void sub_353C9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

void sub_353CB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_353CC8(uint64_t a1)
{
  sub_360988(a1 + 3896);
  v2 = *(a1 + 24);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_353D94(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_3603F0(a1, &v14);
  v5 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_36059C((a1 + 7824), a2, 254);
  v6 = a2[1];
  *&v13 = *a2;
  *(&v13 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_36077C(a1 + 12488, &v13, 0, 0);
  v7 = *(&v13 + 1);
  if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16376) = v9;
  *(a1 + 0x4000) = v8;
  v10 = (a1 + 16424);
  v11 = 160;
  do
  {
    *(v10 - 8) = 0;
    *(v10 - 2) = 0;
    *(v10 - 3) = 0;
    *v10 = 0;
    v10 += 6;
    v11 -= 2;
  }

  while (v11);
  *(a1 + 20232) = 0u;
  v12 = *a2;
  *(a1 + 20248) = -1;
  if (v12)
  {
    LOBYTE(v12) = sub_2D5658(v12);
  }

  *(a1 + 20252) = v12;
  operator new();
}

void sub_3551A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_1A104((v35 + 20960));
  v37 = *(v35 + 20928);
  if (v37)
  {
    *(v35 + 20936) = v37;
    operator delete(v37);
  }

  sub_321B00(v35 + 20472);
  sub_3874(v35 + 20424);
  v38 = *(v35 + 20280);
  if (v38)
  {
    *(v35 + 20288) = v38;
    operator delete(v38);
  }

  sub_1F1A8(v35 + 16376);
  sub_1F1A8(v35 + 12488);
  sub_353CC8(v35 + 7824);
  sub_360B9C(v35);
  _Unwind_Resume(a1);
}

void sub_3555E4(uint64_t a1, uint64_t a2)
{
  v3 = *a2 + *(a2 + 8);
  *&v32 = *a2;
  *(&v32 + 1) = v3;
  v33 = 0x2C700000000;
  if (sub_32CCA4(&v32, 5))
  {
    v4 = (*a2 + *(a2 + 8));
    __p = *a2;
    v20 = v4;
    v21 = 0x2C700000000;
    if (sub_32BB58(&__p))
    {
      v5 = "Parsed invalid tag.";
      while (1)
      {
        v6 = v21;
        while (v6 != 5)
        {
          sub_32BC3C(&__p);
          if (__p >= v20)
          {
            goto LABEL_28;
          }

          v7 = sub_32BDF0(&__p, v20);
          v6 = v7 >> 3;
          LODWORD(v21) = v7 >> 3;
          if (v7 < 8)
          {
LABEL_45:
            v8 = 19;
            goto LABEL_47;
          }

          v8 = 19;
          if ((v7 - 152000) >> 6 <= 0x7C)
          {
            goto LABEL_47;
          }

          HIDWORD(v21) = v7 & 7;
          if (HIDWORD(v21) >= 3 && (v7 & 7) != 5)
          {
LABEL_46:
            v5 = "Unknown wire type.";
            v8 = 18;
            goto LABEL_47;
          }
        }

        v9 = sub_32BDF0(&__p, v20);
        v10 = __p;
        v11 = __p + v9;
        __p = v11;
        if (v11 > v20)
        {
          v5 = "Sub-message length of field exceeded past the end of the message.";
          v8 = 65;
LABEL_47:
          exception = __cxa_allocate_exception(0x40uLL);
          v18 = sub_2D390(exception, v5, v8);
        }

        __dst = v10;
        v35 = v11;
        v36 = 0x2C700000000;
        if (sub_32BB58(&__dst))
        {
          break;
        }

LABEL_22:
        if (!sub_32BB58(&__p))
        {
          goto LABEL_28;
        }
      }

      v12 = v36;
      while (v12 != 3)
      {
        sub_32BC3C(&__dst);
        if (__dst >= v35)
        {
          goto LABEL_22;
        }

        v13 = sub_32BDF0(&__dst, v35);
        v12 = v13 >> 3;
        LODWORD(v36) = v13 >> 3;
        if (v13 < 8)
        {
          goto LABEL_45;
        }

        v8 = 19;
        if ((v13 - 152000) >> 6 < 0x7D)
        {
          goto LABEL_47;
        }

        HIDWORD(v36) = v13 & 7;
        if (HIDWORD(v36) >= 3 && (v13 & 7) != 5)
        {
          goto LABEL_46;
        }
      }
    }

LABEL_28:
    operator new();
  }

  if (!sub_7E7E4(1u))
  {
LABEL_42:
    operator new();
  }

  sub_19594F8(v22);
  sub_4A5C(v22, "Got an empty traffic snapshot.", 30);
  if ((v31 & 0x10) != 0)
  {
    v15 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v15 = v27;
    }

    v16 = v26;
    v14 = v15 - v26;
    if ((v15 - v26) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v14 = 0;
      HIBYTE(v21) = 0;
LABEL_37:
      *(&__p + v14) = 0;
      sub_7E854(&__p, 1u);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }

      std::locale::~locale(&v23);
      std::ostream::~ostream();
      std::ios::~ios();
      goto LABEL_42;
    }

    v16 = v24;
    v14 = v25 - v24;
    if ((v25 - v24) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_44:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v21) = v14;
  if (v14)
  {
    memmove(&__p, v16, v14);
  }

  goto LABEL_37;
}

void sub_357058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  sub_1959728(&a53);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_36293C(v58);
  if (a2 == 2)
  {
    v62 = __cxa_begin_catch(a1);
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&a53);
      v63 = sub_4A5C(&a53, "Exception caught while trying to parse a snapshot: ", 51);
      v64 = sub_2D51C(v62);
      v65 = strlen(v64);
      v66 = sub_4A5C(v63, v64, v65);
      v67 = sub_4A5C(v66, "\n", 1);
      v68 = sub_2D538(v62);
      v69 = strlen(v68);
      sub_4A5C(v67, v68, v69);
      sub_1959680(&a53, (v59 - 152));
      sub_7E854((v59 - 152), 3u);
      if (*(v59 - 129) < 0)
      {
        operator delete(*(v59 - 152));
      }

      sub_1959728(&a53);
    }

    sub_3574C8();
  }

  if (a2 == 1)
  {
    v70 = __cxa_begin_catch(a1);
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&a53);
      v71 = sub_4A5C(&a53, "Exception caught while trying to parse a snapshot: ", 51);
      v72 = (*(*v70 + 16))(v70);
      v73 = strlen(v72);
      sub_4A5C(v71, v72, v73);
      sub_1959680(&a53, (v59 - 152));
      sub_7E854((v59 - 152), 3u);
      if (*(v59 - 129) < 0)
      {
        operator delete(*(v59 - 152));
      }

      sub_1959728(&a53);
    }

    sub_3574C8();
  }

  _Unwind_Resume(a1);
}

void sub_35757C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_357594(char **a1@<X1>, uint64_t a2@<X8>)
{
  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v30 = 0;
  v3 = &a1[1][*a1];
  v26 = *a1;
  v27 = v3;
  v28 = 0x2C700000000;
LABEL_3:
  while (sub_32BB58(&v26))
  {
    if (v28 == 6)
    {
      v8 = sub_32BDF0(&v26, v27);
      v9 = v8;
      v10 = v26;
      v26 += v8;
      if (v26 > v27)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v23 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v39) = v8;
      if (v8)
      {
        memmove(&__dst, v10, v8);
        *(&__dst + v9) = 0;
        if ((SHIBYTE(v30) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        LOBYTE(__dst) = 0;
        if ((SHIBYTE(v30) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      operator delete(__p[0]);
LABEL_18:
      *__p = __dst;
      v30 = v39;
    }

    else
    {
      if (v28 != 12)
      {
        goto LABEL_2;
      }

      v4 = HIBYTE(v32);
      if (v32 < 0)
      {
        v4 = v31[1];
      }

      if (v4)
      {
LABEL_2:
        sub_32BC3C(&v26);
      }

      else
      {
        v5 = sub_32BDF0(&v26, v27);
        v6 = v26;
        v7 = &v26[v5];
        v26 = v7;
        if (v7 > v27)
        {
          goto LABEL_60;
        }

        *&__dst = v6;
        *(&__dst + 1) = v7;
        v39 = 0x2C700000000;
        if (sub_32BB58(&__dst))
        {
          while (v39 != 1)
          {
            sub_32BC3C(&__dst);
            if (!sub_32BB58(&__dst))
            {
              goto LABEL_3;
            }
          }

          if (sub_32BDF0(&__dst, *(&__dst + 1)) == 6)
          {
            *&__dst = v6;
            *(&__dst + 1) = v7;
            v39 = 0x2C700000000;
            if (sub_32BB58(&__dst))
            {
              while (v39 != 2)
              {
                sub_32BC3C(&__dst);
                if (!sub_32BB58(&__dst))
                {
                  goto LABEL_3;
                }
              }

              v11 = sub_32BDF0(&__dst, *(&__dst + 1));
              v12 = __dst;
              *&__dst = __dst + v11;
              if (__dst > *(&__dst + 1))
              {
LABEL_60:
                v24 = __cxa_allocate_exception(0x40uLL);
                v25 = sub_2D390(v24, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
              }

              v35 = v12;
              v36 = &v12[v11];
              v37 = 0x2C700000000;
              if (sub_32BB58(&v35))
              {
                while (v37 != 6)
                {
                  sub_32BC3C(&v35);
                  if (!sub_32BB58(&v35))
                  {
                    goto LABEL_3;
                  }
                }

                v13 = sub_32BDF0(&v35, v36);
                v14 = v13;
                v15 = v35;
                v35 += v13;
                if (v35 > v36)
                {
                  goto LABEL_60;
                }

                if (v13 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v34) = v13;
                if (v13)
                {
                  memmove(&v33, v15, v13);
                }

                *(&v33 + v14) = 0;
                if (SHIBYTE(v32) < 0)
                {
                  operator delete(v31[0]);
                }

                *v31 = v33;
                v32 = v34;
              }
            }
          }
        }
      }
    }
  }

  v16 = HIBYTE(v32);
  v17 = SHIBYTE(v32);
  if (v32 >= 0)
  {
    v18 = HIBYTE(v32);
  }

  else
  {
    v18 = v31[1];
  }

  v19 = v31;
  if (!v18)
  {
    v19 = __p;
  }

  v20 = SHIBYTE(v30);
  if (!v18)
  {
    v16 = HIBYTE(v30);
  }

  if (v16 < 0)
  {
    if (v18)
    {
      v21 = v31[1];
    }

    else
    {
      v21 = __p[1];
    }

    sub_325C(a2, *v19, v21);
  }

  else
  {
    *a2 = *v19;
    *(a2 + 16) = v19[2];
  }

  if ((v20 & 0x80000000) == 0)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }

LABEL_58:
    operator delete(v31[0]);
    return;
  }

  operator delete(__p[0]);
  if (v17 < 0)
  {
    goto LABEL_58;
  }
}

void sub_357988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  _Unwind_Resume(exception_object);
}

void sub_3579E4(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = 0x8000000080000000;
  *(a4 + 56) = 0u;
  v76 = (a4 + 56);
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = -1;
  *(a4 + 112) = 0u;
  v75 = (a4 + 112);
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0;
  *(a4 + 24) = 1819438967;
  v81 = (a4 + 24);
  v5 = *a2;
  v6 = *(a2 + 8);
  *(a4 + 47) = 5;
  *(a4 + 28) = 100;
  v86 = v5;
  v87 = &v5[v6];
  v74 = "Parsed invalid tag.";
  v88 = 0x2C700000000;
  HIBYTE(v85) = 0;
  v80 = 0x7FFFFFFF;
  LOBYTE(v84) = 0;
LABEL_3:
  while (sub_32BB58(&v86))
  {
    if (v88 > 7)
    {
      if (v88 <= 9)
      {
        if (v88 != 8)
        {
          v7 = sub_32BDF0(&v86, v87);
          v8 = v7;
          v9 = v86;
          v86 += v7;
          if (v86 > v87)
          {
            exception = __cxa_allocate_exception(0x40uLL);
            v67 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
          }

          if (v7 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v83) = v7;
          if (v7)
          {
            memmove(&__dst, v9, v7);
            *(&__dst + v8) = 0;
            if ((*(a4 + 103) & 0x80000000) == 0)
            {
              goto LABEL_11;
            }
          }

          else
          {
            LOBYTE(__dst) = 0;
            if ((*(a4 + 103) & 0x80000000) == 0)
            {
LABEL_11:
              *(a4 + 80) = __dst;
              *(a4 + 96) = v83;
              continue;
            }
          }

          operator delete(*(a4 + 80));
          goto LABEL_11;
        }

        v14 = sub_32BDF0(&v86, v87);
        v15 = v86;
        v16 = &v86[v14];
        v86 = v16;
        if (v16 > v87)
        {
LABEL_164:
          v74 = "Sub-message length of field exceeded past the end of the message.";
          v19 = 65;
LABEL_163:
          v64 = __cxa_allocate_exception(0x40uLL);
          v65 = sub_2D390(v64, v74, v19);
        }

        v89 = v15;
        v90 = v16;
        v91 = 0x2C700000000;
        if (!sub_32BB58(&v89))
        {
          continue;
        }

LABEL_25:
        v17 = v91;
        while (v17 != 4)
        {
          sub_32BC3C(&v89);
          if (v89 >= v90)
          {
            goto LABEL_3;
          }

          v18 = sub_32BDF0(&v89, v90);
          v17 = v18 >> 3;
          LODWORD(v91) = v18 >> 3;
          if (v18 < 8)
          {
LABEL_161:
            v19 = 19;
            goto LABEL_163;
          }

          v19 = 19;
          if ((v18 - 152000) >> 6 < 0x7D)
          {
            goto LABEL_163;
          }

          HIDWORD(v91) = v18 & 7;
          if (HIDWORD(v91) >= 3 && (v18 & 7) != 5)
          {
LABEL_162:
            v74 = "Unknown wire type.";
            v19 = 18;
            goto LABEL_163;
          }
        }

        v20 = sub_32BDF0(&v89, v90);
        v21 = v89;
        v22 = &v89[v20];
        v89 = v22;
        if (v22 > v90)
        {
          goto LABEL_164;
        }

        *&__dst = v21;
        *(&__dst + 1) = &v21[v20];
        v83 = 0x2C700000000;
        v94 = -1;
        v95 = 0x7FFFFFFF;
        v92 = -1;
        v93 = 0x7FFFFFFF;
        if (!v20)
        {
          goto LABEL_65;
        }

LABEL_38:
        v24 = sub_32BDF0(&__dst, v22);
        v25 = v24 >> 3;
        LODWORD(v83) = v24 >> 3;
        if (v24 < 8)
        {
          goto LABEL_161;
        }

        v19 = 19;
        if ((v24 - 152000) >> 6 < 0x7D)
        {
          goto LABEL_163;
        }

        HIDWORD(v83) = v24 & 7;
        if (HIDWORD(v83) >= 3 && (v24 & 7) != 5)
        {
          goto LABEL_162;
        }

        if (v24 >> 3 > 2)
        {
          if (v25 == 3)
          {
            v22 = *(&__dst + 1);
            v23 = __dst + 8;
            v31 = *__dst;
            *&__dst = v23;
            if (v23 > *(&__dst + 1))
            {
LABEL_160:
              v74 = "Skipping over bytes exceeded message length.";
              v19 = 44;
              goto LABEL_163;
            }

            v32 = sin(fmin(fmax(v31, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            v33 = ((log((v32 + 1.0) / (1.0 - v32)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v33 >= 0xFFFFFFFE)
            {
              v33 = -2;
            }

            HIDWORD(v94) = v33;
          }

          else
          {
            if (v25 != 4)
            {
              goto LABEL_36;
            }

            v22 = *(&__dst + 1);
            v23 = __dst + 8;
            v27 = *__dst;
            *&__dst = v23;
            if (v23 > *(&__dst + 1))
            {
              goto LABEL_160;
            }

            LODWORD(v94) = ((v27 + 180.0) / 360.0 * 4294967300.0);
          }
        }

        else
        {
          if (v25 != 1)
          {
            if (v25 == 2)
            {
              v22 = *(&__dst + 1);
              v23 = __dst + 8;
              v26 = *__dst;
              *&__dst = v23;
              if (v23 > *(&__dst + 1))
              {
                goto LABEL_160;
              }

              LODWORD(v92) = ((v26 + 180.0) / 360.0 * 4294967300.0);
              goto LABEL_37;
            }

LABEL_36:
            sub_32BC3C(&__dst);
            v22 = *(&__dst + 1);
            v23 = __dst;
            goto LABEL_37;
          }

          v22 = *(&__dst + 1);
          v23 = __dst + 8;
          v28 = *__dst;
          *&__dst = v23;
          if (v23 > *(&__dst + 1))
          {
            goto LABEL_160;
          }

          v29 = sin(fmin(fmax(v28, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
          v30 = ((log((v29 + 1.0) / (1.0 - v29)) / -12.5663706 + 0.5) * 4294967300.0);
          if (v30 >= 0xFFFFFFFE)
          {
            v30 = -2;
          }

          HIDWORD(v92) = v30;
        }

LABEL_37:
        if (v23 >= v22)
        {
          if (v94 != -1 && v92 != -1)
          {
            v34 = *(a4 + 120);
            if (v34 >= *(a4 + 128))
            {
              v35 = sub_37774C(v75, &v94, &v92);
            }

            else
            {
              sub_320C0(*(a4 + 120), &v94, &v92);
              v35 = v34 + 16;
            }

            *(a4 + 120) = v35;
          }

LABEL_65:
          if (!sub_32BB58(&v89))
          {
            continue;
          }

          goto LABEL_25;
        }

        goto LABEL_38;
      }

      if (v88 != 10)
      {
        if (v88 == 11)
        {
          v80 = sub_32BDF0(&v86, v87);
          continue;
        }

LABEL_2:
        sub_32BC3C(&v86);
        continue;
      }

      v36 = sub_32BDF0(&v86, v87);
      v37 = v36;
      v38 = v86;
      v86 += v36;
      if (v86 > v87)
      {
        v72 = __cxa_allocate_exception(0x40uLL);
        v73 = sub_2D390(v72, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      if (v36 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v83) = v36;
      if (v36)
      {
        memmove(&__dst, v38, v36);
        *(&__dst + v37) = 0;
        if ((SHIBYTE(v85) & 0x80000000) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        LOBYTE(__dst) = 0;
        if ((SHIBYTE(v85) & 0x80000000) == 0)
        {
LABEL_71:
          v84 = __dst;
          v85 = v83;
          continue;
        }
      }

      operator delete(v84);
      goto LABEL_71;
    }

    if (v88 == 1)
    {
      v13 = sub_32C014(&v86, v87);
      *(a4 + 48) = v13;
      sub_3900((a1 + 20424), v13);
      continue;
    }

    if (v88 == 2)
    {
      v39 = sub_32BDF0(&v86, v87);
      v40 = v39;
      v41 = v86;
      v86 += v39;
      if (v86 > v87)
      {
        v70 = __cxa_allocate_exception(0x40uLL);
        v71 = sub_2D390(v70, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      if (v39 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v83) = v39;
      if (v39)
      {
        memmove(&__dst, v41, v39);
        *(&__dst + v40) = 0;
        if ((*(a4 + 23) & 0x80000000) == 0)
        {
          goto LABEL_76;
        }
      }

      else
      {
        LOBYTE(__dst) = 0;
        if ((*(a4 + 23) & 0x80000000) == 0)
        {
LABEL_76:
          *a4 = __dst;
          *(a4 + 16) = v83;
          continue;
        }
      }

      operator delete(*a4);
      goto LABEL_76;
    }

    if (v88 != 3)
    {
      goto LABEL_2;
    }

    v10 = sub_32BDF0(&v86, v87);
    v11 = v10;
    v12 = v86;
    v86 += v10;
    if (v86 > v87)
    {
      v68 = __cxa_allocate_exception(0x40uLL);
      v69 = sub_2D390(v68, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v91) = v10;
    if (v10)
    {
      memmove(&v89, v12, v10);
    }

    *(&v89 + v11) = 0;
    if (v91 >= 0)
    {
      v42 = &v89;
    }

    else
    {
      v42 = v89;
    }

    if (v91 >= 0)
    {
      v43 = HIBYTE(v91);
    }

    else
    {
      v43 = v90;
    }

    if (v43 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v43 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v83) = v43;
    if (v43)
    {
      memmove(&__dst, v42, v43);
      *(&__dst + v43) = 0;
      if (v83 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      do
      {
        *p_dst = __tolower(*v42);
        p_dst = (p_dst + 1);
        v42 = (v42 + 1);
        --v43;
      }

      while (v43);
      if ((*(a4 + 47) & 0x80000000) == 0)
      {
        goto LABEL_105;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((*(a4 + 47) & 0x80000000) == 0)
      {
        goto LABEL_105;
      }
    }

    operator delete(*v81);
LABEL_105:
    *v81 = __dst;
    v81[2] = v83;
    if (SHIBYTE(v91) < 0)
    {
      operator delete(v89);
    }
  }

  *(a4 + 52) = *(a4 + 48) + v80;
  *(a4 + 104) = a3;
  sub_357594(a2, &__dst);
  if (*(a4 + 79) < 0)
  {
    operator delete(v76->__r_.__value_.__l.__data_);
  }

  *&v76->__r_.__value_.__l.__data_ = __dst;
  v76->__r_.__value_.__r.__words[2] = v83;
  v45 = SHIBYTE(v85);
  if (v85 >= 0)
  {
    v46 = HIBYTE(v85);
  }

  else
  {
    v46 = *(&v84 + 1);
  }

  if (v46)
  {
    if (v46 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v46 + 1 > 0x16)
    {
      operator new();
    }

    v83 = 0;
    __dst = 0uLL;
    HIBYTE(v83) = v46 + 1;
    LOBYTE(__dst) = 45;
    v47 = v85 >= 0 ? &v84 : v84;
    memmove(&__dst + 1, v47, v46);
    *(&__dst + v46 + 1) = 0;
    v48 = v83 >= 0 ? &__dst : __dst;
    v49 = v83 >= 0 ? HIBYTE(v83) : *(&__dst + 1);
    std::string::append(v76, v48, v49);
    if (SHIBYTE(v83) < 0)
    {
      operator delete(__dst);
      v50 = *(a4 + 47);
      if (v50 < 0)
      {
        goto LABEL_132;
      }

LABEL_129:
      if (v50 != 5)
      {
        goto LABEL_138;
      }

LABEL_134:
      if (*v81 != 1819438967 || *(v81 + 4) != 100)
      {
        goto LABEL_138;
      }

      v52 = sub_32410();
      v55 = *(a4 + 120);
      v54 = *(a4 + 128);
      if (v55 >= v54)
      {
        v56 = *v75;
        v57 = v55 - *v75;
        v58 = v57 >> 4;
        v59 = (v57 >> 4) + 1;
        if (v59 >> 60)
        {
          sub_1794();
        }

        v60 = v54 - v56;
        if (v60 >> 3 > v59)
        {
          v59 = v60 >> 3;
        }

        if (v60 >= 0x7FFFFFFFFFFFFFF0)
        {
          v61 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v61 = v59;
        }

        if (v61)
        {
          if (!(v61 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v62 = (16 * v58);
        *v62 = v52;
        v62[1] = v53;
        v63 = 16 * v58 + 16;
        memcpy(0, v56, v57);
        *(a4 + 112) = 0;
        *(a4 + 120) = v63;
        *(a4 + 128) = 0;
        if (v56)
        {
          operator delete(v56);
        }

        *(a4 + 120) = v63;
        if (v80)
        {
          goto LABEL_139;
        }
      }

      else
      {
        *v55 = v52;
        v55[1] = v53;
        *(a4 + 120) = v55 + 2;
        if (v80)
        {
          goto LABEL_139;
        }
      }

LABEL_140:
      operator new();
    }
  }

  v50 = *(a4 + 47);
  if ((v50 & 0x80000000) == 0)
  {
    goto LABEL_129;
  }

LABEL_132:
  if (*(a4 + 32) == 5)
  {
    v81 = *v81;
    goto LABEL_134;
  }

LABEL_138:
  if (!v80)
  {
    goto LABEL_140;
  }

LABEL_139:
  if (v80 >= 2678401)
  {
    goto LABEL_140;
  }

  if (v45 < 0)
  {
    operator delete(v84);
  }
}

void sub_35871C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v23 - 233) < 0)
  {
    operator delete(*(v23 - 256));
  }

  sub_2C6FE8(v22);
  _Unwind_Resume(a1);
}

double sub_3587FC(uint64_t a1, char **a2, uint64_t a3)
{
  sub_7E9A4(v26);
  v6 = &a2[1][*a2];
  v23 = *a2;
  v24 = v6;
  v25 = 0x2C700000000;
  while (sub_32BB58(&v23))
  {
    v7 = v25;
    while (v7 != 2)
    {
      sub_32BC3C(&v23);
      if (v23 >= v24)
      {
        goto LABEL_14;
      }

      v8 = sub_32BDF0(&v23, v24);
      v7 = v8 >> 3;
      LODWORD(v25) = v8 >> 3;
      if (v8 < 8 || (v8 - 152000) >> 6 <= 0x7C)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v17 = sub_2D390(exception, "Parsed invalid tag.", 0x13uLL);
      }

      HIDWORD(v25) = v8 & 7;
      if (HIDWORD(v25) >= 3 && (v8 & 7) != 5)
      {
        v18 = __cxa_allocate_exception(0x40uLL);
        v19 = sub_2D390(v18, "Unknown wire type.", 0x12uLL);
      }
    }

    v10 = sub_32BDF0(&v23, v24);
    v11 = v23;
    v23 += v10;
    if (v23 > v24)
    {
      v20 = __cxa_allocate_exception(0x40uLL);
      v21 = sub_2D390(v20, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    v22[0] = v11;
    v22[1] = v10;
    sub_35C00C(a1, v22, 0, a3);
  }

LABEL_14:
  v12 = sub_7EA60(v26);
  v22[0] = *a3;
  v13 = sub_362538((a3 + 16), v22[0]);
  LODWORD(v14) = *(v13 + 16);
  result = v12 + v14;
  *(v13 + 16) = result;
  return result;
}

uint64_t *sub_3589F4(uint64_t *result, char **a2, uint64_t a3)
{
  if (*(result + 20953) == 1)
  {
    v5 = result;
    sub_7E9A4(v35);
    v6 = &a2[1][*a2];
    v32 = *a2;
    v33 = v6;
    v34 = 0x2C700000000;
    if (sub_32BB58(&v32))
    {
      while (1)
      {
        v7 = v34;
        while (v7 != 11)
        {
          sub_32BC3C(&v32);
          if (v32 >= v33)
          {
            goto LABEL_37;
          }

          v8 = sub_32BDF0(&v32, v33);
          v7 = v8 >> 3;
          LODWORD(v34) = v8 >> 3;
          if (v8 < 8 || (v8 - 152000) >> 6 <= 0x7C)
          {
LABEL_39:
            exception = __cxa_allocate_exception(0x40uLL);
            v23 = sub_2D390(exception, "Parsed invalid tag.", 0x13uLL);
          }

          HIDWORD(v34) = v8 & 7;
          if (HIDWORD(v34) >= 3 && (v8 & 7) != 5)
          {
LABEL_40:
            v24 = __cxa_allocate_exception(0x40uLL);
            v25 = sub_2D390(v24, "Unknown wire type.", 0x12uLL);
          }
        }

        v10 = sub_32BDF0(&v32, v33);
        v11 = v32;
        v12 = &v32[v10];
        v32 = v12;
        if (v12 > v33)
        {
          break;
        }

        v29 = v11;
        v30 = v12;
        v31 = 0x2C700000000;
        if (sub_32BB58(&v29))
        {
          v13 = v31;
          while (v13 != 2)
          {
            sub_32BC3C(&v29);
            if (v29 >= v30)
            {
              goto LABEL_4;
            }

            v14 = sub_32BDF0(&v29, v30);
            v13 = v14 >> 3;
            LODWORD(v31) = v14 >> 3;
            if (v14 < 8 || (v14 - 152000) >> 6 <= 0x7C)
            {
              goto LABEL_39;
            }

            HIDWORD(v31) = v14 & 7;
            if (HIDWORD(v31) >= 3 && (v14 & 7) != 5)
            {
              goto LABEL_40;
            }
          }

          v16 = sub_32BDF0(&v29, v30);
          v17 = v16 == 2 ? 2 : v16 == 1;
          if (v17)
          {
            v29 = v11;
            v30 = v12;
            v31 = 0x2C700000000;
            if (sub_32BB58(&v29))
            {
              while (v31 != 1)
              {
                sub_32BC3C(&v29);
                if (!sub_32BB58(&v29))
                {
                  goto LABEL_4;
                }
              }

              v18 = sub_32BDF0(&v29, v30);
              v19 = v29;
              v29 += v18;
              if (v29 > v30)
              {
                break;
              }

              v28[0] = v19;
              v28[1] = v18;
              sub_35C00C(v5, v28, v17, a3);
            }
          }
        }

LABEL_4:
        if (!sub_32BB58(&v32))
        {
          goto LABEL_37;
        }
      }

      v26 = __cxa_allocate_exception(0x40uLL);
      v27 = sub_2D390(v26, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

LABEL_37:
    v20 = sub_7EA60(v35);
    v29 = *a3;
    result = sub_362538((a3 + 16), v29);
    LODWORD(v21) = *(result + 16);
    *(result + 16) = (v20 + v21);
  }

  return result;
}

double sub_358CF8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_7E9A4(v34);
  v6 = *a3;
  v7 = *a2 + a2[1];
  *&v32 = *a2;
  *(&v32 + 1) = v7;
  v33 = 0x2C700000000;
  v8 = sub_32CCA4(&v32, 3);
  sub_35F848(v6 + 19, v8 + 0x34F72C234F72C235 * ((*(v6 + 20) - *(v6 + 19)) >> 4));
  v9 = *(v6 + 22);
  v10 = 20 * v8 - 0x5555555555555555 * ((*(v6 + 23) - v9) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 24) - v9) >> 3) < v10)
  {
    if (v10 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v38 = *a3;
  v11 = sub_362538((a3 + 16), v38);
  *(v11 + 26) += v8;
  v12 = (*a2 + a2[1]);
  v38 = *a2;
  v39 = v12;
  v40 = 0x2C700000000;
  while (sub_32BB58(&v38))
  {
    if (v40 == 1)
    {
      break;
    }

    sub_32BC3C(&v38);
  }

  v13 = sub_32BDF0(&v38, v39);
  v14 = v38;
  v15 = &v38[v13];
  v38 = v15;
  if (v15 > v39)
  {
    goto LABEL_26;
  }

  v35 = v14;
  v36 = v15;
  v37 = 0x2C700000000;
  while (sub_32BB58(&v35))
  {
    if (v37 == 1)
    {
      break;
    }

    sub_32BC3C(&v35);
  }

  v16 = sub_32C014(&v35, v36);
  sub_3900((a1 + 20424), v16);
  if (sub_32BB58(&v32))
  {
    while (1)
    {
      v17 = v33;
      while (v17 != 3)
      {
        sub_32BC3C(&v32);
        if (v32 >= *(&v32 + 1))
        {
          goto LABEL_24;
        }

        v18 = sub_32BDF0(&v32, *(&v32 + 1));
        v17 = v18 >> 3;
        LODWORD(v33) = v18 >> 3;
        if (v18 < 8 || (v18 - 152000) >> 6 <= 0x7C)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v27 = sub_2D390(exception, "Parsed invalid tag.", 0x13uLL);
        }

        HIDWORD(v33) = v18 & 7;
        if (HIDWORD(v33) >= 3 && (v18 & 7) != 5)
        {
          v28 = __cxa_allocate_exception(0x40uLL);
          v29 = sub_2D390(v28, "Unknown wire type.", 0x12uLL);
        }
      }

      v20 = sub_32BDF0(&v32, *(&v32 + 1));
      v21 = v32;
      *&v32 = v32 + v20;
      if (v32 > *(&v32 + 1))
      {
        break;
      }

      v38 = v21;
      v39 = v20;
      sub_35C564(a1, &v38, v16, a3);
      if (!sub_32BB58(&v32))
      {
        goto LABEL_24;
      }
    }

LABEL_26:
    v30 = __cxa_allocate_exception(0x40uLL);
    v31 = sub_2D390(v30, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
  }

LABEL_24:
  v22 = sub_7EA60(v34);
  v38 = *a3;
  v23 = sub_362538((a3 + 16), v38);
  LODWORD(v24) = *(v23 + 45);
  result = v22 + v24;
  *(v23 + 45) = result;
  return result;
}

double sub_3590CC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_7E9A4(v63);
  v6 = *a2 + a2[1];
  *&v61 = *a2;
  *(&v61 + 1) = v6;
  v62 = 0x2C700000000;
  v7 = sub_32CCA4(&v61, 4);
  v48 = *a3;
  v8 = sub_362538((a3 + 16), v48);
  *(v8 + 20) += v7;
  if (sub_32BB58(&v61))
  {
    v9 = a1 + 21112;
    v10 = &v52;
    do
    {
      while (1)
      {
        v13 = v62;
        while (v13 != 4)
        {
          sub_32BC3C(&v61);
          if (v61 >= *(&v61 + 1))
          {
            goto LABEL_49;
          }

          v14 = sub_32BDF0(&v61, *(&v61 + 1));
          v13 = v14 >> 3;
          LODWORD(v62) = v14 >> 3;
          if (v14 < 8 || (v14 - 152000) >> 6 <= 0x7C)
          {
            exception = __cxa_allocate_exception(0x40uLL);
            v39 = sub_2D390(exception, "Parsed invalid tag.", 0x13uLL);
          }

          HIDWORD(v62) = v14 & 7;
          if (HIDWORD(v62) >= 3 && (v14 & 7) != 5)
          {
            v40 = __cxa_allocate_exception(0x40uLL);
            v41 = sub_2D390(v40, "Unknown wire type.", 0x12uLL);
          }
        }

        v16 = sub_32BDF0(&v61, *(&v61 + 1));
        v17 = v61;
        *&v61 = v61 + v16;
        if (v61 > *(&v61 + 1))
        {
          v42 = __cxa_allocate_exception(0x40uLL);
          v43 = sub_2D390(v42, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        v59 = v17;
        v60 = v16;
        if (!sub_32AEC8(&v59, **a3, (*a3 + 56)))
        {
          break;
        }

        v48 = *a3;
        v12 = sub_362538((a3 + 16), v48);
        ++*(v12 + 21);
        if (!sub_32BB58(&v61))
        {
          goto LABEL_49;
        }
      }

      v18 = sub_15FA1E8(v58, 0, 0);
      sub_225EE2C(v18, v59, v60);
      if (!sub_7E7E4(3u))
      {
        goto LABEL_48;
      }

      sub_19594F8(&v48);
      v19 = sub_4A5C(&v48, "Invalid color in ", 17);
      v20 = *(a1 + 21135);
      if (v20 >= 0)
      {
        v21 = v9;
      }

      else
      {
        v21 = *(a1 + 21112);
      }

      if (v20 >= 0)
      {
        v22 = *(a1 + 21135);
      }

      else
      {
        v22 = *(a1 + 21120);
      }

      v23 = sub_4A5C(v19, v21, v22);
      v24 = sub_4A5C(v23, ": ", 2);
      sub_1957658(v58, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      sub_4A5C(v24, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v27 = v57;
        v44 = a1;
        v28 = v11;
        if ((v57 & 0x10) != 0)
        {
LABEL_34:
          v31 = v56;
          v32 = v10;
          if (v56 < v53)
          {
            v56 = v53;
            v31 = v53;
            v32 = v10;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v27 = v57;
        v44 = a1;
        v28 = v11;
        if ((v57 & 0x10) != 0)
        {
          goto LABEL_34;
        }
      }

      if ((v27 & 8) != 0)
      {
        v31 = v51[2];
        v32 = v51;
LABEL_37:
        v33 = *v32;
        v30 = v31 - *v32;
        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        v29 = v10;
        if (v30 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v31 - *v32;
        if (v30)
        {
          memmove(&__p, v33, v30);
        }

        goto LABEL_43;
      }

      v29 = v10;
      v30 = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_43:
      __p.__r_.__value_.__s.__data_[v30] = 0;
      sub_7E854(&__p, 3u);
      v10 = v29;
      v11 = v28;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v48 = v46;
      a1 = v44;
      *(&v48 + *(v46 - 3)) = v45;
      if (v55 < 0)
      {
        operator delete(v54);
      }

      std::locale::~locale(&v50);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_48:
      sub_15FA2D0(v58);
    }

    while (sub_32BB58(&v61));
  }

LABEL_49:
  v34 = sub_7EA60(v63);
  v48 = *a3;
  v35 = sub_362538((a3 + 16), v48);
  LODWORD(v36) = *(v35 + 22);
  result = v34 + v36;
  *(v35 + 22) = result;
  return result;
}

void sub_359660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_1959728(&a21);
  sub_15FA2D0(v21 - 208);
  _Unwind_Resume(a1);
}

double sub_3596E0(uint64_t a1, void *a2, void *a3)
{
  sub_7E9A4(v68);
  v6 = *a2 + a2[1];
  *&v66 = *a2;
  *(&v66 + 1) = v6;
  v67 = 0x2C700000000;
  v7 = *a3;
  v8 = (*(*a3 + 88) - *(*a3 + 80)) >> 4;
  v9 = v8 + 4 * sub_32CCA4(&v66, 6);
  if (v9 > (*(v7 + 96) - *(v7 + 80)) >> 4)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_32BB58(&v66))
  {
    v10 = a1 + 21112;
    v11 = &v57;
    v14 = &unk_229EB70;
    do
    {
      while (1)
      {
        v16 = v67;
        while (v16 != 6)
        {
          sub_32BC3C(&v66);
          if (v66 >= *(&v66 + 1))
          {
            goto LABEL_52;
          }

          v17 = sub_32BDF0(&v66, *(&v66 + 1));
          v16 = v17 >> 3;
          LODWORD(v67) = v17 >> 3;
          if (v17 < 8 || (v17 - 152000) >> 6 <= 0x7C)
          {
            exception = __cxa_allocate_exception(0x40uLL);
            v44 = sub_2D390(exception, "Parsed invalid tag.", 0x13uLL);
          }

          HIDWORD(v67) = v17 & 7;
          if (HIDWORD(v67) >= 3 && (v17 & 7) != 5)
          {
            v45 = __cxa_allocate_exception(0x40uLL);
            v46 = sub_2D390(v45, "Unknown wire type.", 0x12uLL);
          }
        }

        v53 = *a3;
        v19 = sub_362538(a3 + 2, v53);
        ++*(v19 + 23);
        v20 = sub_32BDF0(&v66, *(&v66 + 1));
        v21 = v66;
        *&v66 = v66 + v20;
        if (v66 > *(&v66 + 1))
        {
          v47 = __cxa_allocate_exception(0x40uLL);
          v48 = sub_2D390(v47, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        v64 = v21;
        v65 = v20;
        if ((sub_34EC38(&v64) & 1) == 0)
        {
          break;
        }

        v53 = *a3;
        v15 = sub_362538(a3 + 2, v53);
        ++*(v15 + 24);
        if (!sub_32BB58(&v66))
        {
          goto LABEL_52;
        }
      }

      v22 = sub_15FEE50(v63, 0, 0);
      sub_225EE2C(v22, v64, v65);
      if (!sub_7E7E4(3u))
      {
        goto LABEL_51;
      }

      sub_19594F8(&v53);
      v23 = sub_4A5C(&v53, "Invalid PredictedPaces in ", 26);
      v24 = *(a1 + 21135);
      if (v24 >= 0)
      {
        v25 = v10;
      }

      else
      {
        v25 = *(a1 + 21112);
      }

      if (v24 >= 0)
      {
        v26 = *(a1 + 21135);
      }

      else
      {
        v26 = *(a1 + 21120);
      }

      v27 = sub_4A5C(v23, v25, v26);
      v28 = sub_4A5C(v27, ": ", 2);
      sub_1957658(v63, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      sub_4A5C(v28, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v49 = v13;
        v50 = a1;
        v31 = v62;
        if ((v62 & 0x10) != 0)
        {
LABEL_37:
          v33 = v12;
          v36 = v61;
          v37 = v11;
          if (v61 < v58)
          {
            v61 = v58;
            v36 = v58;
            v37 = v11;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v49 = v13;
        v50 = a1;
        v31 = v62;
        if ((v62 & 0x10) != 0)
        {
          goto LABEL_37;
        }
      }

      if ((v31 & 8) != 0)
      {
        v33 = v12;
        v36 = v56[2];
        v37 = v56;
LABEL_40:
        v38 = *v37;
        v35 = v36 - *v37;
        if (v35 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        v32 = v14;
        v34 = v11;
        if (v35 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v36 - *v37;
        if (v35)
        {
          memmove(&__p, v38, v35);
        }

        goto LABEL_46;
      }

      v32 = v14;
      v33 = v12;
      v34 = v11;
      v35 = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_46:
      __p.__r_.__value_.__s.__data_[v35] = 0;
      sub_7E854(&__p, 3u);
      v11 = v34;
      v12 = v33;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v13 = v49;
      v53 = v49;
      *(&v53 + *(v49 - 3)) = v51;
      if (v60 < 0)
      {
        operator delete(v59);
      }

      std::locale::~locale(&v55);
      std::ostream::~ostream();
      std::ios::~ios();
      a1 = v50;
      v14 = v32;
LABEL_51:
      sub_15FEF58(v63);
    }

    while (sub_32BB58(&v66));
  }

LABEL_52:
  v39 = sub_7EA60(v68);
  v53 = *a3;
  v40 = sub_362538(a3 + 2, v53);
  LODWORD(v41) = *(v40 + 25);
  result = v39 + v41;
  *(v40 + 25) = result;
  return result;
}

void sub_359D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_1959728(&a22);
  sub_15FEF58(v22 - 248);
  _Unwind_Resume(a1);
}

void sub_359D98(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a1 + 20480;
  if (*(a1 + 20954) == 1)
  {
    v9 = *a2 + a2[1];
    *&v39 = *a2;
    *(&v39 + 1) = v9;
    __p[0] = 0x2C700000000;
    if (sub_32BB58(&v39))
    {
      while (LODWORD(__p[0]) != 8)
      {
        sub_32BC3C(&v39);
        if (!sub_32BB58(&v39))
        {
          return;
        }
      }

      v10 = sub_32BDF0(&v39, *(&v39 + 1));
      v11 = v39;
      v12 = v39 + v10;
      *&v39 = v12;
      if (v12 > *(&v39 + 1))
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v38 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      *&__dst = v11;
      *(&__dst + 1) = v12;
      v49 = 0x2C700000000;
      if (sub_32CCA4(&__dst, 3))
      {
        sub_390E18(a1 + 20336, a2, a4 + 360, &v39);
        v13 = *a3;
        *(*a3 + 360) = v39;
        v14 = v13 + 47;
        v15 = v13[47];
        if (v15)
        {
          v13[48] = v15;
          operator delete(v15);
          *v14 = 0;
          v13[48] = 0;
          v13[49] = 0;
        }

        *v14 = *__p;
        v13[49] = v41;
        __p[1] = 0;
        v41 = 0;
        __p[0] = 0;
        v16 = v13[50];
        if (v16)
        {
          v13[51] = v16;
          operator delete(v16);
          v13[50] = 0;
          v13[51] = 0;
          v13[52] = 0;
          v16 = __p[0];
        }

        *(v13 + 25) = v42;
        v13[52] = v43;
        v43 = 0;
        v42 = 0uLL;
        if (v16)
        {
          __p[1] = v16;
          operator delete(v16);
        }

        v17 = *a3;
        if (*(*a3 + 360) != 0x7FFFFFFF && *(v17 + 364) != 0x7FFFFFFF && *(v17 + 368) != 0x7FFFFFFF)
        {
          if (*(v17 + 372))
          {
            v18 = *(v17 + 376);
            v19 = *(v17 + 384);
            if (v18 != v19 && *(v17 + 408) - *(v17 + 400) >= ((v19 - v18) >> 3))
            {
              sub_393174(a1 + 20336, &v39);
              v31 = v39;
              *&__dst = *a3;
              v32 = sub_362538(a3 + 2, __dst);
              *(v32 + 52) += v31;
              *&v39 = *a3;
              v33 = sub_362538(a3 + 2, v39);
              ++*(v33 + 48);
              sub_393174(a1 + 20336, &v39);
              v34 = v42;
              *&__dst = *a3;
              v35 = sub_362538(a3 + 2, __dst);
              *(v35 + 49) += v34;
              sub_393174(a1 + 20336, &v39);
              *&__dst = *a3;
              v36 = sub_362538(a3 + 2, __dst);
              v36[25] = v41;
              return;
            }
          }
        }

        if (!sub_7E7E4(3u))
        {
          goto LABEL_45;
        }

        sub_19594F8(&v39);
        v20 = sub_4A5C(&v39, "Invalid weather forecast data in ", 33);
        v21 = *(v4 + 655);
        if (v21 >= 0)
        {
          v22 = a1 + 21112;
        }

        else
        {
          v22 = *(a1 + 21112);
        }

        if (v21 >= 0)
        {
          v23 = *(v4 + 655);
        }

        else
        {
          v23 = *(a1 + 21120);
        }

        sub_4A5C(v20, v22, v23);
        if ((v47 & 0x10) != 0)
        {
          v25 = v46;
          if (v46 < v43)
          {
            v46 = v43;
            v25 = v43;
          }

          v26 = &v42 + 1;
        }

        else
        {
          if ((v47 & 8) == 0)
          {
            v24 = 0;
            HIBYTE(v49) = 0;
LABEL_40:
            *(&__dst + v24) = 0;
            sub_7E854(&__dst, 3u);
            if (SHIBYTE(v49) < 0)
            {
              operator delete(__dst);
            }

            if (v45 < 0)
            {
              operator delete(v44);
            }

            std::locale::~locale(__p);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_45:
            v28 = *a3;
            *(v28 + 360) = xmmword_2291180;
            v29 = *(v28 + 376);
            if (v29)
            {
              *(v28 + 384) = v29;
              operator delete(v29);
              *(v28 + 376) = 0;
              *(v28 + 384) = 0;
              *(v28 + 392) = 0;
            }

            *(v28 + 376) = 0;
            *(v28 + 384) = 0;
            *(v28 + 392) = 0;
            v30 = *(v28 + 400);
            if (v30)
            {
              *(v28 + 408) = v30;
              operator delete(v30);
              *(v28 + 400) = 0;
              *(v28 + 408) = 0;
              *(v28 + 416) = 0;
            }

            *(v28 + 400) = 0;
            *(v28 + 408) = 0;
            *(v28 + 416) = 0;
            return;
          }

          v26 = &__p[1];
          v25 = v42;
        }

        v27 = *v26;
        v24 = v25 - *v26;
        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v24 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v49) = v25 - *v26;
        if (v24)
        {
          memmove(&__dst, v27, v24);
        }

        goto LABEL_40;
      }
    }
  }
}

void sub_35A304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 - 89) < 0)
  {
    operator delete(*(v2 - 112));
    sub_1959728(va);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  _Unwind_Resume(a1);
}

uint64_t sub_35A350(uint64_t result, uint64_t a2, void *a3)
{
  if (*(result + 20955) == 1)
  {
    v11 = v3;
    v12 = v4;
    v6 = result;
    v8 = *a2 + *(a2 + 8);
    *&v9 = *a2;
    *(&v9 + 1) = v8;
    v10 = 0x2C700000000;
    result = sub_32CCA4(&v9, 9);
    if (result)
    {
      sub_347694(v6 + 20392, a2, *a3 + 424);
    }
  }

  return result;
}

void sub_35A564(uint64_t a1, char **a2, void *a3)
{
  sub_7E9A4(v30);
  v6 = &a2[1][*a2];
  v27 = *a2;
  v28 = v6;
  v29 = 0x2C700000000;
  v7 = *(*a3 + 616);
  v8 = *(v7 - 105);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 - 120);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    v9 = *(v7 - 128);
    v10 = &v9[v8];
    if (v8 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator new();
  }

  v9 = (v7 - 128);
  v10 = (v7 - 128 + v8);
  if (v8 >= 0x17)
  {
    goto LABEL_7;
  }

LABEL_3:
  v26 = v8;
  if (v8)
  {
    memmove(&__dst, v9, v8);
    *(&__dst + v8) = 0;
    if (v26 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    do
    {
      *p_dst = __toupper(*v9);
      p_dst = (p_dst + 1);
      ++v9;
    }

    while (v9 != v10);
  }

  else
  {
    LOBYTE(__dst) = 0;
  }

  while (sub_32BB58(&v27))
  {
    while (v29 != 10)
    {
      sub_32BC3C(&v27);
      if (!sub_32BB58(&v27))
      {
        goto LABEL_24;
      }
    }

    v12 = sub_32BDF0(&v27, v28);
    v13 = v27;
    v27 += v12;
    if (v27 > v28)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v21 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    v23[0] = v13;
    v23[1] = v12;
    sub_35FB74(a1, &__dst, __p);
    sub_331420(v23, __p, v24);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v14 = *a3;
    if (v24[0] == v24[1])
    {
      __p[0] = *a3;
      v15 = sub_362538(a3 + 2, v14);
      ++*(v15 + 18);
    }

    else
    {
      sub_3790B0(v14 + 128, *(v14 + 136), v24[0], v24[1], (v24[1] - v24[0]) >> 3);
    }

    __p[0] = *a3;
    v16 = sub_362538(a3 + 2, __p[0]);
    ++*(v16 + 17);
    if (v24[0])
    {
      v24[1] = v24[0];
      operator delete(v24[0]);
    }
  }

LABEL_24:
  v17 = sub_7EA60(v30);
  v24[0] = *a3;
  v18 = sub_362538(a3 + 2, v24[0]);
  LODWORD(v19) = *(v18 + 19);
  *(v18 + 19) = (v17 + v19);
  if (v26 < 0)
  {
    operator delete(__dst);
  }
}

void sub_35A854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_35A8B8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = 126 - 2 * __clz((v3 - v2) >> 6);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_364A24(v2, v3, &v15, v5, 1);
  result = *a1;
  v7 = *(a1 + 8);
  if (*a1 == v7)
  {
LABEL_13:
    if (result != *(a1 + 8))
    {
LABEL_16:
      *(a1 + 8) = result;
    }
  }

  else
  {
    do
    {
      v8 = result + 64;
      if ((result + 64) == v7)
      {
        result = v7;
        goto LABEL_13;
      }

      v9 = sub_38E27C(result, result + 64);
      result = v8;
    }

    while (!v9);
    v10 = (v8 + 64);
    v11 = (v8 - 64);
    while (v10 != v7)
    {
      if (!sub_38E27C(v11, v10))
      {
        v12 = *v10;
        v13 = v10[1];
        v14 = v10[2];
        *(v11 + 107) = *(v10 + 43);
        v11[5] = v13;
        v11[6] = v14;
        v11[4] = v12;
        v11 += 4;
      }

      v10 += 4;
    }

    result = (v11 + 4);
    if (v11 + 4 != *(a1 + 8))
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_35A9E4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 3);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_366760(v2, v3, &v13, v5, 1);
  result = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
LABEL_13:
    if (result != a1[1])
    {
LABEL_16:
      a1[1] = result;
    }
  }

  else
  {
    do
    {
      v8 = result + 8;
      if ((result + 8) == v7)
      {
        result = v7;
        goto LABEL_13;
      }

      v9 = sub_39077C(result, result + 8);
      result = v8;
    }

    while (!v9);
    v10 = (v8 + 8);
    v11 = v8 - 8;
    while (v10 != v7)
    {
      if (!sub_39077C(v11, v10))
      {
        v12 = *(v10 + 3);
        *(v11 + 8) = *v10;
        v11 += 8;
        *(v11 + 3) = v12;
      }

      v10 += 2;
    }

    result = v11 + 8;
    if (v11 + 8 != a1[1])
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_35AB08(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 6);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_371550(v2, v3, &v21, v5, 1);
  v7 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_28:
    if (v7 != v6)
    {
      a1[1] = v7;
    }

    return;
  }

  if (v7 + 8 != v6)
  {
    v8 = 0;
    v9 = *v7;
    while (1)
    {
      v10 = &v7[v8];
      v11 = v7[v8 + 8];
      if (v9 == v11)
      {
        v12 = *(v10 + 18);
        v13 = *(v10 + 2);
        if ((HIDWORD(v9) & 0xFFFFFF) == (HIDWORD(v11) & 0xFFFFFF) && v13 == v12)
        {
          break;
        }
      }

      v8 += 8;
      v9 = v11;
      if (&v7[v8 + 8] == v6)
      {
        return;
      }
    }

    v15 = &v7[v8];
    if (v15 != v6)
    {
      v16 = v15 + 16;
      if (v15 + 16 != v6)
      {
        do
        {
          if (*v15 != *v16 || ((HIDWORD(*v15) & 0xFFFFFF) == (HIDWORD(*v16) & 0xFFFFFF) ? (v20 = *(v15 + 2) == *(v16 + 2)) : (v20 = 0), !v20))
          {
            v17 = *v16;
            v18 = *(v16 + 1);
            v19 = *(v16 + 3);
            *(v15 + 6) = *(v16 + 2);
            *(v15 + 7) = v19;
            *(v15 + 4) = v17;
            *(v15 + 5) = v18;
            v15 += 8;
          }

          v16 += 8;
        }

        while (v16 != v6);
        v6 = a1[1];
      }

      v7 = v15 + 8;
      goto LABEL_28;
    }
  }
}

void sub_35AC6C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 5);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_372CC0(v2, v3, &v15, v5, 1);
  v7 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_22:
    if (v7 != v6)
    {
      a1[1] = v7;
    }

    return;
  }

  if (v7 + 4 != v6)
  {
    v8 = 0;
    v9 = *v7;
    while (1)
    {
      v10 = v9;
      v11 = &v7[v8];
      v9 = v7[v8 + 4];
      if (v10 == v9 && *(v11 + 2) == *(v11 + 10) && v11[2] == v11[6])
      {
        break;
      }

      v8 += 4;
      if (&v7[v8 + 4] == v6)
      {
        return;
      }
    }

    v12 = &v7[v8];
    if (v12 != v6)
    {
      v13 = v12 + 8;
      if (v12 + 8 != v6)
      {
        do
        {
          if (*v12 != *v13 || *(v12 + 2) != *(v13 + 2) || v12[2] != v13[2])
          {
            v14 = *(v13 + 1);
            *(v12 + 2) = *v13;
            *(v12 + 3) = v14;
            v12 += 4;
          }

          v13 += 4;
        }

        while (v13 != v6);
        v6 = a1[1];
      }

      v7 = v12 + 4;
      goto LABEL_22;
    }
  }
}

void sub_35ADD0(uint64_t a1, void *a2, void *a3)
{
  sub_7E9A4(v124);
  v7 = *(a1 + 21016);
  v8 = *(a1 + 21024);
  if (v7 == v8)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v9 = v8 - v7;
  if ((v8 - v7) < 4)
  {
    v10 = 0;
    v11 = *(a1 + 21016);
    goto LABEL_16;
  }

  if (v9 >= 0x20)
  {
    v12 = v9 & 0xFFFFFFFFFFFFFFE0;
    v13 = v7 + 1;
    v14 = 0uLL;
    v15.i64[0] = 0x100000001;
    v15.i64[1] = 0x100000001;
    v16 = 0uLL;
    v17 = v9 & 0xFFFFFFFFFFFFFFE0;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24 = v13[-1];
      v19 = vorrq_s8(vshlq_u32(v15, vqtbl1q_s8(v24, xmmword_2291190)), v19);
      v18 = vorrq_s8(vshlq_u32(v15, vqtbl1q_s8(v24, xmmword_22911A0)), v18);
      v16 = vorrq_s8(vshlq_u32(v15, vqtbl1q_s8(v24, xmmword_22911B0)), v16);
      v14 = vorrq_s8(vshlq_u32(v15, vqtbl1q_s8(v24, xmmword_22911C0)), v14);
      v23 = vorrq_s8(vshlq_u32(v15, vqtbl1q_s8(*v13, xmmword_2291190)), v23);
      v22 = vorrq_s8(vshlq_u32(v15, vqtbl1q_s8(*v13, xmmword_22911A0)), v22);
      v21 = vorrq_s8(vshlq_u32(v15, vqtbl1q_s8(*v13, xmmword_22911B0)), v21);
      v20 = vorrq_s8(vshlq_u32(v15, vqtbl1q_s8(*v13, xmmword_22911C0)), v20);
      v13 += 2;
      v17 -= 32;
    }

    while (v17);
    v6 = vorrq_s8(v23, v19);
    v25 = vorrq_s8(vorrq_s8(vorrq_s8(v20, v14), vorrq_s8(v22, v18)), vorrq_s8(vorrq_s8(v21, v16), v6));
    *v25.i8 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
    v10 = v25.i32[0] | v25.i32[1];
    if (v9 == v12)
    {
      goto LABEL_17;
    }

    if ((v9 & 0x1C) == 0)
    {
      v11 = (v7 + v12);
      do
      {
LABEL_16:
        v32 = v11->i8[0];
        v11 = (v11 + 1);
        v10 |= 1 << v32;
      }

      while (v11 != v8);
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v11 = (v7 + (v9 & 0xFFFFFFFFFFFFFFFCLL));
  v26 = v10;
  v27 = (v7->i32 + v12);
  v28 = v12 - (v9 & 0xFFFFFFFFFFFFFFFCLL);
  v29.i64[0] = 0x100000001;
  v29.i64[1] = 0x100000001;
  do
  {
    v30 = *v27++;
    v6.i32[0] = v30;
    v6 = vshlq_u32(v29, vmovl_u16(*&vmovl_u8(*v6.i8)));
    v26 = vorrq_s8(v6, v26);
    v28 += 4;
  }

  while (v28);
  v31 = vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
  v10 = v31.i32[0] | v31.i32[1];
  if (v9 != (v9 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_16;
  }

LABEL_17:
  __p = 0;
  v122 = 0;
  v123 = 0;
  v118 = a3;
  v33 = *a3;
  v34 = *(*a3 + 32);
  v35 = *(*a3 + 40);
  if (v34 == v35)
  {
    goto LABEL_187;
  }

  v36 = a2[1];
  v37 = a2[2];
  if (v36 != v37)
  {
    v38 = ((v37 - v36) >> 4);
    v39 = v38;
    if (v38 <= (v33[3] - v33[1]) >> 4)
    {
      goto LABEL_24;
    }

LABEL_22:
    if (!(v39 >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v38 = ((v35 - v34) >> 6) * 1.2;
  v39 = v38;
  if (v38 > (v33[3] - v33[1]) >> 4)
  {
    goto LABEL_22;
  }

LABEL_24:
  v119 = (v33 + 1);
  v40 = v33[4];
  if (v33[5] != v40)
  {
    v41 = 0;
    v42 = 0;
    v120 = v33;
    while (1)
    {
      v43 = v40 + (v42 << 6);
      v44 = a2[4];
      if (v41 >= (a2[5] - v44) >> 6)
      {
        LODWORD(v46) = 0;
        v45 = 0;
        v47 = *v43;
      }

      else
      {
        v45 = *(v44 + (v41 << 6));
        v46 = HIDWORD(v45);
        v47 = *v43;
        if (v45)
        {
          if (((v45 << 32) | (4 * (HIDWORD(v45) & 0x3FFFFFFF)) | (v45 >> 63) | (v45 >> 61) & 2) < ((v47 >> 30) & 0xFFFFFFFC | (v47 << 32) | (v47 >> 63) | (v47 >> 61) & 2))
          {
            ++v41;
            goto LABEL_28;
          }
        }

        else
        {
          v45 = 0;
        }
      }

      if (((4 * v46) | (v45 << 32) | (v46 >> 31) | ((v46 >> 29) & 2)) == ((v47 >> 30) & 0xFFFFFFFC | (v47 << 32) | (v47 >> 63) | (v47 >> 61) & 2))
      {
        v48 = v44 + (v41 << 6);
        v49 = *(v48 + 58);
        if (v49 == 1)
        {
          v50 = 1;
LABEL_139:
          *(v43 + 58) = v50;
          goto LABEL_140;
        }

        v52 = *(v48 + 40);
        if (*(a1 + 21072) != 1)
        {
          v56 = *(v43 + 40);
          if (v49 == 3)
          {
LABEL_80:
            if (v52 == v56)
            {
              goto LABEL_84;
            }

            v65 = v52 - v56;
            v66 = -(v52 - v56);
            if (v65 <= 0.0)
            {
              v65 = v66;
            }

            if (v65 < 2.22044605e-16)
            {
LABEL_84:
              *(v43 + 58) = 3;
              sub_351010((a1 + 7824), v47, &__p);
              v67 = __p;
              v68 = v122;
              if (__p != v122)
              {
                v69 = vcvtad_u64_f64(v56);
                do
                {
                  v70 = *v67;
                  v71 = sub_2B51D8(a1, *v67 & 0xFFFFFFFFFFFFLL);
                  v72 = (v71 - *v71);
                  v73 = *v72;
                  if ((v70 & 0xFF000000000000) != 0)
                  {
                    if (v73 >= 0x9B)
                    {
                      if (v72[77])
                      {
                        v74 = *(v71 + v72[77]);
                        if ((v74 & 2) != 0)
                        {
                          goto LABEL_95;
                        }
                      }
                    }
                  }

                  else if (v73 >= 0x9B)
                  {
                    if (v72[77])
                    {
                      v74 = *(v71 + v72[77]);
                      if (v74)
                      {
LABEL_95:
                        if (!v72[13] || *(a1 + 21076) >= *(v71 + v72[13]))
                        {
                          v75 = v72[4];
                          if (v75)
                          {
                            v75 = *(v71 + v75);
                          }

                          if (v75 >= *(a1 + 21088) && ((v74 & 0x4000000) == 0 || (*(a1 + 21080) & 1) == 0))
                          {
                            v76 = *v67;
                            v77 = sub_2B51D8(a1, *v67 & 0xFFFFFFFFFFFFLL);
                            v78 = (v77 - *v77);
                            if (*v78 < 0x1Du)
                            {
                              v79 = 0;
                            }

                            else
                            {
                              v79 = v78[14];
                              if (v79)
                              {
                                v79 = *(v77 + v79);
                              }
                            }

                            if ((v76 & 0xFF000000000000) == 0x1000000000000)
                            {
                              v80 = -v79;
                            }

                            else
                            {
                              v80 = v79;
                            }

                            sub_38E49C(&v125, v80, 1 << *(v43 + 16), v69);
                            sub_377AEC(v119, &v125);
                          }
                        }
                      }
                    }
                  }

                  ++v67;
                }

                while (v67 != v68);
              }

LABEL_140:
              ++v41;
              ++v42;
              v33 = v120;
              goto LABEL_28;
            }

LABEL_110:
            v38 = v56 / sub_35F94C(a1 + 12488, v47);
            if (v38 < *(a1 + 21096) || v38 > *(a1 + 21100))
            {
              *(v43 + 58) = 3;
              sub_351010((a1 + 7824), *v43, &__p);
              v81 = __p;
              v82 = v122;
              if (__p == v122)
              {
                goto LABEL_140;
              }

              v83 = vcvtad_u64_f64(v56);
              while (1)
              {
                v84 = *v81;
                v85 = sub_2B51D8(a1, *v81 & 0xFFFFFFFFFFFFLL);
                v86 = (v85 - *v85);
                v87 = *v86;
                if ((v84 & 0xFF000000000000) != 0)
                {
                  if (v87 >= 0x9B)
                  {
                    if (v86[77])
                    {
                      v88 = *(v85 + v86[77]);
                      if ((v88 & 2) != 0)
                      {
                        goto LABEL_123;
                      }
                    }
                  }
                }

                else if (v87 >= 0x9B)
                {
                  if (v86[77])
                  {
                    v88 = *(v85 + v86[77]);
                    if (v88)
                    {
LABEL_123:
                      if (!v86[13] || *(a1 + 21076) >= *(v85 + v86[13]))
                      {
                        v89 = v86[4];
                        if (v89)
                        {
                          v89 = *(v85 + v89);
                        }

                        if (v89 >= *(a1 + 21088) && ((v88 & 0x4000000) == 0 || (*(a1 + 21080) & 1) == 0))
                        {
                          v90 = *v81;
                          v91 = sub_2B51D8(a1, *v81 & 0xFFFFFFFFFFFFLL);
                          v92 = (v91 - *v91);
                          if (*v92 < 0x1Du)
                          {
                            v93 = 0;
                          }

                          else
                          {
                            v93 = v92[14];
                            if (v93)
                            {
                              v93 = *(v91 + v93);
                            }
                          }

                          if ((v90 & 0xFF000000000000) == 0x1000000000000)
                          {
                            v94 = -v93;
                          }

                          else
                          {
                            v94 = v93;
                          }

                          sub_38E49C(&v125, v94, 1 << *(v43 + 16), v83);
                          sub_377AEC(v119, &v125);
                        }
                      }
                    }
                  }
                }

                if (++v81 == v82)
                {
                  goto LABEL_140;
                }
              }
            }

LABEL_138:
            v50 = 2;
            goto LABEL_139;
          }

LABEL_48:
          if (v49 == 2)
          {
            if (v52 == v56)
            {
              goto LABEL_138;
            }

            v38 = v52 - v56;
            v57 = -(v52 - v56);
            if (v38 <= 0.0)
            {
              v38 = v57;
            }

            if (v38 < 2.22044605e-16)
            {
              goto LABEL_138;
            }
          }

          goto LABEL_110;
        }

        LODWORD(v38) = *(a1 + 21104);
        v53 = *&v38;
        v54 = v52 / v53;
        if (v54 >= 0.0)
        {
          if (v54 >= 4.50359963e15)
          {
            goto LABEL_73;
          }

          v55 = (v54 + v54) + 1;
        }

        else
        {
          if (v54 <= -4.50359963e15)
          {
            goto LABEL_73;
          }

          v55 = (v54 + v54) - 1 + (((v54 + v54) - 1) >> 63);
        }

        v54 = (v55 >> 1);
LABEL_73:
        v63 = *(v43 + 40) / v53;
        if (v63 >= 0.0)
        {
          if (v63 >= 4.50359963e15)
          {
            goto LABEL_79;
          }

          v64 = (v63 + v63) + 1;
        }

        else
        {
          if (v63 <= -4.50359963e15)
          {
            goto LABEL_79;
          }

          v64 = (v63 + v63) - 1 + (((v63 + v63) - 1) >> 63);
        }

        v63 = (v64 >> 1);
LABEL_79:
        v52 = fmax(v54 * v53, 1.0);
        v38 = v63 * v53;
        v56 = fmax(v38, 1.0);
        if (v49 == 3)
        {
          goto LABEL_80;
        }

        goto LABEL_48;
      }

      if (((v10 >> *(v43 + 16)) & 1) != 0 && !*(v43 + 17) && !*(v43 + 8))
      {
        v127 = v47;
        sub_363ADC(a1 + 11720, &v127, &v125);
        v51 = v125 ? *(v126 + 8) : sub_363C44(a1 + 7824, v127);
        if (v51 >= *(a1 + 21088))
        {
          v38 = sub_35F94C(a1 + 12488, *v43);
          v58 = *&v38 <= -1 || ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
          v59 = v58 && (*&v38 - 1) >= 0xFFFFFFFFFFFFFLL;
          v60 = !v59 || (*&v38 & 0x7FFFFFFFFFFFFFFFLL) == 0;
          if (v60 && v38 > 0.0)
          {
            break;
          }
        }
      }

LABEL_27:
      *(v43 + 58) = 1;
      ++v42;
LABEL_28:
      v40 = v33[4];
      if (v42 >= (v33[5] - v40) >> 6)
      {
        goto LABEL_159;
      }
    }

    sub_351010((a1 + 7824), *v43, &__p);
    v62 = __p;
    v61 = v122;
    if (__p == v122)
    {
      v33 = v120;
      goto LABEL_27;
    }

    while (1)
    {
      v95 = *v62;
      v96 = sub_2B51D8(a1, *v62 & 0xFFFFFFFFFFFFLL);
      v97 = (v96 - *v96);
      v98 = *v97;
      if ((v95 & 0xFF000000000000) != 0)
      {
        if (v98 >= 0x9B)
        {
          if (v97[77])
          {
            v99 = *(v96 + v97[77]);
            if ((v99 & 2) != 0)
            {
              goto LABEL_150;
            }
          }
        }
      }

      else if (v98 >= 0x9B)
      {
        if (v97[77])
        {
          v99 = *(v96 + v97[77]);
          if (v99)
          {
LABEL_150:
            if (!v97[13] || *(a1 + 21076) >= *(v96 + v97[13]))
            {
              v100 = v97[4];
              if (v100)
              {
                v100 = *(v96 + v100);
              }

              if (v100 >= *(a1 + 21088) && ((v99 & 0x4000000) == 0 || (*(a1 + 21080) & 1) == 0))
              {
                sub_2B51D8(a1, *v62 & 0xFFFFFFFFFFFFLL);
                operator new();
              }
            }
          }
        }
      }

      if (++v62 == v61)
      {
        v33 = v120;
        goto LABEL_27;
      }
    }
  }

LABEL_159:
  v101 = v33[1];
  v102 = v33[2];
  v103 = 126 - 2 * __clz((v102 - v101) >> 4);
  if (v102 == v101)
  {
    v104 = 0;
  }

  else
  {
    v104 = v103;
  }

  sub_377C0C(v101, v102, v104, 1);
  v106 = v33[1];
  v105 = v33[2];
  if (v106 != v105)
  {
    v107 = v106 - 16;
    do
    {
      if (v107 + 32 == v105)
      {
        goto LABEL_182;
      }

      v108 = *(v107 + 16);
      v107 += 16;
    }

    while (v108 != *(v107 + 16) || *(v107 + 8) != *(v107 + 24));
    v110 = v107 + 32;
    if (v107 + 32 == v105)
    {
      v111 = v107 + 16;
      if (v107 + 16 == v105)
      {
        goto LABEL_182;
      }

      goto LABEL_181;
    }

    do
    {
      if (*v107 != *v110 || *(v107 + 8) != *(v110 + 8))
      {
        *(v107 + 16) = *v110;
        v107 += 16;
      }

      v110 += 16;
    }

    while (v110 != v105);
    v106 = v33[1];
    v105 = v33[2];
    v111 = v107 + 16;
    if (v107 + 16 != v105)
    {
LABEL_181:
      v105 = v111;
      v33[2] = v111;
    }
  }

LABEL_182:
  *&v125 = *v118;
  v113 = sub_362538(v118 + 2, v125)[5];
  if (!v113)
  {
LABEL_185:
    operator new();
  }

  while (1)
  {
    v114 = v113;
    if (!*(v113 + 28))
    {
      break;
    }

    v113 = *v113;
    if (!*v114)
    {
      goto LABEL_185;
    }
  }

  *(v113 + 32) += (v105 - v106) >> 4;
  v115 = sub_7EA60(v124);
  *&v125 = *v118;
  v116 = sub_362538(v118 + 2, v125);
  LODWORD(v117) = *(v116 + 14);
  *(v116 + 14) = (v115 + v117);
LABEL_187:
  if (__p)
  {
    v122 = __p;
    operator delete(__p);
  }
}

void sub_35BC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
    v21 = a19;
    if (!a19)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v21 = a19;
    if (!a19)
    {
      goto LABEL_3;
    }
  }

  operator delete(v21);
  _Unwind_Resume(exception_object);
}

time_t sub_35BC90(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = &a2[1][*a2];
  v23 = *a2;
  v24 = v4;
  v25 = 0x2C700000000;
  if (sub_32BB58(&v23))
  {
    while (v25 != 4)
    {
      sub_32BC3C(&v23);
      if (!sub_32BB58(&v23))
      {
        goto LABEL_30;
      }
    }

    v5 = sub_32BDF0(&v23, v24);
    v6 = v23;
    v7 = &v23[v5];
    v23 = v7;
    if (v7 > v24)
    {
LABEL_31:
      exception = __cxa_allocate_exception(0x40uLL);
      v17 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    __t.__d_.__rep_ = v6;
    v21 = v7;
    v22 = 0x2C700000000;
    if (sub_32BB58(&__t))
    {
      while (v22 != 2)
      {
        if (v22 == 1)
        {
          v8 = sub_32BDF0(&__t, v21);
          v9 = v8;
          rep = __t.__d_.__rep_;
          __t.__d_.__rep_ += v8;
          if (__t.__d_.__rep_ > v21)
          {
            goto LABEL_31;
          }

          if (v8 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v19) = v8;
          if (v8)
          {
            memmove(&__dst, rep, v8);
            *(&__dst + v9) = 0;
            v11 = *a3 + 560;
            if ((*(*a3 + 583) & 0x80000000) == 0)
            {
              goto LABEL_9;
            }
          }

          else
          {
            LOBYTE(__dst) = 0;
            v11 = *a3 + 560;
            if ((*(*a3 + 583) & 0x80000000) == 0)
            {
              goto LABEL_9;
            }
          }

LABEL_8:
          operator delete(*v11);
LABEL_9:
          *v11 = __dst;
          *(v11 + 16) = v19;
          if (!sub_32BB58(&__t))
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_32BC3C(&__t);
          if (!sub_32BB58(&__t))
          {
            goto LABEL_30;
          }
        }
      }

      v12 = sub_32BDF0(&__t, v21);
      v13 = v12;
      v14 = __t.__d_.__rep_;
      __t.__d_.__rep_ += v12;
      if (__t.__d_.__rep_ > v21)
      {
        goto LABEL_31;
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v19) = v12;
      if (v12)
      {
        memmove(&__dst, v14, v12);
        *(&__dst + v13) = 0;
        v11 = *a3 + 584;
        if ((*(*a3 + 607) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        LOBYTE(__dst) = 0;
        v11 = *a3 + 584;
        if ((*(*a3 + 607) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_8;
    }
  }

LABEL_30:
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  result = std::chrono::system_clock::to_time_t(&__t);
  *(*a3 + 544) = result;
  return result;
}

void sub_35BF48(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = 126 - 2 * __clz(0x86BCA1AF286BCA1BLL * (v3 - v2));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_3742F4(v2, v3, &v7, v5, 1);
  v6 = sub_3773F8(*a1, *(a1 + 8));
  if (v6 != *(a1 + 8))
  {
    sub_3617F4(a1, v6);
  }
}

void sub_35C00C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int **a4)
{
  v8 = (*a2 + *(a2 + 8));
  v40 = *a2;
  v41 = v8;
  v42 = 0x2C700000000;
  if (sub_32BB58(&v40))
  {
    while (v42 != 1)
    {
      sub_32BC3C(&v40);
      if (!sub_32BB58(&v40))
      {
        return;
      }
    }

    v9 = sub_32BDF0(&v40, v41);
    v10 = v40;
    v11 = v40 + v9;
    v40 = v11;
    if (v11 > v41)
    {
      goto LABEL_40;
    }

    v38[0] = v10;
    v38[1] = v11;
    v39 = 0x2C700000000;
    if (sub_32BB58(v38))
    {
      v12 = 0;
      do
      {
        while (1)
        {
          v13 = v39;
          sub_32BC3C(v38);
          v14 = sub_32BB58(v38);
          if (v13 != 6)
          {
            break;
          }

          v12 = 1;
          if (!v14)
          {
            goto LABEL_14;
          }
        }
      }

      while (v14);
      if (v12)
      {
LABEL_14:
        *&v34 = *a4;
        v15 = sub_362538(a4 + 2, v34);
        sub_34FA94(a1 + 20256, a2, a3, (v15 + 3), &v34);
        if (!v34)
        {
          return;
        }

        v36 = a3;
        v16 = *a4;
        v17 = *(*a4 + 77);
        v18 = (v17 - 152);
        v19 = *(v17 - 129);
        if (v19 < 0)
        {
          if (*(v17 - 144) != 19)
          {
LABEL_29:
            v25 = 0;
LABEL_30:
            v37 = v25;
            for (i = *v16; i; i &= ~(1 << v27))
            {
              v27 = __clz(__rbit32(i));
              v35 = v27;
              sub_35C2EC((*a4 + 8), &v34);
            }

            if (!a3)
            {
              v28 = (*a2 + *(a2 + 8));
              v40 = *a2;
              v41 = v28;
              v42 = 0x2C700000000;
              if (sub_32BB58(&v40))
              {
                while (v42 != 7)
                {
                  sub_32BC3C(&v40);
                  if (!sub_32BB58(&v40))
                  {
                    return;
                  }
                }

                v29 = sub_32BDF0(&v40, v41);
                v30 = v40;
                v40 = (v40 + v29);
                if (v40 <= v41)
                {
                  v33[0] = v30;
                  v33[1] = v29;
                  sub_35C41C(a1 + 7824, v34);
                  sub_34EC38(v33);
                  return;
                }

LABEL_40:
                exception = __cxa_allocate_exception(0x40uLL);
                v32 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
              }
            }

            return;
          }

          v18 = *v18;
        }

        else if (v19 != 19)
        {
          goto LABEL_29;
        }

        v20 = *v18;
        v21 = v18[1];
        v22 = *(v18 + 11);
        v25 = v20 == 0x70732E656C707061 && v21 == 0x636F6D2E73646565 && v22 == 0x64656B636F6D2E73;
        goto LABEL_30;
      }
    }
  }
}

void sub_35C2EC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v3[2] = a2[2];
    v3[3] = v7;
    *v3 = v5;
    v3[1] = v6;
    v8 = (v3 + 4);
LABEL_3:
    *(a1 + 8) = v8;
    return;
  }

  v9 = *a1;
  v10 = v3 - *a1;
  v11 = v10 >> 6;
  v12 = (v10 >> 6) + 1;
  if (v12 >> 58)
  {
    sub_1794();
  }

  v13 = v4 - v9;
  if (v13 >> 5 > v12)
  {
    v12 = v13 >> 5;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFC0)
  {
    v14 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    if (!(v14 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v15 = (v11 << 6);
  v16 = a2[1];
  *v15 = *a2;
  v15[1] = v16;
  v17 = a2[3];
  v15[2] = a2[2];
  v15[3] = v17;
  v8 = (v11 << 6) + 64;
  memcpy(0, v9, v10);
  *a1 = 0;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  *(a1 + 8) = v8;
}

uint64_t sub_35C41C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = sub_31D994(a1 + 16, a2, 1);
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = &v4[-*v4];
  if (*v5 < 5u)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!*(v5 + 2))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = &v4[*(v5 + 2) + *&v4[*(v5 + 2)]];
  if (*v6 <= (HIDWORD(a2) & 0x3FFFFFFFu))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = (&v6[(HIDWORD(a2) & 0x3FFFFFFF) + 1] + v6[(HIDWORD(a2) & 0x3FFFFFFF) + 1]);
  v8 = (v7 - *v7);
  v9 = *v8;
  if (v9 < 0xB)
  {
    goto LABEL_17;
  }

  if (v8[5])
  {
    v10 = *(a1 + 3889);
    if (v10 != 254)
    {
      v11 = (v7 + v8[5] + *(v7 + v8[5]));
      v12 = *v11;
      if (v12)
      {
        v13 = (v11 + 1);
        result = 0x7FFFFFFFFFFFFFFFLL;
        while (v10 != *v13)
        {
          ++v13;
          if (!--v12)
          {
            return result;
          }
        }

LABEL_17:
        if (v9 < 7)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_18:
  v15 = v8[3];
  if (v15)
  {
    v16 = *(v7 + v15);
    goto LABEL_21;
  }

LABEL_20:
  v16 = 0;
LABEL_21:
  if (a2 >> 62)
  {
    return v16;
  }

  else
  {
    return -v16;
  }
}

void sub_35C564(uint64_t a1, uint64_t a2, int a3, void **a4)
{
  v4 = a4;
  v8 = (a1 + 20480);
  v9 = *a4;
  v10 = sub_335E7C(a2);
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        operator new();
      }

      operator new();
    }

    if (!v10)
    {
      operator new();
    }

    if (v10 == 1)
    {
      operator new();
    }

    return;
  }

  v222 = v4;
  if (v10 > 5)
  {
    if (v10 != 6)
    {
      if (v10 != 7 || v8[476] != 1)
      {
        return;
      }

      sub_33C110(a1 + 20304, a2, &__dst);
      v14 = __dst;
      v220 = v238;
      if (__dst == v238)
      {
        v100 = __dst;
      }

      else
      {
        do
        {
          while (1)
          {
            v15 = (((*(v14 + 10) - *(v14 + 9)) << 30) - 0x100000000) >> 32;
            if (v15)
            {
              v16 = 0;
              do
              {
                while (1)
                {
                  v18 = *(v14 + 15);
                  v19 = (*(v14 + 16) - v18) >> 3;
                  if (v19 <= v16)
                  {
                    v20 = (v16 + 1);
                    v257[0] = 0x7FFFFFFFFFFFFFFFLL;
                    if (v20 <= v19)
                    {
                      if (v20 < v19)
                      {
                        *(v14 + 16) = v18 + 8 * v20;
                      }
                    }

                    else
                    {
                      sub_331250(v14 + 120, v20 - v19, v257);
                      v18 = *(v14 + 15);
                    }
                  }

                  v21 = *(v18 + 8 * v16);
                  v22 = *(v14 + 25) - *(v14 + 24);
                  v23 = ((v22 << 30) - 0x100000000) >> 32;
                  if (v23)
                  {
                    v24 = 0;
                    v25 = v22 >> 2;
                    v26 = (v22 >> 2) - 1;
                    while (1)
                    {
                      v27 = v24 + 1;
                      if (v25 <= (v24 + 1))
                      {
                        break;
                      }

                      v28 = *(v14 + 30);
                      if (v26 > (*(v14 + 31) - v28) >> 3)
                      {
                        v212 = "no or incomplete vertex data stored";
                        v213 = 35;
                        goto LABEL_322;
                      }

                      if (*(v28 + 8 * v24) == v21)
                      {
                        goto LABEL_36;
                      }

                      ++v24;
                      if (v23 == v27)
                      {
                        goto LABEL_43;
                      }
                    }

                    v212 = "vertex id out of range";
                    v213 = 22;
LABEL_322:
                    exception = __cxa_allocate_exception(0x40uLL);
                    v215 = sub_2D390(exception, v212, v213);
                  }

                  LODWORD(v24) = 0;
LABEL_36:
                  if (v24 == v23)
                  {
LABEL_43:
                    LODWORD(v24) = -1;
                  }

                  v29 = 0x6F96F96F96F96F97 * ((*(v9 + 63) - *(v9 + 62)) >> 3);
                  v30 = *(v9 + 66);
                  v31 = *(v9 + 67);
                  if (v30 >= v31)
                  {
                    break;
                  }

                  v17 = *v9;
                  *v30 = v21;
                  *(v30 + 8) = v17;
                  *(v30 + 16) = v29;
                  *(v30 + 24) = v16;
                  *(v30 + 28) = v24;
                  *(v9 + 66) = v30 + 32;
                  if (++v16 == v15)
                  {
                    goto LABEL_57;
                  }
                }

                v32 = *(v9 + 65);
                v33 = v30 - v32;
                v34 = (v30 - v32) >> 5;
                v35 = v34 + 1;
                if ((v34 + 1) >> 59)
                {
                  sub_1794();
                }

                v36 = v31 - v32;
                if (v36 >> 4 > v35)
                {
                  v35 = v36 >> 4;
                }

                if (v36 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v37 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v37 = v35;
                }

                if (v37)
                {
                  if (!(v37 >> 59))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v38 = *v9;
                v39 = 32 * v34;
                *v39 = v21;
                *(v39 + 8) = v38;
                *(v39 + 16) = v29;
                *(v39 + 24) = v16;
                *(v39 + 28) = v24;
                v40 = 32 * v34 + 32;
                memcpy(0, v32, v33);
                *(v9 + 65) = 0;
                *(v9 + 66) = v40;
                *(v9 + 67) = 0;
                if (v32)
                {
                  operator delete(v32);
                }

                *(v9 + 66) = v40;
                ++v16;
              }

              while (v16 != v15);
            }

LABEL_57:
            v41 = (((*(v14 + 25) - *(v14 + 24)) << 30) - 0x100000000) >> 32;
            if (v41)
            {
              v43 = 0;
              do
              {
                v46 = *(v14 + 30);
                v47 = (*(v14 + 31) - v46) >> 3;
                if (v47 <= v43)
                {
                  v48 = (v43 + 1);
                  v257[0] = 0x7FFFFFFFFFFFFFFFLL;
                  if (v48 <= v47)
                  {
                    if (v48 < v47)
                    {
                      *(v14 + 31) = v46 + 8 * v48;
                    }
                  }

                  else
                  {
                    sub_331250((v14 + 15), v48 - v47, v257);
                    v46 = *(v14 + 30);
                  }
                }

                v49 = *(v46 + 8 * v43);
                v50 = *(v14 + 10) - *(v14 + 9);
                v51 = ((v50 << 30) - 0x100000000) >> 32;
                if (v51)
                {
                  v52 = 0;
                  v54 = v50 >> 2;
                  v55 = (v50 >> 2) - 1;
                  while (1)
                  {
                    v56 = v52 + 1;
                    if (v54 <= (v52 + 1))
                    {
                      break;
                    }

                    v57 = *(v14 + 15);
                    if (v55 > (*(v14 + 16) - v57) >> 3)
                    {
                      v216 = "no or incomplete vertex data stored";
                      v217 = 35;
                      goto LABEL_325;
                    }

                    if (*(v57 + 8 * v52) == v49)
                    {
                      goto LABEL_72;
                    }

                    ++v52;
                    if (v51 == v56)
                    {
                      goto LABEL_83;
                    }
                  }

                  v216 = "vertex id out of range";
                  v217 = 22;
LABEL_325:
                  v218 = __cxa_allocate_exception(0x40uLL);
                  v219 = sub_2D390(v218, v216, v217);
                }

                LODWORD(v52) = 0;
LABEL_72:
                if (v52 == v51 || v52 == -1)
                {
LABEL_83:
                  v58 = 0x6F96F96F96F96F97 * ((*(v9 + 63) - *(v9 + 62)) >> 3);
                  v59 = *(v9 + 66);
                  v60 = *(v9 + 67);
                  if (v59 < v60)
                  {
                    v44 = *v9;
                    *v59 = v49;
                    *(v59 + 8) = v44;
                    *(v59 + 16) = v58;
                    *(v59 + 24) = -1;
                    *(v59 + 28) = v43;
                    v45 = v59 + 32;
                  }

                  else
                  {
                    v61 = *(v9 + 65);
                    v62 = v59 - v61;
                    v63 = (v59 - v61) >> 5;
                    v64 = v63 + 1;
                    if ((v63 + 1) >> 59)
                    {
                      sub_1794();
                    }

                    v65 = v60 - v61;
                    if (v65 >> 4 > v64)
                    {
                      v64 = v65 >> 4;
                    }

                    if (v65 >= 0x7FFFFFFFFFFFFFE0)
                    {
                      v66 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v66 = v64;
                    }

                    if (v66)
                    {
                      if (!(v66 >> 59))
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v67 = *v9;
                    v68 = 32 * v63;
                    *v68 = v49;
                    *(v68 + 8) = v67;
                    *(v68 + 16) = v58;
                    *(v68 + 24) = -1;
                    *(v68 + 28) = v43;
                    v45 = 32 * v63 + 32;
                    memcpy(0, v61, v62);
                    *(v9 + 65) = 0;
                    *(v9 + 66) = v45;
                    *(v9 + 67) = 0;
                    if (v61)
                    {
                      operator delete(v61);
                    }
                  }

                  *(v9 + 66) = v45;
                }

                ++v43;
              }

              while (v43 != v41);
            }

            v42 = *(v9 + 63);
            if (v42 < *(v9 + 64))
            {
              break;
            }

            v4 = v222;
            *(v9 + 63) = sub_32EC80(v9 + 62, v14);
            v14 = (v14 + 312);
            if (v14 == v220)
            {
              goto LABEL_157;
            }
          }

          sub_32EAE4((v9 + 124), *(v9 + 63), v14);
          v4 = v222;
          *(v9 + 63) = v42 + 312;
          *(v9 + 63) = v42 + 312;
          v14 = (v14 + 312);
        }

        while (v14 != v220);
LABEL_157:
        v100 = __dst;
        v14 = v238;
      }

      v257[0] = *v4;
      v101 = sub_362538(v4 + 2, v257[0]);
      v102 = *(v101 + 35);
      if (v100 != v14)
      {
        ++v102;
      }

      *(v101 + 35) = v102;
      v103 = v238;
      v104 = __dst;
      v257[0] = *v4;
      v105 = sub_362538(v4 + 2, v257[0]);
      *(v105 + 36) -= 1762037865 * ((v103 - v104) >> 3);
      v257[0] = *v4;
      v106 = sub_362538(v4 + 2, v257[0]);
      ++*(v106 + 27);
      v107 = __dst;
      if (__dst)
      {
        for (i = v238; i != v107; sub_361918(&__dst, i))
        {
          i -= 312;
        }

        v238 = v107;
        operator delete(__dst);
      }

      return;
    }

    sub_33BB1C(a2, &v232);
    if (*(&v234 + 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v81 = HIBYTE(v233);
      if (v233 < 0)
      {
        v81 = *(&v232 + 1);
      }

      if (v81)
      {
        LODWORD(v234) = *v9;
        v82 = *(v9 + 43);
        if (v82 >= *(v9 + 44))
        {
          v85 = sub_363070(v9 + 42, &v232);
        }

        else
        {
          v83 = v232;
          *(v82 + 16) = v233;
          *v82 = v83;
          v232 = 0uLL;
          *(v82 + 24) = v234;
          v84 = v236;
          *(v82 + 40) = v235;
          *(v82 + 56) = v84;
          v233 = 0;
          v235 = 0uLL;
          v236 = 0;
          v85 = v82 + 64;
        }

        *(v9 + 43) = v85;
        __dst = *v4;
        v120 = sub_362538(v4 + 2, __dst);
        ++*(v120 + 27);
        __dst = *v4;
        v121 = sub_362538(v4 + 2, __dst);
        ++*(v121 + 39);
LABEL_188:
        if ((SHIBYTE(v236) & 0x80000000) == 0)
        {
          goto LABEL_189;
        }

        goto LABEL_206;
      }
    }

    if (!sub_7E7E4(3u))
    {
      goto LABEL_188;
    }

    sub_19594F8(v257);
    v86 = sub_4A5C(v257, "Invalid CongestionZone incident in ", 35);
    v87 = v8[655];
    if (v87 >= 0)
    {
      v88 = a1 + 21112;
    }

    else
    {
      v88 = *(a1 + 21112);
    }

    if (v87 >= 0)
    {
      v89 = v8[655];
    }

    else
    {
      v89 = *(a1 + 21120);
    }

    v90 = sub_4A5C(v86, v88, v89);
    v91 = sub_4A5C(v90, ": ", 2);
    sub_160BE50(&__dst, 0, 0);
    sub_225EE2C(&__dst, *a2, *(a2 + 8));
    sub_1957658(&__dst, &__p);
    sub_160C094(&__dst);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v91, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v266 & 0x10) != 0)
    {
      v109 = v265;
      if (v265 < v262)
      {
        v265 = v262;
        v109 = v262;
      }

      v110 = &v261;
    }

    else
    {
      if ((v266 & 8) == 0)
      {
        v94 = 0;
        v239 = 0;
        goto LABEL_201;
      }

      v110 = v259;
      v109 = v260;
    }

    v124 = *v110;
    v94 = v109 - *v110;
    if (v94 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v94 >= 0x17)
    {
      operator new();
    }

    v239 = v109 - *v110;
    if (v94)
    {
      memmove(&__dst, v124, v94);
    }

LABEL_201:
    *(&__dst + v94) = 0;
    sub_7E854(&__dst, 3u);
    if (v239 < 0)
    {
      operator delete(__dst);
    }

    if (v264 < 0)
    {
      operator delete(*(&v263 + 1));
    }

    std::locale::~locale(&v258);
    std::ostream::~ostream();
    std::ios::~ios();
    if ((SHIBYTE(v236) & 0x80000000) == 0)
    {
LABEL_189:
      if ((SHIBYTE(v233) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_207;
    }

LABEL_206:
    operator delete(v235);
    if ((SHIBYTE(v233) & 0x80000000) == 0)
    {
      return;
    }

LABEL_207:
    operator delete(v232);
    return;
  }

  if (v10 != 4)
  {
    sub_7E9A4(&v232);
    sub_3391F4(a1 + 20304, a2, &__dst);
    v11 = v242;
    if ((v242 & 0x80u) != 0)
    {
      v11 = v241;
    }

    if (v11)
    {
      if (sub_38F79C(&__dst, a3))
      {
        sub_38C5FC(&__dst, v4);
        if (sub_38F52C(&__dst))
        {
          if (v256)
          {
            v12 = v252;
            v13 = v253;
            if (v252 != v253)
            {
              if (v255 == 7)
              {
                do
                {
                  v257[1] = 0;
                  v257[0] = 0;
                  v258.__locale_ = 0;
                  sub_2B78A8(a1, v12, v257);
                  sub_3120CC(v257);
                  v129 = v257[0];
                  v130 = v257[1];
                  *&v223 = v9 + 62;
                  if (v257[0] == v257[1])
                  {
                    v132 = v257[0];
                  }

                  else
                  {
                    do
                    {
                      v131 = **v4;
                      __p.__r_.__value_.__r.__words[0] = *v129;
                      LODWORD(__p.__r_.__value_.__r.__words[1]) = v131;
                      sub_377858(&v223, &__p);
                      ++v129;
                    }

                    while (v129 != v130);
                    v132 = v257[1];
                    v129 = v257[0];
                  }

                  __p.__r_.__value_.__r.__words[0] = *v4;
                  v133 = sub_362538(v4 + 2, __p.__r_.__value_.__l.__data_);
                  *(v133 + 37) += (v132 - v129) >> 3;
                  v134 = *(v12 + 3);
                  v135 = *(v12 + 4);
                  *&v223 = v9 + 62;
                  if (v134 != v135)
                  {
                    do
                    {
                      v136 = **v4;
                      __p.__r_.__value_.__r.__words[0] = *v134;
                      LODWORD(__p.__r_.__value_.__r.__words[1]) = v136;
                      sub_377858(&v223, &__p);
                      ++v134;
                    }

                    while (v134 != v135);
                    v134 = *(v12 + 3);
                  }

                  v137 = *(v12 + 4);
                  __p.__r_.__value_.__r.__words[0] = *v4;
                  v138 = sub_362538(v4 + 2, __p.__r_.__value_.__l.__data_);
                  *(v138 + 37) += (v137 - v134) >> 3;
                  if (v257[0])
                  {
                    v257[1] = v257[0];
                    operator delete(v257[0]);
                  }

                  v12 += 176;
                }

                while (v12 != v13);
              }

              else if (v255 == 5)
              {
                do
                {
                  if ((*(a1 + 21056) & 1) != 0 && v8[584] == 1 && v256 == 3)
                  {
                    memset(&__p, 0, sizeof(__p));
                    sub_2B78FC(a1, v12, &__p);
                    sub_3120CC(&__p);
                    v113 = __p.__r_.__value_.__l.__size_;
                    v112 = __p.__r_.__value_.__r.__words[0];
                    *&v223 = v9 + 78;
                    if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
                    {
                      v114 = __p.__r_.__value_.__r.__words[0];
                    }

                    else
                    {
                      do
                      {
                        sub_38C3B0(*v112, *v9, 1, a1, v257);
                        sub_3779B0(&v223, v257);
                        ++v112;
                      }

                      while (v112 != v113);
                      v114 = __p.__r_.__value_.__l.__size_;
                      v112 = __p.__r_.__value_.__r.__words[0];
                    }

                    v257[0] = *v222;
                    v115 = sub_362538(v222 + 2, v257[0]);
                    *(v115 + 38) += (v114 - v112) >> 3;
                    v116 = *(v12 + 3);
                    v117 = *(v12 + 4);
                    *&v223 = v9 + 78;
                    if (v116 != v117)
                    {
                      do
                      {
                        sub_38C3B0(*v116, *v9, 1, a1, v257);
                        sub_3779B0(&v223, v257);
                        ++v116;
                      }

                      while (v116 != v117);
                      v116 = *(v12 + 3);
                    }

                    v118 = *(v12 + 4);
                    v257[0] = *v222;
                    v119 = sub_362538(v222 + 2, v257[0]);
                    *(v119 + 38) += (v118 - v116) >> 3;
                    if (__p.__r_.__value_.__r.__words[0])
                    {
                      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    v4 = v222;
                  }

                  v12 += 176;
                }

                while (v12 != v13);
              }
            }
          }
        }

        v251 = *v9;
        if (v254[0] == 3)
        {
          v257[0] = *v4;
          v140 = sub_362538(v4 + 2, v257[0]);
          ++*(v140 + 34);
        }

        else if (v254[0] == 2)
        {
          v257[0] = *v4;
          v139 = sub_362538(v4 + 2, v257[0]);
          ++*(v139 + 33);
        }

        v141 = *(v9 + 29);
        if (v141 >= *(v9 + 30))
        {
          v143 = sub_362A08(v9 + 28, &__dst);
        }

        else
        {
          sub_362BB4(v141, &__dst);
          v143 = v142 + 704;
        }

        *(v9 + 29) = v143;
        v257[0] = *v4;
        v144 = sub_362538(v4 + 2, v257[0]);
        ++*(v144 + 27);
        v257[0] = *v4;
        v145 = sub_362538(v4 + 2, v257[0]);
        ++*(v145 + 32);
        v146 = sub_7EA60(&v232);
        v257[0] = *v4;
        v147 = sub_362538(v4 + 2, v257[0]);
        LODWORD(v148) = *(v147 + 46);
        *(v147 + 46) = (v146 + v148);
        sub_33D080(v254);
        v126 = v252;
        if (!v252)
        {
          goto LABEL_248;
        }

        v149 = v253;
        v128 = v252;
        if (v253 == v252)
        {
          goto LABEL_246;
        }

        do
        {
          v149 = sub_33D5A0(v149 - 176);
        }

        while (v149 != v126);
        goto LABEL_245;
      }

LABEL_220:
      sub_33D080(v254);
      v126 = v252;
      if (!v252)
      {
        goto LABEL_248;
      }

      v127 = v253;
      v128 = v252;
      if (v253 == v252)
      {
        goto LABEL_246;
      }

      do
      {
        v127 = sub_33D5A0(v127 - 176);
      }

      while (v127 != v126);
LABEL_245:
      v128 = v252;
LABEL_246:
      v253 = v126;
      v150 = v128;
      goto LABEL_247;
    }

    if (!sub_7E7E4(3u))
    {
      goto LABEL_220;
    }

    sub_19594F8(v257);
    v95 = sub_4A5C(v257, "Invalid AreaIncident in ", 24);
    v96 = v8[655];
    if (v96 >= 0)
    {
      v97 = a1 + 21112;
    }

    else
    {
      v97 = *(a1 + 21112);
    }

    if (v96 >= 0)
    {
      v98 = v8[655];
    }

    else
    {
      v98 = *(a1 + 21120);
    }

    sub_4A5C(v95, v97, v98);
    if ((v266 & 0x10) != 0)
    {
      v122 = v265;
      if (v265 < v262)
      {
        v265 = v262;
        v122 = v262;
      }

      v123 = &v261;
    }

    else
    {
      if ((v266 & 8) == 0)
      {
        v99 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_215:
        __p.__r_.__value_.__s.__data_[v99] = 0;
        sub_7E854(&__p, 3u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v264 < 0)
        {
          operator delete(*(&v263 + 1));
        }

        std::locale::~locale(&v258);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_220;
      }

      v123 = v259;
      v122 = v260;
    }

    v125 = *v123;
    v99 = v122 - *v123;
    if (v99 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v99 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v122 - *v123;
    if (v99)
    {
      memmove(&__p, v125, v99);
    }

    goto LABEL_215;
  }

  sub_3361DC((a1 + 20304), a2, &__dst);
  v69 = v242;
  if ((v242 & 0x80u) != 0)
  {
    v69 = v241;
  }

  if (!v69)
  {
    operator new();
  }

  if (__dst == v238 || (sub_33CDFC(a1 + 20304) & 1) == 0 && !sub_38F79C(&__dst, a3) || sub_38F7C0(&__dst, a3))
  {
    goto LABEL_248;
  }

  sub_38F7D8(&__dst, a3);
  v70 = v245;
  if ((v245 & 0x80u) != 0)
  {
    v70 = v244[1];
  }

  if (v70 && __dst != v238 && *__dst != *(__dst + 1))
  {
    v257[0] = *v4;
    v71 = sub_362538(v4 + 2, v257[0]);
    ++*(v71 + 40);
    v72 = **__dst | (*(*__dst + 4) << 32);
    v73 = sub_35ECE0(a1, v72);
    sub_35ED24(a1, v73, &v232);
    sub_25BE0(&v223, &v232);
    if (sub_29C98(&v223))
    {
      if (sub_7E7E4(1u))
      {
        sub_19594F8(v257);
        v74 = sub_4A5C(v257, "Invalid timezone retrieval for road_id ", 39);
        v75 = sub_2FF718(v74, __ROR8__(v72, 32));
        v76 = sub_4A5C(v75, ", region_id ", 12);
        std::ostream::operator<<();
        v77 = sub_4A5C(v76, ", and timezone name ", 20);
        if (v233 >= 0)
        {
          v78 = &v232;
        }

        else
        {
          v78 = v232;
        }

        if (v233 >= 0)
        {
          v79 = HIBYTE(v233);
        }

        else
        {
          v79 = *(&v232 + 1);
        }

        v80 = sub_4A5C(v77, v78, v79);
        sub_4A5C(v80, ".", 1);
        sub_1959680(v257, &__p);
        sub_7E854(&__p, 1u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_1959728(v257);
      }

      goto LABEL_318;
    }

    sub_3914(a1 + 20424, &v223);
    if ((sub_113AC((a1 + 20472), (a1 + 20424), v244, 0) & 1) == 0)
    {
LABEL_318:
      v257[0] = *v4;
      v211 = sub_362538(v4 + 2, v257[0]);
      ++*(v211 + 41);
      sub_25F00(&v223);
      if ((SHIBYTE(v233) & 0x80000000) == 0)
      {
        goto LABEL_248;
      }

      v150 = v232;
LABEL_247:
      operator delete(v150);
      goto LABEL_248;
    }

    sub_25F00(&v223);
    if (SHIBYTE(v233) < 0)
    {
      operator delete(v232);
    }
  }

  v151 = *(v9 + 19);
  v152 = *(v9 + 20);
  v153 = *(v9 + 22);
  v221 = (v9 + 44);
  v154 = *(v9 + 23);
  sub_38F018(&__dst, v231);
  sub_38F270(&__dst, v230);
  v155 = sub_35EF30(v231, v230);
  sub_35EE48(v9 + 22, v155 - 0x5555555555555555 * ((v154 - v153) >> 3));
  sub_334D18(v230);
  sub_334D18(v231);
  sub_38F46C(&__dst, v257);
  sub_3632D4(&v232, v257);
  sub_3632D4(&__p, &v263);
  v156 = 0x34F72C234F72C235 * ((v152 - v151) >> 4);
  v158 = *(&v235 + 1);
  v157 = v235;
  while (v157 == v158 || v228 == v229)
  {
    if ((v157 == v158) == (v228 == v229))
    {
      goto LABEL_298;
    }

    v160 = *v232;
    v161 = *(v9 + 23);
    v162 = *(v9 + 24);
    if (v161 < v162)
    {
LABEL_261:
      v163 = *v9;
      *v161 = v160;
      *(v161 + 8) = v163;
      *(v161 + 16) = v156;
      *(v9 + 23) = v161 + 24;
      if (v243 != 14)
      {
        goto LABEL_293;
      }

LABEL_277:
      v173 = *(a1 + 21056) & v240;
      if (v173)
      {
        sub_38C3B0(v160, *v9, v173, a1, &v223);
        v174 = *(v9 + 40);
        v175 = *(v9 + 41);
        if (v174 >= v175)
        {
          v180 = *(v9 + 39);
          v181 = v174 - v180;
          v182 = (v174 - v180) >> 6;
          v183 = v182 + 1;
          if ((v182 + 1) >> 58)
          {
            sub_1794();
          }

          v184 = v175 - v180;
          if (v184 >> 5 > v183)
          {
            v183 = v184 >> 5;
          }

          if (v184 >= 0x7FFFFFFFFFFFFFC0)
          {
            v185 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v185 = v183;
          }

          if (v185)
          {
            if (!(v185 >> 58))
            {
              operator new();
            }

            sub_1808();
          }

          v186 = (v182 << 6);
          v187 = v224;
          *v186 = v223;
          v186[1] = v187;
          v188 = v226;
          v186[2] = v225;
          v186[3] = v188;
          v179 = (v182 << 6) + 64;
          memcpy(0, v180, v181);
          *(v9 + 39) = 0;
          *(v9 + 40) = v179;
          *(v9 + 41) = 0;
          if (v180)
          {
            operator delete(v180);
          }

          v4 = v222;
        }

        else
        {
          v176 = v223;
          v177 = v224;
          v178 = v226;
          *(v174 + 2) = v225;
          *(v174 + 3) = v178;
          *v174 = v176;
          *(v174 + 1) = v177;
          v179 = (v174 + 64);
          v4 = v222;
        }

        *(v9 + 40) = v179;
      }

      goto LABEL_293;
    }

LABEL_265:
    v164 = *v221;
    v165 = 0xAAAAAAAAAAAAAAABLL * ((v161 - *v221) >> 3);
    v166 = v165 + 1;
    if (v165 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v167 = 0xAAAAAAAAAAAAAAABLL * ((v162 - v164) >> 3);
    if (2 * v167 > v166)
    {
      v166 = 2 * v167;
    }

    if (v167 >= 0x555555555555555)
    {
      v168 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v168 = v166;
    }

    if (v168)
    {
      if (v168 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v169 = 8 * ((v161 - *v221) >> 3);
    v170 = *v9;
    *v169 = v160;
    *(v169 + 8) = v170;
    *(v169 + 16) = v156;
    v171 = 24 * v165 + 24;
    v172 = 24 * v165 - (v161 - v164);
    memcpy((v169 - (v161 - v164)), v164, v161 - v164);
    *(v9 + 22) = v172;
    *(v9 + 23) = v171;
    *(v9 + 24) = 0;
    if (v164)
    {
      operator delete(v164);
    }

    v4 = v222;
    *(v9 + 23) = v171;
    if (v243 == 14)
    {
      goto LABEL_277;
    }

LABEL_293:
    v189 = v232 + 8;
    v158 = *(&v235 + 1);
    v157 = v235;
    v190 = (*(&v235 + 1) - v235) >> 3;
    *&v232 = v232 + 8;
    if (*(&v232 + 1) < (v190 - 1))
    {
      v191 = *(&v232 + 1) + 1;
      v192 = (v235 + 8 * *(&v232 + 1));
      do
      {
        if (v189 != *v192)
        {
          break;
        }

        *(&v232 + 1) = v191;
        v189 = *(v233 + 8 * v191);
        *&v232 = v189;
        ++v191;
        ++v192;
      }

      while (v190 != v191);
    }
  }

  if (*(&v232 + 1) != __p.__r_.__value_.__l.__size_ || v232 != __p.__r_.__value_.__r.__words[0])
  {
    v160 = *v232;
    v161 = *(v9 + 23);
    v162 = *(v9 + 24);
    if (v161 < v162)
    {
      goto LABEL_261;
    }

    goto LABEL_265;
  }

LABEL_298:
  sub_334D18(&__p);
  sub_334D18(&v232);
  sub_3355FC(v257);
  v257[0] = *v4;
  v193 = sub_362538(v4 + 2, v257[0]);
  ++*(v193 + 27);
  v194 = sub_38F580(&__dst);
  v257[0] = *v4;
  v195 = sub_362538(v4 + 2, v257[0]);
  *(v195 + 28) += v194;
  v196 = sub_38F5C4(&__dst);
  v257[0] = *v4;
  v197 = sub_362538(v4 + 2, v257[0]);
  *(v197 + 29) += v196;
  v198 = sub_38F608(&__dst);
  v257[0] = *v4;
  v199 = sub_362538(v4 + 2, v257[0]);
  *(v199 + 30) += v198;
  v200 = sub_38F6F0(&__dst);
  v257[0] = *v4;
  v201 = sub_362538(v4 + 2, v257[0]);
  *(v201 + 42) += v200;
  v202 = sub_38F6F0(&__dst);
  v203 = v248;
  v257[0] = *v4;
  v204 = sub_362538(v4 + 2, v257[0]);
  if (v202)
  {
    v205 = v203;
  }

  else
  {
    v205 = 0;
  }

  *(v204 + 43) += v205;
  if (!sub_38F6F0(&__dst) || (v206 = v249, v249 == v250))
  {
    v209 = 0;
  }

  else
  {
    while (1)
    {
      v207 = *v206;
      v208 = v206[1];
      if (*v206 != v208)
      {
        break;
      }

LABEL_306:
      v209 = 0;
      v206 += 7;
      if (v206 == v250)
      {
        goto LABEL_310;
      }
    }

    while (*(v207 + 56) == -1)
    {
      v207 += 72;
      if (v207 == v208)
      {
        goto LABEL_306;
      }
    }

    v209 = 1;
  }

LABEL_310:
  v257[0] = *v4;
  v210 = sub_362538(v4 + 2, v257[0]);
  *(v210 + 44) += v209;
  sub_35F20C(a1, &__dst, v4);
  if (sub_38F64C(&__dst, 0))
  {
    if (v8[655] < 0)
    {
      sub_325C(v257, *(a1 + 21112), *(a1 + 21120));
    }

    else
    {
      *v257 = *(a1 + 21112);
      v258.__locale_ = *(a1 + 21128);
    }
  }

  else
  {
    sub_3608D0(v257, "");
  }

  if (SHIBYTE(locale) < 0)
  {
    operator delete(v246);
  }

  v246 = *v257;
  locale = v258.__locale_;
  sub_35F7D4((v9 + 38), &__dst);
LABEL_248:
  sub_2C0F28(&__dst);
}

void sub_35E844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x4E0]);
  sub_25F00(&a12);
  if (a52 < 0)
  {
    operator delete(a47);
  }

  sub_2C0F28(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void sub_35EBE8(_Unwind_Exception *a1)
{
  *(v2 + 504) = v1;
  sub_32EE50(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void sub_35EC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20)
  {
    operator delete(a20);
    sub_33D00C(&STACK[0x220]);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x35EC44);
}

void sub_35EC2C(_Unwind_Exception *a1)
{
  v2 = STACK[0x4E0];
  if (STACK[0x4E0])
  {
    STACK[0x4E8] = v2;
    operator delete(v2);
  }

  sub_33D00C(&STACK[0x220]);
  _Unwind_Resume(a1);
}

uint64_t sub_35ECE0(uint64_t a1, unint64_t a2)
{
  v2 = sub_2B51D8(a1, a2);
  v3 = (v2 - *v2);
  if (*v3 >= 0xDu && (v4 = v3[6]) != 0)
  {
    return *(v2 + v4);
  }

  else
  {
    return 0;
  }
}

int *sub_35ED24@<X0>(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, _BYTE *a3@<X8>)
{
  result = sub_2AF704(a1 + 3896, 1u, 0);
  v6 = (result - *result);
  if (*v6 < 0xBu)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6[5];
    if (v7)
    {
      v7 += result + *(result + v7);
    }
  }

  v8 = (v7 + 4 * a2 + 4 + *(v7 + 4 * a2 + 4));
  v9 = (v8 - *v8);
  if (*v9 >= 7u && (v10 = v9[3]) != 0)
  {
    v11 = (v8 + v10);
    v12 = *v11;
    v13 = *(v11 + v12);
    if (v13 >= 0x17)
    {
      operator new();
    }

    a3[23] = v13;
    if (v13)
    {
      result = memcpy(a3, v11 + v12 + 4, v13);
    }

    a3[v13] = 0;
  }

  else
  {
    a3[23] = 0;
    *a3 = 0;
  }

  return result;
}

void *sub_35EE48(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_35EF30(void *a1, void *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = a1[5];
  v4 = a1[6];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = a2[2];
  v6 = a2[3];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = a2[5];
  v8 = a2[6];
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return v8 - v9;
}

void sub_35F1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    operator delete(v9);
    sub_334D18(&a9);
    _Unwind_Resume(a1);
  }

  sub_334D18(&a9);
  _Unwind_Resume(a1);
}

void sub_35F1F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_35F20C(uint64_t result, uint64_t a2, void *a3)
{
  if (*(result + 21048) == 1 && (*(a2 + 167) & 1) == 0 && (*(a2 + 96) | 4) == 6)
  {
    result = sub_38E994(a2 + 320);
    if (result)
    {
      for (i = *(a2 + 360); i != *(a2 + 368); i += 7)
      {
        v6 = *i;
        v7 = i[1];
        if (*i != v7)
        {
          while (*(v6 + 56) == -1)
          {
            v6 += 72;
            if (v6 == v7)
            {
              goto LABEL_6;
            }
          }

          return result;
        }

LABEL_6:
        ;
      }
    }

    if ((sub_38F538(a2, 3) & 1) != 0 || (sub_38F538(a2, 0) & 1) != 0 || (result = sub_38F538(a2, 2), result))
    {
      sub_7E9A4(v34);
      sub_38F46C(a2, &v24);
      v17 = v24;
      v19 = 0;
      v20 = 0;
      v18 = 0;
      if (v26 != v25)
      {
        if (((v26 - v25) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      if (v28 != v27)
      {
        if (((v28 - v27) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v10 = v29;
      v12 = 0;
      v13 = 0;
      v11 = 0;
      if (v31 != v30)
      {
        if (((v31 - v30) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (v33 != v32)
      {
        if (((v33 - v32) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      v8 = sub_7EA60(v34);
      *&v24 = *a3;
      result = sub_362538(a3 + 2, v24);
      LODWORD(v9) = *(result + 88);
      *(result + 88) = (v8 + v9);
    }
  }

  return result;
}

void sub_35F754(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (v30)
  {
    operator delete(v30);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_35F79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_334D18(&a19);
  sub_334D18(&a27);
  sub_3355FC(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_35F7D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = sub_2C0B08(a1, a2);
    *(a1 + 8) = v5;
    return v5 - 464;
  }

  else
  {
    sub_3633F8(a1, *(a1 + 8), a2);
    *(a1 + 8) = v3 + 464;
    *(a1 + 8) = v3 + 464;
    return v3;
  }
}

void *sub_35F848(void *result, unint64_t a2)
{
  if (0x34F72C234F72C235 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x8D3DCB08D3DCB1)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_35F938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3637E8(va);
  _Unwind_Resume(a1);
}

double sub_35F94C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2 & 0xFFFFFFFFFFFFLL | (((a2 >> 62) & 1) << 48);
    v10 = sub_36383C(a1, v9 ^ 0x1000000000000);
    if (!v10)
    {
      return sub_363970(a1, v9 ^ 0x1000000000000);
    }

    v11 = &v10[-*v10];
    v12 = *v11;
    if (v12 >= 9 && *(v11 + 4))
    {
      v13 = *&v10[*(v11 + 4)];
      v14 = *(a1 + 3872);
      if (!*(a1 + 3872))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = 0xFFFF;
      v14 = *(a1 + 3872);
      if (!*(a1 + 3872))
      {
        goto LABEL_24;
      }
    }

    if (v12 >= 0xF)
    {
      v20 = *(v11 + 7);
      if (v20)
      {
        v21 = &v10[v20 + *&v10[v20]];
        if (*v21 >= v14)
        {
          v22 = *&v21[2 * v14 + 2];
          if ((v22 + 1) > 1u)
          {
            return v22 / 100.0;
          }
        }
      }
    }

LABEL_24:
    result = -1.0;
    if ((v13 - 1) > 0xFFFDu)
    {
      return result;
    }

    return v13 / 100.0;
  }

  v4 = sub_2B3284(a1, a2, 1);
  result = -1.0;
  if (!v4)
  {
    return result;
  }

  v6 = &v4[-*v4];
  v7 = *v6;
  if (a2 >> 62)
  {
    if (v7 < 5)
    {
      return result;
    }

    v8 = *(v6 + 2);
    if (!v8)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v7 >= 7)
  {
    v8 = *(v6 + 3);
    if (v8)
    {
LABEL_14:
      v15 = &v4[v8 + *&v4[v8]];
      if (*v15 <= (HIDWORD(a2) & 0x3FFFFFFFu))
      {
        return result;
      }

      v16 = (&v15[(HIDWORD(a2) & 0x3FFFFFFF) + 1] + v15[(HIDWORD(a2) & 0x3FFFFFFF) + 1]);
      v17 = (v16 - *v16);
      v18 = *v17;
      if (v18 >= 9 && v17[4])
      {
        v13 = *(v16 + v17[4]);
        v19 = *(a1 + 3872);
        if (!*(a1 + 3872))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v13 = 0xFFFF;
        v19 = *(a1 + 3872);
        if (!*(a1 + 3872))
        {
          goto LABEL_32;
        }
      }

      if (v18 < 0xF || (v23 = v17[7]) == 0 || (v24 = (v16 + v23 + *(v16 + v23)), *v24 < v19) || (v22 = *(v24 + v19 + 1), (v22 + 1) <= 1u))
      {
LABEL_32:
        if ((v13 - 1) > 0xFFFDu)
        {
          return result;
        }

        return v13 / 100.0;
      }

      return v22 / 100.0;
    }
  }

  return result;
}

void sub_35FB74(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v5 = sub_2AF704(a1 + 3896, 1u, 1);
  if (v5 && (v6 = &v5[-*v5], *v6 >= 0xBu) && (v7 = *(v6 + 5)) != 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v8 = *&v5[v7];
    v9 = &v5[v7 + v8];
    v10 = *v9;
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13 = 4 * v10;
      v14 = &v5[v7 + v8];
      v41 = a2;
      v42 = a3;
      do
      {
        v16 = *&v9[v11 + 4];
        v17 = &v14[v11 + v16 - *&v9[v11 + 4 + v16]];
        if (*(v17 + 2) >= 5u && (v18 = *(v17 + 4)) != 0)
        {
          v19 = &v14[v16 + v18 + v11 + *&v14[v11 + 4 + v16 + v18]];
          v20 = *(v19 + 1);
          if (v20 >= 0x17)
          {
            operator new();
          }

          v44 = *(v19 + 1);
          if (v20)
          {
            memcpy(__dst, v19 + 8, v20);
          }

          v21 = (__dst + v20);
        }

        else
        {
          v44 = 0;
          v21 = __dst;
        }

        v22 = 0;
        *v21 = 0;
        v23 = v44;
        if ((v44 & 0x80u) == 0)
        {
          v24 = v44;
        }

        else
        {
          v24 = __dst[1];
        }

        v25 = *(a2 + 23);
        v26 = v25;
        if (v25 < 0)
        {
          v25 = a2[1];
        }

        if (v24 == v25)
        {
          if ((v44 & 0x80u) == 0)
          {
            v27 = __dst;
          }

          else
          {
            v27 = __dst[0];
          }

          if (v26 >= 0)
          {
            v28 = a2;
          }

          else
          {
            v28 = *a2;
          }

          v22 = memcmp(v27, v28, v24) == 0;
          if ((v23 & 0x80000000) == 0)
          {
LABEL_25:
            if (v22)
            {
              goto LABEL_35;
            }

            goto LABEL_8;
          }
        }

        else if ((v44 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        operator delete(__dst[0]);
        if (v22)
        {
LABEL_35:
          v30 = a3[1];
          v29 = a3[2];
          if (v30 < v29)
          {
            *v30 = v12;
            v15 = v30 + 1;
          }

          else
          {
            v31 = *a3;
            v32 = v30 - *a3;
            v33 = v32 >> 1;
            if (v32 >> 1 <= -2)
            {
              sub_1794();
            }

            v34 = v14;
            v35 = v13;
            v36 = v9;
            v37 = v29 - v31;
            if (v37 <= v33 + 1)
            {
              v38 = v33 + 1;
            }

            else
            {
              v38 = v37;
            }

            if (v37 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v39 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v39 = v38;
            }

            if (v39)
            {
              if ((v39 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_1808();
            }

            v40 = (2 * v33);
            *v40 = v12;
            v15 = v40 + 1;
            memcpy(0, v31, v32);
            *v42 = 0;
            a3 = v42;
            v42[2] = 0;
            if (v31)
            {
              operator delete(v31);
            }

            v9 = v36;
            v13 = v35;
            v14 = v34;
            a2 = v41;
          }

          a3[1] = v15;
        }

LABEL_8:
        ++v12;
        v11 += 4;
      }

      while (v13 != v11);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_35FE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    *(a11 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_35FE90(uint64_t a1, void *a2)
{
  v11 = 16;
  strcpy(__p, "enable_filtering");
  v9 = 0;
  v4 = sub_5FBE4(a2, __p, &v9);
  if (v11 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v11 = 7;
  strcpy(__p, "max_frc");
  v6 = sub_62A70(a2, __p);
  if (v6)
  {
    v7 = *(v6 + 12);
    if (v7 == 4 || v7 == 3)
    {
      v8 = *(v6 + 10);
      if ((v11 & 0x80000000) == 0)
      {
LABEL_11:
        *(a1 + 4) = v8;
        operator new();
      }

LABEL_10:
      operator delete(*__p);
      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v8 = *(v6 + 5);
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v8 = 6;
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

void sub_3603BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3603F0(uint64_t a1, void *a2)
{
  v4 = a2[1];
  *&v17 = *a2;
  *(&v17 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2B7950(a1, &v17);
  v5 = (a1 + 3880);
  v6 = *(&v17 + 1);
  if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *v5 = *a2;
  *a2 = 0;
  a2[1] = 0;
  v7 = *(a1 + 3880);
  v8 = *(a1 + 3888);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  *(a1 + 3896) = v7;
  *(a1 + 3904) = v8;
  do
  {
    v10 = a1 + v9;
    *(v10 + 3912) = 0;
    *(v10 + 3936) = 0;
    *(v10 + 3920) = 0;
    *(v10 + 3944) = 0;
    v9 += 48;
  }

  while (v9 != 3840);
  *(a1 + 7752) = 0u;
  v11 = *(a1 + 3880);
  *(a1 + 7768) = 16;
  if (!v11)
  {
    *(a1 + 7772) = 0;
    goto LABEL_15;
  }

  v12 = sub_2D5538(v11, 8, 1);
  v13 = *(a1 + 3880);
  *(a1 + 7772) = v12;
  if (!v13)
  {
LABEL_15:
    LOBYTE(v15) = 0;
    *(a1 + 7773) = 0;
    goto LABEL_16;
  }

  v14 = sub_2D5538(v13, 21, 1);
  v15 = *v5;
  *(a1 + 7773) = v14;
  if (v15)
  {
    LOBYTE(v15) = sub_2D5658(v15);
  }

LABEL_16:
  *(a1 + 7774) = v15;
  *(a1 + 7776) = 0u;
  *(a1 + 7792) = 0u;
  *(a1 + 7808) = 0u;
  return a1;
}

void sub_360578(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 3896);
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_36059C(uint64_t *a1, uint64_t *a2, char a3)
{
  v5 = *a2;
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  a1[2] = v5;
  a1[3] = v7;
  do
  {
    v9 = &a1[v8];
    *(v9 + 8) = 0;
    *(v9 + 14) = 0;
    v9[5] = 0;
    v9[8] = 0;
    v8 += 6;
  }

  while (v8 != 480);
  *(a1 + 242) = 0u;
  v10 = *a1;
  if (*a1)
  {
    LOBYTE(v10) = sub_2D5658(v10);
  }

  *(a1 + 3888) = v10;
  *(a1 + 3889) = a3;
  a1[487] = &unk_2290750;
  a1[492] = 0;
  a1[488] = 0;
  *(a1 + 489) = 0u;
  a1[493] = &unk_2290750;
  a1[498] = 0;
  a1[494] = 0;
  *(a1 + 495) = 0u;
  a1[499] = &unk_2290750;
  a1[504] = 0;
  a1[500] = 0;
  *(a1 + 501) = 0u;
  a1[505] = &unk_2290750;
  a1[510] = 0;
  *(a1 + 253) = 0u;
  a1[508] = 0;
  a1[511] = &unk_2290750;
  a1[516] = 0;
  a1[514] = 0;
  *(a1 + 256) = 0u;
  a1[517] = &unk_2290750;
  a1[522] = 0;
  a1[520] = 0;
  *(a1 + 259) = 0u;
  a1[523] = &unk_2290750;
  a1[528] = 0;
  a1[526] = 0;
  *(a1 + 262) = 0u;
  a1[529] = &unk_2290750;
  a1[534] = 0;
  a1[532] = 0;
  *(a1 + 265) = 0u;
  a1[535] = &unk_2290750;
  a1[540] = 0;
  a1[538] = 0;
  *(a1 + 268) = 0u;
  a1[541] = &unk_2290750;
  a1[546] = 0;
  a1[544] = 0;
  *(a1 + 271) = 0u;
  a1[547] = &unk_2290750;
  a1[552] = 0;
  a1[550] = 0;
  *(a1 + 274) = 0u;
  a1[553] = &unk_2290750;
  a1[558] = 0;
  a1[556] = 0;
  *(a1 + 277) = 0u;
  a1[559] = &unk_2290750;
  a1[564] = 0;
  a1[562] = 0;
  *(a1 + 280) = 0u;
  a1[565] = &unk_2290750;
  a1[570] = 0;
  a1[568] = 0;
  *(a1 + 283) = 0u;
  a1[571] = &unk_2290750;
  a1[576] = 0;
  a1[574] = 0;
  *(a1 + 286) = 0u;
  a1[577] = &unk_2290750;
  a1[582] = 0;
  a1[580] = 0;
  *(a1 + 289) = 0u;
  return a1;
}

void sub_360760(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_36077C(uint64_t a1, __int128 *a2, __int16 a3, __int16 a4)
{
  v5 = 0;
  v6 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *a1 = v6;
  do
  {
    v7 = a1 + v5;
    *(v7 + 16) = 0;
    *(v7 + 40) = 0;
    *(v7 + 24) = 0;
    *(v7 + 48) = 0;
    v5 += 48;
  }

  while (v5 != 3840);
  *(a1 + 3856) = 0u;
  *(a1 + 3872) = a3;
  *(a1 + 3876) = 1;
  *(a1 + 3880) = a4;
  *(a1 + 3884) = 1;
  v8 = sub_2B3284(a1, 1u, 1);
  if (!v8)
  {
    return a1;
  }

  v9 = &v8[-*v8];
  if (*v9 < 0x11u)
  {
    v11 = 1;
LABEL_9:
    *(a1 + 3876) = v11;
    if (v11 > *(a1 + 3872))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = v8[v10];
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  *(a1 + 3876) = 1;
  if (*(a1 + 3872))
  {
LABEL_10:
    *(a1 + 3872) = 0;
  }

LABEL_11:
  v12 = &v8[-*v8];
  if (*v12 < 0x13u)
  {
    v14 = 1;
  }

  else
  {
    v13 = *(v12 + 9);
    if (!v13)
    {
      *(a1 + 3884) = 1;
      if (!*(a1 + 3880))
      {
        return a1;
      }

      goto LABEL_17;
    }

    v14 = v8[v13];
    if (!v14)
    {
      return a1;
    }
  }

  *(a1 + 3884) = v14;
  if (v14 > *(a1 + 3880))
  {
    return a1;
  }

LABEL_17:
  *(a1 + 3880) = 0;
  return a1;
}

_BYTE *sub_3608D0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_360988(uint64_t a1)
{
  if (*(a1 + 744))
  {
    operator delete(*(a1 + 720));
    *(a1 + 720) = &unk_2290750;
    *(a1 + 760) = 0;
    *(a1 + 728) = 0;
    *(a1 + 744) = 0;
    *(a1 + 736) = 0;
  }

  if (*(a1 + 696))
  {
    operator delete(*(a1 + 672));
    *(a1 + 672) = &unk_2290750;
    *(a1 + 712) = 0;
    *(a1 + 680) = 0;
    *(a1 + 696) = 0;
    *(a1 + 688) = 0;
  }

  if (*(a1 + 648))
  {
    operator delete(*(a1 + 624));
    *(a1 + 624) = &unk_2290750;
    *(a1 + 664) = 0;
    *(a1 + 632) = 0;
    *(a1 + 648) = 0;
    *(a1 + 640) = 0;
  }

  if (*(a1 + 600))
  {
    operator delete(*(a1 + 576));
    *(a1 + 576) = &unk_2290750;
    *(a1 + 616) = 0;
    *(a1 + 584) = 0;
    *(a1 + 600) = 0;
    *(a1 + 592) = 0;
  }

  if (*(a1 + 552))
  {
    operator delete(*(a1 + 528));
    *(a1 + 528) = &unk_2290750;
    *(a1 + 568) = 0;
    *(a1 + 536) = 0;
    *(a1 + 552) = 0;
    *(a1 + 544) = 0;
  }

  if (*(a1 + 504))
  {
    operator delete(*(a1 + 480));
    *(a1 + 520) = 0;
    *(a1 + 480) = &unk_2290750;
    *(a1 + 488) = 0;
    *(a1 + 496) = 0;
    *(a1 + 504) = 0;
  }

  if (*(a1 + 456))
  {
    operator delete(*(a1 + 432));
    *(a1 + 472) = 0;
    *(a1 + 432) = &unk_2290750;
    *(a1 + 440) = 0;
    *(a1 + 448) = 0;
    *(a1 + 456) = 0;
  }

  if (*(a1 + 408))
  {
    operator delete(*(a1 + 384));
    *(a1 + 424) = 0;
    *(a1 + 384) = &unk_2290750;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 408) = 0;
  }

  if (*(a1 + 360))
  {
    operator delete(*(a1 + 336));
    *(a1 + 376) = 0;
    *(a1 + 336) = &unk_2290750;
    *(a1 + 344) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
  }

  if (*(a1 + 312))
  {
    operator delete(*(a1 + 288));
    *(a1 + 328) = 0;
    *(a1 + 288) = &unk_2290750;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
  }

  if (*(a1 + 264))
  {
    operator delete(*(a1 + 240));
    *(a1 + 280) = 0;
    *(a1 + 240) = &unk_2290750;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
  }

  if (*(a1 + 216))
  {
    operator delete(*(a1 + 192));
    *(a1 + 232) = 0;
    *(a1 + 192) = &unk_2290750;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
  }

  if (*(a1 + 168))
  {
    operator delete(*(a1 + 144));
    *(a1 + 184) = 0;
    *(a1 + 144) = &unk_2290750;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  if (*(a1 + 120))
  {
    operator delete(*(a1 + 96));
    *(a1 + 136) = 0;
    *(a1 + 96) = &unk_2290750;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  if (*(a1 + 72))
  {
    operator delete(*(a1 + 48));
    *(a1 + 88) = 0;
    *(a1 + 48) = &unk_2290750;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  if (*(a1 + 24))
  {
    operator delete(*a1);
    *(a1 + 40) = 0;
    *a1 = &unk_2290750;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  return a1;
}