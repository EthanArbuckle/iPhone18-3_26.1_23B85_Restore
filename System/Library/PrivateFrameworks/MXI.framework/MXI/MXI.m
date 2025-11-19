void sub_22F9C42D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22F9C5604(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va, a2);

  sub_22F9C7D28(va, 0);
  _Unwind_Resume(a1);
}

id sub_22F9C6264(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v102[16] = *MEMORY[0x277D85DE8];
  LODWORD(a6) = *a1;
  v101 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a2, a3, a4, a5, a6);
  v102[0] = v101;
  LODWORD(v7) = a1[1];
  v100 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v8, v9, v10, v11, v7);
  v102[1] = v100;
  LODWORD(v12) = a1[2];
  v99 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v13, v14, v15, v16, v12);
  v102[2] = v99;
  LODWORD(v17) = a1[3];
  v98 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v18, v19, v20, v21, v17);
  v102[3] = v98;
  LODWORD(v22) = a1[4];
  v97 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v23, v24, v25, v26, v22);
  v102[4] = v97;
  LODWORD(v27) = a1[5];
  v96 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v28, v29, v30, v31, v27);
  v102[5] = v96;
  LODWORD(v32) = a1[6];
  v95 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v33, v34, v35, v36, v32);
  v102[6] = v95;
  LODWORD(v37) = a1[7];
  v42 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v38, v39, v40, v41, v37);
  v102[7] = v42;
  LODWORD(v43) = a1[8];
  v48 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v44, v45, v46, v47, v43);
  v102[8] = v48;
  LODWORD(v49) = a1[9];
  v54 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v50, v51, v52, v53, v49);
  v102[9] = v54;
  LODWORD(v55) = a1[10];
  v60 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v56, v57, v58, v59, v55);
  v102[10] = v60;
  LODWORD(v61) = a1[11];
  v66 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v62, v63, v64, v65, v61);
  v102[11] = v66;
  LODWORD(v67) = a1[12];
  v72 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v68, v69, v70, v71, v67);
  v102[12] = v72;
  LODWORD(v73) = a1[13];
  v78 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v74, v75, v76, v77, v73);
  v102[13] = v78;
  LODWORD(v79) = a1[14];
  v84 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v80, v81, v82, v83, v79);
  v102[14] = v84;
  LODWORD(v85) = a1[15];
  v90 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v86, v87, v88, v89, v85);
  v102[15] = v90;
  v93 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v91, v102, 16, v92);

  return v93;
}

void sub_22F9C7754(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_22F9C7BF8(a1, a2 - v2);
  }
}

void sub_22F9C7AEC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_22F9C7B48(exception, a1);
  __cxa_throw(exception, off_2788ADAF0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_22F9C7B48(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_22F9C7B7C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_22F9C7BC4();
}

void sub_22F9C7BC4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_22F9C7BF8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_22F9C7AD4();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_22F9C7B7C(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

core::ThreadPool *sub_22F9C7D28(core::ThreadPool **a1, core::ThreadPool *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    core::ThreadPool::~ThreadPool(result);

    JUMPOUT(0x2319050F0);
  }

  return result;
}

void sub_22F9C7D74(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_22F9C8A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_22F9C8EBC(&a35);

  _Unwind_Resume(a1);
}

id sub_22F9C8CF0(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    v4 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, &v18, 5, v6);
    v11 = objc_msgSend_setWithArray_(v4, v8, v7, v9, v10, v18, v19, v20, v21);

    v13 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x277CCAAC8], v12, v11, v3, a2);
    if (v13 && (objc_opt_self(), v14 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) != 0))
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_22F9C8E6C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_22F9C8EBC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_22F9C91D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(a1);
}

id sub_22F9CAB90(void *a1, uint64_t a2)
{
  v4 = a1;
  if (v4)
  {
    v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v3, v4, 0, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_22F9CAEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_22F9CC310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_22F9C8EBC(va);
  _Unwind_Resume(a1);
}

void sub_22F9CC484(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_22F9CD65C(a1, a2 - v2);
  }
}

void sub_22F9CC4B4(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_22F9CD7B8(a1, a2 - v2);
  }
}

void sub_22F9CC4E4(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_22F9CD914(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void sub_22F9CD65C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_22F9C7AD4();
    }

    v8 = v4 - *a1;
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
      sub_22F9CD770(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_22F9CD770(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22F9C7BC4();
}

void sub_22F9CD7B8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22F9C7AD4();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22F9CD8CC(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_22F9CD8CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22F9C7BC4();
}

void sub_22F9CD914(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_22F9C7AD4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22F9CDA88(a1, v9);
    }

    v11 = 12 * v6;
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_22F9CDA88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_22F9C7BC4();
}

void sub_22F9CDD0C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_22F9CE144(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_22F9CF968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_22F9CFFD8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_22F9D5CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, FILE *a18, uint64_t a19, uint64_t a20, uint64_t a21, FILE *a22)
{
  fclose(a22);

  fclose(a18);
  _Unwind_Resume(a1);
}

uint64_t sub_22F9D5E28(uint64_t a1)
{
  *a1 = &unk_28449BCF0;
  fclose(*(a1 + 8));
  return a1;
}

void sub_22F9D60CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, FILE *a12)
{
  fclose(a12);

  _Unwind_Resume(a1);
}

void sub_22F9D67C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_22F9D6D48(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22F9D6DC4(result, a4);
  }

  return result;
}

void sub_22F9D6DA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22F9D6DC4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_22F9CD8CC(a1, a2);
  }

  sub_22F9C7AD4();
}

void *sub_22F9D6E00(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_22F9D6F14(result, a2);
  }

  return result;
}

void sub_22F9D6EF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22F9D6F14(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_22F9C7B7C(a1, a2);
  }

  sub_22F9C7AD4();
}

void *sub_22F9D6F50(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_22F9D6FF4(result, a2);
  }

  return result;
}

void sub_22F9D6FF4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_22F9D7040(a1, a2);
  }

  sub_22F9C7AD4();
}

void sub_22F9D7040(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_22F9C7BC4();
}

void sub_22F9D7098(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_22F9D70EC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_22F9D70EC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
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

  a1[1] = v3;
}

void sub_22F9D7144(uint64_t a1)
{
  *a1 = &unk_28449BCF0;
  fclose(*(a1 + 8));

  JUMPOUT(0x2319050F0);
}

void sub_22F9D8E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_22F9C8EBC(va);
  _Unwind_Resume(a1);
}

size_t sub_22F9DA018(uint64_t a1, void *__dst, unsigned int a3)
{
  v4 = *(a1 + 20);
  v5 = *(a1 + 16) - v4;
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  memcpy(__dst, (*(a1 + 8) + v4), v6);
  *(a1 + 20) += v6;
  return v6;
}

uint64_t sub_22F9DA070(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 20);
  LODWORD(v3) = *(a1 + 16) - v2;
  if (v3 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v3;
  }

  *(a1 + 20) = v3 + v2;
  return v3;
}

void sub_22F9DB9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  if (v12)
  {
  }

  sub_22F9C8EBC(va);
  _Unwind_Resume(a1);
}

void sub_22F9DC140(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

tiled::Processor *sub_22F9DC1C0(tiled::Processor **a1, tiled::Processor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    tiled::Processor::~Processor(result);

    JUMPOUT(0x2319050F0);
  }

  return result;
}

double initializeMXISwizzle@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_22F9DC57C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_22F9DDA38(uint64_t a1)
{
  *a1 = &unk_28449BD98;
  fclose(*(a1 + 8));
  return a1;
}

void sub_22F9DDC60(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_path(*(a1 + 32), v4, v5, v6, v7);
  v9 = v8;
  v14 = objc_msgSend_UTF8String(v9, v10, v11, v12, v13);
  v18 = &unk_28449BD98;
  v19 = fopen(v14, "wb");

  image::WriteKTX(&v18, *(a1 + 40));
  objc_msgSend_setSignaledValue_(v3, v15, *(a1 + 48), v16, v17, v18);
  v18 = &unk_28449BD98;
  fclose(v19);
}

void sub_22F9DDDA8(uint64_t a1)
{
  *a1 = &unk_28449BD98;
  fclose(*(a1 + 8));

  JUMPOUT(0x2319050F0);
}

id _MXISignpostLogSystem()
{
  if (qword_27DAD2778 != -1)
  {
    sub_22F9DDEC4();
  }

  v1 = qword_27DAD2770;

  return v1;
}

uint64_t sub_22F9DDE80()
{
  qword_27DAD2770 = os_log_create("com.apple.mxi", "signpost-persistent");

  return MEMORY[0x2821F96F8]();
}

uint64_t core::get_info@<X0>(unint64_t *a1@<X8>)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *task_info_out = 0u;
  task_info_outCnt = 93;
  v3 = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  v4 = *(&v23 + 1) >> 20;
  *a1 = v22 >> 20;
  a1[1] = v4;
  v5 = MEMORY[0x231905320](v3);
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  task_info_outCnt = 40;
  host_statistics64(v5, 4, v9, &task_info_outCnt);
  v6 = HIDWORD(v9[0]);
  result = getpagesize();
  v8 = ((v11 + HIDWORD(v10)) * result) >> 20;
  a1[2] = (result * v6) >> 20;
  a1[3] = v8;
  return result;
}

void sub_22F9DE03C(_Unwind_Exception *a1)
{
  MEMORY[0x2319050F0](v2, 0x10A0C4019AD96C2);
  sub_22F9DED10(v1, 0);
  _Unwind_Resume(a1);
}

void core::ThreadPool::~ThreadPool(core::ThreadPool *this)
{
  sub_22F9DED10(this, 0);
}

{
  sub_22F9DED10(this, 0);
}

void sub_22F9DE0D8(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  sub_22F9DE2E8((a1 + 88), a2);
  std::condition_variable::notify_one((a1 + 144));

  std::mutex::unlock((a1 + 24));
}

uint64_t sub_22F9DE148(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 24);
  while (1)
  {
    v8 = 0;
    __lk.__m_ = v2;
    __lk.__owns_ = 1;
    std::mutex::lock(v2);
    v3 = *(a1 + 128);
    if (v3)
    {
      sub_22F9DEA70(v7, *(*(a1 + 96) + ((*(a1 + 120) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 120) & 0x7FLL));
      sub_22F9DEB78((a1 + 88));
      atomic_fetch_add((a1 + 136), 1u);
    }

    else
    {
      while (atomic_load((a1 + 136)))
      {
        std::condition_variable::wait((a1 + 192), &__lk);
      }
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!v3)
    {
      break;
    }

    if (!v8)
    {
      sub_22F9DEC44();
    }

    (*(*v8 + 48))(v8);
    atomic_fetch_add((a1 + 136), 0xFFFFFFFF);
    sub_22F9DEC90(v7);
  }

  return sub_22F9DEC90(v7);
}

void sub_22F9DE28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_22F9DE97C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22F9DE2E8(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_22F9DE380(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  result = sub_22F9DE9D8(v8, a2);
  ++a1[5];
  return result;
}

void *sub_22F9DE380(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_22F9DE990(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_22F9DE554(a1, &v10);
}

void sub_22F9DE508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_22F9DE554(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_22F9DE990(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_22F9DE65C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_22F9DE990(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_22F9DE768(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_22F9DE990(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_22F9DE870(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_22F9DE990(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_22F9DE990(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22F9C7BC4();
}

uint64_t sub_22F9DE9D8(uint64_t a1, uint64_t a2)
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

uint64_t sub_22F9DEA70(uint64_t a1, uint64_t a2)
{
  sub_22F9DEAF4(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_22F9DEAF4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_22F9DEB78(int64x2_t *a1)
{
  sub_22F9DEC90(*(a1->i64[1] + ((a1[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[2].i64[0] & 0x7F));
  a1[2] = vaddq_s64(a1[2], xmmword_22FA07F00);

  return sub_22F9DEBE4(a1, 1);
}

uint64_t sub_22F9DEBE4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x80)
  {
    a2 = 1;
  }

  if (v2 < 0x100)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }

  return v4 ^ 1u;
}

void sub_22F9DEC44()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_22F9DEC90(uint64_t a1)
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

uint64_t sub_22F9DED10(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_22F9DED5C(result);

    JUMPOUT(0x2319050F0);
  }

  return result;
}

uint64_t sub_22F9DED5C(uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  *(a1 + 240) = 1;
  std::mutex::unlock((a1 + 24));
  std::condition_variable::notify_all((a1 + 144));
  v2 = *a1;
  v3 = *(a1 + 8);
  while (v2 != v3)
  {
    if (v2->__t_)
    {
      std::thread::join(v2);
    }

    ++v2;
  }

  std::condition_variable::~condition_variable((a1 + 192));
  std::condition_variable::~condition_variable((a1 + 144));
  sub_22F9DEE08((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  v5 = a1;
  sub_22F9DEF88(&v5);
  return a1;
}

uint64_t sub_22F9DEE08(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v7 = sub_22F9DEC90(v7) + 32;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 64;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 128;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_22F9DEF38(a1);
}

uint64_t sub_22F9DEF38(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_22F9DEF88(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        std::thread::~thread(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_22F9DF00C(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 24) = 850045863;
  *(result + 144) = 1018212795;
  *(result + 16) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 124) = 0u;
  *(result + 152) = 0u;
  *(result + 168) = 0u;
  *(result + 184) = 0;
  *(result + 192) = 1018212795;
  *(result + 225) = 0u;
  *(result + 216) = 0u;
  *(result + 200) = 0u;
  if (a2)
  {
    if (*(result + 16))
    {
      sub_22F9DF3A8();
    }

    v2 = -*result >> 3;
    if (!((v2 + 1) >> 61))
    {
      v3 = -*result;
      v4 = v3 >> 2;
      if (v3 >> 2 <= (v2 + 1))
      {
        v4 = v2 + 1;
      }

      if (v3 >= 0x7FFFFFFFFFFFFFF8)
      {
        v5 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = v4;
      }

      if (v5)
      {
        sub_22F9DE990(result, v5);
      }

      sub_22F9DF3A8();
    }

    sub_22F9C7AD4();
  }

  return result;
}

void sub_22F9DF1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::condition_variable::~condition_variable(v15);
  std::condition_variable::~condition_variable(v14);
  sub_22F9DEE08((v12 + 88));
  std::mutex::~mutex(v13);
  a10 = v12;
  sub_22F9DEF88(&a10);
  _Unwind_Resume(a1);
}

uint64_t core::ThreadPool::Impl::worker_entry_point(core::ThreadPool::Impl *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = (this + 24);
  while (1)
  {
    v7 = 0;
    __lk.__m_ = v2;
    __lk.__owns_ = 1;
    std::mutex::lock(v2);
    while (1)
    {
      if (*(this + 16))
      {
        sub_22F9DEA70(v6, *(*(this + 12) + ((*(this + 15) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(this + 15) & 0x7FLL));
        sub_22F9DEB78((this + 88));
        v3 = 0;
        atomic_fetch_add(this + 34, 1u);
        goto LABEL_7;
      }

      if (*(this + 240))
      {
        break;
      }

      std::condition_variable::wait(this + 3, &__lk);
    }

    v3 = 1;
LABEL_7:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (v3)
    {
      return sub_22F9DEC90(v6);
    }

    if (!v7)
    {
      sub_22F9DEC44();
    }

    (*(*v7 + 48))(v7);
    std::mutex::lock(v2);
    atomic_fetch_add(this + 34, 0xFFFFFFFF);
    std::condition_variable::notify_one(this + 4);
    std::mutex::unlock(v2);
    sub_22F9DEC90(v6);
  }
}

void sub_22F9DF35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  sub_22F9DEC90(&a13);
  _Unwind_Resume(a1);
}

void sub_22F9DF48C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22F9DF598(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22F9DF4C4(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  sub_22F9DF550(&v8);
  return 0;
}

void sub_22F9DF53C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22F9DF550(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_22F9DF550(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_22F9DF598(v2);
    MEMORY[0x2319050F0](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *sub_22F9DF598(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x231905000]();
    MEMORY[0x2319050F0](v3, 0x20C4093837F09);
  }

  return a1;
}

std::thread *sub_22F9DF5E0(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = v8->__t_;
      v8->__t_ = 0;
      ++v8;
    }

    while (v8 != v5);
    do
    {
      std::thread::~thread(result);
      result = v10 + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_22F9DF688(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::thread::~thread((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

id _mxi_log()
{
  if (qword_27DAD2788 != -1)
  {
    sub_22F9DFAAC();
  }

  v1 = qword_27DAD2780;

  return v1;
}

uint64_t sub_22F9DFA68()
{
  qword_27DAD2780 = os_log_create("com.apple.mxi", "log");

  return MEMORY[0x2821F96F8]();
}

void sub_22F9DFAF8(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v10 = fopen(a2, "rb");
  if (v10)
  {
    v11 = _mxi_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = a2;
      _os_log_impl(&dword_22F9C3000, v11, OS_LOG_TYPE_DEFAULT, "[Core] Opened file %s as a file stream", buf, 0xCu);
    }

    sub_22F9DFE08(v7, v10, a3, a4);
  }

  else
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Failed opening file '%s'.", v9, a2);
    *a4 = 0;
  }
}

void sub_22F9DFC30(void *a1@<X0>, void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v12 = fmemopen(a2, a3, "rb");
  if (v12)
  {
    v13 = _mxi_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_22F9C3000, v13, OS_LOG_TYPE_DEFAULT, "[Core] Opened data buffer %p as a file stream", buf, 0xCu);
    }

    sub_22F9DFE08(v9, v12, a4, buf);
    *a5 = *buf;
  }

  else
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a4, @"Failed opening data buffer '%p' as stream", v11, a2);
    *a5 = 0;
  }
}

uint64_t core::Writer::Create@<X0>(const char *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v5 = fopen(a1, "wb");
  result = sub_22F9E2434(v5, a2, v6, &v8);
  *a3 = v8;
  return result;
}

uint64_t core::Writer::Create@<X0>(char **a1@<X0>, size_t *a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  v6 = open_memstream(a1, a2);
  result = sub_22F9E2434(v6, a3, v7, &v9);
  *a4 = v9;
  return result;
}

void sub_22F9DFE08(void *a1@<X0>, FILE *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1;
  __ptr = 0;
  if (fread(&__ptr, 4uLL, 1uLL, a2) == 1)
  {
    if (__ptr == 1128810068)
    {
      operator new();
    }

    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Unrecognized format.", v9);
  }

  else
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Failed reading signature.", v9);
  }

  *a4 = 0;
}

void sub_22F9E0070(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  _Unwind_Resume(a1);
}

void sub_22F9E00C0(uint64_t a1)
{
  sub_22F9E1948(a1);

  JUMPOUT(0x2319050F0);
}

uint64_t *sub_22F9E00F8(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v14 = a2;
  result = sub_22F9E19EC((a1 + 24), &v14);
  if (result)
  {
    if (fseek(*(a1 + 16), result[3], 0))
    {
      byte_27DAD2790 = HIBYTE(v14);
      byte_27DAD2791 = BYTE2(v14);
      byte_27DAD2792 = BYTE1(v14);
      byte_27DAD2793 = v14;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a4, @"Failed seeking to data chunk '%s'.", v9, &byte_27DAD2790);
      return 0;
    }

    if (fread(__ptr, 0x10uLL, 1uLL, *(a1 + 16)) != 1)
    {
      byte_27DAD2790 = HIBYTE(v14);
      byte_27DAD2791 = BYTE2(v14);
      byte_27DAD2792 = BYTE1(v14);
      byte_27DAD2793 = v14;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a4, @"Failed reading chunk info for data with key '%s'.", v11, &byte_27DAD2790);
      return 0;
    }

    if (__ptr[8])
    {
      return 0;
    }

    if (a3)
    {
      *a3 = v13;
    }

    return 1;
  }

  return result;
}

uint64_t *sub_22F9E0224(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v13 = a2;
  result = sub_22F9E19EC((a1 + 24), &v13);
  if (result)
  {
    if (*(a1 + 8))
    {
      if (fseek(*(a1 + 16), result[3], 0))
      {
        byte_27DAD2790 = HIBYTE(v13);
        byte_27DAD2791 = BYTE2(v13);
        byte_27DAD2792 = BYTE1(v13);
        byte_27DAD2793 = v13;
        byte_27DAD2794 = 0;
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Failed seeking to texture chunk '%s'.", v9, &byte_27DAD2790);
      }

      else
      {
        if (fread(__ptr, 0x20uLL, 1uLL, *(a1 + 16)) == 1)
        {
          return (__ptr[8] == 1);
        }

        byte_27DAD2790 = HIBYTE(v13);
        byte_27DAD2791 = BYTE2(v13);
        byte_27DAD2792 = BYTE1(v13);
        byte_27DAD2793 = v13;
        byte_27DAD2794 = 0;
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Failed reading chunk info for texture with key '%s'.", v11, &byte_27DAD2790);
      }
    }

    else
    {
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Can't read textures without a valid MTLDevice", v7);
    }

    return 0;
  }

  return result;
}

id sub_22F9E0354(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v32 = a2;
  v5 = sub_22F9E19EC((a1 + 24), &v32);
  if (!v5)
  {
    byte_27DAD2790 = HIBYTE(v32);
    byte_27DAD2791 = BYTE2(v32);
    byte_27DAD2792 = BYTE1(v32);
    byte_27DAD2793 = v32;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Key '%s' not found", v7, &byte_27DAD2790);
    goto LABEL_9;
  }

  if (fseek(*(a1 + 16), v5[3], 0))
  {
    byte_27DAD2790 = HIBYTE(v32);
    byte_27DAD2791 = BYTE2(v32);
    byte_27DAD2792 = BYTE1(v32);
    byte_27DAD2793 = v32;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Failed seeking to data chunk '%s'.", v9, &byte_27DAD2790);
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  if (fread(__ptr, 0x10uLL, 1uLL, *(a1 + 16)) != 1)
  {
    byte_27DAD2790 = HIBYTE(v32);
    byte_27DAD2791 = BYTE2(v32);
    byte_27DAD2792 = BYTE1(v32);
    byte_27DAD2793 = v32;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Failed reading chunk info for data with key '%s'.", v12, &byte_27DAD2790);
    goto LABEL_9;
  }

  if (v29)
  {
    byte_27DAD2790 = HIBYTE(v32);
    byte_27DAD2791 = BYTE2(v32);
    byte_27DAD2792 = BYTE1(v32);
    byte_27DAD2793 = v32;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Value for key '%s' is not of data type", v12, &byte_27DAD2790);
    goto LABEL_9;
  }

  v15 = v28;
  v13 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v10, v31, v11, v12);
  v16 = v13;
  v21 = objc_msgSend_mutableBytes(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_length(v13, v22, v23, v24, v25);
  sub_22F9E1AA0(a1, v21, v26, v15 - 4, v30, a3);
LABEL_10:

  return v13;
}

BOOL sub_22F9E056C(uint64_t a1, unsigned int a2, uint8_t *a3, size_t a4, uint64_t a5)
{
  v21 = a2;
  v9 = sub_22F9E19EC((a1 + 24), &v21);
  if (v9)
  {
    if (fseek(*(a1 + 16), v9[3], 0))
    {
      byte_27DAD2790 = HIBYTE(v21);
      byte_27DAD2791 = BYTE2(v21);
      byte_27DAD2792 = BYTE1(v21);
      byte_27DAD2793 = v21;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v12, a5, @"Failed seeking to data chunk '%s'.", v13, &byte_27DAD2790);
    }

    else if (fread(__ptr, 0x10uLL, 1uLL, *(a1 + 16)) == 1)
    {
      if (!v19)
      {
        return sub_22F9E1AA0(a1, a3, a4, v18 - 4, v20, a5);
      }

      byte_27DAD2790 = HIBYTE(v21);
      byte_27DAD2791 = BYTE2(v21);
      byte_27DAD2792 = BYTE1(v21);
      byte_27DAD2793 = v21;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v14, a5, @"Value for key '%s' is not of data type", v15, &byte_27DAD2790);
    }

    else
    {
      byte_27DAD2790 = HIBYTE(v21);
      byte_27DAD2791 = BYTE2(v21);
      byte_27DAD2792 = BYTE1(v21);
      byte_27DAD2793 = v21;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v14, a5, @"Failed reading chunk info for data with key '%s'.", v15, &byte_27DAD2790);
    }
  }

  else
  {
    byte_27DAD2790 = HIBYTE(v21);
    byte_27DAD2791 = BYTE2(v21);
    byte_27DAD2792 = BYTE1(v21);
    byte_27DAD2793 = v21;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a5, @"Key '%s' not found", v11, &byte_27DAD2790);
  }

  return 0;
}

id sub_22F9E0734(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v152 = a2;
  v5 = sub_22F9E19EC((a1 + 24), &v152);
  if (!v5)
  {
    byte_27DAD2790 = HIBYTE(v152);
    byte_27DAD2791 = BYTE2(v152);
    byte_27DAD2792 = BYTE1(v152);
    byte_27DAD2793 = v152;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Key '%s' not found", v7, &byte_27DAD2790);
    goto LABEL_15;
  }

  if (!*(a1 + 8))
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Can't read textures without a valid MTLDevice", v7);
    goto LABEL_15;
  }

  if (fseek(*(a1 + 16), v5[3], 0))
  {
    byte_27DAD2790 = HIBYTE(v152);
    byte_27DAD2791 = BYTE2(v152);
    byte_27DAD2792 = BYTE1(v152);
    byte_27DAD2793 = v152;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Failed seeking to texture chunk '%s'.", v9, &byte_27DAD2790);
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  if (fread(__ptr, 0x20uLL, 1uLL, *(a1 + 16)) != 1)
  {
    byte_27DAD2790 = HIBYTE(v152);
    byte_27DAD2791 = BYTE2(v152);
    byte_27DAD2792 = BYTE1(v152);
    byte_27DAD2793 = v152;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Failed reading chunk info for texture with key '%s'.", v11, &byte_27DAD2790);
    goto LABEL_15;
  }

  if (__ptr[8] != 1)
  {
    byte_27DAD2790 = HIBYTE(v152);
    byte_27DAD2791 = BYTE2(v152);
    byte_27DAD2792 = BYTE1(v152);
    byte_27DAD2793 = v152;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Value for key '%s' is not of texture type", v11, &byte_27DAD2790);
    goto LABEL_15;
  }

  v12 = v147;
  v13 = &dword_22FA07F68;
  v14 = 36;
  v120 = a3;
  while (*(v13 - 1) != v147)
  {
    v13 += 4;
    if (!--v14)
    {
      v15 = 0;
      v12 = 0;
      goto LABEL_20;
    }
  }

  v15 = *v13;
LABEL_20:
  v18 = v150;
  v127 = v151;
  sub_22F9E1D68(&v144, v151 * v150 + 1);
  v132 = a1;
  fread(v144, 4uLL, (v145 - v144) >> 2, *(a1 + 16));
  v19 = objc_opt_new();
  v23 = v19;
  if (v18)
  {
    objc_msgSend_setTextureType_(v19, v20, 3, v21, v22);
  }

  else
  {
    objc_msgSend_setTextureType_(v19, v20, 2, v21, v22);
  }

  v27 = v148;
  objc_msgSend_setWidth_(v23, v24, v148, v25, v26);
  v28 = v149;
  objc_msgSend_setHeight_(v23, v29, v149, v30, v31);
  objc_msgSend_setArrayLength_(v23, v32, v18, v33, v34);
  objc_msgSend_setMipmapLevelCount_(v23, v35, v127, v36, v37);
  objc_msgSend_setPixelFormat_(v23, v38, v12, v39, v40);
  objc_msgSend_setStorageMode_(v23, v41, 2, v42, v43);
  v128 = objc_msgSend_newSharedTextureWithDescriptor_(*(a1 + 8), v44, v23, v45, v46);
  if (v128)
  {
    context = objc_autoreleasePoolPush();
    v55 = objc_msgSend_newCommandQueue(*(a1 + 8), v49, v50, v51, v52);
    if (v55)
    {
      v125 = v15 - 1;
      v126 = v15;
      v123 = BYTE1(v15) - 1;
      v124 = BYTE1(v15);
      v122 = BYTE2(v15);
      v121 = (v125 + v27) / v15 * BYTE2(v15) * ((v123 + v28) / BYTE1(v15));
      v118 = v23;
      v134 = objc_msgSend_newBufferWithLength_options_(*(a1 + 8), v53, v121, 0, v54);
      if (!v134)
      {
        v114 = _mxi_log();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v114, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:700] Failed creating MTLBuffer.", buf, 2u);
        }

        v142 = 0;
        objc_msgSend_fillError_withDescription_(MXIInternalError, v115, &v142, @"Failed creating MTLBuffer.", v116);
        v77 = v142;
        goto LABEL_57;
      }

      if (!v127)
      {
        v77 = 0;
        goto LABEL_57;
      }

      v133 = 0;
      while (1)
      {
        v60 = v148 >> v133;
        v61 = v149 >> v133;
        v62 = (v125 + v60) / v126 * v122;
        v63 = v62 * ((v123 + v61) / v124);
        if (v63 > v121)
        {
          __assert_rtn("ReadTexture", "CoreSerialization.mm", 712, "slice_size <= mip0_slice_size");
        }

        if (!v150)
        {
          v77 = 0;
          goto LABEL_46;
        }

        v64 = 0;
        v65 = 0;
        v130 = __ptr[9];
        v129 = v150;
        v131 = v150 * v133;
        while (1)
        {
          v66 = v55;
          v67 = objc_msgSend_commandBuffer(v55, v56, v57, v58, v59);
          if (!v67)
          {
            v100 = _mxi_log();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_22F9C3000, v100, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:716] Failed creating MTLCommandBuffer.", buf, 2u);
            }

            v141 = v65;
            objc_msgSend_fillError_withDescription_(MXIInternalError, v101, &v141, @"Failed creating MTLCommandBuffer.", v102);
            v103 = v141;
            v77 = v65;
            goto LABEL_41;
          }

          v68 = *(v144 + (v131 + v64 + 1));
          v69 = *(v144 + (v131 + v64));
          v70 = v134;
          v75 = objc_msgSend_contents(v70, v71, v72, v73, v74);
          v140 = v65;
          v76 = sub_22F9E1AA0(v132, v75, v63, v68 - v69, v130, &v140);
          v77 = v140;

          if (!v76)
          {
            v135 = v77;
            byte_27DAD2790 = HIBYTE(v152);
            byte_27DAD2791 = BYTE2(v152);
            byte_27DAD2792 = BYTE1(v152);
            byte_27DAD2793 = v152;
            byte_27DAD2794 = 0;
            objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v78, &v135, @"Failed reading slice: %d, mip: %d for key: %s", v81, v64, v133, &byte_27DAD2790);
            v103 = v135;
LABEL_41:
            v104 = v103;
            goto LABEL_45;
          }

          v82 = objc_msgSend_blitCommandEncoder(v67, v78, v79, v80, v81);
          *buf = v60;
          v138 = v61;
          v139 = 1;
          memset(v136, 0, sizeof(v136));
          objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v82, v83, v134, 0, v62, v63, buf, v128, v64, v133, v136);
          objc_msgSend_endEncoding(v82, v84, v85, v86, v87);

          objc_msgSend_commit(v67, v88, v89, v90, v91);
          objc_msgSend_waitUntilCompleted(v67, v92, v93, v94, v95);
          if (objc_msgSend_status(v67, v96, v97, v98, v99) != 4)
          {
            break;
          }

          ++v64;
          v65 = v77;
          v55 = v66;
          if (v129 == v64)
          {
            goto LABEL_46;
          }
        }

        v105 = _mxi_log();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v105, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:742] MTLCommandBuffer failed", buf, 2u);
        }

        v104 = objc_msgSend_error(v67, v106, v107, v108, v109);
LABEL_45:
        v110 = v104;

        v77 = v110;
        v55 = v66;
LABEL_46:
        if (++v133 >= v127 || v77)
        {
LABEL_57:

          v23 = v118;
          goto LABEL_58;
        }
      }
    }

    v111 = _mxi_log();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v111, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:691] Failed creating MTLCommandQueue.", buf, 2u);
    }

    v143 = 0;
    objc_msgSend_fillError_withDescription_(MXIInternalError, v112, &v143, @"Failed creating MTLCommandQueue.", v113);
    v77 = v143;
