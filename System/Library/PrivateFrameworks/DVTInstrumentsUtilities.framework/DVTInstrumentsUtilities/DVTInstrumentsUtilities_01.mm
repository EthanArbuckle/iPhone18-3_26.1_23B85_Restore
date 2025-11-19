uint64_t sub_2480AAEB8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_2480ABC1C(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          sub_24808AAEC(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t sub_2480AAF58(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 56));
  while (*(a1 + 120))
  {
    pthread_cond_wait((a1 + 8), (a1 + 56));
  }

  *(a1 + 120) = 3;
  pthread_attr_init(&v5);
  pthread_attr_setschedpolicy(&v5, 2);
  pthread_attr_getschedparam(&v5, &v4);
  v4.sched_priority = 50;
  pthread_attr_setschedparam(&v5, &v4);
  pthread_create(a1, &v5, sub_2480AAF3C, a1);
  pthread_attr_destroy(&v5);
  result = pthread_mutex_unlock((a1 + 56));
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2480AB038(uint64_t a1)
{
  pthread_mutex_lock((a1 + 56));
  while (1)
  {
    v2 = *(a1 + 120);
    if ((v2 - 1) < 3)
    {
      *(a1 + 120) = 4;
      pthread_cond_signal_thread_np((a1 + 8), *a1);
      goto LABEL_5;
    }

    if (!v2)
    {
      break;
    }

LABEL_5:
    pthread_cond_wait((a1 + 8), (a1 + 56));
  }

  pthread_mutex_unlock((a1 + 56));
  v3 = *a1;

  return pthread_join(v3, 0);
}

uint64_t sub_2480AB0BC(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 56));
  if (*(a1 + 256))
  {
    v4 = 0;
  }

  else
  {
    v5 = 1000000000 * *a2 + 1000 * *(a2 + 8);
    v6 = *(a1 + 128);
    v7 = *(a1 + 144) + v6;
    v8 = (1000000000 * *(a1 + 160) + 1000 * *(a1 + 168)) % v7 + v5 / v7 * v7 - v5;
    if (v8 >= v7 / -2)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 144) + v6;
    }

    v10 = v9 + v8;
    if (v8 > v7 / 2)
    {
      v4 = v8 - v7;
    }

    else
    {
      v4 = v10;
    }

    v11 = *(a1 + 520) + v4;
    v12 = -(v11 * 0.01 + v4 * 0.12 + (v4 - *(a1 + 528)) * 0.0015);
    *(a1 + 144) = v12;
    v13 = v6 + v12;
    v14 = *(a1 + 124);
    if (v13 < v6 >> 1 || v13 > v6 + (v6 >> 1))
    {
      v16 = 0;
      v17 = 0;
      *(a1 + 144) = 0;
    }

    else
    {
      v16 = v11 + v4;
      v6 += v12;
      v17 = v4;
    }

    *(a1 + 152) = v6 / v14 / 0x3E8;
    *(a1 + 520) = v16;
    *(a1 + 528) = v17;
    *(a1 + 8 * (*(a1 + 264) % 0x1EuLL) + 280) = v4;
  }

  pthread_mutex_unlock((a1 + 56));
  return v4;
}

uint64_t sub_2480AB244(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 56));
  *(a1 + 136) = a2;

  return pthread_mutex_unlock((a1 + 56));
}

uint64_t sub_2480AB288(uint64_t a1, char a2)
{
  *a1 = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = a2;
  *(a1 + 136) = xmmword_2480B9490;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 241) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 520) = 0u;
  pthread_mutex_init((a1 + 56), 0);
  pthread_cond_init((a1 + 8), 0);
  v3 = *(a1 + 136);
  *(a1 + 128) = v3;
  *(a1 + 152) = v3 / *(a1 + 124) / 0x3E8;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  return a1;
}

void sub_2480AB374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = (v10 + 232);
  sub_24808AA4C(&a10);
  a10 = (v10 + 208);
  sub_24808AA4C(&a10);
  a10 = v12;
  sub_24808AA4C(&a10);
  _Unwind_Resume(a1);
}

void sub_2480AB3CC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2480AB428(exception, a1);
  __cxa_throw(exception, off_278EFA240, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2480AB428(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2480AB45C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2480A333C();
}

void **sub_2480AB4A4(void **a1)
{
  sub_2480AB4D8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2480AB4D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_24808AAEC(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *sub_2480AB52C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2480AB5EC(result, a2);
  }

  return result;
}

void sub_2480AB5EC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2480AB628(a1, a2);
  }

  sub_2480AB3B4();
}

void sub_2480AB628(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_2480A333C();
}

uint64_t sub_2480AB670(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2480AB6F8(result, a4);
  }

  return result;
}

void sub_2480AB6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24808AA4C(&a9);
  _Unwind_Resume(a1);
}

void sub_2480AB6F8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_2480AB45C(a1, a2);
  }

  sub_2480AB3B4();
}

void *sub_2480AB734(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_2480AB7BC(v7);
  return v4;
}

uint64_t sub_2480AB7BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2480AB7F4(a1);
  }

  return a1;
}

void sub_2480AB7F4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_24808AAEC(v3);
    }

    v1 -= 16;
  }
}

