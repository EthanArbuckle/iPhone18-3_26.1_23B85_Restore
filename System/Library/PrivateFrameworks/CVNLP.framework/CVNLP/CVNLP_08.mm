void sub_1D9D91C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D91C74(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      *(a4 + 8) = 0;
      *a4 = v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      v8 = *(v5 + 1);
      v7 = *(v5 + 2);
      if (v7 != v8)
      {
        if (((v7 - v8) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1D9D84AB0();
      }

      v5 += 8;
      a4 += 32;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_1D9D91D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 16) = v12;
    operator delete(v12);
  }

  sub_1D9D91D8C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D91D8C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 32;
    }
  }

  return a1;
}

void sub_1D9D92468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVNLPActivationMatrix;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D9294C(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    *(a1 + 48) = *(a1 + 40);
    v1 = *(a1 + 8);
    if (v1 != *a1)
    {
      if (((v1 - *a1) & 0x8000000000000000) == 0)
      {
        v2 = v1 - *a1;
        operator new();
      }

      sub_1D9D84AB0();
    }

    *(a1 + 32) = 1;
  }

  return a1 + 40;
}

void sub_1D9D93888(uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_1D9D84AB0();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

void sub_1D9D93D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D93E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVNLPLexiconCursors;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D9D94248(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, std::string *a10, __int128 a11, __int128 a12, int64_t a13)
{
  operator delete(v14);

  __cxa_begin_catch(a1);
  sub_1D9D94D70(&a10, "Failed to load encoder network");
  v17 = *(v13 + 64);
  espresso_plan_get_error_info();
  v19 = std::string::append(&a10, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  a13 = v19->__r_.__value_.__r.__words[2];
  a12 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a10);
  }

  if (a13 >= 0)
  {
    v21 = &a12;
  }

  else
  {
    v21 = a12;
  }

  sub_1D9DAAF1C(2u, v21);
}

void sub_1D9D94338(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1D9D94094);
}

void sub_1D9D94350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1D9D94408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVNLPCaptionEncoderTransformer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

_BYTE *sub_1D9D94D70(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
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

void sub_1D9D96D70(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  sub_1D9D96E64(va);
  _Unwind_Resume(a1);
}

void **sub_1D9D96E64(void **a1)
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
        v5 = v3 - 2;

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

uint64_t sub_1D9D97104(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (!sub_1D9D9F86C(v3))
  {
    v5 = v3;
    if (objc_msgSend_length(v5, v6, v7, v8) < 2)
    {
      objc_msgSend_characterAtIndex_(v5, v9, 0, v10);
      Script = uscript_getScript();

      if (Script == 25)
      {
LABEL_7:
        v4 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (!sub_1D9D9FAEC(v5))
    {
      v4 = !sub_1D9D9FB7C(v5);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v4 = 2;
LABEL_9:

  return v4;
}

uint64_t sub_1D9D9720C(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_1D9D9F86C(a3))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9D97468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, float a9, void *a10)
{
  v146 = *MEMORY[0x1E69E9840];
  v15 = a5;
  v16 = a6;
  v130 = a7;
  v127 = a8;
  v129 = a10;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  v19 = (a1 + 32);
  v135 = (a1 + 8);
  v136 = a1;
  *a1 = a1 + 8;
  *(a1 + 24) = a1 + 32;
  v134 = (a1 + 24);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 136) = 1;
  v122 = v15;
  v126 = v16;
  if (v16)
  {
    v131 = sub_1D9D98348(v16);
  }

  else
  {
    if (!v15)
    {
      v131 = 0;
      if (!v130)
      {
        goto LABEL_135;
      }

      goto LABEL_6;
    }

    v20 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v17, v15, v18);
    v21 = MEMORY[0x1E695DEF0];
    v25 = objc_msgSend_path(v20, v22, v23, v24);
    v28 = objc_msgSend_dataWithContentsOfFile_(v21, v26, v25, v27);

    v139 = 0;
    v30 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v29, v28, 0, &v139);
    v31 = v139;
    v32 = sub_1D9D98348(v30);

    v131 = v32;
  }

  if (!v130)
  {
    goto LABEL_135;
  }

LABEL_6:
  v33 = v130;
  CFRetain(v33);
  theArray = v33;
  v34 = CFGetTypeID(v33);
  if (v34 != CFArrayGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v35 = theArray;
    v128 = CFArrayGetCount(theArray);
    *(&v140 + 1) = 0;
    *&v141 = 0;
    v36 = &v140 + 8;
    *&v140 = &v140 + 8;
    if (Count)
    {
      v64 = 0;
      do
      {
        if (theArray == v35 && v64 == v128)
        {
          break;
        }

        v65 = v19;
        sub_1D9D9ACDC(theArray, v64, __p);
        v66 = *(&v140 + 1);
        if (v140 == (&v140 + 8))
        {
          goto LABEL_95;
        }

        v67 = *(&v140 + 1);
        v68 = &v140 + 8;
        if (*(&v140 + 1))
        {
          do
          {
            v36 = v67;
            v67 = *(v67 + 1);
          }

          while (v67);
        }

        else
        {
          do
          {
            v36 = *(v68 + 2);
            v62 = *v36 == v68;
            v68 = v36;
          }

          while (v62);
        }

        v69 = v36[55];
        if (v69 >= 0)
        {
          v70 = v36[55];
        }

        else
        {
          v70 = *(v36 + 5);
        }

        if (v69 >= 0)
        {
          v71 = v36 + 32;
        }

        else
        {
          v71 = *(v36 + 4);
        }

        if (SHIBYTE(v145) >= 0)
        {
          v72 = HIBYTE(v145);
        }

        else
        {
          v72 = __p[1];
        }

        if (SHIBYTE(v145) >= 0)
        {
          v73 = __p;
        }

        else
        {
          v73 = __p[0];
        }

        if (v72 >= v70)
        {
          v74 = v70;
        }

        else
        {
          v74 = v72;
        }

        v75 = memcmp(v71, v73, v74);
        v76 = v70 < v72;
        if (v75)
        {
          v76 = v75 < 0;
        }

        if (v76)
        {
LABEL_95:
          v77 = &v140;
          if (v66)
          {
            v77 = v36;
          }

          if (!*(v77 + 1))
          {
LABEL_118:
            operator new();
          }
        }

        else
        {
          if (!v66)
          {
            goto LABEL_118;
          }

          while (1)
          {
            while (1)
            {
              v78 = v66;
              v79 = *(v66 + 55);
              if (v79 >= 0)
              {
                v80 = *(v66 + 55);
              }

              else
              {
                v80 = *(v66 + 40);
              }

              if (v79 >= 0)
              {
                v81 = (v66 + 32);
              }

              else
              {
                v81 = *(v66 + 32);
              }

              if (v80 >= v72)
              {
                v82 = v72;
              }

              else
              {
                v82 = v80;
              }

              v83 = memcmp(v73, v81, v82);
              v84 = v72 < v80;
              if (v83)
              {
                v84 = v83 < 0;
              }

              if (!v84)
              {
                break;
              }

              v66 = *v78;
              if (!*v78)
              {
                goto LABEL_118;
              }
            }

            v85 = memcmp(v81, v73, v82);
            v86 = v80 < v72;
            if (v85)
            {
              v86 = v85 < 0;
            }

            if (!v86)
            {
              break;
            }

            v66 = v78[1];
            if (!v66)
            {
              goto LABEL_118;
            }
          }
        }

        if (SHIBYTE(v145) < 0)
        {
          operator delete(__p[0]);
        }

        ++v64;
        v36 = &v140 + 8;
        v19 = v65;
        v35 = theArray;
      }

      while (v64 != Count);
    }
  }

  else
  {
    *(&v140 + 1) = 0;
    *&v141 = 0;
    *&v140 = &v140 + 8;
  }

  if (v134 != &v140)
  {
    v37 = v140;
    if (*(a1 + 40))
    {
      v38 = *v134;
      *v134 = v19;
      *(*v19 + 16) = 0;
      *v19 = 0;
      v19[1] = 0;
      if (*(v38 + 1))
      {
        v39 = *(v38 + 1);
      }

      else
      {
        v39 = v38;
      }

      __p[0] = (a1 + 24);
      v145 = v39;
      if (!v39)
      {
        v61 = v37;
        goto LABEL_130;
      }

      v40 = *(v39 + 2);
      if (v40)
      {
        v41 = *v40;
        if (*v40 == v39)
        {
          *v40 = 0;
          while (1)
          {
            v120 = *(v40 + 1);
            if (!v120)
            {
              break;
            }

            do
            {
              v40 = v120;
              v120 = *v120;
            }

            while (v120);
          }
        }

        else
        {
          for (*(v40 + 1) = 0; v41; v41 = *(v40 + 1))
          {
            do
            {
              v40 = v41;
              v41 = *v41;
            }

            while (v41);
          }
        }
      }

      __p[1] = v40;
      if (v37 != (&v140 + 8))
      {
        while (1)
        {
          std::string::operator=((v39 + 32), (v37 + 2));
          v42 = v145;
          v43 = *v19;
          v44 = v19;
          v45 = v19;
          if (*v19)
          {
            v46 = *(v145 + 55);
            if (v46 >= 0)
            {
              v47 = *(v145 + 55);
            }

            else
            {
              v47 = v145[5];
            }

            if (v46 >= 0)
            {
              v48 = v145 + 4;
            }

            else
            {
              v48 = v145[4];
            }

            do
            {
              while (1)
              {
                v44 = v43;
                v51 = v43[4];
                v49 = v43 + 4;
                v50 = v51;
                v52 = *(v49 + 23);
                if (v52 >= 0)
                {
                  v53 = *(v49 + 23);
                }

                else
                {
                  v53 = v49[1];
                }

                if (v52 >= 0)
                {
                  v54 = v49;
                }

                else
                {
                  v54 = v50;
                }

                if (v53 >= v47)
                {
                  v55 = v47;
                }

                else
                {
                  v55 = v53;
                }

                v56 = memcmp(v48, v54, v55);
                v57 = v47 < v53;
                if (v56)
                {
                  v57 = v56 < 0;
                }

                if (!v57)
                {
                  break;
                }

                v43 = *v44;
                v45 = v44;
                if (!*v44)
                {
                  goto LABEL_46;
                }
              }

              v43 = v44[1];
            }

            while (v43);
            v45 = v44 + 1;
          }

LABEL_46:
          *v42 = 0;
          v42[1] = 0;
          v42[2] = v44;
          *v45 = v42;
          v58 = **v134;
          if (v58)
          {
            *v134 = v58;
          }

          sub_1D9D1312C(*(a1 + 32), v42);
          ++*(a1 + 40);
          v39 = __p[1];
          v145 = __p[1];
          if (__p[1])
          {
            v40 = *(__p[1] + 2);
            if (v40)
            {
              v59 = *v40;
              if (*v40 == __p[1])
              {
                *v40 = 0;
                while (1)
                {
                  v63 = *(v40 + 1);
                  if (!v63)
                  {
                    break;
                  }

                  do
                  {
                    v40 = v63;
                    v63 = *v63;
                  }

                  while (v63);
                }
              }

              else
              {
                for (*(v40 + 1) = 0; v59; v59 = *(v40 + 1))
                {
                  do
                  {
                    v40 = v59;
                    v59 = *v59;
                  }

                  while (v59);
                }
              }
            }

            __p[1] = v40;
            v60 = *(v37 + 1);
            if (v60)
            {
              do
              {
LABEL_57:
                v61 = v60;
                v60 = *v60;
              }

              while (v60);
              goto LABEL_61;
            }
          }

          else
          {
            v40 = 0;
            v60 = *(v37 + 1);
            if (v60)
            {
              goto LABEL_57;
            }
          }

          do
          {
            v61 = *(v37 + 2);
            v62 = *v61 == v37;
            v37 = v61;
          }

          while (!v62);
LABEL_61:
          if (v39)
          {
            v37 = v61;
            if (v61 != (&v140 + 8))
            {
              continue;
            }
          }

          v87 = __p[0];
          sub_1D9D9AC58(__p[0], v39);
          if (!v40)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        }
      }

      v87 = (a1 + 24);
      v61 = v37;
      sub_1D9D9AC58(v134, v39);
      if (!v40)
      {
        goto LABEL_130;
      }

LABEL_127:
      for (i = *(v40 + 2); i; i = *(i + 2))
      {
        v40 = i;
      }

      sub_1D9D9AC58(v87, v40);
LABEL_130:
      v37 = v61;
    }

    if (v37 != (&v140 + 8))
    {
      operator new();
    }
  }

  sub_1D9D9AC58(&v140, *(&v140 + 1));
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_135:
  if (v129)
  {
    v89 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v17, v129, v18);
    v90 = objc_alloc(MEMORY[0x1E695DF20]);
    v137 = 0;
    v92 = objc_msgSend_initWithContentsOfURL_error_(v90, v91, v89, &v137);
    v93 = v137;
    v133 = sub_1D9D98348(v92);

    if (!v131)
    {
      goto LABEL_153;
    }
  }

  else
  {
    v133 = 0;
    if (!v131)
    {
      goto LABEL_153;
    }
  }

  v94 = v131;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v95 = v94;
  v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v140, __p, 16);
  if (v99)
  {
    v100 = *v141;
    do
    {
      for (j = 0; j != v99; ++j)
      {
        if (*v141 != v100)
        {
          objc_enumerationMutation(v95);
        }

        v102 = *(*(&v140 + 1) + 8 * j);
        v103 = objc_msgSend_objectForKeyedSubscript_(v95, v97, v102, v98);
        v104 = v102;
        v108 = objc_msgSend_UTF8String(v102, v105, v106, v107);
        v112 = objc_msgSend_unsignedIntegerValue(v103, v109, v110, v111);
        v113 = v135;
LABEL_145:
        v114 = *v113;
        if (!*v113)
        {
LABEL_149:
          operator new();
        }

        while (1)
        {
          v113 = v114;
          v115 = v114[4];
          if (v112 < v115)
          {
            goto LABEL_145;
          }

          if (v115 >= v112)
          {
            break;
          }

          v114 = v113[1];
          if (!v114)
          {
            goto LABEL_149;
          }
        }

        MEMORY[0x1DA740ED0](v113 + 5, v108);

        a1 = v136;
      }

      v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v97, &v140, __p, 16);
    }

    while (v99);
  }

LABEL_153:
  *(a1 + 104) = a2;
  v116 = 1.0;
  if (a9 > 0.0)
  {
    v116 = a9;
  }

  *(a1 + 112) = v116;
  *(a1 + 120) = a3;
  *(a1 + 128) = a4;
  v117 = *(a1 + 48);
  *(a1 + 48) = v127;

  v118 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1D9D9817C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_1D9D98778((a25 + 80));
  sub_1D9D98778((a25 + 56));

  sub_1D9D9AC58(a23, *(a25 + 32));
  sub_1D9D9ABD4(a25, *(a25 + 8));

  _Unwind_Resume(a1);
}

id sub_1D9D98348(void *a1)
{
  v65 = *MEMORY[0x1E69E9840];
  memset(v62, 0, sizeof(v62));
  v56 = a1;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v1, v62, v64, 16))
  {
    v2 = **(&v62[0] + 1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_integerValue(v2, v3, v4, v5) <= 0)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      objc_opt_class();
      v6 = (objc_opt_isKindOfClass() & 1) != 0;
    }

    v10 = objc_msgSend_objectForKeyedSubscript_(v56, v8, v2, v9);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_integerValue(v10, v11, v12, v13) <= 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      objc_opt_class();
      v7 = (objc_opt_isKindOfClass() & 1) != 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v57 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v14, v15, v16);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v17 = v56;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v58, v63, 16);
  if (v19)
  {
    v20 = *v59;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v59 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v58 + 1) + 8 * i);
        v23 = v22;
        if (v6 == 3)
        {
          v25 = v22;
          v26 = MEMORY[0x1E696AD98];
          v30 = objc_msgSend_integerValue(v25, v27, v28, v29);
          v24 = objc_msgSend_numberWithInteger_(v26, v31, v30, v32);
        }

        else if (v6 == 2 || v6 == 1)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0;
        }

        v35 = objc_msgSend_objectForKeyedSubscript_(v17, v33, v23, v34);
        v36 = v35;
        if (v7 == 3)
        {
          v38 = v35;
          v39 = MEMORY[0x1E696AD98];
          v43 = objc_msgSend_integerValue(v38, v40, v41, v42);
          v37 = objc_msgSend_numberWithInteger_(v39, v44, v43, v45);
        }

        else if (v7 == 2 || v7 == 1)
        {
          v37 = v35;
        }

        else
        {
          v37 = 0;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v48 = v37;
        }

        else
        {
          v48 = v24;
        }

        if (isKindOfClass)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v57, v47, v48, v24);
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v57, v47, v48, v37);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v49, &v58, v63, 16);
    }

    while (v19);
  }

  v53 = objc_msgSend_copy(v57, v50, v51, v52);
  v54 = *MEMORY[0x1E69E9840];

  return v53;
}

void **sub_1D9D98778(void **a1)
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
        if (v6)
        {
          CFRelease(v6);
          *(v3 - 2) = 0;
        }

        v7 = *(v3 - 5);
        if (v7)
        {
          v8 = *(v3 - 4);
          v5 = *(v3 - 5);
          if (v8 != v7)
          {
            do
            {
              if (*(v8 - 1) < 0)
              {
                operator delete(*(v8 - 24));
              }

              v8 -= 40;
            }

            while (v8 != v7);
            v5 = *(v3 - 5);
          }

          *(v3 - 4) = v7;
          operator delete(v5);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1D9D9883C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 16);
        if (v6)
        {
          CFRelease(v6);
          *(v3 - 16) = 0;
        }

        v7 = *(v3 - 40);
        if (v7)
        {
          v8 = *(v3 - 32);
          v5 = *(v3 - 40);
          if (v8 != v7)
          {
            do
            {
              if (*(v8 - 1) < 0)
              {
                operator delete(*(v8 - 24));
              }

              v8 -= 40;
            }

            while (v8 != v7);
            v5 = *(v3 - 40);
          }

          *(v3 - 32) = v7;
          operator delete(v5);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 56);
    if (v10 != v9)
    {
      do
      {
        v13 = *(v10 - 16);
        if (v13)
        {
          CFRelease(v13);
          *(v10 - 16) = 0;
        }

        v14 = *(v10 - 40);
        if (v14)
        {
          v15 = *(v10 - 32);
          v12 = *(v10 - 40);
          if (v15 != v14)
          {
            do
            {
              if (*(v15 - 1) < 0)
              {
                operator delete(*(v15 - 24));
              }

              v15 -= 40;
            }

            while (v15 != v14);
            v12 = *(v10 - 40);
          }

          *(v10 - 32) = v14;
          operator delete(v12);
        }

        v10 -= 48;
      }

      while (v10 != v9);
      v11 = *(a1 + 56);
    }

    *(a1 + 64) = v9;
    operator delete(v11);
  }

  sub_1D9D9AC58(a1 + 24, *(a1 + 32));
  sub_1D9D9ABD4(a1, *(a1 + 8));
  return a1;
}