LABEL_58:

    objc_autoreleasePoolPop(context);
    if (v77)
    {
      if (v120)
      {
        v117 = v77;
        v16 = 0;
        *v120 = v77;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = v128;
    }
  }

  else
  {
    byte_27DAD2790 = HIBYTE(v152);
    byte_27DAD2791 = BYTE2(v152);
    byte_27DAD2792 = BYTE1(v152);
    byte_27DAD2793 = v152;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v47, v120, @"Failed creating texture for key: %s", v48, &byte_27DAD2790);
    v16 = 0;
  }

  if (v144)
  {
    v145 = v144;
    operator delete(v144);
  }

LABEL_16:

  return v16;
}

void sub_22F9E0F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  v29 = *(v27 - 152);
  if (v29)
  {
    *(v27 - 144) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

id sub_22F9E101C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v157 = a2;
  v5 = sub_22F9E19EC((a1 + 24), &v157);
  if (!v5)
  {
    byte_27DAD2790 = HIBYTE(v157);
    byte_27DAD2791 = BYTE2(v157);
    byte_27DAD2792 = BYTE1(v157);
    byte_27DAD2793 = v157;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Key '%s' not found", v7, &byte_27DAD2790);
    goto LABEL_15;
  }

  if (!*(a1 + 8))
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v6, a3, @"Can't read textures without a valid MTLDevice", v7);
    goto LABEL_15;
  }

  if (fseek(*(a1 + 16), v5[3], 0))
  {
    byte_27DAD2790 = HIBYTE(v157);
    byte_27DAD2791 = BYTE2(v157);
    byte_27DAD2792 = BYTE1(v157);
    byte_27DAD2793 = v157;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v8, a3, @"Failed seeking to texture chunk '%s'.", v9, &byte_27DAD2790);
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  if (fread(__ptr, 0x20uLL, 1uLL, *(a1 + 16)) != 1)
  {
    byte_27DAD2790 = HIBYTE(v157);
    byte_27DAD2791 = BYTE2(v157);
    byte_27DAD2792 = BYTE1(v157);
    byte_27DAD2793 = v157;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Failed reading chunk info for texture with key '%s'.", v11, &byte_27DAD2790);
    goto LABEL_15;
  }

  if (__ptr[8] != 1)
  {
    byte_27DAD2790 = HIBYTE(v157);
    byte_27DAD2791 = BYTE2(v157);
    byte_27DAD2792 = BYTE1(v157);
    byte_27DAD2793 = v157;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v10, a3, @"Value for key '%s' is not of texture type", v11, &byte_27DAD2790);
    goto LABEL_15;
  }

  v12 = v152;
  v13 = &dword_22FA07F68;
  v14 = 36;
  while (*(v13 - 1) != v152)
  {
    v13 += 4;
    if (!--v14)
    {
      v15 = 0;
      v12 = 0;
      goto LABEL_20;
    }
  }

  v15 = *v13;
LABEL_20:
  v124 = a3;
  v18 = v155;
  v131 = v156;
  sub_22F9E1D68(&v149, v156 * v155 + 1);
  fread(v149, 4uLL, (v150 - v149) >> 2, *(a1 + 16));
  sub_22F9E1EA4(v148, v18);
  v132 = objc_opt_new();
  objc_msgSend_setTextureType_(v132, v19, 2, v20, v21);
  v22 = v153;
  objc_msgSend_setWidth_(v132, v23, v153, v24, v25);
  v26 = v154;
  objc_msgSend_setHeight_(v132, v27, v154, v28, v29);
  objc_msgSend_setArrayLength_(v132, v30, 1, v31, v32);
  objc_msgSend_setMipmapLevelCount_(v132, v33, v131, v34, v35);
  objc_msgSend_setPixelFormat_(v132, v36, v12, v37, v38);
  if (v18)
  {
    v42 = 0;
    while (1)
    {
      objc_msgSend_setStorageMode_(v132, v39, 2, v40, v41);
      v46 = objc_msgSend_newSharedTextureWithDescriptor_(*(a1 + 8), v43, v132, v44, v45);
      if (!v46)
      {
        break;
      }

      v49 = *(v148[0] + v42);
      *(v148[0] + v42) = v46;

      v42 += 8;
      if (8 * v18 == v42)
      {
        goto LABEL_24;
      }
    }

    byte_27DAD2790 = HIBYTE(v157);
    byte_27DAD2791 = BYTE2(v157);
    byte_27DAD2792 = BYTE1(v157);
    byte_27DAD2793 = v157;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v47, v124, @"Failed creating texture for key: %s", v48, &byte_27DAD2790);
    v16 = 0;
  }

  else
  {
LABEL_24:
    v50 = objc_autoreleasePoolPush();
    v133 = a1;
    v57 = objc_msgSend_newCommandQueue(*(a1 + 8), v51, v52, v53, v54);
    context = v50;
    if (v57)
    {
      v129 = v15 - 1;
      v130 = v15;
      v127 = BYTE1(v15) - 1;
      v128 = BYTE1(v15);
      v126 = BYTE2(v15);
      v125 = (v129 + v22) / v15 * BYTE2(v15) * ((v127 + v26) / BYTE1(v15));
      v138 = objc_msgSend_newBufferWithLength_options_(*(a1 + 8), v55, v125, 0, v56);
      if (!v138)
      {
        v117 = _mxi_log();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v117, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:826] Failed creating MTLBuffer.", buf, 2u);
        }

        v146 = 0;
        objc_msgSend_fillError_withDescription_(MXIInternalError, v118, &v146, @"Failed creating MTLBuffer.", v119);
        v79 = v146;
        goto LABEL_57;
      }

      if (!v131)
      {
        v79 = 0;
        goto LABEL_57;
      }

      v137 = 0;
      while (1)
      {
        v62 = v154 >> v137;
        v136 = v153 >> v137;
        v63 = (v129 + v136) / v130 * v126;
        v64 = v63 * ((v127 + v62) / v128);
        if (v64 > v125)
        {
          __assert_rtn("ReadArrayTexture", "CoreSerialization.mm", 838, "slice_size <= mip0_slice_size");
        }

        v65 = v155;
        if (!v155)
        {
          v79 = 0;
          goto LABEL_46;
        }

        v66 = 0;
        v67 = 0;
        v134 = __ptr[9];
        v135 = v155 * v137;
        while (1)
        {
          v68 = v57;
          v69 = objc_msgSend_commandBuffer(v57, v58, v59, v60, v61);
          if (!v69)
          {
            v103 = _mxi_log();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_22F9C3000, v103, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:842] Failed creating MTLCommandBuffer.", buf, 2u);
            }

            v145 = v67;
            objc_msgSend_fillError_withDescription_(MXIInternalError, v104, &v145, @"Failed creating MTLCommandBuffer.", v105);
            v106 = v145;
            v79 = v67;
            goto LABEL_41;
          }

          v70 = *(v149 + (v135 + v66 + 1));
          v71 = *(v149 + (v135 + v66));
          v72 = v138;
          v77 = objc_msgSend_contents(v72, v73, v74, v75, v76);
          v144 = v67;
          v78 = sub_22F9E1AA0(v133, v77, v64, v70 - v71, v134, &v144);
          v79 = v144;

          if (!v78)
          {
            v139 = v79;
            byte_27DAD2790 = HIBYTE(v157);
            byte_27DAD2791 = BYTE2(v157);
            byte_27DAD2792 = BYTE1(v157);
            byte_27DAD2793 = v157;
            byte_27DAD2794 = 0;
            objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v80, &v139, @"Failed reading slice: %d, mip: %d for key: %s", v83, v66, v137, &byte_27DAD2790);
            v106 = v139;
LABEL_41:
            v107 = v106;
            goto LABEL_45;
          }

          v84 = objc_msgSend_blitCommandEncoder(v69, v80, v81, v82, v83);
          *buf = v136;
          v142 = v62;
          v143 = 1;
          v85 = *(v148[0] + 8 * v66);
          memset(v140, 0, sizeof(v140));
          objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v84, v86, v138, 0, v63, v64, buf, v85, 0, v137, v140);
          objc_msgSend_endEncoding(v84, v87, v88, v89, v90);

          objc_msgSend_commit(v69, v91, v92, v93, v94);
          objc_msgSend_waitUntilCompleted(v69, v95, v96, v97, v98);
          if (objc_msgSend_status(v69, v99, v100, v101, v102) != 4)
          {
            break;
          }

          ++v66;
          v67 = v79;
          v57 = v68;
          if (v65 == v66)
          {
            goto LABEL_46;
          }
        }

        v108 = _mxi_log();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v108, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:868] MTLCommandBuffer failed", buf, 2u);
        }

        v107 = objc_msgSend_error(v69, v109, v110, v111, v112);
LABEL_45:
        v113 = v107;

        v79 = v113;
        v57 = v68;
LABEL_46:
        if (++v137 >= v131 || v79)
        {
LABEL_57:

          goto LABEL_58;
        }
      }
    }

    v114 = _mxi_log();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v114, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:817] Failed creating MTLCommandQueue.", buf, 2u);
    }

    v147 = 0;
    objc_msgSend_fillError_withDescription_(MXIInternalError, v115, &v147, @"Failed creating MTLCommandQueue.", v116);
    v79 = v147;
LABEL_58:

    objc_autoreleasePoolPop(context);
    if (v79)
    {
      if (v124)
      {
        v122 = v79;
        v16 = 0;
        *v124 = v79;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v120, v148[0], (v148[1] - v148[0]) >> 3, v121);
    }
  }

  *buf = v148;
  sub_22F9DC140(buf);
  if (v149)
  {
    v150 = v149;
    operator delete(v149);
  }

LABEL_16:

  return v16;
}

void sub_22F9E1864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  *(v27 - 96) = v27 - 184;
  sub_22F9DC140((v27 - 96));
  v29 = *(v27 - 160);
  if (v29)
  {
    *(v27 - 152) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22F9E1948(uint64_t a1)
{
  *a1 = &unk_28449BE18;
  fclose(*(a1 + 16));
  sub_22F9E19A0(a1 + 24);

  return a1;
}

uint64_t sub_22F9E19A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_22F9E19EC(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_22F9E1AA0(uint64_t a1, uint8_t *__ptr, size_t __nitems, unsigned int a4, int a5, uint64_t a6)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!__nitems)
  {
    return 1;
  }

  if (a5 != 4)
  {
    v13 = dword_22FA07F3C[a5];
    v14 = compression_decode_scratch_buffer_size(v13);
    sub_22F9E1D68(v32, v14);
    sub_22F9E1DE0(&__p, 0x100000);
    v15 = compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, v13);
    if (v15)
    {
      objc_msgSend_fillError_withDescription_(MXIInternalError, v16, a6, @"Failed initializing compression stream.", v17);
    }

    else
    {
      stream.src_ptr = __p;
      stream.src_size = 0;
      stream.dst_ptr = __ptr;
      stream.dst_size = __nitems;
      v18 = a4;
      while (v15 == COMPRESSION_STATUS_OK)
      {
        if (v31 - __p >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = (v31 - __p);
        }

        v20 = fread(__p, 1uLL, v19, *(a1 + 16));
        stream.src_ptr = __p;
        stream.src_size = v20;
        v15 = compression_stream_process(&stream, v20 == 0);
        v18 -= v20;
        if (v15 == COMPRESSION_STATUS_ERROR)
        {
          dst_size = stream.dst_size;
          v22 = _mxi_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109888;
            v34 = a4;
            v35 = 1024;
            v36 = a4 - v18;
            v37 = 1024;
            v38 = __nitems;
            v39 = 1024;
            v40 = __nitems - dst_size;
            _os_log_impl(&dword_22F9C3000, v22, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:513] Error while reading from compression stream. (source length: %d, read source length: %d, dest length: %d, written dest length: %d)", buf, 0x1Au);
          }

          objc_msgSend_fillError_withDescription_(MXIInternalError, v23, a6, @"Error while reading from compression stream.", v24);
          goto LABEL_20;
        }
      }

      if (compression_stream_destroy(&stream) != COMPRESSION_STATUS_ERROR)
      {
        v27 = 1;
        goto LABEL_21;
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v25, a6, @"Error releasing compression stream.", v26);
    }

LABEL_20:
    v27 = 0;
LABEL_21:
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v32[0])
    {
      v32[1] = v32[0];
      operator delete(v32[0]);
    }

    return (v27 & 1) != 0;
  }

  if (__nitems != a4)
  {
    sub_22F9E3920();
  }

  if (fread(__ptr, 1uLL, __nitems, *(a1 + 16)) == __nitems)
  {
    return 1;
  }

  objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v11, a6, @"Failed reading %d extected bytes.", v12, __nitems);
  return 0;
}

void sub_22F9E1D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_22F9E1D68(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_22F9D6F14(result, a2);
  }

  return result;
}

void sub_22F9E1DC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_22F9E1DE0(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_22F9E1E54(result, a2);
  }

  return result;
}

void sub_22F9E1E38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22F9E1E54(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_22F9C7AD4();
}

void *sub_22F9E1EA4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_22F9E1F24(result, a2);
  }

  return result;
}

void sub_22F9E1F24(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_22F9E1F60(a1, a2);
  }

  sub_22F9C7AD4();
}

void sub_22F9E1F60(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22F9C7BC4();
}

uint64_t *sub_22F9E1FA8(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

void sub_22F9E21E0(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_22F9E22D0(a1, prime);
    }
  }
}

void sub_22F9E22D0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22F9C7BC4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_22F9E2434@<X0>(FILE *__stream@<X0>, const char *a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  __ptr[1] = *MEMORY[0x277D85DE8];
  if (__stream)
  {
    __ptr[0] = 0x143484654;
    if (fwrite(__ptr, 4uLL, 2uLL, __stream) == 2)
    {
      operator new();
    }

    objc_msgSend_fillError_withDescription_(MXIInternalError, v6, a2, @"Failed writing signature and version.", v7);
    result = 0;
    *a4 = 0;
  }

  else
  {
    result = objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, a2, a2, @"Failed on creating file pointer '%p'.", a3, 0);
    *a4 = 0;
  }

  return result;
}

uint64_t sub_22F9E2550(uint64_t a1)
{
  *a1 = &unk_28449BE90;
  fclose(*(a1 + 32));
  sub_22F9E33CC(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_22F9E25A4(uint64_t a1)
{
  *a1 = &unk_28449BE90;
  fclose(*(a1 + 32));
  sub_22F9E33CC(a1 + 8, *(a1 + 16));

  JUMPOUT(0x2319050F0);
}

uint64_t sub_22F9E2618(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = v9;
  v15 = objc_msgSend_bytes(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_length(v9, v16, v17, v18, v19);
  v21 = (*(*a1 + 24))(a1, a2, v15, v20, a4, a5);

  return v21;
}

uint64_t sub_22F9E26C8(uint64_t a1, const char *a2, void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v33 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + 16;
    do
    {
      v13 = *(v11 + 28);
      v14 = v13 >= a2;
      v15 = v13 < a2;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 != a1 + 16 && *(v12 + 28) <= a2)
    {
      byte_27DAD2790 = BYTE3(a2);
      byte_27DAD2791 = BYTE2(a2);
      byte_27DAD2792 = BYTE1(a2);
      byte_27DAD2793 = a2;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, a2, a6, @"Key '%s' already exists in the file.", a5, &byte_27DAD2790);
      return 0;
    }
  }

  sub_22F9E3660(a1 + 8, &v33);
  __ptr = v33;
  v28 = a4 + 4;
  v29 = 0;
  v30 = v7;
  v31 = 0;
  v32 = a4;
  v16 = MEMORY[0x2319052B0](*(a1 + 32));
  if (fwrite(&__ptr, 0x10uLL, 1uLL, *(a1 + 32)) != 1)
  {
LABEL_17:
    byte_27DAD2790 = HIBYTE(v33);
    byte_27DAD2791 = BYTE2(v33);
    byte_27DAD2792 = BYTE1(v33);
    byte_27DAD2793 = v33;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v17, a6, @"Failed writing chunk info for data with key '%s'.", v18, &byte_27DAD2790);
    return 0;
  }

  v26 = 0;
  v19 = sub_22F9E3420(a1, a3, &v26, a4, v7, a6);
  result = 0;
  if (!v19)
  {
    return result;
  }

  v28 = v26 + 4;
  v21 = MEMORY[0x2319052B0](*(a1 + 32));
  if (!fseek(*(a1 + 32), v16, 0))
  {
    if (fwrite(&__ptr, 0x10uLL, 1uLL, *(a1 + 32)) == 1)
    {
      if (!fseek(*(a1 + 32), v21, 0))
      {
        return 1;
      }

      byte_27DAD2790 = HIBYTE(v33);
      byte_27DAD2791 = BYTE2(v33);
      byte_27DAD2792 = BYTE1(v33);
      byte_27DAD2793 = v33;
      byte_27DAD2794 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v24, a6, @"Failed seeking to the end of the file after writing data with key '%s'.", v25, &byte_27DAD2790);
      return 0;
    }

    goto LABEL_17;
  }

  byte_27DAD2790 = HIBYTE(v33);
  byte_27DAD2791 = BYTE2(v33);
  byte_27DAD2792 = BYTE1(v33);
  byte_27DAD2793 = v33;
  byte_27DAD2794 = 0;
  objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v22, a6, @"Failed updating chunk info for data with key '%s'.", v23, &byte_27DAD2790);
  return 0;
}

uint64_t sub_22F9E2948(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v14 = objc_opt_new();
  for (i = 0; objc_msgSend_arrayLength(v9, v10, v11, v12, v13) > i; ++i)
  {
    v20 = objc_msgSend_pixelFormat(v9, v16, v17, v18, v19);
    v25 = objc_msgSend_mipmapLevelCount(v9, v21, v22, v23, v24);
    v27 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v9, v26, v20, 2, 0, v25, i, 1);
    objc_msgSend_addObject_(v14, v28, v27, v29, v30);
  }

  v31 = (*(*a1 + 40))(a1, a2, v14, a4, a5);

  return v31;
}

uint64_t sub_22F9E2A80(uint64_t a1, unsigned int a2, void *a3, int a4, void *a5)
{
  v193 = a2;
  v8 = a3;
  if (!objc_msgSend_count(v8, v9, v10, v11, v12))
  {
    v32 = @"Null texture for key '%s'.";
LABEL_38:
    byte_27DAD2790 = HIBYTE(a2);
    byte_27DAD2791 = BYTE2(a2);
    byte_27DAD2792 = BYTE1(a2);
    byte_27DAD2793 = a2;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v13, a5, v32, v14, &byte_27DAD2790);
    v138 = 0;
    goto LABEL_70;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 16;
    do
    {
      v17 = *(v15 + 28);
      v18 = v17 >= a2;
      v19 = v17 < a2;
      if (v18)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * v19);
    }

    while (v15);
    if (v16 != a1 + 16 && *(v16 + 28) <= a2)
    {
      v32 = @"Key '%s' already exists in the file.";
      goto LABEL_38;
    }
  }

  sub_22F9E3660(a1 + 8, &v193);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v8, v20, 0, v21, v22);
  v28 = objc_msgSend_pixelFormat(v23, v24, v25, v26, v27);
  v29 = &dword_22FA07F68;
  v30 = 36;
  while (*(v29 - 1) != v28)
  {
    v29 += 4;
    if (!--v30)
    {
      v31 = 0;
      goto LABEL_16;
    }
  }

  v31 = *v29;
