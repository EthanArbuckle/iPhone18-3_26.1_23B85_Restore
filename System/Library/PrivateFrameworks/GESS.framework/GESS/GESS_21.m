void sub_24BE08F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&a22);

  _Unwind_Resume(a1);
}

BOOL sub_24BE09150(uint64_t a1, int a2, void *a3, float a4, float a5, uint64_t a6, void *a7, char a8, uint64_t a9)
{
  LODWORD(v12) = a2;
  v132 = *MEMORY[0x277D85DE8];
  v128 = a4;
  v129 = a5;
  v14 = (a3[1] - *a3) >> 4;
  if (v14 >= 0xFF)
  {
    v15 = 255;
  }

  else
  {
    v15 = (a3[1] - *a3) >> 4;
  }

  context = objc_autoreleasePoolPush();
  v119 = objc_msgSend_newCommandQueue(*a1, v16, v17, v18);
  v22 = objc_msgSend_contents(*(a1 + 48), v19, v20, v21);
  if (v12)
  {
    v26 = v22;
    v27 = v12;
    do
    {
      v28 = vcvts_n_f32_s32(rand(), 0x1FuLL);
      v29 = (v28 + v28) * 3.14159265;
      *v26++ = v29;
      --v27;
    }

    while (v27);
  }

  v30 = objc_msgSend_commandBuffer(v119, v23, v24, v25);
  v116 = a8;
  v117 = a9;
  v115 = a7;
  v34 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 104), v31, v32, v33);
  v38 = v12;
  if (v34 >= v12)
  {
    v12 = v12;
  }

  else
  {
    v12 = v34;
  }

  v39 = objc_msgSend_computeCommandEncoder(v30, v35, v36, v37);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v40, *(a1 + 88), 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v41, *(a1 + 72), 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v42, *(a1 + 96), 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v43, *(a1 + 80), 0, 3);
  objc_msgSend_setComputePipelineState_(v39, v44, *(a1 + 104), v45);
  __p = v38;
  v127 = vdupq_n_s64(1uLL);
  v124 = v12;
  v125 = v127;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v39, v46, &__p, &v124);
  objc_msgSend_endEncoding(v39, v47, v48, v49);
  if (v14)
  {
    v53 = 0;
    if (v15 <= 1)
    {
      v54 = 1;
    }

    else
    {
      v54 = v15;
    }

    v55 = 16 * v54;
    do
    {
      v56 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 112), v50, v51, v52);
      if (v56 >= v38)
      {
        v60 = v38;
      }

      else
      {
        v60 = v56;
      }

      v61 = (*a3 + v53);
      v123 = *v61;
      v122 = v61[1];
      v121 = v61[2];
      v62 = objc_msgSend_computeCommandEncoder(v30, v57, v58, v59);

      objc_msgSend_setBuffer_offset_atIndex_(v62, v63, *(a1 + 32), 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v62, v64, *(a1 + 40), 0, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v62, v65, *(a1 + 56), 0, 2);
      objc_msgSend_setBytes_length_atIndex_(v62, v66, &v123, 4, 3);
      objc_msgSend_setBytes_length_atIndex_(v62, v67, &v122, 4, 4);
      objc_msgSend_setBytes_length_atIndex_(v62, v68, &v121, 4, 5);
      objc_msgSend_setBytes_length_atIndex_(v62, v69, &v128, 4, 6);
      objc_msgSend_setBytes_length_atIndex_(v62, v70, &v129, 4, 7);
      objc_msgSend_setBuffer_offset_atIndex_(v62, v71, *(a1 + 48), 0, 8);
      objc_msgSend_setComputePipelineState_(v62, v72, *(a1 + 112), v73);
      __p = v38;
      v127 = vdupq_n_s64(1uLL);
      v124 = v60;
      v125 = v127;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v62, v74, &__p, &v124);
      objc_msgSend_endEncoding(v62, v75, v76, v77);
      objc_msgSend_encodeIntersectionToCommandBuffer_intersectionType_rayBuffer_rayBufferOffset_intersectionBuffer_intersectionBufferOffset_rayCount_accelerationStructure_(*(a1 + 24), v78, v30, 1, *(a1 + 56), 0, *(a1 + 64), 0, v38, *(a1 + 16));
      v82 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 120), v79, v80, v81);
      if (v82 >= v38)
      {
        v86 = v38;
      }

      else
      {
        v86 = v82;
      }

      v87 = objc_msgSend_computeCommandEncoder(v30, v83, v84, v85);

      objc_msgSend_setBuffer_offset_atIndex_(v87, v88, *(a1 + 64), 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v87, v89, *(a1 + 40), 0, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v87, v90, *(a1 + 56), 0, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v87, v91, *(a1 + 72), 0, 3);
      objc_msgSend_setBuffer_offset_atIndex_(v87, v92, *(a1 + 88), 0, 4);
      objc_msgSend_setBuffer_offset_atIndex_(v87, v93, *(a1 + 80), 0, 5);
      objc_msgSend_setBuffer_offset_atIndex_(v87, v94, *(a1 + 96), 0, 6);
      objc_msgSend_setComputePipelineState_(v87, v95, *(a1 + 120), v96);
      __p = v38;
      v127 = vdupq_n_s64(1uLL);
      v124 = v86;
      v125 = v127;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v87, v97, &__p, &v124);
      objc_msgSend_endEncoding(v87, v98, v99, v100);
      v53 += 16;
      v39 = v87;
    }

    while (v55 != v53);
  }

  else
  {
    v87 = v39;
  }

  sub_24BCDF83C();
  objc_msgSend_commit(v30, v101, v102, v103);
  objc_msgSend_waitUntilCompleted(v30, v104, v105, v106);
  v110 = objc_msgSend_error(v30, v107, v108, v109);
  v111 = sub_24BD4C518(v110);

  if (v111)
  {
    if (v116)
    {
      sub_24BCA2D38(v131, v117);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(v115, v131, 16, &__p);
      if (v127.i8[15] < 0)
      {
        operator delete(__p);
      }

      v112 = v131;
    }

    else
    {
      LODWORD(v124) = 0;
      v125.i64[0] = std::system_category();
      sub_24BCA2D38(v130, v117);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(&v124, v130, 16, &__p);
      if (v127.i8[15] < 0)
      {
        operator delete(__p);
      }

      v112 = v130;
    }

    sub_24BC9F08C(v112);
  }

  objc_autoreleasePoolPop(context);
  v113 = *MEMORY[0x277D85DE8];
  return !v111;
}

void sub_24BE096F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&a30);

  _Unwind_Resume(a1);
}

BOOL sub_24BE097BC(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, int a8)
{
  v72 = *MEMORY[0x277D85DE8];
  v16 = objc_autoreleasePoolPush();
  v17 = sub_24BE4857C(a3);
  v18 = *a1;
  *a1 = v17;

  v19 = *a1;
  v65 = 0;
  v20 = sub_24BD4C428(v19, &v65, a6, a8);
  v21 = v65;
  v22 = *(a1 + 8);
  *(a1 + 8) = v20;

  if (v21)
  {
    if (a5)
    {
      sub_24BCA2D38(v71, a7);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(a4, v71, 5, __p);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }

      v23 = v71;
    }

    else
    {
      LODWORD(v61) = 0;
      v62 = std::system_category();
      sub_24BCA2D38(v70, a7);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(&v61, v70, 5, __p);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }

      v23 = v70;
    }

    sub_24BC9F08C(v23);

LABEL_24:
    v56 = 0;
    goto LABEL_25;
  }

  v24 = sub_24BE48588(a3);
  v25 = *(a1 + 16);
  *(a1 + 16) = v24;

  v26 = 4 * a2;
  v28 = objc_msgSend_newBufferWithLength_options_(*a1, v27, v26, 0);
  v29 = *(a1 + 48);
  *(a1 + 48) = v28;

  v30 = 12 * a2;
  v32 = objc_msgSend_newBufferWithLength_options_(*a1, v31, v30, 0);
  v33 = *(a1 + 32);
  *(a1 + 32) = v32;

  v35 = objc_msgSend_newBufferWithLength_options_(*a1, v34, v30, 0);
  v36 = *(a1 + 40);
  *(a1 + 40) = v35;

  v38 = objc_msgSend_newBufferWithLength_options_(*a1, v37, v26, 0);
  v39 = *(a1 + 56);
  *(a1 + 56) = v38;

  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(*(a1 + 32)), vceqzq_s64(*(a1 + 48))))))
  {
    if (a5)
    {
      sub_24BCA2D38(v69, a7);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(a4, v69, 2, __p);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }

      v40 = v69;
    }

    else
    {
      LODWORD(v61) = 0;
      v62 = std::system_category();
      sub_24BCA2D38(v68, a7);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(&v61, v68, 2, __p);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }

      v40 = v68;
    }

    sub_24BC9F08C(v40);
    goto LABEL_24;
  }

  v41 = objc_alloc_init(MEMORY[0x277CD6D30]);
  objc_msgSend_setThreadGroupSizeIsMultipleOfThreadExecutionWidth_(v41, v42, 1, v43);
  v46 = objc_msgSend_newFunctionWithName_(*(a1 + 8), v44, @"rtak", v45);
  objc_msgSend_setComputeFunction_(v41, v47, v46, v48);

  v49 = *a1;
  v60 = 0;
  v51 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v49, v50, v41, 0, 0, &v60);
  v52 = v60;
  v54 = *(a1 + 24);
  v53 = (a1 + 24);
  *v53 = v51;

  v55 = *v53;
  v56 = *v53 != 0;
  if (!v55)
  {
    if (a5)
    {
      sub_24BCA2D38(v67, a7);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(a4, v67, 5, __p);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }

      v57 = v67;
    }

    else
    {
      LODWORD(v61) = 0;
      v62 = std::system_category();
      sub_24BCA2D38(v66, a7);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(&v61, v66, 5, __p);
      if (v64 < 0)
      {
        operator delete(__p[0]);
      }

      v57 = v66;
    }

    sub_24BC9F08C(v57);
  }

LABEL_25:
  objc_autoreleasePoolPop(v16);
  v58 = *MEMORY[0x277D85DE8];
  return v56;
}

void sub_24BE09BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&a20);

  _Unwind_Resume(a1);
}

BOOL sub_24BE09D20(uint64_t a1, unsigned int a2, int a3, float a4, float a5, uint64_t a6, void *a7, char a8, uint64_t a9)
{
  v79 = *MEMORY[0x277D85DE8];
  v75 = a5;
  v76 = a4;
  v74 = 3;
  if (a3 == 2)
  {
    v13 = 1;
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v13 = 2;
  }

  v74 = v13;
LABEL_6:
  v14 = objc_autoreleasePoolPush();
  v18 = objc_msgSend_newCommandQueue(*a1, v15, v16, v17);
  v22 = objc_msgSend_contents(*(a1 + 56), v19, v20, v21);
  if (a2)
  {
    v26 = v22;
    v27 = a2;
    do
    {
      v28 = vcvts_n_f32_s32(rand(), 0x1FuLL);
      v29 = (v28 + v28) * 3.14159265;
      *v26++ = v29;
      --v27;
    }

    while (v27);
  }

  v30 = objc_msgSend_commandBuffer(v18, v23, v24, v25);
  v34 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 24), v31, v32, v33);
  if (v34 >= a2)
  {
    v38 = a2;
  }

  else
  {
    v38 = v34;
  }

  v39 = objc_msgSend_computeCommandEncoder(v30, v35, v36, v37);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v40, *(a1 + 32), 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v41, *(a1 + 40), 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v42, *(a1 + 48), 0, 2);
  objc_msgSend_setAccelerationStructure_atBufferIndex_(v39, v43, *(a1 + 16), 3);
  objc_msgSend_useResource_usage_(v39, v44, *(a1 + 16), 1);
  objc_msgSend_setBuffer_offset_atIndex_(v39, v45, *(a1 + 56), 0, 4);
  objc_msgSend_setBytes_length_atIndex_(v39, v46, &v76, 4, 5);
  objc_msgSend_setBytes_length_atIndex_(v39, v47, &v75, 4, 6);
  objc_msgSend_setBytes_length_atIndex_(v39, v48, &v74, 4, 7);
  objc_msgSend_setComputePipelineState_(v39, v49, *(a1 + 24), v50);
  __p = a2;
  v73 = vdupq_n_s64(1uLL);
  v70 = v38;
  v71 = v73;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v39, v51, &__p, &v70);
  objc_msgSend_endEncoding(v39, v52, v53, v54);
  sub_24BCDF83C();
  objc_msgSend_commit(v30, v55, v56, v57);
  objc_msgSend_waitUntilCompleted(v30, v58, v59, v60);
  v64 = objc_msgSend_error(v30, v61, v62, v63);
  v65 = sub_24BD4C518(v64);

  if (v65)
  {
    if (a8)
    {
      sub_24BCA2D38(v78, a9);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(a7, v78, 16, &__p);
      if (v73.i8[15] < 0)
      {
        operator delete(__p);
      }

      v66 = v78;
    }

    else
    {
      LODWORD(v70) = 0;
      v71.i64[0] = std::system_category();
      sub_24BCA2D38(v77, a9);
      sub_24BC836D4(&__p, &unk_24C0435AF);
      sub_24BD6B844(&v70, v77, 16, &__p);
      if (v73.i8[15] < 0)
      {
        operator delete(__p);
      }

      v66 = v77;
    }

    sub_24BC9F08C(v66);
  }

  objc_autoreleasePoolPop(v14);
  v67 = *MEMORY[0x277D85DE8];
  return !v65;
}

void sub_24BE0A078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&a22);

  _Unwind_Resume(a1);
}

void sub_24BE0A120(uint64_t a1, _DWORD *a2)
{
  v11[44] = *MEMORY[0x277D85DE8];
  sub_24BC836D4(__p, off_27F078F98[0]);
  v11[0] = 0;
  v11[1] = 0;
  v4 = sub_24BCB6470((a1 + 8), v11, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = (*(a1 + 8) + 16 * v4);
  v6 = v5[1];
  v8 = *v5;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v6);
  }

  sub_24BCB2008(v11, 3uLL);
  v7 = (a2[1] * *a2);
  operator new[]();
}

void sub_24BE0B388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE0B528(&a49);
  if (a66)
  {
    a67 = a66;
    operator delete(a66);
  }

  MEMORY[0x24C254890](a30, 0x1000C8077774924);
  if (a71)
  {
    a72 = a71;
    operator delete(a71);
  }

  _Unwind_Resume(a1);
}

void sub_24BE0B630(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  operator new[]();
}

void sub_24BE0B770(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE0B78C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    MEMORY[0x24C254890](v2, 0x1000C8000313F17);
  }

  v3 = a1[6];
  if (v3)
  {
    MEMORY[0x24C254890](v3, 0x1000C8000313F17);
  }

  v4 = a1[7];
  if (v4)
  {
    MEMORY[0x24C254890](v4, 0x1000C8000313F17);
  }

  v5 = a1[8];
  if (v5)
  {
    MEMORY[0x24C254890](v5, 0x1000C8000313F17);
  }

  v6 = a1[9];
  if (v6)
  {
    MEMORY[0x24C254890](v6, 0x1000C8000313F17);
  }

  v7 = a1[10];
  if (v7)
  {
    MEMORY[0x24C254890](v7, 0x1000C8000313F17);
  }

  v8 = a1[11];
  if (v8)
  {
    MEMORY[0x24C254890](v8, 0x1000C8000313F17);
  }

  v9 = a1[12];
  if (v9)
  {
    MEMORY[0x24C254890](v9, 0x1000C8000313F17);
  }

  v10 = a1[2];
  if (v10)
  {
    a1[3] = v10;
    operator delete(v10);
  }

  return a1;
}

BOOL sub_24BE0B850(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  return 0;
}

void sub_24BE0B888(uint64_t a1, __n128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = &a2[-2].n128_i8[8];
  v9 = a2 - 3;
  v10 = &a2[-5].n128_i8[8];
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return;
    }

    if (v15 == 2)
    {
      v182 = *a3;
      v183 = *(&a2[-2] + 8);
      v198 = a2[-1].n128_u64[1];
      v197 = v183;
      v184 = *v11;
      v196 = *(v11 + 2);
      v195 = v184;
      if (!v182(&v197, &v195))
      {
        return;
      }

LABEL_78:
      v185 = *v11;
      v198 = *(v11 + 2);
      v197 = v185;
      v186 = *v8;
      *(v11 + 2) = a2[-1].n128_u64[1];
      *v11 = v186;
      *v8 = v197;
      v167 = v198;
      goto LABEL_79;
    }