void sub_1D9D989B0(uint64_t a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v4 = *a2;
  v187 = a2[1];
  if (*a2 != v187)
  {
    v193 = (a1 + 8);
    while (1)
    {
      v194 = v4[1];
      v191 = v4[3];
      v5 = *(a1 + 120);
      v188 = v4;
      if (v5)
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          v6 = v4[2];
          operator new();
        }

        sub_1D9D84AB0();
      }

      v200 = 0;
      v201 = 0;
      v202 = 0;
      if ((*(a1 + 104) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = 0;
        while (1)
        {
          v196 = v7;
          v8 = MEMORY[0];
          memset(&v210, 0, sizeof(v210));
          if (!*(a1 + 16))
          {
            break;
          }

          v9 = v193;
          do
          {
            v10 = *v9;
            if (!*v9)
            {
              operator new();
            }

            v9 = *v9;
          }

          while (v10[4]);
          std::string::operator=(&v210, (v10 + 5));
          if ((SHIBYTE(v210.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v11 = SHIBYTE(v210.__r_.__value_.__r.__words[2]);
            if (v210.__r_.__value_.__l.__size_ != 3)
            {
              goto LABEL_26;
            }

            v12 = v210.__r_.__value_.__r.__words[0];
          }

          else
          {
            v11 = SHIBYTE(v210.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) != 3)
            {
              goto LABEL_26;
            }

            v12 = &v210;
          }

          data_low = LOWORD(v12->__r_.__value_.__l.__data_);
          v14 = v12->__r_.__value_.__s.__data_[2];
          if (data_low != 20053 || v14 != 75)
          {
LABEL_26:
            v16 = *(a1 + 32);
            if (v16)
            {
              v189 = v11;
              if ((v11 & 0x80000000) == 0)
              {
                size = v11;
              }

              else
              {
                size = v210.__r_.__value_.__l.__size_;
              }

              if ((v11 & 0x80000000) == 0)
              {
                v18 = &v210;
              }

              else
              {
                v18 = v210.__r_.__value_.__r.__words[0];
              }

              do
              {
                v19 = *(v16 + 55);
                if (v19 >= 0)
                {
                  v20 = *(v16 + 55);
                }

                else
                {
                  v20 = v16[5];
                }

                if (v19 >= 0)
                {
                  v21 = (v16 + 4);
                }

                else
                {
                  v21 = v16[4];
                }

                if (v20 >= size)
                {
                  v22 = size;
                }

                else
                {
                  v22 = v20;
                }

                v23 = memcmp(v18, v21, v22);
                v24 = size < v20;
                if (v23)
                {
                  v24 = v23 < 0;
                }

                if (!v24)
                {
                  v25 = memcmp(v21, v18, v22);
                  v26 = v20 < size;
                  if (v25)
                  {
                    v26 = v25 < 0;
                  }

                  if (!v26)
                  {
                    goto LABEL_81;
                  }

                  ++v16;
                }

                v16 = *v16;
              }

              while (v16);
              LOBYTE(v11) = v189;
            }

            goto LABEL_51;
          }

LABEL_81:
          MEMORY[0] = 0;
          if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v210.__r_.__value_.__l.__data_);
          }

          ++v7;
          if (v196 + 1 >= (2 * *(a1 + 104)))
          {
            goto LABEL_83;
          }
        }

        LOBYTE(v11) = 0;
LABEL_51:
        v27 = v201;
        if (v201 >= v202)
        {
          v29 = 0xCCCCCCCCCCCCCCCDLL * ((v201 - v200) >> 3) + 1;
          if (v29 > 0x666666666666666)
          {
            sub_1D9D9AF54();
          }

          if (0x999999999999999ALL * ((v202 - v200) >> 3) > v29)
          {
            v29 = 0x999999999999999ALL * ((v202 - v200) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v202 - v200) >> 3) >= 0x333333333333333)
          {
            v30 = 0x666666666666666;
          }

          else
          {
            v30 = v29;
          }

          cf = &v200;
          if (v30)
          {
            if (v30 <= 0x666666666666666)
            {
              operator new();
            }

            sub_1D9D10E9C();
          }

          v32 = (8 * ((v201 - v200) >> 3));
          __p[0] = 0;
          __p[1] = v32;
          v207 = v32;
          *v32 = 0;
          *(v32 + 2) = 0;
          *(v32 + 3) = v8;
          if ((v11 & 0x80) != 0)
          {
            sub_1D9D12B94(v32 + 16, v210.__r_.__value_.__l.__data_, v210.__r_.__value_.__l.__size_);
            v32 = __p[1];
            v33 = v207;
          }

          else
          {
            *(v32 + 2) = v210;
            v33 = v32;
          }

          v35 = v200;
          v34 = v201;
          v36 = v32 - (v201 - v200);
          v31 = v33 + 5;
          *&v207 = v33 + 5;
          if (v201 != v200)
          {
            v37 = 0;
            do
            {
              v39 = &v36[v37 * 8];
              v40 = &v35[v37];
              *v39 = v35[v37];
              *(v39 + 2) = v35[v37 + 1];
              *(v39 + 3) = HIDWORD(v35[v37 + 1]);
              if (SHIBYTE(v35[v37 + 4]) < 0)
              {
                sub_1D9D12B94(v39 + 16, v40[2], v40[3]);
              }

              else
              {
                v38 = *(v40 + 1);
                *(v39 + 4) = v40[4];
                *(v39 + 1) = v38;
              }

              v37 += 5;
            }

            while (v40 + 5 != v34);
            do
            {
              if (*(v35 + 39) < 0)
              {
                operator delete(v35[2]);
              }

              v35 += 5;
            }

            while (v35 != v34);
            v35 = v200;
            v31 = v207;
          }

          v200 = v36;
          v201 = v31;
          __p[1] = v35;
          *&v207 = v35;
          v202 = *(&v207 + 1);
          if (v35)
          {
            operator delete(v35);
          }
        }

        else
        {
          *v201 = 0;
          v27[2] = 0;
          v27[3] = v8;
          if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_1D9D12B94(v27 + 16, v210.__r_.__value_.__l.__data_, v210.__r_.__value_.__l.__size_);
          }

          else
          {
            v28 = v210.__r_.__value_.__r.__words[2];
            *(v27 + 1) = *&v210.__r_.__value_.__l.__data_;
            *(v27 + 4) = v28;
          }

          v31 = v27 + 10;
        }

        v201 = v31;
        goto LABEL_81;
      }

LABEL_83:
      v41 = *(a1 + 56);
      v190 = *(a1 + 64);
      if (v190 != v41)
      {
        while (*(v41 + 40) != v191)
        {
LABEL_85:
          v41 += 48;
          if (v41 == v190)
          {
            goto LABEL_141;
          }
        }

        v43 = v200;
        v42 = v201;
        v197 = v201;
        while (2)
        {
          if (v43 == v42)
          {
            goto LABEL_85;
          }

          v45 = *(v41 + 8);
          if (*(v41 + 16) != v45)
          {
            operator new();
          }

          if (MEMORY[0xFFFFFFFFFFFFFFF8] != *v43)
          {
            v46 = *(a1 + 136);
            *(a1 + 136) = v46 + 1;
            __p[0] = *v41;
            v207 = 0uLL;
            __p[1] = 0;
            sub_1D9DBFEFC(&__p[1], *(v41 + 8), *(v41 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v41 + 16) - *(v41 + 8)) >> 3));
            cf = CFRetain(*(v41 + 32));
            v209 = v46;
            v47 = v207;
            if (v207 >= *(&v207 + 1))
            {
              *&v207 = sub_1D9DC04D8(&__p[1], v43);
              v49 = cf;
              if (!cf)
              {
                goto LABEL_101;
              }

              goto LABEL_100;
            }

            *v207 = *v43;
            *(v47 + 8) = *(v43 + 2);
            *(v47 + 12) = *(v43 + 3);
            if ((v43[39] & 0x80000000) == 0)
            {
              v48 = *(v43 + 1);
              *(v47 + 32) = *(v43 + 4);
              *(v47 + 16) = v48;
              *&v207 = v47 + 40;
              v49 = cf;
              if (!cf)
              {
                goto LABEL_101;
              }

LABEL_100:
              CFRelease(v49);
              cf = 0;
              goto LABEL_101;
            }

            sub_1D9D12B94((v47 + 16), *(v43 + 2), *(v43 + 3));
            *&v207 = v47 + 40;
            v49 = cf;
            if (cf)
            {
              goto LABEL_100;
            }

LABEL_101:
            cf = CFRetain(v194);
            v50 = logf(*(v43 + 3));
            __p[0] = COERCE_UNSIGNED_INT(*__p + v50);
            if ((sub_1D9D9A858(a1, __p, v51, v52) & 1) == 0)
            {
              v53 = *(a1 + 88);
              if (v53 >= *(a1 + 96))
              {
                v54 = sub_1D9D9B2CC((a1 + 80), __p);
              }

              else
              {
                *v53 = __p[0];
                *(v53 + 8) = 0;
                *(v53 + 16) = 0;
                *(v53 + 24) = 0;
                sub_1D9DBFEFC(v53 + 8, __p[1], v207, 0xCCCCCCCCCCCCCCCDLL * ((v207 - __p[1]) >> 3));
                *(v53 + 32) = CFRetain(cf);
                *(v53 + 40) = v209;
                v54 = v53 + 48;
                *(a1 + 88) = v53 + 48;
              }

              *(a1 + 88) = v54;
            }

            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v55 = __p[1];
            if (__p[1])
            {
              v56 = v207;
              v44 = __p[1];
              if (v207 != __p[1])
              {
                do
                {
                  if (*(v56 - 1) < 0)
                  {
                    operator delete(*(v56 - 3));
                  }

                  v56 -= 5;
                }

                while (v56 != v55);
                v44 = __p[1];
              }

              *&v207 = v55;
              operator delete(v44);
            }
          }

          v43 += 40;
          v42 = v197;
          continue;
        }
      }

      v58 = v200;
      v57 = v201;
      if (v200 != v201)
      {
        break;
      }

      if (v200)
      {
        goto LABEL_118;
      }

LABEL_3:
      v4 = v188 + 4;
      if (v188 + 4 == v187)
      {
        goto LABEL_144;
      }
    }

    do
    {
      v61 = *(a1 + 136);
      *(a1 + 136) = v61 + 1;
      *__p = 0u;
      v207 = 0u;
      cf = 0;
      v209 = v61;
      *&v207 = sub_1D9DC04D8(&__p[1], v58);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      cf = CFRetain(v194);
      v62 = logf(v58[3]);
      __p[0] = COERCE_UNSIGNED_INT(*__p + v62);
      if ((sub_1D9D9A858(a1, __p, v63, v64) & 1) == 0)
      {
        v65 = *(a1 + 88);
        if (v65 >= *(a1 + 96))
        {
          v66 = sub_1D9D9B2CC((a1 + 80), __p);
        }

        else
        {
          *v65 = __p[0];
          *(v65 + 8) = 0;
          *(v65 + 16) = 0;
          *(v65 + 24) = 0;
          sub_1D9DBFEFC(v65 + 8, __p[1], v207, 0xCCCCCCCCCCCCCCCDLL * ((v207 - __p[1]) >> 3));
          *(v65 + 32) = CFRetain(cf);
          *(v65 + 40) = v209;
          v66 = v65 + 48;
          *(a1 + 88) = v65 + 48;
        }

        *(a1 + 88) = v66;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v67 = __p[1];
      if (__p[1])
      {
        v68 = v207;
        v60 = __p[1];
        if (v207 != __p[1])
        {
          do
          {
            if (*(v68 - 1) < 0)
            {
              operator delete(*(v68 - 3));
            }

            v68 -= 5;
          }

          while (v68 != v67);
          v60 = __p[1];
        }

        *&v207 = v67;
        operator delete(v60);
      }

      v58 += 10;
    }

    while (v58 != v57);
LABEL_141:
    v58 = v200;
    if (!v200)
    {
      goto LABEL_3;
    }

LABEL_118:
    v59 = v201;
    if (v201 == v58)
    {
      v201 = v58;
      operator delete(v58);
    }

    else
    {
      do
      {
        if (*(v59 - 1) < 0)
        {
          operator delete(*(v59 - 3));
        }

        v59 -= 10;
      }

      while (v59 != v58);
      v201 = v58;
      operator delete(v200);
    }

    goto LABEL_3;
  }

LABEL_144:
  v69 = *(a1 + 80);
  v192 = (a1 + 80);
  v70 = *(a1 + 88);
  if (v69 != v70)
  {
    v71 = -*(a1 + 112);
    v72 = *(a1 + 80);
    do
    {
      v73 = exp2(*v72 * 1.44269504);
      v74 = pow((0xCCCCCCCCCCCCCCCDLL * ((*(v72 + 16) - *(v72 + 8)) >> 3)), v71);
      v75 = pow(v73, v74);
      *(v72 + 4) = v75;
      v72 += 48;
    }

    while (v72 != v70);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v70 - v69) >> 4) >= *(a1 + 104))
  {
    v76 = *(a1 + 104);
  }

  else
  {
    v76 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v69) >> 4);
  }

  v198 = 48 * v76;
  if (v76)
  {
    v77 = (v198 + v69);
    if (v76 >= 2)
    {
      v78 = (v76 - 2) >> 1;
      v79 = v78 + 1;
      v80 = v69 + 48 * v78;
      do
      {
        sub_1D9D9B578(v69, v76, v80);
        v80 -= 48;
        --v79;
      }

      while (v79);
    }

    if (v77 != v70)
    {
      v121 = v198 + v69;
      do
      {
        v123 = *(v121 + 4);
        if (v123 > *(v69 + 4))
        {
          LODWORD(__p[0]) = *v121;
          *(__p + 1) = v123;
          v207 = 0uLL;
          __p[1] = 0;
          sub_1D9DBFEFC(&__p[1], *(v121 + 8), *(v121 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v121 + 16) - *(v121 + 8)) >> 3));
          v124 = CFRetain(*(v121 + 32));
          v125 = *(v121 + 40);
          cf = v124;
          v209 = v125;
          if (v121 != v69)
          {
            sub_1D9DC0160((v121 + 8), *(v69 + 8), *(v69 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v69 + 16) - *(v69 + 8)) >> 3));
          }

          v126 = *(v121 + 32);
          if (v126)
          {
            CFRelease(v126);
            *(v121 + 32) = 0;
          }

          *(v121 + 32) = CFRetain(*(v69 + 32));
          *v121 = *v69;
          *(v121 + 40) = *(v69 + 40);
          if (v69 != __p)
          {
            sub_1D9DC0160((v69 + 8), __p[1], v207, 0xCCCCCCCCCCCCCCCDLL * ((v207 - __p[1]) >> 3));
          }

          v127 = *(v69 + 32);
          if (v127)
          {
            CFRelease(v127);
            *(v69 + 32) = 0;
          }

          *(v69 + 32) = CFRetain(cf);
          *v69 = __p[0];
          v128 = cf;
          *(v69 + 40) = v209;
          if (v128)
          {
            CFRelease(v128);
            cf = 0;
          }

          v129 = __p[1];
          if (__p[1])
          {
            v130 = v207;
            v122 = __p[1];
            if (v207 != __p[1])
            {
              do
              {
                if (*(v130 - 1) < 0)
                {
                  operator delete(*(v130 - 3));
                }

                v130 -= 5;
              }

              while (v130 != v129);
              v122 = __p[1];
            }

            *&v207 = v129;
            operator delete(v122);
          }

          sub_1D9D9B578(v69, v76, v69);
        }

        v121 += 48;
      }

      while (v121 != v70);
    }

    if (v76 >= 2)
    {
      do
      {
        v200 = *v69;
        v202 = 0;
        v203 = 0;
        v201 = 0;
        sub_1D9DBFEFC(&v201, *(v69 + 8), *(v69 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v69 + 16) - *(v69 + 8)) >> 3));
        v83 = CFRetain(*(v69 + 32));
        v84 = 0;
        v85 = *(v69 + 40);
        v204 = v83;
        v205 = v85;
        v86 = v69;
        do
        {
          v87 = v86 + 48 * v84 + 48;
          v88 = 2 * v84;
          v84 = (2 * v84) | 1;
          v89 = v88 + 2;
          if (v88 + 2 < v76)
          {
            v90 = *(v87 + 4);
            v91 = *(v87 + 52);
            v92 = v90 <= v91 ? 0 : 48;
            v87 += v92;
            if (v90 > v91)
            {
              v84 = v89;
            }
          }

          if (v86 != v87)
          {
            sub_1D9DC0160((v86 + 8), *(v87 + 8), *(v87 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v87 + 16) - *(v87 + 8)) >> 3));
          }

          v93 = *(v86 + 32);
          if (v93)
          {
            CFRelease(v93);
            *(v86 + 32) = 0;
          }

          *(v86 + 32) = CFRetain(*(v87 + 32));
          *v86 = *v87;
          *(v86 + 40) = *(v87 + 40);
          v86 = v87;
        }

        while (v84 <= ((v76 - 2) >> 1));
        v94 = v77 - 6;
        if (v87 == v77 - 6)
        {
          if (v87 != &v200)
          {
            sub_1D9DC0160((v87 + 8), v201, v202, 0xCCCCCCCCCCCCCCCDLL * ((v202 - v201) >> 3));
          }

          v110 = *(v87 + 32);
          if (v110)
          {
            CFRelease(v110);
            *(v87 + 32) = 0;
          }

          *(v87 + 32) = CFRetain(v204);
          *v87 = v200;
          *(v87 + 40) = v205;
        }

        else
        {
          sub_1D9DC0160((v87 + 8), *(v77 - 5), *(v77 - 4), 0xCCCCCCCCCCCCCCCDLL * ((*(v77 - 4) - *(v77 - 5)) >> 3));
          v95 = *(v87 + 32);
          if (v95)
          {
            CFRelease(v95);
            *(v87 + 32) = 0;
          }

          *(v87 + 32) = CFRetain(*(v77 - 2));
          *v87 = *(v77 - 6);
          *(v87 + 40) = *(v77 - 1);
          if (v94 != &v200)
          {
            sub_1D9DC0160(v77 - 5, v201, v202, 0xCCCCCCCCCCCCCCCDLL * ((v202 - v201) >> 3));
          }

          v96 = *(v77 - 2);
          if (v96)
          {
            CFRelease(v96);
            *(v77 - 2) = 0;
          }

          *(v77 - 2) = CFRetain(v204);
          *(v77 - 6) = v200;
          *(v77 - 1) = v205;
          v97 = v87 - v69 + 48;
          if (v97 >= 49)
          {
            v98 = (-2 - 0x5555555555555555 * (v97 >> 4)) >> 1;
            v99 = v69 + 48 * v98;
            v100 = *(v87 + 4);
            if (*(v99 + 4) > v100)
            {
              LODWORD(__p[0]) = *v87;
              *(__p + 1) = v100;
              v207 = 0uLL;
              __p[1] = 0;
              sub_1D9DBFEFC(&__p[1], *(v87 + 8), *(v87 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v87 + 16) - *(v87 + 8)) >> 3));
              v101 = CFRetain(*(v87 + 32));
              v102 = *(v87 + 40);
              cf = v101;
              v209 = v102;
              do
              {
                v103 = v99;
                if (v87 != v99)
                {
                  sub_1D9DC0160((v87 + 8), *(v99 + 8), *(v99 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v99 + 16) - *(v99 + 8)) >> 3));
                }

                v104 = *(v87 + 32);
                if (v104)
                {
                  CFRelease(v104);
                  *(v87 + 32) = 0;
                }

                *(v87 + 32) = CFRetain(*(v99 + 32));
                *v87 = *v99;
                *(v87 + 40) = *(v99 + 40);
                if (!v98)
                {
                  break;
                }

                v98 = (v98 - 1) >> 1;
                v99 = v69 + 48 * v98;
                v87 = v103;
              }

              while (*(v99 + 4) > *(__p + 1));
              if (v103 != __p)
              {
                sub_1D9DC0160((v103 + 8), __p[1], v207, 0xCCCCCCCCCCCCCCCDLL * ((v207 - __p[1]) >> 3));
              }

              v105 = *(v103 + 32);
              if (v105)
              {
                CFRelease(v105);
                *(v103 + 32) = 0;
              }

              *(v103 + 32) = CFRetain(cf);
              *v103 = __p[0];
              v106 = cf;
              *(v103 + 40) = v209;
              if (v106)
              {
                CFRelease(v106);
                cf = 0;
              }

              v107 = __p[1];
              if (__p[1])
              {
                v108 = v207;
                if (v207 == __p[1])
                {
                  *&v207 = __p[1];
                  operator delete(__p[1]);
                  v109 = v204;
                  if (!v204)
                  {
                    goto LABEL_208;
                  }
                }

                else
                {
                  do
                  {
                    if (*(v108 - 1) < 0)
                    {
                      operator delete(*(v108 - 3));
                    }

                    v108 -= 5;
                  }

                  while (v108 != v107);
                  *&v207 = v107;
                  operator delete(__p[1]);
                  v109 = v204;
                  if (!v204)
                  {
                    goto LABEL_208;
                  }
                }

LABEL_207:
                CFRelease(v109);
                v204 = 0;
                goto LABEL_208;
              }
            }
          }
        }

        v109 = v204;
        if (v204)
        {
          goto LABEL_207;
        }

