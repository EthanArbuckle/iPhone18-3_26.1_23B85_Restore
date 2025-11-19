uint64_t sub_C7C3D4(uint64_t result, int a2, _DWORD *a3, int a4)
{
  v7 = result;
  v8 = *(result + 48);
  *(result + 64) = v8;
  v9 = -4;
  v10 = -8;
  if (!a4)
  {
    v10 = -4;
  }

  if (!a3)
  {
    v9 = 0;
  }

  v11 = v10 + v9;
  v12 = *(result + 40);
  v13 = (v11 - v12) & (*(result + 80) - 1);
  if (v13)
  {
    v14 = *(result + 56);
    if (v14 - v8 < v13)
    {
      result = sub_C7BF74(result, v13);
      v14 = *(v7 + 56);
      LODWORD(v12) = *(v7 + 40);
    }

    v15 = 0;
    *(v7 + 56) = v14 - v13;
    *(v7 + 40) = v12 + v13;
    do
    {
      *(*(v7 + 56) + v15++) = 0;
    }

    while (v13 != v15);
  }

  if (a3)
  {
    v16 = *(v7 + 56);
    if ((v16 - *(v7 + 64)) <= 3)
    {
      result = sub_C7BF74(v7, 4uLL);
      v16 = *(v7 + 56);
    }

    *(v7 + 56) = v16 - 4;
    *(v7 + 40) += 4;
    *(v16 - 4) = *a3;
  }

  if (*(v7 + 80) <= 3uLL)
  {
    *(v7 + 80) = 4;
  }

  v17 = *(v7 + 40);
  v18 = -v17 & 3;
  if ((-v17 & 3) != 0)
  {
    v19 = *(v7 + 56);
    if (v19 - *(v7 + 64) < v18)
    {
      result = sub_C7BF74(v7, v18);
      v19 = *(v7 + 56);
      v17 = *(v7 + 40);
    }

    v20 = 0;
    *(v7 + 56) = v19 - v18;
    *(v7 + 40) = v17 + v18;
    do
    {
      *(*(v7 + 56) + v20++) = 0;
    }

    while (v18 != v20);
    v17 = *(v7 + 40);
    if (*(v7 + 80) <= 3uLL)
    {
      *(v7 + 80) = 4;
    }
  }

  v21 = v17 - a2 + 4;
  v22 = *(v7 + 64);
  v23 = -v17 & 3;
  if ((-v17 & 3) != 0)
  {
    v24 = *(v7 + 56);
    if (v24 - v22 < v23)
    {
      result = sub_C7BF74(v7, v23);
      v24 = *(v7 + 56);
      v17 = *(v7 + 40);
    }

    v25 = 0;
    *(v7 + 56) = v24 - v23;
    *(v7 + 40) = v17 + v23;
    do
    {
      *(*(v7 + 56) + v25++) = 0;
    }

    while (v23 != v25);
    v22 = *(v7 + 64);
  }

  v26 = *(v7 + 56);
  if ((v26 - v22) <= 3)
  {
    result = sub_C7BF74(v7, 4uLL);
    v26 = *(v7 + 56);
  }

  *(v7 + 40) += 4;
  *(v26 - 4) = v21;
  v27 = v26 - 4;
  *(v7 + 56) = v27;
  if (a4)
  {
    v28 = *(v7 + 40);
    if (*(v7 + 80) <= 3uLL)
    {
      *(v7 + 80) = 4;
    }

    v29 = *(v7 + 64);
    v30 = -v28 & 3;
    if ((-v28 & 3) != 0)
    {
      v31 = v28;
      if (v27 - v29 < v30)
      {
        result = sub_C7BF74(v7, v30);
        v27 = *(v7 + 56);
        v31 = *(v7 + 40);
      }

      v32 = 0;
      *(v7 + 56) = v27 - v30;
      *(v7 + 40) = v31 + v30;
      do
      {
        *(*(v7 + 56) + v32++) = 0;
      }

      while (v30 != v32);
      v27 = *(v7 + 56);
      v29 = *(v7 + 64);
    }

    if ((v27 - v29) <= 3)
    {
      result = sub_C7BF74(v7, 4uLL);
      v27 = *(v7 + 56);
    }

    *(v7 + 40) += 4;
    *(v27 - 4) = v28;
    *(v7 + 56) = v27 - 4;
  }

  *(v7 + 79) = 1;
  return result;
}

