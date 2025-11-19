uint64_t NS::Private::Selector::s_kwait(NS::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07F500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07F500))
  {
    qword_27F07F4F8 = sel_registerName("wait");
    __cxa_guard_release(&qword_27F07F500);
  }

  return qword_27F07F4F8;
}

uint64_t NS::Private::Selector::s_kwaitUntilDate_(NS::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07F510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07F510))
  {
    qword_27F07F508 = sel_registerName("waitUntilDate:");
    __cxa_guard_release(&qword_27F07F510);
  }

  return qword_27F07F508;
}

uint64_t MTL::CopyAllDevicesWithObserver(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x4802000000;
  v4[3] = sub_24BF52FD4;
  v4[4] = sub_24BF52FE0;
  sub_24BF56890(v5, a2);
  _Block_object_dispose(v4, 8);
  sub_24BF56928(v5);
  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_24BF52FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_24BCA1F3C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_24BF53054(const std::__fs::filesystem::path *a1@<X0>, std::string *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_24BD25314(a1, v18);
  sub_24BCCA6F0(&v14.__pn_, a2);
  sub_24BCBBCB8(&v14, v18, &v15);
  sub_24BCCEE48(&v12, "Resources");
  sub_24BCBBCB8(&v12, v18, &v13);
  sub_24BCCA6F0(&v11.__pn_, a2);
  sub_24BCBBCB8(&v11, &v13, &v16);
  sub_24BCCEE48(&v9, "resources");
  sub_24BCBBCB8(&v9, v18, &v10);
  sub_24BCCA6F0(&__p, a2);
  sub_24BCBBCB8(&__p, &v10, &v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__pn_.__r_.__value_.__l.__data_);
  }

  v5 = 0;
  while (1)
  {
    std::__fs::filesystem::__status((&v15 + v5 * 8), 0);
    if (v14.__pn_.__r_.__value_.__s.__data_[0])
    {
      if (v14.__pn_.__r_.__value_.__s.__data_[0] != 255)
      {
        break;
      }
    }

    v5 += 3;
    if (v5 == 9)
    {
      sub_24BC836D4(a3, &unk_24C0435AF);
      goto LABEL_23;
    }
  }

  v6 = &v15 + v5 * 8;
  if (SHIBYTE(v15.__pn_.__r_.__value_.__r.__words[v5 + 2]) < 0)
  {
    v6 = *v6;
  }

  sub_24BC836D4(a3, v6);
LABEL_23:
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v17.__pn_.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v17.__pn_.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_24BF53254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  v53 = (v51 - 57);
  v54 = -72;
  v55 = (v51 - 57);
  while (1)
  {
    v56 = *v55;
    v55 -= 24;
    if (v56 < 0)
    {
      operator delete(*(v53 - 23));
    }

    v53 = v55;
    v54 += 24;
    if (!v54)
    {
      if (*(v51 - 33) < 0)
      {
        operator delete(*(v51 - 56));
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_24BF5338C(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  v3 = [a2 MTL:1 :? Private:? :? Selector:? :?s_kcomputeCommandEncoderWithDispatchType_(a1)];
  *a1 = v3;
  [v3 NS:? :? Private:? :? Selector:? :?s_kretain(v3)];
  return a1;
}

void sub_24BF53454(_Unwind_Exception *a1)
{
  sub_24BCA3B84(v5);
  sub_24BCA3B84(v4);
  sub_24BCA3B84(v3);
  sub_24BCA3B84(v2);
  sub_24BCA3B84(v1);
  _Unwind_Resume(a1);
}

id *sub_24BF5348C(id *a1)
{
  v2 = [*a1 MTL:? :? Private:? :? Selector:? :?s_kendEncoding(a1)];
  [*a1 NS:? :? Private:? :? Selector:? :?s_krelease(v2)];
  sub_24BCA3B84((a1 + 22));
  sub_24BCA3B84((a1 + 17));
  sub_24BCA3B84((a1 + 12));
  sub_24BCA3B84((a1 + 7));
  sub_24BCA3B84((a1 + 2));
  return a1;
}

id sub_24BF53508(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v15 = **(*a2 + 136);
  sub_24BF56CD8((a1 + 136), &v15);
  v15 = **(*a2 + 136);
  v8 = *(a1 + 8);
  v9 = sub_24BF56F3C((a1 + 16), &v15);
  *(a1 + 8) = v8 | (v9 != 0);
  v10 = *a2;
  v11 = **(*a2 + 136);
  v12 = *(v10 + 152);
  v13 = [v11 MTL:? :? Private:? :? Selector:? :?s_kcontents(v9)];
  return [*a1 MTL:v11 :v12 + a4 - v13 Private:a3 :? Selector:? :?s_ksetBuffer_offset_atIndex_(v13)];
}

void *sub_24BF535E8(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  sub_24BF53508(a1, a2, a3, a4);
  v8 = **(*a2 + 136);
  sub_24BF56CD8((a1 + 176), &v8);
  v8 = **(*a2 + 136);
  v6 = 56;
  if (*(a1 + 9))
  {
    v6 = 96;
  }

  return sub_24BF56A28((a1 + v6), &v8);
}

void *sub_24BF5366C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    [*a1 MTL:1 :? Private:? :? Selector:? :?s_kmemoryBarrierWithScope_(a1)];
    *(a1 + 8) = 0;
    sub_24BF57028(a1 + 16, (a1 + 56));
  }

  else
  {
    for (i = *(a1 + 72); i; i = *i)
    {
      sub_24BF56A28((a1 + 16), i + 2);
    }
  }

  return sub_24BD9A318((a1 + 56));
}

id sub_24BF536F8(void **a1, __int128 *a2, __int128 *a3)
{
  v6 = sub_24BF5366C(a1);
  v7 = *a1;
  v11 = *a2;
  v12 = *(a2 + 2);
  v9 = *a3;
  v10 = *(a3 + 2);
  return [v7 MTL:&v11 :&v9 Private:? :? Selector:? :?s_kdispatchThreadgroups_threadsPerThreadgroup_(v6)];
}

id sub_24BF53770(void **a1, __int128 *a2, __int128 *a3)
{
  v6 = sub_24BF5366C(a1);
  v7 = *a1;
  v11 = *a2;
  v12 = *(a2 + 2);
  v9 = *a3;
  v10 = *(a3 + 2);
  return [v7 MTL:&v11 :&v9 Private:? :? Selector:? :?s_kdispatchThreads_threadsPerThreadgroup_(v6)];
}

uint64_t sub_24BF537E8(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  std::__shared_mutex_base::__shared_mutex_base((a1 + 48));
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 1065353216;
  v2 = std::__shared_mutex_base::__shared_mutex_base((a1 + 256));
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 1065353216;
  v3 = (a1 + 472);
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  sub_24BF53AE4(v2, &v19);
  v4 = MTLCopyAllDevices();
  v5 = [v4 NS:0 :? Private:? :? Selector:? :?s_kobjectAtIndex_(v4)];
  v6 = v5;
  if (!v5)
  {
    v5 = MTLCreateSystemDefaultDevice();
    v6 = v5;
  }

  [v4 NS:? :? Private:? :? Selector:? :?s_kautorelease(v5)];
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to load device");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  *a1 = v6;
  sub_24BC836D4(v15, "mlx");
  v7 = sub_24BF53BA0(v6, v15, "mlx.metallib");
  sub_24BC836D4(&__p, "mlx");
  v18 = v7;
  sub_24BF57264((a1 + 424), &__p, &v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v9 = [*a1 MTL:? :? Private:? :? Selector:? :?s_karchitecture(v8)];
  v10 = [v9 MTL:? :? Private:? :? Selector:? :?s_kname(v9)];
  v11 = [v10 NS:? :? Private:? :? Selector:? :?s_kUTF8String(v10)];
  sub_24BC836D4(&__p, v11);
  if (*(a1 + 495) < 0)
  {
    operator delete(*v3);
  }

  *v3 = *&__p.__r_.__value_.__l.__data_;
  *(a1 + 488) = *(&__p.__r_.__value_.__l + 2);
  sub_24BF192EC(&v19, 0);
  sub_24BF19370(&v19.__r_.__value_.__l.__size_);
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24BF53A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  __cxa_free_exception(v28);
  sub_24BF192EC(&a23, 0);
  sub_24BF19370(&a24);
  if (*(v25 + 495) < 0)
  {
    operator delete(*v29);
  }

  sub_24BE4A5A4(v27);
  sub_24BF53DC8(v26 + 40);
  sub_24BE4A5A4(v26);
  sub_24BF53DC8(v24 + 40);
  sub_24BF570CC(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF53AE4@<X0>(NS::Private::Class *a1@<X0>, void *a2@<X8>)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v3 = NS::Private::Class::s_kNSAutoreleasePool(a1);
  v4 = [v3 NS:? :? Private:? :? Selector:? :?s_kalloc(v3)];
  v7[0] = &unk_285F9EE00;
  v7[3] = v7;
  *a2 = [v4 NS:? :? Private:? :? Selector:? :?s_kinit(v4)];
  sub_24BF58FE0((a2 + 1), v7);
  result = sub_24BF19370(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_24BF53BA0(NS::Private::Class *a1, const void **a2, const char *a3)
{
  sub_24BF5615C(a2, &v27);
  if (v29 < 0)
  {
    if (v28)
    {
      v5 = v27;
LABEL_6:
      v6 = sub_24BF562B8(a1, v5);
      if (v6)
      {
        goto LABEL_8;
      }
    }
  }

  else if (v29)
  {
    v5 = &v27;
    goto LABEL_6;
  }

  v6 = sub_24BF562B8(a1, a3);
  if (!v6)
  {
    v9 = v7;
    v10 = sub_24BCE1268(v26);
    v11 = [v9 NS:? :? Private:? :? Selector:? :?s_klocalizedDescription(v10)];
    v12 = [v11 NS:? :? Private:? :? Selector:? :?s_kUTF8String(v11)];
    v13 = strlen(v12);
    v14 = sub_24BC95264(v26, v12, v13);
    v15 = sub_24BC95264(v14, "\n", 1);
    v16 = sub_24BC95264(v15, "Failed to load device library from <", 36);
    v17 = strlen(a3);
    v18 = sub_24BC95264(v16, a3, v17);
    v19 = sub_24BC95264(v18, ">", 1);
    v20 = sub_24BC95264(v19, " or <", 5);
    if ((v29 & 0x80u) == 0)
    {
      v21 = &v27;
    }

    else
    {
      v21 = v27;
    }

    if ((v29 & 0x80u) == 0)
    {
      v22 = v29;
    }

    else
    {
      v22 = v28;
    }

    v23 = sub_24BC95264(v20, v21, v22);
    sub_24BC95264(v23, ">.", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x24C254100](exception, v25);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

LABEL_8:
  if (v29 < 0)
  {
    operator delete(v27);
  }

  return v6;
}

void sub_24BF53D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a16);
      if (*(v18 - 33) < 0)
      {
        operator delete(*(v18 - 56));
      }

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

void sub_24BF53DC8(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

uint64_t sub_24BF53E10(uint64_t a1)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BF53AE4(a1, &v7);
  for (i = (a1 + 232); ; v2 = [i[5] NS:? :? Private:? :? Selector:? :?s_krelease(v2)])
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  for (j = (a1 + 440); ; v2 = [j[5] NS:? :? Private:? :? Selector:? :?s_krelease(v2)])
  {
    j = *j;
    if (!j)
    {
      break;
    }
  }

  [*a1 NS:? :? Private:? :? Selector:? :?s_krelease(v2)];
  sub_24BF192EC(&v7, 0);
  sub_24BF19370(v8);
  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  sub_24BE4A5A4(a1 + 424);
  std::condition_variable::~condition_variable((a1 + 368));
  std::condition_variable::~condition_variable((a1 + 320));
  std::mutex::~mutex((a1 + 256));
  sub_24BE4A5A4(a1 + 216);
  std::condition_variable::~condition_variable((a1 + 160));
  std::condition_variable::~condition_variable((a1 + 112));
  std::mutex::~mutex((a1 + 48));
  sub_24BF570CC(a1 + 8);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24BF53F44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_24BC8DCE8(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BF53F60(NS::Private::Class *a1, int a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v3 = sub_24BF53AE4(a1, &v11);
  v9 = [*a1 MTL:12 :? Private:? :? Selector:? :?s_knewCommandQueueWithMaxCommandBufferCount_(v3)];
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[metal::Device] Failed to make new command queue.");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v4 = sub_24BF5768C(a1 + 1, &v10);
  v5 = *(a1 + 58);
  if (v5)
  {
    [v9 MTL:v5 :? Private:? :? Selector:? :?s_kaddResidencySet_(v4)];
  }

  sub_24BF192EC(&v11, 0);
  result = sub_24BF19370(v12);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF54068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  sub_24BF192EC(&a11, 0);
  sub_24BF19370(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BF540D4(uint64_t a1, int a2)
{
  v3 = a2;
  result = sub_24BEF59D8((a1 + 8), &v3);
  ++*(result + 36);
  return result;
}

uint64_t sub_24BF5410C(uint64_t a1, int a2)
{
  v6 = a2;
  v2 = sub_24BEF59D8((a1 + 8), &v6);
  result = v2[17];
  if (!result)
  {
    v4 = [v2[3] MTL:? :? Private:? :? Selector:? :?s_kcommandBufferWithUnretainedReferences(0)];
    v2[17] = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[metal::Device] Unable to create new command buffer");
      __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
    }

    [v4 NS:? :? Private:? :? Selector:? :?s_kretain(v4)];
    return v2[17];
  }

  return result;
}

id sub_24BF541CC(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = sub_24BEF59D8((a1 + 8), &v5);
  v3 = [v2[17] MTL:? :? Private:? :? Selector:? :?s_kcommit(v2)];
  result = [v2[17] NS:? :? Private:? :? Selector:? :?s_krelease(v3)];
  v2[17] = 0;
  *(v2 + 36) = 0;
  return result;
}

uint64_t *sub_24BF54234(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  v4 = sub_24BEF59D8((a1 + 8), &v6);
  return sub_24BCE1720(v4 + 22, a2);
}

uint64_t sub_24BF54278(uint64_t result, uint64_t a2, int a3)
{
  if (*a2 != *(a2 + 8))
  {
    v8 = v3;
    v9 = v4;
    v7 = a3;
    v6 = sub_24BEF59D8((result + 8), &v7);
    return sub_24BF57978(v6 + 22, v6[23], *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  }

  return result;
}

id *sub_24BF542D8(uint64_t a1, int a2)
{
  v48 = *MEMORY[0x277D85DE8];
  LODWORD(v46) = a2;
  v2 = sub_24BEF59D8((a1 + 8), &v46);
  v3 = v2;
  v4 = (v2 + 19);
  v5 = v2[19];
  if (v5)
  {
    v6 = v2[22];
    v7 = v2[23];
    while (v6 != v7)
    {
      if (*(*v6 + 152))
      {
        v8 = sub_24BF56330(&v46, v5 + 176);
        v45[0] = **(*v6 + 136);
        sub_24BF57B28(v8, v45);
        sub_24BCA3B84(&v46);
        v46 = **(*v6 + 136);
        sub_24BF57B28((v5 + 136), &v46);
      }

      v6 += 16;
    }

    v42 = 0u;
    v43 = 0u;
    v44 = 1065353216;
    std::mutex::lock((v3 + 9));
    for (i = *(v5 + 152); i; i = *i)
    {
      v46 = i[2];
      v10 = sub_24BF56F3C(v3 + 4, &v46);
      if (v10 && !sub_24BF56F3C(&v42, v10 + 3))
      {
        [*v5 MTL:*v10[3] :? Private:? :? Selector:? :?s_kwaitForFence_(0)];
        sub_24BF57BE4(&v42, v10 + 3);
      }
    }

    sub_24BF56330(&v46, v5 + 176);
    for (j = v47; j; j = *j)
    {
      v26 = j[2];
      v45[0] = &v26;
      v12 = sub_24BF57ED4(v3 + 4, &v26);
      v14 = v3[20];
      v13 = v3[21];
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = v12[4];
      v12[3] = v14;
      v12[4] = v13;
      if (v15)
      {
        sub_24BC9EC78(v15);
      }
    }

    sub_24BCA3B84(&v46);
    std::mutex::unlock((v3 + 9));
    v16 = (v3 + 20);
    [*v5 MTL:*v3[20] :? Private:? :? Selector:? :?s_kupdateFence_(v17)];
    v18 = v3[17];
    v19 = v42;
    v42 = 0uLL;
    v31 = v4 - 16;
    v32 = v19;
    v33 = v43;
    v34 = v44;
    if (*(&v43 + 1))
    {
      v20 = *(v43 + 8);
      if ((*(&v19 + 1) & (*(&v19 + 1) - 1)) != 0)
      {
        if (v20 >= *(&v19 + 1))
        {
          v20 %= *(&v19 + 1);
        }
      }

      else
      {
        v20 &= *(&v19 + 1) - 1;
      }

      *(v19 + 8 * v20) = &v33;
      v43 = 0uLL;
    }

    v35 = *v16;
    *v16 = 0;
    v3[21] = 0;
    sub_24BF56330(&v26, v5 + 176);
    v21 = v26;
    v22 = v27;
    v26 = 0;
    v27 = 0;
    v36 = v21;
    v37 = v22;
    v38[0] = v28;
    v38[1] = v29;
    v39 = v30;
    if (v29)
    {
      v23 = *(v28 + 8);
      if ((v22 & (v22 - 1)) != 0)
      {
        if (v23 >= v22)
        {
          v23 %= v22;
        }
      }

      else
      {
        v23 &= v22 - 1;
      }

      *(v21 + 8 * v23) = v38;
      v28 = 0;
      v29 = 0;
    }

    v40 = *(v3 + 11);
    v41 = v3[24];
    v3[23] = 0;
    v3[24] = 0;
    v3[22] = 0;
    v45[8] = 0;
    operator new();
  }

  result = sub_24BF56C8C(v4, 0);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF5477C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_24BF56810(v31 - 192);
  sub_24BF54834(&a15);
  sub_24BCA3B84(&a10);
  sub_24BF57B60(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF54834(uint64_t a1)
{
  v4 = (a1 + 104);
  sub_24BCC961C(&v4);
  sub_24BCA3B84(a1 + 64);
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  sub_24BF57B60(a1 + 8);
  return a1;
}

uint64_t sub_24BF5488C(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = sub_24BEF59D8((a1 + 8), &v4) + 19;
  if (!*v2)
  {
    operator new();
  }

  return *v2;
}

void sub_24BF549A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_24BD1B270((a1 + 424), a2))
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    v7 = sub_24BF53BA0(*a1, a2, v6);
    if (*(a2 + 23) < 0)
    {
      sub_24BC8DE9C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v9 = *(a2 + 16);
    }

    v10 = v7;
    sub_24BF587A0((a1 + 424), __p);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_24BF54A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NS::Private::Selector *sub_24BF54A6C(NS::Private::Class *a1, uint64_t *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = sub_24BF53AE4(a1, &v26);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v5 = NS::Private::Class::s_kNSString(v4);
  v6 = [v5 NS:a2 :1 Private:? :? Selector:? :?s_kstringWithCString_encoding_(v5)];
  v25 = 0;
  v7 = MTL::Private::Class::s_kMTLCompileOptions(v6);
  v8 = [v7 NS:? :? Private:? :? Selector:? :?s_kalloc(v7)];
  v9 = [v8 NS:? :? Private:? :? Selector:? :?s_kinit(v8)];
  v10 = [v9 MTL:0 :? Private:? :? Selector:? :?s_ksetFastMathEnabled_(v9)];
  if ((atomic_load_explicit(&qword_27F07F718, memory_order_acquire) & 1) == 0)
  {
    sub_24BF59514();
  }

  v11 = byte_27F07F710;
  v12 = MTL::Private::Selector::s_ksetLanguageVersion_(v10);
  if (v11)
  {
    v13 = 196610;
  }

  else
  {
    v13 = 0;
  }

  v14 = [*a1 MTL:v12 :v13)) Private:v6 :v9 Selector:&v25 :?s_knewLibraryWithSource_options_error_(objc_msgSend(v9];
  [v9 NS:? :? Private:? :? Selector:? :?s_krelease(v14)];
  if (!v14)
  {
    sub_24BCE1268(v24);
    v17 = sub_24BC95264(v24, "[metal::Device] Unable to build metal library from source\n", 58);
    if (v25)
    {
      v19 = [v25 NS:? :? Private:? :? Selector:? :?s_klocalizedDescription(v17)];
      v20 = [v19 NS:? :? Private:? :? Selector:? :?s_kUTF8String(v19)];
      v21 = strlen(v20);
      v22 = sub_24BC95264(v24, v20, v21);
      sub_24BC95264(v22, "\n", 1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x24C254100](exception, v23);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  sub_24BF192EC(&v26, 0);
  sub_24BF19370(v27);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_24BF54CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a16);
      sub_24BF192EC((v18 - 96), 0);
      sub_24BF19370(v18 - 88);
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

id sub_24BF54D30(NS::Private::Class *a1, uint64_t *a2, void *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = NS::Private::Class::s_kNSString(a1);
  v6 = [v5 NS:v4 :1 Private:? :? Selector:? :?s_kstringWithCString_encoding_(v5)];
  v7 = MTL::Private::Selector::s_knewFunctionWithName_(v6);

  return [a3 v7];
}

NS::Private::Selector *sub_24BF54DAC(NS::Private::Class *a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a2;
  if (*a4 != a4[1])
  {
    goto LABEL_14;
  }

  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = *(a2 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = a2[1];
  }

  if (v10 != v11)
  {
    goto LABEL_14;
  }

  if (v9 >= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *v7;
  }

  v14 = *a2;
  if (v12 < 0)
  {
    a2 = *a2;
  }

  a1 = memcmp(v13, a2, v10);
  if (!a1)
  {

    return sub_24BF54D30(a1, v8, a5);
  }

  else
  {
LABEL_14:
    v15 = MTL::Private::Class::s_kMTLFunctionConstantValues(a1);
    v16 = [v15 NS:? :? Private:? :? Selector:? :?s_kalloc(v15)];
    v17 = [v16 NS:? :? Private:? :? Selector:? :?s_kinit(v16)];
    v18 = v17;
    v19 = *a4;
    v20 = a4[1];
    while (v19 != v20)
    {
      v17 = [v18 MTL:*v19 :v19[1] Private:v19[2] :? Selector:? :?s_ksetConstantValue_type_atIndex_(v17)];
      v19 += 3;
    }

    v21 = MTL::Private::Class::s_kMTLFunctionDescriptor(v17);
    v22 = [v21 MTL:? :? Private:? :? Selector:? :?s_kfunctionDescriptor(v21)];
    v23 = v22;
    if (*(v8 + 23) >= 0)
    {
      v24 = v8;
    }

    else
    {
      v24 = *v8;
    }

    v25 = NS::Private::Class::s_kNSString(v22);
    v26 = [v25 NS:v24 :1 Private:? :? Selector:? :?s_kstringWithCString_encoding_(v25)];
    v27 = [v23 MTL:v26 :? Private:? :? Selector:? :?s_ksetName_(v26)];
    if (v7[23] < 0)
    {
      v7 = *v7;
    }

    v28 = NS::Private::Class::s_kNSString(v27);
    v29 = [v28 NS:v7 :1 Private:? :? Selector:? :?s_kstringWithCString_encoding_(v28)];
    v30 = [v23 MTL:v29 :? Private:? :? Selector:? :?s_ksetSpecializedName_(v29)];
    v31 = [v23 MTL:v18 :? Private:? :? Selector:? :?s_ksetConstantValues_(v30)];
    v48 = 0;
    v32 = [a5 MTL:v23 :&v48 Private:? :? Selector:? :?s_knewFunctionWithDescriptor_error_(v31)];
    if (!v32)
    {
      sub_24BCE1268(v47);
      v35 = sub_24BC95264(v47, "[metal::Device] Unable to load function ", 40);
      v36 = *(v8 + 23);
      if (v36 >= 0)
      {
        v37 = v8;
      }

      else
      {
        v37 = *v8;
      }

      if (v36 >= 0)
      {
        v38 = *(v8 + 23);
      }

      else
      {
        v38 = v8[1];
      }

      v39 = sub_24BC95264(v35, v37, v38);
      v40 = sub_24BC95264(v39, "\n", 1);
      if (v48)
      {
        v42 = [v48 NS:? :? Private:? :? Selector:? :?s_klocalizedDescription(v40)];
        v43 = [v42 NS:? :? Private:? :? Selector:? :?s_kUTF8String(v42)];
        v44 = strlen(v43);
        v45 = sub_24BC95264(v47, v43, v44);
        sub_24BC95264(v45, "\n", 1);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      MEMORY[0x24C254100](exception, v46);
      __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
    }

    v33 = v32;
    [v18 NS:? :? Private:? :? Selector:? :?s_krelease(v32)];
    return v33;
  }
}

void sub_24BF550E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a16);
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

id sub_24BF55130(id *a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  if (!a3 || (result = [*a1 MTL:a3 :&v18 Private:? :? Selector:? :?s_knewComputePipelineStateWithFunction_error_(a1)]) == 0)
  {
    sub_24BCE1268(v17);
    v5 = sub_24BC95264(v17, "[metal::Device] Unable to load kernel ", 38);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = sub_24BC95264(v5, v7, v8);
    v10 = sub_24BC95264(v9, "\n", 1);
    if (v18)
    {
      v12 = [v18 NS:? :? Private:? :? Selector:? :?s_klocalizedDescription(v10)];
      v13 = [v12 NS:? :? Private:? :? Selector:? :?s_kUTF8String(v12)];
      v14 = strlen(v13);
      v15 = sub_24BC95264(v17, v13, v14);
      sub_24BC95264(v15, "\n", 1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x24C254100](exception, v16);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  return result;
}

void sub_24BF55280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a16);
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

id sub_24BF552C8(MTL::Private::Class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (!a3)
    {
      sub_24BCE1268(v33);
      v14 = sub_24BC95264(v33, "[metal::Device] Unable to load kernel ", 38);
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

      v18 = sub_24BC95264(v14, v16, v17);
      sub_24BC95264(v18, "\n", 1);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      MEMORY[0x24C254100](exception, v32);
      __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
    }

    v8 = MTL::Private::Class::s_kMTLComputePipelineDescriptor(a1);
    v9 = [v8 NS:? :? Private:? :? Selector:? :?s_kalloc(v8)];
    v10 = [v9 NS:? :? Private:? :? Selector:? :?s_kinit(v9)];
    v11 = [v10 MTL:a3 :? Private:? :? Selector:? :?s_ksetComputeFunction_(v10)];
    v12 = [v10 MTL:a4 :? Private:? :? Selector:? :?s_ksetLinkedFunctions_(v11)];
    v31 = 0;
    result = [*a1 MTL:v10 :0 Private:0 :&v31 Selector:? :?s_knewComputePipelineStateWithDescriptor_options_reflection_error_(v12)];
    if (!result)
    {
      sub_24BCE1268(v33);
      v20 = sub_24BC95264(v33, "[metal::Device] Unable to load kernel ", 38);
      v21 = *(a2 + 23);
      if (v21 >= 0)
      {
        v22 = a2;
      }

      else
      {
        v22 = *a2;
      }

      if (v21 >= 0)
      {
        v23 = *(a2 + 23);
      }

      else
      {
        v23 = *(a2 + 8);
      }

      v24 = sub_24BC95264(v20, v22, v23);
      v25 = sub_24BC95264(v24, "\n", 1);
      if (v31)
      {
        v27 = [v31 NS:? :? Private:? :? Selector:? :?s_klocalizedDescription(v25)];
        v28 = [v27 NS:? :? Private:? :? Selector:? :?s_kUTF8String(v27)];
        v29 = strlen(v28);
        v30 = sub_24BC95264(v33, v28, v29);
        sub_24BC95264(v30, "\n", 1);
      }

      v26 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      MEMORY[0x24C254100](v26, v32);
      __cxa_throw(v26, &unk_285F93280, MEMORY[0x277D82600]);
    }
  }

  else
  {

    return sub_24BF55130(a1, a2, a3);
  }

  return result;
}

void sub_24BF5555C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a17);
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

const void *sub_24BF555B0(uint64_t a1, const void **a2)
{
  v4 = (a1 + 256);
  std::__shared_mutex_base::lock_shared((a1 + 256));
  v5 = sub_24BD1B270((a1 + 424), a2);
  if (v5)
  {
    v6 = v5[5];
  }

  else
  {
    v6 = 0;
  }

  std::__shared_mutex_base::unlock_shared(v4);
  return v6;
}

NS::Private::Selector *sub_24BF5563C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (a1 + 256);
  __p[0] = (a1 + 256);
  LOBYTE(__p[1]) = 1;
  std::__shared_mutex_base::lock_shared((a1 + 256));
  v8 = sub_24BD1B270((a1 + 424), a2);
  v9 = v8;
  if (v8)
  {
    v3 = v8[5];
  }

  std::__shared_mutex_base::unlock_shared(v7);
  if (!v9)
  {
    v16 = v7;
    v17 = 1;
    std::__shared_mutex_base::lock(v7);
    v10 = sub_24BD1B270((a1 + 424), a2);
    if (v10)
    {
      v3 = v10[5];
    }

    else
    {
      v11 = *(a3 + 24);
      if (!v11)
      {
        sub_24BCA1F3C();
      }

      (*(*v11 + 48))(__p);
      v3 = sub_24BF54A6C(a1, __p);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(a2 + 23) < 0)
      {
        sub_24BC8DE9C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v14 = *(a2 + 16);
      }

      v15 = v3;
      sub_24BF587A0((a1 + 424), __p);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::__shared_mutex_base::unlock(v7);
  }

  return v3;
}

id sub_24BF557E8(MTL::Private::Class *a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    return 0;
  }

  v3 = MTL::Private::Class::s_kMTLLinkedFunctions(a1);
  v4 = [v3 MTL:? :? Private:? :? Selector:? :?s_klinkedFunctions(v3)];
  v5 = sub_24BF58B38(__p, (a2[1] - *a2) >> 3);
  v6 = *a2;
  if (a2[1] == *a2)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      *(__p[0] + v7) = *(v6 + 8 * v7);
      ++v7;
      v6 = *a2;
      v8 = (a2[1] - *a2) >> 3;
    }

    while (v8 > v7);
  }

  v9 = __p[0];
  v10 = NS::Private::Class::s_kNSArray(v5);
  v11 = [v10 NS:v9 :v8 Private:? :? Selector:? :?s_karrayWithObjects_count_(v10)];
  [v4 MTL:v11 :? Private:? :? Selector:? :?s_ksetPrivateFunctions_(v11)];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v4;
}

void sub_24BF558E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NS::Private::Selector *sub_24BF55904(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v12 = (a1 + 48);
  v24 = a1 + 48;
  v25 = 1;
  std::__shared_mutex_base::lock((a1 + 48));
  v13 = sub_24BD1B270((a1 + 216), a4);
  if (v13)
  {
    v14 = v13[5];
  }

  else
  {
    v15 = sub_24BF53AE4(0, &v26);
    v16 = sub_24BF54DAC(v15, a2, a4, a5, a3);
    v17 = sub_24BF557E8(v16, a6);
    v14 = sub_24BF552C8(a1, a4, v16, v17);
    v18 = [v16 NS:? :? Private:? :? Selector:? :?s_krelease(v14)];
    [v17 NS:? :? Private:? :? Selector:? :?s_krelease(v18)];
    if (*(a4 + 23) < 0)
    {
      sub_24BC8DE9C(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v22 = *(a4 + 16);
    }

    v23 = v14;
    sub_24BF58BB0((a1 + 216), __p);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    sub_24BF192EC(&v26, 0);
    sub_24BF19370(v27);
  }

  std::__shared_mutex_base::unlock(v12);
  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_24BF55A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_24BF192EC(&a18, 0);
  sub_24BF19370(&a19);
  sub_24BF58AFC(&a16);
  _Unwind_Resume(a1);
}

NS::Private::Selector *sub_24BF55AF4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v12 = *(a4 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a4 + 8);
  }

  if (v12)
  {
    v13 = a4;
  }

  else
  {
    v13 = a2;
  }

  v14 = (a1 + 48);
  std::__shared_mutex_base::lock_shared((a1 + 48));
  v15 = sub_24BD1B270((a1 + 216), v13);
  v16 = v15;
  if (v15)
  {
    v6 = v15[5];
  }

  std::__shared_mutex_base::unlock_shared(v14);
  if (v16)
  {
    return v6;
  }

  return sub_24BF55904(a1, a2, a3, v13, a5, a6);
}

NS::Private::Selector *sub_24BF55C0C(uint64_t a1, uint64_t *a2, const void **a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v12 = *(a4 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a4 + 8);
  }

  if (v12)
  {
    v13 = a4;
  }

  else
  {
    v13 = a2;
  }

  v14 = (a1 + 48);
  std::__shared_mutex_base::lock_shared((a1 + 48));
  v15 = sub_24BD1B270((a1 + 216), v13);
  v16 = v15;
  if (v15)
  {
    v6 = v15[5];
  }

  std::__shared_mutex_base::unlock_shared(v14);
  if (v16)
  {
    return v6;
  }

  v18 = sub_24BF555B0(a1, a3);

  return sub_24BF55904(a1, a2, v18, v13, a5, a6);
}

MTL::Private::Selector *sub_24BF55D30(MTL::Private::Selector *result, uint64_t a2)
{
  if (*(result + 58))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[Device::set_residency_set] Can only be set once.");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  if (a2)
  {
    v2 = result;
    *(result + 58) = a2;
    for (i = *(result + 3); i; i = *i)
    {
      result = [i[3] MTL:*(v2 + 58) :? Private:? :? Selector:? :?s_kaddResidencySet_(result)];
    }
  }

  return result;
}

uint64_t *sub_24BF55DE0()
{
  if ((atomic_load_explicit(&qword_27F07F708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07F708))
  {
    sub_24BF537E8(&qword_27F07F518);
    __cxa_atexit(sub_24BF53F5C, &qword_27F07F518, &dword_24BC7E000);
    __cxa_guard_release(&qword_27F07F708);
  }

  return &qword_27F07F518;
}

uint64_t sub_24BF55E7C(uint64_t a1, int a2)
{
  v4 = a1;
  v5 = a2;
  v3 = 1;
  result = sub_24BE80C50(&v4 + 1, &v3);
  if (result)
  {
    sub_24BF55DE0();
    return sub_24BF53F60(qword_27F07F518, v4);
  }

  return result;
}

void sub_24BF55ED4(uint64_t a1@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  sub_24BE80B9C();
  v2 = sub_24BF55DE0();
  v3 = qword_27F07F518[0];
  v4 = [qword_27F07F518[0] MTL:? :? Private:? :? Selector:? :?s_karchitecture(v2)];
  v5 = [v4 MTL:? :? Private:? :? Selector:? :?s_kname(v4)];
  v6 = [v5 NS:? :? Private:? :? Selector:? :?s_kUTF8String(v5)];
  sub_24BC836D4(__p, v6);
  *v27 = 0x1800000006;
  v13 = 8;
  v14 = 0;
  sysctl(v27, 2u, &v14, &v13, 0, 0);
  v7 = sub_24BF5679C(v17, "architecture", __p);
  v8 = [v3 MTL:? :? Private:? :? Selector:? :?s_kmaxBufferLength(v7)];
  v9 = sub_24BC836D4(v18, "max_buffer_length");
  v19 = v8;
  v20 = 1;
  v10 = [v3 MTL:? :? Private:? :? Selector:? :?s_krecommendedMaxWorkingSetSize(v9)];
  sub_24BC836D4(v21, "max_recommended_working_set_size");
  v22 = v10;
  v23 = 1;
  sub_24BC836D4(v24, "memory_size");
  v25[0] = v14;
  v26 = 1;
  sub_24BF59060(a1, v17, 4);
  for (i = 0; i != -28; i -= 7)
  {
    sub_24BF194C0(&v25[i]);
    if (v24[i * 8 + 23] < 0)
    {
      operator delete(*&v24[i * 8]);
    }
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24BF560B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  v20 = v18 + 168;
  v21 = -224;
  do
  {
    v20 = sub_24BF56120(v20) - 56;
    v21 += 56;
  }

  while (v21);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BF56120(uint64_t a1)
{
  sub_24BF194C0(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BF5615C(const void **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = &v11;
  sub_24BC8E2D4(&v11, v4 + 9);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v11.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ".metallib");
  if (dladdr(sub_24BF5615C, &v12))
  {
    sub_24BCCB0F4(&__p, &v12);
    sub_24BF53054(&__p, &v11, &v9);
    v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *a2 = v9;
    a2[2] = v10;
    HIBYTE(v10) = 0;
    LOBYTE(v9) = 0;
    if (v7 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_24BF56280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

id sub_24BF562B8(NS::Private::Class *a1, uint64_t a2)
{
  v4 = NS::Private::Class::s_kNSString(a1);
  v5 = [v4 NS:a2 :4 Private:? :? Selector:? :?s_kstringWithCString_encoding_(v4)];
  v7 = 0;
  return [a1 MTL:v5 :&v7 Private:? :? Selector:? :?s_knewLibraryWithFile_error_(v5)];
}

uint64_t sub_24BF56330(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_24BCA3EB4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_24BF563A8(a1, i + 2);
  }

  return a1;
}

void *sub_24BF563A8(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_24BF56630(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_24BCA1F3C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_24BF56684(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_24BF56704(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BF5679C(uint64_t a1, char *a2, __int128 *a3)
{
  sub_24BC836D4(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = 0;
  return a1;
}

void sub_24BF567F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF56810(uint64_t a1)
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

uint64_t sub_24BF56890(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BF56928(uint64_t a1)
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

uint64_t sub_24BF569A8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *sub_24BF56A28(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

id *sub_24BF56C8C(id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_24BF5348C(result);

    JUMPOUT(0x24C2548B0);
  }

  return result;
}

void *sub_24BF56CD8(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_24BF56F3C(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_24BF57028(uint64_t a1, uint64_t *a2)
{
  sub_24BD9A318(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

uint64_t sub_24BF570CC(uint64_t a1)
{
  sub_24BF57108(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BF57108(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_24BF5714C((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_24BF5714C(uint64_t a1)
{
  v2 = [*a1 NS:? :? Private:? :? Selector:? :?s_krelease(a1)];
  v3 = *(a1 + 112);
  if (v3)
  {
    [v3 NS:? :? Private:? :? Selector:? :?s_krelease(v2)];
  }

  v6 = (a1 + 152);
  sub_24BCC961C(&v6);
  v4 = *(a1 + 144);
  if (v4)
  {
    sub_24BC9EC78(v4);
  }

  sub_24BF56C8C((a1 + 128), 0);
  std::mutex::~mutex((a1 + 48));
  sub_24BF571E0(a1 + 8);
  return a1;
}

uint64_t sub_24BF571E0(uint64_t a1)
{
  sub_24BF5721C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BF5721C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_24BC9EC78(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_24BF57264(uint64_t *a1, std::string *__str, std::string *a3)
{
  v4 = __str;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = __str == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), v4);
        *(v8 + 40) = v4[1].__r_.__value_.__l.__data_;
        v10 = *v8;
        sub_24BD1C768(a1, v8);
        v4 = (v4 + 32);
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_24BE4A5E0(a1, v10);
  }

  while (v4 != a3)
  {
    sub_24BF5736C(a1, &v4->__r_.__value_.__l.__data_);
    v4 = (v4 + 32);
  }
}

void sub_24BF5733C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_24BE4A5E0(v1, v2);
  __cxa_rethrow();
}

const void **sub_24BF5736C(void *a1, const void **a2)
{
  v4 = sub_24BCCC4B4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_24BF575CC();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_24BCCC960(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_24BF575A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_24BE4A8AC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF57670(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24BE4A8AC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BF5768C(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24BF57918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BF5792C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF5792C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24BF5714C(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_24BF57978(uint64_t *a1, void *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v8) >> 4)
  {
    v10 = *a1;
    v11 = a5 + ((v8 - *a1) >> 4);
    if (v11 >> 60)
    {
      sub_24BC8E01C();
    }

    v12 = a2 - v10;
    v13 = v9 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v26[4] = a1;
    if (v14)
    {
      sub_24BCB53E8(a1, v14);
    }

    v23 = (16 * v15);
    v26[0] = 0;
    v26[1] = 16 * v15;
    v26[3] = 0;
    v24 = 16 * a5;
    do
    {
      *v23++ = *a3;
      *a3 = 0;
      *(a3 + 8) = 0;
      a3 += 16;
      v24 -= 16;
    }

    while (v24);
    v26[2] = 16 * v15 + 16 * a5;
    v5 = sub_24BE9D078(a1, v26, v5);
    sub_24BCC98C0(v26);
    return v5;
  }

  v16 = (v8 - a2) >> 4;
  if (v16 >= a5)
  {
    sub_24BE9D014(a1, a2, v8, &a2[2 * a5]);
    v22 = (a3 + 16 * a5);
    v21 = a3;
    goto LABEL_18;
  }

  v17 = (v8 - a2 + a3);
  v18 = a1[1];
  if (v17 != a4)
  {
    v18 = a1[1];
    v19 = v8 - a2 + a3;
    v20 = v18;
    do
    {
      *v20++ = *v19;
      *v19 = 0;
      *(v19 + 8) = 0;
      v19 += 16;
      ++v18;
    }

    while (v19 != a4);
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    sub_24BE9D014(a1, a2, v8, &a2[2 * a5]);
    v21 = a3;
    v22 = v17;
LABEL_18:
    sub_24BDFEB14(v26, v21, v22, v5);
  }

  return v5;
}

void sub_24BF57B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC98C0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BF57B28(void *a1, void *a2)
{
  result = sub_24BF56F3C(a1, a2);
  if (result)
  {
    sub_24BD80CF0(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_24BF57B60(uint64_t a1)
{
  sub_24BF57B9C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BF57B9C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        sub_24BC9EC78(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_24BF57BE4(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_24BF57E74(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      sub_24BC9EC78(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_24BF57ED4(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_24BF5815C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_24BC9EC78(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_24BF581BC(uint64_t a1)
{
  *a1 = &unk_285F9ED20;
  v4 = (a1 + 112);
  sub_24BCC961C(&v4);
  sub_24BCA3B84(a1 + 72);
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  sub_24BF57B60(a1 + 16);
  return a1;
}

uint64_t sub_24BF58230(uint64_t a1)
{
  *a1 = &unk_285F9ED20;
  v4 = (a1 + 112);
  sub_24BCC961C(&v4);
  sub_24BCA3B84(a1 + 72);
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  sub_24BF57B60(a1 + 16);
  return MEMORY[0x24C2548B0](a1, 0x10A1C40779AEDC9);
}

void sub_24BF58360(_Unwind_Exception *a1)
{
  sub_24BCA3B84((v1 + 9));
  v3 = v1[8];
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  sub_24BF57B60((v1 + 2));
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF583A0(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_285F9ED20;
  a2[1] = v4;
  sub_24BF58620((a2 + 2), (a1 + 2));
  v5 = a1[8];
  a2[7] = a1[7];
  a2[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_24BF56330((a2 + 9), (a1 + 9));
  a2[14] = 0;
  a2[15] = 0;
  a2[16] = 0;
  return sub_24BCC9548((a2 + 14), a1[14], a1[15], (a1[15] - a1[14]) >> 4);
}

void sub_24BF58430(_Unwind_Exception *a1)
{
  sub_24BCA3B84(v1 + 72);
  v3 = *(v1 + 64);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  sub_24BF57B60(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF58460(uint64_t a1)
{
  v4 = (a1 + 112);
  sub_24BCC961C(&v4);
  sub_24BCA3B84(a1 + 72);
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  return sub_24BF57B60(a1 + 16);
}

void sub_24BF584B4(uint64_t a1)
{
  v3 = (a1 + 112);
  sub_24BCC961C(&v3);
  sub_24BCA3B84(a1 + 72);
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  sub_24BF57B60(a1 + 16);
  operator delete(a1);
}

void sub_24BF58510(void *a1)
{
  v2 = a1[15];
  v3 = a1[14];
  while (v2 != v3)
  {
    sub_24BE7F218(v2 - 16);
  }

  a1[15] = v3;
  v4 = a1[1];
  std::mutex::lock((v4 + 48));
  for (i = a1[11]; i; i = *i)
  {
    v7 = i[2];
    v6 = sub_24BF56F3C((a1[1] + 8), &v7);
    if (v6 && v6[3] == a1[7])
    {
      sub_24BF58698((a1[1] + 8), v6);
    }
  }

  std::mutex::unlock((v4 + 48));
}

uint64_t sub_24BF585D4(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9ED90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF58620(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_24BCA3EB4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_24BF57BE4(a1, i + 2);
  }

  return a1;
}

uint64_t sub_24BF58698(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_24BD80D34(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_24BF5815C(&v6, v3);
  }

  return v2;
}

void sub_24BF58704(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9EDB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

const void **sub_24BF587A0(void *a1, const void **a2)
{
  v4 = sub_24BCCC4B4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_24BF58A00();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_24BCCC960(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_24BF589DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_24BE4A8AC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF58AA4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24BE4A8AC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF58AC0(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

uint64_t sub_24BF58AFC(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

void *sub_24BF58B38(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BD4BDE0(result, a2);
  }

  return result;
}

void sub_24BF58B94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_24BF58BB0(void *a1, const void **a2)
{
  v4 = sub_24BCCC4B4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_24BF58E10();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_24BCCC960(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_24BF58DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_24BE4A8AC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF58EB4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24BE4A8AC(v3, v2);
  _Unwind_Resume(a1);
}

id sub_24BF58F58(NS::Private::Selector *a1, void **a2)
{
  v2 = *a2;
  v3 = NS::Private::Selector::s_krelease(a1);

  return [v2 v3];
}

uint64_t sub_24BF58F94(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9EE70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BF58FE0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_24BF59060(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      sub_24BF590DC(a1, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **sub_24BF590DC(void *a1, const void **a2)
{
  v4 = sub_24BCCC4B4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_24BF59338();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_24BCCC960(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_24BF59324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BF197C8(va);
  _Unwind_Resume(a1);
}

void *sub_24BF593B4(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_24BF5942C((__dst + 3), a2 + 24);
  return __dst;
}

void sub_24BF59410(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF5942C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_24BF59474(a1, a2);
  return a1;
}

uint64_t sub_24BF59474(uint64_t a1, uint64_t a2)
{
  result = sub_24BF194C0(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_285F9EE80[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

void *sub_24BF594D8(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_24BC8DE9C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

void sub_24BF59514()
{
  if (__cxa_guard_acquire(&qword_27F07F718))
  {
    byte_27F07F710 = 1;
    __cxa_guard_release(&qword_27F07F718);
  }
}

void sub_24BF5954C(uint64_t a1, uint64_t *a2)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_24BF53AE4(a1, v6);
  v4 = *(a2 + 4);
  v5 = sub_24BF55DE0();
  [*v5 MTL:? :? Private:? :? Selector:? :?s_knewSharedEvent(v5)];
  operator new();
}

void sub_24BF59654(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_24BF597DC(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

id sub_24BF596CC(uint64_t a1)
{
  result = [*(a1 + 16) MTL:*(a1 + 32) :-1 Private:? :? Selector:? :?s_kwaitUntilSignaledValue_timeoutMS_(a1)];
  if ((result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[Event::wait] Timed out");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  return result;
}

id sub_24BF59758(MTL::Private::Selector *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 4);
  v3 = MTL::Private::Selector::s_ksetSignaledValue_(a1);

  return [v1 v3];
}

uint64_t sub_24BF597DC(NS::Private::Class *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BF53AE4(a1, &v5);
  [a1 NS:? :? Private:? :? Selector:? :?s_krelease(v2)];
  sub_24BF192EC(&v5, 0);
  result = sub_24BF19370(v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF59890(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BF598C8(NS::Private::Class *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 3);
  v2 = sub_24BF53AE4(a1, &v5);
  [v1 NS:? :? Private:? :? Selector:? :?s_krelease(v2)];
  sub_24BF192EC(&v5, 0);
  result = sub_24BF19370(v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF5994C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_24BC8DCE8(exception_object);
}

uint64_t sub_24BF59988(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9EEE0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_24BF599C8(int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = 2;
  v5 = 2;
  v6 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (a1 >= 4)
  {
    do
    {
      if (v2 % v4)
      {
        v5 = ++v4;
      }

      else
      {
        sub_24BC97D60(a2, &v5);
        v4 = v5;
        v2 /= v5;
        v6 = v2;
      }
    }

    while (v4 * v4 <= v2);
  }

  if (v2 >= 2)
  {
    sub_24BC97D60(a2, &v6);
  }
}

void sub_24BF59A5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF59A7C(uint64_t result)
{
  if ((result ^ (result - 1)) <= result - 1)
  {
    v1 = log2(result);
    return exp2(ceil(v1));
  }

  return result;
}

void sub_24BF59AB8(int a1@<W0>, uint64_t *a2@<X8>)
{
  *&v20[4] = *MEMORY[0x277D85DE8];
  v18[0] = xmmword_24BFF4DA8;
  v18[1] = unk_24BFF4DB8;
  v19 = 2;
  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_24BCC9910(&__p, v18, v20, 9uLL);
  LODWORD(v18[0]) = 0;
  sub_24BD0E524(a2, (v16 - __p) >> 2);
  v4 = __p;
  if (a1 != 1)
  {
    if (v16 != __p)
    {
      v5 = 0;
      v6 = (v16 - __p) >> 2;
      v8 = a1 < 512 && (a1 ^ (a1 - 1)) > a1 - 1;
      if (v6 <= 1)
      {
        v6 = 1;
      }

      do
      {
        v9 = v4[v5];
        if (v9 <= 4 || !v8)
        {
          v11 = *a2;
          while (1)
          {
            v12 = a1 / v9;
            if (a1 % v9)
            {
              break;
            }

            ++*(v11 + 4 * v5);
            a1 /= v9;
            if (v12 == 1)
            {
              goto LABEL_20;
            }
          }
        }

        ++v5;
      }

      while (v5 != v6);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unplannable");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

LABEL_20:
  if (v4)
  {
    v16 = v4;
    operator delete(v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_24BF59C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF59C80(int a1@<W0>, uint64_t a2@<X8>)
{
  *&v49[4] = *MEMORY[0x277D85DE8];
  v47[0] = xmmword_24BFF4DA8;
  v47[1] = unk_24BFF4DB8;
  v48 = 2;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  sub_24BCC9910(&v44, v47, v49, 9uLL);
  sub_24BECE068(v47, v44, v45);
  *(a2 + 8) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 56) = 0xFFFFFFFF00000001;
  *(a2 + 64) = 0;
  *(a2 + 68) = 0;
  *(a2 + 72) = 0;
  *a2 = a1;
  LODWORD(__p[0]) = 0;
  sub_24BD0E524(v42, (v45 - v44) >> 2);
  v4 = v43;
  v35 = v42[0];
  *(a2 + 32) = *v42;
  *(a2 + 48) = v4;
  sub_24BF599C8(a1, v42);
  if (a1 > 4096)
  {
    *(a2 + 64) = 1;
    if ((a1 ^ (a1 - 1)) <= a1 - 1)
    {
      v25 = log2((2 * a1 - 1));
      *(a2 + 60) = exp2(ceil(v25));
    }

    else
    {
      if (a1 <= 0x10000)
      {
        v5 = 64;
      }

      else
      {
        v5 = 1024;
      }

      if (a1 <= 0x10000)
      {
        v6 = 6;
      }

      else
      {
        v6 = 10;
      }

      *(a2 + 68) = a1 >> v6;
      *(a2 + 72) = v5;
    }

    goto LABEL_50;
  }

  v31 = (a2 + 8);
  v7 = v42[0];
  v8 = v42[1];
  if (v42[0] == v42[1])
  {
    v36 = a1;
LABEL_47:
    sub_24BF59AB8(v36, __p);
    v26 = *v31;
    if (*v31)
    {
      *(a2 + 16) = v26;
      operator delete(v26);
    }

    *(a2 + 8) = *__p;
    *(a2 + 24) = v41;
LABEL_50:
    v27 = v42[0];
    if (v42[0])
    {
      v42[1] = v42[0];
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v9 = log2((2 * a1 - 1));
  v10 = 0;
  v11 = exp2(ceil(v9));
  if (2 * a1 == 2)
  {
    v11 = 1;
  }

  v32 = v11;
  v33 = 0;
  v12 = v35;
  v13 = 1;
  v36 = a1;
  while (1)
  {
    v14 = *v7;
    v15 = *(&v47[0] + 1);
    if (*(&v47[0] + 1))
    {
      v16 = v47 + 8;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v16 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v16 != v47 + 8 && v14 >= *(v16 + 7))
      {
        goto LABEL_43;
      }
    }

    if (a1 > 2048 || v13 >= 2)
    {
      break;
    }

    sub_24BF599C8(v14 - 1, __p);
    v17 = __p[0];
    if (__p[0] == __p[1])
    {
LABEL_32:
      sub_24BF59AB8(v14 - 1, &v38);
      if (v12)
      {
        *(a2 + 40) = v12;
        operator delete(v12);
      }

      v21 = v38;
      *(a2 + 32) = v38;
      *(a2 + 48) = v39;
      *(a2 + 56) = v14;
      v12 = v21;
      v22 = 1;
      v13 = v14;
      v36 /= v14;
    }

    else
    {
      while (*(&v47[0] + 1))
      {
        v18 = *v17;
        v19 = v47 + 8;
        v20 = *(&v47[0] + 1);
        do
        {
          if (*(v20 + 7) >= v18)
          {
            v19 = v20;
          }

          v20 = *&v20[8 * (*(v20 + 7) < v18)];
        }

        while (v20);
        if (v19 == v47 + 8 || v18 < *(v19 + 7))
        {
          break;
        }

        if (++v17 == __p[1])
        {
          goto LABEL_32;
        }
      }

      *(a2 + 64) = 0;
      *(a2 + 60) = v32;
      sub_24BF59AB8(v32, &v38);
      if (v10)
      {
        *(a2 + 16) = v10;
        operator delete(v10);
      }

      v34 = v38;
      *(a2 + 8) = v38;
      *(a2 + 24) = v39;
      sub_24BD0E524(&v38, (v45 - v44) >> 2);
      v23 = *(a2 + 32);
      if (v23)
      {
        *(a2 + 40) = v23;
        operator delete(v23);
      }

      v22 = 0;
      v24 = v38;
      *(a2 + 32) = v38;
      *(a2 + 48) = v39;
      v12 = v24;
      v10 = v34;
      v33 = 1;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_43:
    if (++v7 == v8)
    {
      goto LABEL_47;
    }
  }

  *(a2 + 64) = a1 > 2048;
  *(a2 + 60) = v32;
  sub_24BF59AB8(v32, __p);
  if (v10)
  {
    *(a2 + 16) = v10;
    operator delete(v10);
  }

  v37 = __p[0];
  *(a2 + 8) = *__p;
  *(a2 + 24) = v41;
  LODWORD(v38) = 0;
  sub_24BD0E524(__p, (v45 - v44) >> 2);
  v29 = *(a2 + 32);
  if (v29)
  {
    *(a2 + 40) = v29;
    operator delete(v29);
  }

  v30 = __p[0];
  *(a2 + 32) = *__p;
  *(a2 + 48) = v41;
  v12 = v30;
  v10 = v37;
  v33 = 1;
LABEL_61:
  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  if ((v33 & 1) == 0)
  {
    if (v12)
    {
      *(a2 + 40) = v12;
      operator delete(v12);
      v10 = *(a2 + 8);
    }

    if (v10)
    {
      *(a2 + 16) = v10;
      v27 = v10;
LABEL_52:
      operator delete(v27);
    }
  }

LABEL_53:
  sub_24BCC8A84(v47, *(&v47[0] + 1));
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_24BF5A148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BF5A1D0(v29);
  sub_24BCC8A84(v30 - 144, *(v30 - 136));
  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void *sub_24BF5A1D0(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_24BF5A214(uint64_t a1)
{
  *&v40[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v34 = 0;
  __dst = 0;
  v36 = 0;
  v37 = xmmword_24BFF4DA8;
  v38 = unk_24BFF4DB8;
  v39 = 2;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  sub_24BCC9910(&v31, &v37, v40, 9uLL);
  sub_24BCA2788(&v34, 0, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
  sub_24BCA2788(&v34, __dst, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 2);
  *(&v37 + 1) = 0;
  *&v38 = 0;
  *&v37 = &v37 + 8;
  v4 = v34;
  v3 = __dst;
  if (__dst == v34)
  {
    v6 = 0;
LABEL_39:
    v7 = 1;
    goto LABEL_40;
  }

  v5 = 0;
  do
  {
    LODWORD(__p[0]) = *(v31 + v5 % ((v32 - v31) >> 2));
    if (v4[v5] >= 1)
    {
      sub_24BD69100(&v37, __p);
      v4 = v34;
      v3 = __dst;
    }

    ++v5;
  }

  while (v5 < (v3 - v4) >> 2);
  v6 = *(&v37 + 1);
  v7 = *(&v37 + 1) == 0;
  if (!*(&v37 + 1))
  {
    goto LABEL_39;
  }

  v8 = &v37 + 2;
  v9 = *(&v37 + 1);
  do
  {
    if (v9[7] >= 7)
    {
      v8 = v9;
    }

    v9 = *&v9[2 * (v9[7] < 7)];
  }

  while (v9);
  if (v8 != (&v37 + 8) && v8[7] <= 7)
  {
    v10 = &v37 + 2;
    v11 = *(&v37 + 1);
    do
    {
      if (v11[7] >= 11)
      {
        v10 = v11;
      }

      v11 = *&v11[2 * (v11[7] < 11)];
    }

    while (v11);
    if (v10 != (&v37 + 8) && v10[7] < 12)
    {
      goto LABEL_47;
    }

    v12 = &v37 + 2;
    v13 = *(&v37 + 1);
    do
    {
      if (v13[7] >= 13)
      {
        v12 = v13;
      }

      v13 = *&v13[2 * (v13[7] < 13)];
    }

    while (v13);
    if (v12 != (&v37 + 8) && v12[7] < 14)
    {
      goto LABEL_47;
    }
  }

  v14 = &v37 + 2;
  v15 = *(&v37 + 1);
  do
  {
    if (v15[7] >= 11)
    {
      v14 = v15;
    }

    v15 = *&v15[2 * (v15[7] < 11)];
  }

  while (v15);
  if (v14 != (&v37 + 8) && v14[7] <= 11)
  {
    v16 = &v37 + 2;
    v17 = *(&v37 + 1);
    do
    {
      if (v17[7] >= 13)
      {
        v16 = v17;
      }

      v17 = *&v17[2 * (v17[7] < 13)];
    }

    while (v17);
    if (v16 != (&v37 + 8) && v16[7] < 14)
    {
      v18 = 11;
      goto LABEL_74;
    }
  }

LABEL_40:
  if (v2 > 3644)
  {
    if (v2 != 3969)
    {
      if (v2 != 3645)
      {
        goto LABEL_48;
      }

LABEL_46:
      v18 = 5;
      goto LABEL_74;
    }

LABEL_47:
    v18 = 7;
    goto LABEL_74;
  }

  if (v2 == 1982)
  {
    goto LABEL_46;
  }

  if (v2 == 3159)
  {
    v18 = 13;
    goto LABEL_74;
  }

LABEL_48:
  if (v38 != 2)
  {
    if (v38 == 1)
    {
      v18 = *(v37 + 28);
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (v7)
  {
    goto LABEL_73;
  }

  v19 = &v37 + 2;
  v20 = v6;
  do
  {
    if (v20[7] >= 11)
    {
      v19 = v20;
    }

    v20 = *&v20[2 * (v20[7] < 11)];
  }

  while (v20);
  if (v19 == (&v37 + 8) || v19[7] >= 12)
  {
    v21 = &v37 + 2;
    do
    {
      if (v6[7] >= 13)
      {
        v21 = v6;
      }

      v6 = *&v6[2 * (v6[7] < 13)];
    }

    while (v6);
    if (v21 == (&v37 + 8) || v21[7] > 13)
    {
LABEL_73:
      sub_24BECD290(__p, v37, &v37 + 8);
      v18 = *(__p[0] + 1);
      __p[1] = __p[0];
      operator delete(__p[0]);
      goto LABEL_74;
    }
  }

  v22 = v37;
  if ((&v37 + 8) == v37)
  {
    v18 = 0;
  }

  else
  {
    v23 = 0;
    do
    {
      v24 = *(v22 + 1);
      v25 = v22;
      if (v24)
      {
        do
        {
          v26 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v26 = *(v25 + 2);
          v27 = *v26 == v25;
          v25 = v26;
        }

        while (!v27);
      }

      v23 += *(v22 + 7);
      v22 = v26;
    }

    while (v26 != (&v37 + 8));
    v18 = (v23 / 2);
  }

LABEL_74:
  sub_24BCC8A84(&v37, *(&v37 + 1));
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v34)
  {
    __dst = v34;
    operator delete(v34);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_24BF5A60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20)
{
  sub_24BCC8A84(&a19, a20);
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BF5A660(int a1, int a2, int a3)
{
  if (!a2)
  {
    return 1;
  }

  LODWORD(result) = 1;
  do
  {
    if (a2)
    {
      result = (result * a1 % a3);
    }

    else
    {
      result = result;
    }

    a1 = a1 * a1 % a3;
    v5 = a2 > 1;
    a2 >>= 1;
  }

  while (v5);
  return result;
}

uint64_t sub_24BF5A6A8(int a1)
{
  v2 = a1 - 1;
  sub_24BF599C8(a1 - 1, &__p);
  if (a1 < 4)
  {
    v4 = 0;
    v3 = 2;
LABEL_16:
    if (__p)
    {
LABEL_17:
      v12 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v3 = 2;
    v4 = 1;
    while (1)
    {
      v5 = __p;
      if (__p == v12)
      {
        break;
      }

      while (1)
      {
        v6 = v2 / *v5;
        if (!v6)
        {
          break;
        }

        v7 = 1;
        v8 = v3;
        do
        {
          if (v6)
          {
            v7 = (v8 * v7) % a1;
          }

          v8 = v8 * v8 % a1;
          v9 = v6 > 1;
          v6 >>= 1;
        }

        while (v9);
        if (v7 == 1)
        {
          break;
        }

        if (++v5 == v12)
        {
          goto LABEL_16;
        }
      }

      v4 = ++v3 < v2;
      if (v3 == v2)
      {
        v3 = v2;
        if (__p)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

    v4 = 1;
    v3 = 2;
    if (__p)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  if (v4)
  {
    return v3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_24BF5A7B0(int a1)
{
  v21[11] = *MEMORY[0x277D85DE8];
  v2 = sub_24BF5A6A8(a1);
  v3 = v2;
  v4 = 1;
  v5 = a1 - 2;
  if (a1 != 2)
  {
    v6 = v2;
    do
    {
      if (v5)
      {
        v4 = v6 * v4 % a1;
      }

      v6 = v6 * v6 % a1;
      v7 = v5 > 1;
      v5 >>= 1;
    }

    while (v7);
  }

  v8 = (a1 - 1);
  sub_24BF5F3FC(v21, v8);
  sub_24BF5F3FC(&v20, v8);
  if (a1 >= 2)
  {
    v9 = 0;
    v10 = v21[0];
    v11 = v20;
    do
    {
      v12 = 1;
      if (v9)
      {
        v13 = v3;
        v14 = v9;
        do
        {
          if (v14)
          {
            v12 = (v13 * v12) % a1;
          }

          v13 = v13 * v13 % a1;
          v7 = v14 > 1;
          v14 >>= 1;
        }

        while (v7);
        v10[v9] = v12;
        v12 = 1;
        v15 = v4;
        v16 = v9;
        do
        {
          if (v16)
          {
            v12 = (v15 * v12) % a1;
          }

          v15 = v15 * v15 % a1;
          v7 = v16 > 1;
          v16 >>= 1;
        }

        while (v7);
      }

      else
      {
        *v10 = 1;
      }

      *(v11 + 2 * v9++) = v12;
    }

    while (v9 != v8);
  }

  v17 = a1 - 1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v17, &v18, 1uLL);
  sub_24BE80CF0();
  sub_24BF5F474();
}

void sub_24BF5ACD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, void *a39, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_24BE7F218(&a29);
  if (a31)
  {
    a32 = a31;
    operator delete(a31);
  }

  sub_24BE7F218(&a37);
  sub_24BE7F218(v40 - 232);
  v42 = *(v40 - 216);
  if (v42)
  {
    *(v40 - 208) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 192);
  if (v43)
  {
    *(v40 - 184) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

void sub_24BF5AE30(float *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 == 0.0)
  {
    expf(v1);
    return;
  }

  if (fabsf(v1) != INFINITY)
  {
    goto LABEL_12;
  }

  if (v1 < 0.0)
  {
    if ((LODWORD(v2) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v2 = 1.0;
    }

    goto LABEL_12;
  }

  if ((LODWORD(v2) & 0x7FFFFFFFu) < 0x7F800000)
  {
LABEL_12:
    v4 = v2;
    expf(v1);
    __sincosf_stret(v4);
    return;
  }

  if (fabsf(v2) != INFINITY)
  {
    v3 = *(a1 + 1);
  }
}

void sub_24BF5AEFC(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t **a4, char a5, uint64_t a6, uint64_t a7, unint64_t a8, float a9)
{
  v18 = *a1;
  v19 = a1[1];
  if (*a1 == v19)
  {
    goto LABEL_5;
  }

  v20 = 1;
  do
  {
    v21 = *v18++;
    v20 *= v21;
  }

  while (v18 != v19);
  if (v20)
  {
LABEL_5:
    sub_24BF5F868(a1, a2, a3, a6 == a7, a4);
    sub_24BF5FBF8(v27, a1, a2);
    v30 = a6;
    sub_24BF5FBF8(v23, a1, a3);
    v26 = a7;
    v22 = a5;
    sub_24BF5F9A8(v27, v23, a4, a8, &v22, 1, a9);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    if (v23[0])
    {
      v23[1] = v23[0];
      operator delete(v23[0]);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v27[0])
    {
      v27[1] = v27[0];
      operator delete(v27[0]);
    }
  }
}

void sub_24BF5B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_24BD866B0(va);
  sub_24BD866B0(va1);
  _Unwind_Resume(a1);
}

void sub_24BF5B054(int a1, int a2)
{
  v27[15] = *MEMORY[0x277D85DE8];
  v4 = a1;
  sub_24BF5F7F0(v27, a1);
  v16 = 0;
  sub_24BF70D80(&v26, a2);
  v5 = 1 - a1;
  if (1 - a1 < a1)
  {
    v6 = a1;
    v7 = v5;
    v8 = 8 * v4;
    v9 = 2 * a1 - 1;
    v10 = v8 + 8 * v5;
    do
    {
      v16 = 0;
      v17 = v7 * v7 * 3.14159265 / v6;
      sub_24BDDE364(&v16);
      v11 = v26 + v10;
      *&v12 = v12;
      *&v13 = v13;
      *(v11 - 8) = LODWORD(v12);
      *(v11 - 4) = LODWORD(v13);
      if ((v7 & 0x8000000000000000) == 0)
      {
        v16 = 0;
        v17 = -(v7 * v7 * 3.14159265 / v6);
        sub_24BDDE364(&v16);
        v15.f64[1] = v14;
        *(v27[0] + 8 * v7) = vcvt_f32_f64(v15);
      }

      ++v7;
      v10 += 8;
      --v9;
    }

    while (v9);
  }

  v18 = a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v18, &v19, 1uLL);
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_24BE7E8D4();
}

void sub_24BF5B4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a9)
  {
    operator delete(a9);
  }

  sub_24BE7F218(&a30);
  sub_24BE7F218(&a40);
  v42 = *(v40 - 248);
  if (v42)
  {
    *(v40 - 240) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 224);
  if (v43)
  {
    *(v40 - 216) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

void sub_24BF5B63C(uint64_t **a1, uint64_t **a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    a1 = a2;
  }

  v7 = sub_24BD1EEAC(a1, a3);
  sub_24BF5B054(v7, *(a6 + 60));
}

void sub_24BF5C738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BE7F218(&a18);
  if (__p)
  {
    a72 = __p;
    operator delete(__p);
  }

  v74 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v74;
    operator delete(v74);
  }

  sub_24BE7F218(&a47);
  sub_24BE7F218(&a63);
  v75 = *(v72 - 120);
  if (v75)
  {
    *(v72 - 112) = v75;
    operator delete(v75);
  }

  sub_24BE7F218(&STACK[0x2E0]);
  sub_24BE7F218(&STACK[0x330]);
  v76 = STACK[0x340];
  if (STACK[0x340])
  {
    STACK[0x348] = v76;
    operator delete(v76);
  }

  sub_24BE7F218(&STACK[0x398]);
  sub_24BE7F218(v72 - 248);
  v77 = *(v72 - 232);
  if (v77)
  {
    *(v72 - 224) = v77;
    operator delete(v77);
  }

  sub_24BE7F218(v72 - 192);
  sub_24BE7F218(v72 - 208);
  _Unwind_Resume(a1);
}

void sub_24BF5CDC0(uint64_t **a1, uint64_t *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, unint64_t a6, int a7, char a8, uint64_t a9)
{
  v188[4] = *MEMORY[0x277D85DE8];
  v174 = a6;
  v175 = a7;
  v173 = a4;
  v16 = *(a9 + 4);
  v116 = sub_24BF55DE0();
  v117 = a2;
  if (*(*a2 + 56) == 10)
  {
    v17 = a2;
  }

  else
  {
    v17 = a1;
  }

  v18 = sub_24BD1EEAC(v17, a3);
  v172 = v18;
  if (v18 == 1)
  {
    v19 = *MEMORY[0x277D85DE8];

    sub_24BE7F3AC(a2, a1);
    return;
  }

  if (a6)
  {
    v20 = HIDWORD(a6);
    if ((a6 & 0x100) == 0)
    {
      LODWORD(v20) = a7;
    }

    v172 = v20;
  }

  v170 = 0uLL;
  v171 = 0;
  v21 = *a1;
  if (*((*a1)[3] + 8 * a3) != 1 || (v21[21] & 6) == 0)
  {
    v163 = 0;
    __p = 0;
    v164 = 0;
    sub_24BCC9A1C(&__p, *v21, v21[1], (v21[1] - *v21) >> 2);
    v23 = (*a1)[7];
    v156 = 0;
    v157 = 0;
    v123 = 0;
    v122 = 0uLL;
    sub_24BE7E8D4();
  }

  v22 = a1[1];
  v169[0] = *a1;
  v169[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v180 = 0;
  __src = 0;
  v181 = 0;
  sub_24BD7E680(&__src, v21[3], v21[4], (v21[4] - v21[3]) >> 3);
  v24 = *(v169[0] + 160);
  v25 = sub_24BD1EEAC(a1, a3);
  if (v25 != sub_24BD1EEAC(a2, a3))
  {
    v26 = v180;
    v27 = __src;
    if (v180 != __src)
    {
      v28 = 0;
      do
      {
        v29 = v27[v28];
        if (v29 != 1)
        {
          v30 = sub_24BD1EEAC(a1, a3);
          v31 = sub_24BD1EEAC(a2, a3);
          v27 = __src;
          *(__src + v28) = v29 / v30 * v31;
          v26 = v180;
        }

        ++v28;
      }

      while (v28 < (v26 - v27) >> 3);
    }

    sub_24BD1EEAC(a1, a3);
    sub_24BD1EEAC(a2, a3);
  }

  sub_24BF59C80(v172, &__p);
  if (BYTE8(v167) == 1)
  {
    v32 = v173;
    memset(v161, 0, sizeof(v161));
    sub_24BCC9548(v161, v170, *(&v170 + 1), (*(&v170 + 1) - v170) >> 4);
    sub_24BF5E4D8(a1, a2, a3, v32, a5, &__p, v161, a9);
  }

  if ((a8 & 1) == 0)
  {
    v33 = sub_24BE7E2A4(*(*a2 + 60) * *(*a2 + 48));
    memset(v160, 0, sizeof(v160));
    sub_24BD7E680(v160, __src, v180, (v180 - __src) >> 3);
    v34 = *(v169[0] + 168);
    v188[0] = &off_285F93798;
    v188[1] = sub_24BE7E1F0;
    v188[3] = v188;
    sub_24BE7F25C(a2, v33);
  }

  *v182 = xmmword_24BFF4DA8;
  *&v182[16] = unk_24BFF4DB8;
  LODWORD(v183) = 2;
  v178 = 0;
  v176 = 0;
  v177 = 0;
  sub_24BCC9910(&v176, v182, &v183 + 4, 9uLL);
  v35 = v172;
  if (SDWORD1(v167) > 0)
  {
    v35 = DWORD1(v167);
  }

  v115 = v35;
  v159 = (v35 ^ (v35 - 1)) > v35 - 1;
  *&v182[8] = xmmword_24BFF4C50;
  *v182 = &v173;
  *&v182[24] = &v159;
  v183 = xmmword_24BFF4C60;
  v158 = 0;
  v156 = 0;
  v157 = 0;
  sub_24BF70E04(&v156, v182, &v184, 2uLL);
  v36 = v164;
  v37 = v163;
  if (v164 == v163)
  {
    v40 = 4;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    do
    {
      *v182 = &v37[v38];
      *&v182[8] = 29;
      *&v182[16] = v39 + 4;
      sub_24BF5E73C(&v156, v182);
      ++v39;
      v36 = v164;
      v37 = v163;
      v38 += 4;
    }

    while (v39 < (v164 - v163) >> 2);
    v40 = (v39 + 4);
  }

  v41 = v165;
  if (v166 != v165)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      *v182 = &v41[v42];
      *&v182[8] = 29;
      *&v182[16] = v40 + v43;
      sub_24BF5E73C(&v156, v182);
      ++v43;
      v41 = v165;
      v42 += 4;
    }

    while (v43 < (v166 - v165) >> 2);
    v37 = v163;
    v36 = v164;
  }

  v146 = __p;
  v148 = 0;
  v149 = 0;
  v147 = 0;
  sub_24BCC9A1C(&v147, v37, v36, (v36 - v37) >> 2);
  v150 = 0;
  v151 = 0;
  v152 = 0;
  sub_24BCC9A1C(&v150, v165, v166, (v166 - v165) >> 2);
  v153 = v167;
  v154 = v168;
  v44 = sub_24BF5A214(&v146);
  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

  if (v147)
  {
    v148 = v147;
    operator delete(v147);
  }

  v155 = v44;
  *v182 = &v155;
  *&v182[8] = xmmword_24BFF4C70;
  sub_24BF5E73C(&v156, v182);
  v145 = v172 / v167;
  *v182 = &v145;
  *&v182[8] = xmmword_24BFF4C80;
  sub_24BF5E73C(&v156, v182);
  if (*(*a2 + 56) == 10)
  {
    v45 = *a2;
  }

  else
  {
    v45 = *a1;
  }

  v46 = v45[6];
  if (a5)
  {
    v47 = v174;
    if (v173 == 1 && (v174 & 1) != 0)
    {
      v46 = *(*a2 + 48);
      v47 = 1;
    }
  }

  else
  {
    v47 = v174;
  }

  v48 = v46 / v172;
  v144 = v48;
  v114 = v155;
  if (v47)
  {
    v49 = 4;
  }

  else
  {
    v49 = 1;
  }

  if (v49 <= 256 / v115)
  {
    v50 = (256 / v115);
  }

  else
  {
    v50 = v49;
  }

  v51 = (v50 * v115);
  if ((v51 ^ (v51 - 1)) <= v51 - 1)
  {
    v52 = log2(v51);
    v51 = exp2(ceil(v52));
  }

  v53 = (v48 + v50 - 1) / v50;
  if (!(v47 & 1 | ((a5 & 1) == 0)))
  {
    v53 = (v53 + 1) / 2;
  }

  v113 = v53;
  v54 = a5;
  v55 = sub_24BF5488C(v116, *a9);
  v56 = *(*a1 + 14);
  if (v56 == 10)
  {
    v57 = "float";
  }

  else
  {
    v57 = "float2";
  }

  v58 = *(*v117 + 56);
  if (v58 == 10)
  {
    v59 = "float";
  }

  else
  {
    v59 = "float2";
  }

  sub_24BCE1268(v182);
  if (v173)
  {
    v60 = "true";
  }

  else
  {
    v60 = "false";
  }

  sub_24BC836D4(&v142, v60);
  if (v54)
  {
    v61 = "true";
  }

  else
  {
    v61 = "false";
  }

  sub_24BC836D4(v140, v61);
  v138[0] = 0;
  v138[1] = 0;
  v139 = 0;
  if (SDWORD1(v167) >= 1)
  {
    v62 = sub_24BC95264(v182, "bluestein_fft_mem_", 18);
    v63 = MEMORY[0x24C2543C0](v62, v51);
    v64 = sub_24BC95264(v63, "_", 1);
    if (v56 == 10)
    {
      v65 = 5;
    }

    else
    {
      v65 = 6;
    }

    v66 = sub_24BC95264(v64, v57, v65);
    v67 = sub_24BC95264(v66, "_", 1);
    if (v58 == 10)
    {
      v68 = 5;
    }

    else
    {
      v68 = 6;
    }

    sub_24BC95264(v67, v59, v68);
    v69 = "bluestein_fft";
LABEL_110:
    MEMORY[0x24C2541D0](v138, v69);
    v87 = 0xFFFFFFFFLL;
    goto LABEL_111;
  }

  if (v167 > 1)
  {
    v70 = sub_24BC95264(v182, "rader_fft_mem_", 14);
    v71 = MEMORY[0x24C2543C0](v70, v51);
    v72 = sub_24BC95264(v71, "_", 1);
    if (v56 == 10)
    {
      v73 = 5;
    }

    else
    {
      v73 = 6;
    }

    v74 = sub_24BC95264(v72, v57, v73);
    v75 = sub_24BC95264(v74, "_", 1);
    if (v58 == 10)
    {
      v76 = 5;
    }

    else
    {
      v76 = 6;
    }

    sub_24BC95264(v75, v59, v76);
    v69 = "rader_fft";
    goto LABEL_110;
  }

  if (v174 != 1)
  {
    v92 = sub_24BC95264(v182, "fft_mem_", 8);
    v93 = MEMORY[0x24C2543C0](v92, v51);
    v94 = sub_24BC95264(v93, "_", 1);
    if (v56 == 10)
    {
      v95 = 5;
    }

    else
    {
      v95 = 6;
    }

    v96 = sub_24BC95264(v94, v57, v95);
    v97 = sub_24BC95264(v96, "_", 1);
    if (v58 == 10)
    {
      v98 = 5;
    }

    else
    {
      v98 = 6;
    }

    sub_24BC95264(v97, v59, v98);
    v69 = "fft";
    goto LABEL_110;
  }

  v77 = BYTE1(v174);
  v78 = sub_24BC95264(v182, "four_step_mem_", 14);
  v79 = MEMORY[0x24C2543C0](v78, v51);
  v80 = sub_24BC95264(v79, "_", 1);
  if (v56 == 10)
  {
    v81 = 5;
  }

  else
  {
    v81 = 6;
  }

  v82 = sub_24BC95264(v80, v57, v81);
  v83 = sub_24BC95264(v82, "_", 1);
  if (v58 == 10)
  {
    v84 = 5;
  }

  else
  {
    v84 = 6;
  }

  v85 = sub_24BC95264(v83, v59, v84);
  v86 = sub_24BC95264(v85, "_", 1);
  v87 = v77 ^ 1u;
  v88 = MEMORY[0x24C2543C0](v86, v87);
  v89 = sub_24BC95264(v88, "_", 1);
  if ((v141 & 0x80u) == 0)
  {
    v90 = v140;
  }

  else
  {
    v90 = v140[0];
  }

  if ((v141 & 0x80u) == 0)
  {
    v91 = v141;
  }

  else
  {
    v91 = v140[1];
  }

  sub_24BC95264(v89, v90, v91);
  MEMORY[0x24C2541D0](v138, "four_step_fft");
LABEL_111:
  std::stringbuf::str();
  v99 = sub_24BC95264(v182, "_n", 2);
  v100 = MEMORY[0x24C2543C0](v99, v115);
  v101 = sub_24BC95264(v100, "_inv_", 5);
  MEMORY[0x24C254390](v101, v173);
  std::stringbuf::str();
  if (SHIBYTE(v139) < 0)
  {
    if (v138[1] != 13)
    {
      goto LABEL_120;
    }

    v102 = v138[0];
  }

  else
  {
    if (SHIBYTE(v139) != 13)
    {
      goto LABEL_120;
    }

    v102 = v138;
  }

  v103 = *v102;
  v104 = *(v102 + 5);
  if (v103 == 0x6574735F72756F66 && v104 == 0x7466665F70657473)
  {
    if (SHIBYTE(v137) < 0)
    {
      sub_24BC8DE9C(&v130, v136, *(&v136 + 1));
      if ((v139 & 0x8000000000000000) == 0)
      {
        goto LABEL_132;
      }
    }

    else
    {
      v130 = v136;
      v131 = v137;
      if ((v139 & 0x8000000000000000) == 0)
      {
LABEL_132:
        *v128 = *v138;
        v129 = v139;
LABEL_135:
        sub_24BF5E844(&v130, v128, v51, v57, v59, v87, v54, v132);
        if (SHIBYTE(v129) < 0)
        {
          operator delete(v128[0]);
        }

        if ((SHIBYTE(v131) & 0x80000000) == 0)
        {
          goto LABEL_138;
        }

        p_dst = &v130;
        goto LABEL_129;
      }
    }

    sub_24BC8DE9C(v128, v138[0], v138[1]);
    goto LABEL_135;
  }

LABEL_120:
  if (SHIBYTE(v137) < 0)
  {
    sub_24BC8DE9C(&__dst, v136, *(&v136 + 1));
    if ((v139 & 0x8000000000000000) == 0)
    {
      goto LABEL_122;
    }

LABEL_124:
    sub_24BC8DE9C(v124, v138[0], v138[1]);
    goto LABEL_125;
  }

  __dst = v136;
  v127 = v137;
  if (v139 < 0)
  {
    goto LABEL_124;
  }

LABEL_122:
  *v124 = *v138;
  v125 = v139;
LABEL_125:
  sub_24BF5EBD0(&__dst, v124, v51, v57, v59, v132);
  if (SHIBYTE(v125) < 0)
  {
    operator delete(v124[0]);
  }

  if ((SHIBYTE(v127) & 0x80000000) == 0)
  {
    goto LABEL_138;
  }

  p_dst = &__dst;
LABEL_129:
  operator delete(*p_dst);
LABEL_138:
  v107 = sub_24BF889A0(v116, &v136, &v134, &v156, v132);
  [*v55 MTL:v107 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v107)];
  sub_24BF53508(v55, v169, 0, 0);
  sub_24BF535E8(v55, v117, 1, 0);
  if (SDWORD1(v167) >= 1)
  {
    sub_24BF5B054(v172, SDWORD1(v167));
  }

  if (v167 > 1)
  {
    sub_24BF5A7B0(v167);
  }

  v109 = *v55;
  if (v174 == 1)
  {
    v110 = [v109 MTL:&v174 + 4 :4 Private:2 :? Selector:? :?s_ksetBytes_length_atIndex_(v167)];
    v111 = [*v55 MTL:&v175 :4 Private:3 :? Selector:? :?s_ksetBytes_length_atIndex_(v110)];
    [*v55 MTL:&v144 :4 Private:4 :? Selector:? :?s_ksetBytes_length_atIndex_(v111)];
  }

  else
  {
    v112 = [v109 MTL:&v172 :8 Private:2 :? Selector:? :?s_ksetBytes_length_atIndex_(v167)];
    [*v55 MTL:&v144 :4 Private:3 :? Selector:? :?s_ksetBytes_length_atIndex_(v112)];
  }

  *&v122 = v113;
  *(&v122 + 1) = v50;
  v123 = (v115 + v114 - 1) / v114;
  *&v120 = 1;
  *(&v120 + 1) = v50;
  v121 = v123;
  sub_24BF53770(v55, &v122, &v120);
  if (v133 < 0)
  {
    operator delete(v132[0]);
  }

  if (v135 < 0)
  {
    operator delete(v134);
  }

  if (SHIBYTE(v137) < 0)
  {
    operator delete(v136);
  }

  if (SHIBYTE(v139) < 0)
  {
    operator delete(v138[0]);
  }

  if (v141 < 0)
  {
    operator delete(v140[0]);
  }

  if (v143 < 0)
  {
    operator delete(v142);
  }

  *v182 = *MEMORY[0x277D82828];
  *&v182[*(*v182 - 24)] = *(MEMORY[0x277D82828] + 24);
  *&v182[8] = MEMORY[0x277D82878] + 16;
  if (v186 < 0)
  {
    operator delete(v185);
  }

  *&v182[8] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v182[16]);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](&v187);
  v118 = v170;
  v119 = v171;
  v170 = 0uLL;
  v171 = 0;
  sub_24BF54278(v116, &v118, *a9);
  *v182 = &v118;
  sub_24BCC961C(v182);
  if (v156)
  {
    v157 = v156;
    operator delete(v156);
  }

  if (v176)
  {
    v177 = v176;
    operator delete(v176);
  }

  if (v165)
  {
    v166 = v165;
    operator delete(v165);
  }

  if (v163)
  {
    v164 = v163;
    operator delete(v163);
  }

  if (__src)
  {
    v180 = __src;
    operator delete(__src);
  }

  sub_24BE7F218(v169);
  *v182 = &v170;
  sub_24BCC961C(v182);
  v108 = *MEMORY[0x277D85DE8];
}

void sub_24BF5E228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  sub_24BCE1400(&STACK[0x330]);
  if (a74)
  {
    STACK[0x200] = a74;
    operator delete(a74);
  }

  v75 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v75;
    operator delete(v75);
  }

  sub_24BF5A1D0(&STACK[0x260]);
  v76 = STACK[0x318];
  if (STACK[0x318])
  {
    STACK[0x320] = v76;
    operator delete(v76);
  }

  sub_24BE7F218(&STACK[0x2B0]);
  STACK[0x318] = &STACK[0x2C0];
  sub_24BCC961C(&STACK[0x318]);
  _Unwind_Resume(a1);
}

void sub_24BF5E4D8(uint64_t **a1, uint64_t **a2, int a3, int a4, uint64_t a5, _DWORD *a6, uint64_t *a7, uint64_t a8)
{
  v15 = *(a8 + 4);
  sub_24BF55DE0();
  if (a6[15] != -1)
  {
    memset(v20, 0, 24);
    sub_24BCC9548(v20, *a7, a7[1], (a7[1] - *a7) >> 4);
    sub_24BF5B63C(a1, a2, a3, a4, a5, a6);
  }

  v16 = a6[18];
  v19 = a6[17];
  if ((a4 & a5) != 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = a1;
  }

  v18 = *v17;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  sub_24BCC9A1C(&v22, *v18, v18[1], (v18[1] - *v18) >> 2);
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, v22, v23, (v23 - v22) >> 2);
  memset(&v20[3], 0, 40);
  sub_24BE7E8D4();
}

void sub_24BF5E6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25)
{
  *(v26 - 96) = v25;
  sub_24BCC961C((v26 - 96));
  if (a18)
  {
    sub_24BC9EC78(a18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void sub_24BF5E73C(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_24BF70ED0(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t sub_24BF5E844@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v39[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v30);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = *(a2 + 8);
  }

  v19 = sub_24BC95264(&v30, v17, v18);
  sub_24BC95264(v19, "<", 1);
  MEMORY[0x24C2543C0](&v30, a3);
  sub_24BC95264(&v30, ", ", 2);
  v20 = strlen(a4);
  sub_24BC95264(&v30, a4, v20);
  sub_24BC95264(&v30, ", ", 2);
  v21 = strlen(a5);
  sub_24BC95264(&v30, a5, v21);
  sub_24BC95264(&v30, ", ", 2);
  MEMORY[0x24C2543C0](&v30, a6);
  sub_24BC95264(&v30, ", ", 2);
  MEMORY[0x24C254390](&v30, a7);
  sub_24BC95264(&v30, ">", 1);
  std::stringbuf::str();
  v22 = *(a1 + 23);
  v23 = *a1;
  if (v22 >= 0)
  {
    v23 = a1;
  }

  if (v22 < 0)
  {
    v22 = a1[1];
  }

  v24 = v29;
  v25 = v28[0];
  if (v29 >= 0)
  {
    v25 = v28;
  }

  if (v29 < 0)
  {
    v24 = v28[1];
  }

  v35[0] = v23;
  v35[1] = v22;
  v35[2] = v25;
  v35[3] = v24;
  v36 = &unk_285F9EFD0;
  __p = v39;
  v38 = xmmword_24BFF4C90;
  sub_24BF70F28(&v36, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v35, 0);
  sub_24BF7125C(&v36, a8);
  if (__p != v39)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  v30 = *MEMORY[0x277D82828];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
  v31 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v34);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BF5EBD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  v35[63] = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v26);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_24BC95264(&v26, v13, v14);
  sub_24BC95264(v15, "<", 1);
  MEMORY[0x24C2543C0](&v26, a3);
  sub_24BC95264(&v26, ", ", 2);
  v16 = strlen(a4);
  sub_24BC95264(&v26, a4, v16);
  sub_24BC95264(&v26, ", ", 2);
  v17 = strlen(a5);
  sub_24BC95264(&v26, a5, v17);
  sub_24BC95264(&v26, ">", 1);
  std::stringbuf::str();
  v18 = *(a1 + 23);
  v19 = *a1;
  if (v18 >= 0)
  {
    v19 = a1;
  }

  if (v18 < 0)
  {
    v18 = a1[1];
  }

  v20 = v25;
  v21 = v24[0];
  if (v25 >= 0)
  {
    v21 = v24;
  }

  if (v25 < 0)
  {
    v20 = v24[1];
  }

  v31[0] = v19;
  v31[1] = v18;
  v31[2] = v21;
  v31[3] = v20;
  v32 = &unk_285F9EFD0;
  __p = v35;
  v34 = xmmword_24BFF4C90;
  sub_24BF70F28(&v32, "\ntemplate [[host_name({0})]] [[kernel]] decltype({1}) {1};\n", 61, 221, v31, 0);
  sub_24BF7125C(&v32, a6);
  if (__p != v35)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  v26 = *MEMORY[0x277D82828];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x277D82828] + 24);
  v27 = MEMORY[0x277D82878] + 16;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  v27 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v28);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v30);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BF5EF3C(uint64_t **a1, uint64_t **a2, uint64_t a3, int a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    a1 = a2;
  }

  v5 = *a1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  sub_24BCC9A1C(&v7, *v5, v5[1], (v5[1] - *v5) >> 2);
  memset(v6, 0, sizeof(v6));
  sub_24BCC9A1C(v6, v7, v8, (v8 - v7) >> 2);
  sub_24BE7E8D4();
}

void sub_24BF5F288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  *(v37 - 128) = v36;
  sub_24BCC961C((v37 - 128));
  *(v37 - 128) = &a19;
  sub_24BCC961C((v37 - 128));
  sub_24BE7F218(&a30);
  sub_24BE7F218(v37 - 168);
  v39 = *(v37 - 152);
  if (v39)
  {
    *(v37 - 144) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void sub_24BF5F378(uint64_t a1, uint64_t ***a2, uint64_t **a3)
{
  v6 = a1 + 24;
  v7 = *(a1 + 24);
  v8 = a1 + 8;
  v9 = *a2;
  if (*(v6 + 8) - v7 >= 9uLL)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 49);

    sub_24BF5EF3C(v9, a3, v6, v10);
  }

  sub_24BF5CDC0(v9, a3, *v7, *(a1 + 48), *(a1 + 49), 0x100uLL, 0, 0, v8);
}

void *sub_24BF5F3FC(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC92248(result, a2);
  }

  return result;
}

void sub_24BF5F458(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF5F4CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF5F4E4(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BF5F7A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void *sub_24BF5F7F0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BF5F84C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF5F868(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t **a5)
{
  sub_24BF5FB14(a1, a2, a3, a4);
  v7 = (a1[1] - *a1) >> 3;
  sub_24BEF03F8(__p, v7);
  v8 = *a5;
  v9 = a5[1];
  if (*a5 != v9)
  {
    v10 = __p[0];
    while (1)
    {
      v11 = *v8;
      if (*v8 >= v7)
      {
        break;
      }

      v12 = v10[v11] + 1;
      v10[v11] = v12;
      if (v12 >= 2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "axis specified repeatedly");
        goto LABEL_11;
      }

      if (++v8 == v9)
      {
        goto LABEL_6;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "bad axis number");
LABEL_11:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

LABEL_6:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24BF5F978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  __cxa_free_exception(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BF5F9A8(uint64_t **a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, char a6, float a7)
{
  v21 = a7;
  v20 = a6;
  v19 = 0uLL;
  v18 = 0;
  v7 = *a3;
  if (a3[1] != *a3)
  {
    v13 = 0;
    do
    {
      v14 = (*a1)[*(v7 + 8 * v13)];
      v17 = v14;
      if (!v19 || v14 != *(v19 + 16))
      {
        v22 = v14;
        sub_24BF5FFCC();
      }

      v15 = sub_24BF5FF4C(a4, a1, *(v7 + 8 * v13), 1);
      v16[0] = a1;
      v16[1] = &v17;
      v16[2] = &v18;
      v16[3] = a2;
      v16[4] = a3;
      v16[5] = a5;
      v16[6] = &v19;
      v16[7] = &v21;
      v16[8] = &v20;
      sub_24BF5FC74(v15, v16);
      v21 = 1.0;
      v13 = v18 + 1;
      v18 = v13;
      v7 = *a3;
    }

    while (v13 < (a3[1] - *a3) >> 3);
    if (*(&v19 + 1))
    {
      sub_24BC9EC78(*(&v19 + 1));
    }
  }
}

void sub_24BF5FAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_24BC9EC78(a22);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_24BF5FB14(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a1[1];
  v6 = v5 - *a1;
  if (v5 == *a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "ndim must be >= 1");
    goto LABEL_10;
  }

  result = *a2;
  if (*(a2 + 8) - *a2 != v6 || *(a3 + 8) - *a3 != v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "stride dimension mismatch");
    goto LABEL_10;
  }

  if (a4)
  {
    result = memcmp(result, *a3, v6);
    if (result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "stride mismatch");
LABEL_10:
      __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
    }
  }

  return result;
}

void *sub_24BF5FBF8(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BD7E680(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BDC9DFC((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  return a1;
}

void sub_24BF5FC58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF5FC74(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    goto LABEL_4;
  }

  if ((atomic_load_explicit(&qword_27F079058, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v3 = qword_27F079050;
LABEL_4:
    if (v3 == 1)
    {
      break;
    }

    if ((atomic_load_explicit(&qword_27F079140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079140))
    {
      v6 = sub_24BF67334();
      sub_24BF700E4(&unk_27F079060, v6);
      __cxa_atexit(sub_24BF700E0, &unk_27F079060, &dword_24BC7E000);
      __cxa_guard_release(&qword_27F079140);
    }

    v12 = v3;
    v13.__m_.__sig = 850045863;
    memset(v13.__m_.__opaque, 0, sizeof(v13.__m_.__opaque));
    v14.__cv_.__sig = 1018212795;
    memset(v14.__cv_.__opaque, 0, sizeof(v14.__cv_.__opaque));
    v9.__ptr_ = 0;
    v11.__m_.__sig = 850045863;
    memset(v11.__m_.__opaque, 0, sizeof(v11.__m_.__opaque));
    if (v3)
    {
      v10 = 0;
      operator new();
    }

    sub_24BF67664(&v12);
    if (!v9.__ptr_)
    {
      std::mutex::~mutex(&v11);
      std::exception_ptr::~exception_ptr(&v9);
      std::condition_variable::~condition_variable(&v14);
      std::mutex::~mutex(&v13);
      v5 = *MEMORY[0x277D85DE8];
      return;
    }

    std::exception_ptr::exception_ptr(&v8, &v9);
    v7.__ptr_ = &v8;
    std::rethrow_exception(v7);
    __break(1u);
LABEL_16:
    sub_24BF7FC78();
  }

  v4 = *MEMORY[0x277D85DE8];

  sub_24BF6736C(a2);
}

unint64_t sub_24BF5FF4C(unint64_t result, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
    v4 = a2[1];
    v5 = 1;
    if (*a2 != v4)
    {
      v6 = *a2;
      do
      {
        v7 = *v6++;
        v5 *= v7;
      }

      while (v6 != v4);
    }

    v8 = (*a2)[a3];
    v9 = v5 / (v8 * a4);
    if (v8 >= 0x3E8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 >> 2;
    }

    if (!result)
    {
      result = std::thread::hardware_concurrency();
    }

    if (result >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = result;
    }

    if (v11 <= 1)
    {
      return 1;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

void *sub_24BF60038(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F9EF00;
  sub_24BF60154(a1 + 3, *a2);
  return a1;
}

void sub_24BF600B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9EF00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t *sub_24BF6010C(uint64_t a1)
{
  sub_24BF672BC((a1 + 32), 0);

  return sub_24BF60F10((a1 + 24), 0);
}

void sub_24BF60158(void *a1, unint64_t a2)
{
  a1[1] = 0;
  *a1 = 0;
  a1[2] = a2;
  if (a2)
  {
    if (a2 >= 0x32)
    {
      v3 = sub_24BF6035C(a2);
    }

    else
    {
      v3 = 0;
    }

    if (v3 * v3 > a2)
    {
      v4 = sub_24BF603C0(a2);
      v5 = sub_24BF6046C(2 * a2 - 1);
      v6 = sub_24BF603C0(v5);
      if ((v6 + v6) * 1.5 < v4)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "zero-length FFT requested");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BF602E8(_Unwind_Exception *a1)
{
  MEMORY[0x24C2548B0](v3, 0x1020C409D20112CLL);
  sub_24BF672BC(v2, 0);
  sub_24BF60F10(v1, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_24BF6035C(unint64_t a1)
{
  v1 = 1;
  do
  {
    v2 = v1;
    v3 = a1;
    a1 >>= 1;
    v1 = 2;
  }

  while ((v3 & 1) == 0);
  if (v3 >= 9)
  {
    v4 = 3;
    do
    {
      if (!(v3 % v4))
      {
        do
        {
          v3 /= v4;
        }

        while (!(v3 % v4));
        v2 = v4;
      }

      v4 += 2;
    }

    while (v4 * v4 <= v3);
  }

  if (v3 <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

double sub_24BF603C0(unint64_t a1)
{
  v1 = 0.0;
  v2 = a1;
  if ((a1 & 1) == 0)
  {
    v3 = a1;
    do
    {
      v1 = v1 + 2.0;
      v2 = v3 >> 1;
      v4 = v3;
      v3 >>= 1;
    }

    while ((v4 & 2) == 0);
  }

  if (v2 >= 9)
  {
    v5 = 3;
    do
    {
      if (!(v2 % v5))
      {
        v6 = v5;
        if (v5 >= 6)
        {
          v6 = v5 * 1.1;
        }

        do
        {
          v1 = v6 + v1;
          v2 /= v5;
        }

        while (!(v2 % v5));
      }

      v5 += 2;
    }

    while (v5 * v5 <= v2);
  }

  if (v2 > 1)
  {
    v7 = v2;
    if (v2 >= 6)
    {
      v7 = v2 * 1.1;
    }

    v1 = v1 + v7;
  }

  return v1 * a1;
}

unint64_t sub_24BF6046C(unint64_t a1)
{
  if (a1 < 0xD)
  {
    return a1;
  }

  result = 2 * a1;
  if (2 * a1)
  {
    v3 = 1;
LABEL_5:
    v4 = v3;
LABEL_6:
    v5 = v4;
LABEL_7:
    v6 = v5;
    do
    {
      v7 = v6;
      v6 *= 2;
    }

    while (v7 < a1);
    while (1)
    {
      while (v7 < a1)
      {
        v7 *= 3;
      }

      if (v7 <= a1)
      {
        return a1;
      }

      if (v7 < result)
      {
        result = v7;
      }

      if (v7)
      {
        v5 *= 5;
        if (v5 < result)
        {
          goto LABEL_7;
        }

        v4 *= 7;
        if (v4 < result)
        {
          goto LABEL_6;
        }

        v3 *= 11;
        if (v3 < result)
        {
          goto LABEL_5;
        }

        return result;
      }

      v7 >>= 1;
    }
  }

  return result;
}

uint64_t sub_24BF60504(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v3 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  if (a2 != 1)
  {
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "zero-length FFT requested");
      __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
    }

    sub_24BF605E8(a1);
    v4 = sub_24BF60748(a1);
    sub_24BF60700(v3, v4);
    sub_24BF607B4(a1);
  }

  return a1;
}

void sub_24BF605B4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  v5 = *(v2 + 24);
  if (v5)
  {
    *(v2 + 32) = v5;
    operator delete(v5);
  }

  free(*v1);
  _Unwind_Resume(a1);
}

void sub_24BF605E8(unint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 7) != 0)
  {
    v3 = *a1;
  }

  else
  {
    do
    {
      sub_24BF6098C(a1, 8);
      v3 = v2 >> 3;
      v4 = (v2 & 0x38) == 0;
      v2 >>= 3;
    }

    while (v4);
  }

  if ((v3 & 3) != 0)
  {
    v5 = v3;
  }

  else
  {
    do
    {
      sub_24BF6098C(a1, 4);
      v5 = v3 >> 2;
      v4 = (v3 & 0xC) == 0;
      v3 >>= 2;
    }

    while (v4);
  }

  if ((v5 & 1) == 0)
  {
    v5 >>= 1;
    sub_24BF6098C(a1, 2);
    v6 = a1[3];
    v7 = a1[4];
    v8 = *v6;
    *v6 = *(v7 - 24);
    *(v7 - 24) = v8;
  }

  if (v5 >= 9)
  {
    v9 = 3;
    do
    {
      while (!(v5 % v9))
      {
        sub_24BF6098C(a1, v9);
        v5 /= v9;
      }

      v9 += 2;
    }

    while (v9 * v9 <= v5);
  }

  if (v5 > 1)
  {

    sub_24BF6098C(a1, v5);
  }
}

void *sub_24BF60700(void *result, void *a2)
{
  if (result[1] != a2)
  {
    v3 = result;
    free(*result);
    result = sub_24BF60ADC(a2);
    *v3 = result;
    v3[1] = a2;
  }

  return result;
}

uint64_t sub_24BF60748(unint64_t *a1)
{
  v1 = a1[3];
  v2 = a1[4] - v1;
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
  v6 = *a1;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v7 = 1;
  do
  {
    v9 = *v1;
    v1 += 3;
    v8 = v9;
    v7 *= v9;
    v10 = v9 - 1;
    if (v9 <= 0xB)
    {
      v8 = 0;
    }

    result += v8 + (v6 / v7 - 1) * v10;
    --v5;
  }

  while (v5);
  return result;
}

void sub_24BF607B4(void *a1)
{
  sub_24BF60B3C(v26, *a1);
  v2 = a1[3];
  if (a1[4] != v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = (v2 + 24 * v4);
      v7 = *v6;
      v8 = *v6 * v5;
      v9 = *a1 / v8;
      v6[1] = a1[1] + 8 * v3;
      v3 += (v9 - 1) * (v7 - 1);
      if (v7 >= 2)
      {
        v23 = v3;
        v24 = v8;
        v10 = v5;
        v11 = 1;
        v25 = v5;
        do
        {
          if (v9 >= 2)
          {
            v12 = v10;
            for (i = 1; i < v9; ++i)
            {
              v14 = sub_24BF60B40(v26, v12);
              v2 = a1[3];
              v15 = *(v2 + 24 * v4 + 8) + 8 * (v11 - 1) * (v9 - 1) + 8 * i;
              *(v15 - 8) = v14;
              *(v15 - 4) = v16;
              v12 += v10;
            }

            v5 = v25;
          }

          ++v11;
          v10 += v5;
        }

        while (v11 != v7);
        v3 = v23;
        v8 = v24;
        if (v7 > 0xB)
        {
          v17 = 0;
          v18 = 0;
          *(v2 + 24 * v4 + 16) = a1[1] + 8 * v23;
          v3 = v23 + v7;
          v19 = v9 * v5;
          do
          {
            v20 = sub_24BF60B40(v26, v19 * v18);
            v2 = a1[3];
            v21 = *(v2 + 24 * v4 + 16) + v17;
            *v21 = v20;
            *(v21 + 4) = v22;
            ++v18;
            v17 += 8;
            --v7;
          }

          while (v7);
          v8 = v24;
        }
      }

      ++v4;
      v5 = v8;
    }

    while (v4 < 0xAAAAAAAAAAAAAAABLL * ((a1[4] - v2) >> 3));
  }

  free(v26[5]);
  free(v26[3]);
}

void sub_24BF6096C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19)
{
  free(a19);
  free(a17);
  _Unwind_Resume(a1);
}

void sub_24BF6098C(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[5];
  if (v4 >= v5)
  {
    v7 = a1[3];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_24BF60A84((a1 + 3), v11);
    }

    v12 = 24 * v8;
    v6 = 24 * v8 + 24;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *v12 = a2;
    v13 = a1[3];
    v14 = a1[4] - v13;
    v15 = v12 - v14;
    memcpy((v12 - v14), v13, v14);
    v16 = a1[3];
    a1[3] = v15;
    a1[4] = v6;
    a1[5] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = (v4 + 3);
    v4[1] = 0;
    v4[2] = 0;
    *v4 = a2;
  }

  a1[4] = v6;
}

void sub_24BF60A84(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void *sub_24BF60ADC(void *result)
{
  if (result)
  {
    result = malloc_type_aligned_alloc(0x40uLL, (8 * result + 63) & 0xFFFFFFFFFFFFFFC0, 0x900E4C1uLL);
    if (!result)
    {
      exception = __cxa_allocate_exception(8uLL);
      v2 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v2, &unk_285F927D0, MEMORY[0x277D826E0]);
    }
  }

  return result;
}

float sub_24BF60B40(void *a1, unint64_t a2)
{
  if (*a1 >= 2 * a2)
  {
    v6 = (a1[3] + 16 * (a1[1] & a2));
    v7 = *v6;
    v8 = v6[1];
    v9 = (a1[5] + 16 * (a2 >> a1[2]));
    return v7 * *v9 - v8 * v9[1];
  }

  else
  {
    v2 = *a1 - a2;
    v3 = (a1[3] + 16 * (a1[1] & v2));
    v4 = (a1[5] + 16 * (v2 >> a1[2]));
    return *v3 * *v4 - v3[1] * v4[1];
  }
}

unint64_t *sub_24BF60BD0(unint64_t *a1, unint64_t a2)
{
  v4 = 0;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  v5 = a1 + 5;
  *a1 = a2;
  v6 = a2;
  v7 = (a2 + 2) >> 1;
  do
  {
    v8 = 1 << ++v4;
  }

  while (1 << v4 << v4 < v7);
  a1[1] = v8 - 1;
  a1[2] = v4;
  sub_24BF60D54(a1 + 3, v8);
  v9 = a1[4];
  *a1[3] = xmmword_24BFD29A0;
  v10 = 0.785398163 / v6;
  if (v9 >= 2)
  {
    v11 = 0;
    for (i = 1; i < v14; ++i)
    {
      v13 = sub_24BF60DE0(i, a2, v10);
      v14 = a1[4];
      v15 = a1[3] + v11;
      *(v15 + 16) = v13;
      *(v15 + 24) = v16;
      v11 += 16;
    }
  }

  sub_24BF60D54(v5, (a1[1] + v7) / (a1[1] + 1));
  v17 = a1[6];
  *a1[5] = xmmword_24BFD29A0;
  if (v17 >= 2)
  {
    v18 = 0;
    for (j = 1; j < v21; ++j)
    {
      v20 = sub_24BF60DE0(j + j * a1[1], a2, v10);
      v21 = a1[6];
      v22 = a1[5] + v18;
      *(v22 + 16) = v20;
      *(v22 + 24) = v23;
      v18 += 16;
    }
  }

  return a1;
}

void sub_24BF60D30(_Unwind_Exception *a1)
{
  free(*v2);
  free(*v1);
  _Unwind_Resume(a1);
}

void *sub_24BF60D54(void *result, uint64_t a2)
{
  if (result[1] != a2)
  {
    v3 = result;
    free(*result);
    if (a2)
    {
      result = malloc_type_aligned_alloc(0x40uLL, (16 * a2 + 63) & 0xFFFFFFFFFFFFFFC0, 0x900E4C1uLL);
      if (!result)
      {
        exception = __cxa_allocate_exception(8uLL);
        v5 = std::bad_alloc::bad_alloc(exception);
        __cxa_throw(v5, &unk_285F927D0, MEMORY[0x277D826E0]);
      }
    }

    else
    {
      result = 0;
    }

    *v3 = result;
    v3[1] = a2;
  }

  return result;
}

double sub_24BF60DE0(uint64_t a1, unint64_t a2, double a3)
{
  v3 = 8 * a1;
  if (8 * a1 >= 4 * a2)
  {
    v6 = 8 * (a2 - a1);
    v7 = 2 * a2;
    if (v6 >= 2 * a2)
    {
      v9 = v6 - v7;
      if (v9 >= a2)
      {
        return -__sincos_stret((v7 - v9) * a3).__cosval;
      }

      else
      {
        return -__sincos_stret(v9 * a3).__sinval;
      }
    }

    else if (v6 >= a2)
    {
      *&result = *&__sincos_stret((v7 - v6) * a3);
    }

    else
    {
      return __sincos_stret(v6 * a3).__cosval;
    }
  }

  else
  {
    v4 = 2 * a2;
    if (v3 >= 2 * a2)
    {
      v8 = v3 - v4;
      if (v8 >= a2)
      {
        return -__sincos_stret((v4 - v8) * a3).__cosval;
      }

      else
      {
        return -__sincos_stret(v8 * a3).__sinval;
      }
    }

    else if (v3 >= a2)
    {
      *&result = *&__sincos_stret((v4 - v3) * a3);
    }

    else
    {
      return __sincos_stret(v3 * a3).__cosval;
    }
  }

  return result;
}

uint64_t *sub_24BF60F10(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    free(*(v2 + 8));

    JUMPOUT(0x24C2548B0);
  }

  return result;
}

uint64_t sub_24BF60F80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  free(*(a1 + 8));
  return a1;
}

unint64_t *sub_24BF60FBC(unint64_t *a1, unint64_t a2)
{
  *a1 = a2;
  v3 = sub_24BF6046C(2 * a2 - 1);
  a1[1] = v3;
  sub_24BF603BC(a1 + 2, v3);
  v4 = (*a1 + (a1[1] >> 1) + 1);
  v5 = sub_24BF60ADC(v4);
  a1[8] = v5;
  a1[9] = v4;
  v6 = *a1;
  v7 = &v5[8 * *a1];
  a1[10] = v5;
  a1[11] = v7;
  sub_24BF60B3C(v30, 2 * v6);
  *a1[10] = 1065353216;
  v8 = *a1;
  if (*a1 >= 2)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      if (v10 + v9 + 1 >= 2 * v8)
      {
        v12 = 2 * v8;
      }

      else
      {
        v12 = 0;
      }

      v13 = sub_24BF60B40(v30, v9 + v10 - v12 + 1);
      v10 += ~v12 + 2 * v11;
      v14 = a1[10] + 4 * v9;
      *(v14 + 8) = v13;
      *(v14 + 12) = v15;
      ++v11;
      v8 = *a1;
      v9 += 2;
    }

    while (v11 < *a1);
  }

  v16 = sub_24BF60ADC(a1[1]);
  v17 = v16;
  v18 = *a1;
  v19 = a1[1];
  v20 = 1.0 / v19;
  *v16 = vmul_n_f32(*a1[10], v20);
  if (v18 >= 2)
  {
    v21 = -1;
    v22 = 1;
    do
    {
      v23 = vmul_n_f32(*(a1[10] + 8 * v22), v20);
      v16[v21 + a1[1]] = v23;
      v16[v22++] = v23;
      v18 = *a1;
      --v21;
    }

    while (v22 < *a1);
    v19 = a1[1];
  }

  v24 = v19 - v18;
  if (v18 <= v24)
  {
    v25 = &v16[v18];
    v26 = v24 + 1;
    if (v26 <= v18 + 1)
    {
      v26 = v18 + 1;
    }

    bzero(v25, 8 * (v26 - v18));
  }

  sub_24BF611F8(a1 + 2, v17, 1.0);
  v27 = 0;
  do
  {
    *(a1[11] + 8 * v27) = v17[v27];
  }

  while (v27++ < a1[1] >> 1);
  free(v17);
  free(v30[5]);
  free(v30[3]);
  return a1;
}

void sub_24BF611A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15)
{
  free(v16);
  free(a15);
  free(a13);
  free(*(v15 + 64));
  sub_24BF60F80(v15 + 16);
  _Unwind_Resume(a1);
}

void sub_24BF611F8(void *a1, float32x2_t *a2, float a3)
{
  v3 = a2;
  v5 = *a1;
  if (v5 == 1)
  {
    *a2 = vmul_n_f32(*a2, a3);
    return;
  }

  v6 = sub_24BF60ADC(v5);
  v7 = v6;
  v8 = a1[3];
  if (a1[4] == v8)
  {
    goto LABEL_29;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = v6;
  v13 = v3;
  do
  {
    v14 = *(v8 + v9);
    v15 = v14 * v11;
    v16 = *a1 / (v14 * v11);
    if (v14 <= 4)
    {
      if (v14 == 2)
      {
        sub_24BF62224(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
        v17 = v13;
        v13 = v12;
        goto LABEL_22;
      }

      if (v14 != 3)
      {
        if (v14 == 4)
        {
          sub_24BF617F0(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      sub_24BF62328(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

    else if (v14 > 7)
    {
      if (v14 != 8)
      {
        if (v14 == 11)
        {
          sub_24BF6303C(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      sub_24BF61A78(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

    else
    {
      if (v14 != 5)
      {
        if (v14 == 7)
        {
          sub_24BF62980(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

LABEL_18:
        sub_24BF63E1C(a1, v16, v14, v11, v13, v12, *(v8 + v9 + 8), *(v8 + v9 + 16));
        v17 = v12;
        goto LABEL_22;
      }

      sub_24BF6250C(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

LABEL_22:
    ++v10;
    v8 = a1[3];
    v9 += 24;
    v11 = v15;
    v12 = v17;
  }

  while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a1[4] - v8) >> 3));
  if (v13 != v3)
  {
    v18 = *a1;
    if (a3 == 1.0)
    {
      if (v18)
      {
        memmove(v3, v13, 8 * v18);
      }
    }

    else if (v18)
    {
      v19 = v7;
      do
      {
        v20 = *v19++;
        *v3++ = vmul_n_f32(v20, a3);
        --v18;
      }

      while (v18);
    }

    goto LABEL_35;
  }

LABEL_29:
  if (a3 != 1.0)
  {
    v21 = *a1;
    if (*a1)
    {
      do
      {
        *v3 = vmul_n_f32(*v3, a3);
        ++v3;
        --v21;
      }

      while (v21);
    }
  }

LABEL_35:

  free(v7);
}

void sub_24BF614F4(void *a1, float32x2_t *a2, float a3)
{
  v3 = a2;
  v5 = *a1;
  if (v5 == 1)
  {
    *a2 = vmul_n_f32(*a2, a3);
    return;
  }

  v6 = sub_24BF60ADC(v5);
  v7 = v6;
  v8 = a1[3];
  if (a1[4] == v8)
  {
    goto LABEL_29;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = v6;
  v13 = v3;
  do
  {
    v14 = *(v8 + v9);
    v15 = v14 * v11;
    v16 = *a1 / (v14 * v11);
    if (v14 <= 4)
    {
      if (v14 == 2)
      {
        sub_24BF64E74(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
        v17 = v13;
        v13 = v12;
        goto LABEL_22;
      }

      if (v14 != 3)
      {
        if (v14 == 4)
        {
          sub_24BF6447C(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      sub_24BF64F74(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

    else if (v14 > 7)
    {
      if (v14 != 8)
      {
        if (v14 == 11)
        {
          sub_24BF65D74(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      sub_24BF64708(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

    else
    {
      if (v14 != 5)
      {
        if (v14 == 7)
        {
          sub_24BF6560C(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

LABEL_18:
        sub_24BF66C78(a1, v16, v14, v11, v13, v12, *(v8 + v9 + 8), *(v8 + v9 + 16));
        v17 = v12;
        goto LABEL_22;
      }

      sub_24BF65174(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

LABEL_22:
    ++v10;
    v8 = a1[3];
    v9 += 24;
    v11 = v15;
    v12 = v17;
  }

  while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a1[4] - v8) >> 3));
  if (v13 != v3)
  {
    v18 = *a1;
    if (a3 == 1.0)
    {
      if (v18)
      {
        memmove(v3, v13, 8 * v18);
      }
    }

    else if (v18)
    {
      v19 = v7;
      do
      {
        v20 = *v19++;
        *v3++ = vmul_n_f32(v20, a3);
        --v18;
      }

      while (v18);
    }

    goto LABEL_35;
  }

LABEL_29:
  if (a3 != 1.0)
  {
    v21 = *a1;
    if (*a1)
    {
      do
      {
        *v3 = vmul_n_f32(*v3, a3);
        ++v3;
        --v21;
      }

      while (v21);
    }
  }

LABEL_35:

  free(v7);
}

void sub_24BF617F0(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = 2 * a3;
      v7 = a4 + 2;
      v8 = &a5[3 * a3] + 1;
      v9 = &a5[a3] + 1;
      do
      {
        v10 = v7[-2];
        v11 = v7[-1];
        v12 = *v7;
        v13 = v7[1];
        v7 += 4;
        v14 = vadd_f32(v10, v12);
        v15 = vsub_f32(v10, v12);
        v16 = vadd_f32(v11, v13);
        v17 = vsub_f32(v11, v13);
        *a5 = vadd_f32(v14, v16);
        a5[v6] = vsub_f32(v14, v16);
        *(v9 - 1) = v15.f32[0] + v17.f32[1];
        *v9 = v15.f32[1] - v17.f32[0];
        *(v8 - 1) = v15.f32[0] - v17.f32[1];
        *v8 = v15.f32[1] + v17.f32[0];
        v8 += 2;
        v9 += 2;
        ++a5;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v18 = 0;
    v19 = a4 + 1;
    v20 = 32 * a2;
    v21 = 8 * a2;
    v22 = &a4[a2 + 1];
    v23 = &a4[2 * a2 + 1];
    v24 = &a4[3 * a2 + 1];
    v25 = a5 + 1;
    v26 = &a5[3 * a3 * a2 + 1];
    v27 = a6 + 16 * (a2 - 1);
    v28 = &a5[2 * a3 * a2 + 1];
    v29 = a6 + 8 * a2 - 8;
    v30 = &a5[a3 * a2 + 1];
    do
    {
      v31 = a4[4 * v18 * a2];
      v32 = a4[((4 * v18) | 2) * a2];
      v33 = vadd_f32(v31, v32);
      v34 = vsub_f32(v31, v32);
      v35 = a4[((4 * v18) | 1) * a2];
      v36 = a4[((4 * v18) | 3) * a2];
      v37 = vadd_f32(v35, v36);
      v38 = vsub_f32(v35, v36);
      a5[v18 * a2] = vadd_f32(v33, v37);
      a5[(v18 + 2 * a3) * a2] = vsub_f32(v33, v37);
      v39 = &a5[(v18 + a3) * a2];
      v40 = &a5[(v18 + 3 * a3) * a2];
      *v39 = v34.f32[0] + v38.f32[1];
      v39[1] = v34.f32[1] - v38.f32[0];
      *v40 = v34.f32[0] - v38.f32[1];
      v40[1] = v34.f32[1] + v38.f32[0];
      if (a2)
      {
        v41 = 0;
        v42 = a2 - 1;
        do
        {
          v43 = v19[v41 / 8];
          v44 = *(v22 + v41);
          v45 = *(v23 + v41);
          v46 = *(v24 + v41);
          v47 = vadd_f32(v43, v45);
          v48 = vadd_f32(v44, v46);
          v25[v41 / 8] = vadd_f32(v47, v48);
          v49 = *(v29 + v41);
          v50 = *(v29 + v41 + 4);
          v51 = vsub_f32(v43, v45);
          v52 = vrev64_s32(vsub_f32(v44, v46));
          v53 = vadd_f32(v51, v52);
          v54 = vsub_f32(v51, v52);
          v55 = __PAIR64__(v53.u32[1], v54.u32[0]);
          v56.i32[0] = vdup_lane_s32(v53, 1).u32[0];
          v53.i32[1] = v54.i32[1];
          v57.i32[0] = vdup_lane_s32(v54, 1).u32[0];
          v57.f32[1] = -v53.f32[0];
          v46.i32[0] = *(v27 + v41);
          v58 = *(v27 + v41 + 4);
          *(v30 + v41) = vmla_n_f32(vmul_n_f32(v57, *(a6 + v41 + 4)), v53, *(a6 + v41));
          v59 = vsub_f32(v47, v48);
          v60.i32[0] = vdup_lane_s32(v59, 1).u32[0];
          v60.f32[1] = -v59.f32[0];
          *(v28 + v41) = vmla_n_f32(vmul_n_f32(v60, v50), v59, v49);
          v56.f32[1] = -*v54.i32;
          *(v26 + v41) = vmla_n_f32(vmul_n_f32(v56, v58), v55, v46.f32[0]);
          v41 += 8;
          --v42;
        }

        while (v42);
      }

      ++v18;
      v19 = (v19 + v20);
      v22 += v20;
      v23 += v20;
      v24 += v20;
      v25 = (v25 + v21);
      v26 += v21;
      v28 += v21;
      v30 += v21;
    }

    while (v18 != a3);
  }
}

void sub_24BF61A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6)
{
  v261 = a4;
  v6 = a3;
  v248 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = (a4 + 32);
      do
      {
        v8 = *(v7 - 6);
        v9 = *(v7 - 5);
        v10 = v7[2];
        v11 = v7[3];
        v12 = v8 + v10;
        v13 = v9 + v11;
        v14 = v8 - v10;
        v15 = v9 - v11;
        v16 = *(v7 - 2);
        v17 = *(v7 - 1);
        v18 = v7[6];
        v19 = v7[7];
        v20 = v16 + v18;
        v21 = v17 + v19;
        v22 = v16 - v18;
        v23 = v17 - v19;
        v24 = v12 + v20;
        v25 = v13 + v21;
        v26 = v12 - v20;
        v27 = v13 - v21;
        v28 = v14 + v23;
        v29 = v15 - v22;
        v30 = v14 - v23;
        v31 = v15 + v22;
        v32 = (v29 + v28) * 0.70711;
        v33 = (v29 - v28) * 0.70711;
        v34 = (v31 - v30) * 0.70711;
        v35 = (-v30 - v31) * 0.70711;
        v36 = *(v7 - 8);
        v37 = *(v7 - 7);
        v38 = v7[1];
        v39 = v36 + *v7;
        v40 = v37 + v38;
        v41 = v36 - *v7;
        v42 = v37 - v38;
        v43 = *(v7 - 4);
        v44 = *(v7 - 3);
        v45 = v7[4];
        v46 = v7[5];
        v47 = v43 + v45;
        v48 = v44 + v46;
        v49 = v43 - v45;
        v50 = v44 - v46;
        v51 = &a5[8 * a3];
        *a5 = v24 + (v39 + v47);
        a5[1] = v25 + (v40 + v48);
        *v51 = (v39 + v47) - v24;
        v51[1] = (v40 + v48) - v25;
        v52 = &a5[4 * a3];
        v53 = (a5 + ((48 * a3) | 4));
        *v52 = v27 + (v39 - v47);
        v52[1] = (v40 - v48) - v26;
        *(v53 - 1) = (v39 - v47) - v27;
        *v53 = v26 + (v40 - v48);
        v54 = &a5[2 * a3];
        v55 = (a5 + ((40 * a3) | 4));
        *v54 = v32 + (v41 + v50);
        v54[1] = v33 + (v42 - v49);
        *(v55 - 1) = (v41 + v50) - v32;
        *v55 = (v42 - v49) - v33;
        v56 = (a5 + ((24 * a3) | 4));
        v57 = (a5 + ((56 * a3) | 4));
        v58 = v41 - v50;
        *(v56 - 1) = v34 + v58;
        *v56 = v35 + (v42 + v49);
        *(v57 - 1) = v58 - v34;
        *v57 = (v42 + v49) - v35;
        v7 += 16;
        a5 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else if (a3)
  {
    v59 = 0;
    v255 = 2 * a3;
    v256 = 4 * a3;
    v254 = 3 * a3;
    v252 = 5 * a3;
    v253 = 6 * a3;
    v251 = 7 * a3;
    v60 = &a5[14 * a3 * a2];
    v250 = 8 * a2;
    v61 = a4 + 8 * a2 + 12;
    v249 = a2 << 6;
    v62 = a4 + 40 * a2 + 12;
    v63 = &a5[6 * a3 * a2];
    v64 = a4 + 24 * a2 + 12;
    v65 = a4 + 56 * a2 + 12;
    v66 = &a5[10 * a3 * a2];
    v67 = a4 + 32 * a2;
    v68 = a4 + 16 * a2;
    v69 = a4 + 48 * a2;
    v70 = &a5[2 * a3 * a2];
    v71 = a6 + 48 * a2 - 48;
    v72 = a6 + 16 * v248;
    v73 = &a5[12 * a3 * a2];
    v74 = a6 + 32 * v248;
    v75 = a6 + 24 * a2 - 20;
    v76 = a6 + 8 * a2 - 8;
    v77 = &a5[4 * a3 * a2];
    v78 = a5;
    v79 = &a5[8 * a3 * a2];
    v258 = a5;
    v80 = a6 + 40 * a2 - 40;
    do
    {
      v81 = (v261 + 8 * ((8 * v59) | 1) * a2);
      v82 = *v81;
      v83 = v81[1];
      v84 = (v261 + 8 * ((8 * v59) | 5) * a2);
      v85 = v84[1];
      v86 = v82 + *v84;
      v87 = v83 + v85;
      v88 = v82 - *v84;
      v89 = v83 - v85;
      v90 = (v261 + 8 * ((8 * v59) | 3) * a2);
      v91 = *v90;
      v92 = v90[1];
      v93 = (v261 + 8 * ((8 * v59) | 7) * a2);
      v94 = v93[1];
      v95 = v91 + *v93;
      v96 = v92 + v94;
      v97 = v91 - *v93;
      v98 = v92 - v94;
      v99 = v86 + v95;
      v100 = v87 + v96;
      v101 = v86 - v95;
      v102 = v87 - v96;
      v103 = v89 - v97;
      v104 = v88 - v98;
      v105 = v89 + v97;
      v106 = (v103 + (v88 + v98)) * 0.70711;
      v107 = (v103 - (v88 + v98)) * 0.70711;
      v108 = (v105 - v104) * 0.70711;
      v109 = (-v104 - v105) * 0.70711;
      v110 = (v261 + 8 * 8 * v59 * a2);
      v111 = *v110;
      v112 = v110[1];
      v113 = (v261 + 8 * ((8 * v59) | 4) * a2);
      v114 = v113[1];
      v115 = v111 + *v113;
      v116 = v112 + v114;
      v117 = v111 - *v113;
      v118 = v112 - v114;
      v119 = (v261 + 8 * ((8 * v59) | 2) * a2);
      v120 = *v119;
      v121 = v119[1];
      v122 = (v261 + 8 * ((8 * v59) | 6) * a2);
      v123 = v122[1];
      v124 = v120 + *v122;
      v125 = v121 + v123;
      v126 = v120 - *v122;
      v127 = v121 - v123;
      v128 = &a5[2 * v59 * a2];
      v129 = &a5[2 * (v59 + v256) * a2];
      *v128 = v99 + (v115 + v124);
      v128[1] = v100 + (v116 + v125);
      *v129 = (v115 + v124) - v99;
      v129[1] = (v116 + v125) - v100;
      v130 = &a5[2 * (v59 + v255) * a2];
      v131 = &a5[2 * (v59 + v253) * a2];
      *v130 = v102 + (v115 - v124);
      v130[1] = (v116 - v125) - v101;
      *v131 = (v115 - v124) - v102;
      v131[1] = v101 + (v116 - v125);
      v132 = &a5[2 * (v59 + v6) * a2];
      v133 = &a5[2 * (v59 + v252) * a2];
      *v132 = v106 + (v117 + v127);
      v132[1] = v107 + (v118 - v126);
      *v133 = (v117 + v127) - v106;
      v133[1] = (v118 - v126) - v107;
      v134 = &a5[2 * (v59 + v254) * a2];
      v262 = v59;
      v135 = &a5[2 * (v59 + v251) * a2];
      *v134 = v108 + (v117 - v127);
      v134[1] = v109 + (v118 + v126);
      *v135 = (v117 - v127) - v108;
      v135[1] = (v118 + v126) - v109;
      if (a2)
      {
        v136 = 0;
        v137 = v248;
        do
        {
          v138 = *(v61 + v136 - 4);
          v139 = *(v61 + v136);
          v140 = *(v62 + v136 - 4);
          v141 = *(v62 + v136);
          v142 = v138 + v140;
          v143 = v139 + v141;
          v144 = v138 - v140;
          v145 = v139 - v141;
          v146 = *(v64 + v136 - 4);
          v147 = *(v64 + v136);
          v148 = *(v65 + v136 - 4);
          v149 = *(v65 + v136);
          v150 = v146 + v148;
          v151 = v147 + v149;
          v152 = v146 - v148;
          v153 = v147 - v149;
          v154 = v142 + v150;
          v155 = v143 + (v147 + v149);
          v156 = v142 - v150;
          v157 = v143 - v151;
          v158 = v144 + v153;
          v159 = v145 - v152;
          v160 = v144 - v153;
          v161 = v145 + v152;
          v162 = v159 + v158;
          v163 = v159 - v158;
          v164 = v161 - v160;
          v165 = *(a4 + v136 + 8);
          v166 = *(a4 + v136 + 12);
          v167 = *(v67 + v136 + 8);
          v168 = *(v67 + v136 + 12);
          v169 = v165 + v167;
          v170 = v166 + v168;
          v171 = v165 - v167;
          v172 = -v160 - v161;
          v173 = v166 - v168;
          v174 = *(v68 + v136 + 8);
          v175 = *(v68 + v136 + 12);
          v176 = v162 * 0.70711;
          v177 = *(v69 + v136 + 8);
          v178 = *(v69 + v136 + 12);
          v179 = v174 + v177;
          v180 = v175 + v178;
          v181 = v174 - v177;
          v182 = v163 * 0.70711;
          v183 = v175 - v178;
          v184 = v169 + v179;
          v185 = v170 + v180;
          v186 = v169 - v179;
          v187 = v170 - v180;
          v188 = v164 * 0.70711;
          v189 = v154 + v184;
          v190 = &v78[v136 / 4];
          v191 = v184 - v154;
          v190[2] = v189;
          v190[3] = v155 + v185;
          v192 = v185 - v155;
          v193 = *(v75 + v136 - 4);
          v194 = *(v75 + v136);
          v195 = v172 * 0.70711;
          v196 = (v192 * v194) + (v191 * v193);
          v197 = v187 - v156;
          v198 = (v192 * v193) - (v191 * v194);
          v199 = *(v76 + v136);
          v200 = *(v76 + v136 + 4);
          v201 = (v187 - v156) * v200;
          v202 = -((v157 + v186) * v200);
          v203 = v201 + ((v157 + v186) * v199);
          v204 = &v79[v136 / 4];
          v205 = v76;
          v206 = v75;
          v207 = v74;
          v208 = v72;
          v209 = v71;
          v210 = &v77[v136 / 4];
          v211 = v186 - v157;
          v212 = v156 + v187;
          v213 = v202 + (v197 * v199);
          v214 = *(v80 + v136);
          v215 = *(v80 + v136 + 4);
          v216 = &v73[v136 / 4];
          v204[2] = v196;
          v204[3] = v198;
          v217 = (v212 * v215) + (v211 * v214);
          v218 = (v212 * v214) - (v211 * v215);
          v219 = v171 + v183;
          v210[2] = v203;
          v210[3] = v213;
          v71 = v209;
          v72 = v208;
          v74 = v207;
          v75 = v206;
          v76 = v205;
          v220 = v173 - v181;
          v221 = v171 - v183;
          v222 = v173 + v181;
          v216[2] = v217;
          v216[3] = v218;
          v223 = *(a6 + v136);
          v224 = *(a6 + v136 + 4);
          v225 = &v70[v136 / 4];
          v226 = ((v182 + v220) * v224) + ((v176 + v219) * v223);
          v227 = -((v176 + v219) * v224);
          v228 = v219 - v176;
          v229 = v220 - v182;
          v230 = v227 + ((v182 + v220) * v223);
          v231 = *(v74 + v136);
          v232 = *(v74 + v136 + 4);
          v233 = &v66[v136 / 4];
          v234 = v229 * v232;
          v235 = -(v228 * v232);
          v236 = v234 + (v228 * v231);
          v237 = *(v72 + v136);
          v238 = *(v72 + v136 + 4);
          v239 = &v63[v136 / 4];
          v240 = v235 + (v229 * v231);
          v241 = ((v195 + v222) * v238) + ((v188 + v221) * v237);
          v242 = ((v195 + v222) * v237) - ((v188 + v221) * v238);
          v225[2] = v226;
          v225[3] = v230;
          v243 = v221 - v188;
          v244 = v222 - v195;
          v233[2] = v236;
          v233[3] = v240;
          v246 = *(v71 + v136);
          v245 = *(v71 + v136 + 4);
          v247 = &v60[v136 / 4];
          v239[2] = v241;
          v239[3] = v242;
          v247[2] = (v244 * v245) + (v243 * v246);
          v247[3] = (v244 * v246) - (v243 * v245);
          v136 += 8;
          --v137;
        }

        while (v137);
      }

      v59 = v262 + 1;
      v60 = (v60 + v250);
      v61 += v249;
      v62 += v249;
      v63 = (v63 + v250);
      v64 += v249;
      v65 += v249;
      v66 = (v66 + v250);
      a4 += v249;
      v67 += v249;
      v68 += v249;
      v69 += v249;
      v78 = (v78 + v250);
      v70 = (v70 + v250);
      v73 = (v73 + v250);
      v77 = (v77 + v250);
      v79 = (v79 + v250);
      v6 = a3;
      a5 = v258;
    }

    while (v262 + 1 != a3);
  }
}

uint64_t sub_24BF62224(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a4 + 1;
      v7 = a3;
      do
      {
        v8 = v6[-1];
        v9 = *v6;
        *a5 = vadd_f32(v8, *v6);
        a5[a3] = vsub_f32(v8, v9);
        ++a5;
        v6 += 2;
        --v7;
      }

      while (v7);
    }
  }

  else if (a3)
  {
    v10 = 0;
    v11 = a4 + 1;
    v12 = 16 * a2;
    v13 = 8 * a2;
    v14 = &a4[a2 + 1];
    v15 = a5 + 1;
    v16 = &a5[a3 * a2 + 1];
    do
    {
      result = v10 * a2;
      v18 = a4[2 * v10 * a2];
      v19 = a4[((2 * v10) | 1) * a2];
      a5[v10 * a2] = vadd_f32(v18, v19);
      a5[(v10 + a3) * a2] = vsub_f32(v18, v19);
      if (a2)
      {
        v20 = 0;
        v21 = a2 - 1;
        do
        {
          v22 = v11[v20 / 8];
          v23 = *(v14 + v20);
          v15[v20 / 8] = vadd_f32(v22, v23);
          result = a6 + v20;
          v24 = vsub_f32(v22, v23);
          v25.i32[0] = vdup_lane_s32(v24, 1).u32[0];
          v25.f32[1] = -v24.f32[0];
          *(v16 + v20) = vmla_n_f32(vmul_n_f32(v25, *(a6 + v20 + 4)), v24, *(a6 + v20));
          v20 += 8;
          --v21;
        }

        while (v21);
      }

      ++v10;
      v11 = (v11 + v12);
      v14 += v12;
      v15 = (v15 + v13);
      v16 += v13;
    }

    while (v10 != a3);
  }

  return result;
}

void sub_24BF62328(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a4 + 2;
      v7 = a3;
      do
      {
        v8 = v6[-2];
        v9 = v6[-1];
        v10 = *v6;
        v6 += 3;
        v11 = vadd_f32(v9, v10);
        *a5 = vadd_f32(v8, v11);
        v12 = vadd_f32(v8, vmul_f32(v11, 0xBF000000BF000000));
        v13 = vrev64_s32(vmul_f32(vsub_f32(v9, v10), 0x3F5DB3D7BF5DB3D7));
        a5[a3] = vadd_f32(v13, v12);
        a5[2 * a3] = vsub_f32(v12, v13);
        ++a5;
        --v7;
      }

      while (v7);
    }
  }

  else if (a3)
  {
    v14 = 0;
    v15 = a4 + 1;
    v16 = 24 * a2;
    v17 = 8 * a2;
    v18 = &a4[a2 + 1];
    v19 = &a4[2 * a2 + 1];
    v20 = a5 + 1;
    v21 = &a5[2 * a3 * a2 + 1];
    v22 = a6 + 8 * a2 - 8;
    v23 = &a5[a3 * a2 + 1];
    do
    {
      v24 = 3 * v14 * a2;
      v25 = a4[v24];
      v26 = a4[a2 + v24];
      v27 = a4[(3 * v14 + 2) * a2];
      v28 = vadd_f32(v26, v27);
      a5[v14 * a2] = vadd_f32(v25, v28);
      v29 = vadd_f32(v25, vmul_f32(v28, 0xBF000000BF000000));
      v30 = vrev64_s32(vmul_f32(vsub_f32(v26, v27), 0x3F5DB3D7BF5DB3D7));
      a5[(v14 + a3) * a2] = vadd_f32(v30, v29);
      a5[(v14 + 2 * a3) * a2] = vsub_f32(v29, v30);
      if (a2)
      {
        v31 = 0;
        v32 = a2 - 1;
        do
        {
          v33 = v15[v31 / 8];
          v34 = *(v18 + v31);
          v35 = *(v19 + v31);
          v36 = vadd_f32(v34, v35);
          v20[v31 / 8] = vadd_f32(v33, v36);
          v37 = *(v22 + v31);
          v38 = *(v22 + v31 + 4);
          v39 = vadd_f32(v33, vmul_f32(v36, 0xBF000000BF000000));
          v40 = vrev64_s32(vmul_f32(vsub_f32(v34, v35), 0x3F5DB3D7BF5DB3D7));
          v41 = vadd_f32(v40, v39);
          v42.i32[0] = vdup_lane_s32(v41, 1).u32[0];
          v42.f32[1] = -v41.f32[0];
          *(v23 + v31) = vmla_n_f32(vmul_n_f32(v42, *(a6 + v31 + 4)), v41, *(a6 + v31));
          v43 = vsub_f32(v39, v40);
          v41.i32[0] = vdup_lane_s32(v43, 1).u32[0];
          v41.f32[1] = -v43.f32[0];
          *(v21 + v31) = vmla_n_f32(vmul_n_f32(v41, v38), v43, v37);
          v31 += 8;
          --v32;
        }

        while (v32);
      }

      ++v14;
      v15 = (v15 + v16);
      v18 += v16;
      v19 += v16;
      v20 = (v20 + v17);
      v21 += v17;
      v23 += v17;
    }

    while (v14 != a3);
  }
}

void sub_24BF6250C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = (a5 + 4);
      v8 = 2 * a3;
      v9 = (a5 + 4 + 24 * a3);
      v10 = (a4 + 20);
      v11 = (a5 + 4 + 32 * a3);
      v12 = (a5 + 4 + 16 * a3);
      do
      {
        v13 = *(v10 - 5);
        v14 = *(v10 - 4);
        v15 = *(v10 - 3);
        v16 = *(v10 - 2);
        v17 = v10[3];
        v18 = v10[4];
        v19 = v15 + v17;
        v20 = v16 + v18;
        v21 = v15 - v17;
        v22 = v16 - v18;
        v23 = *(v10 - 1);
        v24 = v10[1];
        v25 = v10[2];
        v26 = v23 + v24;
        v27 = *v10 + v25;
        v28 = v23 - v24;
        v29 = *v10 - v25;
        *(v7 - 1) = (v13 + v19) + v26;
        *v7 = (v14 + v20) + v27;
        v30 = (v13 + (v19 * 0.30902)) + (v26 * -0.80902);
        v31 = (v14 + (v20 * 0.30902)) + (v27 * -0.80902);
        v32 = (v28 * -0.58779) + (v21 * -0.95106);
        v33 = (v29 * -0.58779) + (v22 * -0.95106);
        v34 = &v7[v8];
        *(v34 - 1) = v30 - v33;
        *v34 = v31 + v32;
        *(v11 - 1) = v30 + v33;
        *v11 = v31 - v32;
        v35 = (v13 + (v19 * -0.80902)) + (v26 * 0.30902);
        v36 = (v14 + (v20 * -0.80902)) + (v27 * 0.30902);
        v37 = (v28 * 0.95106) + (v21 * -0.58779);
        v38 = (v29 * 0.95106) + (v22 * -0.58779);
        *(v12 - 1) = v35 - v38;
        *v12 = v36 + v37;
        v7 += 2;
        v11 += 2;
        *(v9 - 1) = v35 + v38;
        *v9 = v36 - v37;
        v12 += 2;
        v9 += 2;
        v10 += 10;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v39 = 0;
    v40 = a4 + 8;
    v102 = 40 * a2;
    v41 = 8 * a2;
    v42 = a4 + 8 + 8 * a2;
    v43 = a4 + 8 + 32 * a2;
    v44 = a4 + 8 + 16 * a2;
    v45 = a4 + 8 + 24 * a2;
    v46 = a5 + 8;
    v47 = a5 + 8 + 24 * a3 * a2;
    v48 = a6 + 16 * (a2 - 1);
    v49 = a5 + 8 + 16 * a3 * a2;
    v50 = a6 + 24 * a2 - 24;
    v51 = vdup_n_s32(0x3E9E377Au);
    v52 = a5 + 8 + 32 * a3 * a2;
    v53 = vdup_n_s32(0xBF4F1BBD);
    v54 = vdup_n_s32(0xBF167918);
    v55 = vdup_n_s32(0xBF737871);
    v56 = vdup_n_s32(0x3F737871u);
    v57 = a6 + 8 * a2 - 8;
    v58 = a5 + 8 + 8 * a3 * a2;
    do
    {
      v59 = 5 * v39 * a2;
      v60 = *(a4 + 8 * v59);
      v61 = *(a4 + 8 * (a2 + v59));
      v62 = *(a4 + 8 * (5 * v39 + 4) * a2);
      v63 = vadd_f32(v61, v62);
      v64 = *(a4 + 8 * (5 * v39 + 2) * a2);
      v65 = vsub_f32(v61, v62);
      v66 = *(a4 + 8 * (5 * v39 + 3) * a2);
      v67 = vadd_f32(v64, v66);
      v68 = vsub_f32(v64, v66);
      *(a5 + 8 * v39 * a2) = vadd_f32(vadd_f32(v60, v63), v67);
      v69 = vmla_f32(vmla_f32(v60, v51, v63), v53, v67);
      v70 = vrev64_s32(vmla_f32(vmul_f32(v68, v54), v55, v65));
      *&v6 = vsub_f32(v69, v70);
      v71 = vadd_f32(v69, v70);
      v72 = v6;
      DWORD1(v72) = v71.i32[1];
      *(a5 + 8 * (v39 + a3) * a2) = v72;
      v71.i32[1] = DWORD1(v6);
      *(a5 + 8 * (v39 + 4 * a3) * a2) = v71;
      v73 = vmla_f32(vmla_f32(v60, v53, v63), v51, v67);
      v74 = vrev64_s32(vmla_f32(vmul_f32(v68, v56), v54, v65));
      v75 = vsub_f32(v73, v74);
      v76 = vadd_f32(v73, v74);
      *(a5 + 8 * (v39 + 2 * a3) * a2) = __PAIR64__(v76.u32[1], v75.u32[0]);
      v76.i32[1] = v75.i32[1];
      *(a5 + 8 * (v39 + 3 * a3) * a2) = v76;
      if (a2)
      {
        v77 = 0;
        v78 = a2 - 1;
        do
        {
          v79 = *(v40 + v77);
          v80 = *(v42 + v77);
          v81 = *(v43 + v77);
          v82 = vadd_f32(v80, v81);
          *&v72 = *(v44 + v77);
          v83 = *(v45 + v77);
          v84 = vadd_f32(*&v72, v83);
          *(v46 + v77) = vadd_f32(vadd_f32(v79, v82), v84);
          v85 = *(v50 + v77);
          v86 = *(v50 + v77 + 4);
          v87 = vsub_f32(v80, v81);
          v88 = vsub_f32(*&v72, v83);
          *&v72 = vmla_f32(vmla_f32(v79, v51, v82), v53, v84);
          v89 = vrev64_s32(vmla_f32(vmul_f32(v88, v54), v55, v87));
          v90 = vsub_f32(*&v72, v89);
          *&v72 = vadd_f32(*&v72, v89);
          v6 = v72;
          DWORD1(v6) = v90.i32[1];
          v91.i32[0] = vdup_lane_s32(v90, 1).u32[0];
          v90.i32[1] = DWORD1(v72);
          v92.i32[0] = vdup_lane_s32(*&v72, 1).u32[0];
          v92.f32[1] = -v90.f32[0];
          v93 = *(v57 + v77);
          v94 = *(v57 + v77 + 4);
          *(v58 + v77) = vmla_n_f32(vmul_n_f32(v92, *(a6 + v77 + 4)), v90, *(a6 + v77));
          v91.f32[1] = -*&v72;
          *(v52 + v77) = vmla_n_f32(vmul_n_f32(v91, v86), *&v6, v85);
          v95 = vmla_f32(vmla_f32(v79, v53, v82), v51, v84);
          v96 = vrev64_s32(vmla_f32(vmul_f32(v88, v56), v54, v87));
          v97 = vsub_f32(v95, v96);
          v98 = vadd_f32(v95, v96);
          v99 = __PAIR64__(v97.u32[1], v98.u32[0]);
          v100.i32[0] = vdup_lane_s32(v97, 1).u32[0];
          v97.i32[1] = v98.i32[1];
          v88.i32[0] = *(v48 + v77);
          v101 = *(v48 + v77 + 4);
          LODWORD(v6) = vdup_lane_s32(v98, 1).u32[0];
          *(&v6 + 1) = -v97.f32[0];
          *(v49 + v77) = vmla_n_f32(vmul_n_f32(*&v6, v94), v97, v93);
          v100.f32[1] = -*v98.i32;
          *(v47 + v77) = vmla_n_f32(vmul_n_f32(v100, v101), v99, v88.f32[0]);
          v77 += 8;
          --v78;
        }

        while (v78);
      }

      ++v39;
      v40 += v102;
      v42 += v102;
      v43 += v102;
      v44 += v102;
      v45 += v102;
      v46 += v41;
      v47 += v41;
      v49 += v41;
      v52 += v41;
      v58 += v41;
    }

    while (v39 != a3);
  }
}

void sub_24BF62980(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t a5, uint64_t a6)
{
  v129 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = 0;
      v7 = vdup_n_s32(0x3F1F9D07u);
      v8 = vdup_n_s32(0xBE63DC87);
      v9 = vdup_n_s32(0xBF66A5E5);
      v10 = vdup_n_s32(0xBF7994E0);
      v11 = vdup_n_s32(0xBF48261C);
      v12 = vdup_n_s32(0xBEDE2602);
      v13 = vdup_n_s32(0x3EDE2602u);
      v14 = vdup_n_s32(0x3F48261Cu);
      v15 = a4 + 3;
      do
      {
        v16 = v15[-3];
        v17 = v15[-2];
        v19 = v15[2];
        v18 = v15[3];
        v20 = vadd_f32(v17, v18);
        v21 = vsub_f32(v17, v18);
        v22 = v15[-1];
        v23 = v15[1];
        v24 = vadd_f32(v22, v19);
        v25 = vsub_f32(v22, v19);
        v26 = vadd_f32(*v15, v23);
        v27 = vsub_f32(*v15, v23);
        v28 = vmla_f32(vmla_f32(vmla_f32(v16, v7, v20), v8, v24), v9, v26);
        *(a5 + 8 * v6) = vadd_f32(vadd_f32(vadd_f32(v16, v20), v24), v26);
        v29 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v25, v10), v11, v21), v12, v27));
        v30 = vsub_f32(v28, v29);
        v31 = vadd_f32(v28, v29);
        v32 = __PAIR64__(v31.u32[1], v30.u32[0]);
        v33 = vmla_f32(vmla_f32(vmla_f32(v16, v8, v20), v9, v24), v7, v26);
        v34 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v25, v13), v10, v21), v14, v27));
        v35 = vsub_f32(v33, v34);
        v31.i32[1] = v30.i32[1];
        v36 = vadd_f32(v33, v34);
        v37 = __PAIR64__(v36.u32[1], v35.u32[0]);
        *(a5 + 8 * a3 + 8 * v6) = v32;
        v36.i32[1] = v35.i32[1];
        *(a5 + 48 * a3 + 8 * v6) = v31;
        v38 = vmla_f32(vmla_f32(vmla_f32(v16, v9, v20), v7, v24), v8, v26);
        *(a5 + 16 * a3 + 8 * v6) = v37;
        v39 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v25, v14), v12, v21), v10, v27));
        v40 = vsub_f32(v38, v39);
        v41 = vadd_f32(v38, v39);
        v42 = __PAIR64__(v41.u32[1], v40.u32[0]);
        *(a5 + 40 * a3 + 8 * v6) = v36;
        v41.i32[1] = v40.i32[1];
        *(a5 + 24 * a3 + 8 * v6) = v42;
        *(a5 + 32 * a3 + 8 * v6++) = v41;
        v15 += 7;
      }

      while (a3 != v6);
    }
  }

  else if (a3)
  {
    v43 = a3;
    v44 = 0;
    v136 = 3 * a3;
    v134 = 2 * a3;
    v135 = 6 * a3;
    v132 = 4 * a3;
    v133 = 5 * a3;
    v45 = a4 + 1;
    v131 = 56 * a2;
    v130 = 8 * a2;
    v46 = &a4[a2 + 1];
    v47 = &a4[6 * a2 + 1];
    v48 = &a4[2 * a2 + 1];
    v49 = a5 + 8;
    v50 = &a4[5 * a2 + 1];
    v51 = &a4[3 * a2 + 1];
    v52 = a5 + 8 + 24 * a3 * a2;
    v53 = &a4[4 * a2 + 1];
    v54 = a5 + 8 + 40 * a3 * a2;
    v55 = a5 + 8 + 32 * a3 * a2;
    v56 = vdup_n_s32(0x3F1F9D07u);
    v57 = vdup_n_s32(0xBE63DC87);
    v58 = a5 + 8 + 48 * a3 * a2;
    v59 = vdup_n_s32(0xBF66A5E5);
    v60 = vdup_n_s32(0xBF7994E0);
    v61 = a5 + 8 + 16 * a3 * a2;
    v62 = vdup_n_s32(0xBF48261C);
    v63 = vdup_n_s32(0xBEDE2602);
    v64 = vdup_n_s32(0x3EDE2602u);
    v65 = vdup_n_s32(0x3F48261Cu);
    v66 = a5 + 8 + 8 * a3 * a2;
    do
    {
      v67 = 7 * v44 * a2;
      v139 = v44;
      v68 = a4[v67];
      v69 = a4[a2 + v67];
      v70 = a4[(7 * v44 + 6) * a2];
      v71 = vadd_f32(v69, v70);
      v72 = vsub_f32(v69, v70);
      v73 = a4[(7 * v44 + 2) * a2];
      v74 = a4[(7 * v44 + 5) * a2];
      v75 = vadd_f32(v73, v74);
      v76 = vsub_f32(v73, v74);
      v77 = a4[(7 * v44 + 3) * a2];
      v78 = a4[(7 * v44 + 4) * a2];
      v79 = vadd_f32(v77, v78);
      v80 = vsub_f32(v77, v78);
      *(a5 + 8 * v44 * a2) = vadd_f32(vadd_f32(vadd_f32(v68, v71), v75), v79);
      v81 = vmla_f32(vmla_f32(vmla_f32(v68, v56, v71), v57, v75), v59, v79);
      v82 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v76, v60), v62, v72), v63, v80));
      v83 = vsub_f32(v81, v82);
      v84 = vadd_f32(v81, v82);
      *(a5 + 8 * (v44 + v43) * a2) = __PAIR64__(v84.u32[1], v83.u32[0]);
      v84.i32[1] = v83.i32[1];
      *(a5 + 8 * (v44 + v135) * a2) = v84;
      v85 = vmla_f32(vmla_f32(vmla_f32(v68, v57, v71), v59, v75), v56, v79);
      v86 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v76, v64), v60, v72), v65, v80));
      v87 = vsub_f32(v85, v86);
      v88 = vadd_f32(v85, v86);
      *(a5 + 8 * (v44 + v134) * a2) = __PAIR64__(v88.u32[1], v87.u32[0]);
      v88.i32[1] = v87.i32[1];
      *(a5 + 8 * (v44 + v133) * a2) = v88;
      v89 = vmla_f32(vmla_f32(vmla_f32(v68, v59, v71), v56, v75), v57, v79);
      v90 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v76, v65), v63, v72), v60, v80));
      v91 = vsub_f32(v89, v90);
      v92 = vadd_f32(v89, v90);
      *(a5 + 8 * (v44 + v136) * a2) = __PAIR64__(v92.u32[1], v91.u32[0]);
      v92.i32[1] = v91.i32[1];
      *(a5 + 8 * (v44 + v132) * a2) = v92;
      if (a2)
      {
        v93 = 0;
        v94 = v129;
        do
        {
          v95 = v45[v93 / 8];
          v96 = *(v46 + v93);
          v97 = *(v47 + v93);
          v98 = *(v48 + v93);
          v99 = vadd_f32(v96, v97);
          v100 = *(v50 + v93);
          v101 = vadd_f32(v98, v100);
          v102 = *(v51 + v93);
          v103 = *(v53 + v93);
          v104 = vadd_f32(v102, v103);
          v105 = vsub_f32(v96, v97);
          v106 = vsub_f32(v98, v100);
          v107 = vsub_f32(v102, v103);
          v108 = vmla_f32(vmla_f32(vmla_f32(v95, v56, v99), v57, v101), v59, v104);
          v109 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v106, v60), v62, v105), v63, v107));
          v110 = vadd_f32(v108, v109);
          v111 = vsub_f32(v108, v109);
          v112.i32[0] = vdup_lane_s32(v110, 1).u32[0];
          v112.f32[1] = -v111.f32[0];
          v113 = vmla_n_f32(vmul_n_f32(v112, *(a6 + v93 + 4)), __PAIR64__(v110.u32[1], v111.u32[0]), *(a6 + v93));
          v110.i32[1] = v111.i32[1];
          v111.i32[0] = vdup_lane_s32(v111, 1).u32[0];
          v111.f32[1] = -v110.f32[0];
          v114 = vmla_n_f32(vmul_n_f32(v111, *(a6 + 40 * a2 - 40 + v93 + 4)), v110, *(a6 + 40 * a2 - 40 + v93));
          v115 = vmla_f32(vmla_f32(vmla_f32(v95, v57, v99), v59, v101), v56, v104);
          v116 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v106, v64), v60, v105), v65, v107));
          v117 = vadd_f32(v115, v116);
          v118 = vsub_f32(v115, v116);
          v119.i32[0] = vdup_lane_s32(v117, 1).u32[0];
          v119.f32[1] = -v118.f32[0];
          v120 = vmla_n_f32(vmul_n_f32(v119, *(a6 + 8 * a2 - 8 + v93 + 4)), __PAIR64__(v117.u32[1], v118.u32[0]), *(a6 + 8 * a2 - 8 + v93));
          v117.i32[1] = v118.i32[1];
          v118.i32[0] = vdup_lane_s32(v118, 1).u32[0];
          v118.f32[1] = -v117.f32[0];
          v121 = vmla_n_f32(vmul_n_f32(v118, *(a6 + 32 * v129 + v93 + 4)), v117, *(a6 + 32 * v129 + v93));
          v122 = vadd_f32(v95, v99);
          v123 = vmla_f32(vmla_f32(vmla_f32(v95, v59, v99), v56, v101), v57, v104);
          v124 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v106, v65), v63, v105), v60, v107));
          v125 = vadd_f32(v123, v124);
          v126 = vsub_f32(v123, v124);
          v107.i32[0] = vdup_lane_s32(v125, 1).u32[0];
          v107.f32[1] = -v126.f32[0];
          v127 = vmla_n_f32(vmul_n_f32(v107, *(a6 + 16 * v129 + v93 + 4)), __PAIR64__(v125.u32[1], v126.u32[0]), *(a6 + 16 * v129 + v93));
          v125.i32[1] = v126.i32[1];
          v126.i32[0] = vdup_lane_s32(v126, 1).u32[0];
          v126.f32[1] = -v125.f32[0];
          v128 = vmla_n_f32(vmul_n_f32(v126, *(a6 + 24 * a2 - 24 + v93 + 4)), v125, *(a6 + 24 * a2 - 24 + v93));
          *(v49 + v93) = vadd_f32(vadd_f32(v122, v101), v104);
          *(v66 + v93) = v113;
          *(v58 + v93) = v114;
          *(v61 + v93) = v120;
          *(v54 + v93) = v121;
          *(v52 + v93) = v127;
          *(v55 + v93) = v128;
          v93 += 8;
          --v94;
        }

        while (v94);
      }

      ++v44;
      v45 = (v45 + v131);
      v46 += v131;
      v47 += v131;
      v48 += v131;
      v50 += v131;
      v51 += v131;
      v53 += v131;
      v49 += v130;
      v55 += v130;
      v52 += v130;
      v54 += v130;
      v61 += v130;
      v58 += v130;
      v66 += v130;
      v43 = a3;
    }

    while (v139 + 1 != a3);
  }
}

void sub_24BF6303C(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t a5, uint64_t a6)
{
  v204 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = 0;
      v234 = vdup_n_s32(0xBF68DDA4);
      v236 = vdup_n_s32(0xBF7D64F0);
      v232 = vdup_n_s32(0x3E903F40u);
      v229 = vdup_n_s32(0x3F68DDA4u);
      v7 = a4 + 5;
      v9 = vdup_n_s32(0x3ED4B147u);
      v8 = vdup_n_s32(0x3F575C64u);
      v11 = vdup_n_s32(0x3F27A4F4u);
      v10 = vdup_n_s32(0x3E11BAFBu);
      v12 = vdup_n_s32(0xBF4178CE);
      v13 = vdup_n_s32(0x3F75A155u);
      v15 = vdup_n_s32(0xBE903F40);
      v14 = vdup_n_s32(0xBF0A6770);
      v16 = vdup_n_s32(0x3F0A6770u);
      v17 = vdup_n_s32(0x3F7D64F0u);
      do
      {
        v19 = v7[-5];
        v18 = v7[-4];
        v21 = v7[4];
        v20 = v7[5];
        v22 = vadd_f32(v18, v20);
        v23 = vsub_f32(v18, v20);
        v25 = v7[-3];
        v24 = v7[-2];
        v27 = v7[2];
        v26 = v7[3];
        v28 = vadd_f32(v25, v21);
        v29 = vsub_f32(v25, v21);
        v30 = vadd_f32(v24, v26);
        v31 = vsub_f32(v24, v26);
        v32 = v7[-1];
        v33 = v7[1];
        v34 = vadd_f32(v32, v27);
        v35 = vsub_f32(v32, v27);
        v36 = vadd_f32(*v7, v33);
        v37 = vsub_f32(*v7, v33);
        v38 = vsub_f32(vsub_f32(vsub_f32(vadd_f32(vadd_f32(v19, vmul_f32(v22, v8)), vmul_f32(v28, v9)), vmul_f32(v30, v10)), vmul_f32(v34, v11)), vmul_f32(v36, v13));
        *(a5 + 8 * v6) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vadd_f32(v19, v22), v28), v30), v34), v36);
        v39 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v234), v14, v23), v236, v31), v12, v35), v15, v37));
        v40 = vsub_f32(v38, v39);
        v41 = vadd_f32(vsub_f32(vsub_f32(vsub_f32(vadd_f32(v19, vmul_f32(v22, v9)), vmul_f32(v28, v11)), vmul_f32(v30, v13)), vmul_f32(v34, v10)), vmul_f32(v36, v8));
        v42 = vadd_f32(v38, v39);
        v43 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v12), v234, v23), v232, v31), v17, v35), v16, v37));
        v44 = vsub_f32(v41, v43);
        v45 = vadd_f32(v41, v43);
        v46 = __PAIR64__(v42.u32[1], v40.u32[0]);
        v47 = __PAIR64__(v45.u32[1], v44.u32[0]);
        v48 = vsub_f32(vadd_f32(vadd_f32(vsub_f32(vsub_f32(v19, vmul_f32(v22, v10)), vmul_f32(v28, v13)), vmul_f32(v30, v9)), vmul_f32(v34, v8)), vmul_f32(v36, v11));
        v42.i32[1] = v40.i32[1];
        v49 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v232), v236, v23), v229, v31), v14, v35), v12, v37));
        v50 = vsub_f32(v48, v49);
        v51 = vadd_f32(v48, v49);
        v52 = __PAIR64__(v51.u32[1], v50.u32[0]);
        v45.i32[1] = v44.i32[1];
        v53 = vadd_f32(vsub_f32(vadd_f32(vsub_f32(vsub_f32(v19, vmul_f32(v22, v11)), vmul_f32(v28, v10)), vmul_f32(v30, v8)), vmul_f32(v34, v13)), vmul_f32(v36, v9));
        v51.i32[1] = v50.i32[1];
        *(a5 + 8 * a3 + 8 * v6) = v46;
        v54 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v17), v12, v23), v14, v31), v15, v35), v229, v37));
        v55 = vsub_f32(v53, v54);
        v56 = vadd_f32(v53, v54);
        v57 = __PAIR64__(v56.u32[1], v55.u32[0]);
        *(a5 + 80 * a3 + 8 * v6) = v42;
        v56.i32[1] = v55.i32[1];
        *(a5 + 16 * a3 + 8 * v6) = v47;
        *(a5 + 72 * a3 + 8 * v6) = v45;
        *(a5 + 24 * a3 + 8 * v6) = v52;
        v58 = vsub_f32(vadd_f32(vsub_f32(vadd_f32(vsub_f32(v19, vmul_f32(v22, v13)), vmul_f32(v28, v8)), vmul_f32(v30, v11)), vmul_f32(v34, v9)), vmul_f32(v36, v10));
        *(a5 + (a3 << 6) + 8 * v6) = v51;
        *(a5 + 32 * a3 + 8 * v6) = v57;
        v59 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v16), v15, v23), v12, v31), v229, v35), v236, v37));
        v60 = vsub_f32(v58, v59);
        v61 = vadd_f32(v58, v59);
        v62 = __PAIR64__(v61.u32[1], v60.u32[0]);
        *(a5 + 56 * a3 + 8 * v6) = v56;
        v61.i32[1] = v60.i32[1];
        *(a5 + 40 * a3 + 8 * v6) = v62;
        *(a5 + 48 * a3 + 8 * v6++) = v61;
        v7 += 11;
      }

      while (a3 != v6);
    }
  }

  else if (a3)
  {
    v63 = 0;
    v216 = 9 * a3;
    v64 = a4 + 1;
    v65 = &a4[9 * a2 + 1];
    v66 = &a4[3 * a2 + 1];
    v223 = &a4[5 * a2 + 1];
    v67 = &a4[6 * a2 + 1];
    v214 = 88 * a2;
    v221 = &a4[7 * a2 + 1];
    v222 = &a4[10 * a2 + 1];
    v68 = a5 + 8;
    v69 = a5 + 8 + 48 * a3 * a2;
    v224 = a6 + 40 * a2 - 40;
    v217 = 5 * a3;
    v70 = a3;
    v213 = 10 * a3;
    v71 = a5 + 8 + 40 * a3 * a2;
    v72 = a5 + 8 + 56 * a3 * a2;
    v211 = a6 + 48 * a2 - 48;
    v212 = 2 * a3;
    v73 = a5 + 8 + 32 * a3 * a2;
    v210 = a6 + 24 * a2 - 24;
    v74 = a5 + 8 + ((a3 * a2) << 6);
    v75 = a5 + 8 + 24 * a3 * a2;
    v76 = a5 + 8 + 72 * a3 * a2;
    v77 = a5 + 8 + 16 * a3 * a2;
    v78 = a5 + 8 + 80 * a3 * a2;
    v79 = a5 + 8 + 8 * a3 * a2;
    v80 = vdup_n_s32(0x3F575C64u);
    v81 = vdup_n_s32(0x3ED4B147u);
    v82 = vdup_n_s32(0x3E11BAFBu);
    v83 = vdup_n_s32(0x3F27A4F4u);
    v84 = vdup_n_s32(0x3F75A155u);
    v85 = vdup_n_s32(0xBF68DDA4);
    v86 = vdup_n_s32(0xBF0A6770);
    v87 = vdup_n_s32(0xBF7D64F0);
    v88 = vdup_n_s32(0xBF4178CE);
    v89 = vdup_n_s32(0xBE903F40);
    v90 = vdup_n_s32(0x3E903F40u);
    v91 = vdup_n_s32(0x3F7D64F0u);
    v92 = vdup_n_s32(0x3F0A6770u);
    v93 = vdup_n_s32(0x3F68DDA4u);
    v209 = 8 * a3;
    v207 = 7 * a3;
    v208 = 4 * a3;
    v215 = 3 * a3;
    v205 = 8 * a2;
    v206 = 6 * a3;
    v94 = &a4[a2 + 1];
    v95 = &a4[2 * a2 + 1];
    v96 = &a4[8 * a2 + 1];
    v97 = &a4[4 * a2 + 1];
    v218 = v70;
    v219 = a5;
    v228 = v90;
    v230 = v85;
    v226 = v86;
    v227 = v91;
    v235 = v92;
    v237 = v87;
    v233 = v89;
    do
    {
      v231 = v96;
      v98 = 11 * v63 * a2;
      v99 = a4[v98];
      v100 = a4[a2 + v98];
      v101 = a4[(11 * v63 + 10) * a2];
      v102 = a4[(11 * v63 + 2) * a2];
      v103 = a4[(11 * v63 + 9) * a2];
      v104 = a4[(11 * v63 + 3) * a2];
      v105 = a4[(11 * v63 + 8) * a2];
      v106 = a4[(11 * v63 + 4) * a2];
      v107 = a4[(11 * v63 + 7) * a2];
      v108 = a4[(11 * v63 + 5) * a2];
      v109 = vadd_f32(v100, v101);
      v110 = vsub_f32(v100, v101);
      v111 = vadd_f32(v102, v103);
      v112 = vsub_f32(v102, v103);
      v113 = a4[(11 * v63 + 6) * a2];
      v114 = vadd_f32(v104, v105);
      v115 = vadd_f32(v106, v107);
      v116 = vadd_f32(v108, v113);
      *(a5 + 8 * v63 * a2) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vadd_f32(v99, v109), v111), v114), v115), v116);
      v117 = vsub_f32(v104, v105);
      v118 = vsub_f32(v106, v107);
      v119 = vsub_f32(v108, v113);
      v120 = vsub_f32(vsub_f32(vsub_f32(vadd_f32(vadd_f32(v99, vmul_f32(v109, v80)), vmul_f32(v111, v81)), vmul_f32(v114, v82)), vmul_f32(v115, v83)), vmul_f32(v116, v84));
      v121 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v112, v85), v86, v110), v87, v117), v88, v118), v89, v119));
      v122 = vsub_f32(v120, v121);
      v123 = vadd_f32(v120, v121);
      *(a5 + 8 * (v63 + v70) * a2) = __PAIR64__(v123.u32[1], v122.u32[0]);
      v123.i32[1] = v122.i32[1];
      *(a5 + 8 * (v63 + v213) * a2) = v123;
      v124 = vadd_f32(vsub_f32(vsub_f32(vsub_f32(vadd_f32(v99, vmul_f32(v109, v81)), vmul_f32(v111, v83)), vmul_f32(v114, v84)), vmul_f32(v115, v82)), vmul_f32(v116, v80));
      v125 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v112, v88), v85, v110), v90, v117), v91, v118), v92, v119));
      v126 = vsub_f32(v124, v125);
      v127 = vadd_f32(v124, v125);
      *(a5 + 8 * (v63 + v212) * a2) = __PAIR64__(v127.u32[1], v126.u32[0]);
      v127.i32[1] = v126.i32[1];
      *(a5 + 8 * (v63 + v216) * a2) = v127;
      v128 = vsub_f32(vadd_f32(vadd_f32(vsub_f32(vsub_f32(v99, vmul_f32(v109, v82)), vmul_f32(v111, v84)), vmul_f32(v114, v81)), vmul_f32(v115, v80)), vmul_f32(v116, v83));
      v129 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v112, v90), v87, v110), v93, v117), v86, v118), v88, v119));
      v130 = vsub_f32(v128, v129);
      v131 = vadd_f32(v128, v129);
      *(a5 + 8 * (v63 + v215) * a2) = __PAIR64__(v131.u32[1], v130.u32[0]);
      v131.i32[1] = v130.i32[1];
      *(a5 + 8 * (v63 + v209) * a2) = v131;
      v132 = vadd_f32(vsub_f32(vadd_f32(vsub_f32(vsub_f32(v99, vmul_f32(v109, v83)), vmul_f32(v111, v82)), vmul_f32(v114, v80)), vmul_f32(v115, v84)), vmul_f32(v116, v81));
      v133 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v112, v91), v88, v110), v86, v117), v89, v118), v93, v119));
      v134 = vsub_f32(v132, v133);
      v135 = vadd_f32(v132, v133);
      *(a5 + 8 * (v63 + v208) * a2) = __PAIR64__(v135.u32[1], v134.u32[0]);
      v135.i32[1] = v134.i32[1];
      *(a5 + 8 * (v63 + v207) * a2) = v135;
      v136 = vsub_f32(vadd_f32(vsub_f32(vadd_f32(vsub_f32(v99, vmul_f32(v109, v84)), vmul_f32(v111, v80)), vmul_f32(v114, v83)), vmul_f32(v115, v81)), vmul_f32(v116, v82));
      v137 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v112, v92), v89, v110), v88, v117), v93, v118), v87, v119));
      v138 = vsub_f32(v136, v137);
      v139 = vadd_f32(v136, v137);
      *(a5 + 8 * (v63 + v217) * a2) = __PAIR64__(v139.u32[1], v138.u32[0]);
      v220 = v63;
      v139.i32[1] = v138.i32[1];
      *(a5 + 8 * (v63 + v206) * a2) = v139;
      v140 = v87;
      v141 = v92;
      v142 = v93;
      v143 = v82;
      v144 = v88;
      if (a2)
      {
        v145 = 0;
        v146 = a2 - 1;
        do
        {
          v147 = v64[v145 / 8];
          v148 = *(v94 + v145);
          v149 = v142;
          v150 = *(v222 + v145);
          v151 = vadd_f32(v148, v150);
          v152 = *(v95 + v145);
          v153 = *(v65 + v145);
          v154 = vadd_f32(v152, v153);
          v155 = *(v66 + v145);
          v156 = *(v231 + v145);
          v157 = vadd_f32(v155, v156);
          v158 = *(v97 + v145);
          v159 = *(v221 + v145);
          v160 = *(v223 + v145);
          v161 = vadd_f32(v158, v159);
          v162 = *(v67 + v145);
          v163 = vadd_f32(v160, v162);
          v164 = v144;
          v165 = vsub_f32(v148, v150);
          v166 = vsub_f32(v152, v153);
          v167 = vsub_f32(v155, v156);
          v168 = vsub_f32(v158, v159);
          v169 = vsub_f32(v160, v162);
          v170 = vsub_f32(vsub_f32(vsub_f32(vadd_f32(vadd_f32(v147, vmul_f32(v151, v80)), vmul_f32(v154, v81)), vmul_f32(v157, v143)), vmul_f32(v161, v83)), vmul_f32(v163, v84));
          v171 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v166, v230), v226, v165), v237, v167), v164, v168), v233, v169));
          v172 = vadd_f32(v170, v171);
          v173 = vsub_f32(v170, v171);
          v160.i32[0] = vdup_lane_s32(v172, 1).u32[0];
          v160.f32[1] = -v173.f32[0];
          v174 = vmla_n_f32(vmul_n_f32(v160, *(a6 + v145 + 4)), __PAIR64__(v172.u32[1], v173.u32[0]), *(a6 + v145));
          v172.i32[1] = v173.i32[1];
          v173.i32[0] = vdup_lane_s32(v173, 1).u32[0];
          v173.f32[1] = -v172.f32[0];
          v175 = vmla_n_f32(vmul_n_f32(v173, *(a6 + 72 * a2 - 72 + v145 + 4)), v172, *(a6 + 72 * a2 - 72 + v145));
          v176 = vadd_f32(vsub_f32(vsub_f32(vsub_f32(vadd_f32(v147, vmul_f32(v151, v81)), vmul_f32(v154, v83)), vmul_f32(v157, v84)), vmul_f32(v161, v143)), vmul_f32(v163, v80));
          v177 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v166, v164), v230, v165), v228, v167), v227, v168), v235, v169));
          v178 = vadd_f32(v176, v177);
          v179 = vsub_f32(v176, v177);
          v172.i32[0] = vdup_lane_s32(v178, 1).u32[0];
          v172.f32[1] = -v179.f32[0];
          v180 = vmla_n_f32(vmul_n_f32(v172, *(a6 + 8 * a2 - 8 + v145 + 4)), __PAIR64__(v178.u32[1], v179.u32[0]), *(a6 + 8 * a2 - 8 + v145));
          v178.i32[1] = v179.i32[1];
          v179.i32[0] = vdup_lane_s32(v179, 1).u32[0];
          v179.f32[1] = -v178.f32[0];
          v181 = vmla_n_f32(vmul_n_f32(v179, *(a6 + (v204 << 6) + v145 + 4)), v178, *(a6 + (v204 << 6) + v145));
          v182 = vsub_f32(vadd_f32(vadd_f32(vsub_f32(vsub_f32(v147, vmul_f32(v151, v143)), vmul_f32(v154, v84)), vmul_f32(v157, v81)), vmul_f32(v161, v80)), vmul_f32(v163, v83));
          v183 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v166, v228), v237, v165), v149, v167), v226, v168), v164, v169));
          v184 = vadd_f32(v182, v183);
          v185 = vsub_f32(v182, v183);
          v160.i32[0] = vdup_lane_s32(v184, 1).u32[0];
          v160.f32[1] = -v185.f32[0];
          v186 = vmla_n_f32(vmul_n_f32(v160, *(a6 + 16 * v204 + v145 + 4)), __PAIR64__(v184.u32[1], v185.u32[0]), *(a6 + 16 * v204 + v145));
          v184.i32[1] = v185.i32[1];
          v185.i32[0] = vdup_lane_s32(v185, 1).u32[0];
          v185.f32[1] = -v184.f32[0];
          v187 = vmla_n_f32(vmul_n_f32(v185, *(56 * a2 + a6 - 56 + v145 + 4)), v184, *(56 * a2 + a6 - 56 + v145));
          v188 = vadd_f32(vsub_f32(vadd_f32(vsub_f32(vsub_f32(v147, vmul_f32(v151, v83)), vmul_f32(v154, v143)), vmul_f32(v157, v80)), vmul_f32(v161, v84)), vmul_f32(v163, v81));
          v189 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v166, v227), v164, v165), v226, v167), v233, v168), v149, v169));
          v190 = vadd_f32(v188, v189);
          v191 = vsub_f32(v188, v189);
          v189.i32[0] = vdup_lane_s32(v190, 1).u32[0];
          v189.f32[1] = -v191.f32[0];
          v192 = vmla_n_f32(vmul_n_f32(v189, *(v210 + v145 + 4)), __PAIR64__(v190.u32[1], v191.u32[0]), *(v210 + v145));
          v190.i32[1] = v191.i32[1];
          v191.i32[0] = vdup_lane_s32(v191, 1).u32[0];
          v191.f32[1] = -v190.f32[0];
          v193 = vmla_n_f32(vmul_n_f32(v191, *(v211 + v145 + 4)), v190, *(v211 + v145));
          v194 = vsub_f32(vadd_f32(vsub_f32(vadd_f32(vsub_f32(v147, vmul_f32(v151, v84)), vmul_f32(v154, v80)), vmul_f32(v157, v83)), vmul_f32(v161, v81)), vmul_f32(v163, v143));
          v195 = vmul_f32(v166, v235);
          v89 = v233;
          v141 = v235;
          v196 = vmla_f32(v195, v233, v165);
          v144 = v164;
          v197 = vmla_f32(v196, v164, v167);
          v140 = v237;
          v198 = vmla_f32(v197, v149, v168);
          v142 = v149;
          v199 = vrev64_s32(vmla_f32(v198, v237, v169));
          v200 = vadd_f32(v194, v199);
          v201 = vsub_f32(v194, v199);
          v160.i32[0] = vdup_lane_s32(v200, 1).u32[0];
          v160.f32[1] = -v201.f32[0];
          v202 = vmla_n_f32(vmul_n_f32(v160, *(a6 + 32 * v204 + v145 + 4)), __PAIR64__(v200.u32[1], v201.u32[0]), *(a6 + 32 * v204 + v145));
          v200.i32[1] = v201.i32[1];
          v201.i32[0] = vdup_lane_s32(v201, 1).u32[0];
          v201.f32[1] = -v200.f32[0];
          v203 = vmla_n_f32(vmul_n_f32(v201, *(v224 + v145 + 4)), v200, *(v224 + v145));
          *(v68 + v145) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vadd_f32(v147, v151), v154), v157), v161), v163);
          *(v79 + v145) = v174;
          *(v78 + v145) = v175;
          *(v77 + v145) = v180;
          *(v76 + v145) = v181;
          *(v75 + v145) = v186;
          *(v74 + v145) = v187;
          *(v73 + v145) = v192;
          *(v72 + v145) = v193;
          *(v71 + v145) = v202;
          *(v69 + v145) = v203;
          v145 += 8;
          --v146;
        }

        while (v146);
      }

      ++v63;
      v64 = (v64 + v214);
      v94 += v214;
      v222 += v214;
      v66 += v214;
      v96 = v231 + v214;
      v97 += v214;
      v221 += v214;
      v223 += v214;
      v67 += v214;
      v68 += v205;
      v69 += v205;
      v71 += v205;
      v72 += v205;
      v73 += v205;
      v74 += v205;
      v75 += v205;
      v76 += v205;
      v77 += v205;
      v78 += v205;
      v79 += v205;
      v70 = v218;
      a5 = v219;
      v65 += v214;
      v90 = v228;
      v85 = v230;
      v82 = v143;
      v86 = v226;
      v91 = v227;
      v87 = v140;
      v92 = v141;
      v93 = v142;
      v88 = v144;
      v95 += v214;
    }

    while (v220 + 1 != v218);
  }
}