LABEL_208:
        v111 = v201;
        if (v201)
        {
          v112 = v202;
          v81 = v201;
          if (v202 != v201)
          {
            do
            {
              if (*(v112 - 1) < 0)
              {
                operator delete(*(v112 - 24));
              }

              v112 -= 40;
            }

            while (v112 != v111);
            v81 = v201;
          }

          v202 = v111;
          operator delete(v81);
        }

        v77 = v94;
      }

      while (v76-- > 2);
    }
  }

  v113 = a1;
  v115 = *(a1 + 80);
  v114 = *(a1 + 88);
  if (v198 + v115 == v114)
  {
    v116 = *(a1 + 88);
    v117 = a3;
    v118 = a1 + 56;
    v119 = *(a1 + 56);
    if (!v119)
    {
      goto LABEL_270;
    }

    goto LABEL_255;
  }

  v120 = *(a1 + 88);
  v117 = a3;
  v116 = v115 + v198;
  while (v114 != v116)
  {
    v132 = *(v114 - 16);
    if (v132)
    {
      CFRelease(v132);
      *(v114 - 16) = 0;
    }

    v133 = *(v114 - 40);
    if (v133)
    {
      v134 = *(v114 - 32);
      v131 = *(v114 - 40);
      if (v134 != v133)
      {
        do
        {
          if (*(v134 - 1) < 0)
          {
            operator delete(*(v134 - 24));
          }

          v134 -= 40;
        }

        while (v134 != v133);
        v131 = *(v114 - 40);
      }

      *(v114 - 32) = v133;
      operator delete(v131);
    }

    v114 -= 48;
  }

  *(a1 + 88) = v116;
  v118 = a1 + 56;
  v119 = *(a1 + 56);
  if (v119)
  {
LABEL_255:
    v135 = *(a1 + 64);
    v136 = v119;
    if (v135 != v119)
    {
      do
      {
        v138 = *(v135 - 2);
        if (v138)
        {
          CFRelease(v138);
          *(v135 - 2) = 0;
        }

        v139 = *(v135 - 5);
        if (v139)
        {
          v140 = *(v135 - 4);
          v137 = *(v135 - 5);
          if (v140 != v139)
          {
            do
            {
              if (*(v140 - 1) < 0)
              {
                operator delete(*(v140 - 24));
              }

              v140 -= 40;
            }

            while (v140 != v139);
            v137 = *(v135 - 5);
          }

          *(v135 - 4) = v139;
          operator delete(v137);
        }

        v135 -= 48;
      }

      while (v135 != v119);
      v136 = *v118;
    }

    *(a1 + 64) = v119;
    operator delete(v136);
    *v118 = 0;
    *(v118 + 8) = 0;
    *(v118 + 16) = 0;
    v116 = *(a1 + 88);
  }

LABEL_270:
  v141 = *(a1 + 80);
  *(a1 + 56) = v141;
  *(a1 + 64) = v116;
  *(a1 + 72) = *(a1 + 96);
  v192[1] = 0;
  v192[2] = 0;
  *v192 = 0;
  v117[1] = 0;
  v117[2] = 0;
  *v117 = 0;
  if (v141 != v116)
  {
    v199 = v116;
    do
    {
      v143 = *(v141 + 16);
      v144 = *(v143 - 40);
      if (v144 != v113[16])
      {
        v148 = *(v141 + 32);
        v149 = *(v141 + 40);
        memset(&v210, 0, sizeof(v210));
        if (v143 != *(v141 + 8))
        {
          operator new();
        }

        v151 = v117[1];
        v150 = v117[2];
        if (v151 >= v150)
        {
          v157 = 0xAAAAAAAAAAAAAAABLL * ((v151 - *v117) >> 4);
          v158 = v157 + 1;
          if (v157 + 1 > 0x555555555555555)
          {
            sub_1D9D9AF54();
          }

          v159 = 0xAAAAAAAAAAAAAAABLL * ((v150 - *v117) >> 4);
          if (2 * v159 > v158)
          {
            v158 = 2 * v159;
          }

          if (v159 >= 0x2AAAAAAAAAAAAAALL)
          {
            v160 = 0x555555555555555;
          }

          else
          {
            v160 = v158;
          }

          cf = v117;
          if (v160)
          {
            if (v160 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1D9D10E9C();
          }

          __p[0] = 0;
          __p[1] = (48 * v157);
          v207 = 48 * v157;
          sub_1D9D9AE44((48 * v157), v144, v148, v149, &v210);
          v152 = (v207 + 48);
          *&v207 = v207 + 48;
          v175 = *v117;
          v176 = v117[1];
          v200 = v117;
          v201 = &v211;
          v202 = &v212;
          LOBYTE(v203) = 0;
          v177 = __p[1] + v175 - v176;
          v211 = v177;
          v212 = v177;
          if (v175 != v176)
          {
            v178 = __p[1] + v175 - v176;
            v179 = v175;
            do
            {
              *v178 = *v179;
              v180 = CFRetain(*(v179 + 1));
              v181 = *(v179 + 2);
              v178[3] = 0;
              v178[1] = v180;
              v178[2] = v181;
              v178[4] = 0;
              v178[5] = 0;
              v183 = *(v179 + 3);
              v182 = *(v179 + 4);
              if (v182 != v183)
              {
                if (((v182 - v183) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_1D9D84AB0();
              }

              v179 += 48;
              v178 = v212 + 48;
              v212 += 48;
            }

            while (v179 != v176);
            LOBYTE(v203) = 1;
            v117 = a3;
            v116 = v199;
            do
            {
              v184 = *(v175 + 1);
              if (v184)
              {
                CFRelease(v184);
                *(v175 + 1) = 0;
              }

              v185 = *(v175 + 3);
              if (v185)
              {
                *(v175 + 4) = v185;
                operator delete(v185);
              }

              v175 += 48;
            }

            while (v175 != v176);
            v175 = *a3;
          }

          *v117 = v177;
          v117[1] = v152;
          v117[2] = *(&v207 + 1);
          v113 = a1;
          if (v175)
          {
            operator delete(v175);
          }
        }

        else
        {
          sub_1D9D9AE44(v117[1], v144, v148, v149, &v210);
          v113 = a1;
          v152 = v151 + 48;
        }

        v117[1] = v152;
        if (v210.__r_.__value_.__r.__words[0])
        {
          operator delete(v210.__r_.__value_.__l.__data_);
        }

        goto LABEL_275;
      }

      v146 = v113[11];
      v145 = v113[12];
      if (v146 >= v145)
      {
        v153 = 0xAAAAAAAAAAAAAAABLL * ((v146 - *v192) >> 4);
        v154 = v153 + 1;
        if (v153 + 1 > 0x555555555555555)
        {
          sub_1D9D9AF54();
        }

        v155 = 0xAAAAAAAAAAAAAAABLL * ((v145 - *v192) >> 4);
        if (2 * v155 > v154)
        {
          v154 = 2 * v155;
        }

        if (v155 >= 0x2AAAAAAAAAAAAAALL)
        {
          v156 = 0x555555555555555;
        }

        else
        {
          v156 = v154;
        }

        cf = v192;
        if (v156)
        {
          if (v156 <= 0x555555555555555)
          {
            operator new();
          }

          sub_1D9D10E9C();
        }

        v161 = 48 * v153;
        __p[0] = 0;
        __p[1] = v161;
        v207 = v161;
        *v161 = *v141;
        *(v161 + 8) = 0;
        *(v161 + 16) = 0;
        *(v161 + 24) = 0;
        sub_1D9DBFEFC(v161 + 8, *(v141 + 8), *(v141 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v141 + 16) - *(v141 + 8)) >> 3));
        v162 = CFRetain(*(v141 + 32));
        v142 = v113[10];
        v163 = v113[11];
        v164 = v207;
        v165 = __p[1] - (v163 - v142);
        *(v161 + 32) = v162;
        *(v161 + 40) = *(v141 + 40);
        v147 = (v164 + 48);
        *&v207 = v164 + 48;
        if (v163 == v142)
        {
          v117 = a3;
          v113 = a1;
          v116 = v199;
          *(a1 + 80) = v165;
          *(a1 + 88) = v147;
          *(a1 + 96) = *(&v207 + 1);
          if (!v142)
          {
            goto LABEL_274;
          }
        }

        else
        {
          v166 = 0;
          do
          {
            v167 = &v142[v166];
            v168 = &v165[v166];
            *v168 = *&v142[v166];
            *(v168 + 2) = 0;
            *(v168 + 3) = 0;
            *(v168 + 1) = 0;
            sub_1D9DBFEFC(&v165[v166 + 8], *&v142[v166 + 8], *&v142[v166 + 16], 0xCCCCCCCCCCCCCCCDLL * ((*&v142[v166 + 16] - *&v142[v166 + 8]) >> 3));
            v169 = CFRetain(*&v142[v166 + 32]);
            v170 = &v165[v166];
            *(v170 + 4) = v169;
            *(v170 + 5) = *&v142[v166 + 40];
            v166 += 48;
          }

          while (v167 + 48 != v163);
          v117 = a3;
          v113 = a1;
          do
          {
            v172 = *(v142 + 4);
            if (v172)
            {
              CFRelease(v172);
              *(v142 + 4) = 0;
            }

            v173 = *(v142 + 1);
            if (v173)
            {
              v174 = *(v142 + 2);
              v171 = *(v142 + 1);
              if (v174 != v173)
              {
                do
                {
                  if (*(v174 - 1) < 0)
                  {
                    operator delete(*(v174 - 24));
                  }

                  v174 -= 40;
                }

                while (v174 != v173);
                v171 = *(v142 + 1);
              }

              *(v142 + 2) = v173;
              operator delete(v171);
            }

            v142 += 48;
          }

          while (v142 != v163);
          v142 = *v192;
          *(a1 + 80) = v165;
          *(a1 + 88) = v147;
          *(a1 + 96) = *(&v207 + 1);
          v116 = v199;
          if (!v142)
          {
            goto LABEL_274;
          }
        }

        operator delete(v142);
      }

      else
      {
        *v146 = *v141;
        v146[1] = 0;
        v146[2] = 0;
        v146[3] = 0;
        sub_1D9DBFEFC((v146 + 1), *(v141 + 8), *(v141 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v141 + 16) - *(v141 + 8)) >> 3));
        v146[4] = CFRetain(*(v141 + 32));
        v146[5] = *(v141 + 40);
        v147 = v146 + 6;
        v113[11] = v147;
      }

LABEL_274:
      v113[11] = v147;
LABEL_275:
      v141 += 48;
    }

    while (v141 != v116);
  }
}

void sub_1D9D9A498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  sub_1D9DBFC20(&a28);
  sub_1D9DBFC94(&a21);
  _Unwind_Resume(a1);
}

void sub_1D9D9A4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (*(v27 - 160))
  {
    operator delete(*(v27 - 160));
  }

  sub_1D9D84C34(a9);
  _Unwind_Resume(a1);
}

void sub_1D9D9A73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1D9DBFC94(va);
  _Unwind_Resume(a1);
}

void sub_1D9D9A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (v28)
  {
    v32 = -v28;
    v33 = v27 + 40 * v29 + v28 - 24;
    do
    {
      if (*(v33 + 23) < 0)
      {
        operator delete(*v33);
      }

      v33 -= 40;
      v32 += 40;
    }

    while (v32);
  }

  sub_1D9D9B264(&a27);
  if (*(v30 - 137) < 0)
  {
    v31 = *(v30 - 160);
    JUMPOUT(0x1D9D9A7E8);
  }

  JUMPOUT(0x1D9D9A7ECLL);
}

void sub_1D9D9A7D8()
{
  if (v0)
  {
    JUMPOUT(0x1D9D9A7E8);
  }

  JUMPOUT(0x1D9D9A7ECLL);
}

uint64_t sub_1D9D9A858(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(*(a1 + 48), a2, a3, a4))
  {
    v6 = MEMORY[0x1E696AEC0];
    sub_1D9DBFD1C(a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      objc_msgSend_stringWithUTF8String_(v6, v7, &__p, v8);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v6, v7, __p.__r_.__value_.__l.__data_, v8);
    }
    v12 = ;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v13 = objc_msgSend_length(v12, v9, v10, v11);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = *(a1 + 48);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v24, v29, 16);
    if (v17)
    {
      v18 = *v25;
      while (2)
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v14);
          }

          if (objc_msgSend_rangeOfFirstMatchInString_options_range_(*(*(&v24 + 1) + 8 * v19), v16, v12, 0, 0, v13, v24) != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = 1;
            goto LABEL_17;
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v24, v29, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v20 = 0;
LABEL_17:

    v21 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v20 = 0;
    v23 = *MEMORY[0x1E69E9840];
  }

  return v20;
}

void sub_1D9D9AA4C(void *a1)
{
  v2 = a1[7];
  for (i = a1[8]; i != v2; i -= 48)
  {
    v5 = *(i - 16);
    if (v5)
    {
      CFRelease(v5);
      *(i - 16) = 0;
    }

    v6 = *(i - 40);
    if (v6)
    {
      v7 = *(i - 32);
      v4 = *(i - 40);
      if (v7 != v6)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 40;
        }

        while (v7 != v6);
        v4 = *(i - 40);
      }

      *(i - 32) = v6;
      operator delete(v4);
    }
  }

  a1[8] = v2;
  v8 = a1[10];
  for (j = a1[11]; j != v8; j -= 48)
  {
    v11 = *(j - 16);
    if (v11)
    {
      CFRelease(v11);
      *(j - 16) = 0;
    }

    v12 = *(j - 40);
    if (v12)
    {
      v13 = *(j - 32);
      v10 = *(j - 40);
      if (v13 != v12)
      {
        do
        {
          if (*(v13 - 1) < 0)
          {
            operator delete(*(v13 - 24));
          }

          v13 -= 40;
        }

        while (v13 != v12);
        v10 = *(j - 40);
      }

      *(j - 32) = v12;
      operator delete(v10);
    }
  }

  a1[11] = v8;
  a1[17] = 1;
}

const void **sub_1D9D9AB6C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1D9D9ABA0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1D9D9ABD4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1D9D9ABD4(a1, *a2);
    sub_1D9D9ABD4(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_1D9D9AC58(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1D9D9AC58(a1, *a2);
    sub_1D9D9AC58(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

unint64_t sub_1D9D9ACDC@<X0>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D9ADDC(exception);
    goto LABEL_10;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(ValueAtIndex))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D89454(exception);
LABEL_10:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_1D9D89464(ValueAtIndex, a3);
}

uint64_t sub_1D9D9ADEC(uint64_t a1)
{
  sub_1D9D9AC58(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1D9D9AC58(*a1, v2);
  }

  return a1;
}

void sub_1D9D9AE44(void *a1, uint64_t a2, CFTypeRef cf, uint64_t a4, uint64_t a5)
{
  v7 = *a5;
  v8 = *(a5 + 8);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *a1 = a2;
  v9 = CFRetain(cf);
  a1[3] = 0;
  a1[1] = v9;
  a1[2] = a4;
  a1[4] = 0;
  a1[5] = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  if (v7)
  {

    operator delete(v7);
  }
}

void sub_1D9D9AF14(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D9AF6C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 40);
      if (v5)
      {
        CFRelease(v5);
        *(v3 - 40) = 0;
      }

      v6 = *(v3 - 24);
      if (v6)
      {
        *(v3 - 16) = v6;
        operator delete(v6);
      }

      v3 -= 48;
    }
  }

  return a1;
}

