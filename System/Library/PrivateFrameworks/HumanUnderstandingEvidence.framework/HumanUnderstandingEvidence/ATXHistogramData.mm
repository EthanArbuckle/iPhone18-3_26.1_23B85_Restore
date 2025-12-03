@interface ATXHistogramData
- (ATXHistogramData)init;
- (ATXHistogramData)initWithCoder:(id)coder;
- (float)entropyWhereA:(unsigned __int16)a b:(unsigned __int16)b;
- (float)lookupSmoothedWithBucketCount:(unsigned __int16)count distanceScale:(float)scale a:(unsigned __int16)a b:(unsigned __int16)b;
- (float)lookupUnsmoothedA:(unsigned __int16)a b:(unsigned __int16)b;
- (id).cxx_construct;
- (id)aSet;
- (id)bSet;
- (int)countWhereA:(unsigned __int16)a b:(unsigned __int16)b;
- (void)add:(float)add a:(unsigned __int16)a b:(unsigned __int16)b;
- (void)clear;
- (void)decayByFactor:(float)factor;
- (void)decayWithHalfLifeInDays:(float)days;
- (void)deleteWhereA:(unsigned __int16)a b:(unsigned __int16)b;
- (void)encodeWithCoder:(id)coder;
- (void)enumerate:(id)enumerate;
@end

@implementation ATXHistogramData

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 0;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  [coderCopy encodeInt32:*(*ptr + 24) forKey:@"count"];
  v5 = *ptr;
  if (*(*ptr + 24))
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:**ptr length:4 * *(*ptr + 24)];
    [coderCopy encodeObject:v6 forKey:@"scores"];

    v5 = *ptr;
  }

  if (v5[7])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*(*ptr + 32) length:4 * *(*ptr + 56)];
    [coderCopy encodeObject:v7 forKey:@"abs"];
  }

  pthread_mutex_unlock((ptr + 8));
}

- (ATXHistogramData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [(ATXHistogramData *)self init];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    ptr = v6->_guardedData.__ptr_;
    pthread_mutex_lock((ptr + 1));
    v9 = [coderCopy decodeInt32ForKey:@"count"];
    if (!v9)
    {
LABEL_15:
      pthread_mutex_unlock((ptr + 1));
      objc_autoreleasePoolPop(v7);
      goto LABEL_16;
    }

    v10 = v9;
    sub_25469B988(*ptr, v9);
    sub_25469BBA0((*ptr + 4), v10);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scores"];
    if ([v11 length] == 4 * v10)
    {
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"ATXHistogramData.mm" lineNumber:519 description:{@"Invalid parameter not satisfying: %@", @"data.length == count * sizeof(sp->scores[0])"}];

      if (!v11)
      {
LABEL_6:
        v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abs"];

        if ([v12 length] == 4 * v10)
        {
          if (!v12)
          {
LABEL_9:
            v13 = (*ptr)[3];
            if (v13)
            {
              v14 = **ptr;
              v15 = 1;
              do
              {
                if ((*v14 & 0x7FFFFFFFu) >= 0x7F800000)
                {
                  *v14 = 0;
                }

                ++v14;
              }

              while (v13 > v15++);
            }

            goto LABEL_15;
          }
        }

        else
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:v6 file:@"ATXHistogramData.mm" lineNumber:524 description:{@"Invalid parameter not satisfying: %@", @"data.length == count * sizeof(sp->abs[0])"}];

          if (!v12)
          {
            goto LABEL_9;
          }
        }

        memcpy((*ptr)[4], [v12 bytes], objc_msgSend(v12, "length"));
        goto LABEL_9;
      }
    }

    memcpy(**ptr, [v11 bytes], objc_msgSend(v11, "length"));
    goto LABEL_6;
  }

LABEL_16:

  return v6;
}

- (id)bSet
{
  v3 = objc_opt_new();
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v5 = *ptr;
  if (*(*ptr + 56))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      [v3 addIndex:*(*(v5 + 32) + 4 * v6)];
      v6 = v7;
      v5 = *ptr;
    }

    while (*(*ptr + 56) > v7++);
  }

  v9 = v3;
  pthread_mutex_unlock((ptr + 8));

  return v9;
}

- (id)aSet
{
  v3 = objc_opt_new();
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v5 = *ptr;
  if (*(*ptr + 56))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      [v3 addIndex:*(*(v5 + 32) + 4 * v6 + 2)];
      v6 = v7;
      v5 = *ptr;
    }

    while (*(*ptr + 56) > v7++);
  }

  v9 = v3;
  pthread_mutex_unlock((ptr + 8));

  return v9;
}

- (void)decayWithHalfLifeInDays:(float)days
{
  exp2(-1.0 / days);

  MEMORY[0x2821F9670](self, sel_decayByFactor_);
}