LABEL_10:
    if (v14 <= 575)
    {
      if (a5)
      {
        sub_24BE0CA50(v11, a2, a3);
      }

      else
      {
        sub_24BE0CB80(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {
        sub_24BE0D738(v11, a2, a2, a3);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = v11 + 24 * (v15 >> 1);
    v18 = *a3;
    if (v14 >= 0xC01)
    {
      v19 = *v17;
      v198 = *(v17 + 2);
      v197 = v19;
      v20 = *v11;
      v196 = *(v11 + 2);
      v195 = v20;
      v21 = v18(&v197, &v195);
      v22 = *a3;
      if (v21)
      {
        v23 = *v8;
        v198 = a2[-1].n128_u64[1];
        v197 = v23;
        v24 = *v17;
        v196 = *(v17 + 2);
        v195 = v24;
        if (v22(&v197, &v195))
        {
          v25 = *v11;
          v198 = *(v11 + 2);
          v197 = v25;
          v26 = *v8;
          *(v11 + 2) = a2[-1].n128_u64[1];
          *v11 = v26;
          goto LABEL_27;
        }

        v55 = *v11;
        v198 = *(v11 + 2);
        v197 = v55;
        v56 = *v17;
        *(v11 + 2) = *(v17 + 2);
        *v11 = v56;
        v57 = v197;
        *(v17 + 2) = v198;
        *v17 = v57;
        v58 = *a3;
        v59 = *v8;
        v198 = a2[-1].n128_u64[1];
        v197 = v59;
        v60 = *v17;
        v196 = *(v17 + 2);
        v195 = v60;
        if (v58(&v197, &v195))
        {
          v61 = *v17;
          v198 = *(v17 + 2);
          v197 = v61;
          v62 = *v8;
          *(v17 + 2) = a2[-1].n128_u64[1];
          *v17 = v62;
LABEL_27:
          *v8 = v197;
          a2[-1].n128_u64[1] = v198;
        }
      }

      else
      {
        v35 = *v8;
        v198 = a2[-1].n128_u64[1];
        v197 = v35;
        v36 = *v17;
        v196 = *(v17 + 2);
        v195 = v36;
        if (v22(&v197, &v195))
        {
          v37 = *v17;
          v198 = *(v17 + 2);
          v197 = v37;
          v38 = *v8;
          *(v17 + 2) = a2[-1].n128_u64[1];
          *v17 = v38;
          *v8 = v197;
          a2[-1].n128_u64[1] = v198;
          v39 = *a3;
          v40 = *v17;
          v198 = *(v17 + 2);
          v197 = v40;
          v41 = *v11;
          v196 = *(v11 + 2);
          v195 = v41;
          if (v39(&v197, &v195))
          {
            v42 = *v11;
            v198 = *(v11 + 2);
            v197 = v42;
            v43 = *v17;
            *(v11 + 2) = *(v17 + 2);
            *v11 = v43;
            v44 = v197;
            *(v17 + 2) = v198;
            *v17 = v44;
          }
        }
      }

      v63 = v11 + 24 * v16;
      v64 = v63 - 24;
      v65 = *a3;
      v66 = *(v63 - 24);
      v198 = *(v63 - 1);
      v197 = v66;
      v195 = *(a1 + 24);
      v196 = *(a1 + 40);
      v67 = v65(&v197, &v195);
      v68 = *a3;
      if (v67)
      {
        v69 = *v9;
        v198 = a2[-2].n128_u64[0];
        v197 = v69;
        v70 = *v64;
        v196 = *(v64 + 2);
        v195 = v70;
        if (v68(&v197, &v195))
        {
          v71 = *(a1 + 40);
          v72 = *(a1 + 24);
          v73 = a2[-2].n128_u64[0];
          *(a1 + 24) = *v9;
          *(a1 + 40) = v73;
          *v9 = v72;
          goto LABEL_39;
        }

        v197 = *(a1 + 24);
        v91 = v197;
        v198 = *(a1 + 40);
        v92 = v198;
        v93 = *(v64 + 2);
        *(a1 + 24) = *v64;
        *(a1 + 40) = v93;
        *(v64 + 2) = v92;
        *v64 = v91;
        v94 = *a3;
        v95 = *v9;
        v198 = a2[-2].n128_u64[0];
        v197 = v95;
        v96 = *v64;
        v196 = *(v64 + 2);
        v195 = v96;
        if (v94(&v197, &v195))
        {
          v97 = *v64;
          v198 = *(v64 + 2);
          v197 = v97;
          v98 = *v9;
          *(v64 + 2) = a2[-2].n128_u64[0];
          *v64 = v98;
          *v9 = v197;
          v71 = v198;
LABEL_39:
          a2[-2].n128_u64[0] = v71;
        }
      }

      else
      {
        v74 = *v9;
        v198 = a2[-2].n128_u64[0];
        v197 = v74;
        v75 = *v64;
        v196 = *(v64 + 2);
        v195 = v75;
        if (v68(&v197, &v195))
        {
          v76 = *v64;
          v198 = *(v64 + 2);
          v197 = v76;
          v77 = *v9;
          *(v64 + 2) = a2[-2].n128_u64[0];
          *v64 = v77;
          *v9 = v197;
          a2[-2].n128_u64[0] = v198;
          v78 = *a3;
          v79 = *v64;
          v198 = *(v64 + 2);
          v197 = v79;
          v195 = *(a1 + 24);
          v196 = *(a1 + 40);
          if (v78(&v197, &v195))
          {
            v197 = *(a1 + 24);
            v80 = v197;
            v198 = *(a1 + 40);
            v81 = v198;
            v82 = *(v64 + 2);
            *(a1 + 24) = *v64;
            *(a1 + 40) = v82;
            *(v64 + 2) = v81;
            *v64 = v80;
          }
        }
      }

      v99 = a1 + 24 * v16;
      v100 = *a3;
      v101 = *(v99 + 24);
      v198 = *(v99 + 40);
      v197 = v101;
      v195 = *(a1 + 48);
      v196 = *(a1 + 64);
      v102 = v100(&v197, &v195);
      v103 = *a3;
      if (v102)
      {
        v104 = *v10;
        v198 = a2[-4].n128_u64[1];
        v197 = v104;
        v105 = *(v99 + 24);
        v196 = *(v99 + 40);
        v195 = v105;
        if (v103(&v197, &v195))
        {
          v106 = *(a1 + 64);
          v107 = *(a1 + 48);
          v108 = a2[-4].n128_u64[1];
          *(a1 + 48) = *v10;
          *(a1 + 64) = v108;
          *v10 = v107;
          goto LABEL_48;
        }

        v197 = *(a1 + 48);
        v118 = v197;
        v198 = *(a1 + 64);
        v119 = v198;
        v120 = *(v99 + 40);
        *(a1 + 48) = *(v99 + 24);
        *(a1 + 64) = v120;
        *(v99 + 40) = v119;
        *(v99 + 24) = v118;
        v121 = *a3;
        v122 = *v10;
        v198 = a2[-4].n128_u64[1];
        v197 = v122;
        v123 = *(v99 + 24);
        v196 = *(v99 + 40);
        v195 = v123;
        if (v121(&v197, &v195))
        {
          v124 = *(v99 + 24);
          v198 = *(v99 + 40);
          v197 = v124;
          v125 = *v10;
          *(v99 + 40) = a2[-4].n128_u64[1];
          *(v99 + 24) = v125;
          *v10 = v197;
          v106 = v198;
LABEL_48:
          a2[-4].n128_u64[1] = v106;
        }
      }

      else
      {
        v109 = *v10;
        v198 = a2[-4].n128_u64[1];
        v197 = v109;
        v110 = *(v99 + 24);
        v196 = *(v99 + 40);
        v195 = v110;
        if (v103(&v197, &v195))
        {
          v111 = *(v99 + 24);
          v198 = *(v99 + 40);
          v197 = v111;
          v112 = *v10;
          *(v99 + 40) = a2[-4].n128_u64[1];
          *(v99 + 24) = v112;
          *v10 = v197;
          a2[-4].n128_u64[1] = v198;
          v113 = *a3;
          v114 = *(v99 + 24);
          v198 = *(v99 + 40);
          v197 = v114;
          v195 = *(a1 + 48);
          v196 = *(a1 + 64);
          if (v113(&v197, &v195))
          {
            v197 = *(a1 + 48);
            v115 = v197;
            v198 = *(a1 + 64);
            v116 = v198;
            v117 = *(v99 + 40);
            *(a1 + 48) = *(v99 + 24);
            *(a1 + 64) = v117;
            *(v99 + 40) = v116;
            *(v99 + 24) = v115;
          }
        }
      }

      v126 = *a3;
      v127 = *v17;
      v198 = *(v17 + 2);
      v197 = v127;
      v128 = *v64;
      v196 = *(v64 + 2);
      v195 = v128;
      v129 = v126(&v197, &v195);
      v130 = *a3;
      if (v129)
      {
        v131 = *(v99 + 24);
        v198 = *(v99 + 40);
        v197 = v131;
        v132 = *v17;
        v196 = *(v17 + 2);
        v195 = v132;
        if (v130(&v197, &v195))
        {
          v133 = *v64;
          v198 = *(v64 + 2);
          v197 = v133;
          *v64 = *(v99 + 24);
          *(v64 + 2) = *(v99 + 40);
          goto LABEL_57;
        }

        v143 = *v64;
        v198 = *(v64 + 2);
        v197 = v143;
        *v64 = *v17;
        *(v64 + 2) = *(v17 + 2);
        v144 = v197;
        *(v17 + 2) = v198;
        *v17 = v144;
        v145 = *a3;
        v146 = *(v99 + 24);
        v198 = *(v99 + 40);
        v197 = v146;
        v147 = *v17;
        v196 = *(v17 + 2);
        v195 = v147;
        if (v145(&v197, &v195))
        {
          v148 = *v17;
          v198 = *(v17 + 2);
          v197 = v148;
          *v17 = *(v99 + 24);
          *(v17 + 2) = *(v99 + 40);
LABEL_57:
          v149 = v197;
          *(v99 + 40) = v198;
          *(v99 + 24) = v149;
        }
      }

      else
      {
        v134 = *(v99 + 24);
        v198 = *(v99 + 40);
        v197 = v134;
        v135 = *v17;
        v196 = *(v17 + 2);
        v195 = v135;
        if (v130(&v197, &v195))
        {
          v136 = *v17;
          v198 = *(v17 + 2);
          v197 = v136;
          *v17 = *(v99 + 24);
          *(v17 + 2) = *(v99 + 40);
          v137 = v197;
          *(v99 + 40) = v198;
          *(v99 + 24) = v137;
          v138 = *a3;
          v139 = *v17;
          v198 = *(v17 + 2);
          v197 = v139;
          v140 = *v64;
          v196 = *(v64 + 2);
          v195 = v140;
          if (v138(&v197, &v195))
          {
            v141 = *v64;
            v198 = *(v64 + 2);
            v197 = v141;
            *v64 = *v17;
            *(v64 + 2) = *(v17 + 2);
            v142 = v197;
            *(v17 + 2) = v198;
            *v17 = v142;
          }
        }
      }

      v150 = *a1;
      v198 = *(a1 + 16);
      v197 = v150;
      v151 = *v17;
      *(a1 + 16) = *(v17 + 2);
      *a1 = v151;
      v152 = v197;
      *(v17 + 2) = v198;
      *v17 = v152;
      goto LABEL_59;
    }

    v27 = *v11;
    v198 = *(v11 + 2);
    v197 = v27;
    v28 = *v17;
    v196 = *(v17 + 2);
    v195 = v28;
    v29 = v18(&v197, &v195);
    v30 = *a3;
    if (v29)
    {
      v31 = *v8;
      v198 = a2[-1].n128_u64[1];
      v197 = v31;
      v32 = *v11;
      v196 = *(v11 + 2);
      v195 = v32;
      if (v30(&v197, &v195))
      {
        v33 = *v17;
        v198 = *(v17 + 2);
        v197 = v33;
        v34 = *v8;
        *(v17 + 2) = a2[-1].n128_u64[1];
        *v17 = v34;
LABEL_36:
        *v8 = v197;
        a2[-1].n128_u64[1] = v198;
        goto LABEL_59;
      }

      v83 = *v17;
      v198 = *(v17 + 2);
      v197 = v83;
      v84 = *v11;
      *(v17 + 2) = *(v11 + 2);
      *v17 = v84;
      v85 = v197;
      *(v11 + 2) = v198;
      *v11 = v85;
      v86 = *a3;
      v87 = *v8;
      v198 = a2[-1].n128_u64[1];
      v197 = v87;
      v88 = *v11;
      v196 = *(v11 + 2);
      v195 = v88;
      if (v86(&v197, &v195))
      {
        v89 = *v11;
        v198 = *(v11 + 2);
        v197 = v89;
        v90 = *v8;
        *(v11 + 2) = a2[-1].n128_u64[1];
        *v11 = v90;
        goto LABEL_36;
      }
    }

    else
    {
      v45 = *v8;
      v198 = a2[-1].n128_u64[1];
      v197 = v45;
      v46 = *v11;
      v196 = *(v11 + 2);
      v195 = v46;
      if (v30(&v197, &v195))
      {
        v47 = *v11;
        v198 = *(v11 + 2);
        v197 = v47;
        v48 = *v8;
        *(v11 + 2) = a2[-1].n128_u64[1];
        *v11 = v48;
        *v8 = v197;
        a2[-1].n128_u64[1] = v198;
        v49 = *a3;
        v50 = *v11;
        v198 = *(v11 + 2);
        v197 = v50;
        v51 = *v17;
        v196 = *(v17 + 2);
        v195 = v51;
        if (v49(&v197, &v195))
        {
          v52 = *v17;
          v198 = *(v17 + 2);
          v197 = v52;
          v53 = *v11;
          *(v17 + 2) = *(v11 + 2);
          *v17 = v53;
          v54 = v197;
          *(v11 + 2) = v198;
          *v11 = v54;
        }
      }
    }

LABEL_59:
    if ((a5 & 1) == 0)
    {
      v153 = *a3;
      v154 = *(a1 - 24);
      v198 = *(a1 - 8);
      v197 = v154;
      v155 = *a1;
      v196 = *(a1 + 16);
      v195 = v155;
      if ((v153(&v197, &v195) & 1) == 0)
      {
        v11 = sub_24BE0CC88(a1, a2, a3);
        goto LABEL_66;
      }
    }

    v156 = sub_24BE0CEC0(a1, a2, a3);
    if ((v157 & 1) == 0)
    {
      goto LABEL_64;
    }

    v158 = sub_24BE0D0D0(a1, v156, a3);
    v11 = &v156[1].n128_i8[8];
    if (sub_24BE0D0D0(&v156[1].n128_i64[1], a2, a3))
    {
      a4 = -v13;
      a2 = v156;
      if (v158)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v158)
    {
LABEL_64:
      sub_24BE0B888(a1, v156, a3, -v13, a5 & 1);
      v11 = &v156[1].n128_i8[8];
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {
      sub_24BE0C76C(v11, (v11 + 24), v11 + 3, (a2 - 24), a3);
      return;
    }

    if (v15 == 5)
    {
      sub_24BE0C76C(v11, (v11 + 24), v11 + 3, (v11 + 72), a3);
      v170 = *a3;
      v171 = *(&a2[-2] + 8);
      v198 = a2[-1].n128_u64[1];
      v197 = v171;
      v195 = *(v11 + 72);
      v196 = *(v11 + 11);
      if (v170(&v197, &v195))
      {
        v172 = *(v11 + 11);
        v173 = *(v11 + 72);
        v174 = a2[-1].n128_u64[1];
        *(v11 + 72) = *v8;
        *(v11 + 11) = v174;
        *v8 = v173;
        a2[-1].n128_u64[1] = v172;
        v175 = *a3;
        v197 = *(v11 + 72);
        v198 = *(v11 + 11);
        v195 = v11[3];
        v196 = *(v11 + 8);
        if (v175(&v197, &v195))
        {
          v176 = *(v11 + 8);
          v177 = v11[3];
          v11[3] = *(v11 + 72);
          v178 = *(v11 + 11);
          *(v11 + 8) = v178;
          *(v11 + 72) = v177;
          *(v11 + 11) = v176;
          v179 = *a3;
          v197 = v11[3];
          v198 = v178;
          v195 = *(v11 + 24);
          v196 = *(v11 + 5);
          if (v179(&v197, &v195))
          {
            v180 = *(v11 + 5);
            v181 = *(v11 + 24);
            *(v11 + 24) = v11[3];
            *(v11 + 5) = *(v11 + 8);
            v11[3] = v181;
            *(v11 + 8) = v180;
LABEL_87:
            v191 = *a3;
            v197 = *(v11 + 24);
            v198 = *(v11 + 5);
            v192 = *v11;
            v196 = *(v11 + 2);
            v195 = v192;
            if (v191(&v197, &v195))
            {
              v193 = *v11;
              v198 = *(v11 + 2);
              v197 = v193;
              *v11 = *(v11 + 24);
              *(v11 + 2) = *(v11 + 5);
              *(v11 + 24) = v197;
              *(v11 + 5) = v198;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v159 = *a3;
  v197 = *(v11 + 24);
  v198 = *(v11 + 5);
  v160 = *v11;
  v196 = *(v11 + 2);
  v195 = v160;
  v161 = v159(&v197, &v195);
  v162 = *a3;
  if (v161)
  {
    v163 = *v8;
    v198 = a2[-1].n128_u64[1];
    v197 = v163;
    v195 = *(v11 + 24);
    v196 = *(v11 + 5);
    if (v162(&v197, &v195))
    {
      goto LABEL_78;
    }

    v164 = *v11;
    v198 = *(v11 + 2);
    v197 = v164;
    *v11 = *(v11 + 24);
    *(v11 + 2) = *(v11 + 5);
    *(v11 + 24) = v197;
    *(v11 + 5) = v198;
    v165 = *a3;
    v166 = *v8;
    v198 = a2[-1].n128_u64[1];
    v197 = v166;
    v195 = *(v11 + 24);
    v196 = *(v11 + 5);
    if (!v165(&v197, &v195))
    {
      return;
    }

    v167 = *(v11 + 5);
    v168 = *(v11 + 24);
    v169 = a2[-1].n128_u64[1];
    *(v11 + 24) = *v8;
    *(v11 + 5) = v169;
    *v8 = v168;
LABEL_79:
    a2[-1].n128_u64[1] = v167;
    return;
  }

  v187 = *v8;
  v198 = a2[-1].n128_u64[1];
  v197 = v187;
  v195 = *(v11 + 24);
  v196 = *(v11 + 5);
  if (v162(&v197, &v195))
  {
    v188 = *(v11 + 5);
    v189 = *(v11 + 24);
    v190 = a2[-1].n128_u64[1];
    *(v11 + 24) = *v8;
    *(v11 + 5) = v190;
    *v8 = v189;
    a2[-1].n128_u64[1] = v188;
    goto LABEL_87;
  }
}

__n128 sub_24BE0C76C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  v40 = *a1;
  v41 = a1[1].n128_u64[0];
  v11 = v10(&v42, &v40);
  v12 = *a5;
  if (v11)
  {
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v12(&v42, &v40))
    {
      v13 = a1[1].n128_u64[0];
      v14 = *a1;
      v15 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v15;
LABEL_9:
      *a3 = v14;
      a3[1].n128_u64[0] = v13;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    v26 = *a5;
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v26(&v42, &v40))
    {
      v13 = a2[1].n128_u64[0];
      v14 = *a2;
      v27 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v27;
      goto LABEL_9;
    }
  }

  else
  {
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v12(&v42, &v40))
    {
      v16 = a2[1].n128_u64[0];
      v17 = *a2;
      v18 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v18;
      *a3 = v17;
      a3[1].n128_u64[0] = v16;
      v19 = *a5;
      v42 = *a2;
      v43 = a2[1].n128_u64[0];
      v40 = *a1;
      v41 = a1[1].n128_u64[0];
      if (v19(&v42, &v40))
      {
        v20 = a1[1].n128_u64[0];
        v21 = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = v21;
        a2[1].n128_u64[0] = v20;
      }
    }
  }

LABEL_10:
  v28 = *a5;
  v42 = *a4;
  v43 = a4[1].n128_u64[0];
  v40 = *a3;
  v41 = a3[1].n128_u64[0];
  if (v28(&v42, &v40))
  {
    v30 = a3[1].n128_u64[0];
    v31 = *a3;
    v32 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v32;
    *a4 = v31;
    a4[1].n128_u64[0] = v30;
    v33 = *a5;
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v33(&v42, &v40))
    {
      v34 = a2[1].n128_u64[0];
      v35 = *a2;
      v36 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v36;
      *a3 = v35;
      a3[1].n128_u64[0] = v34;
      v37 = *a5;
      v42 = *a2;
      v43 = a2[1].n128_u64[0];
      v40 = *a1;
      v41 = a1[1].n128_u64[0];
      if (v37(&v42, &v40))
      {
        v38 = a1[1].n128_u64[0];
        result = *a1;
        v39 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v39;
        *a2 = result;
        a2[1].n128_u64[0] = v38;
      }
    }
  }

  return result;
}

uint64_t sub_24BE0CA50(uint64_t result, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v24 = v3;
    v25 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        v12 = *a3;
        v22 = *v10;
        v23 = *(v10 + 16);
        v13 = *v11;
        v21 = *(v11 + 16);
        v20 = v13;
        result = v12(&v22, &v20);
        if (result)
        {
          v22 = *v10;
          v23 = *(v10 + 16);
          v14 = v9;
          while (1)
          {
            v15 = v6 + v14;
            *(v15 + 24) = *(v6 + v14);
            *(v15 + 40) = *(v6 + v14 + 16);
            if (!v14)
            {
              break;
            }

            v16 = *a3;
            v20 = v22;
            v21 = v23;
            v18 = *(v15 - 24);
            v19 = *(v15 - 8);
            result = v16(&v20, &v18);
            v14 -= 24;
            if ((result & 1) == 0)
            {
              v17 = v6 + v14 + 24;
              goto LABEL_10;
            }
          }

          v17 = v6;
LABEL_10:
          *v17 = v22;
          *(v17 + 16) = v23;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t sub_24BE0CB80(uint64_t result, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v21 = v3;
    v22 = v4;
    v6 = result;
    for (i = result + 24; v6 + 24 != a2; i = v6 + 24)
    {
      v9 = v6;
      v6 = i;
      v10 = *a3;
      v19 = *v6;
      v20 = *(v6 + 16);
      v11 = *v9;
      v18 = *(v9 + 16);
      v17 = v11;
      result = v10(&v19, &v17);
      if (result)
      {
        v19 = *v6;
        v20 = *(v6 + 16);
        v12 = v6;
        do
        {
          v13 = v12 - 24;
          *v12 = *(v12 - 24);
          *(v12 + 16) = *(v12 - 8);
          v14 = *a3;
          v17 = v19;
          v18 = v20;
          v15 = *(v12 - 48);
          v16 = *(v12 - 32);
          result = v14(&v17, &v15);
          v12 = v13;
        }

        while ((result & 1) != 0);
        *v13 = v19;
        *(v13 + 16) = v20;
      }
    }
  }

  return result;
}

__int128 *sub_24BE0CC88(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v31 = *a1;
  v32 = *(a1 + 2);
  v6 = *a3;
  v33 = *a1;
  v34 = *(a1 + 2);
  v29 = *(a2 - 24);
  v30 = *(a2 - 1);
  if (v6(&v33, &v29))
  {
    v7 = a1;
    do
    {
      v8 = (v7 + 24);
      v9 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = *(v7 + 24);
      v30 = *(v7 + 5);
      v10 = v9(&v33, &v29);
      v7 = v8;
    }

    while ((v10 & 1) == 0);
  }

  else
  {
    v11 = (a1 + 24);
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = *v8;
      v30 = *(v8 + 2);
      v13 = v12(&v33, &v29);
      v11 = (v8 + 24);
    }

    while (!v13);
  }

  if (v8 >= v4)
  {
    v14 = v4;
  }

  else
  {
    do
    {
      v14 = (v4 - 24);
      v15 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = *(v4 - 24);
      v30 = *(v4 - 1);
      v4 = (v4 - 24);
    }

    while ((v15(&v33, &v29) & 1) != 0);
  }

  while (v8 < v14)
  {
    v16 = *v8;
    v34 = *(v8 + 2);
    v33 = v16;
    v17 = *v14;
    *(v8 + 2) = *(v14 + 2);
    *v8 = v17;
    v18 = v33;
    *(v14 + 2) = v34;
    *v14 = v18;
    do
    {
      v19 = *(v8 + 24);
      v20 = *(v8 + 5);
      v8 = (v8 + 24);
      v21 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = v19;
      v30 = v20;
    }

    while (!v21(&v33, &v29));
    do
    {
      v33 = v31;
      v34 = v32;
      v22 = *(v14 - 24);
      v23 = *(v14 - 1);
      v14 = (v14 - 24);
      v24 = *a3;
      v30 = v23;
      v29 = v22;
    }

    while ((v24(&v33, &v29) & 1) != 0);
  }

  v25 = (v8 - 24);
  if ((v8 - 24) != a1)
  {
    v26 = *v25;
    *(a1 + 2) = *(v8 - 1);
    *a1 = v26;
  }

  v27 = v31;
  *(v8 - 1) = v32;
  *v25 = v27;
  return v8;
}

uint64_t sub_24BE0CEC0(__int128 *a1, unint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v29 = *a1;
  v30 = *(a1 + 2);
  do
  {
    v7 = *a3;
    v31 = *(a1 + v6 + 24);
    v32 = *(a1 + v6 + 40);
    v27 = v29;
    v28 = v30;
    v6 += 24;
  }

  while ((v7(&v31, &v27) & 1) != 0);
  v8 = (a1 + v6);
  v9 = a1 + v6 - 24;
  if (v6 == 24)
  {
    while (v8 < a2)
    {
      v12 = *a3;
      v10 = a2 - 24;
      v31 = *(a2 - 24);
      v32 = *(a2 - 8);
      v27 = v29;
      v28 = v30;
      a2 -= 24;
      if (v12(&v31, &v27))
      {
        goto LABEL_9;
      }
    }

    v10 = a2;
  }

  else
  {
    do
    {
      v10 = a2 - 24;
      v11 = *a3;
      v31 = *(a2 - 24);
      v32 = *(a2 - 8);
      v27 = v29;
      v28 = v30;
      a2 -= 24;
    }

    while (!v11(&v31, &v27));
  }

LABEL_9:
  if (v8 < v10)
  {
    v13 = v8;
    v14 = v10;
    do
    {
      v31 = *v13;
      v15 = v31;
      v32 = *(v13 + 2);
      v16 = v32;
      v17 = *(v14 + 16);
      *v13 = *v14;
      *(v13 + 2) = v17;
      *(v14 + 16) = v16;
      *v14 = v15;
      do
      {
        v18 = *(v13 + 24);
        v19 = *(v13 + 5);
        v13 = (v13 + 24);
        v20 = *a3;
        v31 = v18;
        v32 = v19;
        v27 = v29;
        v28 = v30;
      }

      while ((v20(&v31, &v27) & 1) != 0);
      do
      {
        v21 = *(v14 - 24);
        v22 = *(v14 - 8);
        v14 -= 24;
        v23 = *a3;
        v32 = v22;
        v31 = v21;
        v27 = v29;
        v28 = v30;
      }

      while (!v23(&v31, &v27));
    }

    while (v13 < v14);
    v9 = v13 - 24;
  }

  if (v9 != a1)
  {
    v24 = *v9;
    *(a1 + 2) = *(v9 + 16);
    *a1 = v24;
  }

  v25 = v29;
  *(v9 + 16) = v30;
  *v9 = v25;
  return v9;
}

BOOL sub_24BE0D0D0(uint64_t a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v24 = (a2 - 24);
        v25 = *a3;
        v70 = *(a1 + 24);
        v71 = *(a1 + 40);
        v68 = *a1;
        v69 = *(a1 + 16);
        v26 = v25(&v70, &v68);
        v27 = *a3;
        if (v26)
        {
          v70 = *v24;
          v71 = v24[1].n128_i64[0];
          v68 = *(a1 + 24);
          v69 = *(a1 + 40);
          if (v27(&v70, &v68))
          {
            v28 = *(a1 + 16);
            v29 = *a1;
            v30 = v24[1].n128_i64[0];
            *a1 = *v24;
            *(a1 + 16) = v30;
          }

          else
          {
            v49 = *(a1 + 16);
            v50 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v50;
            *(a1 + 40) = v49;
            v51 = *a3;
            v70 = *v24;
            v71 = v24[1].n128_i64[0];
            v68 = *(a1 + 24);
            v69 = *(a1 + 40);
            if (!v51(&v70, &v68))
            {
              return 1;
            }

            v28 = *(a1 + 40);
            v29 = *(a1 + 24);
            v52 = v24[1].n128_i64[0];
            *(a1 + 24) = *v24;
            *(a1 + 40) = v52;
          }

          *v24 = v29;
          v24[1].n128_u64[0] = v28;
          return 1;
        }

        v70 = *v24;
        v71 = v24[1].n128_i64[0];
        v68 = *(a1 + 24);
        v69 = *(a1 + 40);
        if (!v27(&v70, &v68))
        {
          return 1;
        }

        v37 = *(a1 + 40);
        v38 = *(a1 + 24);
        v39 = v24[1].n128_i64[0];
        *(a1 + 24) = *v24;
        *(a1 + 40) = v39;
        *v24 = v38;
        v24[1].n128_u64[0] = v37;
        break;
      case 4:
        sub_24BE0C76C(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        sub_24BE0C76C(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        v12 = *a3;
        v70 = *(a2 - 24);
        v71 = a2[-1].n128_i64[1];
        v68 = *(a1 + 72);
        v69 = *(a1 + 88);
        if (!v12(&v70, &v68))
        {
          return 1;
        }

        v13 = &a2[-2].n128_i64[1];
        v14 = *(a1 + 88);
        v15 = *(a1 + 72);
        v16 = a2[-1].n128_i64[1];
        *(a1 + 72) = *(a2 - 24);
        *(a1 + 88) = v16;
        *v13 = v15;
        v13[2] = v14;
        v17 = *a3;
        v70 = *(a1 + 72);
        v71 = *(a1 + 88);
        v68 = *(a1 + 48);
        v69 = *(a1 + 64);
        if (!v17(&v70, &v68))
        {
          return 1;
        }

        v18 = *(a1 + 64);
        v19 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        v20 = *(a1 + 88);
        *(a1 + 64) = v20;
        *(a1 + 72) = v19;
        *(a1 + 88) = v18;
        v21 = *a3;
        v70 = *(a1 + 48);
        v71 = v20;
        v68 = *(a1 + 24);
        v69 = *(a1 + 40);
        if (!v21(&v70, &v68))
        {
          return 1;
        }

        v22 = *(a1 + 40);
        v23 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v23;
        *(a1 + 64) = v22;
        break;
      default:
        goto LABEL_16;
    }

    v40 = *a3;
    v70 = *(a1 + 24);
    v71 = *(a1 + 40);
    v68 = *a1;
    v69 = *(a1 + 16);
    if (v40(&v70, &v68))
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v70 = *(a2 - 24);
    v71 = a2[-1].n128_i64[1];
    v68 = *a1;
    v69 = *(a1 + 16);
    if (v7(&v70, &v68))
    {
      v8 = (a2 - 24);
      v9 = *(a1 + 16);
      v10 = *a1;
      v11 = a2[-1].n128_i64[1];
      *a1 = *(a2 - 24);
      *(a1 + 16) = v11;
      *v8 = v10;
      v8[1].n128_u64[0] = v9;
    }

    return 1;
  }

LABEL_16:
  v31 = (a1 + 48);
  v32 = *a3;
  v70 = *(a1 + 24);
  v71 = *(a1 + 40);
  v68 = *a1;
  v69 = *(a1 + 16);
  v33 = v32(&v70, &v68);
  v34 = *a3;
  if (v33)
  {
    v70 = *v31;
    v71 = *(a1 + 64);
    v68 = *(a1 + 24);
    v69 = *(a1 + 40);
    if (v34(&v70, &v68))
    {
      v35 = *(a1 + 16);
      v36 = *a1;
      *a1 = *v31;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v53 = *(a1 + 16);
      v54 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v54;
      *(a1 + 40) = v53;
      v55 = *a3;
      v70 = *v31;
      v71 = *(a1 + 64);
      v68 = *(a1 + 24);
      v69 = *(a1 + 40);
      if (!v55(&v70, &v68))
      {
        goto LABEL_33;
      }

      v35 = *(a1 + 40);
      v36 = *(a1 + 24);
      *(a1 + 24) = *v31;
      *(a1 + 40) = *(a1 + 64);
    }

    *v31 = v36;
    *(a1 + 64) = v35;
  }

  else
  {
    v70 = *v31;
    v71 = *(a1 + 64);
    v68 = *(a1 + 24);
    v69 = *(a1 + 40);
    if (v34(&v70, &v68))
    {
      v43 = *(a1 + 40);
      v44 = *(a1 + 24);
      *(a1 + 24) = *v31;
      v45 = *(a1 + 64);
      *(a1 + 40) = v45;
      *v31 = v44;
      *(a1 + 64) = v43;
      v46 = *a3;
      v70 = *(a1 + 24);
      v71 = v45;
      v68 = *a1;
      v69 = *(a1 + 16);
      if (v46(&v70, &v68))
      {
        v47 = *(a1 + 16);
        v48 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v48;
        *(a1 + 40) = v47;
      }
    }
  }

LABEL_33:
  v56 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v57 = 0;
  v58 = 0;
  while (1)
  {
    v59 = *a3;
    v70 = *v56;
    v71 = v56[1].n128_i64[0];
    v60 = *v31;
    v69 = v31[1].n128_i64[0];
    v68 = v60;
    if (v59(&v70, &v68))
    {
      v70 = *v56;
      v71 = v56[1].n128_i64[0];
      v61 = v57;
      while (1)
      {
        v62 = a1 + v61;
        *(v62 + 72) = *(a1 + v61 + 48);
        *(v62 + 88) = *(a1 + v61 + 64);
        if (v61 == -48)
        {
          break;
        }

        v63 = *a3;
        v68 = v70;
        v69 = v71;
        v66 = *(v62 + 24);
        v67 = *(v62 + 40);
        v61 -= 24;
        if (((v63)(&v68, &v66) & 1) == 0)
        {
          v64 = a1 + v61 + 72;
          goto LABEL_41;
        }
      }

      v64 = a1;
LABEL_41:
      *v64 = v70;
      *(v64 + 16) = v71;
      if (++v58 == 8)
      {
        return &v56[1].n128_i8[8] == a2;
      }
    }

    v31 = v56;
    v57 += 24;
    v56 = (v56 + 24);
    if (v56 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_24BE0D738(__n128 *a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_24BE0D910(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *a4;
        v26 = *v13;
        v27 = v13[1].n128_u64[0];
        v24 = *a1;
        v25 = a1[1].n128_u64[0];
        if (v14(&v26, &v24))
        {
          v15 = v13[1].n128_u64[0];
          v16 = *v13;
          v17 = a1[1].n128_u64[0];
          *v13 = *a1;
          v13[1].n128_u64[0] = v17;
          *a1 = v16;
          a1[1].n128_u64[0] = v15;
          sub_24BE0D910(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v19 = (a2 - 24);
      do
      {
        v26 = *a1;
        v27 = a1[1].n128_u64[0];
        v20 = sub_24BE0DAFC(a1, a4, v18);
        if (v19 == v20)
        {
          *v20 = v26;
          *(v20 + 2) = v27;
        }

        else
        {
          v21 = *v19;
          *(v20 + 2) = v19[1].n128_u64[0];
          *v20 = v21;
          *v19 = v26;
          v19[1].n128_u64[0] = v27;
          sub_24BE0DBE4(a1, v20 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v20 + 24 - a1) >> 3));
        }

        v19 = (v19 - 24);
      }

      while (v18-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 sub_24BE0D910(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v29 = v4;
    v30 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3)
      {
        v15 = *a2;
        v27 = *v13;
        v28 = *(v13 + 16);
        v25 = *(v13 + 24);
        v26 = *(v13 + 40);
        if (v15(&v27, &v25))
        {
          v13 += 24;
          v12 = v14;
        }
      }

      v16 = *a2;
      v27 = *v13;
      v28 = *(v13 + 16);
      v25 = *v7;
      v26 = v7[1].n128_u64[0];
      if ((v16(&v27, &v25) & 1) == 0)
      {
        v27 = *v7;
        v28 = v7[1].n128_u64[0];
        do
        {
          v18 = v13;
          v19 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v19;
          if (v9 < v12)
          {
            break;
          }

          v20 = (2 * v12) | 1;
          v13 = a1 + 24 * v20;
          if (2 * v12 + 2 < a3)
          {
            v21 = *a2;
            v25 = *v13;
            v26 = *(v13 + 16);
            v23 = *(v13 + 24);
            v24 = *(v13 + 40);
            if (v21(&v25, &v23))
            {
              v13 += 24;
              v20 = 2 * v12 + 2;
            }
          }

          v22 = *a2;
          v25 = *v13;
          v26 = *(v13 + 16);
          v23 = v27;
          v24 = v28;
          v7 = v18;
          v12 = v20;
        }

        while (!v22(&v25, &v23));
        result = v27;
        v18[1].n128_u64[0] = v28;
        *v18 = result;
      }
    }
  }

  return result;
}

__int128 *sub_24BE0DAFC(__int128 *a1, unsigned int (**a2)(__int128 *, __int128 *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v13 = *v9;
      v21 = *(v8 + 40);
      v20 = v13;
      v14 = (v8 + 48);
      v15 = *(v8 + 48);
      v19 = *(v8 + 64);
      v18 = v15;
      if (v12(&v20, &v18))
      {
        v9 = v14;
        v10 = v11;
      }
    }

    v16 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v16;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double sub_24BE0DBE4(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v25 = v4;
    v26 = v5;
    v10 = v6 >> 1;
    v11 = (a1 + 24 * (v6 >> 1));
    v12 = *a3;
    v23 = *v11;
    v24 = *(v11 + 2);
    v21 = *(a2 - 24);
    v22 = *(a2 - 8);
    if (v12(&v23, &v21))
    {
      v14 = (a2 - 24);
      v23 = *(a2 - 24);
      v24 = *(a2 - 8);
      do
      {
        v15 = v11;
        v16 = *v11;
        *(v14 + 2) = *(v11 + 2);
        *v14 = v16;
        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = (a1 + 24 * v10);
        v17 = *a3;
        v21 = *v11;
        v22 = *(v11 + 2);
        v19 = v23;
        v20 = v24;
        v18 = v17(&v21, &v19);
        v14 = v15;
      }

      while ((v18 & 1) != 0);
      result = *&v23;
      *v15 = v23;
      *(v15 + 2) = v24;
    }
  }

  return result;
}

uint64_t *sub_24BE0DCF4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = 0;
    v5 = result[5];
    v6 = *v5;
    do
    {
      v7 = v4 + 1;
      v8 = v5[v4 + 1];
      v9 = 0.0;
      v10 = v8 - v6;
      if (v8 > v6)
      {
        v11 = (result[2] + 24 * v6 + 16);
        do
        {
          v9 = v9 + *v11 * *(a2 + 8 * *(v11 - 1));
          v11 += 3;
          --v10;
        }

        while (v10);
      }

      *(a3 + 8 * v4) = v9;
      v6 = v8;
      ++v4;
    }

    while (v7 != v3);
  }

  return result;
}

BOOL sub_24BE0DD60(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v21 = 0;
  v12 = sub_24BD4C428(v11, &v21, a5, a7);
  v13 = v21;
  v14 = *(a1 + 16);
  *(a1 + 16) = v12;

  if (v13)
  {
    if (a4)
    {
      sub_24BCA2D38(v23, a6);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(a3, v23, 5, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      v15 = v23;
    }

    else
    {
      LODWORD(v18[0]) = 0;
      v18[1] = std::system_category();
      sub_24BCA2D38(v22, a6);
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BD6B844(v18, v22, 5, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      v15 = v22;
    }

    sub_24BC9F08C(v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

void sub_24BE0DEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&a19);

  _Unwind_Resume(a1);
}

uint64_t sub_24BE0DF28(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11)
{
  v347 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v17 = *(a3 + 8) - *a3;
  v313 = *a5;
  v312 = *a2;
  v18 = a2[3];
  v315 = a2[1];
  v311 = a2[2];
  v20 = objc_msgSend_newBufferWithLength_options_(*a1, v19, v17, 0);
  v317 = a1;
  v316 = objc_msgSend_newBufferWithLength_options_(*a1, v21, (2 * ((((*(a3 + 8) - *a3) >> 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL, 0);
  if (v20 && v316)
  {
    v22 = v316;
    v26 = objc_msgSend_contents(v22, v23, v24, v25);
    v27 = v20;
    v31 = objc_msgSend_contents(v27, v28, v29, v30);
    memcpy(v31, *a3, v17);
    v33 = (*(a3 + 8) - *a3) >> 2;
    if (v33 >= 3)
    {
      v34 = 0;
      v35 = (*(a3 + 8) - *a3) >> 2;
      v36 = vdupq_n_s64(v33 / 3 - 1);
      v37 = xmmword_24BFBC5E0;
      v38 = xmmword_24BFBC5B0;
      v39 = vdupq_n_s64(4uLL);
      v40 = (v33 / 3 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v41 = (v26 + 8);
      do
      {
        v42 = vmovn_s64(vcgeq_u64(v36, v38));
        if (vuzp1_s16(v42, *v36.i8).u8[0])
        {
          *(v41 - 2) = v34;
        }

        if (vuzp1_s16(v42, *&v36).i8[2])
        {
          *(v41 - 1) = v34 + 1;
        }

        if (vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, *&v37))).i32[1])
        {
          *v41 = v34 + 2;
          v41[1] = v34 + 3;
        }

        v34 += 4;
        v37 = vaddq_s64(v37, v39);
        v38 = vaddq_s64(v38, v39);
        v41 += 4;
      }

      while (v40 != v34);
    }

    v307 = objc_msgSend_newBufferWithLength_options_(*a1, v32, 64, 0);
    if (!v307)
    {
      if (a10)
      {
        sub_24BCA2D38(v344, a11);
        sub_24BC836D4(__p, &unk_24C0435AF);
        sub_24BD6B844(a9, v344, 2, __p);
        if (SBYTE7(v334) < 0)
        {
          operator delete(__p[0]);
        }

        v97 = v344;
      }

      else
      {
        LODWORD(v318) = 0;
        v319 = std::system_category();
        sub_24BCA2D38(v343, a11);
        sub_24BC836D4(__p, &unk_24C0435AF);
        sub_24BD6B844(&v318, v343, 2, __p);
        if (SBYTE7(v334) < 0)
        {
          operator delete(__p[0]);
        }

        v97 = v343;
      }

      sub_24BC9F08C(v97);
      v96 = 0;
      goto LABEL_84;
    }

    *__p = xmmword_24BFBD1C0;
    v334 = xmmword_24BFD2970;
    v335 = xmmword_24BFBD200;
    v336 = xmmword_24BFD22D0;
    v299 = objc_msgSend_commandBuffer(*(a1 + 8), v43, v44, v45);
    v309 = objc_opt_new();
    if (v312)
    {
      v49 = objc_msgSend_colorAttachments(v309, v46, v47, v48);
      v52 = objc_msgSend_objectAtIndexedSubscript_(v49, v50, 1, v51);

      objc_msgSend_setTexture_(v52, v53, *(a1 + 32), v54);
      objc_msgSend_setLoadAction_(v52, v55, 2, v56);
      objc_msgSend_setStoreAction_(v52, v57, 1, v58);
      objc_msgSend_setClearColor_(v52, v59, v60, v61, 0.0, 0.0, 0.0, 0.0);
    }

    if ((v18 & 1) == 0)
    {
      if (v315)
      {
        v62 = objc_msgSend_colorAttachments(v309, v46, v47, v48);
        v65 = objc_msgSend_objectAtIndexedSubscript_(v62, v63, 2, v64);

        objc_msgSend_setTexture_(v65, v66, *(a1 + 40), v67);
        objc_msgSend_setLoadAction_(v65, v68, 2, v69);
        objc_msgSend_setStoreAction_(v65, v70, 1, v71);
        objc_msgSend_setClearColor_(v65, v72, v73, v74, 0.0, 0.0, 0.0, 0.0);
      }

      if (v311)
      {
        v75 = objc_msgSend_colorAttachments(v309, v46, v47, v48);
        v78 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, 3, v77);

        objc_msgSend_setTexture_(v78, v79, *(a1 + 24), v80);
        objc_msgSend_setLoadAction_(v78, v81, 2, v82);
        objc_msgSend_setStoreAction_(v78, v83, 1, v84);
        objc_msgSend_setClearColor_(v78, v85, v86, v87, 0.0, 0.0, 0.0, 0.0);
      }
    }

    objc_msgSend_setRenderTargetWidth_(v309, v46, v313, v48);
    objc_msgSend_setRenderTargetHeight_(v309, v88, HIDWORD(v313), v89);
    objc_msgSend_setRenderTargetArrayLength_(v309, v90, 1, v91);
    objc_msgSend_setDefaultRasterSampleCount_(v309, v92, 1, v93);
    sub_24BC836D4(&v318, "VSAC");
    sub_24BC836D4(&v330, &unk_24C0435AF);
    if (!v315 || (v18 & 1) != 0)
    {
      if ((v315 & 1) != 0 || v18)
      {
        if ((v315 & v18) != 0)
        {
          v94 = "FSCBPO";
        }

        else
        {
          v94 = "FSCBMB";
        }
      }

      else
      {
        v94 = "FSNCBMB";
      }
    }

    else
    {
      v94 = "FSNCBPO";
    }

    MEMORY[0x24C2541D0](&v330, v94);
    if (v320 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, &v318, v99);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v318, v99);
    }
    v305 = ;
    if (v332 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, &v330, v101);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, v330, v101);
    }
    v303 = ;
    v301 = objc_msgSend_newFunctionWithName_(*(a1 + 16), v102, v305, v103);
    v300 = objc_msgSend_newFunctionWithName_(*(a1 + 16), v104, v303, v105);
    v106 = objc_alloc_init(MEMORY[0x277CD6F78]);
    objc_msgSend_setVertexFunction_(v106, v107, v301, v108);
    objc_msgSend_setFragmentFunction_(v106, v109, v300, v110);
    if (v312)
    {
      v114 = objc_msgSend_colorAttachments(v106, v111, v112, v113);
      v117 = objc_msgSend_objectAtIndexedSubscript_(v114, v115, 1, v116);
      objc_msgSend_setPixelFormat_(v117, v118, 53, v119);
    }

    if ((v18 & 1) == 0)
    {
      if (v315)
      {
        v120 = objc_msgSend_colorAttachments(v106, v111, v112, v113);
        v123 = objc_msgSend_objectAtIndexedSubscript_(v120, v121, 2, v122);
        objc_msgSend_setPixelFormat_(v123, v124, 53, v125);
      }

      if (v311)
      {
        v126 = objc_msgSend_colorAttachments(v106, v111, v112, v113);
        v129 = objc_msgSend_objectAtIndexedSubscript_(v126, v127, 3, v128);
        objc_msgSend_setPixelFormat_(v129, v130, 125, v131);
      }
    }

    v132 = *v317;
    v329 = 0;
    v298 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v132, v111, v106, &v329);
    v133 = v329;
    if (v133)
    {
      v134 = v133;
      v135 = v298;
      if (a10)
      {
        sub_24BCA2D38(v342, a11);
        sub_24BC836D4(v327, &unk_24C0435AF);
        v135 = v298;
        sub_24BD6B844(a9, v342, 5, v327);
        if (v328 < 0)
        {
          operator delete(v327[0]);
        }

        v136 = v342;
      }

      else
      {
        LODWORD(v325) = 0;
        v326 = std::system_category();
        sub_24BCA2D38(v341, a11);
        sub_24BC836D4(v327, &unk_24C0435AF);
        sub_24BD6B844(&v325, v341, 5, v327);
        if (v328 < 0)
        {
          operator delete(v327[0]);
        }

        v136 = v341;
      }

      sub_24BC9F08C(v136);

      if (v332 < 0)
      {
        operator delete(v330);
      }

      if (SHIBYTE(v320) < 0)
      {
        operator delete(v318);
      }
    }

    else
    {

      if (v332 < 0)
      {
        operator delete(v330);
      }

      if (SHIBYTE(v320) < 0)
      {
        operator delete(v318);
      }

      v318 = v313;
      v139 = objc_msgSend_renderCommandEncoderWithDescriptor_(v299, v137, v309, v138);
      objc_msgSend_setRenderPipelineState_(v139, v140, v298, v141);
      objc_msgSend_setCullMode_(v139, v142, 0, v143);
      objc_msgSend_setFrontFacingWinding_(v139, v144, 1, v145);
      objc_msgSend_setVertexBuffer_offset_atIndex_(v139, v146, v20, 0, 0);
      objc_msgSend_setVertexBytes_length_atIndex_(v139, v147, __p, 64, 1);
      objc_msgSend_setFragmentBytes_length_atIndex_(v139, v148, &v318, 8, 0);
      v149 = 3 * ((v17 >> 2) / 9uLL);
      objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_(v139, v150, 3, v149, 1, v316, 0);
      objc_msgSend_endEncoding(v139, v151, v152, v153);

      if (v18)
      {
        v154 = objc_opt_new();
        v158 = v154;
        if (v315)
        {
          v159 = objc_msgSend_colorAttachments(v154, v155, v156, v157);
          v162 = objc_msgSend_objectAtIndexedSubscript_(v159, v160, 0, v161);

          objc_msgSend_setTexture_(v162, v163, *(v317 + 40), v164);
          objc_msgSend_setLoadAction_(v162, v165, 2, v166);
          objc_msgSend_setStoreAction_(v162, v167, 1, v168);
          objc_msgSend_setClearColor_(v162, v169, v170, v171, 0.0, 0.0, 0.0, 0.0);
        }

        if (v311)
        {
          v172 = objc_msgSend_colorAttachments(v158, v155, v156, v157);
          v175 = objc_msgSend_objectAtIndexedSubscript_(v172, v173, 1, v174);

          objc_msgSend_setTexture_(v175, v176, *(v317 + 24), v177);
          objc_msgSend_setLoadAction_(v175, v178, 2, v179);
          objc_msgSend_setStoreAction_(v175, v180, 1, v181);
          objc_msgSend_setClearColor_(v175, v182, v183, v184, 0.0, 0.0, 0.0, 0.0);
        }

        objc_msgSend_setRenderTargetWidth_(v158, v155, v313, v157);
        objc_msgSend_setRenderTargetHeight_(v158, v185, HIDWORD(v313), v186);
        objc_msgSend_setRenderTargetArrayLength_(v158, v187, 1, v188);
        objc_msgSend_setDefaultRasterSampleCount_(v158, v189, 1, v190);
        sub_24BC836D4(&v318, &unk_24C0435AF);
        sub_24BC836D4(&v330, &unk_24C0435AF);
        if (v315)
        {
          MEMORY[0x24C2541D0](&v318, "BVSCBPO");
          v191 = "BFSCBPO";
        }

        else
        {
          MEMORY[0x24C2541D0](&v318, "BVSCBMB");
          v191 = "BFSCBMB";
        }

        MEMORY[0x24C2541D0](&v330, v191);
        if (v320 >= 0)
        {
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v194, &v318, v195);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v194, v318, v195);
        }
        v198 = ;
        if (v332 >= 0)
        {
          v199 = &v330;
        }

        else
        {
          v199 = v330;
        }

        v302 = v198;
        v304 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v196, v199, v197);
        v310 = objc_msgSend_newFunctionWithName_(*(v317 + 16), v200, v198, v201);
        v204 = objc_msgSend_newFunctionWithName_(*(v317 + 16), v202, v304, v203);
        v205 = objc_opt_new();
        objc_msgSend_setVertexFunction_(v205, v206, v310, v207);
        objc_msgSend_setFragmentFunction_(v205, v208, v204, v209);
        if (v315)
        {
          v213 = objc_msgSend_colorAttachments(v205, v210, v211, v212);
          v216 = objc_msgSend_objectAtIndexedSubscript_(v213, v214, 0, v215);
          objc_msgSend_setPixelFormat_(v216, v217, 53, v218);
        }

        if (v311)
        {
          v219 = objc_msgSend_colorAttachments(v205, v210, v211, v212);
          v222 = objc_msgSend_objectAtIndexedSubscript_(v219, v220, 1, v221);
          objc_msgSend_setPixelFormat_(v222, v223, 125, v224);
        }

        v225 = *v317;
        v324 = 0;
        v306 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v225, v210, v205, &v324);
        v226 = v324;
        if (v226)
        {
          v227 = v226;
          if (a10)
          {
            sub_24BCA2D38(v340, a11);
            sub_24BC836D4(v327, &unk_24C0435AF);
            sub_24BD6B844(a9, v340, 5, v327);
            if (v328 < 0)
            {
              operator delete(v327[0]);
            }

            v228 = v340;
          }

          else
          {
            LODWORD(v325) = 0;
            v326 = std::system_category();
            sub_24BCA2D38(v339, a11);
            sub_24BC836D4(v327, &unk_24C0435AF);
            sub_24BD6B844(&v325, v339, 5, v327);
            if (v328 < 0)
            {
              operator delete(v327[0]);
            }

            v228 = v339;
          }

          sub_24BC9F08C(v228);

          if (v332 < 0)
          {
            operator delete(v330);
          }

          if (SHIBYTE(v320) < 0)
          {
            operator delete(v318);
          }

          goto LABEL_82;
        }

        if (v332 < 0)
        {
          operator delete(v330);
        }

        if (SHIBYTE(v320) < 0)
        {
          operator delete(v318);
        }

        v318 = v313;
        v231 = objc_msgSend_renderCommandEncoderWithDescriptor_(v299, v229, v158, v230);
        objc_msgSend_setRenderPipelineState_(v231, v232, v306, v233);
        objc_msgSend_setCullMode_(v231, v234, 0, v235);
        objc_msgSend_setFrontFacingWinding_(v231, v236, 1, v237);
        objc_msgSend_setVertexBuffer_offset_atIndex_(v231, v238, v20, 0, 0);
        objc_msgSend_setVertexBytes_length_atIndex_(v231, v239, __p, 64, 1);
        objc_msgSend_setFragmentBytes_length_atIndex_(v231, v240, &v318, 8, 0);
        objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_(v231, v241, 3, v149, 1, v316, 0);
        objc_msgSend_endEncoding(v231, v242, v243, v244);
      }

      sub_24BCDF83C();
      objc_msgSend_commit(v299, v245, v246, v247);
      objc_msgSend_waitUntilCompleted(v299, v248, v249, v250);
      v254 = objc_msgSend_error(v299, v251, v252, v253);
      v255 = sub_24BD4C518(v254);

      if (!v255)
      {
        v257 = 4 * v313;
        if (v312)
        {
          sub_24BCA123C(&v330, (HIDWORD(v313) * v313));
          v258 = *(v317 + 32);
          v318 = 0;
          v319 = 0;
          v320 = 0;
          v321 = v313;
          v322 = HIDWORD(v313);
          v323 = 1;
          objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v258, v259, v330, v257, &v318, 0);
          v260 = a5[1];
          v261 = v330;
          if (v260)
          {
            v262 = 0;
            v263 = 0;
            v264 = *a5;
            v265 = *(a5 + 2);
            v266 = a5[2];
            v267 = v266 * v264 * (v260 - 1);
            do
            {
              v268 = v264;
              v269 = v262;
              v270 = v267;
              if (v264)
              {
                do
                {
                  *(v265 + v270) = v261[v269] > 0x80u;
                  v270 += v266;
                  ++v269;
                  --v268;
                }

                while (v268);
              }

              ++v263;
              v267 -= v266 * v264;
              v262 += v264;
            }

            while (v263 != v260);
          }

          if (v261)
          {
            v331 = v261;
            operator delete(v261);
          }
        }

        if (v315)
        {
          sub_24BCA123C(&v330, (HIDWORD(v313) * v313));
          v271 = *(v317 + 40);
          v318 = 0;
          v319 = 0;
          v320 = 0;
          v321 = v313;
          v322 = HIDWORD(v313);
          v323 = 1;
          objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v271, v272, v330, v257, &v318, 0);
          v273 = a5[1];
          if (v273)
          {
            v274 = 0;
            v275 = *a5;
            v276 = -1;
            do
            {
              if (v275)
              {
                v277 = 0;
                v278 = v273 + v276;
                do
                {
                  *(*(a6 + 16) + 4 * (v277 + v278 * *a6) * *(a6 + 8)) = *(*a4 + 4 * *(v330 + v277 + v274 * v275));
                  ++v277;
                  v275 = *a5;
                }

                while (v277 < *a5);
                v273 = a5[1];
              }

              ++v274;
              --v276;
            }

            while (v274 < v273);
          }

          if (v330)
          {
            v331 = v330;
            operator delete(v330);
          }
        }

        if (v311)
        {
          v279 = HIDWORD(v313) >> 2;
          sub_24BC95764(&v330, (4 * v313 * (HIDWORD(v313) >> 2)));
          v280 = 0;
          v281 = -1;
          do
          {
            v282 = v280 * v279;
            if (v280 == 3)
            {
              v283 = HIDWORD(v313);
            }

            else
            {
              v283 = v279 + v280 * v279;
            }

            sub_24BC8CAB0(&v330, 4 * v313 * (v283 - v282));
            v284 = *(v317 + 24);
            v318 = 0;
            v319 = (v280 * (HIDWORD(v313) >> 2));
            v320 = 0;
            v321 = v313;
            v322 = v283 - v282;
            v323 = 1;
            objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v284, v285, v330, 16 * v313, &v318, 0);
            if (v282 < v283)
            {
              v286 = 0;
              v287 = *a5;
              v288 = *(a7 + 16);
              v289 = *(a7 + 8);
              v290 = v330;
              v291 = v289 * *a7;
              v292 = v291 * (a5[1] + v281);
              do
              {
                v293 = v287;
                v294 = v286;
                v295 = v292;
                if (v287)
                {
                  do
                  {
                    v296 = (v288 + 16 * v295);
                    v297 = &v290[16 * v294];
                    *v296 = *v297;
                    v296[1] = *(v297 + 1);
                    v296[2] = *(v297 + 2);
                    v295 += v289;
                    ++v294;
                    --v293;
                  }

                  while (v293);
                }

                LODWORD(v282) = v282 + 1;
                v292 -= v291;
                v286 += v287;
              }

              while (v282 < v283);
            }

            ++v280;
            v281 -= v279;
          }

          while (v280 != 4);
          if (v330)
          {
            v331 = v330;
            operator delete(v330);
          }
        }

        v96 = 1;
        goto LABEL_83;
      }

      if (a10)
      {
        sub_24BCA2D38(v338, a11);
        sub_24BC836D4(&v318, &unk_24C0435AF);
        sub_24BD6B844(a9, v338, 16, &v318);
        if (SHIBYTE(v320) < 0)
        {
          operator delete(v318);
        }

        v256 = v338;
      }

      else
      {
        LODWORD(v330) = 0;
        v331 = std::system_category();
        sub_24BCA2D38(v337, a11);
        sub_24BC836D4(&v318, &unk_24C0435AF);
        sub_24BD6B844(&v330, v337, 16, &v318);
        if (SHIBYTE(v320) < 0)
        {
          operator delete(v318);
        }

        v256 = v337;
      }

      sub_24BC9F08C(v256);
    }