LABEL_16:

  __ptr = v193;
  v184 = 0;
  v185 = 1;
  v186 = a4;
  v187 = 0;
  v36 = objc_msgSend_objectAtIndexedSubscript_(v8, v33, 0, v34, v35);
  v188 = objc_msgSend_pixelFormat(v36, v37, v38, v39, v40);
  v44 = objc_msgSend_objectAtIndexedSubscript_(v8, v41, 0, v42, v43);
  v189 = objc_msgSend_width(v44, v45, v46, v47, v48);
  v52 = objc_msgSend_objectAtIndexedSubscript_(v8, v49, 0, v50, v51);
  v190 = objc_msgSend_height(v52, v53, v54, v55, v56);
  v191 = objc_msgSend_count(v8, v57, v58, v59, v60);
  v64 = objc_msgSend_objectAtIndexedSubscript_(v8, v61, 0, v62, v63);
  v192 = objc_msgSend_mipmapLevelCount(v64, v65, v66, v67, v68);

  sub_22F9E1D68(&v181, v192 * v191 + 1);
  v69 = MEMORY[0x2319052B0](*(a1 + 32));
  if (fwrite(&__ptr, 0x20uLL, 1uLL, *(a1 + 32)) != 1)
  {
    v137 = @"Failed writing chunk info for texture with key '%s'.";
LABEL_36:
    byte_27DAD2790 = HIBYTE(v193);
    byte_27DAD2791 = BYTE2(v193);
    byte_27DAD2792 = BYTE1(v193);
    byte_27DAD2793 = v193;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v70, a5, v137, v71, &byte_27DAD2790);
    v138 = 0;
    goto LABEL_68;
  }

  v72 = fwrite(v181, 4uLL, (v182 - v181) >> 2, *(a1 + 32));
  if (v72 != (v182 - v181) >> 2)
  {
    v137 = @"Failed writing surface offsets for texture with key '%s'.";
    goto LABEL_36;
  }

  v74 = objc_msgSend_objectAtIndexedSubscript_(v8, v70, 0, v73, v71);
  v79 = objc_msgSend_device(v74, v75, v76, v77, v78);

  v166 = v79;
  v167 = objc_msgSend_newCommandQueue(v79, v80, v81, v82, v83);
  if (!v167)
  {
    v139 = _mxi_log();
    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v139, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:306] Failed creating MTLCommandQueue.", buf, 2u);
    }

    objc_msgSend_fillError_withDescription_(MXIInternalError, v140, a5, @"Failed creating MTLCommandQueue.", v141);
    v138 = 0;
    goto LABEL_67;
  }

  v84 = v31;
  v85 = v31 - 1;
  v86 = BYTE1(v31);
  v87 = BYTE1(v31) - 1;
  v164 = BYTE2(v31);
  v165 = (v85 + v189) / v31 * BYTE2(v31) * ((v87 + v190) / BYTE1(v31));
  sub_22F9E1DE0(v180, v165);
  v91 = v192;
  if (!v192)
  {
    v93 = 0;
LABEL_43:
    *(v182 - 1) = v93;
    v184 = MEMORY[0x2319052B0](*(a1 + 32)) - v69 - 12;
    v142 = MEMORY[0x2319052B0](*(a1 + 32));
    if (fseek(*(a1 + 32), v69, 0))
    {
      v145 = @"Failed seeking to chunk info after writing texture with key '%s'.";
    }

    else if (fwrite(&__ptr, 0x20uLL, 1uLL, *(a1 + 32)) == 1)
    {
      v146 = fwrite(v181, 4uLL, (v182 - v181) >> 2, *(a1 + 32));
      if (v146 == (v182 - v181) >> 2)
      {
        if (!fseek(*(a1 + 32), v142, 0))
        {
          v138 = 1;
          goto LABEL_65;
        }

        v145 = @"Failed seeking to the end of the file after writing texture with key '%s'.";
      }

      else
      {
        v145 = @"Failed updating surface offsets for texture with key '%s'.";
      }
    }

    else
    {
      v145 = @"Failed updating chunk info for texture with key '%s'.";
    }

    byte_27DAD2790 = HIBYTE(v193);
    byte_27DAD2791 = BYTE2(v193);
    byte_27DAD2792 = BYTE1(v193);
    byte_27DAD2793 = v193;
    byte_27DAD2794 = 0;
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v143, a5, v145, v144, &byte_27DAD2790);
    goto LABEL_64;
  }

  v168 = a4;
  v92 = 0;
  v93 = 0;
  v94 = v191;
  v163 = v69;
  v161 = v31 - 1;
  v162 = v31;
  v159 = BYTE1(v31) - 1;
  v160 = BYTE1(v31);
  while (!v94)
  {
LABEL_32:
    if (++v92 >= v91)
    {
      goto LABEL_43;
    }
  }

  v95 = 0;
  v170 = v190 >> v92;
  v171 = v189 >> v92;
  v169 = (v85 + v171) / v84 * v164;
  v96 = v169 * ((v87 + v170) / v86);
  while (1)
  {
    v97 = objc_msgSend_objectAtIndexedSubscript_(v8, v88, v95, v89, v90);
    v102 = objc_msgSend_storageMode(v97, v98, v99, v100, v101);

    if (v102 != 2)
    {
      v108 = objc_msgSend_objectAtIndexedSubscript_(v8, v103, v95, v105, v106);
      *buf = 0;
      v174 = 0;
      v175 = 0;
      v176 = v171;
      v177 = v170;
      v178 = 1;
      objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v108, v136, v180[0], v169, v96, buf, v92, 0);
      goto LABEL_29;
    }

    v108 = objc_msgSend_commandBuffer(v167, v103, v104, v105, v106);
    if (!v108)
    {
      break;
    }

    v113 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v166, v107, v180[0], v165, 0, 0);
    if (!v113)
    {
      v150 = _mxi_log();
      if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v150, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:343] Failed creating MTLBuffer.", buf, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v151, a5, @"Failed creating MTLBuffer.", v152);
      goto LABEL_60;
    }

    v114 = objc_msgSend_blitCommandEncoder(v108, v109, v110, v111, v112);
    v118 = objc_msgSend_objectAtIndexedSubscript_(v8, v115, v95, v116, v117);
    *buf = 0;
    v174 = 0;
    v175 = 0;
    v179[0] = v171;
    v179[1] = v170;
    v179[2] = 1;
    objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_(v114, v119, v118, 0, v92, buf, v179, v113, 0, v169, v96);

    objc_msgSend_endEncoding(v114, v120, v121, v122, v123);
    objc_msgSend_commit(v108, v124, v125, v126, v127);
    objc_msgSend_waitUntilCompleted(v108, v128, v129, v130, v131);
    if (objc_msgSend_status(v108, v132, v133, v134, v135) != 4)
    {
      v153 = _mxi_log();
      if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v153, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:363] MTLCommandBuffer failed", buf, 2u);
      }

      if (a5)
      {
        *a5 = objc_msgSend_error(v108, v154, v155, v156, v157);
      }

LABEL_60:
      goto LABEL_64;
    }

LABEL_29:
    *buf = 0;
    if ((sub_22F9E3420(a1, v180[0], buf, v96, v168, a5) & 1) == 0)
    {
      goto LABEL_64;
    }

    *(v181 + v95 + v92 * v191) = v93;
    v93 += *buf;
    ++v95;
    v94 = v191;
    if (v95 >= v191)
    {
      v91 = v192;
      v69 = v163;
      v85 = v161;
      v84 = v162;
      v87 = v159;
      v86 = v160;
      goto LABEL_32;
    }
  }

  v147 = _mxi_log();
  if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v147, OS_LOG_TYPE_ERROR, "[Core/CoreSerialization.mm:334] Failed creating MTLCommandBuffer.", buf, 2u);
  }

  objc_msgSend_fillError_withDescription_(MXIInternalError, v148, a5, @"Failed creating MTLCommandBuffer.", v149);
LABEL_64:
  v138 = 0;
LABEL_65:
  if (v180[0])
  {
    v180[1] = v180[0];
    operator delete(v180[0]);
  }

LABEL_67:

LABEL_68:
  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }

LABEL_70:

  return v138;
}

void sub_22F9E32AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  v25 = *(v23 - 184);
  if (v25)
  {
    *(v23 - 176) = v25;
    operator delete(v25);
  }

  v26 = *(v23 - 160);
  if (v26)
  {
    *(v23 - 152) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_22F9E33CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_22F9E33CC(a1, *a2);
    sub_22F9E33CC(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_22F9E3420(uint64_t a1, void *__ptr, _DWORD *a3, size_t __nitems, int a5, uint64_t a6)
{
  if (a5 == 4)
  {
    if (fwrite(__ptr, 1uLL, __nitems, *(a1 + 32)) == __nitems)
    {
      if (a3)
      {
        *a3 = __nitems;
      }

      return 1;
    }

    else
    {
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v11, a6, @"Failed writing data with length %d bytes.", v12, __nitems);
      return 0;
    }
  }

  else
  {
    v14 = dword_22FA07F3C[a5];
    v15 = compression_encode_scratch_buffer_size(v14);
    sub_22F9E1DE0(v30, v15);
    sub_22F9E1DE0(&__p, 0x100000);
    if (compression_stream_init(&stream, COMPRESSION_STREAM_ENCODE, v14))
    {
      objc_msgSend_fillError_withDescription_(MXIInternalError, v16, a6, @"Failed initializing compression stream.", v17);
LABEL_17:
      v13 = 0;
    }

    else
    {
      v18 = 0;
      stream.src_ptr = __ptr;
      stream.src_size = __nitems;
      stream.dst_ptr = __p;
      stream.dst_size = v29 - __p;
      v19 = @"Error while compressing using compression stream.";
      do
      {
        v22 = compression_stream_process(&stream, 1);
        if (v22 == COMPRESSION_STATUS_ERROR)
        {
          goto LABEL_15;
        }

        v23 = v29 - (__p + stream.dst_size);
        if (fwrite(__p, 1uLL, v23, *(a1 + 32)) != v23)
        {
          objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v24, a6, @"Failed writing compressed data with length %d bytes.", v25, v23, stream.dst_ptr);
          goto LABEL_17;
        }

        v18 += v23;
        stream.dst_ptr = __p;
        stream.dst_size = v29 - __p;
      }

      while (v22 == COMPRESSION_STATUS_OK);
      if (compression_stream_destroy(&stream))
      {
        v19 = @"Error releasing compression stream.";
LABEL_15:
        objc_msgSend_fillError_withDescription_(MXIInternalError, v20, a6, v19, v21);
        goto LABEL_17;
      }

      if (a3)
      {
        *a3 = v18;
      }

      v13 = 1;
    }

    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v30[0])
    {
      v30[1] = v30[0];
      operator delete(v30[0]);
    }
  }

  return v13;
}

void sub_22F9E361C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_22F9E3660(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *sub_22F9E372C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_22F9E3784(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_22F9E3784(uint64_t *result, uint64_t *a2)
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

void tiled::Processor::~Processor(tiled::Processor *this)
{
  sub_22F9E8B20(this, 0);
}

{
  sub_22F9E8B20(this, 0);
}

void tiled::Processor::Create(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v10 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v7, @"com.apple.mxi", v8, v9);
  if (objc_msgSend_newDefaultLibraryWithBundle_error_(v6, v11, v10, a5, v12))
  {
    v36 = v10;
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    v16 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v13, @"com.apple.mxi.TiledTests", v14, v15);

    objc_msgSend_newDefaultLibraryWithBundle_error_(v6, v17, v16, a5, v18);
    v36 = v16;
  }

  v37 = objc_opt_new();
  v21 = objc_msgSend_URLForResource_withExtension_(v36, v19, @"mxi_archive", @"metallib", v20);
  objc_msgSend_setUrl_(v37, v22, v21, v23, v24);

  v27 = objc_msgSend_newBinaryArchiveWithDescriptor_error_(v6, v25, v37, a5, v26);
  if (v27)
  {
    v38 = v27;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, &v38, 1, v29);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v30 = _mxi_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_msgSend_localizedDescription(*a5, v31, v32, v33, v34);
      *buf = 138412290;
      *&buf[4] = v35;
      _os_log_impl(&dword_22F9C3000, v30, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:353] [TiledProcessor] WARNING: nil MTLBinaryArchive for mxi_archive, error %@", buf, 0xCu);
    }
  }

  operator new();
}

void sub_22F9E44D8(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_22F9E485C(va);
  _Unwind_Resume(a1);
}

id sub_22F9E46B4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = objc_opt_new();
  objc_msgSend_setComputeFunction_(v12, v13, v11, v14, v15);
  objc_msgSend_setBinaryArchives_(v12, v16, v10, v17, v18);
  v20 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v9, v19, v12, a4, 0, a5);
  if (!v20)
  {
    v21 = _mxi_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_msgSend_name(v11, v22, v23, v24, v25);
      v28 = 138412546;
      v29 = v26;
      v30 = 2048;
      v31 = a4;
      _os_log_impl(&dword_22F9C3000, v21, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:225] Failed on creating compute pipeline state for function '%@' with options '%llu'", &v28, 0x16u);
    }
  }

  return v20;
}

uint64_t **sub_22F9E485C(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_22F9E8B20(v2, 0);
    MEMORY[0x2319050F0](v2, 0x20C4093837F09);
  }

  return a1;
}

uint64_t tiled::Processor::AddLayer(uint64_t *a1, void *a2, int a3, int a4, void *a5, void *a6, __int128 *a7, float a8, float a9)
{
  v511 = *MEMORY[0x277D85DE8];
  v480 = a2;
  v478 = a5;
  v479 = a6;
  v16 = *a1;
  v21 = objc_msgSend_width(v478, v17, v18, v19, v20);
  v470 = a3;
  v26 = objc_msgSend_height(v478, v22, v23, v24, v25);
  v469 = 1 << (*(v16 + 356) - 1);
  v31 = *(v16 + 352) - v469;
  v32 = (v21 + v31 - 1) / v31;
  v33 = (v31 + v26 - 1) / v31;
  v474 = v33;
  v475 = (v32 + 7) >> 3;
  v468 = (v33 + 7) >> 3;
  v34 = (v468 * v475 - 1) | ((v468 * v475 - 1) >> 1);
  v35 = v34 | (v34 >> 2) | ((v34 | (v34 >> 2)) >> 4);
  v471 = v32 + 1 + (v32 + 1) * v33;
  v472 = v26;
  if (*(v16 + 344))
  {
    v36 = 6;
  }

  else
  {
    v36 = 1;
  }

  v37 = v36 * *(v16 + 360);
  if (*(v16 + 344))
  {
    v38 = a4;
  }

  else
  {
    v38 = 0;
  }

  v476 = (v35 | (v35 >> 8) | ((v35 | (v35 >> 8)) >> 16)) + 1;
  v39 = (((v35 | (v35 >> 8) | ((v35 | (v35 >> 8)) >> 16)) + 1) * v36) << 6;
  *(v16 + 364) = v39;
  v466 = v39 * v37;
  v467 = v37;
  *(v16 + 368) = v39 * v37;
  v40 = v480;
  v473 = v21;
  if (*(v16 + 414))
  {
    goto LABEL_8;
  }

  *(v16 + 414) = 1;
  v465 = v38;
  if (*(v16 + 404))
  {
    v152 = _mxi_log();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
    {
      *v501 = 0;
      _os_log_impl(&dword_22F9C3000, v152, OS_LOG_TYPE_DEBUG, "[Tiled] [TiledProcessor] Allocating slices dynamically", v501, 2u);
    }

    v41 = dispatch_queue_create("com.apple.mxi.tiled", 0);
    v157 = objc_msgSend_newSharedEvent(*v16, v153, v154, v155, v156);
    v158 = *(v16 + 448);
    *(v16 + 448) = v157;

    v159 = objc_alloc(MEMORY[0x277CD6FD8]);
    v163 = objc_msgSend_initWithDispatchQueue_(v159, v160, v41, v161, v162);
    v164 = *(v16 + 456);
    *(v16 + 456) = v163;

    *(v16 + 464) = 0;
    v169 = objc_msgSend_newCommandQueue(*v16, v165, v166, v167, v168);
    v170 = *(v16 + 440);
    *(v16 + 440) = v169;
    goto LABEL_22;
  }

  v173 = _MXISignpostLogSystem();
  spid = _MXISignpostCreate(v173);
  v174 = _MXISignpostLogSystem();
  memset(buf, 0, sizeof(buf));
  core::get_info(buf);
  v175 = v174;
  v176 = v175;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v175))
  {
    *v501 = 134218752;
    *&v501[4] = *buf;
    *&v501[12] = 2048;
    *&v501[14] = *&buf[8];
    *&v501[22] = 2048;
    *&v501[24] = *&buf[16];
    LOWORD(v502) = 2048;
    *(&v502 + 2) = *&buf[24];
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v176, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MXI_MEMORY_PREALLOCATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", v501, 0x2Au);
  }

  v177 = *(v16 + 400);
  v182 = objc_msgSend_width(v478, v178, v179, v180, v181);
  v187 = objc_msgSend_height(v478, v183, v184, v185, v186);
  if (v177 != -1)
  {
LABEL_31:
    if (v177 >= 513)
    {
      v41 = _mxi_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *v501 = 0;
        v172 = "[Tiled/TiledProcessor.mm:558] Number of atlas slices exceeds MAX_FIXED_ATLAS_SLICES.";
        goto LABEL_66;
      }

LABEL_144:
      v151 = 0;
      goto LABEL_145;
    }

    v343 = _mxi_log();
    if (os_log_type_enabled(v343, OS_LOG_TYPE_DEBUG))
    {
      *v501 = 67109120;
      *&v501[4] = v177;
      _os_log_impl(&dword_22F9C3000, v343, OS_LOG_TYPE_DEBUG, "[Tiled] [TiledProcessor] Allocating %u slices", v501, 8u);
    }

    sub_22F9E60AC((v16 + 112), v177);
    sub_22F9E60AC((v16 + 136), v177);
    v344 = objc_opt_new();
    v41 = v344;
    if (*(v16 + 413) == 1)
    {
      objc_msgSend_setTextureType_(v344, v345, 2, v346, v347);
    }

    else
    {
      objc_msgSend_setTextureType_(v344, v345, 3, v346, v347);
      objc_msgSend_setArrayLength_(v41, v351, v177, v352, v353);
    }

    objc_msgSend_setWidth_(v41, v348, *(v16 + 348), v349, v350, v458);
    objc_msgSend_setHeight_(v41, v354, *(v16 + 348), v355, v356);
    objc_msgSend_setMipmapLevelCount_(v41, v357, *(v16 + 356), v358, v359);
    objc_msgSend_setPixelFormat_(v41, v360, *(v16 + 328), v361, v362);
    objc_msgSend_setUsage_(v41, v363, 19, v364, v365);
    if (*(v16 + 413) == 1)
    {
      if (v177)
      {
        v369 = 0;
        while (1)
        {
          objc_msgSend_setStorageMode_(v41, v366, 2, v367, v368);
          v373 = objc_msgSend_newSharedTextureWithDescriptor_(*v16, v370, v41, v371, v372);
          v374 = *(v16 + 112);
          v375 = *(v374 + v369);
          *(v374 + v369) = v373;

          v377 = *(*(v16 + 112) + v369);
          if (!v377)
          {
            v455 = _mxi_log();
            if (!os_log_type_enabled(v455, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_143;
            }

            *v501 = 0;
            v456 = "[Tiled/TiledProcessor.mm:587] Failed to allocate atlas.";
            goto LABEL_142;
          }

          v378 = *(v16 + 336);
          v379 = *(v16 + 409) == 1 ? objc_msgSend_newCompressedTextureViewWithPixelFormat_textureType_level_slice_(v377, v376, v378, 2, 0, 0) : objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v377, v376, v378, 2, 0, 1, 0, 1);
          v380 = *(v16 + 136);
          v381 = *(v380 + v369);
          *(v380 + v369) = v379;

          v386 = *(*(v16 + 136) + v369);
          if (!v386)
          {
            break;
          }

          *(*(v16 + 304) + v369) = objc_msgSend_gpuResourceID(v386, v382, v383, v384, v385);
          v369 += 8;
          if (8 * v177 == v369)
          {
            goto LABEL_90;
          }
        }

        v455 = _mxi_log();
        if (!os_log_type_enabled(v455, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_143;
        }

        *v501 = 0;
        v456 = "[Tiled/TiledProcessor.mm:603] Failed to allocate atlas view";
        goto LABEL_142;
      }
    }

    else
    {
      objc_msgSend_setStorageMode_(v41, v366, 2, v367, v368);
      v390 = objc_msgSend_newSharedTextureWithDescriptor_(*v16, v387, v41, v388, v389);
      v391 = *(v16 + 160);
      *(v16 + 160) = v390;

      if (!*(v16 + 160))
      {
        v455 = _mxi_log();
        if (!os_log_type_enabled(v455, OS_LOG_TYPE_ERROR))
        {
LABEL_143:

          goto LABEL_144;
        }

        *v501 = 0;
        v456 = "[Tiled/TiledProcessor.mm:616] Failed to allocate atlas.";
LABEL_142:
        _os_log_impl(&dword_22F9C3000, v455, OS_LOG_TYPE_ERROR, v456, v501, 2u);
        goto LABEL_143;
      }

      if (v177)
      {
        v393 = 0;
        while (1)
        {
          v394 = *(v16 + 160);
          v395 = *(v16 + 336);
          v396 = *(v16 + 409) == 1 ? objc_msgSend_newCompressedTextureViewWithPixelFormat_textureType_level_slice_(v394, v392, v395, 2, 0, v393) : objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v394, v392, v395, 2, 0, 1, v393, 1);
          v397 = *(v16 + 136);
          v398 = *(v397 + 8 * v393);
          *(v397 + 8 * v393) = v396;

          v403 = *(*(v16 + 136) + 8 * v393);
          if (!v403)
          {
            break;
          }

          *(*(v16 + 304) + 8 * v393++) = objc_msgSend_gpuResourceID(v403, v399, v400, v401, v402);
          if (v177 == v393)
          {
            goto LABEL_90;
          }
        }

        v455 = _mxi_log();
        if (!os_log_type_enabled(v455, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_143;
        }

        *v501 = 0;
        v456 = "[Tiled/TiledProcessor.mm:633] Failed to allocate atlas view";
        goto LABEL_142;
      }
    }

LABEL_90:
    v404 = _MXISignpostLogSystem();
    memset(buf, 0, sizeof(buf));
    core::get_info(buf);
    v405 = v404;
    v170 = v405;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v405))
    {
      *v501 = 134218752;
      *&v501[4] = *buf;
      *&v501[12] = 2048;
      *&v501[14] = *&buf[8];
      *&v501[22] = 2048;
      *&v501[24] = *&buf[16];
      LOWORD(v502) = 2048;
      *(&v502 + 2) = *&buf[24];
      _os_signpost_emit_with_name_impl(&dword_22F9C3000, v170, OS_SIGNPOST_INTERVAL_END, spid, "MXI_MEMORY_PREALLOCATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", v501, 0x2Au);
    }

LABEL_22:
    v171 = *(v16 + 392);
    if (v171)
    {
      v38 = v465;
      if (v171 != v473)
      {
        v41 = _mxi_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *v501 = 0;
          v172 = "[Tiled/TiledProcessor.mm:653] Unexpected color texture width";
          goto LABEL_66;
        }

        goto LABEL_144;
      }

      if (*(v16 + 396) != v472)
      {
        v41 = _mxi_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *v501 = 0;
          v172 = "[Tiled/TiledProcessor.mm:654] Unexpected color texture height";
LABEL_66:
          _os_log_impl(&dword_22F9C3000, v41, OS_LOG_TYPE_ERROR, v172, v501, 2u);
          goto LABEL_144;
        }

        goto LABEL_144;
      }
    }

    else
    {
      *(v16 + 392) = v473;
      *(v16 + 396) = v472;
      v38 = v465;
    }

    v40 = v480;
    if (!*(v16 + 168))
    {
      v265 = v38;
      v266 = objc_msgSend_newBufferWithLength_options_(*v16, v27, v476 << 6, 32, v30);
      v267 = *(v16 + 168);
      *(v16 + 168) = v266;

      v270 = objc_msgSend_newBufferWithLength_options_(*v16, v268, 16 * v476, 0, v269);
      v271 = *(v16 + 176);
      *(v16 + 176) = v270;

      v274 = objc_msgSend_newBufferWithLength_options_(*v16, v272, 16, 0, v273);
      v275 = *(v16 + 184);
      *(v16 + 184) = v274;

      v278 = objc_msgSend_newBufferWithLength_options_(*v16, v276, 12 * v467, 0, v277);
      v279 = *(v16 + 192);
      *(v16 + 192) = v278;

      v282 = objc_msgSend_newBufferWithLength_options_(*v16, v280, 24, 32, v281);
      v283 = *(v16 + 200);
      *(v16 + 200) = v282;

      v286 = objc_msgSend_newBufferWithLength_options_(*v16, v284, v476 << 8, 32, v285);
      v287 = *(v16 + 208);
      *(v16 + 208) = v286;

      v290 = objc_msgSend_newBufferWithLength_options_(*v16, v288, 6144 * v476, 32, v289);
      v291 = *(v16 + 216);
      *(v16 + 216) = v290;

      v294 = objc_msgSend_newBufferWithLength_options_(*v16, v292, 32 * v471, 32, v293);
      v295 = *(v16 + 224);
      *(v16 + 224) = v294;

      v298 = objc_msgSend_newBufferWithLength_options_(*v16, v296, 16 * (4 * v466), 0, v297);
      v299 = *(v16 + 232);
      *(v16 + 232) = v298;

      v302 = objc_msgSend_newBufferWithLength_options_(*v16, v300, 8 * (4 * v466), 0, v301);
      v303 = *(v16 + 240);
      *(v16 + 240) = v302;

      v304 = (2 * v466);
      v307 = objc_msgSend_newBufferWithLength_options_(*v16, v305, 12 * v304, 0, v306);
      v308 = *(v16 + 248);
      *(v16 + 248) = v307;

      v311 = objc_msgSend_newBufferWithLength_options_(*v16, v309, 12 * v304, 0, v310);
      v312 = *(v16 + 256);
      *(v16 + 256) = v311;

      v315 = objc_msgSend_newBufferWithLength_options_(*v16, v313, 4 * v304, 0, v314);
      v316 = *(v16 + 264);
      *(v16 + 264) = v315;

      v319 = objc_msgSend_newBufferWithLength_options_(*v16, v317, 4 * v304, 0, v318);
      v320 = *(v16 + 272);
      *(v16 + 272) = v319;

      v323 = *(v16 + 411) == 1 ? objc_msgSend_newBufferWithLength_options_(*v16, v321, 16 * v32 * v474 * *(v16 + 360), 0, v322) : 0;
      v406 = *(v16 + 280);
      *(v16 + 280) = v323;

      v411 = objc_msgSend_contents(*(v16 + 184), v407, v408, v409, v410);
      v38 = v265;
      v40 = v480;
      if (*(v16 + 415) == 1)
      {
        *v411 = xmmword_22FA081D0;
      }
    }

