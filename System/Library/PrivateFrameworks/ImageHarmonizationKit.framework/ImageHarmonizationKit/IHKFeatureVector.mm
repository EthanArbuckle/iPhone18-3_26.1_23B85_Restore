@interface IHKFeatureVector
+ (id)addFeatureVectorA:(id)a B:(id)b;
+ (id)copy:(id)copy;
- (IHKFeatureVector)initWithCoder:(id)coder;
- (IHKFeatureVector)initWithData:(id)data;
- (IHKFeatureVector)initWithTensor:(EspressoTensor *)tensor;
- (float)cosineSimilarity:(id)similarity;
- (float)l2Distance:(id)distance;
- (id).cxx_construct;
- (id)featureVectorByAppendingFeatureVector:(id)vector;
- (unint64_t)size;
- (void)debugPrintTensor:(id)tensor;
- (void)encodeWithCoder:(id)coder;
- (void)saveToBinaryFile:(id)file;
- (void)saveToTextFile:(id)file;
@end

@implementation IHKFeatureVector

- (IHKFeatureVector)initWithTensor:(EspressoTensor *)tensor
{
  v20.receiver = self;
  v20.super_class = IHKFeatureVector;
  v7 = [(IHKFeatureVector *)&v20 init];
  if (v7)
  {
    v13 = &unk_2866F58E8;
    type = tensor->type_;
    v16 = 0;
    v17 = 0;
    __p = 0;
    begin = tensor->shape_.sizes_.__begin_;
    end = tensor->shape_.sizes_.__end_;
    if (end != begin)
    {
      if (((end - begin) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_254ACE59C();
    }

    cntrl = tensor->storage_.__cntrl_;
    ptr = tensor->storage_.__ptr_;
    v19 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    v13 = &unk_2866F58A0;
    objc_msgSend_setTensor_(v7, v4, &v13, v5, v6);
    v13 = &unk_2866F58E8;
    v11 = v19;
    if (v19 && !atomic_fetch_add(v19 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }

  return v7;
}

- (IHKFeatureVector)initWithData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = IHKFeatureVector;
  if ([(IHKFeatureVector *)&v11 init])
  {
    objc_msgSend_length(dataCopy, v5, v6, v7, v8);
    v10 = 4;
    operator new();
  }

  return 0;
}

- (unint64_t)size
{
  objc_msgSend_tensor(self, a2, v2, v3, v4);
  if (__p == v23)
  {
    v8 = 0;
    v9 = v24;
    if (!v24)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v5 = v23 - __p - 8;
  if (v5 < 0x38)
  {
    v6 = 1;
    v7 = __p;
    do
    {
LABEL_9:
      v20 = *v7;
      v7 += 8;
      v6 *= v20;
    }

    while (v7 != v23);
    goto LABEL_10;
  }

  v10 = (v5 >> 3) + 1;
  v7 = &__p->i8[8 * (v10 & 0x3FFFFFFFFFFFFFF8)];
  v11 = __p + 2;
  v12.i64[0] = 0x100000001;
  v12.i64[1] = 0x100000001;
  v13 = v10 & 0x3FFFFFFFFFFFFFF8;
  v14.i64[0] = 0x100000001;
  v14.i64[1] = 0x100000001;
  do
  {
    v16 = v11[-2];
    v15 = v11[-1];
    v18 = *v11;
    v17 = v11[1];
    v11 += 4;
    v12 = vmulq_s32(v12, vuzp1q_s32(v16, v15));
    v14 = vmulq_s32(v14, vuzp1q_s32(v18, v17));
    v13 -= 8;
  }

  while (v13);
  v19 = vmulq_s32(v14, v12);
  *v19.i8 = vmul_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  v6 = v19.i32[0] * v19.i32[1];
  if (v10 != (v10 & 0x3FFFFFFFFFFFFFF8))
  {
    goto LABEL_9;
  }

LABEL_10:
  v8 = v6;
  v9 = v24;
  if (!v24)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_13:
  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

- (id)featureVectorByAppendingFeatureVector:(id)vector
{
  vectorCopy = vector;
  objc_msgSend_size(self, v5, v6, v7, v8);
  objc_msgSend_size(vectorCopy, v9, v10, v11, v12);
  v14 = 4;
  operator new();
}

- (void)saveToTextFile:(id)file
{
  v39[19] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v5 = fileCopy;
  objc_msgSend_UTF8String(v5, v6, v7, v8, v9);
  sub_254ACACE4(&v37);
  objc_msgSend_tensor(self, v10, v11, v12, v13);
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v36);
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (__p != v34)
  {
    v14 = sub_254ACEA80(&v37, "", 0);
    MEMORY[0x259C231E0](v14, *__p);
    for (i = __p + 1; i != v34; ++i)
    {
      v16 = sub_254ACEA80(&v37, ", ", 2);
      MEMORY[0x259C231E0](v16, *i);
    }
  }

  sub_254ACEA80(&v37, "\n", 1);
  objc_msgSend_tensor(self, v17, v18, v19, v20, &unk_2866F58E8);
  if (v32 != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = (*(*v35 + 24))();
  v23 = v22;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v36);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v23 >= 4)
  {
    v24 = 4 * (v23 >> 2);
    v25 = "";
    v26 = -1;
    v27 = 1;
    do
    {
      v28 = strlen(v25);
      sub_254ACEA80(&v37, v25, v28);
      v29 = *v21;
      std::ostream::operator<<();
      if (v26 + 10 * (v27 / 0xA))
      {
        v25 = ", ";
      }

      else
      {
        v25 = ",\n";
      }

      ++v21;
      --v26;
      ++v27;
      v24 -= 4;
    }

    while (v24);
  }

  sub_254ACEA80(&v37, "\n", 1);
  v37 = *MEMORY[0x277D82810];
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x259C23190](&v38);
  std::ostream::~ostream();
  MEMORY[0x259C23250](v39);

  v30 = *MEMORY[0x277D85DE8];
}

- (void)saveToBinaryFile:(id)file
{
  fileCopy = file;
  v5 = fileCopy;
  v10 = objc_msgSend_UTF8String(v5, v6, v7, v8, v9);
  v11 = fopen(v10, "wb");
  objc_msgSend_tensor(self, v12, v13, v14, v15);
  v16 = (*(*v40 + 24))();
  objc_msgSend_tensor(self, v17, v18, v19, v20);
  if (__p != v37)
  {
    v21 = v37 - __p - 8;
    if (v21 >= 0x38)
    {
      v25 = (v21 >> 3) + 1;
      v23 = &__p->i8[8 * (v25 & 0x3FFFFFFFFFFFFFF8)];
      v26 = __p + 2;
      v27.i64[0] = 0x100000001;
      v27.i64[1] = 0x100000001;
      v28 = v25 & 0x3FFFFFFFFFFFFFF8;
      v29.i64[0] = 0x100000001;
      v29.i64[1] = 0x100000001;
      do
      {
        v31 = v26[-2];
        v30 = v26[-1];
        v33 = *v26;
        v32 = v26[1];
        v26 += 4;
        v27 = vmulq_s32(v27, vuzp1q_s32(v31, v30));
        v29 = vmulq_s32(v29, vuzp1q_s32(v33, v32));
        v28 -= 8;
      }

      while (v28);
      v34 = vmulq_s32(v29, v27);
      *v34.i8 = vmul_s32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v22 = v34.i32[0] * v34.i32[1];
      if (v25 == (v25 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v22 = 1;
      v23 = __p;
    }

    do
    {
      v35 = *v23;
      v23 += 8;
      v22 *= v35;
    }

    while (v23 != v37);
LABEL_9:
    v24 = v22;
    goto LABEL_10;
  }

  v24 = 0;
LABEL_10:
  fwrite(v16, 4uLL, v24, v11);
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v41);
  }

  if (v39)
  {
    operator delete(v39);
  }

  fclose(v11);
}

- (void)debugPrintTensor:(id)tensor
{
  tensorCopy = tensor;
  v40 = tensorCopy;
  objc_msgSend_tensor(self, v5, v6, v7, v8);
  if (v41 != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = (*(*v44 + 24))();
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v45);
  }

  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  v10 = tensorCopy;
  v15 = objc_msgSend_UTF8String(v10, v11, v12, v13, v14);
  printf("DEBUG>> %s = [", v15);
  v20 = 0;
  for (i = "; ; i = ", "")
  {
    objc_msgSend_tensor(self, v16, v17, v18, v19);
    if (__p == v43)
    {
      v25 = 0;
      v26 = v45;
      if (!v45)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v22 = v43 - __p - 8;
    if (v22 < 0x38)
    {
      v23 = 1;
      v24 = __p;
      do
      {
LABEL_16:
        v37 = v24->i32[0];
        v24 = (v24 + 8);
        v23 *= v37;
      }

      while (v24 != v43);
      goto LABEL_17;
    }

    v27 = (v22 >> 3) + 1;
    v24 = (__p + 8 * (v27 & 0x3FFFFFFFFFFFFFF8));
    v28 = __p + 2;
    v29.i64[0] = 0x100000001;
    v29.i64[1] = 0x100000001;
    v30 = v27 & 0x3FFFFFFFFFFFFFF8;
    v31.i64[0] = 0x100000001;
    v31.i64[1] = 0x100000001;
    do
    {
      v33 = v28[-2];
      v32 = v28[-1];
      v35 = *v28;
      v34 = v28[1];
      v28 += 4;
      v29 = vmulq_s32(v29, vuzp1q_s32(v33, v32));
      v31 = vmulq_s32(v31, vuzp1q_s32(v35, v34));
      v30 -= 8;
    }

    while (v30);
    v36 = vmulq_s32(v31, v29);
    *v36.i8 = vmul_s32(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
    v23 = v36.i32[0] * v36.i32[1];
    if (v27 != (v27 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_16;
    }

LABEL_17:
    v25 = v23;
    v26 = v45;
    if (!v45)
    {
      goto LABEL_19;
    }

LABEL_18:
    if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_19:
      v38 = __p;
      if (!__p)
      {
        goto LABEL_21;
      }

LABEL_20:
      v43 = v38;
      operator delete(v38);
      goto LABEL_21;
    }

    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
    v38 = __p;
    if (__p)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v20 >= v25)
    {
      break;
    }

    printf("%s%f", i, *(v9 + 4 * v20++));
  }

  puts("]");
}

- (float)cosineSimilarity:(id)similarity
{
  similarityCopy = similarity;
  objc_msgSend_tensor(self, v5, v6, v7, v8);
  if (v37 != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = (*(*v39 + 24))();
  v14 = v9;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v40);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (!similarityCopy)
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v36, "Incorrect data type requested.");
    __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  objc_msgSend_tensor(similarityCopy, v9, v10, v11, v12, &unk_2866F58E8);
  v15 = (*(*v39 + 24))();
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v40);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v16 = 0.0;
  if (v14 >= 4)
  {
    v17 = v14 >> 2;
    if (v14 > 7)
    {
      v18 = v17 & 0x3FFFFFFFFFFFFFFELL;
      v22 = (v13 + 4);
      v23 = (v15 + 4);
      v19 = 0.0;
      v24 = v17 & 0x3FFFFFFFFFFFFFFELL;
      v20 = 0.0;
      v21 = 0.0;
      do
      {
        v25 = *(v22 - 1);
        v26 = *(v23 - 1);
        v19 = (v19 + (v25 * v26)) + (*v22 * *v23);
        v20 = (v20 + (v26 * v26)) + (*v23 * *v23);
        v21 = (v21 + (v25 * v25)) + (*v22 * *v22);
        v22 += 2;
        v23 += 2;
        v24 -= 2;
      }

      while (v24);
      if (v17 == v18)
      {
LABEL_21:
        v16 = 0.0;
        if (v21 != 0.0 && v20 != 0.0)
        {
          v16 = v19 / (sqrtf(v21) * sqrtf(v20));
        }

        goto LABEL_24;
      }
    }

    else
    {
      v18 = 0;
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
    }

    v27 = v17 - v18;
    v28 = 4 * v18;
    v29 = (v13 + 4 * v18);
    v30 = (v15 + v28);
    do
    {
      v31 = *v29++;
      v32 = v31;
      v33 = *v30++;
      v19 = v19 + (v32 * v33);
      v21 = v21 + (v32 * v32);
      v20 = v20 + (v33 * v33);
      --v27;
    }

    while (v27);
    goto LABEL_21;
  }

LABEL_24:

  return v16;
}