LABEL_82:
    v96 = 0;
LABEL_83:

LABEL_84:
    goto LABEL_85;
  }

  if (a10)
  {
    sub_24BCA2D38(v346, a11);
    sub_24BC836D4(__p, &unk_24C0435AF);
    sub_24BD6B844(a9, v346, 2, __p);
    if (SBYTE7(v334) < 0)
    {
      operator delete(__p[0]);
    }

    v95 = v346;
  }

  else
  {
    LODWORD(v318) = 0;
    v319 = std::system_category();
    sub_24BCA2D38(v345, a11);
    sub_24BC836D4(__p, &unk_24C0435AF);
    sub_24BD6B844(&v318, v345, 2, __p);
    if (SBYTE7(v334) < 0)
    {
      operator delete(__p[0]);
    }

    v95 = v345;
  }

  sub_24BC9F08C(v95);
  v96 = 0;
LABEL_85:

  objc_autoreleasePoolPop(context);
  v192 = *MEMORY[0x277D85DE8];
  return v96;
}

void sub_24BE0F144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&a72);

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

void sub_24BE0F64C()
{
  v0 = *MEMORY[0x277D85DE8];
  objc_autoreleasePoolPush();
  operator new();
}

void sub_24BE104A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void ***a34, uint64_t a35, uint64_t a36, uint64_t a37, void **a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, id *a44)
{
  if (*(v44 - 137) < 0)
  {
    operator delete(*(v44 - 160));
  }

  if (a30)
  {
    MEMORY[0x24C254890](a30 - 16, 0x1000C80451B5BE8);
  }

  if (a33)
  {
    MEMORY[0x24C254890](a33, 0x1000C8052888210);
  }

  if (a36)
  {
    MEMORY[0x24C254890](a36, 0x1000C8077774924);
  }

  a34 = &a38;
  sub_24BC8EE84(&a34);
  a38 = &a41;
  sub_24BC8EE84(&a38);
  sub_24BE107A8(&a44);
  _Unwind_Resume(a1);
}

