void sub_25A60DB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a40);
  v42 = *(v40 - 200);
  if (v42)
  {
    *(v40 - 192) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 176);
  if (v43)
  {
    *(v40 - 168) = v43;
    operator delete(v43);
  }

  v44 = *(v40 - 152);
  if (v44)
  {
    *(v40 - 144) = v44;
    operator delete(v44);
  }

  v45 = *(v40 - 128);
  if (v45)
  {
    *(v40 - 120) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argpartition<mlx::core::complex64_t,unsigned int>(mlx::core::array const&,mlx::core::array&,int,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>,0>(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, _DWORD *a6, uint64_t *a7)
{
  v7 = *a4;
  v8 = *a2;
  v9 = *a7;
  v10 = a7[1];
  v11 = (*a7 + 8 * v10 * v7);
  v13 = *v11;
  v12 = v11[1];
  v14 = (*a7 + 8 * v10 * v8);
  if (*v14 > v13 || ((v15 = v14[1], *v14 == v13) ? (v16 = v15 <= v12) : (v16 = 1), !v16 || v7 < v8 && (*v14 == v13 ? (v17 = v12 == v15) : (v17 = 0), v17)))
  {
    v18 = *a6;
    v19 = (v9 + 8 * v10 * v18);
    if (v13 > *v19 || ((v20 = v19[1], v13 == *v19) ? (v21 = v12 <= v20) : (v21 = 1), !v21 || v18 < v7 && (v13 == *v19 ? (v22 = v20 == v12) : (v22 = 0), v22)))
    {
      *a2 = v18;
    }

    else
    {
      *a2 = v7;
      *a4 = v8;
      v37 = *a6;
      v38 = (v9 + 8 * v10 * v37);
      if (*v14 <= *v38)
      {
        v39 = v38[1];
        v40 = v14[1];
        if (*v14 != *v38 || v40 <= v39)
        {
          result = 1;
          if (v37 >= v8)
          {
            return result;
          }

          if (*v14 != *v38 || v39 != v40)
          {
            return result;
          }
        }
      }

      *a4 = v37;
    }

    *a6 = v8;
    return 1;
  }

  v24 = *a6;
  v25 = (v9 + 8 * v10 * v24);
  if (v13 > *v25 || ((v26 = v25[1], v13 == *v25) ? (v27 = v12 <= v26) : (v27 = 1), !v27 || (result = 0, v24 < v7) && (v13 == *v25 ? (v28 = v26 == v12) : (v28 = 0), v28)))
  {
    *a4 = v24;
    *a6 = v7;
    v29 = *a4;
    v30 = *a2;
    v31 = (v9 + 8 * v10 * v29);
    v32 = (v9 + 8 * v10 * v30);
    if (*v32 > *v31 || ((v33 = v31[1], v34 = v32[1], *v32 == *v31) ? (v35 = v34 <= v33) : (v35 = 1), !v35 || (result = 1, v29 < v30) && (*v32 == *v31 ? (v36 = v33 == v34) : (v36 = 0), v36)))
    {
      *a2 = v29;
      *a4 = v30;
      return 1;
    }
  }

  return result;
}

void *std::__function::__func<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C005E0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C005E0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286C005E0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = result[5];
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9Partition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C006D8;
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9Partition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C006D8;
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9Partition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C006D8;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9Partition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9Partition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9Partition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(mlx::core::array *this)
{
  v1 = *this;
  switch(*(*this + 56))
  {
    case 0:
      v3 = *(this + 4);
      if (v3 < 0)
      {
        v3 += (v1[1] - *v1) >> 2;
      }

      v4 = *(this + 5);
      v5 = v1[6];
      v6 = mlx::core::array::shape(this, v3);
      v7 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v7, v7[1], (v7[1] - *v7) >> 2);
      v8 = &v1177[4 * v3];
      v9 = v1178 - (v8 + 4);
      if (v1178 != v8 + 4)
      {
        memmove(&v1177[4 * v3], v8 + 4, v1178 - (v8 + 4));
      }

      v1178 = &v8[v9];
      v10 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v10 + 24), *(v10 + 32), (*(v10 + 32) - *(v10 + 24)) >> 3);
      v11 = v1174 + 8 * v3;
      v12 = v1175 - (v11 + 8);
      if (v1175 != v11 + 8)
      {
        memmove(v1174 + 8 * v3, v11 + 8, v1175 - (v11 + 8));
      }

      v1175 = &v11[v12];
      v13 = *(*(*this + 24) + 8 * v3);
      v14 = mlx::core::array::shape(this, v3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v5 < v6)
      {
        goto LABEL_1497;
      }

      v15 = 0;
      v16 = *(*this + 152);
      v17 = v1167;
      v18 = v1170;
      v19 = (v1169 - v1168) >> 2;
      v20 = __p;
      v21 = (((v1169 - v1168) << 30) - 0x100000000) >> 32;
      v22 = __p + 4 * v21;
      v23 = v1168 + 4 * v21;
      v24 = v13 * ((v14 & (v4 >> 31)) + v4);
      v25 = v13 * v14;
      v26 = 4 * (v19 & 0x7FFFFFFF);
      v27 = v1168 - 8;
      v28 = v5 / v6;
      while (1)
      {
        v29 = v17;
        if (v19)
        {
          v30 = *v22;
          if (v19 < 2)
          {
            v31 = v21;
            v32 = v22;
          }

          else
          {
            v31 = v21;
            v32 = v22;
            if (v30 == *v23 - 1)
            {
              v33 = v20;
              v34 = v27;
              v31 = (v19 & 0x7FFFFFFF) - 1;
              v35 = v23;
              v36 = v22;
              v37 = v21;
              do
              {
                v38 = v31;
                *v36 = 0;
                v17 -= v18[v37] * (*v35 - 1);
                v1167 = v17;
                --v31;
                v36 = &v33[v26 - 8];
                v30 = *v36;
                v33 -= 4;
                if (v38 < 2)
                {
                  break;
                }

                v35 = &v34[v26];
                v39 = *&v34[4 * (v19 & 0x7FFFFFFF)] - 1;
                v34 -= 4;
                v37 = v31;
              }

              while (v30 == v39);
              v32 = &v33[v26 - 4];
            }
          }

          *v32 = v30 + 1;
          v17 += v18[v31];
          v1167 = v17;
        }

        if (v24 == v25)
        {
          goto LABEL_20;
        }

        v40 = (v16 + v29);
        v41 = (v16 + v29 + v24);
        v42 = (v16 + v29 + v25);
        do
        {
          v43 = (v42 - v40) / v13;
          if (v43 < 2)
          {
            break;
          }

          if (v43 == 3)
          {
            v74 = v40[v13];
            v75 = *v40;
            if (v74 >= v75)
            {
              v83 = v42[-v13];
              if (v83 < v74)
              {
                v40[v13] = v83;
                v42[-v13] = v74;
                v84 = v40[v13];
                v85 = *v40;
                if (v84 < v85)
                {
                  *v40 = v84;
                  v40[v13] = v85;
                }
              }
            }

            else
            {
              *v40 = v74;
              v40[v13] = v75;
              v76 = v42[-v13];
              if (v76 < v75)
              {
                v40[v13] = v76;
                v42[-v13] = v75;
              }
            }

            break;
          }

          if (v43 == 2)
          {
            v77 = v42[-v13];
            v78 = *v40;
            if (v77 < v78)
            {
              *v40 = v77;
              v42[-v13] = v78;
            }

            break;
          }

          if (v43 <= 7)
          {
            for (; v40 != &v42[-v13]; v40 += v13)
            {
              if (v42 != v40)
              {
                v79 = &v40[v13];
                if (&v40[v13] != v42)
                {
                  v80 = *v40;
                  v81 = *v40;
                  v82 = v40;
                  do
                  {
                    if (*v79 < v81)
                    {
                      v81 = *v79;
                      v82 = v79;
                    }

                    v79 += v13;
                  }

                  while (v79 != v42);
                  if (v82 != v40)
                  {
                    *v40 = *v82;
                    *v82 = v80;
                  }
                }
              }
            }

            break;
          }

          v44 = &v40[((v43 >> 1) & 0x3FFFFFFF) * v13];
          v45 = &v42[-v13];
          v46 = *v44;
          v47 = *v40;
          if (v46 >= v47)
          {
            v49 = *v45;
            if (v49 >= v46)
            {
              v51 = 0;
              goto LABEL_36;
            }

            *v44 = v49;
            *v45 = v46;
            v46 = *v44;
            v50 = *v40;
            if (v46 < v50)
            {
              *v40 = v46;
              *v44 = v50;
LABEL_33:
              v46 = 1;
            }
          }

          else
          {
            *v40 = v46;
            *v44 = v47;
            v48 = *v45;
            if (v48 >= v47)
            {
              goto LABEL_33;
            }

            *v44 = v48;
            *v45 = v47;
            v46 = *v44;
          }

          v51 = 1;
LABEL_36:
          v52 = *v40;
          if (v52 < v46)
          {
            v53 = &v42[-v13];
            goto LABEL_44;
          }

          v54 = &v42[-2 * v13];
          v53 = &v42[-v13];
          while (v54 != v40)
          {
            v53 -= v13;
            v55 = *v54;
            v54 -= v13;
            if (v55 < v46)
            {
              *v40 = v55;
              *v53 = v52;
              if (v51)
              {
                v51 = 2;
              }

              else
              {
                v51 = 1;
              }

LABEL_44:
              v56 = &v40[v13];
              if (&v40[v13] < v53)
              {
                while (1)
                {
                  v57 = *v44;
                  v58 = *v56;
                  if (v58 < v57)
                  {
                    do
                    {
                      v56 += v13;
                    }

                    while (*v56 < v57);
                    LOBYTE(v58) = 1;
                  }

                  do
                  {
                    v53 -= v13;
                    v59 = *v53;
                  }

                  while (v59 >= v57);
                  if (v56 >= v53)
                  {
                    break;
                  }

                  *v56 = v59;
                  *v53 = v58;
                  ++v51;
                  if (v44 == v56)
                  {
                    v44 = v53;
                  }

                  v56 += v13;
                }
              }

              if (v56 != v44)
              {
                v60 = *v44;
                v61 = *v56;
                if (v60 < v61)
                {
                  *v56 = v60;
                  *v44 = v61;
                  ++v51;
                }
              }

              if (v56 != v41)
              {
                if (v51)
                {
LABEL_58:
                  if (v56 <= v41)
                  {
                    v62 = &v56[v13];
                  }

                  else
                  {
                    v42 = v56;
                    v62 = v40;
                  }

                  goto LABEL_85;
                }

                v63 = v56;
                if (v56 <= v41)
                {
                  while (&v63[v13] != v42)
                  {
                    v67 = v63[v13];
                    v68 = *v63;
                    v63 += v13;
                    if (v67 < v68)
                    {
                      goto LABEL_58;
                    }
                  }
                }

                else
                {
                  v64 = v40;
                  while (&v64[v13] != v56)
                  {
                    v65 = v64[v13];
                    v66 = *v64;
                    v64 += v13;
                    if (v65 < v66)
                    {
                      goto LABEL_58;
                    }
                  }
                }
              }

              goto LABEL_20;
            }
          }

          v69 = &v40[v13];
          v70 = *v45;
          if (v52 >= v70)
          {
            if (v69 == v45)
            {
              break;
            }

            v62 = &v40[2 * v13];
            while (1)
            {
              v71 = *v69;
              if (v52 < v71)
              {
                break;
              }

              v69 += v13;
              v62 += v13;
              if (v69 == v45)
              {
                goto LABEL_20;
              }
            }

            *v69 = v70;
            *v45 = v71;
          }

          else
          {
            v62 = &v40[v13];
          }

          if (v62 == v45)
          {
            break;
          }

          while (1)
          {
            v72 = *v40;
            while (v72 >= *v62)
            {
              v62 += v13;
            }

            do
            {
              v45 -= v13;
              v73 = *v45;
            }

            while (v72 < v73);
            if (v62 >= v45)
            {
              break;
            }

            *v62 = v73;
            *v45 = 1;
            v62 += v13;
          }

          if (v62 > v41)
          {
            break;
          }

LABEL_85:
          v40 = v62;
        }

        while (v42 != v41);
LABEL_20:
        if (v28 <= ++v15)
        {
          goto LABEL_1498;
        }
      }

    case 1:
      v666 = *(this + 4);
      if (v666 < 0)
      {
        v666 += (v1[1] - *v1) >> 2;
      }

      v667 = *(this + 5);
      v668 = v1[6];
      v669 = mlx::core::array::shape(this, v666);
      v670 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v670, v670[1], (v670[1] - *v670) >> 2);
      v671 = &v1177[4 * v666];
      v672 = v1178 - (v671 + 4);
      if (v1178 != v671 + 4)
      {
        memmove(&v1177[4 * v666], v671 + 4, v1178 - (v671 + 4));
      }

      v1178 = &v671[v672];
      v673 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v673 + 24), *(v673 + 32), (*(v673 + 32) - *(v673 + 24)) >> 3);
      v674 = v1174 + 8 * v666;
      v675 = v1175 - (v674 + 8);
      if (v1175 != v674 + 8)
      {
        memmove(v1174 + 8 * v666, v674 + 8, v1175 - (v674 + 8));
      }

      v1175 = &v674[v675];
      v676 = *(*(*this + 24) + 8 * v666);
      v677 = mlx::core::array::shape(this, v666);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v668 < v669)
      {
        goto LABEL_1497;
      }

      v678 = 0;
      v679 = *(*this + 152);
      v680 = v676 * ((v677 & (v667 >> 31)) + v667);
      v681 = v676 * v677;
      v682 = v668 / v669;
      while (1)
      {
        v683 = v1167;
        v684 = v1169 - v1168;
        v685 = (v1169 - v1168) >> 2;
        if (v685)
        {
          v686 = ((v684 << 30) - 0x100000000) >> 32;
          v687 = __p;
          v688 = v1170;
          v689 = __p + 4 * v686;
          v690 = *v689;
          v691 = v1168 + 4 * v686;
          if (v685 >= 2 && v690 == *v691 - 1)
          {
            v695 = (v684 >> 2) & 0x7FFFFFFF;
            v694 = v695 - 1;
            v696 = 4 * v695;
            v697 = v1168 - 8;
            v693 = v1167;
            do
            {
              v698 = v694;
              *v689 = 0;
              v693 -= v688[v686] * (*v691 - 1);
              v1167 = v693;
              --v694;
              v689 = &v687[v696 - 8];
              v690 = *v689;
              v687 -= 4;
              if (v698 < 2)
              {
                break;
              }

              v691 = &v697[v696];
              v699 = *&v697[4 * v695] - 1;
              v697 -= 4;
              v686 = v694;
            }

            while (v690 == v699);
            v689 = &v687[4 * v695 - 4];
          }

          else
          {
            v693 = v1167;
            v694 = ((v684 << 30) - 0x100000000) >> 32;
          }

          *v689 = v690 + 1;
          v1167 = v688[v694] + v693;
        }

        if (v680 != v681)
        {
          break;
        }

LABEL_903:
        if (v682 <= ++v678)
        {
          goto LABEL_1497;
        }
      }

      v700 = (v679 + v683);
      v701 = (v679 + v683 + v680);
      v702 = (v679 + v683 + v681);
      while (1)
      {
        v703 = (v702 - v700) / v676;
        if (v703 < 2)
        {
          goto LABEL_903;
        }

        if (v703 == 3)
        {
          v737 = v700[v676];
          v738 = *v700;
          v739 = v702[-v676];
          if (v737 >= v738)
          {
            if (v739 < v737)
            {
              v700[v676] = v739;
              v702[-v676] = v737;
              v746 = v700[v676];
              v747 = *v700;
              if (v746 < v747)
              {
                *v700 = v746;
                v700[v676] = v747;
              }
            }
          }

          else
          {
            if (v739 >= v737)
            {
              *v700 = v737;
              v700[v676] = v738;
              v748 = v702[-v676];
              if (v748 >= v738)
              {
                goto LABEL_903;
              }

              v700[v676] = v748;
            }

            else
            {
              *v700 = v739;
            }

            v702[-v676] = v738;
          }

          goto LABEL_903;
        }

        if (v703 == 2)
        {
          v740 = v702[-v676];
          v741 = *v700;
          if (v740 < v741)
          {
            *v700 = v740;
            v702[-v676] = v741;
          }

          goto LABEL_903;
        }

        if (v703 <= 7)
        {
          for (; v700 != &v702[-v676]; v700 += v676)
          {
            if (v702 != v700)
            {
              v742 = &v700[v676];
              if (&v700[v676] != v702)
              {
                v743 = *v700;
                v744 = *v700;
                v745 = v700;
                do
                {
                  if (*v742 < v744)
                  {
                    v744 = *v742;
                    v745 = v742;
                  }

                  v742 += v676;
                }

                while (v742 != v702);
                if (v745 != v700)
                {
                  *v700 = *v745;
                  *v745 = v743;
                }
              }
            }
          }

          goto LABEL_903;
        }

        v704 = &v700[((v703 >> 1) & 0x3FFFFFFF) * v676];
        v705 = &v702[-v676];
        v706 = *v704;
        v707 = *v700;
        v708 = v702[-v676];
        if (v706 < v707)
        {
          break;
        }

        if (v708 < v706)
        {
          *v704 = v708;
          *v705 = v706;
          v709 = *v704;
          v710 = *v700;
          if (v709 < v710)
          {
            *v700 = v709;
            *v704 = v710;
          }

          goto LABEL_919;
        }

        v712 = 0;
LABEL_921:
        v713 = *v700;
        v714 = *v704;
        if (v713 >= v714)
        {
          v716 = &v702[-2 * v676];
          v715 = &v702[-v676];
          while (v716 != v700)
          {
            v715 -= v676;
            v717 = *v716;
            v716 -= v676;
            if (v717 < v714)
            {
              *v700 = v717;
              *v715 = v713;
              if (v712)
              {
                v712 = 2;
              }

              else
              {
                v712 = 1;
              }

              goto LABEL_929;
            }
          }

          v731 = &v700[v676];
          v732 = *v705;
          if (v713 >= v732)
          {
            if (v731 == v705)
            {
              goto LABEL_903;
            }

            v724 = &v700[2 * v676];
            while (1)
            {
              v733 = *v731;
              if (v713 < v733)
              {
                break;
              }

              v731 += v676;
              v724 += v676;
              if (v731 == v705)
              {
                goto LABEL_903;
              }
            }

            *v731 = v732;
            *v705 = v733;
          }

          else
          {
            v724 = &v700[v676];
          }

          if (v724 == v705)
          {
            goto LABEL_903;
          }

          while (1)
          {
            v734 = *v700;
            while (1)
            {
              v735 = *v724;
              if (v734 < v735)
              {
                break;
              }

              v724 += v676;
            }

            do
            {
              v705 -= v676;
              v736 = *v705;
            }

            while (v734 < v736);
            if (v724 >= v705)
            {
              break;
            }

            *v724 = v736;
            *v705 = v735;
            v724 += v676;
          }

          if (v724 > v701)
          {
            goto LABEL_903;
          }
        }

        else
        {
          v715 = &v702[-v676];
LABEL_929:
          v718 = &v700[v676];
          if (&v700[v676] < v715)
          {
            while (1)
            {
              v719 = *v704;
              while (1)
              {
                v720 = *v718;
                if (v720 >= v719)
                {
                  break;
                }

                v718 += v676;
              }

              do
              {
                v715 -= v676;
                v721 = *v715;
              }

              while (v721 >= v719);
              if (v718 >= v715)
              {
                break;
              }

              *v718 = v721;
              *v715 = v720;
              ++v712;
              if (v704 == v718)
              {
                v704 = v715;
              }

              v718 += v676;
            }
          }

          if (v718 != v704)
          {
            v722 = *v704;
            v723 = *v718;
            if (v722 < v723)
            {
              *v718 = v722;
              *v704 = v723;
              ++v712;
            }
          }

          if (v718 == v701)
          {
            goto LABEL_903;
          }

          if (!v712)
          {
            v725 = v718;
            if (v718 <= v701)
            {
              while (1)
              {
                v729 = &v725[v676];
                if (&v725[v676] == v702)
                {
                  break;
                }

                v730 = *v725;
                v725 += v676;
                if (*v729 < v730)
                {
                  goto LABEL_943;
                }
              }
            }

            else
            {
              v726 = v700;
              while (1)
              {
                v727 = &v726[v676];
                if (&v726[v676] == v718)
                {
                  break;
                }

                v728 = *v726;
                v726 += v676;
                if (*v727 < v728)
                {
                  goto LABEL_943;
                }
              }
            }

            goto LABEL_903;
          }

LABEL_943:
          v724 = &v718[v676];
          if (v718 > v701)
          {
            v702 = v718;
            v724 = v700;
          }
        }

        v700 = v724;
        if (v702 == v701)
        {
          goto LABEL_903;
        }
      }

      if (v708 >= v706)
      {
        *v700 = v706;
        *v704 = v707;
        v711 = *v705;
        if (v711 >= v707)
        {
LABEL_919:
          v712 = 1;
          goto LABEL_921;
        }

        *v704 = v711;
      }

      else
      {
        *v700 = v708;
      }

      *v705 = v707;
      goto LABEL_919;
    case 2:
      v418 = *(this + 4);
      if (v418 < 0)
      {
        v418 += (v1[1] - *v1) >> 2;
      }

      v419 = *(this + 5);
      v420 = v1[6];
      v421 = mlx::core::array::shape(this, v418);
      v422 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v422, v422[1], (v422[1] - *v422) >> 2);
      v423 = &v1177[4 * v418];
      v424 = v1178 - (v423 + 4);
      if (v1178 != v423 + 4)
      {
        memmove(&v1177[4 * v418], v423 + 4, v1178 - (v423 + 4));
      }

      v1178 = &v423[v424];
      v425 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v425 + 24), *(v425 + 32), (*(v425 + 32) - *(v425 + 24)) >> 3);
      v426 = v1174 + 8 * v418;
      v427 = v1175 - (v426 + 8);
      if (v1175 != v426 + 8)
      {
        memmove(v1174 + 8 * v418, v426 + 8, v1175 - (v426 + 8));
      }

      v1175 = &v426[v427];
      v428 = *(*(*this + 24) + 8 * v418);
      v429 = mlx::core::array::shape(this, v418);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v420 < v421)
      {
        goto LABEL_1497;
      }

      v430 = 0;
      v431 = *(*this + 152);
      v432 = v1167;
      v433 = v1170;
      v434 = (v1169 - v1168) >> 2;
      v20 = __p;
      v435 = (((v1169 - v1168) << 30) - 0x100000000) >> 32;
      v436 = __p + 4 * v435;
      v437 = v1168 + 4 * v435;
      v438 = v428 * ((v429 & (v419 >> 31)) + v419);
      v439 = v428 * v429;
      v440 = 4 * (v434 & 0x7FFFFFFF);
      v1163 = v1168 - 8;
      v441 = 2 * v428;
      v442 = v420 / v421;
      while (1)
      {
        v443 = v432;
        if (v434)
        {
          v444 = *v436;
          if (v434 < 2)
          {
            v445 = v435;
            v446 = v436;
          }

          else
          {
            v445 = v435;
            v446 = v436;
            if (v444 == *v437 - 1)
            {
              v447 = v20;
              v448 = v1163;
              v445 = (v434 & 0x7FFFFFFF) - 1;
              v449 = v437;
              v450 = v436;
              v451 = v435;
              do
              {
                v452 = v445;
                *v450 = 0;
                v432 -= v433[v451] * (*v449 - 1);
                v1167 = v432;
                --v445;
                v450 = &v447[v440 - 8];
                v444 = *v450;
                v447 -= 4;
                if (v452 < 2)
                {
                  break;
                }

                v449 = &v448[v440];
                v453 = *&v448[4 * (v434 & 0x7FFFFFFF)] - 1;
                v448 -= 4;
                v451 = v445;
              }

              while (v444 == v453);
              v446 = &v447[v440 - 4];
            }
          }

          *v446 = v444 + 1;
          v432 += v433[v445];
          v1167 = v432;
        }

        if (v438 != v439)
        {
          break;
        }

LABEL_570:
        if (v442 <= ++v430)
        {
          goto LABEL_1498;
        }
      }

      v454 = (v431 + 2 * v443);
      v455 = &v454[v438];
      v456 = &v454[v439];
      while (1)
      {
        v457 = (v456 - v454) / v428;
        if (v457 < 2)
        {
          goto LABEL_570;
        }

        if (v457 == 3)
        {
          v491 = v454[v428];
          v492 = *v454;
          v493 = v456[-v428];
          if (v491 >= v492)
          {
            if (v493 < v491)
            {
              v454[v428] = v493;
              v456[-v428] = v491;
              v503 = v454[v428];
              v504 = *v454;
              if (v503 < v504)
              {
                *v454 = v503;
                v454[v428] = v504;
              }
            }
          }

          else
          {
            if (v493 >= v491)
            {
              *v454 = v491;
              v454[v428] = v492;
              v505 = v456[-v428];
              if (v505 >= v492)
              {
                goto LABEL_570;
              }

              v454[v428] = v505;
            }

            else
            {
              *v454 = v493;
            }

            v456[-v428] = v492;
          }

          goto LABEL_570;
        }

        if (v457 == 2)
        {
          v494 = v456[-v428];
          v495 = *v454;
          if (v494 < v495)
          {
            *v454 = v494;
            v456[-v428] = v495;
          }

          goto LABEL_570;
        }

        if (v457 <= 7)
        {
          v496 = &v456[-v428];
          if (v496 != v454)
          {
            v497 = &v454[v441 / 2];
            do
            {
              v498 = &v454[v428];
              if (v456 != v454 && v498 != v456)
              {
                v499 = *v454;
                v500 = v497;
                v501 = *v454;
                v502 = v454;
                do
                {
                  if (*v500 < v501)
                  {
                    v501 = *v500;
                    v502 = v500;
                  }

                  v500 = (v500 + v441);
                }

                while (v500 != v456);
                if (v502 != v454)
                {
                  *v454 = *v502;
                  *v502 = v499;
                }
              }

              v497 = (v497 + v441);
              v454 += v428;
            }

            while (v498 != v496);
          }

          goto LABEL_570;
        }

        v458 = &v454[((v457 >> 1) & 0x3FFFFFFF) * v428];
        v459 = &v456[-v428];
        v460 = *v458;
        v461 = *v454;
        v462 = *v459;
        if (v460 < v461)
        {
          break;
        }

        if (v462 < v460)
        {
          *v458 = v462;
          *v459 = v460;
          v463 = *v458;
          v464 = *v454;
          if (v463 < v464)
          {
            *v454 = v463;
            *v458 = v464;
          }

          goto LABEL_586;
        }

        v466 = 0;
LABEL_588:
        v467 = *v454;
        v468 = *v458;
        if (v467 >= v468)
        {
          v470 = &v456[-2 * v428];
          v469 = &v456[-v428];
          while (v470 != v454)
          {
            v471 = *v470;
            v469 -= v428;
            v470 -= v428;
            if (v471 < v468)
            {
              *v454 = v471;
              *v469 = v467;
              if (v466)
              {
                v466 = 2;
              }

              else
              {
                v466 = 1;
              }

              goto LABEL_596;
            }
          }

          v485 = &v454[v428];
          v486 = *v459;
          if (v467 >= v486)
          {
            if (v485 == v459)
            {
              goto LABEL_570;
            }

            v478 = &v454[2 * v428];
            while (1)
            {
              v487 = *v485;
              if (v467 < v487)
              {
                break;
              }

              v478 = (v478 + v441);
              v485 = (v485 + v441);
              if (v485 == v459)
              {
                goto LABEL_570;
              }
            }

            *v485 = v486;
            *v459 = v487;
          }

          else
          {
            v478 = &v454[v428];
          }

          if (v478 == v459)
          {
            goto LABEL_570;
          }

          while (1)
          {
            v488 = *v454;
            while (1)
            {
              v489 = *v478;
              if (v488 < v489)
              {
                break;
              }

              v478 = (v478 + v441);
            }

            do
            {
              v459 -= v428;
              v490 = *v459;
            }

            while (v488 < v490);
            if (v478 >= v459)
            {
              break;
            }

            *v478 = v490;
            *v459 = v489;
            v478 += v428;
          }

          if (v478 > v455)
          {
            goto LABEL_570;
          }
        }

        else
        {
          v469 = &v456[-v428];
LABEL_596:
          v472 = &v454[v428];
          if (v472 < v469)
          {
            while (1)
            {
              v473 = *v458;
              while (1)
              {
                v474 = *v472;
                if (v474 >= v473)
                {
                  break;
                }

                v472 = (v472 + v441);
              }

              do
              {
                v469 -= v428;
                v475 = *v469;
              }

              while (v475 >= v473);
              if (v472 >= v469)
              {
                break;
              }

              *v472 = v475;
              *v469 = v474;
              ++v466;
              if (v458 == v472)
              {
                v458 = v469;
              }

              v472 += v428;
            }
          }

          if (v472 != v458)
          {
            v476 = *v458;
            v477 = *v472;
            if (v476 < v477)
            {
              *v472 = v476;
              *v458 = v477;
              ++v466;
            }
          }

          if (v472 == v455)
          {
            goto LABEL_570;
          }

          if (!v466)
          {
            v479 = v472;
            if (v472 <= v455)
            {
              while (1)
              {
                v483 = &v479[v441 / 2];
                if (&v479[v441 / 2] == v456)
                {
                  break;
                }

                v484 = *v479;
                v479 = (v479 + v441);
                if (*v483 < v484)
                {
                  goto LABEL_610;
                }
              }
            }

            else
            {
              v480 = v454;
              while (1)
              {
                v481 = &v480[v441 / 2];
                if (&v480[v441 / 2] == v472)
                {
                  break;
                }

                v482 = *v480;
                v480 = (v480 + v441);
                if (*v481 < v482)
                {
                  goto LABEL_610;
                }
              }
            }

            goto LABEL_570;
          }

LABEL_610:
          if (v472 <= v455)
          {
            v478 = &v472[v428];
          }

          else
          {
            v456 = v472;
            v478 = v454;
          }
        }

        v454 = v478;
        if (v456 == v455)
        {
          goto LABEL_570;
        }
      }

      if (v462 >= v460)
      {
        *v454 = v460;
        *v458 = v461;
        v465 = *v459;
        if (v465 >= v461)
        {
LABEL_586:
          v466 = 1;
          goto LABEL_588;
        }

        *v458 = v465;
      }

      else
      {
        *v454 = v462;
      }

      *v459 = v461;
      goto LABEL_586;
    case 3:
      v506 = *(this + 4);
      if (v506 < 0)
      {
        v506 += (v1[1] - *v1) >> 2;
      }

      v507 = *(this + 5);
      v508 = v1[6];
      v509 = mlx::core::array::shape(this, v506);
      v510 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v510, v510[1], (v510[1] - *v510) >> 2);
      v511 = &v1177[4 * v506];
      v512 = v1178 - (v511 + 4);
      if (v1178 != v511 + 4)
      {
        memmove(&v1177[4 * v506], v511 + 4, v1178 - (v511 + 4));
      }

      v1178 = &v511[v512];
      v513 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v513 + 24), *(v513 + 32), (*(v513 + 32) - *(v513 + 24)) >> 3);
      v514 = v1174 + 8 * v506;
      v515 = v1175 - (v514 + 8);
      if (v1175 != v514 + 8)
      {
        memmove(v1174 + 8 * v506, v514 + 8, v1175 - (v514 + 8));
      }

      v1175 = &v514[v515];
      v516 = *(*(*this + 24) + 8 * v506);
      v517 = mlx::core::array::shape(this, v506);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v508 < v509)
      {
        goto LABEL_1497;
      }

      v518 = 0;
      v1166 = *(*this + 152);
      v519 = v1167;
      v520 = v1170;
      v521 = (v1169 - v1168) >> 2;
      v20 = __p;
      v522 = (((v1169 - v1168) << 30) - 0x100000000) >> 32;
      v523 = __p + 4 * v522;
      v524 = v1168 + 4 * v522;
      v525 = v516 * ((v517 & (v507 >> 31)) + v507);
      v526 = v516 * v517;
      v527 = 4 * (v521 & 0x7FFFFFFF);
      v1161 = v1168 - 8;
      v528 = 4 * v516;
      v529 = v508 / v509;
      do
      {
        v530 = v519;
        if (v521)
        {
          v531 = *v523;
          if (v521 < 2)
          {
            v532 = v519;
            v533 = v522;
            v534 = v523;
          }

          else
          {
            v532 = v519;
            v533 = v522;
            v534 = v523;
            if (v531 == *v524 - 1)
            {
              v535 = v20;
              v536 = v1161;
              v533 = (v521 & 0x7FFFFFFF) - 1;
              v532 = v530;
              v537 = v524;
              v538 = v523;
              v539 = v522;
              do
              {
                v540 = v533;
                *v538 = 0;
                v532 -= v520[v539] * (*v537 - 1);
                v1167 = v532;
                --v533;
                v538 = &v535[v527 - 8];
                v531 = *v538;
                v535 -= 4;
                if (v540 < 2)
                {
                  break;
                }

                v537 = &v536[v527];
                v541 = *&v536[4 * (v521 & 0x7FFFFFFF)] - 1;
                v536 -= 4;
                v539 = v533;
              }

              while (v531 == v541);
              v534 = &v535[v527 - 4];
            }
          }

          *v534 = v531 + 1;
          v519 = v520[v533] + v532;
          v1167 = v519;
        }

        if (v525 == v526)
        {
          goto LABEL_680;
        }

        v542 = (v1166 + 4 * v530);
        v543 = &v542[v525];
        v544 = &v542[v526];
        while (1)
        {
          v545 = (v544 - v542) / v516;
          if (v545 < 2)
          {
            goto LABEL_680;
          }

          if (v545 == 3)
          {
            v571 = v542[v516];
            v572 = *v542;
            v573 = v544[-v516];
            if (v571 >= *v542)
            {
              if (v573 < v571)
              {
                v542[v516] = v573;
                v544[-v516] = v571;
                v582 = v542[v516];
                v583 = *v542;
                if (v582 < *v542)
                {
                  *v542 = v582;
                  v542[v516] = v583;
                }
              }

              goto LABEL_680;
            }

            if (v573 >= v571)
            {
              *v542 = v571;
              v542[v516] = v572;
              v584 = v544[-v516];
              if (v584 >= v572)
              {
                goto LABEL_680;
              }

              v542[v516] = v584;
            }

            else
            {
              *v542 = v573;
            }

LABEL_771:
            v544[-v516] = v572;
            goto LABEL_680;
          }

          if (v545 == 2)
          {
            v574 = v544[-v516];
            v572 = *v542;
            if (v574 >= *v542)
            {
              goto LABEL_680;
            }

            *v542 = v574;
            goto LABEL_771;
          }

          if (v545 <= 7)
          {
            v575 = &v544[-v516];
            if (v575 != v542)
            {
              v576 = &v542[v528 / 4];
              do
              {
                v577 = &v542[v516];
                if (v544 != v542 && v577 != v544)
                {
                  v578 = *v542;
                  v579 = v576;
                  v580 = *v542;
                  v581 = v542;
                  do
                  {
                    if (*v579 < v580)
                    {
                      v580 = *v579;
                      v581 = v579;
                    }

                    v579 = (v579 + v528);
                  }

                  while (v579 != v544);
                  if (v581 != v542)
                  {
                    *v542 = *v581;
                    *v581 = v578;
                  }
                }

                v576 = (v576 + v528);
                v542 += v516;
              }

              while (v577 != v575);
            }

            goto LABEL_680;
          }

          v546 = &v542[((v545 >> 1) & 0x3FFFFFFF) * v516];
          v547 = &v544[-v516];
          v548 = *v546;
          v549 = *v542;
          v550 = *v547;
          if (*v546 < *v542)
          {
            if (v550 >= v548)
            {
              *v542 = v548;
              *v546 = v549;
              if (*v547 >= v549)
              {
LABEL_696:
                v552 = 1;
                goto LABEL_698;
              }

              *v546 = *v547;
            }

            else
            {
              *v542 = v550;
            }

            *v547 = v549;
            goto LABEL_696;
          }

          if (v550 < v548)
          {
            *v546 = v550;
            *v547 = v548;
            v551 = *v542;
            if (*v546 < *v542)
            {
              *v542 = *v546;
              *v546 = v551;
            }

            goto LABEL_696;
          }

          v552 = 0;
LABEL_698:
          v553 = *v542;
          v554 = &v542[v516];
          if (*v542 < *v546)
          {
            break;
          }

          v556 = &v544[-2 * v516];
          v555 = &v544[-v516];
          while (v556 != v542)
          {
            v557 = *v556;
            v555 -= v516;
            v556 -= v516;
            if (v557 < *v546)
            {
              *v542 = v557;
              *v555 = v553;
              if (v552)
              {
                v552 = 2;
              }

              else
              {
                v552 = 1;
              }

              goto LABEL_706;
            }
          }

          if (v553 >= *v547)
          {
            if (v554 == v547)
            {
              goto LABEL_680;
            }

            v561 = &v542[2 * v516];
            while (1)
            {
              v568 = *v554;
              if (v553 < *v554)
              {
                break;
              }

              v561 = (v561 + v528);
              v554 = (v554 + v528);
              if (v554 == v547)
              {
                goto LABEL_680;
              }
            }

            *v554 = *v547;
            *v547 = v568;
          }

          else
          {
            v561 = &v542[v516];
          }

          if (v561 == v547)
          {
            goto LABEL_680;
          }

          while (1)
          {
            v569 = *v542;
            while (1)
            {
              v570 = *v561;
              if (v569 < *v561)
              {
                break;
              }

              v561 = (v561 + v528);
            }

            do
            {
              v547 -= v516;
            }

            while (v569 < *v547);
            if (v561 >= v547)
            {
              break;
            }

            *v561 = *v547;
            *v547 = v570;
            v561 += v516;
          }

          if (v561 > v543)
          {
            goto LABEL_680;
          }

LABEL_747:
          v542 = v561;
          if (v544 == v543)
          {
            goto LABEL_680;
          }
        }

        v555 = &v544[-v516];
LABEL_706:
        if (v554 < v555)
        {
          while (1)
          {
            v558 = *v546;
            while (1)
            {
              v559 = *v554;
              if (*v554 >= v558)
              {
                break;
              }

              v554 = (v554 + v528);
            }

            do
            {
              v555 -= v516;
            }

            while (*v555 >= v558);
            if (v554 >= v555)
            {
              break;
            }

            *v554 = *v555;
            *v555 = v559;
            ++v552;
            if (v546 == v554)
            {
              v546 = v555;
            }

            v554 += v516;
          }
        }

        if (v554 != v546)
        {
          v560 = *v554;
          if (*v546 < *v554)
          {
            *v554 = *v546;
            *v546 = v560;
            ++v552;
          }
        }

        if (v554 == v543)
        {
          goto LABEL_680;
        }

        if (v552)
        {
LABEL_720:
          if (v554 <= v543)
          {
            v561 = &v554[v516];
          }

          else
          {
            v544 = v554;
            v561 = v542;
          }

          goto LABEL_747;
        }

        v562 = v554;
        if (v554 <= v543)
        {
          while (&v562[v528 / 4] != v544)
          {
            v566 = v562[v516];
            v567 = *v562;
            v562 = (v562 + v528);
            if (v566 < v567)
            {
              goto LABEL_720;
            }
          }
        }

        else
        {
          v563 = v542;
          while (&v563[v528 / 4] != v554)
          {
            v564 = v563[v516];
            v565 = *v563;
            v563 = (v563 + v528);
            if (v564 < v565)
            {
              goto LABEL_720;
            }
          }
        }

LABEL_680:
        ++v518;
      }

      while (v529 > v518);