BOOL sub_C7C6B0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  v6 = v4 != v5;
  if (v4 != v5 || !sub_7E7E4(1u))
  {
    goto LABEL_19;
  }

  sub_19594F8(&v92);
  sub_4A5C(&v92, "The journey planner request contains no origins", 47);
  if ((v102 & 0x10) != 0)
  {
    v8 = v101;
    if (v101 < v98)
    {
      v101 = v98;
      v8 = v98;
    }

    v9 = v97;
    v7 = v8 - v97;
    if (v8 - v97 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_90:
      sub_3244();
    }

LABEL_9:
    if (v7 >= 0x17)
    {
      operator new();
    }

    v88 = v7;
    if (v7)
    {
      memmove(&__dst, v9, v7);
    }

    goto LABEL_14;
  }

  if ((v102 & 8) != 0)
  {
    v9 = v95[0];
    v7 = v96 - v95[0];
    if (v96 - v95[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_90;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v88 = 0;
LABEL_14:
  *(&__dst + v7) = 0;
  sub_7E854(&__dst, 1u);
  if (v88 < 0)
  {
    operator delete(__dst);
  }

  if (v100 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v94);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_19:
  if (*(a2 + 80) != *(a2 + 88))
  {
    if (*(a2 + 112))
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v92);
    sub_4A5C(&v92, "The journey planner request contains no destinations", 52);
    if ((v102 & 0x10) != 0)
    {
      v16 = v101;
      if (v101 < v98)
      {
        v101 = v98;
        v16 = v98;
      }

      v17 = v97;
      v13 = v16 - v97;
      if (v16 - v97 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if ((v102 & 8) == 0)
      {
        v13 = 0;
        v88 = 0;
LABEL_47:
        *(&__dst + v13) = 0;
        sub_7E854(&__dst, 1u);
        if (v88 < 0)
        {
          operator delete(__dst);
        }

        if (v100 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v94);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_52;
      }

      v17 = v95[0];
      v13 = v96 - v95[0];
      if (v96 - v95[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_92:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v88 = v13;
    if (v13)
    {
      memmove(&__dst, v17, v13);
    }

    goto LABEL_47;
  }

LABEL_52:
  v6 = 0;
  if (*(a2 + 112))
  {
LABEL_21:
    v11 = (a2 + 108);
    v10 = *(a2 + 108);
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_53:
  if (!sub_7E7E4(1u))
  {
    goto LABEL_70;
  }

  sub_19594F8(&v92);
  sub_4A5C(&v92, "The journey planner request requests no journeys.", 49);
  if ((v102 & 0x10) != 0)
  {
    v19 = v101;
    if (v101 < v98)
    {
      v101 = v98;
      v19 = v98;
    }

    v20 = v97;
    v18 = v19 - v97;
    if (v19 - v97 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_94:
      sub_3244();
    }

LABEL_60:
    if (v18 >= 0x17)
    {
      operator new();
    }

    v88 = v18;
    if (v18)
    {
      memmove(&__dst, v20, v18);
    }

    goto LABEL_65;
  }

  if ((v102 & 8) != 0)
  {
    v20 = v95[0];
    v18 = v96 - v95[0];
    if (v96 - v95[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_94;
    }

    goto LABEL_60;
  }

  v18 = 0;
  v88 = 0;
LABEL_65:
  *(&__dst + v18) = 0;
  sub_7E854(&__dst, 1u);
  if (v88 < 0)
  {
    operator delete(__dst);
  }

  if (v100 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v94);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_70:
  v6 = 0;
  v11 = (a2 + 108);
  v10 = *(a2 + 108);
  if (v10 == 0x7FFFFFFF)
  {
LABEL_22:
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&v92);
      sub_4A5C(&v92, "The journey planner request has an invalid current time", 55);
      if ((v102 & 0x10) != 0)
      {
        v14 = v101;
        if (v101 < v98)
        {
          v101 = v98;
          v14 = v98;
        }

        v15 = v97;
        v12 = v14 - v97;
        if (v14 - v97 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if ((v102 & 8) == 0)
        {
          v12 = 0;
          v88 = 0;
LABEL_44:
          *(&__dst + v12) = 0;
          sub_7E854(&__dst, 1u);
LABEL_266:
          if (v88 < 0)
          {
            operator delete(__dst);
          }

          if (v100 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v94);
          std::ostream::~ostream();
          std::ios::~ios();
          return 0;
        }

        v15 = v95[0];
        v12 = v96 - v95[0];
        if (v96 - v95[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_82:
          sub_3244();
        }
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v88 = v12;
      if (!v12)
      {
        goto LABEL_44;
      }

LABEL_43:
      memmove(&__dst, v15, v12);
      goto LABEL_44;
    }

    return 0;
  }

LABEL_71:
  if ((v10 & 0x80000000) == 0)
  {
    v23 = *(a2 + 104);
    v22 = (a2 + 104);
    v21 = v23;
    if (v23 == 0x7FFFFFFF)
    {
      goto LABEL_73;
    }

    goto LABEL_111;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v92);
    v24 = sub_4A5C(&v92, "The journey planner request has a negative current time value of ", 65);
    sub_258D4(v24);
    if ((v102 & 0x10) != 0)
    {
      v27 = v101;
      if (v101 < v98)
      {
        v101 = v98;
        v27 = v98;
      }

      v28 = v97;
      v25 = v27 - v97;
      if (v27 - v97 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_119;
      }
    }

    else
    {
      if ((v102 & 8) == 0)
      {
        v25 = 0;
        v88 = 0;
LABEL_105:
        *(&__dst + v25) = 0;
        sub_7E854(&__dst, 1u);
        if (v88 < 0)
        {
          operator delete(__dst);
        }

        if (v100 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v94);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_110;
      }

      v28 = v95[0];
      v25 = v96 - v95[0];
      if (v96 - v95[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_119:
        sub_3244();
      }
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    v88 = v25;
    if (v25)
    {
      memmove(&__dst, v28, v25);
    }

    goto LABEL_105;
  }

LABEL_110:
  v6 = 0;
  v29 = *(a2 + 104);
  v22 = (a2 + 104);
  v21 = v29;
  if (v29 == 0x7FFFFFFF)
  {
LABEL_73:
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v92);
    sub_4A5C(&v92, "The journey planner request has an invalid request time", 55);
    if ((v102 & 0x10) != 0)
    {
      v26 = v101;
      if (v101 < v98)
      {
        v101 = v98;
        v26 = v98;
      }

      v15 = v97;
      v12 = v26 - v97;
      if (v26 - v97 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_117;
      }
    }

    else
    {
      if ((v102 & 8) == 0)
      {
        v12 = 0;
        v88 = 0;
        goto LABEL_44;
      }

      v15 = v95[0];
      v12 = v96 - v95[0];
      if (v96 - v95[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_117:
        sub_3244();
      }
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v88 = v12;
    if (!v12)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_111:
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_136;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v92);
    v30 = sub_4A5C(&v92, "The journey planner request has a negative request time value of ", 65);
    sub_258D4(v30);
    if ((v102 & 0x10) != 0)
    {
      v32 = v101;
      if (v101 < v98)
      {
        v101 = v98;
        v32 = v98;
      }

      v33 = &v97;
    }

    else
    {
      if ((v102 & 8) == 0)
      {
        v31 = 0;
        v88 = 0;
LABEL_130:
        *(&__dst + v31) = 0;
        sub_7E854(&__dst, 1u);
        if (v88 < 0)
        {
          operator delete(__dst);
        }

        if (v100 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v94);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_135;
      }

      v33 = v95;
      v32 = v96;
    }

    v34 = *v33;
    v31 = v32 - *v33;
    if (v31 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v88 = v32 - *v33;
    if (v31)
    {
      memmove(&__dst, v34, v31);
    }

    goto LABEL_130;
  }

LABEL_135:
  v6 = 0;
LABEL_136:
  v35 = sub_3AFEE8(a1);
  v36 = sub_3D4D04(v35, 1u, 0);
  if (!v36)
  {
    goto LABEL_273;
  }

  v37 = &v36[-*v36];
  if (*v37 < 5u)
  {
    goto LABEL_273;
  }

  v38 = *(v37 + 2);
  if (!v38)
  {
    goto LABEL_273;
  }

  v39 = 1932735282;
  v40 = &v36[v38 + *&v36[v38]];
  v41 = &v40[-*v40];
  if (*v41 >= 5u)
  {
    v42 = *(v41 + 2);
    if (v42)
    {
      v39 = *&v40[v42] - 214748365;
    }
  }

  v43 = sub_3AFEE8(a1);
  v44 = sub_3D4D04(v43, 1u, 0);
  if (!v44 || (v45 = &v44[-*v44], *v45 < 5u) || (v46 = *(v45 + 2)) == 0)
  {
LABEL_273:
    exception = __cxa_allocate_exception(0x40uLL);
    v85 = sub_2D390(exception, "Root quad node of transit routing layer does not contain info object", 0x44uLL);
  }

  v47 = 2362232012;
  v48 = &v44[v46 + *&v44[v46]];
  v49 = &v48[-*v48];
  if (*v49 >= 7u)
  {
    v50 = *(v49 + 3);
    if (v50)
    {
      v47 = *&v48[v50] + 214748365;
      if (v47 < *v22)
      {
        if (!sub_7E7E4(1u))
        {
LABEL_177:
          v6 = 0;
          goto LABEL_178;
        }

        sub_19594F8(&v92);
        v51 = sub_4A5C(&v92, "The journey planner request has a request time too far in the future: ", 70);
        sub_35CC(&__dst, *v22);
        HIBYTE(v86[2]) = 16;
        strcpy(v86, "YYYY-MM-dd HH:mm");
        sub_4564(&__dst, v86, &v89);
        if ((v91 & 0x80u) == 0)
        {
          v52 = &v89;
        }

        else
        {
          v52 = v89;
        }

        if ((v91 & 0x80u) == 0)
        {
          v53 = v91;
        }

        else
        {
          v53 = v90;
        }

        sub_4A5C(v51, v52, v53);
        if (v91 < 0)
        {
          operator delete(v89);
          if ((SHIBYTE(v86[2]) & 0x80000000) == 0)
          {
LABEL_157:
            sub_3874(&__dst);
            v54 = v102;
            if ((v102 & 0x10) == 0)
            {
LABEL_158:
              if ((v54 & 8) == 0)
              {
                v55 = 0;
                v88 = 0;
LABEL_172:
                *(&__dst + v55) = 0;
                sub_7E854(&__dst, 1u);
                if (v88 < 0)
                {
                  operator delete(__dst);
                }

                if (v100 < 0)
                {
                  operator delete(__p);
                }

                std::locale::~locale(&v94);
                std::ostream::~ostream();
                std::ios::~ios();
                goto LABEL_177;
              }

              v57 = v95;
              v56 = v96;
LABEL_166:
              v58 = *v57;
              v55 = v56 - *v57;
              if (v55 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v55 >= 0x17)
              {
                operator new();
              }

              v88 = v56 - *v57;
              if (v55)
              {
                memmove(&__dst, v58, v55);
              }

              goto LABEL_172;
            }

LABEL_162:
            v56 = v101;
            if (v101 < v98)
            {
              v101 = v98;
              v56 = v98;
            }

            v57 = &v97;
            goto LABEL_166;
          }
        }

        else if ((SHIBYTE(v86[2]) & 0x80000000) == 0)
        {
          goto LABEL_157;
        }

        operator delete(v86[0]);
        sub_3874(&__dst);
        v54 = v102;
        if ((v102 & 0x10) == 0)
        {
          goto LABEL_158;
        }

        goto LABEL_162;
      }
    }
  }

LABEL_178:
  if (v39 <= *v22)
  {
    goto LABEL_209;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v92);
    v59 = sub_4A5C(&v92, "The journey planner request has a request time too far in the past: ", 68);
    sub_35CC(&__dst, *v22);
    HIBYTE(v86[2]) = 16;
    strcpy(v86, "YYYY-MM-dd HH:mm");
    sub_4564(&__dst, v86, &v89);
    if ((v91 & 0x80u) == 0)
    {
      v60 = &v89;
    }

    else
    {
      v60 = v89;
    }

    if ((v91 & 0x80u) == 0)
    {
      v61 = v91;
    }

    else
    {
      v61 = v90;
    }

    sub_4A5C(v59, v60, v61);
    if (v91 < 0)
    {
      operator delete(v89);
      if ((SHIBYTE(v86[2]) & 0x80000000) == 0)
      {
LABEL_188:
        sub_3874(&__dst);
        v62 = v102;
        if ((v102 & 0x10) == 0)
        {
LABEL_189:
          if ((v62 & 8) == 0)
          {
            v63 = 0;
            v88 = 0;
LABEL_203:
            *(&__dst + v63) = 0;
            sub_7E854(&__dst, 1u);
            if (v88 < 0)
            {
              operator delete(__dst);
            }

            if (v100 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v94);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_208;
          }

          v65 = v95;
          v64 = v96;
LABEL_197:
          v66 = *v65;
          v63 = v64 - *v65;
          if (v63 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v63 >= 0x17)
          {
            operator new();
          }

          v88 = v64 - *v65;
          if (v63)
          {
            memmove(&__dst, v66, v63);
          }

          goto LABEL_203;
        }

LABEL_193:
        v64 = v101;
        if (v101 < v98)
        {
          v101 = v98;
          v64 = v98;
        }

        v65 = &v97;
        goto LABEL_197;
      }
    }

    else if ((SHIBYTE(v86[2]) & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

    operator delete(v86[0]);
    sub_3874(&__dst);
    v62 = v102;
    if ((v102 & 0x10) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_193;
  }

LABEL_208:
  v6 = 0;
LABEL_209:
  if (v47 >= *v11)
  {
    goto LABEL_240;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v92);
    v67 = sub_4A5C(&v92, "The journey planner request has a current time too far in the future: ", 70);
    sub_35CC(&__dst, *v11);
    HIBYTE(v86[2]) = 16;
    strcpy(v86, "YYYY-MM-dd HH:mm");
    sub_4564(&__dst, v86, &v89);
    if ((v91 & 0x80u) == 0)
    {
      v68 = &v89;
    }

    else
    {
      v68 = v89;
    }

    if ((v91 & 0x80u) == 0)
    {
      v69 = v91;
    }

    else
    {
      v69 = v90;
    }

    sub_4A5C(v67, v68, v69);
    if (v91 < 0)
    {
      operator delete(v89);
      if ((SHIBYTE(v86[2]) & 0x80000000) == 0)
      {
LABEL_219:
        sub_3874(&__dst);
        v70 = v102;
        if ((v102 & 0x10) == 0)
        {
LABEL_220:
          if ((v70 & 8) == 0)
          {
            v71 = 0;
            v88 = 0;
LABEL_234:
            *(&__dst + v71) = 0;
            sub_7E854(&__dst, 1u);
            if (v88 < 0)
            {
              operator delete(__dst);
            }

            if (v100 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v94);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_239;
          }

          v73 = v95;
          v72 = v96;
LABEL_228:
          v74 = *v73;
          v71 = v72 - *v73;
          if (v71 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v71 >= 0x17)
          {
            operator new();
          }

          v88 = v72 - *v73;
          if (v71)
          {
            memmove(&__dst, v74, v71);
          }

          goto LABEL_234;
        }

LABEL_224:
        v72 = v101;
        if (v101 < v98)
        {
          v101 = v98;
          v72 = v98;
        }

        v73 = &v97;
        goto LABEL_228;
      }
    }

    else if ((SHIBYTE(v86[2]) & 0x80000000) == 0)
    {
      goto LABEL_219;
    }

    operator delete(v86[0]);
    sub_3874(&__dst);
    v70 = v102;
    if ((v102 & 0x10) == 0)
    {
      goto LABEL_220;
    }

    goto LABEL_224;
  }

LABEL_239:
  v6 = 0;
LABEL_240:
  if (v39 > *v11)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v92);
    v75 = sub_4A5C(&v92, "The journey planner request has a current time too far in the past: ", 68);
    sub_35CC(&__dst, *v11);
    HIBYTE(v86[2]) = 16;
    strcpy(v86, "YYYY-MM-dd HH:mm");
    sub_4564(&__dst, v86, &v89);
    if ((v91 & 0x80u) == 0)
    {
      v76 = &v89;
    }

    else
    {
      v76 = v89;
    }

    if ((v91 & 0x80u) == 0)
    {
      v77 = v91;
    }

    else
    {
      v77 = v90;
    }

    sub_4A5C(v75, v76, v77);
    if (v91 < 0)
    {
      operator delete(v89);
      if ((SHIBYTE(v86[2]) & 0x80000000) == 0)
      {
LABEL_250:
        sub_3874(&__dst);
        v78 = v102;
        if ((v102 & 0x10) == 0)
        {
LABEL_251:
          if ((v78 & 8) == 0)
          {
            v79 = 0;
            v88 = 0;
LABEL_265:
            *(&__dst + v79) = 0;
            sub_7E854(&__dst, 1u);
            goto LABEL_266;
          }

          v81 = v95;
          v80 = v96;
LABEL_259:
          v82 = *v81;
          v79 = v80 - *v81;
          if (v79 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v79 >= 0x17)
          {
            operator new();
          }

          v88 = v80 - *v81;
          if (v79)
          {
            memmove(&__dst, v82, v79);
          }

          goto LABEL_265;
        }

LABEL_255:
        v80 = v101;
        if (v101 < v98)
        {
          v101 = v98;
          v80 = v98;
        }

        v81 = &v97;
        goto LABEL_259;
      }
    }

    else if ((SHIBYTE(v86[2]) & 0x80000000) == 0)
    {
      goto LABEL_250;
    }

    operator delete(v86[0]);
    sub_3874(&__dst);
    v78 = v102;
    if ((v102 & 0x10) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_255;
  }

  return v6;
}

void sub_C7E054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a31);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_C7E304(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2 != 0x7FFFFFFF || !sub_7E7E4(1u))
  {
    goto LABEL_19;
  }

  sub_19594F8(&v9);
  sub_4A5C(&v9, "The journey planner solution has an invalid time shift value", 60);
  if ((v19 & 0x10) != 0)
  {
    v4 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v4 = v15;
    }

    v5 = v14;
    v3 = v4 - v14;
    if (v4 - v14 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_23:
      sub_3244();
    }

LABEL_9:
    if (v3 >= 0x17)
    {
      operator new();
    }

    v8 = v3;
    if (v3)
    {
      memmove(&__p, v5, v3);
    }

    goto LABEL_14;
  }

  if ((v19 & 8) != 0)
  {
    v5 = v12;
    v3 = v13 - v12;
    if ((v13 - v12) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  v3 = 0;
  v8 = 0;
LABEL_14:
  *(&__p + v3) = 0;
  sub_7E854(&__p, 1u);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::locale::~locale(&v11);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_19:
  LODWORD(result) = sub_4FD60C((a1 + 24), 1, 1, 1);
  if (v2 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_C7E584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_C7E5D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != 0x7FFFFFFF || !sub_7E7E4(1u))
  {
    goto LABEL_19;
  }

  sub_19594F8(&v9);
  sub_4A5C(&v9, "The journey updater request has an invalid current time", 55);
  if ((v19 & 0x10) != 0)
  {
    v4 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v4 = v15;
    }

    v5 = v14;
    v3 = v4 - v14;
    if (v4 - v14 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_23:
      sub_3244();
    }

LABEL_9:
    if (v3 >= 0x17)
    {
      operator new();
    }

    v8 = v3;
    if (v3)
    {
      memmove(&__p, v5, v3);
    }

    goto LABEL_14;
  }

  if ((v19 & 8) != 0)
  {
    v5 = v12;
    v3 = v13 - v12;
    if ((v13 - v12) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  v3 = 0;
  v8 = 0;
LABEL_14:
  *(&__p + v3) = 0;
  sub_7E854(&__p, 1u);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::locale::~locale(&v11);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_19:
  LODWORD(result) = sub_4FD60C((a1 + 24), 0, 0, 0);
  if (v2 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_C7E850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_C7E89C(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = 0x34F72C234F72C235 * ((v4 - v5) >> 3);
  if (v6 != 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 4))
  {
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v28);
    sub_4A5C(&v28, "Journey updater response contains a different number of journeys than its corresponding request: ", 97);
    v16 = std::ostream::operator<<();
    sub_4A5C(v16, " != ", 4);
    std::ostream::operator<<();
    if ((v38 & 0x10) != 0)
    {
      v18 = v37;
      if (v37 < v34)
      {
        v37 = v34;
        v18 = v34;
      }

      v19 = v33;
      v17 = v18 - v33;
      if (v18 - v33 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if ((v38 & 8) == 0)
      {
        v17 = 0;
        v27 = 0;
LABEL_27:
        *(&__dst + v17) = 0;
        sub_7E854(&__dst, 3u);
        goto LABEL_28;
      }

      v19 = v31[0];
      v17 = v32 - v31[0];
      if (v32 - v31[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_39:
        sub_3244();
      }
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    v27 = v17;
    if (v17)
    {
      memmove(&__dst, v19, v17);
    }

    goto LABEL_27;
  }

  if (v4 == v5)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = *(a1 + 24);
    if (0x34F72C234F72C235 * ((*(a1 + 32) - v10) >> 3) <= v9)
    {
      sub_6FAB4();
    }

    v11 = *a2;
    if (0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 4) <= v9)
    {
      sub_6FAB4();
    }

    if (*(v11 + v7))
    {
      goto LABEL_4;
    }

    v12 = v11 + v7;
    if (!sub_4FC330(v11 + v7 + 8, 0, 0, 0))
    {
      break;
    }

    if (!sub_5001FC(v12 + 8, v10 + v8))
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v28);
      sub_4A5C(&v28, "The journey updater response contains a journey at index ", 57);
      v14 = std::ostream::operator<<();
      sub_4A5C(v14, " which is not equivalent to the corresponding journey in the request", 68);
      if ((v38 & 0x10) != 0)
      {
        v23 = v37;
        if (v37 < v34)
        {
          v37 = v34;
          v23 = v34;
        }

        v24 = &v33;
      }

      else
      {
        if ((v38 & 8) == 0)
        {
          v15 = 0;
          v27 = 0;
          goto LABEL_53;
        }

        v24 = v31;
        v23 = v32;
      }

      v25 = *v24;
      v15 = v23 - *v24;
      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      v27 = v23 - *v24;
      if (!v15)
      {
        goto LABEL_53;
      }

LABEL_52:
      memmove(&__dst, v25, v15);
      goto LABEL_53;
    }

LABEL_4:
    ++v9;
    v8 += 232;
    v7 += 240;
    if (v6 == v9)
    {
      return 1;
    }
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v28);
  sub_4A5C(&v28, "The journey updater response contains a journey at index ", 57);
  v20 = std::ostream::operator<<();
  sub_4A5C(v20, " which is not consistent", 24);
  if ((v38 & 0x10) != 0)
  {
    v21 = v37;
    if (v37 < v34)
    {
      v37 = v34;
      v21 = v34;
    }

    v22 = &v33;
  }

  else
  {
    if ((v38 & 8) == 0)
    {
      v15 = 0;
      v27 = 0;
      goto LABEL_53;
    }

    v22 = v31;
    v21 = v32;
  }

  v25 = *v22;
  v15 = v21 - *v22;
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  v27 = v21 - *v22;
  if (v15)
  {
    goto LABEL_52;
  }

LABEL_53:
  *(&__dst + v15) = 0;
  sub_7E854(&__dst, 1u);
LABEL_28:
  if (v27 < 0)
  {
    operator delete(__dst);
  }

  if (v36 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v30);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_C7EE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_C7EF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __ROR8__(**(a3 + 72), 32);
  if (sub_C7F708((a1 + 4136), v6))
  {
    v7 = sub_A57920((a1 + 4136), v6);
    v8 = (v7 - *v7);
    if (*v8 >= 5u)
    {
      v9 = v8[2];
      if (v9)
      {
        v10 = *(*(a3 + 72) + 8);
        if (*(v7 + v9 + *(v7 + v9)) > v10)
        {
          v11 = sub_A57920((a1 + 4136), v6);
          v12 = (v11 - *v11);
          if (*v12 >= 5u && (v13 = v12[2]) != 0)
          {
            if (__ROR8__(*sub_A6E4F4((v11 + v13 + *(v11 + v13)), v10), 32) != a2)
            {
LABEL_8:
              result = sub_7E7E4(3u);
              if (!result)
              {
                return result;
              }

              sub_19594F8(&v47);
              v15 = sub_4A5C(&v47, "Line ", 5);
              v16 = sub_2FF718(v15, a2);
              sub_4A5C(v16, " (muid: ", 8);
              sub_A81B90((a1 + 4056), a2);
              v17 = std::ostream::operator<<();
              v18 = sub_4A5C(v17, ") references stop pattern ", 26);
              v19 = sub_2FF718(v18, v6);
              v20 = sub_4A5C(v19, ", but the line that is referenced by the stop pattern is ", 57);
              v21 = *(*(a3 + 72) + 8);
              v22 = sub_A57920((a1 + 4136), v6);
              v23 = (v22 - *v22);
              if (*v23 >= 5u && (v24 = v23[2]) != 0)
              {
                v25 = (v22 + v24 + *(v22 + v24));
              }

              else
              {
                v25 = 0;
              }

              v42 = sub_A6E4F4(v25, v21);
              sub_2FF718(v20, __ROR8__(*v42, 32));
              if ((v57 & 0x10) != 0)
              {
                v43 = v56;
                if (v56 < v53)
                {
                  v56 = v53;
                  v43 = v53;
                }

                v44 = &v52;
              }

              else
              {
                if ((v57 & 8) == 0)
                {
                  v31 = 0;
                  v46 = 0;
                  goto LABEL_36;
                }

                v44 = &v50;
                v43 = v51;
              }

              v40 = *v44;
              v31 = v43 - *v44;
              if (v31 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v31 >= 0x17)
              {
                operator new();
              }

              v46 = v43 - *v44;
              if (!v31)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }
          }

          else if (__ROR8__(*sub_A6E4F4(0, v10), 32) != a2)
          {
            goto LABEL_8;
          }

          return 1;
        }
      }
    }

    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v47);
    v32 = sub_4A5C(&v47, "Line ", 5);
    v33 = sub_2FF718(v32, a2);
    sub_4A5C(v33, " (muid: ", 8);
    sub_A81B90((a1 + 4056), a2);
    v34 = std::ostream::operator<<();
    v35 = sub_4A5C(v34, ") references stop pattern ", 26);
    v36 = sub_2FF718(v35, v6);
    v37 = sub_4A5C(v36, " and has line index ", 20);
    std::ostream::operator<<();
    v38 = sub_4A5C(v37, ", but the stop pattern has only ", 32);
    sub_A57920((a1 + 4136), v6);
    std::ostream::operator<<();
    sub_4A5C(v38, " lines", 6);
    if ((v57 & 0x10) != 0)
    {
      v41 = v56;
      if (v56 < v53)
      {
        v56 = v53;
        v41 = v53;
      }

      v40 = v52;
      v31 = v41 - v52;
      if (v41 - v52 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if ((v57 & 8) == 0)
      {
        v31 = 0;
        v46 = 0;
        goto LABEL_36;
      }

      v40 = v50;
      v31 = v51 - v50;
      if (v51 - v50 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_47:
        sub_3244();
      }
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v46 = v31;
    if (!v31)
    {
      goto LABEL_36;
    }

LABEL_35:
    memmove(&__p, v40, v31);
    goto LABEL_36;
  }

  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v47);
  v26 = sub_4A5C(&v47, "Line ", 5);
  v27 = sub_2FF718(v26, a2);
  sub_4A5C(v27, " (muid: ", 8);
  sub_A81B90((a1 + 4056), a2);
  v28 = std::ostream::operator<<();
  v29 = sub_4A5C(v28, ") references stop pattern ", 26);
  v30 = sub_2FF718(v29, v6);
  sub_4A5C(v30, ", which does not exist", 22);
  if ((v57 & 0x10) != 0)
  {
    v39 = v56;
    if (v56 < v53)
    {
      v56 = v53;
      v39 = v53;
    }

    v40 = v52;
    v31 = v39 - v52;
    if (v39 - v52 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_43:
      sub_3244();
    }

LABEL_23:
    if (v31 >= 0x17)
    {
      operator new();
    }

    v46 = v31;
    if (!v31)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ((v57 & 8) != 0)
  {
    v40 = v50;
    v31 = v51 - v50;
    if (v51 - v50 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_43;
    }

    goto LABEL_23;
  }

  v31 = 0;
  v46 = 0;
LABEL_36:
  *(&__p + v31) = 0;
  sub_7E854(&__p, 3u);
  if (v46 < 0)
  {
    operator delete(__p);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  std::locale::~locale(&v49);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_C7F664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

char *sub_C7F708(void *a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  if (sub_A576FC(a1, SHIDWORD(a2)))
  {
    result = *(*a1 + 3944);
    if (result)
    {

      return sub_C7F8C8(result, a2);
    }
  }

  else
  {
    v6 = &unk_2733000;
    if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0)
    {
      v14 = __cxa_guard_acquire(&qword_27339D8);
      v6 = &unk_2733000;
      if (v14)
      {
        v15 = sub_A57824(-85.0, -13.0);
        sub_58168(v15 >> 17, v15 >> 49);
        dword_27339D0 = v16 | 0x40000000;
        __cxa_guard_release(&qword_27339D8);
        v6 = &unk_2733000;
      }
    }

    v7 = v6[628];
    v8 = *a1;
    if (v7 == v4)
    {
      result = *(v8 + 3976);
      if (result)
      {

        return sub_C7FA14(result, a2);
      }
    }

    else
    {
      result = sub_3D4D04(v8 + 24, v4, 1);
      if (result)
      {
        v9 = &result[-*result];
        if (*v9 < 7u)
        {
          return 0;
        }

        else
        {
          v10 = *(v9 + 3);
          if (v10 && (v11 = &result[v10 + *&result[v10]], v12 = &v11[-*v11], *v12 >= 5u) && (v13 = *(v12 + 2)) != 0)
          {
            return (*&v11[v13 + *&v11[v13]] > a2);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_C7F8C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(exception, "Incident stop pattern quad data requested on nullptr buffer", 0x3BuLL);
  }

  v3 = *v2;
  v4 = &unk_2733000;
  if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0)
  {
    v14 = v3;
    v15 = a2;
    v11 = __cxa_guard_acquire(&qword_27339C8);
    v4 = &unk_2733000;
    v3 = v14;
    a2 = v15;
    if (v11)
    {
      v12 = sub_A57824(-85.0, 0.0);
      sub_58168(v12 >> 17, v12 >> 49);
      dword_27339C0 = v13 | 0x40000000;
      __cxa_guard_release(&qword_27339C8);
      v4 = &unk_2733000;
      v3 = v14;
      a2 = v15;
    }
  }

  if (v4[624] == HIDWORD(a2) && (v5 = (v2 + v3), v6 = (v5 - *v5), *v6 >= 5u) && (v7 = v6[2]) != 0)
  {
    return *(v5 + v7 + *(v5 + v7)) > a2;
  }

  else
  {
    return 0;
  }
}

BOOL sub_C7FA14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(exception, "Realtime stop pattern quad data requested on nullptr buffer", 0x3BuLL);
  }

  v3 = *v2;
  v4 = &unk_2733000;
  if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0)
  {
    v14 = v3;
    v15 = a2;
    v11 = __cxa_guard_acquire(&qword_27339D8);
    v4 = &unk_2733000;
    v3 = v14;
    a2 = v15;
    if (v11)
    {
      v12 = sub_A57824(-85.0, -13.0);
      sub_58168(v12 >> 17, v12 >> 49);
      dword_27339D0 = v13 | 0x40000000;
      __cxa_guard_release(&qword_27339D8);
      v4 = &unk_2733000;
      v3 = v14;
      a2 = v15;
    }
  }

  if (v4[628] == HIDWORD(a2) && (v5 = (v2 + v3), v6 = (v5 - *v5), *v6 >= 5u) && (v7 = v6[2]) != 0)
  {
    return *(v5 + v7 + *(v5 + v7)) > a2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C7FB60(uint64_t a1, void *a2, unint64_t a3, char a4, char a5)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 56) = a1 + 8;
  v8 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 56;
  *(a1 + 88) = a4;
  *(a1 + 89) = a5;
  v9 = sub_C7FF90((a2 + 3), a3, 0, "stop patterns of line");
  v10 = (v9 - *v9);
  if (*v10 >= 5u)
  {
    v11 = v10[2];
    if (v11)
    {
      v12 = (v9 + v11 + *(v9 + v11));
      v13 = *v12;
      if (*v12)
      {
        v14 = v12 + 1;
        *(a1 + 8) = v14;
        *(a1 + 16) = &v14[3 * v13];
      }
    }
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    v15 = a2[507];
    if (sub_68312C(v15 + 3896))
    {
      if (*(v15 + 3944))
      {
        v16 = *(a2[507] + 3944);
        v37 = a3;
        if (sub_A794D0((v16 + 128), &v37))
        {
          v17 = a2[493];
          v37 = a3;
          v18 = sub_A794D0((v17 + 128), &v37);
          if (!v18)
          {
            goto LABEL_30;
          }

          v19 = (v18[7] + *v18[7]);
          v20 = *v19;
          v21 = *(v19 - v20 + 4);
          if (*(v19 - v20 + 4))
          {
            v20 = *(v19 + v21);
            v22 = v19 + v21 + v20;
          }

          else
          {
            v21 = 0;
            v22 = 0;
            v20 = v20;
          }

          v23 = v22 + 4;
          *(a1 + 24) = v23;
          *(a1 + 32) = &v23[12 * *(v19 + v21 + v20)];
        }
      }
    }
  }

  if (*(a1 + 89))
  {
    goto LABEL_24;
  }

  v24 = a2[507];
  if (!sub_4C2B90(v24 + 3896))
  {
    goto LABEL_24;
  }

  if (!*(v24 + 3960))
  {
    goto LABEL_24;
  }

  v25 = *(a2[507] + 3976);
  if (!v25)
  {
    goto LABEL_24;
  }

  v37 = a3;
  if (!sub_A794D0((v25 + 128), &v37))
  {
    goto LABEL_24;
  }

  v26 = a2[497];
  v37 = a3;
  v27 = sub_A794D0((v26 + 128), &v37);
  if (!v27)
  {
LABEL_30:
    sub_49EC("unordered_map::at: key not found");
  }

  v28 = (v27[7] + *v27[7]);
  v29 = *v28;
  v30 = *(v28 - v29 + 4);
  if (*(v28 - v29 + 4))
  {
    v29 = *(v28 + v30);
    v31 = v28 + v30 + v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v29 = v29;
  }

  v32 = v31 + 4;
  *(a1 + 40) = v32;
  *(a1 + 48) = &v32[12 * *(v28 + v30 + v29)];
LABEL_24:
  v34 = *(a1 + 56);
  v33 = *(a1 + 64);
  if (v34 < v33)
  {
    while (1)
    {
      v35 = v34[1];
      if (*v34 != v35)
      {
        break;
      }

      v34 += 2;
      *v8 = v34;
      if (v34 >= v33)
      {
        goto LABEL_29;
      }
    }

    *(a1 + 72) = *v34;
    *(a1 + 80) = v35;
  }

LABEL_29:
  sub_C7FDC4(a1);
  return a1;
}

void sub_C7FDC4(uint64_t *a1)
{
  v1 = a1[9];
  if (v1 < a1[10])
  {
    do
    {
      if ((a1[11] & 1) != 0 || (v3 = *a1, v4 = *v1, v5 = *(*a1 + 4136), !sub_68312C(v5 + 3896)) || !*(v5 + 3944) || (v6 = __ROR8__(v4, 32), sub_A576FC((v3 + 4136), SHIDWORD(v6))) || (v7 = *(*(v3 + 4136) + 3944), v16 = v6, !sub_A794D0(v7, &v16)))
      {
        v8 = *a1;
        if (*(*a1 + 16) != 1)
        {
          break;
        }

        v9 = *a1[9];
        if (sub_A576FC((v8 + 4136), v9))
        {
          if (*(*(v8 + 4136) + 3944))
          {
            break;
          }
        }

        if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339D8))
        {
          v14 = sub_A57824(-85.0, -13.0);
          sub_58168(v14 >> 17, v14 >> 49);
          dword_27339D0 = v15 | 0x40000000;
          __cxa_guard_release(&qword_27339D8);
        }

        v10 = *(v8 + 4136);
        if (dword_27339D0 == v9)
        {
          if (v10[497])
          {
            break;
          }
        }

        if (sub_2D5204(*v10))
        {
          break;
        }
      }

      v11 = a1[10];
      v1 = (a1[9] + 12);
      a1[9] = v1;
      if (v1 == v11)
      {
        v12 = a1[8];
        v13 = a1[7] + 16;
        a1[7] = v13;
        if (v13 >= v12)
        {
          return;
        }

        while (1)
        {
          v1 = *v13;
          v11 = *(v13 + 8);
          if (*v13 != v11)
          {
            break;
          }

          v13 += 16;
          a1[7] = v13;
          if (v13 >= v12)
          {
            return;
          }
        }

        a1[9] = v1;
        a1[10] = v11;
      }
    }

    while (v1 < v11);
  }
}

uint64_t sub_C7FF90(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0xBu)
  {
    v9 = *(v8 + 5);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v5)
      {
        return &v9[v5 + 1] + v9[v5 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v12;
      v20 = v6;
      v18[0] = sub_7FCF0(9u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v5 + 1] + v9[v5 + 1];
  }

  return 0;
}

void sub_C800F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_C80120(uint64_t a1)
{
  result = sub_E67BDC(a1);
  if (result)
  {
    return result;
  }

  v2 = result;
  v3 = sub_7E7E4(1u);
  result = v2;
  if (!v3)
  {
    return result;
  }

  sub_19594F8(&v9);
  sub_4A5C(&v9, "The nearby payment method lookup parameters contain invalid origin point details.", 81);
  if ((v19 & 0x10) != 0)
  {
    v5 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v5 = v15;
    }

    v6 = v14;
    v4 = v5 - v14;
    if (v5 - v14 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v4 >= 0x17)
    {
      operator new();
    }

    v8 = v4;
    if (v4)
    {
      memmove(&__p, v6, v4);
    }

    goto LABEL_14;
  }

  if ((v19 & 8) != 0)
  {
    v6 = v12;
    v4 = v13 - v12;
    if ((v13 - v12) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v4 = 0;
  v8 = 0;
LABEL_14:
  *(&__p + v4) = 0;
  sub_7E854(&__p, 1u);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::locale::~locale(&v11);
  std::ostream::~ostream();
  std::ios::~ios();
  return v2;
}

void sub_C80380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_C803CC(uint64_t a1)
{
  v1 = *(a1 + 1624);
  v2 = *(a1 + 1632);
  if (v1 == v2)
  {
    return 1;
  }

  while (*(v1 + 584) == 2)
  {
    v1 += 592;
    if (v1 == v2)
    {
      return 1;
    }
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v9);
    sub_4A5C(&v9, "Payment method lookup request has place request parameters which are not of type nearby payment method lookup parameters.", 121);
    if ((v19 & 0x10) != 0)
    {
      v5 = v18;
      if (v18 < v15)
      {
        v18 = v15;
        v5 = v15;
      }

      v6 = v14;
      v4 = v5 - v14;
      if (v5 - v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((v19 & 8) == 0)
      {
        v4 = 0;
        v8 = 0;
LABEL_19:
        *(&__p + v4) = 0;
        sub_7E854(&__p, 1u);
        if (v8 < 0)
        {
          operator delete(__p);
        }

        if (v17 < 0)
        {
          operator delete(v16);
        }

        std::locale::~locale(&v11);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v6 = v12;
      v4 = v13 - v12;
      if ((v13 - v12) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_25:
        sub_3244();
      }
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v8 = v4;
    if (v4)
    {
      memmove(&__p, v6, v4);
    }

    goto LABEL_19;
  }

  return result;
}

void sub_C80678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_C806C4(uint64_t a1, void *a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((*(a1 + 1632) - *(a1 + 1624)) >> 4);
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  if (v2 == v3 || !sub_7E7E4(1u))
  {
    return v2 == v3;
  }

  sub_19594F8(&v11);
  sub_4A5C(&v11, "The payment method lookup response has a different number of solutions than there are place request parameters in the payment method lookup request: ", 149);
  v4 = std::ostream::operator<<();
  sub_4A5C(v4, " != ", 4);
  std::ostream::operator<<();
  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    v7 = v16;
    v5 = v6 - v16;
    if (v6 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v5 >= 0x17)
    {
      operator new();
    }

    v10 = v5;
    if (v5)
    {
      memmove(&__p, v7, v5);
    }

    goto LABEL_14;
  }

  if ((v21 & 8) != 0)
  {
    v7 = v14;
    v5 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v5 = 0;
  v10 = 0;
LABEL_14:
  *(&__p + v5) = 0;
  sub_7E854(&__p, 1u);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  std::locale::~locale(&v13);
  std::ostream::~ostream();
  std::ios::~ios();
  return v2 == v3;
}

void sub_C809AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_C809F8()
{
  v0 = __chkstk_darwin();
  v2 = v0[1];
  *&v17 = *v0;
  *(&v17 + 1) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = v1[1];
  *&v8 = *v1;
  *(&v8 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = v1[3];
  v9 = v1[2];
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v1[5];
  v11 = v1[4];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v1[7];
  v13 = v1[6];
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v1[9];
  v15 = v1[8];
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_A30418(&v18, &v17, 1, &v8);
}

void sub_C837A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  __cxa_guard_abort(&qword_27339D8);
  if (v47)
  {
    operator delete(v47);
    sub_506524(&a47);
    _Unwind_Resume(a1);
  }

  sub_506524(&a47);
  _Unwind_Resume(a1);
}

void sub_C83B9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0)
  {
    v18 = a1;
    v19 = __cxa_guard_acquire(&qword_27339D8);
    a1 = v18;
    if (v19)
    {
      v20 = sub_A57824(-85.0, -13.0);
      sub_58168(v20 >> 17, v20 >> 49);
      dword_27339D0 = v21 | 0x40000000;
      __cxa_guard_release(&qword_27339D8);
      a1 = v18;
    }
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v23 = sub_2D390(exception, "Realtime stop pattern quad data requested on nullptr buffer", 0x3BuLL);
  }

  v4 = (v3 + *v3);
  v5 = (v4 - *v4);
  if (*v5 >= 5u && (v6 = v5[2]) != 0)
  {
    v7 = *(v4 + v6 + *(v4 + v6));
    v8 = *a2;
    if (v7)
    {
      v9 = dword_27339D0 << 32;
      v10 = a2[1];
      do
      {
        while (1)
        {
          v11 = a2[2];
          if (v10 >= v11)
          {
            break;
          }

          *v10++ = v9;
          a2[1] = v10;
          ++v9;
          if (!--v7)
          {
            goto LABEL_23;
          }
        }

        v12 = v10 - v8;
        v13 = (v10 - v8) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          *a2 = v8;
          sub_1794();
        }

        v15 = v11 - v8;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          if (!(v16 >> 61))
          {
            operator new();
          }

          *a2 = v8;
          sub_1808();
        }

        v17 = (8 * v13);
        *v17 = v9;
        v10 = v17 + 1;
        memcpy(0, v8, v12);
        a2[1] = v10;
        a2[2] = 0;
        if (v8)
        {
          operator delete(v8);
        }

        v8 = 0;
        a2[1] = v10;
        ++v9;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v8 = *a2;
  }

LABEL_23:
  *a2 = v8;
}

void sub_C83DC8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339D8);
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

BOOL sub_C83E0C(uint64_t a1)
{
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    if (*(a1 + 20) != 1)
    {
      return 1;
    }

    if (*(a1 + 1608) == 0x7FFFFFFF)
    {
      if (!sub_7E7E4(1u))
      {
        goto LABEL_54;
      }

      sub_19594F8(&v15);
      sub_4A5C(&v15, "The schedule options have an invalid start time", 47);
      if ((v25 & 0x10) != 0)
      {
        v7 = v24;
        if (v24 < v21)
        {
          v24 = v21;
          v7 = v21;
        }

        v8 = &v20;
      }

      else
      {
        if ((v25 & 8) == 0)
        {
          v3 = 0;
          v14 = 0;
LABEL_49:
          *(&__p + v3) = 0;
          sub_7E854(&__p, 1u);
          if (v14 < 0)
          {
            operator delete(__p);
          }

          if (v23 < 0)
          {
            operator delete(v22);
          }

          std::locale::~locale(&v17);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_54;
        }

        v8 = v18;
        v7 = v19;
      }

      v9 = *v8;
      v3 = v7 - *v8;
      if (v3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v3 >= 0x17)
      {
        operator new();
      }

      v14 = v7 - *v8;
      if (!v3)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v4 = *(a1 + 1612);
      result = 1;
      if (v4 != 0x7FFFFFFF)
      {
        return result;
      }

      if (!sub_7E7E4(1u))
      {
LABEL_54:
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v15);
        sub_4A5C(&v15, "The schedule lookup request has inconsistent schedule options", 61);
        if ((v25 & 0x10) != 0)
        {
          v12 = v24;
          if (v24 < v21)
          {
            v24 = v21;
            v12 = v21;
          }

          v6 = v20;
          v2 = v12 - v20;
          if (v12 - v20 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if ((v25 & 8) == 0)
          {
            v2 = 0;
            v14 = 0;
            goto LABEL_66;
          }

          v6 = v18[0];
          v2 = v19 - v18[0];
          if (v19 - v18[0] > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_72:
            sub_3244();
          }
        }

        if (v2 >= 0x17)
        {
          operator new();
        }

        v14 = v2;
        if (!v2)
        {
          goto LABEL_66;
        }

LABEL_65:
        memmove(&__p, v6, v2);
        goto LABEL_66;
      }

      sub_19594F8(&v15);
      sub_4A5C(&v15, "The schedule options have an invalid duration", 45);
      if ((v25 & 0x10) != 0)
      {
        v10 = v24;
        if (v24 < v21)
        {
          v24 = v21;
          v10 = v21;
        }

        v11 = &v20;
      }

      else
      {
        if ((v25 & 8) == 0)
        {
          v3 = 0;
          v14 = 0;
          goto LABEL_49;
        }

        v11 = v18;
        v10 = v19;
      }

      v9 = *v11;
      v3 = v10 - *v11;
      if (v3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v3 >= 0x17)
      {
        operator new();
      }

      v14 = v10 - *v11;
      if (!v3)
      {
        goto LABEL_49;
      }
    }

    memmove(&__p, v9, v3);
    goto LABEL_49;
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v15);
  sub_4A5C(&v15, "The schedule lookup request has an invalid current time", 55);
  if ((v25 & 0x10) != 0)
  {
    v5 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v5 = v21;
    }

    v6 = v20;
    v2 = v5 - v20;
    if (v5 - v20 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_28:
      sub_3244();
    }

    goto LABEL_22;
  }

  if ((v25 & 8) != 0)
  {
    v6 = v18[0];
    v2 = v19 - v18[0];
    if (v19 - v18[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_28;
    }

LABEL_22:
    if (v2 >= 0x17)
    {
      operator new();
    }

    v14 = v2;
    if (!v2)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v2 = 0;
  v14 = 0;
LABEL_66:
  *(&__p + v2) = 0;
  sub_7E854(&__p, 1u);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  std::locale::~locale(&v17);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_C844E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_C845B0(uint64_t a1)
{
  v2 = *(a1 + 4);
  v52 = v2 != 0x7FFFFFFF;
  if (v2 != 0x7FFFFFFF || !sub_7E7E4(1u))
  {
    goto LABEL_19;
  }

  sub_19594F8(&v67);
  sub_4A5C(&v67, "The schedule lookup solution has an invalid time shift value", 60);
  if ((v80 & 0x10) != 0)
  {
    v4 = p_p;
    if (p_p < v74)
    {
      p_p = v74;
      v4 = v74;
    }

    v5 = v73;
    v3 = v4 - v73;
    if ((v4 - v73) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_32:
      sub_3244();
    }

LABEL_9:
    if (v3 >= 0x17)
    {
      operator new();
    }

    v66 = v3;
    if (v3)
    {
      memmove(&__dst, v5, v3);
    }

    goto LABEL_14;
  }

  if ((v80 & 8) != 0)
  {
    v5 = v70;
    v3 = v72 - v70;
    if ((v72 - v70) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_32;
    }

    goto LABEL_9;
  }

  v3 = 0;
  v66 = 0;
LABEL_14:
  *(&__dst + v3) = 0;
  sub_7E854(&__dst, 1u);
  if (v66 < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v69);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_19:
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  if (v6 != v7 && 0xEEEEEEEEEEEEEEEFLL * ((v7 - v6) >> 3) <= *(a1 + 104))
  {
    if (!sub_7E7E4(1u))
    {
LABEL_40:
      v52 = 0;
      goto LABEL_41;
    }

    sub_19594F8(&v67);
    sub_4A5C(&v67, "The selected schedule index is out of range: ", 45);
    v8 = std::ostream::operator<<();
    sub_4A5C(v8, " >= ", 4);
    std::ostream::operator<<();
    if ((v80 & 0x10) != 0)
    {
      v10 = p_p;
      if (p_p < v74)
      {
        p_p = v74;
        v10 = v74;
      }

      v11 = v73;
      v9 = v10 - v73;
      if ((v10 - v73) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_146;
      }
    }

    else
    {
      if ((v80 & 8) == 0)
      {
        v9 = 0;
        v66 = 0;
LABEL_35:
        *(&__dst + v9) = 0;
        sub_7E854(&__dst, 1u);
        if (v66 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v78) < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v69);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_40;
      }

      v11 = v70;
      v9 = v72 - v70;
      if ((v72 - v70) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_146:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v66 = v9;
    if (v9)
    {
      memmove(&__dst, v11, v9);
    }

    goto LABEL_35;
  }

LABEL_41:
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  if (v12 == v13)
  {
LABEL_44:
    v14 = *(a1 + 32);
    v53 = *(a1 + 40);
    if (v14 == v53)
    {
      goto LABEL_92;
    }

    while (1)
    {
      v15 = v14[1];
      v16 = *v14 != v15;
      if (*v14 != v15 || !sub_7E7E4(1u))
      {
        v55 = v14;
        v19 = *v14;
        v18 = v14[1];
        if (v19 != v18)
        {
          goto LABEL_72;
        }

        goto LABEL_52;
      }

      sub_19594F8(&v67);
      sub_4A5C(&v67, "Schedule cell has no associated schedule indices", 48);
      if ((v80 & 0x10) != 0)
      {
        v20 = p_p;
        v21 = &v73;
        if (p_p < v74)
        {
          p_p = v74;
          v20 = v74;
          v21 = &v73;
        }
      }

      else
      {
        if ((v80 & 8) == 0)
        {
          v17 = 0;
          v66 = 0;
          goto LABEL_64;
        }

        v20 = v72;
        v21 = &v70;
      }

      v22 = *v21;
      v17 = v20 - *v21;
      if (v17 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v17 >= 0x17)
      {
        operator new();
      }

      v66 = v20 - *v21;
      if (v17)
      {
        memmove(&__dst, v22, v17);
      }

LABEL_64:
      *(&__dst + v17) = 0;
      sub_7E854(&__dst, 1u);
      if (v66 < 0)
      {
        operator delete(__dst);
      }

      v67 = v63;
      *(&v67 + *(v63 - 3)) = v61;
      if (SHIBYTE(v78) < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v69);
      std::ostream::~ostream();
      std::ios::~ios();
      v55 = v14;
      v19 = *v14;
      v18 = v14[1];
      if (v19 != v18)
      {
        while (1)
        {
LABEL_72:
          while (*v19 < 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 64) - *(a1 + 56)) >> 3))
          {
LABEL_71:
            if (++v19 == v18)
            {
              goto LABEL_52;
            }
          }

          if (sub_7E7E4(1u))
          {
            break;
          }

          v16 = 0;
          if (++v19 == v18)
          {
            goto LABEL_52;
          }
        }

        v82 = 0;
        v67 = v59;
        *(&v67 + *(v59 - 3)) = v57;
        v23 = (&v67 + *(v67 - 3));
        std::ios_base::init(v23, &v68);
        v23[1].__vftable = 0;
        v23[1].__fmtflags_ = -1;
        std::locale::locale(&v69);
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v80 = 16;
        p_p = &__p;
        __p = 0;
        memset(v77, 0, sizeof(v77));
        v78 = 5632;
        v73 = &__p;
        v74 = &__p;
        v75 = &v78;
        sub_4A5C(&v67, "Schedule cell references a schedule at index ", 45);
        v24 = std::ostream::operator<<();
        sub_4A5C(v24, ", which is out of range (schedules size: ", 41);
        v25 = std::ostream::operator<<();
        sub_4A5C(v25, ")", 1);
        if ((v80 & 0x10) != 0)
        {
          v27 = p_p;
          v28 = &v73;
          if (p_p < v74)
          {
            p_p = v74;
            v27 = v74;
            v28 = &v73;
          }
        }

        else
        {
          if ((v80 & 8) == 0)
          {
            v26 = 0;
            v66 = 0;
LABEL_88:
            *(&__dst + v26) = 0;
            sub_7E854(&__dst, 1u);
            if (v66 < 0)
            {
              operator delete(__dst);
            }

            v67 = v63;
            *(&v67 + *(v63 - 3)) = v61;
            if (SHIBYTE(v78) < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v69);
            std::ostream::~ostream();
            std::ios::~ios();
            v16 = 0;
            goto LABEL_71;
          }

          v27 = v72;
          v28 = &v70;
        }

        v29 = *v28;
        v26 = v27 - *v28;
        if (v26 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v26 >= 0x17)
        {
          operator new();
        }

        v66 = v27 - *v28;
        if (v26)
        {
          memmove(&__dst, v29, v26);
        }

        goto LABEL_88;
      }

LABEL_52:
      if (!v16)
      {
        goto LABEL_142;
      }

      v14 = v55 + 6;
      if (v55 + 6 == v53)
      {
LABEL_92:
        v30 = *(a1 + 8);
        v50 = *(a1 + 16);
        if (v30 == v50)
        {
          v32 = 1;
          return v52 & v32;
        }

        v31 = *v30;
        v51 = *(a1 + 8);
        v54 = *(v30 + 8);
        if (*v30 == v54)
        {
          goto LABEL_94;
        }

        while (1)
        {
LABEL_96:
          v34 = v31[1];
          v35 = *v31 != v34;
          if (*v31 != v34 || !sub_7E7E4(1u))
          {
            v56 = v31;
            v37 = *v31;
            v38 = v31[1];
            if (v37 != v38)
            {
              goto LABEL_122;
            }

            goto LABEL_102;
          }

          sub_19594F8(&v67);
          sub_4A5C(&v67, "Schedule group has no associated schedule cell indices", 54);
          if ((v80 & 0x10) != 0)
          {
            v39 = p_p;
            v40 = &v73;
            if (p_p < v74)
            {
              p_p = v74;
              v39 = v74;
              v40 = &v73;
            }
          }

          else
          {
            if ((v80 & 8) == 0)
            {
              v36 = 0;
              v66 = 0;
              goto LABEL_114;
            }

            v39 = v72;
            v40 = &v70;
          }

          v41 = *v40;
          v36 = v39 - *v40;
          if (v36 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v36 >= 0x17)
          {
            operator new();
          }

          v66 = v39 - *v40;
          if (v36)
          {
            memmove(&__dst, v41, v36);
          }

LABEL_114:
          *(&__dst + v36) = 0;
          sub_7E854(&__dst, 1u);
          if (v66 < 0)
          {
            operator delete(__dst);
          }

          v67 = v64;
          *(&v67 + *(v64 - 3)) = v62;
          if (SHIBYTE(v78) < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v69);
          std::ostream::~ostream();
          std::ios::~ios();
          v56 = v31;
          v37 = *v31;
          v38 = v31[1];
          if (v37 != v38)
          {
            while (1)
            {
LABEL_122:
              while (*v37 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 4))
              {
LABEL_121:
                if (++v37 == v38)
                {
                  goto LABEL_102;
                }
              }

              if (sub_7E7E4(1u))
              {
                break;
              }

              v35 = 0;
              if (++v37 == v38)
              {
                goto LABEL_102;
              }
            }

            v82 = 0;
            v67 = v60;
            *(&v67 + *(v60 - 3)) = v58;
            v42 = (&v67 + *(v67 - 3));
            std::ios_base::init(v42, &v68);
            v42[1].__vftable = 0;
            v42[1].__fmtflags_ = -1;
            std::locale::locale(&v69);
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v80 = 16;
            p_p = &__p;
            __p = 0;
            memset(v77, 0, sizeof(v77));
            v78 = 5632;
            v73 = &__p;
            v74 = &__p;
            v75 = &v78;
            sub_4A5C(&v67, "Schedule group references a schedule cell at index ", 51);
            v43 = std::ostream::operator<<();
            sub_4A5C(v43, ", which is out of range (cells size: ", 37);
            v44 = std::ostream::operator<<();
            sub_4A5C(v44, ")", 1);
            if ((v80 & 0x10) != 0)
            {
              v46 = p_p;
              v47 = &v73;
              if (p_p < v74)
              {
                p_p = v74;
                v46 = v74;
                v47 = &v73;
              }
            }

            else
            {
              if ((v80 & 8) == 0)
              {
                v45 = 0;
                v66 = 0;
LABEL_138:
                *(&__dst + v45) = 0;
                sub_7E854(&__dst, 1u);
                if (v66 < 0)
                {
                  operator delete(__dst);
                }

                v67 = v64;
                *(&v67 + *(v64 - 3)) = v62;
                if (SHIBYTE(v78) < 0)
                {
                  operator delete(__p);
                }

                std::locale::~locale(&v69);
                std::ostream::~ostream();
                std::ios::~ios();
                v35 = 0;
                goto LABEL_121;
              }

              v46 = v72;
              v47 = &v70;
            }

            v48 = *v47;
            v45 = v46 - *v47;
            if (v45 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v45 >= 0x17)
            {
              operator new();
            }

            v66 = v46 - *v47;
            if (v45)
            {
              memmove(&__dst, v48, v45);
            }

            goto LABEL_138;
          }

LABEL_102:
          if (!v35)
          {
            goto LABEL_142;
          }

          v31 = v56 + 7;
          if (v56 + 7 == v54)
          {
LABEL_94:
            while (1)
            {
              v32 = 1;
              if (v51 + 32 == v50)
              {
                return v52 & v32;
              }

              v31 = *(v51 + 32);
              v33 = *(v51 + 40);
              v51 += 32;
              v54 = v33;
              if (v31 != v33)
              {
                goto LABEL_96;
              }
            }
          }
        }
      }
    }
  }

  while (sub_C859CC(v12))
  {
    v12 += 120;
    if (v12 == v13)
    {
      goto LABEL_44;
    }
  }

LABEL_142:
  v32 = 0;
  return v52 & v32;
}

void sub_C8582C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a29 < 0)
  {
    operator delete(__p);
    sub_1959728(&a30);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a30);
  _Unwind_Resume(a1);
}

BOOL sub_C859CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 24);
  if (v3 == v2)
  {
    goto LABEL_31;
  }

  if (*(a1 + 48) >= ((v2 - v3) >> 5))
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(__p);
    sub_4A5C(__p, "The selected journey leg sequence index is out of range: ", 57);
    v34 = std::ostream::operator<<();
    sub_4A5C(v34, " >= ", 4);
    std::ostream::operator<<();
    if ((v112 & 0x10) != 0)
    {
      v36 = v111;
      if (v111 < *(&v108 + 1))
      {
        v111 = *(&v108 + 1);
        v36 = *(&v108 + 1);
      }

      v37 = v108;
      v35 = v36 - v108;
      if (v36 - v108 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if ((v112 & 8) == 0)
      {
        v35 = 0;
        BYTE7(v101) = 0;
LABEL_67:
        *(&__dst + v35) = 0;
        sub_7E854(&__dst, 1u);
LABEL_266:
        if (SBYTE7(v101) < 0)
        {
          operator delete(__dst);
        }

        if (v110 < 0)
        {
          operator delete(v109);
        }

        std::locale::~locale(&v106);
        goto LABEL_271;
      }

      v37 = *(&v106 + 1);
      v35 = *(&v107 + 1) - *(&v106 + 1);
      if (*(&v107 + 1) - *(&v106 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_79:
        sub_3244();
      }
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    BYTE7(v101) = v35;
    if (v35)
    {
      memmove(&__dst, v37, v35);
    }

    goto LABEL_67;
  }

  while (1)
  {
    v4 = *v3;
    if (*v3 == *(v3 + 1))
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(__p);
      sub_4A5C(__p, "Public transport journey leg sequence does not contain any journey legs", 71);
      if ((v112 & 0x10) != 0)
      {
        v84 = v111;
        if (v111 < *(&v108 + 1))
        {
          v111 = *(&v108 + 1);
          v84 = *(&v108 + 1);
        }

        v85 = &v108;
      }

      else
      {
        if ((v112 & 8) == 0)
        {
          v33 = 0;
          BYTE7(v101) = 0;
          goto LABEL_265;
        }

        v85 = &v106 + 1;
        v84 = *(&v107 + 1);
      }

      v39 = *v85;
      v33 = v84 - *v85;
      if (v33 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v33 >= 0x17)
      {
        operator new();
      }

      BYTE7(v101) = v84 - *v85;
      if (v33)
      {
        goto LABEL_264;
      }

LABEL_265:
      *(&__dst + v33) = 0;
      sub_7E854(&__dst, 1u);
      goto LABEL_266;
    }

    v5 = v4 + 4;
LABEL_5:
    if (*v4 == -1)
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(__p);
        sub_4A5C(__p, "Public transport journey leg has an invalid id", 46);
        if ((v112 & 0x10) != 0)
        {
          v65 = v111;
          if (v111 < *(&v108 + 1))
          {
            v111 = *(&v108 + 1);
            v65 = *(&v108 + 1);
          }

          v66 = &v108;
        }

        else
        {
          if ((v112 & 8) == 0)
          {
            v33 = 0;
            BYTE7(v101) = 0;
            goto LABEL_265;
          }

          v66 = &v106 + 1;
          v65 = *(&v107 + 1);
        }

        v39 = *v66;
        v33 = v65 - *v66;
        if (v33 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v33 >= 0x17)
        {
          operator new();
        }

        BYTE7(v101) = v65 - *v66;
        if (!v33)
        {
          goto LABEL_265;
        }

        goto LABEL_264;
      }

      return result;
    }

    if (*(v4 + 1) == -1 || !*(v4 + 2))
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(__p);
        sub_4A5C(__p, "Public transport journey leg has an invalid trip reference", 58);
        if ((v112 & 0x10) != 0)
        {
          v50 = v111;
          if (v111 < *(&v108 + 1))
          {
            v111 = *(&v108 + 1);
            v50 = *(&v108 + 1);
          }

          v51 = &v108;
        }

        else
        {
          if ((v112 & 8) == 0)
          {
            v33 = 0;
            BYTE7(v101) = 0;
            goto LABEL_265;
          }

          v51 = &v106 + 1;
          v50 = *(&v107 + 1);
        }

        v39 = *v51;
        v33 = v50 - *v51;
        if (v33 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v33 >= 0x17)
        {
          operator new();
        }

        BYTE7(v101) = v50 - *v51;
        if (!v33)
        {
          goto LABEL_265;
        }

        goto LABEL_264;
      }

      return result;
    }

    if (*(v4 + 3) == -1)
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(__p);
        sub_4A5C(__p, "Public transport journey leg has an invalid schedule index", 58);
        if ((v112 & 0x10) != 0)
        {
          v67 = v111;
          if (v111 < *(&v108 + 1))
          {
            v111 = *(&v108 + 1);
            v67 = *(&v108 + 1);
          }

          v68 = &v108;
        }

        else
        {
          if ((v112 & 8) == 0)
          {
            v33 = 0;
            BYTE7(v101) = 0;
            goto LABEL_265;
          }

          v68 = &v106 + 1;
          v67 = *(&v107 + 1);
        }

        v39 = *v68;
        v33 = v67 - *v68;
        if (v33 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v33 >= 0x17)
        {
          operator new();
        }

        BYTE7(v101) = v67 - *v68;
        if (!v33)
        {
          goto LABEL_265;
        }

        goto LABEL_264;
      }

      return result;
    }

    if (*(v4 + 4) == -1)
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(__p);
        sub_4A5C(__p, "Public transport journey leg has an invalid departure stop index", 64);
        if ((v112 & 0x10) != 0)
        {
          v69 = v111;
          if (v111 < *(&v108 + 1))
          {
            v111 = *(&v108 + 1);
            v69 = *(&v108 + 1);
          }

          v70 = &v108;
        }

        else
        {
          if ((v112 & 8) == 0)
          {
            v33 = 0;
            BYTE7(v101) = 0;
            goto LABEL_265;
          }

          v70 = &v106 + 1;
          v69 = *(&v107 + 1);
        }

        v39 = *v70;
        v33 = v69 - *v70;
        if (v33 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v33 >= 0x17)
        {
          operator new();
        }

        BYTE7(v101) = v69 - *v70;
        if (!v33)
        {
          goto LABEL_265;
        }

        goto LABEL_264;
      }

      return result;
    }

    if (*(v4 + 5) == -1)
    {
      break;
    }

    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v108 = v4[3];
    v107 = v8;
    v106 = v7;
    *__p = v6;
    v113 = 0;
    v9 = sub_50360C(__p);
    if (v113 != -1)
    {
      (off_2672FC0[v113])(&__dst, __p);
    }

    if (v9 == 0x7FFFFFFFLL)
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(__p);
        sub_4A5C(__p, "Journey leg has an invalid static departure time", 48);
        if ((v112 & 0x10) != 0)
        {
          v73 = v111;
          if (v111 < *(&v108 + 1))
          {
            v111 = *(&v108 + 1);
            v73 = *(&v108 + 1);
          }

          v74 = &v108;
        }

        else
        {
          if ((v112 & 8) == 0)
          {
            v33 = 0;
            BYTE7(v101) = 0;
            goto LABEL_265;
          }

          v74 = &v106 + 1;
          v73 = *(&v107 + 1);
        }

        v39 = *v74;
        v33 = v73 - *v74;
        if (v33 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v33 >= 0x17)
        {
          operator new();
        }

        BYTE7(v101) = v73 - *v74;
        if (!v33)
        {
          goto LABEL_265;
        }