LABEL_8:
    v41 = objc_msgSend_computeCommandEncoder(v40, v27, v28, v29, v30);
    objc_msgSend_setLabel_(v41, v42, @"MXI: Processing ComputeCommandEncoder", v43, v44);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v45, *(v16 + 168), 0, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v46, *(v16 + 176), 0, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v47, *(v16 + 184), 0, 2);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v48, *(v16 + 192), 0, 4);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v49, *(v16 + 200), 0, 6);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v50, *(v16 + 208), 0, 7);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v51, *(v16 + 216), 0, 8);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v52, *(v16 + 224), 0, 9);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v53, *(v16 + 232), 0, 10);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v54, *(v16 + 240), 0, 11);
    v55 = (v38 + v36 * v470);
    v56 = 12 * v55;
    objc_msgSend_setBuffer_offset_atIndex_(v41, v57, *(v16 + 248), v56 * (2 * *(v16 + 364)), 12);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v58, *(v16 + 256), v56 * (2 * *(v16 + 364)), 13);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v59, *(v16 + 264), 4 * v55 * (2 * *(v16 + 364)), 14);
    objc_msgSend_setBuffer_offset_atIndex_(v41, v60, *(v16 + 272), 4 * v55 * (2 * *(v16 + 364)), 15);
    if (*(v16 + 411) == 1)
    {
      objc_msgSend_setBuffer_offset_atIndex_(v41, v61, *(v16 + 280), 0, 17);
    }

    objc_msgSend_setBytes_length_atIndex_(v41, v61, *(v16 + 304), 4096, 16);
    memset(v510, 0, sizeof(v510));
    v508 = 0u;
    v509 = 0u;
    v506 = 0u;
    v507 = 0u;
    v504 = 0u;
    v505 = 0u;
    v502 = 0u;
    v503 = 0u;
    v64 = *(v16 + 348);
    *v501 = *(v16 + 352);
    *&v501[4] = v64;
    *&v501[8] = v469;
    *&v501[12] = v475;
    *&v501[16] = v476;
    *&v501[20] = v55;
    *&v501[24] = *(v16 + 360);
    *&v501[28] = a4;
    LODWORD(v502) = *(v16 + 368);
    *(&v502 + 1) = __PAIR64__(v472, v473);
    *&v503 = __PAIR64__(LODWORD(a8), LODWORD(a9));
    DWORD2(v503) = *(v16 + 380);
    *&v505 = *(v16 + 432);
    v504 = *(v16 + 416);
    v65 = a7[1];
    v506 = *a7;
    v507 = v65;
    v66 = a7[3];
    v508 = a7[2];
    v509 = v66;
    *&v510[0] = *(v16 + 384);
    BYTE8(v510[0]) = v479 == 0;
    *(v510 + 9) = *(v16 + 405);
    if (*v501 < 0x41u)
    {
      v67 = *(v16 + 407);
    }

    else
    {
      v67 = 0;
    }

    BYTE11(v510[0]) = v67;
    BYTE12(v510[0]) = *(v16 + 408);
    BYTE13(v510[0]) = *(v16 + 410);
    BYTE14(v510[0]) = *(a7 + 64);
    *(v510 + 15) = *(v16 + 411);
    v68 = v480;
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v41, v62, 16 * v476, 0, v63);
    objc_msgSend_setBytes_length_atIndex_(v41, v69, v501, 192, 5);
    objc_msgSend_setTexture_atIndex_(v41, v70, v478, 0, v71);
    objc_msgSend_setTexture_atIndex_(v41, v72, v479, 1, v73);
    objc_msgSend_pushDebugGroup_(v41, v74, @"group_info", v75, v76);
    objc_msgSend_setComputePipelineState_(v41, v77, *(v16 + 8), v78, v79);
    *buf = v475;
    *&buf[8] = v468;
    *&buf[16] = 1;
    *v499 = vdupq_n_s64(8uLL);
    *&v499[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v41, v80, buf, v499, v81);
    objc_msgSend_popDebugGroup(v41, v82, v83, v84, v85);
    objc_msgSend_pushDebugGroup_(v41, v86, @"prefix_sums", v87, v88);
    objc_msgSend_setComputePipelineState_(v41, v89, *(v16 + 16), v90, v91);
    *buf = vdupq_n_s64(1uLL);
    *&buf[16] = 1;
    *v499 = fmin(v476, 1024.0);
    *&v499[8] = *buf;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v41, v92, buf, v499, v93);
    objc_msgSend_popDebugGroup(v41, v94, v95, v96, v97);
    objc_msgSend_pushDebugGroup_(v41, v98, @"setup_indirect_dispatches", v99, v100);
    objc_msgSend_setComputePipelineState_(v41, v101, *(v16 + 40), v102, v103);
    *buf = vdupq_n_s64(1uLL);
    *&buf[16] = 1;
    *v499 = *buf;
    *&v499[16] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v104, buf, v499, v105);
    objc_msgSend_popDebugGroup(v41, v106, v107, v108, v109);
    objc_msgSend_pushDebugGroup_(v41, v110, @"locations_mapping", v111, v112);
    objc_msgSend_setComputePipelineState_(v41, v113, *(v16 + 48), v114, v115);
    *buf = v32;
    *&buf[8] = v474;
    *&buf[16] = 1;
    *v499 = vdupq_n_s64(8uLL);
    *&v499[16] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v116, buf, v499, v117);
    objc_msgSend_popDebugGroup(v41, v118, v119, v120, v121);
    if (v479)
    {
      objc_msgSend_pushDebugGroup_(v41, v122, @"depth_adjust", v123, v124);
      objc_msgSend_pushDebugGroup_(v41, v125, @"init_distances", v126, v127);
      objc_msgSend_setComputePipelineState_(v41, v128, *(v16 + 56), v129, v130);
      *buf = v471;
      *&buf[8] = vdupq_n_s64(1uLL);
      *v499 = xmmword_22FA081E0;
      *&v499[16] = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v131, buf, v499, v132);
      objc_msgSend_popDebugGroup(v41, v133, v134, v135, v136);
      objc_msgSend_pushDebugGroup_(v41, v137, @"gather_reduce", v138, v139);
      objc_msgSend_setComputePipelineState_(v41, v140, *(v16 + 64), v141, v142);
      v143 = *v501;
      v144 = *&v501[8];
      if (objc_msgSend_maxTotalThreadsPerThreadgroup(*(v16 + 64), v145, v146, v147, v148) < (((v143 - v144 + 1) >> 1) * ((v143 - v144 + 1) >> 1)))
      {
        v150 = _mxi_log();
        if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v150, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:779] Not enough threads per threadgroup for tile size", buf, 2u);
        }

        v151 = 0;
        goto LABEL_45;
      }

      v188 = *(v16 + 200);
      *buf = ((v143 - v144 + 1) >> 1) * ((v143 - v144 + 1) >> 1);
      *&buf[8] = vdupq_n_s64(1uLL);
      v68 = v480;
      objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v41, v149, v188, 12, buf);
      objc_msgSend_popDebugGroup(v41, v189, v190, v191, v192);
      objc_msgSend_pushDebugGroup_(v41, v193, @"solve", v194, v195);
      objc_msgSend_setComputePipelineState_(v41, v196, *(v16 + 72), v197, v198);
      v199 = *(v16 + 200);
      *buf = xmmword_22FA081E0;
      *&buf[16] = 1;
      objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v41, v200, v199, 0, buf);
      objc_msgSend_popDebugGroup(v41, v201, v202, v203, v204);
      objc_msgSend_pushDebugGroup_(v41, v205, @"average_corners", v206, v207);
      objc_msgSend_setComputePipelineState_(v41, v208, *(v16 + 80), v209, v210);
      *buf = v471;
      *&buf[8] = vdupq_n_s64(1uLL);
      *v499 = xmmword_22FA081E0;
      *&v499[16] = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v211, buf, v499, v212);
      objc_msgSend_popDebugGroup(v41, v213, v214, v215, v216);
      objc_msgSend_popDebugGroup(v41, v217, v218, v219, v220);
    }

    if (*(v16 + 411) == 1)
    {
      objc_msgSend_pushDebugGroup_(v41, v122, @"init_vtx_idx_map", v123, v124);
      objc_msgSend_setComputePipelineState_(v41, v221, *(v16 + 96), v222, v223);
      *buf = v32;
      *&buf[8] = v474;
      *&buf[16] = 1;
      *v499 = vdupq_n_s64(8uLL);
      *&v499[16] = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v224, buf, v499, v225);
      objc_msgSend_popDebugGroup(v41, v226, v227, v228, v229);
    }

    objc_msgSend_pushDebugGroup_(v41, v122, @"mesh", v123, v124);
    objc_msgSend_setComputePipelineState_(v41, v230, *(v16 + 88), v231, v232);
    v233 = *(v16 + 200);
    *buf = xmmword_22FA081E0;
    *&buf[16] = 1;
    objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v41, v234, v233, 0, buf);
    objc_msgSend_popDebugGroup(v41, v235, v236, v237, v238);
    if (*(v16 + 400))
    {
      objc_msgSend_pushDebugGroup_(v41, v239, @"pack_tiles", v241, v242);
      objc_msgSend_setComputePipelineState_(v41, v243, *(v16 + 24), v244, v245);
      objc_msgSend_useResources_count_usage_(v41, v246, *(v16 + 136), (*(v16 + 144) - *(v16 + 136)) >> 3, 2);
      if (*(v16 + 409) == 1)
      {
        v249 = *(v16 + 200);
        *buf = ((*(v16 + 352) >> 2) * (*(v16 + 352) >> 2));
        *&buf[8] = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v41, v247, v249, 12, buf);
      }

      else
      {
        *buf = v32;
        *&buf[8] = v474;
        *&buf[16] = 1;
        *v499 = vdupq_n_s64(0x10uLL);
        *&v499[16] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v41, v247, buf, v499, v248);
      }

      objc_msgSend_popDebugGroup(v41, v250, v251, v252, v253);
    }

    objc_msgSend_endEncoding(v41, v239, v240, v241, v242);
    if (*(v16 + 400))
    {
      v151 = 1;
LABEL_145:

      goto LABEL_146;
    }

    v256 = v32;
    v257 = *(v16 + 464);
    v258 = (v257 + 1);
    v259 = (v257 + 2);
    *(v16 + 464) = v259;
    objc_msgSend_encodeSignalEvent_value_(v68, v254, *(v16 + 448), v258, v255);
    objc_msgSend_encodeWaitForEvent_value_(v68, v260, *(v16 + 448), v259, v261);
    v262 = *(v16 + 448);
    v263 = *(v16 + 456);
    v481[0] = MEMORY[0x277D85DD0];
    v481[1] = 3221225472;
    v481[2] = sub_22F9E6134;
    v481[3] = &unk_2788ADDB0;
    v495 = v16;
    v494 = v478;
    v490 = v508;
    v491 = v509;
    v492 = v510[0];
    v493 = v510[1];
    v486 = v504;
    v487 = v505;
    v488 = v506;
    v489 = v507;
    v482 = *v501;
    v483 = *&v501[16];
    v484 = v502;
    v485 = v503;
    v496 = v256;
    v497 = v474;
    v498 = v259;
    objc_msgSend_notifyListener_atValue_block_(v262, v264, v263, v258, v481);
    v151 = 1;
    v150 = v494;
LABEL_45:

    goto LABEL_145;
  }

  v324 = v187;
  v463 = v32;
  v325 = *(v16 + 348);
  if ((atomic_load_explicit(qword_27DAD27A0, memory_order_acquire) & 1) == 0)
  {
    sub_22F9E8CD8();
  }

  LOWORD(v326) = 0;
  LOWORD(v327) = 0;
  LOWORD(v328) = 0;
  v329 = fmax(v182, v324);
  v330 = v329;
  LOWORD(v331) = 0x7FFF;
  v332 = &word_27DAD27B4;
  v333 = 36;
  LOWORD(v334) = 0x7FFF;
  LOWORD(v335) = 0x7FFF;
  do
  {
    LOWORD(v329) = *(v332 - 2);
    v336 = *&v329;
    *&v337 = fmax(v336, v328);
    v328 = *&v337;
    LOWORD(v337) = *(v332 - 1);
    v338 = v337;
    *&v339 = fmax(v338, v327);
    v327 = *&v339;
    LOWORD(v339) = *v332;
    v340 = v339;
    v326 = fmax(v340, v326);
    v335 = fmin(v336, v335);
    v334 = fmin(v338, v334);
    v329 = fmin(v340, v331);
    v331 = v329;
    v332 += 4;
    --v333;
  }

  while (v333);
  if (v325 > v328 || v467 > v327 || v330 > v326)
  {
    v41 = _mxi_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *v501 = 0;
      v172 = "[Tiled/TiledProcessor.mm:119] Atlas attributes are invalid";
      goto LABEL_66;
    }

    goto LABEL_144;
  }

  v412 = v335;
  v413 = fmax(v325, v335);
  v414 = v334;
  v415 = fmax(v467, v334);
  v416 = v331;
  v417 = fmax(v330, v331);
  v462 = v413;
  v460 = log2(v413);
  v418 = fmax(ldexp(1.0, v460), v412);
  v461 = v415;
  v459 = log2(v415);
  v419 = fmax(ldexp(1.0, v459), v414);
  LODWORD(v458) = v417;
  HIDWORD(v458) = log2(v417);
  v420 = fmax(ldexp(1.0, SHIDWORD(v458)), v416);
  v421 = fmin(ldexp(1.0, v460 + 1), v328);
  v422 = fmin(ldexp(1.0, v459 + 1), v327);
  v423 = ldexp(1.0, HIDWORD(v458) + 1);
  v424 = 0;
  v425 = 0;
  v426 = 0;
  v427 = 0;
  v428 = 0;
  v429 = 0;
  v430 = 0;
  v431 = 0;
  v432 = fmin(v423, v326);
  v433 = &word_27DAD27B6;
  v434 = 36;
  v32 = v463;
  do
  {
    v435 = *(v433 - 3);
    if (v435 == v418)
    {
      v436 = *(v433 - 2);
      if (v436 == v419)
      {
        v437 = *(v433 - 1);
        v438 = *v433;
        if (v437 == v420)
        {
          v424 = *v433;
        }

        if (v437 == v432)
        {
          v425 = *v433;
        }
      }

      else
      {
        v438 = *v433;
      }

      if (v436 == v422)
      {
        v439 = *(v433 - 1);
        if (v439 == v420)
        {
          v426 = v438;
        }

        if (v439 == v432)
        {
          v427 = v438;
        }
      }
    }

    else
    {
      v438 = *v433;
    }

    if (v435 == v421)
    {
      v440 = *(v433 - 2);
      if (v440 == v419)
      {
        v441 = *(v433 - 1);
        if (v441 == v420)
        {
          v428 = v438;
        }

        if (v441 == v432)
        {
          v429 = v438;
        }
      }

      if (v440 == v422)
      {
        v442 = *(v433 - 1);
        if (v442 == v420)
        {
          v430 = v438;
        }

        if (v442 == v432)
        {
          v431 = v438;
        }
      }
    }

    v433 += 4;
    --v434;
  }

  while (v434);
  v443 = 1.0;
  v444 = 1.0;
  v445 = __OFSUB__(v432, v420);
  v446 = v432 - v420;
  if (!((v446 < 0) ^ v445 | (v446 == 0)))
  {
    v444 = (v458 - v420) / v446;
  }

  v447 = v424 + (v444 * (v425 - v424));
  v448 = v426 + (v444 * (v427 - v426));
  v449 = v428 + (v444 * (v429 - v428));
  v450 = v430 + (v444 * (v431 - v430));
  v451 = (v461 - v419) / (v422 - v419);
  if (v422 - v419 < 1)
  {
    v451 = 1.0;
  }

  v452 = v447 + (v451 * (v448 - v447));
  v453 = v449 + (v451 * (v450 - v449));
  if (v421 - v418 >= 1)
  {
    v443 = (v462 - v418) / (v421 - v418);
  }

  v177 = (v452 + (v443 * (v453 - v452)));
  if ((v177 & 0x80000000) == 0)
  {
    v454 = _mxi_log();
    if (os_log_type_enabled(v454, OS_LOG_TYPE_DEBUG))
    {
      *v501 = 0;
      _os_log_impl(&dword_22F9C3000, v454, OS_LOG_TYPE_DEBUG, "[Tiled] [TiledProcessor] Chose number of slices from the look up table", v501, 2u);
    }

    goto LABEL_31;
  }

  v151 = 0;
LABEL_146:

  return v151;
}

void sub_22F9E60AC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_22F9E88B8(a1, v5);
  }
}

void sub_22F9E6134(uint64_t a1, void *a2)
{
  v152 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MXISignpostLogSystem();
  v5 = _MXISignpostCreate(v4);
  v6 = _MXISignpostLogSystem();
  v146 = 0u;
  v147 = 0u;
  core::get_info(&v146);
  v7 = v6;
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 134218752;
    *&buf[4] = v146.i64[0];
    *&buf[12] = 2048;
    *&buf[14] = v146.i64[1];
    *&buf[22] = 2048;
    v149 = v147;
    v150 = 2048;
    v151 = *(&v147 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MXI_MEMORY_DYNAMIC_ALLOCATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }

  v13 = *(objc_msgSend_contents(*(*(a1 + 232) + 184), v9, v10, v11, v12) + 4);
  if (v13 != *(objc_msgSend_contents(*(*(a1 + 232) + 176), v14, v15, v16, v17) + 4))
  {
    v22 = *(a1 + 232);
    if (!*(v22 + 472))
    {
      v23 = objc_msgSend_contents(*(v22 + 184), v18, v19, v20, v21);
      v28 = *(a1 + 232);
      v29 = *(v28 + 348) / *(v28 + 352) * (*(v28 + 348) / *(v28 + 352));
      v30 = (*(v23 + 4) + v29 - 1) / v29;
      if (v30 > (*(v28 + 120) - *(v28 + 112)) >> 3)
      {
        v31 = objc_opt_new();
        objc_msgSend_setTextureType_(v31, v32, 2, v33, v34);
        objc_msgSend_setWidth_(v31, v35, *(*(a1 + 232) + 348), v36, v37);
        objc_msgSend_setHeight_(v31, v38, *(*(a1 + 232) + 348), v39, v40);
        v44 = *(a1 + 232);
        if (*(v44 + 409) == 1)
        {
          objc_msgSend_setMipmapLevelCount_(v31, v41, *(v44 + 356), v42, v43);
        }

        else
        {
          objc_msgSend_setMipmapLevelCount_(v31, v41, 1, v42, v43);
        }

        objc_msgSend_setPixelFormat_(v31, v45, *(*(a1 + 232) + 328), v46, v47);
        objc_msgSend_setUsage_(v31, v48, 19, v49, v50);
        while (v30 > (*(*(a1 + 232) + 120) - *(*(a1 + 232) + 112)) >> 3)
        {
          objc_msgSend_setStorageMode_(v31, v51, 2, v52, v53);
          *buf = objc_msgSend_newSharedTextureWithDescriptor_(**(a1 + 232), v54, v31, v55, v56);
          if (!*buf)
          {
            obj = 0;
            objc_msgSend_fillError_withDescription_(MXIInternalError, v57, &obj, @"Failed creating dynamic atlas slice texture", v58);
            objc_storeStrong((*(a1 + 232) + 472), obj);
          }

          sub_22F9E6854((*(a1 + 232) + 112), buf);
          v146.i64[0] = 0;
          v60 = *(a1 + 232);
          v61 = *(v60 + 336);
          if (*(v60 + 409) == 1)
          {
            v62 = objc_msgSend_newCompressedTextureViewWithPixelFormat_textureType_level_slice_(*buf, v59, v61, 2, 0, 0);
          }

          else
          {
            v62 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*buf, v59, v61, 2, 0, 1, 0, 1);
          }

          v63 = v146.i64[0];
          v146.i64[0] = v62;

          if (!v146.i64[0])
          {
            v144 = 0;
            objc_msgSend_fillError_withDescription_(MXIInternalError, v64, &v144, @"Failed creating dynamic atlas slice view", v65);
            objc_storeStrong((*(a1 + 232) + 472), v144);
          }

          sub_22F9E6854((*(a1 + 232) + 136), &v146);
          if ((((*(*(a1 + 232) + 120) - *(*(a1 + 232) + 112)) >> 3) - 1) <= 0x1FF)
          {
            *(*(*(a1 + 232) + 304) + *(*(a1 + 232) + 120) - *(*(a1 + 232) + 112) - 8) = objc_msgSend_gpuResourceID(v146.i64[0], v66, v67, v68, v69);
          }
        }

        v28 = *(a1 + 232);
      }

      v70 = objc_msgSend_commandBuffer(*(v28 + 440), v24, v25, v26, v27);
      v75 = objc_msgSend_computeCommandEncoder(v70, v71, v72, v73, v74);
      objc_msgSend_setLabel_(v75, v76, @"MXI: DynamicAtlas ComputeCommandEncoder", v77, v78);
      objc_msgSend_pushDebugGroup_(v75, v79, @"copy_tiles", v80, v81);
      objc_msgSend_setComputePipelineState_(v75, v82, *(*(a1 + 232) + 24), v83, v84);
      objc_msgSend_useResources_count_usage_(v75, v85, *(*(a1 + 232) + 136), (*(*(a1 + 232) + 144) - *(*(a1 + 232) + 136)) >> 3, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v75, v86, *(*(a1 + 232) + 168), 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v75, v87, *(*(a1 + 232) + 176), 0, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v75, v88, *(*(a1 + 232) + 208), 0, 7);
      objc_msgSend_setTexture_atIndex_(v75, v89, *(a1 + 224), 0, v90);
      objc_msgSend_setBytes_length_atIndex_(v75, v91, *(*(a1 + 232) + 304), 4096, 16);
      objc_msgSend_setBytes_length_atIndex_(v75, v92, a1 + 32, 192, 5);
      v95 = *(a1 + 232);
      if (*(v95 + 409) == 1)
      {
        v96 = *(v95 + 200);
        *buf = ((*(v95 + 352) >> 2) * (*(v95 + 352) >> 2));
        *&buf[8] = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v75, v93, v96, 12, buf);
      }

      else
      {
        v101 = *(a1 + 240);
        *&v102 = v101;
        *(&v102 + 1) = HIDWORD(v101);
        *buf = v102;
        *&buf[16] = 1;
        v146 = vdupq_n_s64(0x10uLL);
        *&v147 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v75, v93, buf, &v146, v94);
      }

      objc_msgSend_popDebugGroup(v75, v97, v98, v99, v100);
      objc_msgSend_endEncoding(v75, v103, v104, v105, v106);
      objc_msgSend_commit(v70, v107, v108, v109, v110);
      objc_msgSend_waitUntilCompleted(v70, v111, v112, v113, v114);
      if (objc_msgSend_status(v70, v115, v116, v117, v118) != 4)
      {
        v143 = 0;
        v123 = objc_msgSend_error(v70, v119, v120, v121, v122);
        v128 = objc_msgSend_debugDescription(v123, v124, v125, v126, v127);
        v129 = v128;
        v134 = objc_msgSend_UTF8String(v128, v130, v131, v132, v133);
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v135, &v143, @"DynamicAtlas command buffer failed with error: %s", v136, v134);
        v137 = v143;

        v138 = *(a1 + 232);
        v139 = *(v138 + 472);
        *(v138 + 472) = v137;
      }
    }
  }

  objc_msgSend_setSignaledValue_(v3, v18, *(a1 + 248), v20, v21);
  v140 = _MXISignpostLogSystem();
  v146 = 0u;
  v147 = 0u;
  core::get_info(&v146);
  v141 = v140;
  v142 = v141;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v141))
  {
    *buf = 134218752;
    *&buf[4] = v146.i64[0];
    *&buf[12] = 2048;
    *&buf[14] = v146.i64[1];
    *&buf[22] = 2048;
    v149 = v147;
    v150 = 2048;
    v151 = *(&v147 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v142, OS_SIGNPOST_INTERVAL_END, v5, "MXI_MEMORY_DYNAMIC_ALLOCATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }
}

id sub_22F9E6854(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22F9C7AD4();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22F9E1F60(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22F9E89B8(a1, v13);
    v7 = a1[1];
    result = sub_22F9E8A68(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22F9E6934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22F9E8A68(va);
  _Unwind_Resume(a1);
}

void tiled::Processor::GetMesh(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v170 = *MEMORY[0x277D85DE8];
  v6 = _mxi_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v6, OS_LOG_TYPE_DEFAULT, "[Tiled] [TiledProcessor] Generating mesh", buf, 2u);
  }

  v7 = _MXISignpostLogSystem();
  v8 = _MXISignpostCreate(v7);
  v9 = _MXISignpostLogSystem();
  v157 = 0u;
  v158 = 0u;
  core::get_info(&v157);
  v10 = v9;
  v11 = v10;
  v12 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 134218752;
    *&buf[4] = v157;
    *&buf[12] = 2048;
    *&buf[14] = *(&v157 + 1);
    *&buf[22] = 2048;
    *&buf[24] = v158;
    LOWORD(v160) = 2048;
    *(&v160 + 2) = *(&v158 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MXI_SIGNPOST_MESH_GENERATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }

  v17 = *a1;
  if (!*(*a1 + 168))
  {
    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  if (*(v17 + 411) == 1)
  {
    v18 = 1 << (*(v17 + 356) - 1);
    v19 = *(v17 + 352);
    v20 = *(v17 + 392);
    memset(buf, 0, sizeof(buf));
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    *buf = v19;
    *&buf[8] = v18;
    *&buf[24] = *(v17 + 360);
    v153 = v20;
    *(&v160 + 1) = v20;
    v21 = objc_msgSend_newCommandQueue(*v17, v13, v14, v15, v16);
    v26 = objc_msgSend_commandBuffer(v21, v22, v23, v24, v25);
    v31 = objc_msgSend_computeCommandEncoder(v26, v27, v28, v29, v30);
    objc_msgSend_setLabel_(v31, v32, @"MXI: Remove Layer Mesh Overlap", v33, v34);
    objc_msgSend_setComputePipelineState_(v31, v35, *(v17 + 104), v36, v37);
    objc_msgSend_setBytes_length_atIndex_(v31, v38, buf, 192, 5);
    objc_msgSend_setBuffer_offset_atIndex_(v31, v39, *(v17 + 280), 0, 17);
    objc_msgSend_setBuffer_offset_atIndex_(v31, v40, *(v17 + 232), 0, 10);
    v41 = v19 - v18 - 1;
    *&v157 = (v41 + v153) / (v19 - v18) + 1;
    *(&v157 + 1) = (v41 + HIDWORD(v153)) / (v19 - v18) + 1;
    *&v158 = 1;
    v155 = vdupq_n_s64(0x10uLL);
    v156 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v31, v42, &v157, &v155, v43);
    objc_msgSend_endEncoding(v31, v44, v45, v46, v47);
    objc_msgSend_commit(v26, v48, v49, v50, v51);
    objc_msgSend_waitUntilCompleted(v26, v52, v53, v54, v55);
    if (objc_msgSend_status(v26, v56, v57, v58, v59) != 4)
    {
      v129 = objc_msgSend_error(v26, v60, v61, v62, v63);
      v134 = objc_msgSend_debugDescription(v129, v130, v131, v132, v133);
      v135 = v134;
      v140 = objc_msgSend_UTF8String(v134, v136, v137, v138, v139);
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v141, a2, @"Mesh processing command buffer failed with error: %s", v142, v140);

      *(a3 + 96) = 0;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;

      return;
    }
  }

  v64 = objc_msgSend_contents(*(v17 + 184), v13, v14, v15, v16);
  spid = v8;
  v65 = v64[1];
  v66 = v64[2];
  v67 = v64[3];
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v146 = a3;
  sub_22F9C7754((a3 + 72), v66);
  sub_22F9CC4E4((a3 + 48), v66);
  v68 = (4 * v65);
  sub_22F9CC4B4((a3 + 24), v68);
  sub_22F9CC484(a3, v68);
  *(a3 + 96) = v67;
  v151 = *(a3 + 48);
  v152 = *(a3 + 72);
  v73 = objc_msgSend_contents(*(v17 + 264), v69, v70, v71, v72);
  v78 = objc_msgSend_contents(*(v17 + 272), v74, v75, v76, v77);
  v83 = objc_msgSend_contents(*(v17 + 248), v79, v80, v81, v82);
  v145 = v68;
  v88 = objc_msgSend_contents(*(v17 + 256), v84, v85, v86, v87);
  v144 = v12;
  v93 = objc_msgSend_contents(*(v17 + 192), v89, v90, v91, v92);
  v98 = v151;
  if (*(v17 + 344))
  {
    v99 = 6;
  }

  else
  {
    v99 = 1;
  }

  v100 = *(v17 + 360);
  v101 = (v99 * v100 - 1);
  v154 = v17;
  v102 = v152;
  v150 = v83;
  if ((v101 & 0x80000000) == 0)
  {
    v103 = v73;
    v104 = 0;
    if (*(v17 + 415))
    {
      v105 = 2;
    }

    else
    {
      v105 = 0;
    }

    v148 = v152 + 4 * v67;
    v149 = v73;
    v147 = v151 + 12 * v67;
    v106 = v101 + 1;
    v107 = 2 * v99 * v100 - 2;
    v108 = (v93 + 12 * v101 + 8);
    do
    {
      v109 = v88;
      v110 = v78;
      v111 = (v107 * *(v154 + 364));
      v112 = *v108;
      memcpy((v102 + 4 * v104), (v103 + 4 * v111), 4 * v112);
      v113 = (v98 + 12 * v104);
      v114 = v111 + 2 * v111;
      memcpy(v113, (v150 + 4 * v114), 12 * v112);
      v104 += v112;
      v115 = (*(v108 - 1) - *v108);
      v116 = (v110 + 4 * v111);
      v78 = v110;
      v88 = v109;
      memcpy((v148 + 4 * v105), v116, 4 * v115);
      v117 = (v109 + 4 * v114);
      v98 = v151;
      memcpy((v147 + 12 * v105), v117, 4 * (v115 + 2 * v115));
      v103 = v149;
      v102 = v152;
      v105 += v115;
      v107 -= 2;
      v108 -= 3;
      --v106;
    }

    while (v106);
  }

  v118 = *v146;
  v119 = objc_msgSend_contents(*(v154 + 232), v94, v95, v96, v97);
  memcpy(v118, v119, 16 * v145);
  v120 = *(v146 + 24);
  v125 = objc_msgSend_contents(*(v154 + 240), v121, v122, v123, v124);
  memcpy(v120, v125, 8 * v145);
  v126 = _MXISignpostLogSystem();
  v157 = 0u;
  v158 = 0u;
  core::get_info(&v157);
  v127 = v126;
  v128 = v127;
  if (v144 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
  {
    *buf = 134218752;
    *&buf[4] = v157;
    *&buf[12] = 2048;
    *&buf[14] = *(&v157 + 1);
    *&buf[22] = 2048;
    *&buf[24] = v158;
    LOWORD(v160) = 2048;
    *(&v160 + 2) = *(&v158 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v128, OS_SIGNPOST_INTERVAL_END, spid, "MXI_SIGNPOST_MESH_GENERATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }
}

uint64_t tiled::Processor::GetAtlas(uint64_t *a1, void *a2, _DWORD *a3, int a4, int a5, unsigned __int8 a6, void *a7, float a8)
{
  v299 = *MEMORY[0x277D85DE8];
  v15 = _mxi_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v15, OS_LOG_TYPE_DEFAULT, "[Tiled] [TiledProcessor] Copying the atlas", buf, 2u);
  }

  log = _MXISignpostLogSystem();
  spid = _MXISignpostCreate(log);
  v16 = _MXISignpostLogSystem();
  *v293 = 0u;
  v294 = 0u;
  core::get_info(v293);
  v17 = v16;
  v18 = v17;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 134218752;
    *&buf[4] = *v293;
    *&buf[12] = 2048;
    *&buf[14] = *&v293[8];
    *&buf[22] = 2048;
    v296 = v294;
    v297 = 2048;
    v298 = *(&v294 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v18, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MXI_SIGNPOST_ATLAS_COPY", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }

  v23 = *a1;
  v24 = *(v23 + 472);
  if (!v24)
  {
    if (!*(v23 + 168))
    {
      return 1;
    }

    v30 = *(objc_msgSend_contents(*(v23 + 184), v19, v20, v21, v22) + 4);
    v31 = *(v23 + 348) / *(v23 + 352);
    v284 = v30 + v31 * v31 - 1;
    v285 = v31 * v31;
    v32 = v284 / (v31 * v31);
    if (a3)
    {
      *a3 = v32;
    }

    if (!v30)
    {
      return 1;
    }

    if ((*(v23 + 404) & 1) == 0 && v32 > *(v23 + 400))
    {
      return 0;
    }

    v288 = v32;
    loga = objc_msgSend_newCommandQueue(*v23, v26, v27, v28, v29);
    v287 = objc_msgSend_commandBuffer(loga, v33, v34, v35, v36);
    if (*(v23 + 409) == 1)
    {
      v41 = *(v23 + 160);
      if (v41)
      {
        v42 = v41;
        *a2 = v42;
LABEL_32:
        v90 = v42;
        if (objc_msgSend_mipmapLevelCount(v90, v91, v92, v93, v94) >= 2)
        {
          v99 = objc_msgSend_computeCommandEncoder(v287, v95, v96, v97, v98);
          objc_msgSend_setLabel_(v99, v100, @"MXI: ASTC MipMapping ComputeCommandEncoder", v101, v102);
          objc_msgSend_setComputePipelineState_(v99, v103, *(v23 + 32), v104, v105);
          objc_msgSend_setBytes_length_atIndex_(v99, v106, v23 + 380, 4, 0);
          v286 = vdupq_n_s64(8uLL);
          for (i = 1; objc_msgSend_mipmapLevelCount(v90, v107, v108, v109, v110) > i; ++i)
          {
            if (v285 <= v284)
            {
              v112 = 0;
              v113 = *(v23 + 348) >> i >> 2;
              while (1)
              {
                v116 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v90, v107, 186, 2, i - 1, 1, v112, 1);
                if (!v116)
                {
                  objc_msgSend_fillError_withDescription_(MXIInternalError, v114, a7, @"Failed creating source texture view for compression.", v115);
                  goto LABEL_53;
                }

                v119 = objc_msgSend_newCompressedTextureViewWithPixelFormat_textureType_level_slice_(v90, v114, *(v23 + 336), 2, i, v112);
                if (!v119)
                {
                  break;
                }

                objc_msgSend_setTexture_atIndex_(v99, v117, v119, 0, v118);
                objc_msgSend_setTexture_atIndex_(v99, v120, v116, 1, v121);
                *buf = v113;
                *&buf[8] = v113;
                *&buf[16] = 1;
                *v293 = v286;
                *&v294 = 1;
                objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v99, v122, buf, v293, v123);

                if (++v112 >= v288)
                {
                  goto LABEL_40;
                }
              }

              objc_msgSend_fillError_withDescription_(MXIInternalError, v117, a7, @"Failed creating destination texture view for compression.", v118);
              goto LABEL_52;
            }

LABEL_40:
            ;
          }

          objc_msgSend_endEncoding(v99, v107, v108, v109, v110);
          objc_msgSend_commit(v287, v251, v252, v253, v254);
          objc_msgSend_waitUntilCompleted(v287, v255, v256, v257, v258);
          if (objc_msgSend_status(v287, v259, v260, v261, v262) == 4)
          {

            goto LABEL_81;
          }

          v116 = objc_msgSend_error(v287, v263, v264, v265, v266);
          v275 = objc_msgSend_debugDescription(v116, v271, v272, v273, v274);
          v276 = v275;
          v281 = objc_msgSend_UTF8String(v275, v277, v278, v279, v280);
          objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v282, a7, @"ASTC MipMapping command buffer failed with error: %s", v283, v281);

LABEL_52:
LABEL_53:

          goto LABEL_76;
        }

LABEL_81:

LABEL_82:
        v267 = _MXISignpostLogSystem();
        *v293 = 0u;
        v294 = 0u;
        core::get_info(v293);
        v268 = v267;
        v269 = v268;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v268))
        {
          *buf = 134218752;
          *&buf[4] = *v293;
          *&buf[12] = 2048;
          *&buf[14] = *&v293[8];
          *&buf[22] = 2048;
          v296 = v294;
          v297 = 2048;
          v298 = *(&v294 + 1);
          _os_signpost_emit_with_name_impl(&dword_22F9C3000, v269, OS_SIGNPOST_INTERVAL_END, spid, "MXI_SIGNPOST_ATLAS_COPY", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
        }

        v25 = 1;
        goto LABEL_86;
      }

      v43 = objc_msgSend_blitCommandEncoder(v287, v37, v38, v39, v40);
      objc_msgSend_setLabel_(v43, v53, @"MXI: Atlas Packing BlitCommandEncoder", v54, v55);
      v56 = objc_opt_new();
      objc_msgSend_setTextureType_(v56, v57, 3, v58, v59);
      objc_msgSend_setWidth_(v56, v60, *(v23 + 348), v61, v62);
      objc_msgSend_setHeight_(v56, v63, *(v23 + 348), v64, v65);
      objc_msgSend_setMipmapLevelCount_(v56, v66, *(v23 + 356), v67, v68);
      objc_msgSend_setArrayLength_(v56, v69, v288, v70, v71);
      objc_msgSend_setPixelFormat_(v56, v72, *(v23 + 328), v73, v74);
      objc_msgSend_setUsage_(v56, v75, 19, v76, v77);
      objc_msgSend_setStorageMode_(v56, v78, 2, v79, v80);
      v84 = objc_msgSend_newSharedTextureWithDescriptor_(*v23, v81, v56, v82, v83);
      *a2 = v84;
      if (v84)
      {
        if (v285 <= v284)
        {
          v89 = 0;
          do
          {
            objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount_(v43, v85, *(*(v23 + 112) + 8 * v89), 0, 0, *a2, v89, 0, 1, 1);
            ++v89;
          }

          while (v89 < v288);
        }

        objc_msgSend_endEncoding(v43, v85, v86, v87, v88);

        v42 = *a2;
        goto LABEL_32;
      }

      goto LABEL_64;
    }

    if (a4)
    {
      v43 = objc_msgSend_blitCommandEncoder(v287, v37, v38, v39, v40);
      objc_msgSend_setLabel_(v43, v44, @"MXI: MipMapping BlitCommandEncoder", v45, v46);
      v47 = *(v23 + 160);
      if (v47)
      {
        v48 = v47;
        *a2 = v48;
      }

      else
      {
        v56 = objc_opt_new();
        objc_msgSend_setTextureType_(v56, v166, 3, v167, v168);
        objc_msgSend_setWidth_(v56, v169, *(v23 + 348), v170, v171);
        objc_msgSend_setHeight_(v56, v172, *(v23 + 348), v173, v174);
        objc_msgSend_setMipmapLevelCount_(v56, v175, *(v23 + 356), v176, v177);
        objc_msgSend_setArrayLength_(v56, v178, v288, v179, v180);
        objc_msgSend_setPixelFormat_(v56, v181, 71, v182, v183);
        objc_msgSend_setUsage_(v56, v184, 3, v185, v186);
        objc_msgSend_setStorageMode_(v56, v187, 2, v188, v189);
        v193 = objc_msgSend_newSharedTextureWithDescriptor_(*v23, v190, v56, v191, v192);
        *a2 = v193;
        if (!v193)
        {
LABEL_64:
          objc_msgSend_fillError_withDescription_(MXIInternalError, v85, a7, @"Failed creating atlas.", v88);

          goto LABEL_76;
        }

        if (v285 <= v284)
        {
          v194 = 0;
          do
          {
            objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount_(v43, v85, *(*(v23 + 136) + 8 * v194), 0, 0, *a2, v194, 0, 1, 1);
            ++v194;
          }

          while (v194 < v288);
        }

        v48 = *a2;
      }

      v195 = v48;
      if (objc_msgSend_mipmapLevelCount(v195, v196, v197, v198, v199) >= 2)
      {
        objc_msgSend_generateMipmapsForTexture_(v43, v200, v195, v202, v203);
      }

      objc_msgSend_endEncoding(v43, v200, v201, v202, v203);
      objc_msgSend_commit(v287, v204, v205, v206, v207);
      objc_msgSend_waitUntilCompleted(v287, v208, v209, v210, v211);
      if (objc_msgSend_status(v287, v212, v213, v214, v215) == 4)
      {

        goto LABEL_82;
      }

      v220 = objc_msgSend_error(v287, v216, v217, v218, v219);
      v225 = objc_msgSend_debugDescription(v220, v221, v222, v223, v224);
      v226 = v225;
      v231 = objc_msgSend_UTF8String(v225, v227, v228, v229, v230);
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v232, a7, @"MipMapping command buffer failed with error: %s", v233, v231);