void sub_24BE10690(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    MEMORY[0x24C254890](v2, 0x1000C8052888210);
  }

  v3 = 4 * (*(a1 + 4) * *a1 * *(a1 + 8));
  operator new[]();
}

void sub_24BE10718(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    MEMORY[0x24C254890](v2 - 16, 0x1000C80451B5BE8);
  }

  v3 = 16 * (*(a1 + 4) * *a1 * *(a1 + 8));
  operator new[]();
}

id **sub_24BE107A8(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x24C2548B0](v2, 0x80C407D3415B1);
  }

  return a1;
}

void sub_24BE10820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  sub_24BCA2D38(v10, a9);
  sub_24BE0F64C();
}

void sub_24BE1090C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC9F08C(va);
  _Unwind_Resume(a1);
}

void *sub_24BE10928(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA3900(result, a2);
  }

  return result;
}

unint64_t sub_24BE109CC(unint64_t result)
{
  v1 = result % *MEMORY[0x277D85FA0];
  if (v1)
  {
    return *MEMORY[0x277D85FA0] + result - v1;
  }

  return result;
}

BOOL sub_24BE109F4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v138 = *MEMORY[0x277D85DE8];
  v128 = a6;
  v129 = a5;
  v20 = objc_autoreleasePoolPush();
  v21 = (a6 * a5);
  v22 = *a1;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x277D85FA0];
  v25 = 12 * v21 % *MEMORY[0x277D85FA0];
  if (v25)
  {
    v26 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v22, v19, v23, *MEMORY[0x277D85FA0] + 12 * v21 - v25, 0, 0);
  }

  else
  {
    v26 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v22, v19, v23, 12 * v21, 0, 0);
  }

  v28 = v26;
  v29 = *a1;
  v30 = *(a3 + 16);
  v31 = 4 * v21;
  v32 = v31 % *v24;
  if (v32)
  {
    v33 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v29, v27, v30, *v24 + 4 * v21 - v32, 0, 0);
  }

  else
  {
    v33 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v29, v27, v30, 4 * v21, 0, 0);
  }

  v35 = v33;
  v36 = *a1;
  v37 = *(a4 + 16);
  v38 = v31 % *v24;
  if (v38)
  {
    v39 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v36, v34, v37, *v24 + v31 - v38, 0, 0);
  }

  else
  {
    v39 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v36, v34, v37, 4 * v21, 0, 0);
  }

  v40 = v39;
  if (v28 && v35 && v39)
  {
    v124 = 31;
    sub_24BC95764(&v125, 0x3C1uLL);
    v113 = v21;
    v114 = v35;
    v116 = v28;
    v41 = 0;
    v42 = 0;
    v43 = ((0x1Fu * 0.3) + 0.8) * 0.5;
    v44 = 1.0 / (((v43 * v43) + (v43 * v43)) * 3.14159265);
    v45 = v43 * (v43 + v43);
    v46 = v125;
    v47 = 0.0;
    do
    {
      v48 = -15;
      v49 = 31;
      do
      {
        v50 = v42;
        v51 = v44 * expf(-((v41 - 15) * (v41 - 15) + v48 * v48) / v45);
        v47 = v47 + v51;
        v42 = v50 + 1;
        v46[v50] = v51;
        ++v48;
        --v49;
      }

      while (v49);
      ++v41;
    }

    while (v41 != 31);
    v52 = 0;
    v53 = 0;
    v54 = v125;
    v28 = v116;
    v35 = v114;
    do
    {
      for (i = 0; i != 31; ++i)
      {
        v54[v52 + i] = v54[v52 + i] / v47;
      }

      ++v53;
      v52 += 31;
    }

    while (v53 != 31);
    v56 = *a1;
    v123 = 0;
    v57 = sub_24BD4C428(v56, &v123, a11, a13);
    v58 = v123;
    if (v58)
    {
      v59 = v58;
      if (a10)
      {
        sub_24BCA2D38(v135, a12);
        sub_24BC836D4(&__p, &unk_24C0435AF);
        sub_24BD6B844(a9, v135, 5, &__p);
        if (v122.i8[15] < 0)
        {
          operator delete(__p);
        }

        v60 = v135;
      }

      else
      {
        LODWORD(v118) = 0;
        v119.i64[0] = std::system_category();
        sub_24BCA2D38(v134, a12);
        sub_24BC836D4(&__p, &unk_24C0435AF);
        sub_24BD6B844(&v118, v134, 5, &__p);
        if (v122.i8[15] < 0)
        {
          operator delete(__p);
        }

        v60 = v134;
      }

      sub_24BC9F08C(v60);
      v62 = 0;
    }

    else
    {
      v117 = objc_alloc_init(MEMORY[0x277CD6D30]);
      objc_msgSend_setThreadGroupSizeIsMultipleOfThreadExecutionWidth_(v117, v63, 1, v64);
      v67 = objc_msgSend_newFunctionWithName_(v57, v65, @"wkecUsTj5u", v66);
      objc_msgSend_setComputeFunction_(v117, v68, v67, v69);

      v70 = *a1;
      v120 = 0;
      v72 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v70, v71, v117, 0, 0, &v120);
      v59 = v120;
      if (v72)
      {
        v115 = objc_msgSend_commandBuffer(a1[1], v73, v74, v75);
        v79 = objc_msgSend_maxTotalThreadsPerThreadgroup(v72, v76, v77, v78);
        if (v79 >= v113)
        {
          v83 = v113;
        }

        else
        {
          v83 = v79;
        }

        v84 = objc_msgSend_computeCommandEncoder(v115, v80, v81, v82);
        objc_msgSend_setBuffer_offset_atIndex_(v84, v85, v28, 0, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v84, v86, v35, 0, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v84, v87, v40, 0, 2);
        objc_msgSend_setBytes_length_atIndex_(v84, v88, v125, v126 - v125, 3);
        objc_msgSend_setBytes_length_atIndex_(v84, v89, &v124, 4, 4);
        objc_msgSend_setBytes_length_atIndex_(v84, v90, &v129, 4, 5);
        objc_msgSend_setBytes_length_atIndex_(v84, v91, &v128, 4, 6);
        objc_msgSend_setComputePipelineState_(v84, v92, v72, v93);
        __p = v113;
        v122 = vdupq_n_s64(1uLL);
        v118 = v83;
        v119 = v122;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v84, v94, &__p, &v118);
        objc_msgSend_endEncoding(v84, v95, v96, v97);
        sub_24BCDF83C();
        objc_msgSend_commit(v115, v98, v99, v100);
        objc_msgSend_waitUntilCompleted(v115, v101, v102, v103);
        v107 = objc_msgSend_error(v115, v104, v105, v106);
        v108 = sub_24BD4C518(v107);

        if (v108)
        {
          if (a10)
          {
            sub_24BCA2D38(v131, a12);
            sub_24BC836D4(&__p, &unk_24C0435AF);
            sub_24BD6B844(a9, v131, 16, &__p);
            if (v122.i8[15] < 0)
            {
              operator delete(__p);
            }

            v109 = v131;
          }

          else
          {
            LODWORD(v118) = 0;
            v119.i64[0] = std::system_category();
            sub_24BCA2D38(v130, a12);
            sub_24BC836D4(&__p, &unk_24C0435AF);
            sub_24BD6B844(&v118, v130, 16, &__p);
            if (v122.i8[15] < 0)
            {
              operator delete(__p);
            }

            v109 = v130;
          }

          sub_24BC9F08C(v109);
        }

        v62 = !v108;
      }

      else
      {
        if (a10)
        {
          sub_24BCA2D38(v133, a12);
          sub_24BC836D4(&__p, &unk_24C0435AF);
          sub_24BD6B844(a9, v133, 5, &__p);
          if (v122.i8[15] < 0)
          {
            operator delete(__p);
          }

          v110 = v133;
        }

        else
        {
          LODWORD(v118) = 0;
          v119.i64[0] = std::system_category();
          sub_24BCA2D38(v132, a12);
          sub_24BC836D4(&__p, &unk_24C0435AF);
          sub_24BD6B844(&v118, v132, 5, &__p);
          if (v122.i8[15] < 0)
          {
            operator delete(__p);
          }

          v110 = v132;
        }

        sub_24BC9F08C(v110);
        v62 = 0;
      }
    }

    if (v125)
    {
      v126 = v125;
      operator delete(v125);
    }
  }

  else
  {
    if (a10)
    {
      sub_24BCA2D38(v137, a12);
      sub_24BC836D4(&v125, &unk_24C0435AF);
      sub_24BD6B844(a9, v137, 2, &v125);
      if (v127 < 0)
      {
        operator delete(v125);
      }

      v61 = v137;
    }

    else
    {
      LODWORD(__p) = 0;
      v122.i64[0] = std::system_category();
      sub_24BCA2D38(v136, a12);
      sub_24BC836D4(&v125, &unk_24C0435AF);
      sub_24BD6B844(&__p, v136, 2, &v125);
      if (v127 < 0)
      {
        operator delete(v125);
      }

      v61 = v136;
    }

    sub_24BC9F08C(v61);
    v62 = 0;
  }

  objc_autoreleasePoolPop(v20);
  v111 = *MEMORY[0x277D85DE8];
  return v62;
}

void sub_24BE111A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&a39);

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BE113E0(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = *a1;
  v17 = a1[1];
  context = objc_autoreleasePoolPush();
  v24 = 0;
  v25 = 0;
  sub_24BD520F8(&v24);
  sub_24BCA2D38(v26, a8);
  v20 = sub_24BE109F4(&v24, a1, a2, a3, v16, v17, v18, v19, a5, a6, a7, v26, a9);
  sub_24BC9F08C(v26);

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_24BE114E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, ...)
{
  va_start(va, a10);
  sub_24BC9F08C(va);

  _Unwind_Resume(a1);
}

BOOL sub_24BE1151C()
{
  sub_24BCDF3B0();
  sub_24BCDF4B0(&v2);
  return sub_24BD22D74(&v1);
}

uint64_t sub_24BE1154C(uint64_t a1, int a2, char a3, unsigned int a4, int *a5, uint64_t a6, char a7, uint64_t a8, float a9)
{
  v53 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 100000;
  v34 = 0;
  v37 = 1;
  v38 = 257;
  v39 = 1;
  v35 = a2;
  v36 = a3;
  v30 = a4;
  v31 = a9;
  v40 = *a5;
  if (a7)
  {
    LODWORD(v25) = 0;
    *(&v25 + 1) = std::system_category();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    memset(v29, 0, 28);
    v46 = 0;
    v47[3] = 0;
    v48[3] = 0;
    v49[3] = 0;
    *(&v24 + 1) = *(&v25 + 1);
    LODWORD(v24) = 0;
    sub_24BC9B100(v48, a8);
    v50 = &unk_285F96980;
    v51 = &v25;
    v52 = &v50;
    sub_24BD55BF0(&v50, v49);
    v12 = sub_24BD55A9C(&v50);
    v50 = &unk_285F969C8;
    v51 = &v24;
    v52 = &v50;
    sub_24BCA4ECC(v12, v47);
    sub_24BC9F08C(&v50);
    sub_24BCA1524(v41, v45);
    sub_24BCA2D38(v42, v47);
    sub_24BCA2DD0(v43, v48);
    sub_24BD55A04(v44, v49);
    v13 = sub_24BE4D100(a1, &v30, v41);
    sub_24BD55A9C(v44);
    sub_24BC9F10C(v43);
    sub_24BC9F08C(v42);
    sub_24BC9F00C(v41);
    if (!v25)
    {
      v25 = v24;
    }

    v14 = sub_24BD6A604(0x190u);
    if (*(&v25 + 1) == v15 && v25 == v14 || (v16 = sub_24BD6A604(0x16u), *(&v25 + 1) == v17) && v25 == v16 || (v18 = sub_24BD6A604(0x191u), *(&v25 + 1) == v19) && v25 == v18 || (v20 = sub_24BD6A604(0x193u), *(&v25 + 1) == v21) && v25 == v20 || *(a8 + 24) && (sub_24BE118DC(a8) & 1) != 0)
    {
      sub_24BD55A9C(v49);
      sub_24BC9F10C(v48);
      sub_24BC9F08C(v47);
      sub_24BC9F00C(v45);
      v13 = 0;
    }

    else
    {
      *(a6 + 240) = v26;
      *(a6 + 248) = *(&v28 + 1);
      *(a6 + 272) = v29[0];
      *(a6 + 256) = *&v29[1];
      *(a6 + 264) = DWORD2(v29[1]);
      sub_24BD55A9C(v49);
      sub_24BC9F10C(v48);
      sub_24BC9F08C(v47);
      sub_24BC9F00C(v45);
    }
  }

  else
  {
    v13 = sub_24BE4CF94(a1, &v30);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_24BE11864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE118DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_24BCA1F3C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_24BE11924(void *a1, int a2, char a3, int a4, int *a5, uint64_t a6, char a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v18[0] = 1.0472;
  LODWORD(v18[1]) = a2;
  v19 = a3;
  if (a4 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (!a4)
  {
    v8 = 0;
  }

  v20 = v8;
  v21 = *a5;
  if (a7)
  {
    v12 = 0;
    v13 = std::system_category();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    memset(v17, 0, sizeof(v17));
    v10 = 0;
    v11 = v13;
    v27 = 0;
    v28[3] = 0;
    v29[3] = 0;
    v30[3] = 0;
    v31 = &unk_285F96A10;
    v32 = &v12;
    v33 = &v31;
    sub_24BD55BF0(&v31, v30);
    v9 = sub_24BD55A9C(&v31);
    v31 = &unk_285F96A58;
    v32 = &v10;
    v33 = &v31;
    sub_24BCA4ECC(v9, v28);
    sub_24BC9F08C(&v31);
    sub_24BCA1524(v22, v26);
    sub_24BCA2D38(&v23, v28);
    sub_24BCA2DD0(&v24, v29);
    sub_24BD55A04(&v25, v30);
    sub_24BE4CBD8(a1, v18, v22);
  }

  sub_24BE4CD00(a1, v18);
}

void sub_24BE11BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE11C44(void *a1, int a2, char a3, unsigned int a4, uint64_t a5, char a6, unsigned int a7, int a8, float a9, int *a10, uint64_t a11, uint64_t a12)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a7 < ((a1[20] - a1[19]) >> 2))
  {
    sub_24BCA2D38(v23, a12);
    sub_24BE11924(a1, a2, a3, a8, a10, a5, a6);
  }

  sub_24BCA2DD0(v25, a11);
  sub_24BCA2D38(v24, a12);
  v20 = sub_24BE1154C(a1, a2, a3, a4, a10, a5, a6, v25, a9);
  sub_24BC9F08C(v24);
  sub_24BC9F10C(v25);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_24BE11D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_24BC9F08C(va);
  sub_24BC9F10C(va1);
  _Unwind_Resume(a1);
}

BOOL sub_24BE11DC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::chrono::system_clock::time_point *a12)
{
  v67[12] = *MEMORY[0x277D85DE8];
  sub_24BCB3658(a2, a1);
  v17 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  v18 = *(a3 + 8);
  v19 = 0.0;
  if (v18 <= v17)
  {
    v19 = *(a3 + 4);
    v20 = ((1.0 - v19) * v17);
    if (v18 > v20 || (v18 = *(a3 + 12), v18 < v20))
    {
      v19 = 1.0 - (v18 / v17);
    }
  }

  v50 = 256;
  v51 = 1065353216;
  v49 = v19;
  if (v17 >= 0x1E8481 && v19 > 0.99)
  {
    HIBYTE(v50) = 0;
  }

  v65 = 0;
  v66[3] = 0;
  v67[3] = 0;
  sub_24BC9B100(v67, a9);
  sub_24BCA1524(v60, v63);
  sub_24BCA2D38(v61, v66);
  sub_24BCA2DD0(v62, v67);
  sub_24BE440D8(a2, &v49, v60);
  sub_24BC9F10C(v62);
  sub_24BC9F08C(v61);
  sub_24BC9F00C(v60);
  v21 = *(a9 + 24);
  if (v21)
  {
    if ((*(*v21 + 48))(v21) & 1) != 0 || (v22 = *(a9 + 24)) != 0 && ((*(*v22 + 48))(v22))
    {
      sub_24BC9F10C(v67);
      sub_24BC9F08C(v66);
      sub_24BC9F00C(v63);
LABEL_43:
      v43 = 0;
      goto LABEL_52;
    }
  }

  sub_24BC9F10C(v67);
  sub_24BC9F08C(v66);
  sub_24BC9F00C(v63);
  sub_24BE6B690(a2, 2, 1, 1.0);
  if (*(a8 + 24))
  {
    sub_24BC836D4(v63, &unk_24C0435AF);
    sub_24BC976F4(a8, v63, 0.15);
    if (v64 < 0)
    {
      operator delete(v63[0]);
    }
  }

  v23.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (a7)
  {
    *(a6 + 136) = (v23.__d_.__rep_ - a12->__d_.__rep_) / 1000000.0;
  }

  a12->__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  sub_24BC836D4(v63, off_27F078FB8[0]);
  v54 = 0;
  v53 = 0;
  v24 = sub_24BCCAA0C((a1 + 56), &v53, v63);
  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  sub_24BC836D4(v63, off_27F078F78[0]);
  v53 = 0;
  v25 = sub_24BCB74D4((a1 + 80), &v53, v63);
  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  v27 = v24 != -1 && v25 != -1;
  v28 = *(a3 + 16);
  if (!v28)
  {
    v35 = *a4;
    v36 = *a5;
    v37 = *(a3 + 28);
    sub_24BCA2D38(v59, a10);
    sub_24BE11924(a2, v35, v36, v37, (a3 + 32), a6, a7);
  }

  if (v28 == 2)
  {
    if (v27 && !sub_24BE4D6F4(a2, a1, a11))
    {
      v34 = 0;
    }

    else
    {
      v29 = *a4;
      v30 = *a5;
      v31 = *(a3 + 20);
      v32 = *(a3 + 24);
      v33 = *(a3 + 28);
      sub_24BCA2DD0(v58, a9);
      sub_24BCA2D38(v57, a10);
      v34 = sub_24BE11C44(a2, v29, v30, v31, a6, a7, 0x7A120u, v33, v32, (a3 + 32), v58, v57);
      sub_24BC9F08C(v57);
      sub_24BC9F10C(v58);
    }

    v42 = *(a9 + 24);
    if (!v42)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (v27 && !sub_24BE4D6F4(a2, a1, a11))
    {
      v34 = 0;
    }

    else
    {
      v38 = *a4;
      v39 = *a5;
      v40 = *(a3 + 20);
      v41 = *(a3 + 24);
      sub_24BCA2DD0(v56, a9);
      sub_24BCA2D38(v55, a10);
      v34 = sub_24BE1154C(a2, v38, v39, v40, (a3 + 32), a6, a7, v56, v41);
      sub_24BC9F08C(v55);
      sub_24BC9F10C(v56);
    }

    v42 = *(a9 + 24);
    if (!v42)
    {
      goto LABEL_44;
    }
  }

  if ((*(*v42 + 48))(v42))
  {
    goto LABEL_43;
  }

LABEL_44:
  if (*(a8 + 24))
  {
    sub_24BC836D4(v63, &unk_24C0435AF);
    sub_24BC976F4(a8, v63, 0.21);
    if (v64 < 0)
    {
      operator delete(v63[0]);
    }
  }

  v52[0] = -1;
  if (v34)
  {
    sub_24BC836D4(v63, off_27F078FE8[0]);
    v43 = sub_24BD265CC(a2, v52, v63);
    if (v64 < 0)
    {
      operator delete(v63[0]);
    }
  }

  else
  {
    v43 = 0;
  }

  a12->__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
LABEL_52:
  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

void sub_24BE123D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (a16)
    {
      sub_24BCA2D38(&a43, a14);
      sub_24BC836D4(&STACK[0x2B0], &unk_24C0435AF);
      sub_24BD6B844(a15, &a43, 1, &STACK[0x2B0]);
      if (SLOBYTE(STACK[0x2C7]) < 0)
      {
        operator delete(STACK[0x2B0]);
      }

      v43 = &a43;
    }

    else
    {
      LODWORD(a19) = 0;
      a20 = std::system_category();
      sub_24BCA2D38(&a39, a14);
      sub_24BC836D4(&STACK[0x2B0], &unk_24C0435AF);
      sub_24BD6B844(&a19, &a39, 1, &STACK[0x2B0]);
      if (SLOBYTE(STACK[0x2C7]) < 0)
      {
        operator delete(STACK[0x2B0]);
      }

      v43 = &a39;
    }

    sub_24BC9F08C(v43);
    __cxa_end_catch();
    JUMPOUT(0x24BE122F0);
  }

  _Unwind_Resume(a1);
}