LABEL_264:
        memmove(&__dst, v39, v33);
        goto LABEL_265;
      }

      return result;
    }

    v10 = *v4;
    v11 = v4[1];
    v12 = v4[2];
    v108 = v4[3];
    v107 = v12;
    v106 = v11;
    *__p = v10;
    v113 = 0;
    v13 = sub_503828(__p);
    if (v113 != -1)
    {
      (off_2672FC0[v113])(&__dst, __p);
    }

    if (v13 == 0x7FFFFFFFLL)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(__p);
      sub_4A5C(__p, "Journey leg has an invalid static arrival time", 46);
      if ((v112 & 0x10) != 0)
      {
        v75 = v111;
        if (v111 < *(&v108 + 1))
        {
          v111 = *(&v108 + 1);
          v75 = *(&v108 + 1);
        }

        v76 = &v108;
      }

      else
      {
        if ((v112 & 8) == 0)
        {
          v33 = 0;
          BYTE7(v101) = 0;
          goto LABEL_265;
        }

        v76 = &v106 + 1;
        v75 = *(&v107 + 1);
      }

      v39 = *v76;
      v33 = v75 - *v76;
      if (v33 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v33 >= 0x17)
      {
        operator new();
      }

      BYTE7(v101) = v75 - *v76;
      if (v33)
      {
        goto LABEL_264;
      }

      goto LABEL_265;
    }

    v14 = *v4;
    v15 = v4[1];
    v16 = v4[2];
    v108 = v4[3];
    v107 = v16;
    v106 = v15;
    *__p = v14;
    v113 = 0;
    v17 = sub_50360C(__p);
    v18 = *v4;
    v19 = v4[1];
    v20 = v4[3];
    v102 = v4[2];
    v103 = v20;
    __dst = v18;
    v101 = v19;
    v104 = 0;
    v21 = sub_503828(&__dst);
    if (v104 != -1)
    {
      (off_2672FC0[v104])(&v89, &__dst);
    }

    if (v113 != -1)
    {
      (off_2672FC0[v113])(&__dst, __p);
    }

    if (v17 > v21)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v89);
      sub_4A5C(&v89, "Journey leg has a negative static duration of ", 46);
      v40 = *v4;
      v41 = v4[1];
      v42 = v4[2];
      v108 = v4[3];
      v107 = v42;
      v106 = v41;
      *__p = v40;
      v113 = 0;
      sub_503828(__p);
      v43 = *v4;
      v44 = v4[1];
      v45 = v4[3];
      v102 = v4[2];
      v103 = v45;
      __dst = v43;
      v101 = v44;
      v104 = 0;
      sub_50360C(&__dst);
      v46 = std::ostream::operator<<();
      sub_4A5C(v46, " sec", 4);
      if (v104 != -1)
      {
        (off_2672FC0[v104])(&v87, &__dst);
      }

      if (v113 != -1)
      {
        (off_2672FC0[v113])(&__dst, __p);
      }

      if ((v99 & 0x10) != 0)
      {
        v77 = v98;
        if (v98 < v95)
        {
          v98 = v95;
          v77 = v95;
        }

        v78 = &v94;
      }

      else
      {
        if ((v99 & 8) == 0)
        {
          v47 = 0;
          BYTE7(v106) = 0;
          goto LABEL_234;
        }

        v78 = v92;
        v77 = v93;
      }

      v83 = *v78;
      v47 = v77 - *v78;
      if (v47 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v47 >= 0x17)
      {
        operator new();
      }

      BYTE7(v106) = v77 - *v78;
      if (v47)
      {
        memmove(__p, v83, v47);
      }

