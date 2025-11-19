uint64_t geom::point_tree<double,(unsigned char)3>::point_tree(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5, double a6, __n128 a7, __n128 a8)
{
  *a1 = 0;
  *(a1 + 1) = a3;
  *(a1 + 4) = a4;
  v11 = *a2;
  v12 = a2[1];
  v13 = vdupq_n_s64(0x7FF0000000000000uLL);
  a7.n128_u64[0] = 0x7FF0000000000000;
  *(a1 + 16) = v13;
  *(a1 + 32) = a7;
  v14 = vdupq_n_s64(0xFFF0000000000000);
  a8.n128_u64[0] = 0xFFF0000000000000;
  *(a1 + 48) = v14;
  *(a1 + 64) = a8;
  if (v12)
  {
    v15.f64[0] = INFINITY;
    v16.f64[0] = -INFINITY;
    v17 = 32 * v12;
    do
    {
      v13 = vminnmq_f64(*v11, v13);
      v15 = vminnmq_f64(*(v11 + 16), *&v15.f64[0]);
      *(a1 + 16) = v13;
      *(a1 + 32) = v15;
      v18 = *v11;
      v19 = *(v11 + 16);
      v11 += 32;
      v14 = vmaxnmq_f64(v18, v14);
      v16 = vmaxnmq_f64(v19, *&v16.f64[0]);
      *(a1 + 48) = v14;
      *(a1 + 64) = v16;
      v17 -= 32;
    }

    while (v17);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 152) = a2[1];
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  a2[1] = 0;
  *(a2 + 16) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  v20 = *(a1 + 64);
  v21 = *(a1 + 48);
  v22 = *(a1 + 32);
  v23 = *(a1 + 16);
  if (a5)
  {
    v24 = vsubq_f64(v20, v22);
    v25 = vsubq_f64(v21, v23);
    v26 = v25.f64[1] > v25.f64[0];
    v70[0] = v25;
    v70[1] = v24;
    if (v24.f64[0] > *(v70 | (8 * v26)))
    {
      LODWORD(v26) = 2;
    }

    v69[0] = v25;
    v69[1] = v24;
    v24.f64[0] = *(v69 + v26);
    v27 = vaddq_f64(v23, vdupq_lane_s64(*&v24.f64[0], 0));
    v28 = *&vaddq_f64(v22, v24);
    v23 = vminnmq_f64(v23, v27);
    v22 = vminnmq_f64(*&v22.f64[0], v28);
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    v21 = vmaxnmq_f64(v21, v27);
    v20 = vmaxnmq_f64(*&v20.f64[0], v28);
    *(a1 + 48) = v21;
    *(a1 + 64) = v20;
  }

  *(a1 + 80) = vsubq_f64(v21, v23);
  *(a1 + 96) = vsubq_f64(v20, v22);
  v29 = vaddq_f64(v21, v23);
  __asm { FMOV            V2.2D, #0.5 }

  *(a1 + 128) = vmulq_f64(vaddq_f64(v20, v22), _Q2);
  *(a1 + 112) = vmulq_f64(v29, _Q2);
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1 + 192, (a1 + 80));
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1 + 312, (a1 + 112));
  std::vector<double>::resize((a1 + 168), *(a1 + 152));
  v35 = *(a1 + 168);
  v36 = *(a1 + 176);
  if (v35 != v36)
  {
    v37 = 0;
    v38 = (v36 - v35 - 8) >> 3;
    v39 = vdupq_n_s64(v38);
    v40 = (v38 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v41 = xmmword_2500C1680;
    v42 = vdupq_n_s64(2uLL);
    do
    {
      v43 = vmovn_s64(vcgeq_u64(v39, v41));
      if (v43.i8[0])
      {
        *(v35 + 8 * v37) = v37;
      }

      if (v43.i8[4])
      {
        *(v35 + 8 * v37 + 8) = v37 + 1;
      }

      v37 += 2;
      v41 = vaddq_s64(v41, v42);
    }

    while (v40 != v37);
  }

  v44 = (v36 - v35) >> 3;
  v46 = *(a1 + 296);
  v45 = *(a1 + 304);
  if (v46 >= v45)
  {
    v48 = *(a1 + 288);
    v49 = v46 - v48;
    v50 = (v46 - v48) >> 4;
    v51 = v50 + 1;
    if ((v50 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v52 = v45 - v48;
    if (v52 >> 3 > v51)
    {
      v51 = v52 >> 3;
    }

    _CF = v52 >= 0x7FFFFFFFFFFFFFF0;
    v53 = 0xFFFFFFFFFFFFFFFLL;
    if (!_CF)
    {
      v53 = v51;
    }

    if (v53)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1 + 288, v53);
    }

    v54 = v50;
    v55 = (16 * v50);
    *v55 = 0;
    v55[1] = v44;
    v47 = 16 * v50 + 16;
    v56 = &v55[-2 * v54];
    memcpy(v56, v48, v49);
    v57 = *(a1 + 288);
    *(a1 + 288) = v56;
    *(a1 + 296) = v47;
    *(a1 + 304) = 0;
    if (v57)
    {
      operator delete(v57);
    }
  }

  else
  {
    *v46 = 0;
    *(v46 + 1) = v44;
    v47 = (v46 + 16);
  }

  *(a1 + 296) = v47;
  std::vector<unsigned long long>::push_back[abi:nn200100]((a1 + 216), &geom::point_tree<double,(unsigned char)3>::k_invalid_index);
  std::vector<unsigned long long>::push_back[abi:nn200100]((a1 + 240), &geom::point_tree<double,(unsigned char)3>::k_invalid_index);
  v72 = 0uLL;
  *&v73 = 0;
  std::vector<std::array<std::bitset<64ul>,3ul>>::push_back[abi:nn200100](a1 + 264, &v72);
  v58 = *(a1 + 272);
  *(v58 - 24) = vdupq_n_s64(1uLL);
  *(v58 - 8) = 1;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  v71 = 0;
  std::deque<unsigned long long>::push_back(&v72, &v71);
  v59 = *(&v74 + 1);
  if (*(&v74 + 1))
  {
    v60 = a4;
    do
    {
      v61 = *(*(*(&v72 + 1) + ((v74 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v74 & 0x1FF));
      *&v74 = v74 + 1;
      *(&v74 + 1) = v59 - 1;
      if (v74 >= 0x400)
      {
        operator delete(**(&v72 + 1));
        *(&v72 + 1) += 8;
        *&v74 = v74 - 512;
      }

      if (*(*(a1 + 288) + 16 * v61 + 8) - *(*(a1 + 288) + 16 * v61) > v60)
      {
        if (v61)
        {
          v62 = *(*(a1 + 264) + 24 * v61);
          v63 = 63 - __clz(v62);
          v64 = v62 ? v63 : 0;
        }

        else
        {
          v64 = 0;
        }

        if (a3 > v64)
        {
          geom::point_tree<double,(unsigned char)3>::split(a1, v61);
        }
      }

      if (*(*(a1 + 240) + 8 * v61) != -1)
      {
        for (i = 0; i != 8; ++i)
        {
          v66 = *(*(a1 + 240) + 8 * v61);
          if (v66 == -1)
          {
            v67 = -1;
          }

          else
          {
            v67 = i + v66;
          }

          v71 = v67;
          std::deque<unsigned long long>::push_back(&v72, &v71);
        }
      }

      v59 = *(&v74 + 1);
    }

    while (*(&v74 + 1));
  }

  std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v72);
  return a1;
}

uint64_t geom::point_tree<double,(unsigned char)3>::data(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 288) + 16 * a2);
  result = *(a1 + 168) + 8 * *v2;
  v4 = v2[1] - *v2;
  return result;
}

uint64_t geom::point_tree<double,(unsigned char)3>::depth(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 264) + 24 * a2);
    v3 = 63 - __clz(v2);
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void *geom::point_tree<double,(unsigned char)3>::split(unsigned __int8 *a1, unint64_t a2)
{
  v26 = a2;
  v3 = a1 + 216;
  v4 = (*(a1 + 28) - *(a1 + 27)) >> 3;
  v5 = a1 + 240;
  *(*(a1 + 30) + 8 * a2) = v4;
  std::vector<unsigned long long>::resize(a1 + 27, v4 + 8, &v26);
  std::vector<unsigned long long>::resize(v5, v4 + 8, &geom::point_tree<double,(unsigned char)3>::k_invalid_index);
  std::vector<std::array<std::bitset<64ul>,3ul>>::resize(v3 + 6, v4 + 8);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v3 + 9, v4 + 8);
  v6 = v26;
  if (v26)
  {
    v7 = *(*(v3 + 6) + 24 * v26);
    v8 = 63 - __clz(v7);
    if (v7)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  if (*a1 == v6)
  {
    v9 = v6 + 1;
    *a1 = v9;
    v21 = *(a1 + 5);
    v22 = *(a1 + 6);
    v10 = vdupq_lane_s64(COERCE__INT64(ldexp(1.0, v9)), 0);
    v24 = vdivq_f64(v21, v10);
    v25 = vdivq_f64(v22, v10);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_((a1 + 192), &v24);
  }

  v11 = 0;
  v12 = *(v3 + 6);
  v13 = 24 * v4;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v24.f64[0] = *(v12 + 24 * v26 + 8 * i);
      std::bitset<64ul>::operator<<=[abi:nn200100](&v24, 1uLL);
      *(*(v3 + 6) + v13 + 8 * i) = v24.f64[0];
      v12 = *(v3 + 6);
      *(v12 + v13 + 8 * i) = *(v12 + v13 + 8 * i) & 0xFFFFFFFFFFFFFFFELL | (v11 >> i) & 1;
    }

    ++v11;
    v13 += 24;
  }

  while (v11 != 8);
  v16 = v26;
  geom::point_tree<double,(unsigned char)3>::centroid(a1, v26, v23, v15);
  v17 = (*(a1 + 36) + 16 * v26);
  v18 = *v17;
  v19 = v17[1];
  v24 = v23[0];
  v25 = v23[1];
  return geom::point_tree<double,(unsigned char)3>::partition(a1, v16, 0, 0, &v24, v18, v19);
}

uint64_t geom::point_tree<double,(unsigned char)3>::child(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(*(a1 + 240) + 8 * a2);
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return v3 + a3;
  }
}

__n128 geom::point_tree<double,(unsigned char)3>::bounds@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = *(a1 + 16);
  *(a2 + 16) = v2;
  result = *(a1 + 48);
  v4 = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

void geom::point_tree<double,(unsigned char)3>::bounds(uint64_t a1@<X0>, unint64_t a2@<X1>, float64x2_t *a3@<X8>, __n128 a4@<Q0>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    geom::point_tree<double,(unsigned char)3>::centroid(a1, a2, &v27, a4);
    v7 = 0;
    v8 = *(*(a1 + 264) + 24 * a2);
    v9 = (63 - __clz(v8));
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = (*(a1 + 192) + 32 * v10);
    __asm { FMOV            V4.2D, #0.5 }

    v21 = vmulq_f64(v11[1], _Q4);
    v17 = vmulq_f64(*v11, _Q4);
    v29[0] = vaddq_f64(v27, v17);
    v29[1] = vaddq_f64(v28, v21);
    v29[2] = vsubq_f64(v27, v17);
    v29[3] = vsubq_f64(v28, v21);
    v18 = vdupq_n_s64(0x7FF0000000000000uLL);
    v19.f64[0] = INFINITY;
    v20 = vdupq_n_s64(0xFFF0000000000000);
    v21.f64[0] = -INFINITY;
    do
    {
      v22 = v29[v7];
      v23 = v29[v7 + 1];
      v18 = vminnmq_f64(v22, v18);
      v19 = vminnmq_f64(v23, *&v19.f64[0]);
      v20 = vmaxnmq_f64(v22, v20);
      v21 = vmaxnmq_f64(v23, *&v21.f64[0]);
      v7 += 2;
    }

    while (v7 != 4);
    *a3 = v18;
    a3[1] = v19;
    a3[2] = v20;
    a3[3] = v21;
  }

  else
  {
    v24 = *(a1 + 32);
    *a3 = *(a1 + 16);
    a3[1] = v24;
    v25 = *(a1 + 64);
    a3[2] = *(a1 + 48);
    a3[3] = v25;
  }

  v26 = *MEMORY[0x277D85DE8];
}

void geom::point_tree<double,(unsigned char)3>::centroid(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>, __n128 a4@<Q0>)
{
  v4 = *(a1 + 312);
  if (a2 >= (*(a1 + 320) - v4) >> 5)
  {
    v8 = 0;
    v9 = (*(a1 + 264) + 24 * a2);
    v10 = 63 - __clz(*v9);
    if (*v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v7 = *(a1 + 112);
    v12 = *(a1 + 128);
    v13 = *(a1 + 80);
    a4.n128_u64[0] = *(a1 + 96);
    v25 = a4;
    v13.i64[1] = vextq_s8(v13, v13, 8uLL).u64[0];
    v26 = v13;
    do
    {
      v27 = v12;
      v28 = v7;
      if (v11)
      {
        v14 = v9[v8];
        v15 = 0.0;
        v16 = 2;
        v17 = v11 - 1;
        do
        {
          if ((v14 >> v17))
          {
            v18 = 1.0;
          }

          else
          {
            v18 = 0.0;
          }

          v19 = powf(-1.0, v18);
          v15 = v15 + v19 * (1.0 / exp2(v16++));
          --v17;
        }

        while (v17 != -1);
      }

      else
      {
        v15 = 0.0;
      }

      v32[0] = v26;
      v32[1] = v25;
      v20 = 8 * (v8 & 3);
      v21 = *(v32 + v20);
      v31[0] = v28;
      v31[1] = v27;
      v22 = *(v31 + v20) - v21 * v15;
      v29 = v28;
      v30 = v27;
      *(&v29 + v20) = v22;
      v7 = v29;
      v6 = v30;
      *&v23 = v30;
      *(&v23 + 1) = *(&v27 + 1);
      ++v8;
      v12 = v23;
    }

    while (v8 != 3);
  }

  else
  {
    v5 = (v4 + 32 * a2);
    v7 = *v5;
    v6 = v5[1];
  }

  *a3 = v7;
  a3[1] = v6;
}

__n128 geom::point_tree<double,(unsigned char)3>::sides@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    v3 = *(*(a1 + 264) + 24 * a2);
    v4 = (63 - __clz(v3));
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 192) + 32 * v5;
  result = *v6;
  v8 = *(v6 + 16);
  *a3 = *v6;
  a3[1] = v8;
  return result;
}

uint64_t geom::point_tree<double,(unsigned char)3>::node(uint64_t a1, unint64_t *a2)
{
  v12 = 1;
  v4 = std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,64ul>,true,true>(a2, 0, (a2 + 1), 0, &v12);
  result = 0;
  if ((v4 & 1) == 0)
  {
    result = 0;
    if (*a2)
    {
      v6 = __clz(*a2);
      if (v6 != 63)
      {
        result = 0;
        v7 = 63 - v6;
        do
        {
          v8 = *(*(a1 + 240) + 8 * result);
          if (v8 == -1)
          {
            break;
          }

          v9 = 0;
          v10 = 0;
          do
          {
            v11 = v10 & ~(1 << v9);
            v10 |= 1 << v9;
            if ((a2[v9] & (1 << (v7 - 1))) == 0)
            {
              v10 = v11;
            }

            ++v9;
          }

          while (v9 != 3);
          result = v8 + v10;
          --v7;
        }

        while (v7);
      }
    }
  }

  return result;
}

uint64_t geom::point_tree<double,(unsigned char)3>::locate(uint64_t a1, float64x2_t *a2)
{
  v2 = vorr_s8(vmovn_s64(vcgtq_f64(a2[1], *(a1 + 64))), vmovn_s64(vcgtq_f64(*(a1 + 32), a2[1])));
  v3.i64[0] = v2.u32[0];
  v3.i64[1] = v2.u32[1];
  v4 = vcltzq_s64(vshlq_n_s64(v3, 0x3FuLL));
  v5 = vorrq_s8(vcgtq_f64(*a2, *(a1 + 48)), vcgtq_f64(*(a1 + 16), *a2));
  if (((v5.i64[0] | v5.i64[1] | v4.n128_u64[0]) & 0x8000000000000000) != 0)
  {
    return -1;
  }

  if (**(a1 + 240) == -1)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    geom::point_tree<double,(unsigned char)3>::centroid(a1, v8, &v16, v4);
    v4 = vmvnq_s8(vcgeq_f64(*a2, v16));
    v4.n128_u64[0] = vmovn_s64(v4);
    v9 = vuzp1_s16(*&v4, *&v4).i16[1];
    if (a2->f64[0] < v16.f64[0])
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    if (v9)
    {
      v11 = a2->f64[0] >= v16.f64[0];
    }

    else
    {
      v11 = v10;
    }

    v4.n128_u64[0] = *&a2[1].f64[0];
    if (v4.n128_f64[0] >= v17)
    {
      v11 |= 4uLL;
    }

    v12 = *(a1 + 240);
    v13 = *(v12 + 8 * v8);
    v14 = v13 + v11;
    if (v13 == -1)
    {
      v8 = -1;
    }

    else
    {
      v8 = v14;
    }
  }

  while (*(v12 + 8 * v8) != -1);
  return v8;
}

uint64_t geom::point_tree<double,(unsigned char)3>::neighbor(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return -1;
  }

  v3 = (a1[33] + 24 * a2);
  v4 = 63 - __clz(a3);
  if ((a3 & 7) == 0)
  {
    v4 = 0;
  }

  if ((a3 & 1) != (v3[v4] & 1))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v6 & ~(1 << v5);
      v6 |= 1 << v5;
      if ((v3[v5] & 1) == 0)
      {
        v6 = v7;
      }

      ++v5;
    }

    while (v5 != 3);
    if (v4 >= 3)
    {
LABEL_34:
      abort();
    }

    v8 = 1 << v4;
    if ((v6 & v8) != 0)
    {
      v9 = v6 & ~v8;
    }

    else
    {
      v9 = v6 | v8;
    }

    v10 = *(a1[30] + 8 * *(a1[27] + 8 * a2));
    v11 = v10 + v9;
    if (v10 == -1)
    {
      return -1;
    }

    else
    {
      return v11;
    }
  }

  v13 = 63 - __clz(*v3);
  v14 = *v3 && v13 >= 2u;
  if (!v14)
  {
    return -1;
  }

  v15 = v13;
  v16 = 2;
  while (((a3 ^ (v3[v4] >> (v16 - 1))) & 1) == 0)
  {
    v14 = v16++ >= v15;
    if (v14)
    {
      return -1;
    }
  }

  v17 = 0;
  v18 = *v3;
  v21 = v3[2];
  v20 = v18;
  v19 = *(&v20 + v4);
  do
  {
    if (v17 == 64)
    {
      goto LABEL_34;
    }

    if ((v19 & (1 << v17)) != 0)
    {
      v19 &= ~(1 << v17);
    }

    else
    {
      v19 |= 1 << v17;
    }

    ++v17;
    --v16;
  }

  while (v16);
  *(&v20 + v4) = v19;
  return geom::point_tree<double,(unsigned char)3>::node(a1, &v20);
}

uint64_t geom::point_tree<double,(unsigned char)3>::balance(unsigned __int8 *a1)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  v21[0] = &unk_286292E38;
  v21[1] = v19;
  v21[3] = v21;
  geom::point_tree<double,(unsigned char)3>::traverse(a1, 0, v21);
  std::__function::__value_func<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::~__value_func[abi:nn200100](v21);
  v2 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    while (1)
    {
      v3 = *(*(*(&v19[0] + 1) + ((v20 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v20 & 0x1FF));
      *&v20 = v20 + 1;
      *(&v20 + 1) = v2 - 1;
      if (v20 >= 0x400)
      {
        operator delete(**(&v19[0] + 1));
        *(&v19[0] + 1) += 8;
        *&v20 = v20 - 512;
      }

      if (*(*(a1 + 30) + 8 * v3) == -1)
      {
        break;
      }

LABEL_26:
      v2 = *(&v20 + 1);
      if (!*(&v20 + 1))
      {
        goto LABEL_27;
      }
    }

    v4 = 0;
    while (1)
    {
      v5 = geom::point_tree<double,(unsigned char)3>::neighbor(a1, v3, v4);
      if (v5 != -1)
      {
        v6 = v5;
        if (*(*(a1 + 30) + 8 * v5) == -1)
        {
          break;
        }
      }

LABEL_25:
      if (++v4 == 6)
      {
        goto LABEL_26;
      }
    }

    if (v3)
    {
      v7 = *(*(a1 + 33) + 24 * v3);
      v8 = (63 - __clz(v7));
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = 0;
      if (v5)
      {
LABEL_13:
        v10 = *(*(a1 + 33) + 24 * v5);
        v11 = (63 - __clz(v10));
        if (v10)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

LABEL_18:
        if (v9 - v12 >= 2)
        {
          geom::point_tree<double,(unsigned char)3>::split(a1, v5);
          if (*(*(a1 + 30) + 8 * v6) != -1)
          {
            for (i = 0; i != 8; ++i)
            {
              v14 = *(*(a1 + 30) + 8 * v6);
              if (v14 == -1)
              {
                v15 = -1;
              }

              else
              {
                v15 = i + v14;
              }

              v18 = v15;
              std::deque<unsigned long long>::push_back(v19, &v18);
            }
          }
        }

        goto LABEL_25;
      }
    }

    v12 = 0;
    goto LABEL_18;
  }

LABEL_27:
  result = std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v19);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::point_tree<double,(unsigned char)3>::traverse(uint64_t result, int a2, uint64_t a3)
{
  v4 = result;
  if (a2 == 1)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = 0;
    std::deque<unsigned long long>::push_back(&v15, &v14);
    while (*(&v17 + 1))
    {
      v9 = *(*(*(&v15 + 1) + (((v17 + *(&v17 + 1) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v17 + *(&v17 + 1) - 1) & 0x1FF));
      --*(&v17 + 1);
      std::deque<std::pair<unsigned int,unsigned int>>::__maybe_remove_back_spare[abi:nn200100](&v15, 1);
      std::function<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::operator()(a3, v4, v9);
      if (*(v4[30] + 8 * v9) != -1)
      {
        for (i = 7; i != -1; --i)
        {
          v11 = *(v4[30] + 8 * v9);
          if (v11 == -1)
          {
            v12 = -1;
          }

          else
          {
            v12 = i + v11;
          }

          v14 = v12;
          std::deque<unsigned long long>::push_back(&v15, &v14);
        }
      }
    }

    return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v15);
  }

  if (a2 == 2)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = 0;
    std::deque<unsigned long long>::push_back(&v15, &v14);
    while (*(&v17 + 1))
    {
      v5 = *(*(*(&v15 + 1) + ((v17 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v17 & 0x1FF));
      *&v17 = v17 + 1;
      --*(&v17 + 1);
      if (v17 >= 0x400)
      {
        operator delete(**(&v15 + 1));
        *(&v15 + 1) += 8;
        *&v17 = v17 - 512;
      }

      std::function<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::operator()(a3, v4, v5);
      if (*(v4[30] + 8 * v5) != -1)
      {
        for (j = 0; j != 8; ++j)
        {
          v7 = *(v4[30] + 8 * v5);
          if (v7 == -1)
          {
            v8 = -1;
          }

          else
          {
            v8 = j + v7;
          }

          v14 = v8;
          std::deque<unsigned long long>::push_back(&v15, &v14);
        }
      }
    }

    return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v15);
  }

  if (*(result + 224) != *(result + 216))
  {
    v13 = 0;
    do
    {
      result = std::function<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::operator()(a3, v4, v13++);
    }

    while (v13 < (v4[28] - v4[27]) >> 3);
  }

  return result;
}

uint64_t std::function<void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::point_tree<double,(unsigned char)3>::find_closest_point(v5);
}

uint64_t geom::point_tree<double,(unsigned char)3>::find_closest_point(void *a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  __p = 0;
  v8 = 0;
  v9 = 0;
  v6[0] = v2;
  v6[1] = v3;
  geom::point_tree<double,(unsigned char)3>::find_k_nearest(a1, v6, 1u, &__p);
  v4 = *__p;
  v8 = __p;
  operator delete(__p);
  return v4;
}

void geom::point_tree<double,(unsigned char)3>::find_k_nearest(void *a1, _OWORD *a2, unsigned int a3, void *a4)
{
  v78 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = *a2;
    v63 = *a2;
    v64 = *(a2 + 1);
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v66.n128_u64[0] = 0;
    geom::point_tree<double,(unsigned char)3>::centroid(a1, 0, v70, v7);
    v8 = vsubq_f64(v70[0], v63);
    v9 = vsubq_f64(v70[1], v64);
    v66.n128_f64[1] = vmulq_f64(v9, v9).f64[0] + vaddvq_f64(vmulq_f64(v8, v8));
    std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](&v72, &v66);
    std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v72, v73, &v71, (v73 - v72) >> 4);
    v10 = v72;
    v11 = v73;
    if (v72 != v73)
    {
      v12 = *&v64.f64[0];
      v13 = INFINITY;
      do
      {
        v14 = *v10;
        v15 = (v11 - v10) >> 4;
        if (v15 >= 2)
        {
          v16 = 0;
          v66 = *v10;
          v17 = v10;
          do
          {
            v18 = v17;
            v17 += 2 * v16 + 2;
            v19 = 2 * v16;
            v16 = (2 * v16) | 1;
            v20 = v19 + 2;
            if (v20 < v15 && *(v17 + 1) > *(v17 + 3))
            {
              v17 += 2;
              v16 = v20;
            }

            *v18 = *v17;
          }

          while (v16 <= ((v15 - 2) >> 1));
          v21 = (v11 - 2);
          if (v17 == v21)
          {
            v12 = v66;
            *v17 = v66;
          }

          else
          {
            *v17 = *v21;
            *v21 = v66;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v10, (v17 + 2), &v71, ((v17 + 2) - v10) >> 4);
          }

          v11 = v73;
        }

        v73 = v11 - 2;
        if (*(a1[30] + 8 * v14) == -1)
        {
          geom::point_tree<double,(unsigned char)3>::bounds(a1, v14, &v66, v12);
          v29 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v63, v68), v66), v63);
          v30 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v64.f64[0], v69), v67), v64);
          v12 = vmulq_f64(v29, v29);
          v12.n128_f64[0] = vmulq_f64(v30, v30).f64[0] + vaddvq_f64(v12);
          if (v12.n128_f64[0] <= v13 * v13)
          {
            v31 = (a1[36] + 16 * v14);
            v32 = *v31;
            v33 = v31[1];
            if (v32 != v33)
            {
              v34 = a1[21];
              v35 = (v34 + 8 * v33);
              v36 = (v34 + 8 * v32);
              do
              {
                v37 = *v36;
                v38 = (a1[18] + 32 * *v36);
                v39 = vsubq_f64(*v38, v63);
                v40 = vsubq_f64(v38[1], v64);
                v12 = vmulq_f64(v40, v40);
                v41 = v12.n128_f64[0] + vaddvq_f64(vmulq_f64(v39, v39));
                v42 = v75;
                v43 = v76;
                v44 = v76 - v75;
                if (v44 == a3)
                {
                  v12.n128_u64[0] = *&v75->f64[1];
                  if (v41 < v12.n128_f64[0])
                  {
                    if (a3 != 1)
                    {
                      v45 = 0;
                      v66 = *v75;
                      v46 = v75;
                      do
                      {
                        v47 = v46;
                        v46 += v45 + 1;
                        v48 = 2 * v45;
                        v45 = (2 * v45) | 1;
                        v49 = v48 + 2;
                        if (v49 < a3 && v46->n128_f64[1] < v46[1].n128_f64[1])
                        {
                          ++v46;
                          v45 = v49;
                        }

                        *v47 = *v46;
                      }

                      while (v45 <= ((a3 - 2) >> 1));
                      v50 = &v43[-1];
                      if (v46 == v50)
                      {
                        v12 = v66;
                        *v46 = v66;
                      }

                      else
                      {
                        *v46 = *v50;
                        *v50 = v66;
                        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v42, &v46[1], &v71, (&v46[1] - v42) >> 4);
                      }

                      v42 = v75;
                      v43 = v76;
                    }

                    v76 = v43 - 1;
                    v44 = &v43[-1] - v42;
                  }
                }

                if (v44 < a3)
                {
                  v66.n128_f64[0] = v37;
                  v66.n128_f64[1] = v41;
                  std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](&v75, &v66);
                  std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v75, v76, &v71, v76 - v75);
                }

                ++v36;
              }

              while (v36 != v35);
            }

            if (a3 == v76 - v75)
            {
              v13 = v75->f64[1];
            }
          }
        }

        else
        {
          for (i = 0; i != 8; ++i)
          {
            v23 = *(a1[30] + 8 * v14);
            if (v23 == -1)
            {
              v24 = -1;
            }

            else
            {
              v24 = i + v23;
            }

            if (*(a1[36] + 16 * v24 + 8) != *(a1[36] + 16 * v24))
            {
              geom::point_tree<double,(unsigned char)3>::bounds(a1, v24, &v66, v12);
              v25 = vsubq_f64(vmaxnmq_f64(vminnmq_f64(v63, v68), v66), v63);
              v26 = vsubq_f64(vmaxnmq_f64(*&vminnmq_f64(*&v64.f64[0], v69), v67), v64);
              v12 = vmulq_f64(v26, v26);
              v12.n128_f64[0] = v12.n128_f64[0] + vaddvq_f64(vmulq_f64(v25, v25));
              if (v12.n128_f64[0] <= v13 * v13)
              {
                v66.n128_u64[0] = v24;
                geom::point_tree<double,(unsigned char)3>::centroid(a1, v24, v65, v12);
                v27 = vsubq_f64(v65[0], v63);
                v28 = vsubq_f64(v65[1], v64);
                v66.n128_f64[1] = vmulq_f64(v28, v28).f64[0] + vaddvq_f64(vmulq_f64(v27, v27));
                std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](&v72, &v66);
                std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v72, v73, &v71, (v73 - v72) >> 4);
              }
            }
          }
        }

        v10 = v72;
        v11 = v73;
      }

      while (v72 != v73);
    }

    std::vector<double>::resize(a4, v76 - v75);
    v51 = a4[1] - *a4;
    if (v51)
    {
      v52 = v51 >> 3;
      v53 = v76;
      do
      {
        v54 = v75;
        --v52;
        *(*a4 + 8 * v52) = v75->f64[0];
        v55 = v53 - v54;
        if (v55 >= 2)
        {
          v56 = 0;
          v66 = *v54;
          v57 = v54;
          do
          {
            v58 = v57;
            v57 += v56 + 1;
            v59 = 2 * v56;
            v56 = (2 * v56) | 1;
            v60 = v59 + 2;
            if (v60 < v55 && v57->f64[1] < v57[1].f64[1])
            {
              ++v57;
              v56 = v60;
            }

            *v58 = *v57;
          }

          while (v56 <= ((v55 - 2) >> 1));
          v61 = v53 - 1;
          if (v57 == v61)
          {
            *v57 = v66;
          }

          else
          {
            *v57 = *v61;
            *v61 = v66;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(v54, &v57[1], &v71, &v57[1] - v54);
          }

          v53 = v76;
        }

        v76 = --v53;
      }

      while (v52);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }
  }

  else
  {
    a4[1] = *a4;
  }

  v62 = *MEMORY[0x277D85DE8];
}

void geom::point_tree<double,(unsigned char)3>::precompute_cell_data(void *a1)
{
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(a1 + 39, (a1[28] - a1[27]) >> 3);
  if (a1[28] - a1[27] >= 9uLL)
  {
    v3 = 1;
    do
    {
      geom::point_tree<double,(unsigned char)3>::centroid(a1, v3, v4, v2);
      v5[0] = v4[0];
      v5[1] = v4[1];
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_((a1 + 39), v5);
      ++v3;
    }

    while (v3 < (a1[28] - a1[27]) >> 3);
  }
}