LABEL_76:
      v25 = 0;
LABEL_86:

      return v25;
    }

    *buf = 0;
    if (a5)
    {
      v49 = a6 >> 4;
      v50 = a6 & 0xF;
      v51 = *(v23 + 160);
      if (!v51)
      {
        v52 = image::ToASTC(*(v23 + 112), v288, v49, v50, *(v23 + 376), *(v23 + 356), *(v23 + 380));
LABEL_67:
        *a2 = v52;
LABEL_70:
        if (v52)
        {
          sub_22F9C7D28(buf, 0);
          goto LABEL_82;
        }

        v234 = _mxi_log();
        if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
        {
          *v293 = 0;
          _os_log_impl(&dword_22F9C3000, v234, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:1300] Could not compress to ASTC", v293, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v235, a7, @"Could not compress to ASTC", v236);
        goto LABEL_75;
      }
    }

    else
    {
      if (*(v23 + 372) >= 2u)
      {
        sub_22F9E7C78();
      }

      v49 = a6 >> 4;
      LODWORD(v50) = a6 & 0xF;
      v51 = *(v23 + 160);
      if (!v51)
      {
        v52 = image::ToASTC(*(v23 + 112), v288, v49, v50, *buf, *(v23 + 356), a8);
        goto LABEL_67;
      }
    }

    v124 = objc_msgSend_pixelFormat(v51, v37, v38, v39, v40);
    v126 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v51, v125, v124, 3, 0, *(v23 + 356), 0, v288);
    *a2 = v126;
    if (v126)
    {
      v129 = v126;
      if (objc_msgSend_mipmapLevelCount(v129, v130, v131, v132, v133) < 2)
      {
LABEL_48:
        v165 = *a2;
        if (a5)
        {
          image::ToASTC(v165, v49, v50, *(v23 + 376), *(v23 + 380));
        }

        else
        {
          image::ToASTC(v165, v49, v50, *buf, a8);
        }
        *a2 = ;

        v52 = *a2;
        goto LABEL_70;
      }

      v138 = objc_msgSend_blitCommandEncoder(v287, v134, v135, v136, v137);
      objc_msgSend_setLabel_(v138, v139, @"MXI: MipMapping BlitCommandEncoder", v140, v141);
      objc_msgSend_generateMipmapsForTexture_(v138, v142, v129, v143, v144);
      objc_msgSend_endEncoding(v138, v145, v146, v147, v148);
      objc_msgSend_commit(v287, v149, v150, v151, v152);
      objc_msgSend_waitUntilCompleted(v287, v153, v154, v155, v156);
      if (objc_msgSend_status(v287, v157, v158, v159, v160) == 4)
      {

        goto LABEL_48;
      }

      v237 = objc_msgSend_error(v287, v161, v162, v163, v164);
      v242 = objc_msgSend_debugDescription(v237, v238, v239, v240, v241);
      v243 = v242;
      v248 = objc_msgSend_UTF8String(v242, v244, v245, v246, v247);
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v249, a7, @"MipMapping command buffer failed with error: %s", v250, v248);
    }

    else
    {
      objc_msgSend_fillError_withDescription_(MXIInternalError, v127, a7, @"Failed creating atlas.", v128);
    }

LABEL_75:
    sub_22F9C7D28(buf, 0);
    goto LABEL_76;
  }

  if (!a7)
  {
    return 0;
  }

  v25 = 0;
  *a7 = v24;
  return v25;
}

uint64_t tiled::Processor::GetAtlas(uint64_t *a1, void ***a2, int a3, char a4, unsigned __int8 a5, void *a6, float a7)
{
  v207 = *MEMORY[0x277D85DE8];
  v13 = _mxi_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v13, OS_LOG_TYPE_DEFAULT, "[Tiled] [TiledProcessor] Copying the atlas", buf, 2u);
  }

  v14 = _MXISignpostLogSystem();
  v15 = _MXISignpostCreate(v14);
  v16 = _MXISignpostLogSystem();
  *v201 = 0u;
  v202 = 0u;
  core::get_info(v201);
  v17 = v16;
  v18 = v17;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 134218752;
    *&buf[4] = *v201;
    *&buf[12] = 2048;
    *&buf[14] = *&v201[8];
    *&buf[22] = 2048;
    v204 = v202;
    v205 = 2048;
    v206 = *(&v202 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "MXI_SIGNPOST_ATLAS_COPY", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }

  v23 = *a1;
  v24 = *(*a1 + 472);
  if (!v24)
  {
    if (!*(v23 + 168))
    {
      return 1;
    }

    v31 = *(objc_msgSend_contents(*(v23 + 184), v19, v20, v21, v22) + 4);
    if (!v31)
    {
      return 1;
    }

    v32 = *(v23 + 348) / *(v23 + 352) * (*(v23 + 348) / *(v23 + 352));
    v197 = v31 + v32 - 1;
    v198 = v32;
    v33 = v197 / v32;
    if ((*(v23 + 404) & 1) == 0 && v33 > *(v23 + 400))
    {
      return 0;
    }

    v34 = *(v23 + 112);
    v35 = (*(v23 + 120) - v34) >> 3;
    if (v35 < v33)
    {
      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v27, a6, @"Mismatched number of atlas slices (%zu) needing compression, expected (%d)", v30, v35, v33);
      return 0;
    }

    if (v32 <= v197)
    {
      v36 = 0;
      do
      {
        if (!v34[v36])
        {
          objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v27, a6, @"Invalid atlas slice texture (%d)", v30, v36);
          return 0;
        }

        if (!*(*(v23 + 136) + 8 * v36))
        {
          objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v27, a6, @"Invalid atlas slice view (%d)", v30, v36);
          return 0;
        }

        ++v36;
      }

      while (v36 < v33);
    }

    if (*(v23 + 409) == 1)
    {
      v193 = objc_msgSend_newCommandQueue(*v23, v27, v28, v29, v30);
      v45 = objc_msgSend_commandBuffer(v193, v37, v38, v39, v40);
      if (v198 <= v197)
      {
        v46 = 0;
        v47 = 0;
        do
        {
          sub_22F9E6854(a2, (*(v23 + 112) + v46));
          ++v47;
          v46 += 8;
        }

        while (v47 < v33);
      }

      if (objc_msgSend_mipmapLevelCount(**a2, v41, v42, v43, v44) >= 2)
      {
        v192 = v45;
        v195 = objc_msgSend_computeCommandEncoder(v45, v48, v49, v50, v51);
        objc_msgSend_setLabel_(v195, v52, @"MXI: ASTC MipMapping ComputeCommandEncoder", v53, v54);
        objc_msgSend_setComputePipelineState_(v195, v55, *(v23 + 32), v56, v57);
        v194 = vdupq_n_s64(8uLL);
        for (i = 1; ; i = v196 + 1)
        {
          v196 = i;
          if (objc_msgSend_mipmapLevelCount(**a2, v58, v59, v60, v61) <= i)
          {
            break;
          }

          if (v198 <= v197)
          {
            v63 = 0;
            v64 = *(v23 + 348) >> v196 >> 2;
            while (1)
            {
              v67 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_((*a2)[v63], v58, 186, 2, (v196 - 1), 1, 0, 1);
              if (!v67)
              {
                objc_msgSend_fillError_withDescription_(MXIInternalError, v65, a6, @"Failed creating source texture view for compression.", v66);
                goto LABEL_72;
              }

              v70 = objc_msgSend_newCompressedTextureViewWithPixelFormat_textureType_level_slice_((*a2)[v63], v65, *(v23 + 336), 2, v196, 0);
              if (!v70)
              {
                break;
              }

              objc_msgSend_setTexture_atIndex_(v195, v68, v70, 0, v69);
              objc_msgSend_setTexture_atIndex_(v195, v71, v67, 1, v72);
              objc_msgSend_setBytes_length_atIndex_(v195, v73, v23 + 380, 4, 0);
              *buf = v64;
              *&buf[8] = v64;
              *&buf[16] = 1;
              *v201 = v194;
              *&v202 = 1;
              objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v195, v74, buf, v201, v75);

              if (++v63 >= v33)
              {
                goto LABEL_34;
              }
            }

            objc_msgSend_fillError_withDescription_(MXIInternalError, v68, a6, @"Failed creating destination texture view for compression.", v69);
            goto LABEL_71;
          }

LABEL_34:
          ;
        }

        objc_msgSend_endEncoding(v195, v58, v59, v60, v61);
        objc_msgSend_commit(v192, v160, v161, v162, v163);
        objc_msgSend_waitUntilCompleted(v192, v164, v165, v166, v167);
        if (objc_msgSend_status(v192, v168, v169, v170, v171) == 4)
        {

          v45 = v192;
          goto LABEL_81;
        }

        v67 = objc_msgSend_error(v192, v172, v173, v174, v175);
        v183 = objc_msgSend_debugDescription(v67, v179, v180, v181, v182);
        v184 = v183;
        v189 = objc_msgSend_UTF8String(v183, v185, v186, v187, v188);
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v190, a6, @"MipMapping command buffer failed with error: %s", v191, v189);

LABEL_71:
LABEL_72:

        return 0;
      }

LABEL_81:

      goto LABEL_82;
    }

    if (a3)
    {
      v76 = objc_msgSend_newCommandQueue(*v23, v27, v28, v29, v30);
      v77 = objc_opt_new();
      objc_msgSend_setTextureType_(v77, v78, 2, v79, v80);
      objc_msgSend_setWidth_(v77, v81, *(v23 + 348), v82, v83);
      objc_msgSend_setHeight_(v77, v84, *(v23 + 348), v85, v86);
      objc_msgSend_setMipmapLevelCount_(v77, v87, *(v23 + 356), v88, v89);
      objc_msgSend_setPixelFormat_(v77, v90, 71, v91, v92);
      objc_msgSend_setUsage_(v77, v93, 3, v94, v95);
      objc_msgSend_setStorageMode_(v77, v96, 2, v97, v98);
      if (v198 <= v197)
      {
        v103 = 0;
        for (j = 0; j < v33; ++j)
        {
          if (*(v23 + 404) == 1)
          {
            *buf = objc_msgSend_newSharedTextureWithDescriptor_(*v23, v99, v77, v101, v102);
            if (!*buf)
            {
              objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v105, a6, @"Failed creating atlas slice (%d)", v106, j);

              return 0;
            }

            sub_22F9E6854(a2, buf);
          }

          else
          {
            sub_22F9E6854(a2, (*(v23 + 112) + v103));
          }

          v103 += 8;
        }
      }

      v107 = objc_msgSend_commandBuffer(v76, v99, v100, v101, v102);
      v112 = objc_msgSend_blitCommandEncoder(v107, v108, v109, v110, v111);
      objc_msgSend_setLabel_(v112, v113, @"MXI: MipMapping BlitCommandEncoder", v114, v115);
      if (v198 <= v197)
      {
        v120 = 0;
        do
        {
          if (*(v23 + 404) == 1)
          {
            objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount_(v112, v116, *(*(v23 + 136) + 8 * v120), 0, 0, (*a2)[v120], 0, 0, 1, 1);
          }

          if (objc_msgSend_mipmapLevelCount(**a2, v116, v117, v118, v119) >= 2)
          {
            objc_msgSend_generateMipmapsForTexture_(v112, v116, (*a2)[v120], v118, v119);
          }

          ++v120;
        }

        while (v120 < v33);
      }

      objc_msgSend_endEncoding(v112, v116, v117, v118, v119);
      objc_msgSend_commit(v107, v121, v122, v123, v124);
      objc_msgSend_waitUntilCompleted(v107, v125, v126, v127, v128);
      if (objc_msgSend_status(v107, v129, v130, v131, v132) != 4)
      {
        v143 = objc_msgSend_error(v107, v133, v134, v135, v136);
        v148 = objc_msgSend_debugDescription(v143, v144, v145, v146, v147);
        v149 = v148;
        v154 = objc_msgSend_UTF8String(v148, v150, v151, v152, v153);
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v155, a6, @"MipMapping command buffer failed with error: %s", v156, v154);

        return 0;
      }

      goto LABEL_82;
    }

    v200 = 0;
    if (a4)
    {
      image::ToASTCs(v34, v33, a5 >> 4, a5 & 0xF, *(v23 + 376), *(v23 + 356), buf, *(v23 + 380));
      sub_22F9E8ABC(a2);
      *a2 = *buf;
      a2[2] = *&buf[16];
      memset(buf, 0, sizeof(buf));
      *v201 = buf;
      sub_22F9DC140(v201);
      if (v33 != a2[1] - *a2)
      {
        v137 = _mxi_log();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v137, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:1489] Could not compress to ASTC", buf, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v138, a6, @"Could not compress to ASTC", v139);
LABEL_78:
        sub_22F9C7D28(&v200, 0);
        return 0;
      }
    }

    else
    {
      v140 = *(v23 + 372);
      if (v140 >= 2)
      {
        if (v140 <= 0x20)
        {
          v141 = v140 - 1;
        }

        else
        {
          v141 = 31;
        }

        *v201 = v141;
        sub_22F9E7C78();
      }

      if (v32 <= v197)
      {
        v142 = 0;
        while (1)
        {
          *buf = image::ToASTC(*(*(v23 + 112) + 8 * v142), a5 >> 4, a5 & 0xF, v200, *(v23 + 356), a7);
          if (!*buf)
          {
            break;
          }

          sub_22F9E6854(a2, buf);

          if (++v142 >= v33)
          {
            goto LABEL_68;
          }
        }

        v157 = _mxi_log();
        if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
        {
          *v201 = 0;
          _os_log_impl(&dword_22F9C3000, v157, OS_LOG_TYPE_ERROR, "[Tiled/TiledProcessor.mm:1502] Could not compress to ASTC", v201, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v158, a6, @"Could not compress to ASTC", v159);
        goto LABEL_78;
      }
    }

LABEL_68:
    sub_22F9C7D28(&v200, 0);
LABEL_82:
    v176 = _MXISignpostLogSystem();
    *v201 = 0u;
    v202 = 0u;
    core::get_info(v201);
    v177 = v176;
    v178 = v177;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v177))
    {
      *buf = 134218752;
      *&buf[4] = *v201;
      *&buf[12] = 2048;
      *&buf[14] = *&v201[8];
      *&buf[22] = 2048;
      v204 = v202;
      v205 = 2048;
      v206 = *(&v202 + 1);
      _os_signpost_emit_with_name_impl(&dword_22F9C3000, v178, OS_SIGNPOST_INTERVAL_END, v15, "MXI_SIGNPOST_ATLAS_COPY", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
    }

    return 1;
  }

  if (!a6)
  {
    return 0;
  }

  v25 = v24;
  result = 0;
  *a6 = v24;
  return result;
}

void sub_22F9E88B8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22F9C7AD4();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22F9E1F60(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22F9E89B8(a1, v11);
    sub_22F9E8A68(v11);
  }
}

void sub_22F9E89A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22F9E8A68(va);
  _Unwind_Resume(a1);
}

void sub_22F9E89B8(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_22F9E8A68(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_22F9E8ABC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_22F9E8B20(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_22F9E8B6C(result);

    JUMPOUT(0x2319050F0);
  }

  return result;
}

uint64_t sub_22F9E8B6C(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    *(a1 + 312) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 136);
  sub_22F9DC140(&v4);
  v4 = (a1 + 112);
  sub_22F9DC140(&v4);

  return a1;
}

void sub_22F9E8CD8()
{
  if (__cxa_guard_acquire(qword_27DAD27A0))
  {
    unk_27DAD27B0 = xmmword_22FA081F0;
    unk_27DAD27C0 = xmmword_22FA08200;
    xmmword_27DAD27D0 = xmmword_22FA08210;
    unk_27DAD27E0 = xmmword_22FA08220;
    xmmword_27DAD27F0 = xmmword_22FA08230;
    unk_27DAD2800 = xmmword_22FA08240;
    xmmword_27DAD2810 = xmmword_22FA08250;
    unk_27DAD2820 = xmmword_22FA08260;
    xmmword_27DAD2830 = xmmword_22FA08270;
    unk_27DAD2840 = xmmword_22FA08280;
    xmmword_27DAD2850 = xmmword_22FA08290;
    unk_27DAD2860 = xmmword_22FA082A0;
    xmmword_27DAD2870 = xmmword_22FA082B0;
    unk_27DAD2880 = xmmword_22FA082C0;
    xmmword_27DAD2890 = xmmword_22FA082D0;
    unk_27DAD28A0 = xmmword_22FA082E0;
    xmmword_27DAD28B0 = xmmword_22FA082F0;
    unk_27DAD28C0 = xmmword_22FA08300;
    __cxa_guard_release(qword_27DAD27A0);
  }
}

void sub_22F9E9FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  v37 = *(v35 - 128);
  if (v37)
  {
    *(v35 - 120) = v37;
    operator delete(v37);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void *sub_22F9EA128(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_22F9D6F14(result, a2);
  }

  return result;
}