LABEL_1498:
      if (v20)
      {
        v1173 = v20;
        operator delete(v20);
      }

      if (v1170)
      {
        v1171 = v1170;
        operator delete(v1170);
      }

      if (v1168)
      {
        v1169 = v1168;
        operator delete(v1168);
      }

      if (v1174)
      {
        v1175 = v1174;
        operator delete(v1174);
      }

      if (v1177)
      {
        v1178 = v1177;
        operator delete(v1177);
      }

      return;
    case 4:
      v165 = *(this + 4);
      if (v165 < 0)
      {
        v165 += (v1[1] - *v1) >> 2;
      }

      v166 = *(this + 5);
      v167 = v1[6];
      v168 = mlx::core::array::shape(this, v165);
      v169 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v169, v169[1], (v169[1] - *v169) >> 2);
      v170 = &v1177[4 * v165];
      v171 = v1178 - (v170 + 4);
      if (v1178 != v170 + 4)
      {
        memmove(&v1177[4 * v165], v170 + 4, v1178 - (v170 + 4));
      }

      v1178 = &v170[v171];
      v172 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v172 + 24), *(v172 + 32), (*(v172 + 32) - *(v172 + 24)) >> 3);
      v173 = v1174 + 8 * v165;
      v174 = v1175 - (v173 + 8);
      if (v1175 != v173 + 8)
      {
        memmove(v1174 + 8 * v165, v173 + 8, v1175 - (v173 + 8));
      }

      v1175 = &v173[v174];
      v175 = *(*(*this + 24) + 8 * v165);
      v176 = mlx::core::array::shape(this, v165);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v167 < v168)
      {
        goto LABEL_1497;
      }

      v177 = 0;
      v178 = *(*this + 152);
      v179 = (v1169 - v1168) >> 2;
      v180 = (((v1169 - v1168) << 30) - 0x100000000) >> 32;
      v20 = __p;
      v181 = v1170;
      v182 = __p + 4 * v180;
      v183 = v1168 + 4 * v180;
      v184 = v175 * ((v176 & (v166 >> 31)) + v166);
      v185 = v175 * v176;
      v186 = 4 * (v179 & 0x7FFFFFFF);
      v187 = v1168 - 8;
      v188 = 8 * v175;
      v189 = v167 / v168;
      while (1)
      {
        v190 = v1167;
        if (v179)
        {
          v191 = *v182;
          if (v179 >= 2 && v191 == *v183 - 1)
          {
            v192 = v20;
            v193 = v187;
            v194 = (v179 & 0x7FFFFFFF) - 1;
            v195 = v1167;
            v196 = v183;
            v197 = v182;
            v198 = v180;
            do
            {
              v199 = v194;
              *v197 = 0;
              v195 -= v181[v198] * (*v196 - 1);
              v1167 = v195;
              --v194;
              v197 = &v192[v186 - 8];
              v191 = *v197;
              v192 -= 4;
              if (v199 < 2)
              {
                break;
              }

              v196 = &v193[v186];
              v200 = *&v193[4 * (v179 & 0x7FFFFFFF)] - 1;
              v193 -= 4;
              v198 = v194;
            }

            while (v191 == v200);
            v201 = &v192[v186 - 4];
          }

          else
          {
            v195 = v1167;
            v194 = v180;
            v201 = v182;
          }

          *v201 = v191 + 1;
          v1167 = v181[v194] + v195;
        }

        if (v184 == v185)
        {
          goto LABEL_237;
        }

        v202 = (v178 + 8 * v190);
        v203 = &v202[v184];
        v204 = &v202[v185];
        do
        {
          v205 = (v204 - v202) / v175;
          if (v205 < 2)
          {
            break;
          }

          if (v205 == 3)
          {
            v232 = v202[v175];
            v233 = *v202;
            v234 = v204[-v175];
            if (v232 >= *v202)
            {
              if (v234 < v232)
              {
                v202[v175] = v234;
                v204[-v175] = v232;
                v244 = v202[v175];
                v245 = *v202;
                if (v244 < *v202)
                {
                  *v202 = v244;
                  v202[v175] = v245;
                }
              }

              break;
            }

            if (v234 >= v232)
            {
              *v202 = v232;
              v202[v175] = v233;
              v246 = v204[-v175];
              if (v246 >= v233)
              {
                break;
              }

              v202[v175] = v246;
            }

            else
            {
              *v202 = v234;
            }

            v204[-v175] = v233;
            break;
          }

          if (v205 == 2)
          {
            v235 = v204[-v175];
            v236 = *v202;
            if (v235 < *v202)
            {
              *v202 = v235;
              v204[-v175] = v236;
            }

            break;
          }

          if (v205 <= 7)
          {
            v237 = &v204[-v175];
            if (v237 != v202)
            {
              v238 = &v202[v188 / 8];
              do
              {
                v239 = &v202[v175];
                if (v204 != v202 && v239 != v204)
                {
                  v240 = *v202;
                  v241 = v238;
                  v242 = *v202;
                  v243 = v202;
                  do
                  {
                    if (*v241 < v242)
                    {
                      v242 = *v241;
                      v243 = v241;
                    }

                    v241 = (v241 + v188);
                  }

                  while (v241 != v204);
                  if (v243 != v202)
                  {
                    *v202 = *v243;
                    *v243 = v240;
                  }
                }

                v238 = (v238 + v188);
                v202 += v175;
              }

              while (v239 != v237);
            }

            break;
          }

          v206 = &v202[((v205 >> 1) & 0x3FFFFFFF) * v175];
          v207 = &v204[-v175];
          v208 = *v206;
          v209 = *v202;
          v210 = *v207;
          if (*v206 >= *v202)
          {
            if (v210 >= v208)
            {
              v212 = 0;
              goto LABEL_255;
            }

            *v206 = v210;
            *v207 = v208;
            v211 = *v202;
            if (*v206 < *v202)
            {
              *v202 = *v206;
              *v206 = v211;
            }
          }

          else
          {
            if (v210 < v208)
            {
              *v202 = v210;
LABEL_252:
              *v207 = v209;
              goto LABEL_253;
            }

            *v202 = v208;
            *v206 = v209;
            if (*v207 < v209)
            {
              *v206 = *v207;
              goto LABEL_252;
            }
          }

LABEL_253:
          v212 = 1;
LABEL_255:
          v213 = *v202;
          if (*v202 < *v206)
          {
            v214 = &v204[-v175];
            goto LABEL_263;
          }

          v215 = &v204[-2 * v175];
          v214 = &v204[-v175];
          while (v215 != v202)
          {
            v216 = *v215;
            v214 -= v175;
            v215 -= v175;
            if (v216 < *v206)
            {
              *v202 = v216;
              *v214 = v213;
              if (v212)
              {
                v212 = 2;
              }

              else
              {
                v212 = 1;
              }

LABEL_263:
              v217 = &v202[v175];
              if (v217 < v214)
              {
                while (1)
                {
                  v218 = *v206;
                  while (1)
                  {
                    v219 = *v217;
                    if (*v217 >= v218)
                    {
                      break;
                    }

                    v217 = (v217 + v188);
                  }

                  do
                  {
                    v214 -= v175;
                  }

                  while (*v214 >= v218);
                  if (v217 >= v214)
                  {
                    break;
                  }

                  *v217 = *v214;
                  *v214 = v219;
                  ++v212;
                  if (v206 == v217)
                  {
                    v206 = v214;
                  }

                  v217 += v175;
                }
              }

              if (v217 != v206)
              {
                v220 = *v217;
                if (*v206 < *v217)
                {
                  *v217 = *v206;
                  *v206 = v220;
                  ++v212;
                }
              }

              if (v217 != v203)
              {
                if (v212)
                {
LABEL_277:
                  if (v217 <= v203)
                  {
                    v221 = &v217[v175];
                  }

                  else
                  {
                    v204 = v217;
                    v221 = v202;
                  }

                  goto LABEL_304;
                }

                v222 = v217;
                if (v217 <= v203)
                {
                  while (1)
                  {
                    v226 = &v222[v188 / 8];
                    if (&v222[v188 / 8] == v204)
                    {
                      break;
                    }

                    v227 = *v222;
                    v222 = (v222 + v188);
                    if (*v226 < v227)
                    {
                      goto LABEL_277;
                    }
                  }
                }

                else
                {
                  v223 = v202;
                  while (1)
                  {
                    v224 = &v223[v188 / 8];
                    if (&v223[v188 / 8] == v217)
                    {
                      break;
                    }

                    v225 = *v223;
                    v223 = (v223 + v188);
                    if (*v224 < v225)
                    {
                      goto LABEL_277;
                    }
                  }
                }
              }

              goto LABEL_237;
            }
          }

          v228 = &v202[v175];
          if (v213 >= *v207)
          {
            if (v228 == v207)
            {
              break;
            }

            v221 = &v202[2 * v175];
            while (1)
            {
              v229 = *v228;
              if (v213 < *v228)
              {
                break;
              }

              v221 = (v221 + v188);
              v228 = (v228 + v188);
              if (v228 == v207)
              {
                goto LABEL_237;
              }
            }

            *v228 = *v207;
            *v207 = v229;
          }

          else
          {
            v221 = &v202[v175];
          }

          if (v221 == v207)
          {
            break;
          }

          while (1)
          {
            v230 = *v202;
            while (1)
            {
              v231 = *v221;
              if (v230 < *v221)
              {
                break;
              }

              v221 = (v221 + v188);
            }

            do
            {
              v207 -= v175;
            }

            while (v230 < *v207);
            if (v221 >= v207)
            {
              break;
            }

            *v221 = *v207;
            *v207 = v231;
            v221 += v175;
          }

          if (v221 > v203)
          {
            break;
          }

LABEL_304:
          v202 = v221;
        }

        while (v204 != v203);
LABEL_237:
        if (v189 <= ++v177)
        {
          goto LABEL_1498;
        }
      }

    case 5:
      v749 = *(this + 4);
      if (v749 < 0)
      {
        v749 += (v1[1] - *v1) >> 2;
      }

      v750 = *(this + 5);
      v751 = v1[6];
      v752 = mlx::core::array::shape(this, v749);
      v753 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v753, v753[1], (v753[1] - *v753) >> 2);
      v754 = &v1177[4 * v749];
      v755 = v1178 - (v754 + 4);
      if (v1178 != v754 + 4)
      {
        memmove(&v1177[4 * v749], v754 + 4, v1178 - (v754 + 4));
      }

      v1178 = &v754[v755];
      v756 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v756 + 24), *(v756 + 32), (*(v756 + 32) - *(v756 + 24)) >> 3);
      v757 = v1174 + 8 * v749;
      v758 = v1175 - (v757 + 8);
      if (v1175 != v757 + 8)
      {
        memmove(v1174 + 8 * v749, v757 + 8, v1175 - (v757 + 8));
      }

      v1175 = &v757[v758];
      v759 = *(*(*this + 24) + 8 * v749);
      v760 = mlx::core::array::shape(this, v749);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v751 < v752)
      {
        goto LABEL_1497;
      }

      v761 = 0;
      v762 = *(*this + 152);
      v763 = v759 * ((v760 & (v750 >> 31)) + v750);
      v764 = v759 * v760;
      v765 = v751 / v752;
      while (1)
      {
        v766 = v1167;
        v767 = v1169 - v1168;
        v768 = (v1169 - v1168) >> 2;
        if (v768)
        {
          v769 = ((v767 << 30) - 0x100000000) >> 32;
          v770 = __p;
          v771 = v1170;
          v772 = __p + 4 * v769;
          v773 = *v772;
          v774 = v1168 + 4 * v769;
          if (v768 >= 2 && v773 == *v774 - 1)
          {
            v778 = (v767 >> 2) & 0x7FFFFFFF;
            v777 = v778 - 1;
            v779 = 4 * v778;
            v780 = v1168 - 8;
            v776 = v1167;
            do
            {
              v781 = v777;
              *v772 = 0;
              v776 -= v771[v769] * (*v774 - 1);
              v1167 = v776;
              --v777;
              v772 = &v770[v779 - 8];
              v773 = *v772;
              v770 -= 4;
              if (v781 < 2)
              {
                break;
              }

              v774 = &v780[v779];
              v782 = *&v780[4 * v778] - 1;
              v780 -= 4;
              v769 = v777;
            }

            while (v773 == v782);
            v772 = &v770[4 * v778 - 4];
          }

          else
          {
            v776 = v1167;
            v777 = ((v767 << 30) - 0x100000000) >> 32;
          }

          *v772 = v773 + 1;
          v1167 = v771[v777] + v776;
        }

        if (v763 == v764)
        {
          goto LABEL_1014;
        }

        v783 = (v762 + v766);
        v784 = (v762 + v766 + v763);
        v785 = (v762 + v766 + v764);
        while (1)
        {
          v786 = (v785 - v783) / v759;
          if (v786 < 2)
          {
            goto LABEL_1014;
          }

          if (v786 == 3)
          {
            break;
          }

          if (v786 == 2)
          {
            v823 = v785[-v759];
            v824 = *v783;
            if (v823 < v824)
            {
              *v783 = v823;
              v785[-v759] = v824;
            }

            goto LABEL_1014;
          }

          if (v786 <= 7)
          {
            for (; v783 != &v785[-v759]; v783 += v759)
            {
              if (v785 != v783)
              {
                v825 = &v783[v759];
                if (&v783[v759] != v785)
                {
                  v826 = *v783;
                  v827 = *v783;
                  v828 = v783;
                  do
                  {
                    if (*v825 < v827)
                    {
                      v827 = *v825;
                      v828 = v825;
                    }

                    v825 += v759;
                  }

                  while (v825 != v785);
                  if (v828 != v783)
                  {
                    *v783 = *v828;
                    *v828 = v826;
                  }
                }
              }
            }

            goto LABEL_1014;
          }

          v787 = &v783[((v786 >> 1) & 0x3FFFFFFF) * v759];
          v788 = &v785[-v759];
          v789 = *v787;
          v790 = *v783;
          v791 = v785[-v759];
          if (v789 < v790)
          {
            if (v791 < v789)
            {
              *v783 = v791;
              goto LABEL_1029;
            }

            *v783 = v789;
            *v787 = v790;
            v794 = *v788;
            if (v794 < v790)
            {
              *v787 = v794;
LABEL_1029:
              *v788 = v790;
            }

LABEL_1030:
            v795 = 1;
            goto LABEL_1032;
          }

          if (v791 < v789)
          {
            *v787 = v791;
            *v788 = v789;
            v792 = *v787;
            v793 = *v783;
            if (v792 < v793)
            {
              *v783 = v792;
              *v787 = v793;
            }

            goto LABEL_1030;
          }

          v795 = 0;
LABEL_1032:
          v796 = *v783;
          v797 = *v787;
          if (v796 < v797)
          {
            v798 = &v785[-v759];
            goto LABEL_1040;
          }

          v799 = &v785[-2 * v759];
          v798 = &v785[-v759];
          do
          {
            if (v799 == v783)
            {
              v814 = &v783[v759];
              v815 = *v788;
              if (v796 >= v815)
              {
                if (v814 == v788)
                {
                  goto LABEL_1014;
                }

                v807 = &v783[2 * v759];
                while (1)
                {
                  v816 = *v814;
                  if (v796 < v816)
                  {
                    break;
                  }

                  v814 += v759;
                  v807 += v759;
                  if (v814 == v788)
                  {
                    goto LABEL_1014;
                  }
                }

                *v814 = v815;
                *v788 = v816;
              }

              else
              {
                v807 = &v783[v759];
              }

              if (v807 != v788)
              {
                while (1)
                {
                  v817 = *v783;
                  while (1)
                  {
                    v818 = *v807;
                    if (v817 < v818)
                    {
                      break;
                    }

                    v807 += v759;
                  }

                  do
                  {
                    v788 -= v759;
                    v819 = *v788;
                  }

                  while (v817 < v819);
                  if (v807 >= v788)
                  {
                    break;
                  }

                  *v807 = v819;
                  *v788 = v818;
                  v807 += v759;
                }

                if (v807 <= v784)
                {
                  goto LABEL_1081;
                }
              }

              goto LABEL_1014;
            }

            v798 -= v759;
            v800 = *v799;
            v799 -= v759;
          }

          while (v800 >= v797);
          *v783 = v800;
          *v798 = v796;
          if (v795)
          {
            v795 = 2;
          }

          else
          {
            v795 = 1;
          }

LABEL_1040:
          v801 = &v783[v759];
          if (&v783[v759] < v798)
          {
            while (1)
            {
              v802 = *v787;
              while (1)
              {
                v803 = *v801;
                if (v803 >= v802)
                {
                  break;
                }

                v801 += v759;
              }

              do
              {
                v798 -= v759;
                v804 = *v798;
              }

              while (v804 >= v802);
              if (v801 >= v798)
              {
                break;
              }

              *v801 = v804;
              *v798 = v803;
              ++v795;
              if (v787 == v801)
              {
                v787 = v798;
              }

              v801 += v759;
            }
          }

          if (v801 != v787)
          {
            v805 = *v787;
            v806 = *v801;
            if (v805 < v806)
            {
              *v801 = v805;
              *v787 = v806;
              ++v795;
            }
          }

          if (v801 != v784)
          {
            if (!v795)
            {
              v808 = v801;
              if (v801 <= v784)
              {
                while (1)
                {
                  v812 = &v808[v759];
                  if (&v808[v759] == v785)
                  {
                    break;
                  }

                  v813 = *v808;
                  v808 += v759;
                  if (*v812 < v813)
                  {
                    goto LABEL_1054;
                  }
                }
              }

              else
              {
                v809 = v783;
                while (1)
                {
                  v810 = &v809[v759];
                  if (&v809[v759] == v801)
                  {
                    break;
                  }

                  v811 = *v809;
                  v809 += v759;
                  if (*v810 < v811)
                  {
                    goto LABEL_1054;
                  }
                }
              }

              goto LABEL_1014;
            }

LABEL_1054:
            v807 = &v801[v759];
            if (v801 > v784)
            {
              v785 = v801;
              v807 = v783;
            }

LABEL_1081:
            v783 = v807;
            if (v785 != v784)
            {
              continue;
            }
          }

          goto LABEL_1014;
        }

        v820 = v783[v759];
        v821 = *v783;
        v822 = v785[-v759];
        if (v820 >= v821)
        {
          if (v822 < v820)
          {
            v783[v759] = v822;
            v785[-v759] = v820;
            v829 = v783[v759];
            v830 = *v783;
            if (v829 < v830)
            {
              *v783 = v829;
              v783[v759] = v830;
            }
          }
        }

        else
        {
          if (v822 >= v820)
          {
            *v783 = v820;
            v783[v759] = v821;
            v831 = v785[-v759];
            if (v831 >= v821)
            {
              goto LABEL_1014;
            }

            v783[v759] = v831;
          }

          else
          {
            *v783 = v822;
          }

          v785[-v759] = v821;
        }

LABEL_1014:
        if (v765 <= ++v761)
        {
LABEL_1497:
          v20 = __p;
          goto LABEL_1498;
        }
      }

    case 6:
      v913 = *(this + 4);
      if (v913 < 0)
      {
        v913 += (v1[1] - *v1) >> 2;
      }

      v914 = *(this + 5);
      v915 = v1[6];
      v916 = mlx::core::array::shape(this, v913);
      v917 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v917, v917[1], (v917[1] - *v917) >> 2);
      v918 = &v1177[4 * v913];
      v919 = v1178 - (v918 + 4);
      if (v1178 != v918 + 4)
      {
        memmove(&v1177[4 * v913], v918 + 4, v1178 - (v918 + 4));
      }

      v1178 = &v918[v919];
      v920 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v920 + 24), *(v920 + 32), (*(v920 + 32) - *(v920 + 24)) >> 3);
      v921 = v1174 + 8 * v913;
      v922 = v1175 - (v921 + 8);
      if (v1175 != v921 + 8)
      {
        memmove(v1174 + 8 * v913, v921 + 8, v1175 - (v921 + 8));
      }

      v1175 = &v921[v922];
      v923 = *(*(*this + 24) + 8 * v913);
      v924 = mlx::core::array::shape(this, v913);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v915 < v916)
      {
        goto LABEL_1497;
      }

      v925 = 0;
      v926 = *(*this + 152);
      v927 = v1167;
      v928 = v1170;
      v929 = (v1169 - v1168) >> 2;
      v20 = __p;
      v930 = (((v1169 - v1168) << 30) - 0x100000000) >> 32;
      v931 = __p + 4 * v930;
      v932 = v1168 + 4 * v930;
      v933 = v923 * ((v924 & (v914 >> 31)) + v914);
      v934 = v923 * v924;
      v935 = 4 * (v929 & 0x7FFFFFFF);
      v1165 = v1168 - 8;
      v936 = 2 * v923;
      v937 = v915 / v916;
      while (1)
      {
        v938 = v927;
        if (v929)
        {
          v939 = *v931;
          if (v929 < 2)
          {
            v940 = v930;
            v941 = v931;
          }

          else
          {
            v940 = v930;
            v941 = v931;
            if (v939 == *v932 - 1)
            {
              v942 = v20;
              v943 = v1165;
              v940 = (v929 & 0x7FFFFFFF) - 1;
              v944 = v932;
              v945 = v931;
              v946 = v930;
              do
              {
                v947 = v940;
                *v945 = 0;
                v927 -= v928[v946] * (*v944 - 1);
                v1167 = v927;
                --v940;
                v945 = &v942[v935 - 8];
                v939 = *v945;
                v942 -= 4;
                if (v947 < 2)
                {
                  break;
                }

                v944 = &v943[v935];
                v948 = *&v943[4 * (v929 & 0x7FFFFFFF)] - 1;
                v943 -= 4;
                v946 = v940;
              }

              while (v939 == v948);
              v941 = &v942[v935 - 4];
            }
          }

          *v941 = v939 + 1;
          v927 += v928[v940];
          v1167 = v927;
        }

        if (v933 == v934)
        {
          goto LABEL_1285;
        }

        v949 = (v926 + 2 * v938);
        v950 = &v949[v933];
        v951 = &v949[v934];
        do
        {
          v952 = (v951 - v949) / v923;
          if (v952 < 2)
          {
            break;
          }

          if (v952 == 3)
          {
            v986 = v949[v923];
            v987 = *v949;
            v988 = v951[-v923];
            if (v986 >= v987)
            {
              if (v988 < v986)
              {
                v949[v923] = v988;
                v951[-v923] = v986;
                v998 = v949[v923];
                v999 = *v949;
                if (v998 < v999)
                {
                  *v949 = v998;
                  v949[v923] = v999;
                }
              }

              break;
            }

            if (v988 >= v986)
            {
              *v949 = v986;
              v949[v923] = v987;
              v1000 = v951[-v923];
              if (v1000 >= v987)
              {
                break;
              }

              v949[v923] = v1000;
            }

            else
            {
              *v949 = v988;
            }

            v951[-v923] = v987;
            break;
          }

          if (v952 == 2)
          {
            v989 = v951[-v923];
            v990 = *v949;
            if (v989 < v990)
            {
              *v949 = v989;
              v951[-v923] = v990;
            }

            break;
          }

          if (v952 <= 7)
          {
            v991 = &v951[-v923];
            if (v991 != v949)
            {
              v992 = &v949[v936 / 2];
              do
              {
                v993 = &v949[v923];
                if (v951 != v949 && v993 != v951)
                {
                  v994 = *v949;
                  v995 = v992;
                  v996 = *v949;
                  v997 = v949;
                  do
                  {
                    if (*v995 < v996)
                    {
                      v996 = *v995;
                      v997 = v995;
                    }

                    v995 = (v995 + v936);
                  }

                  while (v995 != v951);
                  if (v997 != v949)
                  {
                    *v949 = *v997;
                    *v997 = v994;
                  }
                }

                v992 = (v992 + v936);
                v949 += v923;
              }

              while (v993 != v991);
            }

            break;
          }

          v953 = &v949[((v952 >> 1) & 0x3FFFFFFF) * v923];
          v954 = &v951[-v923];
          v955 = *v953;
          v956 = *v949;
          v957 = *v954;
          if (v955 >= v956)
          {
            if (v957 >= v955)
            {
              v961 = 0;
              goto LABEL_1303;
            }

            *v953 = v957;
            *v954 = v955;
            v958 = *v953;
            v959 = *v949;
            if (v958 < v959)
            {
              *v949 = v958;
              *v953 = v959;
            }
          }

          else
          {
            if (v957 < v955)
            {
              *v949 = v957;
LABEL_1300:
              *v954 = v956;
              goto LABEL_1301;
            }

            *v949 = v955;
            *v953 = v956;
            v960 = *v954;
            if (v960 < v956)
            {
              *v953 = v960;
              goto LABEL_1300;
            }
          }

LABEL_1301:
          v961 = 1;
LABEL_1303:
          v962 = *v949;
          v963 = *v953;
          if (v962 < v963)
          {
            v964 = &v951[-v923];
            goto LABEL_1311;
          }

          v965 = &v951[-2 * v923];
          v964 = &v951[-v923];
          while (v965 != v949)
          {
            v966 = *v965;
            v964 -= v923;
            v965 -= v923;
            if (v966 < v963)
            {
              *v949 = v966;
              *v964 = v962;
              if (v961)
              {
                v961 = 2;
              }

              else
              {
                v961 = 1;
              }

LABEL_1311:
              v967 = &v949[v923];
              if (v967 < v964)
              {
                while (1)
                {
                  v968 = *v953;
                  while (1)
                  {
                    v969 = *v967;
                    if (v969 >= v968)
                    {
                      break;
                    }

                    v967 = (v967 + v936);
                  }

                  do
                  {
                    v964 -= v923;
                    v970 = *v964;
                  }

                  while (v970 >= v968);
                  if (v967 >= v964)
                  {
                    break;
                  }

                  *v967 = v970;
                  *v964 = v969;
                  ++v961;
                  if (v953 == v967)
                  {
                    v953 = v964;
                  }

                  v967 += v923;
                }
              }

              if (v967 != v953)
              {
                v971 = *v953;
                v972 = *v967;
                if (v971 < v972)
                {
                  *v967 = v971;
                  *v953 = v972;
                  ++v961;
                }
              }

              if (v967 != v950)
              {
                if (v961)
                {
LABEL_1325:
                  if (v967 <= v950)
                  {
                    v973 = &v967[v923];
                  }

                  else
                  {
                    v951 = v967;
                    v973 = v949;
                  }

                  goto LABEL_1353;
                }

                v974 = v967;
                if (v967 <= v950)
                {
                  while (1)
                  {
                    v978 = &v974[v936 / 2];
                    if (&v974[v936 / 2] == v951)
                    {
                      break;
                    }

                    v979 = *v974;
                    v974 = (v974 + v936);
                    if (*v978 < v979)
                    {
                      goto LABEL_1325;
                    }
                  }
                }

                else
                {
                  v975 = v949;
                  while (1)
                  {
                    v976 = &v975[v936 / 2];
                    if (&v975[v936 / 2] == v967)
                    {
                      break;
                    }

                    v977 = *v975;
                    v975 = (v975 + v936);
                    if (*v976 < v977)
                    {
                      goto LABEL_1325;
                    }
                  }
                }
              }

              goto LABEL_1285;
            }
          }

          v980 = &v949[v923];
          v981 = *v954;
          if (v962 >= v981)
          {
            if (v980 == v954)
            {
              break;
            }

            v973 = &v949[2 * v923];
            while (1)
            {
              v982 = *v980;
              if (v962 < v982)
              {
                break;
              }

              v973 = (v973 + v936);
              v980 = (v980 + v936);
              if (v980 == v954)
              {
                goto LABEL_1285;
              }
            }

            *v980 = v981;
            *v954 = v982;
          }

          else
          {
            v973 = &v949[v923];
          }

          if (v973 == v954)
          {
            break;
          }

          while (1)
          {
            v983 = *v949;
            while (1)
            {
              v984 = *v973;
              if (v983 < v984)
              {
                break;
              }

              v973 = (v973 + v936);
            }

            do
            {
              v954 -= v923;
              v985 = *v954;
            }

            while (v983 < v985);
            if (v973 >= v954)
            {
              break;
            }

            *v973 = v985;
            *v954 = v984;
            v973 += v923;
          }

          if (v973 > v950)
          {
            break;
          }

LABEL_1353:
          v949 = v973;
        }

        while (v951 != v950);
LABEL_1285:
        if (v937 <= ++v925)
        {
          goto LABEL_1498;
        }
      }

    case 7:
      v585 = *(this + 4);
      if (v585 < 0)
      {
        v585 += (v1[1] - *v1) >> 2;
      }

      v586 = *(this + 5);
      v587 = v1[6];
      v588 = mlx::core::array::shape(this, v585);
      v589 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v589, v589[1], (v589[1] - *v589) >> 2);
      v590 = &v1177[4 * v585];
      v591 = v1178 - (v590 + 4);
      if (v1178 != v590 + 4)
      {
        memmove(&v1177[4 * v585], v590 + 4, v1178 - (v590 + 4));
      }

      v1178 = &v590[v591];
      v592 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v592 + 24), *(v592 + 32), (*(v592 + 32) - *(v592 + 24)) >> 3);
      v593 = v1174 + 8 * v585;
      v594 = v1175 - (v593 + 8);
      if (v1175 != v593 + 8)
      {
        memmove(v1174 + 8 * v585, v593 + 8, v1175 - (v593 + 8));
      }

      v1175 = &v593[v594];
      v595 = *(*(*this + 24) + 8 * v585);
      v596 = mlx::core::array::shape(this, v585);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v587 < v588)
      {
        goto LABEL_1497;
      }

      v597 = 0;
      v598 = *(*this + 152);
      v599 = v1167;
      v600 = v1170;
      v601 = (v1169 - v1168) >> 2;
      v20 = __p;
      v602 = (((v1169 - v1168) << 30) - 0x100000000) >> 32;
      v603 = __p + 4 * v602;
      v604 = v1168 + 4 * v602;
      v605 = v595 * ((v596 & (v586 >> 31)) + v586);
      v606 = v595 * v596;
      v607 = 4 * (v601 & 0x7FFFFFFF);
      v1164 = v1168 - 8;
      v608 = 4 * v595;
      v609 = v587 / v588;
      while (1)
      {
        v610 = v599;
        if (v601)
        {
          v611 = *v603;
          if (v601 < 2)
          {
            v612 = v602;
            v613 = v603;
          }

          else
          {
            v612 = v602;
            v613 = v603;
            if (v611 == *v604 - 1)
            {
              v614 = v20;
              v615 = v1164;
              v612 = (v601 & 0x7FFFFFFF) - 1;
              v616 = v604;
              v617 = v603;
              v618 = v602;
              do
              {
                v619 = v612;
                *v617 = 0;
                v599 -= v600[v618] * (*v616 - 1);
                v1167 = v599;
                --v612;
                v617 = &v614[v607 - 8];
                v611 = *v617;
                v614 -= 4;
                if (v619 < 2)
                {
                  break;
                }

                v616 = &v615[v607];
                v620 = *&v615[4 * (v601 & 0x7FFFFFFF)] - 1;
                v615 -= 4;
                v618 = v612;
              }

              while (v611 == v620);
              v613 = &v614[v607 - 4];
            }
          }

          *v613 = v611 + 1;
          v599 += v600[v612];
          v1167 = v599;
        }

        if (v605 == v606)
        {
          goto LABEL_790;
        }

        v621 = (v598 + 4 * v610);
        v622 = &v621[v605];
        v623 = &v621[v606];
        do
        {
          v624 = (v623 - v621) / v595;
          if (v624 < 2)
          {
            break;
          }

          if (v624 == 3)
          {
            v651 = v621[v595];
            v652 = *v621;
            v653 = v623[-v595];
            if (v651 >= *v621)
            {
              if (v653 < v651)
              {
                v621[v595] = v653;
                v623[-v595] = v651;
                v663 = v621[v595];
                v664 = *v621;
                if (v663 < *v621)
                {
                  *v621 = v663;
                  v621[v595] = v664;
                }
              }

              break;
            }

            if (v653 >= v651)
            {
              *v621 = v651;
              v621[v595] = v652;
              v665 = v623[-v595];
              if (v665 >= v652)
              {
                break;
              }

              v621[v595] = v665;
            }

            else
            {
              *v621 = v653;
            }

            v623[-v595] = v652;
            break;
          }

          if (v624 == 2)
          {
            v654 = v623[-v595];
            v655 = *v621;
            if (v654 < *v621)
            {
              *v621 = v654;
              v623[-v595] = v655;
            }

            break;
          }

          if (v624 <= 7)
          {
            v656 = &v623[-v595];
            if (v656 != v621)
            {
              v657 = &v621[v608 / 4];
              do
              {
                v658 = &v621[v595];
                if (v623 != v621 && v658 != v623)
                {
                  v659 = *v621;
                  v660 = v657;
                  v661 = *v621;
                  v662 = v621;
                  do
                  {
                    if (*v660 < v661)
                    {
                      v661 = *v660;
                      v662 = v660;
                    }

                    v660 = (v660 + v608);
                  }

                  while (v660 != v623);
                  if (v662 != v621)
                  {
                    *v621 = *v662;
                    *v662 = v659;
                  }
                }

                v657 = (v657 + v608);
                v621 += v595;
              }

              while (v658 != v656);
            }

            break;
          }

          v625 = &v621[((v624 >> 1) & 0x3FFFFFFF) * v595];
          v626 = &v623[-v595];
          v627 = *v625;
          v628 = *v621;
          v629 = *v626;
          if (*v625 >= *v621)
          {
            if (v629 >= v627)
            {
              v631 = 0;
              goto LABEL_808;
            }

            *v625 = v629;
            *v626 = v627;
            v630 = *v621;
            if (*v625 < *v621)
            {
              *v621 = *v625;
              *v625 = v630;
            }
          }

          else
          {
            if (v629 < v627)
            {
              *v621 = v629;
LABEL_805:
              *v626 = v628;
              goto LABEL_806;
            }

            *v621 = v627;
            *v625 = v628;
            if (*v626 < v628)
            {
              *v625 = *v626;
              goto LABEL_805;
            }
          }

LABEL_806:
          v631 = 1;
LABEL_808:
          v632 = *v621;
          if (*v621 < *v625)
          {
            v633 = &v623[-v595];
            goto LABEL_816;
          }

          v634 = &v623[-2 * v595];
          v633 = &v623[-v595];
          while (v634 != v621)
          {
            v635 = *v634;
            v633 -= v595;
            v634 -= v595;
            if (v635 < *v625)
            {
              *v621 = v635;
              *v633 = v632;
              if (v631)
              {
                v631 = 2;
              }

              else
              {
                v631 = 1;
              }

LABEL_816:
              v636 = &v621[v595];
              if (v636 < v633)
              {
                while (1)
                {
                  v637 = *v625;
                  while (1)
                  {
                    v638 = *v636;
                    if (*v636 >= v637)
                    {
                      break;
                    }

                    v636 = (v636 + v608);
                  }

                  do
                  {
                    v633 -= v595;
                  }

                  while (*v633 >= v637);
                  if (v636 >= v633)
                  {
                    break;
                  }

                  *v636 = *v633;
                  *v633 = v638;
                  ++v631;
                  if (v625 == v636)
                  {
                    v625 = v633;
                  }

                  v636 += v595;
                }
              }

              if (v636 != v625)
              {
                v639 = *v636;
                if (*v625 < *v636)
                {
                  *v636 = *v625;
                  *v625 = v639;
                  ++v631;
                }
              }

              if (v636 != v622)
              {
                if (v631)
                {
LABEL_830:
                  if (v636 <= v622)
                  {
                    v640 = &v636[v595];
                  }

                  else
                  {
                    v623 = v636;
                    v640 = v621;
                  }

                  goto LABEL_858;
                }

                v641 = v636;
                if (v636 <= v622)
                {
                  while (1)
                  {
                    v645 = &v641[v608 / 4];
                    if (&v641[v608 / 4] == v623)
                    {
                      break;
                    }

                    v646 = *v641;
                    v641 = (v641 + v608);
                    if (*v645 < v646)
                    {
                      goto LABEL_830;
                    }
                  }
                }

                else
                {
                  v642 = v621;
                  while (1)
                  {
                    v643 = &v642[v608 / 4];
                    if (&v642[v608 / 4] == v636)
                    {
                      break;
                    }

                    v644 = *v642;
                    v642 = (v642 + v608);
                    if (*v643 < v644)
                    {
                      goto LABEL_830;
                    }
                  }
                }
              }

              goto LABEL_790;
            }
          }

          v647 = &v621[v595];
          if (v632 >= *v626)
          {
            if (v647 == v626)
            {
              break;
            }

            v640 = &v621[2 * v595];
            while (1)
            {
              v648 = *v647;
              if (v632 < *v647)
              {
                break;
              }

              v640 = (v640 + v608);
              v647 = (v647 + v608);
              if (v647 == v626)
              {
                goto LABEL_790;
              }
            }

            *v647 = *v626;
            *v626 = v648;
          }

          else
          {
            v640 = &v621[v595];
          }

          if (v640 == v626)
          {
            break;
          }

          while (1)
          {
            v649 = *v621;
            while (1)
            {
              v650 = *v640;
              if (v649 < *v640)
              {
                break;
              }

              v640 = (v640 + v608);
            }

            do
            {
              v626 -= v595;
            }

            while (v649 < *v626);
            if (v640 >= v626)
            {
              break;
            }

            *v640 = *v626;
            *v626 = v650;
            v640 += v595;
          }

          if (v640 > v622)
          {
            break;
          }

LABEL_858:
          v621 = v640;
        }

        while (v623 != v622);
LABEL_790:
        if (v609 <= ++v597)
        {
          goto LABEL_1498;
        }
      }

    case 8:
      v1079 = *(this + 4);
      if (v1079 < 0)
      {
        v1079 += (v1[1] - *v1) >> 2;
      }

      v1080 = *(this + 5);
      v1081 = v1[6];
      v1082 = mlx::core::array::shape(this, v1079);
      v1083 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v1083, v1083[1], (v1083[1] - *v1083) >> 2);
      v1084 = &v1177[4 * v1079];
      v1085 = v1178 - (v1084 + 4);
      if (v1178 != v1084 + 4)
      {
        memmove(&v1177[4 * v1079], v1084 + 4, v1178 - (v1084 + 4));
      }

      v1178 = &v1084[v1085];
      v1086 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v1086 + 24), *(v1086 + 32), (*(v1086 + 32) - *(v1086 + 24)) >> 3);
      v1087 = v1174 + 8 * v1079;
      v1088 = v1175 - (v1087 + 8);
      if (v1175 != v1087 + 8)
      {
        memmove(v1174 + 8 * v1079, v1087 + 8, v1175 - (v1087 + 8));
      }

      v1175 = &v1087[v1088];
      v1089 = *(*(*this + 24) + 8 * v1079);
      v1090 = mlx::core::array::shape(this, v1079);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v1081 < v1082)
      {
        goto LABEL_1497;
      }

      v1091 = 0;
      v1092 = *(*this + 152);
      v1093 = (v1169 - v1168) >> 2;
      v1094 = (((v1169 - v1168) << 30) - 0x100000000) >> 32;
      v20 = __p;
      v1095 = v1170;
      v1096 = __p + 4 * v1094;
      v1097 = v1168 + 4 * v1094;
      v1098 = v1089 * ((v1090 & (v1080 >> 31)) + v1080);
      v1099 = v1089 * v1090;
      v1100 = 4 * (v1093 & 0x7FFFFFFF);
      v1101 = v1168 - 8;
      v1102 = 8 * v1089;
      v1103 = v1081 / v1082;
      while (1)
      {
        v1104 = v1167;
        if (v1093)
        {
          v1105 = *v1096;
          if (v1093 >= 2 && v1105 == *v1097 - 1)
          {
            v1106 = v20;
            v1107 = v1101;
            v1108 = (v1093 & 0x7FFFFFFF) - 1;
            v1109 = v1167;
            v1110 = v1097;
            v1111 = v1096;
            v1112 = v1094;
            do
            {
              v1113 = v1108;
              *v1111 = 0;
              v1109 -= v1095[v1112] * (*v1110 - 1);
              v1167 = v1109;
              --v1108;
              v1111 = &v1106[v1100 - 8];
              v1105 = *v1111;
              v1106 -= 4;
              if (v1113 < 2)
              {
                break;
              }

              v1110 = &v1107[v1100];
              v1114 = *&v1107[4 * (v1093 & 0x7FFFFFFF)] - 1;
              v1107 -= 4;
              v1112 = v1108;
            }

            while (v1105 == v1114);
            v1115 = &v1106[v1100 - 4];
          }

          else
          {
            v1109 = v1167;
            v1108 = v1094;
            v1115 = v1096;
          }

          *v1115 = v1105 + 1;
          v1167 = v1095[v1108] + v1109;
        }

        if (v1098 == v1099)
        {
          goto LABEL_1520;
        }

        v1116 = (v1092 + 8 * v1104);
        v1117 = &v1116[v1098];
        v1118 = &v1116[v1099];
        do
        {
          v1119 = (v1118 - v1116) / v1089;
          if (v1119 < 2)
          {
            break;
          }

          if (v1119 == 3)
          {
            v1146 = v1116[v1089];
            v1147 = *v1116;
            v1148 = v1118[-v1089];
            if (v1146 >= *v1116)
            {
              if (v1148 < v1146)
              {
                v1116[v1089] = v1148;
                v1118[-v1089] = v1146;
                v1158 = v1116[v1089];
                v1159 = *v1116;
                if (v1158 < *v1116)
                {
                  *v1116 = v1158;
                  v1116[v1089] = v1159;
                }
              }

              break;
            }

            if (v1148 >= v1146)
            {
              *v1116 = v1146;
              v1116[v1089] = v1147;
              v1160 = v1118[-v1089];
              if (v1160 >= v1147)
              {
                break;
              }

              v1116[v1089] = v1160;
            }

            else
            {
              *v1116 = v1148;
            }

            v1118[-v1089] = v1147;
            break;
          }

          if (v1119 == 2)
          {
            v1149 = v1118[-v1089];
            v1150 = *v1116;
            if (v1149 < *v1116)
            {
              *v1116 = v1149;
              v1118[-v1089] = v1150;
            }

            break;
          }

          if (v1119 <= 7)
          {
            v1151 = &v1118[-v1089];
            if (v1151 != v1116)
            {
              v1152 = &v1116[v1102 / 8];
              do
              {
                v1153 = &v1116[v1089];
                if (v1118 != v1116 && v1153 != v1118)
                {
                  v1154 = *v1116;
                  v1155 = v1152;
                  v1156 = *v1116;
                  v1157 = v1116;
                  do
                  {
                    if (*v1155 < v1156)
                    {
                      v1156 = *v1155;
                      v1157 = v1155;
                    }

                    v1155 = (v1155 + v1102);
                  }

                  while (v1155 != v1118);
                  if (v1157 != v1116)
                  {
                    *v1116 = *v1157;
                    *v1157 = v1154;
                  }
                }

                v1152 = (v1152 + v1102);
                v1116 += v1089;
              }

              while (v1153 != v1151);
            }

            break;
          }

          v1120 = &v1116[((v1119 >> 1) & 0x3FFFFFFF) * v1089];
          v1121 = &v1118[-v1089];
          v1122 = *v1120;
          v1123 = *v1116;
          v1124 = *v1121;
          if (*v1120 >= *v1116)
          {
            if (v1124 >= v1122)
            {
              v1126 = 0;
              goto LABEL_1538;
            }

            *v1120 = v1124;
            *v1121 = v1122;
            v1125 = *v1116;
            if (*v1120 < *v1116)
            {
              *v1116 = *v1120;
              *v1120 = v1125;
            }
          }

          else
          {
            if (v1124 < v1122)
            {
              *v1116 = v1124;
LABEL_1535:
              *v1121 = v1123;
              goto LABEL_1536;
            }

            *v1116 = v1122;
            *v1120 = v1123;
            if (*v1121 < v1123)
            {
              *v1120 = *v1121;
              goto LABEL_1535;
            }
          }

LABEL_1536:
          v1126 = 1;
LABEL_1538:
          v1127 = *v1116;
          if (*v1116 < *v1120)
          {
            v1128 = &v1118[-v1089];
            goto LABEL_1546;
          }

          v1129 = &v1118[-2 * v1089];
          v1128 = &v1118[-v1089];
          while (v1129 != v1116)
          {
            v1130 = *v1129;
            v1128 -= v1089;
            v1129 -= v1089;
            if (v1130 < *v1120)
            {
              *v1116 = v1130;
              *v1128 = v1127;
              if (v1126)
              {
                v1126 = 2;
              }

              else
              {
                v1126 = 1;
              }

LABEL_1546:
              v1131 = &v1116[v1089];
              if (v1131 < v1128)
              {
                while (1)
                {
                  v1132 = *v1120;
                  while (1)
                  {
                    v1133 = *v1131;
                    if (*v1131 >= v1132)
                    {
                      break;
                    }

                    v1131 = (v1131 + v1102);
                  }

                  do
                  {
                    v1128 -= v1089;
                  }

                  while (*v1128 >= v1132);
                  if (v1131 >= v1128)
                  {
                    break;
                  }

                  *v1131 = *v1128;
                  *v1128 = v1133;
                  ++v1126;
                  if (v1120 == v1131)
                  {
                    v1120 = v1128;
                  }

                  v1131 += v1089;
                }
              }

              if (v1131 != v1120)
              {
                v1134 = *v1131;
                if (*v1120 < *v1131)
                {
                  *v1131 = *v1120;
                  *v1120 = v1134;
                  ++v1126;
                }
              }

              if (v1131 != v1117)
              {
                if (v1126)
                {
LABEL_1560:
                  if (v1131 <= v1117)
                  {
                    v1135 = &v1131[v1089];
                  }

                  else
                  {
                    v1118 = v1131;
                    v1135 = v1116;
                  }

                  goto LABEL_1588;
                }

                v1136 = v1131;
                if (v1131 <= v1117)
                {
                  while (1)
                  {
                    v1140 = &v1136[v1102 / 8];
                    if (&v1136[v1102 / 8] == v1118)
                    {
                      break;
                    }

                    v1141 = *v1136;
                    v1136 = (v1136 + v1102);
                    if (*v1140 < v1141)
                    {
                      goto LABEL_1560;
                    }
                  }
                }

                else
                {
                  v1137 = v1116;
                  while (1)
                  {
                    v1138 = &v1137[v1102 / 8];
                    if (&v1137[v1102 / 8] == v1131)
                    {
                      break;
                    }

                    v1139 = *v1137;
                    v1137 = (v1137 + v1102);
                    if (*v1138 < v1139)
                    {
                      goto LABEL_1560;
                    }
                  }
                }
              }

              goto LABEL_1520;
            }
          }

          v1142 = &v1116[v1089];
          if (v1127 >= *v1121)
          {
            if (v1142 == v1121)
            {
              break;
            }

            v1135 = &v1116[2 * v1089];
            while (1)
            {
              v1143 = *v1142;
              if (v1127 < *v1142)
              {
                break;
              }

              v1135 = (v1135 + v1102);
              v1142 = (v1142 + v1102);
              if (v1142 == v1121)
              {
                goto LABEL_1520;
              }
            }

            *v1142 = *v1121;
            *v1121 = v1143;
          }

          else
          {
            v1135 = &v1116[v1089];
          }

          if (v1135 == v1121)
          {
            break;
          }

          while (1)
          {
            v1144 = *v1116;
            while (1)
            {
              v1145 = *v1135;
              if (v1144 < *v1135)
              {
                break;
              }

              v1135 = (v1135 + v1102);
            }

            do
            {
              v1121 -= v1089;
            }

            while (v1144 < *v1121);
            if (v1135 >= v1121)
            {
              break;
            }

            *v1135 = *v1121;
            *v1121 = v1145;
            v1135 += v1089;
          }

          if (v1135 > v1117)
          {
            break;
          }

LABEL_1588:
          v1116 = v1135;
        }

        while (v1118 != v1117);
LABEL_1520:
        if (v1103 <= ++v1091)
        {
          goto LABEL_1498;
        }
      }

    case 9:
      v340 = *(this + 4);
      if (v340 < 0)
      {
        v340 += (v1[1] - *v1) >> 2;
      }

      v341 = *(this + 5);
      v342 = v1[6];
      v343 = mlx::core::array::shape(this, v340);
      v344 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v344, v344[1], (v344[1] - *v344) >> 2);
      v345 = &v1177[4 * v340];
      v346 = v1178 - (v345 + 4);
      if (v1178 != v345 + 4)
      {
        memmove(&v1177[4 * v340], v345 + 4, v1178 - (v345 + 4));
      }

      v1178 = &v345[v346];
      v347 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v347 + 24), *(v347 + 32), (*(v347 + 32) - *(v347 + 24)) >> 3);
      v348 = v1174 + 8 * v340;
      v349 = v1175 - (v348 + 8);
      if (v1175 != v348 + 8)
      {
        memmove(v1174 + 8 * v340, v348 + 8, v1175 - (v348 + 8));
      }

      v1175 = &v348[v349];
      v350 = *(*(*this + 24) + 8 * v340);
      v351 = mlx::core::array::shape(this, v340);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v342 < v343)
      {
        goto LABEL_1497;
      }

      v352 = 0;
      v353 = *(*this + 152);
      v354 = v1167;
      v355 = v1170;
      v356 = (v1169 - v1168) >> 2;
      v20 = __p;
      v357 = (((v1169 - v1168) << 30) - 0x100000000) >> 32;
      v358 = __p + 4 * v357;
      v359 = v1168 + 4 * v357;
      v360 = v350 * ((v351 & (v341 >> 31)) + v341);
      v361 = v350 * v351;
      v362 = 4 * (v356 & 0x7FFFFFFF);
      v363 = v1168 - 8;
      v364 = 2 * v350;
      v365 = v342 / v343;
      while (1)
      {
        v366 = v354;
        if (v356)
        {
          v367 = *v358;
          if (v356 < 2)
          {
            v368 = v357;
            v369 = v358;
          }

          else
          {
            v368 = v357;
            v369 = v358;
            if (v367 == *v359 - 1)
            {
              v370 = v20;
              v371 = v363;
              v368 = (v356 & 0x7FFFFFFF) - 1;
              v372 = v359;
              v373 = v358;
              v374 = v357;
              do
              {
                v375 = v368;
                *v373 = 0;
                v354 -= v355[v374] * (*v372 - 1);
                v1167 = v354;
                --v368;
                v373 = &v370[v362 - 8];
                v367 = *v373;
                v370 -= 4;
                if (v375 < 2)
                {
                  break;
                }

                v372 = &v371[v362];
                v376 = *&v371[4 * (v356 & 0x7FFFFFFF)] - 1;
                v371 -= 4;
                v374 = v368;
              }

              while (v367 == v376);
              v369 = &v370[v362 - 4];
            }
          }

          *v369 = v367 + 1;
          v354 += v355[v368];
          v1167 = v354;
        }

        if (v360 == v361)
        {
          goto LABEL_458;
        }

        v377 = (v353 + 2 * v366);
        v378 = &v377[v360];
        v379 = &v377[v361];
        do
        {
          v380 = (v379 - v377) / v350;
          if (v380 < 2)
          {
            break;
          }

          if (v380 == 3)
          {
            v403 = v377[v350];
            v404 = *v377;
            v405 = v379[-v350];
            if (v403 >= *v377)
            {
              if (v405 < v403)
              {
                v377[v350] = v405;
                v379[-v350] = v403;
                v415 = v377[v350];
                v416 = *v377;
                if (v415 < *v377)
                {
                  *v377 = v415;
                  v377[v350] = v416;
                }
              }

              break;
            }

            if (v405 >= v403)
            {
              *v377 = v403;
              v377[v350] = v404;
              v417 = v379[-v350];
              if (v417 >= v404)
              {
                break;
              }

              v377[v350] = v417;
            }

            else
            {
              *v377 = v405;
            }

            v379[-v350] = v404;
            break;
          }

          if (v380 == 2)
          {
            v406 = v379[-v350];
            v407 = *v377;
            if (v406 < *v377)
            {
              *v377 = v406;
              v379[-v350] = v407;
            }

            break;
          }

          if (v380 <= 7)
          {
            v408 = &v379[-v350];
            if (v408 != v377)
            {
              v409 = &v377[v364 / 2];
              do
              {
                v410 = &v377[v350];
                if (v379 != v377 && v410 != v379)
                {
                  v411 = *v377;
                  v412 = v409;
                  v413 = *v377;
                  v414 = v377;
                  do
                  {
                    if (*v412 < v413)
                    {
                      v413 = *v412;
                      v414 = v412;
                    }

                    v412 = (v412 + v364);
                  }

                  while (v412 != v379);
                  if (v414 != v377)
                  {
                    *v377 = *v414;
                    *v414 = v411;
                  }
                }

                v409 = (v409 + v364);
                v377 += v350;
              }

              while (v410 != v408);
            }

            break;
          }

          v381 = &v377[((v380 >> 1) & 0x3FFFFFFF) * v350];
          v382 = &v379[-v350];
          v383 = *v381;
          v384 = *v377;
          v385 = *v382;
          if (*v381 >= *v377)
          {
            if (v385 >= v383)
            {
              v387 = 0;
              goto LABEL_476;
            }

            *v381 = v385;
            *v382 = v383;
            v386 = *v377;
            if (*v381 < *v377)
            {
              *v377 = *v381;
              *v381 = v386;
            }
          }

          else
          {
            if (v385 < v383)
            {
              *v377 = v385;
LABEL_473:
              *v382 = v384;
              goto LABEL_474;
            }

            *v377 = v383;
            *v381 = v384;
            if (*v382 < v384)
            {
              *v381 = *v382;
              goto LABEL_473;
            }
          }

LABEL_474:
          v387 = 1;
LABEL_476:
          v388 = *v377;
          if (*v377 < *v381)
          {
            v389 = &v379[-v350];
            goto LABEL_484;
          }

          v390 = &v379[-2 * v350];
          v389 = &v379[-v350];
          while (v390 != v377)
          {
            v391 = *v390;
            v389 -= v350;
            v390 -= v350;
            if (v391 < *v381)
            {
              *v377 = v391;
              *v389 = v388;
              if (v387)
              {
                v387 = 2;
              }

              else
              {
                v387 = 1;
              }

LABEL_484:
              v392 = &v377[v350];
              if (v392 < v389)
              {
                while (1)
                {
                  v393 = *v381;
                  while (1)
                  {
                    v394 = *v392;
                    if (*v392 >= v393)
                    {
                      break;
                    }

                    v392 = (v392 + v364);
                  }

                  do
                  {
                    v389 -= v350;
                  }

                  while (*v389 >= v393);
                  if (v392 >= v389)
                  {
                    break;
                  }

                  *v392 = *v389;
                  *v389 = v394;
                  ++v387;
                  if (v381 == v392)
                  {
                    v381 = v389;
                  }

                  v392 += v350;
                }
              }

              if (v392 != v381)
              {
                v395 = *v392;
                if (*v381 < *v392)
                {
                  *v392 = *v381;
                  *v381 = v395;
                  ++v387;
                }
              }

              if (v392 != v378)
              {
                if (v387)
                {
LABEL_498:
                  if (v392 <= v378)
                  {
                    v396 = &v392[v350];
                  }

                  else
                  {
                    v379 = v392;
                    v396 = v377;
                  }

                  goto LABEL_527;
                }

                v397 = v392;
                if (v392 <= v378)
                {
                  while (&v397[v364 / 2] != v379)
                  {
                    v146 = v397[v350] < *v397;
                    v397 = (v397 + v364);
                    if (v146)
                    {
                      goto LABEL_498;
                    }
                  }
                }

                else
                {
                  v398 = v377;
                  while (&v398[v364 / 2] != v392)
                  {
                    v146 = v398[v350] < *v398;
                    v398 = (v398 + v364);
                    if (v146)
                    {
                      goto LABEL_498;
                    }
                  }
                }
              }

              goto LABEL_458;
            }
          }

          v399 = &v377[v350];
          if (v388 >= *v382)
          {
            if (v399 == v382)
            {
              break;
            }

            v396 = &v377[2 * v350];
            while (1)
            {
              v400 = *v399;
              if (v388 < *v399)
              {
                break;
              }

              v396 = (v396 + v364);
              v399 = (v399 + v364);
              if (v399 == v382)
              {
                goto LABEL_458;
              }
            }

            *v399 = *v382;
            *v382 = v400;
          }

          else
          {
            v396 = &v377[v350];
          }

          if (v396 == v382)
          {
            break;
          }

          while (1)
          {
            v401 = *v377;
            while (1)
            {
              v402 = *v396;
              if (v401 < *v396)
              {
                break;
              }

              v396 = (v396 + v364);
            }

            do
            {
              v382 -= v350;
            }

            while (v401 < *v382);
            if (v396 >= v382)
            {
              break;
            }

            *v396 = *v382;
            *v382 = v402;
            v396 += v350;
          }

          if (v396 > v378)
          {
            break;
          }

LABEL_527:
          v377 = v396;
        }

        while (v379 != v378);
LABEL_458:
        if (v365 <= ++v352)
        {
          goto LABEL_1498;
        }
      }

    case 0xA:
      v1001 = *(this + 4);
      if (v1001 < 0)
      {
        v1001 += (v1[1] - *v1) >> 2;
      }

      v1002 = *(this + 5);
      v1003 = v1[6];
      v1004 = mlx::core::array::shape(this, v1001);
      v1005 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v1005, v1005[1], (v1005[1] - *v1005) >> 2);
      v1006 = &v1177[4 * v1001];
      v1007 = v1178 - (v1006 + 4);
      if (v1178 != v1006 + 4)
      {
        memmove(&v1177[4 * v1001], v1006 + 4, v1178 - (v1006 + 4));
      }

      v1178 = &v1006[v1007];
      v1008 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v1008 + 24), *(v1008 + 32), (*(v1008 + 32) - *(v1008 + 24)) >> 3);
      v1009 = v1174 + 8 * v1001;
      v1010 = v1175 - (v1009 + 8);
      if (v1175 != v1009 + 8)
      {
        memmove(v1174 + 8 * v1001, v1009 + 8, v1175 - (v1009 + 8));
      }

      v1175 = &v1009[v1010];
      v1011 = *(*(*this + 24) + 8 * v1001);
      v1012 = mlx::core::array::shape(this, v1001);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v1003 < v1004)
      {
        goto LABEL_1497;
      }

      v1013 = 0;
      v1014 = *(*this + 152);
      v1015 = v1167;
      v1016 = v1170;
      v1017 = (v1169 - v1168) >> 2;
      v20 = __p;
      v1018 = (((v1169 - v1168) << 30) - 0x100000000) >> 32;
      v1019 = __p + 4 * v1018;
      v1020 = v1168 + 4 * v1018;
      v1021 = v1011 * ((v1012 & (v1002 >> 31)) + v1002);
      v1022 = v1011 * v1012;
      v1023 = 4 * (v1017 & 0x7FFFFFFF);
      v1024 = v1168 - 8;
      v1025 = 4 * v1011;
      v1026 = v1003 / v1004;
      while (1)
      {
        v1027 = v1015;
        if (v1017)
        {
          v1028 = *v1019;
          if (v1017 < 2)
          {
            v1029 = v1015;
            v1030 = v1018;
            v1031 = v1019;
          }

          else
          {
            v1029 = v1015;
            v1030 = v1018;
            v1031 = v1019;
            if (v1028 == *v1020 - 1)
            {
              v1032 = v20;
              v1033 = v1024;
              v1030 = (v1017 & 0x7FFFFFFF) - 1;
              v1029 = v1027;
              v1034 = v1020;
              v1035 = v1019;
              v1036 = v1018;
              do
              {
                v1037 = v1030;
                *v1035 = 0;
                v1029 -= v1016[v1036] * (*v1034 - 1);
                v1167 = v1029;
                --v1030;
                v1035 = &v1032[v1023 - 8];
                v1028 = *v1035;
                v1032 -= 4;
                if (v1037 < 2)
                {
                  break;
                }

                v1034 = &v1033[v1023];
                v1038 = *&v1033[4 * (v1017 & 0x7FFFFFFF)] - 1;
                v1033 -= 4;
                v1036 = v1030;
              }

              while (v1028 == v1038);
              v1031 = &v1032[v1023 - 4];
            }
          }

          *v1031 = v1028 + 1;
          v1015 = v1016[v1030] + v1029;
          v1167 = v1015;
        }

        if (v1021 == v1022)
        {
          goto LABEL_1396;
        }

        v1039 = (v1014 + 4 * v1027);
        v1040 = &v1039[v1021];
        v1041 = &v1039[v1022];
        do
        {
          v1042 = (v1041 - v1039) / v1011;
          if (v1042 < 2)
          {
            break;
          }

          if (v1042 == 3)
          {
            v1064 = v1039[v1011];
            v1065 = *v1039;
            v1066 = v1041[-v1011];
            if (v1064 >= *v1039)
            {
              if (v1066 < v1064)
              {
                v1039[v1011] = v1066;
                v1041[-v1011] = v1064;
                v1076 = v1039[v1011];
                v1077 = *v1039;
                if (v1076 < *v1039)
                {
                  *v1039 = v1076;
                  v1039[v1011] = v1077;
                }
              }

              break;
            }

            if (v1066 >= v1064)
            {
              *v1039 = v1064;
              v1039[v1011] = v1065;
              v1078 = v1041[-v1011];
              if (v1078 >= v1065)
              {
                break;
              }

              v1039[v1011] = v1078;
            }

            else
            {
              *v1039 = v1066;
            }

            v1041[-v1011] = v1065;
            break;
          }

          if (v1042 == 2)
          {
            v1067 = v1041[-v1011];
            v1068 = *v1039;
            if (v1067 < *v1039)
            {
              *v1039 = v1067;
              v1041[-v1011] = v1068;
            }

            break;
          }

          if (v1042 <= 7)
          {
            v1069 = &v1041[-v1011];
            if (v1069 != v1039)
            {
              v1070 = &v1039[v1025 / 4];
              do
              {
                v1071 = &v1039[v1011];
                if (v1041 != v1039 && v1071 != v1041)
                {
                  v1072 = *v1039;
                  v1073 = v1070;
                  v1074 = *v1039;
                  v1075 = v1039;
                  do
                  {
                    if (*v1073 < v1074)
                    {
                      v1074 = *v1073;
                      v1075 = v1073;
                    }

                    v1073 = (v1073 + v1025);
                  }

                  while (v1073 != v1041);
                  if (v1075 != v1039)
                  {
                    *v1039 = *v1075;
                    *v1075 = v1072;
                  }
                }

                v1070 = (v1070 + v1025);
                v1039 += v1011;
              }

              while (v1071 != v1069);
            }

            break;
          }

          v1043 = &v1039[((v1042 >> 1) & 0x3FFFFFFF) * v1011];
          v1044 = &v1041[-v1011];
          v1045 = *v1043;
          v1046 = *v1039;
          v1047 = *v1044;
          if (*v1043 >= *v1039)
          {
            if (v1047 >= v1045)
            {
              v1049 = 0;
              goto LABEL_1414;
            }

            *v1043 = v1047;
            *v1044 = v1045;
            v1048 = *v1039;
            if (*v1043 < *v1039)
            {
              *v1039 = *v1043;
              *v1043 = v1048;
            }
          }

          else
          {
            if (v1047 < v1045)
            {
              *v1039 = v1047;
LABEL_1411:
              *v1044 = v1046;
              goto LABEL_1412;
            }

            *v1039 = v1045;
            *v1043 = v1046;
            if (*v1044 < v1046)
            {
              *v1043 = *v1044;
              goto LABEL_1411;
            }
          }

LABEL_1412:
          v1049 = 1;
LABEL_1414:
          v1050 = *v1039;
          v1051 = &v1039[v1011];
          if (*v1039 < *v1043)
          {
            v1052 = &v1041[-v1011];
            goto LABEL_1422;
          }

          v1053 = &v1041[-2 * v1011];
          v1052 = &v1041[-v1011];
          while (v1053 != v1039)
          {
            v1054 = *v1053;
            v1052 -= v1011;
            v1053 -= v1011;
            if (v1054 < *v1043)
            {
              *v1039 = v1054;
              *v1052 = v1050;
              if (v1049)
              {
                v1049 = 2;
              }

              else
              {
                v1049 = 1;
              }

LABEL_1422:
              if (v1051 < v1052)
              {
                while (1)
                {
                  v1055 = *v1043;
                  while (1)
                  {
                    v1056 = *v1051;
                    if (*v1051 >= v1055)
                    {
                      break;
                    }

                    v1051 = (v1051 + v1025);
                  }

                  do
                  {
                    v1052 -= v1011;
                  }

                  while (*v1052 >= v1055);
                  if (v1051 >= v1052)
                  {
                    break;
                  }

                  *v1051 = *v1052;
                  *v1052 = v1056;
                  ++v1049;
                  if (v1043 == v1051)
                  {
                    v1043 = v1052;
                  }

                  v1051 += v1011;
                }
              }

              if (v1051 != v1043)
              {
                v1057 = *v1051;
                if (*v1043 < *v1051)
                {
                  *v1051 = *v1043;
                  *v1043 = v1057;
                  ++v1049;
                }
              }

              if (v1051 != v1040)
              {
                if (v1049)
                {
LABEL_1436:
                  if (v1051 <= v1040)
                  {
                    v1058 = &v1051[v1011];
                  }

                  else
                  {
                    v1041 = v1051;
                    v1058 = v1039;
                  }

                  goto LABEL_1465;
                }

                v1059 = v1051;
                if (v1051 <= v1040)
                {
                  while (&v1059[v1025 / 4] != v1041)
                  {
                    v146 = v1059[v1011] < *v1059;
                    v1059 = (v1059 + v1025);
                    if (v146)
                    {
                      goto LABEL_1436;
                    }
                  }
                }

                else
                {
                  v1060 = v1039;
                  while (&v1060[v1025 / 4] != v1051)
                  {
                    v146 = v1060[v1011] < *v1060;
                    v1060 = (v1060 + v1025);
                    if (v146)
                    {
                      goto LABEL_1436;
                    }
                  }
                }
              }

              goto LABEL_1396;
            }
          }

          if (v1050 >= *v1044)
          {
            if (v1051 == v1044)
            {
              break;
            }

            v1058 = &v1039[2 * v1011];
            while (1)
            {
              v1061 = *v1051;
              if (v1050 < *v1051)
              {
                break;
              }

              v1058 = (v1058 + v1025);
              v1051 = (v1051 + v1025);
              if (v1051 == v1044)
              {
                goto LABEL_1396;
              }
            }

            *v1051 = *v1044;
            *v1044 = v1061;
          }

          else
          {
            v1058 = &v1039[v1011];
          }

          if (v1058 == v1044)
          {
            break;
          }

          while (1)
          {
            v1062 = *v1039;
            while (1)
            {
              v1063 = *v1058;
              if (v1062 < *v1058)
              {
                break;
              }

              v1058 = (v1058 + v1025);
            }

            do
            {
              v1044 -= v1011;
            }

            while (v1062 < *v1044);
            if (v1058 >= v1044)
            {
              break;
            }

            *v1058 = *v1044;
            *v1044 = v1063;
            v1058 += v1011;
          }

          if (v1058 > v1040)
          {
            break;
          }

LABEL_1465:
          v1039 = v1058;
        }

        while (v1041 != v1040);
LABEL_1396:
        if (v1026 <= ++v1013)
        {
          goto LABEL_1498;
        }
      }

    case 0xB:
      v86 = *(this + 4);
      if (v86 < 0)
      {
        v86 += (v1[1] - *v1) >> 2;
      }

      v87 = *(this + 5);
      v88 = v1[6];
      v89 = mlx::core::array::shape(this, v86);
      v90 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v90, v90[1], (v90[1] - *v90) >> 2);
      v91 = &v1177[4 * v86];
      v92 = v1178 - (v91 + 4);
      if (v1178 != v91 + 4)
      {
        memmove(&v1177[4 * v86], v91 + 4, v1178 - (v91 + 4));
      }

      v1178 = &v91[v92];
      v93 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v93 + 24), *(v93 + 32), (*(v93 + 32) - *(v93 + 24)) >> 3);
      v94 = v1174 + 8 * v86;
      v95 = v1175 - (v94 + 8);
      if (v1175 != v94 + 8)
      {
        memmove(v1174 + 8 * v86, v94 + 8, v1175 - (v94 + 8));
      }

      v1175 = &v94[v95];
      v96 = *(*(*this + 24) + 8 * v86);
      v97 = mlx::core::array::shape(this, v86);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v88 < v89)
      {
        goto LABEL_1497;
      }

      v98 = 0;
      v99 = *(*this + 152);
      v100 = v1167;
      v101 = v1170;
      v102 = (v1169 - v1168) >> 2;
      v20 = __p;
      v103 = (((v1169 - v1168) << 30) - 0x100000000) >> 32;
      v104 = __p + 4 * v103;
      v105 = v1168 + 4 * v103;
      v106 = v96 * ((v97 & (v87 >> 31)) + v87);
      v107 = v96 * v97;
      v108 = 4 * (v102 & 0x7FFFFFFF);
      v109 = v1168 - 8;
      v110 = 8 * v96;
      v111 = v88 / v89;
      while (1)
      {
        v112 = v100;
        if (v102)
        {
          v113 = *v104;
          if (v102 < 2)
          {
            v114 = v100;
            v115 = v103;
            v116 = v104;
          }

          else
          {
            v114 = v100;
            v115 = v103;
            v116 = v104;
            if (v113 == *v105 - 1)
            {
              v117 = v20;
              v118 = v109;
              v115 = (v102 & 0x7FFFFFFF) - 1;
              v114 = v112;
              v119 = v105;
              v120 = v104;
              v121 = v103;
              do
              {
                v122 = v115;
                *v120 = 0;
                v114 -= v101[v121] * (*v119 - 1);
                v1167 = v114;
                --v115;
                v120 = &v117[v108 - 8];
                v113 = *v120;
                v117 -= 4;
                if (v122 < 2)
                {
                  break;
                }

                v119 = &v118[v108];
                v123 = *&v118[4 * (v102 & 0x7FFFFFFF)] - 1;
                v118 -= 4;
                v121 = v115;
              }

              while (v113 == v123);
              v116 = &v117[v108 - 4];
            }
          }

          *v116 = v113 + 1;
          v100 = v101[v115] + v114;
          v1167 = v100;
        }

        if (v106 == v107)
        {
          goto LABEL_124;
        }

        v124 = (v99 + 8 * v112);
        v125 = &v124[v106];
        v126 = &v124[v107];
        do
        {
          v127 = (v126 - v124) / v96;
          if (v127 < 2)
          {
            break;
          }

          if (v127 == 3)
          {
            v150 = v124[v96];
            v151 = *v124;
            v152 = v126[-v96];
            if (v150 >= *v124)
            {
              if (v152 < v150)
              {
                v124[v96] = v152;
                v126[-v96] = v150;
                v162 = v124[v96];
                v163 = *v124;
                if (v162 < *v124)
                {
                  *v124 = v162;
                  v124[v96] = v163;
                }
              }

              break;
            }

            if (v152 >= v150)
            {
              *v124 = v150;
              v124[v96] = v151;
              v164 = v126[-v96];
              if (v164 >= v151)
              {
                break;
              }

              v124[v96] = v164;
            }

            else
            {
              *v124 = v152;
            }

            v126[-v96] = v151;
            break;
          }

          if (v127 == 2)
          {
            v153 = v126[-v96];
            v154 = *v124;
            if (v153 < *v124)
            {
              *v124 = v153;
              v126[-v96] = v154;
            }

            break;
          }

          if (v127 <= 7)
          {
            v155 = &v126[-v96];
            if (v155 != v124)
            {
              v156 = &v124[v110 / 8];
              do
              {
                v157 = &v124[v96];
                if (v126 != v124 && v157 != v126)
                {
                  v158 = *v124;
                  v159 = v156;
                  v160 = *v124;
                  v161 = v124;
                  do
                  {
                    if (*v159 < v160)
                    {
                      v160 = *v159;
                      v161 = v159;
                    }

                    v159 = (v159 + v110);
                  }

                  while (v159 != v126);
                  if (v161 != v124)
                  {
                    *v124 = *v161;
                    *v161 = v158;
                  }
                }

                v156 = (v156 + v110);
                v124 += v96;
              }

              while (v157 != v155);
            }

            break;
          }

          v128 = &v124[((v127 >> 1) & 0x3FFFFFFF) * v96];
          v129 = &v126[-v96];
          v130 = *v128;
          v131 = *v124;
          v132 = *v129;
          if (*v128 >= *v124)
          {
            if (v132 >= v130)
            {
              v134 = 0;
              goto LABEL_142;
            }

            *v128 = v132;
            *v129 = v130;
            v133 = *v124;
            if (*v128 < *v124)
            {
              *v124 = *v128;
              *v128 = v133;
            }
          }

          else
          {
            if (v132 < v130)
            {
              *v124 = v132;
LABEL_139:
              *v129 = v131;
              goto LABEL_140;
            }

            *v124 = v130;
            *v128 = v131;
            if (*v129 < v131)
            {
              *v128 = *v129;
              goto LABEL_139;
            }
          }

LABEL_140:
          v134 = 1;
LABEL_142:
          v135 = *v124;
          v136 = &v124[v96];
          if (*v124 < *v128)
          {
            v137 = &v126[-v96];
            goto LABEL_150;
          }

          v138 = &v126[-2 * v96];
          v137 = &v126[-v96];
          while (v138 != v124)
          {
            v139 = *v138;
            v137 -= v96;
            v138 -= v96;
            if (v139 < *v128)
            {
              *v124 = v139;
              *v137 = v135;
              if (v134)
              {
                v134 = 2;
              }

              else
              {
                v134 = 1;
              }

LABEL_150:
              if (v136 < v137)
              {
                while (1)
                {
                  v140 = *v128;
                  while (1)
                  {
                    v141 = *v136;
                    if (*v136 >= v140)
                    {
                      break;
                    }

                    v136 = (v136 + v110);
                  }

                  do
                  {
                    v137 -= v96;
                  }

                  while (*v137 >= v140);
                  if (v136 >= v137)
                  {
                    break;
                  }

                  *v136 = *v137;
                  *v137 = v141;
                  ++v134;
                  if (v128 == v136)
                  {
                    v128 = v137;
                  }

                  v136 += v96;
                }
              }

              if (v136 != v128)
              {
                v142 = *v136;
                if (*v128 < *v136)
                {
                  *v136 = *v128;
                  *v128 = v142;
                  ++v134;
                }
              }

              if (v136 != v125)
              {
                if (v134)
                {
LABEL_164:
                  if (v136 <= v125)
                  {
                    v143 = &v136[v96];
                  }

                  else
                  {
                    v126 = v136;
                    v143 = v124;
                  }

                  goto LABEL_194;
                }

                v144 = v136;
                if (v136 <= v125)
                {
                  while (&v144[v110 / 8] != v126)
                  {
                    v146 = v144[v96] < *v144;
                    v144 = (v144 + v110);
                    if (v146)
                    {
                      goto LABEL_164;
                    }
                  }
                }

                else
                {
                  v145 = v124;
                  while (&v145[v110 / 8] != v136)
                  {
                    v146 = v145[v96] < *v145;
                    v145 = (v145 + v110);
                    if (v146)
                    {
                      goto LABEL_164;
                    }
                  }
                }
              }

              goto LABEL_124;
            }
          }

          if (v135 >= *v129)
          {
            if (v136 == v129)
            {
              break;
            }

            v143 = &v124[2 * v96];
            while (1)
            {
              v147 = *v136;
              if (v135 < *v136)
              {
                break;
              }

              v143 = (v143 + v110);
              v136 = (v136 + v110);
              if (v136 == v129)
              {
                goto LABEL_124;
              }
            }

            *v136 = *v129;
            *v129 = v147;
          }

          else
          {
            v143 = &v124[v96];
          }

          if (v143 == v129)
          {
            break;
          }

          while (1)
          {
            v148 = *v124;
            while (1)
            {
              v149 = *v143;
              if (v148 < *v143)
              {
                break;
              }

              v143 = (v143 + v110);
            }

            do
            {
              v129 -= v96;
            }

            while (v148 < *v129);
            if (v143 >= v129)
            {
              break;
            }

            *v143 = *v129;
            *v129 = v149;
            v143 += v96;
          }

          if (v143 > v125)
          {
            break;
          }

LABEL_194:
          v124 = v143;
        }

        while (v126 != v125);
LABEL_124:
        if (v111 <= ++v98)
        {
          goto LABEL_1498;
        }
      }

    case 0xC:
      v247 = *(this + 4);
      if (v247 < 0)
      {
        v247 += (v1[1] - *v1) >> 2;
      }

      v248 = *(this + 5);
      v249 = v1[6];
      v250 = mlx::core::array::shape(this, v247);
      v251 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v251, v251[1], (v251[1] - *v251) >> 2);
      v252 = &v1177[4 * v247];
      v253 = v1178 - (v252 + 4);
      if (v1178 != v252 + 4)
      {
        memmove(&v1177[4 * v247], v252 + 4, v1178 - (v252 + 4));
      }

      v1178 = &v252[v253];
      v254 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v254 + 24), *(v254 + 32), (*(v254 + 32) - *(v254 + 24)) >> 3);
      v255 = v1174 + 8 * v247;
      v256 = v1175 - (v255 + 8);
      if (v1175 != v255 + 8)
      {
        memmove(v1174 + 8 * v247, v255 + 8, v1175 - (v255 + 8));
      }

      v1175 = &v255[v256];
      v257 = *(*(*this + 24) + 8 * v247);
      v258 = mlx::core::array::shape(this, v247);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v249 < v250)
      {
        goto LABEL_1497;
      }

      v259 = 0;
      v260 = *(*this + 152);
      v261 = v1167;
      v262 = v1170;
      v263 = (v1169 - v1168) >> 2;
      v20 = __p;
      v264 = (((v1169 - v1168) << 30) - 0x100000000) >> 32;
      v265 = __p + 4 * v264;
      v266 = v1168 + 4 * v264;
      v267 = v257 * ((v258 & (v248 >> 31)) + v248);
      v268 = v257 * v258;
      v269 = 4 * (v263 & 0x7FFFFFFF);
      v1162 = v1168 - 8;
      v270 = 2 * v257;
      v271 = v249 / v250;
      while (1)
      {
        v272 = v261;
        if (v263)
        {
          v273 = *v265;
          if (v263 < 2)
          {
            v274 = v264;
            v275 = v265;
          }

          else
          {
            v274 = v264;
            v275 = v265;
            if (v273 == *v266 - 1)
            {
              v276 = v20;
              v277 = v1162;
              v274 = (v263 & 0x7FFFFFFF) - 1;
              v278 = v266;
              v279 = v265;
              v280 = v264;
              do
              {
                v281 = v274;
                *v279 = 0;
                v261 -= v262[v280] * (*v278 - 1);
                v1167 = v261;
                --v274;
                v279 = &v276[v269 - 8];
                v273 = *v279;
                v276 -= 4;
                if (v281 < 2)
                {
                  break;
                }

                v278 = &v277[v269];
                v282 = *&v277[4 * (v263 & 0x7FFFFFFF)] - 1;
                v277 -= 4;
                v280 = v274;
              }

              while (v273 == v282);
              v275 = &v276[v269 - 4];
            }
          }

          *v275 = v273 + 1;
          v261 += v262[v274];
          v1167 = v261;
        }

        if (v267 == v268)
        {
          goto LABEL_347;
        }

        v283 = (v260 + 2 * v272);
        v284 = &v283[v267];
        v285 = &v283[v268];
        do
        {
          v286 = (v285 - v283) / v257;
          if (v286 < 2)
          {
            break;
          }

          if (v286 == 3)
          {
            v323 = v283[v257];
            v324 = *v283;
            LODWORD(v325) = v323 << 16;
            v326 = v285[-v257];
            LODWORD(v327) = v326 << 16;
            if (COERCE_FLOAT(v323 << 16) >= COERCE_FLOAT(v324 << 16))
            {
              if (v327 < v325)
              {
                v283[v257] = v326;
                v285[-v257] = v323;
                v337 = v283[v257];
                v338 = *v283;
                if (COERCE_FLOAT(v337 << 16) < COERCE_FLOAT(v338 << 16))
                {
                  *v283 = v337;
                  v283[v257] = v338;
                }
              }

              break;
            }

            if (v327 >= v325)
            {
              *v283 = v323;
              v283[v257] = v324;
              v339 = v285[-v257];
              if (COERCE_FLOAT(v339 << 16) >= COERCE_FLOAT(v324 << 16))
              {
                break;
              }

              v283[v257] = v339;
            }

            else
            {
              *v283 = v326;
            }

            v285[-v257] = v324;
            break;
          }

          if (v286 == 2)
          {
            v328 = v285[-v257];
            v329 = *v283;
            if (COERCE_FLOAT(v328 << 16) < COERCE_FLOAT(v329 << 16))
            {
              *v283 = v328;
              v285[-v257] = v329;
            }

            break;
          }

          if (v286 <= 7)
          {
            v330 = &v285[-v257];
            if (v330 != v283)
            {
              v331 = &v283[v270 / 2];
              do
              {
                v332 = &v283[v257];
                if (v285 != v283 && v332 != v285)
                {
                  v333 = *v283;
                  v334 = v331;
                  v335 = *v283;
                  v336 = v283;
                  do
                  {
                    if (COERCE_FLOAT(*v334 << 16) < COERCE_FLOAT(v335 << 16))
                    {
                      v335 = *v334;
                      v336 = v334;
                    }

                    v334 = (v334 + v270);
                  }

                  while (v334 != v285);
                  if (v336 != v283)
                  {
                    *v283 = *v336;
                    *v336 = v333;
                  }
                }

                v331 = (v331 + v270);
                v283 += v257;
              }

              while (v332 != v330);
            }

            break;
          }

          v287 = &v283[((v286 >> 1) & 0x3FFFFFFF) * v257];
          v288 = &v285[-v257];
          v289 = *v287;
          v290 = *v283;
          LODWORD(v291) = v289 << 16;
          v292 = *v288;
          LODWORD(v293) = v292 << 16;
          if (COERCE_FLOAT(v289 << 16) >= COERCE_FLOAT(v290 << 16))
          {
            if (v293 >= v291)
            {
              v297 = 0;
              goto LABEL_365;
            }

            *v287 = v292;
            *v288 = v289;
            v294 = *v287;
            v295 = *v283;
            if (COERCE_FLOAT(v294 << 16) < COERCE_FLOAT(v295 << 16))
            {
              *v283 = v294;
              *v287 = v295;
            }
          }

          else
          {
            if (v293 < v291)
            {
              *v283 = v292;
LABEL_362:
              *v288 = v290;
              goto LABEL_363;
            }

            *v283 = v289;
            *v287 = v290;
            v296 = *v288;
            if (COERCE_FLOAT(v296 << 16) < COERCE_FLOAT(v290 << 16))
            {
              *v287 = v296;
              goto LABEL_362;
            }
          }

LABEL_363:
          v297 = 1;
LABEL_365:
          v298 = *v283;
          LODWORD(v299) = v298 << 16;
          LODWORD(v300) = *v287 << 16;
          if (COERCE_FLOAT(v298 << 16) < v300)
          {
            v301 = &v285[-v257];
            goto LABEL_373;
          }

          v302 = &v285[-2 * v257];
          v301 = &v285[-v257];
          while (v302 != v283)
          {
            v303 = *v302;
            v301 -= v257;
            v302 -= v257;
            if (COERCE_FLOAT(v303 << 16) < v300)
            {
              *v283 = v303;
              *v301 = v298;
              if (v297)
              {
                v297 = 2;
              }

              else
              {
                v297 = 1;
              }

LABEL_373:
              v304 = &v283[v257];
              if (v304 < v301)
              {
                while (1)
                {
                  LODWORD(v305) = *v287 << 16;
                  while (1)
                  {
                    v306 = *v304;
                    if (COERCE_FLOAT(v306 << 16) >= v305)
                    {
                      break;
                    }

                    v304 = (v304 + v270);
                  }

                  do
                  {
                    v301 -= v257;
                    v307 = *v301;
                  }

                  while (COERCE_FLOAT(v307 << 16) >= v305);
                  if (v304 >= v301)
                  {
                    break;
                  }

                  *v304 = v307;
                  *v301 = v306;
                  ++v297;
                  if (v287 == v304)
                  {
                    v287 = v301;
                  }

                  v304 += v257;
                }
              }

              if (v304 != v287)
              {
                v308 = *v287;
                v309 = *v304;
                if (COERCE_FLOAT(v308 << 16) < COERCE_FLOAT(v309 << 16))
                {
                  *v304 = v308;
                  *v287 = v309;
                  ++v297;
                }
              }

              if (v304 != v284)
              {
                if (v297)
                {
LABEL_387:
                  if (v304 <= v284)
                  {
                    v310 = &v304[v257];
                  }

                  else
                  {
                    v285 = v304;
                    v310 = v283;
                  }

                  goto LABEL_415;
                }

                v311 = v304;
                if (v304 <= v284)
                {
                  while (&v311[v270 / 2] != v285)
                  {
                    LODWORD(v315) = v311[v257] << 16;
                    LODWORD(v316) = *v311 << 16;
                    v311 = (v311 + v270);
                    if (v315 < v316)
                    {
                      goto LABEL_387;
                    }
                  }
                }

                else
                {
                  v312 = v283;
                  while (&v312[v270 / 2] != v304)
                  {
                    LODWORD(v313) = v312[v257] << 16;
                    LODWORD(v314) = *v312 << 16;
                    v312 = (v312 + v270);
                    if (v313 < v314)
                    {
                      goto LABEL_387;
                    }
                  }
                }
              }

              goto LABEL_347;
            }
          }

          v317 = &v283[v257];
          v318 = *v288;
          if (v299 >= COERCE_FLOAT(v318 << 16))
          {
            if (v317 == v288)
            {
              break;
            }

            v310 = &v283[2 * v257];
            while (1)
            {
              v319 = *v317;
              if (v299 < COERCE_FLOAT(v319 << 16))
              {
                break;
              }

              v310 = (v310 + v270);
              v317 = (v317 + v270);
              if (v317 == v288)
              {
                goto LABEL_347;
              }
            }

            *v317 = v318;
            *v288 = v319;
          }

          else
          {
            v310 = &v283[v257];
          }

          if (v310 == v288)
          {
            break;
          }

          while (1)
          {
            LODWORD(v320) = *v283 << 16;
            while (1)
            {
              v321 = *v310;
              if (v320 < COERCE_FLOAT(v321 << 16))
              {
                break;
              }

              v310 = (v310 + v270);
            }

            do
            {
              v288 -= v257;
              v322 = *v288;
            }

            while (v320 < COERCE_FLOAT(v322 << 16));
            if (v310 >= v288)
            {
              break;
            }

            *v310 = v322;
            *v288 = v321;
            v310 += v257;
          }

          if (v310 > v284)
          {
            break;
          }

LABEL_415:
          v283 = v310;
        }

        while (v285 != v284);
LABEL_347:
        if (v271 <= ++v259)
        {
          goto LABEL_1498;
        }
      }

    case 0xD:
      v832 = *(this + 4);
      if (v832 < 0)
      {
        v832 += (v1[1] - *v1) >> 2;
      }

      v833 = *(this + 5);
      v834 = v1[6];
      v835 = mlx::core::array::shape(this, v832);
      v836 = *this;
      v1178 = 0;
      v1179 = 0;
      v1177 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v1177, *v836, v836[1], (v836[1] - *v836) >> 2);
      v837 = &v1177[4 * v832];
      v838 = v1178 - (v837 + 4);
      if (v1178 != v837 + 4)
      {
        memmove(&v1177[4 * v832], v837 + 4, v1178 - (v837 + 4));
      }

      v1178 = &v837[v838];
      v839 = *this;
      v1175 = 0;
      v1176 = 0;
      v1174 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v1174, *(v839 + 24), *(v839 + 32), (*(v839 + 32) - *(v839 + 24)) >> 3);
      v840 = v1174 + 8 * v832;
      v841 = v1175 - (v840 + 8);
      if (v1175 != v840 + 8)
      {
        memmove(v1174 + 8 * v832, v840 + 8, v1175 - (v840 + 8));
      }

      v1175 = &v840[v841];
      v842 = *(*(*this + 24) + 8 * v832);
      v843 = mlx::core::array::shape(this, v832);
      mlx::core::ContiguousIterator::ContiguousIterator(&v1167, &v1177, &v1174, (v1178 - v1177) >> 2);
      if (v834 < v835)
      {
        goto LABEL_1497;
      }

      v844 = 0;
      v845 = *(*this + 152);
      v846 = v842 * ((v843 & (v833 >> 31)) + v833);
      v847 = v842 * v843;
      v848 = 8 * v842;
      v849 = v834 / v835;
      break;
    default:
      return;
  }