void *geom::point_tree<double,(unsigned char)3>::partition(void *result, uint64_t a2, int a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v9 = result;
  if (a3 == 3)
  {
    v10 = *(result[30] + 8 * a2);
    if (v10 == -1)
    {
      v11 = -1;
    }

    else
    {
      v11 = v10 + a4;
    }

    v12 = (result[36] + 16 * v11);
    *v12 = a6;
    v12[1] = a7;
  }

  else
  {
    v13 = *a5;
    v14 = a5[1];
    v15 = result[21];
    if (8 * a6 != 8 * a7)
    {
      v16 = (v15 + 8 * a6);
      v17 = (8 * a7 + v15);
      v18 = result[18];
      v32[0] = *a5;
      v32[1] = v14;
      v19 = *(v32 + (a3 & 3));
LABEL_8:
      while (1)
      {
        v20 = *v16;
        v21 = (v18 + 32 * *v16);
        v22 = v21[1];
        v31[0] = *v21;
        v31[1] = v22;
        if (*(v31 + (a3 & 3)) >= v19)
        {
          break;
        }

        if (++v16 == v17)
        {
          goto LABEL_14;
        }
      }

      while (--v17 != v16)
      {
        v23 = *v17;
        v24 = (v18 + 32 * *v17);
        v25 = v24[1];
        v30[0] = *v24;
        v30[1] = v25;
        if (*(v30 + (a3 & 3)) < v19)
        {
          *v16++ = v23;
          *v17 = v20;
          if (v17 != v16)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

LABEL_14:
    v26 = 1 << a3;
    v27 = a3 + 1;
    v33 = v13;
    v34 = v14;
    v28 = v14;
    v29 = v13;
    geom::point_tree<double,(unsigned char)3>::partition(v9, a2, (a3 + 1), a4 & ~(1 << a3), &v33);
    v33 = v29;
    v34 = v28;
    return geom::point_tree<double,(unsigned char)3>::partition(v9, a2, v27, v26 | a4, &v33);
  }

  return result;
}

void *std::deque<unsigned long long>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<unsigned long long>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<unsigned long long>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned int *>::emplace_back<unsigned int *&>(a1, &v10);
}

uint64_t std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,64ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t std::__function::__func<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292CB8;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*(a2 + 136) + 8 * v3) == -1)
  {
    return std::deque<unsigned long long>::push_back(result[1], &v3);
  }

  return result;
}

uint64_t std::__function::__func<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<geom::point_tree<float,(unsigned char)2>::distance_query_item,std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 8) > v6)
    {
      v9 = *(a2 - 16);
      v7 = a2 - 16;
      v8 = v9;
      v10 = *(v7 + 12);
      do
      {
        v11 = v7;
        v7 = v5;
        *v11 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 8) > v6);
      *v7 = v8;
      *(v7 + 8) = v6;
      *(v7 + 12) = v10;
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 8) < v6)
    {
      v9 = *(a2 - 16);
      v7 = a2 - 16;
      v8 = v9;
      v10 = *(v7 + 12);
      do
      {
        v11 = v7;
        v7 = v5;
        *v11 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 8) < v6);
      *v7 = v8;
      *(v7 + 8) = v6;
      *(v7 + 12) = v10;
    }
  }

  return result;
}

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_2500C1680)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_2500C1680)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

uint64_t std::bitset<64ul>::operator<<=[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x40)
  {
    v4 = 64;
  }

  else
  {
    v4 = a2;
  }

  if (((64 - v4) & 0x3F) == 0)
  {
    v11 = a1;
    v12 = 0;
    v9 = a1 + (((64 - v4) >> 3) & 8);
    v10 = 0;
    v7 = a1 + 8;
    v8 = 0;
    std::__copy_backward_aligned[abi:nn200100]<std::__bitset<1ul,64ul>,false>(&v11, &v9, &v7, v6);
    if (!a2)
    {
      return a1;
    }

    goto LABEL_6;
  }

  v11 = a1;
  v12 = 0;
  v9 = a1 + (((64 - v4) >> 3) & 8);
  v10 = (64 - v4) & 0x3F;
  v7 = a1 + 8;
  v8 = 0;
  std::__copy_backward_unaligned[abi:nn200100]<std::__bitset<1ul,64ul>,false>(&v11, &v9, &v7, v6);
  if (a2)
  {
LABEL_6:
    v11 = a1;
    v12 = 0;
    std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v11, v4);
  }

  return a1;
}

unsigned int *std::__copy_backward_aligned[abi:nn200100]<std::__bitset<1ul,64ul>,false>@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 8);
  v7 = result[2];
  v8 = v6 + 8 * (*a2 - *result) - v7;
  v9 = *a3;
  if (v8 >= 1)
  {
    if (v6)
    {
      v11 = 8 * (*a2 - *result) - v7 < 0;
      if (v8 >= v6)
      {
        v12 = *(a2 + 8);
      }

      else
      {
        v12 = v6 + 8 * (*a2 - *result) - v7;
      }

      v8 -= v12;
      v13 = (-1 << (v6 - v12)) & (0xFFFFFFFFFFFFFFFFLL >> -v6);
      *v9 = *v9 & ~v13 | **a2 & v13;
      *(a3 + 8) = (*(a3 + 8) - v12) & 0x3F;
    }

    if (v8 >= 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = v8 + 63;
    }

    v15 = v14 >> 6;
    *a3 = &v9[-(v14 >> 6)];
    v16 = (*a2 - 8 * (v14 >> 6));
    *a2 = v16;
    if ((v8 + 63) >= 0x7F)
    {
      result = memmove(*a3, v16, 8 * v15);
    }

    if (v8 - (v15 << 6) <= 0)
    {
      v9 = *a3;
    }

    else
    {
      v17 = *(*a2 - 8);
      *a2 -= 8;
      v9 = (*a3 - 8);
      v18 = *v9;
      *a3 = v9;
      *v9 = v18 & ~(-1 << ((v15 << 6) - v8)) | v17 & (-1 << ((v15 << 6) - v8));
      *(a3 + 8) = -v8 & 0x3F;
    }
  }

  *a4 = v9;
  *(a4 + 8) = *(a3 + 8);
  return result;
}

unint64_t std::__copy_backward_unaligned[abi:nn200100]<std::__bitset<1ul,64ul>,false>@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 8);
  v5 = *(result + 8);
  v6 = v4 + 8 * (*a2 - *result) - v5;
  if (v6 <= 0)
  {
    v17 = *(a3 + 8);
  }

  else
  {
    if (v4)
    {
      v7 = 8 * (*a2 - *result) - v5 < 0;
      if (v6 >= v4)
      {
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = v4 + 8 * (*a2 - *result) - v5;
      }

      v6 -= v8;
      v9 = (-1 << (v4 - v8)) & (0xFFFFFFFFFFFFFFFFLL >> -v4) & **a2;
      v10 = *(a3 + 8);
      if (v8 >= v10)
      {
        v11 = *(a3 + 8);
      }

      else
      {
        v11 = v8;
      }

      if (v10)
      {
        v12 = v9 >> (v4 - v10);
        v13 = v10 >= v4;
        v15 = v10 - v4;
        v14 = v15 != 0 && v13;
        v16 = v9 << v15;
        if (!v14)
        {
          v16 = v12;
        }

        **a3 = **a3 & ~((-1 << (v10 - v11)) & (0xFFFFFFFFFFFFFFFFLL >> -v10)) | v16;
        v17 = (v10 - v11) & 0x3F;
        *(a3 + 8) = v17;
        v8 -= v11;
      }

      else
      {
        v17 = 0;
      }

      if (v8 >= 1)
      {
        v19 = (*a3 - 8);
        v18 = *v19;
        *a3 = v19;
        *(a3 + 8) = -v8 & 0x3F;
        v20 = v18 & ~(-1 << -v8);
        v21 = *(a2 + 8) - v8 - v11;
        *(a2 + 8) = v21;
        v17 = *(a3 + 8);
        *v19 = (v9 << (v17 - v21)) | v20;
      }
    }

    else
    {
      v17 = *(a3 + 8);
    }

    v22 = 64 - v17;
    v23 = 0xFFFFFFFFFFFFFFFFLL >> -v17;
    if (v6 < 64)
    {
      v27 = v6;
    }

    else
    {
      do
      {
        v24 = *(*a2 - 8);
        *a2 -= 8;
        v25 = *a3;
        result = v24 >> v22;
        *v25 = **a3 & ~v23 | (v24 >> v22);
        v26 = *--v25;
        *a3 = v25;
        *v25 = v26 & v23 | (v24 << v17);
        v27 = v6 - 64;
        v14 = v6 > 0x7F;
        v6 -= 64;
      }

      while (v14);
    }

    if (v27 >= 1)
    {
      v28 = *(*a2 - 8);
      *a2 -= 8;
      v29 = v28 & (-1 << -v27);
      if (v27 >= v17)
      {
        v30 = v17;
      }

      else
      {
        v30 = v27;
      }

      v31 = (-1 << (v17 - v30)) & v23;
      v32 = *a3;
      **a3 = **a3 & ~v31 | (v29 >> v22);
      v17 = (v17 - v30) & 0x3F;
      *(a3 + 8) = v17;
      if (v27 - v30 >= 1)
      {
        v34 = *(v32 - 1);
        v33 = v32 - 1;
        *a3 = v33;
        v17 = (v30 - v27) & 0x3F;
        *(a3 + 8) = v17;
        *v33 = v34 & ~(-1 << (v30 - v27)) | (v29 << (v27 + ((v30 - v27) & 0x3F)));
      }
    }
  }

  *a4 = *a3;
  *(a4 + 8) = v17;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<std::bitset<64ul>,3ul>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__func<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292D38;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*(a2 + 176) + 8 * v3) == -1)
  {
    return std::deque<unsigned long long>::push_back(result[1], &v3);
  }

  return result;
}

uint64_t std::__function::__func<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<float,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<float,(unsigned char)3> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::array<std::bitset<64ul>,3ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<std::bitset<64ul>,3ul>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
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

uint64_t std::__function::__func<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292DB8;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*(a2 + 176) + 8 * v3) == -1)
  {
    return std::deque<unsigned long long>::push_back(result[1], &v3);
  }

  return result;
}

uint64_t std::__function::__func<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)2>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)2> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 8) > v6)
    {
      v9 = *(a2 - 16);
      v7 = a2 - 16;
      v8 = v9;
      do
      {
        v10 = v7;
        v7 = v5;
        *v10 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 8) > v6);
      *v7 = v8;
      *(v7 + 8) = v6;
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<double,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<double,(unsigned char)2>::distance_query_item*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 8) < v6)
    {
      v9 = *(a2 - 16);
      v7 = a2 - 16;
      v8 = v9;
      do
      {
        v10 = v7;
        v7 = v5;
        *v10 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 8) < v6);
      *v7 = v8;
      *(v7 + 8) = v6;
    }
  }

  return result;
}

uint64_t std::__function::__func<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286292E38;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*(a2 + 240) + 8 * v3) == -1)
  {
    return std::deque<unsigned long long>::push_back(result[1], &v3);
  }

  return result;
}

uint64_t std::__function::__func<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1},std::allocator<geom::point_tree<double,(unsigned char)3>::balance(void)::{lambda(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)#1}>,void ()(geom::point_tree<double,(unsigned char)3> const&,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double geom::catmull_clark_vertex_evaluator<float>::subdivided(uint64_t a1, uint64_t a2, double a3, double a4, float32x4_t a5)
{
  v7 = *(a1 + 4);
  if (*a1 == 1)
  {
    v8.i64[0] = 0x3E0000003E000000;
    v8.i64[1] = 0x3E0000003E000000;
    v9 = vmulq_f32(vaddq_f32(*(a2 + 16 * *(a1 + 8)), *(a2 + 16 * *(a1 + 12))), v8);
    __asm { FMOV            V2.4S, #0.75 }

    *&result = vmlaq_f32(v9, _Q2, *(a2 + 16 * v7)).u64[0];
  }

  else
  {
    v17.i32[2] = 0;
    v17.i64[0] = 0;
    v16.i32[2] = 0;
    v16.i64[0] = 0;
    geom::catmull_clark_vertex_evaluator<float>::compute_edge_and_face_sums(a1, a2, &v16, &v17, 0, a4, a5);
    *&result = vmlaq_n_f32(vmulq_n_f32(vaddq_f32(v16, v17), 1.0 / (*(a1 + 24) * *(a1 + 24))), *(a2 + 16 * v7), (*(a1 + 24) + -2.0) / *(a1 + 24)).u64[0];
  }

  return result;
}

double geom::catmull_clark_vertex_evaluator<float>::limit(uint64_t a1, uint64_t a2, double a3, double a4, float32x4_t a5)
{
  v7 = *(a1 + 4);
  if (*a1 == 1)
  {
    *&result = vmlaq_f32(vmulq_f32(vaddq_f32(*(a2 + 16 * *(a1 + 8)), *(a2 + 16 * *(a1 + 12))), vdupq_n_s32(0x3E2AAAABu)), vdupq_n_s32(0x3F2AAAABu), *(a2 + 16 * v7)).u64[0];
  }

  else
  {
    v13.i32[2] = 0;
    v13.i64[0] = 0;
    v12.i32[2] = 0;
    v12.i64[0] = 0;
    v9 = geom::catmull_clark_vertex_evaluator<float>::compute_edge_and_face_sums(a1, a2, &v12, &v13, 0, a4, a5);
    v9.f32[0] = *(a1 + 24);
    v10.i64[0] = 0x4000000040000000;
    v10.i64[1] = 0x4000000040000000;
    v11 = vaddq_f32(v13, vmlaq_n_f32(vmlaq_f32(vmlaq_n_f32(v12, *(a2 + 16 * v7), v9.f32[0]), v10, v13), vmlaq_n_f32(vmulq_n_f32(vaddq_f32(v12, v13), 1.0 / (v9.f32[0] * v9.f32[0])), *(a2 + 16 * v7), (v9.f32[0] + -2.0) / v9.f32[0]), v9.f32[0] * v9.f32[0]));
    v9.f32[0] = (v9.f32[0] + 5.0) * v9.f32[0];
    *&result = vdivq_f32(v11, vdupq_lane_s32(*v9.f32, 0)).u64[0];
  }

  return result;
}

double geom::catmull_clark_vertex_evaluator<float>::normal(_BYTE *a1, uint64_t a2)
{
  v22 = 0uLL;
  v21 = 0uLL;
  if (a1[1] != 1)
  {
    *v4.i64 = geom::catmull_clark_vertex_evaluator<float>::compute_average_face_normal(a1, a2);
    v20 = v4;
    if (*a1 == 1)
    {
      geom::catmull_clark_vertex_evaluator<float>::compute_xor_boundary_tangents(a1, a2, &v22, &v21);
    }

    else
    {
      geom::catmull_clark_vertex_evaluator<float>::compute_xor_tangents(a1, a2, &v22, &v21);
    }

    v9 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
    v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(v22)), v21, v9);
    v11 = vmulq_f32(v10, v10);
    if (fabsf(v11.f32[1] + (v11.f32[2] + v11.f32[0])) <= 1.0e-10)
    {
      v8 = v20;
    }

    else
    {
      v12 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
      v13 = vmulq_f32(v20, v12);
      v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
      v9.i64[0] = 0;
      v8 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v9, v13), 0), vnegq_f32(v12), v12);
    }

    v15 = vmulq_f32(v8, v8);
    goto LABEL_15;
  }

  if (*a1 == 1)
  {
    geom::catmull_clark_vertex_evaluator<float>::compute_bspline_boundary_tangents(a1, a2, &v22, &v21);
  }

  else
  {
    geom::catmull_clark_vertex_evaluator<float>::compute_bspline_tangents(a1, a2, &v22, &v21);
  }

  v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(v22)), v21, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
  v6 = vmulq_f32(v5, v5);
  v7 = v6.f32[1] + (v6.f32[2] + v6.f32[0]);
  if (fabsf(v7) <= 1.0e-10)
  {
    *v14.i64 = geom::catmull_clark_vertex_evaluator<float>::compute_average_face_normal(a1, a2);
    v8 = v14;
    v15 = vmulq_f32(v14, v14);
LABEL_15:
    v7 = v15.f32[2] + vaddv_f32(*v15.f32);
    goto LABEL_16;
  }

  v8 = vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL);
LABEL_16:
  v16 = v7;
  v17 = vrsqrte_f32(LODWORD(v7));
  v18 = vmul_f32(v17, vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17)));
  *&result = vmulq_n_f32(v8, vmul_f32(v18, vrsqrts_f32(LODWORD(v16), vmul_f32(v18, v18))).f32[0]).u64[0];
  return result;
}

float64_t geom_apply_catmull_clark_subdivision_stencil_3d@<D0>(int a1@<W0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, float64x2_t *a6@<X8>)
{
  geom::catmull_clark_vertex_evaluator<float>::catmull_clark_vertex_evaluator(v11, a1, a3, a5[a4 - 1], a5, a4);
  geom::catmull_clark_vertex_evaluator<double>::subdivided(v11, a2, v10);
  result = v10[0].f64[0];
  v9 = v10[1];
  *a6 = v10[0];
  a6[1] = v9;
  return result;
}

void geom::catmull_clark_vertex_evaluator<double>::subdivided(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v6 = *(a1 + 4);
  if (*a1 == 1)
  {
    v7 = (a2 + 32 * v6);
    v8 = *v7;
    v9 = v7[1];
    v10 = (a2 + 32 * *(a1 + 8));
    v11 = *v10;
    v12 = v10[1];
    v13 = (a2 + 32 * *(a1 + 12));
    __asm { FMOV            V4.2D, #0.125 }

    v19 = vmulq_f64(vaddq_f64(v11, *v13), _Q4);
    v20 = vmulq_f64(vaddq_f64(v12, v13[1]), _Q4);
    __asm { FMOV            V4.2D, #0.75 }

    v22 = vmlaq_f64(v20, _Q4, v9);
    v23 = vmlaq_f64(v19, _Q4, v8);
  }

  else
  {
    v32.f64[0] = 0.0;
    v31 = 0u;
    v30.f64[0] = 0.0;
    v29 = 0u;
    v24 = geom::catmull_clark_vertex_evaluator<double>::compute_edge_and_face_sums(a1, a2, &v29, &v31, 0);
    LODWORD(v24.f64[0]) = *(a1 + 24);
    v24.f64[0] = *&v24.f64[0];
    v25 = (v24.f64[0] + -2.0) / v24.f64[0];
    v26 = 1.0 / (v24.f64[0] * v24.f64[0]);
    v27 = (a2 + 32 * v6);
    v28 = vmulq_n_f64(vaddq_f64(v29, v31), v26);
    v22 = vmlaq_n_f64(vmulq_n_f64(vaddq_f64(v30, v32), v26), v27[1], v25);
    v23 = vmlaq_n_f64(v28, *v27, v25);
  }

  *a3 = v23;
  a3[1] = v22;
}

float64_t geom_apply_catmull_clark_limit_stencil_3d@<D0>(int a1@<W0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, float64x2_t *a6@<X8>)
{
  geom::catmull_clark_vertex_evaluator<float>::catmull_clark_vertex_evaluator(v11, a1, a3, a5[a4 - 1], a5, a4);
  geom::catmull_clark_vertex_evaluator<double>::limit(v11, a2, v10);
  result = v10[0].f64[0];
  v9 = v10[1];
  *a6 = v10[0];
  a6[1] = v9;
  return result;
}

void geom::catmull_clark_vertex_evaluator<double>::limit(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v6 = *(a1 + 4);
  if (*a1 == 1)
  {
    v7 = (a2 + 32 * v6);
    v8 = *v7;
    v9 = v7[1];
    v10 = (a2 + 32 * *(a1 + 8));
    v11 = *v10;
    v12 = v10[1];
    v13 = (a2 + 32 * *(a1 + 12));
    v14 = vaddq_f64(v12, v13[1]);
    v15 = vdupq_n_s64(0x3FC5555555555555uLL);
    v16 = vmulq_f64(vaddq_f64(v11, *v13), v15);
    v17 = vmulq_f64(v14, v15);
    v18 = vdupq_n_s64(0x3FE5555555555555uLL);
    v19 = vmlaq_f64(v17, v18, v9);
    v20 = vmlaq_f64(v16, v18, v8);
  }

  else
  {
    v41.f64[0] = 0.0;
    v40 = 0u;
    v39.f64[0] = 0.0;
    v38 = 0u;
    v21 = geom::catmull_clark_vertex_evaluator<double>::compute_edge_and_face_sums(a1, a2, &v38, &v40, 0);
    LODWORD(v21.f64[0]) = *(a1 + 24);
    v21.f64[0] = *&v21.f64[0];
    v22 = (v21.f64[0] + -2.0) / v21.f64[0];
    v23 = v21.f64[0] * v21.f64[0];
    v24 = 1.0 / (v21.f64[0] * v21.f64[0]);
    v25 = (a2 + 32 * v6);
    v26 = v25[1];
    *&v27 = (v21.f64[0] + 5.0) * v21.f64[0];
    v28 = vmlaq_n_f64(v39, v26, v21.f64[0]);
    v29 = vmlaq_n_f64(v38, *v25, v21.f64[0]);
    __asm { FMOV            V0.2D, #2.0 }

    v35 = vmlaq_n_f64(vmlaq_f64(v28, _Q0, v41), vmlaq_n_f64(vmulq_n_f64(vaddq_f64(v39, v41), v24), v26, v22), v23);
    v36 = vaddq_f64(v40, vmlaq_n_f64(vmlaq_f64(v29, _Q0, v40), vmlaq_n_f64(vmulq_n_f64(vaddq_f64(v38, v40), v24), *v25, v22), v23));
    v37 = vdupq_lane_s64(v27, 0);
    v19 = vdivq_f64(vaddq_f64(v41, v35), v37);
    v20 = vdivq_f64(v36, v37);
  }

  *a3 = v20;
  a3[1] = v19;
}

float64_t geom_apply_catmull_clark_normal_stencil_3d@<D0>(int a1@<W0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, float64x2_t *a6@<X8>)
{
  geom::catmull_clark_vertex_evaluator<float>::catmull_clark_vertex_evaluator(v11, a1, a3, a5[a4 - 1], a5, a4);
  geom::catmull_clark_vertex_evaluator<double>::normal(v11, a2, v10);
  result = v10[0].f64[0];
  v9 = v10[1];
  *a6 = v10[0];
  a6[1] = v9;
  return result;
}

float64x2_t geom::catmull_clark_vertex_evaluator<double>::normal@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  if (a1[1] != 1)
  {
    geom::catmull_clark_vertex_evaluator<double>::compute_average_face_normal(a1, a2, v24);
    v22 = v24[1];
    v23 = v24[0];
    if (*a1 == 1)
    {
      geom::catmull_clark_vertex_evaluator<double>::compute_xor_boundary_tangents(a1, a2, &v28, &v26);
    }

    else
    {
      geom::catmull_clark_vertex_evaluator<double>::compute_xor_tangents(a1, a2, &v28, &v26);
    }

    v12.f64[0] = v29.f64[0];
    v13.f64[0] = v27.f64[0];
    v14 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v29), v26, 1), v27, v28, 1);
    v13.f64[1] = v26.f64[0];
    v12.f64[1] = v28.f64[0];
    v15 = vmlaq_f64(vmulq_f64(v13, vnegq_f64(v28)), v26, v12);
    v16 = vmulq_f64(v15, v15);
    if (fabs(v16.f64[1] + vmulq_f64(v14, v14).f64[0] + v16.f64[0]) > 1.0e-12)
    {
      v9.i64[1] = v15.i64[0];
      v17 = vextq_s8(v15, v15, 8uLL);
      v18 = vmulq_f64(v23, v9);
      v19 = vmulq_f64(v22, v17);
      v18.f64[0] = v19.f64[0] + vaddvq_f64(v18);
      v19.f64[0] = 0.0;
      v20 = vdupq_lane_s64(vcgtq_f64(v19, v18).i64[0], 0);
      v8 = vbslq_s8(v20, vnegq_f64(v9), v9);
      v11 = vbslq_s8(v20, vnegq_f64(v17), v17);
      v9.i64[0] = vextq_s8(v8, v8, 8uLL).u64[0];
      v10 = vmulq_f64(v8, v8);
      v10.f64[0] = vmulq_f64(v11, v11).f64[0] + vaddvq_f64(v10);
      goto LABEL_15;
    }

    v11 = v22;
    v8 = v23;
LABEL_14:
    v9.i64[0] = vextq_s8(v8, v8, 8uLL).u64[0];
    v10 = vmulq_f64(v11, v11);
    v10.f64[0] = v10.f64[0] + vaddvq_f64(vmulq_f64(v8, v8));
    goto LABEL_15;
  }

  if (*a1 == 1)
  {
    geom::catmull_clark_vertex_evaluator<double>::compute_bspline_boundary_tangents(a1, a2, &v28, &v26);
  }

  else
  {
    geom::catmull_clark_vertex_evaluator<double>::compute_bspline_tangents(a1, a2, &v28, &v26);
  }

  v6.f64[0] = v29.f64[0];
  v7.f64[0] = v27.f64[0];
  v8 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v29), v26, 1), v27, v28, 1);
  v7.f64[1] = v26.f64[0];
  v6.f64[1] = v28.f64[0];
  v9 = vmlaq_f64(vmulq_f64(v7, vnegq_f64(v28)), v26, v6);
  v10 = vmulq_f64(v9, v9);
  v10.f64[0] = v10.f64[1] + vmulq_f64(v8, v8).f64[0] + v10.f64[0];
  if (fabs(v10.f64[0]) <= 1.0e-12)
  {
    geom::catmull_clark_vertex_evaluator<double>::compute_average_face_normal(a1, a2, v25);
    v8 = v25[0];
    v11 = v25[1];
    goto LABEL_14;
  }

  v11 = vextq_s8(v9, v9, 8uLL);
LABEL_15:
  v10.f64[0] = 1.0 / sqrt(v10.f64[0]);
  v8.i64[1] = v9.i64[0];
  result = vmulq_n_f64(v8, v10.f64[0]);
  *a3 = result;
  a3[1] = vmulq_f64(v11, v10);
  return result;
}

uint64_t geom::catmull_clark_vertex_evaluator<float>::catmull_clark_vertex_evaluator(uint64_t result, int a2, int *a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  *(result + 4) = a2;
  *(result + 16) = a5;
  *(result + 24) = a6;
  *(result + 32) = a3;
  *(result + 40) = a4;
  v6 = *a5;
  *(result + 2) = v6 == 4;
  if (v6)
  {
    v7 = 1;
    v8 = v6;
    v9 = a3;
    while (1)
    {
      v10 = *v9++;
      if (v10 == a2)
      {
        break;
      }

      ++v7;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    v11 = a3[v7 % v6];
  }

  else
  {
LABEL_5:
    v11 = -1;
  }

  v12 = &a5[a6];
  if (a6 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 - 2);
  }

  v14 = *(v12 - 1);
  v15 = (v14 - v13);
  if (v15 != 4)
  {
    *(result + 2) = 0;
  }

  if (v14 == v13)
  {
LABEL_16:
    v21 = -1;
  }

  else
  {
    v16 = &a3[v13];
    v17 = ~v13 + v14;
    v18 = v15;
    v19 = v16;
    while (1)
    {
      v20 = *v19++;
      if (v20 == a2)
      {
        break;
      }

      ++v17;
      if (!--v18)
      {
        goto LABEL_16;
      }
    }

    v21 = v16[v17 % v15];
  }

  *result = v11 != v21;
  if (v11 == v21)
  {
    *(result + 8) = -1;
    if (a6 == 4 && *a5 == 4 && a5[1] == 8 && a5[2] == 12)
    {
      a5 += 3;
      v22 = 16;
      goto LABEL_29;
    }

LABEL_30:
    v23 = 0;
    goto LABEL_31;
  }

  *(result + 8) = v11;
  *(result + 12) = v21;
  if (a6 != 2)
  {
    if (a6 == 1)
    {
      v22 = 4;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (*a5 != 4)
  {
    goto LABEL_30;
  }

  ++a5;
  v22 = 8;
LABEL_29:
  v23 = *a5 == v22;
LABEL_31:
  *(result + 1) = v23;
  return result;
}

float32x4_t geom::catmull_clark_vertex_evaluator<float>::compute_edge_and_face_sums(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t result, double a6, float32x4_t a7)
{
  result.i64[0] = 0;
  *a4 = 0u;
  *a3 = 0u;
  if (*(a1 + 24))
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + 16);
      if (v7)
      {
        v9 = *(v8 + 4 * v7 - 4);
      }

      else
      {
        v9 = 0;
      }

      v10 = 0uLL;
      v11 = *(v8 + 4 * v7) - v9;
      if (v11)
      {
        v12 = *(a1 + 32) + 4 * v9;
        v13 = *a3;
        v14 = 1;
        v15 = v11;
        v16 = v12;
        do
        {
          v17 = *v16++;
          a7 = *(a2 + 16 * v17);
          if (v17 == *(a1 + 4))
          {
            v18 = v14;
            if (v15 == 1)
            {
              v18 = 0;
            }

            v13 = vaddq_f32(v13, *(a2 + 16 * *(v12 + 4 * v18)));
            *a3 = v13;
          }

          v10 = vaddq_f32(v10, a7);
          ++v14;
          --v15;
        }

        while (v15);
      }

      a7.f32[0] = v11;
      a7 = vdupq_lane_s32(*a7.f32, 0);
      result = vaddq_f32(vdivq_f32(v10, a7), *a4);
      *a4 = result;
      ++v7;
    }

    while (v7 < *(a1 + 24));
  }

  return result;
}

uint64_t geom::catmull_clark_vertex_evaluator<float>::compute_bspline_boundary_tangents(uint64_t result, uint64_t a2, _OWORD *a3, float32x4_t *a4)
{
  *a3 = 0u;
  *a4 = 0u;
  v4 = *(result + 16);
  v5 = *(result + 32);
  v6 = *v4;
  v7 = *(result + 4);
  if (v6)
  {
    v8 = 0;
    while (*(v5 + 4 * v8) != v7)
    {
      if (v6 == ++v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LOBYTE(v8) = 0;
  }

  v9 = *(v5 + 4 * ((v8 + 1) & 3));
  v10 = *(v5 + 4 * ((v8 - 1) & 3));
  v11 = *(result + 24);
  if (v11 == 2)
  {
    v13 = *(v5 + 4 * (v8 & 3 ^ 2));
    v14 = v5 + 4 * v6;
    v15 = v4[1] - v6;
    if (v15)
    {
      v16 = 0;
      while (*(v14 + 4 * v16) != v7)
      {
        if (v15 == ++v16)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      LOBYTE(v16) = 0;
    }

    v17 = *(v14 + 4 * (v16 & 3 ^ 2));
    v18 = *(v14 + 4 * ((v16 - 1) & 3));
    *a3 = vsubq_f32(*(a2 + 16 * v9), *(a2 + 16 * v18));
    __asm
    {
      FMOV            V2.4S, #4.0
      FMOV            V0.4S, #6.0
    }

    v12 = vdivq_f32(vmlaq_f32(vsubq_f32(vsubq_f32(vaddq_f32(*(a2 + 16 * v13), *(a2 + 16 * v17)), *(a2 + 16 * v18)), *(a2 + 16 * v9)), _Q2, vsubq_f32(*(a2 + 16 * v10), *(a2 + 16 * v7))), _Q0);
  }

  else
  {
    if (v11 != 1)
    {
      return result;
    }

    *a3 = vsubq_f32(*(a2 + 16 * v9), *(a2 + 16 * v7));
    v12 = vsubq_f32(*(a2 + 16 * v10), *(a2 + 16 * v7));
  }

  *a4 = v12;
  return result;
}

float32x4_t geom::catmull_clark_vertex_evaluator<float>::compute_bspline_tangents(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v4 = 0;
  v29 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *a4 = 0u;
  v5 = *(a1 + 32);
  v6 = *(a1 + 4);
  __asm { FMOV            V0.4S, #0.25 }

  v12 = v5;
  do
  {
    v13 = 0;
    v24[v4] = 0uLL;
    v14 = 0uLL;
    do
    {
      v15 = *(v12 + 4 * v13);
      if (v15 == v6)
      {
        if (v13 == 3)
        {
          v16 = 0;
        }

        else
        {
          v16 = v13 + 1;
        }

        v24[v4] = vaddq_f32(*(a2 + 16 * v6), *(a2 + 16 * *(v5 + 16 * v4 + 4 * v16)));
      }

      v14 = vaddq_f32(v14, *(a2 + 16 * v15));
      ++v13;
    }

    while (v13 != 4);
    *(&v25 + v4++) = vmulq_f32(v14, _Q0);
    v12 += 16;
  }

  while (v4 != 4);
  v17 = v25;
  v18 = v26;
  v19 = vaddq_f32(v25, vaddq_f32(v24[1], v26));
  __asm { FMOV            V17.4S, #4.0 }

  v21 = vaddq_f32(v28, vmlaq_f32(v27, _Q17, vmulq_f32(vaddq_f32(v27, vaddq_f32(v28, v24[3])), _Q0)));
  *a3 = vsubq_f32(vaddq_f32(v25, vmlaq_f32(v28, _Q17, vmulq_f32(vaddq_f32(vaddq_f32(v24[0], v25), v28), _Q0))), vaddq_f32(v27, vmlaq_f32(v26, _Q17, vmulq_f32(vaddq_f32(v26, vaddq_f32(v24[2], v27)), _Q0))));
  result = vsubq_f32(vaddq_f32(v18, vmlaq_f32(v17, _Q17, vmulq_f32(v19, _Q0))), v21);
  *a4 = result;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

double geom::catmull_clark_vertex_evaluator<float>::compute_average_face_normal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 16 * v2);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *v4;
  if (v6)
  {
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = *(v5 + 4 * v7++);
      if (v9 == v2)
      {
        break;
      }

      if (v6 == v7)
      {
        goto LABEL_8;
      }
    }

    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

LABEL_8:
  v10 = vsubq_f32(*(a2 + 16 * *(v5 + 4 * (v8 % v6))), v3);
  v11 = *(a1 + 24);
  v12 = 0uLL;
  if (v11 < 2)
  {
    v19 = v10;
  }

  else
  {
    v13 = 1;
    do
    {
      v14 = v6;
      v15 = v5 + 4 * v6;
      LODWORD(v6) = v4[v13];
      v16 = (v6 - v14);
      if (v16)
      {
        v17 = 0;
        while (*(v15 + 4 * v17) != v2)
        {
          if (v16 == ++v17)
          {
            goto LABEL_14;
          }
        }

        v18 = (v17 + 1);
      }

      else
      {
LABEL_14:
        v18 = 1;
      }

      v19 = vsubq_f32(*(a2 + 16 * *(v15 + 4 * (v18 - (v18 / v16) * v16))), v3);
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v10)), v19, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
      v12 = vaddq_f32(v12, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL));
      ++v13;
      v10 = v19;
    }

    while (v13 != v11);
  }

  if (*a1)
  {
    v21 = v11 - 1;
    if (v11 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = v4[(v11 - 2)];
    }

    v23 = v5 + 4 * v22;
    v24 = v4[v21] - v22;
    if (v24)
    {
      v25 = 0;
      while (*(v23 + 4 * v25) != v2)
      {
        if (v24 == ++v25)
        {
          goto LABEL_27;
        }
      }

      v26 = v25;
    }

    else
    {
LABEL_27:
      v26 = 0;
    }

    v27 = vsubq_f32(*(a2 + 16 * *(v23 + 4 * ((v24 + v26 - 1) % v24))), v3);
    v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), vnegq_f32(v19)), v27, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
    v12.i64[0] = vaddq_f32(v12, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL)).u64[0];
  }

  return *v12.i64;
}