void sub_24BF63E1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, float32x2_t *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_24BF60ADC(a3);
  v14 = v13;
  *v13 = 1065353216;
  if (a3 >= 2)
  {
    v15 = a3 - 1;
    v16 = (a8 + 12);
    v17 = v13 + 3;
    do
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      v16 += 2;
      *(v17 - 1) = v18;
      *v17 = -v19;
      v17 += 2;
      --v15;
    }

    while (v15);
  }

  v20 = a3 + 1;
  v21 = 8 * a2;
  if (a4)
  {
    v22 = a4;
    v23 = a6;
    v24 = a5;
    do
    {
      if (a2)
      {
        memcpy(v23, v24, 8 * a2);
      }

      v24 += a3 * a2;
      v23 += v21;
      --v22;
    }

    while (v22);
  }

  v25 = a4 * a2;
  v26 = v20 >> 1;
  v143 = a3 - 1;
  if (v20 >= 4)
  {
    v27 = &a6[8 * v25];
    v28 = &a6[8 * v25 * v143];
    v29 = &a5[a2];
    v30 = 8 * a3 * a2;
    v31 = &a5[a2 * v143];
    v32 = 1;
    do
    {
      if (a4)
      {
        v33 = 0;
        v34 = v31;
        v35 = v29;
        v36 = v28;
        v37 = v27;
        do
        {
          v38 = v34;
          v39 = v35;
          v40 = v36;
          v41 = v37;
          for (i = a2; i; --i)
          {
            v43 = *v39++;
            v44 = v43;
            v45 = *v38++;
            *v41++ = vadd_f32(v44, v45);
            *v40++ = vsub_f32(v44, v45);
          }

          ++v33;
          v37 = (v37 + v21);
          v36 = (v36 + v21);
          v35 = (v35 + v30);
          v34 = (v34 + v30);
        }

        while (v33 != a4);
      }

      ++v32;
      v27 += v25;
      v28 -= v25;
      v29 = (v29 + v21);
      v31 -= a2;
    }

    while (v32 != v26);
  }

  if (a4)
  {
    v46 = 0;
    v47 = &a6[8 * v25];
    do
    {
      if (a2)
      {
        v48 = 0;
        v49 = v47;
        do
        {
          v50 = *&a6[8 * v46 * a2 + 8 * v48];
          v51 = v49;
          v52 = v26 - 1;
          if (v20 >= 4)
          {
            do
            {
              v50 = vadd_f32(v50, *v51);
              v51 += v25;
              --v52;
            }

            while (v52);
          }

          a5[v46 * a2 + v48++] = v50;
          ++v49;
        }

        while (v48 != a2);
      }

      ++v46;
      v47 = (v47 + v21);
    }

    while (v46 != a4);
  }

  if (v20 >= 4)
  {
    v53 = 16 * v25;
    v54 = v26 - 1;
    v55 = 8 * v25;
    v56 = &a5[v25];
    v57 = &a5[v25 * v143];
    v58 = 1;
    do
    {
      if (v25)
      {
        v59 = 0;
        v60 = &v14[2 * v58];
        v61 = vld1_dup_f32(v60++);
        v62 = &v14[4 * v58];
        v64.f32[0] = *v60;
        v63 = vld1_dup_f32(v62++);
        v65.f32[0] = *v62;
        v64.f32[1] = -*v60;
        v65.f32[1] = -*v62;
        do
        {
          v56[v59] = vmla_f32(vmla_f32(*&a6[8 * v59], *&a6[8 * v25 + 8 * v59], v61), *&a6[16 * v25 + 8 * v59], v63);
          v57[v59] = vrev64_s32(vmla_f32(vmul_f32(*&a6[8 * v25 * (a3 - 2) + 8 * v59], v65), *&a6[8 * v25 * v143 + 8 * v59], v64));
          ++v59;
        }

        while (v25 != v59);
      }

      v66 = 2 * v58;
      if (v54 < 4)
      {
        v70 = a3 - 3;
        v72 = 3;
      }

      else
      {
        v67 = &a6[8 * v25 * (a3 - 4)];
        v69 = &a6[8 * v25 * (a3 - 3)];
        v68 = &a6[32 * v25];
        v71 = &a6[24 * v25];
        v70 = a3 - 3;
        v72 = 3;
        do
        {
          v73 = v66 + v58;
          if (v66 + v58 <= a3)
          {
            v74 = 0;
          }

          else
          {
            v74 = a3;
          }

          v75 = v73 - v74;
          v76 = v73 - v74 + v58;
          if (v76 <= a3)
          {
            v77 = 0;
          }

          else
          {
            v77 = a3;
          }

          v66 = v76 - v77;
          if (v25)
          {
            v78 = 0;
            v79 = &v14[2 * v75];
            v80 = vld1_dup_f32(v79++);
            v81 = vld1_dup_f32(v79);
            v82 = &v14[2 * v66];
            v83 = vld1_dup_f32(v82++);
            v84 = vld1_dup_f32(v82);
            do
            {
              v56[v78] = vadd_f32(v56[v78], vmla_f32(vmul_f32(v83, *&v68[8 * v78]), v80, *&v71[8 * v78]));
              v85 = vrev64_s32(vmla_f32(vmul_f32(v84, *&v67[8 * v78]), v81, *&v69[8 * v78]));
              v86 = v57[v78];
              v87.i32[0] = vsub_f32(v86, v85).u32[0];
              v87.i32[1] = vadd_f32(v86, v85).i32[1];
              v57[v78++] = v87;
            }

            while (v25 != v78);
          }

          v72 += 2;
          v70 -= 2;
          v71 += v53;
          v68 += v53;
          v69 -= 16 * v25;
          v67 -= 16 * v25;
        }

        while (v72 < v54);
      }

      if (v72 < v26)
      {
        v88 = &a6[v55 * v72];
        v89 = &a6[v55 * v70 + 4];
        do
        {
          v90 = v66 + v58;
          if (v66 + v58 <= a3)
          {
            v91 = 0;
          }

          else
          {
            v91 = a3;
          }

          v66 = v90 - v91;
          if (v25)
          {
            v92 = 0;
            v93 = &v14[2 * v66];
            v94 = v93[1];
            v95 = vld1_dup_f32(v93);
            v96 = a4 * a2;
            do
            {
              v56[v92] = vmla_f32(v56[v92], v95, *&v88[v92 * 8]);
              v97 = &v57[v92];
              v98 = v57[v92].f32[1] + (*(v89 + v92 * 8 - 4) * v94);
              *v97 = v57[v92].f32[0] - (*(v89 + v92 * 8) * v94);
              v97[1] = v98;
              ++v92;
              --v96;
            }

            while (v96);
          }

          ++v72;
          v88 += v55;
          v89 -= 8 * v25;
        }

        while (v72 != v26);
      }

      ++v58;
      v56 = (v56 + v55);
      v57 -= v25;
    }

    while (v58 != v26);
    if (a2 == 1)
    {
      v99 = &a5[v25 * v143] + 4;
      v100 = &a5[v25] + 4;
      v101 = 1;
      do
      {
        v102 = v100;
        v103 = v99;
        for (j = a4; j; --j)
        {
          v105 = *(v102 - 1);
          v106 = *v102;
          v107 = *(v103 - 1);
          v108 = *v103;
          v109 = *v102 + *v103;
          *(v102 - 1) = v105 + v107;
          *v102 = v109;
          *(v103 - 1) = v105 - v107;
          *v103 = v106 - v108;
          v103 += 2;
          v102 += 2;
        }

        ++v101;
        v99 -= 8 * v25;
        v100 += v55;
      }

      while (v101 != v26);
    }

    else
    {
      v110 = &a5[v25 + 1] + 4;
      v111 = 1;
      v112 = (a7 + 4);
      v113 = a3 - 1;
      do
      {
        if (a4)
        {
          v114 = 0;
          v115 = v113 * a4;
          v116 = v113 - 1;
          v117 = &a5[1] + v55 * v113 + 4;
          v118 = v110;
          do
          {
            v119 = &a5[(v114 + v111 * a4) * a2];
            v120 = *v119;
            v121 = v119[1];
            v122 = &a5[(v114 + v115) * a2];
            v123 = *v122;
            v124 = v122[1];
            *v119 = *v119 + *v122;
            v119[1] = v121 + v124;
            v125 = (a7 + 4 + 8 * (a2 - 1) * v116);
            *v122 = v120 - v123;
            v122[1] = v121 - v124;
            v126 = v118;
            v127 = v112;
            v128 = v117;
            v129 = a2 - 1;
            if (a2)
            {
              do
              {
                v130 = *(v126 - 1);
                v131 = *(v128 - 1);
                v132 = v130 + v131;
                v133 = *v126 + *v128;
                v134 = v130 - v131;
                v135 = *v126 - *v128;
                v136 = *(v127 - 1);
                v137 = (v133 * *v127) + (v132 * v136);
                v138 = (v133 * v136) - (v132 * *v127);
                *(v126 - 1) = v137;
                *v126 = v138;
                v139 = *(v125 - 1);
                v140 = (v135 * *v125) + (v134 * v139);
                v141 = (v135 * v139) - (v134 * *v125);
                *(v128 - 1) = v140;
                *v128 = v141;
                v128 += 2;
                v127 += 2;
                v126 += 2;
                v125 += 2;
                --v129;
              }

              while (v129);
            }

            ++v114;
            v117 += v21;
            v118 = (v118 + v21);
          }

          while (v114 != a4);
        }

        else
        {
          v116 = v113 - 1;
        }

        ++v111;
        v112 = (v112 + v21 - 8);
        v110 += v55;
        v113 = v116;
      }

      while (v111 != v26);
    }
  }

  free(v14);
}