LABEL_1113:
  v850 = v1167;
  v851 = v1169 - v1168;
  v852 = (v1169 - v1168) >> 2;
  if (v852)
  {
    v853 = ((v851 << 30) - 0x100000000) >> 32;
    v854 = __p;
    v855 = v1170;
    v856 = __p + 4 * v853;
    v857 = *v856;
    v858 = v1168 + 4 * v853;
    if (v852 >= 2 && v857 == *v858 - 1)
    {
      v862 = (v851 >> 2) & 0x7FFFFFFF;
      v861 = v862 - 1;
      v863 = 4 * v862;
      v864 = v1168 - 8;
      v860 = v1167;
      do
      {
        v865 = v861;
        *v856 = 0;
        v860 -= v855[v853] * (*v858 - 1);
        v1167 = v860;
        --v861;
        v856 = &v854[v863 - 8];
        v857 = *v856;
        v854 -= 4;
        if (v865 < 2)
        {
          break;
        }

        v858 = &v864[v863];
        v866 = *&v864[4 * v862] - 1;
        v864 -= 4;
        v853 = v861;
      }

      while (v857 == v866);
      v856 = &v854[4 * v862 - 4];
    }

    else
    {
      v860 = v1167;
      v861 = ((v851 << 30) - 0x100000000) >> 32;
    }

    *v856 = v857 + 1;
    v1167 = v855[v861] + v860;
  }

  if (v846 == v847)
  {
    goto LABEL_1125;
  }

  v867 = (v845 + 8 * v850);
  v868 = &v867[2 * v846];
  v869 = &v867[2 * v847];
  while (1)
  {
    v870 = ((v869 - v867) >> 3) / v842;
    if (v870 < 2)
    {
      goto LABEL_1125;
    }

    if (v870 == 3)
    {
      v901 = &v867[2 * v842];
      v902 = &v869[-2 * v842];
      v903 = *v901;
      if (*v867 <= *v901 && (*v867 != *v901 || v867[1] <= v901[1]))
      {
        if (v903 > *v902 || v903 == *v902 && v901[1] > v902[1])
        {
          v911 = *v901;
          *v901 = *v902;
          *v902 = v911;
          if (*v867 > *v901 || *v867 == *v901 && v867[1] > v901[1])
          {
            v912 = *v867;
            *v867 = *v901;
            *v901 = v912;
          }
        }

        goto LABEL_1125;
      }

      if (v903 <= *v902 && (v903 != *v902 || v901[1] <= v902[1]))
      {
        v904 = *v867;
        *v867 = *v901;
        *v901 = v904;
        if (*v902 < *&v904 || *v902 == *&v904 && v902[1] < *(&v904 + 1))
        {
          *v901 = *v902;
          *v902 = v904;
        }

        goto LABEL_1125;
      }

LABEL_1245:
      v905 = *v867;
      *v867 = *v902;
      *v902 = v905;
LABEL_1125:
      if (v849 <= ++v844)
      {
        goto LABEL_1497;
      }

      goto LABEL_1113;
    }

    if (v870 == 2)
    {
      v902 = &v869[-2 * v842];
      if (*v867 > *v902 || *v867 == *v902 && v867[1] > v902[1])
      {
        goto LABEL_1245;
      }

      goto LABEL_1125;
    }

    v871 = &v869[-2 * v842];
    if (v870 <= 7)
    {
      if (v871 != v867)
      {
        v906 = &v867[v848 / 4];
        do
        {
          v907 = &v867[2 * v842];
          if (v869 != v867 && v907 != v869)
          {
            v908 = v906;
            v909 = v867;
            do
            {
              if (*v909 > *v908 || *v909 == *v908 && v909[1] > v908[1])
              {
                v909 = v908;
              }

              v908 = (v908 + v848);
            }

            while (v908 != v869);
            if (v909 != v867)
            {
              v910 = *v867;
              *v867 = *v909;
              *v909 = v910;
            }
          }

          v906 = (v906 + v848);
          v867 += 2 * v842;
        }

        while (v907 != v871);
      }

      goto LABEL_1125;
    }

    v872 = &v867[2 * ((v870 >> 1) & 0x3FFFFFFF) * v842];
    v873 = *v872;
    if (*v867 > *v872 || *v867 == *v872 && v867[1] > v872[1])
    {
      if (v873 > *v871 || v873 == *v871 && v872[1] > v871[1])
      {
        v874 = *v867;
        *v867 = *v871;
      }

      else
      {
        v874 = *v867;
        *v867 = *v872;
        *v872 = v874;
        if (*v871 >= *&v874 && (*v871 != *&v874 || v871[1] >= *(&v874 + 1)))
        {
          goto LABEL_1151;
        }

        *v872 = *v871;
      }

      *v871 = v874;
    }

    else
    {
      if (v873 <= *v871 && (v873 != *v871 || v872[1] <= v871[1]))
      {
        v877 = 0;
        goto LABEL_1152;
      }

      v875 = *v872;
      *v872 = *v871;
      *v871 = v875;
      if (*v867 > *v872 || *v867 == *v872 && v867[1] > v872[1])
      {
        v876 = *v867;
        *v867 = *v872;
        *v872 = v876;
      }
    }

LABEL_1151:
    v877 = 1;
LABEL_1152:
    v878 = *v872;
    v879 = *v867;
    if (*v872 > *v867 || *v872 == *v867 && v872[1] > v867[1])
    {
      v880 = &v869[-2 * v842];
LABEL_1156:
      v881 = &v867[2 * v842];
      v882 = v881;
      if (v881 < v880)
      {
        while (1)
        {
          v884 = *v872;
          while (v884 > *v882 || v884 == *v882 && v872[1] > v882[1])
          {
            v882 = (v882 + v848);
          }

          v885 = &v880[-2 * v842];
          v886 = *v885;
          if (v884 <= *v885)
          {
            v887 = &v880[-4 * v842];
            do
            {
              if (v884 == v886 && v872[1] > v885[1])
              {
                break;
              }

              v886 = *v887;
              v885 -= 2 * v842;
              v887 -= 2 * v842;
            }

            while (v884 <= v886);
          }

          if (v882 >= v885)
          {
            break;
          }

          v883 = *v882;
          *v882 = *v885;
          *v885 = v883;
          ++v877;
          if (v882 == v872)
          {
            v872 = v885;
          }

          v882 = (v882 + v848);
          v880 = v885;
        }
      }

      if (v882 != v872 && (*v882 > *v872 || *v882 == *v872 && v882[1] > v872[1]))
      {
        v888 = *v882;
        *v882 = *v872;
        *v872 = v888;
        ++v877;
      }

      if (v882 == v868)
      {
        goto LABEL_1125;
      }

      v889 = &v882[2 * v842];
      if (!v877)
      {
        if (v882 <= v868)
        {
          if (v889 == v869)
          {
            goto LABEL_1125;
          }

          v894 = *v882;
          v895 = v882;
          while (1)
          {
            v896 = v894;
            v894 = v895[2 * v842];
            if (v896 > v894 || v896 == v894 && v895[1] > v895[v848 / 4 + 1])
            {
              break;
            }

            v895 = (v895 + v848);
            if (&v895[v848 / 4] == v869)
            {
              goto LABEL_1125;
            }
          }
        }

        else
        {
          if (v881 == v882)
          {
            goto LABEL_1125;
          }

          v891 = *v867;
          v892 = v867;
          while (1)
          {
            v893 = v891;
            v891 = v892[2 * v842];
            if (v893 > v891 || v893 == v891 && v892[1] > v892[v848 / 4 + 1])
            {
              break;
            }

            v892 = (v892 + v848);
            if (&v892[v848 / 4] == v882)
            {
              goto LABEL_1125;
            }
          }
        }
      }

      if (v882 > v868)
      {
        v869 = v882;
        v889 = v867;
      }

      goto LABEL_1230;
    }

    v880 = &v871[-2 * v842];
    if (v867 != v880)
    {
      while (v878 <= *v880 && (v878 != *v880 || v872[1] <= v880[1]))
      {
        v880 -= 2 * v842;
        if (v880 == v867)
        {
          goto LABEL_1187;
        }
      }

      v897 = *v867;
      *v867 = *v880;
      *v880 = v897;
      if (v877)
      {
        v877 = 2;
      }

      else
      {
        v877 = 1;
      }

      goto LABEL_1156;
    }

LABEL_1187:
    v890 = &v867[2 * v842];
    if (*v871 > v879 || *v871 == v879 && v871[1] > v867[1])
    {
      v889 = &v867[2 * v842];
    }

    else
    {
      if (v890 == v871)
      {
        goto LABEL_1125;
      }

      v889 = &v867[4 * v842];
      while (*v890 <= v879 && (*v890 != v879 || v890[1] <= v867[1]))
      {
        v889 = (v889 + v848);
        v890 = (v890 + v848);
        if (v890 == v871)
        {
          goto LABEL_1125;
        }
      }

      v898 = *v890;
      *v890 = *v871;
      *v871 = v898;
    }

    if (v889 == v871)
    {
      goto LABEL_1125;
    }

    while (1)
    {
      v899 = *v867;
      while (*v889 <= v899 && (*v889 != v899 || v889[1] <= v867[1]))
      {
        v889 = (v889 + v848);
      }

      do
      {
        do
        {
          v871 -= 2 * v842;
        }

        while (*v871 > v899);
      }

      while (*v871 == v899 && v871[1] > v867[1]);
      if (v889 >= v871)
      {
        break;
      }

      v900 = *v889;
      *v889 = *v871;
      *v871 = v900;
      v889 += 2 * v842;
    }

    if (v889 > v868)
    {
      goto LABEL_1125;
    }

LABEL_1230:
    v867 = v889;
    if (v869 == v868)
    {
      goto LABEL_1125;
    }
  }
}