void geom::catmull_clark_vertex_evaluator<float>::compute_xor_boundary_tangents(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  *a3 = vsubq_f32(*(a2 + 16 * v7), *(a2 + 16 * v8));
  v9 = *(a1 + 24);
  if (v9 == 2)
  {
    v12 = *(a1 + 32);
    v13 = **(a1 + 16);
    v14 = *(a1 + 4);
    if (v13)
    {
      v15 = 0;
      while (*(v12 + 4 * v15) != v14)
      {
        if (v13 == ++v15)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v15 = 0;
    }

    v11 = vsubq_f32(*(a2 + 16 * *(v12 + 4 * ((v13 + v15 - 1) % v13))), *(a2 + 16 * v14));
    goto LABEL_33;
  }

  if (v9 == 1)
  {
    v10.i64[0] = 0xC0000000C0000000;
    v10.i64[1] = 0xC0000000C0000000;
    v11 = vmlaq_f32(vaddq_f32(*(a2 + 16 * v7), *(a2 + 16 * v8)), v10, *(a2 + 16 * *(a1 + 4)));
LABEL_33:
    *a4 = v11;
    return;
  }

  if (*(a1 + 2) != 1)
  {
    v34 = *(a1 + 8);
    v35 = *(a1 + 12);
    v36 = vsubq_f32(*(a2 + 16 * v34), *(a2 + 16 * v35));
    *a3 = v36;
    v36.i32[0] = *(a1 + 24);
    v37 = 3.14159265 / v36.u64[0];
    v38 = 0uLL;
    *a4 = 0u;
    if ((*(a1 + 24) & 0xFFFFFFFE) != 0)
    {
      v39 = 1;
      do
      {
        v40 = (*(a1 + 16) + 4 * v39);
        v41 = *(v40 - 1);
        v42 = *(a1 + 32) + 4 * v41;
        v43 = (*v40 - v41);
        if (v43)
        {
          v44 = 0;
          while (*(v42 + 4 * v44) != *(a1 + 4))
          {
            if (v43 == ++v44)
            {
              goto LABEL_29;
            }
          }

          v45 = (v44 + 1);
        }

        else
        {
LABEL_29:
          v45 = 1;
        }

        v38 = vmlaq_n_f32(v38, *(a2 + 16 * *(v42 + 4 * (v45 - (v45 / v43) * v43))), sinf(v37 * v39));
        *a4 = v38;
        ++v39;
      }

      while (v39 < *(a1 + 24));
    }

    v50 = v38;
    v46 = __sincosf_stret(v37);
    v47 = vmulq_n_f32(v50, (v46.__cosval * 2.0) + -2.0);
    *a4 = v47;
    v11 = vmlaq_n_f32(v47, vaddq_f32(*(a2 + 16 * v34), *(a2 + 16 * v35)), v46.__sinval);
    goto LABEL_33;
  }

  v16 = v9;
  v17 = __sincos_stret(3.14159265 / v9);
  cosval = v17.__cosval;
  sinval = v17.__sinval;
  v20 = (3 * v9) + cosval;
  v21 = -(((cosval * 2.0) + 1.0) * sqrtf(cosval + 1.0)) / (v20 * sqrtf(1.0 - cosval));
  v22 = vmlaq_n_f32(vmulq_n_f32(*(a2 + 16 * v8), v21), *(a2 + 16 * *(a1 + 4)), (sinval * -4.0) / v20);
  *a4 = v22;
  if (*(a1 + 24))
  {
    v23 = 0;
    v24 = 0.0;
    v25 = 1.0 / v20;
    do
    {
      v48 = v22;
      v49 = v21;
      v26 = v23 + 1;
      v27 = sin((v23 + 1) * 3.14159265 / v16);
      v28 = *(a1 + 16);
      if (v23)
      {
        v29 = *(v28 + 4 * v23 - 4);
      }

      else
      {
        v29 = 0;
      }

      v30 = *(a1 + 32) + 4 * v29;
      v31 = *(v28 + 4 * v23) - v29;
      if (v31)
      {
        v32 = 0;
        while (*(v30 + 4 * v32) != *(a1 + 4))
        {
          if (v31 == ++v32)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        LOBYTE(v32) = 0;
      }

      v33 = v27;
      v22 = vmlaq_n_f32(vmlaq_n_f32(v48, *(a2 + 16 * *(v30 + 4 * ((v32 + 1) & 3))), v49), *(a2 + 16 * *(v30 + 4 * (v32 & 3 ^ 2))), v25 * (v24 + v33));
      *a4 = v22;
      v21 = v25 * (v33 * 4.0);
      ++v23;
      v24 = v33;
    }

    while (v26 < *(a1 + 24));
  }
}

void geom::catmull_clark_vertex_evaluator<float>::compute_xor_tangents(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  *a3 = 0u;
  *a4 = 0u;
  v8 = *(a1 + 24);
  v9 = cos(6.28318531 / v8);
  v10 = cos(3.14159265 / v8);
  *v15.i64 = geom::catmull_clark_vertex_evaluator<float>::edge_point(a1, 0, a2, v10, v11, v12, v13, v14);
  v17 = 0uLL;
  v18 = **(a1 + 16);
  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = **(a1 + 16);
    do
    {
      v21 = *v19++;
      v17 = vaddq_f32(v17, *(a2 + 16 * v21));
      --v20;
    }

    while (v20);
  }

  if (v8)
  {
    v22 = 0;
    v23 = v9;
    *v16.i32 = v18;
    v24 = (v23 + 1.0) + v10 * sqrtf((v23 + 9.0) + (v23 + 9.0));
    v25 = vdivq_f32(v17, vdupq_lane_s32(v16, 0));
    v26 = 1.0;
    do
    {
      v45 = v25;
      v46 = v15;
      v27 = v22 + 1;
      if (v22 + 1 == v8)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 + 1;
      }

      v29 = cos(v28 * 6.28318531 / v8);
      *v15.i64 = geom::catmull_clark_vertex_evaluator<float>::edge_point(a1, v28, a2, v29, v30, v31, v32, v33);
      if (v27 == v8)
      {
        v34 = 0;
        v35 = *(a1 + 16);
      }

      else
      {
        v35 = *(a1 + 16);
        v34 = *(v35 + 4 * v22);
      }

      v36 = *(v35 + 4 * v28);
      v37 = 0uLL;
      if (v36 > v34)
      {
        v38 = v36 - v34;
        v39 = (*(a1 + 32) + 4 * v34);
        do
        {
          v40 = *v39++;
          v37 = vaddq_f32(v37, *(a2 + 16 * v40));
          --v38;
        }

        while (v38);
      }

      v41 = v29;
      v42.i32[1] = v46.i32[1];
      *v42.i32 = (v36 - v34);
      v43 = v26 + v41;
      v25 = vdivq_f32(v37, vdupq_lane_s32(v42, 0));
      *a3 = vmlaq_n_f32(vmlaq_n_f32(*a3, v46, v26 * v24), v45, v26 + v41);
      v44 = vmlaq_n_f32(*a4, v15, v26 * v24);
      v26 = v41;
      *a4 = vmlaq_n_f32(v44, v25, v43);
      ++v22;
    }

    while (v27 != v8);
  }
}

double geom::catmull_clark_vertex_evaluator<float>::edge_point(uint64_t a1, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v8 = *(a1 + 4);
  if (a2)
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 4 * (a2 - 1));
  }

  else
  {
    v10 = 0;
    v9 = *(a1 + 16);
  }

  v11 = *(a1 + 32);
  v12 = v11 + 4 * v10;
  v13 = *(v9 + 4 * a2);
  v14 = v13 - v10;
  if (v14)
  {
    v16 = 0;
    v15 = 1;
    while (*(v12 + 4 * v16) != v8)
    {
      if (v14 == ++v16)
      {
        goto LABEL_11;
      }
    }

    v15 = (v16 + 1);
  }

  else
  {
    v15 = 1;
  }

LABEL_11:
  v17 = v15 - (v15 / v14) * v14;
  v18 = (a2 - 1 + *(a1 + 24)) % *(a1 + 24);
  if (a2)
  {
    v19 = *(v9 + 4 * (a2 - 1));
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v12 + 4 * v17);
  v21 = 0uLL;
  if (v13 > v19)
  {
    v22 = v13 - v19;
    v23 = (v11 + 4 * v19);
    do
    {
      v24 = *v23++;
      v21 = vaddq_f32(v21, *(a3 + 16 * v24));
      --v22;
    }

    while (v22);
  }

  if (v18)
  {
    v25 = *(v9 + 4 * (v18 - 1));
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a3 + 16 * v8);
  v27 = *(v9 + 4 * v18);
  v28 = 0uLL;
  if (v27 > v25)
  {
    v29 = v27 - v25;
    v30 = (v11 + 4 * v25);
    do
    {
      v31 = *v30++;
      a8 = *(a3 + 16 * v31);
      v28 = vaddq_f32(v28, a8);
      --v29;
    }

    while (v29);
  }

  a8.f32[0] = (v13 - v19);
  v32 = vdupq_lane_s32(*a8.f32, 0);
  v33 = vdivq_f32(v21, v32);
  v32.f32[0] = (v27 - v25);
  v34 = vaddq_f32(v33, vaddq_f32(vaddq_f32(v26, *(a3 + 16 * v20)), vdivq_f32(v28, vdupq_lane_s32(*v32.f32, 0))));
  __asm { FMOV            V1.4S, #0.25 }

  *&result = vmulq_f32(v34, _Q1).u64[0];
  return result;
}

float64x2_t geom::catmull_clark_vertex_evaluator<double>::compute_edge_and_face_sums(uint64_t a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4, float64x2_t result)
{
  result.f64[0] = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  if (*(a1 + 24))
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 16);
      if (v5)
      {
        v7 = *(v6 + 4 * v5 - 4);
      }

      else
      {
        v7 = 0;
      }

      v8 = 0uLL;
      v9 = 0uLL;
      v10 = *(v6 + 4 * v5) - v7;
      if (v10)
      {
        v11 = *(a1 + 32) + 4 * v7;
        v13 = *a3;
        v12 = a3[1];
        v14 = 1;
        v15 = v10;
        v16 = v11;
        do
        {
          v17 = *v16++;
          v18 = (a2 + 32 * v17);
          v19 = *v18;
          v20 = v18[1];
          if (v17 == *(a1 + 4))
          {
            v21 = v14;
            if (v15 == 1)
            {
              v21 = 0;
            }

            v22 = (a2 + 32 * *(v11 + 4 * v21));
            v13 = vaddq_f64(v13, *v22);
            v12 = vaddq_f64(v12, v22[1]);
            *a3 = v13;
            a3[1] = v12;
          }

          v9 = vaddq_f64(v9, v20);
          v8 = vaddq_f64(v8, v19);
          ++v14;
          --v15;
        }

        while (v15);
      }

      v23 = vdupq_lane_s64(COERCE__INT64(v10), 0);
      v24 = vaddq_f64(vdivq_f64(v9, v23), a4[1]);
      result = vaddq_f64(vdivq_f64(v8, v23), *a4);
      *a4 = result;
      a4[1] = v24;
      ++v5;
    }

    while (v5 < *(a1 + 24));
  }

  return result;
}

uint64_t geom::catmull_clark_vertex_evaluator<double>::compute_bspline_boundary_tangents(uint64_t result, uint64_t a2, _OWORD *a3, float64x2_t *a4)
{
  *a3 = 0u;
  a3[1] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v4 = *(result + 16);
  v5 = *(result + 32);
  v6 = *v4;
  v7 = *(result + 4);
  if (v6)
  {
    v8 = 0;
    while (*(v5 + 4 * v8) != v7)
    {
      if (v6 == ++v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LOBYTE(v8) = 0;
  }

  v9 = *(v5 + 4 * ((v8 + 1) & 3));
  v10 = *(v5 + 4 * ((v8 - 1) & 3));
  v11 = *(result + 24);
  if (v11 == 2)
  {
    v18 = *(v5 + 4 * (v8 & 3 ^ 2));
    v19 = v5 + 4 * v6;
    v20 = v4[1] - v6;
    if (v20)
    {
      v21 = 0;
      while (*(v19 + 4 * v21) != v7)
      {
        if (v20 == ++v21)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      LOBYTE(v21) = 0;
    }

    v22 = (a2 + 32 * *(v19 + 4 * (v21 & 3 ^ 2)));
    v23 = (a2 + 32 * *(v19 + 4 * ((v21 - 1) & 3)));
    v24 = (a2 + 32 * v9);
    v25 = vsubq_f64(v24[1], v23[1]);
    *a3 = vsubq_f64(*v24, *v23);
    a3[1] = v25;
    v26 = (a2 + 32 * v10);
    v27 = (a2 + 32 * v7);
    v28 = vsubq_f64(v26[1], v27[1]);
    v29 = vsubq_f64(*v26, *v27);
    v30 = (a2 + 32 * v18);
    __asm { FMOV            V4.2D, #4.0 }

    v36 = vmlaq_f64(vsubq_f64(vsubq_f64(vaddq_f64(*v30, *v22), *v23), *v24), _Q4, v29);
    v37 = vmlaq_f64(vsubq_f64(vsubq_f64(vaddq_f64(v30[1], v22[1]), v23[1]), v24[1]), _Q4, v28);
    __asm { FMOV            V1.2D, #6.0 }

    v16 = vdivq_f64(v37, _Q1);
    v17 = vdivq_f64(v36, _Q1);
  }

  else
  {
    if (v11 != 1)
    {
      return result;
    }

    v12 = (a2 + 32 * v9);
    v13 = (a2 + 32 * v7);
    v14 = vsubq_f64(v12[1], v13[1]);
    *a3 = vsubq_f64(*v12, *v13);
    a3[1] = v14;
    v15 = (a2 + 32 * v10);
    v16 = vsubq_f64(v15[1], v13[1]);
    v17 = vsubq_f64(*v15, *v13);
  }

  *a4 = v17;
  a4[1] = v16;
  return result;
}

float64x2_t geom::catmull_clark_vertex_evaluator<double>::compute_bspline_tangents(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v4 = 0;
  v46 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  a3[1] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v5 = *(a1 + 32);
  v6 = *(a1 + 4);
  v7 = (a2 + 32 * v6);
  __asm { FMOV            V0.2D, #0.25 }

  v13 = v5;
  do
  {
    v14 = 0;
    v15 = &v37[2 * v4];
    *v15 = 0uLL;
    v15[1] = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *(v13 + 4 * v14);
      if (v18 == v6)
      {
        if (v14 == 3)
        {
          v19 = 0;
        }

        else
        {
          v19 = v14 + 1;
        }

        v20 = (a2 + 32 * *(v5 + 16 * v4 + 4 * v19));
        v21 = vaddq_f64(v7[1], v20[1]);
        *v15 = vaddq_f64(*v7, *v20);
        v15[1] = v21;
      }

      v22 = (a2 + 32 * v18);
      v17 = vaddq_f64(v17, v22[1]);
      v16 = vaddq_f64(v16, *v22);
      ++v14;
    }

    while (v14 != 4);
    v23 = &v38 + 2 * v4;
    *v23 = vmulq_f64(v16, _Q0);
    v23[1] = vmulq_f64(v17, _Q0);
    ++v4;
    v13 += 16;
  }

  while (v4 != 4);
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = vaddq_f64(v38, vaddq_f64(v37[2], v40));
  v29 = vaddq_f64(v39, vaddq_f64(v37[3], v41));
  __asm { FMOV            V25.2D, #4.0 }

  v31 = vaddq_f64(v44, vmlaq_f64(v42, _Q25, vmulq_f64(vaddq_f64(v42, vaddq_f64(v44, v37[6])), _Q0)));
  v32 = vaddq_f64(v45, vmlaq_f64(v43, _Q25, vmulq_f64(vaddq_f64(v43, vaddq_f64(v45, v37[7])), _Q0)));
  v33 = vsubq_f64(vaddq_f64(v39, vmlaq_f64(v45, _Q25, vmulq_f64(vaddq_f64(vaddq_f64(v37[1], v39), v45), _Q0))), vaddq_f64(v43, vmlaq_f64(v41, _Q25, vmulq_f64(vaddq_f64(v41, vaddq_f64(v37[5], v43)), _Q0))));
  *a3 = vsubq_f64(vaddq_f64(v38, vmlaq_f64(v44, _Q25, vmulq_f64(vaddq_f64(vaddq_f64(v37[0], v38), v44), _Q0))), vaddq_f64(v42, vmlaq_f64(v40, _Q25, vmulq_f64(vaddq_f64(v40, vaddq_f64(v37[4], v42)), _Q0))));
  a3[1] = v33;
  v34 = vmlaq_f64(v24, _Q25, vmulq_f64(v28, _Q0));
  result = vsubq_f64(vaddq_f64(v27, vmlaq_f64(v25, _Q25, vmulq_f64(v29, _Q0))), v32);
  *a4 = vsubq_f64(vaddq_f64(v26, v34), v31);
  a4[1] = result;
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::catmull_clark_vertex_evaluator<double>::compute_average_face_normal@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = *(result + 4);
  v4 = (a2 + 32 * v3);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(result + 16);
  v8 = *(result + 32);
  v9 = *v7;
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    while (1)
    {
      v12 = *(v8 + 4 * v10++);
      if (v12 == v3)
      {
        break;
      }

      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

LABEL_8:
  v13 = (a2 + 32 * *(v8 + 4 * (v11 % v9)));
  v14 = vsubq_f64(v13[1], v5);
  v15 = vsubq_f64(*v13, v6);
  v16 = *(result + 24);
  v17 = 0uLL;
  if (v16 < 2)
  {
    v27 = v15;
    v26 = v14;
    v19 = 0uLL;
  }

  else
  {
    v18 = 1;
    v19 = 0uLL;
    do
    {
      v20 = v9;
      v21 = v8 + 4 * v9;
      LODWORD(v9) = v7[v18];
      v22 = (v9 - v20);
      if (v22)
      {
        v23 = 0;
        while (*(v21 + 4 * v23) != v3)
        {
          if (v22 == ++v23)
          {
            goto LABEL_14;
          }
        }

        v24 = (v23 + 1);
      }

      else
      {
LABEL_14:
        v24 = 1;
      }

      v25 = (a2 + 32 * *(v21 + 4 * (v24 - (v24 / v22) * v22)));
      v26 = vsubq_f64(v25[1], v5);
      v27 = vsubq_f64(*v25, v6);
      v28.f64[0] = v26.f64[0];
      v28.f64[1] = v27.f64[0];
      v29 = vnegq_f64(v14);
      v14.f64[1] = v15.f64[0];
      *&v29.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(v29, v27, 1), v26, v15, 1);
      v30 = vmlaq_f64(vmulq_f64(v28, vnegq_f64(v15)), v27, v14);
      *&v29.f64[1] = v30.i64[0];
      v17 = vaddq_f64(v17, v29);
      v19 = vaddq_f64(v19, vdupq_laneq_s64(v30, 1));
      ++v18;
      v15 = v27;
      v14 = v26;
    }

    while (v18 != v16);
  }

  if (*result)
  {
    v31 = v16 - 1;
    if (v16 == 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = v7[(v16 - 2)];
    }

    v33 = v8 + 4 * v32;
    v34 = v7[v31] - v32;
    if (v34)
    {
      v35 = 0;
      while (*(v33 + 4 * v35) != v3)
      {
        if (v34 == ++v35)
        {
          goto LABEL_27;
        }
      }

      v36 = v35;
    }

    else
    {
LABEL_27:
      v36 = 0;
    }

    v37 = (a2 + 32 * *(v33 + 4 * ((v34 + v36 - 1) % v34)));
    v38 = vsubq_f64(*v37, v6);
    v39 = vsubq_f64(v37[1], v5);
    v40.f64[0] = v39.f64[0];
    v40.f64[1] = v38.f64[0];
    *&v41.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v26), v38, 1), v39, v27, 1);
    v26.f64[1] = v27.f64[0];
    v42 = vmlaq_f64(vmulq_f64(v40, vnegq_f64(v27)), v38, v26);
    *&v41.f64[1] = v42.i64[0];
    v17 = vaddq_f64(v17, v41);
    v19 = vaddq_f64(v19, vdupq_laneq_s64(v42, 1));
  }

  *a3 = v17;
  a3[1] = v19;
  return result;
}

void geom::catmull_clark_vertex_evaluator<double>::compute_xor_boundary_tangents(uint64_t a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4)
{
  v7 = (a2 + 32 * *(a1 + 8));
  v8 = (a2 + 32 * *(a1 + 12));
  v9 = vsubq_f64(v7[1], v8[1]);
  *a3 = vsubq_f64(*v7, *v8);
  a3[1] = v9;
  v10 = *(a1 + 24);
  if (v10 == 2)
  {
    v21 = *(a1 + 32);
    v22 = **(a1 + 16);
    v23 = *(a1 + 4);
    if (v22)
    {
      v24 = 0;
      while (*(v21 + 4 * v24) != v23)
      {
        if (v22 == ++v24)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v24 = 0;
    }

    v25 = (a2 + 32 * *(v21 + 4 * ((v22 + v24 - 1) % v22)));
    v26 = *v25;
    v27 = v25[1];
    v28 = (a2 + 32 * v23);
    v19 = vsubq_f64(v27, v28[1]);
    v20 = vsubq_f64(v26, *v28);
    goto LABEL_35;
  }

  if (v10 == 1)
  {
    v11 = vaddq_f64(*v7, *v8);
    v12 = vaddq_f64(v7[1], v8[1]);
    v13 = (a2 + 32 * *(a1 + 4));
    __asm { FMOV            V4.2D, #-2.0 }

    v19 = vmlaq_f64(v12, _Q4, v13[1]);
    v20 = vmlaq_f64(v11, _Q4, *v13);
LABEL_35:
    *a4 = v20;
    a4[1] = v19;
    return;
  }

  if (*(a1 + 2) != 1)
  {
    v52 = (a2 + 32 * *(a1 + 8));
    v53 = (a2 + 32 * *(a1 + 12));
    v54 = vsubq_f64(v52[1], v53[1]);
    *a3 = vsubq_f64(*v52, *v53);
    a3[1] = v54;
    LODWORD(v54.f64[0]) = *(a1 + 24);
    v55 = 3.14159265 / *&v54.f64[0];
    v56 = 0uLL;
    *a4 = 0u;
    a4[1] = 0u;
    if ((*(a1 + 24) & 0xFFFFFFFE) != 0)
    {
      v57 = 1;
      v73 = 0u;
      do
      {
        v58 = (*(a1 + 16) + 4 * v57);
        v59 = *(v58 - 1);
        v60 = *(a1 + 32) + 4 * v59;
        v61 = (*v58 - v59);
        v75 = v56;
        if (v61)
        {
          v62 = 0;
          while (*(v60 + 4 * v62) != *(a1 + 4))
          {
            if (v61 == ++v62)
            {
              goto LABEL_29;
            }
          }

          v63 = (v62 + 1);
        }

        else
        {
LABEL_29:
          v63 = 1;
        }

        v64 = (a2 + 32 * *(v60 + 4 * (v63 - (v63 / v61) * v61)));
        v65 = sin(v55 * v57);
        v56 = vmlaq_n_f64(v75, *v64, v65);
        v73 = vmlaq_n_f64(v73, v64[1], v65);
        *a4 = v56;
        a4[1] = v73;
        ++v57;
      }

      while (v57 < *(a1 + 24));
    }

    else
    {
      v73 = 0u;
    }

    v76 = v56;
    v67 = __sincos_stret(v55);
    v66.f64[0] = v67.__sinval;
    v68.f64[0] = v67.__cosval * 2.0 + -2.0;
    v69 = vmulq_n_f64(v76, v68.f64[0]);
    v70 = vmulq_f64(v68, v73);
    *a4 = v69;
    a4[1] = v70;
    v19 = vmlaq_f64(v70, vaddq_f64(v52[1], v53[1]), v66);
    v20 = vmlaq_n_f64(v69, vaddq_f64(*v52, *v53), v67.__sinval);
    goto LABEL_35;
  }

  v29 = v10;
  v30 = __sincos_stret(3.14159265 / v10);
  v31 = v30.__cosval + (3 * v10);
  v32 = v30.__sinval * -4.0 / v31;
  v33 = -((v30.__cosval * 2.0 + 1.0) * sqrt(v30.__cosval + 1.0)) / (v31 * sqrt(1.0 - v30.__cosval));
  v34 = (a2 + 32 * *(a1 + 4));
  v35 = vmlaq_n_f64(vmulq_n_f64(*v8, v33), *v34, v32);
  v36 = vmlaq_n_f64(vmulq_n_f64(v8[1], v33), v34[1], v32);
  *a4 = v35;
  a4[1] = v36;
  if (*(a1 + 24))
  {
    v37 = 0;
    v38 = 0.0;
    v39 = 1.0 / v31;
    do
    {
      v71 = v35;
      v72 = v36;
      v74 = v33;
      v40 = v37 + 1;
      v41 = sin((v37 + 1) * 3.14159265 / v29);
      v42 = *(a1 + 16);
      if (v37)
      {
        v43 = *(v42 + 4 * v37 - 4);
      }

      else
      {
        v43 = 0;
      }

      v44 = *(a1 + 32) + 4 * v43;
      v45 = *(v42 + 4 * v37) - v43;
      if (v45)
      {
        v46 = 0;
        while (*(v44 + 4 * v46) != *(a1 + 4))
        {
          if (v45 == ++v46)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        LOBYTE(v46) = 0;
      }

      v47 = v39 * (v38 + v41);
      v48 = *(v44 + 4 * ((v46 + 1) & 3));
      v49 = *(v44 + 4 * (v46 & 3 ^ 2));
      v50 = (a2 + 32 * v48);
      v51 = (a2 + 32 * v49);
      v35 = vmlaq_n_f64(vmlaq_n_f64(v71, *v50, v74), *v51, v47);
      v36 = vmlaq_n_f64(vmlaq_n_f64(v72, v50[1], v74), v51[1], v47);
      *a4 = v35;
      a4[1] = v36;
      v33 = v39 * (v41 * 4.0);
      ++v37;
      v38 = v41;
    }

    while (v40 < *(a1 + 24));
  }
}

void geom::catmull_clark_vertex_evaluator<double>::compute_xor_tangents(uint64_t a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4)
{
  *a3 = 0u;
  a3[1] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v8 = *(a1 + 24);
  v9 = cos(6.28318531 / v8);
  v10 = cos(3.14159265 / v8);
  geom::catmull_clark_vertex_evaluator<double>::edge_point(a1, 0, a2, v53);
  v11 = **(a1 + 16);
  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = 0uLL;
    v14 = **(a1 + 16);
    v15 = 0uLL;
    do
    {
      v16 = *v12++;
      v17 = (a2 + 32 * v16);
      v15 = vaddq_f64(v15, v17[1]);
      v13 = vaddq_f64(v13, *v17);
      --v14;
    }

    while (v14);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v15 = 0uLL;
    v13 = 0uLL;
    if (!v8)
    {
      return;
    }
  }

  v18 = 0;
  v19 = v9;
  v20 = (v19 + 1.0) + v10 * sqrtf((v19 + 9.0) + (v19 + 9.0));
  v22 = v53[0];
  v21 = v53[1];
  v23 = vdupq_lane_s64(COERCE__INT64(v11), 0);
  v24 = vdivq_f64(v15, v23);
  v25 = vdivq_f64(v13, v23);
  v26 = v20;
  v27 = 1.0;
  do
  {
    v48 = v22;
    v49 = v25;
    v50 = v24;
    v51 = v21;
    v28 = v18 + 1;
    if (v18 + 1 == v8)
    {
      v29 = 0;
    }

    else
    {
      v29 = v18 + 1;
    }

    v30 = cos(v29 * 6.28318531 / v8);
    geom::catmull_clark_vertex_evaluator<double>::edge_point(a1, v29, a2, v52);
    if (v28 == v8)
    {
      v33 = 0;
      v34 = *(a1 + 16);
    }

    else
    {
      v34 = *(a1 + 16);
      v33 = *(v34 + 4 * v18);
    }

    v36 = v52[0];
    v35 = v52[1];
    v37 = *(v34 + 4 * v29);
    v38 = 0uLL;
    v39 = 0uLL;
    v40.f64[1] = v48.f64[1];
    if (v37 > v33)
    {
      v41 = v37 - v33;
      v42 = (*(a1 + 32) + 4 * v33);
      do
      {
        v43 = *v42++;
        v44 = (a2 + 32 * v43);
        v31 = *v44;
        v39 = vaddq_f64(v39, v44[1]);
        v38 = vaddq_f64(v38, *v44);
        --v41;
      }

      while (v41);
    }

    *v31.f64 = v27 * v26;
    v31.f64[0] = *v31.f64;
    v40.f64[0] = (v37 - v33);
    *v32.f64 = v27 + v30;
    v32.f64[0] = *v32.f64;
    v25 = vdivq_f64(v38, vdupq_lane_s64(*&v40.f64[0], 0));
    v45 = vmlaq_n_f64(vmlaq_n_f64(a3[1], v51, v31.f64[0]), v50, v32.f64[0]);
    v24 = vdivq_f64(v39, v40);
    *a3 = vmlaq_n_f64(vmlaq_n_f64(*a3, v48, v31.f64[0]), v49, v32.f64[0]);
    a3[1] = v45;
    v46 = vmlaq_f64(vmlaq_f64(a4[1], v35, v31), v24, v32);
    v47 = vmlaq_n_f64(vmlaq_n_f64(*a4, v36, v31.f64[0]), v25, v32.f64[0]);
    v27 = v30;
    v22 = v36;
    v21 = v35;
    *a4 = v47;
    a4[1] = v46;
    ++v18;
  }

  while (v28 != v8);
}

float64x2_t geom::catmull_clark_vertex_evaluator<double>::edge_point@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, float64x2_t *a4@<X8>)
{
  v4 = *(a1 + 4);
  if (a2)
  {
    v5 = *(a1 + 16);
    v6 = *(v5 + 4 * (a2 - 1));
  }

  else
  {
    v6 = 0;
    v5 = *(a1 + 16);
  }

  v7 = *(a1 + 32);
  v8 = v7 + 4 * v6;
  v9 = *(v5 + 4 * a2);
  v10 = v9 - v6;
  if (v10)
  {
    v12 = 0;
    v11 = 1;
    while (*(v8 + 4 * v12) != v4)
    {
      if (v10 == ++v12)
      {
        goto LABEL_11;
      }
    }

    v11 = (v12 + 1);
  }

  else
  {
    v11 = 1;
  }

LABEL_11:
  v13 = *(v8 + 4 * (v11 - (v11 / v10) * v10));
  v14 = (a2 - 1 + *(a1 + 24)) % *(a1 + 24);
  if (a2)
  {
    v15 = *(v5 + 4 * (a2 - 1));
  }

  else
  {
    v15 = 0;
  }

  v16 = 0uLL;
  v17 = 0uLL;
  if (v9 > v15)
  {
    v18 = v9 - v15;
    v19 = (v7 + 4 * v15);
    do
    {
      v20 = *v19++;
      v21 = (a3 + 32 * v20);
      v17 = vaddq_f64(v17, v21[1]);
      v16 = vaddq_f64(v16, *v21);
      --v18;
    }

    while (v18);
  }

  v22 = (a3 + 32 * v4);
  v23 = (a3 + 32 * v13);
  if (v14)
  {
    v24 = *(v5 + 4 * (v14 - 1));
  }

  else
  {
    v24 = 0;
  }

  v25 = *v23;
  v26 = v23[1];
  v27 = *(v5 + 4 * v14);
  v28 = 0uLL;
  v29 = 0uLL;
  if (v27 > v24)
  {
    v30 = v27 - v24;
    v31 = (v7 + 4 * v24);
    do
    {
      v32 = *v31++;
      v33 = (a3 + 32 * v32);
      v29 = vaddq_f64(v29, v33[1]);
      v28 = vaddq_f64(v28, *v33);
      --v30;
    }

    while (v30);
  }

  v34 = vdupq_lane_s64(COERCE__INT64((v9 - v15)), 0);
  v35 = vdivq_f64(v16, v34);
  v36 = vdivq_f64(v17, v34);
  v37 = vdupq_lane_s64(COERCE__INT64((v27 - v24)), 0);
  __asm { FMOV            V2.2D, #0.25 }

  result = vmulq_f64(vaddq_f64(v35, vaddq_f64(vaddq_f64(*v22, v25), vdivq_f64(v28, v37))), _Q2);
  v44 = vmulq_f64(vaddq_f64(v36, vaddq_f64(vaddq_f64(v22[1], v26), vdivq_f64(v29, v37))), _Q2);
  *a4 = result;
  a4[1] = v44;
  return result;
}

uint64_t geom_sparse_linear_solver_create_f(int a1, int a2)
{
  v4 = geom_sparse_linear_solver_f_obj_alloc();
  geom::sparse_linear_solver<float>::sparse_linear_solver(v4 + 16, a1, a2);
  return v4;
}

uint64_t geom_sparse_linear_solver_create_d(int a1, int a2)
{
  v4 = geom_sparse_linear_solver_d_obj_alloc();
  geom::sparse_linear_solver<float>::sparse_linear_solver(v4 + 16, a1, a2);
  return v4;
}

uint64_t geom::z_order_code(double a1)
{
  v1 = WORD2(a1) | (HIDWORD(a1) << 16) & 0xFFFF0000FFFFLL;
  v2 = (v1 | (v1 << 8)) & 0xF000F000F000FLL | (16 * ((v1 | (v1 << 8)) & 0xFF00FF00FF00FFLL)) & 0xF0F0F0F0F0F0F0FLL;
  v3 = LOWORD(a1) | (LODWORD(a1) << 16) & 0xFFFF0000FFFFLL;
  v4 = (v3 | (v3 << 8)) & 0xF000F000F000FLL | (16 * ((v3 | (v3 << 8)) & 0xFF00FF00FF00FFLL)) & 0xF0F0F0F0F0F0F0FLL;
  return (v4 | (4 * v4)) & 0x1111111111111111 | (2 * ((v4 | (4 * v4)) & 0x3333333333333333)) & 0x5555555555555555 | (2 * ((v2 | (4 * v2)) & 0x1111111111111111 | (2 * ((v2 | (4 * v2)) & 0x3333333333333333)) & 0x5555555555555555));
}

{
  v1 = (LOBYTE(a1) | (LOWORD(a1) << 24)) & 0xF0000000FLL | ((LOBYTE(a1) | (LOWORD(a1) << 24)) << 12);
  v2 = (BYTE4(a1) | (WORD2(a1) << 24)) & 0xF0000000FLL | ((BYTE4(a1) | (WORD2(a1) << 24)) << 12) & 0xF000F000F000FLL;
  v3.i32[0] = HIWORD(a1);
  v3.i32[1] = WORD1(a1);
  v4.i64[0] = HIWORD(a1);
  v4.i64[1] = WORD1(a1);
  v5.i64[0] = 0xFF00000000;
  v5.i64[1] = 0xFF00000000;
  v6 = vandq_s8(vshlq_n_s64(v4, 0x18uLL), v5);
  v7 = vand_s8(v3, 0xFF000000FFLL);
  v4.i64[0] = v7.u32[0];
  v4.i64[1] = v7.u32[1];
  v8 = vorrq_s8(v6, v4);
  v9 = vorrq_s8((*&vshlq_n_s64(v8, 0xCuLL) & __PAIR128__(0xFFFF0FFFFFFF0FFFLL, 0xFFFF0FFFFFFF0FFFLL)), (*&v8 & __PAIR128__(0xFFFFFF0FFFFFFF0FLL, 0xFFFFFF0FFFFFFF0FLL)));
  v10 = vorrq_s8((*&vshlq_n_s64(v9, 6uLL) & __PAIR128__(0xFF3FFF3FFF3FFF3FLL, 0xFF3FFF3FFF3FFF3FLL)), (*&v9 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)));
  v5.i64[0] = 0x1010101010101010;
  v5.i64[1] = 0x1010101010101010;
  v11 = vandq_s8(vshlq_n_s64(v10, 3uLL), v5);
  v5.i64[0] = 0x101010101010101;
  v5.i64[1] = 0x101010101010101;
  v12 = vshlq_u64(vorrq_s8(v11, vandq_s8(v10, v5)), xmmword_2500CBA50);
  return v12.i64[0] | (4 * ((v2 | (v2 << 6) | (8 * (v2 | (v2 << 6)))) & 0x1111111111111111)) | v1 & 0x1000100010001 | ((v1 & 0xF000F000F000FLL) << 6) & 0x1111111111111111 | (8 * (v1 & 0xF000F000F000FLL | ((v1 & 0xF000F000F000FLL) << 6))) & 0x1111111111111111 | v12.i64[1];
}

uint64_t geom::z_order_code(unsigned int a1)
{
  return (4 * ((16 * (a1 | (BYTE1(a1) << 16))) & 0xF000F00 | a1 & 0xF | (BYTE1(a1) << 16) & 0xF000F)) & 0x10101010 | (16 * (a1 | (BYTE1(a1) << 16))) & 0x1000100 | a1 & 1 | (BYTE1(a1) << 16) & 0x10001 | (2 * ((4 * ((16 * (a1 | (BYTE1(a1) << 16))) & 0xF000F00 | a1 & 0xF | (BYTE1(a1) << 16) & 0xF000F)) & 0x30303030 | (16 * (a1 | (BYTE1(a1) << 16))) & 0x3000300 | a1 & 3 | (BYTE1(a1) << 16) & 0x30003)) & 0x44444444 | (2 * ((2 * ((4 * ((16 * ((a1 >> 8) & 0xFF0000 | BYTE2(a1))) & 0xF000F00 | (a1 >> 8) & 0xF0000 | BYTE2(a1) & 0xF)) & 0x30303030 | (16 * ((a1 >> 8) & 0xFF0000 | BYTE2(a1))) & 0x3000300 | (a1 >> 8) & 0x30000 | BYTE2(a1) & 3)) & 0x44444444 | (4 * ((16 * ((a1 >> 8) & 0xFF0000 | BYTE2(a1))) & 0xF000F00 | (a1 >> 8) & 0xF0000 | BYTE2(a1) & 0xF)) & 0x10101010 | (16 * ((a1 >> 8) & 0xFF0000 | BYTE2(a1))) & 0x1000100 | (a1 >> 8) & 0x10000 | BYTE2(a1) & 1));
}

{
  v1 = (a1 >> 4) & 0xF00 | (a1 >> 8) & 0xF;
  v2 = a1 & 0xF | (a1 >> 4 << 8);
  return (v2 | (4 * v2)) & 0xD1D1D1D1 | (2 * ((v2 | (4 * v2)) & 0xF3F3F3F3)) & 0xDDDDDDDD | (2 * ((v1 | (4 * v1)) & 0xD1D1D1D1 | (2 * ((v1 | (4 * v1)) & 0xF3F3F3F3)) & 0xDDDDDDDD));
}

unint64_t geom::z_order_code(int32x2_t a1)
{
  v1 = (a1.u8[0] | (a1.u16[0] << 16)) & 0xFF0000FF;
  v2 = (v1 | (v1 << 8)) & 0x3003003003 | (16 * ((v1 | (v1 << 8)) & 0xF00F00F00FLL)) & 0xC30C30C30C3;
  a1.i32[0] = a1.u16[1];
  a1.i32[1] = a1.u16[2];
  v3 = vorr_s8((*&vshl_n_s32(a1, 0x10uLL) & 0xFF00FFFFFF00FFFFLL), vand_s8(a1, 0xFF000000FFLL));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5 = vextq_s8(v4, v4, 8uLL);
  v6 = vorrq_s8(vandq_s8(vshlq_n_s64(v5, 8uLL), vdupq_n_s64(0xF00000F000uLL)), vandq_s8(v5, vdupq_n_s64(0xF00000FuLL)));
  v7 = vorrq_s8(vandq_s8(vshlq_n_s64(v6, 4uLL), vdupq_n_s64(0xC00C00C00C0uLL)), vandq_s8(v6, vdupq_n_s64(0x3003003003uLL)));
  v8 = vshlq_u64(vorrq_s8(vandq_s8(vshlq_n_s64(v7, 2uLL), vdupq_n_s64(0x208208208208uLL)), vandq_s8(v7, vdupq_n_s64(0x41041041041uLL))), xmmword_2500CBA40);
  return vorrq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0] | (v2 | (4 * v2)) & 0x249249249249;
}

uint64_t geom::z_order_code(int a1)
{
  v1 = a1 & 0xF | (a1 >> 4 << 12);
  v2.i32[0] = BYTE1(a1);
  v2.i32[1] = BYTE2(a1);
  v3 = vand_s8(v2, 0xFF000000FFLL);
  v4 = vorr_s8((*&vshl_n_s32(v3, 8uLL) & 0xFFFFF0FFFFFFF0FFLL), (*&v3 & 0xFFFFFF0FFFFFFF0FLL));
  v5 = vorr_s8(vand_s8(vshl_n_s32(v4, 4uLL), vdup_n_s32(0xC00C0u)), vand_s8(v4, vdup_n_s32(0x3003u)));
  v6 = vshl_u32(vorr_s8(vand_s8(vshl_n_s32(v5, 2uLL), vdup_n_s32(0x208208u)), vand_s8(v5, vdup_n_s32(0x41041u))), 0x200000001);
  return vorr_s8(vdup_lane_s32(v6, 1), v6).u32[0] | (v1 | (16 * v1)) & 0x41041 | (4 * ((v1 | (16 * v1)) & 0xC30C3)) & 0x249249;
}

{
  v1.i32[0] = HIBYTE(a1);
  v1.i32[1] = BYTE1(a1);
  v2 = vand_s8(v1, 0xFF000000FFLL);
  v3 = vorr_s8((*&vshl_n_s32(v2, 0xCuLL) & 0xFFFF0FFFFFFF0FFFLL), (*&v2 & 0xFFFFFF0FFFFFFF0FLL));
  v4 = vorr_s8((*&vshl_n_s32(v3, 6uLL) & 0xFF3FFF3FFF3FFF3FLL), (*&v3 & 0xFFF3FFF3FFF3FFF3));
  v5 = vshl_u32(vorr_s8(vand_s8(vshl_n_s32(v4, 3uLL), 0x1010101010101010), vand_s8(v4, 0x101010101010101)), 0x100000003);
  return v5.i32[0] | (4 * ((8 * (((BYTE2(a1) & 0xF | (BYTE2(a1) << 12)) << 6) & 0x3000300 | BYTE2(a1) & 3 | (BYTE2(a1) << 12) & 0x30003)) & 0x10101010 | ((BYTE2(a1) & 0xF | (BYTE2(a1) << 12)) << 6) & 0x1000100 | BYTE2(a1) & 1 | (BYTE2(a1) << 12) & 0x10001)) | ((a1 & 0xF | (a1 >> 4 << 16)) << 6) & 0x1000100 | a1 & 1 | (a1 >> 4 << 16) & 0x10001 | (8 * (((a1 & 0xF | (a1 >> 4 << 16)) << 6) & 0x3000300 | a1 & 3 | (a1 >> 4 << 16) & 0x30003)) & 0x10101010u | v5.i32[1];
}

BOOL geom::compare_z_order<float,(unsigned char)2>(double a1, double a2)
{
  v2 = vceq_f32(*&a1, *&a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  v5 = *(&a1 + 1);
  v6 = *(&a2 + 1);
  if (*(&a1 + 1) != *(&a2 + 1))
  {
    v11 = a1;
    v12 = a2;
    a1 = v11;
    a2 = v12;
    v15 = __PAIR64__(v8, v7);
    if ((v3 & (*(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v8)) == 0)
    {
      v4 = 1;
    }
  }

  v13 = a1;
  v10 = *(&v13 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v14 = a2;
  return v10 < *(&v14 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom_compare_z_order_2f(double a1, double a2)
{
  v2 = vceq_f32(*&a1, *&a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  v5 = *(&a1 + 1);
  v6 = *(&a2 + 1);
  if (*(&a1 + 1) != *(&a2 + 1))
  {
    v11 = a1;
    v12 = a2;
    a1 = v11;
    a2 = v12;
    v15 = __PAIR64__(v8, v7);
    if ((v3 & (*(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v8)) == 0)
    {
      v4 = 1;
    }
  }

  v13 = a1;
  v10 = *(&v13 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v14 = a2;
  return v10 < *(&v14 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom::compare_z_order<float,(unsigned char)3>(float32x4_t a1, float32x4_t a2)
{
  v2 = vceqq_f32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = v2;
  *&v7 = __PAIR64__(v5, v4);
  DWORD2(v7) = v6;
  v8 = vmovn_s32(vmvnq_s8(v13)).u8[0];
  v9 = (v8 & 1) - 1;
  if (a1.f32[1] != a2.f32[1])
  {
    v19 = v7;
    if ((v8 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v8 & 1) - 1) & 3))) > v5)) == 0)
    {
      v9 = 1;
    }
  }

  if (a1.f32[2] != a2.f32[2])
  {
    v18 = v7;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v6 || ~v9 == 0)
    {
      v9 = 2;
    }
  }

  v17 = a1;
  v12 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
  v16 = a2;
  return v12 < *(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
}

BOOL geom_compare_z_order_3f(float32x4_t a1, float32x4_t a2)
{
  v2 = vceqq_f32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = v2;
  *&v7 = __PAIR64__(v5, v4);
  DWORD2(v7) = v6;
  v8 = vmovn_s32(vmvnq_s8(v13)).u8[0];
  v9 = (v8 & 1) - 1;
  if (a1.f32[1] != a2.f32[1])
  {
    v19 = v7;
    if ((v8 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v8 & 1) - 1) & 3))) > v5)) == 0)
    {
      v9 = 1;
    }
  }

  if (a1.f32[2] != a2.f32[2])
  {
    v18 = v7;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v6 || ~v9 == 0)
    {
      v9 = 2;
    }
  }

  v17 = a1;
  v12 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
  v16 = a2;
  return v12 < *(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
}

BOOL geom::compare_z_order<float,(unsigned char)4>(float32x4_t a1, float32x4_t a2)
{
  v2 = vceqq_f32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v14 = v2;
  *&v7 = __PAIR64__(v4, v3);
  *(&v7 + 1) = __PAIR64__(v6, v5);
  v8 = vmovn_s32(vmvnq_s8(v14)).u8[0];
  v9 = (v8 & 1) - 1;
  if (a1.f32[1] != a2.f32[1])
  {
    v21 = v7;
    if ((v8 & (*(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v8 & 1) - 1) & 3))) > v4)) == 0)
    {
      v9 = 1;
    }
  }

  if (a1.f32[2] != a2.f32[2])
  {
    v20 = v7;
    if (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v5 || ~v9 == 0)
    {
      v9 = 2;
    }
  }

  if (a1.f32[3] != a2.f32[3])
  {
    v19 = v7;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v6 || ~v9 == 0)
    {
      v9 = 3;
    }
  }

  v17 = a1;
  v13 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
  v18 = a2;
  return v13 < *(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
}

