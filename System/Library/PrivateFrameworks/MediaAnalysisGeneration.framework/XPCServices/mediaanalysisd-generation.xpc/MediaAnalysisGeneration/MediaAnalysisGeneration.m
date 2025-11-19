void sub_100001BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v10 = v8;

  sub_1000020D0(va);
  _Unwind_Resume(a1);
}

const void **sub_1000020D0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100002118(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000023AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  v6 = v4;

  sub_1000020D0(va);
  sub_1000020D0(va1);
  sub_1000020D0(va2);

  _Unwind_Resume(a1);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100002560(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaanalysis.MADAlchemistAnalyzer", v3);
  v2 = qword_100014A00;
  qword_100014A00 = v1;
}

void sub_100002BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose((v41 - 160), 8);

  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002CD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002CEC(uint64_t a1)
{
  v2 = objc_alloc_init(_MADObjCAlchemistService);
  v3 = dispatch_semaphore_create(0);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002E04;
  v11[3] = &unk_100010878;
  v13 = *(a1 + 56);
  v12 = v3;
  v9 = v3;
  LODWORD(v10) = v5;
  [(_MADObjCAlchemistService *)v2 convertAlchemist:v4 focalLengthPX:v6 preset:v7 resolution:v8 client:v11 completion:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_100002E04(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100009034();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[MADAlchemistAnalyzer] Generated alchemist asset", v8, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100003094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_1000020D0(va);
  _Unwind_Resume(a1);
}

void sub_100003618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_1000020D0(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1000037F4(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_10000380C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

Swift::Int sub_100003870()
{
  v1 = *v0;
  sub_100009484();
  sub_100009494(v1);
  return sub_1000094A4();
}

Swift::Int sub_1000038E4()
{
  v1 = *v0;
  sub_100009484();
  sub_100009494(v1);
  return sub_1000094A4();
}

id _MADObjCAlchemistService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _MADObjCAlchemistService.init()()
{
  sub_100009254();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MADObjCAlchemistService();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t type metadata accessor for _MADObjCAlchemistService()
{
  result = qword_100014BA0;
  if (!qword_100014BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unsigned __int8 *sub_100003AB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_100009124();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v76 = 44;
  *(&v76 + 1) = 0xE100000000000000;
  v71 = &v76;

  v12 = sub_10000673C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000081E0, v70, a1, a2, v11);
  if (v12[2] != 2)
  {

    v45 = &enum case for ALCBakingOptions.Resolution.automatic(_:);
    goto LABEL_23;
  }

  v67 = a3;
  v13 = v12[6];
  v14 = v12[7];
  v76 = *(v12 + 2);
  v77 = v13;
  v78 = v14;
  v74 = 123;
  v75 = 0xE100000000000000;
  v72 = 0;
  v73 = 0xE000000000000000;
  v69 = v12;
  sub_100008238();
  sub_10000828C();
  *&v76 = sub_1000093E4();
  *(&v76 + 1) = v15;
  v74 = 125;
  v75 = 0xE100000000000000;
  v72 = 0;
  v73 = 0xE000000000000000;
  v16 = sub_1000093E4();
  v18 = v17;

  *&v76 = v16;
  *(&v76 + 1) = v18;
  sub_100009114();
  v68 = sub_1000093D4();
  v20 = v19;
  v23 = *(v7 + 8);
  v21 = (v7 + 8);
  v22 = v23;
  v23(v10, v6);

  if (v69[2] < 2uLL)
  {
    __break(1u);
LABEL_69:

    goto LABEL_67;
  }

  v65 = *(v69 + 4);
  v66 = v6;
  v24 = v20;
  v25 = v69[10];
  v26 = v69[11];

  v76 = v65;
  v77 = v25;
  v78 = v26;
  v74 = 123;
  v75 = 0xE100000000000000;
  v69 = v21;
  v72 = 0;
  v73 = 0xE000000000000000;
  v27 = sub_1000093E4();
  v29 = v28;

  *&v76 = v27;
  *(&v76 + 1) = v29;
  v74 = 125;
  v75 = 0xE100000000000000;
  v72 = 0;
  v73 = 0xE000000000000000;
  v30 = sub_1000093E4();
  v32 = v31;

  *&v76 = v30;
  *(&v76 + 1) = v32;
  sub_100009114();
  v33 = sub_1000093D4();
  v35 = v34;
  v22(v10, v66);

  v36 = HIBYTE(v24) & 0xF;
  result = v68;
  v38 = v68 & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v39 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    goto LABEL_69;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    LOBYTE(v74) = 0;
    v41 = sub_100006C08(v68, v24, 10);

    if ((v41 & 0x100000000) != 0)
    {
      goto LABEL_67;
    }

LABEL_71:
    v63 = sub_1000041C8(v33, v35);
    if ((v63 & 0x100000000) != 0)
    {
      goto LABEL_73;
    }

    a3 = v67;
    *v67 = v41;
    a3[1] = v63;
    v45 = &enum case for ALCBakingOptions.Resolution.custom(_:);
LABEL_23:
    v46 = *v45;
    v47 = sub_1000091D4();
    (*(*(v47 - 8) + 104))(a3, v46, v47);
LABEL_74:
    sub_1000091D4();
    return (*(*(v47 - 8) + 56))(a3, 0, 1, v47);
  }

  if ((v24 & 0x2000000000000000) == 0)
  {
    if ((v68 & 0x1000000000000000) != 0)
    {
      result = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_100009404();
    }

    v40 = *result;
    if (v40 == 43)
    {
      if (v38 >= 1)
      {
        v36 = v38 - 1;
        if (v38 != 1)
        {
          LODWORD(v41) = 0;
          if (result)
          {
            v51 = result + 1;
            while (1)
            {
              v52 = *v51 - 48;
              if (v52 > 9)
              {
                goto LABEL_65;
              }

              v53 = 10 * v41;
              if ((v53 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_65;
              }

              LODWORD(v41) = v53 + v52;
              if (__CFADD__(v53, v52))
              {
                goto LABEL_65;
              }

              ++v51;
              if (!--v36)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_57;
        }

        goto LABEL_65;
      }

      goto LABEL_78;
    }

    if (v40 != 45)
    {
      if (v38)
      {
        LODWORD(v41) = 0;
        if (result)
        {
          while (1)
          {
            v57 = *result - 48;
            if (v57 > 9)
            {
              goto LABEL_65;
            }

            v58 = 10 * v41;
            if ((v58 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_65;
            }

            LODWORD(v41) = v58 + v57;
            if (__CFADD__(v58, v57))
            {
              goto LABEL_65;
            }

            ++result;
            if (!--v38)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_57;
      }

LABEL_65:
      LODWORD(v41) = 0;
      LOBYTE(v36) = 1;
LABEL_66:
      LOBYTE(v74) = v36;
      v62 = v36;

      if (v62)
      {
LABEL_67:

LABEL_73:
        v64 = enum case for ALCBakingOptions.Resolution.automatic(_:);
        v47 = sub_1000091D4();
        a3 = v67;
        (*(*(v47 - 8) + 104))(v67, v64, v47);
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    if (v38 >= 1)
    {
      v36 = v38 - 1;
      if (v38 != 1)
      {
        LODWORD(v41) = 0;
        if (result)
        {
          v42 = result + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              goto LABEL_65;
            }

            v44 = 10 * v41;
            if ((v44 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_65;
            }

            LODWORD(v41) = v44 - v43;
            if (v44 < v43)
            {
              goto LABEL_65;
            }

            ++v42;
            if (!--v36)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_57:
        LOBYTE(v36) = 0;
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  *&v76 = v68;
  *(&v76 + 1) = v24 & 0xFFFFFFFFFFFFFFLL;
  if (v68 != 43)
  {
    if (v68 != 45)
    {
      if (v36)
      {
        LODWORD(v41) = 0;
        v59 = &v76;
        while (1)
        {
          v60 = *v59 - 48;
          if (v60 > 9)
          {
            break;
          }

          v61 = 10 * v41;
          if ((v61 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v41) = v61 + v60;
          if (__CFADD__(v61, v60))
          {
            break;
          }

          ++v59;
          if (!--v36)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v36)
    {
      if (--v36)
      {
        LODWORD(v41) = 0;
        v48 = &v76 + 1;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          v50 = 10 * v41;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v41) = v50 - v49;
          if (v50 < v49)
          {
            break;
          }

          ++v48;
          if (!--v36)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_77;
  }

  if (v36)
  {
    if (--v36)
    {
      LODWORD(v41) = 0;
      v54 = &v76 + 1;
      while (1)
      {
        v55 = *v54 - 48;
        if (v55 > 9)
        {
          break;
        }

        v56 = 10 * v41;
        if ((v56 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v41) = v56 + v55;
        if (__CFADD__(v56, v55))
        {
          break;
        }

        ++v54;
        if (!--v36)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1000041C8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_100006C08(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_100009404();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000044A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  *(v6 + 72) = a4;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 296) = a5;
  *(v6 + 48) = a1;
  v7 = sub_100009154();
  *(v6 + 88) = v7;
  v8 = *(v7 - 8);
  *(v6 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v10 = sub_100009144();
  *(v6 + 112) = v10;
  v11 = *(v10 - 8);
  *(v6 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  v13 = *(*(sub_100005D04(&qword_100014970, &qword_10000AB50) - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v14 = sub_1000091D4();
  *(v6 + 144) = v14;
  v15 = *(v14 - 8);
  *(v6 + 152) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v17 = *(*(sub_100005D04(&qword_100014978, &qword_10000AB58) - 8) + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v18 = sub_100009234();
  *(v6 + 184) = v18;
  v19 = *(v18 - 8);
  *(v6 + 192) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  v21 = sub_100009214();
  *(v6 + 216) = v21;
  v22 = *(v21 - 8);
  *(v6 + 224) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_100004774, 0, 0);
}

uint64_t sub_100004774()
{
  v1 = MTLCreateSystemDefaultDevice();
  *(v0 + 248) = v1;
  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 192);
    v4 = *(v0 + 176);
    v5 = *(v0 + 56);
    sub_1000092B4();
    sub_100009224();
    v6 = (*(v3 + 48))(v4, 1, v2);
    v7 = *(v0 + 240);
    if (v6 == 1)
    {
      v9 = *(v0 + 192);
      v8 = *(v0 + 200);
      v10 = *(v0 + 184);
      v11 = *(v0 + 80);
      sub_100008A78(*(v0 + 176), &qword_100014978, &qword_10000AB58);
      (*(v9 + 104))(v8, enum case for ALCConfigurationPreset.photosApp(_:), v10);
      sub_100009204();
      v12 = sub_100009244();
      v13 = sub_1000093B4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Use default preset: photosApp", v14, 2u);
      }
    }

    else
    {
      v17 = *(v0 + 200);
      v16 = *(v0 + 208);
      v18 = *(v0 + 184);
      v19 = *(v0 + 192);
      v20 = *(v0 + 80);
      v21 = *(v0 + 56);
      (*(v19 + 32))(v16, *(v0 + 176), v18);
      (*(v19 + 16))(v17, v16, v18);
      sub_100009204();
      v22 = v21;
      v23 = sub_100009244();
      v24 = sub_1000093B4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 56);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v25;
        *v27 = v5;
        v28 = v25;
        _os_log_impl(&_mh_execute_header, v23, v24, "Use preset: %@", v26, 0xCu);
        sub_100008A78(v27, &qword_100014998, &qword_10000AB70);
      }

      v29 = *(v0 + 208);
      v30 = *(v0 + 184);
      v31 = *(v0 + 192);

      (*(v31 + 8))(v29, v30);
    }

    v32 = *(v0 + 144);
    v33 = *(v0 + 152);
    v34 = *(v0 + 136);
    v35 = *(v0 + 64);
    v36 = sub_1000092B4();
    sub_100003AB4(v36, v37, v34);

    if ((*(v33 + 48))(v34, 1, v32) == 1)
    {
      sub_100008A78(*(v0 + 136), &qword_100014970, &qword_10000AB50);
    }

    else
    {
      v38 = *(v0 + 240);
      v40 = *(v0 + 160);
      v39 = *(v0 + 168);
      v41 = *(v0 + 144);
      v42 = *(v0 + 152);
      (*(v42 + 32))(v39, *(v0 + 136), v41);
      (*(v42 + 16))(v40, v39, v41);
      v43 = sub_1000091F4();
      sub_1000091E4();
      v43(v0 + 16, 0);
      (*(v42 + 8))(v39, v41);
    }

    v44 = *(v0 + 80);
    (*(*(v0 + 224) + 16))(*(v0 + 232), *(v0 + 240), *(v0 + 216));
    *(swift_allocObject() + 16) = v44;
    v45 = sub_1000091C4();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v48 = v44;
    *(v0 + 256) = sub_1000091B4();
    v61 = *(v0 + 128);
    v62 = *(v0 + 72);
    sub_100009134();
    v64 = *(v0 + 96);
    v63 = *(v0 + 104);
    v65 = *(v0 + 88);
    if (v62)
    {
      v66 = *(v0 + 72);
      *v63 = sub_1000092B4();
      v63[1] = v67;
      v68 = &enum case for ALCService.ClientName.custom(_:);
    }

    else
    {
      v68 = &enum case for ALCService.ClientName.mediaAnalysis(_:);
    }

    (*(v64 + 104))(v63, *v68, v65);
    v89 = *(v0 + 120);
    v90 = *(v0 + 128);
    v88 = *(v0 + 112);
    v92 = *(v0 + 96);
    v93 = *(v0 + 104);
    v91 = *(v0 + 88);
    v69 = *(v0 + 296);
    sub_100005D04(&qword_100014988, &qword_10000AB60);
    v70 = sub_100005D04(&qword_100014990, &qword_10000AB68);
    v71 = *(*(v70 - 8) + 72);
    v72 = (*(*(v70 - 8) + 80) + 32) & ~*(*(v70 - 8) + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_10000A9E0;
    v74 = v73 + v72;
    v75 = v73 + v72 + *(v70 + 48);
    v76 = enum case for ALCService.GenerationOption.focalLengthPx(_:);
    v77 = sub_1000091A4();
    v78 = *(*(v77 - 8) + 104);
    (v78)(v74, v76, v77);
    *(v75 + 24) = &type metadata for Float;
    *v75 = v69;
    v79 = (v74 + v71 + *(v70 + 48));
    v78();
    v79[3] = v88;
    v80 = sub_100008128(v79);
    (*(v89 + 16))(v80, v90, v88);
    v81 = v74 + 2 * v71 + *(v70 + 48);
    v78();
    *(v81 + 24) = &type metadata for Bool;
    *v81 = 0;
    v82 = (v74 + 3 * v71 + *(v70 + 48));
    v78();
    v82[3] = v91;
    v83 = sub_100008128(v82);
    (*(v92 + 16))(v83, v93, v91);
    v84 = sub_1000079CC(v73);
    *(v0 + 264) = v84;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v85 = *(&async function pointer to dispatch thunk of ALCService.generate(_:with:) + 1);
    v94 = (&async function pointer to dispatch thunk of ALCService.generate(_:with:) + async function pointer to dispatch thunk of ALCService.generate(_:with:));
    v86 = swift_task_alloc();
    *(v0 + 272) = v86;
    *v86 = v0;
    v86[1] = sub_100004FDC;
    v87 = *(v0 + 48);

    return v94(v87, v84);
  }

  else
  {
    sub_10000807C();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    v50 = *(v0 + 232);
    v49 = *(v0 + 240);
    v52 = *(v0 + 200);
    v51 = *(v0 + 208);
    v54 = *(v0 + 168);
    v53 = *(v0 + 176);
    v55 = *(v0 + 160);
    v57 = *(v0 + 128);
    v56 = *(v0 + 136);
    v58 = *(v0 + 104);

    v59 = *(v0 + 8);

    return v59();
  }
}

uint64_t sub_100004FDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(v4 + 280) = a1;
  *(v4 + 288) = v1;

  v7 = *(v3 + 264);

  if (v1)
  {
    v8 = sub_1000053E4;
  }

  else
  {
    v8 = sub_100005118;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100005118(double a1)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = sub_100009C0C(a1);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_100009BE0(v7);
  sub_100009BB4(v8);
  if (v3)
  {
    v9 = v1[35];
    v10 = v1[31];
    v11 = v1[32];
    v12 = v1[28];
    v48 = v1[27];
    v50 = v1[30];
    v13 = v1[15];
    v14 = v1[13];
    v44 = v1[14];
    v46 = v1[16];
    v15 = v1[11];
    v16 = v1[12];

    swift_unknownObjectRelease();
    (*(v16 + 8))(v14, v15);
    (*(v13 + 8))(v46, v44);
    (*(v12 + 8))(v50, v48);
    v18 = v1[29];
    v17 = v1[30];
    v20 = v1[25];
    v19 = v1[26];
    v22 = v1[21];
    v21 = v1[22];
    v23 = v1[20];
    v25 = v1[16];
    v24 = v1[17];
    v26 = v1[13];

    v27 = v1[1];

    return v27();
  }

  else
  {
    v30 = v1[31];
    v29 = v1[32];
    v31 = v1[30];
    v32 = v1[28];
    v41 = v1[27];
    v42 = v1[29];
    v43 = v1[26];
    v45 = v1[25];
    v47 = v1[22];
    v49 = v1[21];
    v51 = v1[20];
    v52 = v1[17];
    v33 = v1[15];
    v39 = v1[14];
    v40 = v1[16];
    v34 = v1[12];
    v35 = v1[13];
    v36 = v1[11];

    swift_unknownObjectRelease();
    (*(v34 + 8))(v35, v36);
    (*(v33 + 8))(v40, v39);
    (*(v32 + 8))(v31, v41);

    v37 = v1[1];
    v38 = v1[35];

    return v37(v38);
  }
}

uint64_t sub_1000053E4()
{
  v2 = v0[31];
  v1 = v0[32];
  v23 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];

  swift_unknownObjectRelease();
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v23, v3);
  v24 = v0[36];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[25];
  v13 = v0[26];
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[20];
  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[13];

  v21 = v0[1];

  return v21();
}

void sub_10000553C(uint64_t a1)
{
  v2 = sub_100009194();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for ALCService.GenerationEvent.progress(_:))
  {
    if (v7 == enum case for ALCService.GenerationEvent.starting(_:))
    {
      v8 = sub_100009244();
      v9 = sub_1000093B4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Generation started";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v7 == enum case for ALCService.GenerationEvent.finished(_:))
    {
      v8 = sub_100009244();
      v9 = sub_1000093B4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Generation finished";
        goto LABEL_8;
      }

LABEL_9:

      return;
    }

    v12 = enum case for ALCService.GenerationEvent.failed(_:);
    v13 = v7;
    v14 = sub_100009244();
    v15 = sub_1000093B4();
    v16 = os_log_type_enabled(v14, v15);
    if (v13 == v12)
    {
      if (v16)
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "\nGeneration failed", v17, 2u);
      }
    }

    else
    {
      if (v16)
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "\nUnknown event encountered!", v18, 2u);
      }

      (*(v3 + 8))(v6, v2);
    }
  }
}

void _MADObjCAlchemistService.convertAlchemist(_:focalLengthPX:preset:resolution:client:completion:)(void *a1, void *a2, void *a3, void *a4, void (*a5)(void, void), void *a6, float a7)
{
  v8 = v7;
  v51 = a3;
  v52 = a5;
  v48 = a4;
  v49 = a1;
  v50 = a2;
  v11 = (*(*(sub_100005D04(&qword_100014920, &qword_10000AA00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v13 = &v48 - v12;
  v14 = sub_100009174();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = (__chkstk_darwin)();
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v48 - v20;
  sub_1000091C4();
  sub_100009184();
  (*(v15 + 104))(v19, enum case for ALCService.Availability.available(_:), v14);
  v22 = sub_100009164();
  v23 = *(v15 + 8);
  v23(v19, v14);
  v23(v21, v14);
  if (v22)
  {
    v24 = sub_1000093A4();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v27 = v49;
    v26 = v50;
    *(v25 + 32) = v8;
    *(v25 + 40) = v27;
    *(v25 + 48) = a7;
    v29 = v51;
    v28 = v52;
    *(v25 + 56) = v26;
    *(v25 + 64) = v29;
    v30 = v48;
    *(v25 + 72) = v48;
    *(v25 + 80) = v28;
    *(v25 + 88) = a6;
    v31 = v30;

    v32 = v8;
    v33 = v27;
    v34 = v26;
    v35 = v29;
    sub_1000060C0(0, 0, v13, &unk_10000AA20, v25);
  }

  else
  {
    v51 = a6;
    v36 = sub_100009244();
    v37 = sub_1000093B4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "\nAlchemist service is not available.\n", v38, 2u);
    }

    sub_100005D04(&qword_100014928, &qword_10000AA08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000A9F0;
    *(inited + 32) = sub_1000092B4();
    *(inited + 40) = v40;
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1000093F4(21);
    v55._object = 0x800000010000B2B0;
    v55._countAndFlagsBits = 0xD000000000000012;
    sub_100009304(v55);
    sub_100009184();
    sub_100009414();
    v23(v21, v14);
    v56._countAndFlagsBits = 46;
    v56._object = 0xE100000000000000;
    sub_100009304(v56);
    v41 = v53;
    v42 = v54;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v41;
    *(inited + 56) = v42;
    sub_100007BB8(inited);
    swift_setDeallocating();
    sub_100008A78(inited + 32, &qword_100014930, &qword_10000AA10);
    v43 = objc_allocWithZone(NSError);
    v44 = sub_1000092A4();
    isa = sub_100009274().super.isa;

    v46 = [v43 initWithDomain:v44 code:3328 userInfo:isa];

    v47 = v46;
    v52(0, v46);
  }
}

uint64_t sub_100005D04(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005D4C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[4] = v18;
  v9[5] = v19;
  v15 = swift_task_alloc();
  v9[6] = v15;
  *v15 = v9;
  v15[1] = sub_100005E24;

  return sub_1000044A4(a6, a7, a8, a9, a1);
}

uint64_t sub_100005E24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_100005FD4;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_100005F4C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100005F4C()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100005FD4()
{
  v0[2] = v0[7];
  sub_100005D04(&qword_1000149D8, &qword_10000ABB0);
  sub_100008C80();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = v0[3];
    v5 = v4;
    v3(0, v4);

    v6 = v0[2];

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_1000060C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100005D04(&qword_100014920, &qword_10000AA00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100008CCC(a3, v26 - v10, &qword_100014920, &qword_10000AA00);
  v12 = sub_1000093A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008A78(v11, &qword_100014920, &qword_10000AA00);
  }

  else
  {
    sub_100009394();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100009384();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000092C4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100008A78(a3, &qword_100014920, &qword_10000AA00);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008A78(a3, &qword_100014920, &qword_10000AA00);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id _MADObjCAlchemistService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MADObjCAlchemistService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000654C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006644;

  return v7(a1);
}

uint64_t sub_100006644()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_10000673C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_100009374();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100006AFC(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100006AFC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_100009354();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1000092F4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1000092F4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_100009374();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100006AFC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_100009374();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100006AFC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100006AFC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1000092F4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_100006AFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005D04(&qword_1000149D0, &qword_10000AB88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_100006C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_100009364();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100007184();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_100009404();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100007184()
{
  v0 = sub_100009374();
  v4 = sub_100007204(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100007204(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000092D4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1000093C4();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000735C(v9, 0);
  v12 = sub_1000073D0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1000092D4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_100009404();
LABEL_4:

  return sub_1000092D4();
}

void *sub_10000735C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100005D04(&qword_1000149C8, &qword_10000AB80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1000073D0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000075F0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100009334();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_100009404();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000075F0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_100009314();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000075F0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100009344();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100009324();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10000766C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000091A4();
  sub_10000819C(&qword_1000149A8);
  v5 = sub_100009284();

  return sub_100007768(a1, v5);
}

unint64_t sub_1000076F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100009484();
  sub_1000092E4();
  v6 = sub_1000094A4();

  return sub_100007914(a1, a2, v6);
}

unint64_t sub_100007768(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1000091A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10000819C(&qword_1000149B0);
      v16 = sub_100009294();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100007914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100009434())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000079CC(uint64_t a1)
{
  v2 = sub_100005D04(&qword_100014990, &qword_10000AB68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100005D04(&qword_1000149A0, &qword_10000AB78);
    v8 = sub_100009424();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100008CCC(v10, v6, &qword_100014990, &qword_10000AB68);
      result = sub_10000766C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1000091A4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_10000818C(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100007BB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005D04(&qword_1000149E8, qword_10000ABB8);
    v3 = sub_100009424();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008CCC(v4, &v13, &qword_100014930, &qword_10000AA10);
      v5 = v13;
      v6 = v14;
      result = sub_1000076F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000818C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100007CEC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100008D3C;

  return sub_100005D4C(v4, v10, v11, v12, v2, v3, v5, v6, v7);
}

unint64_t sub_100007DC8()
{
  result = qword_100014938;
  if (!qword_100014938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014938);
  }

  return result;
}

uint64_t sub_100007E24()
{
  result = sub_100009264();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _MADObjCAlchemistService.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _MADObjCAlchemistService.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for CVBuffer()
{
  if (!qword_100014968)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100014968);
    }
  }
}

unint64_t sub_10000807C()
{
  result = qword_100014980;
  if (!qword_100014980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014980);
  }

  return result;
}

uint64_t sub_1000080D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008108(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_10000553C(a1);
  return 1;
}

uint64_t *sub_100008128(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_10000818C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000819C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000091A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000081E0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100009434() & 1;
  }
}

unint64_t sub_100008238()
{
  result = qword_1000149B8;
  if (!qword_1000149B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000149B8);
  }

  return result;
}

unint64_t sub_10000828C()
{
  result = qword_1000149C0;
  if (!qword_1000149C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000149C0);
  }

  return result;
}

void sub_1000082E4(void *a1, void *a2, void *a3, void *a4, void *a5, void (**a6)(const void *, void, id), float a7)
{
  v46 = a4;
  v47 = a1;
  v48 = a2;
  v49 = a3;
  v10 = sub_100005D04(&qword_100014920, &qword_10000AA00);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v46 - v12;
  v14 = sub_100009174();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v46 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  sub_1000091C4();
  v50 = a6;
  _Block_copy(a6);
  sub_100009184();
  (*(v15 + 104))(v19, enum case for ALCService.Availability.available(_:), v14);
  LOBYTE(a6) = sub_100009164();
  v23 = *(v15 + 8);
  v23(v19, v14);
  v23(v21, v14);
  if (a6)
  {
    v24 = sub_1000093A4();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v27 = v47;
    v26 = v48;
    *(v25 + 32) = a5;
    *(v25 + 40) = v27;
    *(v25 + 48) = a7;
    v28 = v49;
    *(v25 + 56) = v26;
    *(v25 + 64) = v28;
    v29 = v46;
    *(v25 + 72) = v46;
    *(v25 + 80) = sub_10000882C;
    *(v25 + 88) = v22;
    v30 = v29;

    v31 = a5;
    v32 = v27;
    v33 = v26;
    v34 = v28;
    sub_1000060C0(0, 0, v13, &unk_10000AB90, v25);
  }

  else
  {
    v49 = v22;
    v35 = sub_100009244();
    v36 = sub_1000093B4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "\nAlchemist service is not available.\n", v37, 2u);
    }

    sub_100005D04(&qword_100014928, &qword_10000AA08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000A9F0;
    *(inited + 32) = sub_1000092B4();
    *(inited + 40) = v39;
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_1000093F4(21);
    v53._object = 0x800000010000B2B0;
    v53._countAndFlagsBits = 0xD000000000000012;
    sub_100009304(v53);
    sub_100009184();
    sub_100009414();
    v23(v21, v14);
    v54._countAndFlagsBits = 46;
    v54._object = 0xE100000000000000;
    sub_100009304(v54);
    v40 = v51;
    v41 = v52;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v40;
    *(inited + 56) = v41;
    sub_100007BB8(inited);
    swift_setDeallocating();
    sub_100008A78(inited + 32, &qword_100014930, &qword_10000AA10);
    v42 = objc_allocWithZone(NSError);
    v43 = sub_1000092A4();
    isa = sub_100009274().super.isa;

    v45 = [v42 initWithDomain:v43 code:3328 userInfo:isa];

    v50[2](v50, 0, v45);
  }
}

uint64_t sub_1000087F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008844()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000088AC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100008984;

  return sub_100005D4C(v4, v10, v11, v12, v2, v3, v5, v6, v7);
}

uint64_t sub_100008984()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100008A78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005D04(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008AD8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008B10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008D3C;

  return sub_10000654C(a1, v5);
}

uint64_t sub_100008BC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008984;

  return sub_10000654C(a1, v5);
}

unint64_t sub_100008C80()
{
  result = qword_1000149E0;
  if (!qword_1000149E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000149E0);
  }

  return result;
}

uint64_t sub_100008CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005D04(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_100008DF4(uint64_t a1)
{
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[MADGenerationXPCService] Failed to check for client read access to file %s", &v1, 0xCu);
}

void sub_100008E74(uint64_t a1)
{
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[MADGenerationXPCService] Client does not have read access to file %s", &v1, 0xCu);
}

void sub_100008F50()
{
  sub_100003800();
  sub_1000037F4(v1, v2, 5.7779e-34);
  sub_10000380C(&_mh_execute_header, &_os_log_default, v3, "Failed to create resource file cache directory (%@)", v4);
}

void sub_100008F9C()
{
  sub_100003800();
  sub_1000037F4(v1, v2, 5.7779e-34);
  sub_10000380C(&_mh_execute_header, &_os_log_default, v3, "Error writing MXIScene to URL: %@", v4);
}

void sub_100008FE8()
{
  sub_100003800();
  sub_1000037F4(v1, v2, 5.7779e-34);
  sub_10000380C(&_mh_execute_header, &_os_log_default, v3, "Error running Alchemist generation: %@", v4);
}

void sub_100009034()
{
  sub_100003800();
  sub_1000037F4(v1, v2, 5.7779e-34);
  sub_10000380C(&_mh_execute_header, &_os_log_default, v3, "[MADAlchemistAnalyzer] Error converting alchemist: %@", v4);
}

void sub_1000090C8()
{
  sub_100003800();
  sub_1000037F4(v1, v2, 5.7779e-34);
  sub_10000380C(&_mh_execute_header, &_os_log_default, v3, "Error rendering the input image: %@", v4);
}

uint64_t sub_100009BB4(double a1)
{
  if (!atomic_load(dword_1000149F0))
  {
    sub_100009C38(a1);
  }

  return dispatch thunk of SpatialPhotoAnalyzer.analyze(mxiScene:)();
}

uint64_t sub_100009BE0(double a1)
{
  if (!atomic_load(dword_1000149F0))
  {
    sub_100009C38(a1);
  }

  return SpatialPhotoAnalyzer.init()();
}

uint64_t sub_100009C0C(double a1)
{
  if (!atomic_load(dword_1000149F0))
  {
    sub_100009C38(a1);
  }

  return type metadata accessor for SpatialPhotoAnalyzer();
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100009C38(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PhotosSpatialMediaCore.framework/PhotosSpatialMediaCore", 0);
  atomic_store(1u, dword_1000149F0);
  return a1;
}