void sub_25A613C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 112);
  if (v27)
  {
    *(v25 - 104) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<std::__bind<mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C00758;
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C00758;
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286C00758;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = result[3];
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Partition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Add::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Add::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A614500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::DivMod::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array **a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::DivMod::eval_cpu();
  }

  v5 = v3[2];
  v6 = *v3;
  v7 = *(v5 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v7 == 1)
    {
      v8 = 0;
      goto LABEL_17;
    }

    if (v5[168])
    {
      v8 = 1;
      goto LABEL_17;
    }
  }

  else if (v7 == 1)
  {
    v9 = v6[168];
    if (v9)
    {
      v8 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v9 = v6[168];
LABEL_11:
  if ((v9 & 2) != 0 && (v5[168] & 2) != 0 || (v9 & 4) != 0 && (v5[168] & 4) != 0)
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

LABEL_17:
  v10 = *a3;
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), *a3, v8);
  mlx::core::set_binary_op_output_data(v3, (v3 + 2), (v10 + 16), v8);
  mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A614B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  __cxa_free_exception(v40);
  std::mutex::unlock(v39);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>(mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1 &&)::{lambda(void)#1}::~dispatch(&a27);
  mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1::~$_1(&a39);
  mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1::~$_1(&a17);
  _Unwind_Resume(a1);
}