uint64_t sub_1D9D9AFE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v4 = *(i - 40);
    if (v4)
    {
      CFRelease(v4);
      *(i - 40) = 0;
    }

    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D9D9B060(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v5 = *(i - 16);
    if (v5)
    {
      CFRelease(v5);
      *(i - 16) = 0;
    }

    v6 = *(i - 40);
    if (v6)
    {
      v7 = *(i - 32);
      v4 = *(i - 40);
      if (v7 != v6)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 40;
        }

        while (v7 != v6);
        v4 = *(i - 40);
      }

      *(i - 32) = v6;
      operator delete(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D9B118(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v9 = v6 + v7;
      v10 = v4 + v7;
      *v9 = *(v4 + v7);
      *(v9 + 8) = *(v4 + v7 + 8);
      *(v9 + 12) = *(v4 + v7 + 12);
      if (*(v4 + v7 + 39) < 0)
      {
        sub_1D9D12B94((v9 + 16), *(v10 + 16), *(v10 + 24));
      }

      else
      {
        v8 = *(v10 + 16);
        *(v9 + 32) = *(v10 + 32);
        *(v9 + 16) = v8;
      }

      v7 += 40;
    }

    while (v10 + 40 != v5);
    do
    {
      if (*(v4 + 39) < 0)
      {
        operator delete(*(v4 + 16));
      }

      v4 += 40;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

void sub_1D9D9B224(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = v1 + v2 - 24;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 -= 40;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D9B264(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D9D9B2CC(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1D9D9AF54();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v24 = (16 * ((a1[1] - *a1) >> 4));
  *v24 = *a2;
  *(48 * v2 + 8) = 0;
  v24[2] = 0;
  v24[3] = 0;
  sub_1D9DBFEFC(48 * v2 + 8, *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  v7 = CFRetain(*(a2 + 32));
  v8 = *(a2 + 40);
  v24[4] = v7;
  v24[5] = v8;
  v9 = 48 * v2 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v24 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = 0;
    do
    {
      v14 = &v10[v13];
      v15 = &v12[v13 * 8];
      *v15 = v10[v13];
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = 0;
      sub_1D9DBFEFC(&v12[v13 * 8 + 8], v10[v13 + 1], v10[v13 + 2], 0xCCCCCCCCCCCCCCCDLL * ((v10[v13 + 2] - v10[v13 + 1]) >> 3));
      v16 = CFRetain(v10[v13 + 4]);
      v17 = &v12[v13 * 8];
      v18 = v10[v13 + 5];
      *(v17 + 4) = v16;
      *(v17 + 5) = v18;
      v13 += 6;
    }

    while (v14 + 6 != v11);
    do
    {
      v20 = v10[4];
      if (v20)
      {
        CFRelease(v20);
        v10[4] = 0;
      }

      v21 = v10[1];
      if (v21)
      {
        v22 = v10[2];
        v19 = v10[1];
        if (v22 != v21)
        {
          do
          {
            if (*(v22 - 1) < 0)
            {
              operator delete(*(v22 - 24));
            }

            v22 -= 40;
          }

          while (v22 != v21);
          v19 = v10[1];
        }

        v10[2] = v21;
        operator delete(v19);
      }

      v10 += 6;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_1D9D9B4FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9DBFC20(v2);
  sub_1D9D9B060(va);
  _Unwind_Resume(a1);
}

void sub_1D9D9B518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D9B060(va);
  _Unwind_Resume(a1);
}

void sub_1D9D9B530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = (v2 + v3 - 48);
    v6 = -v3;
    do
    {
      v5 = sub_1D9DBFC94(v5) - 6;
      v6 += 48;
    }

    while (v6);
  }

  sub_1D9D9B060(va);
  _Unwind_Resume(a1);
}

void sub_1D9D9B578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a3 - a1) >> 4)))
    {
      v8 = (0x5555555555555556 * ((a3 - a1) >> 4)) | 1;
      v9 = a1 + 48 * v8;
      if (0x5555555555555556 * ((a3 - a1) >> 4) + 2 < a2)
      {
        v10 = *(v9 + 4);
        v11 = *(v9 + 52);
        v12 = 48;
        if (v10 <= v11)
        {
          v12 = 0;
        }

        v9 += v12;
        if (v10 > v11)
        {
          v8 = 0x5555555555555556 * ((a3 - a1) >> 4) + 2;
        }
      }

      v13 = *(a3 + 4);
      if (*(v9 + 4) <= v13)
      {
        LODWORD(v28) = *a3;
        *(&v28 + 1) = v13;
        v30 = 0;
        v31 = 0;
        __p = 0;
        sub_1D9DBFEFC(&__p, *(a3 + 8), *(a3 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 16) - *(a3 + 8)) >> 3));
        v14 = CFRetain(*(v4 + 32));
        v15 = *(v4 + 40);
        cf = v14;
        v33 = v15;
        while (1)
        {
          v19 = v9;
          if (v4 != v9)
          {
            sub_1D9DC0160((v4 + 8), *(v9 + 8), *(v9 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v9 + 16) - *(v9 + 8)) >> 3));
          }

          v20 = *(v4 + 32);
          if (v20)
          {
            CFRelease(v20);
            *(v4 + 32) = 0;
          }

          v21 = CFRetain(*(v9 + 32));
          *v4 = *v9;
          v22 = *(v9 + 40);
          *(v4 + 32) = v21;
          *(v4 + 40) = v22;
          if (v6 < v8)
          {
            break;
          }

          v9 = a1 + 48 * ((2 * v8) | 1);
          if (2 * v8 + 2 < a2)
          {
            v16 = *(v9 + 4);
            v17 = *(v9 + 52);
            if (v16 <= v17)
            {
              v18 = 0;
            }

            else
            {
              v18 = 48;
            }

            v9 += v18;
            if (v16 <= v17)
            {
              v8 = (2 * v8) | 1;
            }

            else
            {
              v8 = 2 * v8 + 2;
            }

            v4 = v19;
            if (*(v9 + 4) > *(&v28 + 1))
            {
              break;
            }
          }

          else
          {
            v8 = (2 * v8) | 1;
            v4 = v19;
            if (*(v9 + 4) > *(&v28 + 1))
            {
              break;
            }
          }
        }

        if (v19 != &v28)
        {
          sub_1D9DC0160((v19 + 8), __p, v30, 0xCCCCCCCCCCCCCCCDLL * ((v30 - __p) >> 3));
        }

        v23 = *(v19 + 32);
        if (v23)
        {
          CFRelease(v23);
          *(v19 + 32) = 0;
        }

        *(v19 + 32) = CFRetain(cf);
        *v19 = v28;
        v24 = cf;
        *(v19 + 40) = v33;
        if (v24)
        {
          CFRelease(v24);
          cf = 0;
        }

        v25 = __p;
        if (__p)
        {
          v26 = v30;
          v27 = __p;
          if (v30 != __p)
          {
            do
            {
              if (*(v26 - 1) < 0)
              {
                operator delete(*(v26 - 3));
              }

              v26 -= 5;
            }

            while (v26 != v25);
            v27 = __p;
          }

          v30 = v25;
          operator delete(v27);
        }
      }
    }
  }
}

void sub_1D9D9B828(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      operator new();
    }

    sub_1D9D9AF54();
  }
}

void sub_1D9D9B94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    v13 = (v10 + v11 - 48);
    v14 = -v11;
    do
    {
      v13 = sub_1D9DBFC94(v13) - 6;
      v14 += 48;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  sub_1D9D9B998(&a9);
  _Unwind_Resume(a1);
}

void ***sub_1D9D9B998(void ***a1)
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
          v7 = *(v4 - 2);
          if (v7)
          {
            CFRelease(v7);
            *(v4 - 2) = 0;
          }

          v8 = *(v4 - 5);
          if (v8)
          {
            v9 = *(v4 - 4);
            v6 = *(v4 - 5);
            if (v9 != v8)
            {
              do
              {
                if (*(v9 - 1) < 0)
                {
                  operator delete(*(v9 - 24));
                }

                v9 -= 40;
              }

              while (v9 != v8);
              v6 = *(v4 - 5);
            }

            *(v4 - 4) = v8;
            operator delete(v6);
          }

          v4 -= 48;
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

os_log_t sub_1D9D9BA6C()
{
  result = os_log_create("com.apple.CVNLP", "Default");
  qword_1ECB71C30 = result;
  return result;
}

id sub_1D9D9CCA8(void ***a1, void *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v61 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(**a1, v3, v61, v4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_32;
  }

  v8 = objc_msgSend_objectForKeyedSubscript_(**a1, v6, v61, v7);

  if (!v8)
  {
LABEL_32:
    obj = 0;
    v53 = 0;
    v57 = objc_msgSend_copy(0, v9, v10, v11);
    goto LABEL_33;
  }

  v62 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v8;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v64, v68, 16);
  if (v13)
  {
    v14 = *v65;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v65 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v64 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
        v21 = v18;
        if (v18)
        {
          v22 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"replaceKey", v20);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = objc_msgSend_objectForKeyedSubscript_(v21, v23, @"replaceKey", v24);
          }

          else
          {
            v25 = 0;
          }

          v28 = objc_msgSend_objectForKeyedSubscript_(v21, v26, @"replaceWith", v27);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = objc_msgSend_objectForKeyedSubscript_(v21, v29, @"replaceWith", v30);
          }

          else
          {
            v31 = 0;
          }

          v34 = objc_msgSend_objectForKeyedSubscript_(v21, v32, @"replaceProb", v33);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = objc_msgSend_objectForKeyedSubscript_(v21, v35, @"replaceProb", v36);
          }

          else
          {
            v37 = 0;
          }

          v40 = objc_msgSend_objectForKeyedSubscript_(v21, v38, @"genderOption", v39);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v43 = objc_msgSend_objectForKeyedSubscript_(v21, v41, @"genderOption", v42);
          }

          else
          {
            v43 = 0;
          }

          if (v25 && v31)
          {
            v44 = [CVNLPCaptionRuntimeReplacements alloc];
            objc_msgSend_doubleValue(v37, v45, v46, v47);
            v49 = objc_msgSend_initWithKey_value_prob_genderOption_(v44, v48, v25, v31, v43);
            objc_msgSend_addObject_(v62, v50, v49, v51);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v64, v68, 16);
    }

    while (v13);
  }

  v53 = v62;
  v57 = objc_msgSend_copy(v62, v54, v55, v56);
LABEL_33:
  v58 = v57;

  v59 = *MEMORY[0x1E69E9840];

  return v58;
}

uint64_t sub_1D9D9D270(uint64_t a1)
{
  if (u_isWhitespace(a1))
  {
    return 95;
  }

  result = 57344;
  if ((a1 - 188) >= 3 && (a1 - 48) >= 0xA && (a1 - 1632) >= 0xA && a1 != 8585 && (a1 & 0xFFFFFFF0) != 0x2150)
  {
    if (u_charType(a1) == 20)
    {
      return 57345;
    }

    else if (u_charType(a1) == 21)
    {
      return 57346;
    }

    else
    {
      result = 57347;
      if ((a1 > 0x3F || ((1 << a1) & 0x8C00502200000000) == 0) && ((a1 - 1548) > 0x13 || ((1 << (a1 - 12)) & 0x88001) == 0) && a1 != 1642)
      {
        v3 = u_charType(a1);
        result = 57348;
        if (a1 != 63743 && ((1 << v3) & 0x3FF80000) == 0)
        {
          v4 = 1 << u_charType(a1);
          result = a1;
          if ((v4 & 0x3E) != 0)
          {

            JUMPOUT(0x1DA741D80);
          }
        }
      }
    }
  }

  return result;
}

void sub_1D9D9DAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVNLPDecodingLanguageModel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D9D9DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v27 = v25;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D9E010(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9D9E028(uint64_t a1, void *a2, int a3, void *a4, CFStringRef theString1, _BYTE *a6)
{
  if (CFStringCompare(theString1, *MEMORY[0x1E69AC040], 0) == kCFCompareEqualTo)
  {
    v21 = a4;
    v13 = objc_msgSend_localeIdentifier(v21, v10, v11, v12);
    v17 = objc_msgSend_localeIdentifier(v21, v14, v15, v16);
    isEqualToString = objc_msgSend_isEqualToString_(v13, v18, v17, v19);

    if (isEqualToString)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a6 = 1;
    }
  }
}

void sub_1D9D9E63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, const void *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_1D9D89420(&a29);
  if (*(v36 - 33) < 0)
  {
    operator delete(*(v36 - 56));

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D9E78C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1D9D9F5B4("/", 1, a1, a2, __p);
  if ((v15 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v7)
  {
    if ((v15 & 0x80u) == 0)
    {
      v8 = v15;
    }

    else
    {
      v8 = __p[1];
    }

    cf = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if ((v15 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    cf = 0;
    if ((v15 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  v9 = objc_msgSend_createBundle(*(a1 + 24), v7, v5, v6);
  v11 = objc_msgSend_pathForResource_ofType_(v9, v10, cf, 0);
  v12 = v11;
  if (!v11)
  {
    v11 = &stru_1F554FF38;
  }

  sub_1D9D87968(v11, a3);

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1D9D9E8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  sub_1D9D89420(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D9EB58(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D9EFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v43 - 216), 8);

  _Block_object_dispose((v43 - 176), 8);
  v45 = *(v43 - 128);
  if (v45)
  {
    *(v43 - 120) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1D9D9F090(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1D9D9F0B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_1D9D9F0CC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1D9D9F0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = objc_msgSend_initWithBytes_length_encoding_(v8, v9, a2, a3, 4);
  v14 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v11, v12, v13);
  v17 = objc_msgSend_stringByTrimmingCharactersInSet_(v10, v15, v14, v16);

  if (objc_msgSend_length(v17, v18, v19, v20))
  {
    v53 = 0;
    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    v54 = objc_msgSend__normalizedLMTokenIDForWord_withTokenID_sourceLanguageModel_outScore_(v22, v23, v17, a4, *(a1 + 32), &v53);
    v24 = *(a1 + 40);
    v25 = *(*(*(a1 + 64) + 8) + 24);
    v29 = objc_msgSend_length(v24, v26, v27, v28, v53);
    v31 = objc_msgSend_rangeOfString_options_range_(v24, v30, v17, 0, v25, v29 - *(*(*(a1 + 64) + 8) + 24));
    if (v31 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = *(*(a1 + 72) + 8);
      if (v31 >= *(v35 + 48))
      {
        *(*(*(a1 + 80) + 8) + 24) += *(v35 + 56);
        v36 = *(*(*(a1 + 88) + 8) + 24);
        v37 = v31;
        v38 = v32;
        v39 = objc_msgSend_count(*(a1 + 48), v32, v33, v34);
        v32 = v38;
        v41 = v39;
        v31 = v37;
        if (v36 < v41)
        {
          v42 = objc_msgSend_objectAtIndex_(*(a1 + 48), v38, *(*(*(a1 + 88) + 8) + 24), v40);
          v46 = objc_msgSend_rangeValue(v42, v43, v44, v45);
          v47 = *(*(a1 + 72) + 8);
          *(v47 + 48) = v46;
          *(v47 + 56) = v48;

          ++*(*(*(a1 + 88) + 8) + 24);
          v32 = v38;
          v31 = v37;
        }
      }

      *(*(*(a1 + 64) + 8) + 24) = &v32[v31];
      v49 = *(a1 + 56);
      v50 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v32, *(*(*(a1 + 80) + 8) + 24) + v31, v32);
      objc_msgSend_addObject_(v49, v51, v50, v52);

      sub_1D9D9F374(*(*(a1 + 96) + 8) + 48, &v54);
    }
  }
}

void sub_1D9D9F374(uint64_t a1, _DWORD *a2)
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
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_1D9D84AB0();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
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

uint64_t sub_1D9D9F5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  sub_1D9D100A8(&v24);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = sub_1D9D12280(&v24, v11, v12);
  sub_1D9D12280(v13, a1, a2);
  v14 = *(a4 + 23);
  if (v14 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= 0)
  {
    v16 = *(a4 + 23);
  }

  else
  {
    v16 = *(a4 + 8);
  }

  v17 = sub_1D9D12280(&v24, v15, v16);
  sub_1D9D12280(v17, a1, a2);
  std::stringbuf::str();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v18 = &v21;
    if (v23 >= (v23 - 1))
    {
      v19 = v23 - 1;
    }

    else
    {
      v19 = v23;
    }

    if (v19 < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_18;
    }

LABEL_31:
    sub_1D9D12168();
  }

  v18 = v21;
  if (v22 >= v22 - 1)
  {
    v19 = v22 - 1;
  }

  else
  {
    v19 = v22;
  }

  if (v19 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_31;
  }

LABEL_18:
  if (v19 >= 0x17)
  {
    operator new();
  }

  a5[23] = v19;
  if (v19)
  {
    memmove(a5, v18, v19);
    a5[v19] = 0;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *a5 = 0;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  operator delete(v21);
LABEL_21:
  v24 = *MEMORY[0x1E69E54E8];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v25 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v28);
}

void sub_1D9D9F828(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1D9D28030(&a8, MEMORY[0x1E69E54E8]);
  MEMORY[0x1DA7411E0](va);
  _Unwind_Resume(a1);
}

BOOL sub_1D9D9F86C(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v2, v3, v4);
  objc_msgSend_rangeOfCharacterFromSet_(v1, v6, v5, v7);
  v11 = v10 == objc_msgSend_length(v1, v10, v8, v9);

  return v11;
}

BOOL CVNLPIsWordSeparatorForLexicon_0(void *a1)
{
  v3 = a1;
  if (qword_1EE0005D0 != -1)
  {
    dispatch_once(&qword_1EE0005D0, &unk_1F554F568);
  }

  objc_msgSend_rangeOfCharacterFromSet_(v3, v1, qword_1EE0005D8, v2);
  v7 = v6 == objc_msgSend_length(v3, v6, v4, v5);

  return v7;
}

uint64_t sub_1D9D9F984(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  qword_1EE0005D8 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @" -/", a4);

  return MEMORY[0x1EEE66BB8]();
}

BOOL sub_1D9D9F9CC(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_lowercaseLetterCharacterSet(MEMORY[0x1E696AB08], v2, v3, v4);
  objc_msgSend_rangeOfCharacterFromSet_(v1, v6, v5, v7);
  v11 = v10 == objc_msgSend_length(v1, v10, v8, v9);

  return v11;
}

BOOL sub_1D9D9FA5C(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_uppercaseLetterCharacterSet(MEMORY[0x1E696AB08], v2, v3, v4);
  objc_msgSend_rangeOfCharacterFromSet_(v1, v6, v5, v7);
  v11 = v10 == objc_msgSend_length(v1, v10, v8, v9);

  return v11;
}

BOOL sub_1D9D9FAEC(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v2, v3, v4);
  objc_msgSend_rangeOfCharacterFromSet_(v1, v6, v5, v7);
  v11 = v10 == objc_msgSend_length(v1, v10, v8, v9);

  return v11;
}

BOOL sub_1D9D9FB7C(void *a1)
{
  v3 = a1;
  if (qword_1EE0005E0 != -1)
  {
    dispatch_once(&qword_1EE0005E0, &unk_1F554F588);
  }

  objc_msgSend_rangeOfCharacterFromSet_(v3, v1, qword_1EE0005E8, v2);
  v7 = v6 == objc_msgSend_length(v3, v6, v4, v5);

  return v7;
}

uint64_t sub_1D9D9FC04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  qword_1EE0005E8 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"0123456789", a4);

  return MEMORY[0x1EEE66BB8]();
}