void sub_24BF6447C(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, uint64_t a6)
{
  v6 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = 2 * a3;
      v8 = a4 + 2;
      v9 = &a5[3 * a3] + 1;
      v10 = &a5[a3] + 1;
      do
      {
        v11 = v8[-2];
        v12 = v8[-1];
        v13 = *v8;
        v14 = v8[1];
        v8 += 4;
        v15 = vadd_f32(v11, v13);
        v16 = vsub_f32(v11, v13);
        v17 = vadd_f32(v12, v14);
        v18 = vsub_f32(v12, v14);
        *a5 = vadd_f32(v15, v17);
        a5[v7] = vsub_f32(v15, v17);
        *(v10 - 1) = v16.f32[0] - v18.f32[1];
        *v10 = v16.f32[1] + v18.f32[0];
        *(v9 - 1) = v16.f32[0] + v18.f32[1];
        *v9 = v16.f32[1] - v18.f32[0];
        v9 += 2;
        v10 += 2;
        ++a5;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v19 = 0;
    v20 = 8 * a2;
    v21 = a4 + 1;
    v22 = 32 * a2;
    v23 = &a4[a2 + 1];
    v24 = &a4[2 * a2 + 1];
    v25 = &a4[3 * a2 + 1];
    v26 = a5 + 1;
    v27 = &a5[a3 * a2 + 1];
    v28 = &a5[3 * a3 * a2 + 1];
    v29 = &a5[2 * a3 * a2 + 1];
    do
    {
      v30 = a4[4 * v19 * a2];
      v31 = a4[((4 * v19) | 2) * a2];
      v32 = vadd_f32(v30, v31);
      v33 = vsub_f32(v30, v31);
      v34 = a4[((4 * v19) | 1) * a2];
      v35 = a4[((4 * v19) | 3) * a2];
      v36 = vadd_f32(v34, v35);
      v37 = vsub_f32(v34, v35);
      a5[v19 * a2] = vadd_f32(v32, v36);
      a5[(v19 + 2 * a3) * a2] = vsub_f32(v32, v36);
      v38 = &a5[(v19 + a3) * a2];
      v39 = &a5[(v19 + 3 * a3) * a2];
      *v38 = v33.f32[0] - v37.f32[1];
      v38[1] = v33.f32[1] + v37.f32[0];
      *v39 = v33.f32[0] + v37.f32[1];
      v39[1] = v33.f32[1] - v37.f32[0];
      if (a2)
      {
        v40 = 0;
        do
        {
          v41 = v21[v40];
          v42 = *(v23 + 8 * v40);
          v43 = *(v24 + 8 * v40);
          v44 = *(v25 + 8 * v40);
          v45 = vadd_f32(v41, v43);
          v46 = vadd_f32(v42, v44);
          v47 = vsub_f32(vext_s8(v41, v42, 4uLL), vext_s8(v43, v44, 4uLL));
          v41.i32[1] = v42.i32[1];
          v43.i32[1] = v44.i32[1];
          v48 = vsub_f32(v41, v43);
          v26[v40] = vadd_f32(v45, v46);
          v44.f32[0] = vaddv_f32(v47);
          v44.f32[1] = -v44.f32[0];
          *(v27 + 8 * v40) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 8 * v40), v44)), *(a6 + 8 * v40), v48.f32[0] - v48.f32[1]);
          v49 = *(a6 + 8 * a2 - 8 + 8 * v40);
          v50 = vsub_f32(v45, v46);
          *(v29 + 8 * v40) = vmla_n_f32(vmul_f32(vrev64_s32(v49), vext_s8(vneg_f32(v50), vdup_lane_s32(v50, 1), 4uLL)), v49, v50.f32[0]);
          v49.f32[0] = v47.f32[0] - v47.f32[1];
          v51 = *(a6 + 16 * v6 + 8 * v40);
          v49.f32[1] = -(v47.f32[0] - v47.f32[1]);
          *(v28 + 8 * v40++) = vmla_n_f32(vrev64_s32(vmul_f32(v51, v49)), v51, vaddv_f32(v48));
        }

        while (v6 != v40);
      }

      ++v19;
      v21 = (v21 + v22);
      v23 += v22;
      v24 += v22;
      v25 += v22;
      v26 = (v26 + v20);
      v27 += v20;
      v29 += v20;
      v28 += v20;
    }

    while (v19 != a3);
  }
}