BOOL geom_compare_z_order_4f(float32x4_t a1, float32x4_t a2)
{
  v2 = vceqq_f32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v14 = v2;
  *&v7 = __PAIR64__(v4, v3);
  *(&v7 + 1) = __PAIR64__(v6, v5);
  v8 = vmovn_s32(vmvnq_s8(v14)).u8[0];
  v9 = (v8 & 1) - 1;
  if (a1.f32[1] != a2.f32[1])
  {
    v21 = v7;
    if ((v8 & (*(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v8 & 1) - 1) & 3))) > v4)) == 0)
    {
      v9 = 1;
    }
  }

  if (a1.f32[2] != a2.f32[2])
  {
    v20 = v7;
    if (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v5 || ~v9 == 0)
    {
      v9 = 2;
    }
  }

  if (a1.f32[3] != a2.f32[3])
  {
    v19 = v7;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) <= v6 || ~v9 == 0)
    {
      v9 = 3;
    }
  }

  v17 = a1;
  v13 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
  v18 = a2;
  return v13 < *(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
}

BOOL geom::compare_z_order<double,(unsigned char)2>(float64x2_t a1, float64x2_t a2)
{
  v2 = vceqq_f64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  v5 = a1.f64[1];
  v6 = a2.f64[1];
  if (a1.f64[1] != a2.f64[1])
  {
    v11 = a1;
    v12 = a2;
    a1 = v11;
    a2 = v12;
    v15 = __PAIR64__(v8, v7);
    if ((v3 & (*(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v8)) == 0)
    {
      v4 = 1;
    }
  }

  v13 = a1;
  v10 = *(&v13 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v14 = a2;
  return v10 < *(&v14 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom_compare_z_order_2d(float64x2_t a1, float64x2_t a2)
{
  v2 = vceqq_f64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  v5 = a1.f64[1];
  v6 = a2.f64[1];
  if (a1.f64[1] != a2.f64[1])
  {
    v11 = a1;
    v12 = a2;
    a1 = v11;
    a2 = v12;
    v15 = __PAIR64__(v8, v7);
    if ((v3 & (*(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v8)) == 0)
    {
      v4 = 1;
    }
  }

  v13 = a1;
  v10 = *(&v13 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v14 = a2;
  return v10 < *(&v14 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom::compare_z_order<double,(unsigned char)3>(uint64_t a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 16);
  v11 = vceqq_f64(*a1, *a2);
  if (((v11.i64[0] & v11.i64[1] & vceqq_f64(v8, v10).u64[0] & 0x8000000000000000) != 0) != v2)
  {
    return 0;
  }

  v34 = v6;
  v35 = v5;
  v36 = v3;
  v37 = v4;
  v24 = vextq_s8(v7, v7, 8uLL).u64[0];
  v25 = vextq_s8(v9, v9, 8uLL).u64[0];
  v28 = v10;
  v29 = v9;
  v26 = v8;
  v27 = v7;
  *&v15 = v27.i64[0];
  *&v16 = v29.i64[0];
  *&v17 = __PAIR64__(v13, v12);
  DWORD2(v17) = v14;
  if (*v27.i64 == *v29.i64)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  if (*&v27.i64[1] != *&v29.i64[1])
  {
    v33 = v17;
    if (*(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v13 || *v27.i64 == *v29.i64)
    {
      v18 = 1;
    }
  }

  if (v26.f64[0] != v28.f64[0])
  {
    v32 = v17;
    if (*(&v32 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v14 || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  *(&v15 + 1) = v24;
  v31[0] = v15;
  v31[1] = v26;
  v22 = v18 & 3;
  v23 = *(v31 + v22);
  *(&v16 + 1) = v25;
  v30[0] = v16;
  v30[1] = v28;
  return v23 < *(v30 + v22);
}

BOOL geom_compare_z_order_3d(uint64_t a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 16);
  v11 = vceqq_f64(*a1, *a2);
  if (((v11.i64[0] & v11.i64[1] & vceqq_f64(v8, v10).u64[0] & 0x8000000000000000) != 0) != v2)
  {
    return 0;
  }

  v34 = v6;
  v35 = v5;
  v36 = v3;
  v37 = v4;
  v24 = vextq_s8(v7, v7, 8uLL).u64[0];
  v25 = vextq_s8(v9, v9, 8uLL).u64[0];
  v28 = v10;
  v29 = v9;
  v26 = v8;
  v27 = v7;
  *&v15 = v27.i64[0];
  *&v16 = v29.i64[0];
  *&v17 = __PAIR64__(v13, v12);
  DWORD2(v17) = v14;
  if (*v27.i64 == *v29.i64)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  if (*&v27.i64[1] != *&v29.i64[1])
  {
    v33 = v17;
    if (*(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v13 || *v27.i64 == *v29.i64)
    {
      v18 = 1;
    }
  }

  if (v26.f64[0] != v28.f64[0])
  {
    v32 = v17;
    if (*(&v32 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v14 || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  *(&v15 + 1) = v24;
  v31[0] = v15;
  v31[1] = v26;
  v22 = v18 & 3;
  v23 = *(v31 + v22);
  *(&v16 + 1) = v25;
  v30[0] = v16;
  v30[1] = v28;
  return v23 < *(v30 + v22);
}

BOOL geom::compare_z_order<double,(unsigned char)4>(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vandq_s8(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1]));
  if ((vandq_s8(v2, vdupq_laneq_s64(v2, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v15 = *a1;
  v16 = *a2;
  v17 = a1[1];
  v18 = a2[1];
  *&v7 = __PAIR64__(v4, v3);
  *(&v7 + 1) = __PAIR64__(v6, v5);
  if (v15.f64[0] == v16.f64[0])
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if (v15.f64[1] != v16.f64[1])
  {
    v23 = v7;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v4 || v15.f64[0] == v16.f64[0])
    {
      v8 = 1;
    }
  }

  if (v17.f64[0] != v18.f64[0])
  {
    v22 = v7;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v5 || ~v8 == 0)
    {
      v8 = 2;
    }
  }

  if (v17.f64[1] != v18.f64[1])
  {
    v21 = v7;
    if (*(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v6 || ~v8 == 0)
    {
      v8 = 3;
    }
  }

  v20[0] = v15;
  v20[1] = v17;
  v13 = v8 & 3;
  v14 = *(v20 + v13);
  v19[0] = v16;
  v19[1] = v18;
  return v14 < *(v19 + v13);
}

BOOL geom_compare_z_order_4d(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vandq_s8(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1]));
  if ((vandq_s8(v2, vdupq_laneq_s64(v2, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v15 = *a1;
  v16 = *a2;
  v17 = a1[1];
  v18 = a2[1];
  *&v7 = __PAIR64__(v4, v3);
  *(&v7 + 1) = __PAIR64__(v6, v5);
  if (v15.f64[0] == v16.f64[0])
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if (v15.f64[1] != v16.f64[1])
  {
    v23 = v7;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v4 || v15.f64[0] == v16.f64[0])
    {
      v8 = 1;
    }
  }

  if (v17.f64[0] != v18.f64[0])
  {
    v22 = v7;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v5 || ~v8 == 0)
    {
      v8 = 2;
    }
  }

  if (v17.f64[1] != v18.f64[1])
  {
    v21 = v7;
    if (*(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) <= v6 || ~v8 == 0)
    {
      v8 = 3;
    }
  }

  v20[0] = v15;
  v20[1] = v17;
  v13 = v8 & 3;
  v14 = *(v20 + v13);
  v19[0] = v16;
  v19[1] = v18;
  return v14 < *(v19 + v13);
}

BOOL geom::compare_z_order<unsigned char,(unsigned char)2>(__int16 a1, __int16 a2, uint8x8_t a3, uint8x8_t a4)
{
  HIWORD(v21) = a1;
  LOWORD(v21) = a1;
  a3.i32[0] = v21;
  v4 = vmovl_u8(a3).u64[0];
  HIWORD(v20) = a2;
  LOWORD(v20) = a2;
  a4.i32[0] = v20;
  v5 = vmovl_u8(a4).u64[0];
  if ((vminv_u8(vceq_s8(vuzp1_s8(v4, v4), vuzp1_s8(v5, v5))) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a1;
  v6.i32[1] = HIBYTE(a1);
  v7.i32[0] = a2;
  v7.i32[1] = HIBYTE(a2);
  if (a1 == a2)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if ((vceq_s32(vand_s8(v6, 0xFF000000FFLL), vand_s8(v7, 0xFF000000FFLL)).i32[1] & 1) == 0)
  {
    v9.i32[0] = (a2 ^ a1);
    v9.i32[1] = ((a2 ^ a1) >> 8);
    v10 = vand_s8(v9, 0xFF000000FFLL);
    v11 = vand_s8(vcgt_u32(v10, 0xF0000000FLL), 0x400000004);
    v12 = vshl_u32(v10, vneg_s32(v11));
    v13 = vbic_s8(0x200000002, vceqz_s32((*&v12 & 0xFFFFFF0CFFFFFF0CLL)));
    v19 = vand_s8(vorr_s8(vsub_s32(v11, vtst_s32(vshl_u32(0x200000002, v13), v12)), v13), 0xFF000000FFLL);
    if (*(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1))) <= v19.i32[1] || a1 == a2)
    {
      v8 = 1;
    }
  }

  v18 = v6;
  v15 = *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
  v17 = v7;
  return v15 < *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
}

BOOL geom_compare_z_order_2u8(__int16 a1, __int16 a2, uint8x8_t a3, uint8x8_t a4)
{
  HIWORD(v21) = a1;
  LOWORD(v21) = a1;
  a3.i32[0] = v21;
  v4 = vmovl_u8(a3).u64[0];
  HIWORD(v20) = a2;
  LOWORD(v20) = a2;
  a4.i32[0] = v20;
  v5 = vmovl_u8(a4).u64[0];
  if ((vminv_u8(vceq_s8(vuzp1_s8(v4, v4), vuzp1_s8(v5, v5))) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a1;
  v6.i32[1] = HIBYTE(a1);
  v7.i32[0] = a2;
  v7.i32[1] = HIBYTE(a2);
  if (a1 == a2)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if ((vceq_s32(vand_s8(v6, 0xFF000000FFLL), vand_s8(v7, 0xFF000000FFLL)).i32[1] & 1) == 0)
  {
    v9.i32[0] = (a2 ^ a1);
    v9.i32[1] = ((a2 ^ a1) >> 8);
    v10 = vand_s8(v9, 0xFF000000FFLL);
    v11 = vand_s8(vcgt_u32(v10, 0xF0000000FLL), 0x400000004);
    v12 = vshl_u32(v10, vneg_s32(v11));
    v13 = vbic_s8(0x200000002, vceqz_s32((*&v12 & 0xFFFFFF0CFFFFFF0CLL)));
    v19 = vand_s8(vorr_s8(vsub_s32(v11, vtst_s32(vshl_u32(0x200000002, v13), v12)), v13), 0xFF000000FFLL);
    if (*(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1))) <= v19.i32[1] || a1 == a2)
    {
      v8 = 1;
    }
  }

  v18 = v6;
  v15 = *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
  v17 = v7;
  return v15 < *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
}

BOOL geom::compare_z_order<unsigned char,(unsigned char)3>(__int32 a1, __int32 a2, int8x8_t a3, int8x8_t a4)
{
  a3.i32[0] = a1;
  v4 = vzip1_s8(a3, a3);
  a4.i32[0] = a2;
  v5 = vzip1_s8(a4, a3);
  v6 = vceq_s16((*&v4 & 0xFF00FF00FF00FFLL), (*&v5 & 0xFF00FF00FF00FFLL));
  v7.i8[0] = v6.i8[0];
  v7.i8[1] = v6.i8[2];
  v7.i8[2] = v6.i8[4];
  v7.i8[3] = v6.i8[4];
  v7.i8[4] = v6.i8[0];
  v7.i8[5] = v6.i8[2];
  v7.i8[6] = v6.i8[4];
  v7.i8[7] = v6.i8[4];
  if ((vminv_u8(v7) & 0x80) != 0)
  {
    return 0;
  }

  v8 = *&veor_s8(v5, v4) & 0xFF00FF00FF00FFLL;
  v9 = vand_s8(vcgt_u16(v8, 0xF000F000FLL), 0x4000400040004);
  v10 = vshl_u16(v8, vneg_s16((*&v9 & 0xFF00FF00FF00FFLL)));
  v11 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v10, 0xC000C000CLL)));
  v12 = vmovl_u16(vorr_s8(vsub_s16(v9, vtst_s16(vshl_u16(0x2000200020002, (*&v11 & 0xFF00FF00FF00FFLL)), v10)), v11));
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vandq_s8(v12, v13);
  if (a1 == a2)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v6.i8[2] & 1) == 0)
  {
    v23 = v14;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[1] || a1 == a2)
    {
      v15 = 1;
    }
  }

  if ((v6.i8[4] & 1) == 0)
  {
    v22 = v14;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[2] || ~v15 == 0)
    {
      v15 = 2;
    }
  }

  a3.i16[0] = a1;
  a3.i16[1] = BYTE1(a1);
  a3.i16[2] = BYTE2(a1);
  v20 = a3;
  v18 = *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
  a3.i16[0] = a2;
  a3.i16[1] = BYTE1(a2);
  a3.i16[2] = BYTE2(a2);
  v21 = a3;
  return v18 < *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
}

BOOL geom_compare_z_order_3u8(__int32 a1, __int32 a2, int8x8_t a3, int8x8_t a4)
{
  a3.i32[0] = a1;
  v4 = vzip1_s8(a3, a3);
  a4.i32[0] = a2;
  v5 = vzip1_s8(a4, a3);
  v6 = vceq_s16((*&v4 & 0xFF00FF00FF00FFLL), (*&v5 & 0xFF00FF00FF00FFLL));
  v7.i8[0] = v6.i8[0];
  v7.i8[1] = v6.i8[2];
  v7.i8[2] = v6.i8[4];
  v7.i8[3] = v6.i8[4];
  v7.i8[4] = v6.i8[0];
  v7.i8[5] = v6.i8[2];
  v7.i8[6] = v6.i8[4];
  v7.i8[7] = v6.i8[4];
  if ((vminv_u8(v7) & 0x80) != 0)
  {
    return 0;
  }

  v8 = *&veor_s8(v5, v4) & 0xFF00FF00FF00FFLL;
  v9 = vand_s8(vcgt_u16(v8, 0xF000F000FLL), 0x4000400040004);
  v10 = vshl_u16(v8, vneg_s16((*&v9 & 0xFF00FF00FF00FFLL)));
  v11 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v10, 0xC000C000CLL)));
  v12 = vmovl_u16(vorr_s8(vsub_s16(v9, vtst_s16(vshl_u16(0x2000200020002, (*&v11 & 0xFF00FF00FF00FFLL)), v10)), v11));
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vandq_s8(v12, v13);
  if (a1 == a2)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v6.i8[2] & 1) == 0)
  {
    v23 = v14;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[1] || a1 == a2)
    {
      v15 = 1;
    }
  }

  if ((v6.i8[4] & 1) == 0)
  {
    v22 = v14;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[2] || ~v15 == 0)
    {
      v15 = 2;
    }
  }

  a3.i16[0] = a1;
  a3.i16[1] = BYTE1(a1);
  a3.i16[2] = BYTE2(a1);
  v20 = a3;
  v18 = *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
  a3.i16[0] = a2;
  a3.i16[1] = BYTE1(a2);
  a3.i16[2] = BYTE2(a2);
  v21 = a3;
  return v18 < *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
}

BOOL geom::compare_z_order<unsigned char,(unsigned char)4>(__int32 a1, __int32 a2, int8x8_t a3)
{
  a3.i32[0] = a1;
  v3 = vzip1_s8(a3, a3);
  a3.i32[0] = a2;
  v4 = vzip1_s8(a3, a3);
  v5 = vceq_s16((*&v3 & 0xFF00FF00FF00FFLL), (*&v4 & 0xFF00FF00FF00FFLL));
  v6 = vuzp1_s8(v5, v5);
  if ((vminv_u8(v6) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a2 ^ a1;
  v7 = *&vzip1_s8(v6, v4) & 0xFF00FF00FF00FFLL;
  v8 = vand_s8(vcgt_u16(v7, 0xF000F000F000FLL), 0x4000400040004);
  v9 = vshl_u16(v7, vneg_s16(v8));
  v10 = vbic_s8(0x2000200020002, vceqz_s16((*&v9 & 0xFF0CFF0CFF0CFF0CLL)));
  v11 = vmovl_u16(vorr_s8(vsub_s16(v8, vtst_s16(vshl_u16(0x2000200020002, v10), v9)), v10));
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v13 = vandq_s8(v11, v12);
  if (a1 == a2)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  if ((v5.i8[2] & 1) == 0)
  {
    v24 = v13;
    if (*(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[1] || a1 == a2)
    {
      v14 = 1;
    }
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v23 = v13;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[2] || ~v14 == 0)
    {
      v14 = 2;
    }
  }

  if ((v5.i8[6] & 1) == 0)
  {
    v22 = v13;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[3] || ~v14 == 0)
    {
      v14 = 3;
    }
  }

  v21 = v3;
  v18 = *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
  v20 = v4;
  return v18 < *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
}

BOOL geom_compare_z_order_4u8(__int32 a1, __int32 a2, int8x8_t a3)
{
  a3.i32[0] = a1;
  v3 = vzip1_s8(a3, a3);
  a3.i32[0] = a2;
  v4 = vzip1_s8(a3, a3);
  v5 = vceq_s16((*&v3 & 0xFF00FF00FF00FFLL), (*&v4 & 0xFF00FF00FF00FFLL));
  v6 = vuzp1_s8(v5, v5);
  if ((vminv_u8(v6) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a2 ^ a1;
  v7 = *&vzip1_s8(v6, v4) & 0xFF00FF00FF00FFLL;
  v8 = vand_s8(vcgt_u16(v7, 0xF000F000F000FLL), 0x4000400040004);
  v9 = vshl_u16(v7, vneg_s16(v8));
  v10 = vbic_s8(0x2000200020002, vceqz_s16((*&v9 & 0xFF0CFF0CFF0CFF0CLL)));
  v11 = vmovl_u16(vorr_s8(vsub_s16(v8, vtst_s16(vshl_u16(0x2000200020002, v10), v9)), v10));
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v13 = vandq_s8(v11, v12);
  if (a1 == a2)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  if ((v5.i8[2] & 1) == 0)
  {
    v24 = v13;
    if (*(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[1] || a1 == a2)
    {
      v14 = 1;
    }
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v23 = v13;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[2] || ~v14 == 0)
    {
      v14 = 2;
    }
  }

  if ((v5.i8[6] & 1) == 0)
  {
    v22 = v13;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[3] || ~v14 == 0)
    {
      v14 = 3;
    }
  }

  v21 = v3;
  v18 = *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
  v20 = v4;
  return v18 < *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
}

BOOL geom::compare_z_order<unsigned short,(unsigned char)2>(__int32 a1, __int32 a2, uint16x4_t a3)
{
  a3.i32[0] = a1;
  v3 = vmovl_u16(a3).u64[0];
  a3.i32[0] = a2;
  v4 = vmovl_u16(a3).u64[0];
  v5 = vceq_s32(vand_s8(v3, 0xFFFF0000FFFFLL), vand_s8(v4, 0xFFFF0000FFFFLL));
  if ((vminv_u16(vuzp1_s16(v5, v5)) & 0x8000) != 0)
  {
    return 0;
  }

  if (a1 == a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v5.i32[0] = a2 ^ a1;
    v7 = vmovl_u16(v5).u64[0];
    v8 = vand_s8(vcgt_u32(v7, 0xFF000000FFLL), 0x800000008);
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v18 = vand_s8(vorr_s8(vsub_s32(v8, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(v10, v12)), 0xFFFF0000FFFFLL);
    if (*(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1))) <= v18.i32[1] || a1 == a2)
    {
      v6 = 1;
    }
  }

  v17 = v3;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
  v16 = v4;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
}

BOOL geom_compare_z_order_2u16(__int32 a1, __int32 a2, uint16x4_t a3)
{
  a3.i32[0] = a1;
  v3 = vmovl_u16(a3).u64[0];
  a3.i32[0] = a2;
  v4 = vmovl_u16(a3).u64[0];
  v5 = vceq_s32(vand_s8(v3, 0xFFFF0000FFFFLL), vand_s8(v4, 0xFFFF0000FFFFLL));
  if ((vminv_u16(vuzp1_s16(v5, v5)) & 0x8000) != 0)
  {
    return 0;
  }

  if (a1 == a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v5.i32[0] = a2 ^ a1;
    v7 = vmovl_u16(v5).u64[0];
    v8 = vand_s8(vcgt_u32(v7, 0xFF000000FFLL), 0x800000008);
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v18 = vand_s8(vorr_s8(vsub_s32(v8, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(v10, v12)), 0xFFFF0000FFFFLL);
    if (*(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1))) <= v18.i32[1] || a1 == a2)
    {
      v6 = 1;
    }
  }

  v17 = v3;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
  v16 = v4;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
}

BOOL geom::compare_z_order<unsigned short,(unsigned char)3>(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  v3 = v2;
  v3.i16[3] = v2.i16[2];
  if ((vminv_u16(v3) & 0x8000) != 0)
  {
    return 0;
  }

  v4 = veor_s8(a2, a1);
  v5 = vand_s8(vcgt_u16(v4, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v6 = vshl_u16(v4, vneg_s16(v5));
  v7 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v6, 0xF000F000F000F0)));
  v8 = vshl_u16(v6, vneg_s16(v7));
  v9 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v8, 0xC000C000C000CLL)));
  v10 = vmovl_u16(vorr_s8(vsub_s16(v5, vtst_s16(vshl_u16(0x2000200020002, v9), v8)), vorr_s8(v7, v9)));
  v11 = vmvn_s8(v2).u8[0];
  v12 = (v11 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v19 = v10;
    if ((v11 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v11 & 1) - 1) & 3))) > v10.i32[1])) == 0)
    {
      v12 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v18 = v10;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) <= v10.i32[2] || ~v12 == 0)
    {
      v12 = 2;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
}