char **mlx::core::set_binary_op_output_data(char **result, const mlx::core::array *a2, mlx::core::array *this, int a4)
{
  v7 = result;
  v45[4] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 1);
  if (!v8 || *(v8 + 8) || (v16 = *(*a2 + 144)) == 0 || *(v16 + 8) || ((*(*this + 56) ^ *(*a2 + 56)) & 0xFF00000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v17 = mlx::core::allocator::allocator(result);
    result = (*(*v17 + 16))(v17, **(*a2 + 136));
    v9 = result <= *(*this + 60) * *(*this + 48) + 0x4000;
  }

  v10 = v7[1];
  if (v10)
  {
    if (*(v10 + 1) || (v18 = *(*v7 + 18)) == 0 || *(v18 + 8) || ((*(*this + 56) ^ *(*v7 + 7)) & 0xFF00000000) != 0)
    {
      LODWORD(v10) = 0;
    }

    else
    {
      v19 = mlx::core::allocator::allocator(result);
      result = (*(*v19 + 16))(v19, **(*v7 + 17));
      LODWORD(v10) = result <= *(*this + 60) * *(*this + 48) + 0x4000;
    }
  }

  if (a4 <= 1)
  {
    if (!a4)
    {
      v27 = mlx::core::allocator::malloc(*(*this + 60));
      v28 = *v7;
      memset(__p, 0, sizeof(__p));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, *(v28 + 3), *(v28 + 4), (*(v28 + 4) - *(v28 + 3)) >> 3);
      v29 = (*v7)[168];
      v45[0] = &unk_286BE3468;
      v45[1] = mlx::core::allocator::free;
      v45[3] = v45;
      mlx::core::array::set_data(this, v27);
    }

    if (a4 != 1)
    {
      goto LABEL_42;
    }

    if (!v9)
    {
      v12 = mlx::core::allocator::malloc((*(*this + 60) * *(*a2 + 160)));
      v13 = *a2;
      v14 = *(*a2 + 160);
      memset(v39, 0, sizeof(v39));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v39, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
      v15 = *(*a2 + 168);
      v44[0] = &unk_286BE3468;
      v44[1] = mlx::core::allocator::free;
      v44[3] = v44;
      mlx::core::array::set_data(this, v12);
    }

LABEL_36:
    v30 = *MEMORY[0x277D85DE8];
    v25 = this;
    v26 = a2;
    goto LABEL_37;
  }

  if (a4 == 2)
  {
    if (!v10)
    {
      v20 = mlx::core::allocator::malloc((*(*this + 60) * *(*v7 + 20)));
      v21 = *v7;
      v22 = *(*v7 + 20);
      memset(v38, 0, sizeof(v38));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v38, *(v21 + 3), *(v21 + 4), (*(v21 + 4) - *(v21 + 3)) >> 3);
      v23 = (*v7)[168];
      v43[0] = &unk_286BE3468;
      v43[1] = mlx::core::allocator::free;
      v43[3] = v43;
      mlx::core::array::set_data(this, v20);
    }

    goto LABEL_33;
  }

  if (a4 == 3)
  {
    if (v10)
    {
      goto LABEL_33;
    }

    if (!v9)
    {
      v33 = mlx::core::allocator::malloc((*(*this + 60) * *(*v7 + 20)));
      v34 = *v7;
      v35 = *(*v7 + 20);
      memset(v37, 0, sizeof(v37));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v37, *(v34 + 3), *(v34 + 4), (*(v34 + 4) - *(v34 + 3)) >> 3);
      v36 = (*v7)[168];
      v42[0] = &unk_286BE3468;
      v42[1] = mlx::core::allocator::free;
      v42[3] = v42;
      mlx::core::array::set_data(this, v33);
    }

    goto LABEL_36;
  }

  if (a4 != 4)
  {
LABEL_42:
    v32 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (!v10 || ((*v7)[168] & 2) == 0 || *(*v7 + 6) != *(*this + 48))
  {
    if (!v9)
    {
      v11 = *this;
      goto LABEL_41;
    }

    v11 = *this;
    if ((*(*a2 + 168) & 2) == 0 || *(*a2 + 48) != *(v11 + 48))
    {
LABEL_41:
      v31 = mlx::core::allocator::malloc((*(v11 + 60) * *(v11 + 48)));
      v41[0] = &unk_286BE3468;
      v41[1] = mlx::core::allocator::free;
      v41[3] = v41;
      mlx::core::array::set_data(this, v31);
    }

    goto LABEL_36;
  }

LABEL_33:
  v24 = *MEMORY[0x277D85DE8];
  v25 = this;
  v26 = v7;
LABEL_37:

  return mlx::core::array::copy_shared_buffer(v25, v26);
}