void sub_24BF64708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6)
{
  v6 = a5;
  v207 = a4;
  v198 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = 8 * a3;
      v8 = 4 * a3;
      v9 = (a4 + 32);
      v10 = (56 * a3) | 4;
      v11 = (24 * a3) | 4;
      v12 = (40 * a3) | 4;
      v13 = 2 * a3;
      v14 = (48 * a3) | 4;
      do
      {
        v15 = *(v9 - 6);
        v16 = *(v9 - 5);
        v17 = v9[2];
        v18 = v9[3];
        v19 = v15 + v17;
        v20 = v16 + v18;
        v21 = v15 - v17;
        v22 = v16 - v18;
        v23 = *(v9 - 2);
        v24 = *(v9 - 1);
        v25 = v9[6];
        v26 = v9[7];
        v27 = v23 + v25;
        v28 = v24 + v26;
        v29 = v23 - v25;
        v30 = v24 - v26;
        v31 = v19 + v27;
        v32 = v20 + v28;
        v33 = v19 - v27;
        v34 = v20 - v28;
        v35 = v21 - v30;
        v36 = v22 + v29;
        v37 = v21 + v30;
        v38 = v22 - v29;
        v39 = (v35 - v36) * 0.70711;
        v40 = (v36 + v35) * 0.70711;
        v41 = (-v37 - v38) * 0.70711;
        v42 = (v37 - v38) * 0.70711;
        v43 = *(v9 - 8);
        v44 = *(v9 - 7);
        v45 = v9[1];
        v46 = v43 + *v9;
        v47 = v44 + v45;
        v48 = v43 - *v9;
        v49 = v44 - v45;
        v50 = *(v9 - 4);
        v51 = *(v9 - 3);
        v52 = v9[4];
        v53 = v9[5];
        v54 = v50 + v52;
        v55 = v51 + v53;
        v56 = v50 - v52;
        v57 = v51 - v53;
        v58 = &v6[v7];
        *v6 = v31 + (v46 + v54);
        v6[1] = v32 + (v47 + v55);
        *v58 = (v46 + v54) - v31;
        v58[1] = (v47 + v55) - v32;
        v59 = &v6[v8];
        v60 = (v6 + v14);
        *v59 = (v46 - v54) - v34;
        v59[1] = v33 + (v47 - v55);
        *(v60 - 1) = v34 + (v46 - v54);
        *v60 = (v47 - v55) - v33;
        v61 = &v6[v13];
        v62 = (v6 + v12);
        *v61 = v39 + (v48 - v57);
        v61[1] = v40 + (v49 + v56);
        *(v62 - 1) = (v48 - v57) - v39;
        *v62 = (v49 + v56) - v40;
        v63 = (v6 + v11);
        v64 = (v6 + v10);
        v65 = v48 + v57;
        *(v63 - 1) = v41 + v65;
        *v63 = v42 + (v49 - v56);
        *(v64 - 1) = v65 - v41;
        *v64 = (v49 - v56) - v42;
        v9 += 16;
        v6 += 2;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v66 = 0;
    v205 = 5 * a3;
    v204 = 7 * a3;
    v203 = 4 * a3;
    v67 = &a5[14 * a3 * a2 + 2];
    v68 = a4 + 8 * a2 + 12;
    v202 = 2 * a3;
    v206 = 3 * a3;
    v201 = 6 * a3;
    v69 = &a5[6 * a3 * a2 + 2];
    v70 = a4 + 40 * a2 + 12;
    v199 = a2 << 6;
    v200 = 8 * a2;
    v71 = &a5[10 * a3 * a2 + 2];
    v72 = a4 + 24 * a2 + 12;
    v73 = &a5[2 * a3 * a2 + 2];
    v74 = a4 + 56 * a2 + 12;
    v75 = &a5[12 * a3 * a2 + 2];
    v76 = a4 + 32 * a2;
    v77 = &a5[4 * a3 * a2 + 2];
    v78 = &a5[8 * a3 * a2 + 2];
    v79 = a4 + 16 * a2;
    v80 = a4 + 48 * a2;
    v208 = a3;
    do
    {
      v81 = (v207 + 8 * ((8 * v66) | 1) * a2);
      v82 = *v81;
      v83 = v81[1];
      v84 = (v207 + 8 * ((8 * v66) | 5) * a2);
      v85 = v84[1];
      v86 = v82 + *v84;
      v87 = v83 + v85;
      v88 = v82 - *v84;
      v89 = v83 - v85;
      v90 = (v207 + 8 * ((8 * v66) | 3) * a2);
      v91 = *v90;
      v92 = v90[1];
      v93 = (v207 + 8 * ((8 * v66) | 7) * a2);
      v94 = v93[1];
      v95 = v91 + *v93;
      v96 = v92 + v94;
      v97 = v91 - *v93;
      v98 = v92 - v94;
      v99 = v86 + v95;
      v100 = v87 + v96;
      v101 = v86 - v95;
      v102 = v87 - v96;
      v103 = v89 + v97;
      v104 = v88 + v98;
      v105 = v89 - v97;
      v106 = ((v88 - v98) - v103) * 0.70711;
      v107 = (v103 + (v88 - v98)) * 0.70711;
      v108 = (-v104 - v105) * 0.70711;
      v109 = (v104 - v105) * 0.70711;
      v110 = (v207 + 8 * 8 * v66 * a2);
      v111 = *v110;
      v112 = v110[1];
      v113 = (v207 + 8 * ((8 * v66) | 4) * a2);
      v114 = v113[1];
      v115 = v111 + *v113;
      v116 = v112 + v114;
      v117 = v111 - *v113;
      v118 = v112 - v114;
      v119 = (v207 + 8 * ((8 * v66) | 2) * a2);
      v120 = *v119;
      v121 = v119[1];
      v122 = (v207 + 8 * ((8 * v66) | 6) * a2);
      v123 = v122[1];
      v124 = v120 + *v122;
      v125 = v121 + v123;
      v126 = v120 - *v122;
      v127 = v121 - v123;
      v128 = &v6[2 * v66 * a2];
      v129 = &v6[2 * (v66 + v203) * a2];
      *v128 = v99 + (v115 + v124);
      v128[1] = v100 + (v116 + v125);
      *v129 = (v115 + v124) - v99;
      v129[1] = (v116 + v125) - v100;
      v130 = &v6[2 * (v66 + v202) * a2];
      v131 = &v6[2 * (v66 + v201) * a2];
      *v130 = (v115 - v124) - v102;
      v130[1] = v101 + (v116 - v125);
      *v131 = v102 + (v115 - v124);
      v131[1] = (v116 - v125) - v101;
      v132 = &v6[2 * (v66 + v208) * a2];
      v133 = &v6[2 * (v66 + v205) * a2];
      *v132 = v106 + (v117 - v127);
      v132[1] = v107 + (v118 + v126);
      *v133 = (v117 - v127) - v106;
      v133[1] = (v118 + v126) - v107;
      v134 = &v6[2 * (v66 + v206) * a2];
      v135 = &v6[2 * (v66 + v204) * a2];
      *v134 = v108 + (v117 + v127);
      v134[1] = v109 + (v118 - v126);
      *v135 = (v117 + v127) - v108;
      v135[1] = (v118 - v126) - v109;
      if (a2)
      {
        v136 = 0;
        v137 = a2 - 1;
        do
        {
          v138 = *(v68 + v136 - 4);
          v139 = *(v68 + v136);
          v140 = *(v70 + v136 - 4);
          v141 = *(v70 + v136);
          v142 = v138 + v140;
          v143 = v139 + v141;
          v144 = v138 - v140;
          v145 = v139 - v141;
          v146 = *(v72 + v136 - 4);
          v147 = *(v72 + v136);
          v148 = *(v74 + v136 - 4);
          v149 = *(v74 + v136);
          v150 = v146 + v148;
          v151 = v147 + v149;
          v152 = v146 - v148;
          v153 = v147 - v149;
          v154 = v142 + v150;
          v155 = v143 + v151;
          v156 = v142 - v150;
          v157 = v143 - v151;
          v158 = v145 + v152;
          v159 = v144 + v153;
          v160 = v145 - v152;
          v161 = ((v144 - v153) - v158) * 0.70711;
          v162 = (v158 + (v144 - v153)) * 0.70711;
          v163 = (-v159 - v160) * 0.70711;
          v164 = (v159 - v160) * 0.70711;
          v165 = *(a4 + v136 + 8);
          v166 = *(a4 + v136 + 12);
          v167 = *(v76 + v136 + 8);
          v168 = *(v76 + v136 + 12);
          v169 = v165 + v167;
          v170 = v166 + v168;
          v171 = v165 - v167;
          v172 = v166 - v168;
          v173 = *(v79 + v136 + 8);
          v174 = *(v79 + v136 + 12);
          v175 = *(v80 + v136 + 8);
          v176 = *(v80 + v136 + 12);
          v177 = v173 + v175;
          v178 = v174 + v176;
          v179 = v173 - v175;
          v180 = v174 - v176;
          v181 = v169 + v177;
          v182 = v170 + v178;
          v183 = v169 - v177;
          v184 = v170 - v178;
          v185 = &a5[v136 / 4];
          v185[2] = v154 + v181;
          v185[3] = v155 + v182;
          v186.f32[0] = v182 - v155;
          v187 = *(a6 + 24 * a2 - 24 + v136);
          v186.f32[1] = -v186.f32[0];
          *(v78 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(v187, v186)), v187, v181 - v154);
          v188.f32[0] = v156 + v184;
          v189 = *(a6 + 8 * a2 - 8 + v136);
          v188.f32[1] = -(v156 + v184);
          *(v77 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(v189, v188)), v189, v183 - v157);
          v190.f32[0] = v184 - v156;
          v191 = *(a6 + 40 * a2 - 40 + v136);
          v190.f32[1] = -v190.f32[0];
          *(v75 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(v191, v190)), v191, v157 + v183);
          v192 = v171 - v180;
          v190.f32[0] = v172 + v179;
          v193 = v171 + v180;
          v194 = v172 - v179;
          v195.f32[0] = v162 + v190.f32[0];
          v195.f32[1] = -(v162 + v190.f32[0]);
          *(v73 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + v136), v195)), *(a6 + v136), v161 + v192);
          v196.f32[0] = v190.f32[0] - v162;
          v196.f32[1] = -v196.f32[0];
          *(v71 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 32 * v198 + v136), v196)), *(a6 + 32 * v198 + v136), v192 - v161);
          v196.f32[0] = v164 + v194;
          v196.f32[1] = -(v164 + v194);
          *(v69 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 16 * v198 + v136), v196)), *(a6 + 16 * v198 + v136), v163 + v193);
          v197.f32[0] = v194 - v164;
          v197.f32[1] = -v197.f32[0];
          *(v67 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 48 * a2 - 48 + v136), v197)), *(a6 + 48 * a2 - 48 + v136), v193 - v163);
          v136 += 8;
          --v137;
        }

        while (v137);
      }

      ++v66;
      v67 += v200;
      v68 += v199;
      v69 += v200;
      v70 += v199;
      v71 += v200;
      v72 += v199;
      v73 += v200;
      v74 += v199;
      v75 += v200;
      a4 += v199;
      v76 += v199;
      v79 += v199;
      v80 += v199;
      v77 += v200;
      a5 = (a5 + v200);
      v78 += v200;
    }

    while (v66 != v208);
  }
}