void sub_24BE12C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7, uint64_t a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = *(a4 + 584);
  sub_24BCA1524(v28, a8);
  sub_24BCA2DD0(v27, a8 + 64);
  sub_24BCA2D38(v26, a8 + 32);
  v17[3] = std::chrono::system_clock::now().__d_.__rep_;
  memset(v17, 0, 24);
  sub_24BD7E680(v17, *(a4 + 536), *(a4 + 544), (*(a4 + 544) - *(a4 + 536)) >> 3);
  sub_24BC836D4(&__p, &unk_24C0435AF);
  sub_24BCDEC94(&v18, &__p, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_24BE1151C();
  sub_24BD4C858(v17);
  v12 = sub_24BD4C570(v17);
  if (!v12)
  {
    if (a7)
    {
      sub_24BCA2D38(v25, v26);
      sub_24BC836D4(&__str, &unk_24C0435AF);
      sub_24BD6B844(a6, v25, 17, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v13 = v25;
    }

    else
    {
      LODWORD(v19) = 0;
      v20 = std::system_category();
      sub_24BCA2D38(v24, v26);
      sub_24BC836D4(&__str, &unk_24C0435AF);
      sub_24BD6B844(&v19, v24, 17, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v13 = v24;
    }

    sub_24BC9F08C(v13);
  }

  if (v29 && (sub_24BC836D4(&__str, &unk_24C0435AF), sub_24BC976F4(v28, &__str, 0.07), SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_28;
    }
  }

  else if (v11)
  {
    goto LABEL_28;
  }

  if (v12)
  {
    std::__fs::filesystem::__status((a4 + 560), 0);
    if (__str.__r_.__value_.__s.__data_[0] == 255 || !__str.__r_.__value_.__s.__data_[0])
    {
      if (a7)
      {
        sub_24BCA2D38(v23, v26);
        sub_24BC836D4(&__str, &unk_24C0435AF);
        sub_24BD6B844(a6, v23, 4, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v14 = v23;
      }

      else
      {
        LODWORD(v19) = 0;
        v20 = std::system_category();
        sub_24BCA2D38(v22, v26);
        sub_24BC836D4(&__str, &unk_24C0435AF);
        sub_24BD6B844(&v19, v22, 4, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v14 = v22;
      }

      sub_24BC9F08C(v14);
    }
  }

LABEL_28:
  sub_24BCDED74(&v18);
  sub_24BCDEB9C();
  sub_24BD51FA4();
}

void sub_24BE144A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  sub_24BC9F08C(&a61);
  __cxa_end_catch();
  JUMPOUT(0x24BE14C74);
}

void sub_24BE14504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  sub_24BC9F08C(&a53);
  JUMPOUT(0x24BE14C74);
}

void sub_24BE14554()
{
  sub_24BC9F08C(&STACK[0xAA0]);
  sub_24BC9F10C(&STACK[0xAC0]);
  sub_24BC9F00C(&STACK[0xAE0]);
  JUMPOUT(0x24BE1491CLL);
}

void sub_24BE14664()
{
  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(STACK[0x6E0]);
  }

  sub_24BC9F08C(&STACK[0xB00]);
  __cxa_end_catch();
  JUMPOUT(0x24BE1491CLL);
}

void sub_24BE146C4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(STACK[0x6E0]);
  }

  sub_24BC9F08C(&STACK[0xCA0]);
  sub_24BCDED74(&STACK[0x2A0]);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (a19)
    {
      sub_24BCA2D38(&STACK[0xC40], v20 - 200);
      sub_24BC836D4(&STACK[0x2A0], &unk_24C0435AF);
      sub_24BD6B844(v19, &STACK[0xC40], 1, &STACK[0x2A0]);
      if (SLOBYTE(STACK[0x2B7]) < 0)
      {
        operator delete(STACK[0x2A0]);
      }

      v22 = &STACK[0xC40];
    }

    else
    {
      LODWORD(STACK[0x6E0]) = 0;
      STACK[0x6E8] = std::system_category();
      sub_24BCA2D38(&STACK[0xC20], v20 - 200);
      sub_24BC836D4(&STACK[0x2A0], &unk_24C0435AF);
      sub_24BD6B844(&STACK[0x6E0], &STACK[0xC20], 1, &STACK[0x2A0]);
      if (SLOBYTE(STACK[0x2B7]) < 0)
      {
        operator delete(STACK[0x2A0]);
      }

      v22 = &STACK[0xC20];
    }

    sub_24BC9F08C(v22);
    __cxa_end_catch();
    JUMPOUT(0x24BE1320CLL);
  }

  JUMPOUT(0x24BE14C80);
}

void sub_24BE14724(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (a19)
    {
      sub_24BCA2D38(&STACK[0xA40], v20 - 200);
      sub_24BC836D4(&STACK[0x6E0], &unk_24C0435AF);
      sub_24BD6B844(v19, &STACK[0xA40], 1, &STACK[0x6E0]);
      if (SLOBYTE(STACK[0x6F7]) < 0)
      {
        operator delete(STACK[0x6E0]);
      }

      v21 = &STACK[0xA40];
    }

    else
    {
      LODWORD(STACK[0x600]) = 0;
      STACK[0x608] = std::system_category();
      sub_24BCA2D38(&STACK[0xA20], v20 - 200);
      sub_24BC836D4(&STACK[0x6E0], &unk_24C0435AF);
      sub_24BD6B844(&STACK[0x600], &STACK[0xA20], 1, &STACK[0x6E0]);
      if (SLOBYTE(STACK[0x6F7]) < 0)
      {
        operator delete(STACK[0x6E0]);
      }

      v21 = &STACK[0xA20];
    }

    sub_24BC9F08C(v21);
    __cxa_end_catch();
    JUMPOUT(0x24BE136BCLL);
  }

  JUMPOUT(0x24BE1491CLL);
}

void sub_24BE14870()
{
  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(STACK[0x6E0]);
  }

  sub_24BC9F08C(&STACK[0xA20]);
  __cxa_end_catch();
  JUMPOUT(0x24BE1491CLL);
}

void sub_24BE148D0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(STACK[0x6E0]);
  }

  sub_24BCDED74(&STACK[0x2A0]);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (a19)
    {
      sub_24BCA2D38(&STACK[0xC40], v20 - 200);
      sub_24BC836D4(&STACK[0x2A0], &unk_24C0435AF);
      sub_24BD6B844(v19, &STACK[0xC40], 1, &STACK[0x2A0]);
      if (SLOBYTE(STACK[0x2B7]) < 0)
      {
        operator delete(STACK[0x2A0]);
      }

      v22 = &STACK[0xC40];
    }

    else
    {
      LODWORD(STACK[0x6E0]) = 0;
      STACK[0x6E8] = std::system_category();
      sub_24BCA2D38(&STACK[0xC20], v20 - 200);
      sub_24BC836D4(&STACK[0x2A0], &unk_24C0435AF);
      sub_24BD6B844(&STACK[0x6E0], &STACK[0xC20], 1, &STACK[0x2A0]);
      if (SLOBYTE(STACK[0x2B7]) < 0)
      {
        operator delete(STACK[0x2A0]);
      }

      v22 = &STACK[0xC20];
    }

    sub_24BC9F08C(v22);
    __cxa_end_catch();
    JUMPOUT(0x24BE1320CLL);
  }

  JUMPOUT(0x24BE14C80);
}

void sub_24BE148F4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_24BCDED74(&STACK[0x2A0]);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (a19)
    {
      sub_24BCA2D38(&STACK[0xC40], v20 - 200);
      sub_24BC836D4(&STACK[0x2A0], &unk_24C0435AF);
      sub_24BD6B844(v19, &STACK[0xC40], 1, &STACK[0x2A0]);
      if (SLOBYTE(STACK[0x2B7]) < 0)
      {
        operator delete(STACK[0x2A0]);
      }

      v22 = &STACK[0xC40];
    }

    else
    {
      LODWORD(STACK[0x6E0]) = 0;
      STACK[0x6E8] = std::system_category();
      sub_24BCA2D38(&STACK[0xC20], v20 - 200);
      sub_24BC836D4(&STACK[0x2A0], &unk_24C0435AF);
      sub_24BD6B844(&STACK[0x6E0], &STACK[0xC20], 1, &STACK[0x2A0]);
      if (SLOBYTE(STACK[0x2B7]) < 0)
      {
        operator delete(STACK[0x2A0]);
      }

      v22 = &STACK[0xC20];
    }

    sub_24BC9F08C(v22);
    __cxa_end_catch();
    JUMPOUT(0x24BE1320CLL);
  }

  JUMPOUT(0x24BE14C80);
}

void sub_24BE14900(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BE14C74);
}

void sub_24BE14928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    JUMPOUT(0x24BE14938);
  }

  JUMPOUT(0x24BE14C74);
}

void sub_24BE14A1C()
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  sub_24BC9F08C(&STACK[0xC20]);
  __cxa_end_catch();
  JUMPOUT(0x24BE14C80);
}

void sub_24BE14A7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BE1495CLL);
}

void sub_24BE14AA8()
{
  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(STACK[0x6E0]);
  }

  JUMPOUT(0x24BE14B50);
}

void sub_24BE14AF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BE14C94);
}

void sub_24BE14B48(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (a19)
    {
      sub_24BCA2D38(&STACK[0xDA8], v20 - 200);
      sub_24BC836D4(&STACK[0x6E0], &unk_24C0435AF);
      sub_24BD6B844(v19, &STACK[0xDA8], 1, &STACK[0x6E0]);
      if (SLOBYTE(STACK[0x6F7]) < 0)
      {
        operator delete(STACK[0x6E0]);
      }

      v21 = &STACK[0xDA8];
    }

    else
    {
      LODWORD(STACK[0x600]) = 0;
      STACK[0x608] = std::system_category();
      sub_24BCA2D38(&STACK[0xD88], v20 - 200);
      sub_24BC836D4(&STACK[0x6E0], &unk_24C0435AF);
      sub_24BD6B844(&STACK[0x600], &STACK[0xD88], 1, &STACK[0x6E0]);
      if (SLOBYTE(STACK[0x6F7]) < 0)
      {
        operator delete(STACK[0x6E0]);
      }

      v21 = &STACK[0xD88];
    }

    sub_24BC9F08C(v21);
    __cxa_end_catch();
    JUMPOUT(0x24BE12EC8);
  }

  JUMPOUT(0x24BE14AECLL);
}

void sub_24BE14C0C()
{
  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(STACK[0x6E0]);
  }

  sub_24BC9F08C(&STACK[0xD88]);
  __cxa_end_catch();
  JUMPOUT(0x24BE14AECLL);
}

void sub_24BE14C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _Unwind_Exception *exception_object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48)
{
  if (a36)
  {
    sub_24BC9EC78(a36);
  }

  sub_24BC9EC78(v48);
  if (a43)
  {
    sub_24BC9EC78(a43);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(v49 - 200);
  sub_24BC9F10C(v49 - 168);
  sub_24BC9F00C(v49 - 136);
  _Unwind_Resume(a1);
}

void sub_24BE14DA4()
{
  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(STACK[0x6E0]);
  }

  sub_24BC9F08C(&STACK[0x9A0]);
  __cxa_end_catch();
  JUMPOUT(0x24BE1491CLL);
}

void sub_24BE14E04(void *a1, int a2)
{
  if (a2)
  {
    sub_24BC8DCE8(a1);
  }

  JUMPOUT(0x24BE14CBCLL);
}