BOOL sub_1D9D9FC4C(void *a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 0;
  for (i = objc_msgSend_length(v1, v4, v5, v6); ; i = objc_msgSend_length(v1, v13, v14, v15))
  {
    v11 = i;
    if (v2 >= i)
    {
      break;
    }

    v12 = objc_msgSend_characterAtIndex_(v1, v8, v2, v9);
    if ((v12 - 48) < 0xA)
    {
      v10 = v3;
    }

    else
    {
      v10 = 2;
      if (v12 != 32 && v12 != 45)
      {
        if ((v12 - 8208) >= 6)
        {
          v16.i16[0] = v12;
          v16.i16[1] = v12 & 0xFFDF;
          v17 = vdup_lane_s16(v16, 0);
          v17.i16[1] = v12 & 0xFFDF;
          if (vmaxv_u16(vcgt_u16(0x158001F001A0017, vadd_s16(v17, 0xFF08FF28FFBFFF40))))
          {
            if (v3 == 4)
            {
              break;
            }

            v10 = 3;
          }

          else if ((v12 - 1024) >= 0x130)
          {
            if ((v12 - 880) >= 0x90)
            {
              v10 = 6;
              if (((v12 + 21504) >> 10) >= 0xBu && (v12 & 0xFFE0) != 0xA960 && (v12 & 0xFF00) != 0x1100 && (v12 - 12592) >= 0x60u)
              {
                if ((v12 - 1632) >= 0xA)
                {
                  v10 = 0;
                }

                else
                {
                  v10 = 7;
                }
              }
            }

            else
            {
              v10 = 5;
            }
          }

          else
          {
            if (v3 == 3)
            {
              break;
            }

            v10 = 4;
          }
        }

        else
        {
          v10 = 2;
        }
      }
    }

    ++v2;
    v3 = v10;
  }

  return v2 < v11;
}

uint64_t sub_1D9D9FE00(uint64_t result, _BYTE *a2, int *a3, int16x4_t a4)
{
  if ((result - 48) >= 0xA)
  {
    v4 = 2;
    if (result != 32 && result != 45)
    {
      if ((result - 8208) >= 6)
      {
        a4.i16[0] = result;
        a4.i16[1] = result & 0xFFDF;
        v5 = vdup_lane_s16(a4, 0);
        v5.i16[1] = result & 0xFFDF;
        if (vmaxv_u16(vcgt_u16(0x158001F001A0017, vadd_s16(v5, 0xFF08FF28FFBFFF40))))
        {
          v4 = 3;
        }

        else if ((result - 1024) >= 0x130)
        {
          if ((result - 880) >= 0x90)
          {
            v4 = 6;
            if (((result + 21504) >> 10) >= 0xBu && (result & 0xFFE0) != 0xA960 && (result & 0xFF00) != 0x1100 && (result - 12592) >= 0x60u)
            {
              if ((result - 1632) >= 0xA)
              {
                v4 = 0;
              }

              else
              {
                v4 = 7;
              }
            }
          }

          else
          {
            v4 = 5;
          }
        }

        else
        {
          v4 = 4;
        }
      }

      else
      {
        v4 = 2;
      }
    }

    if ((*a2 & 1) == 0)
    {
      if ((v6 = *a3, v4 == 4) && v6 == 3 || v4 == 3 && v6 == 4)
      {
        *a2 = 1;
      }
    }
  }

  else
  {
    if ((*a2 & 1) == 0)
    {
      return result;
    }

    v4 = 1;
  }

  *a3 = v4;
  return result;
}

id sub_1D9D9FF48(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], v2, v3, v4);
  v9 = objc_msgSend_length(v1, v6, v7, v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1D9DA0058;
  v13[3] = &unk_1E858E0F8;
  v10 = v5;
  v14 = v10;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v1, v11, 0, v9, 2, v13);

  return v10;
}

void sub_1D9DA0058(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_length(v11, v3, v4, v5) == 1)
  {
    v8 = objc_msgSend_characterAtIndex_(v11, v6, 0, v7);

    if (v8 == 57427)
    {
      objc_msgSend_appendString_(*(a1 + 32), v9, @"<PS>", v10);
      goto LABEL_6;
    }
  }

  else
  {
  }

  objc_msgSend_appendString_(*(a1 + 32), v9, v11, v10);
LABEL_6:
}

id sub_1D9DA0144(void *a1, void *a2)
{
  v3 = a1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1D9DA0350;
  v26 = sub_1D9DA0360;
  v27 = &stru_1F554FF38;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1D9DA0350;
  v20 = sub_1D9DA0360;
  v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v10 = objc_msgSend_length(v3, v7, v8, v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1D9DA0368;
  v14[3] = &unk_1E858E120;
  v14[4] = &v22;
  v14[5] = v15;
  v14[6] = &v16;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v3, v11, 0, v10, 2, v14);
  if (a2)
  {
    *a2 = v17[5];
  }

  v12 = v23[5];
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void sub_1D9DA0304(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DA0350(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9DA0368(void *a1, void *a2)
{
  v47 = a2;
  v5 = objc_msgSend_dataUsingEncoding_(v47, v3, 2617245952, v4);
  v6 = v5;
  v13 = objc_msgSend_bytes(v6, v7, v8, v9);
  v14 = 0;
  v15 = 0;
  v16 = &stru_1F554FF38;
  while (v14 < objc_msgSend_length(v5, v10, v11, v12) >> 2)
  {
    v17 = *(v13 + 4 * v14);
    v48 = v17;
    if (v17 >> 4 == 4064)
    {
      v15 = 1;
      ++v14;
    }

    else
    {
      if (v17 - 917760 < 0xF0)
      {
        v15 = 1;
      }

      else
      {
        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        v20 = objc_msgSend_initWithBytes_length_encoding_(v18, v19, &v48, 4, 2617245952);
        v23 = objc_msgSend_stringByAppendingString_(v16, v21, v20, v22);

        v16 = v23;
      }

      ++v14;
    }
  }

  v24 = *(*(a1[4] + 8) + 40);
  if (v15)
  {
    v25 = objc_msgSend_stringByAppendingString_(v24, v10, v16, v12);
    v26 = *(a1[4] + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    v31 = objc_msgSend_length(v47, v28, v29, v30);
    *(*(a1[5] + 8) + 24) = v31 - objc_msgSend_length(v16, v32, v33, v34);
    v38 = objc_msgSend_length(*(*(a1[4] + 8) + 40), v35, v36, v37);
    v39 = *(*(a1[5] + 8) + 24);
    v40 = *(*(a1[6] + 8) + 40);
    v42 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v41, v38, v39);
    objc_msgSend_addObject_(v40, v43, v42, v44);
  }

  else
  {
    v45 = objc_msgSend_stringByAppendingString_(v24, v10, v47, v12);
    v46 = *(a1[4] + 8);
    v42 = *(v46 + 40);
    *(v46 + 40) = v45;
  }
}

id sub_1D9DA05EC(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v8 = objc_msgSend_characterAtIndex_(v5, v6, a2, v7);
  v18 = v8;
  if ((v8 & 0xFC00) != 0xD800)
  {
    v14 = 1;
    if (a2 >= 1 && (v8 & 0xFC00) == 0xDC00)
    {
      v19 = v8;
      v15 = objc_msgSend_characterAtIndex_(v5, v9, a2 - 1, 1);
      v18 = v15;
      v14 = (v15 & 0xFC00) == 0xD800 ? 2 : 1;
      if ((v15 & 0xFC00) == 0xD800)
      {
        --a2;
      }
    }

    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_16:
    *a3 = a2;
    a3[1] = v14;
    goto LABEL_17;
  }

  if (a2 + 1 < objc_msgSend_length(v5, v9, v10, v11))
  {
    v13 = objc_msgSend_characterAtIndex_(v5, v9, a2 + 1, v12);
    v19 = v13;
    if (v13 >> 10 == 55)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = 1;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_17:
  v16 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], v9, &v18, v14);

  return v16;
}

uint64_t sub_1D9DA0714(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 56);
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL) - 56;
  }

  else
  {
    v3 = 0;
  }

  sub_1D9DA5F10(v3);
  operator delete(*(a1 + 24));
  return a1;
}

uint64_t sub_1D9DA075C(uint64_t a1)
{
  *a1 = &unk_1F554F6F0;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_1D9DA07EC(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 4092732;
  *(a1 + 31) = 3;
  strcpy((a1 + 32), "</s>");
  *(a1 + 55) = 4;
  strcpy((a1 + 56), "<unk>");
  *(a1 + 79) = 5;
  *a1 = &unk_1F554F5B8;
  *(a1 + 88) = a1 + 112;
  operator new();
}

void sub_1D9DA1E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 217) < 0)
  {
    operator delete(*(v52 - 240));
    if ((*(v52 - 153) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v52 - 153) & 0x80000000) == 0)
  {
LABEL_8:
    sub_1D9D54468(&a42);
    v54 = *(a20 + 176);
    *(a20 + 176) = 0;
    if (v54)
    {
      (*(*v54 + 8))(v54);
    }

    sub_1D9DA8428(*a15);
    sub_1D9DA0714(a20 + 80);
    sub_1D9DA075C(a20);
    _Unwind_Resume(a1);
  }

  operator delete(*(v52 - 176));
  goto LABEL_8;
}

void sub_1D9DA1F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 145) < 0)
  {
    operator delete(*(v38 - 168));
    if ((a38 & 0x80000000) == 0)
    {
LABEL_3:
      v39 = *(a20 + 176);
      *(a20 + 176) = 0;
      if (v39)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a38 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a33);
  v40 = *(a20 + 176);
  *(a20 + 176) = 0;
  if (v40)
  {
LABEL_4:
    JUMPOUT(0x1D9DA1F3CLL);
  }

LABEL_7:
  JUMPOUT(0x1D9DA1F60);
}

void sub_1D9DA1FB8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1D9DA20B0);
  }

  JUMPOUT(0x1D9DA1F7CLL);
}

void sub_1D9DA1FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_1D9D54468(&a36);
  v37 = *(a20 + 176);
  *(a20 + 176) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  sub_1D9DA8428(*a15);
  sub_1D9DA0714(a20 + 80);
  sub_1D9DA075C(a20);
  _Unwind_Resume(a1);
}

void sub_1D9DA1FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void **a41)
{
  sub_1D9DA8628((v41 - 240));
  sub_1D9D54C6C(&a25);
  sub_1D9D54C6C(&a41);
  JUMPOUT(0x1D9DA20D4);
}

void sub_1D9DA1FE0(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    operator delete(v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x1D9DA1F7CLL);
}

void sub_1D9DA2010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void **a41)
{
  __cxa_free_exception(v41);
  sub_1D9D54C6C(&a25);
  sub_1D9D54C6C(&a41);
  JUMPOUT(0x1D9DA20D4);
}

void sub_1D9DA2028(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    operator delete(*v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x1D9DA1F7CLL);
}

void sub_1D9DA2048(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    JUMPOUT(0x1D9DA20A8);
  }

  JUMPOUT(0x1D9DA1F7CLL);
}

void sub_1D9DA2058(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a2)
  {
    sub_1D9D3FB90(a1);
  }

  JUMPOUT(0x1D9DA1F7CLL);
}