LABEL_234:
      *(__p + v47) = 0;
      sub_7E854(__p, 1u);
LABEL_253:
      if (SBYTE7(v106) < 0)
      {
        operator delete(__p[0]);
      }

      if (v97 < 0)
      {
        operator delete(v96);
      }

      std::locale::~locale(&v91);
LABEL_271:
      std::ostream::~ostream();
      std::ios::~ios();
      return 0;
    }

    v22 = *(v3 + 1);
    if (v22 != v5)
    {
      v23 = *v4;
      v24 = v4[1];
      v25 = v4[2];
      v108 = v4[3];
      v107 = v25;
      v106 = v24;
      *__p = v23;
      v113 = 0;
      v26 = sub_503828(__p);
      v27 = *v5;
      v28 = v5[1];
      v29 = v5[3];
      v102 = v5[2];
      v103 = v29;
      __dst = v27;
      v101 = v28;
      v104 = 0;
      v30 = sub_50360C(&__dst);
      if (v104 != -1)
      {
        (off_2672FC0[v104])(&v89, &__dst);
      }

      if (v113 != -1)
      {
        (off_2672FC0[v113])(&__dst, __p);
      }

      if (v26 > v30)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v89);
        v52 = sub_4A5C(&v89, "Journey leg has a static arrival time after the subsequent leg's static departure time: ", 88);
        v53 = *v4;
        v54 = v4[1];
        v55 = v4[2];
        v108 = v4[3];
        v107 = v55;
        v106 = v54;
        *__p = v53;
        v113 = 0;
        v87 = sub_503828(__p);
        v88 = v56;
        v57 = sub_258D4(v52);
        v58 = sub_4A5C(v57, " > ", 3);
        v59 = *v5;
        v60 = v5[1];
        v61 = v5[3];
        v102 = v5[2];
        v103 = v61;
        __dst = v59;
        v101 = v60;
        v104 = 0;
        sub_50360C(&__dst);
        sub_258D4(v58);
        if (v104 != -1)
        {
          (off_2672FC0[v104])(&v114, &__dst);
        }

        if (v113 != -1)
        {
          (off_2672FC0[v113])(&__dst, __p);
        }

        if ((v99 & 0x10) != 0)
        {
          v81 = v98;
          if (v98 < v95)
          {
            v98 = v95;
            v81 = v95;
          }

          v82 = &v94;
        }

        else
        {
          if ((v99 & 8) == 0)
          {
            v62 = 0;
            BYTE7(v106) = 0;
LABEL_252:
            *(__p + v62) = 0;
            sub_7E854(__p, 1u);
            goto LABEL_253;
          }

          v82 = v92;
          v81 = v93;
        }

        v86 = *v82;
        v62 = v81 - *v82;
        if (v62 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v62 >= 0x17)
        {
          operator new();
        }

        BYTE7(v106) = v81 - *v82;
        if (v62)
        {
          memmove(__p, v86, v62);
        }

        goto LABEL_252;
      }

      v22 = *(v3 + 1);
    }

    v4 += 4;
    v5 += 4;
    if (v4 != v22)
    {
      goto LABEL_5;
    }

    v3 += 32;
    if (v3 == *(a1 + 32))
    {
LABEL_31:
      if (*a1 != -1 && *(a1 + 4) != 0)
      {
        if (*(a1 + 8) == -1)
        {
          result = sub_7E7E4(1u);
          if (result)
          {
            sub_19594F8(__p);
            sub_4A5C(__p, "Schedule reference trip  has an invalid schedule index", 54);
            if ((v112 & 0x10) != 0)
            {
              v48 = v111;
              if (v111 < *(&v108 + 1))
              {
                v111 = *(&v108 + 1);
                v48 = *(&v108 + 1);
              }

              v49 = &v108;
            }

            else
            {
              if ((v112 & 8) == 0)
              {
                v33 = 0;
                BYTE7(v101) = 0;
                goto LABEL_265;
              }

              v49 = &v106 + 1;
              v48 = *(&v107 + 1);
            }

            v39 = *v49;
            v33 = v48 - *v49;
            if (v33 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v33 >= 0x17)
            {
              operator new();
            }

            BYTE7(v101) = v48 - *v49;
            if (!v33)
            {
              goto LABEL_265;
            }

            goto LABEL_264;
          }
        }

        else if (*(a1 + 12) == -1)
        {
          result = sub_7E7E4(1u);
          if (result)
          {
            sub_19594F8(__p);
            sub_4A5C(__p, "Schedule reference trip  has an invalid boarding stop index", 59);
            if ((v112 & 0x10) != 0)
            {
              v63 = v111;
              if (v111 < *(&v108 + 1))
              {
                v111 = *(&v108 + 1);
                v63 = *(&v108 + 1);
              }

              v64 = &v108;
            }

            else
            {
              if ((v112 & 8) == 0)
              {
                v33 = 0;
                BYTE7(v101) = 0;
                goto LABEL_265;
              }

              v64 = &v106 + 1;
              v63 = *(&v107 + 1);
            }

            v39 = *v64;
            v33 = v63 - *v64;
            if (v33 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v33 >= 0x17)
            {
              operator new();
            }

            BYTE7(v101) = v63 - *v64;
            if (!v33)
            {
              goto LABEL_265;
            }

            goto LABEL_264;
          }
        }

        else
        {
          result = 1;
          if (*(a1 + 16) == -1)
          {
            result = sub_7E7E4(1u);
            if (result)
            {
              sub_19594F8(__p);
              sub_4A5C(__p, "Schedule reference trip  has an invalid alight stop index", 57);
              if ((v112 & 0x10) != 0)
              {
                v79 = v111;
                if (v111 < *(&v108 + 1))
                {
                  v111 = *(&v108 + 1);
                  v79 = *(&v108 + 1);
                }

                v80 = &v108;
              }

              else
              {
                if ((v112 & 8) == 0)
                {
                  v33 = 0;
                  BYTE7(v101) = 0;
                  goto LABEL_265;
                }

                v80 = &v106 + 1;
                v79 = *(&v107 + 1);
              }

              v39 = *v80;
              v33 = v79 - *v80;
              if (v33 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v33 >= 0x17)
              {
                operator new();
              }

              BYTE7(v101) = v79 - *v80;
              if (!v33)
              {
                goto LABEL_265;
              }

              goto LABEL_264;
            }
          }
        }

        return result;
      }

      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(__p);
      sub_4A5C(__p, "Schedule reference trip has an invalid trip reference", 53);
      if ((v112 & 0x10) != 0)
      {
        v38 = v111;
        if (v111 < *(&v108 + 1))
        {
          v111 = *(&v108 + 1);
          v38 = *(&v108 + 1);
        }

        v39 = v108;
        v33 = v38 - v108;
        if (v38 - v108 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_115;
        }
      }

      else
      {
        if ((v112 & 8) == 0)
        {
          v33 = 0;
          BYTE7(v101) = 0;
          goto LABEL_265;
        }

        v39 = *(&v106 + 1);
        v33 = *(&v107 + 1) - *(&v106 + 1);
        if (*(&v107 + 1) - *(&v106 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
LABEL_115:
          sub_3244();
        }
      }

      if (v33 >= 0x17)
      {
        operator new();
      }

      BYTE7(v101) = v33;
      if (!v33)
      {
        goto LABEL_265;
      }

      goto LABEL_264;
    }
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(__p);
    sub_4A5C(__p, "Public transport journey leg has an invalid arrival stop index", 62);
    if ((v112 & 0x10) != 0)
    {
      v71 = v111;
      if (v111 < *(&v108 + 1))
      {
        v111 = *(&v108 + 1);
        v71 = *(&v108 + 1);
      }

      v72 = &v108;
    }

    else
    {
      if ((v112 & 8) == 0)
      {
        v33 = 0;
        BYTE7(v101) = 0;
        goto LABEL_265;
      }

      v72 = &v106 + 1;
      v71 = *(&v107 + 1);
    }

    v39 = *v72;
    v33 = v71 - *v72;
    if (v33 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v33 >= 0x17)
    {
      operator new();
    }

    BYTE7(v101) = v71 - *v72;
    if (!v33)
    {
      goto LABEL_265;
    }

    goto LABEL_264;
  }

  return result;
}

