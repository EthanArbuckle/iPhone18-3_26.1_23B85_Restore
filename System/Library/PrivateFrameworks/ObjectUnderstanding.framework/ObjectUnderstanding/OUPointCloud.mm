@interface OUPointCloud
- (OUPointCloud)initWithCount:(unint64_t)a3 points:semanticLabels:semanticVotes:;
- (OUPointCloud)initWithCount:(unint64_t)a3 points:semanticLabels:semanticVotes:colors:;
- (OUPointCloud)initWithDictionary:(id)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (void)append:(unint64_t)a3 points:semanticLabels:semanticVotes:;
- (void)append:(unint64_t)a3 points:semanticLabels:semanticVotes:colors:;
- (void)resample:(unint64_t)a3;
- (void)reset;
@end

@implementation OUPointCloud

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(OUPointCloud);
  v5 = v4;
  if (v4 != self)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v4->_anon_8, *self->_anon_8, *&self->_anon_8[8], (*&self->_anon_8[8] - *self->_anon_8) >> 4);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(&v5->_anon_8[24], *&self->_anon_8[24], *&self->_anon_8[32], (*&self->_anon_8[32] - *&self->_anon_8[24]) >> 4);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v5->_anon_8[48], *&self->_anon_8[48], *&self->_anon_8[56], (*&self->_anon_8[56] - *&self->_anon_8[48]) >> 2);
    _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(&v5->_anon_8[72], *&self->_anon_8[72], *&self->_anon_8[80], (*&self->_anon_8[80] - *&self->_anon_8[72]) >> 3);
  }

  return v5;
}

- (OUPointCloud)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(OUPointCloud *)self init];
  v6 = [v4 objectForKeyedSubscript:@"count"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 objectForKeyedSubscript:@"colors"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v10 bytes];
  v12 = [v10 length];
  __p = 0;
  v55 = 0;
  v56 = 0;
  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&__p, v11, &v11[v12 & 0xFFFFFFFFFFFFFFFCLL], v12 >> 2);

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v57, ((v55 - __p) >> 2) / 3uLL);
  v13 = v57;
  v14 = v58;
  if (v58 != v57)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = v13 + v15;
      v19 = *(__p + v16);
      *(v18 + 8) = *(__p + v16 + 8);
      *v18 = v19;
      ++v17;
      v13 = v57;
      v14 = v58;
      v16 += 12;
      v15 += 16;
    }

    while (v17 < (v58 - v57) >> 4);
  }

  v20 = *v5->_anon_8;
  if (v20)
  {
    *&v5->_anon_8[8] = v20;
    operator delete(v20);
    *v5->_anon_8 = 0;
    *&v5->_anon_8[8] = 0;
    *&v5->_anon_8[16] = 0;
    v13 = v57;
    v14 = v58;
  }

  *v5->_anon_8 = v13;
  *&v5->_anon_8[8] = v14;
  *&v5->_anon_8[16] = v59;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  v21 = [v4 objectForKeyedSubscript:@"points"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v24 = [v23 bytes];
  v25 = [v23 length];
  __p = 0;
  v55 = 0;
  v56 = 0;
  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&__p, v24, &v24[v25 & 0xFFFFFFFFFFFFFFFCLL], v25 >> 2);

  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v57, ((v55 - __p) >> 2) / 3uLL);
  v26 = v57;
  v27 = v58;
  if (v58 != v57)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = v26 + v28;
      v32 = *(__p + v29);
      *(v31 + 8) = *(__p + v29 + 8);
      *v31 = v32;
      ++v30;
      v26 = v57;
      v27 = v58;
      v29 += 12;
      v28 += 16;
    }

    while (v30 < (v58 - v57) >> 4);
  }

  v33 = *&v5->_anon_8[24];
  if (v33)
  {
    *&v5->_anon_8[32] = v33;
    operator delete(v33);
    *&v5->_anon_8[24] = 0;
    *&v5->_anon_8[32] = 0;
    *&v5->_anon_8[40] = 0;
    v26 = v57;
    v27 = v58;
  }

  *&v5->_anon_8[24] = v26;
  *&v5->_anon_8[32] = v27;
  *&v5->_anon_8[40] = v59;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  v34 = [v4 objectForKeyedSubscript:@"semanticLabels"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;
  v37 = [v36 bytes];
  v38 = [v36 length];
  __p = 0;
  v55 = 0;
  v56 = 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v37, &v37[v38], v38);

  _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEEC2B8ne200100Em(&v57, (v55 - __p) >> 2);
  v39 = v57;
  v40 = v58;
  if (v58 != v57)
  {
    v41 = 0;
    do
    {
      *(v39 + 4 * v41) = *(__p + v41);
      ++v41;
      v39 = v57;
      v40 = v58;
    }

    while (v41 < (v58 - v57) >> 2);
  }

  v42 = *&v5->_anon_8[48];
  if (v42)
  {
    *&v5->_anon_8[56] = v42;
    operator delete(v42);
    *&v5->_anon_8[48] = 0;
    *&v5->_anon_8[56] = 0;
    *&v5->_anon_8[64] = 0;
    v39 = v57;
    v40 = v58;
  }

  *&v5->_anon_8[48] = v39;
  *&v5->_anon_8[56] = v40;
  *&v5->_anon_8[64] = v59;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  v43 = [v4 objectForKeyedSubscript:@"semanticVotes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  v46 = [v45 bytes];
  v47 = [v45 length];
  __p = 0;
  v55 = 0;
  v56 = 0;
  std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, v46, &v46[v47 & 0xFFFFFFFFFFFFFFFELL], v47 >> 1);

  _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEEC2B8ne200100Em(&v57, ((v55 - __p) >> 1) >> 2);
  v48 = v57;
  v49 = v58;
  if (v58 != v57)
  {
    v50 = 0;
    do
    {
      *(v48 + 8 * v50) = *(__p + v50);
      ++v50;
      v48 = v57;
      v49 = v58;
    }

    while (v50 < (v58 - v57) >> 3);
  }

  v51 = *&v5->_anon_8[72];
  if (v51)
  {
    *&v5->_anon_8[80] = v51;
    operator delete(v51);
    *&v5->_anon_8[72] = 0;
    *&v5->_anon_8[80] = 0;
    *&v5->_anon_8[88] = 0;
    v48 = v57;
    v49 = v58;
  }

  *&v5->_anon_8[72] = v48;
  *&v5->_anon_8[80] = v49;
  *&v5->_anon_8[88] = v59;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  if (OUPointCloudCpp::IsValid(v5->_anon_8) && v7 == (*&v5->_anon_8[8] - *v5->_anon_8) >> 4)
  {
    v52 = v5;
  }

  else
  {
    v52 = 0;
  }

  return v52;
}