BOOL sub_1D9DA20F8(uint64_t a1, std::string::value_type *a2, uint64_t a3)
{
  memset(&v10, 0, sizeof(v10));
  if (a3)
  {
    v4 = a3;
    do
    {
      std::string::push_back(&v10, *a2++);
      --v4;
    }

    while (v4);
    v6 = *(a1 + 48);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1D9D12B94(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
      v7 = sub_1D9DA7438(*(v6 - 8), &__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(__p.__r_.__value_.__l.__data_);
      v8 = *(*(a1 + 48) - 8);
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v8 != v7;
      }

LABEL_11:
      operator delete(v10.__r_.__value_.__l.__data_);
      return v8 != v7;
    }
  }

  else
  {
    v6 = *(a1 + 48);
  }

  __p = v10;
  v7 = sub_1D9DA7438(*(v6 - 8), &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v8 = *(*(a1 + 48) - 8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }

  return v8 != v7;
}

void sub_1D9DA21EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1D9DA220C(uint64_t a1, std::string::value_type *a2, uint64_t a3)
{
  memset(&v9, 0, sizeof(v9));
  if (a3)
  {
    v4 = a3;
    do
    {
      std::string::push_back(&v9, *a2++);
      --v4;
    }

    while (v4);
    v6 = *(a1 + 48);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1D9D12B94(&__p, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
      v7 = sub_1D9DA7438(*(v6 - 8), &__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(a1 + 48);
  }

  __p = v9;
  v7 = sub_1D9DA7438(*(v6 - 8), &__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    operator delete(v9.__r_.__value_.__l.__data_);
    if (*(*(a1 + 48) - 8) != v7)
    {
      return (*(v7 + 6) << 32) | 1;
    }

    return 0;
  }

LABEL_11:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(*(a1 + 48) - 8) != v7)
  {
    return (*(v7 + 6) << 32) | 1;
  }

  return 0;
}

void sub_1D9DA232C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D3FB90(a1);
}

void *sub_1D9DA2348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20[19] = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 136) - 8);
  v5 = *(v4 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(*(a1 + 136) - 8);
  do
  {
    while (*(v5 - 32) < a2)
    {
      v5 = *(v5 + 16);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v6 = v5 - 56;
    v5 = *(v5 + 8);
  }

  while (v5);
LABEL_7:
  if (v6 == v4 || *(v6 + 24) > a2)
  {
LABEL_9:
    sub_1D9D100A8(&buf);
    sub_1D9D12280(&buf, "Unknown TokenID: ", 17);
    MEMORY[0x1DA741090](&buf, a2);
    std::stringbuf::str();
    *&buf = *MEMORY[0x1E69E54E8];
    *(&v18[-2].__locale_ + *(buf - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&buf + 1) = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    *(&buf + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](v20);
    if (qword_1ECB71C28 != -1)
    {
      dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
    }

    v7 = qword_1ECB71C30;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v15;
      if ((v16 & 0x80u) != 0)
      {
        v8 = v15[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v8;
      _os_log_error_impl(&dword_1D9D0A000, v7, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v10 = exception;
    v11 = v16;
    v12 = v15;
    if ((v16 & 0x80u) != 0)
    {
      v12 = v15[0];
      v11 = v15[1];
    }

    *&buf = v12;
    *(&buf + 1) = v11;
    *exception = &unk_1F554F760;
    sub_1D9DA75B8((exception + 1), &buf);
    __cxa_throw(v10, &unk_1F554F618, sub_1D9DA26A4);
  }

  v13 = *MEMORY[0x1E69E9840];

  return sub_1D9DA2718(a3, v4, a2);
}

void sub_1D9DA2640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D9DA26A4(uint64_t a1)
{
  *a1 = &unk_1F554F760;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  std::exception::~exception(a1);
}

void *sub_1D9DA2718(void *result, unint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = a2;
  do
  {
    while (*(v3 - 32) < a3)
    {
      v3 = *(v3 + 16);
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v4 = v3 - 56;
    v3 = *(v3 + 8);
  }

  while (v3);
LABEL_7:
  if (v4 == a2 || *(v4 + 24) > a3)
  {
LABEL_14:
    std::logic_error::logic_error(&v8, "bimap<>: invalid key");
    v8.__vftable = (MEMORY[0x1E69E55B8] + 16);
    sub_1D9DA77D4(&v8);
  }

  if (*(v4 + 23) < 0)
  {
    v6 = *v4;
    v7 = *(v4 + 8);

    return sub_1D9D12B94(result, v6, v7);
  }

  else
  {
    v5 = *v4;
    result[2] = *(v4 + 16);
    *result = v5;
  }

  return result;
}

unint64_t sub_1D9DA2810(uint64_t a1, char *__s, uint64_t a3)
{
  v57[20] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 160))
  {
LABEL_53:
    v28 = sub_1D9DA220C(a1 + 80, __s, a3);
    if (v28)
    {
      v46 = HIDWORD(v28);
    }

    else
    {
      if ((*(a1 + 172) & 1) == 0)
      {
        sub_1D9D100A8(&__dst);
        sub_1D9D12280(&__dst, "Unknown Token: ", 15);
        sub_1D9D12280(&__dst, __s, a3);
        std::stringbuf::str();
        *&__dst = *MEMORY[0x1E69E54E8];
        *(&v54[-2].__locale_ + *(__dst - 24)) = *(MEMORY[0x1E69E54E8] + 24);
        *(&__dst + 1) = MEMORY[0x1E69E5548] + 16;
        if (v56 < 0)
        {
          operator delete(__p);
        }

        *(&__dst + 1) = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v54);
        std::ostream::~ostream();
        MEMORY[0x1DA7411E0](v57);
        if (qword_1ECB71C28 != -1)
        {
          dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
        }

        v29 = qword_1ECB71C30;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = v51;
          if (v52 < 0)
          {
            v30 = v51[0];
          }

          LODWORD(__dst) = 136315138;
          *(&__dst + 4) = v30;
          _os_log_error_impl(&dword_1D9D0A000, v29, OS_LOG_TYPE_ERROR, "%s", &__dst, 0xCu);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        v32 = exception;
        v33 = HIBYTE(v52);
        v34 = v51;
        if (v52 < 0)
        {
          v34 = v51[0];
          v33 = v51[1];
        }

        *&__dst = v34;
        *(&__dst + 1) = v33;
        *exception = &unk_1F554F760;
        sub_1D9DA75B8((exception + 1), &__dst);
        __cxa_throw(v32, &unk_1F554F618, sub_1D9DA26A4);
      }

      v46 = *(a1 + 168);
    }

    goto LABEL_95;
  }

  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v54[0].__locale_) = v6;
  if (v6)
  {
    memmove(&__dst, __s, v6);
    *(&v54[-2].__locale_ + v7) = 0;
    v8 = a1 + 152;
    v9 = *(a1 + 152);
    locale_high = HIBYTE(v54[0].__locale_);
    if (!v9)
    {
      goto LABEL_51;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v8 = a1 + 152;
    v9 = *(a1 + 152);
    locale_high = HIBYTE(v54[0].__locale_);
    if (!v9)
    {
      goto LABEL_51;
    }
  }

  if ((locale_high & 0x80u) == 0)
  {
    v11 = locale_high;
  }

  else
  {
    v11 = *(&__dst + 1);
  }

  if ((locale_high & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v13 = v8;
  do
  {
    v14 = *(v9 + 55);
    if (v14 >= 0)
    {
      v15 = *(v9 + 55);
    }

    else
    {
      v15 = *(v9 + 40);
    }

    if (v14 >= 0)
    {
      v16 = (v9 + 32);
    }

    else
    {
      v16 = *(v9 + 32);
    }

    if (v11 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v11;
    }

    v18 = memcmp(v16, p_dst, v17);
    v19 = v15 < v11;
    if (v18)
    {
      v19 = v18 < 0;
    }

    v20 = !v19;
    if (v19)
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v13 = v9;
    }

    v9 = *(v9 + v21);
  }

  while (v9);
  if (v13 != v8)
  {
    v22 = *(v13 + 55);
    if (v22 >= 0)
    {
      v23 = *(v13 + 55);
    }

    else
    {
      v23 = *(v13 + 40);
    }

    if (v22 >= 0)
    {
      v24 = (v13 + 32);
    }

    else
    {
      v24 = *(v13 + 32);
    }

    if (v23 >= v11)
    {
      v25 = v11;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(p_dst, v24, v25);
    v27 = v11 < v23;
    if (v26)
    {
      v27 = v26 < 0;
    }

    if (!v27)
    {
      if ((locale_high & 0x80) != 0)
      {
        goto LABEL_52;
      }

LABEL_48:
      if (v13 == v8)
      {
        goto LABEL_53;
      }

      goto LABEL_49;
    }
  }

LABEL_51:
  v13 = v8;
  if ((locale_high & 0x80) == 0)
  {
    goto LABEL_48;
  }

LABEL_52:
  operator delete(__dst);
  if (v13 == v8)
  {
    goto LABEL_53;
  }

LABEL_49:
  if (*(v13 + 79) < 0)
  {
    sub_1D9D12B94(v51, *(v13 + 56), *(v13 + 64));
  }

  else
  {
    *v51 = *(v13 + 56);
    v52 = *(v13 + 72);
  }

  if (v52 >= 0)
  {
    v35 = v51;
  }

  else
  {
    v35 = v51[0];
  }

  if (v52 >= 0)
  {
    v36 = HIBYTE(v52);
  }

  else
  {
    v36 = v51[1];
  }

  v37 = sub_1D9DA220C(a1 + 80, v35, v36);
  if ((v37 & 1) == 0)
  {
    sub_1D9D100A8(&__dst);
    sub_1D9D12280(&__dst, "Special token ", 14);
    if (v52 >= 0)
    {
      v38 = v51;
    }

    else
    {
      v38 = v51[0];
    }

    if (v52 >= 0)
    {
      v39 = HIBYTE(v52);
    }

    else
    {
      v39 = v51[1];
    }

    sub_1D9D12280(&__dst, v38, v39);
    sub_1D9D12280(&__dst, " not found in vocab!", 20);
    std::stringbuf::str();
    *&__dst = *MEMORY[0x1E69E54E8];
    *(&v54[-2].__locale_ + *(__dst - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&__dst + 1) = MEMORY[0x1E69E5548] + 16;
    if (v56 < 0)
    {
      operator delete(__p);
    }

    *(&__dst + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v54);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](v57);
    if (qword_1ECB71C28 != -1)
    {
      dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
    }

    v40 = qword_1ECB71C30;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = v49;
      if ((v50 & 0x80u) != 0)
      {
        v41 = v49[0];
      }

      LODWORD(__dst) = 136315138;
      *(&__dst + 4) = v41;
      _os_log_error_impl(&dword_1D9D0A000, v40, OS_LOG_TYPE_ERROR, "%s", &__dst, 0xCu);
    }

    v42 = __cxa_allocate_exception(0x20uLL);
    v43 = v42;
    v44 = v50;
    v45 = v49;
    if ((v50 & 0x80u) != 0)
    {
      v45 = v49[0];
      v44 = v49[1];
    }

    *&__dst = v45;
    *(&__dst + 1) = v44;
    *v42 = &unk_1F554F760;
    sub_1D9DA75B8((v42 + 1), &__dst);
    __cxa_throw(v43, &unk_1F554F618, sub_1D9DA26A4);
  }

  v46 = HIDWORD(v37);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

LABEL_95:
  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

void sub_1D9DA2F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_1D9DA30F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA3110(void *a1)
{
  v1 = a1[22];
  (*(*a1 + 72))(&__p);
  (*(*v1 + 24))(v1, &__p);
  v2 = __p;
  if (__p)
  {
    v3 = v7;
    v4 = __p;
    if (v7 != __p)
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
      v4 = __p;
    }

    v7 = v2;
    operator delete(v4);
  }
}

void sub_1D9DA31DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA31F0(uint64_t a1, char *__s, int64_t a3, int a4)
{
  v7 = a1 + 8;
  v8 = *(a1 + 31);
  if (v8 < 0)
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (!v8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v9 = (a1 + 8);
    if (!*(a1 + 31))
    {
      goto LABEL_25;
    }
  }

  if (a3 >= v8)
  {
    v14 = &__s[a3];
    v15 = *v9;
    v16 = a3;
    v17 = __s;
    while (1)
    {
      v18 = v16 - v8;
      if (v18 == -1)
      {
        goto LABEL_6;
      }

      v19 = memchr(v17, v15, v18 + 1);
      if (!v19)
      {
        goto LABEL_6;
      }

      v20 = v19;
      if (!memcmp(v19, v9, v8))
      {
        break;
      }

      v17 = v20 + 1;
      v16 = v14 - (v20 + 1);
      if (v16 < v8)
      {
        goto LABEL_6;
      }
    }

    if (v20 != v14 && __s == v20)
    {
LABEL_25:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1D9DA33FC(exception);
      __cxa_throw(exception, off_1E858DD48, MEMORY[0x1E69E5298]);
    }
  }

LABEL_6:
  (*(**(a1 + 176) + 16))(&__p);
  if (a4)
  {
    sub_1D9DA3438(&__p, __p, v7);
  }

  (*(*a1 + 80))(a1, &__p);
  v10 = __p;
  if (__p)
  {
    v11 = v23;
    v12 = __p;
    if (v23 != __p)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = __p;
    }

    v23 = v10;
    operator delete(v12);
  }
}

void sub_1D9DA33C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA33E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

std::logic_error *sub_1D9DA33FC(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "Input text should not contain BOS token!");
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

void sub_1D9DA3438(void *a1, std::string *this, unint64_t a3)
{
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v17 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D9D84AB0();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v16) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v23 = this - v16;
    v24 = 8 * ((this - v16) >> 3);
    v32 = v24;
    v33 = v24;
    if (!(0xAAAAAAAAAAAAAAABLL * ((this - v16) >> 3)))
    {
      if (v23 < 1)
      {
        operator new();
      }

      v24 -= 24 * ((1 - 0x5555555555555555 * (v23 >> 3)) >> 1);
      v32 = v24;
      v33 = v24;
    }

    if (*(a3 + 23) < 0)
    {
      sub_1D9D12B94(v24, *a3, *(a3 + 8));
      v24 = v32;
      v25 = v33;
    }

    else
    {
      *v24 = *a3;
      *(v24 + 16) = *(a3 + 16);
      v25 = v24;
    }

    v26 = v25 + 24;
    memcpy((v25 + 24), this, a1[1] - this);
    v27 = *a1;
    v28 = v26 + a1[1] - this;
    a1[1] = this;
    v29 = (this - v27);
    v30 = (v24 - (this - v27));
    memcpy(v30, v27, v29);
    v31 = *a1;
    *a1 = v30;
    a1[1] = v28;
    a1[2] = 0;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else if (this == v7)
  {
    if (*(a3 + 23) < 0)
    {
      sub_1D9D12B94(a1[1], *a3, *(a3 + 8));
    }

    else
    {
      v22 = *a3;
      v7->__r_.__value_.__r.__words[2] = *(a3 + 16);
      *&v7->__r_.__value_.__l.__data_ = v22;
    }

    a1[1] = v7 + 1;
  }

  else
  {
    v8 = v7 - 1;
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      v9 = v7 + 1;
      v10 = *&v8->__r_.__value_.__l.__data_;
      v7->__r_.__value_.__r.__words[2] = v7[-1].__r_.__value_.__r.__words[2];
      *&v7->__r_.__value_.__l.__data_ = v10;
      v7[-1].__r_.__value_.__l.__size_ = 0;
      v7[-1].__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
    }

    a1[1] = v9;
    if (v7 != &this[1])
    {
      v11 = 0;
      v12 = (this - v7 + 24);
      do
      {
        v14 = &v11[v7];
        v15 = &v11[v7 - 24];
        if (v11[v7 - 1] < 0)
        {
          operator delete(*v15);
        }

        v11 -= 24;
        v13 = *&v14[-2].__r_.__value_.__l.__data_;
        *(v15 + 16) = *(&v14[-2].__r_.__value_.__l + 2);
        *v15 = v13;
        *(&v14[-2].__r_.__value_.__s + 23) = 0;
        v14[-2].__r_.__value_.__s.__data_[0] = 0;
      }

      while (v12 != v11);
      v9 = a1[1];
    }

    v20 = v9 <= a3 || this > a3;
    v21 = 24;
    if (v20)
    {
      v21 = 0;
    }

    std::string::operator=(this, (a3 + v21));
  }
}

void sub_1D9DA375C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D73268(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA3770(char *__s@<X1>, uint64_t a2@<X0>, int64_t a3@<X2>, int a4@<W3>, std::string **a5@<X8>)
{
  v9 = a2 + 8;
  v10 = *(a2 + 31);
  if (v10 < 0)
  {
    v11 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a2 + 8);
    if (!*(a2 + 31))
    {
      goto LABEL_17;
    }
  }

  if (a3 >= v10)
  {
    v12 = &__s[a3];
    v13 = *v11;
    v14 = a3;
    v15 = __s;
    while (1)
    {
      v16 = v14 - v10;
      if (v16 == -1)
      {
        goto LABEL_6;
      }

      v17 = memchr(v15, v13, v16 + 1);
      if (!v17)
      {
        goto LABEL_6;
      }

      v18 = v17;
      if (!memcmp(v17, v11, v10))
      {
        break;
      }

      v15 = v18 + 1;
      v14 = v12 - (v18 + 1);
      if (v14 < v10)
      {
        goto LABEL_6;
      }
    }

    if (v18 != v12 && __s == v18)
    {
LABEL_17:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1D9DA33FC(exception);
      __cxa_throw(exception, off_1E858DD48, MEMORY[0x1E69E5298]);
    }
  }

LABEL_6:
  (*(**(a2 + 176) + 16))(*(a2 + 176), __s, a3);
  if (a4)
  {
    sub_1D9DA3438(a5, *a5, v9);
  }
}

uint64_t sub_1D9DA38F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 31) = 3;
  *(a1 + 8) = 4092732;
  *(a1 + 55) = 4;
  strcpy((a1 + 32), "</s>");
  *(a1 + 79) = 5;
  strcpy((a1 + 56), "<unk>");
  *a1 = &unk_1F554F640;
  sub_1D9D18694(a1 + 80);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_1D9D18BD4(a1 + 80, v5, v6);
  if (v12.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D3F79C(&v12, v10);
    if (v11 >= 0)
    {
      v9 = v10;
    }

    else
    {
      v9 = v10[0];
    }

    std::runtime_error::runtime_error(exception, v9);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9D3F478(&v12);
  return a1;
}

void sub_1D9DA3A28(_Unwind_Exception *a1)
{
  sub_1D9D18834(v1 + 80);
  sub_1D9DA075C(v1);
  _Unwind_Resume(a1);
}

void sub_1D9DA3A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_1D9D3F478(&a15);
      sub_1D9D18834(v15 + 80);
      sub_1D9DA075C(v15);
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

uint64_t sub_1D9DA3AA8(uint64_t a1)
{
  *a1 = &unk_1F554F640;
  sub_1D9D18834(a1 + 80);
  *a1 = &unk_1F554F6F0;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_1D9DA3B58(uint64_t a1)
{
  *a1 = &unk_1F554F640;
  sub_1D9D18834(a1 + 80);
  *a1 = &unk_1F554F6F0;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

const void *sub_1D9DA3C08@<X0>(void **a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v14 = a2;
  if (((*a1)[11])(a1) <= a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1D9DA3DAC(v12, &v14);
    if ((v13 & 0x80u) == 0)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v11 = v13;
    }

    else
    {
      v11 = v12[1];
    }

    sub_1D9DA7550(exception, v10, v11);
    __cxa_throw(exception, &unk_1F554F618, sub_1D9DA26A4);
  }

  result = sub_1D9D23384(a1 + 10, a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  a3[23] = v7;
  if (v7)
  {
    result = memmove(a3, result, v7);
    a3[v8] = 0;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_1D9DA3D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (v15)
    {
LABEL_6:
      __cxa_free_exception(v14);
      _Unwind_Resume(a1);
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DA3DAC(uint64_t a1, unsigned int *a2)
{
  sub_1D9D100A8(&v4);
  MEMORY[0x1DA741090](&v4, *a2);
  std::stringbuf::str();
  v4 = *MEMORY[0x1E69E54E8];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v8);
}

void sub_1D9DA3EFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA3F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DA3F24(uint64_t a1, _BYTE *a2, int64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  memset(&v36, 0, sizeof(v36));
  if (a3)
  {
    v4 = a3;
    v6 = 0;
    v7 = &a2[a3];
    do
    {
      std::string::push_back(&v36, a2[v6++]);
    }

    while (v4 != v6);
    if (v4 >= 1)
    {
      v8 = a2;
      do
      {
        v9 = memchr(v8, 60, v4);
        if (!v9)
        {
          break;
        }

        if (*v9 == 60)
        {
          if (v9 == v7 || a2 != v9 || *(v7 - 1) != 62)
          {
            break;
          }

          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = &v36;
          }

          else
          {
            v10 = v36.__r_.__value_.__r.__words[0];
          }

          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v36.__r_.__value_.__l.__size_;
          }

          v12 = sub_1D9D231BC((a1 + 80), v10, size);
          goto LABEL_41;
        }

        v8 = v9 + 1;
        v4 = v7 - v8;
      }

      while (v7 - v8 >= 1);
    }
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v36;
  }

  else
  {
    v13 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v36.__r_.__value_.__l.__size_;
  }

  sub_1D9D1C36C(a1 + 80, v13, v14, &__p, &v32);
  if (v32.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D3F79C(&v32, buf);
    if (v40 >= 0)
    {
      v29 = buf;
    }

    else
    {
      v29 = *buf;
    }

    std::runtime_error::runtime_error(exception, v29);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9D3F478(&v32);
  v15 = __p;
  v16 = v34 - __p;
  if (v34 - __p == 8)
  {
    v17 = *(a1 + 31);
    if (v17 < 0)
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
    }

    else
    {
      v18 = a1 + 8;
    }

    v19 = *__p;
    if (v19 == (*(*a1 + 40))(a1, v18, v17))
    {
      v20 = __p;
      v15 = (__p + 4);
LABEL_35:
      v12 = *v15;
LABEL_40:
      v34 = v20;
      operator delete(v20);
      goto LABEL_41;
    }

    v15 = __p;
    v16 = v34 - __p;
  }

  v20 = v15;
  if (v16 == 4)
  {
    goto LABEL_35;
  }

  if (qword_1ECB71C28 != -1)
  {
    dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
  }

  v21 = qword_1ECB71C30;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v36;
    }

    else
    {
      v24 = v36.__r_.__value_.__r.__words[0];
    }

    v26 = __p;
    v25 = v34;
    sub_1D9D94D70(v30, " ");
    sub_1D9DA434C(&v32, &__p, v30);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v32;
    }

    else
    {
      v27 = v32.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v24;
    v38 = 2048;
    v39 = (v25 - v26) >> 2;
    v40 = 2080;
    v41 = v27;
    _os_log_error_impl(&dword_1D9D0A000, v21, OS_LOG_TYPE_ERROR, "Expected token=%s to get converted into single TokenID, but got %zu tokenIDs: %s. Returning UNK TokenID as fallback.", buf, 0x20u);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }
  }

  v12 = sub_1D9D231BC((a1 + 80), "<unk>", 5);
  v20 = __p;
  if (__p)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1D9DA42AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9DA434C(void *a1, unsigned int **a2, uint64_t a3)
{
  sub_1D9D100A8(&v18);
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  if (v8 == 1)
  {
    MEMORY[0x1DA741080](&v18, *v6);
    std::stringbuf::str();
    goto LABEL_24;
  }

  if (!v8)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    goto LABEL_24;
  }

  if (*(a3 + 23) >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v6 != v7)
  {
    if (v9)
    {
      do
      {
        MEMORY[0x1DA741080](&v18, *v6);
        v10 = strlen(v9);
        sub_1D9D12280(&v18, v9, v10);
        ++v6;
      }

      while (v6 != v7);
    }

    else
    {
      do
      {
        MEMORY[0x1DA741080](&v18, *v6++);
      }

      while (v6 != v7);
    }
  }

  v11 = v16;
  std::stringbuf::str();
  v12 = v17;
  v13 = *(a3 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 8);
  }

  if ((v17 & 0x80u) != 0)
  {
    v12 = v16[1];
    v11 = v16[0];
  }

  if (v12 >= v12 - v13)
  {
    v14 = v12 - v13;
  }

  else
  {
    v14 = v12;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v14;
  if (v14)
  {
    memmove(a1, v11, v14);
    *(a1 + v14) = 0;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *a1 = 0;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  operator delete(v16[0]);
LABEL_24:
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v22);
}