void *sub_2480AB838(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_2480ABA1C(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_2480ABA80(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_2480ABA1C(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      sub_2480ABBA4(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_2480AB3B4();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      sub_2480AB45C(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    sub_2480AB4A4(v30);
    return v19;
  }

  return v5;
}

void *sub_2480ABA1C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_2480ABB40(&v11, a2, v7, v6);
}

void *sub_2480ABA80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_2480ABB08(v7);
  return v4;
}

uint64_t sub_2480ABB08(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2480AB7F4(a1);
  }

  return a1;
}

void *sub_2480ABB40(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_24808AAEC(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_2480ABBA4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_24808AAEC(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__int128 *sub_2480ABC1C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_24808AAEC(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_2480ABF14(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    objc_msgSend_finishedWithMode_(v2, v4, @"Failed", v5, v6);

    objc_end_catch();
    JUMPOUT(0x2480ABED4);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2480AC030(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a3;
  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = objc_msgSend_initWithFormat_arguments_(v11, v12, v10, &a9, v13);
  if (objc_msgSend_length(v14, v15, v16, v17, v18))
  {
    v26 = objc_msgSend_dataUsingEncoding_(v14, v19, 4, v20, v21);
    do
    {
      v27 = objc_msgSend_fileDescriptor(a1, v22, v23, v24, v25);
      v28 = v26;
      v33 = objc_msgSend_bytes(v28, v29, v30, v31, v32);
      v38 = objc_msgSend_length(v26, v34, v35, v36, v37);
      v39 = write(v27, v33, v38);
      v44 = v39 > 0;
      if (v39 < 1)
      {
        break;
      }

      v45 = v39;
      if (v39 != objc_msgSend_length(v26, v40, v41, v42, v43))
      {
        v50 = objc_msgSend_length(v26, v46, v47, v48, v49);
        v53 = objc_msgSend_subdataWithRange_(v26, v51, v45, v50 - v45, v52);

        v45 = 0;
        v26 = v53;
      }
    }

    while (v45 != objc_msgSend_length(v26, v46, v47, v48, v49));
  }

  else
  {
    v44 = 1;
  }

  return v44;
}

uint64_t static XRFeatureFlag.internalSignposts.getter()
{
  if (qword_27EE864F8 != -1)
  {
    swift_once();
  }

  v0 = byte_27EE86598;
  v1 = byte_27EE8659A;
  if ([objc_opt_self() isAppleInternal])
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t static XRFeatureFlag._runAsAppleInternal.getter()
{
  if (qword_27EE864F0 != -1)
  {
    swift_once();
  }

  return byte_27EE86562;
}

XRFeatureFlag __swiftcall XRFeatureFlag.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for XRFeatureFlag()
{
  result = qword_27EE86520;
  if (!qword_27EE86520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE86520);
  }

  return result;
}

__n128 sub_2480AC3F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2480AC400(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2480AC420(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for XRTimeRange()
{
  if (!qword_27EE86528)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE86528);
    }
  }
}

uint64_t static FeatureFlag.subscript.getter(uint64_t a1)
{
  v2 = [objc_opt_self() isAppleInternal];
  v3 = 48;
  if (v2)
  {
    v3 = 50;
  }

  return *(a1 + v3);
}

uint64_t FeatureFlag.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FeatureFlag.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FeatureFlag.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

unint64_t FeatureFlag.Source.description.getter()
{
  v1 = *v0;
  v2 = 0x20746C7561666564;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6665642072657375;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t FeatureFlag.Source.hashValue.getter()
{
  v1 = *v0;
  sub_2480B4958();
  MEMORY[0x24C1C51C0](v1);
  return sub_2480B4988();
}

uint64_t sub_2480AC700()
{
  v1 = *v0;
  sub_2480B4958();
  MEMORY[0x24C1C51C0](v1);
  return sub_2480B4988();
}

uint64_t sub_2480AC774()
{
  v1 = *v0;
  sub_2480B4958();
  MEMORY[0x24C1C51C0](v1);
  return sub_2480B4988();
}

unint64_t sub_2480AC808()
{
  v1 = *v0;
  v2 = 0x20746C7561666564;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6665642072657375;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void __swiftcall FeatureFlag.init(_:key:defaultValue:override:description:)(DVTInstrumentsUtilities::FeatureFlag *__return_ptr retstr, Swift::String _, Swift::String_optional key, Swift::Bool defaultValue, Swift::Bool_optional override, Swift::String_optional description)
{
  object = description.value._object;
  countAndFlagsBits = description.value._countAndFlagsBits;
  LODWORD(v45) = defaultValue;
  v8 = key.value._object;
  v9 = key.value._countAndFlagsBits;
  v10 = _._object;
  v11 = _._countAndFlagsBits;
  v13 = sub_2480ACD58(&qword_27EE865A0, &qword_2480B94E0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v46 = v11;
  v47 = v10;
  if (v8)
  {
    v18 = v9;
  }

  else
  {
    v52 = v11;
    v53 = v10;
    sub_2480B46E8();
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_2480ACDA0();
    sub_2480ACDF4();
    v43 = sub_2480ACE48();
    sub_2480B48B8();
    (*(v14 + 8))(v17, v13);
    v52 = 21080;
    v53 = 0xE200000000000000;
    MEMORY[0x24C1C5020](*&v49[0], *(&v49[0] + 1));

    v18 = v52;
    v8 = v53;
  }

  v19 = v45 & 1;
  if (override.value == 2)
  {
    v45 = object;
    v20 = objc_opt_self();

    v21 = [v20 processInfo];
    v22 = [v21 environment];

    v23 = sub_2480B46F8();
    if (*(v23 + 16) && (v24 = sub_2480ADAEC(v18, v8), (v25 & 1) != 0))
    {
      v26 = v24;

      v27 = (*(v23 + 56) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];

      v30 = sub_2480B4748();

      value = [v30 BOOLValue];

      v32 = DVTInstrumentsUtilities_FeatureFlag_Source_environment;
    }

    else
    {

      v33 = objc_opt_self();
      v34 = [v33 standardUserDefaults];
      v35 = sub_2480B4748();
      v36 = [v34 objectForKey_];

      if (v36)
      {
        sub_2480B48F8();
        swift_unknownObjectRelease();
        sub_2480ADB64(v49);
        v37 = [v33 standardUserDefaults];
        v38 = sub_2480B4748();
        value = [v37 BOOLForKey_];

        v39 = sub_2480B4908();
        *&v49[0] = 45;
        *(&v49[0] + 1) = 0xE100000000000000;
        MEMORY[0x24C1C5020](v18, v8);

        MEMORY[0x28223BE20](v40);
        v43 = v49;
        v41 = sub_2480ADBCC(sub_2480ADD30, (&v44 - 4), v39);

        if (v41)
        {
          v32 = DVTInstrumentsUtilities_FeatureFlag_Source_commandLine;
        }

        else
        {
          v32 = DVTInstrumentsUtilities_FeatureFlag_Source_userDefault;
        }
      }

      else
      {

        memset(v49, 0, sizeof(v49));
        sub_2480ADB64(v49);
        v32 = DVTInstrumentsUtilities_FeatureFlag_Source_defaultValue;
        value = v19;
      }
    }

    object = v45;
  }

  else
  {
    value = override.value;
    v32 = DVTInstrumentsUtilities_FeatureFlag_Source_override;
  }

  v42 = v47;
  retstr->name._countAndFlagsBits = v46;
  retstr->name._object = v42;
  retstr->key._countAndFlagsBits = v18;
  retstr->key._object = v8;
  retstr->description.value._countAndFlagsBits = countAndFlagsBits;
  retstr->description.value._object = object;
  retstr->defaultValue = v19;
  retstr->source = v32;
  retstr->_isEnabled = value;
}

uint64_t sub_2480ACD58(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2480ACDA0()
{
  result = qword_27EE865A8;
  if (!qword_27EE865A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE865A8);
  }

  return result;
}

unint64_t sub_2480ACDF4()
{
  result = qword_27EE865B0;
  if (!qword_27EE865B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE865B0);
  }

  return result;
}

unint64_t sub_2480ACE48()
{
  result = qword_27EE865B8;
  if (!qword_27EE865B8)
  {
    sub_2480ACEAC(&qword_27EE865A0, &qword_2480B94E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE865B8);
  }

  return result;
}

uint64_t sub_2480ACEAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t FeatureFlag.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  sub_2480B4798();
  sub_2480B4798();
  sub_2480B4978();
  if (v6)
  {
    sub_2480B4798();
  }

  sub_2480B4978();
  MEMORY[0x24C1C51C0](v8);
  return sub_2480B4978();
}

uint64_t FeatureFlag.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  sub_2480B4958();
  sub_2480B4798();
  sub_2480B4798();
  sub_2480B4978();
  if (v6)
  {
    sub_2480B4798();
  }

  sub_2480B4978();
  MEMORY[0x24C1C51C0](v8);
  sub_2480B4978();
  return sub_2480B4988();
}

uint64_t sub_2480AD080@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_2480AD08C()
{
  sub_2480B4958();
  FeatureFlag.hash(into:)();
  return sub_2480B4988();
}

uint64_t sub_2480AD0D0()
{
  sub_2480B4958();
  FeatureFlag.hash(into:)();
  return sub_2480B4988();
}

void sub_2480AD110()
{
  v0 = sub_2480ACD58(&qword_27EE865A0, &qword_2480B94E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v29[-v3];
  v33 = 0xD000000000000014;
  v34 = 0x80000002480BF150;
  sub_2480B46E8();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2480ACDA0();
  sub_2480ACDF4();
  v28 = sub_2480ACE48();
  sub_2480B48B8();
  (*(v1 + 8))(v4, v0);
  v33 = 21080;
  v34 = 0xE200000000000000;
  MEMORY[0x24C1C5020](*&v30[0], *(&v30[0] + 1));

  v6 = v33;
  v5 = v34;
  v7 = objc_opt_self();

  v8 = [v7 processInfo];
  v9 = [v8 environment];

  v10 = sub_2480B46F8();
  if (*(v10 + 16) && (v11 = sub_2480ADAEC(v6, v5), (v12 & 1) != 0))
  {
    v13 = v11;

    v14 = (*(v10 + 56) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_2480B4748();

    v18 = [v17 BOOLValue];

    v19 = 3;
  }

  else
  {

    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    v22 = sub_2480B4748();
    v23 = [v21 objectForKey_];

    if (v23)
    {
      sub_2480B48F8();
      swift_unknownObjectRelease();
      sub_2480ADB64(v30);
      v24 = [v20 standardUserDefaults];
      v25 = sub_2480B4748();
      v18 = [v24 BOOLForKey_];

      v26 = sub_2480B4908();
      *&v30[0] = 45;
      *(&v30[0] + 1) = 0xE100000000000000;
      MEMORY[0x24C1C5020](v6, v5);

      MEMORY[0x28223BE20](v27);
      v28 = v30;
      LOBYTE(v25) = sub_2480ADBCC(sub_2480AE228, &v29[-32], v26);

      if (v25)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {

      memset(v30, 0, sizeof(v30));
      sub_2480ADB64(v30);
      v19 = 0;
      v18 = 1;
    }
  }

  *&xmmword_27EE86530 = 0xD000000000000014;
  *(&xmmword_27EE86530 + 1) = 0x80000002480BF150;
  qword_27EE86540 = v6;
  unk_27EE86548 = v5;
  *&xmmword_27EE86550 = 0xD00000000000007FLL;
  *(&xmmword_27EE86550 + 1) = 0x80000002480BF170;
  byte_27EE86560 = 1;
  byte_27EE86561 = v19;
  byte_27EE86562 = v18;
}

uint64_t static FeatureFlag.runAsAppleInternal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE864F0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_27EE86540;
  v7[0] = xmmword_27EE86530;
  v7[1] = *&qword_27EE86540;
  v2 = xmmword_27EE86550;
  v8[0] = xmmword_27EE86550;
  v3 = *(&xmmword_27EE86550 + 15);
  *(v8 + 15) = *(&xmmword_27EE86550 + 15);
  *a1 = xmmword_27EE86530;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 47) = v3;
  return sub_2480ADE9C(v7, v6);
}

void sub_2480AD600()
{
  v0 = sub_2480ACD58(&qword_27EE865A0, &qword_2480B94E0);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = &v29[-v3];
  v33 = 0xD000000000000019;
  v34 = 0x80000002480BF1F0;
  sub_2480B46E8();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2480ACDA0();
  sub_2480ACDF4();
  v28 = sub_2480ACE48();
  sub_2480B48B8();
  (*(v1 + 8))(v4, v0);
  v33 = 21080;
  v34 = 0xE200000000000000;
  MEMORY[0x24C1C5020](*&v30[0], *(&v30[0] + 1));

  v6 = v33;
  v5 = v34;
  v7 = objc_opt_self();

  v8 = [v7 processInfo];
  v9 = [v8 environment];

  v10 = sub_2480B46F8();
  if (*(v10 + 16) && (v11 = sub_2480ADAEC(v6, v5), (v12 & 1) != 0))
  {
    v13 = v11;

    v14 = (*(v10 + 56) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_2480B4748();

    v18 = [v17 BOOLValue];

    v19 = 3;
  }

  else
  {

    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    v22 = sub_2480B4748();
    v23 = [v21 objectForKey_];

    if (v23)
    {
      sub_2480B48F8();
      swift_unknownObjectRelease();
      sub_2480ADB64(v30);
      v24 = [v20 standardUserDefaults];
      v25 = sub_2480B4748();
      v18 = [v24 BOOLForKey_];

      v26 = sub_2480B4908();
      *&v30[0] = 45;
      *(&v30[0] + 1) = 0xE100000000000000;
      MEMORY[0x24C1C5020](v6, v5);

      MEMORY[0x28223BE20](v27);
      v28 = v30;
      LOBYTE(v25) = sub_2480ADBCC(sub_2480AE228, &v29[-32], v26);

      if (v25)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {

      memset(v30, 0, sizeof(v30));
      sub_2480ADB64(v30);
      v19 = 0;
      v18 = 0;
    }
  }

  *&xmmword_27EE86568 = 0xD000000000000019;
  *(&xmmword_27EE86568 + 1) = 0x80000002480BF1F0;
  qword_27EE86578 = v6;
  unk_27EE86580 = v5;
  *&xmmword_27EE86588 = 0xD000000000000070;
  *(&xmmword_27EE86588 + 1) = 0x80000002480BF210;
  byte_27EE86598 = 0;
  byte_27EE86599 = v19;
  byte_27EE8659A = v18;
}

uint64_t static FeatureFlag.internalSignposts.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE864F8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_27EE86578;
  v7[0] = xmmword_27EE86568;
  v7[1] = *&qword_27EE86578;
  v2 = xmmword_27EE86588;
  v8[0] = xmmword_27EE86588;
  v3 = *(&xmmword_27EE86588 + 15);
  *(v8 + 15) = *(&xmmword_27EE86588 + 15);
  *a1 = xmmword_27EE86568;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 47) = v3;
  return sub_2480ADE9C(v7, v6);
}

unint64_t sub_2480ADAEC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2480B4958();
  sub_2480B4798();
  v6 = sub_2480B4988();

  return sub_2480ADC78(a1, a2, v6);
}

uint64_t sub_2480ADB64(uint64_t a1)
{
  v2 = sub_2480ACD58(&qword_27EE865C0, &qword_2480B94E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2480ADBCC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_2480ADC78(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2480B4948())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s23DVTInstrumentsUtilities11FeatureFlagV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v16 = *(a2 + 49);
  v17 = *(a1 + 49);
  v14 = *(a2 + 50);
  v15 = *(a1 + 50);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_2480B4948() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_2480B4948() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v9)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!v9)
  {
    return 0;
  }

  if (v3 == v10 && v5 == v9)
  {
    result = 0;
    if (v6 != v11)
    {
      return result;
    }

    goto LABEL_18;
  }

  v13 = sub_2480B4948();
  result = 0;
  if ((v13 & 1) == 0)
  {
    return result;
  }

LABEL_17:
  if (v6 != v11)
  {
    return result;
  }

LABEL_18:
  if (v17 == v16)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

unint64_t sub_2480ADED8()
{
  result = qword_27EE865C8;
  if (!qword_27EE865C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE865C8);
  }

  return result;
}

unint64_t sub_2480ADF3C()
{
  result = qword_27EE865D0;
  if (!qword_27EE865D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE865D0);
  }

  return result;
}

__n128 sub_2480ADF90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2480ADFAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2480ADFF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlag.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlag.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2480AE1C8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2480B4948() & 1;
  }
}

uint64_t sub_2480AE244()
{
  if (qword_27EE86518 != -1)
  {
    swift_once();
  }

  v0 = off_27EE86600;
  if (*(off_27EE86600 + 2) && (v1 = sub_2480ADAEC(0x49656C7070417349, 0xEF6C616E7265746ELL), (v2 & 1) != 0))
  {
    sub_2480AEC74(v0[7] + 32 * v1, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_2480ACD58(&qword_27EE86618, &qword_2480B97A0);
  result = swift_dynamicCast();
  byte_27EE865D8 = result & v4;
  return result;
}

uint64_t sub_2480AE32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EE86518 != -1)
  {
    v8 = a1;
    v9 = a2;
    swift_once();
    a1 = v8;
    a2 = v9;
  }

  v4 = off_27EE86600;
  if (*(off_27EE86600 + 2) && (v5 = sub_2480ADAEC(a1, a2), (v6 & 1) != 0))
  {
    sub_2480AEC74(v4[7] + 32 * v5, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_2480ACD58(&qword_27EE86618, &qword_2480B97A0);
  sub_2480ACD58(&qword_27EE86620, &qword_2480B97A8);
  if (swift_dynamicCast())
  {
    return v10;
  }

  return a3;
}

uint64_t static XRInternalizedSettingsStore.appleInternal.getter()
{
  if (qword_27EE86500 != -1)
  {
    swift_once();
  }

  return byte_27EE865D8;
}

uint64_t sub_2480AE480()
{
  result = sub_2480AE4F4(0x53736C6F626D7953, 0xEC00000074656568, 0xD000000000000012, 0x80000002480BF2B0, 0xD000000000000086);
  qword_27EE865E0 = result;
  *algn_27EE865E8 = v1;
  return result;
}

uint64_t sub_2480AE4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE86518 != -1)
  {
    v14 = a1;
    v15 = a2;
    swift_once();
    a1 = v14;
    a2 = v15;
  }

  v8 = off_27EE86600;
  if (*(off_27EE86600 + 2))
  {
    v9 = sub_2480ADAEC(a1, a2);
    if (v10)
    {
      sub_2480AEC74(v8[7] + 32 * v9, v17);
      sub_2480ACD58(&qword_27EE86628, &qword_2480B97B0);
      sub_2480ACD58(&qword_27EE86620, &qword_2480B97A8);
      if (swift_dynamicCast())
      {
        if (*(v16 + 16))
        {
          v11 = sub_2480ADAEC(a3, a4);
          if (v12)
          {
            sub_2480AEC74(*(v16 + 56) + 32 * v11, v17);

            goto LABEL_11;
          }
        }
      }
    }
  }

  memset(v17, 0, sizeof(v17));
LABEL_11:
  sub_2480ACD58(&qword_27EE865C0, &qword_2480B94E8);
  if (swift_dynamicCast())
  {
    return v16;
  }

  return a5;
}

uint64_t static XRInternalizedSettingsStore.symbolsPermissionError_iOS.getter()
{
  if (qword_27EE86508 != -1)
  {
    swift_once();
  }

  v0 = qword_27EE865E0;

  return v0;
}

uint64_t sub_2480AE6E8()
{
  v0 = sub_2480AEB64(MEMORY[0x277D84F90]);
  v1 = sub_2480AE32C(0xD00000000000001ALL, 0x80000002480B9750, v0);

  return sub_2480AE75C(v1, &qword_27EE865F0);
}

uint64_t sub_2480AE75C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_2480ADAEC(0x65446E69616D6F44, 0xEE0073746C756166);
    if (v5)
    {
      sub_2480AEC74(*(a1 + 56) + 32 * v4, v10);
      sub_2480ACD58(&qword_27EE86608, "Rz");
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v6 = sub_2480ADAEC(0xD000000000000010, 0x80000002480BF290), (v7 & 1) != 0))
        {
          sub_2480AEC74(*(a1 + 56) + 32 * v6, v10);

          sub_2480ACD58(&qword_27EE86610, "Xz");
          result = swift_dynamicCast();
          if (result)
          {
            *a2 = v9;
            a2[1] = v9;
            return result;
          }
        }

        else
        {
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t static XRInternalizedSettingsStore.symbolicationModernization.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EE86510 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27EE865F0;
  v3 = *algn_27EE865F8;
  *a1 = qword_27EE865F0;
  a1[1] = v3;

  return sub_2480AE918(v2);
}