- (OUPointCloud)initWithCount:(unint64_t)a3 points:semanticLabels:semanticVotes:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v12.receiver = self;
  v12.super_class = OUPointCloud;
  v10 = [(OUPointCloud *)&v12 init];
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v10 + 1, a3);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v10 + 4, a3);
  _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE6resizeEm(v10 + 7, a3);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(v10 + 10, a3);
  memcpy(*(v10 + 4), v8, 16 * a3);
  memcpy(*(v10 + 7), v7, 4 * a3);
  memcpy(*(v10 + 10), v6, 8 * a3);
  return v10;
}

- (OUPointCloud)initWithCount:(unint64_t)a3 points:semanticLabels:semanticVotes:colors:
{
  v4 = v3;
  v6 = [OUPointCloud initWithCount:"initWithCount:points:semanticLabels:semanticVotes:" points:? semanticLabels:? semanticVotes:?];
  memcpy(*v6->_anon_8, v4, 16 * a3);
  return v6;
}

- (void)append:(unint64_t)a3 points:semanticLabels:semanticVotes:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v11 = [(OUPointCloud *)self count];
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(self->_anon_8, v11 + a3);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&self->_anon_8[24], v11 + a3);
  _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE6resizeEm(&self->_anon_8[48], v11 + a3);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&self->_anon_8[72], v11 + a3);
  memcpy((*&self->_anon_8[24] + 16 * v11), v8, 16 * a3);
  memcpy((*&self->_anon_8[48] + 4 * v11), v7, 4 * a3);
  v12 = (*&self->_anon_8[72] + 8 * v11);

  memcpy(v12, v6, 8 * a3);
}

- (void)append:(unint64_t)a3 points:semanticLabels:semanticVotes:colors:
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v13 = [(OUPointCloud *)self count];
  [(OUPointCloud *)self append:a3 points:v10 semanticLabels:v9 semanticVotes:v8];
  v14 = (*self->_anon_8 + 16 * v13);

  memcpy(v14, v7, 16 * a3);
}

- (void)resample:(unint64_t)a3
{
  v5 = [(OUPointCloud *)self count];
  if (a3 && v5 > a3)
  {
    utils::Resample(v5, a3, &__p);
    v6 = v15 - __p;
    if (((v15 - __p) >> 3) >= 1)
    {
      v7 = 0;
      do
      {
        *(*self->_anon_8 + 16 * v7) = *(*self->_anon_8 + 16 * *(__p + v7));
        ++v7;
      }

      while (((v6 >> 3) & 0x7FFFFFFF) != v7);
    }

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(self->_anon_8, (v6 >> 3));
    v8 = v15 - __p;
    if (((v15 - __p) >> 3) >= 1)
    {
      v9 = 0;
      do
      {
        *(*&self->_anon_8[24] + 16 * v9) = *(*&self->_anon_8[24] + 16 * *(__p + v9));
        ++v9;
      }

      while (((v8 >> 3) & 0x7FFFFFFF) != v9);
    }

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&self->_anon_8[24], (v8 >> 3));
    v10 = v15 - __p;
    if (((v15 - __p) >> 3) >= 1)
    {
      v11 = 0;
      do
      {
        *(*&self->_anon_8[48] + 4 * v11) = *(*&self->_anon_8[48] + 4 * *(__p + v11));
        ++v11;
      }

      while (((v10 >> 3) & 0x7FFFFFFF) != v11);
    }

    _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE6resizeEm(&self->_anon_8[48], (v10 >> 3));
    v12 = v15 - __p;
    if (((v15 - __p) >> 3) >= 1)
    {
      v13 = 0;
      do
      {
        *(*&self->_anon_8[72] + 8 * v13) = *(*&self->_anon_8[72] + 8 * *(__p + v13));
        ++v13;
      }

      while (((v12 >> 3) & 0x7FFFFFFF) != v13);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&self->_anon_8[72], (v12 >> 3));
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }
}

- (void)reset
{
  *&self->_anon_8[8] = *self->_anon_8;
  *&self->_anon_8[32] = *&self->_anon_8[24];
  *&self->_anon_8[56] = *&self->_anon_8[48];
  *&self->_anon_8[80] = *&self->_anon_8[72];
}

- (id).cxx_construct
{
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 34) = 1065353216;
  return self;
}

@end