- (float)l2Distance:(id)distance
{
  distanceCopy = distance;
  objc_msgSend_tensor(self, v5, v6, v7, v8);
  if (v37 != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = (*(*v39 + 24))();
  v14 = v9;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v40);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (!distanceCopy)
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v36, "Incorrect data type requested.");
    __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  objc_msgSend_tensor(distanceCopy, v9, v10, v11, v12, &unk_2866F58E8);
  v15 = (*(*v39 + 24))();
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v40);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v16 = 0.0;
  if (v14 >= 4)
  {
    v17 = v14 >> 2;
    if (v14 <= 0x1F)
    {
      v18 = 0;
LABEL_19:
      v26 = v17 - v18;
      v27 = 4 * v18;
      v28 = (v13 + 4 * v18);
      v29 = (v15 + v27);
      do
      {
        v30 = *v28++;
        v31 = v30;
        v32 = *v29++;
        v16 = v16 + ((v31 - v32) * (v31 - v32));
        --v26;
      }

      while (v26);
      goto LABEL_21;
    }

    v18 = v17 & 0x3FFFFFFFFFFFFFF8;
    v19 = (v13 + 16);
    v20 = (v15 + 16);
    v21 = v17 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      v22 = vsubq_f32(v19[-1], v20[-1]);
      v23 = vsubq_f32(*v19, *v20);
      v24 = vmulq_f32(v22, v22);
      v25 = vmulq_f32(v23, v23);
      v16 = (((((((v16 + v24.f32[0]) + v24.f32[1]) + v24.f32[2]) + v24.f32[3]) + v25.f32[0]) + v25.f32[1]) + v25.f32[2]) + v25.f32[3];
      v19 += 2;
      v20 += 2;
      v21 -= 8;
    }

    while (v21);
    if (v17 != v18)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  v33 = sqrtf(v16);

  return v33;
}