void sub_1D9DA4668(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v2 = (a2 + 1);
  a2[2] = 0;
  *a2 = a2 + 1;
  v3 = (*(*a1 + 88))(a1);
  v25 = v3 << 32;
  v26 = 1;
  v21 = v3;
  if (v3)
  {
    v4 = 0;
    do
    {
      (*(*a1 + 48))(__p);
      v5 = *v2;
      if (!*v2)
      {
LABEL_28:
        operator new();
      }

      v6 = v24;
      if ((v24 & 0x80u) == 0)
      {
        v7 = v24;
      }

      else
      {
        v7 = __p[1];
      }

      if ((v24 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      while (1)
      {
        while (1)
        {
          v9 = v5;
          v12 = v5[4];
          v10 = v5 + 4;
          v11 = v12;
          v13 = *(v10 + 23);
          if (v13 >= 0)
          {
            v14 = *(v10 + 23);
          }

          else
          {
            v14 = v10[1];
          }

          if (v13 >= 0)
          {
            v15 = v10;
          }

          else
          {
            v15 = v11;
          }

          if (v14 >= v7)
          {
            v16 = v7;
          }

          else
          {
            v16 = v14;
          }

          v17 = memcmp(v8, v15, v16);
          v18 = v7 < v14;
          if (v17)
          {
            v18 = v17 < 0;
          }

          if (!v18)
          {
            break;
          }

          v5 = *v9;
          if (!*v9)
          {
            goto LABEL_28;
          }
        }

        v19 = memcmp(v15, v8, v16);
        v20 = v14 < v7;
        if (v19)
        {
          v20 = v19 < 0;
        }

        if (!v20)
        {
          break;
        }

        v5 = v9[1];
        if (!v5)
        {
          goto LABEL_28;
        }
      }

      *(v9 + 14) = v4;
      if ((v6 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }

      ++v4;
    }

    while (v4 != v21);
  }
}

void sub_1D9DA48BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1D9D9AC58(v17, *(v17 + 8));
    _Unwind_Resume(a1);
  }

  sub_1D9D9AC58(v17, *(v17 + 8));
  _Unwind_Resume(a1);
}

__n128 sub_1D9DA48FC@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v3 = (a2 + 1);
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = (*(*a1 + 88))(a1);
  v13 = v4 << 32;
  v14 = 1;
  v6 = v4;
  if (v4)
  {
    v7 = 0;
    do
    {
      (*(*a1 + 48))(&v11, a1, v7);
      v8 = *v3;
      if (!*v3)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v9 = v8;
          v10 = *(v8 + 8);
          if (v7 >= v10)
          {
            break;
          }

          v8 = *v9;
          if (!*v9)
          {
            goto LABEL_10;
          }
        }

        if (v10 >= v7)
        {
          break;
        }

        v8 = v9[1];
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      if (*(v9 + 63) < 0)
      {
        operator delete(v9[5]);
      }

      result = v11;
      *(v9 + 5) = v11;
      v9[7] = v12;
      v7 = (v7 + 1);
    }

    while (v7 != v6);
  }

  return result;
}