void sub_25A6151E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](&a26);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Divide::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Divide::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A6157DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Remainder::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Remainder::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A615DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Equal::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Equal::eval_cpu();
  }

  if (*(a1 + 20) == 1)
  {
    v5 = *v3;
    v6 = v3[2];
    v7 = *(v6 + 20);
    if (*(*v3 + 20) == 1)
    {
      if (v7 == 1)
      {
        v8 = 0;
        goto LABEL_32;
      }

      if (v6[168])
      {
        v8 = 1;
        goto LABEL_32;
      }
    }

    else if (v7 == 1)
    {
      v15 = v5[168];
      if (v15)
      {
        v8 = 2;
        goto LABEL_32;
      }

      goto LABEL_18;
    }

    v15 = v5[168];
LABEL_18:
    if ((v15 & 2) != 0 && (v6[168] & 2) != 0 || (v15 & 4) != 0 && (v6[168] & 4) != 0)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

LABEL_32:
    mlx::core::set_binary_op_output_data(v3, (v3 + 2), this, v8);
    mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
    mlx::core::array::unsafe_weak_copy(v3, v17);
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *v3;
  v12 = v3[2];
  v13 = *(v12 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v13 == 1)
    {
      v14 = 0;
      goto LABEL_34;
    }

    if (v12[168])
    {
      v14 = 1;
      goto LABEL_34;
    }
  }

  else if (v13 == 1)
  {
    v16 = v11[168];
    if (v16)
    {
      v14 = 2;
      goto LABEL_34;
    }

    goto LABEL_26;
  }

  v16 = v11[168];