+ (id)copy:(id)copy
{
  copyCopy = copy;
  v8 = copyCopy;
  if (copyCopy)
  {
    objc_msgSend_tensor(copyCopy, v4, v5, v6, v7);
    objc_msgSend_tensor(v8, v9, v10, v11, v12);
  }

  sub_254ACDCBC();
}

+ (id)addFeatureVectorA:(id)a B:(id)b
{
  aCopy = a;
  bCopy = b;
  if (aCopy)
  {
    objc_msgSend_tensor(aCopy, v6, v7, v8, v9);
    if (v22 == 4)
    {
      (*(*v24 + 24))();
      if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v25);
      }

      if (__p)
      {
        operator delete(__p);
      }

      if (bCopy)
      {
        objc_msgSend_tensor(bCopy, v11, v12, v13, v14);
        (*(*v24 + 24))();
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v25);
        }

        if (__p)
        {
          operator delete(__p);
        }

        objc_msgSend_tensor(aCopy, v15, v16, v17, v18);
        sub_254ACDCBC();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v19 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v19, "Incorrect data type requested.");
  __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_tensor(self, v5, v6, v7, v8);
  if (v40 != __p)
  {
    if (((v40 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v42);
  }

  if (__p)
  {
    operator delete(__p);
  }

  objc_msgSend_encodeInt_forKey_(coderCopy, v9, 0, @"kTensorNDims", v10);
  objc_msgSend_encodeBytes_length_forKey_(coderCopy, v11, 0, 0, @"kTensorDimensions");
  objc_msgSend_tensor(self, v12, v13, v14, v15);
  v16 = (*(*v41 + 24))();
  objc_msgSend_tensor(self, v17, v18, v19, v20);
  if (v36 != v37)
  {
    v22 = v37 - v36 - 8;
    if (v22 >= 0x38)
    {
      v25 = (v22 >> 3) + 1;
      v24 = &v36->i8[8 * (v25 & 0x3FFFFFFFFFFFFFF8)];
      v26 = v36 + 2;
      v27.i64[0] = 0x100000001;
      v27.i64[1] = 0x100000001;
      v28 = v25 & 0x3FFFFFFFFFFFFFF8;
      v29.i64[0] = 0x100000001;
      v29.i64[1] = 0x100000001;
      do
      {
        v31 = v26[-2];
        v30 = v26[-1];
        v33 = *v26;
        v32 = v26[1];
        v26 += 4;
        v27 = vmulq_s32(v27, vuzp1q_s32(v31, v30));
        v29 = vmulq_s32(v29, vuzp1q_s32(v33, v32));
        v28 -= 8;
      }

      while (v28);
      v34 = vmulq_s32(v29, v27);
      *v34.i8 = vmul_s32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v23 = v34.i32[0] * v34.i32[1];
      if (v25 == (v25 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v23 = 1;
      v24 = v36;
    }

    do
    {
      v35 = *v24;
      v24 += 8;
      v23 *= v35;
    }

    while (v24 != v37);
LABEL_17:
    objc_msgSend_encodeBytes_length_forKey_(coderCopy, v21, v16, 4 * v23, @"kTensorValues");
    goto LABEL_18;
  }

  objc_msgSend_encodeBytes_length_forKey_(coderCopy, v21, v16, 0, @"kTensorValues");
LABEL_18:
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v36)
  {
    operator delete(v36);
  }

  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v42);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

- (IHKFeatureVector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = objc_msgSend_decodeIntForKey_(coderCopy, v5, @"kTensorNDims", v6, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 4) = 4;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 7) = 0;
  *(self + 1) = &unk_2866F58A0;
  return self;
}

@end