void sub_C86FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
    sub_1959728(&STACK[0x5A0]);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x5A0]);
  _Unwind_Resume(a1);
}

BOOL sub_C871E8(uint64_t a1, void *a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((*(a1 + 1632) - *(a1 + 1624)) >> 4);
  v3 = 0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 3);
  if (v2 == v3 || !sub_7E7E4(1u))
  {
    return v2 == v3;
  }

  sub_19594F8(&v11);
  sub_4A5C(&v11, "The schedule lookup response has a different number of solutions than there are place request parameters in the schedule lookup request: ", 137);
  v4 = std::ostream::operator<<();
  sub_4A5C(v4, " != ", 4);
  std::ostream::operator<<();
  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    v7 = v16;
    v5 = v6 - v16;
    if (v6 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v5 >= 0x17)
    {
      operator new();
    }

    v10 = v5;
    if (v5)
    {
      memmove(&__p, v7, v5);
    }

    goto LABEL_14;
  }

  if ((v21 & 8) != 0)
  {
    v7 = v14;
    v5 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v5 = 0;
  v10 = 0;
LABEL_14:
  *(&__p + v5) = 0;
  sub_7E854(&__p, 1u);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  std::locale::~locale(&v13);
  std::ostream::~ostream();
  std::ios::~ios();
  return v2 == v3;
}

void sub_C874D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void *sub_C8751C(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AFB1C(a2);
  a1[2] = sub_3AFC64(a2);
  a1[3] = sub_3AFEE8(a2);
  return a1;
}

uint64_t sub_C8756C(void **a1, uint64_t a2)
{
  if (sub_3B8508(*a1))
  {
    v4 = *(a2 + 584) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 1;
  }

  return sub_C875D0(a1, a2);
}

uint64_t sub_C875D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      return sub_C87634(a1, *(a2 + 56));
    }

    if (v2 == 2)
    {
      return sub_C880F4(a1, *(a2 + 56));
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        return sub_C88BB4(a1, *(a2 + 56));
      case 4:
        return sub_C89674(a1, *(a2 + 56));
      case 5:
        return sub_C89B38(a1, *(a2 + 56));
    }
  }

  return 1;
}

BOOL sub_C87634(uint64_t a1, unint64_t a2)
{
  v4 = sub_2C939C(*(a1 + 8), a2, 1);
  if (v4)
  {
    v5 = &v4[-*v4];
    if (*v5 >= 0x1Du)
    {
      v6 = *(v5 + 14);
      if (v6)
      {
        if (*&v4[v6 + *&v4[v6]] > HIDWORD(a2))
        {
          v7 = *(a1 + 8);
          v8 = sub_502FF8(v7, a2, 0, "stop");
          v9 = (v8 - *v8);
          if (*v9 >= 0x39u)
          {
            v10 = v9[28];
            if (v10)
            {
              v11 = (v8 + v10 + *(v8 + v10));
              v12 = *v11;
              if (v12)
              {
                v13 = 8 * v12;
                v14 = v11 + 1;
                do
                {
                  if (*(v7 + 3888) != 1 || sub_2D5204(*(v7 + 3872)))
                  {
                    operator new();
                  }

                  v14 += 2;
                  v13 -= 8;
                }

                while (v13);
              }
            }
          }

          v21 = *(a1 + 8);
          v22 = sub_502FF8(v21, a2, 0, "stop");
          v23 = (v22 - *v22);
          if (*v23 >= 0xFu)
          {
            v24 = v23[7];
            if (v24)
            {
              v25 = (v22 + v24 + *(v22 + v24));
              v26 = *v25;
              if (v26)
              {
                v27 = 8 * v26;
                v28 = v25 + 1;
                do
                {
                  if (*(v21 + 3888) != 1 || sub_2D5204(*(v21 + 3872)))
                  {
                    operator new();
                  }

                  v28 += 2;
                  v27 -= 8;
                }

                while (v27);
              }
            }
          }

          v29 = *(a1 + 8);
          v30 = sub_502FF8(v29, a2, 0, "stop");
          v31 = (v30 - *v30);
          if (*v31 >= 0x37u)
          {
            v32 = v31[27];
            if (v32)
            {
              v33 = (v30 + v32 + *(v30 + v32));
              v34 = *v33;
              if (v34)
              {
                v35 = 8 * v34;
                v36 = v33 + 1;
                do
                {
                  if (*(v29 + 3888) != 1 || sub_2D5204(*(v29 + 3872)))
                  {
                    operator new();
                  }

                  v36 += 2;
                  v35 -= 8;
                }

                while (v35);
              }
            }
          }

          v37 = *(a1 + 8);
          v38 = sub_502FF8(v37, a2, 0, "stop");
          v39 = (v38 - *v38);
          if (*v39 < 0x11u)
          {
            return 1;
          }

          v40 = v39[8];
          if (!v40)
          {
            return 1;
          }

          v41 = (v38 + v40 + *(v38 + v40));
          v42 = *v41;
          if (!v42)
          {
            return 1;
          }

          v43 = 8 * v42;
          v44 = v41 + 1;
          do
          {
            if (*(v37 + 3888) != 1 || sub_2D5204(*(v37 + 3872)))
            {
              operator new();
            }

            v44 += 2;
            v43 -= 8;
          }

          while (v43);
          return 1;
        }
      }
    }
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v47);
  v16 = sub_4A5C(&v47, "Stop ", 5);
  v17 = sub_2FF718(v16, __ROR8__(a2, 32));
  sub_4A5C(v17, " does not exist in the data", 27);
  if ((v57 & 0x10) != 0)
  {
    v19 = v56;
    if (v56 < v53)
    {
      v56 = v53;
      v19 = v53;
    }

    v20 = v52;
    v18 = v19 - v52;
    if (v19 - v52 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_32:
      sub_3244();
    }

LABEL_20:
    if (v18 >= 0x17)
    {
      operator new();
    }

    v46 = v18;
    if (v18)
    {
      memmove(&__dst, v20, v18);
    }

    goto LABEL_25;
  }

  if ((v57 & 8) != 0)
  {
    v20 = v50;
    v18 = v51 - v50;
    if ((v51 - v50) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  v18 = 0;
  v46 = 0;
LABEL_25:
  *(&__dst + v18) = 0;
  sub_7E854(&__dst, 1u);
  if (v46 < 0)
  {
    operator delete(__dst);
  }

  if (v55 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v49);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_C87F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p)
{
  if (v13)
  {
    operator delete(v13);
    if (!v11)
    {
LABEL_3:
      if (!v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  if (!v12)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  operator delete(v12);
  goto LABEL_5;
}

void sub_C88078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    JUMPOUT(0xC88050);
  }

  JUMPOUT(0xC88020);
}

void sub_C88088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    JUMPOUT(0xC88060);
  }

  JUMPOUT(0xC88028);
}

void sub_C88098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a11)
  {
    JUMPOUT(0xC88038);
  }

  JUMPOUT(0xC88030);
}

void sub_C880A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

BOOL sub_C880F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2C939C(*(a1 + 8), a2, 1);
  if (v4)
  {
    v5 = &v4[-*v4];
    if (*v5 >= 0xBu)
    {
      v6 = *(v5 + 5);
      if (v6)
      {
        if (*&v4[v6 + *&v4[v6]] > HIDWORD(a2))
        {
          v7 = *(a1 + 8);
          v8 = sub_93D2F4(v7, a2, 0, "hall");
          v9 = (v8 - *v8);
          if (*v9 >= 0x2Bu)
          {
            v10 = v9[21];
            if (v10)
            {
              v11 = (v8 + v10 + *(v8 + v10));
              v12 = *v11;
              if (v12)
              {
                v13 = 8 * v12;
                v14 = v11 + 1;
                do
                {
                  if (*(v7 + 3888) != 1 || sub_2D5204(*(v7 + 3872)))
                  {
                    operator new();
                  }

                  v14 += 2;
                  v13 -= 8;
                }

                while (v13);
              }
            }
          }

          v21 = *(a1 + 8);
          v22 = sub_93D2F4(v21, a2, 0, "hall");
          v23 = (v22 - *v22);
          if (*v23 >= 0xFu)
          {
            v24 = v23[7];
            if (v24)
            {
              v25 = (v22 + v24 + *(v22 + v24));
              v26 = *v25;
              if (v26)
              {
                v27 = 8 * v26;
                v28 = v25 + 1;
                do
                {
                  if (*(v21 + 3888) != 1 || sub_2D5204(*(v21 + 3872)))
                  {
                    operator new();
                  }

                  v28 += 2;
                  v27 -= 8;
                }

                while (v27);
              }
            }
          }

          v29 = *(a1 + 8);
          v30 = sub_93D2F4(v29, a2, 0, "hall");
          v31 = (v30 - *v30);
          if (*v31 >= 0x27u)
          {
            v32 = v31[19];
            if (v32)
            {
              v33 = (v30 + v32 + *(v30 + v32));
              v34 = *v33;
              if (v34)
              {
                v35 = 8 * v34;
                v36 = v33 + 1;
                do
                {
                  if (*(v29 + 3888) != 1 || sub_2D5204(*(v29 + 3872)))
                  {
                    operator new();
                  }

                  v36 += 2;
                  v35 -= 8;
                }

                while (v35);
              }
            }
          }

          v37 = *(a1 + 8);
          v38 = sub_93D2F4(v37, a2, 0, "hall");
          v39 = (v38 - *v38);
          if (*v39 < 0x11u)
          {
            return 1;
          }

          v40 = v39[8];
          if (!v40)
          {
            return 1;
          }

          v41 = (v38 + v40 + *(v38 + v40));
          v42 = *v41;
          if (!v42)
          {
            return 1;
          }

          v43 = 8 * v42;
          v44 = v41 + 1;
          do
          {
            if (*(v37 + 3888) != 1 || sub_2D5204(*(v37 + 3872)))
            {
              operator new();
            }

            v44 += 2;
            v43 -= 8;
          }

          while (v43);
          return 1;
        }
      }
    }
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v47);
  v16 = sub_4A5C(&v47, "Hall ", 5);
  v17 = sub_2FF718(v16, __ROR8__(a2, 32));
  sub_4A5C(v17, " does not exist in the data", 27);
  if ((v57 & 0x10) != 0)
  {
    v19 = v56;
    if (v56 < v53)
    {
      v56 = v53;
      v19 = v53;
    }

    v20 = v52;
    v18 = v19 - v52;
    if (v19 - v52 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_32:
      sub_3244();
    }

LABEL_20:
    if (v18 >= 0x17)
    {
      operator new();
    }

    v46 = v18;
    if (v18)
    {
      memmove(&__dst, v20, v18);
    }

    goto LABEL_25;
  }

  if ((v57 & 8) != 0)
  {
    v20 = v50;
    v18 = v51 - v50;
    if ((v51 - v50) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  v18 = 0;
  v46 = 0;
LABEL_25:
  *(&__dst + v18) = 0;
  sub_7E854(&__dst, 1u);
  if (v46 < 0)
  {
    operator delete(__dst);
  }

  if (v55 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v49);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_C88A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p)
{
  if (v13)
  {
    operator delete(v13);
    if (!v11)
    {
LABEL_3:
      if (!v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  if (!v12)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  operator delete(v12);
  goto LABEL_5;
}

void sub_C88B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    JUMPOUT(0xC88B10);
  }

  JUMPOUT(0xC88AE0);
}

void sub_C88B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    JUMPOUT(0xC88B20);
  }

  JUMPOUT(0xC88AE8);
}

void sub_C88B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a11)
  {
    JUMPOUT(0xC88AF8);
  }

  JUMPOUT(0xC88AF0);
}

void sub_C88B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

BOOL sub_C88BB4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2C939C(*(a1 + 8), a2, 1);
  if (v4)
  {
    v5 = &v4[-*v4];
    if (*v5 >= 0x19u)
    {
      v6 = *(v5 + 12);
      if (v6)
      {
        if (*&v4[v6 + *&v4[v6]] > HIDWORD(a2))
        {
          v7 = *(a1 + 8);
          v8 = sub_93D480(v7, a2, 0, "station");
          v9 = (v8 - *v8);
          if (*v9 >= 0x2Du)
          {
            v10 = v9[22];
            if (v10)
            {
              v11 = (v8 + v10 + *(v8 + v10));
              v12 = *v11;
              if (v12)
              {
                v13 = 8 * v12;
                v14 = v11 + 1;
                do
                {
                  if (*(v7 + 3888) != 1 || sub_2D5204(*(v7 + 3872)))
                  {
                    operator new();
                  }

                  v14 += 2;
                  v13 -= 8;
                }

                while (v13);
              }
            }
          }

          v21 = *(a1 + 8);
          v22 = sub_93D480(v21, a2, 0, "station");
          v23 = (v22 - *v22);
          if (*v23 >= 0xFu)
          {
            v24 = v23[7];
            if (v24)
            {
              v25 = (v22 + v24 + *(v22 + v24));
              v26 = *v25;
              if (v26)
              {
                v27 = 8 * v26;
                v28 = v25 + 1;
                do
                {
                  if (*(v21 + 3888) != 1 || sub_2D5204(*(v21 + 3872)))
                  {
                    operator new();
                  }

                  v28 += 2;
                  v27 -= 8;
                }

                while (v27);
              }
            }
          }

          v29 = *(a1 + 8);
          v30 = sub_93D480(v29, a2, 0, "station");
          v31 = (v30 - *v30);
          if (*v31 >= 0x2Bu)
          {
            v32 = v31[21];
            if (v32)
            {
              v33 = (v30 + v32 + *(v30 + v32));
              v34 = *v33;
              if (v34)
              {
                v35 = 8 * v34;
                v36 = v33 + 1;
                do
                {
                  if (*(v29 + 3888) != 1 || sub_2D5204(*(v29 + 3872)))
                  {
                    operator new();
                  }

                  v36 += 2;
                  v35 -= 8;
                }

                while (v35);
              }
            }
          }

          v37 = *(a1 + 8);
          v38 = sub_93D480(v37, a2, 0, "station");
          v39 = (v38 - *v38);
          if (*v39 < 0x11u)
          {
            return 1;
          }

          v40 = v39[8];
          if (!v40)
          {
            return 1;
          }

          v41 = (v38 + v40 + *(v38 + v40));
          v42 = *v41;
          if (!v42)
          {
            return 1;
          }

          v43 = 8 * v42;
          v44 = v41 + 1;
          do
          {
            if (*(v37 + 3888) != 1 || sub_2D5204(*(v37 + 3872)))
            {
              operator new();
            }

            v44 += 2;
            v43 -= 8;
          }

          while (v43);
          return 1;
        }
      }
    }
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v47);
  v16 = sub_4A5C(&v47, "Station ", 8);
  v17 = sub_2FF718(v16, __ROR8__(a2, 32));
  sub_4A5C(v17, " does not exist in the data", 27);
  if ((v57 & 0x10) != 0)
  {
    v19 = v56;
    if (v56 < v53)
    {
      v56 = v53;
      v19 = v53;
    }

    v20 = v52;
    v18 = v19 - v52;
    if (v19 - v52 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_32:
      sub_3244();
    }

LABEL_20:
    if (v18 >= 0x17)
    {
      operator new();
    }

    v46 = v18;
    if (v18)
    {
      memmove(&__dst, v20, v18);
    }

    goto LABEL_25;
  }

  if ((v57 & 8) != 0)
  {
    v20 = v50;
    v18 = v51 - v50;
    if ((v51 - v50) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  v18 = 0;
  v46 = 0;
LABEL_25:
  *(&__dst + v18) = 0;
  sub_7E854(&__dst, 1u);
  if (v46 < 0)
  {
    operator delete(__dst);
  }

  if (v55 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v49);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_C89510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p)
{
  if (v13)
  {
    operator delete(v13);
    if (!v11)
    {
LABEL_3:
      if (!v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  if (!v12)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  operator delete(v12);
  goto LABEL_5;
}

void sub_C895F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    JUMPOUT(0xC895D0);
  }

  JUMPOUT(0xC895A0);
}

void sub_C89608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    JUMPOUT(0xC895E0);
  }

  JUMPOUT(0xC895A8);
}

void sub_C89618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a11)
  {
    JUMPOUT(0xC895B8);
  }

  JUMPOUT(0xC895B0);
}

void sub_C89628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