- (void)decayByFactor:(float)factor
{
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  if (*(*ptr + 64))
  {
    __break(1u);
  }

  else
  {
    v4 = **ptr;
    if (*(*ptr + 8) != v4)
    {
      v5 = 0;
      do
      {
        v6 = (v4 + 32 * v5);
        v7 = vmulq_n_f32(v6[1], factor);
        *v6 = vmulq_n_f32(*v6, factor);
        v6[1] = v7;
        ++v5;
        v4 = **ptr;
      }

      while (v5 < (*(*ptr + 8) - v4) >> 5);
    }

    pthread_mutex_unlock((ptr + 8));
  }
}

- (void)deleteWhereA:(unsigned __int16)a b:(unsigned __int16)b
{
  if ((b & a) == 0xFFFF)
  {

    goto _objc_msgSend$clear;
  }

  bCopy = b;
  aCopy = a;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  self = *ptr;
  if (*(*ptr + 64) == 1)
  {
    __break(1u);
- (int)countWhereA:(unsigned __int16)a b:(unsigned __int16)b
{
  if ((b & a) == 0xFFFF)
  {
    ptr = self->_guardedData.__ptr_;
    pthread_mutex_lock((ptr + 8));
    v5 = *(*ptr + 24);
    pthread_mutex_unlock((ptr + 8));
    return v5;
  }

  if (a == 0xFFFF)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_25469C430;
    v10[3] = &unk_279780160;
    bCopy = b;
    v10[4] = &v12;
    [(ATXHistogramData *)self enumerate:v10];
LABEL_8:
    v5 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
    return v5;
  }

  if (b == 0xFFFF)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_25469C454;
    v8[3] = &unk_279780160;
    aCopy = a;
    v8[4] = &v12;
    [(ATXHistogramData *)self enumerate:v8];
    goto LABEL_8;
  }

  [ATXHistogramData lookupUnsmoothedA:"lookupUnsmoothedA:b:" b:?];
  return v4 > 0.0;
}

- (void)enumerate:(id)enumerate
{
  enumerateCopy = enumerate;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v5 = *ptr;
  v6 = *(*ptr + 64);
  *(v5 + 64) = 1;
  if (*(v5 + 56))
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if (*(*v5 + 4 * v7) > 0.0)
      {
        v9 = *(*(v5 + 32) + 4 * v7);
        (*(enumerateCopy + 2))(enumerateCopy, HIWORD(v9), v9);
        v5 = *ptr;
      }

      v7 = v8;
    }

    while (*(v5 + 56) > v8++);
  }

  *(v5 + 64) = v6;
  pthread_mutex_unlock((ptr + 8));
}

- (float)entropyWhereA:(unsigned __int16)a b:(unsigned __int16)b
{
  bCopy = b;
  aCopy = a;
  ptr = self->_guardedData.__ptr_;
  v10 = ptr;
  pthread_mutex_lock((ptr + 8));
  sub_25469C600(&v10, aCopy, bCopy);
  v8 = v7;
  pthread_mutex_unlock((ptr + 8));
  return v8;
}

- (float)lookupSmoothedWithBucketCount:(unsigned __int16)count distanceScale:(float)scale a:(unsigned __int16)a b:(unsigned __int16)b
{
  bCopy = b;
  aCopy = a;
  countCopy = count;
  if (b == 0xFFFF)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXHistogramData.mm" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"b != SUMALL"}];
  }

  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v11 = **ptr;
  v12 = *(*ptr + 8);
  v13 = v12 - v11;
  if (v12 == v11)
  {
    v19 = 0uLL;
    v29 = 0uLL;
  }

  else
  {
    v14 = 0;
    v15 = v13 >> 5;
    v16 = vdupq_n_s32((aCopy << 16) | 0xFFFFu);
    v17 = vdupq_n_s32(bCopy);
    v18 = vdupq_n_s32(countCopy);
    v19 = 0uLL;
    v20.i64[0] = -1;
    v20.i64[1] = -1;
    v21 = vceqq_s16(v16, v20);
    v22 = vmovn_s16(v21);
    v23.i64[0] = 0xFF000000FFLL;
    v23.i64[1] = 0xFF000000FFLL;
    __asm { FMOV            V6.4S, #1.0 }

    v29 = 0uLL;
    do
    {
      v30 = *(*ptr + 32) + 32 * v14;
      v32 = *v30;
      v31 = *(v30 + 16);
      v33 = vceqq_s16(*v30, v16);
      v34 = vorrq_s8(vceqq_s16(v31, v16), v21);
      v35 = (v11 + 32 * v14);
      v36 = vabdq_s32(vandq_s8(v32, v23), v17);
      v37 = vabdq_s32(vandq_s8(v31, v23), v17);
      v38 = vmulq_n_f32(vcvtq_f32_s32(vminq_s32(vsubq_s32(v18, v36), v36)), scale);
      v39 = vmulq_n_f32(vcvtq_f32_s32(vminq_s32(vsubq_s32(v18, v37), v37)), scale);
      v40 = vmlaq_f32(_Q6, v39, v39);
      v41 = vmlaq_f32(_Q6, v38, v38);
      v42 = vandq_s8(vandq_s8(*v35, vorrq_s8(v33, v21)), vrev32q_s16(vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8(vmovn_s16(v33), v22)), 0xFuLL))));
      v43 = vrecpeq_f32(v41);
      v44 = vrecpeq_f32(v40);
      v29 = vaddq_f32(v29, vmulq_f32(vmulq_f32(v44, vrecpsq_f32(v40, v44)), vandq_s8(vandq_s8(v35[1], v34), vrev32q_s16(v34))));
      v19 = vaddq_f32(v19, vmulq_f32(vmulq_f32(v43, vrecpsq_f32(v41, v43)), v42));
      ++v14;
    }

    while (v15 > v14);
  }

  v49 = v29;
  v51 = v19;
  pthread_mutex_unlock((ptr + 8));
  v45 = vaddq_f32(v51, v49);
  result = vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)));
  if ((LODWORD(result) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    return 0.0;
  }

  return result;
}