LABEL_26:
  if ((v16 & 2) != 0 && (v12[168] & 2) != 0 || (v16 & 4) != 0 && (v12[168] & 4) != 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = 4;
  }

LABEL_34:
  mlx::core::set_binary_op_output_data(v3, (v3 + 2), this, v14);
  mlx::core::cpu::get_command_encoder(v9, v10);
  mlx::core::array::unsafe_weak_copy(v3, v17);
}

void sub_25A6167D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Greater::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Greater::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A616E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::GreaterEqual::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::GreaterEqual::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A61749C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Less::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Less::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A617AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::LessEqual::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::LessEqual::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A6180D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::LogAddExp::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::LogAddExp::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A6186F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::LogicalAnd::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::LogicalAnd::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A618D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::LogicalOr::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::LogicalOr::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A619328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Maximum::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Maximum::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A619944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Minimum::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Minimum::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A619F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Multiply::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Multiply::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A61A57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::NotEqual::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::NotEqual::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A61AB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Power::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Power::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A61B1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Subtract::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::Subtract::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A61B7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::BitwiseBinary::eval_cpu(uint64_t result, uint64_t a2, mlx::core::array *this)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::BitwiseBinary::eval_cpu();
  }

  v4 = *(result + 20);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_88;
      }

      v11 = *(result + 8);
      v12 = *(result + 16);
      v13 = *v3;
      v14 = v3[2];
      v15 = *(v14 + 20);
      if (*(*v3 + 20) == 1)
      {
        if (v15 == 1)
        {
          v16 = 0;
          goto LABEL_87;
        }

        if (v14[168])
        {
          v16 = 1;
          goto LABEL_87;
        }
      }

      else if (v15 == 1)
      {
        v39 = v13[168];
        if (v39)
        {
          v16 = 2;
          goto LABEL_87;
        }

        goto LABEL_73;
      }

      v39 = v13[168];