void sub_22F9EA184(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void init_block_size_descriptor(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    operator new();
  }

  operator new();
}

uint64_t sub_22F9EB78C(uint64_t result, unint64_t *a2)
{
  v2 = result;
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(result + 3);
  if (v3 > 0x40)
  {
    astc::rand_init(v25, a2);
    v21 = *(v2 + 3);
    if (*(v2 + 3))
    {
      bzero(v24, v21);
    }

    v22 = 0;
    do
    {
      result = astc::rand(v25, v21);
      v23 = result % *(v2 + 3);
      if ((v24[v23] & 1) == 0)
      {
        *(v2 + 14717360 + v22++) = v23;
        v24[v23] = 1;
      }
    }

    while (v22 < 0x40);
  }

  else if (*(result + 3))
  {
    v4 = 0;
    v5 = (v3 + 15) & 0xF0;
    v6 = vdupq_n_s64(v3 - 1);
    v7 = result + 14717367;
    v8 = xmmword_22FA08320;
    v9 = xmmword_22FA08330;
    v10 = xmmword_22FA08340;
    v11 = xmmword_22FA08350;
    v12 = xmmword_22FA08360;
    v13 = xmmword_22FA08370;
    v14 = xmmword_22FA07DD0;
    v15 = xmmword_22FA07DE0;
    v16 = vdupq_n_s64(0x10uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v6, v15));
      if (vuzp1_s8(vuzp1_s16(v17, *v6.i8), *v6.i8).u8[0])
      {
        *(v7 + v4 - 7) = v4;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v6), *&v6).i8[1])
      {
        *(v7 + v4 - 6) = v4 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v14))), *&v6).i8[2])
      {
        *(v7 + v4 - 5) = v4 | 2;
        *(v7 + v4 - 4) = v4 | 3;
      }

      v18 = vmovn_s64(vcgeq_u64(v6, v13));
      if (vuzp1_s8(*&v6, vuzp1_s16(v18, *&v6)).i32[1])
      {
        *(v7 + v4 - 3) = v4 | 4;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v18, *&v6)).i8[5])
      {
        *(v7 + v4 - 2) = v4 | 5;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v12)))).i8[6])
      {
        *(v7 + v4 - 1) = v4 | 6;
        *(v7 + v4) = v4 | 7;
      }

      v19 = vmovn_s64(vcgeq_u64(v6, v11));
      if (vuzp1_s8(vuzp1_s16(v19, *v6.i8), *v6.i8).u8[0])
      {
        *(v7 + v4 + 1) = v4 | 8;
      }

      if (vuzp1_s8(vuzp1_s16(v19, *&v6), *&v6).i8[1])
      {
        *(v7 + v4 + 2) = v4 | 9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v10))), *&v6).i8[2])
      {
        *(v7 + v4 + 3) = v4 | 0xA;
        *(v7 + v4 + 4) = v4 | 0xB;
      }

      v20 = vmovn_s64(vcgeq_u64(v6, v9));
      if (vuzp1_s8(*&v6, vuzp1_s16(v20, *&v6)).i32[1])
      {
        *(v7 + v4 + 5) = v4 | 0xC;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v20, *&v6)).i8[5])
      {
        *(v7 + v4 + 6) = v4 | 0xD;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v8)))).i8[6])
      {
        *(v7 + v4 + 7) = v4 | 0xE;
        *(v7 + v4 + 8) = v4 | 0xF;
      }

      v13 = vaddq_s64(v13, v16);
      v4 += 16;
      v14 = vaddq_s64(v14, v16);
      v15 = vaddq_s64(v15, v16);
      v12 = vaddq_s64(v12, v16);
      v11 = vaddq_s64(v11, v16);
      v10 = vaddq_s64(v10, v16);
      v9 = vaddq_s64(v9, v16);
      v8 = vaddq_s64(v8, v16);
    }

    while (v5 != v4);
  }

  return result;
}

int32x4_t rgba_delta_unpack(int32x4_t *a1, int32x4_t *a2, uint32x4_t a3, int8x16_t a4)
{
  v4.i64[0] = 0x8000000080;
  v4.i64[1] = 0x8000000080;
  v5 = vorrq_s8(vshrq_n_u32(a3, 1uLL), vandq_s8(a4, v4));
  v6 = vshrq_n_u32(a4, 1uLL);
  v4.i64[0] = 0x3F0000003FLL;
  v4.i64[1] = 0x3F0000003FLL;
  v7.i64[0] = 0x2000000020;
  v7.i64[1] = 0x2000000020;
  v8 = vorrq_s8((*&vtstq_s32(v6, v7) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), vandq_s8(v6, v4));
  v9 = vaddq_s32(v8, v5);
  if (v8.i32[0] + v8.i32[1] + v8.i32[2] < 0)
  {
    v10.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v5, 2), v5), 1uLL).u64[0];
    v10.i64[1] = v5.i64[1];
    v5.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v9, 2), v9), 1uLL).u64[0];
    v5.i64[1] = v9.i64[1];
    v9 = v10;
  }

  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  *a1 = vminq_s32(vmaxq_s32(v5, 0), v11);
  result = vminq_s32(vmaxq_s32(v9, 0), v11);
  *a2 = result;
  return result;
}

__n128 *rgba_unpack(__n128 *result, __n128 *a2, int8x16_t a3, __n128 a4)
{
  v4 = vadd_s32(vadd_s32(vzip1_s32(*a3.i8, a4.n128_u64[0]), vzip2_s32(*a3.i8, a4.n128_u64[0])), vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL)));
  if (vcgt_s32(v4, vdup_lane_s32(v4, 1)).u8[0])
  {
    v5.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a3, 2), a3), 1uLL).u64[0];
    v5.n128_u64[1] = a3.u64[1];
    a3.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a4, 2), a4), 1uLL).u64[0];
    a3.i64[1] = a4.n128_i64[1];
    a4 = v5;
  }

  *result = a3;
  *a2 = a4;
  return result;
}

void unpack_color_endpoints(int a1, int a2, unsigned __int8 *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, __n128 *a7, __n128 a8, int32x4_t a9, int32x4_t a10, int32x4_t a11)
{
  *a4 = 0;
  *a5 = 0;
  switch(a2)
  {
    case 0:
      v17 = *a3;
      v18 = a3[1];
      goto LABEL_102;
    case 1:
      v113 = a3[1];
      v17 = v113 & 0xC0 | (*a3 >> 2);
      v18 = v17 + (v113 & 0x3F);
      if (v18 >= 0xFF)
      {
        v18 = 255;
      }

LABEL_102:
      a8.n128_u32[3] = 255;
      LODWORD(v114) = v17;
      DWORD1(v114) = v17;
      *(&v114 + 1) = v17 | 0xFF00000000;
      a8.n128_u32[0] = v18;
      *a6 = v114;
      a8.n128_u32[1] = v18;
      a8.n128_u32[2] = v18;
      goto LABEL_108;
    case 2:
      *a4 = 1;
      v37 = *a3;
      v38 = a3[1];
      v39 = 16 * v37 - 8;
      v40 = v38 >= v37;
      if (v38 >= v37)
      {
        v41 = v37 << 8;
      }

      else
      {
        v41 = (v38 << 8) | 0x80;
      }

      if (v40)
      {
        v42 = 16 * v38;
      }

      else
      {
        v42 = v39;
      }

      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = v41;
      a8.n128_u32[1] = v41;
      v43.n128_u32[3] = 30720;
      a8.n128_u32[2] = v41;
      v44 = 16 * v42;
      goto LABEL_42;
    case 3:
      *a4 = 1;
      v57 = *a3;
      v58 = *a3;
      v59 = a3[1];
      v60 = (16 * v59) & 0xF00 | (2 * v58);
      v61 = (16 * v59) & 0xE00 | (4 * (v58 & 0x7F));
      v62 = v57 >= 0;
      if (v57 < 0)
      {
        v63 = 2;
      }

      else
      {
        v63 = 1;
      }

      if (v62)
      {
        v64 = 30;
      }

      else
      {
        v64 = 124;
      }

      if (v62)
      {
        v61 = v60;
      }

      v65 = ((v59 << v63) & v64) + v61;
      if (v65 >= 0xFFF)
      {
        v65 = 4095;
      }

      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = 16 * v61;
      a8.n128_u32[1] = 16 * v61;
      v43.n128_u32[3] = 30720;
      a8.n128_u32[2] = 16 * v61;
      v44 = 16 * v65;
LABEL_42:
      v43.n128_u32[0] = v44;
      *a6 = a8;
      v43.n128_u32[1] = v44;
      goto LABEL_95;
    case 4:
      a8.n128_u8[0] = *a3;
      v21 = a8.n128_u64[0];
      v21.i8[2] = a3[2];
      v22 = vzip1_s16(v21, v21);
      v22.i16[2] = a8.n128_u16[0];
      a8.n128_u8[0] = a3[1];
      v23 = a8.n128_u64[0];
      v23.i8[2] = a3[3];
      v24 = vzip1_s16(v23, v23);
      v24.i16[2] = a8.n128_u16[0];
      v25 = vmovl_u16(v22);
      v26.i64[0] = 0xFF000000FFLL;
      v26.i64[1] = 0xFF000000FFLL;
      *a6 = vandq_s8(v25, v26);
      a8 = vandq_s8(vmovl_u16(v24), v26);
      goto LABEL_108;
    case 5:
      a8.n128_u8[0] = a3[1];
      a8.n128_u8[4] = a3[3];
      v115 = *&vtst_s32(a8.n128_u64[0], 0x4000000040) & 0xFFFFFF80FFFFFF80;
      *a9.i8 = vorr_s8(v115, vand_s8(a8.n128_u64[0], 0x7E0000007ELL));
      LOBYTE(v115) = *a3;
      BYTE4(v115) = a3[2];
      a8.n128_u64[0] = vorr_s8(vand_s8(vadd_s32(a8.n128_u64[0], a8.n128_u64[0]), 0x10000000100), vand_s8(v115, 0xFF000000FFLL));
      *a9.i8 = vmin_s32(vmax_s32(vsra_n_u32(vshr_n_s32(*a9.i8, 1uLL), a8.n128_u64[0], 1uLL), 0), 0xFF000000FFLL);
      v116 = vzip1q_s32(a9, a9);
      v116.i32[2] = a9.i32[0];
      a8.n128_u64[0] = vshr_n_u32(a8.n128_u64[0], 1uLL);
      v117 = vzip1q_s32(a8, a8);
      v117.i32[2] = a8.n128_u32[0];
      *a6 = v117;
      *a7 = v116;
      if (!a1)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 6:
      v126.i32[0] = *a3;
      v126.i32[1] = a3[1];
      v126.i64[1] = a3[2];
      v127 = v126;
      v127.n128_u32[3] = 255;
      v128 = vmulq_s32(vdupq_n_s32(a3[3]), v126);
      *a7 = v127;
      a8 = vshrq_n_s32(v128, 8uLL);
      a8.n128_u32[3] = 255;
      goto LABEL_112;
    case 7:
      *a4 = 1;
      v66 = *a3;
      v67 = a3[1];
      v68 = a3[2];
      v69 = a3[3];
      v70 = (v68 >> 4) & 8 | (v67 >> 5) & 4;
      v71 = v66 >> 6 == 3;
      if (v66 >> 6 == 3)
      {
        v72 = 5;
      }

      else
      {
        v72 = 4;
      }

      if (v66 >> 6 == 3)
      {
        v73 = 0;
      }

      else
      {
        v73 = v66 >> 6;
      }

      v62 = v70 == 12;
      v74 = v70 == 12;
      v75 = v70 >> 2;
      if (v62)
      {
        v75 = v73;
      }

      else
      {
        v72 = v66 >> 6;
      }

      v76 = (v67 >> 6) & 1;
      v77 = (v67 >> 5) & 1;
      v78 = (v68 >> 6) & 1;
      v79 = (v68 >> 5) & 1;
      v80 = (v69 >> 6) & 1;
      v81 = 1 << v72;
      v82 = v76 << 6;
      if (((1 << v72) & 0x30) == 0)
      {
        v82 = 0;
      }

      v83 = v82 & 0xFFFFFFE0 | v67 & 0x1F;
      v84 = 32 * v77;
      v85 = v78 << 6;
      if ((v81 & 0x30) == 0)
      {
        v85 = 0;
      }

      if ((v81 & 0x3A) == 0)
      {
        v84 = 0;
      }

      v86 = v83 | v84;
      v87 = v85 & 0xFFFFFFE0 | v68 & 0x1F;
      v88 = 32 * v79;
      if ((v81 & 0x3A) == 0)
      {
        v88 = 0;
      }

      v89 = v87 | v88;
      v90 = (16 * v81) & (v79 << 6);
      v91 = (v69 >> 1) & 0x40;
      if ((v81 & 0x3B) == 0)
      {
        v91 = 0;
      }

      v92 = v78 << 7;
      if (v72 > 3)
      {
        v92 = 0;
      }

      v93 = v77 << 8;
      v94 = v76 << 8;
      if ((v81 & 0xA) == 0)
      {
        v94 = 0;
      }

      if ((v81 & 5) == 0)
      {
        v93 = 0;
      }

      v95 = v76 << 9;
      if ((v81 & 5) == 0)
      {
        v95 = 0;
      }

      v96 = v79 << 10;
      if (v72)
      {
        v96 = 0;
      }

      v97 = dword_22FA08390[v72];
      v98 = (v92 & 0xFFFFFFC0 | v66 & 0x3F | v96 | v91 | v90 | (8 * v81) & (v80 << 7) | v93 | v94 | v95 | (16 * v69) & (v81 << 8) & 0x200 | (v81 << 9) & (v80 << 10)) << v97;
      v99 = v86 << v97;
      v100 = v89 << v97;
      v101 = !v74 || !v71;
      if (v74 && v71)
      {
        v102 = v100;
      }

      else
      {
        v102 = v98 - v100;
      }

      if (v101)
      {
        v103 = v98 - v99;
      }

      else
      {
        v103 = v99;
      }

      if (v75 == 1)
      {
        v104 = v98;
      }

      else
      {
        v104 = v103;
      }

      if (v75 == 1)
      {
        v105 = v103;
      }

      else
      {
        v105 = v98;
      }

      v106 = v75 == 2;
      if (v75 == 2)
      {
        v107 = v98;
      }

      else
      {
        v107 = v102;
      }

      if (!v106)
      {
        v103 = v104;
        v102 = v105;
      }

      if ((v81 & 0x3D) != 0)
      {
        v108 = 63;
      }

      else
      {
        v108 = 31;
      }

      v109 = v108 & v69;
      v110 = v80 << 6;
      if ((v81 & 0x2D) == 0)
      {
        v110 = 0;
      }

      v111 = (v69 & (32 * v81) & 0x80 | v110 | v109) << v97;
      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = 16 * ((v102 - v111) & ~((v102 - v111) >> 31));
      a8.n128_u32[1] = 16 * ((v103 - v111) & ~((v103 - v111) >> 31));
      a8.n128_u32[2] = 16 * ((v107 - v111) & ~((v107 - v111) >> 31));
      v43.n128_u32[3] = 30720;
      *a6 = a8;
      v43.n128_u32[0] = 16 * (v102 & ~(v102 >> 31));
      v44 = 16 * (v107 & ~(v107 >> 31));
      v43.n128_u32[1] = 16 * (v103 & ~(v103 >> 31));
LABEL_95:
      v43.n128_u32[2] = v44;
      *a7 = v43;
      goto LABEL_96;
    case 8:
      a8.n128_u32[3] = 0;
      a8.n128_u32[0] = *a3;
      a8.n128_u32[1] = a3[2];
      a8.n128_u32[2] = a3[4];
      v138.i32[0] = a3[1];
      v138.i32[1] = a3[3];
      v138.i64[1] = a3[5];
      if (a8.n128_u32[1] + a8.n128_u32[0] + a8.n128_u32[2] > v138.i32[1] + v138.i32[0] + v138.i32[2])
      {
        v139.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a8, 2), a8), 1uLL).u64[0];
        v139.i64[1] = a8.n128_i64[1];
        a8.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v138, 2), v138), 1uLL).u64[0];
        a8.n128_u64[1] = a3[5];
        v138 = v139;
      }

      *a6 = a8;
      *a7 = v138;
      goto LABEL_125;
    case 9:
      v29.i32[0] = *a3;
      v29.i32[1] = a3[2];
      v29.i64[1] = a3[4];
      v30.i32[0] = a3[1];
      v30.i32[1] = a3[3];
      v30.i64[1] = a3[5];
      v31 = vshrq_n_u32(v30, 1uLL);
      v32 = vsraq_n_u32((*&v30 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v29, 1uLL);
      v33 = vorrq_s8((*&vtstq_s32((*&v31 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v31 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v31 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
      v34 = vaddq_s32(v33, v32);
      if (v33.i32[0] + v33.i32[1] + v33.i32[2] < 0)
      {
        v35.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v32, 2), v32), 1uLL).u64[0];
        v35.i64[1] = v32.i64[1];
        v32.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v34, 2), v34), 1uLL).u64[0];
        v32.i64[1] = v34.i64[1];
        v34 = v35;
      }

      v36.i64[0] = 0xFF000000FFLL;
      v36.i64[1] = 0xFF000000FFLL;
      *a6 = vminq_s32(vmaxq_s32(v32, 0), v36);
      a8 = vminq_s32(vmaxq_s32(v34, 0), v36);
      *a7 = a8;
LABEL_125:
      *(a6 + 12) = 255;
      a7->n128_u32[3] = 255;
      if (!a1)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 10:
      v129.i32[0] = *a3;
      v129.i32[1] = a3[1];
      v130 = a3[4];
      v129.i32[2] = a3[2];
      v129.i32[3] = v130;
      v131 = v129;
      v131.n128_u32[3] = a3[5];
      v132 = vmulq_s32(vdupq_n_s32(a3[3]), v129);
      *a7 = v131;
      a8 = vshrq_n_s32(v132, 8uLL);
      a8.n128_u32[3] = v130;
LABEL_112:
      *a6 = a8;
      goto LABEL_113;
    case 11:
      *a4 = 1;
      a8 = sub_22F9EC780(a3, a6, a7);
LABEL_96:
      if (a1 == 3)
      {
        *(a6 + 12) = 30720;
        a7->n128_u32[3] = 30720;
        v112 = 1;
        *a5 = 1;
        goto LABEL_120;
      }

      *(a6 + 12) = 255;
      a7->n128_u32[3] = 255;
      *a5 = 0;
      if (a1)
      {
LABEL_114:
        if (a1 == 1)
        {
          if ((*a4 & 1) != 0 || *a5 == 1)
          {
            *a6 = xmmword_22FA08380;
            *a7 = xmmword_22FA08380;
            *a4 = 0;
            *a5 = 0;
          }

          v133 = vdupq_n_s32(0x101u);
          *a6 = vmulq_s32(*a6, v133);
          v134 = *a7;
          goto LABEL_121;
        }

        v112 = *a5;
LABEL_120:
        a8.n128_u32[0] = *a4;
        a8.n128_u32[1] = v112;
        a8.n128_u64[0] = vneg_s32(a8.n128_u64[0]);
        v135 = vzip1q_s32(a8, a8);
        v135.i32[2] = a8.n128_u32[0];
        v136.i64[0] = 0x100000001;
        v136.i64[1] = 0x100000001;
        v134 = vbslq_s8(v135, v136, vdupq_n_s32(0x101u));
        *a6 = vmulq_s32(v134, *a6);
        v133 = *a7;
LABEL_121:
        v137 = vmulq_s32(v134, v133);
        goto LABEL_130;
      }

LABEL_126:
      if ((*a4 & 1) != 0 || *a5 == 1)
      {
        *a6 = xmmword_22FA08380;
        *a7 = xmmword_22FA08380;
        *a4 = 0;
        *a5 = 0;
      }

      v140 = vshlq_n_s32(*a6, 8uLL);
      v140.i64[0] |= 0x8000000080uLL;
      v140.i32[2] |= 0x80u;
      v141 = vdupq_n_s32(0x101u);
      v140.i32[3] = vmulq_s32(*a6, v141).i32[3];
      *a6 = v140;
      v142 = vshlq_n_s32(*a7, 8uLL);
      v137.i64[0] = v142.i64[0] | 0x8000000080;
      v137.i32[2] = v142.i32[2] | 0x80;
      v137.i32[3] = vmulq_s32(*a7, v141).i32[3];
LABEL_130:
      *a7 = v137;
      return;
    case 12:
      a10.i32[0] = *a3;
      a10.i32[1] = a3[2];
      a10.i32[2] = a3[4];
      a8 = a10;
      a8.n128_u32[3] = a3[6];
      a11.i32[0] = a3[1];
      a11.i32[1] = a3[3];
      a11.i32[2] = a3[5];
      v27 = a11;
      v27.i32[3] = a3[7];
      if (a10.i32[1] + a10.i32[0] + a10.i32[2] > (a11.i32[1] + a11.i32[0] + a11.i32[2]))
      {
        v28.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a10, 2), a8), 1uLL).u64[0];
        v28.i64[1] = a8.n128_i64[1];
        a8.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a11, 2), v27), 1uLL).u64[0];
        a8.n128_u64[1] = v27.u64[1];
        v27 = v28;
      }

      *a6 = a8;
      *a7 = v27;
      if (!a1)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 13:
      v118.i32[0] = *a3;
      v118.i32[1] = a3[2];
      v118.i32[2] = a3[4];
      v118.i32[3] = a3[6];
      v119.i32[0] = a3[1];
      v119.i32[1] = a3[3];
      v119.i32[2] = a3[5];
      v119.i32[3] = a3[7];
      v120 = vshrq_n_u32(v119, 1uLL);
      v121 = vsraq_n_u32((*&v119 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v118, 1uLL);
      v122 = vorrq_s8((*&vtstq_s32((*&v120 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v120 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v120 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
      v123 = vaddq_s32(v122, v121);
      if (v122.i32[0] + v122.i32[1] + v122.i32[2] < 0)
      {
        v124.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v121, 2), v121), 1uLL).u64[0];
        v124.i64[1] = v121.i64[1];
        v121.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v123, 2), v123), 1uLL).u64[0];
        v121.i64[1] = v123.i64[1];
        v123 = v124;
      }

      v125.i64[0] = 0xFF000000FFLL;
      v125.i64[1] = 0xFF000000FFLL;
      *a6 = vminq_s32(vmaxq_s32(v121, 0), v125);
      a8 = vminq_s32(vmaxq_s32(v123, 0), v125);
LABEL_108:
      *a7 = a8;
      if (!a1)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    case 14:
      *a4 = 1;
      a8 = sub_22F9EC780(a3, a6, a7);
      v19 = a3[6];
      v20 = a3[7];
      goto LABEL_29;
    case 15:
      *a4 = 1;
      *a5 = 1;
      a8 = sub_22F9EC780(a3, a6, a7);
      v45 = a3[6];
      v46 = a3[7];
      v47 = (v46 >> 6) & 2 | (v45 >> 7);
      v48 = v45 & 0x7F;
      v49 = v46 & 0x7F;
      v50 = (v49 << (v47 + 1)) & 0x780 | v48;
      v51 = v50 << (4 - v47);
      v52 = ((0x3Fu >> v47) & v46 ^ (0x20u >> v47)) - (0x20u >> v47) + v50;
      v53 = v52 << (4 - v47);
      if (v53 >= 4095)
      {
        v53 = 4095;
      }

      if (v52 >= 0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      v55 = 32 * v48;
      v56 = 32 * v49;
      if (v47 == 3)
      {
        v54 = v56;
      }

      else
      {
        v55 = v51;
      }

      v19 = 16 * v55;
      v20 = 16 * v54;
LABEL_29:
      *(a6 + 12) = v19;
      a7->n128_u32[3] = v20;
      if (!a1)
      {
        goto LABEL_126;
      }

      goto LABEL_114;
    default:
LABEL_113:
      if (a1)
      {
        goto LABEL_114;
      }

      goto LABEL_126;
  }
}

__n128 sub_22F9EC780(unsigned __int8 *a1, _OWORD *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = (v8 >> 6) & 2 | (v7 >> 7);
  if (v9 == 3)
  {
    HIDWORD(v10) = 30720;
    LODWORD(v10) = v3 << 8;
    DWORD1(v10) = v5 << 8;
    DWORD2(v10) = (v7 & 0x7F) << 9;
    v11 = v4 << 8;
    *a2 = v10;
    v12 = v6 << 8;
    v13 = (v8 & 0x7F) << 9;
  }

  else
  {
    v14 = (v5 >> 6) & 2 | (v4 >> 7) | (v6 >> 5) & 4;
    v15 = v7 & 0x7F;
    v16 = v8 & 0x7F;
    v17 = (v6 >> 6) & 1;
    v18 = (v7 >> 6) & 1;
    v19 = (v8 >> 6) & 1;
    v20 = (v7 >> 5) & 1;
    v21 = (v8 >> 5) & 1;
    v22 = 1 << ((v5 >> 6) & 2 | (v4 >> 7) | (v6 >> 5) & 4);
    v23 = (8 * v5) & 0x200;
    if ((v22 & 0xA4) == 0)
    {
      v23 = 0;
    }

    v24 = v20 << 9;
    if ((v22 & 0x50) == 0)
    {
      v24 = 0;
    }

    v25 = v21 << 10;
    if ((v22 & 0x50) == 0)
    {
      v25 = 0;
    }

    v26 = v17 << 10;
    if ((v22 & 0xA0) == 0)
    {
      v26 = 0;
    }

    v27 = v18 << 11;
    if (v14 < 6)
    {
      v27 = 0;
    }

    v28 = v27 & 0xFFFFFEFF | (((v4 >> 6) & 1) << 8) | v23 | (v22 << 6) & (v18 << 9) | v24 | v25 | v26 | v3;
    v29 = (16 * v22) & (v17 << 6) & 0xFFFFFFC0 | v4 & 0x3F;
    v30 = v19 << 6;
    if ((v22 & 0xE8) != 0)
    {
      v31 = v19 << 6;
    }

    else
    {
      v31 = 0;
    }

    v32 = v29 | v31 | (4 * v22) & (v18 << 7);
    if ((v22 & 0x5B) != 0)
    {
      v33 = 127;
    }

    else
    {
      v33 = 63;
    }

    v34 = v33 & v6;
    v35 = v33 & v5;
    v36 = v19 << 7;
    if ((v22 & 0x12) == 0)
    {
      v36 = 0;
    }

    v37 = v34 | v36;
    if ((v22 & 0x12) != 0)
    {
      v38 = v18 << 7;
    }

    else
    {
      v38 = 0;
    }

    v39 = v35 | v38;
    v40 = 32 * v20;
    v41 = 32 * v21;
    if ((v22 & 0xAF) == 0)
    {
      v41 = 0;
    }

    v42 = v41 | v16;
    if ((v22 & 0xAF) == 0)
    {
      v40 = 0;
    }

    v43 = v40 | v15;
    v44 = v18 << 6;
    if ((v22 & 5) == 0)
    {
      v30 = 0;
    }

    v45 = v42 | v30;
    if ((v22 & 5) != 0)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    v47 = -dword_22FA083A8[v14];
    v48 = (v43 | v46) << v47 >> v47;
    v49 = v45 << v47 >> v47;
    v50 = (v14 >> 1) ^ 3;
    v51 = v28 << v50;
    v52 = v28 - v39;
    v53 = v52 << v50;
    v54 = v28 - v37;
    v55 = v54 << v50;
    v56 = (v52 - (v32 + v48)) << v50;
    v57 = (v54 - (v32 + v49)) << v50;
    v58 = ((v28 - v32) << v50) & ~(((v28 - v32) << v50) >> 31);
    if (v58 >= 4095)
    {
      v58 = 4095;
    }

    v59 = v56 & ~(v56 >> 31);
    if (v59 >= 4095)
    {
      v59 = 4095;
    }

    v60 = v57 & ~(v57 >> 31);
    if (v60 >= 4095)
    {
      v60 = 4095;
    }

    if (v51 >= 0xFFF)
    {
      v51 = 4095;
    }

    v61 = v53 & ~(v53 >> 31);
    if (v61 >= 4095)
    {
      v61 = 4095;
    }

    if ((v55 & ~(v55 >> 31)) >= 4095)
    {
      v62 = 4095;
    }

    else
    {
      v62 = v55 & ~(v55 >> 31);
    }

    if (v9 == 1)
    {
      v63 = v61;
    }

    else
    {
      v63 = v51;
    }

    if (v9 == 1)
    {
      v64 = v51;
    }

    else
    {
      v64 = v61;
    }

    if (v9 == 1)
    {
      v65 = v59;
    }

    else
    {
      v65 = v58;
    }

    if (v9 == 1)
    {
      v66 = v58;
    }

    else
    {
      v66 = v59;
    }

    v67 = v9 == 2;
    if (v9 == 2)
    {
      v68 = v62;
    }

    else
    {
      v68 = v63;
    }

    if (v67)
    {
      v62 = v51;
    }

    else
    {
      v61 = v64;
    }

    if (v67)
    {
      v69 = v60;
    }

    else
    {
      v69 = v65;
    }

    if (v67)
    {
      v60 = v58;
    }

    else
    {
      v59 = v66;
    }

    HIDWORD(v70) = 30720;
    LODWORD(v70) = 16 * v69;
    DWORD1(v70) = 16 * v59;
    v11 = 16 * v68;
    DWORD2(v70) = 16 * v60;
    *a2 = v70;
    v12 = 16 * v61;
    v13 = 16 * v62;
  }

  result.n128_u64[0] = __PAIR64__(v12, v11);
  result.n128_u64[1] = v13 | 0x780000000000;
  *a3 = result;
  return result;
}