BOOL sub_C89674(uint64_t a1, unint64_t a2)
{
  v4 = sub_2C939C(*(a1 + 8), a2, 1);
  if (v4)
  {
    v5 = &v4[-*v4];
    if (*v5 >= 5u)
    {
      v6 = *(v5 + 2);
      if (v6)
      {
        if (*&v4[v6 + *&v4[v6]] > HIDWORD(a2))
        {
          v7 = *(a1 + 8);
          v8 = sub_503310(v7, a2, 0, "access point");
          v9 = (v8 - *v8);
          if (*v9 < 0x11u)
          {
            return 1;
          }

          v10 = v9[8];
          if (!v10)
          {
            return 1;
          }

          v11 = (v8 + v10 + *(v8 + v10));
          v12 = *v11;
          if (!v12)
          {
            return 1;
          }

          v13 = 8 * v12;
          v14 = v11 + 1;
          do
          {
            if (*(v7 + 3888) != 1 || sub_2D5204(*(v7 + 3872)))
            {
              operator new();
            }

            v14 += 2;
            v13 -= 8;
          }

          while (v13);
          return 1;
        }
      }
    }
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v23);
  v16 = sub_4A5C(&v23, "Access point ", 13);
  v17 = sub_2FF718(v16, __ROR8__(a2, 32));
  sub_4A5C(v17, " does not exist in the data", 27);
  if ((v33 & 0x10) != 0)
  {
    v19 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v19 = v29;
    }

    v20 = v28;
    v18 = v19 - v28;
    if (v19 - v28 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_32:
      sub_3244();
    }

LABEL_20:
    if (v18 >= 0x17)
    {
      operator new();
    }

    v22 = v18;
    if (v18)
    {
      memmove(&__dst, v20, v18);
    }

    goto LABEL_25;
  }

  if ((v33 & 8) != 0)
  {
    v20 = v26;
    v18 = v27 - v26;
    if ((v27 - v26) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  v18 = 0;
  v22 = 0;
LABEL_25:
  *(&__dst + v18) = 0;
  sub_7E854(&__dst, 1u);
  if (v22 < 0)
  {
    operator delete(__dst);
  }

  if (v31 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v25);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_C89ACC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_C89AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_C89B38(uint64_t a1, unint64_t a2)
{
  v4 = sub_2C939C(*(a1 + 16), a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 0xFu) || (v6 = *(v5 + 7)) == 0 || *&v4[v6 + *&v4[v6]] <= HIDWORD(a2))
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v17);
    v10 = sub_4A5C(&v17, "Line ", 5);
    v11 = sub_2FF718(v10, __ROR8__(a2, 32));
    sub_4A5C(v11, " does not exist in the data", 27);
    if ((v27 & 0x10) != 0)
    {
      v13 = v26;
      if (v26 < v23)
      {
        v26 = v23;
        v13 = v23;
      }

      v14 = v22;
      v12 = v13 - v22;
      if (v13 - v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((v27 & 8) == 0)
      {
        v12 = 0;
        v16 = 0;
LABEL_20:
        *(&__p + v12) = 0;
        sub_7E854(&__p, 1u);
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        std::locale::~locale(&v19);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v14 = v20;
      v12 = v21 - v20;
      if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_27:
        sub_3244();
      }
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v16 = v12;
    if (v12)
    {
      memmove(&__p, v14, v12);
    }

    goto LABEL_20;
  }

  v7 = sub_92FC60(*(a1 + 16), a2, 0, "line");
  v8 = *(v7 + *(v7 - *v7 + 6));

  return sub_C89E90(a1, v8);
}

void sub_C89E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_C89E90(uint64_t a1, uint64_t a2)
{
  v3 = sub_2C939C(*(a1 + 24), a2, 1);
  if (v3)
  {
    v4 = &v3[-*v3];
    if (*v4 >= 0x1Fu)
    {
      v5 = *(v4 + 15);
      if (v5)
      {
        if (*&v3[v5 + *&v3[v5]] > HIDWORD(a2))
        {
          return 1;
        }
      }
    }
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v14);
    v7 = sub_4A5C(&v14, "System ", 7);
    v8 = sub_2FF718(v7, __ROR8__(a2, 32));
    sub_4A5C(v8, " does not exist in the data", 27);
    if ((v24 & 0x10) != 0)
    {
      v10 = v23;
      if (v23 < v20)
      {
        v23 = v20;
        v10 = v20;
      }

      v11 = v19;
      v9 = v10 - v19;
      if (v10 - v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((v24 & 8) == 0)
      {
        v9 = 0;
        v13 = 0;
LABEL_19:
        *(&__p + v9) = 0;
        sub_7E854(&__p, 1u);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        std::locale::~locale(&v16);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v11 = v17;
      v9 = v18 - v17;
      if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_25:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    goto LABEL_19;
  }

  return result;
}

void sub_C8A15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

unint64_t sub_C8A1A8(void *a1, unsigned int *a2, int a3)
{
  v6 = *a2 == 0;
  if (!*a2 || !sub_7E7E4(1u))
  {
    goto LABEL_27;
  }

  sub_19594F8(&v67);
  v7 = sub_4A5C(&v67, "Spa response has a status code of ", 34);
  *&v65.__val_ = *a2;
  v65.__cat_ = &off_2669FE0;
  std::error_condition::message(&__dst, &v65);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  sub_4A5C(v7, p_dst, size);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v10 = v77;
    if ((v77 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = v76;
    if (v76 < v73)
    {
      v76 = v73;
      v12 = v73;
    }

    v13 = v72;
    v11 = v12 - v72;
    if (v12 - v72 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_115:
      sub_3244();
    }

LABEL_17:
    if (v11 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v11;
    if (v11)
    {
      memmove(&__dst, v13, v11);
    }

    goto LABEL_22;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  v10 = v77;
  if ((v77 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((v10 & 8) != 0)
  {
    v13 = v70;
    v11 = v71 - v70;
    if (v71 - v70 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_115;
    }

    goto LABEL_17;
  }

  v11 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_22:
  __dst.__r_.__value_.__s.__data_[v11] = 0;
  sub_7E854(&__dst, 1u);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v75 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v69);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_27:
  v14 = *(a2 + 1);
  v64 = *(a2 + 2);
  if (v14 != v64)
  {
    while (1)
    {
      v17 = v14[25];
      v16 = v14[26];
      __dst.__r_.__value_.__r.__words[0] = v17;
      v18 = 1;
      while (v17 != v16)
      {
        v21 = *v17;
        v20 = *(v17 + 8);
        v67 = v21;
        v22 = 1;
        if (v21 != v20)
        {
          do
          {
            v22 &= sub_C8AA34(a1, v14, &__dst, &v67, a3);
            v21 += 42;
            v67 = v21;
          }

          while (v21 != *(v17 + 8));
        }

        v23 = *(v17 + 32);
        v24 = *(v17 + 40);
        if (v23 == v24)
        {
LABEL_40:
          v19 = *(v17 + 60) == 0x7FFFFFFF || *(v17 + 64) == 0x7FFFFFFF || sub_C8F204((v17 + 60));
        }

        else
        {
          while (sub_C90434(v23))
          {
            v23 += 10;
            if (v23 == v24)
            {
              goto LABEL_40;
            }
          }

          v19 = 0;
        }

        v18 &= v22 & v19;
        v17 += 72;
        __dst.__r_.__value_.__r.__words[0] = v17;
        v16 = v14[26];
      }

      v25 = v14[34];
      v26 = v14[35];
      if (v25 != v26)
      {
        break;
      }

LABEL_90:
      v53 = v14[31];
      v52 = v14[32];
      if (v53 == v52)
      {
        v15 = 1;
      }

      else
      {
        do
        {
          v15 = sub_C90434(v53);
          if (!v15)
          {
            break;
          }

          v53 += 10;
        }

        while (v53 != v52);
      }

LABEL_30:
      v6 = v18 & v6 & v15;
      v14 += 37;
      if (v14 == v64)
      {
        return v6;
      }
    }

    while (1)
    {
      v27 = *v25;
      v28 = v25[1];
      v29 = a1[512];
      v30 = v28 == -1 || v27 == 0;
      v31 = v27 << 32;
      if (v30)
      {
        v31 = 0;
      }

      v32 = v27 ? v28 : 0xFFFFFFFFLL;
      v33 = __ROR8__(v31 | v32, 32);
      LODWORD(__dst.__r_.__value_.__l.__data_) = v33;
      v65.__val_ = 1;
      v67 = &v65;
      v68 = &__dst;
      v34 = *(v29 + 3880) + 1;
      *(v29 + 3880) = v34;
      v35 = *(v29 + 24);
      if (!v35)
      {
        break;
      }

      if (*(v29 + 616) == v33)
      {
        ++*(v29 + 3888);
        *(v29 + 624) = v34;
        v36 = *(v29 + 632);
        if (!v36)
        {
          break;
        }
      }

      else if (*(v29 + 640) == v33)
      {
        ++*(v29 + 3888);
        *(v29 + 648) = v34;
        v36 = *(v29 + 656);
        if (!v36)
        {
          break;
        }
      }

      else if (*(v29 + 664) == v33)
      {
        ++*(v29 + 3888);
        *(v29 + 672) = v34;
        v36 = *(v29 + 680);
        if (!v36)
        {
          break;
        }
      }

      else if (*(v29 + 688) == v33)
      {
        ++*(v29 + 3888);
        *(v29 + 696) = v34;
        v36 = *(v29 + 704);
        if (!v36)
        {
          break;
        }
      }

      else
      {
        v37 = *(v29 + 672);
        v38 = *(v29 + 648);
        v39 = *(v29 + 624);
        v40 = v39 >= v34;
        if (v39 < v34)
        {
          v34 = *(v29 + 624);
        }

        v41 = 24;
        if (v40)
        {
          v41 = 0;
        }

        v42 = v38 >= v34;
        if (v38 < v34)
        {
          v34 = *(v29 + 648);
        }

        v43 = 25;
        if (v42)
        {
          v43 = v41;
        }

        v44 = v37 >= v34;
        if (v37 >= v34)
        {
          v45 = v34;
        }

        else
        {
          v45 = *(v29 + 672);
        }

        v63 = v6;
        v6 = *(v29 + 696);
        v46 = 26;
        if (v44)
        {
          v46 = v43;
        }

        v61 = v46;
        v62 = v45;
        v36 = sub_2D52A4(v35, 6, v33, 1);
        v40 = v6 >= v62;
        LODWORD(v6) = v63;
        v47 = 27;
        if (v40)
        {
          v47 = v61;
        }

        v48 = v29 + 40 + 24 * v47;
        *v48 = __dst.__r_.__value_.__l.__data_;
        *(v48 + 8) = *(v29 + 3880);
        *(v48 + 16) = v36;
        if (!v36)
        {
          break;
        }
      }

      v49 = (v36 + *v36);
      v50 = (v49 - *v49);
      if (*v50 < 0x35u)
      {
        goto LABEL_95;
      }

      v51 = v50[26];
      if (!v51 || *(v49 + v51 + *(v49 + v51)) <= HIDWORD(v33))
      {
        goto LABEL_95;
      }

      v25 += 2;
      if (v25 == v26)
      {
        goto LABEL_90;
      }
    }

    sub_2C9894(&v67);
LABEL_95:
    v15 = sub_7E7E4(1u);
    if (!v15)
    {
      goto LABEL_30;
    }

    sub_19594F8(&v67);
    sub_4A5C(&v67, "Payment method region entry has a payment method region ref, which is not in the data.", 86);
    if ((v77 & 0x10) != 0)
    {
      v55 = v76;
      v56 = &v72;
      if (v76 < v73)
      {
        v76 = v73;
        v55 = v73;
        v56 = &v72;
      }
    }

    else
    {
      if ((v77 & 8) == 0)
      {
        v54 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_109:
        __dst.__r_.__value_.__s.__data_[v54] = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v67 = v60;
        *(&v67 + *(v60 - 3)) = v59;
        if (v75 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v69);
        std::ostream::~ostream();
        std::ios::~ios();
        v15 = 0;
        goto LABEL_30;
      }

      v55 = v71;
      v56 = &v70;
    }

    v57 = *v56;
    v54 = v55 - *v56;
    if (v54 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v54 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v55 - *v56;
    if (v54)
    {
      memmove(&__dst, v57, v54);
    }

    goto LABEL_109;
  }

  return v6;
}

void sub_C8A9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
    sub_1959728(&a28);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a28);
  _Unwind_Resume(a1);
}

BOOL sub_C8AA34(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  if (*(*a3 + 24))
  {
    goto LABEL_2;
  }

  v34 = *a4;
  if (*(*a4 + 160))
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v205);
    sub_4A5C(&v205, "Journey leg bundle of type PUBLIC TRANSPORT contains incompatible journey leg", 77);
    if ((v215 & 0x10) != 0)
    {
      v49 = v214;
      if (v214 < v211)
      {
        v214 = v211;
        v49 = v211;
      }

      v50 = v210;
      v35 = v49 - v210;
      if (v49 - v210 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if ((v215 & 8) == 0)
      {
        v35 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_365:
        __dst.__r_.__value_.__s.__data_[v35] = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (v213 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v207);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v50 = v208[0];
      v35 = v209 - v208[0];
      if (v209 - v208[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_103:
        sub_3244();
      }
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v35;
    if (!v35)
    {
      goto LABEL_365;
    }

    goto LABEL_364;
  }

  if ((a5 & 1) == 0)
  {
    v41 = (a2 + 4);
    goto LABEL_77;
  }

  v36 = v34[5];
  if (v36 == 0x7FFFFFFF || (v37 = v34[2], v37 == 0x7FFFFFFF))
  {
    v38 = 7;
    v39 = 214748364;
LABEL_55:
    v40 = 5;
    goto LABEL_56;
  }

  v38 = 0;
  v39 = v36 - v37;
  if (v39 >= 0)
  {
    goto LABEL_55;
  }

  v40 = -5;
LABEL_56:
  if (v39 + ((((103 * (v40 + v38)) & 0x8000) != 0) + ((103 * (v40 + v38)) >> 10)) < 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v205);
    sub_4A5C(&v205, "Journey leg (alternative) has a negative static duration of ", 60);
    std::ostream::operator<<();
    if ((v215 & 0x10) != 0)
    {
      v72 = v214;
      if (v214 < v211)
      {
        v214 = v211;
        v72 = v211;
      }

      v73 = &v210;
    }

    else
    {
      if ((v215 & 8) == 0)
      {
        v35 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_365;
      }

      v73 = v208;
      v72 = v209;
    }

    v50 = *v73;
    v35 = v72 - *v73;
    if (v35 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v72 - *v73;
    if (!v35)
    {
      goto LABEL_365;
    }

    goto LABEL_364;
  }

  v41 = (a2 + 4);
  if (*(a2 + 4) != 2)
  {
    goto LABEL_77;
  }

  v42 = v34[6];
  if (v42 == 0x7FFFFFFF || (v43 = v34[3], v43 == 0x7FFFFFFF))
  {
    v44 = 7;
    v45 = 214748364;
LABEL_61:
    v46 = 5;
    goto LABEL_62;
  }

  v44 = 0;
  v45 = v42 - v43;
  if (v45 >= 0)
  {
    goto LABEL_61;
  }

  v46 = -5;
LABEL_62:
  if (v45 + ((((103 * (v46 + v44)) & 0x8000) != 0) + ((103 * (v46 + v44)) >> 10)) < 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v205);
    sub_4A5C(&v205, "Journey leg (alternative) of journey based on realtime data has a negative expected duration of ", 96);
    std::ostream::operator<<();
    if ((v215 & 0x10) != 0)
    {
      v111 = v214;
      if (v214 < v211)
      {
        v214 = v211;
        v111 = v211;
      }

      v112 = &v210;
    }

    else
    {
      if ((v215 & 8) == 0)
      {
        v35 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_365;
      }

      v112 = v208;
      v111 = v209;
    }

    v50 = *v112;
    v35 = v111 - *v112;
    if (v35 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v111 - *v112;
    if (!v35)
    {
      goto LABEL_365;
    }

    goto LABEL_364;
  }

LABEL_77:
  v47 = v34[13];
  if (v47 == -1)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v205);
    sub_4A5C(&v205, "Public transport journey leg (alternative) has an invalid origin stop index", 75);
    if ((v215 & 0x10) != 0)
    {
      v66 = v214;
      if (v214 < v211)
      {
        v214 = v211;
        v66 = v211;
      }

      v67 = &v210;
    }

    else
    {
      if ((v215 & 8) == 0)
      {
        v35 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_365;
      }

      v67 = v208;
      v66 = v209;
    }

    v50 = *v67;
    v35 = v66 - *v67;
    if (v35 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v66 - *v67;
    if (!v35)
    {
      goto LABEL_365;
    }

    goto LABEL_364;
  }

  v48 = v34[14];
  if (v48 == -1)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v205);
    sub_4A5C(&v205, "Public transport journey leg (alternative) has an invalid destination stop index", 80);
    if ((v215 & 0x10) != 0)
    {
      v74 = v214;
      if (v214 < v211)
      {
        v214 = v211;
        v74 = v211;
      }

      v75 = &v210;
    }

    else
    {
      if ((v215 & 8) == 0)
      {
        v35 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_365;
      }

      v75 = v208;
      v74 = v209;
    }

    v50 = *v75;
    v35 = v74 - *v75;
    if (v35 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v74 - *v75;
    if (!v35)
    {
      goto LABEL_365;
    }

    goto LABEL_364;
  }

  if (v47 == v48)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v205);
    sub_4A5C(&v205, "Public transport journey leg (alternative) has the same origin and destination stop index", 89);
    if ((v215 & 0x10) != 0)
    {
      v107 = v214;
      if (v214 < v211)
      {
        v214 = v211;
        v107 = v211;
      }

      v108 = &v210;
    }

    else
    {
      if ((v215 & 8) == 0)
      {
        v35 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_365;
      }

      v108 = v208;
      v107 = v209;
    }

    v50 = *v108;
    v35 = v107 - *v108;
    if (v35 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v107 - *v108;
    if (!v35)
    {
      goto LABEL_365;
    }

    goto LABEL_364;
  }

  if (v34[8] == -1 || v34[9] == 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v205);
    sub_4A5C(&v205, "Public transport journey leg (alternative) has an invalid stop pattern ref", 74);
    if ((v215 & 0x10) != 0)
    {
      v109 = v214;
      if (v214 < v211)
      {
        v214 = v211;
        v109 = v211;
      }

      v110 = &v210;
    }

    else
    {
      if ((v215 & 8) == 0)
      {
        v35 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_365;
      }

      v110 = v208;
      v109 = v209;
    }

    v50 = *v110;
    v35 = v109 - *v110;
    if (v35 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v109 - *v110;
    if (!v35)
    {
      goto LABEL_365;
    }

    goto LABEL_364;
  }

  v61 = a2;
  v62 = a5;
  v63 = a3;
  v195 = a4;
  v64 = sub_C7F708(a1 + 517, *(v34 + 4));
  if ((v64 & 1) == 0)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v205);
      sub_4A5C(&v205, "Public transport journey leg (alternative) has a stop pattern ref, which is not in the data.", 92);
      sub_1959680(&v205, &__dst);
      sub_7E854(&__dst, 1u);
      goto LABEL_424;
    }

    return result;
  }

  v65 = v34[10];
  if (v65 == -1)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v205);
      sub_4A5C(&v205, "Public transport journey leg (alternative) has an invalid trip sequence index", 77);
      sub_1959680(&v205, &__dst);
      sub_7E854(&__dst, 1u);
      goto LABEL_424;
    }

    return result;
  }

  if (*v41 == 2 && sub_C8D924(a1 + 517, *(v34 + 4), v65))
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v205);
      sub_4A5C(&v205, "Public transport journey leg (alternative) represents a trip that is blocked in the dynamic data on the stop pattern", 116);
      sub_1959680(&v205, &__dst);
      sub_7E854(&__dst, 1u);
      goto LABEL_424;
    }

    return result;
  }

  if (v34[11] != -1 && v34[12] == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v205);
      sub_4A5C(&v205, "Public transport journey leg (alternative) represents a frequency trip but has an invalid basetime", 98);
      sub_1959680(&v205, &__dst);
      sub_7E854(&__dst, 1u);
      goto LABEL_424;
    }

    return result;
  }

  v114 = v34[13];
  v113 = v34[14];
  v115 = v113 + 1;
  if (v114 <= v113 + 1)
  {
    v116 = v113 + 1;
  }

  else
  {
    v116 = v34[13];
  }

  v194 = v116;
  if (v114 >= v115)
  {
LABEL_306:
    if (v34[1] != sub_C8DA30(a1 + 517, *(v34 + 4), v114))
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v205);
      sub_4A5C(&v205, "Public transport journey leg (alternative) has buffer duration ", 63);
      v170 = std::ostream::operator<<();
      v171 = sub_4A5C(v170, " sec which does not match the data ", 35);
      v172 = sub_C8DA30(a1 + 517, *(v34 + 4), v34[13]);
      sub_72140(v171, v172);
      sub_1959680(&v205, &__dst);
      sub_7E854(&__dst, 1u);
      goto LABEL_424;
    }

    if (v34[2] == sub_C8DA98(a1, *(v34 + 4), v34[13], v34 + 10))
    {
      if (v34[5] != sub_C8DB74(a1, *(v34 + 4), v34[14], v34 + 10))
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v205);
        v187 = sub_4A5C(&v205, "Public transport journey leg (alternative) has arrival time ", 60);
        sub_3608D0(&v201, "");
        sub_509AD8((v34 + 5), &v201, &__dst);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        v190 = sub_4A5C(v187, p_dst, size);
        v191 = sub_4A5C(v190, " whose static time does not match the data ", 43);
        LODWORD(v200.__r_.__value_.__l.__data_) = sub_C8DC50(a1 + 517, *(v34 + 4), v34[14], v34 + 10);
        sub_258D4(v191);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (v203 < 0)
        {
          operator delete(v201);
        }

        sub_1959680(&v205, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_424;
      }

      v117 = *(v34 + 8);
      v118 = *(v34 + 9);
      if (v117 != v118)
      {
        v119 = v62;
        v120 = v61;
        while (sub_C8DD5C(a1, v120, v117, v119, 0))
        {
          v117 += 60;
          v119 = v62;
          v120 = v61;
          if (v117 == v118)
          {
            goto LABEL_313;
          }
        }

        return 0;
      }