uint64_t sub_24BE14E14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v129 = *MEMORY[0x277D85DE8];
  v14 = *(a6 + 584);
  sub_24BCA1524(v127, a11);
  sub_24BCA2DD0(v125, a11 + 64);
  sub_24BCA2D38(v124, a11 + 32);
  v65 = 0;
  v66[0] = std::chrono::system_clock::now();
  v63 = 0;
  v64 = 0;
  sub_24BD7E680(&v63, *(a6 + 536), *(a6 + 544), (*(a6 + 544) - *(a6 + 536)) >> 3);
  sub_24BC836D4(&__p, &unk_24C0435AF);
  sub_24BCDEC94(&v75, &__p, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_24BE1151C();
  v15 = a9;
  sub_24BD4C858(&v63);
  v16 = sub_24BD4C570(&v63);
  if (!v16)
  {
    if (a10)
    {
      sub_24BCA2D38(v123, v124);
      sub_24BC836D4(&__str, &unk_24C0435AF);
      sub_24BD6B844(a9, v123, 17, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v17 = v123;
    }

    else
    {
      LODWORD(v93) = 0;
      v94 = std::system_category();
      sub_24BCA2D38(v122, v124);
      sub_24BC836D4(&__str, &unk_24C0435AF);
      sub_24BD6B844(&v93, v122, 17, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v17 = v122;
    }

    sub_24BC9F08C(v17);
  }

  if (v128 && (sub_24BC836D4(&__str, &unk_24C0435AF), sub_24BC976F4(v127, &__str, 0.07), SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v14)
    {
      goto LABEL_28;
    }
  }

  else if (v14)
  {
    goto LABEL_28;
  }

  if (v16)
  {
    std::__fs::filesystem::__status((a6 + 560), 0);
    if (__str.__r_.__value_.__s.__data_[0] == 255 || !__str.__r_.__value_.__s.__data_[0])
    {
      if (a10)
      {
        sub_24BCA2D38(v121, v124);
        sub_24BC836D4(&__str, &unk_24C0435AF);
        sub_24BD6B844(a9, v121, 4, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v18 = v121;
      }

      else
      {
        LODWORD(v93) = 0;
        v94 = std::system_category();
        sub_24BCA2D38(v120, v124);
        sub_24BC836D4(&__str, &unk_24C0435AF);
        sub_24BD6B844(&v93, v120, 4, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v18 = v120;
      }

      sub_24BC9F08C(v18);
      LOBYTE(v16) = 0;
    }
  }

LABEL_28:
  sub_24BCDED74(&v75);
  sub_24BCDEB9C();
  v19 = *(a6 + 64);
  v60 = *(a6 + 68);
  v61 = v19;
  if (!v16)
  {
    v21 = 0;
    goto LABEL_50;
  }

  LODWORD(v93) = 0;
  LODWORD(v75.__r_.__value_.__l.__data_) = 1;
  if (sub_24BE24BE0(a1, a2, &v93, &v75))
  {
    v20 = sub_24BE58CE0(a2, &v93, &v61, &v60);
  }

  else
  {
    v20 = 0;
  }

  if (!v128 || (sub_24BC836D4(&v75, &unk_24C0435AF), sub_24BC976F4(v127, &v75, 0.1), (SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0))
  {
    if (v20)
    {
      goto LABEL_36;
    }

LABEL_48:
    v21 = 0;
    goto LABEL_49;
  }

  operator delete(v75.__r_.__value_.__l.__data_);
  if (!v20)
  {
    goto LABEL_48;
  }

LABEL_36:
  if (*(a1 + 160) - *(a1 + 152) <= 4uLL)
  {
    if (a10)
    {
      sub_24BCA2D38(v119, v124);
      sub_24BC836D4(&v75, &unk_24C0435AF);
      sub_24BD6B844(a9, v119, 9, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v22 = v119;
    }

    else
    {
      LODWORD(__str.__r_.__value_.__l.__data_) = 0;
      __str.__r_.__value_.__l.__size_ = std::system_category();
      sub_24BCA2D38(v118, v124);
      sub_24BC836D4(&v75, &unk_24C0435AF);
      sub_24BD6B844(&__str, v118, 9, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v22 = v118;
    }

    sub_24BC9F08C(v22);
    goto LABEL_48;
  }

  v21 = 1;
LABEL_49:
  sub_24BCDEB9C();
LABEL_50:
  v23.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (a10)
  {
    *(a9 + 296) = *(a9 + 296) + (v23.__d_.__rep_ - v66[0].__d_.__rep_) / 1000000.0;
  }

  v66[0] = std::chrono::system_clock::now();
  if (v126 && (*(*v126 + 48))(v126))
  {
    if (a10)
    {
      sub_24BCA2D38(v117, v124);
      sub_24BC836D4(&v75, &unk_24C0435AF);
      sub_24BD6B844(a9, v117, 10, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v24 = v117;
    }

    else
    {
      LODWORD(__str.__r_.__value_.__l.__data_) = 0;
      __str.__r_.__value_.__l.__size_ = std::system_category();
      sub_24BCA2D38(v116, v124);
      sub_24BC836D4(&v75, &unk_24C0435AF);
      sub_24BD6B844(&__str, v116, 10, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v24 = v116;
    }

LABEL_158:
    sub_24BC9F08C(v24);
    v47 = 0;
    goto LABEL_159;
  }

  if (v21)
  {
    sub_24BC836D4(&v59, &unk_24C0435AF);
    sub_24BCDEC94(&v75, &v59, 0, 0);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (*(a3 + 184) == 1)
    {
      sub_24BCB3658(a4, a3);
      sub_24BE3E800(a4);
    }

    sub_24BCA1524(v115, v127);
    sub_24BCA2DD0(v114, v125);
    sub_24BCA2D38(v113, v124);
    v25 = sub_24BE11DC8(a1, a4, a6, &v61, &v60, a9, a10, v115, v114, v113, &v63, v66);
    sub_24BC9F08C(v113);
    sub_24BC9F10C(v114);
    sub_24BC9F00C(v115);
    v26.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (a10)
    {
      *(a9 + 296) = *(a9 + 296) + (v26.__d_.__rep_ - v66[0].__d_.__rep_) / 1000000.0;
    }

    sub_24BCDED74(&v75);
  }

  else
  {
    v25 = 0;
  }

  sub_24BCDEB9C();
  if (v126 && (*(*v126 + 48))(v126))
  {
    if (a10)
    {
      sub_24BCA2D38(v112, v124);
      sub_24BC836D4(&v75, &unk_24C0435AF);
      sub_24BD6B844(a9, v112, 10, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v24 = v112;
    }

    else
    {
      LODWORD(__str.__r_.__value_.__l.__data_) = 0;
      __str.__r_.__value_.__l.__size_ = std::system_category();
      sub_24BCA2D38(v111, v124);
      sub_24BC836D4(&v75, &unk_24C0435AF);
      sub_24BD6B844(&__str, v111, 10, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v24 = v111;
    }

    goto LABEL_158;
  }

  v66[0] = std::chrono::system_clock::now();
  sub_24BC836D4(&v58, &unk_24C0435AF);
  sub_24BCDEC94(&v75, &v58, 0, 0);
  if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v25)
    {
      goto LABEL_75;
    }

LABEL_80:
    v29 = 0;
    goto LABEL_108;
  }

  operator delete(v58.__r_.__value_.__l.__data_);
  if (!v25)
  {
    goto LABEL_80;
  }

LABEL_75:
  v52 = a5;
  v27 = sub_24BCB3A30(a4);
  v28 = 0xFFFFFFFFLL;
  LODWORD(v93) = -1;
  if (v27)
  {
    sub_24BC836D4(&__str, off_27F078FE8[0]);
    v29 = sub_24BD265CC(a4, &v93, &__str.__r_.__value_.__l.__data_);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v28 = v93;
  }

  else
  {
    v29 = 0;
  }

  v30 = a4[10] + 16 * v28;
  v32 = *v30;
  v31 = *(v30 + 8);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v31);
  }

  v33 = (*(*v32 + 16))(v32);
  LODWORD(v100[0]) = -1;
  sub_24BC836D4(&__str, off_27F078FF8);
  v34 = sub_24BD26644(a4, v100, &__str.__r_.__value_.__l.__data_);
  v35 = v34;
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v34)
    {
      goto LABEL_95;
    }

LABEL_94:
    sub_24BC836D4(&__str, off_27F078FF8);
    sub_24BD2CC70(a4);
  }

  operator delete(__str.__r_.__value_.__l.__data_);
  if (!v35)
  {
    goto LABEL_94;
  }

LABEL_95:
  v36 = a4[10] + 16 * LODWORD(v100[0]);
  v38 = *v36;
  v37 = *(v36 + 8);
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v37);
  }

  (*(*v38 + 32))(v38, 1);
  v39 = v38[5];
  sub_24BD27898(v39, *(v39 + 8));
  *v39 = v39 + 8;
  *(v39 + 16) = 0;
  *(v39 + 8) = 0;
  if (v33)
  {
    v40 = 0;
    for (i = 0; i != v33; ++i)
    {
      v42 = (v32[5] + v40);
      if (*(v42 + 23) < 0)
      {
        sub_24BC8DE9C(&__str, *v42, *(v42 + 1));
      }

      else
      {
        v43 = *v42;
        __str.__r_.__value_.__r.__words[2] = *(v42 + 2);
        *&__str.__r_.__value_.__l.__data_ = v43;
      }

      v57 = i;
      v66[2].__d_.__rep_ = &v57;
      v44 = sub_24BD303B8(v39, &v57);
      std::string::operator=((v44 + 5), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v40 += 24;
    }
  }

  v15 = a9;
  a5 = v52;
  if (v128)
  {
    sub_24BC836D4(&__str, &unk_24C0435AF);
    sub_24BC976F4(v127, &__str, 0.3);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

LABEL_108:
  sub_24BCDED74(&v75);
  sub_24BCDEB9C();
  if (v126 && (*(*v126 + 48))(v126))
  {
    if (a10)
    {
      sub_24BCA2D38(v110, v124);
      sub_24BC836D4(&v75, &unk_24C0435AF);
      sub_24BD6B844(v15, v110, 10, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v24 = v110;
    }

    else
    {
      LODWORD(__str.__r_.__value_.__l.__data_) = 0;
      __str.__r_.__value_.__l.__size_ = std::system_category();
      sub_24BCA2D38(v109, v124);
      sub_24BC836D4(&v75, &unk_24C0435AF);
      sub_24BD6B844(&__str, v109, 10, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v24 = v109;
    }

    goto LABEL_158;
  }

  if (v29)
  {
    sub_24BE189B0(&__str, a6);
    v102[0] = v61;
    v102[1] = v60;
    v100[3] = 0;
    if (v128)
    {
      v75.__r_.__value_.__r.__words[0] = &unk_285F96AE8;
      v75.__r_.__value_.__l.__size_ = v127;
      v76 = &v75;
      sub_24BCA3290(&v75, v100);
      sub_24BC9F00C(&v75);
    }

    sub_24BD7E6FC(&v93, a11);
    sub_24BC9B08C(&v93, v100);
    v45.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (a10)
    {
      *(v15 + 296) = (v45.__d_.__rep_ - v66[0].__d_.__rep_) / 1000000.0;
    }

    if (a7)
    {
      sub_24BD7E6FC(v87, &v93);
      sub_24BCCEE48(&v75, &unk_24C0435AF);
      v47 = sub_24BE58E38(a1, a2, a4, a5, &__str, v15, a10, v46, 0, 0, v87);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      sub_24BD7E968(&v92);
      sub_24BD2A5FC(&v91);
      sub_24BD7E8E8(&v90);
      sub_24BC9F10C(&v89);
      sub_24BC9F08C(&v88);
      sub_24BC9F00C(v87);
    }

    else
    {
      sub_24BD7E05C(&v75, &__str);
      v84 = 0;
      sub_24BE69630(a1, a2, &v75);
      sub_24BD7E6FC(v69, &v93);
      v47 = sub_24BE65894(a1, a2, a4, a5, &v75, v69);
      sub_24BD7E968(&v74);
      sub_24BD2A5FC(&v73);
      sub_24BD7E8E8(&v72);
      sub_24BC9F10C(&v71);
      sub_24BC9F08C(&v70);
      sub_24BC9F00C(v69);
      if (v86 < 0)
      {
        operator delete(v85);
      }

      if (v83 < 0)
      {
        operator delete(v82);
      }

      if (v81 < 0)
      {
        operator delete(v80);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      sub_24BD2A138(&v77);
    }

    if (v128)
    {
      sub_24BC836D4(&v75, &unk_24C0435AF);
      sub_24BC976F4(v127, &v75, 1.0);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }
    }

    sub_24BD7E968(&v99);
    sub_24BD2A5FC(&v98);
    sub_24BD7E8E8(&v97);
    sub_24BC9F10C(&v96);
    sub_24BC9F08C(&v95);
    sub_24BC9F00C(&v93);
    sub_24BC9F00C(v100);
    if (v108 < 0)
    {
      operator delete(v107);
    }

    if (v106 < 0)
    {
      operator delete(v105);
    }

    if (v103)
    {
      v104 = v103;
      operator delete(v103);
    }

    sub_24BD2A138(v102);
  }

  else
  {
    v47 = 0;
  }

  if (v126 && (*(*v126 + 48))(v126))
  {
    if (a10)
    {
      sub_24BCA2D38(v68, v124);
      sub_24BC836D4(&v75, &unk_24C0435AF);
      sub_24BD6B844(v15, v68, 10, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v24 = v68;
    }

    else
    {
      LODWORD(__str.__r_.__value_.__l.__data_) = 0;
      __str.__r_.__value_.__l.__size_ = std::system_category();
      sub_24BCA2D38(v67, v124);
      sub_24BC836D4(&v75, &unk_24C0435AF);
      sub_24BD6B844(&__str, v67, 10, &v75);
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v24 = v67;
    }

    goto LABEL_158;
  }

  for (j = 0; ; ++j)
  {
    v49 = sub_24BCDEB9C();
    if (j >= 0xD37A6F4DE9BD37A7 * ((v49[1] - *v49) >> 3))
    {
      break;
    }

    sub_24BCDEB9C();
  }

LABEL_159:
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  sub_24BC9F08C(v124);
  sub_24BC9F10C(v125);
  sub_24BC9F00C(v127);
  v50 = *MEMORY[0x277D85DE8];
  return v47;
}

void sub_24BE15D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  sub_24BC9F08C(&a41);
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(v41 - 200);
  sub_24BC9F10C(v41 - 168);
  sub_24BC9F00C(v41 - 136);
  _Unwind_Resume(a1);
}

void sub_24BE1685C()
{
  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(*v0);
  }

  sub_24BC9F08C(&STACK[0x938]);
  __cxa_end_catch();
  JUMPOUT(0x24BE165A8);
}

void sub_24BE168BC(void *a1, int a2)
{
  if (a2)
  {
    sub_24BC8DCE8(a1);
  }

  JUMPOUT(0x24BE16768);
}

BOOL sub_24BE168CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v85 = *MEMORY[0x277D85DE8];
  v14 = *(a4 + 584);
  sub_24BCA1524(v83, a7);
  sub_24BCA2DD0(v81, a7 + 64);
  sub_24BCA2D38(v80, a7 + 32);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  sub_24BD7E680(&v60, *(a4 + 536), *(a4 + 544), (*(a4 + 544) - *(a4 + 536)) >> 3);
  sub_24BC836D4(&__p, &unk_24C0435AF);
  sub_24BCDEC94(v57, &__p, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_24BE1151C();
  sub_24BD4C858(&v60);
  v15 = sub_24BD4C570(&v60);
  if (!v15)
  {
    if (a6)
    {
      sub_24BCA2D38(v79, v80);
      sub_24BC836D4(&__str, &unk_24C0435AF);
      sub_24BD6B844(a5, v79, 17, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v16 = v79;
    }

    else
    {
      LODWORD(v53) = 0;
      v54 = std::system_category();
      sub_24BCA2D38(v78, v80);
      sub_24BC836D4(&__str, &unk_24C0435AF);
      sub_24BD6B844(&v53, v78, 17, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v16 = v78;
    }

    sub_24BC9F08C(v16);
  }

  if (v84 && (sub_24BC836D4(&__str, &unk_24C0435AF), sub_24BC976F4(v83, &__str, 0.07), SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v14)
    {
      goto LABEL_28;
    }
  }

  else if (v14)
  {
    goto LABEL_28;
  }

  if (v15)
  {
    std::__fs::filesystem::__status((a4 + 560), 0);
    if (__str.__r_.__value_.__s.__data_[0] == 255 || !__str.__r_.__value_.__s.__data_[0])
    {
      if (a6)
      {
        sub_24BCA2D38(v77, v80);
        sub_24BC836D4(&__str, &unk_24C0435AF);
        sub_24BD6B844(a5, v77, 4, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v17 = v77;
      }

      else
      {
        LODWORD(v53) = 0;
        v54 = std::system_category();
        sub_24BCA2D38(v76, v80);
        sub_24BC836D4(&__str, &unk_24C0435AF);
        sub_24BD6B844(&v53, v76, 4, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v17 = v76;
      }

      sub_24BC9F08C(v17);
      LOBYTE(v15) = 0;
    }
  }

LABEL_28:
  sub_24BCDED74(v57);
  sub_24BCDEB9C();
  v18 = *(a4 + 64);
  v51 = *(a4 + 68);
  v52 = v18;
  if (!v15)
  {
    v19 = 0;
    goto LABEL_46;
  }

  v59[0] = 0;
  v59[1] = 0;
  memset(v57, 0, sizeof(v57));
  v58 = v59;
  LODWORD(v64) = 0;
  v19 = sub_24BE58CE0(v57, &v64, &v52, &v51);
  if (v84 && (sub_24BC836D4(&__str, &unk_24C0435AF), sub_24BC976F4(v83, &__str, 0.1), SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v19)
    {
LABEL_32:
      if (*(a1 + 160) - *(a1 + 152) > 4uLL)
      {
        v19 = 1;
      }

      else
      {
        if (a6)
        {
          sub_24BCA2D38(v75, v80);
          sub_24BC836D4(&__str, &unk_24C0435AF);
          sub_24BD6B844(a5, v75, 9, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v20 = v75;
        }

        else
        {
          LODWORD(v53) = 0;
          v54 = std::system_category();
          sub_24BCA2D38(v74, v80);
          sub_24BC836D4(&__str, &unk_24C0435AF);
          sub_24BD6B844(&v53, v74, 9, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v20 = v74;
        }

        sub_24BC9F08C(v20);
        v19 = 0;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_32;
  }

  sub_24BC900B8(&v58, v59[0]);
  __str.__r_.__value_.__r.__words[0] = &v57[1] + 8;
  sub_24BCCB404(&__str);
  __str.__r_.__value_.__r.__words[0] = v57;
  sub_24BCCB4E0(&__str);
  sub_24BCDEB9C();
LABEL_46:
  v21.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (a6)
  {
    *(a5 + 296) = *(a5 + 296) + (v21.__d_.__rep_ - v63.__d_.__rep_) / 1000000.0;
  }

  v63.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (v82 && (*(*v82 + 48))(v82))
  {
    if (a6)
    {
      sub_24BCA2D38(v73, v80);
      sub_24BC836D4(v57, &unk_24C0435AF);
      sub_24BD6B844(a5, v73, 10, v57);
      if (SBYTE7(v57[1]) < 0)
      {
        operator delete(*&v57[0]);
      }

      v22 = v73;
    }

    else
    {
      LODWORD(__str.__r_.__value_.__l.__data_) = 0;
      __str.__r_.__value_.__l.__size_ = std::system_category();
      sub_24BCA2D38(v72, v80);
      sub_24BC836D4(v57, &unk_24C0435AF);
      sub_24BD6B844(&__str, v72, 10, v57);
      if (SBYTE7(v57[1]) < 0)
      {
        operator delete(*&v57[0]);
      }

      v22 = v72;
    }

LABEL_116:
    sub_24BC9F08C(v22);
    v23 = 0;
    goto LABEL_117;
  }

  if (v19)
  {
    sub_24BC836D4(&v50, &unk_24C0435AF);
    sub_24BCDEC94(v57, &v50, 0, 0);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 184) == 1)
    {
      sub_24BCB3658(a3, a2);
      sub_24BE3E800(a3);
    }

    sub_24BCA1524(v71, v83);
    sub_24BCA2DD0(v70, v81);
    sub_24BCA2D38(v69, v80);
    v23 = sub_24BE11DC8(a1, a3, a4, &v52, &v51, a5, a6, v71, v70, v69, &v60, &v63);
    sub_24BC9F08C(v69);
    sub_24BC9F10C(v70);
    sub_24BC9F00C(v71);
    v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (a6)
    {
      *(a5 + 296) = *(a5 + 296) + (v24.__d_.__rep_ - v63.__d_.__rep_) / 1000000.0;
    }

    sub_24BCDED74(v57);
  }

  else
  {
    v23 = 0;
  }

  sub_24BCDEB9C();
  if (v82 && (*(*v82 + 48))(v82))
  {
    if (a6)
    {
      sub_24BCA2D38(v68, v80);
      sub_24BC836D4(v57, &unk_24C0435AF);
      sub_24BD6B844(a5, v68, 10, v57);
      if (SBYTE7(v57[1]) < 0)
      {
        operator delete(*&v57[0]);
      }

      v22 = v68;
    }

    else
    {
      LODWORD(__str.__r_.__value_.__l.__data_) = 0;
      __str.__r_.__value_.__l.__size_ = std::system_category();
      sub_24BCA2D38(v67, v80);
      sub_24BC836D4(v57, &unk_24C0435AF);
      sub_24BD6B844(&__str, v67, 10, v57);
      if (SBYTE7(v57[1]) < 0)
      {
        operator delete(*&v57[0]);
      }

      v22 = v67;
    }

    goto LABEL_116;
  }

  v63.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  sub_24BC836D4(&v49, &unk_24C0435AF);
  sub_24BCDEC94(v57, &v49, 0, 0);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
    if (!v23)
    {
      goto LABEL_104;
    }
  }

  else if (!v23)
  {
    goto LABEL_104;
  }

  v46 = a5;
  v25 = sub_24BCB3A30(a3);
  v26 = 0xFFFFFFFFLL;
  LODWORD(v53) = -1;
  if (v25)
  {
    sub_24BC836D4(&__str, off_27F078FE8[0]);
    v23 = sub_24BD265CC(a3, &v53, &__str.__r_.__value_.__l.__data_);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v26 = v53;
  }

  else
  {
    v23 = 0;
  }

  v27 = a3[10] + 16 * v26;
  v29 = *v27;
  v28 = *(v27 + 8);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v28);
  }

  v30 = (*(*v29 + 16))(v29);
  v48 = -1;
  sub_24BC836D4(&__str, off_27F078FF8);
  v31 = sub_24BD26644(a3, &v48, &__str.__r_.__value_.__l.__data_);
  v32 = v31;
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v31)
    {
      goto LABEL_91;
    }

LABEL_90:
    sub_24BC836D4(&__str, off_27F078FF8);
    sub_24BD2CC70(a3);
  }

  operator delete(__str.__r_.__value_.__l.__data_);
  if (!v32)
  {
    goto LABEL_90;
  }

LABEL_91:
  v33 = a3[10] + 16 * v48;
  v35 = *v33;
  v34 = *(v33 + 8);
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v34);
  }

  (*(*v35 + 32))(v35, 1);
  if (v30)
  {
    v36 = 0;
    v37 = 0;
    v38 = v35[5];
    do
    {
      v39 = (v29[5] + v36);
      if (*(v39 + 23) < 0)
      {
        sub_24BC8DE9C(&__str, *v39, *(v39 + 1));
      }

      else
      {
        v40 = *v39;
        __str.__r_.__value_.__r.__words[2] = *(v39 + 2);
        *&__str.__r_.__value_.__l.__data_ = v40;
      }

      v47 = v37;
      v64 = &v47;
      v41 = sub_24BD303B8(v38, &v47);
      std::string::operator=((v41 + 5), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v37;
      v36 += 24;
    }

    while (v30 != v37);
  }

  a5 = v46;
  if (v84)
  {
    sub_24BC836D4(&__str, &unk_24C0435AF);
    sub_24BC976F4(v83, &__str, 0.3);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

LABEL_104:
  sub_24BCDED74(v57);
  sub_24BCDEB9C();
  if (v82 && (*(*v82 + 48))(v82))
  {
    if (a6)
    {
      sub_24BCA2D38(v66, v80);
      sub_24BC836D4(v57, &unk_24C0435AF);
      sub_24BD6B844(a5, v66, 10, v57);
      if (SBYTE7(v57[1]) < 0)
      {
        operator delete(*&v57[0]);
      }

      v22 = v66;
    }

    else
    {
      LODWORD(__str.__r_.__value_.__l.__data_) = 0;
      __str.__r_.__value_.__l.__size_ = std::system_category();
      sub_24BCA2D38(v65, v80);
      sub_24BC836D4(v57, &unk_24C0435AF);
      sub_24BD6B844(&__str, v65, 10, v57);
      if (SBYTE7(v57[1]) < 0)
      {
        operator delete(*&v57[0]);
      }

      v22 = v65;
    }

    goto LABEL_116;
  }

  for (i = 0; ; ++i)
  {
    v43 = sub_24BCDEB9C();
    if (i >= 0xD37A6F4DE9BD37A7 * ((v43[1] - *v43) >> 3))
    {
      break;
    }

    sub_24BCDEB9C();
  }

LABEL_117:
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  sub_24BC9F08C(v80);
  sub_24BC9F10C(v81);
  sub_24BC9F00C(v83);
  v44 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_24BE1743C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&STACK[0x388]);
  sub_24BD51EAC(&a34);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (v39)
    {
      sub_24BCA2D38(&STACK[0x368], v42 - 200);
      sub_24BC836D4(&a34, &unk_24C0435AF);
      sub_24BD6B844(v41, &STACK[0x368], 1, &a34);
      if (a39 < 0)
      {
        operator delete(*v40);
      }

      v45 = &STACK[0x368];
    }

    else
    {
      LODWORD(__p) = 0;
      a26 = std::system_category();
      sub_24BCA2D38(&STACK[0x348], v42 - 200);
      sub_24BC836D4(&a34, &unk_24C0435AF);
      sub_24BD6B844(&__p, &STACK[0x348], 1, &a34);
      if (a39 < 0)
      {
        operator delete(*v40);
      }

      v45 = &STACK[0x348];
    }

    sub_24BC9F08C(v45);
    __cxa_end_catch();
    JUMPOUT(0x24BE16CF8);
  }

  v46 = *(v40 + 200);
  if (v46)
  {
    *(v40 + 208) = v46;
    operator delete(v46);
  }

  sub_24BC9F08C(v42 - 200);
  sub_24BC9F10C(v42 - 168);
  sub_24BC9F00C(v42 - 136);
  _Unwind_Resume(a1);
}

void sub_24BE18708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_24BCBBEE8(&a34);
  sub_24BD51EAC(&a52);
  __p = &a61;
  sub_24BCB7FC8(&__p);
  __p = &a64;
  sub_24BE19B40(&__p);
  __p = &a67;
  sub_24BE199F8(&__p);
  __p = &a70;
  sub_24BE1980C(&__p);
  if (STACK[0x200])
  {
    sub_24BC9EC78(STACK[0x200]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BE1891C(unsigned int *a1)
{
  v1 = a1[1];
  if (v1 >= 2)
  {
    v2 = 0;
    v3 = 0;
    v4 = v1 >> 1;
    v5 = *a1;
    v6 = v5 * (v1 - 1);
    do
    {
      if (v5)
      {
        v7 = 0;
        v8 = *(a1 + 2);
        v9 = a1[2];
        v10 = v9 * v2;
        v11 = v9 * v6;
        do
        {
          if (v9)
          {
            v12 = (v8 + 4 * v10);
            v13 = v9;
            v14 = (v8 + 4 * v11);
            do
            {
              v15 = *v12;
              *v12++ = *v14;
              *v14++ = v15;
              --v13;
            }

            while (v13);
          }

          ++v7;
          v10 += v9;
          v11 += v9;
        }

        while (v7 != v5);
      }

      ++v3;
      v2 += v5;
      v6 -= v5;
    }

    while (v3 != v4);
  }

  return 1;
}

uint64_t sub_24BE189B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  v5 = *(a2 + 20);
  v6 = *(a2 + 36);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 36) = v6;
  *(a1 + 20) = v5;
  *(a1 + 4) = v4;
  sub_24BD7E220(a1 + 64, a2 + 64);
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  sub_24BD7E680(a1 + 536, *(a2 + 536), *(a2 + 544), (*(a2 + 544) - *(a2 + 536)) >> 3);
  v7 = (a1 + 560);
  if (*(a2 + 583) < 0)
  {
    sub_24BC8DE9C(v7, *(a2 + 560), *(a2 + 568));
  }

  else
  {
    v8 = *(a2 + 560);
    *(a1 + 576) = *(a2 + 576);
    *v7 = v8;
  }

  *(a1 + 584) = *(a2 + 584);
  v9 = (a1 + 592);
  if (*(a2 + 615) < 0)
  {
    sub_24BC8DE9C(v9, *(a2 + 592), *(a2 + 600));
  }

  else
  {
    v10 = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    *v9 = v10;
  }

  v11 = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 616) = v11;
  return a1;
}

void sub_24BE18AAC(_Unwind_Exception *a1)
{
  sub_24BD2A0F4(v2);
  sub_24BD2A138(v1 + 64);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE18AE8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 4);
  *a1 = v4;
  sub_24BE18BA4((a1 + 16), (a2 + 2));
  sub_24BE18FA4((a1 + 40), (a2 + 5));
  *(a1 + 64) = *(a2 + 64);
  sub_24BC836D4((a1 + 72), "CorePhotogrammetry Bake");
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_24BC836D4((a1 + 112), "ObjectCapture");
  return a1;
}

void sub_24BE18B64(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  sub_24BD2D918(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_24BE18BA4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_24BE18BFC(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_24BE18BFC(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_24BE18C84(v5, v5 + 1, v4 + 8);
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

uint64_t sub_24BE18C84(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_24BE18D08(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_24BE18EB0();
  }

  return result;
}

uint64_t *sub_24BE18D08(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

void sub_24BE18F28(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24BD30678(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE18F44(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_24BC8DE9C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v3 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v3;
  }

  return a1;
}

void *sub_24BE18FA4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_24BE18FFC(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_24BE18FFC(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_24BE19084(v5, v5 + 1, v4 + 8);
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

uint64_t sub_24BE19084(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_24BE18D08(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_24BE19118();
  }

  return v3;
}

uint64_t sub_24BE19198(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BE192A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96980;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE192CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  result = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(v2 + 76) = *(a2 + 76);
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  *(v2 + 32) = result;
  return result;
}

uint64_t sub_24BE19364(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F969C8;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE19390(uint64_t a1, __n128 *a2)
{
  result = *a2;
  **(a1 + 8) = *a2;
  return result;
}

uint64_t sub_24BE19410(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96A10;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE1943C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  result = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(v2 + 76) = *(a2 + 76);
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  *(v2 + 32) = result;
  return result;
}

uint64_t sub_24BE194D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96A58;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE19500(uint64_t a1, __n128 *a2)
{
  result = *a2;
  **(a1 + 8) = *a2;
  return result;
}

uint64_t sub_24BE19580(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96AA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE195AC(uint64_t a1, float *a2, uint64_t a3)
{
  result = *(a1 + 8);
  if (*(result + 24))
  {
    v4 = *a2 / 100.0 * 70.0 + 30.0;
    return sub_24BC976F4(result, a3, v4 / 100.0);
  }

  return result;
}

uint64_t sub_24BE19668(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96AE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BE19694(uint64_t a1, float *a2, uint64_t a3)
{
  result = *(a1 + 8);
  if (*(result + 24))
  {
    v4 = *a2 / 100.0 * 70.0 + 30.0;
    return sub_24BC976F4(result, a3, v4 / 100.0);
  }

  return result;
}

void *sub_24BE196E0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BE19768(result, a2);
  }

  return result;
}

void sub_24BE19768(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24BE197B4(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BE197B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BE1980C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BE19860(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_24BE19860(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 24)
  {
    result = *(i - 8);
    if (result)
    {
      result = MEMORY[0x24C254890](result, 0x1000C8077774924);
      *(i - 8) = 0;
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void *sub_24BE198CC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BE19954(result, a2);
  }

  return result;
}

void sub_24BE19954(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24BE199A0(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BE199A0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BE199F8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BE19A4C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_24BE19A4C(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 24)
  {
    result = *(i - 8);
    if (result)
    {
      result = MEMORY[0x24C254890](result, 0x1000C8052888210);
      *(i - 8) = 0;
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void *sub_24BE19AB8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BE19954(result, a2);
  }

  return result;
}

void sub_24BE19B40(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BE19B94(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_24BE19B94(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 24)
  {
    v5 = *(i - 8);
    if (v5)
    {
      result = MEMORY[0x24C254890](v5 - 16, 0x1000C80451B5BE8);
      *(i - 8) = 0;
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void *sub_24BE19C04(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCC95E0(result, a2);
  }

  return result;
}

void sub_24BE19C84(void *a1, float a2, uint64_t a3, void *a4, int a5, void *a6, void *a7)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v16 = a5;
  v15 = 0;
  sub_24BE47938(a4, &v15);
  v14 = 0;
  sub_24BE46DA0(a4, &v14, v11, v12);
  v13 = (a1[1] - *a1) >> 4;
  sub_24BC9A554(a6, v13);
  sub_24BC97D30(a7, v13);
  operator new();
}

void sub_24BE19DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC9EF8C(va);
  _Unwind_Resume(a1);
}

__n128 sub_24BE19E64(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F96B30;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE19EAC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  if (*a3 - *a2 >= 0x20000)
  {
    v6 = 0x20000;
  }

  else
  {
    v6 = *a3 - *a2;
  }

  sub_24BE46224(v23, *(a1 + 8), 3, 2 * v6);
  sub_24BE07478(__p, 2 * v6);
  if (v5 > v4)
  {
    if (v5 - v4 <= v6)
    {
      v7 = v5 - v4;
    }

    else
    {
      v7 = v6;
    }

    if (v7 != v6)
    {
      sub_24BE1A134(__p, 2 * v7);
    }

    if (v7)
    {
      v8 = __p[0];
      v9 = 84;
      v10 = 16 * v4;
      v11 = v7;
      do
      {
        v12 = *(**(a1 + 24) + v10);
        v13 = &v8[v9];
        *(v13 - 84) = *(**(a1 + 16) + v10);
        *(v13 - 68) = v12;
        *(v13 - 52) = 0x7F7FFFFF3089705FLL;
        v14 = __p[0] + v9;
        *(v14 - 13) = 0;
        *(v14 - 12) = **(a1 + 32);
        v15 = vnegq_f32(*(**(a1 + 24) + v10));
        *(v14 - 36) = *(**(a1 + 16) + v10);
        *(v14 - 20) = v15;
        *(v14 - 4) = 0x7F7FFFFF3089705FLL;
        v8 = __p[0];
        v16 = __p[0] + v9;
        *(v16 - 1) = 0;
        *v16 = **(a1 + 32);
        v10 += 16;
        v9 += 96;
        --v11;
      }

      while (v11);
    }

    v17 = *(a1 + 8);
    v18 = **(a1 + 40);
    v21 = *(a1 + 48);
    v24 = 0;
    operator new();
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  result = sub_24BE46344(v23);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BE1A134(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BE1A170(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 48 * a2;
  }
}

void sub_24BE1A170(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 48 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 16) = xmmword_24BFD22E0;
        *(v3 + 32) = 0x7F7FFFFF3089705FLL;
        v3 += 48;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x555555555555555)
    {
      sub_24BC8E01C();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    v15 = a1;
    if (v8)
    {
      sub_24BE07554(a1, v8);
    }

    v10 = 48 * v5;
    __p = 0;
    v12 = 48 * v5;
    v14 = 0;
    do
    {
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = xmmword_24BFD22E0;
      *(v10 + 32) = 0x7F7FFFFF3089705FLL;
      v10 += 48;
    }

    while (v10 != 48 * v5 + 48 * a2);
    v13 = 48 * v5 + 48 * a2;
    sub_24BE1A350(a1, &__p);
    if (v13 != v12)
    {
      v13 = (v13 - v12 - 48) % 0x30uLL + v12;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BE1A300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BE1A350(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 16) = *(v2 + 16);
      *(v5 + 32) = *(v2 + 32);
      v2 += 48;
      v5 += 48;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

__n128 sub_24BE1A454(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F96B78;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE1A494(uint64_t result, uint64_t *a2)
{
  if (*(result + 8))
  {
    v2 = 0;
    for (i = 16; ; i += 32)
    {
      v4 = *a2;
      v5 = (*a2 + i);
      v6 = *(v5 - 4);
      v7 = *(result + 24);
      if (v6 == -1.0)
      {
        break;
      }

      v8 = *(v5 - 3);
      if (*v5 != -1.0)
      {
        v9 = *(v4 + i + 4);
        if (v8 < v7 && v9 < v7)
        {
          if (v6 >= *v5)
          {
            v16 = (*a2 + i);
          }

          else
          {
            v16 = v5 - 4;
          }

          HIDWORD(v15) = 0;
          *&v15 = *(v16 + 1);
          *(&v15 + 2) = (1.0 - *&v15) - *(&v15 + 1);
          *(**(result + 32) + 4 * *(result + 16) + 4 * v2) = v16[1];
          goto LABEL_24;
        }

        if (v8 < v7)
        {
          goto LABEL_18;
        }

LABEL_14:
        if (v9 < v7)
        {
          *(**(result + 32) + 4 * *(result + 16) + 4 * v2) = v9;
          v11 = v4 + i;
          v12 = *(v11 + 8);
          v13 = *(v11 + 12);
LABEL_19:
          HIDWORD(v15) = 0;
          *&v15 = __PAIR64__(LODWORD(v13), LODWORD(v12));
          *(&v15 + 2) = (1.0 - v12) - v13;
LABEL_24:
          *(**(result + 40) + 16 * *(result + 16) + 16 * v2) = v15;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      if (v8 < v7)
      {
LABEL_18:
        *(**(result + 32) + 4 * *(result + 16) + 4 * v2) = v8;
        v14 = v4 + i;
        v12 = *(v14 - 8);
        v13 = *(v14 - 4);
        goto LABEL_19;
      }

LABEL_17:
      *(**(result + 32) + 4 * *(result + 16) + 4 * v2) = -1;
LABEL_25:
      if (++v2 >= *(result + 8))
      {
        return result;
      }
    }

    if (*v5 == -1.0)
    {
      goto LABEL_17;
    }

    v9 = *(v4 + i + 4);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_24BE1A5F8(uint64_t a1)
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

uint64_t sub_24BE1A678()
{
  p_str = &__str;
  sub_24BC836D4(&__str, "1.5.26");
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v2 = p_str + size;
  if (size >= 1)
  {
    v3 = p_str;
    do
    {
      v4 = memchr(v3, 46, size);
      if (!v4)
      {
        break;
      }

      if (*v4 == 46)
      {
        goto LABEL_12;
      }

      v3 = (v4 + 1);
      size = v2 - v3;
    }

    while (v2 - v3 > 0);
  }

  v4 = v2;
LABEL_12:
  if (v4 == v2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 - p_str;
  }

  std::string::basic_string(&v8, &__str, 0, v5, &v10);
  v6 = std::stoul(&v8, 0, 10);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_24BE1A75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE1A790()
{
  sub_24BC836D4(&__str, "1.5.26");
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v2 = p_str + size;
  if (size >= 1)
  {
    v3 = size;
    v4 = p_str;
    do
    {
      v5 = memchr(v4, 46, v3);
      if (!v5)
      {
        break;
      }

      if (*v5 == 46)
      {
        goto LABEL_13;
      }

      v4 = (v5 + 1);
      v3 = v2 - v4;
    }

    while (v2 - v4 > 0);
  }

  v5 = p_str + size;
LABEL_13:
  if (v5 == v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 - p_str + 1;
  }

  if (size)
  {
    v7 = p_str;
    v8 = (p_str + size);
    do
    {
      v9 = v7;
      v10 = v7;
      while (1)
      {
        v11 = *v10++;
        if (v11 == 46)
        {
          break;
        }

        v9 = v10;
        if (v10 == v2)
        {
          v9 = v8;
          goto LABEL_23;
        }
      }

      v7 = (&v9->__r_.__value_.__l.__data_ + 1);
      v8 = v9;
    }

    while (v10 != v2);
LABEL_23:
    if (v9 == v2)
    {
      v12 = -1;
    }

    else
    {
      v12 = v9 - p_str;
    }

    if (size >= 1)
    {
      v13 = p_str;
      do
      {
        v14 = memchr(v13, 46, size);
        if (!v14)
        {
          break;
        }

        if (*v14 == 46)
        {
          goto LABEL_34;
        }

        v13 = (v14 + 1);
        size = v2 - v13;
      }

      while (v2 - v13 > 0);
    }
  }

  else
  {
    v12 = -1;
  }

  v14 = v2;
LABEL_34:
  v15 = p_str + ~v14;
  if (v14 == v2)
  {
    v15 = 0;
  }

  std::string::basic_string(&v18, &__str, v6, &v15[v12], &v20);
  v16 = std::stoul(&v18, 0, 10);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_24BE1A934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE1A968()
{
  sub_24BC836D4(&__str, "1.5.26");
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v2 = p_str + size;
  if (size)
  {
    v3 = p_str;
    v4 = (p_str + size);
    do
    {
      v5 = v3;
      v6 = v3;
      while (1)
      {
        v7 = *v6++;
        if (v7 == 46)
        {
          break;
        }

        v5 = v6;
        if (v6 == v2)
        {
          v5 = v4;
          goto LABEL_13;
        }
      }

      v3 = (&v5->__r_.__value_.__l.__data_ + 1);
      v4 = v5;
    }

    while (v6 != v2);
LABEL_13:
    if (v5 == v2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5 - p_str + 1;
    }

    v9 = p_str;
    v10 = (p_str + size);
    do
    {
      v11 = v9;
      v12 = v9;
      while (1)
      {
        v13 = *v12++;
        if (v13 == 46)
        {
          break;
        }

        v11 = v12;
        if (v12 == v2)
        {
          goto LABEL_24;
        }
      }

      v9 = (&v11->__r_.__value_.__l.__data_ + 1);
      v10 = v11;
    }

    while (v12 != v2);
    v10 = v11;
  }

  else
  {
    v8 = 0;
    v10 = p_str;
  }

LABEL_24:
  v14 = p_str + ~v10;
  if (v10 == v2)
  {
    v14 = 0;
  }

  std::string::basic_string(&v17, &__str, v8, &v14[size], &v19);
  v15 = std::stoul(&v17, 0, 10);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_24BE1AABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE1AAF0(uint64_t a1, uint64_t **a2, unsigned int a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    v7 = v5 - 23;
    v8 = v5 - 23;
    v9 = v5 - 23;
    do
    {
      v10 = *v9;
      v9 -= 23;
      (*v10)(v8);
      v7 -= 23;
      v11 = v8 == v6;
      v8 = v9;
    }

    while (!v11);
  }

  a2[1] = v6;
  v12 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  LOBYTE(v39[0]) = 0;
  sub_24BC9FEFC(&v44, v12);
  v14 = *(a1 + 152);
  v13 = *(a1 + 160);
  if (v13 != v14)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v43 = v16;
      v17 = v15 >> 6;
      v18 = 1 << v15;
      v19 = v44[v17];
      if ((v19 & v18) == 0)
      {
        v36 = v16;
        v44[v17] = v19 | v18;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        sub_24BCB4670(&v40, &v43);
        v20 = 0;
        v21 = v40;
        do
        {
          v39[0] = v21[v20];
          v22 = *sub_24BCB9038(a1 + 104, v39);
          v38[0] = v22;
          do
          {
            v38[0] = *(sub_24BCB9024(a1 + 104, v38) + 4);
            v23 = sub_24BCB9024(a1 + 104, v38);
            v24 = sub_24BC9ECE4(a1, *(a1 + 180), *v23);
            if ((*v24 & v25) == 0)
            {
              v26 = sub_24BCB9024(a1 + 104, v38);
              LODWORD(v37) = *(sub_24BCB9024(a1 + 104, v26) + 16);
              if (((*(v44 + ((v37 >> 3) & 0x1FFFFFF8)) >> v37) & 1) == 0)
              {
                sub_24BCB4670(&v40, &v37);
                *(v44 + ((v37 >> 3) & 0x1FFFFFF8)) |= 1 << v37;
              }
            }
          }

          while (v38[0] != v22);
          ++v20;
          v21 = v40;
          v27 = v41 - v40;
        }

        while (v20 < ((v41 - v40) >> 2));
        v28 = *(a1 + 160) - *(a1 + 152);
        if (v27 < v28)
        {
          sub_24BCD5258(v39);
        }

        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        v16 = v36;
        if (v27 >= v28)
        {
          break;
        }

        v14 = *(a1 + 152);
        v13 = *(a1 + 160);
      }

      v15 = ++v16;
    }

    while (v16 < ((v13 - v14) >> 2));
  }

  if (a3)
  {
    v29 = *a2;
    v30 = a2[1];
    v31 = 0xD37A6F4DE9BD37A7 * (v30 - *a2);
    if (v31 > a3)
    {
      v32 = 126 - 2 * __clz(v31);
      if (v30 == v29)
      {
        v33 = 0;
      }

      else
      {
        v33 = v32;
      }

      sub_24BE20FA0(v29, v30, v39, v33, 1);
      v40 = 0;
      v41 = 0;
      v42 = 0;
      sub_24BCD5258(v39);
    }
  }

  if (v44)
  {
    operator delete(v44);
  }

  return 1;
}

void sub_24BE1B348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, void **a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  sub_24BCD528C(&a41);
  a41 = (v68 - 152);
  sub_24BCB7FC8(&a41);
  if (a68)
  {
    operator delete(a68);
  }

  _Unwind_Resume(a1);
}

void sub_24BE1B4EC(uint64_t **a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      if (*(*v3 + 112) != *(*v3 + 104))
      {
        v7 = 0;
        v8 = 1;
        do
        {
          v9 = (*(v6 + 8) + 16 * *(v6 + 176));
          v11 = *v9;
          v10 = v9[1];
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v10);
          }

          v12 = (*(v11 + 40) + 16 * v7);
          sub_24BCBA418(v23, v12);
          sub_24BCBA418(v23, v12 + 1);
          sub_24BCBA418(v23, v12 + 2);
          v7 = v8++;
        }

        while (v7 < (*(v6 + 112) - *(v6 + 104)) >> 2);
      }

      sub_24BCB2008(&__p, 3uLL);
      if (*(v6 + 160) != *(v6 + 152))
      {
        LODWORD(v13) = 0;
        do
        {
          v19 = v13;
          sub_24BCD567C(v6, &v19, &__p);
          v14 = __p;
          v15 = v21;
          while (v14 != v15)
          {
            v19 = *v14 + v5;
            sub_24BC97D60(v22, &v19);
            ++v14;
          }

          v13 = (v13 + 1);
        }

        while (v13 < (*(v6 + 160) - *(v6 + 152)) >> 2);
      }

      v18 = v6 + 104;
      v16 = *(v6 + 104);
      v17 = *(v18 + 8);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      v5 += (v17 - v16) >> 2;
      v3 += 2;
    }

    while (v3 != v4);
  }

  sub_24BCB3798(a2);
  sub_24BCD4998(a2, v23, v22);
}

void sub_24BE1B6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE1B700(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xD37A6F4DE9BD37A7 * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_24BE224E8(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 184 * a2;
    if (v3 != v7)
    {
      v8 = v3 - 184;
      v9 = (v3 - 184);
      v10 = (v3 - 184);
      do
      {
        v11 = *v10;
        v10 -= 23;
        result = (*v11)(v9);
        v8 -= 184;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    v2[1] = v7;
  }

  return result;
}

uint64_t sub_24BE1B7E0(uint64_t a1, uint64_t **a2, unsigned int a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v6 = v4 - 23;
    v7 = v4 - 23;
    v8 = v4 - 23;
    do
    {
      v9 = *v8;
      v8 -= 23;
      (*v9)(v7);
      v6 -= 23;
      v10 = v7 == v5;
      v7 = v8;
    }

    while (!v10);
  }

  a2[1] = v5;
  v11 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  LOBYTE(v36[0]) = 0;
  sub_24BC9FEFC(&v41, v11);
  v13 = *(a1 + 152);
  v12 = *(a1 + 160);
  if (v12 != v13)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v40 = v15;
      v16 = v14 >> 6;
      v17 = 1 << v14;
      v18 = v41[v16];
      if ((v18 & v17) == 0)
      {
        break;
      }

      v14 = ++v15;
      if (v15 >= ((v12 - v13) >> 2))
      {
        goto LABEL_21;
      }
    }

    v41[v16] = v18 | v17;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    sub_24BCB4670(&v37, &v40);
    v19 = 0;
    v20 = v37;
    do
    {
      v36[0] = v20[v19];
      v21 = *sub_24BCB9038(a1 + 104, v36);
      v35[0] = v21;
      do
      {
        v35[0] = *(sub_24BCB9024(a1 + 104, v35) + 4);
        v22 = sub_24BCB9024(a1 + 104, v35);
        v23 = sub_24BC9ECE4(a1, *(a1 + 180), *v22);
        if ((*v23 & v24) == 0)
        {
          v25 = sub_24BCB9024(a1 + 104, v35);
          LODWORD(v34) = *(sub_24BCB9024(a1 + 104, v25) + 16);
          if (((*(v41 + ((v34 >> 3) & 0x1FFFFFF8)) >> v34) & 1) == 0)
          {
            sub_24BCB4670(&v37, &v34);
            *(v41 + ((v34 >> 3) & 0x1FFFFFF8)) |= 1 << v34;
          }
        }
      }

      while (v35[0] != v21);
      ++v19;
      v20 = v37;
    }

    while (v19 < ((v38 - v37) >> 2));
    if ((v38 - v37) < *(a1 + 160) - *(a1 + 152))
    {
      sub_24BCB10B4(v36);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }
  }

LABEL_21:
  if (a3)
  {
    v26 = *a2;
    v27 = a2[1];
    v28 = 0xD37A6F4DE9BD37A7 * (v27 - *a2);
    if (v28 > a3)
    {
      v29 = 126 - 2 * __clz(v28);
      if (v27 == v26)
      {
        v30 = 0;
      }

      else
      {
        v30 = v29;
      }

      sub_24BE228DC(v26, v27, v36, v30, 1);
      v37 = 0;
      v38 = 0;
      v39 = 0;
      sub_24BCB10B4(v36);
    }
  }

  if (v41)
  {
    operator delete(v41);
  }

  return 1;
}

void sub_24BE1C09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void **a41)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  v44 = *v41;
  if (*v41)
  {
    *(v41 + 8) = v44;
    operator delete(v44);
  }

  sub_24BCB10EC(&a41);
  *(v41 + 24) = v42 - 152;
  sub_24BCB7FC8(&a41);
  v45 = *(v41 + 240);
  if (v45)
  {
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

void *sub_24BE1C238(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BE1C300(uint64_t **a1, uint64_t a2)
{
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = *(*v3 + 112);
      if (v7 == *(*v3 + 104))
      {
        v14 = *(*v3 + 112);
      }

      else
      {
        v8 = 0;
        v9 = 1;
        do
        {
          v10 = (*(v6 + 8) + 16 * *(v6 + 176));
          v12 = *v10;
          v11 = v10[1];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v11);
          }

          v13 = (*(v12 + 40) + 16 * v8);
          sub_24BCBA418(v25, v13);
          sub_24BCBA418(v25, v13 + 1);
          sub_24BCBA418(v25, v13 + 2);
          v8 = v9;
          v7 = *(v6 + 104);
          v14 = *(v6 + 112);
          ++v9;
        }

        while (v8 < (v14 - v7) >> 2);
      }

      if (*(v6 + 160) != *(v6 + 152))
      {
        LODWORD(v15) = 0;
        do
        {
          __p = 0;
          v21 = 0;
          v22 = 0;
          v19 = v15;
          sub_24BCB1A9C(v6, &v19, &__p);
          v16 = __p;
          v17 = v21;
          v18 = __p;
          if (__p != v21)
          {
            do
            {
              v19 = *v16 + v5;
              sub_24BC97D60(v24, &v19);
              ++v16;
            }

            while (v16 != v17);
            LODWORD(v16) = __p;
            v18 = v21;
          }

          LOBYTE(v19) = (v18 - v16) >> 2;
          sub_24BC8E768(v23, &v19);
          if (__p)
          {
            v21 = __p;
            operator delete(__p);
          }

          v15 = (v15 + 1);
        }

        while (v15 < (*(v6 + 160) - *(v6 + 152)) >> 2);
        v7 = *(v6 + 104);
        v14 = *(v6 + 112);
      }

      v5 += (v14 - v7) >> 2;
      v3 += 2;
    }

    while (v3 != v4);
  }

  sub_24BCB3798(a2);
  sub_24BCB13BC(a2, v25, v24, v23);
}

void sub_24BE1C508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE1C568(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xD37A6F4DE9BD37A7 * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_24BE23D7C(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 184 * a2;
    if (v3 != v7)
    {
      v8 = v3 - 184;
      v9 = (v3 - 184);
      v10 = (v3 - 184);
      do
      {
        v11 = *v10;
        v10 -= 23;
        result = (*v11)(v9);
        v8 -= 184;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    v2[1] = v7;
  }

  return result;
}

BOOL sub_24BE1C648(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (sub_24BE1AAF0(a1, a2, a3))
  {
    v4 = *a2;
    if (*(a2 + 8) != *a2)
    {
      v5 = 0;
      v36 = a2;
      while (1)
      {
        v6 = &v4[23 * v5];
        sub_24BC836D4(__p, "f:original_id_before_split");
        LODWORD(v46[0]) = 0;
        v7 = sub_24BCCA8D0(v6 + 7, v46, __p);
        if (v48 < 0)
        {
          operator delete(__p[0]);
        }

        v38 = v7 != -1;
        if (v7 == -1)
        {
          return v38;
        }

        sub_24BCB35B4(__p, a1);
        __p[0] = &unk_285F941E8;
        LOBYTE(v45) = 1;
        sub_24BC9FEFC(v46, (v50 - v49) >> 2);
        LOBYTE(v44) = 1;
        sub_24BC9FEFC(&v45, 0xCCCCCCCCCCCCCCCDLL * ((v52 - v51) >> 2));
        v39 = v5;
        LOBYTE(v41) = 1;
        sub_24BC9FEFC(&v44, (v54 - v53) >> 2);
        if (v6[20] != v6[19])
        {
          v8 = 0;
          v9 = 0;
          do
          {
            v10 = (v6[7] + 16 * v7);
            v12 = *v10;
            v11 = v10[1];
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v11);
            }

            v13 = *(*(v12 + 40) + 4 * v8);
            *(v44 + ((v13 >> 3) & 0x1FFFFFF8)) &= ~(1 << v13);
            sub_24BCB7458(&v41, 3uLL);
            v40 = v13;
            sub_24BCD573C(__p, &v40, &v41);
            v14 = v41;
            if (v42 != v41)
            {
              v15 = 0;
              v16 = 0;
              do
              {
                *(v45 + ((*&v14[v15] >> 3) & 0x1FFFFFF8)) &= ~(1 << *&v14[v15]);
                v17 = sub_24BCB9024(&v49, &v14[v15]);
                *(v45 + ((*v17 >> 3) & 0x1FFFFFF8)) &= ~(1 << *v17);
                v18 = sub_24BCB9024(&v49, (v41 + v15));
                *(v46[0] + ((*(v18 + 12) >> 3) & 0x1FFFFFF8)) &= ~(1 << *(v18 + 12));
                ++v16;
                v14 = v41;
                v15 += 4;
              }

              while (v16 < (v42 - v41) >> 2);
            }

            if (v14)
            {
              v42 = v14;
              operator delete(v14);
            }

            v8 = ++v9;
          }

          while (v9 < ((v6[20] - v6[19]) >> 2));
        }

        v20 = v53;
        v19 = v54;
        if (v54 != v53)
        {
          v21 = 0;
          v22 = 1;
          do
          {
            if ((*(v44 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21))
            {
              LODWORD(v41) = v22 - 1;
              *sub_24BCB9038(&v49, &v41) = -1;
              v20 = v53;
              v19 = v54;
            }

            v21 = v22++;
          }

          while (v21 < (v19 - v20) >> 2);
        }

        v24 = v49;
        v23 = v50;
        if (v50 != v49)
        {
          v25 = 0;
          v26 = 1;
          do
          {
            if ((*(v46[0] + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25))
            {
              LODWORD(v41) = v26 - 1;
              *sub_24BCB9014(&v49, &v41) = -1;
              v24 = v49;
              v23 = v50;
            }

            v25 = v26++;
          }

          while (v25 < (v23 - v24) >> 2);
        }

        v28 = v51;
        v27 = v52;
        if (v52 != v51)
        {
          v29 = 0;
          v30 = 1;
          do
          {
            if ((*(v45 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29))
            {
              LODWORD(v41) = v30 - 1;
              v31 = sub_24BCB9024(&v49, &v41);
              *v31 = -1;
              *(v31 + 8) = -1;
              *(v31 + 16) = -1;
              v28 = v51;
              v27 = v52;
            }

            v29 = v30;
          }

          while (0xCCCCCCCCCCCCCCCDLL * ((v27 - v28) >> 2) > v30++);
        }

        sub_24BD7CFE0(__p);
        sub_24BD7CEE8(__p);
        sub_24BD7CDF0(__p);
        sub_24BCDA5A8(__p);
        v40 = -1;
        sub_24BC836D4(&v41, off_27F078FE8[0]);
        v33 = sub_24BD265CC(__p, &v40, &v41);
        v34 = v33;
        if ((v43 & 0x80000000) == 0)
        {
          break;
        }

        operator delete(v41);
        if (v34)
        {
          goto LABEL_36;
        }

LABEL_37:
        sub_24BCB3658(&(*v36)[23 * v39], __p);
        if (v44)
        {
          operator delete(v44);
        }

        if (v45)
        {
          operator delete(v45);
        }

        if (v46[0])
        {
          operator delete(v46[0]);
        }

        sub_24BCD528C(__p);
        v5 = v39 + 1;
        v4 = *v36;
        if (v39 + 1 >= 0xD37A6F4DE9BD37A7 * (v36[1] - *v36))
        {
          return v38;
        }
      }

      if (!v33)
      {
        goto LABEL_37;
      }

LABEL_36:
      sub_24BE4E540(__p);
      goto LABEL_37;
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_24BE1CB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  sub_24BCD528C(&a30);
  _Unwind_Resume(a1);
}

BOOL sub_24BE1CBC0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (sub_24BE1B7E0(a1, a2, a3))
  {
    v4 = *a2;
    if (*(a2 + 8) != *a2)
    {
      v5 = 0;
      v36 = a2;
      while (1)
      {
        v6 = &v4[23 * v5];
        sub_24BC836D4(__p, "f:original_id_before_split");
        LODWORD(v46[0]) = 0;
        v7 = sub_24BCCA8D0(v6 + 7, v46, __p);
        if (v48 < 0)
        {
          operator delete(__p[0]);
        }

        v38 = v7 != -1;
        if (v7 == -1)
        {
          return v38;
        }

        sub_24BCB35B4(__p, a1);
        __p[0] = &unk_285F93258;
        LOBYTE(v45) = 1;
        sub_24BC9FEFC(v46, (v50 - v49) >> 2);
        LOBYTE(v44) = 1;
        sub_24BC9FEFC(&v45, 0xCCCCCCCCCCCCCCCDLL * ((v52 - v51) >> 2));
        v39 = v5;
        LOBYTE(v41) = 1;
        sub_24BC9FEFC(&v44, (v54 - v53) >> 2);
        if (v6[20] != v6[19])
        {
          v8 = 0;
          v9 = 0;
          do
          {
            v10 = (v6[7] + 16 * v7);
            v12 = *v10;
            v11 = v10[1];
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v11);
            }

            v13 = *(*(v12 + 40) + 4 * v8);
            *(v44 + ((v13 >> 3) & 0x1FFFFFF8)) &= ~(1 << v13);
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v40 = v13;
            sub_24BCB1D48(__p, &v40, &v41);
            v14 = v41;
            if (v42 != v41)
            {
              v15 = 0;
              v16 = 0;
              do
              {
                *(v45 + ((*&v14[v15] >> 3) & 0x1FFFFFF8)) &= ~(1 << *&v14[v15]);
                v17 = sub_24BCB9024(&v49, &v14[v15]);
                *(v45 + ((*v17 >> 3) & 0x1FFFFFF8)) &= ~(1 << *v17);
                v18 = sub_24BCB9024(&v49, (v41 + v15));
                *(v46[0] + ((*(v18 + 12) >> 3) & 0x1FFFFFF8)) &= ~(1 << *(v18 + 12));
                ++v16;
                v14 = v41;
                v15 += 4;
              }

              while (v16 < (v42 - v41) >> 2);
            }

            if (v14)
            {
              v42 = v14;
              operator delete(v14);
            }

            v8 = ++v9;
          }

          while (v9 < ((v6[20] - v6[19]) >> 2));
        }

        v20 = v53;
        v19 = v54;
        if (v54 != v53)
        {
          v21 = 0;
          v22 = 1;
          do
          {
            if ((*(v44 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21))
            {
              LODWORD(v41) = v22 - 1;
              *sub_24BCB9038(&v49, &v41) = -1;
              v20 = v53;
              v19 = v54;
            }

            v21 = v22++;
          }

          while (v21 < (v19 - v20) >> 2);
        }

        v24 = v49;
        v23 = v50;
        if (v50 != v49)
        {
          v25 = 0;
          v26 = 1;
          do
          {
            if ((*(v46[0] + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25))
            {
              LODWORD(v41) = v26 - 1;
              *sub_24BCB9014(&v49, &v41) = -1;
              v24 = v49;
              v23 = v50;
            }

            v25 = v26++;
          }

          while (v25 < (v23 - v24) >> 2);
        }

        v28 = v51;
        v27 = v52;
        if (v52 != v51)
        {
          v29 = 0;
          v30 = 1;
          do
          {
            if ((*(v45 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29))
            {
              LODWORD(v41) = v30 - 1;
              v31 = sub_24BCB9024(&v49, &v41);
              *v31 = -1;
              *(v31 + 8) = -1;
              *(v31 + 16) = -1;
              v28 = v51;
              v27 = v52;
            }

            v29 = v30;
          }

          while (0xCCCCCCCCCCCCCCCDLL * ((v27 - v28) >> 2) > v30++);
        }

        sub_24BD7CFE0(__p);
        sub_24BD7CEE8(__p);
        sub_24BD7CDF0(__p);
        sub_24BCB1E60(__p);
        v40 = -1;
        sub_24BC836D4(&v41, off_27F078FE8[0]);
        v33 = sub_24BD265CC(__p, &v40, &v41);
        v34 = v33;
        if ((SHIBYTE(v43) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(v41);
        if (v34)
        {
          goto LABEL_36;
        }

LABEL_37:
        sub_24BCB3658(&(*v36)[23 * v39], __p);
        if (v44)
        {
          operator delete(v44);
        }

        if (v45)
        {
          operator delete(v45);
        }

        if (v46[0])
        {
          operator delete(v46[0]);
        }

        sub_24BCB10EC(__p);
        v5 = v39 + 1;
        v4 = *v36;
        if (v39 + 1 >= 0xD37A6F4DE9BD37A7 * (v36[1] - *v36))
        {
          return v38;
        }
      }

      if (!v33)
      {
        goto LABEL_37;
      }

LABEL_36:
      sub_24BE4E540(__p);
      goto LABEL_37;
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_24BE1D080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  sub_24BCB10EC(&a30);
  _Unwind_Resume(a1);
}

void sub_24BE1D130(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = -1;
  sub_24BC836D4(__p, "flags hedges");
  sub_24BCB34E0(a1);
}

void sub_24BE1D5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F08C(&a28);
  _Unwind_Resume(a1);
}

BOOL sub_24BE1D610(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, int a4, double a5)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = vsubq_f32(v6, *a2);
  v8 = *a1;
  v9 = vmulq_f32(v7, v7);
  v9.i32[3] = 0;
  v10 = vpaddq_f32(v9, v9);
  v11 = vpaddq_f32(v10, v10);
  if (v11.f32[0] <= 0.0)
  {
    v12 = xmmword_24BFBD1C0;
  }

  else
  {
    v12 = vdivq_f32(v7, vsqrtq_f32(v11));
  }

  v13 = vmulq_f32(v8, v12);
  v13.i32[3] = 0;
  if (fabsf(vaddv_f32(*&vpaddq_f32(v13, v13))) < a5)
  {
    v14 = vmulq_f32(v5, v8);
    v14.i32[3] = 0;
    if (fabsf(vaddv_f32(*&vpaddq_f32(v14, v14)) + a1[1].f32[0]) < a5 && a4 != 0)
    {
      v16 = vaddq_f32(v5, v6);
      v17.i64[0] = 0x3F0000003F000000;
      v17.i64[1] = 0x3F0000003F000000;
      *a3 = vmulq_f32(v16, v17);
      return 1;
    }

    return 0;
  }

  v19 = vmulq_f32(v8, v7);
  v19.i32[3] = 0;
  v20 = vaddv_f32(*&vpaddq_f32(v19, v19));
  if (fabsf(v20) < a5)
  {
    return 0;
  }

  v21 = vmulq_f32(v5, v8);
  v21.i32[3] = 0;
  v22 = -(vaddv_f32(*&vpaddq_f32(v21, v21)) + a1[1].f32[0]) / v20;
  *a3 = vaddq_f32(v5, vmulq_n_f32(v7, v22));
  return a5 + 1.0 >= v22 && 0.0 - a5 <= v22;
}

void sub_24BE1D728(uint64_t a1, float32x4_t *a2, char *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  sub_24BD6B968(v23, a4);
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *a2;
  v24 = *a2;
  v10 = a2[1].f32[0];
  v25 = v10;
  if ((v7 & 1) == 0)
  {
    v25 = -v10;
    v24 = vnegq_f32(v9);
  }

  v21 = 0;
  v22 = std::system_category();
  v17 = 0uLL;
  v18 = 0;
  v11.i64[0] = 0x80000000800000;
  v11.i64[1] = 0x80000000800000;
  v19 = vnegq_f32(v11);
  v20 = v11;
  sub_24BE24B50(a1, &v17);
  for (i = 0; i != 3; ++i)
  {
    *(&v16 + i) = v19.f32[i];
  }

  for (j = 0; j != 3; ++j)
  {
    *(&v16 + j + 3) = v20.f32[j];
  }

  v15 = -1;
  sub_24BC836D4(&__p, "CutStatus vertex");
  sub_24BE1E01C(a1);
}

void sub_24BE1DF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_24BD6B9D8(v23 - 200);
  _Unwind_Resume(a1);
}

void sub_24BE1E104(uint64_t a1, float32x4_t *a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v10[0] = a4;
  v10[1] = a5;
  v8[0] = a3;
  v9 = a6;
  v16 = 0;
  v17[3] = 0;
  v18[3] = 0;
  v19[3] = 0;
  v20[0] = &unk_285F96CA0;
  v20[1] = v10;
  v20[3] = v20;
  sub_24BCA4ECC(v20, v17);
  sub_24BC9F08C(v20);
  sub_24BCA1524(v11, v15);
  sub_24BCA2D38(&v12, v17);
  sub_24BCA2DD0(&v13, v18);
  sub_24BE20164(&v14, v19);
  sub_24BE1D728(a1, a2, v8, v11);
}

void sub_24BE1E268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_24BE1E2BC(&a14);
  sub_24BE1E2BC(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE1E2BC(uint64_t a1)
{
  sub_24BE201FC(a1 + 96);
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

uint64_t sub_24BE1E308(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  LODWORD(v26[0]) = 0;
  v26[1] = std::system_category();
  sub_24BD6B968(v25, a4);
  if (*a3)
  {
    for (i = 0; i != 24; i += 4)
    {
      v9 = &v37[i];
      *v9 = xmmword_24BFBD1C0;
      *(v9 + 4) = 0;
    }

    v10 = 0;
    v11 = v38;
    do
    {
      sub_24BE20A9C(a2, v10, &v31);
      v11[-1] = v31;
      v11->i32[0] = v32;
      v11 += 2;
      ++v10;
    }

    while (v10 != 6);
    v23[0] = *a3 ^ 1;
    v24 = *(a3 + 8);
    v33 = 0;
    v34[3] = 0;
    v35[3] = 0;
    v36[3] = 0;
    v39 = &unk_285F96CE8;
    v40 = v26;
    v41 = a4;
    v42 = &v39;
    sub_24BCA4ECC(&v39, v34);
    sub_24BC9F08C(&v39);
    sub_24BC9B100(v35, a4 + 64);
    v12 = 0;
    v22 = 0.0;
    v13 = 1;
    do
    {
      if (*(a4 + 24))
      {
        v39 = &unk_285F96D30;
        v40 = a4;
        v41 = &v22;
        v42 = &v39;
        sub_24BCA3290(&v39, &v31);
        sub_24BC9F00C(&v39);
      }

      if (v13)
      {
        sub_24BCA1524(v27, &v31);
        sub_24BCA2D38(&v28, v34);
        sub_24BCA2DD0(&v29, v35);
        sub_24BE20164(&v30, v36);
        sub_24BE1D728(a1, &v37[v12], v23, v27);
      }

      v13 = 0;
      v14 = v22 + 0.166666667;
      v22 = v14;
      v12 += 4;
    }

    while (v12 != 24);
    v15 = *(a4 + 120);
    if (v15)
    {
      (*(*v15 + 48))(v15, v26);
    }

    sub_24BE201FC(v36);
    sub_24BC9F10C(v35);
    sub_24BC9F08C(v34);
    sub_24BC9F00C(&v31);
  }

  else
  {
    v16 = sub_24BD6A604(0x1F4u);
    v18 = v17;
    sub_24BC836D4(v37, &unk_24C0435AF);
    sub_24BD6B59C(a4, v16, v18, v37, v26);
    if ((v38[7] & 0x80000000) != 0)
    {
      operator delete(v37[0]);
    }

    v19 = *(a4 + 120);
    if (v19)
    {
      (*(*v19 + 48))(v19, v26);
    }
  }

  sub_24BD6B9D8(v25);
  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE1E650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BD6B9D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE1E6F4(uint64_t a1, float32x4_t *a2, char a3, double a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7[0] = a3;
  v8 = a4;
  memset(v9, 0, sizeof(v9));
  memset(v10, 0, sizeof(v10));
  memset(v11, 0, sizeof(v11));
  memset(v12, 0, sizeof(v12));
  v4 = sub_24BE1E308(a1, a2, v7, v9);
  sub_24BE2027C(v12);
  sub_24BC9F10C(v11);
  sub_24BC9F08C(v10);
  sub_24BC9F00C(v9);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_24BE1E798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE1E7AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE1E7AC(uint64_t a1)
{
  sub_24BE2027C(a1 + 96);
  sub_24BC9F10C(a1 + 64);
  sub_24BC9F08C(a1 + 32);

  return sub_24BC9F00C(a1);
}

uint64_t sub_24BE1E7F8(uint64_t a1, uint64_t a2, char a3, double a4, double a5, int32x2_t a6)
{
  v6 = 0;
  v51 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v39 = xmmword_24BFD22D0;
  v40 = 0;
  v41 = 0;
  v7 = a2;
  do
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      v9 = v9 + (*(v7 + 4 * v8) * *(&v39 + v8));
      v8 += 4;
    }

    while (v8 != 16);
    v40.f32[v6++] = v9;
    v7 += 4;
  }

  while (v6 != 4);
  v10 = 0;
  a6.i32[0] = HIDWORD(v41);
  v11 = vdiv_f32(v40, vdup_lane_s32(a6, 0));
  v12 = *&v41 / *(&v41 + 1);
  *v13.f32 = v11;
  v13.f32[2] = *&v41 / *(&v41 + 1);
  v13.i32[3] = 0;
  v42 = v13;
  v38 = xmmword_24BFED8E0;
  v39 = 0uLL;
  v14 = a2;
  do
  {
    v15 = 0;
    v16 = 0;
    do
    {
      *v16.i32 = *v16.i32 + (*(v14 + 4 * v15) * *(&v38 + v15));
      v15 += 4;
    }

    while (v15 != 16);
    *(&v39 + v10++) = v16.i32[0];
    v14 += 4;
  }

  while (v10 != 4);
  v17 = 0;
  v16.i32[0] = HIDWORD(v39);
  *v18.f32 = vsub_f32(vdiv_f32(*&v39, vdup_lane_s32(v16, 0)), v11);
  v18.f32[2] = (*(&v39 + 2) / *(&v39 + 3)) - v12;
  v18.i32[3] = 0;
  v19 = vmulq_f32(v18, v18);
  v19.i32[3] = 0;
  v20 = vpaddq_f32(v19, v19).u64[0];
  *v20.i32 = sqrtf(vaddv_f32(v20));
  v44 = vdivq_f32(v18, vdupq_lane_s32(v20, 0));
  v37 = xmmword_24BFED8F0;
  v38 = 0uLL;
  v21 = a2;
  do
  {
    v22 = 0;
    v23 = 0;
    do
    {
      *v23.i32 = *v23.i32 + (*(v21 + 4 * v22) * *(&v37 + v22));
      v22 += 4;
    }

    while (v22 != 16);
    *(&v38 + v17++) = v23.i32[0];
    v21 += 4;
  }

  while (v17 != 4);
  v24 = 0;
  v23.i32[0] = HIDWORD(v38);
  *v25.f32 = vsub_f32(vdiv_f32(*&v38, vdup_lane_s32(v23, 0)), v11);
  v25.f32[2] = (*(&v38 + 2) / *(&v38 + 3)) - v12;
  v25.i32[3] = 0;
  v26 = vmulq_f32(v25, v25);
  v26.i32[3] = 0;
  v27 = vpaddq_f32(v26, v26).u64[0];
  *v27.i32 = sqrtf(vaddv_f32(v27));
  v45 = vdivq_f32(v25, vdupq_lane_s32(v27, 0));
  v36 = xmmword_24BFED900;
  v37 = 0uLL;
  do
  {
    v28 = 0;
    v29 = 0;
    do
    {
      *v29.i32 = *v29.i32 + (*(a2 + 4 * v28) * *(&v36 + v28));
      v28 += 4;
    }

    while (v28 != 16);
    *(&v37 + v24++) = v29.i32[0];
    a2 += 4;
  }

  while (v24 != 4);
  v29.i32[0] = HIDWORD(v37);
  *v30.f32 = vsub_f32(vdiv_f32(*&v37, vdup_lane_s32(v29, 0)), v11);
  v30.f32[2] = (*(&v37 + 2) / *(&v37 + 3)) - v12;
  v30.i32[3] = 0;
  v31 = vmulq_f32(v30, v30);
  v31.i32[3] = 0;
  v31.i64[0] = vpaddq_f32(v31, v31).u64[0];
  v31.f32[0] = sqrtf(vaddv_f32(*v31.f32));
  v20.i32[1] = v27.i32[0];
  *&v32 = vmul_f32(v20, 0x3F0000003F000000);
  *(&v32 + 1) = COERCE_UNSIGNED_INT(v31.f32[0] * 0.5);
  v43 = v32;
  LOBYTE(v36) = a3;
  *(&v36 + 1) = a4;
  v46 = vdivq_f32(v30, vdupq_lane_s32(*v31.f32, 0));
  memset(v47, 0, sizeof(v47));
  memset(v48, 0, sizeof(v48));
  memset(v49, 0, sizeof(v49));
  memset(v50, 0, sizeof(v50));
  v33 = sub_24BE1E308(a1, &v42, &v36, v47);
  sub_24BE2027C(v50);
  sub_24BC9F10C(v49);
  sub_24BC9F08C(v48);
  sub_24BC9F00C(v47);
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

void sub_24BE1EB24()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAF578();
}

void sub_24BE1EDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_24BC9F18C((v22 + 8), a10);
  v26 = (v24 - 96);
  v27 = -64;
  do
  {
    sub_24BC9F18C(v26, *(v26 - 8));
    v26 -= 4;
    v27 += 32;
  }

  while (v27);
  v28 = &a19;
  v29 = -64;
  do
  {
    sub_24BC9F18C(v28, *(v28 - 8));
    v28 -= 4;
    v29 += 32;
  }

  while (v29);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a22 + i + 40), *(&a22 + i + 32));
  }

  sub_24BC9F18C((v23 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE1EEC0(uint64_t a1, void *a2)
{
  v14[0] = 0;
  v15 = 0;
  sub_24BC9C7E0(a2, v14);
  if (v14[0] == 1)
  {
    v3 = sub_24BCB0080(v15, "side");
    if (v15 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v14, "side");
      LOBYTE(__p) = 0;
      v12 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v12, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v14, "side");
        LOBYTE(__p) = 0;
        sub_24BCB0940(v6, &__p);
        *a1 = __p;
        sub_24BC836D4(&__p, "side");
        sub_24BC9CAB4(v14, &__p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v14[0] == 1)
    {
      v7 = sub_24BCB0080(v15, "epsilon");
      if (v15 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v14, "epsilon");
        LOBYTE(__p) = 0;
        v12 = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&v12, __p);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v14, "epsilon");
          __p = 0;
          sub_24BCB0BDC(v10, &__p);
          *(a1 + 8) = __p;
          sub_24BC836D4(&__p, "epsilon");
          sub_24BC9CAB4(v14, &__p);
          if (SHIBYTE(v13) < 0)
          {
            operator delete(__p);
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v14 + 8 * *(v13 - 24) + 272) = 2;
  sub_24BC9BD14(&v13);
}

void sub_24BE1F280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE1F264);
  }

  _Unwind_Resume(a1);
}

void sub_24BE1F30C(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE1EB24();
}

uint64_t sub_24BE1F45C(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE1EEC0(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE1F5C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

void sub_24BE1F644()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 3;
  sub_24BDAF578();
}

void sub_24BE1F8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_24BC9F18C((v22 + 8), a10);
  v26 = (v24 - 96);
  v27 = -64;
  do
  {
    sub_24BC9F18C(v26, *(v26 - 8));
    v26 -= 4;
    v27 += 32;
  }

  while (v27);
  v28 = &a19;
  v29 = -64;
  do
  {
    sub_24BC9F18C(v28, *(v28 - 8));
    v28 -= 4;
    v29 += 32;
  }

  while (v29);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a22 + i + 40), *(&a22 + i + 32));
  }

  sub_24BC9F18C((v23 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_24BE1F9E0(uint64_t a1, void *a2)
{
  v14[0] = 0;
  v15 = 0;
  sub_24BC9C7E0(a2, v14);
  if (v14[0] == 1)
  {
    v3 = sub_24BCB0080(v15, "side");
    if (v15 + 8 != v3)
    {
      v4 = sub_24BC9C8EC(v14, "side");
      LOBYTE(__p) = 0;
      v12 = 0;
      v5 = sub_24BCB01B0(v4, &__p);
      sub_24BC9F18C(&v12, __p);
      if ((v5 & 1) == 0)
      {
        v6 = sub_24BC9C8EC(v14, "side");
        LOBYTE(__p) = 0;
        sub_24BCB0940(v6, &__p);
        *a1 = __p;
        sub_24BC836D4(&__p, "side");
        sub_24BC9CAB4(v14, &__p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v14[0] == 1)
    {
      v7 = sub_24BCB0080(v15, "epsilon");
      if (v15 + 8 != v7)
      {
        v8 = sub_24BC9C8EC(v14, "epsilon");
        LOBYTE(__p) = 0;
        v12 = 0;
        v9 = sub_24BCB01B0(v8, &__p);
        sub_24BC9F18C(&v12, __p);
        if ((v9 & 1) == 0)
        {
          v10 = sub_24BC9C8EC(v14, "epsilon");
          __p = 0;
          sub_24BCB0BDC(v10, &__p);
          *(a1 + 8) = __p;
          sub_24BC836D4(&__p, "epsilon");
          sub_24BC9CAB4(v14, &__p);
          if (SHIBYTE(v13) < 0)
          {
            operator delete(__p);
          }
        }
      }
    }
  }

  sub_24BC848F0(&__p);
  *(v14 + 8 * *(v13 - 24) + 272) = 2;
  sub_24BC9BD14(&v13);
}

void sub_24BE1FDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C((v14 + 8), *(v15 - 72));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE1FD84);
  }

  _Unwind_Resume(a1);
}

void sub_24BE1FE2C(uint64_t a1, uint64_t *a2)
{
  v3[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_24BCB0D30(v3);
  sub_24BE1F644();
}

uint64_t sub_24BE1FF7C(uint64_t a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BE1F9E0(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BE200E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC9E4D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE20164(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BE201FC(uint64_t a1)
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

uint64_t sub_24BE2027C(uint64_t a1)
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

void sub_24BE202FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BE203F0();
}

void sub_24BE203D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE20464(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F96BC0;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F96BF8;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BE20504(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F96BC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BE20584(void *a1)
{
  sub_24BE2078C(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BE205DC(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

void sub_24BE205F8(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  if (v3 >= v2)
  {
    v5 = a1[5];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 2;
    v8 = v7 + 1;
    if ((v7 + 1) >> 62)
    {
      sub_24BC8E01C();
    }

    v9 = v2 - v5;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    v10 = v9 >= 0x7FFFFFFFFFFFFFFCLL;
    v11 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_24BC92E0C((a1 + 5), v11);
    }

    v12 = (v3 - v5) >> 2;
    v13 = (4 * v7);
    v14 = (4 * v7 - 4 * v12);
    *v13 = 0;
    v4 = v13 + 1;
    memcpy(v14, v5, v6);
    v15 = a1[5];
    a1[5] = v14;
    a1[6] = v4;
    a1[7] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 4;
  }

  a1[6] = v4;
}

uint64_t sub_24BE206CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  v4 = *(v3 + 4 * a2);
  *(v3 + 4 * a2) = *(v3 + 4 * a3);
  *(v3 + 4 * a3) = v4;
  return result;
}

uint64_t sub_24BE2078C(void *a1)
{
  *a1 = &unk_285F96BF8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BE207EC(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F96BF8;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BE20860((v4 + 5), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  return a1;
}

uint64_t sub_24BE20860(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BE208C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE20944(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE20960(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE20998(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_24BE20A50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F96CA0;
  a2[1] = v2;
  return result;
}

__n128 sub_24BE20A7C(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 8) == 1)
  {
    result = *a2;
    **v2 = *a2;
  }

  return result;
}

float32_t sub_24BE20A9C@<S0>(float32x4_t *a1@<X0>, int a2@<W1>, float32x4_t *a3@<X8>)
{
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v3 = a1[1].f32[0];
      v4 = a1[2];
      goto LABEL_12;
    }

    if (a2 != 2)
    {
      goto LABEL_13;
    }

    v5 = a1[3];
    v4 = vnegq_f32(v5);
    v6 = a1[1].f32[1];
LABEL_14:
    v7 = vsubq_f32(*a1, vmulq_n_f32(v5, v6));
    v8 = vmulq_f32(v5, v5);
    goto LABEL_15;
  }

  if (a2 == 3)
  {
    v3 = a1[1].f32[1];
    v4 = a1[3];
    goto LABEL_12;
  }

  if (a2 == 4)
  {
    v5 = a1[4];
    v4 = vnegq_f32(v5);
    v6 = a1[1].f32[2];
    goto LABEL_14;
  }

  if (a2 != 5)
  {
LABEL_13:
    v5 = a1[2];
    v4 = vnegq_f32(v5);
    v6 = a1[1].f32[0];
    goto LABEL_14;
  }

  v3 = a1[1].f32[2];
  v4 = a1[4];
LABEL_12:
  v7 = vaddq_f32(*a1, vmulq_n_f32(v4, v3));
  v8 = vmulq_f32(v4, v4);
LABEL_15:
  v8.i32[3] = 0;
  v9 = vpaddq_f32(v8, v8).u64[0];
  v9.f32[0] = sqrtf(vaddv_f32(v9));
  v10 = vdivq_f32(v4, vdupq_lane_s32(v9, 0));
  *a3 = v10;
  v11 = vmulq_f32(v7, v10);
  v11.i32[3] = 0;
  result = -vaddv_f32(*&vpaddq_f32(v11, v11));
  a3[1].f32[0] = result;
  return result;
}