- (float)lookupUnsmoothedA:(unsigned __int16)a b:(unsigned __int16)b
{
  bCopy = b;
  aCopy = a;
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v7 = **ptr;
  v8 = *(*ptr + 8) - v7;
  if (v8)
  {
    v9 = v8 >> 5;
    v10 = *(*ptr + 32);
    v11 = vdupq_n_s32(bCopy | (aCopy << 16));
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v12 = 0uLL;
    v13.i64[0] = -1;
    v13.i64[1] = -1;
    v14 = vceqq_s16(v11, v13);
    v15 = vmovn_s16(v14);
    v16 = 0uLL;
    do
    {
      v18 = *v10;
      v17 = v10[1];
      v10 += 2;
      v19 = vceqq_s16(v18, v11);
      v20 = vorrq_s8(vceqq_s16(v17, v11), v14);
      v22 = *v7;
      v21 = v7[1];
      v7 += 2;
      v16 = vaddq_f32(v16, vandq_s8(vandq_s8(v21, v20), vrev32q_s16(v20)));
      v12 = vaddq_f32(v12, vandq_s8(vandq_s8(v22, vorrq_s8(v19, v14)), vrev32q_s16(vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8(vmovn_s16(v19), v15)), 0xFuLL)))));
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = 0uLL;
    v16 = 0uLL;
  }

  v25 = v16;
  v26 = v12;
  pthread_mutex_unlock((ptr + 8));
  v23 = vaddq_f32(v26, v25);
  result = vaddv_f32(vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL)));
  if ((LODWORD(result) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    return 0.0;
  }

  return result;
}

- (void)add:(float)add a:(unsigned __int16)a b:(unsigned __int16)b
{
  if ((LODWORD(add) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    bCopy = b;
    aCopy = a;
    ptr = self->_guardedData.__ptr_;
    pthread_mutex_lock((ptr + 8));
    v9 = *ptr;
    if (*(*ptr + 64))
    {
      __break(1u);
    }

    else
    {
      v10 = v9[7];
      if (v10)
      {
        v11 = 0;
        while (*(v9[4] + 4 * v11) != (bCopy | (aCopy << 16)))
        {
          if (v10 == ++v11)
          {
            goto LABEL_7;
          }
        }

        *(*v9 + 4 * v11) = fmaxf(*(*v9 + 4 * v11) + add, 0.0);
      }

      else
      {
LABEL_7:
        if (add >= 0.0)
        {
          v12 = v9[3];
          sub_25469B988(*ptr, v12 + 1);
          *(*v9 + 4 * v12) = fmaxf(add, 0.0);
          v13 = *ptr;
          v14 = *(*ptr + 56);
          sub_25469BBA0(*ptr + 32, v14 + 1);
          *(*(v13 + 32) + 4 * v14) = bCopy | (aCopy << 16);
        }
      }

      pthread_mutex_unlock((ptr + 8));
    }
  }
}

- (void)clear
{
  ptr = self->_guardedData.__ptr_;
  pthread_mutex_lock((ptr + 8));
  if (*(*ptr + 64) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_25469B988(*ptr, 0);
    sub_25469BBA0(*ptr + 32, 0);
    pthread_mutex_unlock((ptr + 8));
  }
}

- (ATXHistogramData)init
{
  v12 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = ATXHistogramData;
  v2 = [(ATXHistogramData *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v5 = v2 + 8;
    v4 = *(v2 + 1);
    if (v4)
    {
      *(v3 + 2) = v4;
      free(v4);
      *v5 = 0;
      *(v3 + 2) = 0;
      *(v3 + 3) = 0;
    }

    v7 = v3 + 40;
    v6 = *(v3 + 5);
    v8 = 0uLL;
    *v5 = 0u;
    *(v3 + 24) = 0u;
    if (v6)
    {
      *(v3 + 6) = v6;
      free(v6);
      v8 = 0uLL;
      *v7 = 0;
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
    }

    v3[72] = 0;
    *v7 = v8;
    *(v3 + 56) = v8;
    operator new();
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

@end