void sub_1D9DA4AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1D9D9ABD4(v15, *(v15 + 8));
    _Unwind_Resume(a1);
  }

  sub_1D9D9ABD4(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void sub_1D9DA4B08(std::string::value_type *__s@<X1>, uint64_t a2@<X0>, int64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v6 = a3;
  v7 = __s;
  v10 = (a2 + 8);
  v11 = *(a2 + 31);
  v49 = a2 + 8;
  if (v11 < 0)
  {
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
  }

  if (!v11)
  {
    goto LABEL_30;
  }

  if (a3 >= v11)
  {
    v15 = &__s[a3];
    v16 = *v10;
    v17 = a3;
    v18 = __s;
    while (1)
    {
      v19 = &v17[-v11];
      if (v19 == -1)
      {
        goto LABEL_5;
      }

      v20 = memchr(v18, v16, (v19 + 1));
      if (!v20)
      {
        goto LABEL_5;
      }

      v21 = v20;
      if (!memcmp(v20, v10, v11))
      {
        break;
      }

      v18 = v21 + 1;
      v17 = (v15 - (v21 + 1));
      if (v17 < v11)
      {
        goto LABEL_5;
      }
    }

    if (v21 != v15 && v7 == v21)
    {
LABEL_30:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1D9DA33FC(exception);
      __cxa_throw(exception, off_1E858DD48, MEMORY[0x1E69E5298]);
    }
  }

LABEL_5:
  *&v51.__r_.__value_.__r.__words[1] = 0uLL;
  v52 = 0;
  memset(&v50, 0, sizeof(v50));
  if (v6)
  {
    do
    {
      std::string::push_back(&v50, *v7++);
      --v6;
    }

    while (v6);
    v12 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    size = v50.__r_.__value_.__l.__size_;
    v14 = v50.__r_.__value_.__r.__words[0];
  }

  else
  {
    size = 0;
    v14 = 0;
    v12 = 0;
  }

  if ((v12 & 0x80u) == 0)
  {
    v22 = &v50;
  }

  else
  {
    v22 = v14;
  }

  if ((v12 & 0x80u) == 0)
  {
    v23 = v12;
  }

  else
  {
    v23 = size;
  }

  sub_1D9D1C36C(a2 + 80, v22, v23, &v51.__r_.__value_.__l.__size_, &v51);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v51.__r_.__value_.__r.__words[0])
  {
    v47 = __cxa_allocate_exception(0x10uLL);
    sub_1D9D3F79C(&v51, &v50);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v50;
    }

    else
    {
      v48 = v50.__r_.__value_.__r.__words[0];
    }

    std::runtime_error::runtime_error(v47, v48);
    __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9D3F478(&v51);
  if (a4)
  {
    v24 = v51.__r_.__value_.__l.__size_;
    if (v51.__r_.__value_.__l.__size_ != v51.__r_.__value_.__r.__words[2])
    {
      v25 = *(a2 + 31);
      if (v25 < 0)
      {
        v26 = *(a2 + 8);
        v25 = *(a2 + 16);
      }

      else
      {
        v26 = v49;
      }

      v28 = *v51.__r_.__value_.__l.__size_;
      if (v28 == (*(*a2 + 40))(a2, v26, v25))
      {
        goto LABEL_65;
      }

      v24 = v51.__r_.__value_.__l.__size_;
    }

    v29 = *(a2 + 31);
    if (v29 < 0)
    {
      v30 = *(a2 + 8);
      v29 = *(a2 + 16);
    }

    else
    {
      v30 = v49;
    }

    v31 = (*(*a2 + 40))(a2, v30, v29);
    v32 = v31;
    v33 = v51.__r_.__value_.__r.__words[2];
    if (v51.__r_.__value_.__r.__words[2] < v52)
    {
      if (v24 == v51.__r_.__value_.__r.__words[2])
      {
        *v51.__r_.__value_.__r.__words[2] = v31;
        v51.__r_.__value_.__r.__words[2] = (v33 + 4);
        goto LABEL_65;
      }

      v34 = v24 + 4;
      if (v51.__r_.__value_.__r.__words[2] < 4)
      {
        if (v51.__r_.__value_.__r.__words[2] == v34)
        {
LABEL_57:
          *v24 = v32;
          goto LABEL_65;
        }
      }

      else
      {
        *v51.__r_.__value_.__r.__words[2] = *(v51.__r_.__value_.__r.__words[2] - 4);
        v51.__r_.__value_.__r.__words[2] = (v33 + 4);
        if (v33 == v34)
        {
          goto LABEL_57;
        }
      }

      memmove(v24 + 4, v24, v33 - v34);
      goto LABEL_57;
    }

    v35 = ((v51.__r_.__value_.__r.__words[2] - v51.__r_.__value_.__l.__size_) >> 2) + 1;
    if (v35 >> 62)
    {
      sub_1D9D84AB0();
    }

    v36 = v52 - v51.__r_.__value_.__l.__size_;
    if ((v52 - v51.__r_.__value_.__l.__size_) >> 1 > v35)
    {
      v35 = v36 >> 1;
    }

    if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v37 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = v35;
    }

    if (v37)
    {
      if (!(v37 >> 62))
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v38 = &v24[-v51.__r_.__value_.__l.__size_];
    v39 = &v24[-v51.__r_.__value_.__l.__size_] >> 2;
    v40 = (4 * v39);
    if (!v39)
    {
      if (v38 < 1)
      {
        v41 = v38 >> 1;
        if (v51.__r_.__value_.__l.__size_ == v24)
        {
          v42 = 1;
        }

        else
        {
          v42 = v41;
        }

        if (!(v42 >> 62))
        {
          operator new();
        }

        sub_1D9D10E9C();
      }

      v40 -= ((v38 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL;
    }

    *v40 = v31;
    memcpy(v40 + 4, v24, v51.__r_.__value_.__r.__words[2] - v24);
    v43 = &v40[v51.__r_.__value_.__r.__words[2] - v24 + 4];
    v51.__r_.__value_.__r.__words[2] = v24;
    v44 = (v40 - &v24[-v51.__r_.__value_.__l.__size_]);
    memcpy(v44, v51.__r_.__value_.__l.__size_, &v24[-v51.__r_.__value_.__l.__size_]);
    v45 = v51.__r_.__value_.__l.__size_;
    v51.__r_.__value_.__l.__size_ = v44;
    v51.__r_.__value_.__r.__words[2] = v43;
    v52 = 0;
    if (v45)
    {
      operator delete(v45);
    }
  }

LABEL_65:
  v46 = *&v51.__r_.__value_.__r.__words[1];
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if (*(&v46 + 1) != v46)
  {
    if (((*(&v46 + 1) - v46) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  if (v46)
  {
    v51.__r_.__value_.__r.__words[2] = v46;
    operator delete(v46);
  }
}

void sub_1D9DA505C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (v18)
  {
    operator delete(v18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9DA50FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  v4 = a2[1];
  v10 = 0;
  v11 = 0;
  __p = 0;
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  sub_1D9D1CAA4(a1 + 80, &__p, a3, &v12);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D3F79C(&v12, &__p);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    std::runtime_error::runtime_error(exception, p_p);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_1D9D3F478(&v12);
}

void sub_1D9DA52C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
    if ((*(v15 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v15 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9DA5354@<X0>(uint64_t a1@<X0>, std::string::value_type *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  memset(&__p, 0, sizeof(__p));
  if (a3)
  {
    v6 = a3;
    do
    {
      std::string::push_back(&__p, *a2++);
      --v6;
    }

    while (v6);
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    size = 0;
    v10 = 0;
    v8 = 0;
  }

  if ((v8 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v10;
  }

  if ((v8 & 0x80u) == 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = size;
  }

  sub_1D9D1BFF8(a1 + 80, p_p, v12, a4, &v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v17.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D3F79C(&v17, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p.__r_.__value_.__r.__words[0];
    }

    std::runtime_error::runtime_error(exception, v15);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_1D9D3F478(&v17);
}

void sub_1D9DA547C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1D9D54C6C(v15);
    _Unwind_Resume(a1);
  }

  sub_1D9D54C6C(v15);
  _Unwind_Resume(a1);
}

void sub_1D9DA54F0(uint64_t a1)
{
  sub_1D9DA8170(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9DA5528(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*(a1 + 128) - 8);
  a2[1] = 0;
  v3 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = v2[5];
  if (v4)
  {
    v5 = (v4 - 32);
  }

  else
  {
    v5 = 0;
  }

  v29 = v2;
  if (v5 != v2)
  {
    do
    {
      if (*(v5 + 23) < 0)
      {
        sub_1D9D12B94(__p, *v5, v5[1]);
      }

      else
      {
        v11 = *v5;
        v31 = v5[2];
        *__p = v11;
      }

      v32 = *(v5 + 6);
      v12 = *v3;
      if (!*v3)
      {
LABEL_41:
        operator new();
      }

      v13 = HIBYTE(v31);
      if (v31 >= 0)
      {
        v14 = HIBYTE(v31);
      }

      else
      {
        v14 = __p[1];
      }

      if (v31 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      while (1)
      {
        while (1)
        {
          v16 = v12;
          v19 = v12[4];
          v17 = v12 + 4;
          v18 = v19;
          v20 = *(v17 + 23);
          if (v20 >= 0)
          {
            v21 = *(v17 + 23);
          }

          else
          {
            v21 = v17[1];
          }

          if (v20 >= 0)
          {
            v22 = v17;
          }

          else
          {
            v22 = v18;
          }

          if (v21 >= v14)
          {
            v23 = v14;
          }

          else
          {
            v23 = v21;
          }

          v24 = memcmp(v15, v22, v23);
          v25 = v14 < v21;
          if (v24)
          {
            v25 = v24 < 0;
          }

          if (!v25)
          {
            break;
          }

          v12 = *v16;
          if (!*v16)
          {
            goto LABEL_41;
          }
        }

        v26 = memcmp(v22, v15, v23);
        v27 = v21 < v14;
        if (v26)
        {
          v27 = v26 < 0;
        }

        if (!v27)
        {
          break;
        }

        v12 = v16[1];
        if (!v12)
        {
          goto LABEL_41;
        }
      }

      if (v13 < 0)
      {
        operator delete(__p[0]);
        v28 = v5[6];
        if (!v28)
        {
LABEL_6:
          v7 = v5[4];
          v6 = v5 + 4;
          v8 = (v7 & 0xFFFFFFFFFFFFFFFELL);
          if (v6 == *((v7 & 0xFFFFFFFFFFFFFFFELL) + 16))
          {
            do
            {
              v6 = v8;
              v8 = (*v8 & 0xFFFFFFFFFFFFFFFELL);
            }

            while (v6 == v8[2]);
            v9 = v6[2];
          }

          else
          {
            v9 = 0;
          }

          if (v9 == v8)
          {
            v10 = v6;
          }

          else
          {
            v10 = v8;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v28 = v5[6];
        if (!v28)
        {
          goto LABEL_6;
        }
      }

      do
      {
        v10 = v28;
        v28 = v28[1];
      }

      while (v28);
LABEL_11:
      v5 = v10 - 4;
    }

    while (v10 - 4 != v29);
  }
}

void sub_1D9DA57A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1D9D912F0(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D9AC58(v19, *(v19 + 8));
  _Unwind_Resume(a1);
}

void sub_1D9DA57F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*(a1 + 128) - 8);
  a2[1] = 0;
  v3 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = v2[5];
  if (v4)
  {
    v5 = (v4 - 32);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != v2)
  {
    do
    {
      if (*(v5 + 23) < 0)
      {
        sub_1D9D12B94(__p, *v5, v5[1]);
      }

      else
      {
        v11 = *v5;
        v18 = v5[2];
        *__p = v11;
      }

      v12 = *(v5 + 6);
      v19 = v12;
      v13 = *v3;
      if (!*v3)
      {
LABEL_23:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 32);
          if (v15 <= v12)
          {
            break;
          }

          v13 = *v14;
          if (!*v14)
          {
            goto LABEL_23;
          }
        }

        if (v15 >= v12)
        {
          break;
        }

        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
        v16 = v5[6];
        if (!v16)
        {
LABEL_6:
          v7 = v5[4];
          v6 = v5 + 4;
          v8 = (v7 & 0xFFFFFFFFFFFFFFFELL);
          if (v6 == *((v7 & 0xFFFFFFFFFFFFFFFELL) + 16))
          {
            do
            {
              v6 = v8;
              v8 = (*v8 & 0xFFFFFFFFFFFFFFFELL);
            }

            while (v6 == v8[2]);
            v9 = v6[2];
          }

          else
          {
            v9 = 0;
          }

          if (v9 == v8)
          {
            v10 = v6;
          }

          else
          {
            v10 = v8;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v16 = v5[6];
        if (!v16)
        {
          goto LABEL_6;
        }
      }

      do
      {
        v10 = v16;
        v16 = v16[1];
      }

      while (v16);
LABEL_11:
      v5 = v10 - 4;
    }

    while (v10 - 4 != v2);
  }
}

void sub_1D9DA59E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1D9DA8278(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D9ABD4(v17, *(v17 + 8));
  _Unwind_Resume(a1);
}

void sub_1D9DA5A38(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (((v3 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_1D9DA5B44(_Unwind_Exception *a1)
{
  sub_1D9D54C6C(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_1D9DA5B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D54C6C(v15);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void sub_1D9DA5B8C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1D9DA82E0(&v21, a2);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = v21;
  v6 = v22;
  if (v21 != v22)
  {
    v7 = 0;
    while (1)
    {
      if (*(v5 + 23) < 0)
      {
        sub_1D9D12B94(__p, *v5, v5[1]);
      }

      else
      {
        v8 = *v5;
        v24 = v5[2];
        *__p = v8;
      }

      v9 = SHIBYTE(v24) >= 0 ? __p : __p[0];
      v10 = SHIBYTE(v24) >= 0 ? HIBYTE(v24) : __p[1];
      v11 = (*(*a1 + 40))(a1, v9, v10);
      v12 = a3[2];
      if (v7 >= v12)
      {
        break;
      }

      *v7 = v11;
      v7 += 4;
      a3[1] = v7;
      if (SHIBYTE(v24) < 0)
      {
        goto LABEL_26;
      }

LABEL_3:
      v5 += 3;
      if (v5 == v6)
      {
        *a3 = 0;
        v5 = v21;
        goto LABEL_28;
      }
    }

    v13 = v7;
    v14 = v7 >> 2;
    v15 = v14 + 1;
    if ((v14 + 1) >> 62)
    {
      *a3 = 0;
      sub_1D9D84AB0();
    }

    if (v12 >> 1 > v15)
    {
      v15 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v16 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      if (!(v16 >> 62))
      {
        operator new();
      }

      *a3 = 0;
      sub_1D9D10E9C();
    }

    v17 = (4 * v14);
    *v17 = v11;
    v7 = (v17 + 1);
    memcpy(0, 0, v13);
    a3[1] = v7;
    a3[2] = 0;
    a3[1] = v7;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    operator delete(__p[0]);
    goto LABEL_3;
  }

LABEL_28:
  if (v5)
  {
    v18 = v22;
    v19 = v5;
    if (v22 != v5)
    {
      do
      {
        v20 = *(v18 - 1);
        v18 -= 3;
        if (v20 < 0)
        {
          operator delete(*v18);
        }
      }

      while (v18 != v5);
      v19 = v21;
    }

    v22 = v5;
    operator delete(v19);
  }
}

void sub_1D9DA5DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  *v18 = v19;
  if (!v19)
  {
    sub_1D9D54C6C(&a10);
    _Unwind_Resume(a1);
  }

  v18[1] = v19;
  operator delete(v19);
  sub_1D9D54C6C(&a10);
  _Unwind_Resume(a1);
}

void sub_1D9DA5E24(uint64_t a1)
{
  *a1 = &unk_1F554F640;
  sub_1D9D18834(a1 + 80);
  *a1 = &unk_1F554F6F0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      operator delete(*(a1 + 8));
LABEL_4:

      JUMPOUT(0x1DA741280);
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 32));
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  goto LABEL_9;
}

void sub_1D9DA5F10(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = v2 - 56;
    }

    else
    {
      v3 = 0;
    }

    sub_1D9DA5F10(v3);
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = v4 - 56;
    }

    else
    {
      v5 = 0;
    }

    sub_1D9DA5F10(v5);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
      v6 = a1;
    }

    else
    {
      v6 = a1;
    }

    operator delete(v6);
  }
}

unint64_t sub_1D9DA5FA4(unint64_t result, unint64_t *a2)
{
  v2 = *result & 0xFFFFFFFFFFFFFFFELL;
  *result = v2;
  v3 = (*a2 & 0xFFFFFFFFFFFFFFFELL);
  if (v3 != result)
  {
    for (i = *v2; (*v2 & 1) == 0; i = *v2)
    {
      v5 = *(i + 8);
      if (v5 == v2)
      {
        v5 = *(i + 16);
        if (!v5 || (*v5 & 1) != 0)
        {
          v8 = *(v2 + 16);
          if (result == v8)
          {
            v12 = v8[1];
            *(v2 + 16) = v12;
            if (v12)
            {
              *v12 = *v12 & 1 | v2;
              i = *v2;
            }

            *v8 = i & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
            if ((*a2 & 0xFFFFFFFFFFFFFFFELL) == v2)
            {
              *a2 = *a2 & 1 | result;
              v13 = *v2;
            }

            else
            {
              v13 = *v2;
              v15 = *v2 & 0xFFFFFFFFFFFFFFFELL;
              if (*(v15 + 8) == v2)
              {
                *(v15 + 8) = v8;
              }

              else
              {
                *(v15 + 16) = v8;
              }
            }

            v8[1] = v2;
            *v2 = v13 & 1 | result;
            v9 = (result & 0xFFFFFFFFFFFFFFFELL);
            i = *(result & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            v9 = v2;
            v2 = result;
          }

          *v9 = i | 1;
          *(*(*v2 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
          v16 = *(*v2 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL;
          v17 = *(v16 + 8);
          v21 = v17[2];
          *(v16 + 8) = v21;
          if (v21)
          {
            *v21 = *v21 & 1 | v16;
          }

          *v17 = *v16 & 0xFFFFFFFFFFFFFFFELL | *v17 & 1;
          if ((*a2 & 0xFFFFFFFFFFFFFFFELL) == v16)
          {
            *a2 = *a2 & 1 | v17;
            v19 = *v16;
          }

          else
          {
            v19 = *v16;
            v22 = *v16 & 0xFFFFFFFFFFFFFFFELL;
            if (*(v22 + 16) == v16)
            {
              *(v22 + 16) = v17;
            }

            else
            {
              *(v22 + 8) = v17;
            }
          }

          v17[2] = v16;
LABEL_46:
          *v16 = v19 & 1 | v17;
          result = v2;
          v3 = (*a2 & 0xFFFFFFFFFFFFFFFELL);
          if (v2 == v3)
          {
            break;
          }

          goto LABEL_47;
        }
      }

      else if (!v5 || (*v5 & 1) != 0)
      {
        v6 = *(v2 + 8);
        if (result == v6)
        {
          v10 = v6[2];
          *(v2 + 8) = v10;
          if (v10)
          {
            *v10 = *v10 & 1 | v2;
            i = *v2;
          }

          *v6 = i & 0xFFFFFFFFFFFFFFFELL | *v6 & 1;
          if ((*a2 & 0xFFFFFFFFFFFFFFFELL) == v2)
          {
            *a2 = *a2 & 1 | result;
            v11 = *v2;
          }

          else
          {
            v11 = *v2;
            v14 = *v2 & 0xFFFFFFFFFFFFFFFELL;
            if (*(v14 + 16) == v2)
            {
              *(v14 + 16) = v6;
            }

            else
            {
              *(v14 + 8) = v6;
            }
          }

          v6[2] = v2;
          *v2 = v11 & 1 | result;
          v7 = (result & 0xFFFFFFFFFFFFFFFELL);
          i = *(result & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          v7 = v2;
          v2 = result;
        }

        *v7 = i | 1;
        *(*(*v2 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
        v16 = *(*v2 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL;
        v17 = *(v16 + 16);
        v18 = v17[1];
        *(v16 + 16) = v18;
        if (v18)
        {
          *v18 = *v18 & 1 | v16;
        }

        *v17 = *v16 & 0xFFFFFFFFFFFFFFFELL | *v17 & 1;
        if ((*a2 & 0xFFFFFFFFFFFFFFFELL) == v16)
        {
          *a2 = *a2 & 1 | v17;
          v19 = *v16;
        }

        else
        {
          v19 = *v16;
          v20 = *v16 & 0xFFFFFFFFFFFFFFFELL;
          if (*(v20 + 8) == v16)
          {
            *(v20 + 8) = v17;
          }

          else
          {
            *(v20 + 16) = v17;
          }
        }

        v17[1] = v16;
        goto LABEL_46;
      }

      *v2 = i | 1;
      *v5 |= 1uLL;
      *(*(*result & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
      result = *(*result & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL;
      v3 = (*a2 & 0xFFFFFFFFFFFFFFFELL);
      if (result == v3)
      {
        break;
      }

LABEL_47:
      v2 = *result & 0xFFFFFFFFFFFFFFFELL;
    }
  }

  *v3 |= 1uLL;
  return result;
}

__n128 sub_1D9DA6320(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v60 = (v12 + 16);
        v61 = *(v12 + 16);
        v63 = a2[-1].n128_u64[0];
        v58 = a2 - 1;
        v62 = v63;
        if (v61 < *v12)
        {
          if (v62 >= v61)
          {
            v134 = *v12;
            *v12 = *v60;
            result = v134;
            *v60 = v134;
            if (v58->n128_u64[0] < *(v12 + 16))
            {
              result = *v60;
              *v60 = *v58;
              *v58 = result;
            }

            return result;
          }

LABEL_109:
          v130 = *v12;
          *v12 = *v58;
          result = v130;
          *v58 = v130;
          return result;
        }

        if (v62 >= v61)
        {
          return result;
        }

        result = *v60;
        *v60 = *v58;
        *v58 = result;
LABEL_189:
        if (*(v12 + 16) < *v12)
        {
          v136 = *v12;
          *v12 = *v60;
          result = v136;
          *v60 = v136;
        }

        return result;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {

          result.n128_u64[0] = sub_1D9DA6E9C(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
          return result;
        }

        goto LABEL_9;
      }

      v60 = (v12 + 16);
      v64 = *(v12 + 16);
      v65 = (v12 + 32);
      v66 = *(v12 + 32);
      if (v64 >= *v12)
      {
        if (v66 < v64)
        {
          result = *v60;
          *v60 = *v65;
          *v65 = result;
          if (*(v12 + 16) < *v12)
          {
            v133 = *v12;
            *v12 = *v60;
            result = v133;
            *v60 = v133;
          }
        }

        goto LABEL_186;
      }

      if (v66 >= v64)
      {
        v135 = *v12;
        *v12 = *v60;
        result = v135;
        *v60 = v135;
        if (v66 >= *(v12 + 16))
        {
          goto LABEL_186;
        }

        result = *v60;
        *v60 = *v65;
      }

      else
      {
        v131 = *v12;
        *v12 = *v65;
        result = v131;
      }

      *v65 = result;
LABEL_186:
      if (v9->n128_u64[0] >= v65->n128_u64[0])
      {
        return result;
      }

      result = *v65;
      *v65 = *v9;
      *v9 = result;
      if (v65->n128_u64[0] >= v60->n128_u64[0])
      {
        return result;
      }

      result = *v60;
      *v60 = *v65;
      *v65 = result;
      goto LABEL_189;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v59 = a2[-1].n128_u64[0];
      v58 = a2 - 1;
      if (v59 >= *v12)
      {
        return result;
      }

      goto LABEL_109;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v67 = (v12 + 16);
      v69 = v12 == a2 || v67 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v69)
        {
          do
          {
            v106 = v67;
            v107 = a1[1].n128_u64[0];
            if (v107 < a1->n128_u64[0])
            {
              v108 = a1[1].n128_u64[1];
              v109 = v106;
              do
              {
                result = v109[-1];
                *v109 = result;
                v110 = v109[-2].n128_u64[0];
                --v109;
              }

              while (v107 < v110);
              v109->n128_u64[0] = v107;
              v109->n128_u64[1] = v108;
            }

            v67 = v106 + 1;
            a1 = v106;
          }

          while (&v106[1] != a2);
        }

        return result;
      }

      if (v69)
      {
        return result;
      }

      v70 = 0;
      v71 = v12;
      while (1)
      {
        v73 = v67;
        v74 = v71[2];
        if (v74 < *v71)
        {
          v75 = v71[3];
          v76 = v70;
          do
          {
            result = *(v12 + v76);
            *(v12 + v76 + 16) = result;
            if (!v76)
            {
              v72 = v12;
              goto LABEL_123;
            }

            v77 = *(v12 + v76 - 16);
            v76 -= 16;
          }

          while (v74 < v77);
          v72 = (v12 + v76 + 16);
LABEL_123:
          *v72 = v74;
          v72[1] = v75;
        }

        v67 = v73 + 1;
        v70 += 16;
        v71 = v73;
        if (&v73[1] == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v14 = v12 + 16 * (v13 >> 1);
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 < 0x81)
    {
      v18 = *v12;
      if (*v12 < *v14)
      {
        if (v16 >= v18)
        {
          v119 = *v14;
          *v14 = *v12;
          result = v119;
          *v12 = v119;
          if (v9->n128_u64[0] >= *v12)
          {
            goto LABEL_37;
          }

          v112 = *v12;
          *v12 = *v9;
        }

        else
        {
          v112 = *v14;
          *v14 = *v9;
        }

        result = v112;
        *v9 = v112;
LABEL_37:
        --a3;
        v19 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v115 = *v12;
      *v12 = *v9;
      result = v115;
      *v9 = v115;
      if (*v12 >= *v14)
      {
        goto LABEL_37;
      }

      v116 = *v14;
      *v14 = *v12;
      result = v116;
      *v12 = v116;
      --a3;
      v19 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 16) < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= v9->n128_u64[0])
      {
        v51 = v12 + 16;
        do
        {
          v12 = v51;
          if (v51 >= a2)
          {
            break;
          }

          v51 += 16;
        }

        while (v19 >= *v12);
      }

      else
      {
        do
        {
          v50 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v50);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v53);
      }

      v54 = a1->n128_u64[1];
      while (v12 < v52)
      {
        v129 = *v12;
        *v12 = *v52;
        result = v129;
        *v52 = v129;
        do
        {
          v55 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v55);
        do
        {
          v56 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v56);
      }

      v57 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v57;
        *a1 = *v57;
      }

      a4 = 0;
      *(v12 - 16) = v19;
      *(v12 - 8) = v54;
    }

    else
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v113 = *v14;
          *v14 = *v9;
          *v9 = v113;
          if (*v14 < *v12)
          {
            v114 = *v12;
            *v12 = *v14;
            *v14 = v114;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v117 = *v12;
          *v12 = *v14;
          *v14 = v117;
          if (v9->n128_u64[0] >= *v14)
          {
            goto LABEL_28;
          }

          v111 = *v14;
          *v14 = *v9;
        }

        else
        {
          v111 = *v12;
          *v12 = *v9;
        }

        *v9 = v111;
      }

LABEL_28:
      v20 = (v12 + 16);
      v21 = (v14 - 16);
      v22 = *(v14 - 16);
      v23 = v10->n128_u64[0];
      if (v22 >= *(v12 + 16))
      {
        if (v23 < v22)
        {
          v118 = *v21;
          *v21 = *v10;
          *v10 = v118;
          if (v21->n128_u64[0] < v20->n128_u64[0])
          {
            v25 = *v20;
            *v20 = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v23 >= v22)
        {
          v26 = *v20;
          *v20 = *v21;
          *v21 = v26;
          if (v10->n128_u64[0] >= v21->n128_u64[0])
          {
            goto LABEL_42;
          }

          v120 = *v21;
          *v21 = *v10;
          v24 = v120;
        }

        else
        {
          v24 = *v20;
          *v20 = *v10;
        }

        *v10 = v24;
      }

LABEL_42:
      v27 = (v12 + 32);
      v30 = *(v14 + 16);
      v28 = (v14 + 16);
      v29 = v30;
      v31 = v11->n128_u64[0];
      if (v30 >= *(v12 + 32))
      {
        if (v31 < v29)
        {
          v121 = *v28;
          *v28 = *v11;
          *v11 = v121;
          if (v28->n128_u64[0] < v27->n128_u64[0])
          {
            v33 = *v27;
            *v27 = *v28;
            *v28 = v33;
          }
        }
      }

      else
      {
        if (v31 >= v29)
        {
          v34 = *v27;
          *v27 = *v28;
          *v28 = v34;
          if (v11->n128_u64[0] >= v28->n128_u64[0])
          {
            goto LABEL_51;
          }

          v122 = *v28;
          *v28 = *v11;
          v32 = v122;
        }

        else
        {
          v32 = *v27;
          *v27 = *v11;
        }

        *v11 = v32;
      }

LABEL_51:
      v35 = *v15;
      v36 = v28->n128_u64[0];
      if (*v15 >= v21->n128_u64[0])
      {
        if (v36 < v35)
        {
          v124 = *v15;
          *v15 = *v28;
          *v28 = v124;
          if (*v15 < v21->n128_u64[0])
          {
            v125 = *v21;
            *v21 = *v15;
            *v15 = v125;
          }
        }
      }

      else
      {
        if (v36 >= v35)
        {
          v126 = *v21;
          *v21 = *v15;
          *v15 = v126;
          if (v28->n128_u64[0] >= *v15)
          {
            goto LABEL_60;
          }

          v123 = *v15;
          *v15 = *v28;
        }

        else
        {
          v123 = *v21;
          *v21 = *v28;
        }

        *v28 = v123;
      }

LABEL_60:
      v127 = *v12;
      *v12 = *v15;
      result = v127;
      *v15 = v127;
      --a3;
      v19 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v37 = 0;
      v38 = *(v12 + 8);
      do
      {
        v39 = *(v12 + v37 + 16);
        v37 += 16;
      }

      while (v39 < v19);
      v40 = v12 + v37;
      v41 = a2;
      if (v37 == 16)
      {
        v41 = a2;
        do
        {
          if (v40 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v43 >= v19);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v42 >= v19);
      }

      v12 += v37;
      if (v40 < v41)
      {
        v44 = v41;
        do
        {
          v128 = *v12;
          *v12 = *v44;
          result = v128;
          *v44 = v128;
          do
          {
            v45 = *(v12 + 16);
            v12 += 16;
          }

          while (v45 < v19);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v46 >= v19);
        }

        while (v12 < v44);
      }

      v47 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      *(v12 - 16) = v19;
      *(v12 - 8) = v38;
      if (v40 < v41)
      {
LABEL_81:
        sub_1D9DA6320(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v48 = sub_1D9DA7020(a1, (v12 - 16), result);
        if (sub_1D9DA7020(v12, a2, v49))
        {
          a2 = (v12 - 16);
          if (v48)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v48)
        {
          goto LABEL_81;
        }
      }
    }
  }

  if (v12 == a2)
  {
    return result;
  }

  v78 = (v13 - 2) >> 1;
  v79 = v78;
  while (2)
  {
    if (v78 >= v79)
    {
      v81 = (2 * (v79 & 0xFFFFFFFFFFFFFFFLL)) | 1;
      v82 = (v12 + 16 * v81);
      if (2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2 >= v13)
      {
        v85 = (v12 + 16 * v79);
        v86 = *v85;
        if (*v82 >= *v85)
        {
LABEL_144:
          v87 = v85[1];
          while (1)
          {
            v89 = v85;
            v85 = v82;
            *v89 = *v82;
            if (v78 < v81)
            {
              break;
            }

            v90 = (2 * (v81 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v82 = (v12 + 16 * v90);
            v81 = 2 * v81 + 2;
            if (v81 < v13)
            {
              v88 = *v82;
              if (*v82 >= v82[2])
              {
                v81 = v90;
              }

              else
              {
                v88 = v82[2];
                v82 += 2;
              }

              if (v88 < v86)
              {
                break;
              }
            }

            else
            {
              v81 = v90;
              if (*v82 < v86)
              {
                break;
              }
            }
          }

          *v85 = v86;
          v85[1] = v87;
        }
      }

      else
      {
        v83 = v82[2];
        v84 = *v82 >= v83;
        if (*v82 < v83)
        {
          v82 += 2;
        }

        else
        {
          v83 = *v82;
        }

        if (!v84)
        {
          v81 = 2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2;
        }

        v85 = (v12 + 16 * v79);
        v86 = *v85;
        if (v83 >= *v85)
        {
          goto LABEL_144;
        }
      }
    }

    v80 = v79-- <= 0;
    if (!v80)
    {
      continue;
    }

    break;
  }

  do
  {
    v91 = 0;
    v132 = *v12;
    v92 = (v13 - 2) >> 1;
    n128_u64 = v12;
    do
    {
      while (1)
      {
        v97 = &n128_u64[v91];
        v96 = v97 + 1;
        v98 = (2 * v91) | 1;
        v91 = 2 * v91 + 2;
        if (v91 < v13)
        {
          break;
        }

        v91 = v98;
        *n128_u64 = *v96;
        n128_u64 = v97[1].n128_u64;
        if (v98 > v92)
        {
          goto LABEL_162;
        }
      }

      v95 = v97[2].n128_u64[0];
      v94 = v97 + 2;
      if (v94[-1].n128_u64[0] >= v95)
      {
        v91 = v98;
      }

      else
      {
        v96 = v94;
      }

      *n128_u64 = *v96;
      n128_u64 = v96;
    }

    while (v91 <= v92);
LABEL_162:
    if (v96 == --a2)
    {
      result = v132;
      *v96 = v132;
    }

    else
    {
      *v96 = *a2;
      result = v132;
      *a2 = v132;
      v99 = (&v96[1] - v12) >> 4;
      v80 = v99 < 2;
      v100 = v99 - 2;
      if (!v80)
      {
        v101 = v100 >> 1;
        v102 = (v12 + 16 * v101);
        v103 = v96->n128_u64[0];
        if (v102->n128_u64[0] < v96->n128_u64[0])
        {
          v104 = v96->n128_u64[1];
          do
          {
            v105 = v96;
            v96 = v102;
            result = *v102;
            *v105 = *v102;
            if (!v101)
            {
              break;
            }

            v101 = (v101 - 1) >> 1;
            v102 = (v12 + 16 * v101);
          }

          while (v102->n128_u64[0] < v103);
          v96->n128_u64[0] = v103;
          v96->n128_u64[1] = v104;
        }
      }
    }

    v80 = v13-- <= 2;
  }

  while (!v80);
  return result;
}

__n128 sub_1D9DA6E9C(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
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

BOOL sub_1D9DA7020(uint64_t a1, __n128 *a2, __n128 a3)
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
        sub_1D9DA6E9C(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
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

uint64_t sub_1D9DA73A4(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0 && *(a1 + 40))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      v4 = *(*(a1 + 32) + v3);
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
        v4 = *(*(a1 + 32) + v3);
      }

      operator delete(v4);
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 40));
  }

  if (*(a1 + 24))
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}