LABEL_313:
      v121 = *(v34 + 11);
      v122 = *(v34 + 12);
      if (v121 != v122)
      {
        v123 = v61;
        do
        {
          if (!sub_C8DD5C(a1, v123, v121, 0, 1))
          {
            return 0;
          }

          v121 += 60;
          v123 = v61;
        }

        while (v121 != v122);
        if (*(v34 + 11) != *(v34 + 12) && v34[28] == 0x7FFFFFFF)
        {
          result = sub_7E7E4(1u);
          if (result)
          {
            sub_19594F8(&v205);
            sub_4A5C(&v205, "Public transport journey leg has upcoming journey leg alternatives, but an invalid upcoming journey leg alternatives reference time.", 132);
            sub_1959680(&v205, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_424;
          }

          return result;
        }
      }

      v192 = *(v34 + 15);
      v193 = *(v34 + 16);
      if (v192 != v193)
      {
        while (sub_C90434(v192))
        {
          v192 += 10;
          if (v192 == v193)
          {
            goto LABEL_430;
          }
        }

        return 0;
      }

LABEL_430:
      a4 = v195;
      a3 = v63;
      a5 = v62;
      a2 = v61;
      if (v34[37] != 0x7FFFFFFF && v34[38] != 0x7FFFFFFF)
      {
        result = sub_C8F204(v34 + 37);
        a2 = v61;
        a5 = v62;
        a3 = v63;
        a4 = v195;
        if (!result)
        {
          return result;
        }
      }

LABEL_2:
      if (*(*a3 + 24) == 1)
      {
        v6 = *a4;
        if (*(*a4 + 160) != 1)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v205);
          sub_4A5C(&v205, "Journey leg bundle of type WALKING contains incompatible journey leg", 68);
          if ((v215 & 0x10) != 0)
          {
            v53 = v214;
            if (v214 < v211)
            {
              v214 = v211;
              v53 = v211;
            }

            v54 = &v210;
          }

          else
          {
            if ((v215 & 8) == 0)
            {
              v35 = 0;
              *(&__dst.__r_.__value_.__s + 23) = 0;
              goto LABEL_365;
            }

            v54 = v208;
            v53 = v209;
          }

          v50 = *v54;
          v35 = v53 - *v54;
          if (v35 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v35 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v53 - *v54;
          if (!v35)
          {
            goto LABEL_365;
          }

          goto LABEL_364;
        }

        if (v6[3] == -1 || !v6[4])
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v205);
          sub_4A5C(&v205, "Walking journey leg contains an invalid origin stop ref", 55);
          if ((v215 & 0x10) != 0)
          {
            v55 = v214;
            if (v214 < v211)
            {
              v214 = v211;
              v55 = v211;
            }

            v56 = &v210;
          }

          else
          {
            if ((v215 & 8) == 0)
            {
              v35 = 0;
              *(&__dst.__r_.__value_.__s + 23) = 0;
              goto LABEL_365;
            }

            v56 = v208;
            v55 = v209;
          }

          v50 = *v56;
          v35 = v55 - *v56;
          if (v35 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v35 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v55 - *v56;
          if (!v35)
          {
            goto LABEL_365;
          }

          goto LABEL_364;
        }

        v7 = *(v6 + 3);
        if (HIDWORD(v7) != 1 || (v7 + 3) >= 2)
        {
          v9 = __ROR8__(v7, 32);
          v10 = a2;
          v11 = a3;
          v12 = a4;
          v13 = a5;
          v14 = sub_2C939C(a1[515] + 24, v9, 1);
          if (!v14 || (v15 = &v14[-*v14], *v15 < 0x1Du) || (v16 = *(v15 + 14)) == 0 || (a2 = v10, a5 = v13, a3 = v11, a4 = v12, *&v14[v16 + *&v14[v16]] <= HIDWORD(v9)))
          {
            result = sub_7E7E4(1u);
            if (!result)
            {
              return result;
            }

            sub_19594F8(&v205);
            sub_4A5C(&v205, "Walking journey leg has an origin stop ref, which is not in the data", 68);
            if ((v215 & 0x10) != 0)
            {
              v70 = v214;
              if (v214 < v211)
              {
                v214 = v211;
                v70 = v211;
              }

              v71 = &v210;
            }

            else
            {
              if ((v215 & 8) == 0)
              {
                v35 = 0;
                *(&__dst.__r_.__value_.__s + 23) = 0;
                goto LABEL_365;
              }

              v71 = v208;
              v70 = v209;
            }

            v50 = *v71;
            v35 = v70 - *v71;
            if (v35 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v35 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v70 - *v71;
            if (!v35)
            {
              goto LABEL_365;
            }

            goto LABEL_364;
          }
        }

        if (v6[5] == -1 || !v6[6])
        {
          result = sub_7E7E4(1u);
          if (result)
          {
            sub_19594F8(&v205);
            sub_4A5C(&v205, "Walking journey leg contains an invalid destination stop ref", 60);
            sub_1959680(&v205, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_424;
          }

          return result;
        }

        v17 = *(v6 + 5);
        if (HIDWORD(v17) != 1 || (v17 + 3) >= 2)
        {
          v19 = a1[515];
          v20 = __ROR8__(v17, 32);
          v21 = a2;
          v22 = a3;
          v23 = a4;
          v24 = a5;
          v25 = sub_2C939C(v19 + 24, v20, 1);
          if (!v25 || (v26 = &v25[-*v25], *v26 < 0x1Du) || (v27 = *(v26 + 14)) == 0 || (a2 = v21, a5 = v24, a3 = v22, a4 = v23, *&v25[v27 + *&v25[v27]] <= HIDWORD(v20)))
          {
            result = sub_7E7E4(1u);
            if (result)
            {
              sub_19594F8(&v205);
              sub_4A5C(&v205, "Walking journey leg has a destination stop ref, which is not in the data", 72);
              sub_1959680(&v205, &__dst);
              sub_7E854(&__dst, 1u);
              goto LABEL_424;
            }

            return result;
          }
        }
      }

      v28 = *a4;
      v29 = *(*a4 + 160);
      v30 = *(*a4 + 4);
      if (v29)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30 == 0x7FFFFFFF;
      }

      if (!v31)
      {
        if (v29 == 1)
        {
          if (v30 != 0x7FFFFFFF)
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v29)
          {
            goto LABEL_438;
          }

          if (*(v28 + 8) != 0x7FFFFFFF)
          {
LABEL_33:
            v32 = *(a2 + 4);
            if (v32 == 2)
            {
              if (v29)
              {
                if ((v30 | (v30 << 32)) >> 32 == 0x7FFFFFFF)
                {
                  goto LABEL_36;
                }
              }

              else if (HIDWORD(*(v28 + 8)) == 0x7FFFFFFFLL)
              {
LABEL_36:
                result = sub_7E7E4(1u);
                if (result)
                {
                  sub_19594F8(&v205);
                  sub_4A5C(&v205, "Journey leg of journey based on realtime data has an invalid expected departure time", 84);
                  sub_1959680(&v205, &__dst);
                  sub_7E854(&__dst, 1u);
                  goto LABEL_424;
                }

                return result;
              }
            }

            if (v29)
            {
              if (*(v28 + 8) == 0x7FFFFFFF)
              {
LABEL_152:
                result = sub_7E7E4(1u);
                if (!result)
                {
                  return result;
                }

                sub_19594F8(&v205);
                sub_4A5C(&v205, "Journey leg has an invalid static arrival time", 46);
                if ((v215 & 0x10) != 0)
                {
                  v68 = v214;
                  if (v214 < v211)
                  {
                    v214 = v211;
                    v68 = v211;
                  }

                  v69 = &v210;
                }

                else
                {
                  if ((v215 & 8) == 0)
                  {
                    v35 = 0;
                    *(&__dst.__r_.__value_.__s + 23) = 0;
                    goto LABEL_365;
                  }

                  v69 = v208;
                  v68 = v209;
                }

                v50 = *v69;
                v35 = v68 - *v69;
                if (v35 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_3244();
                }

                if (v35 >= 0x17)
                {
                  operator new();
                }

                *(&__dst.__r_.__value_.__s + 23) = v68 - *v69;
                if (!v35)
                {
                  goto LABEL_365;
                }

LABEL_364:
                memmove(&__dst, v50, v35);
                goto LABEL_365;
              }
            }

            else if (*(v28 + 20) == 0x7FFFFFFF)
            {
              goto LABEL_152;
            }

            if (v32 == 2)
            {
              v60 = v29 ? *(v28 + 8) | (*(v28 + 8) << 32) : *(v28 + 20);
              if (HIDWORD(v60) == 0x7FFFFFFF)
              {
                result = sub_7E7E4(1u);
                if (result)
                {
                  sub_19594F8(&v205);
                  sub_4A5C(&v205, "Journey leg of journey based on realtime data has an invalid expected arrival time", 82);
                  sub_1959680(&v205, &__dst);
                  sub_7E854(&__dst, 1u);
                  goto LABEL_424;
                }

                return result;
              }
            }

            if (a5)
            {
              v76 = a2;
              v77 = a5;
              v78 = a3;
              v79 = a4;
              v80 = sub_C8D858(v28);
              if (v80 < 0)
              {
                v81 = -5;
              }

              else
              {
                v81 = 5;
              }

              if ((v80 / 10 + (((103 * (v81 + v80 % 10)) >> 15) & 1) + ((103 * (v81 + v80 % 10)) >> 10)) < 0)
              {
                result = sub_7E7E4(1u);
                if (result)
                {
                  sub_19594F8(&v205);
                  sub_4A5C(&v205, "Journey leg has a negative static duration of ", 46);
                  sub_C8D858(*v79);
                  std::ostream::operator<<();
                  sub_1959680(&v205, &__dst);
                  sub_7E854(&__dst, 1u);
                  goto LABEL_424;
                }

                return result;
              }

              a2 = v76;
              a4 = v79;
              a3 = v78;
              a5 = v77;
              if (*(v76 + 4) == 2)
              {
                v82 = sub_C8D8AC(*v79);
                a2 = v76;
                a5 = v77;
                a3 = v78;
                a4 = v79;
                v83 = v82 < 0 ? -5 : 5;
                if ((v82 / 10 + (((103 * (v83 + v82 % 10)) >> 15) & 1) + ((103 * (v83 + v82 % 10)) >> 10)) < 0)
                {
                  result = sub_7E7E4(1u);
                  if (result)
                  {
                    sub_19594F8(&v205);
                    sub_4A5C(&v205, "Journey leg of journey based on realtime data has a negative expected duration of ", 82);
                    sub_C8D8AC(*v79);
                    std::ostream::operator<<();
                    sub_1959680(&v205, &__dst);
                    sub_7E854(&__dst, 1u);
                    goto LABEL_424;
                  }

                  return result;
                }
              }
            }

            v84 = (*a3 + 72);
            if (*(a2 + 208) <= v84)
            {
              return 1;
            }

            if (*(*a4 + 160) < 2u)
            {
              v85 = *v84;
              v86 = **a4;
              if (0xCF3CF3CF3CF3CF3DLL * ((*(*a3 + 80) - *(*a3 + 72)) >> 3) <= v86)
              {
                result = sub_7E7E4(1u);
                if (result)
                {
                  sub_19594F8(&v205);
                  sub_4A5C(&v205, "Journey leg has a next pointer which is out of range", 52);
                  sub_1959680(&v205, &__dst);
                  sub_7E854(&__dst, 1u);
                  goto LABEL_424;
                }

                return result;
              }

              v87 = v85 + 168 * v86;
              v88 = *(a2 + 4);
              if (a5 && !v88)
              {
                v89 = a2;
                v90 = a5;
                v91 = a3;
                v92 = a4;
                v93 = sub_C8D7D8(v87);
                if (*(v87 + 160))
                {
                  v94 = 0;
                }

                else
                {
                  v94 = *(v87 + 4);
                }

                v95 = v94 / -10;
                v96 = v94 % 10;
                if (v94 < 0)
                {
                  v97 = -5;
                }

                else
                {
                  v97 = 5;
                }

                if ((v95 + v93 + (((-103 * (v97 + v96)) >> 15) & 1) + ((-103 * (v97 + v96)) >> 10)) < sub_C8D818(*v92))
                {
                  result = sub_7E7E4(1u);
                  if (!result)
                  {
                    return result;
                  }

                  sub_19594F8(&v205);
                  v98 = sub_4A5C(&v205, "Journey leg has a static arrival time after the next leg's static departure time minus the next leg's buffer duration: ", 119);
                  __dst.__r_.__value_.__r.__words[0] = sub_C8D818(*v92);
                  LOWORD(__dst.__r_.__value_.__r.__words[1]) = v99;
                  v100 = sub_258D4(v98);
                  v101 = sub_4A5C(v100, " > (", 4);
                  v201 = sub_C8D7D8(v87);
                  v202 = v102;
                  v103 = sub_258D4(v101);
                  v104 = sub_4A5C(v103, " - ", 3);
                  if (*(v87 + 160))
                  {
                    v105 = 0;
                  }

                  else
                  {
                    v105 = *(v87 + 4);
                  }

                  goto LABEL_227;
                }

                a2 = v89;
                v88 = *(v89 + 4);
                a4 = v92;
                a3 = v91;
                a5 = v90;
              }

              if (a5 && v88 == 2)
              {
                v142 = a2;
                v143 = a5;
                v144 = a3;
                v145 = a4;
                v146 = sub_C8D7D8(v87);
                if (*(v87 + 160))
                {
                  v147 = 0;
                }

                else
                {
                  v147 = *(v87 + 4);
                }

                v148 = v147 / -10;
                v149 = v147 % 10;
                if (v147 < 0)
                {
                  v150 = -5;
                }

                else
                {
                  v150 = 5;
                }

                if ((v148 + HIDWORD(v146) + (((-103 * (v150 + v149)) >> 15) & 1) + ((-103 * (v150 + v149)) >> 10)) < (sub_C8D818(*v145) >> 32))
                {
                  result = sub_7E7E4(1u);
                  if (!result)
                  {
                    return result;
                  }

                  sub_19594F8(&v205);
                  v151 = sub_4A5C(&v205, "Journey leg of journey based on realtime data has an expected arrival time after the next leg's expected departure time minus the next leg's buffer duration: ", 158);
                  __dst.__r_.__value_.__r.__words[0] = sub_C8D818(*v145);
                  LOWORD(__dst.__r_.__value_.__r.__words[1]) = v152;
                  v153 = sub_258D4(v151);
                  v154 = sub_4A5C(v153, " > (", 4);
                  v201 = sub_C8D7D8(v87);
                  v202 = v155;
                  v156 = sub_258D4(v154);
                  v104 = sub_4A5C(v156, " - ", 3);
                  if (*(v87 + 160))
                  {
                    v105 = 0;
                  }

                  else
                  {
                    v105 = *(v87 + 4);
                  }

LABEL_227:
                  v106 = sub_72140(v104, v105);
                  sub_4A5C(v106, ")", 1);
                  sub_1959680(&v205, &__dst);
                  sub_7E854(&__dst, 1u);
                  goto LABEL_424;
                }

                a2 = v142;
                v88 = *(v142 + 4);
                a4 = v145;
                a3 = v144;
                a5 = v143;
              }

              if (!a5 || v88)
              {
                goto LABEL_379;
              }

              if (!*(*a3 + 24) && *(*a3 + 96) == 1)
              {
                v157 = a2;
                v158 = a5;
                v159 = a3;
                v160 = a4;
                v161 = sub_C8D7D8(v87);
                if (v161 == sub_C8D818(*v160))
                {
                  v88 = *(v157 + 4);
                  a4 = v160;
                  a3 = v159;
                  a5 = v158;
LABEL_379:
                  result = 1;
                  if (!a5)
                  {
                    return result;
                  }

                  if (v88 != 2)
                  {
                    return result;
                  }

                  if (*(*a3 + 24))
                  {
                    return result;
                  }

                  if (*(*a3 + 96) != 1)
                  {
                    return result;
                  }

                  v162 = a4;
                  v163 = sub_C8D7D8(v87);
                  v164 = sub_C8D818(*v162) ^ v163;
                  result = 1;
                  if (!HIDWORD(v164))
                  {
                    return result;
                  }

                  result = sub_7E7E4(1u);
                  if (!result)
                  {
                    return result;
                  }

                  sub_19594F8(&v205);
                  v165 = sub_4A5C(&v205, "Public transport journey leg of journey based on realtime data has an expected arrival time which does not match the subsequent walking leg's expected departure time: ", 167);
                  __dst.__r_.__value_.__r.__words[0] = sub_C8D818(*v162);
                  LOWORD(__dst.__r_.__value_.__r.__words[1]) = v166;
                  v167 = sub_258D4(v165);
                  v168 = sub_4A5C(v167, " != ", 4);
                  v201 = sub_C8D7D8(v87);
                  v202 = v169;
                  sub_258D4(v168);
                  sub_1959680(&v205, &__dst);
                  sub_7E854(&__dst, 1u);
                  goto LABEL_424;
                }

                result = sub_7E7E4(1u);
                if (!result)
                {
                  return result;
                }

                sub_19594F8(&v205);
                v182 = sub_4A5C(&v205, "Public transport journey leg has a static arrival time which does not match the subsequent walking leg's static departure time: ", 128);
                __dst.__r_.__value_.__r.__words[0] = sub_C8D818(*v160);
                LOWORD(__dst.__r_.__value_.__r.__words[1]) = v183;
                v184 = sub_258D4(v182);
                v185 = sub_4A5C(v184, " != ", 4);
                v201 = sub_C8D7D8(v87);
                v202 = v186;
                sub_258D4(v185);
                sub_1959680(&v205, &__dst);
                sub_7E854(&__dst, 1u);
LABEL_424:
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                sub_1959728(&v205);
                return 0;
              }

              return 1;
            }

LABEL_438:
            sub_5AF20();
          }
        }

        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v205);
        sub_4A5C(&v205, "Journey leg has an invalid static departure time", 48);
        if ((v215 & 0x10) != 0)
        {
          v58 = v214;
          if (v214 < v211)
          {
            v214 = v211;
            v58 = v211;
          }

          v59 = &v210;
        }

        else
        {
          if ((v215 & 8) == 0)
          {
            v35 = 0;
            *(&__dst.__r_.__value_.__s + 23) = 0;
            goto LABEL_365;
          }

          v59 = v208;
          v58 = v209;
        }

        v50 = *v59;
        v35 = v58 - *v59;
        if (v35 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v35 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v58 - *v59;
        if (!v35)
        {
          goto LABEL_365;
        }

        goto LABEL_364;
      }

      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v205);
      sub_4A5C(&v205, "Journey leg has an invalid buffer duration", 42);
      if ((v215 & 0x10) != 0)
      {
        v51 = v214;
        if (v214 < v211)
        {
          v214 = v211;
          v51 = v211;
        }

        v52 = &v210;
      }

      else
      {
        if ((v215 & 8) == 0)
        {
          v35 = 0;
          *(&__dst.__r_.__value_.__s + 23) = 0;
          goto LABEL_365;
        }

        v52 = v208;
        v51 = v209;
      }

      v50 = *v52;
      v35 = v51 - *v52;
      if (v35 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v35 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v51 - *v52;
      if (!v35)
      {
        goto LABEL_365;
      }

      goto LABEL_364;
    }

    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v205);
    v174 = sub_4A5C(&v205, "Public transport journey leg (alternative) has departure time ", 62);
    sub_3608D0(&v201, "");
    sub_509AD8((v34 + 2), &v201, &__dst);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v175 = &__dst;
    }

    else
    {
      v175 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v176 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v176 = __dst.__r_.__value_.__l.__size_;
    }

    v177 = sub_4A5C(v174, v175, v176);
    v178 = sub_4A5C(v177, " whose static time does not match the data ", 43);
    v198 = sub_C8DA98(a1, *(v34 + 4), v34[13], v34 + 10);
    v199 = v179;
    sub_3608D0(v196, "");
    sub_509AD8(&v198, v196, &v200);
    if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v180 = &v200;
    }

    else
    {
      v180 = v200.__r_.__value_.__r.__words[0];
    }

    if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v181 = HIBYTE(v200.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v181 = v200.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v178, v180, v181);
    if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v200.__r_.__value_.__l.__data_);
      if ((v197 & 0x80000000) == 0)
      {
LABEL_406:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_407;
        }

        goto LABEL_436;
      }
    }

    else if ((v197 & 0x80000000) == 0)
    {
      goto LABEL_406;
    }

    operator delete(v196[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_407:
      if ((v203 & 0x80000000) == 0)
      {
LABEL_408:
        sub_1959680(&v205, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_424;
      }

LABEL_437:
      operator delete(v201);
      goto LABEL_408;
    }

LABEL_436:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v203 & 0x80000000) == 0)
    {
      goto LABEL_408;
    }

    goto LABEL_437;
  }

  while (1)
  {
    v124 = sub_A57920(a1 + 517, *(v34 + 4));
    v125 = (v124 - *v124);
    if (*v125 >= 9u && (v126 = v125[4]) != 0)
    {
      v127 = (v124 + v126 + *(v124 + v126));
    }

    else
    {
      v127 = 0;
    }

    v128 = __ROR8__(*sub_A571D4(v127, v114), 32);
    v129 = sub_A56F04(a1 + 517, *(v34 + 4), v114, v34[10]);
    if (HIDWORD(v128) != 1 || (v128 + 3) >= 2)
    {
      v131 = __ROR8__(v128, 32);
      v132 = sub_2C939C(a1[515] + 24, v131, 1);
      if (!v132 || (v133 = &v132[-*v132], *v133 < 0x1Du) || (v134 = *(v133 + 14)) == 0 || *&v132[v134 + *&v132[v134]] <= HIDWORD(v131))
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v205);
        v173 = sub_4A5C(&v205, "Public transport journey leg (alternative) uses a stop index ", 61);
        std::ostream::operator<<();
        sub_4A5C(v173, ", which is not in the data", 26);
        sub_1959680(&v205, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_424;
      }
    }

    if (v129 != 0xFFFFFFFFLL)
    {
      v135 = __ROR8__(v129, 32);
      v136 = sub_2C939C(a1[523] + 24, v135, 1);
      if (!v136)
      {
        break;
      }

      v137 = &v136[-*v136];
      if (*v137 < 0x2Bu)
      {
        break;
      }

      v138 = *(v137 + 21);
      if (!v138)
      {
        break;
      }

      v139 = &v136[v138 + *&v136[v138]];
      v140 = &v139[-*v139];
      if (*v140 < 5u)
      {
        break;
      }

      v141 = *(v140 + 2);
      if (!v141 || *&v139[v141 + *&v139[v141]] <= HIDWORD(v135))
      {
        break;
      }
    }

    if (v194 == ++v114)
    {
      v114 = v34[13];
      goto LABEL_306;
    }
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v205);
    sub_4A5C(&v205, "Public transport journey leg (alternative) uses a trip, which is not in the data", 80);
    sub_1959680(&v205, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_424;
  }

  return result;
}