uint64_t image::HeaderASTC(uint64_t a1, int a2, int a3, int a4, char a5, char a6)
{
  v7 = 1554098963;
  v8 = a5;
  v9 = a6;
  v10 = 1;
  v11 = a2;
  v12 = BYTE2(a2);
  v13 = a3;
  v14 = BYTE2(a3);
  v15 = a4;
  v16 = BYTE2(a4);
  return (*(*a1 + 16))(a1, &v7, 16);
}

id image::ToASTC(void *a1, unsigned int a2, unsigned int a3, core::ThreadPool *a4, float a5)
{
  v5 = image::ToASTC(a1, a2, a3, a4, 0, a5);

  return v5;
}

id image::ToASTC(void *a1, unsigned int a2, unsigned int a3, core::ThreadPool *a4, unsigned int a5, float a6)
{
  v210 = *MEMORY[0x277D85DE8];
  v8 = a1;
  context = objc_autoreleasePoolPush();
  v195 = v8;
  v9 = _MXISignpostLogSystem();
  v10 = _MXISignpostCreate(v9);
  v11 = v9;
  v12 = v11;
  v188 = v10 - 1;
  spid = v10;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MXI_TO_ASTC", "UseGPU: False", buf, 2u);
  }

  v17 = objc_msgSend_device(v8, v13, v14, v15, v16);
  v194 = v17;
  v22 = objc_msgSend_textureType(v8, v18, v19, v20, v21);
  v27 = objc_msgSend_pixelFormat(v8, v23, v24, v25, v26);
  v199 = objc_msgSend_width(v8, v28, v29, v30, v31);
  v198 = objc_msgSend_height(v8, v32, v33, v34, v35);
  v44 = objc_msgSend_arrayLength(v8, v36, v37, v38, v39);
  v45 = a5;
  if (a5 <= 1)
  {
    v45 = objc_msgSend_mipmapLevelCount(v8, v40, v41, v42, v43);
  }

  v207 = 0;
  v206 = 0u;
  v205 = 0u;
  if (sub_22F9ED314(buf, v17, v22, v27, v199, v198, v44, v45, 1u, a2, SHIWORD(a2), a3, a5))
  {
    v192 = 16 * (a2 + v199 - 1) / a2 * ((a3 + v198 - 1) / a3);
    v201 = objc_msgSend_newBufferWithLength_options_(v17, v46, v192, 0, v47);
    v197 = objc_msgSend_newCommandQueue(v17, v48, v49, v50, v51);
    if (v44)
    {
      v56 = 0;
      v186 = v44;
      v187 = v45;
      v191 = v45;
      v185 = vdupq_n_s64(8uLL);
      while (1)
      {
        if (a5 >= 2)
        {
          v57 = objc_msgSend_commandBuffer(v197, v52, v53, v54, v55);
          v62 = objc_msgSend_computeCommandEncoder(v57, v58, v59, v60, v61);
          objc_msgSend_setComputePipelineState_(v62, v63, v207, v64, v65);
          objc_msgSend_setTexture_atIndex_(v62, v66, *(&v206 + 1), 0, v67);
          objc_msgSend_setTexture_atIndex_(v62, v68, v8, 1, v69);
          *&v208 = objc_msgSend_width(*(&v206 + 1), v70, v71, v72, v73);
          *(&v208 + 1) = objc_msgSend_height(*(&v206 + 1), v74, v75, v76, v77);
          v209 = 1;
          v202 = v185;
          v203 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v62, v78, &v208, &v202, v79);
          objc_msgSend_endEncoding(v62, v80, v81, v82, v83);
          if (a5 != 2)
          {
            v88 = objc_msgSend_blitCommandEncoder(v57, v84, v85, v86, v87);
            objc_msgSend_generateMipmapsForTexture_(v88, v89, *(&v206 + 1), v90, v91);
            objc_msgSend_endEncoding(v88, v92, v93, v94, v95);
          }

          objc_msgSend_commit(v57, v84, v85, v86, v87);
          objc_msgSend_waitUntilCompleted(v57, v96, v97, v98, v99);
          if (objc_msgSend_status(v57, v100, v101, v102, v103) != 4)
          {
            v168 = _mxi_log();
            if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
            {
              v173 = objc_msgSend_error(v57, v169, v170, v171, v172);
              v178 = objc_msgSend_debugDescription(v173, v174, v175, v176, v177);
              v179 = v178;
              v184 = objc_msgSend_UTF8String(v178, v180, v181, v182, v183);
              LODWORD(v208) = 136315138;
              *(&v208 + 4) = v184;
              _os_log_impl(&dword_22F9C3000, v168, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:382] [ImageASTC] command buffer failed with error: %s", &v208, 0xCu);
            }

            goto LABEL_35;
          }

          v45 = v187;
        }

        if (v45)
        {
          break;
        }

LABEL_22:
        ++v56;
        v45 = v187;
        if (v56 == v186)
        {
          goto LABEL_23;
        }
      }

      v104 = 0;
      while (1)
      {
        v105 = *(&v206 + 1);
        v106 = *(&v206 + 1) != 0;
        v107 = v104 != 0;
        v108 = v107 && v106;
        if (!v107 || !v106)
        {
          v105 = v8;
        }

        v109 = v105;
        v110 = v201;
        v115 = objc_msgSend_contents(v201, v111, v112, v113, v114);
        v116 = sub_22F9EDACC(a6, v115, v192, v109, v56, v104 - v108, a2, a3, a4);
        v121 = v116;
        if (!v116)
        {
          goto LABEL_31;
        }

        if (v116 != 16 * ((v199 >> v104) / a2) * ((v198 >> v104) / a3))
        {
          v149 = _mxi_log();
          v17 = v194;
          v8 = v195;
          if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v208) = 0;
            _os_log_impl(&dword_22F9C3000, v149, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:402] Unexpected astc size", &v208, 2u);
          }

LABEL_31:
          goto LABEL_35;
        }

        v122 = objc_msgSend_commandBuffer(v197, v117, v118, v119, v120);
        v127 = objc_msgSend_blitCommandEncoder(v122, v123, v124, v125, v126);
        *&v208 = v199 >> v104;
        *(&v208 + 1) = v198 >> v104;
        v209 = 1;
        v128 = *v205;
        v202 = 0uLL;
        v203 = 0;
        objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v127, v129, v201, 0, 16 * ((v199 >> v104) / a2), v121, &v208, v128, v56, v104, &v202);
        objc_msgSend_endEncoding(v127, v130, v131, v132, v133);
        objc_msgSend_commit(v122, v134, v135, v136, v137);
        objc_msgSend_waitUntilCompleted(v122, v138, v139, v140, v141);
        v17 = v194;
        v8 = v195;
        if (objc_msgSend_status(v122, v142, v143, v144, v145) != 4)
        {
          break;
        }

        if (v191 == ++v104)
        {
          goto LABEL_22;
        }
      }

      v150 = _mxi_log();
      if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
      {
        v155 = objc_msgSend_error(v122, v151, v152, v153, v154);
        v160 = objc_msgSend_debugDescription(v155, v156, v157, v158, v159);
        v161 = v160;
        v166 = objc_msgSend_UTF8String(v160, v162, v163, v164, v165);
        LODWORD(v208) = 136315138;
        *(&v208 + 4) = v166;
        _os_log_impl(&dword_22F9C3000, v150, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:421] [ImageASTC] command buffer failed with error: %s", &v208, 0xCu);
      }

LABEL_35:
      v148 = 0;
    }

    else
    {
LABEL_23:
      v146 = _MXISignpostLogSystem();
      v147 = v146;
      if (v188 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v146))
      {
        LOWORD(v208) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F9C3000, v147, OS_SIGNPOST_INTERVAL_END, spid, "MXI_TO_ASTC", &unk_22FA1C169, &v208, 2u);
      }

      v148 = *v205;
    }
  }

  else
  {
    v148 = 0;
  }

  *&v208 = &v205;
  sub_22F9DC140(&v208);

  objc_autoreleasePoolPop(context);

  return v148;
}

void sub_22F9ED1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  sub_22F9EE358(&a35);

  _Unwind_Resume(a1);
}

uint64_t sub_22F9ED314(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned __int8 a10, __int16 a11, unsigned __int8 a12, unsigned int a13)
{
  v135 = *MEMORY[0x277D85DE8];
  v20 = a2;
  if (a4 > 80)
  {
    if (a4 != 81)
    {
      if (a4 != 115)
      {
        if (a4 == 125)
        {
          v21 = 0;
          v130 = 0;
          v132 = xmmword_22FA083F0;
          v23 = 0x1000000002;
          goto LABEL_19;
        }

        goto LABEL_13;
      }

      v21 = 0;
      v130 = 0;
      v132 = xmmword_22FA083F0;
      v23 = 0x800000001;
LABEL_19:
      v25 = objc_opt_new();
      objc_msgSend_setTextureType_(v25, v27, a3, v28, v29);
      v33 = (16 * a10) | a12;
      if (v33 > 135)
      {
        if (v33 > 167)
        {
          v34 = 217;
          if (v21)
          {
            v34 = 199;
          }

          v39 = 218;
          if (v21)
          {
            v39 = 200;
          }

          if (v33 != 204)
          {
            v39 = 0;
          }

          if (v33 != 202)
          {
            v34 = v39;
          }

          v36 = 215;
          if (v21)
          {
            v36 = 197;
          }

          v40 = 216;
          if (v21)
          {
            v40 = 198;
          }

          if (v33 != 170)
          {
            v40 = 0;
          }

          if (v33 != 168)
          {
            v36 = v40;
          }

          v38 = v33 <= 201;
LABEL_56:
          if (!v38)
          {
LABEL_57:
            objc_msgSend_setPixelFormat_(v25, v30, v34, v31, v32);
            goto LABEL_83;
          }

LABEL_82:
          objc_msgSend_setPixelFormat_(v25, v30, v36, v31, v32);
LABEL_83:
          objc_msgSend_setWidth_(v25, v41, a5, v42, v43);
          objc_msgSend_setHeight_(v25, v47, a6, v48, v49);
          objc_msgSend_setArrayLength_(v25, v50, a7, v51, v52);
          objc_msgSend_setMipmapLevelCount_(v25, v53, a8, v54, v55);
          objc_msgSend_setUsage_(v25, v56, 19, v57, v58);
          sub_22F9E60AC((a1 + 40), a9);
          if (a9)
          {
            v62 = 0;
            while (1)
            {
              objc_msgSend_setStorageMode_(v25, v59, 2, v60, v61);
              v66 = objc_msgSend_newSharedTextureWithDescriptor_(v20, v63, v25, v64, v65);
              if (!v66)
              {
                break;
              }

              v67 = *(a1 + 40);
              v68 = *(v67 + 8 * v62);
              *(v67 + 8 * v62) = v66;

              if (a9 == ++v62)
              {
                goto LABEL_87;
              }
            }

            v69 = _mxi_log();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v134) = v62;
              _os_log_impl(&dword_22F9C3000, v69, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:259] [ImageASTC] failed creating destination texture %d", buf, 8u);
            }

            v26 = 0;
            goto LABEL_103;
          }

LABEL_87:
          if (a13 < 2)
          {
            v106 = 0;
            v97 = 0;
          }

          else
          {
            v69 = objc_opt_new();
            objc_msgSend_setTextureType_(v69, v70, 2, v71, v72);
            objc_msgSend_setPixelFormat_(v69, v73, a4, v74, v75);
            objc_msgSend_setWidth_(v69, v76, a5 >> 1, v77, v78);
            objc_msgSend_setHeight_(v69, v79, a6 >> 1, v80, v81);
            objc_msgSend_setArrayLength_(v69, v82, 1, v83, v84);
            objc_msgSend_setMipmapLevelCount_(v69, v85, a13 - 1, v86, v87);
            objc_msgSend_setUsage_(v69, v88, 3, v89, v90);
            v97 = objc_msgSend_newTextureWithDescriptor_(v20, v91, v69, v92, v93);
            if (!v97)
            {
              v107 = _mxi_log();
              if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_22F9C3000, v107, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:279] [ImageASTC] failed creating mipmapping texture", buf, 2u);
              }

              v26 = 0;
              goto LABEL_102;
            }

            v98 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v94, @"com.apple.mxi", v95, v96);
            v104 = objc_msgSend_newDefaultLibraryWithBundle_error_(v20, v99, v98, 0, v100);
            if (v104)
            {
              v105 = v98;
            }

            else
            {
              v105 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v101, @"com.apple.mxi.ImageTests", v102, v103);

              v104 = objc_msgSend_newDefaultLibraryWithBundle_error_(v20, v108, v105, 0, v109);
            }

            v129 = v105;
            v110 = objc_msgSend_newFunctionWithName_(v104, v101, @"kern_image_mipmap", v102, v103);
            v131 = 0;
            v106 = objc_msgSend_newComputePipelineStateWithFunction_error_(v20, v111, v110, &v131, v112);
            v113 = v131;

            if (!v106)
            {
              v117 = _mxi_log();
              if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
              {
                v122 = objc_msgSend_debugDescription(v113, v118, v119, v120, v121);
                v123 = v122;
                v128 = objc_msgSend_UTF8String(v122, v124, v125, v126, v127);
                *buf = 136315138;
                v134 = v128;
                _os_log_impl(&dword_22F9C3000, v117, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:293] [ImageASTC] failed initializing compute pipeline: %s", buf, 0xCu);
              }

              v26 = 0;
              v107 = v69;
              v69 = v97;
              goto LABEL_102;
            }
          }

          *a1 = v132;
          *(a1 + 16) = v21;
          *(a1 + 17) = 0;
          *(a1 + 19) = 0;
          *(a1 + 20) = v23;
          *(a1 + 28) = 0;
          *(a1 + 32) = v130;
          v114 = *(a1 + 64);
          *(a1 + 64) = v97;
          v69 = v97;

          v115 = *(a1 + 72);
          *(a1 + 72) = v106;
          v107 = v106;

          v26 = 1;
LABEL_102:

LABEL_103:
          goto LABEL_104;
        }

        v34 = 212;
        if (v21)
        {
          v34 = 194;
        }

        v36 = 213;
        if (v21)
        {
          v36 = 195;
        }

        v46 = 214;
        if (v21)
        {
          v46 = 196;
        }

        if (v33 != 166)
        {
          v46 = 0;
        }

        if (v33 != 165)
        {
          v36 = v46;
        }

        v45 = v33 == 136;
      }

      else
      {
        if (v33 > 100)
        {
          v34 = 210;
          if (v21)
          {
            v34 = 192;
          }

          v35 = 211;
          if (v21)
          {
            v35 = 193;
          }

          if (v33 != 134)
          {
            v35 = 0;
          }

          if (v33 != 133)
          {
            v34 = v35;
          }

          v36 = 207;
          if (v21)
          {
            v36 = 189;
          }

          v37 = 208;
          if (v21)
          {
            v37 = 190;
          }

          if (v33 != 102)
          {
            v37 = 0;
          }

          if (v33 != 101)
          {
            v36 = v37;
          }

          v38 = v33 <= 132;
          goto LABEL_56;
        }

        v34 = 204;
        if (v21)
        {
          v34 = 186;
        }

        v36 = 205;
        if (v21)
        {
          v36 = 187;
        }

        v44 = 206;
        if (v21)
        {
          v44 = 188;
        }

        if (v33 != 85)
        {
          v44 = 0;
        }

        if (v33 != 84)
        {
          v36 = v44;
        }

        v45 = v33 == 68;
      }

      if (v45)
      {
        goto LABEL_57;
      }

      goto LABEL_82;
    }

    v132 = xmmword_22FA08400;
    v23 = 0x400000000;
    v21 = 1;
    v24 = 80;
LABEL_17:
    v130 = v24;
    goto LABEL_19;
  }

  switch(a4)
  {
    case 'F':
      v21 = 0;
      v130 = 0;
      v22 = &xmmword_22FA083F0;
      goto LABEL_11;
    case 'G':
      v132 = xmmword_22FA083F0;
      v23 = 0x400000000;
      v21 = 1;
      v24 = 70;
      goto LABEL_17;
    case 'P':
      v21 = 0;
      v130 = 0;
      v22 = &xmmword_22FA08400;
LABEL_11:
      v132 = *v22;
      v23 = 0x400000000;
      goto LABEL_19;
  }

LABEL_13:
  v25 = _mxi_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v134 = a4;
    _os_log_impl(&dword_22F9C3000, v25, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:74] Unrecognized pixel format: %lu", buf, 0xCu);
  }

  v26 = 0;
LABEL_104:

  return v26;
}

void sub_22F9EDA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v18 = v12;

  _Unwind_Resume(a1);
}

uint64_t sub_22F9EDACC(float a1, uint64_t a2, unsigned int a3, void *a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, core::ThreadPool *a9)
{
  v138 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  v18 = objc_msgSend_pixelFormat(v13, v14, v15, v16, v17);
  v23 = v18;
  if (v18 > 80)
  {
    switch(v18)
    {
      case 'Q':
        v25 = 0;
        v28 = 0;
        v126 = xmmword_22FA08400;
        v29 = 4;
        v24 = 1;
        v26 = 80;
        break;
      case 's':
        v24 = 0;
        v26 = 0;
        v126 = xmmword_22FA083F0;
        v29 = 8;
        v25 = 1;
        v28 = 1;
        break;
      case '}':
        v24 = 0;
        v26 = 0;
        v126 = xmmword_22FA083F0;
        v28 = 1;
        v29 = 16;
        v25 = 2;
        break;
      default:
        goto LABEL_13;
    }

LABEL_18:
    LOBYTE(v127) = v24;
    *(&v127 + 4) = __PAIR64__(v29, v25);
    v128 = v26;
    v32 = objc_msgSend_width(v13, v19, v20, v21, v22);
    v109 = v25;
    v110 = v28;
    v37 = v32 >> a6;
    v38 = objc_msgSend_height(v13, v33, v34, v35, v36) >> a6;
    sub_22F9E1DE0(&__p, (v29 * v38 * v37));
    if (objc_msgSend_storageMode(v13, v39, v40, v41, v42) == 2)
    {
      v111 = objc_msgSend_device(v13, v43, v44, v45, v46);
      v108 = objc_msgSend_newCommandQueue(v111, v47, v48, v49, v50);
      v55 = objc_msgSend_commandBuffer(v108, v51, v52, v53, v54);
      v112 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v111, v56, __p, v125 - __p, 0, 0);
      v61 = objc_msgSend_blitCommandEncoder(v55, v57, v58, v59, v60);
      buf = 0uLL;
      v134 = 0;
      *v129 = v37;
      *&v129[8] = v38;
      *&v130 = 1;
      objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_(v61, v62, v13, a5, a6, &buf, v129, v112, 0, (v29 * v37), (v29 * v38 * v37));
      objc_msgSend_endEncoding(v61, v63, v64, v65, v66);
      objc_msgSend_commit(v55, v67, v68, v69, v70);
      objc_msgSend_waitUntilCompleted(v55, v71, v72, v73, v74);
      if (objc_msgSend_status(v55, v75, v76, v77, v78) != 4)
      {
        v80 = _mxi_log();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v85 = objc_msgSend_error(v55, v81, v82, v83, v84);
          v90 = objc_msgSend_debugDescription(v85, v86, v87, v88, v89);
          v91 = v90;
          v96 = objc_msgSend_UTF8String(v90, v92, v93, v94, v95);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v96;
          _os_log_impl(&dword_22F9C3000, v80, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:127] [ImageASTC] command buffer failed with error: %s", &buf, 0xCu);
        }

        goto LABEL_37;
      }
    }

    else
    {
      buf = 0uLL;
      v134 = 0;
      v135 = v32 >> a6;
      v136 = v38;
      v137 = 1;
      objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v13, v43, __p, (v29 * v37), (v29 * v38 * v37), &buf, a6, a5);
    }

    v31 = 16 * (a7 + v37 - 1) / a7 * ((a8 + v38 - 1) / a8);
    if (v31 <= a3)
    {
      if (a9)
      {
        v79 = core::ThreadPool::NumWorkerThreads(a9) + 1;
      }

      else
      {
        v79 = 1;
      }

      *(&buf + 1) = __PAIR64__(a8, a7);
      LODWORD(v134) = 1;
      LODWORD(buf) = v110;
      v97 = astcenc_config_init(v110, a7, a8, 1u, 0, &buf, a1 * 100.0);
      if (v97)
      {
        v98 = _mxi_log();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          error_string = astcenc_get_error_string(v97);
          *v129 = 136315138;
          *&v129[4] = error_string;
          _os_log_impl(&dword_22F9C3000, v98, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:162] Codec config init failed: %s\n", v129, 0xCu);
        }
      }

      else
      {
        v123 = 0;
        v100 = astcenc_context_alloc(&buf, v79);
        if (!v100)
        {
          v117 = v37;
          v118 = v38;
          v119 = 1;
          v120 = v109;
          v121 = &v122;
          v122 = __p;
          if (a9)
          {
            v116 = 1;
            if (v79)
            {
              *v129 = v126;
              v130 = v127;
              v131 = v128;
              v132 = 0;
              operator new();
            }

            core::ThreadPool::WaitForAllTask(a9);
            v103 = atomic_load(&v116);
            if ((v103 & 1) == 0)
            {
              v104 = _mxi_log();
              if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
              {
                *v129 = 0;
                _os_log_impl(&dword_22F9C3000, v104, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:198] ASTC encode failed", v129, 2u);
              }

              goto LABEL_37;
            }
          }

          else
          {
            v105 = astcenc_compress_image();
            if (v105)
            {
              v106 = _mxi_log();
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                v107 = astcenc_get_error_string(v105);
                *v129 = 136315138;
                *&v129[4] = v107;
                _os_log_impl(&dword_22F9C3000, v106, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:207] Codec compress failed: %s\n", v129, 0xCu);
              }

              goto LABEL_37;
            }
          }

          astcenc_context_free(v123);
LABEL_38:
          if (__p)
          {
            v125 = __p;
            operator delete(__p);
          }

          goto LABEL_40;
        }

        v98 = _mxi_log();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          v101 = astcenc_get_error_string(v100);
          *v129 = 136315138;
          *&v129[4] = v101;
          _os_log_impl(&dword_22F9C3000, v98, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:169] Codec context alloc failed: %s\n", v129, 0xCu);
        }
      }
    }

LABEL_37:
    v31 = 0;
    goto LABEL_38;
  }

  switch(v18)
  {
    case 'F':
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = &xmmword_22FA083F0;
      goto LABEL_11;
    case 'G':
      v25 = 0;
      v28 = 0;
      v126 = xmmword_22FA083F0;
      v29 = 4;
      v24 = 1;
      v26 = 70;
      goto LABEL_18;
    case 'P':
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = &xmmword_22FA08400;
LABEL_11:
      v126 = *v27;
      v28 = 1;
      v29 = 4;
      goto LABEL_18;
  }

LABEL_13:
  v30 = _mxi_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v23;
    _os_log_impl(&dword_22F9C3000, v30, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:74] Unrecognized pixel format: %lu", &buf, 0xCu);
  }

  v31 = 0;
LABEL_40:

  return v31;
}

void sub_22F9EE23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **sub_22F9EE358(void **a1)
{
  v3 = a1 + 5;
  sub_22F9DC140(&v3);
  return a1;
}