LABEL_73:
      if ((v39 & 2) != 0 && (v14[168] & 2) != 0 || (v39 & 4) != 0 && (v14[168] & 4) != 0)
      {
        v16 = 3;
      }

      else
      {
        v16 = 4;
      }

LABEL_87:
      mlx::core::set_binary_op_output_data(v3, (v3 + 2), this, v16);
      mlx::core::cpu::get_command_encoder(v11, v12);
      mlx::core::array::unsafe_weak_copy(v3, v41);
    }

    v29 = *(result + 8);
    v30 = *(result + 16);
    v31 = *v3;
    v32 = v3[2];
    v33 = *(v32 + 20);
    if (*(*v3 + 20) == 1)
    {
      if (v33 == 1)
      {
        v34 = 0;
        goto LABEL_83;
      }

      if (v32[168])
      {
        v34 = 1;
        goto LABEL_83;
      }
    }

    else if (v33 == 1)
    {
      v37 = v31[168];
      if (v37)
      {
        v34 = 2;
        goto LABEL_83;
      }

      goto LABEL_57;
    }

    v37 = v31[168];
LABEL_57:
    if ((v37 & 2) != 0 && (v32[168] & 2) != 0 || (v37 & 4) != 0 && (v32[168] & 4) != 0)
    {
      v34 = 3;
    }

    else
    {
      v34 = 4;
    }

LABEL_83:
    mlx::core::set_binary_op_output_data(v3, (v3 + 2), this, v34);
    mlx::core::cpu::get_command_encoder(v29, v30);
    mlx::core::array::unsafe_weak_copy(v3, v41);
  }

  switch(v4)
  {
    case 2:
      v17 = *(result + 8);
      v18 = *(result + 16);
      v19 = *v3;
      v20 = v3[2];
      v21 = *(v20 + 20);
      if (*(*v3 + 20) == 1)
      {
        if (v21 == 1)
        {
          v22 = 0;
          goto LABEL_79;
        }

        if (v20[168])
        {
          v22 = 1;
          goto LABEL_79;
        }
      }

      else if (v21 == 1)
      {
        v35 = v19[168];
        if (v35)
        {
          v22 = 2;
          goto LABEL_79;
        }

        goto LABEL_41;
      }

      v35 = v19[168];
LABEL_41:
      if ((v35 & 2) != 0 && (v20[168] & 2) != 0 || (v35 & 4) != 0 && (v20[168] & 4) != 0)
      {
        v22 = 3;
      }

      else
      {
        v22 = 4;
      }

LABEL_79:
      mlx::core::set_binary_op_output_data(v3, (v3 + 2), this, v22);
      mlx::core::cpu::get_command_encoder(v17, v18);
      mlx::core::array::unsafe_weak_copy(v3, v41);
    case 3:
      v23 = *(result + 8);
      v24 = *(result + 16);
      v25 = *v3;
      v26 = v3[2];
      v27 = *(v26 + 20);
      if (*(*v3 + 20) == 1)
      {
        if (v27 == 1)
        {
          v28 = 0;
          goto LABEL_81;
        }

        if (v26[168])
        {
          v28 = 1;
          goto LABEL_81;
        }
      }

      else if (v27 == 1)
      {
        v36 = v25[168];
        if (v36)
        {
          v28 = 2;
          goto LABEL_81;
        }

        goto LABEL_49;
      }

      v36 = v25[168];
LABEL_49:
      if ((v36 & 2) != 0 && (v26[168] & 2) != 0 || (v36 & 4) != 0 && (v26[168] & 4) != 0)
      {
        v28 = 3;
      }

      else
      {
        v28 = 4;
      }

LABEL_81:
      mlx::core::set_binary_op_output_data(v3, (v3 + 2), this, v28);
      mlx::core::cpu::get_command_encoder(v23, v24);
      mlx::core::array::unsafe_weak_copy(v3, v41);
    case 4:
      v5 = *(result + 8);
      v6 = *(result + 16);
      v7 = *v3;
      v8 = v3[2];
      v9 = *(v8 + 20);
      if (*(*v3 + 20) == 1)
      {
        if (v9 == 1)
        {
          v10 = 0;
          goto LABEL_85;
        }

        if (v8[168])
        {
          v10 = 1;
          goto LABEL_85;
        }
      }

      else if (v9 == 1)
      {
        v38 = v7[168];
        if (v38)
        {
          v10 = 2;
          goto LABEL_85;
        }

        goto LABEL_65;
      }

      v38 = v7[168];
LABEL_65:
      if ((v38 & 2) != 0 && (v8[168] & 2) != 0 || (v38 & 4) != 0 && (v8[168] & 4) != 0)
      {
        v10 = 3;
      }

      else
      {
        v10 = 4;
      }

LABEL_85:
      mlx::core::set_binary_op_output_data(v3, (v3 + 2), this, v10);
      mlx::core::cpu::get_command_encoder(v5, v6);
      mlx::core::array::unsafe_weak_copy(v3, v41);
  }

LABEL_88:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A61CD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::ArcTan2::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    mlx::core::ArcTan2::eval_cpu();
  }

  v4 = v3[2];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v3;
  v8 = *(v4 + 20);
  if (*(*v3 + 20) == 1)
  {
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4[168])
    {
      v9 = 1;
      goto LABEL_17;
    }
  }

  else if (v8 == 1)
  {
    v10 = v7[168];
    if (v10)
    {
      v9 = 2;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v10 = v7[168];
LABEL_11:
  if ((v10 & 2) != 0 && (v4[168] & 2) != 0 || (v10 & 4) != 0 && (v4[168] & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

LABEL_17:
  mlx::core::set_binary_op_output_data(*a2, (v3 + 2), this, v9);
  mlx::core::cpu::get_command_encoder(v5, v6);
  mlx::core::array::unsafe_weak_copy(v3, &v11);
}

void sub_25A61D574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a31);
  std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Add::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61D6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ArcTan2::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61D7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::BitwiseBinary::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61D8D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Divide::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61D9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::DivMod::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  memset(v9, 0, sizeof(v9));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v9, *v4, v4[1], (v4[1] - *v4) >> 2);
  v5 = **a1;
  v11[0] = 0;
  v11[1] = 0;
  v10 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v10, *v5, v5[1], (v5[1] - *v5) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, v9, &v12, 2uLL);
  for (i = 0; i != -6; i -= 3)
  {
    v7 = v9[i + 3];
    if (v7)
    {
      v11[i] = v7;
      operator delete(v7);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_25A61DB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = (v11 + 32);
  v14 = -48;
  while (1)
  {
    v15 = *(v13 - 1);
    if (v15)
    {
      *v13 = v15;
      operator delete(v15);
    }

    v13 -= 3;
    v14 += 24;
    if (!v14)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void mlx::core::Remainder::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61DC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *mlx::core::Equal::print(uint64_t a1, void *a2)
{
  if (*(a1 + 20) == 1)
  {
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "NaNEqual", 8);
  }

  else
  {
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Equal", 5);
  }
}

void mlx::core::Equal::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61DD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Greater::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61DE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::GreaterEqual::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61DF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Less::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61E068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::LessEqual::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61E168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::LogicalAnd::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61E268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::LogicalOr::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61E368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::LogAddExp::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61E468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Maximum::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61E568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Minimum::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61E668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Multiply::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A61E768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::NotEqual::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}