void sub_C8CE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a36 < 0)
  {
    operator delete(__p);
    sub_1959728(&a37);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a37);
  _Unwind_Resume(a1);
}

unint64_t sub_C8D7D8(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1 == 1)
  {
    return *(a1 + 4) | (*(a1 + 4) << 32);
  }

  if (v1)
  {
    sub_5AF20();
  }

  return *(a1 + 8);
}

unint64_t sub_C8D818(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1 == 1)
  {
    return *(a1 + 8) | (*(a1 + 8) << 32);
  }

  if (v1)
  {
    sub_5AF20();
  }

  return *(a1 + 20);
}

uint64_t sub_C8D858(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return 10 * (*(a1 + 20) - *(a1 + 8));
  }

  if (v1 != 1)
  {
    sub_5AF20();
  }

  return (10 * (*(a1 + 8) - *(a1 + 4)));
}

uint64_t sub_C8D8AC(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    v2 = *(a1 + 8);
    v3 = HIDWORD(*(a1 + 20));
    result = 0x7FFFFFFFLL;
    if (v3 == 0x7FFFFFFF)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v1 != 1)
  {
    sub_5AF20();
  }

  v2 = *(a1 + 4) | (*(a1 + 4) << 32);
  v3 = (*(a1 + 8) | (*(a1 + 8) << 32)) >> 32;
  result = 0x7FFFFFFFLL;
  if (v3 != 0x7FFFFFFF)
  {
LABEL_6:
    result = 0x7FFFFFFFLL;
    if (HIDWORD(v2) != 0x7FFFFFFF)
    {
      return (10 * (v3 - HIDWORD(v2)));
    }
  }

  return result;
}

uint64_t *sub_C8D924(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  result = sub_4C2B90(*a1 + 3896);
  if (result)
  {
    if (!*(v6 + 3960))
    {
      return 0;
    }

    v8 = *(*a1 + 3976);
    if (!v8)
    {
      return 0;
    }

    v15 = a2;
    result = sub_A794D0((v8 + 208), &v15);
    if (!result)
    {
      return result;
    }

    v9 = *(*a1 + 3976);
    v15 = a2;
    v10 = sub_A794D0((v9 + 208), &v15);
    if (!v10)
    {
      sub_49EC("unordered_map::at: key not found");
    }

    v11 = v10;
    LODWORD(result) = sub_585D8((*a1 + 3896));
    v12 = *(v11 + 6);
    if (a3 < v12)
    {
      return 0;
    }

    v13 = v11[4];
    if (v11[5] + v12 - v13 <= a3)
    {
      return 0;
    }

    v14 = *(v13 + a3 - v12);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if ((v14 & 2) != 0)
    {
      return result;
    }

    else
    {
      return (&dword_0 + 1);
    }
  }

  return result;
}

uint64_t sub_C8DA30(void *a1, unint64_t a2, unsigned int a3)
{
  v4 = sub_A57920(a1, a2);
  v5 = (v4 - *v4);
  if (*v5 >= 9u && (v6 = v5[4]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
  }

  else
  {
    v7 = 0;
  }

  return (10 * *(sub_A571D4(v7, a3) + 8));
}

unint64_t sub_C8DA98(uint64_t a1, unint64_t a2, unsigned int a3, int *a4)
{
  v17 = sub_A56F04((a1 + 4136), a2, a3, *a4);
  v18 = v8;
  v9 = sub_A57920((a1 + 4136), a2);
  v10 = (v9 - *v9);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  v13 = *(sub_A571D4(v12, a3) + 12);
  if (a4[1] == -1)
  {
    v15 = (a1 + 4184);
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = a4[2];
    v15 = (a1 + 4184);
  }

  return sub_A56700(v15, &v17, v13, v14);
}

unint64_t sub_C8DB74(uint64_t a1, unint64_t a2, unsigned int a3, int *a4)
{
  v17 = sub_A56F04((a1 + 4136), a2, a3, *a4);
  v18 = v8;
  v9 = sub_A57920((a1 + 4136), a2);
  v10 = (v9 - *v9);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  v13 = *(sub_A571D4(v12, a3) + 12);
  if (a4[1] == -1)
  {
    v15 = (a1 + 4184);
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = a4[2];
    v15 = (a1 + 4184);
  }

  return sub_A56A5C(v15, &v17, v13, v14);
}

uint64_t sub_C8DC50(void *a1, unint64_t a2, int a3, unsigned int *a4)
{
  v6 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v6 + 4 + *(v10 + 4 * v6 + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A7AC40(v14, *a4);
  if (a4[1] == -1)
  {
    v16 = v15;
  }

  else
  {
    v16 = (a4 + 2);
  }

  v17 = *v16;
  v18 = (v8 - *v8);
  if (*v18 < 7u)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18[3];
    if (v19)
    {
      v19 = (v19 + v8 + *(v19 + v8));
    }
  }

  return (*sub_A7AEE0(v19, *(v15 + 4) + a3) + v17);
}

BOOL sub_C8DD5C(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if ((a4 & 1) == 0)
  {
    v12 = (a2 + 4);
    goto LABEL_18;
  }

  v7 = *(a3 + 16);
  if (v7 == 0x7FFFFFFF || (v8 = *(a3 + 4), v8 == 0x7FFFFFFF))
  {
    v9 = 7;
    v10 = 214748364;
LABEL_5:
    v11 = 5;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = v7 - v8;
  if (v10 >= 0)
  {
    goto LABEL_5;
  }

  v11 = -5;
LABEL_6:
  if (v10 + ((((103 * (v11 + v9)) & 0x8000) != 0) + ((103 * (v11 + v9)) >> 10)) < 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Journey leg (alternative) has a negative static duration of ", 60);
    std::ostream::operator<<();
    if ((v91 & 0x10) != 0)
    {
      v28 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v28 = v87;
      }

      v27 = v86;
      v20 = v28 - v86;
      if (v28 - v86 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_133;
      }

      v27 = v84[0];
      v20 = v85 - v84[0];
      if (v85 - v84[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_86:
        sub_3244();
      }
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v20;
    if (!v20)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  v13 = *(a2 + 4);
  v12 = (a2 + 4);
  if (v13 != 2)
  {
    goto LABEL_18;
  }

  v14 = *(a3 + 20);
  if (v14 == 0x7FFFFFFF || (v15 = *(a3 + 8), v15 == 0x7FFFFFFF))
  {
    v16 = 7;
    v17 = 214748364;
LABEL_11:
    v18 = 5;
    goto LABEL_12;
  }

  v16 = 0;
  v17 = v14 - v15;
  if (v17 >= 0)
  {
    goto LABEL_11;
  }

  v18 = -5;
LABEL_12:
  if (v17 + ((((103 * (v18 + v16)) & 0x8000) != 0) + ((103 * (v18 + v16)) >> 10)) < 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Journey leg (alternative) of journey based on realtime data has a negative expected duration of ", 96);
    std::ostream::operator<<();
    if ((v91 & 0x10) != 0)
    {
      v34 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v34 = v87;
      }

      v35 = &v86;
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_133:
        __dst.__r_.__value_.__s.__data_[v20] = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (v89 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v83);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v35 = v84;
      v34 = v85;
    }

    v27 = *v35;
    v20 = v34 - *v35;
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v34 - *v35;
    if (!v20)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

LABEL_18:
  v21 = *(a3 + 48);
  if (v21 == -1)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has an invalid origin stop index", 75);
    if ((v91 & 0x10) != 0)
    {
      v26 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v26 = v87;
      }

      v27 = v86;
      v20 = v26 - v86;
      if (v26 - v86 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_133;
      }

      v27 = v84[0];
      v20 = v85 - v84[0];
      if (v85 - v84[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_80:
        sub_3244();
      }
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v20;
    if (!v20)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  v22 = *(a3 + 52);
  if (v22 == -1)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has an invalid destination stop index", 80);
    if ((v91 & 0x10) != 0)
    {
      v29 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v29 = v87;
      }

      v27 = v86;
      v20 = v29 - v86;
      if (v29 - v86 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_133;
      }

      v27 = v84[0];
      v20 = v85 - v84[0];
      if (v85 - v84[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_88:
        sub_3244();
      }
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v20;
    if (!v20)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  if (v21 == v22)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has the same origin and destination stop index", 89);
    if ((v91 & 0x10) != 0)
    {
      v30 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v30 = v87;
      }

      v31 = &v86;
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_133;
      }

      v31 = v84;
      v30 = v85;
    }

    v27 = *v31;
    v20 = v30 - *v31;
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v30 - *v31;
    if (!v20)
    {
      goto LABEL_133;
    }

LABEL_132:
    memmove(&__dst, v27, v20);
    goto LABEL_133;
  }

  if (*(a3 + 28) == -1 || !*(a3 + 32))
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has an invalid stop pattern ref", 74);
    if ((v91 & 0x10) != 0)
    {
      v32 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v32 = v87;
      }

      v33 = &v86;
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_133;
      }

      v33 = v84;
      v32 = v85;
    }

    v27 = *v33;
    v20 = v32 - *v33;
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v32 - *v33;
    if (!v20)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  v23 = v12;
  if ((sub_C7F708(a1 + 517, *(a3 + 28)) & 1) == 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has a stop pattern ref, which is not in the data.", 92);
    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_108;
  }

  v25 = *(a3 + 36);
  if (v25 == -1)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has an invalid trip sequence index", 77);
    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_108;
  }

  if (*v23 == 2 && (a5 & 1) == 0 && sub_C8D924(a1 + 517, *(a3 + 28), v25))
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) represents a trip that is blocked in the dynamic data on the stop pattern", 116);
    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_108;
  }

  if (*(a3 + 40) != -1 && *(a3 + 44) == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) represents a frequency trip but has an invalid basetime", 98);
    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_108;
  }

  v36 = *(a3 + 48);
  if (v36 <= v36 + 1)
  {
    v37 = v36 + 1;
  }

  else
  {
    v37 = *(a3 + 48);
  }

  if (v36 != -1)
  {
    do
    {
      v38 = sub_A57920(a1 + 517, *(a3 + 28));
      v39 = (v38 - *v38);
      if (*v39 >= 9u && (v40 = v39[4]) != 0)
      {
        v41 = (v38 + v40 + *(v38 + v40));
      }

      else
      {
        v41 = 0;
      }

      v42 = __ROR8__(*sub_A571D4(v41, v36), 32);
      v43 = sub_A56F04(a1 + 517, *(a3 + 28), v36, *(a3 + 36));
      if (HIDWORD(v42) != 1 || (v42 + 3) >= 2)
      {
        v45 = __ROR8__(v42, 32);
        v46 = sub_2C939C(a1[515] + 24, v45, 1);
        if (!v46 || (v47 = &v46[-*v46], *v47 < 0x1Du) || (v48 = *(v47 + 14)) == 0 || *&v46[v48 + *&v46[v48]] <= HIDWORD(v45))
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v81);
          v56 = sub_4A5C(&v81, "Public transport journey leg (alternative) uses a stop index ", 61);
          std::ostream::operator<<();
          sub_4A5C(v56, ", which is not in the data", 26);
          sub_1959680(&v81, &__dst);
          sub_7E854(&__dst, 1u);
          goto LABEL_108;
        }
      }

      if (v43 != 0xFFFFFFFFLL)
      {
        v49 = __ROR8__(v43, 32);
        v50 = sub_2C939C(a1[523] + 24, v49, 1);
        if (!v50 || (v51 = &v50[-*v50], *v51 < 0x2Bu) || (v52 = *(v51 + 21)) == 0 || (v53 = &v50[v52 + *&v50[v52]], v54 = &v53[-*v53], *v54 < 5u) || (v55 = *(v54 + 2)) == 0 || *&v53[v55 + *&v53[v55]] <= HIDWORD(v49))
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v81);
          sub_4A5C(&v81, "Public transport journey leg (alternative) uses a trip, which is not in the data", 80);
          sub_1959680(&v81, &__dst);
          sub_7E854(&__dst, 1u);
          goto LABEL_108;
        }
      }

      ++v36;
    }

    while (v37 != v36);
    if (*a3 == sub_C8DA30(a1 + 517, *(a3 + 28), *(a3 + 48)))
    {
      goto LABEL_123;
    }

    goto LABEL_185;
  }

  if (*a3 != sub_C8DA30(a1 + 517, *(a3 + 28), 0xFFFFFFFF))
  {
LABEL_185:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has buffer duration ", 63);
    v65 = std::ostream::operator<<();
    v66 = sub_4A5C(v65, " sec which does not match the data ", 35);
    v67 = sub_C8DA30(a1 + 517, *(a3 + 28), *(a3 + 48));
    sub_72140(v66, v67);
    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
LABEL_108:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    sub_1959728(&v81);
    return 0;
  }

LABEL_123:
  if (*(a3 + 4) != sub_C8DA98(a1, *(a3 + 28), *(a3 + 48), (a3 + 36)))
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    v57 = sub_4A5C(&v81, "Public transport journey leg (alternative) has departure time ", 62);
    sub_3608D0(v78, "");
    sub_509AD8(a3 + 4, v78, &__dst);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v60 = sub_4A5C(v57, p_dst, size);
    v61 = sub_4A5C(v60, " whose static time does not match the data ", 43);
    v75 = sub_C8DA98(a1, *(a3 + 28), *(a3 + 48), (a3 + 36));
    v76 = v62;
    sub_3608D0(v73, "");
    sub_509AD8(&v75, v73, &v77);
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v77;
    }

    else
    {
      v63 = v77.__r_.__value_.__r.__words[0];
    }

    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v77.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v61, v63, v64);
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((v74 & 0x80000000) == 0)
      {
LABEL_181:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_182;
        }

        goto LABEL_201;
      }
    }

    else if ((v74 & 0x80000000) == 0)
    {
      goto LABEL_181;
    }

    operator delete(v73[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_182:
      if ((v79 & 0x80000000) == 0)
      {
LABEL_183:
        sub_1959680(&v81, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_108;
      }

LABEL_202:
      operator delete(v78[0]);
      goto LABEL_183;
    }

LABEL_201:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v79 & 0x80000000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_202;
  }

  if (*(a3 + 16) == sub_C8DB74(a1, *(a3 + 28), *(a3 + 52), (a3 + 36)))
  {
    return 1;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v81);
    v68 = sub_4A5C(&v81, "Public transport journey leg (alternative) has arrival time ", 60);
    sub_3608D0(v78, "");
    sub_509AD8(a3 + 16, v78, &__dst);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &__dst;
    }

    else
    {
      v69 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = __dst.__r_.__value_.__l.__size_;
    }

    v71 = sub_4A5C(v68, v69, v70);
    v72 = sub_4A5C(v71, " whose static time does not match the data ", 43);
    LODWORD(v77.__r_.__value_.__l.__data_) = sub_C8DC50(a1 + 517, *(a3 + 28), *(a3 + 52), (a3 + 36));
    sub_258D4(v72);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v79 < 0)
    {
      operator delete(v78[0]);
    }

    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_108;
  }

  return result;
}

void sub_C8EE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a35 < 0)
  {
    operator delete(__p);
    sub_1959728(&a36);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a36);
  _Unwind_Resume(a1);
}

BOOL sub_C8F204(_DWORD *a1)
{
  if (*a1 != 0x7FFFFFFF)
  {
    v3 = a1[1];
    if (v3 == 0x7FFFFFFF)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v14);
      sub_4A5C(&v14, "Operating hours have an invalid end time", 40);
      if ((v24 & 0x10) != 0)
      {
        v9 = v23;
        if (v23 < v20)
        {
          v23 = v20;
          v9 = v20;
        }

        v8 = v19;
        v2 = v9 - v19;
        if (v9 - v19 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if ((v24 & 8) == 0)
        {
          v2 = 0;
          v13 = 0;
          goto LABEL_48;
        }

        v8 = v17;
        v2 = v18 - v17;
        if (v18 - v17 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_37:
          sub_3244();
        }
      }

      if (v2 >= 0x17)
      {
        operator new();
      }

      v13 = v2;
      if (!v2)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (*a1 <= v3)
      {
        return 1;
      }

      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v14);
      v4 = sub_4A5C(&v14, "Operating hours cover a negative time interval: ", 48);
      v5 = sub_258D4(v4);
      v6 = sub_4A5C(v5, " < ", 3);
      sub_258D4(v6);
      if ((v24 & 0x10) != 0)
      {
        v10 = v23;
        if (v23 < v20)
        {
          v23 = v20;
          v10 = v20;
        }

        v11 = &v19;
      }

      else
      {
        if ((v24 & 8) == 0)
        {
          v2 = 0;
          v13 = 0;
          goto LABEL_48;
        }

        v11 = &v17;
        v10 = v18;
      }

      v8 = *v11;
      v2 = v10 - *v11;
      if (v2 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v2 >= 0x17)
      {
        operator new();
      }

      v13 = v10 - *v11;
      if (!v2)
      {
        goto LABEL_48;
      }
    }

LABEL_47:
    memmove(&__p, v8, v2);
    goto LABEL_48;
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v14);
  sub_4A5C(&v14, "Operating hours have an invalid start time", 42);
  if ((v24 & 0x10) != 0)
  {
    v7 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v7 = v20;
    }

    v8 = v19;
    v2 = v7 - v19;
    if (v7 - v19 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_27:
      sub_3244();
    }

    goto LABEL_21;
  }

  if ((v24 & 8) != 0)
  {
    v8 = v17;
    v2 = v18 - v17;
    if (v18 - v17 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_27;
    }

LABEL_21:
    if (v2 >= 0x17)
    {
      operator new();
    }

    v13 = v2;
    if (!v2)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v2 = 0;
  v13 = 0;
LABEL_48:
  *(&__p + v2) = 0;
  sub_7E854(&__p, 1u);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  std::locale::~locale(&v16);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}