BOOL geom_compare_z_order_3u16(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  v3 = v2;
  v3.i16[3] = v2.i16[2];
  if ((vminv_u16(v3) & 0x8000) != 0)
  {
    return 0;
  }

  v4 = veor_s8(a2, a1);
  v5 = vand_s8(vcgt_u16(v4, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v6 = vshl_u16(v4, vneg_s16(v5));
  v7 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v6, 0xF000F000F000F0)));
  v8 = vshl_u16(v6, vneg_s16(v7));
  v9 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v8, 0xC000C000C000CLL)));
  v10 = vmovl_u16(vorr_s8(vsub_s16(v5, vtst_s16(vshl_u16(0x2000200020002, v9), v8)), vorr_s8(v7, v9)));
  v11 = vmvn_s8(v2).u8[0];
  v12 = (v11 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v19 = v10;
    if ((v11 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v11 & 1) - 1) & 3))) > v10.i32[1])) == 0)
    {
      v12 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v18 = v10;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) <= v10.i32[2] || ~v12 == 0)
    {
      v12 = 2;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
}

BOOL geom::compare_z_order<unsigned short,(unsigned char)4>(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  if ((vminv_u16(v2) & 0x8000) != 0)
  {
    return 0;
  }

  v3 = veor_s8(a2, a1);
  v4 = vand_s8(vcgt_u16(v3, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v5 = vshl_u16(v3, vneg_s16(v4));
  v6 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v5, 0xF000F000F000F0)));
  v7 = vshl_u16(v5, vneg_s16(v6));
  v8 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v7, 0xC000C000C000CLL)));
  v9 = vmovl_u16(vorr_s8(vsub_s16(v4, vtst_s16(vshl_u16(0x2000200020002, v8), v7)), vorr_s8(v6, v8)));
  v10 = vmvn_s8(v2).u8[0];
  v11 = (v10 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v20 = v9;
    if ((v10 & (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v10 & 1) - 1) & 3))) > v9.i32[1])) == 0)
    {
      v11 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v19 = v9;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[2] || ~v11 == 0)
    {
      v11 = 2;
    }
  }

  if ((v2.i8[6] & 1) == 0)
  {
    v18 = v9;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[3] || ~v11 == 0)
    {
      v11 = 3;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
}

BOOL geom_compare_z_order_4u16(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  if ((vminv_u16(v2) & 0x8000) != 0)
  {
    return 0;
  }

  v3 = veor_s8(a2, a1);
  v4 = vand_s8(vcgt_u16(v3, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v5 = vshl_u16(v3, vneg_s16(v4));
  v6 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v5, 0xF000F000F000F0)));
  v7 = vshl_u16(v5, vneg_s16(v6));
  v8 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v7, 0xC000C000C000CLL)));
  v9 = vmovl_u16(vorr_s8(vsub_s16(v4, vtst_s16(vshl_u16(0x2000200020002, v8), v7)), vorr_s8(v6, v8)));
  v10 = vmvn_s8(v2).u8[0];
  v11 = (v10 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v20 = v9;
    if ((v10 & (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v10 & 1) - 1) & 3))) > v9.i32[1])) == 0)
    {
      v11 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v19 = v9;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[2] || ~v11 == 0)
    {
      v11 = 2;
    }
  }

  if ((v2.i8[6] & 1) == 0)
  {
    v18 = v9;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[3] || ~v11 == 0)
    {
      v11 = 3;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
}

BOOL geom::compare_z_order<unsigned int,(unsigned char)2>(int32x2_t a1, int32x2_t a2)
{
  v2 = vceq_s32(a1, a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  if ((v2.i8[4] & 1) == 0)
  {
    v5 = veor_s8(a2, a1);
    v6 = vand_s8(vcgt_u32(v5, 0xFFFF0000FFFFLL), 0x1000000010);
    v7 = vshl_u32(v5, vneg_s32(v6));
    v8 = vbic_s8(0x800000008, vceqz_s32(vand_s8(v7, 0xFF000000FF00)));
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v17 = vorr_s8(vsub_s32(v6, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(vorr_s8(v8, v10), v12));
    if ((v3 & (*(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v17.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v15 = a1;
  v13 = *(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v16 = a2;
  return v13 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom_compare_z_order_2u(int32x2_t a1, int32x2_t a2)
{
  v2 = vceq_s32(a1, a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  if ((v2.i8[4] & 1) == 0)
  {
    v5 = veor_s8(a2, a1);
    v6 = vand_s8(vcgt_u32(v5, 0xFFFF0000FFFFLL), 0x1000000010);
    v7 = vshl_u32(v5, vneg_s32(v6));
    v8 = vbic_s8(0x800000008, vceqz_s32(vand_s8(v7, 0xFF000000FF00)));
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v17 = vorr_s8(vsub_s32(v6, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(vorr_s8(v8, v10), v12));
    if ((v3 & (*(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v17.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v15 = a1;
  v13 = *(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v16 = a2;
  return v13 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom::compare_z_order<unsigned int,(unsigned char)3>(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = veorq_s8(a2, a1);
  v5.i64[0] = 0xFFFF0000FFFFLL;
  v5.i64[1] = 0xFFFF0000FFFFLL;
  v6.i64[0] = 0x1000000010;
  v6.i64[1] = 0x1000000010;
  v7 = vandq_s8(vcgtq_u32(v4, v5), v6);
  v8 = vshlq_u32(v4, vnegq_s32(v7));
  v6.i64[0] = 0xFF000000FF00;
  v6.i64[1] = 0xFF000000FF00;
  v9.i64[0] = 0x800000008;
  v9.i64[1] = 0x800000008;
  v10 = vbicq_s8(v9, vceqzq_s32(vandq_s8(v8, v6)));
  v11 = vshlq_u32(v8, vnegq_s32(v10));
  v9.i64[0] = 0xF0000000F0;
  v9.i64[1] = 0xF0000000F0;
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v13 = vbicq_s8(v12, vceqzq_s32(vandq_s8(v11, v9)));
  v14 = vshlq_u32(v11, vnegq_s32(v13));
  v12.i64[0] = 0xC0000000CLL;
  v12.i64[1] = 0xC0000000CLL;
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v16 = vbicq_s8(v15, vceqzq_s32(vandq_s8(v14, v12)));
  v17 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v18 = vorrq_s8(vsubq_s32(v7, vtstq_s32(vshlq_u32(v15, v16), v14)), vorrq_s8(vorrq_s8(v10, v13), v16));
  v19 = (v17 & 1) - 1;
  v20 = vmovn_s32(v2);
  if ((v20.i8[2] & 1) == 0)
  {
    v27 = v18;
    if ((v17 & (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v17 & 1) - 1) & 3))) > v18.i32[1])) == 0)
    {
      v19 = 1;
    }
  }

  if ((v20.i8[4] & 1) == 0)
  {
    v26 = v18;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3))) <= v18.i32[2] || ~v19 == 0)
    {
      v19 = 2;
    }
  }

  v25 = a1;
  v22 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
  v24 = a2;
  return v22 < *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
}

BOOL geom_compare_z_order_3u(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = veorq_s8(a2, a1);
  v5.i64[0] = 0xFFFF0000FFFFLL;
  v5.i64[1] = 0xFFFF0000FFFFLL;
  v6.i64[0] = 0x1000000010;
  v6.i64[1] = 0x1000000010;
  v7 = vandq_s8(vcgtq_u32(v4, v5), v6);
  v8 = vshlq_u32(v4, vnegq_s32(v7));
  v6.i64[0] = 0xFF000000FF00;
  v6.i64[1] = 0xFF000000FF00;
  v9.i64[0] = 0x800000008;
  v9.i64[1] = 0x800000008;
  v10 = vbicq_s8(v9, vceqzq_s32(vandq_s8(v8, v6)));
  v11 = vshlq_u32(v8, vnegq_s32(v10));
  v9.i64[0] = 0xF0000000F0;
  v9.i64[1] = 0xF0000000F0;
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v13 = vbicq_s8(v12, vceqzq_s32(vandq_s8(v11, v9)));
  v14 = vshlq_u32(v11, vnegq_s32(v13));
  v12.i64[0] = 0xC0000000CLL;
  v12.i64[1] = 0xC0000000CLL;
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v16 = vbicq_s8(v15, vceqzq_s32(vandq_s8(v14, v12)));
  v17 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v18 = vorrq_s8(vsubq_s32(v7, vtstq_s32(vshlq_u32(v15, v16), v14)), vorrq_s8(vorrq_s8(v10, v13), v16));
  v19 = (v17 & 1) - 1;
  v20 = vmovn_s32(v2);
  if ((v20.i8[2] & 1) == 0)
  {
    v27 = v18;
    if ((v17 & (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v17 & 1) - 1) & 3))) > v18.i32[1])) == 0)
    {
      v19 = 1;
    }
  }

  if ((v20.i8[4] & 1) == 0)
  {
    v26 = v18;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3))) <= v18.i32[2] || ~v19 == 0)
    {
      v19 = 2;
    }
  }

  v25 = a1;
  v22 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
  v24 = a2;
  return v22 < *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
}

BOOL geom::compare_z_order<unsigned int,(unsigned char)4>(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = veorq_s8(a2, a1);
  v4.i64[0] = 0xFFFF0000FFFFLL;
  v4.i64[1] = 0xFFFF0000FFFFLL;
  v5.i64[0] = 0x1000000010;
  v5.i64[1] = 0x1000000010;
  v6 = vandq_s8(vcgtq_u32(v3, v4), v5);
  v7 = vshlq_u32(v3, vnegq_s32(v6));
  v5.i64[0] = 0xFF000000FF00;
  v5.i64[1] = 0xFF000000FF00;
  v8.i64[0] = 0x800000008;
  v8.i64[1] = 0x800000008;
  v9 = vbicq_s8(v8, vceqzq_s32(vandq_s8(v7, v5)));
  v10 = vshlq_u32(v7, vnegq_s32(v9));
  v8.i64[0] = 0xF0000000F0;
  v8.i64[1] = 0xF0000000F0;
  v11.i64[0] = 0x400000004;
  v11.i64[1] = 0x400000004;
  v12 = vbicq_s8(v11, vceqzq_s32(vandq_s8(v10, v8)));
  v13 = vshlq_u32(v10, vnegq_s32(v12));
  v11.i64[0] = 0xC0000000CLL;
  v11.i64[1] = 0xC0000000CLL;
  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v15 = vbicq_s8(v14, vceqzq_s32(vandq_s8(v13, v11)));
  v16 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v17 = vorrq_s8(vsubq_s32(v6, vtstq_s32(vshlq_u32(v14, v15), v13)), vorrq_s8(vorrq_s8(v9, v12), v15));
  v18 = (v16 & 1) - 1;
  v19 = vmovn_s32(v2);
  if ((v19.i8[2] & 1) == 0)
  {
    v28 = v17;
    if ((v16 & (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v16 & 1) - 1) & 3))) > v17.i32[1])) == 0)
    {
      v18 = 1;
    }
  }

  if ((v19.i8[4] & 1) == 0)
  {
    v27 = v17;
    if (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[2] || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  if ((v19.i8[6] & 1) == 0)
  {
    v26 = v17;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[3] || ~v18 == 0)
    {
      v18 = 3;
    }
  }

  v24 = a1;
  v22 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
  v25 = a2;
  return v22 < *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
}

BOOL geom_compare_z_order_4u(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = veorq_s8(a2, a1);
  v4.i64[0] = 0xFFFF0000FFFFLL;
  v4.i64[1] = 0xFFFF0000FFFFLL;
  v5.i64[0] = 0x1000000010;
  v5.i64[1] = 0x1000000010;
  v6 = vandq_s8(vcgtq_u32(v3, v4), v5);
  v7 = vshlq_u32(v3, vnegq_s32(v6));
  v5.i64[0] = 0xFF000000FF00;
  v5.i64[1] = 0xFF000000FF00;
  v8.i64[0] = 0x800000008;
  v8.i64[1] = 0x800000008;
  v9 = vbicq_s8(v8, vceqzq_s32(vandq_s8(v7, v5)));
  v10 = vshlq_u32(v7, vnegq_s32(v9));
  v8.i64[0] = 0xF0000000F0;
  v8.i64[1] = 0xF0000000F0;
  v11.i64[0] = 0x400000004;
  v11.i64[1] = 0x400000004;
  v12 = vbicq_s8(v11, vceqzq_s32(vandq_s8(v10, v8)));
  v13 = vshlq_u32(v10, vnegq_s32(v12));
  v11.i64[0] = 0xC0000000CLL;
  v11.i64[1] = 0xC0000000CLL;
  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v15 = vbicq_s8(v14, vceqzq_s32(vandq_s8(v13, v11)));
  v16 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v17 = vorrq_s8(vsubq_s32(v6, vtstq_s32(vshlq_u32(v14, v15), v13)), vorrq_s8(vorrq_s8(v9, v12), v15));
  v18 = (v16 & 1) - 1;
  v19 = vmovn_s32(v2);
  if ((v19.i8[2] & 1) == 0)
  {
    v28 = v17;
    if ((v16 & (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v16 & 1) - 1) & 3))) > v17.i32[1])) == 0)
    {
      v18 = 1;
    }
  }

  if ((v19.i8[4] & 1) == 0)
  {
    v27 = v17;
    if (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[2] || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  if ((v19.i8[6] & 1) == 0)
  {
    v26 = v17;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[3] || ~v18 == 0)
    {
      v18 = 3;
    }
  }

  v24 = a1;
  v22 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
  v25 = a2;
  return v22 < *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
}

BOOL geom::compare_z_order<unsigned long long,(unsigned char)2>(int64x2_t a1, int64x2_t a2)
{
  v2 = vceqq_s64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  if ((vmovn_s64(v2).i32[1] & 1) == 0)
  {
    v5 = veorq_s8(a2, a1);
    v6.i64[0] = 0xFFFFFFFFLL;
    v6.i64[1] = 0xFFFFFFFFLL;
    v7 = vandq_s8(vcgtq_u64(v5, v6), vdupq_n_s64(0x20uLL));
    v8 = vshlq_u64(v5, vnegq_s64(v7));
    v9.i64[0] = 4294901760;
    v9.i64[1] = 4294901760;
    v10 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v8, v9)));
    v11 = vshlq_u64(v8, vnegq_s64(v10));
    v12.i64[0] = 65280;
    v12.i64[1] = 65280;
    v13 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v11, v12)));
    v14 = vshlq_u64(v11, vnegq_s64(v13));
    v15 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v14, vdupq_n_s64(0xF0uLL))));
    v16 = vshlq_u64(v14, vnegq_s64(v15));
    v17 = vdupq_n_s64(2uLL);
    v18 = vbicq_s8(v17, vceqzq_s64(vandq_s8(v16, vdupq_n_s64(0xCuLL))));
    v23 = vmovn_s64(vorrq_s8(vsubq_s64(v7, vtstq_s64(vshlq_u64(v17, v18), v16)), vorrq_s8(vorrq_s8(vorrq_s8(v10, v13), v15), v18)));
    if ((v3 & (*(&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v23.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v21 = a1;
  v19 = *(&v21 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v22 = a2;
  return v19 < *(&v22 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom_compare_z_order_2u64(int64x2_t a1, int64x2_t a2)
{
  v2 = vceqq_s64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  if ((vmovn_s64(v2).i32[1] & 1) == 0)
  {
    v5 = veorq_s8(a2, a1);
    v6.i64[0] = 0xFFFFFFFFLL;
    v6.i64[1] = 0xFFFFFFFFLL;
    v7 = vandq_s8(vcgtq_u64(v5, v6), vdupq_n_s64(0x20uLL));
    v8 = vshlq_u64(v5, vnegq_s64(v7));
    v9.i64[0] = 4294901760;
    v9.i64[1] = 4294901760;
    v10 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v8, v9)));
    v11 = vshlq_u64(v8, vnegq_s64(v10));
    v12.i64[0] = 65280;
    v12.i64[1] = 65280;
    v13 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v11, v12)));
    v14 = vshlq_u64(v11, vnegq_s64(v13));
    v15 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v14, vdupq_n_s64(0xF0uLL))));
    v16 = vshlq_u64(v14, vnegq_s64(v15));
    v17 = vdupq_n_s64(2uLL);
    v18 = vbicq_s8(v17, vceqzq_s64(vandq_s8(v16, vdupq_n_s64(0xCuLL))));
    v23 = vmovn_s64(vorrq_s8(vsubq_s64(v7, vtstq_s64(vshlq_u64(v17, v18), v16)), vorrq_s8(vorrq_s8(vorrq_s8(v10, v13), v15), v18)));
    if ((v3 & (*(&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v23.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v21 = a1;
  v19 = *(&v21 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v22 = a2;
  return v19 < *(&v22 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom::compare_z_order<unsigned long long,(unsigned char)3>(uint64_t a1, uint64_t a2)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *a2;
  v11 = *(a2 + 16);
  v12 = vceqq_s64(v9, v11);
  v13 = vceqq_s64(*a1, *a2);
  if ((v13.i64[0] & v13.i64[1] & v12.i64[0]) < 0 != v2)
  {
    return 0;
  }

  v14 = vextq_s8(v8, v8, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = veorq_s8(v11, v9);
  v17 = veorq_s8(v10, v8);
  v18.i64[0] = 0xFFFFFFFFLL;
  v18.i64[1] = 0xFFFFFFFFLL;
  v19 = vcgtq_u64(v17, v18);
  v3.i64[0] = 32;
  v20 = vandq_s8(vcgtq_u64(v16, v18), v3);
  v21 = vandq_s8(v19, vdupq_n_s64(0x20uLL));
  v22 = vshlq_u64(v17, vnegq_s64(v21));
  v23 = vshlq_u64(v16, vnegq_s64(v20));
  LOBYTE(v24) = 0;
  v16.i16[0] = 0;
  v16.i16[1] = v23.i16[1];
  v17.i64[0] = 4294901760;
  v17.i64[1] = 4294901760;
  v4.i64[0] = 16;
  v25 = vbicq_s8(v4, vceqzq_s64(v16.u32[0]));
  v26 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v22, v17)));
  v27 = vshlq_u64(v22, vnegq_s64(v26));
  v28 = vshlq_u64(v23, vnegq_s64(v25));
  HIBYTE(v24) = v28.i8[1];
  v29.i64[0] = 65280;
  v29.i64[1] = 65280;
  v5.i64[0] = 8;
  v30 = vbicq_s8(v5, vceqzq_s64(v24));
  v31 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v27, v29)));
  v32 = vshlq_u64(v27, vnegq_s64(v31));
  v33 = vshlq_u64(v28, vnegq_s64(v30));
  v5.i64[0] = 240;
  v6.i64[0] = 4;
  v34 = vbicq_s8(v6, vceqzq_s64(vandq_s8(v33, v5)));
  v35 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v32, vdupq_n_s64(0xF0uLL))));
  v36 = vshlq_u64(v32, vnegq_s64(v35));
  v37 = vshlq_u64(v33, vnegq_s64(v34));
  v6.i64[0] = 12;
  v38 = vdupq_n_s64(2uLL);
  v7.i64[0] = 2;
  v39 = vbicq_s8(v7, vceqzq_s64(vandq_s8(v37, v6)));
  v40 = vbicq_s8(v38, vceqzq_s64(vandq_s8(v36, vdupq_n_s64(0xCuLL))));
  v41 = vuzp1q_s32(vorrq_s8(vsubq_s64(v21, vtstq_s64(vshlq_u64(v38, v40), v36)), vorrq_s8(vorrq_s8(vorrq_s8(v26, v31), v35), v40)), vorrq_s8(vsubq_s64(v20, vtstq_s64(vshlq_u64(v7, v39), v37)), vorrq_s8(vorrq_s8(vorrq_s8(v25, v30), v34), v39)));
  v42 = vuzp1_s16(vmovn_s64(vmvnq_s8(v13)), *v10.i8).u8[0];
  v43 = (v42 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(v13), *&v10).i8[2] & 1) == 0)
  {
    v51 = v41;
    if ((v42 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v42 & 1) - 1) & 3))) > v41.i32[1])) == 0)
    {
      v43 = 1;
    }
  }

  if ((vuzp1_s16(*&v10, vmovn_s64(v12)).i32[1] & 1) == 0)
  {
    v50 = v41;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) <= v41.i32[2] || ~v43 == 0)
    {
      v43 = 2;
    }
  }

  v8.i64[1] = v14;
  v49[0] = v8;
  v49[1] = v9;
  v45 = v43 & 3;
  v46 = *(v49 + v45);
  v10.i64[1] = v15;
  v48[0] = v10;
  v48[1] = v11;
  return v46 < *(v48 + v45);
}

BOOL geom_compare_z_order_3u64(uint64_t a1, uint64_t a2)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *a2;
  v11 = *(a2 + 16);
  v12 = vceqq_s64(v9, v11);
  v13 = vceqq_s64(*a1, *a2);
  if ((v13.i64[0] & v13.i64[1] & v12.i64[0]) < 0 != v2)
  {
    return 0;
  }

  v14 = vextq_s8(v8, v8, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = veorq_s8(v11, v9);
  v17 = veorq_s8(v10, v8);
  v18.i64[0] = 0xFFFFFFFFLL;
  v18.i64[1] = 0xFFFFFFFFLL;
  v19 = vcgtq_u64(v17, v18);
  v3.i64[0] = 32;
  v20 = vandq_s8(vcgtq_u64(v16, v18), v3);
  v21 = vandq_s8(v19, vdupq_n_s64(0x20uLL));
  v22 = vshlq_u64(v17, vnegq_s64(v21));
  v23 = vshlq_u64(v16, vnegq_s64(v20));
  LOBYTE(v24) = 0;
  v16.i16[0] = 0;
  v16.i16[1] = v23.i16[1];
  v17.i64[0] = 4294901760;
  v17.i64[1] = 4294901760;
  v4.i64[0] = 16;
  v25 = vbicq_s8(v4, vceqzq_s64(v16.u32[0]));
  v26 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v22, v17)));
  v27 = vshlq_u64(v22, vnegq_s64(v26));
  v28 = vshlq_u64(v23, vnegq_s64(v25));
  HIBYTE(v24) = v28.i8[1];
  v29.i64[0] = 65280;
  v29.i64[1] = 65280;
  v5.i64[0] = 8;
  v30 = vbicq_s8(v5, vceqzq_s64(v24));
  v31 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v27, v29)));
  v32 = vshlq_u64(v27, vnegq_s64(v31));
  v33 = vshlq_u64(v28, vnegq_s64(v30));
  v5.i64[0] = 240;
  v6.i64[0] = 4;
  v34 = vbicq_s8(v6, vceqzq_s64(vandq_s8(v33, v5)));
  v35 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v32, vdupq_n_s64(0xF0uLL))));
  v36 = vshlq_u64(v32, vnegq_s64(v35));
  v37 = vshlq_u64(v33, vnegq_s64(v34));
  v6.i64[0] = 12;
  v38 = vdupq_n_s64(2uLL);
  v7.i64[0] = 2;
  v39 = vbicq_s8(v7, vceqzq_s64(vandq_s8(v37, v6)));
  v40 = vbicq_s8(v38, vceqzq_s64(vandq_s8(v36, vdupq_n_s64(0xCuLL))));
  v41 = vuzp1q_s32(vorrq_s8(vsubq_s64(v21, vtstq_s64(vshlq_u64(v38, v40), v36)), vorrq_s8(vorrq_s8(vorrq_s8(v26, v31), v35), v40)), vorrq_s8(vsubq_s64(v20, vtstq_s64(vshlq_u64(v7, v39), v37)), vorrq_s8(vorrq_s8(vorrq_s8(v25, v30), v34), v39)));
  v42 = vuzp1_s16(vmovn_s64(vmvnq_s8(v13)), *v10.i8).u8[0];
  v43 = (v42 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(v13), *&v10).i8[2] & 1) == 0)
  {
    v51 = v41;
    if ((v42 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v42 & 1) - 1) & 3))) > v41.i32[1])) == 0)
    {
      v43 = 1;
    }
  }

  if ((vuzp1_s16(*&v10, vmovn_s64(v12)).i32[1] & 1) == 0)
  {
    v50 = v41;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) <= v41.i32[2] || ~v43 == 0)
    {
      v43 = 2;
    }
  }

  v8.i64[1] = v14;
  v49[0] = v8;
  v49[1] = v9;
  v45 = v43 & 3;
  v46 = *(v49 + v45);
  v10.i64[1] = v15;
  v48[0] = v10;
  v48[1] = v11;
  return v46 < *(v48 + v45);
}