uint64_t sub_2480AE918(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XRInternalizedSettingsStore(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for XRInternalizedSettingsStore(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2480AEA50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2480AEA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2480AEAE4()
{
  v0 = [objc_opt_self() internalizedSettings];
  sub_2480ACD58(&qword_27EE86628, &qword_2480B97B0);
  v1 = sub_2480B46F8();

  off_27EE86600 = v1;
}

unint64_t sub_2480AEB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2480ACD58(&qword_27EE86630, &qword_2480B97B8);
    v3 = sub_2480B4918();
    v4 = a1 + 32;

    while (1)
    {
      sub_2480AECD0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2480ADAEC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2480AED40(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2480AEC74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2480AECD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480ACD58(&qword_27EE86638, &qword_2480B97C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2480AED40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

BOOL static XRTimeRange.== infix(_:_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 - 1;
  v5 = -a2 < a1 || a2 == 0;
  v6 = v4 + a2;
  if (v5)
  {
    v6 = -1;
  }

  v7 = -a4 < a1 || a4 == 0;
  v8 = v4 + a4;
  if (v7)
  {
    v8 = -1;
  }

  v9 = v6 == v8;
  return a1 == a3 && v9;
}

BOOL sub_2480AED90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 > -a2 || a2 == 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = a2 + a1 - 1;
  }

  if (a1 > -a4 || a4 == 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = a4 + a1 - 1;
  }

  v8 = v5 == v7;
  return a1 == a3 && v8;
}

uint64_t XRTimeRange.actualStart.getter(uint64_t result)
{
  if (result == -1)
  {
    return 0;
  }

  return result;
}

uint64_t XRTimeRange.actualLength.getter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v2 = a2;
  }

  if (a1 == -1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t Duration.truncatedNanoseconds.getter()
{
  result = sub_2480B49B8();
  v1 = 1000000000 * result;
  if ((result * 1000000000) >> 64 != (1000000000 * result) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2480B49B8();
  result = v1 + v2 / 1000000000;
  if (__OFADD__(v1, v2 / 1000000000))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t StringProtocol.kebabCaseToWords<>()(uint64_t a1, uint64_t a2)
{
  v4[0] = 45;
  v4[1] = 0xE100000000000000;
  return sub_2480B111C(v4, 0x7FFFFFFFFFFFFFFFLL, 1, v2, a1, *(*(a2 + 8) + 8), MEMORY[0x277D835C8]);
}

uint64_t sub_2480AEF2C(uint64_t a1, unint64_t a2)
{
  v63 = sub_2480B4638();
  v5 = *(v63 - 8);
  v6 = *(v5 + 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68[0] = a1;
  v68[1] = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2480B9800;
    v18 = sub_2480B4818();
    result = v17;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    *(v17 + 48) = v20;
    *(v17 + 56) = v21;
    return result;
  }

  v58 = a2;
  result = sub_2480AFBA4(a1, a2);
  if (!v10)
  {
    __break(1u);
    return result;
  }

  v11 = sub_2480B4708();

  if (v11)
  {
    v64 = a1;
    v65 = v58;

    v12 = sub_2480B4808();
    v64 = 97;
    v65 = 0xE100000000000000;
    MEMORY[0x24C1C5020](v12);

    v13 = sub_2480AEF2C(v64, v65);

    result = v13;
    v14 = *(v13 + 16);
    if (v14)
    {
      sub_2480B0F50(v13, v13 + 32, 1, (2 * v14) | 1);
      v16 = v15;

      return v16;
    }

    return result;
  }

  v22 = v58;
  v23 = sub_2480B47A8();
  v24 = 7;
  if (((v22 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v24 = 11;
  }

  v60 = 4 * v8;
  if (4 * v8 < v23 >> 14)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
    v61 = (v5 + 8);
    v5 = MEMORY[0x277D84F90];
    v11 = 15;
    v2 = (v24 | (v8 << 16));
    while (1)
    {
      v25 = a1;
      v64 = sub_2480B4818();
      v65 = v26;
      v66 = v27;
      v67 = v28;
      v29 = v62;
      sub_2480B4628();
      sub_2480B1234();
      v30 = sub_2480B48E8();
      v32 = v31;
      v33 = *v61;
      (*v61)(v29, v63);

      if (v32)
      {
        v51 = v11 >> 14;
        goto LABEL_31;
      }

      v59 = v33;
      if (v30 >> 14 < v11 >> 14)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2480B0AE8(0, *(v5 + 2) + 1, 1, v5);
      }

      v35 = *(v5 + 2);
      v34 = *(v5 + 3);
      if (v35 >= v34 >> 1)
      {
        v5 = sub_2480B0AE8((v34 > 1), v35 + 1, 1, v5);
      }

      *(v5 + 2) = v35 + 1;
      v36 = &v5[16 * v35];
      *(v36 + 4) = v11;
      *(v36 + 5) = v30;
      if (v60 < v30 >> 14)
      {
        goto LABEL_38;
      }

      v57 = v30 >> 14;
      v37 = v5;
      v5 = v2;
      a1 = v25;
      v2 = v58;
      v64 = sub_2480B4818();
      v65 = v38;
      v66 = v39;
      v67 = v40;
      v41 = v62;
      sub_2480B4618();
      v42 = sub_2480B48E8();
      v44 = v43;
      v11 = v45;
      v59(v41, v63);

      if (v11)
      {
        break;
      }

      if ((sub_2480B47A8() ^ v42) < 0x4000)
      {
        v2 = v5;
        v5 = v37;
      }

      else
      {
        v46 = sub_2480B47B8();
        if (v57 > v46 >> 14)
        {
          goto LABEL_40;
        }

        v2 = v5;
        v5 = v37;
        v48 = *(v37 + 2);
        v47 = *(v37 + 3);
        if (v48 >= v47 >> 1)
        {
          v50 = v46;
          v5 = sub_2480B0AE8((v47 > 1), v48 + 1, 1, v5);
          v46 = v50;
        }

        *(v5 + 2) = v48 + 1;
        v49 = &v5[16 * v48];
        *(v49 + 4) = v30;
        *(v49 + 5) = v46;
        v30 = v46;
      }

      v11 = v30;
      if (v60 < v44 >> 14)
      {
        goto LABEL_39;
      }
    }

    v11 = v30;
    v2 = v5;
    v5 = v37;
    v51 = v57;
LABEL_31:
    if (v60 < v51)
    {
      goto LABEL_42;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_33;
    }
  }

  isUniquelyReferenced_nonNull_native = sub_2480B0AE8(0, *(v5 + 2) + 1, 1, v5);
  v5 = isUniquelyReferenced_nonNull_native;
LABEL_33:
  v54 = *(v5 + 2);
  v53 = *(v5 + 3);
  if (v54 >= v53 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_2480B0AE8((v53 > 1), v54 + 1, 1, v5);
    v5 = isUniquelyReferenced_nonNull_native;
  }

  *(v5 + 2) = v54 + 1;
  v55 = &v5[16 * v54];
  *(v55 + 4) = v11;
  *(v55 + 5) = v2;
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  *(&v57 - 2) = v68;
  v56 = sub_2480AFBEC(sub_2480B15A4, (&v57 - 4), v5);

  return v56;
}

uint64_t StringProtocol.camelCaseToWords<>()(uint64_t a1, uint64_t a2)
{
  v63 = sub_2480B4638();
  v5 = *(v63 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v63);
  v62 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a2 + 8);
  v13 = *(v53 + 8);
  v14 = a1;
  if (sub_2480B4858())
  {
    sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2480B9800;
    sub_2480B4898();
    return v15;
  }

  v52 = a2;
  v57 = v13;
  result = sub_2480B4878();
  if (*(&v67 + 1))
  {
    v17 = sub_2480B4708();

    if (v17)
    {
      (*(v9 + 16))(v12, v2, a1);
      v18 = *(v52 + 40);
      v19 = *(v57 + 8);
      v20 = sub_2480B4808();
      *&v67 = 97;
      *(&v67 + 1) = 0xE100000000000000;
      MEMORY[0x24C1C5020](v20);

      v15 = sub_2480AEF2C(v67, *(&v67 + 1));

      v21 = *(v15 + 16);
      if (v21)
      {
        sub_2480B0F50(v15, v15 + 32, 1, (2 * v21) | 1);
        v23 = v22;

        return v23;
      }

      return v15;
    }

    sub_2480B4838();
    v24 = v70;
    *&v64 = v70;
    sub_2480B4848();
    v25 = v67;
    sub_2480B4868();
    v26 = v64;
    v27 = v64 >> 14;
    if (v64 >> 14 < v25 >> 14)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    else
    {
      v61 = (v5 + 8);
      v12 = MEMORY[0x277D84F90];
      v55 = v64;
      v56 = v14;
      v54 = v64 >> 14;
      while (1)
      {
        *&v64 = v25;
        *(&v64 + 1) = v26;
        v25 = v2;
        sub_2480B48A8();
        v64 = v67;
        v65 = v68;
        v66 = v69;
        v28 = v62;
        sub_2480B4628();
        v29 = sub_2480B1234();
        v30 = sub_2480B48E8();
        v32 = v31;
        v60 = *v61;
        v60(v28, v63);

        if (v32)
        {
          v33 = v24 >> 14;
          goto LABEL_26;
        }

        v59 = v29;
        v33 = v30 >> 14;
        if (v30 >> 14 < v24 >> 14)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2480B0AE8(0, *(v12 + 2) + 1, 1, v12);
        }

        v35 = *(v12 + 2);
        v34 = *(v12 + 3);
        if (v35 >= v34 >> 1)
        {
          v12 = sub_2480B0AE8((v34 > 1), v35 + 1, 1, v12);
        }

        *(v12 + 2) = v35 + 1;
        v36 = &v12[16 * v35];
        *(v36 + 4) = v24;
        *(v36 + 5) = v30;
        if (v27 < v33)
        {
          goto LABEL_33;
        }

        v58 = v12;
        *&v64 = v30;
        *(&v64 + 1) = v26;
        v26 = v25;
        sub_2480B48A8();
        v24 = v69;
        v64 = v67;
        v65 = v68;
        v66 = v69;
        v37 = v62;
        sub_2480B4618();
        v38 = sub_2480B48E8();
        v25 = v39;
        v41 = v40;
        v60(v37, v63);

        if (v41)
        {
          break;
        }

        *&v64 = v30;
        sub_2480B4848();
        if ((v67 ^ v38) < 0x4000)
        {
          v2 = v26;
          v27 = v54;
          v26 = v55;
          v12 = v58;
        }

        else
        {
          *&v64 = v38;
          v2 = v26;
          sub_2480B4718();
          v42 = v67;
          v12 = v58;
          if (v30 >> 14 > v67 >> 14)
          {
            goto LABEL_35;
          }

          v44 = *(v58 + 2);
          v43 = *(v58 + 3);
          if (v44 >= v43 >> 1)
          {
            v12 = sub_2480B0AE8((v43 > 1), v44 + 1, 1, v58);
          }

          v27 = v54;
          v26 = v55;
          *(v12 + 2) = v44 + 1;
          v45 = &v12[16 * v44];
          *(v45 + 4) = v30;
          *(v45 + 5) = v42;
          v30 = v42;
        }

        v24 = v30;
        if (v27 < v25 >> 14)
        {
          goto LABEL_34;
        }
      }

      v24 = v30;
      v25 = v26;
      v27 = v54;
      v26 = v55;
      v12 = v58;
LABEL_26:
      if (v27 < v33)
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }
    }

    isUniquelyReferenced_nonNull_native = sub_2480B0AE8(0, *(v12 + 2) + 1, 1, v12);
    v12 = isUniquelyReferenced_nonNull_native;
LABEL_28:
    v48 = *(v12 + 2);
    v47 = *(v12 + 3);
    if (v48 >= v47 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_2480B0AE8((v47 > 1), v48 + 1, 1, v12);
      v12 = isUniquelyReferenced_nonNull_native;
    }

    *(v12 + 2) = v48 + 1;
    v49 = &v12[16 * v48];
    *(v49 + 4) = v24;
    *(v49 + 5) = v26;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v50 = v52;
    *(&v51 - 4) = v56;
    *(&v51 - 3) = v50;
    *(&v51 - 2) = v25;
    v15 = sub_2480AFBEC(sub_2480B1288, (&v51 - 6), v12);

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_2480AFBA4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_2480B47E8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2480AFBEC(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v21 = MEMORY[0x277D84F90];
  sub_2480B0CF8(0, v4, 0);
  v5 = v21;
  for (i = (a3 + 32); ; ++i)
  {
    v17 = *i;
    a1(&v18, &v17);
    if (v3)
    {
      break;
    }

    v9 = v18;
    v10 = v19;
    v11 = v20;
    v21 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      v16 = v18;
      sub_2480B0CF8((v12 > 1), v13 + 1, 1);
      v9 = v16;
      v5 = v21;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 32 * v13;
    *(v14 + 32) = v9;
    *(v14 + 48) = v10;
    *(v14 + 56) = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t String.pluralized.getter(uint64_t a1)
{
  v2 = sub_2480B4678();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v50 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2480ACD58(&qword_27EE86650, &qword_2480B9818);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v46 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = v42 - v9;
  v10 = sub_2480B46D8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2480B4698();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v45 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v42 - v17;
  v19 = sub_2480ACD58(&qword_27EE86658, &qword_2480B9820);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v42 - v21;
  v23 = sub_2480B45F8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_2480B4658();
  v43 = *(v25 - 8);
  v26 = *(v43 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  if (sub_2480B4768() == 1868983913 && v30 == 0xE400000000000000)
  {
  }

  else
  {
    v31 = sub_2480B4948();

    if ((v31 & 1) == 0)
    {
      sub_2480B45E8();
      v32 = *MEMORY[0x277CC8648];
      v33 = sub_2480B45C8();
      v34 = *(v33 - 8);
      v42[1] = v2;
      v35 = v34;
      (*(v34 + 104))(v22, v32, v33);
      (*(v35 + 56))(v22, 0, 1, v33);
      sub_2480B45D8();
      sub_2480B4648();

      sub_2480B46C8();
      sub_2480B46A8();
      v36 = v43;
      v37 = v47;
      (*(v43 + 16))(v47, v28, v25);
      (*(v36 + 56))(v37, 0, 1, v25);
      sub_2480B12D4(v37, v46);
      sub_2480B1344();
      sub_2480B46B8();
      sub_2480B1398(v37);
      v38 = v45;
      sub_2480B4688();
      sub_2480B4668();
      v39 = v49;
      v40 = *(v48 + 8);
      v40(v38, v49);
      sub_2480B1400();
      v29 = sub_2480B47F8();
      v40(v18, v39);
      (*(v36 + 8))(v28, v25);
      return v29;
    }
  }

  return v29;
}

unint64_t Array<A>.toTitleCase()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v40 = MEMORY[0x277D84F90];
    sub_2480B0D18(0, v1, 0);
    v3 = v40;
    v35 = a1 + 32;
    v34 = v1;
    sub_2480ACD58(&qword_27EE86670, &qword_2480B9828);
    v4 = 0;
    while (1)
    {
      v39 = v3;
      v5 = (v35 + 32 * v4);
      v37 = v5[1];
      v38 = *v5;
      v6 = v5[3];
      v36 = v5[2];
      v7 = sub_2480B4918();

      v8 = &unk_285A38240;
      v9 = 11;
      do
      {
        v11 = *(v8 - 3);
        v10 = *(v8 - 2);
        v13 = *(v8 - 1);
        v12 = *v8;

        result = sub_2480ADAEC(v11, v10);
        if (v15)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v16 = (v7[6] + 16 * result);
        *v16 = v11;
        v16[1] = v10;
        v17 = (v7[7] + 16 * result);
        *v17 = v13;
        v17[1] = v12;
        v18 = v7[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_18;
        }

        v7[2] = v20;
        v8 += 4;
        --v9;
      }

      while (v9);

      sub_2480ACD58(&qword_27EE86678, &qword_2480B9830);
      swift_arrayDestroy();
      v21 = sub_2480B48C8();
      if (!v7[2])
      {
        break;
      }

      v23 = sub_2480ADAEC(v21, v22);
      v25 = v24;

      if ((v25 & 1) == 0)
      {

        goto LABEL_12;
      }

      v26 = (v7[7] + 16 * v23);
      v27 = *v26;
      v28 = v26[1];

LABEL_13:
      v3 = v39;
      v31 = *(v39 + 16);
      v30 = *(v39 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2480B0D18((v30 > 1), v31 + 1, 1);
        v3 = v39;
      }

      ++v4;
      *(v3 + 16) = v31 + 1;
      v32 = v3 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v28;
      if (v4 == v34)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    sub_2480B1234();
    v27 = sub_2480B48D8();
    v28 = v29;

    goto LABEL_13;
  }

LABEL_16:
  sub_2480ACD58(&qword_27EE86610, "Xz");
  sub_2480B1458(&qword_27EE86680, &qword_27EE86610, "Xz");
  v33 = sub_2480B4728();

  return v33;
}

uint64_t Array<A>.toKebabCase()()
{
  sub_2480ACD58(&qword_27EE86688, &qword_2480B9838);
  sub_2480B1458(&qword_27EE86690, &qword_27EE86688, &qword_2480B9838);
  sub_2480B1234();
  sub_2480B4828();
  v0 = sub_2480B4768();

  return v0;
}

uint64_t Array<A>.pluralizeLast()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >= 2)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = (a1 + 32 * v2);
    v5 = *v4;
    v6 = v4[1];
    v8 = v4[2];
    v7 = v4[3];
    sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2480B9800;

    v10 = MEMORY[0x24C1C4FE0](v5, v6, v8, v7);
    String.pluralized.getter(v10);

    v11 = sub_2480B4818();
    v13 = v12;
    v15 = v14;
    v17 = v16;

    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
    *(v9 + 48) = v15;
    *(v9 + 56) = v17;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v19 = *(v9 + 16);
  v20 = __OFADD__(v19, v3);
  v21 = v19 + v3;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    v23 = sub_2480B0BEC(0, v21 & ~(v21 >> 63), 0, MEMORY[0x277D84F90]);
    v22 = swift_unknownObjectRetain();
    sub_2480B14A0(v22, a1 + 32, 0, (2 * v3) | 1);
    swift_unknownObjectRelease();
    sub_2480B1028(v9);
    swift_unknownObjectRelease();
    return v23;
  }

  return result;
}

unint64_t sub_2480B0814(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  v34 = a2 + 32;
  v35 = *(a2 + 16);
  while (1)
  {
    v5 = (v4 + 32 * v3);
    v6 = v5[3];
    ++v3;
    if (a1)
    {
      break;
    }

    v29 = v5[3];

    v30 = sub_2480B48C8();
    v32 = v31;

    MEMORY[0x24C1C5020](v30, v32);
LABEL_16:

    if (v3 == v2)
    {
      return 0;
    }

    a1 = 1;
  }

  v38 = v3;
  v39 = *v5;
  v36 = v5[1];
  v37 = v5[2];
  sub_2480ACD58(&qword_27EE86670, &qword_2480B9828);
  v7 = sub_2480B4918();

  v8 = &unk_285A38240;
  v9 = 11;
  while (1)
  {
    v11 = *(v8 - 3);
    v10 = *(v8 - 2);
    v13 = *(v8 - 1);
    v12 = *v8;

    result = sub_2480ADAEC(v11, v10);
    if (v15)
    {
      break;
    }

    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v16 = (v7[6] + 16 * result);
    *v16 = v11;
    v16[1] = v10;
    v17 = (v7[7] + 16 * result);
    *v17 = v13;
    v17[1] = v12;
    v18 = v7[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v7[2] = v20;
    v8 += 4;
    if (!--v9)
    {

      sub_2480ACD58(&qword_27EE86678, &qword_2480B9830);
      swift_arrayDestroy();
      v21 = sub_2480B48C8();
      if (v7[2])
      {
        v23 = sub_2480ADAEC(v21, v22);
        v25 = v24;

        v3 = v38;
        v4 = v34;
        if (v25)
        {
          v26 = (v7[7] + 16 * v23);
          v27 = *v26;
          v28 = v26[1];

LABEL_15:
          v2 = v35;
          MEMORY[0x24C1C5020](v27, v28);
          goto LABEL_16;
        }
      }

      else
      {

        v3 = v38;
        v4 = v34;
      }

      sub_2480B1234();
      v27 = sub_2480B48D8();
      v28 = v33;

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

char *sub_2480B0AE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480ACD58(&qword_27EE866A0, &qword_2480B9850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2480B0BEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2480B0CF8(char *a1, int64_t a2, char a3)
{
  result = sub_2480B0D38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2480B0D18(char *a1, int64_t a2, char a3)
{
  result = sub_2480B0E44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2480B0D38(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2480B0E44(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480ACD58(&qword_27EE86698, &qword_2480B9848);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2480B0F50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2480ACD58(&qword_27EE86648, &qword_2480B9810);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2480B1028(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2480B0BEC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2480B111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v13 + 16))(&v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v14, v15);
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a1;
  return sub_2480B4888();
}

unint64_t sub_2480B1234()
{
  result = qword_27EE86640;
  if (!qword_27EE86640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE86640);
  }

  return result;
}

uint64_t sub_2480B1288(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v7 = *a1;
  v5 = *(*(v3 + 8) + 8);
  return sub_2480B48A8();
}

uint64_t sub_2480B12D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480ACD58(&qword_27EE86650, &qword_2480B9818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2480B1344()
{
  result = qword_27EE86660;
  if (!qword_27EE86660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE86660);
  }

  return result;
}

uint64_t sub_2480B1398(uint64_t a1)
{
  v2 = sub_2480ACD58(&qword_27EE86650, &qword_2480B9818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2480B1400()
{
  result = qword_27EE86668;
  if (!qword_27EE86668)
  {
    sub_2480B4678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE86668);
  }

  return result;
}

uint64_t sub_2480B1458(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2480ACEAC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2480B14A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v13 = v8 + v6;
      }

      else
      {
        v13 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_2480B0BEC(isUniquelyReferenced_nonNull_native, v13, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v14 = *(v7 + 2);
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (!v15)
  {
    *(v7 + 2) = v16;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_2480B15A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *a1;
  v5 = a1[1];
  v7 = *v4;
  v8 = v4[1];
  result = sub_2480B4818();
  *a2 = result;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  return result;
}

uint64_t sub_2480B15E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v2 + 8);
  swift_getAssociatedTypeWitness();
  return sub_2480B4738() & 1;
}

uint64_t XREngineeringTypeID.attributes.getter(unsigned __int16 a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = XR_ENGINEERING_ATTRIBUTES_BY_ETYPE;
  memset(&v3[1], 0, 32);
  v3[3] = unk_2480B8A78;
  v3[4] = xmmword_2480B8A88;
  v3[5] = unk_2480B8A98;
  v3[6] = xmmword_2480B8AA8;
  v3[7] = unk_2480B8AB8;
  v3[8] = xmmword_2480B8AC8;
  v3[9] = unk_2480B8AD8;
  v3[10] = xmmword_2480B8AE8;
  v3[11] = unk_2480B8AF8;
  v3[12] = xmmword_2480B8B08;
  v3[13] = unk_2480B8B18;
  v3[14] = xmmword_2480B8B28;
  v3[15] = unk_2480B8B38;
  v3[16] = xmmword_2480B8B48;
  v3[17] = unk_2480B8B58;
  v3[18] = xmmword_2480B8B68;
  v3[19] = unk_2480B8B78;
  v3[20] = xmmword_2480B8B88;
  v3[21] = unk_2480B8B98;
  v3[22] = xmmword_2480B8BA8;
  v3[23] = unk_2480B8BB8;
  v3[24] = xmmword_2480B8BC8;
  v3[25] = unk_2480B8BD8;
  v3[26] = xmmword_2480B8BE8;
  v3[27] = unk_2480B8BF8;
  v3[28] = xmmword_2480B8C08;
  v3[29] = unk_2480B8C18;
  v3[30] = xmmword_2480B8C28;
  v3[31] = unk_2480B8C38;
  v3[32] = xmmword_2480B8C48;
  v3[33] = unk_2480B8C58;
  v3[34] = xmmword_2480B8C68;
  v3[35] = unk_2480B8C78;
  v3[36] = xmmword_2480B8C88;
  v3[37] = unk_2480B8C98;
  v3[38] = xmmword_2480B8CA8;
  v3[39] = unk_2480B8CB8;
  v3[40] = xmmword_2480B8CC8;
  v3[41] = unk_2480B8CD8;
  v3[42] = xmmword_2480B8CE8;
  v3[43] = unk_2480B8CF8;
  v3[44] = xmmword_2480B8D08;
  v3[45] = unk_2480B8D18;
  v3[46] = xmmword_2480B8D28;
  v3[47] = unk_2480B8D38;
  v3[48] = xmmword_2480B8D48;
  v3[49] = unk_2480B8D58;
  v3[50] = xmmword_2480B8D68;
  v3[51] = unk_2480B8D78;
  v3[52] = xmmword_2480B8D88;
  v3[53] = unk_2480B8D98;
  v3[54] = xmmword_2480B8DA8;
  v3[55] = unk_2480B8DB8;
  v3[56] = xmmword_2480B8DC8;
  v3[57] = unk_2480B8DD8;
  v3[58] = xmmword_2480B8DE8;
  v3[59] = unk_2480B8DF8;
  v3[60] = xmmword_2480B8E08;
  v3[61] = unk_2480B8E18;
  v3[62] = xmmword_2480B8E28;
  v3[63] = unk_2480B8E38;
  v3[64] = xmmword_2480B8E48;
  v3[65] = xmmword_2480B8E58;
  v3[66] = xmmword_2480B8E68;
  v3[67] = xmmword_2480B8E78;
  v3[68] = xmmword_2480B8E88;
  v3[69] = xmmword_2480B8E98;
  v3[70] = xmmword_2480B8EA8;
  v3[71] = xmmword_2480B8EB8;
  v3[72] = xmmword_2480B8EC8;
  v3[73] = xmmword_2480B8ED8;
  v3[74] = xmmword_2480B8EE8;
  v3[75] = xmmword_2480B8EF8;
  v3[76] = xmmword_2480B8F08;
  v3[77] = xmmword_2480B8F18;
  v3[78] = xmmword_2480B8F28;
  v3[79] = xmmword_2480B8F38;
  v3[80] = xmmword_2480B8F48;
  v3[81] = xmmword_2480B8F58;
  v3[82] = xmmword_2480B8F68;
  v3[83] = xmmword_2480B8F78;
  v3[84] = xmmword_2480B8F88;
  v3[85] = xmmword_2480B8F98;
  v3[86] = xmmword_2480B8FA8;
  v3[87] = xmmword_2480B8FB8;
  v3[88] = xmmword_2480B8FC8;
  v3[89] = xmmword_2480B8FD8;
  v3[90] = xmmword_2480B8FE8;
  v3[91] = xmmword_2480B8FF8;
  v3[92] = xmmword_2480B9008;
  v3[93] = xmmword_2480B9018;
  v3[94] = xmmword_2480B9028;
  v3[95] = xmmword_2480B9038;
  v3[96] = xmmword_2480B9048;
  v3[97] = xmmword_2480B9058;
  v3[98] = xmmword_2480B9068;
  v3[99] = xmmword_2480B9078;
  v3[100] = xmmword_2480B9088;
  v3[101] = xmmword_2480B9098;
  v3[102] = xmmword_2480B90A8;
  v3[103] = xmmword_2480B90B8;
  v3[104] = xmmword_2480B90C8;
  v3[105] = xmmword_2480B90D8;
  v3[106] = xmmword_2480B90E8;
  v3[107] = xmmword_2480B90F8;
  v3[108] = xmmword_2480B9108;
  v3[109] = xmmword_2480B9118;
  v3[110] = xmmword_2480B9128;
  v3[111] = xmmword_2480B9138;
  v3[112] = xmmword_2480B9148;
  v3[113] = xmmword_2480B9158;
  v3[114] = xmmword_2480B9168;
  v3[115] = xmmword_2480B9178;
  v3[116] = xmmword_2480B9188;
  v3[117] = xmmword_2480B9198;
  v3[118] = xmmword_2480B91A8;
  v3[119] = xmmword_2480B91B8;
  v3[120] = xmmword_2480B91C8;
  v3[121] = xmmword_2480B91D8;
  v3[122] = xmmword_2480B91E8;
  v3[123] = xmmword_2480B91F8;
  v3[124] = xmmword_2480B9208;
  v3[125] = xmmword_2480B9218;
  v3[126] = xmmword_2480B9228;
  v3[127] = xmmword_2480B9238;
  v3[128] = xmmword_2480B9248;
  v3[129] = xmmword_2480B9258;
  v3[130] = xmmword_2480B9268;
  v3[131] = xmmword_2480B9278;
  v3[132] = xmmword_2480B9288;
  v3[133] = xmmword_2480B9298;
  v3[134] = xmmword_2480B92A8;
  v3[135] = xmmword_2480B92B8;
  v3[136] = xmmword_2480B92C8;
  v3[137] = xmmword_2480B92D8;
  v3[138] = xmmword_2480B92E8;
  v3[139] = xmmword_2480B92F8;
  result = *(v3 + a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t XREngineeringTypeID.mnemonic.getter(unsigned __int16 a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = XR_ENGINEERING_MNEMONIC_BY_ETYPE;
  v5[1] = *&off_278EFA500;
  v5[2] = xmmword_278EFA510;
  v5[3] = *&off_278EFA520;
  v5[4] = xmmword_278EFA530;
  v5[5] = *&off_278EFA540;
  v5[6] = xmmword_278EFA550;
  v5[7] = *&off_278EFA560;
  v5[8] = xmmword_278EFA570;
  v5[9] = *&off_278EFA580;
  v5[10] = xmmword_278EFA590;
  v5[11] = *&off_278EFA5A0;
  v5[12] = xmmword_278EFA5B0;
  v5[13] = *&off_278EFA5C0;
  v5[14] = xmmword_278EFA5D0;
  v5[15] = *&off_278EFA5E0;
  v5[16] = xmmword_278EFA5F0;
  v5[17] = *&off_278EFA600;
  v5[18] = xmmword_278EFA610;
  v5[19] = *&off_278EFA620;
  v5[20] = xmmword_278EFA630;
  v5[21] = *&off_278EFA640;
  v5[22] = xmmword_278EFA650;
  v5[23] = *&off_278EFA660;
  v5[24] = xmmword_278EFA670;
  v5[25] = *&off_278EFA680;
  v5[26] = xmmword_278EFA690;
  v5[27] = *&off_278EFA6A0;
  v5[28] = xmmword_278EFA6B0;
  v5[29] = *&off_278EFA6C0;
  v5[30] = xmmword_278EFA6D0;
  v5[31] = *&off_278EFA6E0;
  v5[32] = xmmword_278EFA6F0;
  v5[33] = *&off_278EFA700;
  v5[34] = xmmword_278EFA710;
  v5[35] = *&off_278EFA720;
  v5[36] = xmmword_278EFA730;
  v5[37] = *&off_278EFA740;
  v5[38] = xmmword_278EFA750;
  v5[39] = *&off_278EFA760;
  v5[40] = xmmword_278EFA770;
  v5[41] = *&off_278EFA780;
  v5[42] = xmmword_278EFA790;
  v5[43] = *&off_278EFA7A0;
  v5[44] = xmmword_278EFA7B0;
  v5[45] = *&off_278EFA7C0;
  v5[46] = xmmword_278EFA7D0;
  v5[47] = *&off_278EFA7E0;
  v5[48] = xmmword_278EFA7F0;
  v5[49] = *&off_278EFA800;
  v5[50] = xmmword_278EFA810;
  v5[51] = *&off_278EFA820;
  v5[52] = xmmword_278EFA830;
  v5[53] = *&off_278EFA840;
  v5[54] = xmmword_278EFA850;
  v5[55] = *&off_278EFA860;
  v5[56] = xmmword_278EFA870;
  v5[57] = *&off_278EFA880;
  v5[58] = xmmword_278EFA890;
  v5[59] = *&off_278EFA8A0;
  v5[60] = xmmword_278EFA8B0;
  v5[61] = *&off_278EFA8C0;
  v5[62] = xmmword_278EFA8D0;
  v5[63] = *&off_278EFA8E0;
  v5[64] = xmmword_278EFA8F0;
  v5[65] = xmmword_278EFA900;
  v5[66] = xmmword_278EFA910;
  v5[67] = xmmword_278EFA920;
  v5[68] = xmmword_278EFA930;
  v5[69] = xmmword_278EFA940;
  v5[70] = xmmword_278EFA950;
  v5[71] = xmmword_278EFA960;
  v5[72] = xmmword_278EFA970;
  v5[73] = xmmword_278EFA980;
  v5[74] = xmmword_278EFA990;
  v5[75] = xmmword_278EFA9A0;
  v5[76] = xmmword_278EFA9B0;
  v5[77] = xmmword_278EFA9C0;
  v5[78] = xmmword_278EFA9D0;
  v5[79] = xmmword_278EFA9E0;
  v5[80] = xmmword_278EFA9F0;
  v5[81] = xmmword_278EFAA00;
  v5[82] = xmmword_278EFAA10;
  v5[83] = xmmword_278EFAA20;
  v5[84] = xmmword_278EFAA30;
  v5[85] = xmmword_278EFAA40;
  v5[86] = xmmword_278EFAA50;
  v5[87] = xmmword_278EFAA60;
  v5[88] = xmmword_278EFAA70;
  v5[89] = xmmword_278EFAA80;
  v5[90] = xmmword_278EFAA90;
  v5[91] = xmmword_278EFAAA0;
  v5[92] = xmmword_278EFAAB0;
  v5[93] = xmmword_278EFAAC0;
  v5[94] = xmmword_278EFAAD0;
  v5[95] = xmmword_278EFAAE0;
  v5[96] = xmmword_278EFAAF0;
  v5[97] = xmmword_278EFAB00;
  v5[98] = xmmword_278EFAB10;
  v5[99] = xmmword_278EFAB20;
  v5[100] = xmmword_278EFAB30;
  v5[101] = xmmword_278EFAB40;
  v5[102] = xmmword_278EFAB50;
  v5[103] = xmmword_278EFAB60;
  v5[104] = xmmword_278EFAB70;
  v5[105] = xmmword_278EFAB80;
  v5[106] = xmmword_278EFAB90;
  v5[107] = xmmword_278EFABA0;
  v5[108] = xmmword_278EFABB0;
  v5[109] = xmmword_278EFABC0;
  v5[110] = xmmword_278EFABD0;
  v5[111] = xmmword_278EFABE0;
  v5[112] = xmmword_278EFABF0;
  v5[113] = xmmword_278EFAC00;
  v5[114] = xmmword_278EFAC10;
  v5[115] = xmmword_278EFAC20;
  v5[116] = xmmword_278EFAC30;
  v5[117] = xmmword_278EFAC40;
  v5[118] = xmmword_278EFAC50;
  v5[119] = xmmword_278EFAC60;
  v5[120] = xmmword_278EFAC70;
  v5[121] = xmmword_278EFAC80;
  v5[122] = xmmword_278EFAC90;
  v5[123] = xmmword_278EFACA0;
  v5[124] = xmmword_278EFACB0;
  v5[125] = xmmword_278EFACC0;
  v5[126] = xmmword_278EFACD0;
  v5[127] = xmmword_278EFACE0;
  v5[128] = xmmword_278EFACF0;
  v5[129] = xmmword_278EFAD00;
  v5[130] = xmmword_278EFAD10;
  v5[131] = xmmword_278EFAD20;
  v5[132] = xmmword_278EFAD30;
  v5[133] = xmmword_278EFAD40;
  v5[134] = xmmword_278EFAD50;
  v5[135] = xmmword_278EFAD60;
  v5[136] = xmmword_278EFAD70;
  v5[137] = xmmword_278EFAD80;
  v5[138] = xmmword_278EFAD90;
  v5[139] = xmmword_278EFADA0;
  v1 = *(v5 + a1);
  v2 = sub_2480B4758();

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t XREngineeringTypeID.title.getter(unsigned __int16 a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = XR_ENGINEERING_TITLE_BY_ETYPE;
  v5[1] = *&off_278EFB680;
  v5[2] = xmmword_278EFB690;
  v5[3] = *&off_278EFB6A0;
  v5[4] = xmmword_278EFB6B0;
  v5[5] = *&off_278EFB6C0;
  v5[6] = xmmword_278EFB6D0;
  v5[7] = *&off_278EFB6E0;
  v5[8] = xmmword_278EFB6F0;
  v5[9] = *&off_278EFB700;
  v5[10] = xmmword_278EFB710;
  v5[11] = *&off_278EFB720;
  v5[12] = xmmword_278EFB730;
  v5[13] = *&off_278EFB740;
  v5[14] = xmmword_278EFB750;
  v5[15] = *&off_278EFB760;
  v5[16] = xmmword_278EFB770;
  v5[17] = *&off_278EFB780;
  v5[18] = xmmword_278EFB790;
  v5[19] = *&off_278EFB7A0;
  v5[20] = xmmword_278EFB7B0;
  v5[21] = *&off_278EFB7C0;
  v5[22] = xmmword_278EFB7D0;
  v5[23] = *&off_278EFB7E0;
  v5[24] = xmmword_278EFB7F0;
  v5[25] = *&off_278EFB800;
  v5[26] = xmmword_278EFB810;
  v5[27] = *&off_278EFB820;
  v5[28] = xmmword_278EFB830;
  v5[29] = *&off_278EFB840;
  v5[30] = xmmword_278EFB850;
  v5[31] = *&off_278EFB860;
  v5[32] = xmmword_278EFB870;
  v5[33] = *&off_278EFB880;
  v5[34] = xmmword_278EFB890;
  v5[35] = *&off_278EFB8A0;
  v5[36] = xmmword_278EFB8B0;
  v5[37] = *&off_278EFB8C0;
  v5[38] = xmmword_278EFB8D0;
  v5[39] = *&off_278EFB8E0;
  v5[40] = xmmword_278EFB8F0;
  v5[41] = *&off_278EFB900;
  v5[42] = xmmword_278EFB910;
  v5[43] = *&off_278EFB920;
  v5[44] = xmmword_278EFB930;
  v5[45] = *&off_278EFB940;
  v5[46] = xmmword_278EFB950;
  v5[47] = *&off_278EFB960;
  v5[48] = xmmword_278EFB970;
  v5[49] = *&off_278EFB980;
  v5[50] = xmmword_278EFB990;
  v5[51] = *&off_278EFB9A0;
  v5[52] = xmmword_278EFB9B0;
  v5[53] = *&off_278EFB9C0;
  v5[54] = xmmword_278EFB9D0;
  v5[55] = *&off_278EFB9E0;
  v5[56] = xmmword_278EFB9F0;
  v5[57] = *&off_278EFBA00;
  v5[58] = xmmword_278EFBA10;
  v5[59] = *&off_278EFBA20;
  v5[60] = xmmword_278EFBA30;
  v5[61] = *&off_278EFBA40;
  v5[62] = xmmword_278EFBA50;
  v5[63] = *&off_278EFBA60;
  v5[64] = xmmword_278EFBA70;
  v5[65] = xmmword_278EFBA80;
  v5[66] = xmmword_278EFBA90;
  v5[67] = xmmword_278EFBAA0;
  v5[68] = xmmword_278EFBAB0;
  v5[69] = xmmword_278EFBAC0;
  v5[70] = xmmword_278EFBAD0;
  v5[71] = xmmword_278EFBAE0;
  v5[72] = xmmword_278EFBAF0;
  v5[73] = xmmword_278EFBB00;
  v5[74] = xmmword_278EFBB10;
  v5[75] = xmmword_278EFBB20;
  v5[76] = xmmword_278EFBB30;
  v5[77] = xmmword_278EFBB40;
  v5[78] = xmmword_278EFBB50;
  v5[79] = xmmword_278EFBB60;
  v5[80] = xmmword_278EFBB70;
  v5[81] = xmmword_278EFBB80;
  v5[82] = xmmword_278EFBB90;
  v5[83] = xmmword_278EFBBA0;
  v5[84] = xmmword_278EFBBB0;
  v5[85] = xmmword_278EFBBC0;
  v5[86] = xmmword_278EFBBD0;
  v5[87] = xmmword_278EFBBE0;
  v5[88] = xmmword_278EFBBF0;
  v5[89] = xmmword_278EFBC00;
  v5[90] = xmmword_278EFBC10;
  v5[91] = xmmword_278EFBC20;
  v5[92] = xmmword_278EFBC30;
  v5[93] = xmmword_278EFBC40;
  v5[94] = xmmword_278EFBC50;
  v5[95] = xmmword_278EFBC60;
  v5[96] = xmmword_278EFBC70;
  v5[97] = xmmword_278EFBC80;
  v5[98] = xmmword_278EFBC90;
  v5[99] = xmmword_278EFBCA0;
  v5[100] = xmmword_278EFBCB0;
  v5[101] = xmmword_278EFBCC0;
  v5[102] = xmmword_278EFBCD0;
  v5[103] = xmmword_278EFBCE0;
  v5[104] = xmmword_278EFBCF0;
  v5[105] = xmmword_278EFBD00;
  v5[106] = xmmword_278EFBD10;
  v5[107] = xmmword_278EFBD20;
  v5[108] = xmmword_278EFBD30;
  v5[109] = xmmword_278EFBD40;
  v5[110] = xmmword_278EFBD50;
  v5[111] = xmmword_278EFBD60;
  v5[112] = xmmword_278EFBD70;
  v5[113] = xmmword_278EFBD80;
  v5[114] = xmmword_278EFBD90;
  v5[115] = xmmword_278EFBDA0;
  v5[116] = xmmword_278EFBDB0;
  v5[117] = xmmword_278EFBDC0;
  v5[118] = xmmword_278EFBDD0;
  v5[119] = xmmword_278EFBDE0;
  v5[120] = xmmword_278EFBDF0;
  v5[121] = xmmword_278EFBE00;
  v5[122] = xmmword_278EFBE10;
  v5[123] = xmmword_278EFBE20;
  v5[124] = xmmword_278EFBE30;
  v5[125] = xmmword_278EFBE40;
  v5[126] = xmmword_278EFBE50;
  v5[127] = xmmword_278EFBE60;
  v5[128] = xmmword_278EFBE70;
  v5[129] = xmmword_278EFBE80;
  v5[130] = xmmword_278EFBE90;
  v5[131] = xmmword_278EFBEA0;
  v5[132] = xmmword_278EFBEB0;
  v5[133] = xmmword_278EFBEC0;
  v5[134] = xmmword_278EFBED0;
  v5[135] = xmmword_278EFBEE0;
  v5[136] = xmmword_278EFBEF0;
  v5[137] = xmmword_278EFBF00;
  v5[138] = xmmword_278EFBF10;
  v5[139] = xmmword_278EFBF20;
  v1 = *(v5 + a1);
  v2 = sub_2480B4758();

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t XREngineeringTypeID.swiftTypeName.getter(unsigned __int16 a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = XR_ENGINEERING_SWIFT_NAME_BY_ETYPE;
  v5[1] = *&off_278EFADC0;
  v5[2] = xmmword_278EFADD0;
  v5[3] = *&off_278EFADE0;
  v5[4] = xmmword_278EFADF0;
  v5[5] = *&off_278EFAE00;
  v5[6] = xmmword_278EFAE10;
  v5[7] = *&off_278EFAE20;
  v5[8] = xmmword_278EFAE30;
  v5[9] = *&off_278EFAE40;
  v5[10] = xmmword_278EFAE50;
  v5[11] = *&off_278EFAE60;
  v5[12] = xmmword_278EFAE70;
  v5[13] = *&off_278EFAE80;
  v5[14] = xmmword_278EFAE90;
  v5[15] = *&off_278EFAEA0;
  v5[16] = xmmword_278EFAEB0;
  v5[17] = *&off_278EFAEC0;
  v5[18] = xmmword_278EFAED0;
  v5[19] = *&off_278EFAEE0;
  v5[20] = xmmword_278EFAEF0;
  v5[21] = *&off_278EFAF00;
  v5[22] = xmmword_278EFAF10;
  v5[23] = *&off_278EFAF20;
  v5[24] = xmmword_278EFAF30;
  v5[25] = *&off_278EFAF40;
  v5[26] = xmmword_278EFAF50;
  v5[27] = *&off_278EFAF60;
  v5[28] = xmmword_278EFAF70;
  v5[29] = *&off_278EFAF80;
  v5[30] = xmmword_278EFAF90;
  v5[31] = *&off_278EFAFA0;
  v5[32] = xmmword_278EFAFB0;
  v5[33] = *&off_278EFAFC0;
  v5[34] = xmmword_278EFAFD0;
  v5[35] = *&off_278EFAFE0;
  v5[36] = xmmword_278EFAFF0;
  v5[37] = *&off_278EFB000;
  v5[38] = xmmword_278EFB010;
  v5[39] = *&off_278EFB020;
  v5[40] = xmmword_278EFB030;
  v5[41] = *&off_278EFB040;
  v5[42] = xmmword_278EFB050;
  v5[43] = *&off_278EFB060;
  v5[44] = xmmword_278EFB070;
  v5[45] = *&off_278EFB080;
  v5[46] = xmmword_278EFB090;
  v5[47] = *&off_278EFB0A0;
  v5[48] = xmmword_278EFB0B0;
  v5[49] = *&off_278EFB0C0;
  v5[50] = xmmword_278EFB0D0;
  v5[51] = *&off_278EFB0E0;
  v5[52] = xmmword_278EFB0F0;
  v5[53] = *&off_278EFB100;
  v5[54] = xmmword_278EFB110;
  v5[55] = *&off_278EFB120;
  v5[56] = xmmword_278EFB130;
  v5[57] = *&off_278EFB140;
  v5[58] = xmmword_278EFB150;
  v5[59] = *&off_278EFB160;
  v5[60] = xmmword_278EFB170;
  v5[61] = *&off_278EFB180;
  v5[62] = xmmword_278EFB190;
  v5[63] = *&off_278EFB1A0;
  v5[64] = xmmword_278EFB1B0;
  v5[65] = xmmword_278EFB1C0;
  v5[66] = xmmword_278EFB1D0;
  v5[67] = xmmword_278EFB1E0;
  v5[68] = xmmword_278EFB1F0;
  v5[69] = xmmword_278EFB200;
  v5[70] = xmmword_278EFB210;
  v5[71] = xmmword_278EFB220;
  v5[72] = xmmword_278EFB230;
  v5[73] = xmmword_278EFB240;
  v5[74] = xmmword_278EFB250;
  v5[75] = xmmword_278EFB260;
  v5[76] = xmmword_278EFB270;
  v5[77] = xmmword_278EFB280;
  v5[78] = xmmword_278EFB290;
  v5[79] = xmmword_278EFB2A0;
  v5[80] = xmmword_278EFB2B0;
  v5[81] = xmmword_278EFB2C0;
  v5[82] = xmmword_278EFB2D0;
  v5[83] = xmmword_278EFB2E0;
  v5[84] = xmmword_278EFB2F0;
  v5[85] = xmmword_278EFB300;
  v5[86] = xmmword_278EFB310;
  v5[87] = xmmword_278EFB320;
  v5[88] = xmmword_278EFB330;
  v5[89] = xmmword_278EFB340;
  v5[90] = xmmword_278EFB350;
  v5[91] = xmmword_278EFB360;
  v5[92] = xmmword_278EFB370;
  v5[93] = xmmword_278EFB380;
  v5[94] = xmmword_278EFB390;
  v5[95] = xmmword_278EFB3A0;
  v5[96] = xmmword_278EFB3B0;
  v5[97] = xmmword_278EFB3C0;
  v5[98] = xmmword_278EFB3D0;
  v5[99] = xmmword_278EFB3E0;
  v5[100] = xmmword_278EFB3F0;
  v5[101] = xmmword_278EFB400;
  v5[102] = xmmword_278EFB410;
  v5[103] = xmmword_278EFB420;
  v5[104] = xmmword_278EFB430;
  v5[105] = xmmword_278EFB440;
  v5[106] = xmmword_278EFB450;
  v5[107] = xmmword_278EFB460;
  v5[108] = xmmword_278EFB470;
  v5[109] = xmmword_278EFB480;
  v5[110] = xmmword_278EFB490;
  v5[111] = xmmword_278EFB4A0;
  v5[112] = xmmword_278EFB4B0;
  v5[113] = xmmword_278EFB4C0;
  v5[114] = xmmword_278EFB4D0;
  v5[115] = xmmword_278EFB4E0;
  v5[116] = xmmword_278EFB4F0;
  v5[117] = xmmword_278EFB500;
  v5[118] = xmmword_278EFB510;
  v5[119] = xmmword_278EFB520;
  v5[120] = xmmword_278EFB530;
  v5[121] = xmmword_278EFB540;
  v5[122] = xmmword_278EFB550;
  v5[123] = xmmword_278EFB560;
  v5[124] = xmmword_278EFB570;
  v5[125] = xmmword_278EFB580;
  v5[126] = xmmword_278EFB590;
  v5[127] = xmmword_278EFB5A0;
  v5[128] = xmmword_278EFB5B0;
  v5[129] = xmmword_278EFB5C0;
  v5[130] = xmmword_278EFB5D0;
  v5[131] = xmmword_278EFB5E0;
  v5[132] = xmmword_278EFB5F0;
  v5[133] = xmmword_278EFB600;
  v5[134] = xmmword_278EFB610;
  v5[135] = xmmword_278EFB620;
  v5[136] = xmmword_278EFB630;
  v5[137] = xmmword_278EFB640;
  v5[138] = xmmword_278EFB650;
  v5[139] = xmmword_278EFB660;
  v1 = *(v5 + a1);
  v2 = sub_2480B4758();

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

Swift::String __swiftcall HexFormatStyle.format(_:)(Swift::UInt64 a1)
{
  if (*v1 == 1)
  {
    sub_2480B26E0();
    sub_2480B47D8();
    v2 = sub_2480B4778();
    v4 = v3;

    MEMORY[0x24C1C5020](v2, v4);
  }

  else
  {
    sub_2480B26E0();
    v5 = sub_2480B47D8();
    MEMORY[0x24C1C5020](v5);
  }

  v6 = 30768;
  v7 = 0xE200000000000000;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

unint64_t sub_2480B26E0()
{
  result = qword_27EE866A8;
  if (!qword_27EE866A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866A8);
  }

  return result;
}

uint64_t sub_2480B2754()
{
  sub_2480B4958();
  MEMORY[0x24C1C51C0](0);
  return sub_2480B4988();
}

uint64_t sub_2480B27C0()
{
  sub_2480B4958();
  MEMORY[0x24C1C51C0](0);
  return sub_2480B4988();
}

uint64_t sub_2480B281C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7361637265707075 && a2 == 0xEA00000000006465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2480B4948();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2480B28C4(uint64_t a1)
{
  v2 = sub_2480B2AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2480B2900(uint64_t a1)
{
  v2 = sub_2480B2AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HexFormatStyle.encode(to:)(void *a1)
{
  v3 = sub_2480ACD58(&qword_27EE866B0, &qword_2480B9860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2480B2A74(a1, a1[3]);
  sub_2480B2AB8();
  sub_2480B49A8();
  sub_2480B4938();
  return (*(v4 + 8))(v7, v3);
}

void *sub_2480B2A74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2480B2AB8()
{
  result = qword_27EE866B8;
  if (!qword_27EE866B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866B8);
  }

  return result;
}

uint64_t HexFormatStyle.hashValue.getter()
{
  v1 = *v0;
  sub_2480B4958();
  sub_2480B4978();
  return sub_2480B4988();
}

uint64_t HexFormatStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_2480ACD58(&qword_27EE866C0, &qword_2480B9868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_2480B2A74(a1, a1[3]);
  sub_2480B2AB8();
  sub_2480B4998();
  if (!v2)
  {
    v11 = sub_2480B4928();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return sub_2480B2F10(a1);
}

uint64_t sub_2480B2CD8@<X0>(Swift::UInt64 *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = HexFormatStyle.format(_:)(*a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t sub_2480B2D20(void *a1)
{
  v3 = sub_2480ACD58(&qword_27EE866B0, &qword_2480B9860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2480B2A74(a1, a1[3]);
  sub_2480B2AB8();
  sub_2480B49A8();
  sub_2480B4938();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2480B2E58()
{
  v1 = *v0;
  sub_2480B4958();
  sub_2480B4978();
  return sub_2480B4988();
}

uint64_t sub_2480B2ECC()
{
  v1 = *v0;
  sub_2480B4958();
  sub_2480B4978();
  return sub_2480B4988();
}

uint64_t sub_2480B2F10(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2480B2F60()
{
  result = qword_27EE866C8;
  if (!qword_27EE866C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866C8);
  }

  return result;
}

unint64_t sub_2480B2FB8()
{
  result = qword_27EE866D0;
  if (!qword_27EE866D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866D0);
  }

  return result;
}

unint64_t sub_2480B3010()
{
  result = qword_27EE866D8;
  if (!qword_27EE866D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866D8);
  }

  return result;
}

unint64_t sub_2480B3068()
{
  result = qword_27EE866E0;
  if (!qword_27EE866E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HexFormatStyle(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HexFormatStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2480B3248()
{
  result = qword_27EE866E8;
  if (!qword_27EE866E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866E8);
  }

  return result;
}

unint64_t sub_2480B32A0()
{
  result = qword_27EE866F0;
  if (!qword_27EE866F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866F0);
  }

  return result;
}

unint64_t sub_2480B32F8()
{
  result = qword_27EE866F8;
  if (!qword_27EE866F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE866F8);
  }

  return result;
}

void sub_2480B3378()
{
  sub_24808933C();
  v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1, v2, v3);
  sub_248089348();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 198, @"[worker holdsItinerary:workersItinerary]");
}

void sub_2480B33EC()
{
  sub_24808933C();
  v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1, v2, v3);
  sub_248089348();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 203, @"[worker holdsItinerary:workersItinerary]");
}

void sub_2480B3460()
{
  sub_24808933C();
  v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1, v2, v3);
  sub_248089348();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 204, @"[team.members containsObject:worker]");
}

void sub_2480B34D4()
{
  sub_24808933C();
  v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v0, v1, v2, v3);
  sub_248089348();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v4, v5, v6, v7, v8, 215, @"agent == _ownerID");
}

void sub_2480B36E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v7, a1, a2, @"XREngineeringValue.m", 293, @"The allowed subelements are constant engineering values.");
}

void sub_2480B3754(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 134217984;
  v7 = objc_msgSend_count(a1, a2, a3, a4, a5);
  _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Key Value Typed Array has not even number of elements: %ld", &v6, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2480B3A98(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "NSURL *_etypesdefURL(void)_block_invoke", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v11, v10, @"XREngineeringTypeDefinitions.m", 217, @"Didn't find the engineering_types file in the bundle");

  *a1 = qword_27EE86910;
}

void sub_2480B3B24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "NSURL *_etypesdefURL(void)_block_invoke", v6, v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v9, v8, @"XREngineeringTypeDefinitions.m", 218, @"Didn't find the engineering_types file in the bundle");
}

void sub_2480B3BC4(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v8 = objc_msgSend_localizedDescription(a2, v4, v5, v6, v7);
  sub_24809C4E8(&dword_248087000, v9, v10, "Archiving object to deep copy failed with error: %@", v11, v12, v13, v14, 2u);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2480B3C5C(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v8 = objc_msgSend_localizedDescription(a2, v4, v5, v6, v7);
  sub_24809C4E8(&dword_248087000, v9, v10, "Unarchiving deep copied object failed with error: %@", v11, v12, v13, v14, 2u);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2480B3D08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v7, a1, a2, @"NSObject+DVTInstrumentsUtilities.m", 74, @"Invalid parameter not satisfying: %@", @"[self isKindOfClass:NSString.class] || [self isKindOfClass:NSArray.class]");
}

void sub_2480B3D84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a1, a2, @"XRCapabilityRequirements.m", 155, @"Internal error converting contents to plist");
}

void sub_2480B3DFC(void *a1, uint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_begin_catch(a1);
  *a3 = v5;
  v6 = v5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v8 = *a2;
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Agent '%@' threw an exception and will be sent to its final destination in the failed mode. Exception: %@.", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2480B3F00(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v7, a1, a2, @"XRMobileAgent.m", 68, @"Invalid parameter not satisfying: %@", @"activationStop != nil");
}

void sub_2480B3FA8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_description(a1, a2, a3, a4, a5);
  v12 = objc_msgSend_mode(a1, v8, v9, v10, v11);
  v17 = objc_msgSend_currentStop(*a2, v13, v14, v15, v16);
  v19 = 138412802;
  v20 = v7;
  v21 = 2112;
  v22 = v12;
  v23 = 2112;
  v24 = v17;
  _os_log_error_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Agent %@ did not set its itinerary in mode %@ after passing through stop %@", &v19, 0x20u);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2480B408C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_description(a1, a2, a3, a4, a5);
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Agent %@ has been lost.  Recovering by sending it to its final destination in the failure mode.", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2480B4124(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_mode(a1, a2, a3, a4, a5);
  v8 = *(a2 + 40);
  v10 = 138412802;
  v11 = a1;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Agent '%@' attempted to set a nil next stop.  The current mode is '%@'.  The next mode is '%@'.  Moving to final destination in the failed mode.", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2480B4210(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_agentDiagnosticsName(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_mode(a1, v7, v8, v9, v10);
  v13 = 138543618;
  v14 = v6;
  v15 = 2114;
  v16 = v11;
  _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Agent %{public}@ has no stop set and it's not in park movement. Last mode: %{public}@", &v13, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2480B42CC(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_248087000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "A next stop of nil was set for the itinerary '%@'.  If this agent continues there will be another fault with the details.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}