id image::ToASTC(void **a1, unsigned int a2, unsigned int a3, unsigned int a4, core::ThreadPool *a5, unsigned int a6, float a7)
{
  v202 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v10 = _MXISignpostLogSystem();
  v11 = _MXISignpostCreate(v10);
  v12 = v10;
  v13 = v12;
  v180 = v11 - 1;
  spid = v11;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MXI_TO_ASTC", "UseGPU: False", buf, 2u);
  }

  v18 = objc_msgSend_device(*a1, v14, v15, v16, v17);
  v186 = v18;
  v23 = objc_msgSend_pixelFormat(*a1, v19, v20, v21, v22);
  v190 = objc_msgSend_width(*a1, v24, v25, v26, v27);
  v189 = objc_msgSend_height(*a1, v28, v29, v30, v31);
  v36 = a6;
  if (a6 <= 1)
  {
    v36 = objc_msgSend_mipmapLevelCount(*a1, v32, v33, v34, v35);
  }

  v199 = 0;
  v198 = 0u;
  v197 = 0u;
  if (sub_22F9ED314(buf, v18, 3, v23, v190, v189, a2, v36, 1u, a3, SHIWORD(a3), a4, a6))
  {
    v184 = 16 * (a3 + v190 - 1) / a3 * ((a4 + v189 - 1) / a4);
    v193 = objc_msgSend_newBufferWithLength_options_(v18, v37, v184, 0, v38);
    v188 = objc_msgSend_newCommandQueue(v18, v39, v40, v41, v42);
    if (a2)
    {
      v47 = 0;
      v178 = a2;
      v179 = v36;
      v183 = v36;
      v177 = vdupq_n_s64(8uLL);
      while (1)
      {
        if (a6 >= 2)
        {
          v48 = objc_msgSend_commandBuffer(v188, v43, v44, v45, v46);
          v53 = objc_msgSend_computeCommandEncoder(v48, v49, v50, v51, v52);
          objc_msgSend_setComputePipelineState_(v53, v54, v199, v55, v56);
          objc_msgSend_setTexture_atIndex_(v53, v57, *(&v198 + 1), 0, v58);
          objc_msgSend_setTexture_atIndex_(v53, v59, a1[v47], 1, v60);
          *&v200 = objc_msgSend_width(*(&v198 + 1), v61, v62, v63, v64);
          *(&v200 + 1) = objc_msgSend_height(*(&v198 + 1), v65, v66, v67, v68);
          v201 = 1;
          v194 = v177;
          v195 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v53, v69, &v200, &v194, v70);
          objc_msgSend_endEncoding(v53, v71, v72, v73, v74);
          if (a6 != 2)
          {
            v79 = objc_msgSend_blitCommandEncoder(v48, v75, v76, v77, v78);
            objc_msgSend_generateMipmapsForTexture_(v79, v80, *(&v198 + 1), v81, v82);
            objc_msgSend_endEncoding(v79, v83, v84, v85, v86);
          }

          objc_msgSend_commit(v48, v75, v76, v77, v78);
          objc_msgSend_waitUntilCompleted(v48, v87, v88, v89, v90);
          if (objc_msgSend_status(v48, v91, v92, v93, v94) != 4)
          {
            v160 = _mxi_log();
            if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
            {
              v165 = objc_msgSend_error(v48, v161, v162, v163, v164);
              v170 = objc_msgSend_debugDescription(v165, v166, v167, v168, v169);
              v171 = v170;
              v176 = objc_msgSend_UTF8String(v170, v172, v173, v174, v175);
              LODWORD(v200) = 136315138;
              *(&v200 + 4) = v176;
              _os_log_impl(&dword_22F9C3000, v160, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:487] [ImageASTC] command buffer failed with error: %s", &v200, 0xCu);
            }

            goto LABEL_42;
          }

          v36 = v179;
        }

        if (v36)
        {
          break;
        }

LABEL_29:
        ++v47;
        v36 = v179;
        if (v47 == v178)
        {
          goto LABEL_30;
        }
      }

      v95 = 0;
      while (1)
      {
        if (!v95 || (v96 = *(&v198 + 1)) == 0)
        {
          v96 = a1[v47];
        }

        v97 = v96;
        v98 = *(&v198 + 1);
        v99 = v193;
        v104 = objc_msgSend_contents(v193, v100, v101, v102, v103);
        if (v95)
        {
          v105 = v98 == 0;
        }

        else
        {
          v105 = 1;
        }

        v106 = !v105;
        v107 = sub_22F9EDACC(a7, v104, v184, v97, 0, v95 - v106, a3, a4, a5);
        v112 = v107;
        if (!v107)
        {
          goto LABEL_38;
        }

        v113 = 16 * ((v190 >> v95) / a3);
        if (v107 != v113 * ((v189 >> v95) / a4))
        {
          v141 = _mxi_log();
          v18 = v186;
          if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v200) = 0;
            _os_log_impl(&dword_22F9C3000, v141, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:508] Unexpected astc size", &v200, 2u);
          }

LABEL_38:
          goto LABEL_42;
        }

        v114 = objc_msgSend_commandBuffer(v188, v108, v109, v110, v111);
        v119 = objc_msgSend_blitCommandEncoder(v114, v115, v116, v117, v118);
        *&v200 = v190 >> v95;
        *(&v200 + 1) = v189 >> v95;
        v201 = 1;
        v120 = *v197;
        v194 = 0uLL;
        v195 = 0;
        objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v119, v121, v193, 0, v113, v112, &v200, v120, v47, v95, &v194);
        objc_msgSend_endEncoding(v119, v122, v123, v124, v125);
        objc_msgSend_commit(v114, v126, v127, v128, v129);
        objc_msgSend_waitUntilCompleted(v114, v130, v131, v132, v133);
        v18 = v186;
        if (objc_msgSend_status(v114, v134, v135, v136, v137) != 4)
        {
          break;
        }

        if (v183 == ++v95)
        {
          goto LABEL_29;
        }
      }

      v142 = _mxi_log();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        v147 = objc_msgSend_error(v114, v143, v144, v145, v146);
        v152 = objc_msgSend_debugDescription(v147, v148, v149, v150, v151);
        v153 = v152;
        v158 = objc_msgSend_UTF8String(v152, v154, v155, v156, v157);
        LODWORD(v200) = 136315138;
        *(&v200 + 4) = v158;
        _os_log_impl(&dword_22F9C3000, v142, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:527] [ImageASTC] command buffer failed with error: %s", &v200, 0xCu);
      }

LABEL_42:
      v140 = 0;
    }

    else
    {
LABEL_30:
      v138 = _MXISignpostLogSystem();
      v139 = v138;
      if (v180 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v138))
      {
        LOWORD(v200) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F9C3000, v139, OS_SIGNPOST_INTERVAL_END, spid, "MXI_TO_ASTC", &unk_22FA1C169, &v200, 2u);
      }

      v140 = *v197;
    }
  }

  else
  {
    v140 = 0;
  }

  *&v200 = &v197;
  sub_22F9DC140(&v200);

  objc_autoreleasePoolPop(context);

  return v140;
}

void sub_22F9EEA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  sub_22F9EE358(&a35);

  _Unwind_Resume(a1);
}

id image::ToASTC(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, float a5)
{
  v5 = image::ToASTC(a1, a2, a3, a4, 0, a5);

  return v5;
}

id image::ToASTC(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, float a6)
{
  v160 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = objc_autoreleasePoolPush();
  v11 = _MXISignpostLogSystem();
  v12 = _MXISignpostCreate(v11);
  context = v10;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MXI_TO_ASTC", "UseGPU: True", buf, 2u);
  }

  v146 = objc_msgSend_device(v9, v15, v16, v17, v18);
  v23 = objc_msgSend_textureType(v9, v19, v20, v21, v22);
  v28 = objc_msgSend_pixelFormat(v9, v24, v25, v26, v27);
  v33 = objc_msgSend_width(v9, v29, v30, v31, v32);
  v38 = objc_msgSend_height(v9, v34, v35, v36, v37);
  v47 = objc_msgSend_arrayLength(v9, v39, v40, v41, v42);
  v48 = a5;
  if (a5 <= 1)
  {
    v48 = objc_msgSend_mipmapLevelCount(v9, v43, v44, v45, v46);
  }

  v157 = 0;
  v156 = 0u;
  v155 = 0u;
  if ((sub_22F9ED314(buf, v146, v23, v28, v33, v38, v47, v48, 1u, a2, SWORD1(a2), a3, a5) & 1) == 0)
  {
    v121 = 0;
    goto LABEL_40;
  }

  v52 = v48;
  if (v154)
  {
    v53 = objc_msgSend_newTextureViewWithPixelFormat_(v9, v49, v154, v50, v51);

    v9 = v53;
    if (!v53)
    {
      v140 = _mxi_log();
      v143 = v140;
      if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v158) = 0;
        _os_log_impl(&dword_22F9C3000, v140, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:565] [ImageASTC] failed creating source texture view", &v158, 2u);
      }

      v9 = 0;
      v121 = 0;
      goto LABEL_39;
    }
  }

  v54 = [ASTCEncoder alloc];
  v152 = 0;
  *&v55 = a6;
  v57 = objc_msgSend_initWithDevice_blockWidth_blockHeight_rankModesCountRatio_fastSkipThreshold_collectStatistics_error_(v54, v56, v146, a2, a3, a4, 0, &v152, v55);
  v143 = v152;
  if (v57)
  {
    v142 = objc_msgSend_newCommandQueue(v146, v58, v59, v60, v61);
    v70 = objc_msgSend_commandBuffer(v142, v62, v63, v64, v65);
    if (v47)
    {
      v71 = 0;
      v148 = v47;
      v145 = vdupq_n_s64(8uLL);
      do
      {
        if (a5 >= 2)
        {
          v72 = objc_msgSend_computeCommandEncoder(v70, v66, v67, v68, v69);
          objc_msgSend_setComputePipelineState_(v72, v73, v157, v74, v75);
          objc_msgSend_setTexture_atIndex_(v72, v76, *(&v156 + 1), 0, v77);
          objc_msgSend_setTexture_atIndex_(v72, v78, v9, 1, v79);
          *&v158 = objc_msgSend_width(*(&v156 + 1), v80, v81, v82, v83);
          *(&v158 + 1) = objc_msgSend_height(*(&v156 + 1), v84, v85, v86, v87);
          v159 = 1;
          v150 = v145;
          v151 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v72, v88, &v158, &v150, v89);
          objc_msgSend_endEncoding(v72, v90, v91, v92, v93);
          if (a5 != 2)
          {
            v98 = objc_msgSend_blitCommandEncoder(v70, v94, v95, v96, v97);
            objc_msgSend_generateMipmapsForTexture_(v98, v99, *(&v156 + 1), v100, v101);
            objc_msgSend_endEncoding(v98, v102, v103, v104, v105);
          }
        }

        if (v52)
        {
          for (i = 0; i != v52; ++i)
          {
            v107 = *(&v156 + 1);
            v108 = i != 0 && *(&v156 + 1) != 0;
            if (i == 0 || *(&v156 + 1) == 0)
            {
              v107 = v9;
            }

            v109 = v107;
            objc_msgSend_encodeWithCommandBuffer_destTexture_destSlice_destLevel_srcTexture_srcSlice_srcLevel_(v57, v110, v70, *v155, v71, i, v109, v71, (i - v108));
          }
        }

        ++v71;
      }

      while (v71 != v148);
    }

    objc_msgSend_commit(v70, v66, v67, v68, v69);
    objc_msgSend_waitUntilCompleted(v70, v111, v112, v113, v114);
    if (objc_msgSend_status(v70, v115, v116, v117, v118) == 4)
    {

      v119 = _MXISignpostLogSystem();
      v120 = v119;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v119))
      {
        LOWORD(v158) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F9C3000, v120, OS_SIGNPOST_INTERVAL_END, v12, "MXI_TO_ASTC", &unk_22FA1C169, &v158, 2u);
      }

      v121 = *v155;
      goto LABEL_35;
    }

    v123 = _mxi_log();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      v128 = objc_msgSend_error(v70, v124, v125, v126, v127);
      v133 = objc_msgSend_debugDescription(v128, v129, v130, v131, v132);
      v134 = v133;
      v139 = objc_msgSend_UTF8String(v133, v135, v136, v137, v138);
      LODWORD(v158) = 136315138;
      *(&v158 + 4) = v139;
      _os_log_impl(&dword_22F9C3000, v123, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:618] [ImageASTC] command buffer failed with error: %s", &v158, 0xCu);
    }
  }

  else
  {
    v122 = _mxi_log();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v158) = 0;
      _os_log_impl(&dword_22F9C3000, v122, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:578] Failed creating ASTCEncoder", &v158, 2u);
    }
  }

  v121 = 0;
LABEL_35:

LABEL_39:
LABEL_40:

  *&v158 = &v155;
  sub_22F9DC140(&v158);

  objc_autoreleasePoolPop(context);

  return v121;
}

void sub_22F9EF14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_22F9EE358(va);
  _Unwind_Resume(a1);
}

id image::ToASTC(void **a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, float a7)
{
  v154 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v14 = _MXISignpostLogSystem();
  v15 = _MXISignpostCreate(v14);
  v16 = v14;
  v17 = v16;
  spid = v15;
  v139 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "MXI_TO_ASTC", "UseGPU: True", buf, 2u);
  }

  v143 = objc_msgSend_device(*a1, v18, v19, v20, v21);
  v26 = objc_msgSend_pixelFormat(*a1, v22, v23, v24, v25);
  v31 = objc_msgSend_width(*a1, v27, v28, v29, v30);
  v40 = objc_msgSend_height(*a1, v32, v33, v34, v35);
  v41 = a6;
  if (a6 <= 1)
  {
    v41 = objc_msgSend_mipmapLevelCount(*a1, v36, v37, v38, v39);
  }

  v151 = 0;
  v150 = 0u;
  v149 = 0u;
  if ((sub_22F9ED314(buf, v143, 3, v26, v31, v40, a2, v41, 1u, a3, SWORD1(a3), a4, a6) & 1) == 0)
  {
    v114 = 0;
    goto LABEL_46;
  }

  v42 = [ASTCEncoder alloc];
  v146 = 0;
  *&v43 = a7;
  v45 = objc_msgSend_initWithDevice_blockWidth_blockHeight_rankModesCountRatio_fastSkipThreshold_collectStatistics_error_(v42, v44, v143, a3, a4, a5, 0, &v146, v43);
  v138 = v146;
  if (v45)
  {
    v140 = v41;
    v136 = objc_msgSend_newCommandQueue(v143, v46, v47, v48, v49);
    v58 = objc_msgSend_commandBuffer(v136, v50, v51, v52, v53);
    if (a2)
    {
      v59 = 0;
      v137 = a2;
      v135 = vdupq_n_s64(8uLL);
      while (1)
      {
        if (a6 >= 2)
        {
          v60 = objc_msgSend_computeCommandEncoder(v58, v54, v55, v56, v57);
          objc_msgSend_setComputePipelineState_(v60, v61, v151, v62, v63);
          objc_msgSend_setTexture_atIndex_(v60, v64, *(&v150 + 1), 0, v65);
          objc_msgSend_setTexture_atIndex_(v60, v66, a1[v59], 1, v67);
          *&v152 = objc_msgSend_width(*(&v150 + 1), v68, v69, v70, v71);
          *(&v152 + 1) = objc_msgSend_height(*(&v150 + 1), v72, v73, v74, v75);
          v153 = 1;
          v144 = v135;
          v145 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v60, v76, &v152, &v144, v77);
          objc_msgSend_endEncoding(v60, v78, v79, v80, v81);
          if (a6 != 2)
          {
            v86 = objc_msgSend_blitCommandEncoder(v58, v82, v83, v84, v85);
            objc_msgSend_generateMipmapsForTexture_(v86, v87, *(&v150 + 1), v88, v89);
            objc_msgSend_endEncoding(v86, v90, v91, v92, v93);
          }
        }

        if (v140)
        {
          break;
        }

LABEL_28:
        if (++v59 == v137)
        {
          goto LABEL_29;
        }
      }

      v94 = 0;
      while (1)
      {
        if (!v94 || (v95 = *(&v150 + 1)) == 0)
        {
          v95 = a1[v59];
        }

        v96 = v95;
        v100 = v96;
        v101 = !v94 || *(&v150 + 1) == 0;
        v102 = !v101;
        if (v148)
        {
          v103 = objc_msgSend_newTextureViewWithPixelFormat_(v96, v97, v148, v98, v99);

          v100 = v103;
          if (!v103)
          {
            break;
          }
        }

        objc_msgSend_encodeWithCommandBuffer_destTexture_destSlice_destLevel_srcTexture_srcSlice_srcLevel_(v45, v97, v58, *v149, v59, v94, v100, 0, (v94 - v102));

        if (v140 == ++v94)
        {
          goto LABEL_28;
        }
      }

      v116 = _mxi_log();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v152) = 67109376;
        DWORD1(v152) = v59;
        WORD4(v152) = 1024;
        *(&v152 + 10) = v94;
        _os_log_impl(&dword_22F9C3000, v116, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:691] [ImageASTC] failed creating source texture view for slice (%d) and mip (%d)", &v152, 0xEu);
      }
    }

    else
    {
LABEL_29:
      objc_msgSend_commit(v58, v54, v55, v56, v57);
      objc_msgSend_waitUntilCompleted(v58, v104, v105, v106, v107);
      if (objc_msgSend_status(v58, v108, v109, v110, v111) == 4)
      {

        v112 = _MXISignpostLogSystem();
        v113 = v112;
        if (v139 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v112))
        {
          LOWORD(v152) = 0;
          _os_signpost_emit_with_name_impl(&dword_22F9C3000, v113, OS_SIGNPOST_INTERVAL_END, spid, "MXI_TO_ASTC", &unk_22FA1C169, &v152, 2u);
        }

        v114 = *v149;
        goto LABEL_45;
      }

      v117 = _mxi_log();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        v122 = objc_msgSend_error(v58, v118, v119, v120, v121);
        v127 = objc_msgSend_debugDescription(v122, v123, v124, v125, v126);
        v128 = v127;
        v133 = objc_msgSend_UTF8String(v127, v129, v130, v131, v132);
        LODWORD(v152) = 136315138;
        *(&v152 + 4) = v133;
        _os_log_impl(&dword_22F9C3000, v117, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:707] [ImageASTC] command buffer failed with error: %s", &v152, 0xCu);
      }
    }
  }

  else
  {
    v115 = _mxi_log();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v152) = 0;
      _os_log_impl(&dword_22F9C3000, v115, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:660] Failed creating ASTCEncoder", &v152, 2u);
    }
  }

  v114 = 0;
LABEL_45:

LABEL_46:
  *&v152 = &v149;
  sub_22F9DC140(&v152);

  objc_autoreleasePoolPop(context);

  return v114;
}

void sub_22F9EF814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_22F9EE358(va);
  _Unwind_Resume(a1);
}

void image::ToASTCs(void **a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, void *a7@<X8>, float a8@<S0>)
{
  v153 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v15 = _MXISignpostLogSystem();
  v16 = _MXISignpostCreate(v15);
  v17 = v15;
  v18 = v17;
  v138 = v16 - 1;
  spid = v16;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "MXI_TO_ASTC", "UseGPU: True", buf, 2u);
  }

  if (a1)
  {
    v142 = objc_msgSend_device(*a1, v19, v20, v21, v22);
    v27 = objc_msgSend_pixelFormat(*a1, v23, v24, v25, v26);
    v32 = objc_msgSend_width(*a1, v28, v29, v30, v31);
    v41 = objc_msgSend_height(*a1, v33, v34, v35, v36);
    v42 = a6;
    if (a6 <= 1)
    {
      v42 = objc_msgSend_mipmapLevelCount(*a1, v37, v38, v39, v40);
    }

    v150 = 0;
    v149 = 0u;
    v148 = 0u;
    if ((sub_22F9ED314(buf, v142, 2, v27, v32, v41, 1u, v42, a2, a3, SWORD1(a3), a4, a6) & 1) == 0)
    {
      *a7 = 0;
      a7[1] = 0;
      a7[2] = 0;
LABEL_48:

      *&v151 = &v148;
      sub_22F9DC140(&v151);

      goto LABEL_49;
    }

    v43 = [ASTCEncoder alloc];
    v145 = 0;
    *&v44 = a8;
    v46 = objc_msgSend_initWithDevice_blockWidth_blockHeight_rankModesCountRatio_fastSkipThreshold_collectStatistics_error_(v43, v45, v142, a3, a4, a5, 0, &v145, v44);
    v137 = v145;
    if (!v46)
    {
      v116 = _mxi_log();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v151) = 0;
        _os_log_impl(&dword_22F9C3000, v116, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:748] Failed creating ASTCEncoder", &v151, 2u);
      }

      *a7 = 0;
      a7[1] = 0;
      a7[2] = 0;
      goto LABEL_47;
    }

    v135 = objc_msgSend_newCommandQueue(v142, v47, v48, v49, v50);
    v59 = objc_msgSend_commandBuffer(v135, v51, v52, v53, v54);
    if (a2)
    {
      v60 = 0;
      v136 = a2;
      v134 = vdupq_n_s64(8uLL);
      while (1)
      {
        if (a6 >= 2)
        {
          v61 = objc_msgSend_computeCommandEncoder(v59, v55, v56, v57, v58);
          objc_msgSend_setComputePipelineState_(v61, v62, v150, v63, v64);
          objc_msgSend_setTexture_atIndex_(v61, v65, *(&v149 + 1), 0, v66);
          objc_msgSend_setTexture_atIndex_(v61, v67, a1[v60], 1, v68);
          *&v151 = objc_msgSend_width(*(&v149 + 1), v69, v70, v71, v72);
          *(&v151 + 1) = objc_msgSend_height(*(&v149 + 1), v73, v74, v75, v76);
          v152 = 1;
          v143 = v134;
          v144 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v61, v77, &v151, &v143, v78);
          objc_msgSend_endEncoding(v61, v79, v80, v81, v82);
          if (a6 != 2)
          {
            v87 = objc_msgSend_blitCommandEncoder(v59, v83, v84, v85, v86);
            objc_msgSend_generateMipmapsForTexture_(v87, v88, *(&v149 + 1), v89, v90);
            objc_msgSend_endEncoding(v87, v91, v92, v93, v94);
          }
        }

        if (v42)
        {
          break;
        }

LABEL_29:
        if (++v60 == v136)
        {
          goto LABEL_30;
        }
      }

      v95 = 0;
      while (1)
      {
        if (!v95 || (v96 = *(&v149 + 1)) == 0)
        {
          v96 = a1[v60];
        }

        v97 = v96;
        v101 = v97;
        v102 = !v95 || *(&v149 + 1) == 0;
        v103 = !v102;
        if (v147)
        {
          v104 = objc_msgSend_newTextureViewWithPixelFormat_(v97, v98, v147, v99, v100);

          v101 = v104;
          if (!v104)
          {
            break;
          }
        }

        objc_msgSend_encodeWithCommandBuffer_destTexture_destSlice_destLevel_srcTexture_srcSlice_srcLevel_(v46, v98, v59, *(v148 + 8 * v60), 0, v95, v101, 0, (v95 - v103));

        if (v42 == ++v95)
        {
          goto LABEL_29;
        }
      }

      v117 = _mxi_log();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v151) = 67109376;
        DWORD1(v151) = v60;
        WORD4(v151) = 1024;
        *(&v151 + 10) = v95;
        _os_log_impl(&dword_22F9C3000, v117, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:780] [ImageASTC] failed creating source texture view for slice (%d) and mip (%d)", &v151, 0xEu);
      }
    }

    else
    {
LABEL_30:
      objc_msgSend_commit(v59, v55, v56, v57, v58);
      objc_msgSend_waitUntilCompleted(v59, v105, v106, v107, v108);
      if (objc_msgSend_status(v59, v109, v110, v111, v112) == 4)
      {

        v113 = _MXISignpostLogSystem();
        v114 = v113;
        if (v138 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v113))
        {
          LOWORD(v151) = 0;
          _os_signpost_emit_with_name_impl(&dword_22F9C3000, v114, OS_SIGNPOST_INTERVAL_END, spid, "MXI_TO_ASTC", &unk_22FA1C169, &v151, 2u);
        }

        *a7 = 0;
        a7[1] = 0;
        a7[2] = 0;
        sub_22F9F05B0(a7, v148, *(&v148 + 1), (*(&v148 + 1) - v148) >> 3);
        goto LABEL_47;
      }

      v117 = _mxi_log();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        v122 = objc_msgSend_error(v59, v118, v119, v120, v121);
        v127 = objc_msgSend_debugDescription(v122, v123, v124, v125, v126);
        v128 = v127;
        v133 = objc_msgSend_UTF8String(v127, v129, v130, v131, v132);
        LODWORD(v151) = 136315138;
        *(&v151 + 4) = v133;
        _os_log_impl(&dword_22F9C3000, v117, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:796] [ImageASTC] command buffer failed with error: %s", &v151, 0xCu);
      }
    }

    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;

LABEL_47:
    goto LABEL_48;
  }

  v115 = _mxi_log();
  if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v115, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:723] Invalid array of textures", buf, 2u);
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
LABEL_49:
  objc_autoreleasePoolPop(context);
}

void sub_22F9EFF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  sub_22F9EE358(&a27);

  _Unwind_Resume(a1);
}

BOOL image::ASTCStatistics(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v113 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v14 = objc_msgSend_device(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_textureType(v9, v15, v16, v17, v18);
  v24 = objc_msgSend_pixelFormat(v9, v20, v21, v22, v23);
  v29 = objc_msgSend_width(v9, v25, v26, v27, v28);
  v34 = objc_msgSend_height(v9, v30, v31, v32, v33);
  v39 = objc_msgSend_arrayLength(v9, v35, v36, v37, v38);
  v44 = objc_msgSend_mipmapLevelCount(v9, v40, v41, v42, v43);
  v111 = 0;
  v110 = 0u;
  v109 = 0u;
  if (sub_22F9ED314(v107, v14, v19, v24, v29, v34, v39, v44, 1u, a2, SWORD1(a2), a3, 1u))
  {
    if (v108)
    {
      v48 = objc_msgSend_newTextureViewWithPixelFormat_(v9, v45, v108, v46, v47);

      v9 = v48;
    }

    v49 = [ASTCEncoder alloc];
    v106 = 0;
    LODWORD(v50) = 1.0;
    v52 = objc_msgSend_initWithDevice_blockWidth_blockHeight_rankModesCountRatio_fastSkipThreshold_collectStatistics_error_(v49, v51, v14, a2, a3, 5, 1, &v106, v50);
    v57 = v106;
    if (v52)
    {
      v58 = objc_msgSend_newCommandQueue(v14, v53, v54, v55, v56);
      v67 = objc_msgSend_commandBuffer(v58, v59, v60, v61, v62);
      for (i = 0; objc_msgSend_arrayLength(v9, v63, v64, v65, v66) > i; ++i)
      {
        for (j = 0; objc_msgSend_mipmapLevelCount(v9, v69, v70, v71, v72) > j; ++j)
        {
          objc_msgSend_encodeWithCommandBuffer_destTexture_destSlice_destLevel_srcTexture_srcSlice_srcLevel_(v52, v63, v67, *v109, i, j, v9, i, j);
        }
      }

      objc_msgSend_commit(v67, v69, v70, v71, v72);
      objc_msgSend_waitUntilCompleted(v67, v75, v76, v77, v78);
      v83 = objc_msgSend_status(v67, v79, v80, v81, v82);
      v74 = v83 == 4;
      if (v83 == 4)
      {
        objc_msgSend_finalizeStatistics_modesPath_errorsPath_(v52, v84, a4, a5, a6);
      }

      else
      {
        v85 = _mxi_log();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v91 = objc_msgSend_error(v67, v87, v88, v89, v90);
          v96 = objc_msgSend_debugDescription(v91, v92, v93, v94, v95);
          v97 = v96;
          v102 = objc_msgSend_UTF8String(v96, v98, v99, v100, v101);
          *buf = 136315138;
          *&buf[4] = v102;
          _os_log_impl(&dword_22F9C3000, v85, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:851] [ImageASTC] command buffer failed with error: %s", buf, 0xCu);
        }
      }
    }

    else
    {
      v58 = _mxi_log();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v58, OS_LOG_TYPE_ERROR, "[Image/ImageASTC.mm:831] Failed creating ASTCEncoder", buf, 2u);
      }

      v74 = 0;
    }
  }

  else
  {
    v74 = 0;
  }

  *buf = &v109;
  sub_22F9DC140(buf);

  return v74;
}

void sub_22F9F032C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_22F9EE358(va);
  _Unwind_Resume(a1);
}

__n128 sub_22F9F0474(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28449BEF8;
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

uint64_t sub_22F9F04CC(uint64_t a1)
{
  result = astcenc_compress_image();
  if (result)
  {
    atomic_store(0, *(a1 + 8));
  }

  return result;
}