BOOL geom::compare_z_order<unsigned long long,(unsigned char)4>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  v6 = vceqq_s64(v3, v5);
  v7 = vceqq_s64(*a1, *a2);
  v8 = vandq_s8(v7, v6);
  if ((vandq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v9 = veorq_s8(v5, v3);
  v10 = veorq_s8(v4, v2);
  v11.i64[0] = 0xFFFFFFFFLL;
  v11.i64[1] = 0xFFFFFFFFLL;
  v12 = vcgtq_u64(v10, v11);
  v13 = vdupq_n_s64(0x20uLL);
  v14 = vandq_s8(vcgtq_u64(v9, v11), v13);
  v15 = vandq_s8(v12, v13);
  v16 = vshlq_u64(v10, vnegq_s64(v15));
  v17 = vshlq_u64(v9, vnegq_s64(v14));
  v13.i64[0] = 4294901760;
  v13.i64[1] = 4294901760;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v17, v13)));
  v20 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v16, v13)));
  v21 = vshlq_u64(v16, vnegq_s64(v20));
  v22 = vshlq_u64(v17, vnegq_s64(v19));
  v18.i64[0] = 65280;
  v18.i64[1] = 65280;
  v23 = vdupq_n_s64(8uLL);
  v24 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v22, v18)));
  v25 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v21, v18)));
  v26 = vshlq_u64(v21, vnegq_s64(v25));
  v27 = vshlq_u64(v22, vnegq_s64(v24));
  v28 = vdupq_n_s64(0xF0uLL);
  v29 = vdupq_n_s64(4uLL);
  v30 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v27, v28)));
  v31 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v26, v28)));
  v32 = vshlq_u64(v26, vnegq_s64(v31));
  v33 = vdupq_n_s64(0xCuLL);
  v34 = vshlq_u64(v27, vnegq_s64(v30));
  v35 = vdupq_n_s64(2uLL);
  v36 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v34, v33)));
  v37 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v32, v33)));
  v38 = vuzp1q_s32(vorrq_s8(vsubq_s64(v15, vtstq_s64(vshlq_u64(v35, v37), v32)), vorrq_s8(vorrq_s8(vorrq_s8(v20, v25), v31), v37)), vorrq_s8(vsubq_s64(v14, vtstq_s64(vshlq_u64(v35, v36), v34)), vorrq_s8(vorrq_s8(vorrq_s8(v19, v24), v30), v36)));
  v39 = vuzp1_s16(vmovn_s64(vmvnq_s8(v7)), *v4.i8).u8[0];
  v40 = (v39 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(v7), *&v4).i8[2] & 1) == 0)
  {
    v51 = v38;
    if ((v39 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v39 & 1) - 1) & 3))) > v38.i32[1])) == 0)
    {
      v40 = 1;
    }
  }

  v41 = vmovn_s64(v6);
  if ((vuzp1_s16(*&v4, v41).i32[1] & 1) == 0)
  {
    v50 = v38;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[2] || ~v40 == 0)
    {
      v40 = 2;
    }
  }

  if ((vuzp1_s16(*&v4, v41).i8[6] & 1) == 0)
  {
    v49 = v38;
    if (*(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[3] || ~v40 == 0)
    {
      v40 = 3;
    }
  }

  v48[0] = v2;
  v48[1] = v3;
  v44 = v40 & 3;
  v45 = *(v48 + v44);
  v47[0] = v4;
  v47[1] = v5;
  return v45 < *(v47 + v44);
}

BOOL geom_compare_z_order_4u64(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  v6 = vceqq_s64(v3, v5);
  v7 = vceqq_s64(*a1, *a2);
  v8 = vandq_s8(v7, v6);
  if ((vandq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v9 = veorq_s8(v5, v3);
  v10 = veorq_s8(v4, v2);
  v11.i64[0] = 0xFFFFFFFFLL;
  v11.i64[1] = 0xFFFFFFFFLL;
  v12 = vcgtq_u64(v10, v11);
  v13 = vdupq_n_s64(0x20uLL);
  v14 = vandq_s8(vcgtq_u64(v9, v11), v13);
  v15 = vandq_s8(v12, v13);
  v16 = vshlq_u64(v10, vnegq_s64(v15));
  v17 = vshlq_u64(v9, vnegq_s64(v14));
  v13.i64[0] = 4294901760;
  v13.i64[1] = 4294901760;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v17, v13)));
  v20 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v16, v13)));
  v21 = vshlq_u64(v16, vnegq_s64(v20));
  v22 = vshlq_u64(v17, vnegq_s64(v19));
  v18.i64[0] = 65280;
  v18.i64[1] = 65280;
  v23 = vdupq_n_s64(8uLL);
  v24 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v22, v18)));
  v25 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v21, v18)));
  v26 = vshlq_u64(v21, vnegq_s64(v25));
  v27 = vshlq_u64(v22, vnegq_s64(v24));
  v28 = vdupq_n_s64(0xF0uLL);
  v29 = vdupq_n_s64(4uLL);
  v30 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v27, v28)));
  v31 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v26, v28)));
  v32 = vshlq_u64(v26, vnegq_s64(v31));
  v33 = vdupq_n_s64(0xCuLL);
  v34 = vshlq_u64(v27, vnegq_s64(v30));
  v35 = vdupq_n_s64(2uLL);
  v36 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v34, v33)));
  v37 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v32, v33)));
  v38 = vuzp1q_s32(vorrq_s8(vsubq_s64(v15, vtstq_s64(vshlq_u64(v35, v37), v32)), vorrq_s8(vorrq_s8(vorrq_s8(v20, v25), v31), v37)), vorrq_s8(vsubq_s64(v14, vtstq_s64(vshlq_u64(v35, v36), v34)), vorrq_s8(vorrq_s8(vorrq_s8(v19, v24), v30), v36)));
  v39 = vuzp1_s16(vmovn_s64(vmvnq_s8(v7)), *v4.i8).u8[0];
  v40 = (v39 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(v7), *&v4).i8[2] & 1) == 0)
  {
    v51 = v38;
    if ((v39 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v39 & 1) - 1) & 3))) > v38.i32[1])) == 0)
    {
      v40 = 1;
    }
  }

  v41 = vmovn_s64(v6);
  if ((vuzp1_s16(*&v4, v41).i32[1] & 1) == 0)
  {
    v50 = v38;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[2] || ~v40 == 0)
    {
      v40 = 2;
    }
  }

  if ((vuzp1_s16(*&v4, v41).i8[6] & 1) == 0)
  {
    v49 = v38;
    if (*(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[3] || ~v40 == 0)
    {
      v40 = 3;
    }
  }

  v48[0] = v2;
  v48[1] = v3;
  v44 = v40 & 3;
  v45 = *(v48 + v44);
  v47[0] = v4;
  v47[1] = v5;
  return v45 < *(v47 + v44);
}

BOOL geom::compare_z_order<signed char,(unsigned char)2>(__int16 a1, __int16 a2, uint8x8_t a3, uint8x8_t a4)
{
  HIWORD(v21) = a1;
  LOWORD(v21) = a1;
  a3.i32[0] = v21;
  v4 = vmovl_u8(a3).u64[0];
  HIWORD(v20) = a2;
  LOWORD(v20) = a2;
  a4.i32[0] = v20;
  v5 = vmovl_u8(a4).u64[0];
  if ((vminv_u8(vceq_s8(vuzp1_s8(v4, v4), vuzp1_s8(v5, v5))) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a1;
  v6.i32[1] = HIBYTE(a1);
  v7.i32[0] = a2;
  v7.i32[1] = HIBYTE(a2);
  if (a1 == a2)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if ((vceq_s32(vand_s8(v6, 0xFF000000FFLL), vand_s8(v7, 0xFF000000FFLL)).i32[1] & 1) == 0)
  {
    v9.i32[0] = (a2 ^ a1);
    v9.i32[1] = ((a2 ^ a1) >> 8);
    v10 = vand_s8(v9, 0xFF000000FFLL);
    v11 = vand_s8(vcgt_u32(v10, 0xF0000000FLL), 0x400000004);
    v12 = vshl_u32(v10, vneg_s32(v11));
    v13 = vbic_s8(0x200000002, vceqz_s32((*&v12 & 0xFFFFFF0CFFFFFF0CLL)));
    v19 = vand_s8(vorr_s8(vsub_s32(v11, vtst_s32(vshl_u32(0x200000002, v13), v12)), v13), 0xFF000000FFLL);
    if (*(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1))) <= v19.i32[1] || a1 == a2)
    {
      v8 = 1;
    }
  }

  v18 = v6;
  v15 = *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
  v17 = v7;
  return v15 < *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
}

BOOL geom_compare_z_order_2i8(__int16 a1, __int16 a2, uint8x8_t a3, uint8x8_t a4)
{
  HIWORD(v21) = a1;
  LOWORD(v21) = a1;
  a3.i32[0] = v21;
  v4 = vmovl_u8(a3).u64[0];
  HIWORD(v20) = a2;
  LOWORD(v20) = a2;
  a4.i32[0] = v20;
  v5 = vmovl_u8(a4).u64[0];
  if ((vminv_u8(vceq_s8(vuzp1_s8(v4, v4), vuzp1_s8(v5, v5))) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a1;
  v6.i32[1] = HIBYTE(a1);
  v7.i32[0] = a2;
  v7.i32[1] = HIBYTE(a2);
  if (a1 == a2)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  if ((vceq_s32(vand_s8(v6, 0xFF000000FFLL), vand_s8(v7, 0xFF000000FFLL)).i32[1] & 1) == 0)
  {
    v9.i32[0] = (a2 ^ a1);
    v9.i32[1] = ((a2 ^ a1) >> 8);
    v10 = vand_s8(v9, 0xFF000000FFLL);
    v11 = vand_s8(vcgt_u32(v10, 0xF0000000FLL), 0x400000004);
    v12 = vshl_u32(v10, vneg_s32(v11));
    v13 = vbic_s8(0x200000002, vceqz_s32((*&v12 & 0xFFFFFF0CFFFFFF0CLL)));
    v19 = vand_s8(vorr_s8(vsub_s32(v11, vtst_s32(vshl_u32(0x200000002, v13), v12)), v13), 0xFF000000FFLL);
    if (*(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1))) <= v19.i32[1] || a1 == a2)
    {
      v8 = 1;
    }
  }

  v18 = v6;
  v15 = *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
  v17 = v7;
  return v15 < *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v8 & 1)));
}

BOOL geom::compare_z_order<signed char,(unsigned char)3>(__int32 a1, __int32 a2, int8x8_t a3, int8x8_t a4)
{
  a3.i32[0] = a1;
  v4 = vzip1_s8(a3, a3);
  a4.i32[0] = a2;
  v5 = vzip1_s8(a4, a3);
  v6 = vceq_s16((*&v4 & 0xFF00FF00FF00FFLL), (*&v5 & 0xFF00FF00FF00FFLL));
  v7.i8[0] = v6.i8[0];
  v7.i8[1] = v6.i8[2];
  v7.i8[2] = v6.i8[4];
  v7.i8[3] = v6.i8[4];
  v7.i8[4] = v6.i8[0];
  v7.i8[5] = v6.i8[2];
  v7.i8[6] = v6.i8[4];
  v7.i8[7] = v6.i8[4];
  if ((vminv_u8(v7) & 0x80) != 0)
  {
    return 0;
  }

  v8 = *&veor_s8(v5, v4) & 0xFF00FF00FF00FFLL;
  v9 = vand_s8(vcgt_u16(v8, 0xF000F000FLL), 0x4000400040004);
  v10 = vshl_u16(v8, vneg_s16((*&v9 & 0xFF00FF00FF00FFLL)));
  v11 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v10, 0xC000C000CLL)));
  v12 = vmovl_u16(vorr_s8(vsub_s16(v9, vtst_s16(vshl_u16(0x2000200020002, (*&v11 & 0xFF00FF00FF00FFLL)), v10)), v11));
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vandq_s8(v12, v13);
  if (a1 == a2)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v6.i8[2] & 1) == 0)
  {
    v23 = v14;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[1] || a1 == a2)
    {
      v15 = 1;
    }
  }

  if ((v6.i8[4] & 1) == 0)
  {
    v22 = v14;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[2] || ~v15 == 0)
    {
      v15 = 2;
    }
  }

  a3.i16[0] = a1;
  a3.i16[1] = BYTE1(a1);
  a3.i16[2] = BYTE2(a1);
  v20 = a3;
  v18 = *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
  a3.i16[0] = a2;
  a3.i16[1] = BYTE1(a2);
  a3.i16[2] = BYTE2(a2);
  v21 = a3;
  return v18 < *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
}

BOOL geom_compare_z_order_3i8(__int32 a1, __int32 a2, int8x8_t a3, int8x8_t a4)
{
  a3.i32[0] = a1;
  v4 = vzip1_s8(a3, a3);
  a4.i32[0] = a2;
  v5 = vzip1_s8(a4, a3);
  v6 = vceq_s16((*&v4 & 0xFF00FF00FF00FFLL), (*&v5 & 0xFF00FF00FF00FFLL));
  v7.i8[0] = v6.i8[0];
  v7.i8[1] = v6.i8[2];
  v7.i8[2] = v6.i8[4];
  v7.i8[3] = v6.i8[4];
  v7.i8[4] = v6.i8[0];
  v7.i8[5] = v6.i8[2];
  v7.i8[6] = v6.i8[4];
  v7.i8[7] = v6.i8[4];
  if ((vminv_u8(v7) & 0x80) != 0)
  {
    return 0;
  }

  v8 = *&veor_s8(v5, v4) & 0xFF00FF00FF00FFLL;
  v9 = vand_s8(vcgt_u16(v8, 0xF000F000FLL), 0x4000400040004);
  v10 = vshl_u16(v8, vneg_s16((*&v9 & 0xFF00FF00FF00FFLL)));
  v11 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v10, 0xC000C000CLL)));
  v12 = vmovl_u16(vorr_s8(vsub_s16(v9, vtst_s16(vshl_u16(0x2000200020002, (*&v11 & 0xFF00FF00FF00FFLL)), v10)), v11));
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vandq_s8(v12, v13);
  if (a1 == a2)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v6.i8[2] & 1) == 0)
  {
    v23 = v14;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[1] || a1 == a2)
    {
      v15 = 1;
    }
  }

  if ((v6.i8[4] & 1) == 0)
  {
    v22 = v14;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) <= v14.i32[2] || ~v15 == 0)
    {
      v15 = 2;
    }
  }

  a3.i16[0] = a1;
  a3.i16[1] = BYTE1(a1);
  a3.i16[2] = BYTE2(a1);
  v20 = a3;
  v18 = *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
  a3.i16[0] = a2;
  a3.i16[1] = BYTE1(a2);
  a3.i16[2] = BYTE2(a2);
  v21 = a3;
  return v18 < *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v15 & 3)));
}

BOOL geom::compare_z_order<signed char,(unsigned char)4>(__int32 a1, __int32 a2, int8x8_t a3)
{
  a3.i32[0] = a1;
  v3 = vzip1_s8(a3, a3);
  a3.i32[0] = a2;
  v4 = vzip1_s8(a3, a3);
  v5 = vceq_s16((*&v3 & 0xFF00FF00FF00FFLL), (*&v4 & 0xFF00FF00FF00FFLL));
  v6 = vuzp1_s8(v5, v5);
  if ((vminv_u8(v6) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a2 ^ a1;
  v7 = *&vzip1_s8(v6, v4) & 0xFF00FF00FF00FFLL;
  v8 = vand_s8(vcgt_u16(v7, 0xF000F000F000FLL), 0x4000400040004);
  v9 = vshl_u16(v7, vneg_s16(v8));
  v10 = vbic_s8(0x2000200020002, vceqz_s16((*&v9 & 0xFF0CFF0CFF0CFF0CLL)));
  v11 = vmovl_u16(vorr_s8(vsub_s16(v8, vtst_s16(vshl_u16(0x2000200020002, v10), v9)), v10));
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v13 = vandq_s8(v11, v12);
  if (a1 == a2)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  if ((v5.i8[2] & 1) == 0)
  {
    v24 = v13;
    if (*(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[1] || a1 == a2)
    {
      v14 = 1;
    }
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v23 = v13;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[2] || ~v14 == 0)
    {
      v14 = 2;
    }
  }

  if ((v5.i8[6] & 1) == 0)
  {
    v22 = v13;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[3] || ~v14 == 0)
    {
      v14 = 3;
    }
  }

  v21 = v3;
  v18 = *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
  v20 = v4;
  return v18 < *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
}

BOOL geom_compare_z_order_4i8(__int32 a1, __int32 a2, int8x8_t a3)
{
  a3.i32[0] = a1;
  v3 = vzip1_s8(a3, a3);
  a3.i32[0] = a2;
  v4 = vzip1_s8(a3, a3);
  v5 = vceq_s16((*&v3 & 0xFF00FF00FF00FFLL), (*&v4 & 0xFF00FF00FF00FFLL));
  v6 = vuzp1_s8(v5, v5);
  if ((vminv_u8(v6) & 0x80) != 0)
  {
    return 0;
  }

  v6.i32[0] = a2 ^ a1;
  v7 = *&vzip1_s8(v6, v4) & 0xFF00FF00FF00FFLL;
  v8 = vand_s8(vcgt_u16(v7, 0xF000F000F000FLL), 0x4000400040004);
  v9 = vshl_u16(v7, vneg_s16(v8));
  v10 = vbic_s8(0x2000200020002, vceqz_s16((*&v9 & 0xFF0CFF0CFF0CFF0CLL)));
  v11 = vmovl_u16(vorr_s8(vsub_s16(v8, vtst_s16(vshl_u16(0x2000200020002, v10), v9)), v10));
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v13 = vandq_s8(v11, v12);
  if (a1 == a2)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  if ((v5.i8[2] & 1) == 0)
  {
    v24 = v13;
    if (*(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[1] || a1 == a2)
    {
      v14 = 1;
    }
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v23 = v13;
    if (*(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[2] || ~v14 == 0)
    {
      v14 = 2;
    }
  }

  if ((v5.i8[6] & 1) == 0)
  {
    v22 = v13;
    if (*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) <= v13.i32[3] || ~v14 == 0)
    {
      v14 = 3;
    }
  }

  v21 = v3;
  v18 = *(&v21 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
  v20 = v4;
  return v18 < *(&v20 & 0xFFFFFFFFFFFFFFF9 | (2 * (v14 & 3)));
}

BOOL geom::compare_z_order<short,(unsigned char)2>(__int32 a1, __int32 a2, uint16x4_t a3)
{
  a3.i32[0] = a1;
  v3 = vmovl_u16(a3).u64[0];
  a3.i32[0] = a2;
  v4 = vmovl_u16(a3).u64[0];
  v5 = vceq_s32(vand_s8(v3, 0xFFFF0000FFFFLL), vand_s8(v4, 0xFFFF0000FFFFLL));
  if ((vminv_u16(vuzp1_s16(v5, v5)) & 0x8000) != 0)
  {
    return 0;
  }

  if (a1 == a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v5.i32[0] = a2 ^ a1;
    v7 = vmovl_u16(v5).u64[0];
    v8 = vand_s8(vcgt_u32(v7, 0xFF000000FFLL), 0x800000008);
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v18 = vand_s8(vorr_s8(vsub_s32(v8, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(v10, v12)), 0xFFFF0000FFFFLL);
    if (*(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1))) <= v18.i32[1] || a1 == a2)
    {
      v6 = 1;
    }
  }

  v17 = v3;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
  v16 = v4;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
}

BOOL geom_compare_z_order_2i16(__int32 a1, __int32 a2, uint16x4_t a3)
{
  a3.i32[0] = a1;
  v3 = vmovl_u16(a3).u64[0];
  a3.i32[0] = a2;
  v4 = vmovl_u16(a3).u64[0];
  v5 = vceq_s32(vand_s8(v3, 0xFFFF0000FFFFLL), vand_s8(v4, 0xFFFF0000FFFFLL));
  if ((vminv_u16(vuzp1_s16(v5, v5)) & 0x8000) != 0)
  {
    return 0;
  }

  if (a1 == a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if ((v5.i8[4] & 1) == 0)
  {
    v5.i32[0] = a2 ^ a1;
    v7 = vmovl_u16(v5).u64[0];
    v8 = vand_s8(vcgt_u32(v7, 0xFF000000FFLL), 0x800000008);
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v18 = vand_s8(vorr_s8(vsub_s32(v8, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(v10, v12)), 0xFFFF0000FFFFLL);
    if (*(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1))) <= v18.i32[1] || a1 == a2)
    {
      v6 = 1;
    }
  }

  v17 = v3;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
  v16 = v4;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
}

BOOL geom::compare_z_order<short,(unsigned char)3>(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  v3 = v2;
  v3.i16[3] = v2.i16[2];
  if ((vminv_u16(v3) & 0x8000) != 0)
  {
    return 0;
  }

  v4 = veor_s8(a2, a1);
  v5 = vand_s8(vcgt_u16(v4, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v6 = vshl_u16(v4, vneg_s16(v5));
  v7 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v6, 0xF000F000F000F0)));
  v8 = vshl_u16(v6, vneg_s16(v7));
  v9 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v8, 0xC000C000C000CLL)));
  v10 = vmovl_u16(vorr_s8(vsub_s16(v5, vtst_s16(vshl_u16(0x2000200020002, v9), v8)), vorr_s8(v7, v9)));
  v11 = vmvn_s8(v2).u8[0];
  v12 = (v11 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v19 = v10;
    if ((v11 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v11 & 1) - 1) & 3))) > v10.i32[1])) == 0)
    {
      v12 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v18 = v10;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) <= v10.i32[2] || ~v12 == 0)
    {
      v12 = 2;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
}

BOOL geom_compare_z_order_3i16(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  v3 = v2;
  v3.i16[3] = v2.i16[2];
  if ((vminv_u16(v3) & 0x8000) != 0)
  {
    return 0;
  }

  v4 = veor_s8(a2, a1);
  v5 = vand_s8(vcgt_u16(v4, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v6 = vshl_u16(v4, vneg_s16(v5));
  v7 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v6, 0xF000F000F000F0)));
  v8 = vshl_u16(v6, vneg_s16(v7));
  v9 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v8, 0xC000C000C000CLL)));
  v10 = vmovl_u16(vorr_s8(vsub_s16(v5, vtst_s16(vshl_u16(0x2000200020002, v9), v8)), vorr_s8(v7, v9)));
  v11 = vmvn_s8(v2).u8[0];
  v12 = (v11 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v19 = v10;
    if ((v11 & (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v11 & 1) - 1) & 3))) > v10.i32[1])) == 0)
    {
      v12 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v18 = v10;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) <= v10.i32[2] || ~v12 == 0)
    {
      v12 = 2;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v12 & 3)));
}

BOOL geom::compare_z_order<short,(unsigned char)4>(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  if ((vminv_u16(v2) & 0x8000) != 0)
  {
    return 0;
  }

  v3 = veor_s8(a2, a1);
  v4 = vand_s8(vcgt_u16(v3, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v5 = vshl_u16(v3, vneg_s16(v4));
  v6 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v5, 0xF000F000F000F0)));
  v7 = vshl_u16(v5, vneg_s16(v6));
  v8 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v7, 0xC000C000C000CLL)));
  v9 = vmovl_u16(vorr_s8(vsub_s16(v4, vtst_s16(vshl_u16(0x2000200020002, v8), v7)), vorr_s8(v6, v8)));
  v10 = vmvn_s8(v2).u8[0];
  v11 = (v10 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v20 = v9;
    if ((v10 & (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v10 & 1) - 1) & 3))) > v9.i32[1])) == 0)
    {
      v11 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v19 = v9;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[2] || ~v11 == 0)
    {
      v11 = 2;
    }
  }

  if ((v2.i8[6] & 1) == 0)
  {
    v18 = v9;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[3] || ~v11 == 0)
    {
      v11 = 3;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
}

BOOL geom_compare_z_order_4i16(int16x4_t a1, int16x4_t a2)
{
  v2 = vceq_s16(a1, a2);
  if ((vminv_u16(v2) & 0x8000) != 0)
  {
    return 0;
  }

  v3 = veor_s8(a2, a1);
  v4 = vand_s8(vcgt_u16(v3, 0xFF00FF00FF00FFLL), 0x8000800080008);
  v5 = vshl_u16(v3, vneg_s16(v4));
  v6 = vbic_s8(0x4000400040004, vceqz_s16(vand_s8(v5, 0xF000F000F000F0)));
  v7 = vshl_u16(v5, vneg_s16(v6));
  v8 = vbic_s8(0x2000200020002, vceqz_s16(vand_s8(v7, 0xC000C000C000CLL)));
  v9 = vmovl_u16(vorr_s8(vsub_s16(v4, vtst_s16(vshl_u16(0x2000200020002, v8), v7)), vorr_s8(v6, v8)));
  v10 = vmvn_s8(v2).u8[0];
  v11 = (v10 & 1) - 1;
  if ((v2.i8[2] & 1) == 0)
  {
    v20 = v9;
    if ((v10 & (*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v10 & 1) - 1) & 3))) > v9.i32[1])) == 0)
    {
      v11 = 1;
    }
  }

  if ((v2.i8[4] & 1) == 0)
  {
    v19 = v9;
    if (*(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[2] || ~v11 == 0)
    {
      v11 = 2;
    }
  }

  if ((v2.i8[6] & 1) == 0)
  {
    v18 = v9;
    if (*(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) <= v9.i32[3] || ~v11 == 0)
    {
      v11 = 3;
    }
  }

  v17 = a1;
  v14 = *(&v17 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
  v16 = a2;
  return v14 < *(&v16 & 0xFFFFFFFFFFFFFFF9 | (2 * (v11 & 3)));
}

BOOL geom::compare_z_order<int,(unsigned char)2>(int32x2_t a1, int32x2_t a2)
{
  v2 = vceq_s32(a1, a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  if ((v2.i8[4] & 1) == 0)
  {
    v5 = veor_s8(a2, a1);
    v6 = vand_s8(vcgt_u32(v5, 0xFFFF0000FFFFLL), 0x1000000010);
    v7 = vshl_u32(v5, vneg_s32(v6));
    v8 = vbic_s8(0x800000008, vceqz_s32(vand_s8(v7, 0xFF000000FF00)));
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v17 = vorr_s8(vsub_s32(v6, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(vorr_s8(v8, v10), v12));
    if ((v3 & (*(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v17.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v15 = a1;
  v13 = *(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v16 = a2;
  return v13 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom_compare_z_order_2i(int32x2_t a1, int32x2_t a2)
{
  v2 = vceq_s32(a1, a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = vmvn_s8(v2).u8[0];
  v4 = ~v3;
  if ((v2.i8[4] & 1) == 0)
  {
    v5 = veor_s8(a2, a1);
    v6 = vand_s8(vcgt_u32(v5, 0xFFFF0000FFFFLL), 0x1000000010);
    v7 = vshl_u32(v5, vneg_s32(v6));
    v8 = vbic_s8(0x800000008, vceqz_s32(vand_s8(v7, 0xFF000000FF00)));
    v9 = vshl_u32(v7, vneg_s32(v8));
    v10 = vbic_s8(0x400000004, vceqz_s32(vand_s8(v9, 0xF0000000F0)));
    v11 = vshl_u32(v9, vneg_s32(v10));
    v12 = vbic_s8(0x200000002, vceqz_s32(vand_s8(v11, 0xC0000000CLL)));
    v17 = vorr_s8(vsub_s32(v6, vtst_s32(vshl_u32(0x200000002, v12), v11)), vorr_s8(vorr_s8(v8, v10), v12));
    if ((v3 & (*(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v17.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v15 = a1;
  v13 = *(&v15 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
  v16 = a2;
  return v13 < *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
}

BOOL geom::compare_z_order<int,(unsigned char)3>(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = veorq_s8(a2, a1);
  v5.i64[0] = 0xFFFF0000FFFFLL;
  v5.i64[1] = 0xFFFF0000FFFFLL;
  v6.i64[0] = 0x1000000010;
  v6.i64[1] = 0x1000000010;
  v7 = vandq_s8(vcgtq_u32(v4, v5), v6);
  v8 = vshlq_u32(v4, vnegq_s32(v7));
  v6.i64[0] = 0xFF000000FF00;
  v6.i64[1] = 0xFF000000FF00;
  v9.i64[0] = 0x800000008;
  v9.i64[1] = 0x800000008;
  v10 = vbicq_s8(v9, vceqzq_s32(vandq_s8(v8, v6)));
  v11 = vshlq_u32(v8, vnegq_s32(v10));
  v9.i64[0] = 0xF0000000F0;
  v9.i64[1] = 0xF0000000F0;
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v13 = vbicq_s8(v12, vceqzq_s32(vandq_s8(v11, v9)));
  v14 = vshlq_u32(v11, vnegq_s32(v13));
  v12.i64[0] = 0xC0000000CLL;
  v12.i64[1] = 0xC0000000CLL;
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v16 = vbicq_s8(v15, vceqzq_s32(vandq_s8(v14, v12)));
  v17 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v18 = vorrq_s8(vsubq_s32(v7, vtstq_s32(vshlq_u32(v15, v16), v14)), vorrq_s8(vorrq_s8(v10, v13), v16));
  v19 = (v17 & 1) - 1;
  v20 = vmovn_s32(v2);
  if ((v20.i8[2] & 1) == 0)
  {
    v27 = v18;
    if ((v17 & (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v17 & 1) - 1) & 3))) > v18.i32[1])) == 0)
    {
      v19 = 1;
    }
  }

  if ((v20.i8[4] & 1) == 0)
  {
    v26 = v18;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3))) <= v18.i32[2] || ~v19 == 0)
    {
      v19 = 2;
    }
  }

  v25 = a1;
  v22 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
  v24 = a2;
  return v22 < *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
}

BOOL geom_compare_z_order_3i(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  v3 = v2;
  v3.i32[3] = v2.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = veorq_s8(a2, a1);
  v5.i64[0] = 0xFFFF0000FFFFLL;
  v5.i64[1] = 0xFFFF0000FFFFLL;
  v6.i64[0] = 0x1000000010;
  v6.i64[1] = 0x1000000010;
  v7 = vandq_s8(vcgtq_u32(v4, v5), v6);
  v8 = vshlq_u32(v4, vnegq_s32(v7));
  v6.i64[0] = 0xFF000000FF00;
  v6.i64[1] = 0xFF000000FF00;
  v9.i64[0] = 0x800000008;
  v9.i64[1] = 0x800000008;
  v10 = vbicq_s8(v9, vceqzq_s32(vandq_s8(v8, v6)));
  v11 = vshlq_u32(v8, vnegq_s32(v10));
  v9.i64[0] = 0xF0000000F0;
  v9.i64[1] = 0xF0000000F0;
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v13 = vbicq_s8(v12, vceqzq_s32(vandq_s8(v11, v9)));
  v14 = vshlq_u32(v11, vnegq_s32(v13));
  v12.i64[0] = 0xC0000000CLL;
  v12.i64[1] = 0xC0000000CLL;
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v16 = vbicq_s8(v15, vceqzq_s32(vandq_s8(v14, v12)));
  v17 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v18 = vorrq_s8(vsubq_s32(v7, vtstq_s32(vshlq_u32(v15, v16), v14)), vorrq_s8(vorrq_s8(v10, v13), v16));
  v19 = (v17 & 1) - 1;
  v20 = vmovn_s32(v2);
  if ((v20.i8[2] & 1) == 0)
  {
    v27 = v18;
    if ((v17 & (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v17 & 1) - 1) & 3))) > v18.i32[1])) == 0)
    {
      v19 = 1;
    }
  }

  if ((v20.i8[4] & 1) == 0)
  {
    v26 = v18;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3))) <= v18.i32[2] || ~v19 == 0)
    {
      v19 = 2;
    }
  }

  v25 = a1;
  v22 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
  v24 = a2;
  return v22 < *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
}

BOOL geom::compare_z_order<int,(unsigned char)4>(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = veorq_s8(a2, a1);
  v4.i64[0] = 0xFFFF0000FFFFLL;
  v4.i64[1] = 0xFFFF0000FFFFLL;
  v5.i64[0] = 0x1000000010;
  v5.i64[1] = 0x1000000010;
  v6 = vandq_s8(vcgtq_u32(v3, v4), v5);
  v7 = vshlq_u32(v3, vnegq_s32(v6));
  v5.i64[0] = 0xFF000000FF00;
  v5.i64[1] = 0xFF000000FF00;
  v8.i64[0] = 0x800000008;
  v8.i64[1] = 0x800000008;
  v9 = vbicq_s8(v8, vceqzq_s32(vandq_s8(v7, v5)));
  v10 = vshlq_u32(v7, vnegq_s32(v9));
  v8.i64[0] = 0xF0000000F0;
  v8.i64[1] = 0xF0000000F0;
  v11.i64[0] = 0x400000004;
  v11.i64[1] = 0x400000004;
  v12 = vbicq_s8(v11, vceqzq_s32(vandq_s8(v10, v8)));
  v13 = vshlq_u32(v10, vnegq_s32(v12));
  v11.i64[0] = 0xC0000000CLL;
  v11.i64[1] = 0xC0000000CLL;
  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v15 = vbicq_s8(v14, vceqzq_s32(vandq_s8(v13, v11)));
  v16 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v17 = vorrq_s8(vsubq_s32(v6, vtstq_s32(vshlq_u32(v14, v15), v13)), vorrq_s8(vorrq_s8(v9, v12), v15));
  v18 = (v16 & 1) - 1;
  v19 = vmovn_s32(v2);
  if ((v19.i8[2] & 1) == 0)
  {
    v28 = v17;
    if ((v16 & (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v16 & 1) - 1) & 3))) > v17.i32[1])) == 0)
    {
      v18 = 1;
    }
  }

  if ((v19.i8[4] & 1) == 0)
  {
    v27 = v17;
    if (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[2] || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  if ((v19.i8[6] & 1) == 0)
  {
    v26 = v17;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[3] || ~v18 == 0)
    {
      v18 = 3;
    }
  }

  v24 = a1;
  v22 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
  v25 = a2;
  return v22 < *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
}

BOOL geom_compare_z_order_4i(int32x4_t a1, int32x4_t a2)
{
  v2 = vceqq_s32(a1, a2);
  if ((vminvq_u32(v2) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = veorq_s8(a2, a1);
  v4.i64[0] = 0xFFFF0000FFFFLL;
  v4.i64[1] = 0xFFFF0000FFFFLL;
  v5.i64[0] = 0x1000000010;
  v5.i64[1] = 0x1000000010;
  v6 = vandq_s8(vcgtq_u32(v3, v4), v5);
  v7 = vshlq_u32(v3, vnegq_s32(v6));
  v5.i64[0] = 0xFF000000FF00;
  v5.i64[1] = 0xFF000000FF00;
  v8.i64[0] = 0x800000008;
  v8.i64[1] = 0x800000008;
  v9 = vbicq_s8(v8, vceqzq_s32(vandq_s8(v7, v5)));
  v10 = vshlq_u32(v7, vnegq_s32(v9));
  v8.i64[0] = 0xF0000000F0;
  v8.i64[1] = 0xF0000000F0;
  v11.i64[0] = 0x400000004;
  v11.i64[1] = 0x400000004;
  v12 = vbicq_s8(v11, vceqzq_s32(vandq_s8(v10, v8)));
  v13 = vshlq_u32(v10, vnegq_s32(v12));
  v11.i64[0] = 0xC0000000CLL;
  v11.i64[1] = 0xC0000000CLL;
  v14.i64[0] = 0x200000002;
  v14.i64[1] = 0x200000002;
  v15 = vbicq_s8(v14, vceqzq_s32(vandq_s8(v13, v11)));
  v16 = vmovn_s32(vmvnq_s8(v2)).u8[0];
  v17 = vorrq_s8(vsubq_s32(v6, vtstq_s32(vshlq_u32(v14, v15), v13)), vorrq_s8(vorrq_s8(v9, v12), v15));
  v18 = (v16 & 1) - 1;
  v19 = vmovn_s32(v2);
  if ((v19.i8[2] & 1) == 0)
  {
    v28 = v17;
    if ((v16 & (*(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v16 & 1) - 1) & 3))) > v17.i32[1])) == 0)
    {
      v18 = 1;
    }
  }

  if ((v19.i8[4] & 1) == 0)
  {
    v27 = v17;
    if (*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[2] || ~v18 == 0)
    {
      v18 = 2;
    }
  }

  if ((v19.i8[6] & 1) == 0)
  {
    v26 = v17;
    if (*(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) <= v17.i32[3] || ~v18 == 0)
    {
      v18 = 3;
    }
  }

  v24 = a1;
  v22 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
  v25 = a2;
  return v22 < *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
}

BOOL geom::compare_z_order<long long,(unsigned char)2>(int64x2_t a1, int64x2_t a2)
{
  v2 = vceqq_s64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  if ((vmovn_s64(v2).i32[1] & 1) == 0)
  {
    v5 = veorq_s8(a2, a1);
    v6.i64[0] = 0xFFFFFFFFLL;
    v6.i64[1] = 0xFFFFFFFFLL;
    v7 = vandq_s8(vcgtq_u64(v5, v6), vdupq_n_s64(0x20uLL));
    v8 = vshlq_u64(v5, vnegq_s64(v7));
    v9.i64[0] = 4294901760;
    v9.i64[1] = 4294901760;
    v10 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v8, v9)));
    v11 = vshlq_u64(v8, vnegq_s64(v10));
    v12.i64[0] = 65280;
    v12.i64[1] = 65280;
    v13 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v11, v12)));
    v14 = vshlq_u64(v11, vnegq_s64(v13));
    v15 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v14, vdupq_n_s64(0xF0uLL))));
    v16 = vshlq_u64(v14, vnegq_s64(v15));
    v17 = vdupq_n_s64(2uLL);
    v18 = vbicq_s8(v17, vceqzq_s64(vandq_s8(v16, vdupq_n_s64(0xCuLL))));
    v23 = vmovn_s64(vorrq_s8(vsubq_s64(v7, vtstq_s64(vshlq_u64(v17, v18), v16)), vorrq_s8(vorrq_s8(vorrq_s8(v10, v13), v15), v18)));
    if ((v3 & (*(&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v23.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v21 = a1;
  v19 = *(&v21 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v22 = a2;
  return v19 < *(&v22 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom_compare_z_order_2i64(int64x2_t a1, int64x2_t a2)
{
  v2 = vceqq_s64(a1, a2);
  if ((vandq_s8(vdupq_laneq_s64(v2, 1), v2).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = vmovn_s64(vmvnq_s8(v2)).u8[0];
  v4 = ~v3;
  if ((vmovn_s64(v2).i32[1] & 1) == 0)
  {
    v5 = veorq_s8(a2, a1);
    v6.i64[0] = 0xFFFFFFFFLL;
    v6.i64[1] = 0xFFFFFFFFLL;
    v7 = vandq_s8(vcgtq_u64(v5, v6), vdupq_n_s64(0x20uLL));
    v8 = vshlq_u64(v5, vnegq_s64(v7));
    v9.i64[0] = 4294901760;
    v9.i64[1] = 4294901760;
    v10 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v8, v9)));
    v11 = vshlq_u64(v8, vnegq_s64(v10));
    v12.i64[0] = 65280;
    v12.i64[1] = 65280;
    v13 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v11, v12)));
    v14 = vshlq_u64(v11, vnegq_s64(v13));
    v15 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v14, vdupq_n_s64(0xF0uLL))));
    v16 = vshlq_u64(v14, vnegq_s64(v15));
    v17 = vdupq_n_s64(2uLL);
    v18 = vbicq_s8(v17, vceqzq_s64(vandq_s8(v16, vdupq_n_s64(0xCuLL))));
    v23 = vmovn_s64(vorrq_s8(vsubq_s64(v7, vtstq_s64(vshlq_u64(v17, v18), v16)), vorrq_s8(vorrq_s8(vorrq_s8(v10, v13), v15), v18)));
    if ((v3 & (*(&v23 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v3 & 1) == 0))) > v23.i32[1])) == 0)
    {
      v4 = 1;
    }
  }

  v21 = a1;
  v19 = *(&v21 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
  v22 = a2;
  return v19 < *(&v22 & 0xFFFFFFFFFFFFFFF7 | (8 * (v4 & 1)));
}

BOOL geom::compare_z_order<long long,(unsigned char)3>(uint64_t a1, uint64_t a2)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *a2;
  v11 = *(a2 + 16);
  v12 = vceqq_s64(v9, v11);
  v13 = vceqq_s64(*a1, *a2);
  if ((v13.i64[0] & v13.i64[1] & v12.i64[0]) < 0 != v2)
  {
    return 0;
  }

  v14 = vextq_s8(v8, v8, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = veorq_s8(v11, v9);
  v17 = veorq_s8(v10, v8);
  v18.i64[0] = 0xFFFFFFFFLL;
  v18.i64[1] = 0xFFFFFFFFLL;
  v19 = vcgtq_u64(v17, v18);
  v3.i64[0] = 32;
  v20 = vandq_s8(vcgtq_u64(v16, v18), v3);
  v21 = vandq_s8(v19, vdupq_n_s64(0x20uLL));
  v22 = vshlq_u64(v17, vnegq_s64(v21));
  v23 = vshlq_u64(v16, vnegq_s64(v20));
  LOBYTE(v24) = 0;
  v16.i16[0] = 0;
  v16.i16[1] = v23.i16[1];
  v17.i64[0] = 4294901760;
  v17.i64[1] = 4294901760;
  v4.i64[0] = 16;
  v25 = vbicq_s8(v4, vceqzq_s64(v16.u32[0]));
  v26 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v22, v17)));
  v27 = vshlq_u64(v22, vnegq_s64(v26));
  v28 = vshlq_u64(v23, vnegq_s64(v25));
  HIBYTE(v24) = v28.i8[1];
  v29.i64[0] = 65280;
  v29.i64[1] = 65280;
  v5.i64[0] = 8;
  v30 = vbicq_s8(v5, vceqzq_s64(v24));
  v31 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v27, v29)));
  v32 = vshlq_u64(v27, vnegq_s64(v31));
  v33 = vshlq_u64(v28, vnegq_s64(v30));
  v5.i64[0] = 240;
  v6.i64[0] = 4;
  v34 = vbicq_s8(v6, vceqzq_s64(vandq_s8(v33, v5)));
  v35 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v32, vdupq_n_s64(0xF0uLL))));
  v36 = vshlq_u64(v32, vnegq_s64(v35));
  v37 = vshlq_u64(v33, vnegq_s64(v34));
  v6.i64[0] = 12;
  v38 = vdupq_n_s64(2uLL);
  v7.i64[0] = 2;
  v39 = vbicq_s8(v7, vceqzq_s64(vandq_s8(v37, v6)));
  v40 = vbicq_s8(v38, vceqzq_s64(vandq_s8(v36, vdupq_n_s64(0xCuLL))));
  v41 = vuzp1q_s32(vorrq_s8(vsubq_s64(v21, vtstq_s64(vshlq_u64(v38, v40), v36)), vorrq_s8(vorrq_s8(vorrq_s8(v26, v31), v35), v40)), vorrq_s8(vsubq_s64(v20, vtstq_s64(vshlq_u64(v7, v39), v37)), vorrq_s8(vorrq_s8(vorrq_s8(v25, v30), v34), v39)));
  v42 = vuzp1_s16(vmovn_s64(vmvnq_s8(v13)), *v10.i8).u8[0];
  v43 = (v42 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(v13), *&v10).i8[2] & 1) == 0)
  {
    v51 = v41;
    if ((v42 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v42 & 1) - 1) & 3))) > v41.i32[1])) == 0)
    {
      v43 = 1;
    }
  }

  if ((vuzp1_s16(*&v10, vmovn_s64(v12)).i32[1] & 1) == 0)
  {
    v50 = v41;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) <= v41.i32[2] || ~v43 == 0)
    {
      v43 = 2;
    }
  }

  v8.i64[1] = v14;
  v49[0] = v8;
  v49[1] = v9;
  v45 = v43 & 3;
  v46 = *(v49 + v45);
  v10.i64[1] = v15;
  v48[0] = v10;
  v48[1] = v11;
  return v46 < *(v48 + v45);
}

BOOL geom_compare_z_order_3i64(uint64_t a1, uint64_t a2)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *a2;
  v11 = *(a2 + 16);
  v12 = vceqq_s64(v9, v11);
  v13 = vceqq_s64(*a1, *a2);
  if ((v13.i64[0] & v13.i64[1] & v12.i64[0]) < 0 != v2)
  {
    return 0;
  }

  v14 = vextq_s8(v8, v8, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = veorq_s8(v11, v9);
  v17 = veorq_s8(v10, v8);
  v18.i64[0] = 0xFFFFFFFFLL;
  v18.i64[1] = 0xFFFFFFFFLL;
  v19 = vcgtq_u64(v17, v18);
  v3.i64[0] = 32;
  v20 = vandq_s8(vcgtq_u64(v16, v18), v3);
  v21 = vandq_s8(v19, vdupq_n_s64(0x20uLL));
  v22 = vshlq_u64(v17, vnegq_s64(v21));
  v23 = vshlq_u64(v16, vnegq_s64(v20));
  LOBYTE(v24) = 0;
  v16.i16[0] = 0;
  v16.i16[1] = v23.i16[1];
  v17.i64[0] = 4294901760;
  v17.i64[1] = 4294901760;
  v4.i64[0] = 16;
  v25 = vbicq_s8(v4, vceqzq_s64(v16.u32[0]));
  v26 = vbicq_s8(vdupq_n_s64(0x10uLL), vceqzq_s64(vandq_s8(v22, v17)));
  v27 = vshlq_u64(v22, vnegq_s64(v26));
  v28 = vshlq_u64(v23, vnegq_s64(v25));
  HIBYTE(v24) = v28.i8[1];
  v29.i64[0] = 65280;
  v29.i64[1] = 65280;
  v5.i64[0] = 8;
  v30 = vbicq_s8(v5, vceqzq_s64(v24));
  v31 = vbicq_s8(vdupq_n_s64(8uLL), vceqzq_s64(vandq_s8(v27, v29)));
  v32 = vshlq_u64(v27, vnegq_s64(v31));
  v33 = vshlq_u64(v28, vnegq_s64(v30));
  v5.i64[0] = 240;
  v6.i64[0] = 4;
  v34 = vbicq_s8(v6, vceqzq_s64(vandq_s8(v33, v5)));
  v35 = vbicq_s8(vdupq_n_s64(4uLL), vceqzq_s64(vandq_s8(v32, vdupq_n_s64(0xF0uLL))));
  v36 = vshlq_u64(v32, vnegq_s64(v35));
  v37 = vshlq_u64(v33, vnegq_s64(v34));
  v6.i64[0] = 12;
  v38 = vdupq_n_s64(2uLL);
  v7.i64[0] = 2;
  v39 = vbicq_s8(v7, vceqzq_s64(vandq_s8(v37, v6)));
  v40 = vbicq_s8(v38, vceqzq_s64(vandq_s8(v36, vdupq_n_s64(0xCuLL))));
  v41 = vuzp1q_s32(vorrq_s8(vsubq_s64(v21, vtstq_s64(vshlq_u64(v38, v40), v36)), vorrq_s8(vorrq_s8(vorrq_s8(v26, v31), v35), v40)), vorrq_s8(vsubq_s64(v20, vtstq_s64(vshlq_u64(v7, v39), v37)), vorrq_s8(vorrq_s8(vorrq_s8(v25, v30), v34), v39)));
  v42 = vuzp1_s16(vmovn_s64(vmvnq_s8(v13)), *v10.i8).u8[0];
  v43 = (v42 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(v13), *&v10).i8[2] & 1) == 0)
  {
    v51 = v41;
    if ((v42 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v42 & 1) - 1) & 3))) > v41.i32[1])) == 0)
    {
      v43 = 1;
    }
  }

  if ((vuzp1_s16(*&v10, vmovn_s64(v12)).i32[1] & 1) == 0)
  {
    v50 = v41;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) <= v41.i32[2] || ~v43 == 0)
    {
      v43 = 2;
    }
  }

  v8.i64[1] = v14;
  v49[0] = v8;
  v49[1] = v9;
  v45 = v43 & 3;
  v46 = *(v49 + v45);
  v10.i64[1] = v15;
  v48[0] = v10;
  v48[1] = v11;
  return v46 < *(v48 + v45);
}

BOOL geom::compare_z_order<long long,(unsigned char)4>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  v6 = vceqq_s64(v3, v5);
  v7 = vceqq_s64(*a1, *a2);
  v8 = vandq_s8(v7, v6);
  if ((vandq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v9 = veorq_s8(v5, v3);
  v10 = veorq_s8(v4, v2);
  v11.i64[0] = 0xFFFFFFFFLL;
  v11.i64[1] = 0xFFFFFFFFLL;
  v12 = vcgtq_u64(v10, v11);
  v13 = vdupq_n_s64(0x20uLL);
  v14 = vandq_s8(vcgtq_u64(v9, v11), v13);
  v15 = vandq_s8(v12, v13);
  v16 = vshlq_u64(v10, vnegq_s64(v15));
  v17 = vshlq_u64(v9, vnegq_s64(v14));
  v13.i64[0] = 4294901760;
  v13.i64[1] = 4294901760;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v17, v13)));
  v20 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v16, v13)));
  v21 = vshlq_u64(v16, vnegq_s64(v20));
  v22 = vshlq_u64(v17, vnegq_s64(v19));
  v18.i64[0] = 65280;
  v18.i64[1] = 65280;
  v23 = vdupq_n_s64(8uLL);
  v24 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v22, v18)));
  v25 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v21, v18)));
  v26 = vshlq_u64(v21, vnegq_s64(v25));
  v27 = vshlq_u64(v22, vnegq_s64(v24));
  v28 = vdupq_n_s64(0xF0uLL);
  v29 = vdupq_n_s64(4uLL);
  v30 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v27, v28)));
  v31 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v26, v28)));
  v32 = vshlq_u64(v26, vnegq_s64(v31));
  v33 = vdupq_n_s64(0xCuLL);
  v34 = vshlq_u64(v27, vnegq_s64(v30));
  v35 = vdupq_n_s64(2uLL);
  v36 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v34, v33)));
  v37 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v32, v33)));
  v38 = vuzp1q_s32(vorrq_s8(vsubq_s64(v15, vtstq_s64(vshlq_u64(v35, v37), v32)), vorrq_s8(vorrq_s8(vorrq_s8(v20, v25), v31), v37)), vorrq_s8(vsubq_s64(v14, vtstq_s64(vshlq_u64(v35, v36), v34)), vorrq_s8(vorrq_s8(vorrq_s8(v19, v24), v30), v36)));
  v39 = vuzp1_s16(vmovn_s64(vmvnq_s8(v7)), *v4.i8).u8[0];
  v40 = (v39 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(v7), *&v4).i8[2] & 1) == 0)
  {
    v51 = v38;
    if ((v39 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v39 & 1) - 1) & 3))) > v38.i32[1])) == 0)
    {
      v40 = 1;
    }
  }

  v41 = vmovn_s64(v6);
  if ((vuzp1_s16(*&v4, v41).i32[1] & 1) == 0)
  {
    v50 = v38;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[2] || ~v40 == 0)
    {
      v40 = 2;
    }
  }

  if ((vuzp1_s16(*&v4, v41).i8[6] & 1) == 0)
  {
    v49 = v38;
    if (*(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[3] || ~v40 == 0)
    {
      v40 = 3;
    }
  }

  v48[0] = v2;
  v48[1] = v3;
  v44 = v40 & 3;
  v45 = *(v48 + v44);
  v47[0] = v4;
  v47[1] = v5;
  return v45 < *(v47 + v44);
}

BOOL geom_compare_z_order_4i64(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  v6 = vceqq_s64(v3, v5);
  v7 = vceqq_s64(*a1, *a2);
  v8 = vandq_s8(v7, v6);
  if ((vandq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v9 = veorq_s8(v5, v3);
  v10 = veorq_s8(v4, v2);
  v11.i64[0] = 0xFFFFFFFFLL;
  v11.i64[1] = 0xFFFFFFFFLL;
  v12 = vcgtq_u64(v10, v11);
  v13 = vdupq_n_s64(0x20uLL);
  v14 = vandq_s8(vcgtq_u64(v9, v11), v13);
  v15 = vandq_s8(v12, v13);
  v16 = vshlq_u64(v10, vnegq_s64(v15));
  v17 = vshlq_u64(v9, vnegq_s64(v14));
  v13.i64[0] = 4294901760;
  v13.i64[1] = 4294901760;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v17, v13)));
  v20 = vbicq_s8(v18, vceqzq_s64(vandq_s8(v16, v13)));
  v21 = vshlq_u64(v16, vnegq_s64(v20));
  v22 = vshlq_u64(v17, vnegq_s64(v19));
  v18.i64[0] = 65280;
  v18.i64[1] = 65280;
  v23 = vdupq_n_s64(8uLL);
  v24 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v22, v18)));
  v25 = vbicq_s8(v23, vceqzq_s64(vandq_s8(v21, v18)));
  v26 = vshlq_u64(v21, vnegq_s64(v25));
  v27 = vshlq_u64(v22, vnegq_s64(v24));
  v28 = vdupq_n_s64(0xF0uLL);
  v29 = vdupq_n_s64(4uLL);
  v30 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v27, v28)));
  v31 = vbicq_s8(v29, vceqzq_s64(vandq_s8(v26, v28)));
  v32 = vshlq_u64(v26, vnegq_s64(v31));
  v33 = vdupq_n_s64(0xCuLL);
  v34 = vshlq_u64(v27, vnegq_s64(v30));
  v35 = vdupq_n_s64(2uLL);
  v36 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v34, v33)));
  v37 = vbicq_s8(v35, vceqzq_s64(vandq_s8(v32, v33)));
  v38 = vuzp1q_s32(vorrq_s8(vsubq_s64(v15, vtstq_s64(vshlq_u64(v35, v37), v32)), vorrq_s8(vorrq_s8(vorrq_s8(v20, v25), v31), v37)), vorrq_s8(vsubq_s64(v14, vtstq_s64(vshlq_u64(v35, v36), v34)), vorrq_s8(vorrq_s8(vorrq_s8(v19, v24), v30), v36)));
  v39 = vuzp1_s16(vmovn_s64(vmvnq_s8(v7)), *v4.i8).u8[0];
  v40 = (v39 & 1) - 1;
  if ((vuzp1_s16(vmovn_s64(v7), *&v4).i8[2] & 1) == 0)
  {
    v51 = v38;
    if ((v39 & (*(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (((v39 & 1) - 1) & 3))) > v38.i32[1])) == 0)
    {
      v40 = 1;
    }
  }

  v41 = vmovn_s64(v6);
  if ((vuzp1_s16(*&v4, v41).i32[1] & 1) == 0)
  {
    v50 = v38;
    if (*(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[2] || ~v40 == 0)
    {
      v40 = 2;
    }
  }

  if ((vuzp1_s16(*&v4, v41).i8[6] & 1) == 0)
  {
    v49 = v38;
    if (*(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) <= v38.i32[3] || ~v40 == 0)
    {
      v40 = 3;
    }
  }

  v48[0] = v2;
  v48[1] = v3;
  v44 = v40 & 3;
  v45 = *(v48 + v44);
  v47[0] = v4;
  v47[1] = v5;
  return v45 < *(v47 + v44);
}

uint64_t geom::anonymous namespace::msdb<float,0>(float a1, float a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (a1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a1;
  }

  if (a2 == 0.0)
  {
    a2 = a1;
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  if ((LODWORD(v4) ^ LODWORD(a2)) < 0)
  {
    return 128;
  }

  if (v4 == 0.0)
  {
    return (LODWORD(a2) >> 23) - 127;
  }

  v5 = (LODWORD(v4) >> 23);
  v6 = (LODWORD(a2) >> 23);
  if (v5 > v6)
  {
    v6 = (LODWORD(v4) >> 23);
  }

  v7 = v6 - 127;
  v8 = v5 - __clz((LODWORD(v4) ^ LODWORD(a2)) & 0x7FFFFF) - 119;
  if (v5 == (LODWORD(a2) >> 23))
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t geom::anonymous namespace::msdb<double,0>(double a1, double a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (a1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a1;
  }

  if (a2 == 0.0)
  {
    a2 = a1;
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  if (((*&v4 ^ *&a2) & 0x8000000000000000) != 0)
  {
    return 1024;
  }

  if (v4 == 0.0)
  {
    return ((*&a2 >> 52) & 0x7FF) - 1023;
  }

  v5 = (*&v4 >> 52) & 0x7FFLL;
  v6 = (*&a2 >> 52) & 0x7FFLL;
  if (v5 <= v6)
  {
    v7 = (*&a2 >> 52) & 0x7FF;
  }

  else
  {
    v7 = (*&v4 >> 52) & 0x7FF;
  }

  v8 = v7 - 1023;
  v9 = v5 - __clz((*&v4 ^ *&a2) & 0xFFFFFFFFFFFFFLL) - 1012;
  if (v5 == v6)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

void geom::partitioned_set::split(uint64_t *a1, _DWORD *a2, unsigned int a3, std::vector<unsigned int> *this, uint64_t a5)
{
  std::vector<float>::resize(this, 0);
  v10 = a3;
  std::vector<unsigned int>::resize(this, a3, &geom::partitioned_set::null_index);
  v11 = *a2;
  v12 = a1[9];
  v13 = a1 + 9;
  if (v11 < (a1[10] - v12) >> 3)
  {
    v14 = *(v12 + 8 * v11);
    if (v14 != -1)
    {
      if (!a3)
      {
        goto LABEL_10;
      }

      v15 = 0;
      v16 = 4 * v10;
      do
      {
        v17 = a1[13];
        if (a1[12] == v17)
        {
          v18 = (a1[10] - a1[9]) >> 3;
          v30 = -1;
          _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_((a1 + 9), &v30);
        }

        else
        {
          LODWORD(v18) = *(v17 - 4);
          a1[13] = v17 - 4;
        }

        this->__begin_[v15 / 4] = v18;
        v15 += 4;
      }

      while (v16 != v15);
      v19 = *v13;
      v14 = *(*v13 + 8 * *a2);
      if (v14 == -1)
      {
        begin = this->__begin_;
      }

      else
      {
LABEL_10:
        v20 = *a1;
        do
        {
          v21 = v20[v14];
          v22 = std::function<unsigned int ()>::operator()(a5, v14);
          begin = this->__begin_;
          v19 = *v13;
          v24 = (*v13 + 8 * this->__begin_[v22]);
          if (*v24 == -1)
          {
            *v24 = v14;
            v24[1] = v14;
            *(a1[3] + 4 * v14) = -1;
            v20 = *a1;
          }

          else
          {
            v20 = *a1;
            *(*a1 + 4 * v24[1]) = v14;
            *(a1[3] + 4 * v14) = v24[1];
            v24[1] = v14;
          }

          v20[v14] = -1;
          v14 = v21;
        }

        while (v21 != -1);
      }

      end = this->__end_;
      if (begin != end)
      {
        do
        {
          v26 = *begin;
          v27 = *v13;
          v28 = *(*v13 + 8 * v26);
          if (v28 == -1)
          {
            std::vector<unsigned int>::push_back[abi:nn200100](a1 + 12, begin);
            *begin = -1;
          }

          else
          {
            v29 = a1[6];
            *(v29 + 4 * v28) = v26;
            *(v29 + 4 * *(v27 + 8 * *begin + 4)) = *begin;
          }

          ++begin;
        }

        while (begin != end);
        v19 = *v13;
      }

      *(v19 + 8 * *a2) = -1;
      *(v19 + 8 * *a2 + 4) = -1;
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 12, a2);
    }
  }
}

uint64_t std::function<unsigned int ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::partitioned_set::merge(v4);
}

uint64_t geom::partitioned_set::merge(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 4 * a3;
  v6 = 0xFFFFFFFFLL;
  v7 = 0xFFFFFFFFLL;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *a2;
    v10 = *(a1 + 72);
    if (v9 < (*(a1 + 80) - v10) >> 3)
    {
      v11 = (v10 + 8 * v9);
      v12 = *v11;
      if (v12 != -1)
      {
        if (v8 == -1)
        {
          v8 = v9;
        }

        else
        {
          v8 = v8;
        }

        if (v6 != -1)
        {
          *(*a1 + 4 * v7) = v12;
          *(*(a1 + 24) + 4 * *v11) = v7;
          LODWORD(v9) = *a2;
          v12 = v6;
        }

        v7 = v11[1];
        if (v8 != v9)
        {
          *v11 = -1;
          std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 96), a2);
        }

        v6 = v12;
      }
    }

    ++a2;
    v5 -= 4;
  }

  while (v5);
  result = 0xFFFFFFFFLL;
  if (v7 != 0xFFFFFFFFLL)
  {
    *(*a1 + 4 * v7) = -1;
    *(*(a1 + 24) + 4 * v6) = -1;
    v14 = *(a1 + 48);
    *(v14 + 4 * v6) = v8;
    *(v14 + 4 * v7) = v8;
    v15 = (*(a1 + 72) + 8 * v8);
    *v15 = v6;
    v15[1] = v7;
    return v8;
  }

  return result;
}

uint64_t geom::partitioned_set::extract(geom::partitioned_set *this, unsigned int a2)
{
  v4 = *(*(this + 3) + 4 * a2);
  v5 = *(*this + 4 * a2);
  if (v4 == -1 && v5 == -1)
  {
    return *(*(this + 6) + 4 * a2);
  }

  v7 = *(this + 13);
  if (*(this + 12) == v7)
  {
    v8 = (*(this + 10) - *(this + 9)) >> 3;
    LODWORD(v17) = a2;
    HIDWORD(v17) = a2;
    _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(this + 72, &v17);
  }

  else
  {
    v8 = *(v7 - 4);
    *(this + 13) = v7 - 4;
    *(*(this + 9) + 8 * v8) = vdup_n_s32(a2);
  }

  if (v4 == -1)
  {
    v11 = *(this + 6);
    v12 = *(v11 + 4 * a2);
    v9 = *this;
    *(v11 + 4 * *(*this + 4 * a2)) = v12;
    v10 = *(v9 + 4 * a2);
    *(*(this + 9) + 8 * v12) = v10;
  }

  else
  {
    v9 = *this;
    v10 = *(*this + 4 * a2);
    *(*this + 4 * *(*(this + 3) + 4 * a2)) = v10;
  }

  if (v5 == -1)
  {
    v14 = *(this + 6);
    v15 = *(v14 + 4 * a2);
    v13 = *(this + 3);
    *(v14 + 4 * *(v13 + 4 * a2)) = v15;
    *(*(this + 9) + 8 * v15 + 4) = *(v13 + 4 * a2);
  }

  else
  {
    v13 = *(this + 3);
    *(v13 + 4 * v10) = *(v13 + 4 * a2);
    v14 = *(this + 6);
  }

  *(v9 + 4 * a2) = -1;
  *(v13 + 4 * a2) = -1;
  *(v14 + 4 * a2) = v8;
  return v8;
}

void geom::partitioned_set::extract(geom::partitioned_set *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 3);
  v7 = *(v6 + 4 * a2);
  v8 = *this;
  v9 = *(*this + 4 * a2);
  if (v7 == -1 && v9 == -1)
  {
    v18 = *(*(this + 6) + 4 * a2);
    if (v18 == a3)
    {
      return;
    }

    std::vector<unsigned int>::push_back[abi:nn200100](this + 12, &v18);
    v11 = *(this + 9);
    *(v11 + 8 * v18 + 4) = -1;
    *(v11 + 8 * v18) = -1;
    v6 = *(this + 3);
    v8 = *this;
  }

  else
  {
    if (v7 == -1)
    {
      v12 = *(this + 6);
      v13 = *(v12 + 4 * a2);
      *(v12 + 4 * v9) = v13;
      *(*(this + 9) + 8 * v13) = *(v8 + 4 * a2);
    }

    else
    {
      *(v8 + 4 * v7) = v9;
    }

    if (v9 == -1)
    {
      v14 = *(this + 6);
      v15 = *(v14 + 4 * a2);
      *(v14 + 4 * *(v6 + 4 * a2)) = v15;
      v11 = *(this + 9);
      *(v11 + 8 * v15 + 4) = *(v6 + 4 * a2);
    }

    else
    {
      *(v6 + 4 * *(v8 + 4 * a2)) = *(v6 + 4 * a2);
      v11 = *(this + 9);
    }

    *(v8 + 4 * a2) = -1;
  }

  v16 = v11 + 8 * a3;
  v17 = *(v16 + 4);
  *(v6 + 4 * a2) = v17;
  *(v8 + 4 * v17) = a2;
  *(*(this + 6) + 4 * a2) = a3;
  *(v16 + 4) = a2;
}

void geom::acd<float>::impl::split_clusters_automatically(int *a1, unsigned int *a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    do
    {
      std::vector<unsigned int>::push_back[abi:nn200100](&v23, v4 + 4);
      v4 = *v4;
    }

    while (v4);
    v4 = v23;
    v5 = v24;
  }

  else
  {
    v5 = 0;
  }

  v20 = a1;
  v6 = (v5 - v4) >> 2;
  if (v6 < 2)
  {
    goto LABEL_9;
  }

  v7 = (v6 - 2) >> 1;
  v8 = v4 + v7;
  v9 = v7 + 1;
  do
  {
    std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<float>::impl::split_clusters_automatically(geom::acd<float>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v4, &v20, v6, v8--);
    --v9;
  }

  while (v9);
  while (1)
  {
    v4 = v23;
    v5 = v24;
LABEL_9:
    if (v4 == v5 || *(a1 + 17) >= *a2)
    {
      break;
    }

    v10 = *v4;
    v20 = a1;
    v11 = (v5 - v4) >> 2;
    if (v11 >= 2)
    {
      v12 = *v4;
      v13 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<float>::impl::split_clusters_automatically(geom::acd<float>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v4, &v20, v11);
      v14 = (v5 - 4);
      if ((v5 - 4) == v13)
      {
        *v13 = v12;
      }

      else
      {
        *v13 = *v14;
        *v14 = v12;
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<float>::impl::split_clusters_automatically(geom::acd<float>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v4, (v13 + 1), &v20, ((v13 + 1) - v4) >> 2);
      }
    }

    v24 = (v24 - 4);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    geom::acd<float>::impl::cut_to_reduce_concavity(a1, v10, &v20, a2);
    v15 = v20;
    v16 = v21;
    if ((v21 - v20) < 5 || v20 == v21)
    {
      if (v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
      do
      {
        v18 = *v15++;
        v19 = v18;
        std::vector<unsigned int>::push_back[abi:nn200100](&v23, &v19);
        v26 = a1;
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<float>::impl::split_clusters_automatically(geom::acd<float>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v23, v24, &v26, (v24 - v23) >> 2);
      }

      while (v15 != v16);
      v15 = v20;
      if (v20)
      {
LABEL_24:
        v21 = v15;
        operator delete(v15);
      }
    }
  }

  if (v4)
  {
    v24 = v4;
    operator delete(v4);
  }
}

void geom::acd<float>::impl::cut_to_reduce_concavity(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v155 = *MEMORY[0x277D85DE8];
  v81 = a2;
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(a1 + 14, &v81);
  v8 = *(v7[3] + 24);
  *(a3 + 8) = *a3;
  std::vector<unsigned int>::push_back[abi:nn200100](a3, &v81);
  if (v8 > 0.00000011921)
  {
    LOBYTE(v136) = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v79 = 0;
    v78 = 0;
    v80 = 0;
    geom::acd<float>::impl::find_best_cut_plane(a1, v7[3], 2u, 4, v135, &v78);
    if (v152 == 1)
    {
      v9 = v7[3];
      if ((((*(v9 + 24) - *(&v137 + 2)) - v148) / *(v9 + 24)) >= *(a4 + 4))
      {
        geom::cluster<float>::deinit(v9, (a1 + 28));
        v25 = v7[3];
        v26 = v136;
        v136 = 0uLL;
        v27 = *(v25 + 8);
        *v25 = v26;
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v27);
        }

        v28 = *(v25 + 88);
        *(v25 + 16) = v137;
        v29 = v138;
        v30 = v139;
        v31 = v140;
        *(v25 + 80) = v141;
        *(v25 + 64) = v31;
        *(v25 + 48) = v30;
        *(v25 + 32) = v29;
        if (v28)
        {
          *(v25 + 96) = v28;
          operator delete(v28);
          *(v25 + 88) = 0;
          *(v25 + 96) = 0;
          *(v25 + 104) = 0;
        }

        *(v25 + 88) = v142;
        *(v25 + 104) = v143;
        v142 = 0uLL;
        v143 = 0;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate((v25 + 112));
        *(v25 + 112) = v144;
        *(v25 + 128) = v145;
        v145 = 0;
        v144 = 0uLL;
        *(v25 + 136) = v146;
        operator new();
      }

      if (*(a4 + 12) == 1)
      {
        v40 = a4;
        std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](&v78, v135);
        v69 = 0uLL;
        *&v70 = vneg_f32(0x3F0000003FLL);
        DWORD2(v70) = 2143289344;
        v10.i64[0] = 0x7F0000007FLL;
        v10.i64[1] = 0x7F0000007FLL;
        v71 = vnegq_f32(v10);
        v72 = v10;
        __p = 0u;
        memset(v76, 0, sizeof(v76));
        v77 = 0;
        v60 = 0uLL;
        *&v61 = v70;
        DWORD2(v61) = 2143289344;
        v62 = v71;
        v63 = v10;
        v66 = 0u;
        memset(v67, 0, sizeof(v67));
        v68 = 0;
        v51 = 0uLL;
        *&v52 = v70;
        DWORD2(v52) = 2143289344;
        v53 = v71;
        v54 = v10;
        v57 = 0u;
        memset(v58, 0, sizeof(v58));
        v59 = 0;
        v42 = 0uLL;
        *&v43 = v70;
        DWORD2(v43) = 2143289344;
        v44 = v71;
        v45 = v10;
        *v48 = 0u;
        memset(v49, 0, sizeof(v49));
        v50 = 0;
        memset(v41, 0, sizeof(v41));
        v11 = v78;
        v12 = v79;
        if (v78 != v79)
        {
          v13 = 0.0;
          while (1)
          {
            v14 = &v11[1];
            LOBYTE(v110) = 0;
            v15 = &v11[10];
            v132 = 0;
            v133 = 0;
            v134 = 0;
            LOBYTE(v84) = 0;
            v106 = 0;
            v107 = 0;
            v108 = 0;
            geom::acd<float>::impl::find_best_cut_plane(a1, v11 + 1, 0, 0, v109, v41);
            geom::acd<float>::impl::find_best_cut_plane(a1, v11 + 10, 0, 0, v83, v41);
            if (v132)
            {
              if (v106)
              {
                v16 = ((((*(v7[3] + 24) - *(&v111 + 2)) - *(&v122 + 2)) - *(&v85 + 2)) - *(&v96 + 2)) / *(v7[3] + 24);
                if (v16 <= v13)
                {
                  geom::cluster<float>::deinit(&v110, (a1 + 28));
                  geom::cluster<float>::deinit(&v121, (a1 + 28));
                  geom::cluster<float>::deinit(&v84, (a1 + 28));
                  geom::cluster<float>::deinit(&v95, (a1 + 28));
                }

                else
                {
                  geom::cluster<float>::deinit(&v69, (a1 + 28));
                  geom::cluster<float>::deinit(&v60, (a1 + 28));
                  geom::cluster<float>::deinit(&v51, (a1 + 28));
                  geom::cluster<float>::deinit(&v42, (a1 + 28));
                  v17 = v110;
                  v110 = 0uLL;
                  v18 = *(&v69 + 1);
                  v69 = v17;
                  if (v18)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
                  }

                  v72 = v113;
                  v73 = v114;
                  v74 = v115;
                  v70 = v111;
                  v71 = v112;
                  if (__p)
                  {
                    *(&__p + 1) = __p;
                    operator delete(__p);
                  }

                  __p = v116;
                  v76[0] = v117;
                  v117 = 0;
                  v116 = 0uLL;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(&v76[1]);
                  *&v76[1] = v118;
                  v76[3] = v119;
                  v119 = 0;
                  v118 = 0uLL;
                  v77 = v120;
                  v19 = v121;
                  v121 = 0uLL;
                  v20 = *(&v60 + 1);
                  v60 = v19;
                  if (v20)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
                  }

                  v63 = v124;
                  v64 = v125;
                  v65 = v126;
                  v61 = v122;
                  v62 = v123;
                  if (v66)
                  {
                    *(&v66 + 1) = v66;
                    operator delete(v66);
                  }

                  v66 = v127;
                  v67[0] = v128;
                  v128 = 0;
                  v127 = 0uLL;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(&v67[1]);
                  *&v67[1] = v129;
                  v67[3] = v130;
                  v130 = 0;
                  v129 = 0uLL;
                  v68 = v131;
                  v21 = v84;
                  v84 = 0uLL;
                  v22 = *(&v51 + 1);
                  v51 = v21;
                  if (v22)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
                  }

                  v54 = v87;
                  v55 = v88;
                  v56 = v89;
                  v52 = v85;
                  v53 = v86;
                  if (v57)
                  {
                    *(&v57 + 1) = v57;
                    operator delete(v57);
                  }

                  v57 = v90;
                  v58[0] = v91;
                  v91 = 0;
                  v90 = 0uLL;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(&v58[1]);
                  *&v58[1] = v92;
                  v58[3] = v93;
                  v93 = 0;
                  v92 = 0uLL;
                  v59 = v94;
                  v23 = v95;
                  v95 = 0uLL;
                  v24 = *(&v42 + 1);
                  v42 = v23;
                  if (v24)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
                  }

                  v45 = v98;
                  v46 = v99;
                  v47 = v100;
                  v43 = v96;
                  v44 = v97;
                  if (v48[0])
                  {
                    v48[1] = v48[0];
                    operator delete(v48[0]);
                  }

                  *v48 = v101;
                  v49[0] = v102;
                  v102 = 0;
                  v101 = 0uLL;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(&v49[1]);
                  *&v49[1] = v103;
                  v49[3] = v104;
                  v104 = 0;
                  v103 = 0uLL;
                  v50 = v105;
                  v13 = v16;
                }
              }

              else
              {
                v14 = &v110;
                v15 = &v121;
              }
            }

            else
            {
              v15 = &v95;
              v14 = &v84;
              if ((v106 & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            geom::cluster<float>::deinit(v14, (a1 + 28));
            geom::cluster<float>::deinit(v15, (a1 + 28));
LABEL_32:
            if (v106 == 1)
            {
              v82 = &v103;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v82);
              if (v101)
              {
                *(&v101 + 1) = v101;
                operator delete(v101);
              }

              if (*(&v95 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v95 + 1));
              }

              v82 = &v92;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v82);
              if (v90)
              {
                *(&v90 + 1) = v90;
                operator delete(v90);
              }

              if (*(&v84 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v84 + 1));
              }
            }

            if (v132 == 1)
            {
              v83[0] = &v129;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v83);
              if (v127)
              {
                *(&v127 + 1) = v127;
                operator delete(v127);
              }

              if (*(&v121 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v121 + 1));
              }

              v83[0] = &v118;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v83);
              if (v116)
              {
                *(&v116 + 1) = v116;
                operator delete(v116);
              }

              if (*(&v110 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v110 + 1));
              }
            }

            v11 += 21;
            if (v11 == v12)
            {
              goto LABEL_58;
            }
          }
        }

        v13 = 0.0;
LABEL_58:
        if (v13 >= *(v40 + 4))
        {
          geom::cluster<float>::deinit(v7[3], (a1 + 28));
          v32 = v7[3];
          v33 = v69;
          v69 = 0uLL;
          v34 = *(v32 + 8);
          *v32 = v33;
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v34);
          }

          v35 = *(v32 + 88);
          *(v32 + 16) = v70;
          v36 = v71;
          v37 = v72;
          v38 = v73;
          *(v32 + 80) = v74;
          *(v32 + 64) = v38;
          *(v32 + 48) = v37;
          *(v32 + 32) = v36;
          if (v35)
          {
            *(v32 + 96) = v35;
            operator delete(v35);
            *(v32 + 88) = 0;
            *(v32 + 96) = 0;
            *(v32 + 104) = 0;
          }

          *(v32 + 88) = __p;
          *(v32 + 104) = v76[0];
          __p = 0uLL;
          v76[0] = 0;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate((v32 + 112));
          *(v32 + 112) = *&v76[1];
          *(v32 + 128) = v76[3];
          memset(&v76[1], 0, 24);
          *(v32 + 136) = v77;
          operator new();
        }

        v109[0] = v41;
        std::vector<geom::cut_plane_search_candidate<float>>::__destroy_vector::operator()[abi:nn200100](v109);
        v109[0] = &v49[1];
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
        if (v48[0])
        {
          v48[1] = v48[0];
          operator delete(v48[0]);
        }

        if (*(&v42 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v42 + 1));
        }

        v109[0] = &v58[1];
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
        if (v57)
        {
          *(&v57 + 1) = v57;
          operator delete(v57);
        }

        if (*(&v51 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v51 + 1));
        }

        v109[0] = &v67[1];
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
        if (v66)
        {
          *(&v66 + 1) = v66;
          operator delete(v66);
        }

        if (*(&v60 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v60 + 1));
        }

        v109[0] = &v76[1];
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (*(&v69 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v69 + 1));
        }
      }
    }

    v109[0] = &v78;
    std::vector<geom::cut_plane_search_candidate<float>>::__destroy_vector::operator()[abi:nn200100](v109);
    if (v152 == 1)
    {
      v109[0] = &v151;
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
      if (v149)
      {
        v150 = v149;
        operator delete(v149);
      }

      if (v147)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v147);
      }

      v109[0] = &v144;
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
      if (v142)
      {
        *(&v142 + 1) = v142;
        operator delete(v142);
      }

      if (*(&v136 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v136 + 1));
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

float geom::acd<float>::impl::cut_plane_cost(float *a1, float *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v23 = v4;
  v24 = *(a3 + 24);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a3;
  v8 = *(a3 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a4;
  v9 = *(a4 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v7[1];
  v21 = *v7;
  v22 = a1[84];
  v12 = v10[1];
  v20 = *v10;
  v13 = *(v5 + 4);
  v14 = a1[85];
  v15 = *(a3 + 20);
  v16 = *(a4 + 20);
  v17 = a2[5];
  v18 = a1[86];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return (v24 + v23) * (((((v22 * vabds_f32(v21, v20)) + (((v11 + v12) - v13) * v14)) + (((v15 + v16) - v17) * v18)) * 0.01) + 1.0);
}

void geom::acd<float>::impl::find_best_cut_plane(void *a1, float32x4_t *a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1[35] + 4 * a3);
  __p = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  if (v12)
  {
    for (i = 0; i < v12; v21 = i)
    {
      v14 = a1[32];
      v15 = *(v14 + 16 * i);
      if (COERCE_FLOAT(*(v14 + 16 * i + 8)) >= 0.00000011921 || *&v15 > -0.00000011921 && (*&v15 < 0.00000011921 ? (v16 = *(&v15 + 1) > -0.00000011921) : (v16 = 1), v16))
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&__p, &v21);
        i = v21;
      }

      ++i;
    }

    v17 = __p;
    v18 = v23;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  geom::acd<float>::impl::search_cut_planes_with_normals(a1, v17, (v18 - v17) >> 2, a2, a4, a5, a6);
  if (*(a5 + 304) == 1)
  {
    v19 = a3 + 1;
    if (v19 < ((a1[36] - a1[35]) >> 2))
    {
      v20 = 208 * v19;
      do
      {
        v23 = __p;
        geom::triangle_mesh_half_edge_connectivity::get_adjacent_vertices_to_vertex((a1[38] + v20), *a5, &__p);
        geom::acd<float>::impl::search_cut_planes_with_normals(a1, __p, (v23 - __p) >> 2, a2, a4, a5, a6);
        ++v19;
        v20 += 208;
      }

      while (v19 < ((a1[36] - a1[35]) >> 2));
    }
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

uint64_t std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<geom::cut_plane_search_candidate<float>>::__emplace_back_slow_path<geom::cut_plane_search_candidate<float>>(a1, a2);
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *v4 = v5;
    *(v4 + 16) = 0;
    *(v4 + 304) = 0;
    if (*(a2 + 304) == 1)
    {
      std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>>(v4 + 16, a2 + 16);
    }

    v6 = *(a2 + 320);
    *(v4 + 328) = *(a2 + 328);
    *(v4 + 320) = v6;
    result = v4 + 336;
  }

  *(a1 + 8) = result;
  return result;
}

void geom::acd<float>::impl::search_cut_planes_with_normals(uint64_t a1, unsigned int *a2, uint64_t a3, float32x4_t *a4, int a5, uint64_t a6, uint64_t a7)
{
  v85 = *MEMORY[0x277D85DE8];
  v55 = a4[3];
  v57 = a4[2];
  v7 = vcgtq_f32(v57, v55);
  v7.i32[3] = v7.i32[2];
  if ((vmaxvq_u32(v7) & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v63[0] = a1;
  v63[1] = &v66;
  v63[2] = a7;
  v63[3] = &v65;
  v64 = a5;
  if (a3)
  {
    v12 = v57;
    v12.i32[3] = 0;
    v58 = v12;
    v13 = v55;
    v13.i32[3] = 0;
    v56 = v13;
    v14 = 4 * a3;
    __asm { FMOV            V0.4S, #1.0 }

    v54 = _Q0;
    do
    {
      v19 = *a2;
      v20 = *(*(a1 + 256) + 16 * v19);
      v21.i64[0] = 0x8000000080000000;
      v21.i64[1] = 0x8000000080000000;
      v22 = vcvtq_s32_f32(vbslq_s8(vorrq_s8(vcltzq_f32(v20), vcgtzq_f32(v20)), vorrq_s8(vandq_s8(v20, v21), v54), 0));
      v22.i32[3] = 0;
      v23 = vcltzq_s32(v22);
      v24 = vbslq_s8(v23, v56, v58);
      v25 = vmulq_f32(v20, vorrq_s8(vbicq_s8(v56, v23), vandq_s8(v23, v58)));
      v26 = vmulq_f32(v20, v24);
      LOBYTE(v73) = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      LODWORD(v72) = v19;
      *v26.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v26, v26, 8uLL)), vadd_f32(vzip1_s32(*v25.i8, *v26.i8), vzip2_s32(*v25.i8, *v26.i8)));
      *v24.f32 = vdup_lane_s32(*v26.i8, 0);
      v24.f32[0] = -*&v26.i32[1];
      *(&v72 + 4) = vmul_f32(vsub_f32(*v24.f32, *v26.i8), 0x3F0000003F000000);
      std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](&v66, &v72);
      if (v82 == 1)
      {
        v60 = &v81;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v60);
        if (__p)
        {
          v80 = __p;
          operator delete(__p);
        }

        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v78);
        }

        v60 = &v77;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v60);
        if (v75)
        {
          v76 = v75;
          operator delete(v75);
        }

        if (*(&v73 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v73 + 1));
        }
      }

      ++a2;
      v14 -= 4;
    }

    while (v14);
    v27 = v66;
    v28 = v67;
    v29 = *(a1 + 176);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    if (v66 != v67)
    {
      v59 = v29;
      do
      {
        v30 = vmulq_f32(v59, vabsq_f32(*(*(a1 + 256) + 16 * *v27)));
        geom::cut_plane_search_candidate<float>::refine_to_new_range(v27, &v60, ((v30.f32[2] + vaddv_f32(*v30.f32)) * 8.0) * 0.5);
        v27 += 84;
      }

      while (v27 != v28);
      v31 = v60;
      v32 = v61;
      if (v60 != v61)
      {
        do
        {
          std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](&v66, v31);
          v31 += 84;
        }

        while (v31 != v32);
        v31 = v60;
        v32 = v61;
      }

      while (v32 != v31)
      {
        v32 -= 84;
        std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(&v60, v32);
      }

      goto LABEL_25;
    }
  }

  else
  {
    v29 = *(a1 + 176);
    v60 = 0;
    v61 = 0;
    v62 = 0;
  }

  v59 = v29;
  v31 = 0;
LABEL_25:
  v61 = v31;
  geom::acd<float>::impl::evaluate_candidate_cut_planes<std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(a1, v66, v67, a4, v69);
  v72 = 0u;
  v73 = 0u;
  v74 = 1065353216;
  v33 = v66;
  v34 = v67;
  if (v67 != v66)
  {
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = &v33[84 * v35];
      v38 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(&v72, v37);
      if (v38)
      {
        v33 = v66;
        if (*(v37 + 80) < *&v66[84 * *(v38 + 5) + 80])
        {
          *(v38 + 5) = v36;
        }
      }

      else
      {
        v71 = v37;
        *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v72, v37) + 5) = v36;
        v33 = v66;
      }

      v34 = v67;
      v35 = ++v36;
    }

    while (0xCF3CF3CF3CF3CF3DLL * ((v67 - v33) >> 4) > v36);
  }

  if (v34 != v33)
  {
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(&v72, &v33[84 * v39]);
      if (v41 && *(v41 + 5) == v40)
      {
        v33 = v66;
        v34 = v67;
      }

      else
      {
        geom::acd<float>::impl::search_cut_planes_with_normals(geom::slice<unsigned int>,geom::cluster<float> const&,unsigned int,geom::cut_plane_search_candidate<float> &,std::vector<geom::cut_plane_search_candidate<float>> &)::{lambda(unsigned long)#1}::operator()(v63, v39);
        v33 = v66;
        v34 = v67;
        if (0xCF3CF3CF3CF3CF3DLL * ((v67 - v66) >> 4) <= v39)
        {
          --v40;
        }

        else
        {
          v42 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(&v72, &v66[84 * v39]);
          v33 = v66;
          v34 = v67;
          if (v42 && 0xCF3CF3CF3CF3CF3DLL * ((v67 - v66) >> 4) == *(v42 + 5))
          {
            *(v42 + 5) = v40;
          }
        }
      }

      v39 = ++v40;
    }

    while (0xCF3CF3CF3CF3CF3DLL * ((v34 - v33) >> 4) > v40);
  }

  for (i = v59; v33 != v34; v33 += 84)
  {
    v44 = vmulq_f32(i, vabsq_f32(*(*(a1 + 256) + 16 * *v33)));
    geom::cut_plane_search_candidate<float>::refine_to_new_range(v33, &v60, v44.f32[2] + vaddv_f32(*v44.f32));
    i = v59;
  }

  geom::acd<float>::impl::evaluate_candidate_cut_planes<std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(a1, v60, v61, a4, v69);
  v45 = v60;
  v46 = v61;
  if (v60 != v61)
  {
    do
    {
      std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](&v66, v45);
      v45 += 84;
    }

    while (v45 != v46);
    v45 = v60;
    v46 = v61;
  }

  while (v46 != v45)
  {
    v46 -= 84;
    std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(&v60, v46);
  }

  v61 = v45;
  v47 = v66;
  v48 = v66 + 84;
  if (v66 != v67 && v48 != v67)
  {
    do
    {
      if (*(v48 + 80) < *(v47 + 80))
      {
        v47 = v48;
      }

      v48 += 84;
    }

    while (v48 != v67);
  }

  v50 = *v47;
  *(a6 + 8) = v47[2];
  *a6 = v50;
  std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>(a6 + 16, (v47 + 4));
  if (*(a6 + 328) == *(v47 + 328))
  {
    if (*(a6 + 328))
    {
      *(a6 + 320) = v47[80];
      *(a6 + 324) = v47[81];
    }
  }

  else if (*(a6 + 328))
  {
    *(a6 + 328) = 0;
  }

  else
  {
    *(a6 + 320) = *(v47 + 40);
    *(a6 + 328) = 1;
  }

  std::swap[abi:nn200100]<geom::cut_plane_search_candidate<float>>(v47, v67 - 42);
  v51 = v67 - 84;
  std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(&v66, (v67 - 84));
  v67 = v51;
  for (j = v66; v66 != v67; v51 = v67)
  {
    geom::acd<float>::impl::search_cut_planes_with_normals(geom::slice<unsigned int>,geom::cluster<float> const&,unsigned int,geom::cut_plane_search_candidate<float> &,std::vector<geom::cut_plane_search_candidate<float>> &)::{lambda(unsigned long)#1}::operator()(v63, 0xCF3CF3CF3CF3CF3DLL * ((v51 - j) >> 4) - 1);
    j = v66;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v72);
  *&v72 = &v60;
  std::vector<geom::cut_plane_search_candidate<float>>::__destroy_vector::operator()[abi:nn200100](&v72);
  *&v72 = &v66;
  std::vector<geom::cut_plane_search_candidate<float>>::__destroy_vector::operator()[abi:nn200100](&v72);
  *&v72 = v69;
  std::vector<geom::cluster_parallel_clipper<float>::clipping_context,std::allocator<geom::cluster_parallel_clipper<float>::clipping_context>>::__destroy_vector::operator()[abi:nn200100](&v72);
LABEL_66:
  v53 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<geom::cut_plane_search_candidate<float>>::__emplace_back_slow_path<geom::cut_plane_search_candidate<float> const&>(a1, a2);
  }

  else
  {
    result = geom::cut_plane_search_candidate<float>::cut_plane_search_candidate(v3, a2) + 336;
  }

  *(a1 + 8) = result;
  return result;
}

void geom::cut_plane_search_candidate<float>::refine_to_new_range(uint64_t a1, uint64_t a2, float a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = vcvtms_s32_f32(*(a1 + 8) / a3);
  v7 = -1;
  do
  {
    v8 = v7;
    if (v6 >= 1)
    {
      v9 = v7 * a3;
      v10 = 1;
      v11 = v6;
      do
      {
        v16 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(&v14 + 1) = *(a1 + 4) + (v9 * v10);
        v15 = a3;
        LODWORD(v14) = *a1;
        std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](a2, &v14);
        if (v25 == 1)
        {
          v13 = &v24;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v13);
          if (__p)
          {
            v23 = __p;
            operator delete(__p);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v21);
          }

          v13 = &v20;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v13);
          if (v18)
          {
            v19 = v18;
            operator delete(v18);
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v17);
          }
        }

        ++v10;
        --v11;
      }

      while (v11);
    }

    v7 = v8 + 2;
  }

  while (v8 < 0);
  v12 = *MEMORY[0x277D85DE8];
}

void geom::acd<float>::impl::evaluate_candidate_cut_planes<std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(uint64_t *a1, unsigned int *a2, unsigned int *a3, void *a4, uint64_t *a5)
{
  v8 = a2;
  v24 = 0;
  v25 = a2;
  __p = 0;
  v23 = 0;
  std::vector<geom::general_plane<float,(unsigned char)3>>::reserve(&__p, 0xCF3CF3CF3CF3CF3DLL * ((a3 - a2) >> 4));
  if (a3 == v8)
  {
    v10 = v23;
  }

  else
  {
    v10 = v23;
    do
    {
      v11 = *(a1[32] + 16 * *v8);
      v12 = v8[1];
      if (v10 >= v24)
      {
        v13 = (v10 - __p) >> 5;
        if ((v13 + 1) >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v14 = (v24 - __p) >> 4;
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (v24 - __p >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          v21 = *(a1[32] + 16 * *v8);
          std::__allocate_at_least[abi:nn200100]<std::allocator<geom::general_plane<float,(unsigned char)3>>>(&__p, v15);
        }

        v16 = 32 * v13;
        *v16 = v11;
        *(v16 + 16) = v12;
        v10 = 32 * v13 + 32;
        v17 = (32 * v13 - (v23 - __p));
        memcpy((v16 - (v23 - __p)), __p, v23 - __p);
        v18 = __p;
        __p = v17;
        v23 = v10;
        v24 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v11;
        *(v10 + 16) = v12;
        v10 += 32;
      }

      v23 = v10;
      v8 += 84;
    }

    while (v8 != a3);
  }

  geom::cluster_parallel_clipper<float>::init(a5, a4, (a1 + 28), __p, (v10 - __p) >> 5);
  v19 = a5[5];
  v20 = ((a5[8] + ((v19[12] - v19[11]) >> 3) - 1) / a5[8] + (a5[7] + ((v19[15] - v19[14]) >> 4) - 1) / a5[7]) * a5[4];
  block = MEMORY[0x277D85DD0];
  v27 = 0x40000000;
  v28 = ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIfE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke_0;
  v29 = &__block_descriptor_tmp_2;
  v30 = a5;
  dispatch_apply(v20, 0, &block);
  block = MEMORY[0x277D85DD0];
  v27 = 0x40000000;
  v28 = ___ZN4geom14dispatch_applyIZNS_3acdIfE4impl29evaluate_candidate_cut_planesINSt3__111__wrap_iterIPNS_26cut_plane_search_candidateIfEEEEEEvT_SB_RKNS_7clusterIfEERNS_24cluster_parallel_clipperIfEEEUlmE_Lb1EEEvmP16dispatch_queue_sSB__block_invoke;
  v29 = &__block_descriptor_tmp_2_0;
  v30 = a1;
  v31 = a5;
  v32 = a4;
  v33 = &v25;
  dispatch_apply((v23 - __p) >> 5, 0, &block);
  geom::cluster_parallel_clipper<float>::deinit(a5);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

void geom::acd<float>::impl::search_cut_planes_with_normals(geom::slice<unsigned int>,geom::cluster<float> const&,unsigned int,geom::cut_plane_search_candidate<float> &,std::vector<geom::cut_plane_search_candidate<float>> &)::{lambda(unsigned long)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a1[1] + 336 * a2;
  if (*(v4 + 328) == 1)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = a1[2];
      if (0xCF3CF3CF3CF3CF3DLL * ((v6[1] - *v6) >> 4) < v5 || *(v4 + 324) < *(*v6 + 324))
      {
        std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](v6, v4);
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<float> &,std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(*a1[2], *(a1[2] + 8), &v18, 0xCF3CF3CF3CF3CF3DLL * ((*(a1[2] + 8) - *a1[2]) >> 4));
        v31 = 0u;
        v32 = 0u;
        memset(v30, 0, sizeof(v30));
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        memset(v22, 0, sizeof(v22));
        *v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        memset(v19, 0, sizeof(v19));
        *(v4 + 8) = 0;
        *v4 = 0;
        std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>(v4 + 16, v19);
        if (*(v4 + 328) == BYTE8(v32))
        {
          if (*(v4 + 328))
          {
            *(v4 + 320) = v32;
          }
        }

        else if (*(v4 + 328))
        {
          *(v4 + 328) = 0;
        }

        else
        {
          *(v4 + 320) = v32;
          *(v4 + 328) = 1;
        }

        if (v31 == 1)
        {
          v17 = v30;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v17);
          if (*(&v28 + 1))
          {
            *&v29 = *(&v28 + 1);
            operator delete(*(&v28 + 1));
          }

          if (*(&v23 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v23 + 1));
          }

          v17 = v22;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v17);
          if (v20[1])
          {
            *&v21 = v20[1];
            operator delete(v20[1]);
          }

          if (*(&v19[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v19[0] + 1));
          }
        }

        v7 = a1[2];
        v8 = v7[1];
        v9 = 0xCF3CF3CF3CF3CF3DLL * ((v8 - *v7) >> 4);
        if (v9 > *(a1 + 8))
        {
          std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<float>,std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(*v7, v8, &v18, v9);
          v10 = a1[2];
          v11 = *(v10 + 8) - 336;
          std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(v10, v11);
          *(v10 + 8) = v11;
        }
      }
    }
  }

  if (*(v4 + 304) == 1)
  {
    geom::cluster<float>::deinit(v4 + 16, v3 + 224);
    geom::cluster<float>::deinit(v4 + 160, v3 + 224);
  }

  v12 = *(a1[1] + 8);
  v13 = *(v12 - 336);
  *(v4 + 8) = *(v12 - 328);
  *v4 = v13;
  std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>(v4 + 16, v12 - 320);
  if (*(v4 + 328) == *(v12 - 8))
  {
    if (*(v4 + 328))
    {
      *(v4 + 320) = *(v12 - 16);
      *(v4 + 324) = *(v12 - 12);
    }
  }

  else if (*(v4 + 328))
  {
    *(v4 + 328) = 0;
  }

  else
  {
    *(v4 + 320) = *(v12 - 16);
    *(v4 + 328) = 1;
  }

  v14 = a1[1];
  v15 = *(v14 + 8) - 336;
  std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(v14, v15);
  *(v14 + 8) = v15;
  v16 = *MEMORY[0x277D85DE8];
}

void std::swap[abi:nn200100]<geom::cut_plane_search_candidate<float>>(uint64_t *a1, uint64_t *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *(a1 + 2);
  v9[0] = 0;
  v18 = 0;
  if (*(a1 + 304) == 1)
  {
    std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>>(v9, (a1 + 2));
  }

  v19 = a1[40];
  v20 = *(a1 + 82);
  v4 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v4;
  std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>((a1 + 2), (a2 + 2));
  if (*(a1 + 328) == *(a2 + 328))
  {
    if (*(a1 + 328))
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 81) = *(a2 + 81);
    }
  }

  else if (*(a1 + 328))
  {
    *(a1 + 328) = 0;
  }

  else
  {
    a1[40] = a2[40];
    *(a1 + 328) = 1;
  }

  *a2 = v7;
  *(a2 + 2) = v8;
  std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>((a2 + 2), v9);
  if (*(a2 + 328) == v20)
  {
    if (*(a2 + 328))
    {
      a2[40] = v19;
    }
  }

  else if (*(a2 + 328))
  {
    *(a2 + 328) = 0;
  }

  else
  {
    a2[40] = v19;
    *(a2 + 328) = 1;
  }

  if (v18 == 1)
  {
    v6 = &v17;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v6 = &v13;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}