void sub_1B585FCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  std::__list_imp<char *>::clear((v35 + 16));
  v38 = *(v36 - 112);
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  _Unwind_Resume(a1);
}

void *fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()@<X0>(float *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 3) == -1)
  {
    v30 = a1[2];
    v29[8] = 2139095040;
    if (v30 == INFINITY)
    {
      v12 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
      v23 = *v12;
      v7 = v24;
      std::list<int>::list(v24, (v12 + 2));
      v25 = v12[8];
      *a2 = 0;
      *(a2 + 8) = v23;
      std::list<int>::list((a2 + 16), v24);
      *(a2 + 40) = v25;
      *(a2 + 48) = -1;
      return std::__list_imp<char *>::clear(v7);
    }

    v8 = fst::StringWeight<int,(fst::StringType)0>::One();
    v26 = *v8;
    v7 = v27;
    std::list<int>::list(v27, (v8 + 2));
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v28, &v26, a1[2]);
    *a2 = 0;
    *(a2 + 8) = v28;
    std::list<int>::list((a2 + 16), v29);
    *(a2 + 40) = v29[6];
    *(a2 + 48) = -1;
    v9 = v29;
    goto LABEL_7;
  }

  v5 = *a1;
  v4 = *(a1 + 1);
  if (!v4)
  {
    v10 = fst::StringWeight<int,(fst::StringType)0>::One();
    v19 = *v10;
    v7 = v20;
    std::list<int>::list(v20, (v10 + 2));
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v21, &v19, a1[2]);
    v11 = *(a1 + 3);
    *a2 = v5;
    *(a2 + 4) = v5;
    *(a2 + 8) = v21;
    std::list<int>::list((a2 + 16), v22);
    *(a2 + 40) = v22[6];
    *(a2 + 48) = v11;
    v9 = v22;
LABEL_7:
    std::__list_imp<char *>::clear(v9);
    return std::__list_imp<char *>::clear(v7);
  }

  fst::StringWeight<int,(fst::StringType)0>::StringWeight(&v14, v4);
  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v16, &v14, a1[2]);
  v6 = *(a1 + 3);
  *a2 = v5;
  *(a2 + 4) = v5;
  *(a2 + 8) = v16;
  std::list<int>::list((a2 + 16), v17);
  *(a2 + 40) = v18;
  *(a2 + 48) = v6;
  std::__list_imp<char *>::clear(v17);
  v7 = &v15;
  return std::__list_imp<char *>::clear(v7);
}

uint64_t fst::ShortestDistance<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = *a3;
  v13 = *(a3 + 16);
  v14 = *(a3 + 20);
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v19, 0, 29);
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    do
    {
      v6 = v4 - 40;
      std::__list_imp<char *>::clear((v4 - 32));
      v4 = v6;
    }

    while (v6 != v5);
  }

  a2[1] = v5;
  fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::ShortestDistance(v12);
  if (BYTE12(v19[1]) == 1)
  {
    v8 = *a2;
    v7 = a2[1];
    if (v7 != *a2)
    {
      do
      {
        v9 = v7 - 40;
        std::__list_imp<char *>::clear((v7 - 32));
        v7 = v9;
      }

      while (v9 != v8);
    }

    a2[1] = v8;
    v10 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::NoWeight();
    std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::resize(a2, 1uLL, v10);
  }

  return fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ShortestDistanceState(v12);
}

void sub_1B5860154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

uint64_t fst::Reverse<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(a1);
    (*(*a2 + 248))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 24))(a1);
  v103 = 0;
  v63 = v9;
  if (a3)
  {
    goto LABEL_56;
  }

  LODWORD(v93) = 0;
  (*(*a1 + 128))(a1, &v91);
  for (i = 0xFFFFFFFFLL; ; i = v13)
  {
    if (v91)
    {
      v11 = (*(*v91 + 16))(v91);
      v12 = v91;
      if (v11)
      {
        goto LABEL_34;
      }

      if (v91)
      {
        v13 = (*(*v91 + 24))();
        goto LABEL_11;
      }
    }

    else if (v93 >= v92)
    {
      goto LABEL_36;
    }

    v13 = v93;
LABEL_11:
    (*(*a1 + 32))(&p_p, a1, v13);
    v14 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
    v15 = p_p ? v99 + 1 : 0;
    v16 = *v14 ? *(v14 + 24) + 1 : 0;
    if (v15 != v16)
    {
      break;
    }

    v17 = v98;
    v18 = (v14 + 16);
    for (j = 1; ; j = 0)
    {
      v20 = *v18;
      if (j)
      {
        if (!p_p)
        {
          break;
        }

        if (p_p != *v14)
        {
          goto LABEL_25;
        }
      }

      if (v17 == &v97)
      {
        break;
      }

      if (*(v17 + 16) != *(v20 + 16))
      {
        goto LABEL_25;
      }

      v17 = *(v17 + 8);
      v18 = (v20 + 8);
    }

    *&__p = v100;
    v74 = *(v14 + 32);
    v21 = v100;
    std::__list_imp<char *>::clear(&v97);
    if (v21 != v74)
    {
      goto LABEL_26;
    }

    v13 = i;
LABEL_27:
    if (v91)
    {
      (*(*v91 + 32))(v91);
    }

    else
    {
      LODWORD(v93) = v93 + 1;
    }
  }

LABEL_25:
  std::__list_imp<char *>::clear(&v97);
LABEL_26:
  if (i == -1)
  {
    goto LABEL_27;
  }

  i = 0xFFFFFFFFLL;
  v12 = v91;
LABEL_34:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_36:
  if (i == -1)
  {
LABEL_56:
    i = (*(*a2 + 200))(a2);
    v32 = 1;
    goto LABEL_57;
  }

  (*(*a1 + 32))(&p_p, a1, i);
  v22 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
  if (p_p)
  {
    v23 = v99 + 1;
  }

  else
  {
    v23 = 0;
  }

  if (*v22)
  {
    v24 = *(v22 + 24) + 1;
  }

  else
  {
    v24 = 0;
  }

  if (v23 != v24)
  {
    goto LABEL_134;
  }

  v25 = v98;
  v26 = (v22 + 16);
  v27 = p_p && p_p == *v22;
  v28 = !v27;
  v29 = 1;
  v30 = !v28;
  while (1)
  {
    v31 = *v26;
    if ((v29 & 1) != 0 && !v30)
    {
      break;
    }

    if (v25 == &v97)
    {
      goto LABEL_136;
    }

    if (*(v25 + 16) != *(v31 + 16))
    {
      goto LABEL_134;
    }

    v29 = 0;
    v25 = *(v25 + 8);
    v26 = (v31 + 8);
  }

  if (p_p)
  {
LABEL_134:
    std::__list_imp<char *>::clear(&v97);
    goto LABEL_135;
  }

LABEL_136:
  *&v91 = v100;
  LODWORD(__p) = *(v22 + 32);
  v62 = v100;
  std::__list_imp<char *>::clear(&v97);
  if (v62 != *&__p)
  {
LABEL_135:
    __p = 0;
    v78 = 0;
    v79 = 0;
    p_p = &__p;
    v97 = 0;
    v98 = 0;
    v99 = &v103;
    fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, &p_p);
  }

  v32 = 0;
LABEL_57:
  v90 = 0;
  (*(*a1 + 128))(a1, &v88);
  while (2)
  {
    if (!v88)
    {
      if (v90 >= v89)
      {
        goto LABEL_127;
      }

      goto LABEL_63;
    }

    if (!(*(*v88 + 16))(v88))
    {
      if (v88)
      {
        v33 = (*(*v88 + 24))();
LABEL_64:
        v34 = v33 + v32;
        while ((*(*a2 + 160))(a2) <= v34)
        {
          (*(*a2 + 200))(a2);
        }

        if (v33 == v63)
        {
          v35 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
          v85 = *v35;
          std::list<int>::list(v86, (v35 + 2));
          v87 = v35[8];
          (*(*a2 + 184))(a2, (v33 + v32), &v85);
          std::__list_imp<char *>::clear(v86);
        }

        (*(*a1 + 32))(&v91, a1, v33);
        v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
        if (v91)
        {
          v37 = v94 + 1;
        }

        else
        {
          v37 = 0;
        }

        if (*v36)
        {
          v38 = *(v36 + 24) + 1;
        }

        else
        {
          v38 = 0;
        }

        if (v37 == v38)
        {
          v39 = v93;
          v40 = (v36 + 16);
          if (v91)
          {
            v41 = v91 == *v36;
          }

          else
          {
            v41 = 0;
          }

          v42 = !v41;
          v43 = 1;
          v44 = v42 ^ 1;
          while (1)
          {
            v45 = *v40;
            if ((v43 & 1) != 0 && !v44)
            {
              break;
            }

            if (v39 == &v92)
            {
              goto LABEL_90;
            }

            if (*(v39 + 16) != *(v45 + 16))
            {
              goto LABEL_89;
            }

            v43 = 0;
            v39 = *(v39 + 8);
            v40 = (v45 + 8);
          }

          if (v91)
          {
            goto LABEL_89;
          }

LABEL_90:
          LODWORD(p_p) = v95;
          LODWORD(__p) = *(v36 + 32);
          v46 = *&v95 != *&__p;
        }

        else
        {
LABEL_89:
          v46 = 1;
        }

        if ((v32 & v46) == 1)
        {
          fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Reverse(&v91, &v82);
          p_p = 0;
          LODWORD(v97) = v82;
          std::list<int>::list(&v98, v83);
          v101 = v84;
          v102 = v33 + v32;
          std::__list_imp<char *>::clear(v83);
          (*(*a2 + 208))(a2, 0, &p_p);
          std::__list_imp<char *>::clear(&v98);
        }

        v81 = 0;
        (*(*a1 + 136))(a1, v33, &__p);
LABEL_94:
        if (__p)
        {
          if ((*(*__p + 24))(__p))
          {
            if (__p)
            {
              (*(*__p + 8))();
              goto LABEL_122;
            }

LABEL_120:
            if (v80)
            {
              --*v80;
            }

LABEL_122:
            std::__list_imp<char *>::clear(&v92);
            if (v88)
            {
              (*(*v88 + 32))(v88);
            }

            else
            {
              ++v90;
            }

            continue;
          }

          if (__p)
          {
            v47 = (*(*__p + 32))();
LABEL_100:
            v48 = *(v47 + 48);
            fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Reverse((v47 + 8), &v74);
            v49 = (v48 + v32);
            if (v49 == i)
            {
              v50 = v32;
            }

            else
            {
              v50 = 1;
            }

            if ((v50 & 1) == 0)
            {
              (*(*a1 + 32))(&v69, a1, i);
              fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Reverse(&v69, &v71);
              fst::Times<int,(fst::StringType)1>(&v71, &v74, &v104);
              v51 = NAN;
              if (v73 != -INFINITY)
              {
                v51 = NAN;
                if (v76 != -INFINITY)
                {
                  v51 = INFINITY;
                  if (v76 != INFINITY && v73 != INFINITY)
                  {
                    v51 = v73 + v76;
                  }
                }
              }

              fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&p_p, &v104, v51);
              std::__list_imp<char *>::clear(v105);
              v74 = *&p_p;
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v75, v98, &v97);
              v76 = v100;
              std::__list_imp<char *>::clear(&v97);
              std::__list_imp<char *>::clear(v72);
              std::__list_imp<char *>::clear(v70);
            }

            v53 = *v47;
            v66 = v74;
            std::list<int>::list(v67, v75);
            v68 = v76;
            p_p = v53;
            *&v97 = v66;
            std::list<int>::list(&v98, v67);
            v101 = v68;
            v102 = v34;
            std::__list_imp<char *>::clear(v67);
            while (1)
            {
              v54 = (*(*a2 + 160))(a2);
              v55 = *a2;
              if (v54 > v49)
              {
                break;
              }

              (*(v55 + 200))(a2);
            }

            (*(v55 + 208))(a2, v49, &p_p);
            std::__list_imp<char *>::clear(&v98);
            std::__list_imp<char *>::clear(v75);
            if (__p)
            {
              (*(*__p + 40))(__p);
            }

            else
            {
              ++v81;
            }

            goto LABEL_94;
          }
        }

        else if (v81 >= v79)
        {
          goto LABEL_120;
        }

        v47 = v78 + 56 * v81;
        goto LABEL_100;
      }

LABEL_63:
      v33 = v90;
      goto LABEL_64;
    }

    break;
  }

  if (v88)
  {
    (*(*v88 + 8))();
  }

LABEL_127:
  (*(*a2 + 176))(a2, i);
  if (i == v63)
  {
    v56 = v32;
  }

  else
  {
    v56 = 1;
  }

  if ((v56 & 1) == 0)
  {
    (*(*a1 + 32))(&p_p, a1, v63);
    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Reverse(&p_p, v64);
    (*(*a2 + 184))(a2, v63, v64);
    std::__list_imp<char *>::clear(v65);
    std::__list_imp<char *>::clear(&v97);
  }

  v57 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  v58 = v103;
  v59 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v60 = fst::ReverseProperties(v58 | v57, v32);
  return (*(*a2 + 192))(a2, v59 | v60, 0x3FFFFFFF0007);
}

void sub_1B58610A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ShortestDistance<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = *a3;
  v14 = *(a3 + 16);
  v15 = *(a3 + 20);
  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v20, 0, 29);
  v6 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    do
    {
      v7 = v5 - 40;
      std::__list_imp<char *>::clear((v5 - 32));
      v5 = v7;
    }

    while (v7 != v6);
  }

  a2[1] = v6;
  fst::ShortestDistanceState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::ShortestDistance(v13, *(a3 + 12));
  if (BYTE12(v20[1]) == 1)
  {
    v9 = *a2;
    v8 = a2[1];
    if (v8 != *a2)
    {
      do
      {
        v10 = v8 - 40;
        std::__list_imp<char *>::clear((v8 - 32));
        v8 = v10;
      }

      while (v10 != v9);
    }

    a2[1] = v9;
    v11 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::NoWeight();
    std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::resize(a2, 1uLL, v11);
  }

  return fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ShortestDistanceState(v13);
}

void sub_1B5861384(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB668;
  *(a1 + 24) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      v6 = 0;
      v5[0] = v3;
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = &v6;
      fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(a2, v5);
    }

    operator new();
  }

  operator new();
}

void sub_1B5861A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v27 = 0;
  (*(*a1 + 128))(a1, &v25);
  while (1)
  {
    result = v25;
    if (!v25)
    {
      if (v27 >= v26)
      {
        return result;
      }

LABEL_11:
      v15 = v27;
      goto LABEL_12;
    }

    v14 = (*(*v25 + 16))(v25);
    result = v25;
    if (v14)
    {
      break;
    }

    if (!v25)
    {
      goto LABEL_11;
    }

    v15 = (*(*v25 + 24))();
LABEL_12:
    v24 = 0;
    (*(*a1 + 136))(a1, v15, v22);
    while (1)
    {
      if (!v22[0])
      {
        if (v24 >= v22[2])
        {
          goto LABEL_32;
        }

        goto LABEL_18;
      }

      if ((*(*v22[0] + 24))(v22[0]))
      {
        break;
      }

      if (v22[0])
      {
        v16 = (*(*v22[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v16 = v22[1] + 56 * v24;
LABEL_19:
      v17 = *(*a2 + 4 * v15);
      if (v17 == *(*a2 + 4 * *(v16 + 48)))
      {
        v18 = *a3;
        if (!a4 || (v19 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One(), fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::operator()(a4, v16 + 8, v19)))
        {
          v20 = 1;
          goto LABEL_25;
        }

        if ((v18[v17] | 2) == 2)
        {
          v20 = 3;
LABEL_25:
          v18[v17] = v20;
        }

        *a5 = 0;
      }

      *a6 = 0;
      if (v22[0])
      {
        (*(*v22[0] + 40))(v22[0]);
      }

      else
      {
        ++v24;
      }
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))();
      goto LABEL_34;
    }

LABEL_32:
    if (v23)
    {
      --*v23;
    }

LABEL_34:
    if (v25)
    {
      (*(*v25 + 32))(v25);
    }

    else
    {
      ++v27;
    }
  }

  if (v25)
  {
    return (*(*v25 + 8))();
  }

  return result;
}

void sub_1B5861EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB748;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v1 = a1 + 24;
  v2 = &v3;
  fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::TopOrderVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>();
}

void sub_1B58620A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1B58628BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::TopOrderVisitor<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::FinishVisit(uint64_t **a1)
{
  if (*a1[1])
  {
    (*a1)[1] = **a1;
    v2 = a1[2];
    if (v2[1] == *v2)
    {
      goto LABEL_12;
    }

    v3 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](*a1, &fst::kNoStateId);
      ++v3;
      v2 = a1[2];
      v4 = (v2[1] - *v2) >> 2;
    }

    while (v4 > v3);
    if (!v4)
    {
LABEL_12:
      v9 = *v2;
      if (*v2)
      {
        v2[1] = v9;
        operator delete(v9);
      }

      JUMPOUT(0x1B8C85350);
    }

    v5 = 0;
    v6 = **a1;
    v7 = (v2[1] - 4);
    do
    {
      v8 = *v7--;
      *(v6 + 4 * v8) = v5++;
    }

    while (v4 != v5);
  }

  else
  {
    v2 = a1[2];
  }

  if (v2)
  {
    goto LABEL_12;
  }
}

void fst::ShortestDistanceState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::ShortestDistance(void *a1)
{
  if ((*(**a1 + 24))(*a1) != -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v2 = fst::LogMessage::LogMessage(&v11, __p);
    v3 = fst::cerr(v2);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ShortestDistance: Weight needs to be right distributive: ", 57);
    v5 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Type();
    v6 = *(v5 + 23);
    if (v6 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_15;
  }

  if ((*(**a1 + 64))(*a1, 4, 0))
  {
LABEL_15:
    *(a1 + 116) = 1;
  }
}

void sub_1B5862BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::Times<int,fst::LogWeightTpl<float>,(fst::GallicType)0>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  fst::Times<int,(fst::StringType)0>(a1, a2, &v12);
  v6 = *(a1 + 32);
  v7 = NAN;
  if (v6 != -INFINITY)
  {
    v8 = *(a2 + 32);
    v7 = NAN;
    if (v8 != -INFINITY)
    {
      v7 = INFINITY;
      v9 = v8 == INFINITY || v6 == INFINITY;
      v10 = v6 + v8;
      if (!v9)
      {
        v7 = v10;
      }
    }
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(a3, &v12, v7);
  return std::__list_imp<char *>::clear(v13);
}

void fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v4;
  result = std::list<int>::list((a3 + 8), (v4 + 2));
  *(a3 + 32) = v4[8];
  return result;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 56);
  v4 = *v5;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((v5[1] - *v5) >> 3);
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

void *fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  std::list<int>::list(v9, (a3 + 2));
  v10 = a3[8];
  fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::SetFinal(v6, a2, &v8);
  return std::__list_imp<char *>::clear(v9);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::AddArc(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::DeleteArcs(v4, a2);
}

void *fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 56);

  return std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D34E48;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D34D98;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B58637F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D34E10;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D34E48;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B5863AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5863BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::operator=(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ImplToFst: Assignment operator disallowed", 41);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(*(a1 + 8) + 8) |= 4uLL;
  return a1;
}

void sub_1B5863CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D34E48;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D34D98;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(a2);
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve((a1 + 64), v6);
  }

  v11 = 0;
  (*(*a2 + 128))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))(v9);
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 160);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_1B5864528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>();
  }

  _Unwind_Resume(exception_object);
}

void *fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  v4 = *(*(a1 + 64) + 8 * a2);
  v7 = *a3;
  std::list<int>::list(v8, (a3 + 2));
  v5 = a3[8];
  v9 = v5;
  *v4 = v7;
  if (v4 != &v7)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v4 + 8), v8[1], v8);
    v5 = v9;
  }

  *(v4 + 32) = v5;
  return std::__list_imp<char *>::clear(v8);
}

void *std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B58646B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = a4 + v7;
      *v9 = *(v6 + v7);
      *(v9 + 8) = *(v6 + v7 + 8);
      result = std::list<int>::list((a4 + v7 + 16), v6 + v7 + 16);
      *(v9 + 40) = *(v6 + v7 + 40);
      *(v9 + 48) = *(v6 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 16));
      v6 += 56;
    }
  }

  return result;
}

void sub_1B5864764(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 40);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 7;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[5];
  }

  if (!a2[1])
  {
    ++a1[6];
  }

  return std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::push_back[abi:ne200100](a1 + 7, a2);
}

uint64_t std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::__emplace_back_slow_path<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::__construct_one_at_end[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>> const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::__construct_one_at_end[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = *(a2 + 8);
  result = std::list<int>::list((v4 + 16), a2 + 16);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::__emplace_back_slow_path<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>(a1, v6);
  }

  v7 = 56 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  std::list<int>::list((v7 + 16), a2 + 16);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 48) = *(a2 + 48);
  *&v16 = v16 + 56;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B58649C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, a2, a3, 1);
  }
}

void sub_1B5864B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v9 = v8;
  if (!a4 || (v10 = v8 & 0x3FFFFFFF0000 | (2 * v8) & 0x2AAAAAAA0000 | (v8 >> 1) & 0x155555550000 | 7, (a2 & ~v10) != 0))
  {
    v9 = v8 & 7;
    v93 = v9;
    v11 = (*(*v7 + 16))(v7);
    if ((a2 & 0xF3C00000000) != 0 && v11)
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = &v93;
      fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>(v7, &v86);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
    {
      goto LABEL_179;
    }

    v12 = a2 & 0xC0000;
    v13 = 0x10425A810000;
    if ((a2 & 0xC0000) != 0)
    {
      v13 = 0x10425A850000;
    }

    v14 = v9 | v13;
    v15 = a2 & 0x300000;
    if ((a2 & 0x300000) != 0)
    {
      v14 |= 0x100000uLL;
    }

    v93 = v14;
    memset(&v85, 0, sizeof(v85));
    memset(&v84, 0, sizeof(v84));
    v83 = 0;
    (*(*v7 + 128))(v7, &v81);
    v16 = 0;
    v75 = v7;
LABEL_12:
    if (!v81)
    {
      if (v83 >= v82)
      {
        goto LABEL_171;
      }

      goto LABEL_17;
    }

    if (!(*(*v81 + 16))(v81))
    {
      if (v81)
      {
        v17 = (*(*v81 + 24))();
LABEL_18:
        v18 = (*(*v7 + 40))(v7, v17);
        v88 = &v88;
        v89 = &v88;
        v90 = 0;
        LODWORD(v87) = 0;
        v85.__end_ = v85.__begin_;
        v84.__end_ = v84.__begin_;
        if (v12)
        {
          std::vector<int>::reserve(&v85, v18);
        }

        if (v15)
        {
          std::vector<int>::reserve(&v84, v18);
        }

        v80 = 0;
        (*(*v7 + 136))(v7, v17, &v76);
        v19 = 1;
        while (1)
        {
          if (v76)
          {
            if ((*(*v76 + 24))(v76))
            {
              if (v76)
              {
                (*(*v76 + 8))();
                goto LABEL_104;
              }

LABEL_102:
              if (v79)
              {
                --*v79;
              }

LABEL_104:
              v7 = v75;
              if (!v12 || (std::__sort<std::__less<int,int> &,int *>(), v48 = v85.__end_ - v85.__begin_, v48 < 2))
              {
LABEL_109:
                if (!v15)
                {
                  goto LABEL_118;
                }

LABEL_110:
                std::__sort<std::__less<int,int> &,int *>();
                v51 = v84.__end_ - v84.__begin_;
                if (v51 >= 2)
                {
                  v52 = v51 - 1;
                  v53 = v84.__begin_ + 1;
                  while (*v53 != *(v53 - 1))
                  {
                    ++v53;
                    if (!--v52)
                    {
                      goto LABEL_118;
                    }
                  }

                  v93 = v93 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                }

                goto LABEL_118;
              }

              v49 = v48 - 1;
              v50 = v85.__begin_ + 1;
              while (*v50 != *(v50 - 1))
              {
                ++v50;
                if (!--v49)
                {
                  goto LABEL_109;
                }
              }

              v93 = v93 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
              if (v15)
              {
                goto LABEL_110;
              }

LABEL_118:
              if (v16 >= 1)
              {
                v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              (*(*v75 + 32))(&v76, v75, v17);
              v54 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
              if (v76)
              {
                v55 = v79 + 1;
              }

              else
              {
                v55 = 0;
              }

              if (*v54)
              {
                v56 = *(v54 + 24) + 1;
              }

              else
              {
                v56 = 0;
              }

              if (v55 != v56)
              {
                goto LABEL_141;
              }

              v57 = v78;
              v58 = (v54 + 16);
              v59 = v76 && v76 == *v54;
              v60 = !v59;
              v61 = 1;
              v62 = !v60;
              while (1)
              {
                v63 = *v58;
                if ((v61 & 1) != 0 && !v62)
                {
                  break;
                }

                if (v57 == &v77)
                {
                  goto LABEL_140;
                }

                if (*(v57 + 16) != *(v63 + 16))
                {
                  goto LABEL_141;
                }

                v61 = 0;
                v57 = *(v57 + 8);
                v58 = (v63 + 8);
              }

              if (v76)
              {
                goto LABEL_141;
              }

LABEL_140:
              v95 = *&v80;
              v94 = *(v54 + 32);
              if (*&v80 == v94)
              {
                if ((*(*v75 + 40))(v75, v17, *&v80) != 1)
                {
                  v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                }
              }

              else
              {
LABEL_141:
                v64 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
                if (v76)
                {
                  v65 = v79 + 1;
                }

                else
                {
                  v65 = 0;
                }

                if (*v64)
                {
                  v66 = *(v64 + 24) + 1;
                }

                else
                {
                  v66 = 0;
                }

                if (v65 != v66)
                {
                  goto LABEL_162;
                }

                v67 = v78;
                v68 = (v64 + 16);
                v69 = v76 && v76 == *v64;
                v70 = !v69;
                v71 = 1;
                v72 = !v70;
                while (1)
                {
                  v73 = *v68;
                  if ((v71 & 1) != 0 && !v72)
                  {
                    break;
                  }

                  if (v67 == &v77)
                  {
                    goto LABEL_161;
                  }

                  if (*(v67 + 16) != *(v73 + 16))
                  {
                    goto LABEL_162;
                  }

                  v71 = 0;
                  v67 = *(v67 + 8);
                  v68 = (v73 + 8);
                }

                if (v76)
                {
                  goto LABEL_162;
                }

LABEL_161:
                v95 = *&v80;
                v94 = *(v64 + 32);
                if (*&v80 != v94)
                {
LABEL_162:
                  v93 = v93 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }

                ++v16;
              }

              std::__list_imp<char *>::clear(&v77);
              std::__list_imp<char *>::clear(&v88);
              if (v81)
              {
                (*(*v81 + 32))(v81);
              }

              else
              {
                ++v83;
              }

              goto LABEL_12;
            }

            if (v76)
            {
              v20 = (*(*v76 + 32))();
              goto LABEL_29;
            }
          }

          else if (v80 >= v78)
          {
            goto LABEL_102;
          }

          v20 = v77 + 56 * v80;
LABEL_29:
          v21 = *v20;
          v22 = *v20;
          if (*v20 != *(v20 + 4))
          {
            v93 = v93 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
            v22 = *(v20 + 4);
          }

          if (v21 | v22)
          {
            if (v21)
            {
              if (v22)
              {
                goto LABEL_35;
              }

              goto LABEL_39;
            }

            v23 = v93;
          }

          else
          {
            v23 = v93 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
          }

          v93 = v23 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
          if (v22)
          {
LABEL_35:
            if ((v19 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_44;
          }

LABEL_39:
          v93 = v93 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if ((v19 & 1) == 0)
          {
LABEL_40:
            if (v21 < v86)
            {
              v93 = v93 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
            }

            if (v22 < SHIDWORD(v86))
            {
              v93 = v93 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
            }
          }

LABEL_44:
          v24 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
          v25 = *(v20 + 8);
          if (v25)
          {
            v26 = *(v20 + 32) + 1;
          }

          else
          {
            v26 = 0;
          }

          if (*v24)
          {
            v27 = *(v24 + 24) + 1;
          }

          else
          {
            v27 = 0;
          }

          if (v26 != v27)
          {
            goto LABEL_65;
          }

          v28 = (v20 + 24);
          v29 = (v24 + 16);
          v30 = v25 && v25 == *v24;
          v31 = !v30;
          v32 = 1;
          v33 = !v31;
          while (1)
          {
            v34 = *v28;
            v35 = *v29;
            if ((v32 & 1) != 0 && !v33)
            {
              break;
            }

            if (v34 == v20 + 16)
            {
              goto LABEL_64;
            }

            if (*(v34 + 16) != *(v35 + 16))
            {
              goto LABEL_65;
            }

            v32 = 0;
            v28 = (v34 + 8);
            v29 = (v35 + 8);
          }

          if (v25)
          {
            goto LABEL_65;
          }

LABEL_64:
          v95 = *(v20 + 40);
          v94 = *(v24 + 32);
          if (v95 != v94)
          {
LABEL_65:
            v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
            v25 = *(v20 + 8);
            if (v25)
            {
              v37 = *(v20 + 32) + 1;
            }

            else
            {
              v37 = 0;
            }

            if (*v36)
            {
              v38 = *(v36 + 24) + 1;
            }

            else
            {
              v38 = 0;
            }

            if (v37 != v38)
            {
              goto LABEL_86;
            }

            v39 = (v20 + 24);
            v40 = (v36 + 16);
            v41 = v25 && v25 == *v36;
            v42 = !v41;
            v43 = 1;
            v44 = !v42;
            while (1)
            {
              v45 = *v39;
              v46 = *v40;
              if ((v43 & 1) != 0 && !v44)
              {
                break;
              }

              if (v45 == v20 + 16)
              {
                goto LABEL_85;
              }

              if (*(v45 + 16) != *(v46 + 16))
              {
                goto LABEL_86;
              }

              v43 = 0;
              v39 = (v45 + 8);
              v40 = (v46 + 8);
            }

            if (v25)
            {
              goto LABEL_86;
            }

LABEL_85:
            v95 = *(v20 + 40);
            v94 = *(v36 + 32);
            if (v95 != v94)
            {
LABEL_86:
              v93 = v93 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            }
          }

          v47 = *(v20 + 48);
          if (v47 <= v17)
          {
            v93 = v93 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
          }

          if (v47 != v17 + 1)
          {
            v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          v86 = *v20;
          LODWORD(v87) = v25;
          if (&v86 != v20)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(&v88, *(v20 + 24), v20 + 16);
            v47 = *(v20 + 48);
          }

          v91 = *(v20 + 40);
          v92 = v47;
          if (v12)
          {
            std::vector<int>::push_back[abi:ne200100](&v85.__begin_, v20);
          }

          if (v15)
          {
            std::vector<int>::push_back[abi:ne200100](&v84.__begin_, (v20 + 4));
          }

          if (v76)
          {
            (*(*v76 + 40))(v76);
            v19 = 0;
          }

          else
          {
            v19 = 0;
            ++v80;
          }
        }
      }

LABEL_17:
      v17 = v83;
      goto LABEL_18;
    }

    if (v81)
    {
      (*(*v81 + 8))();
    }

LABEL_171:
    if ((*(*v7 + 24))(v7) != -1 && (*(*v7 + 24))(v7))
    {
      v93 = v93 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
    }

    if (v84.__begin_)
    {
      v84.__end_ = v84.__begin_;
      operator delete(v84.__begin_);
    }

    if (v85.__begin_)
    {
      v85.__end_ = v85.__begin_;
      operator delete(v85.__begin_);
    }

    v9 = v93;
LABEL_179:
    v10 = v9 & 0x3FFFFFFF0000 | (2 * v9) & 0x2AAAAAAA0000 | (v9 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v10;
  return v9;
}

void sub_1B58655A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5865E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

unint64_t fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v33);
  v6 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
  if (v33)
  {
    v7 = v34[2] + 1;
  }

  else
  {
    v7 = 0;
  }

  if (*v6)
  {
    v8 = *(v6 + 24) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == v8)
  {
    v9 = v34[1];
    v10 = (v6 + 16);
    if (v33)
    {
      v11 = v33 == *v6;
    }

    else
    {
      v11 = 0;
    }

    v12 = !v11;
    v13 = 1;
    v14 = v12 ^ 1;
    while (1)
    {
      v15 = *v10;
      if ((v13 & 1) != 0 && !v14)
      {
        break;
      }

      if (v9 == v34)
      {
        goto LABEL_42;
      }

      if (*(v9 + 16) != *(v15 + 16))
      {
        goto LABEL_21;
      }

      v13 = 0;
      v9 = *(v9 + 8);
      v10 = (v15 + 8);
    }

    if (v33)
    {
      goto LABEL_21;
    }

LABEL_42:
    v37 = v35;
    v36 = *(v6 + 32);
    v31 = v35;
    v32 = v36;
    result = std::__list_imp<char *>::clear(v34);
    if (v31 == v32)
    {
      v17 = a2;
      goto LABEL_23;
    }
  }

  else
  {
LABEL_21:
    result = std::__list_imp<char *>::clear(v34);
  }

  v17 = a2;
  *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
LABEL_23:
  v18 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v17) != *(v18 + 4 * v17))
  {
    goto LABEL_36;
  }

  v19 = 0;
  v20 = *(a1 + 80);
  v21 = **(a1 + 16);
  v22 = (*(v20 + 8) - 4);
  v23 = v22;
  do
  {
    v24 = *v23--;
    v19 |= *(v21 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24;
  }

  while (v24 != a2);
  v25 = *a1;
  v26 = **(a1 + 72);
  while (1)
  {
    v27 = *v22;
    if (v25)
    {
      *(*v25 + 4 * v27) = *(a1 + 48);
    }

    result = v27 >> 6;
    v28 = 1 << v27;
    if ((v19 & 1) == 0)
    {
      break;
    }

    *(v21 + 8 * result) |= v28;
    *(v26 + 8 * result) &= ~v28;
    if (v27 == a2)
    {
      *(v20 + 8) = v22;
      goto LABEL_35;
    }

LABEL_33:
    --v22;
  }

  *(v26 + 8 * result) &= ~v28;
  if (v27 != a2)
  {
    goto LABEL_33;
  }

  *(v20 + 8) = v22;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_35:
  ++*(a1 + 48);
LABEL_36:
  if (a3 != -1)
  {
    v29 = **(a1 + 16);
    if ((*(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
    {
      *(v29 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v30 = *(v18 + 4 * v17);
    if (v30 < *(v18 + 4 * a3))
    {
      *(v18 + 4 * a3) = v30;
    }
  }

  return result;
}

void fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D34FC0;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D34FC0;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D35000;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B58664A4(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D35000;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>> *>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v10);
}

void sub_1B58667B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFromFst<fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v26);
  if (!v26 && (a4 & 1) == 0)
  {
    v10 = v27 + 56 * v28;
    *(a1 + 16) = v27;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
    return;
  }

  v11 = (*(*a2 + 40))(a2, a3);
  v12 = a5;
  if (!a4)
  {
    v12 = 0;
  }

  v13 = v11 + v12;
  if (*(a1 + 8) < (v11 + v12))
  {
    if (*a1)
    {
      free(*a1);
    }

    v25 = 0x4000;
    if (v13 > 0x4000)
    {
      v25 = v13;
    }

    *(a1 + 8) = v25;
    v15 = malloc_type_malloc(56 * v25, 0x1020040540EBC04uLL);
    *a1 = v15;
    *(a1 + 16) = v15;
    v14 = v15;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *a1;
  }

  *(a1 + 24) = &v14[7 * v13];
  v16 = v26;
  v17 = v27;
  v19 = v28;
  v18 = v29;
  if (v29)
  {
    ++*v29;
  }

  v20 = 0;
LABEL_13:
  v15 += 7;
  while (v16)
  {
    v21 = (*(*v16 + 24))(v16);
    v22 = *v16;
    if (v21)
    {
      (*(v22 + 8))(v16);
      return;
    }

    v23 = (*(v22 + 32))(v16);
LABEL_18:
    v24 = v15 - 7;
    *v24 = *v23;
    *(v24 + 2) = *(v23 + 8);
    if (v15 - 7 != v23)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v15 - 5, *(v23 + 24), v23 + 16);
    }

    *(v15 - 4) = *(v23 + 40);
    *(v15 - 2) = *(v23 + 48);
    if (!v16)
    {
      ++v20;
      goto LABEL_13;
    }

    v15 += 7;
    (*(*v16 + 40))(v16);
  }

  v23 = v17 + 56 * v20;
  if (v20 < v19)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    --*v18;
  }
}

void sub_1B5866AA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  else if (v2)
  {
    --*v2;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::WriteFst<fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>(void *a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  *v33 = 0u;
  v6 = -1;
  v37 = 0;
  v38 = 0;
  v36 = -1;
  v36 = (*(*a1 + 24))(a1);
  v37 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v37 = fst::CountStates<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v40;
    if (v40 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v28 = v6;
  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v29 = v7;
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 32))(__p, a1, v11);
      fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Write(__p);
      std::__list_imp<char *>::clear(&__p[0].__r_.__value_.__l.__size_);
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v13 = *(*(a1[1] + 64) + 8 * v11);
      v15 = *(v13 + 56);
      v14 = *(v13 + 64);
      if (v14 == v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(v13 + 56);
      }

      if (v14 != v15)
      {
        if ((0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 3)) <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v15) >> 3);
        }

        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v16;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v16[1];
          std::ostream::write();
          fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Write(v16 + 2);
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v16[12];
          std::ostream::write();
          v16 += 14;
          --v17;
        }

        while (v17);
      }

      ++v11;
    }

    while (v11 != v12);
    v7 = v29;
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(&v30, __p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VectorFst::Write: write failed: ", 32);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
LABEL_29:
    fst::LogMessage::~LogMessage(&v30);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_32;
  }

  if (!v7)
  {
    if (v37 == v12)
    {
      updated = 1;
      goto LABEL_32;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v26 = fst::LogMessage::LogMessage(&v30, __p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Inconsistent number of states observed during write", 51);
    goto LABEL_29;
  }

  v37 = v12;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v31, v28);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[1]);
  }

  if (SHIBYTE(v33[0]) < 0)
  {
    operator delete(v32[0]);
  }

  return updated;
}

void sub_1B5866FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a15);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 112))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 120))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write();
  }

  if ((*(*a1 + 112))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 112))(a1);
    (*(*v17 + 72))(v17, a2);
  }

  result = (*(*a1 + 120))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 120))(a1) + 72);

    return v19();
  }

  return result;
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  MEMORY[0x1B8C84B80](v32);
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    __p = 0u;
    v35 = 0u;
    v42 = a8;
    (*(*v17 + 40))(v33);
    if (v33[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B8C84B90](v32);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(v33, &__p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Fst::UpdateFstHeader: write failed: ", 36);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }
  }

  else
  {
    fst::FstImpl<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v24 = fst::LogMessage::LogMessage(v33, &__p);
      v25 = fst::cerr(v24);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Fst::UpdateFstHeader: write failed: ", 36);
      v26 = *(a3 + 23);
      if (v26 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v26 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }

    else
    {
      MEMORY[0x1B8C84B80](v33, a2);
      v27 = a2 + *(*a2 - 24);
      if ((v27[32] & 5) == 0)
      {
        (*(**(v27 + 5) + 32))(&__p);
        if (v42 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      MEMORY[0x1B8C84B90](v33);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v28 = fst::LogMessage::LogMessage(v33, &__p);
      v29 = fst::cerr(v28);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Fst::UpdateFstHeader: write failed: ", 36);
      v30 = *(a3 + 23);
      if (v30 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v30 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  fst::LogMessage::~LogMessage(v33);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

uint64_t fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Type()
{
  {
    operator new();
  }

  return fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::WriteFile(fst *a1, uint64_t a2)
{
  v25[19] = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
LABEL_5:
      std::ofstream::basic_ofstream(&v20);
      if ((v24[*(v20.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
        v4 = fst::LogMessage::LogMessage(&v19, &__p);
        v5 = fst::cerr(v4);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Fst::Write: Can't open file: ", 29);
        v7 = *(a2 + 23);
        if (v7 >= 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = *a2;
        }

        if (v7 >= 0)
        {
          v9 = *(a2 + 23);
        }

        else
        {
          v9 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
        fst::LogMessage::~LogMessage(&v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v10 = 0;
      }

      else
      {
        v13 = FLAGS_fst_align;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v16 = 257;
        v17 = 1;
        v18 = v13;
        v10 = (*(*a1 + 96))(a1, &v20, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v20.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D0];
      *(v20.__r_.__value_.__r.__words + *(v20.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x1B8C84A00](&v20.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](v25);
      return v10;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_5;
  }

  v11 = fst::cout(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v12 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  v21 = 257;
  v22 = 1;
  v23 = v12;
  v10 = (*(*a1 + 96))(a1, v11, &v20);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void *fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::SetFinal(void *a1, int a2, int *a3)
{
  v6 = *(a1[8] + 8 * a2);
  v18 = *v6;
  std::list<int>::list(v19, (v6 + 2));
  v20 = v6[8];
  v15 = *a3;
  std::list<int>::list(v16, (a3 + 2));
  v17 = a3[8];
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::SetFinal(a1, a2, &v15);
  std::__list_imp<char *>::clear(v16);
  v7 = (*(*a1 + 24))(a1);
  v12 = v18;
  std::list<int>::list(v13, v19);
  v14 = v20;
  v9 = *a3;
  std::list<int>::list(v10, (a3 + 2));
  v11 = a3[8];
  a1[1] = a1[1] & 4 | fst::SetFinalProperties<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>(v7, &v12, &v9);
  std::__list_imp<char *>::clear(v10);
  std::__list_imp<char *>::clear(v13);
  return std::__list_imp<char *>::clear(v19);
}

void sub_1B5867C04(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::AddArc(void *a1, int a2, int *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 64);
  if (v6 == *(*(a1[8] + 8 * a2) + 56))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 56);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::AddArc(v9, a3);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v3 = a1;
  v4 = (a1 + 64);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 72) - *(a1 + 64)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(v3 + 64);
  if (*(v3 + 72) == v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(__p[0] + v11) == -1)
      {
        fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Destroy(*(v10 + 8 * v11));
      }

      else
      {
        *(__p[0] + v11) = v12;
        if (v11 != v12)
        {
          *(v10 + 8 * v12) = *(v10 + 8 * v11);
        }

        ++v12;
      }

      ++v11;
      v10 = *(v3 + 64);
    }

    while (v11 < (*(v3 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v13);
  v14 = *(v3 + 64);
  if (*(v3 + 72) != v14)
  {
    v15 = 0;
    v35 = v3;
    do
    {
      v16 = *(v14 + 8 * v15);
      v17 = *(v16 + 40);
      v18 = *(v16 + 64) - *(v16 + 56);
      if (v18)
      {
        v19 = *(v16 + 56);
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
        v21 = 0;
        v22 = (v19 + 48);
        v23 = v19 + 16;
        do
        {
          v24 = *(__p[0] + *v22);
          if (v24 == -1)
          {
            v26 = *(v22 - 6);
            v27.i64[0] = v26;
            v27.i64[1] = HIDWORD(v26);
            v17 = vaddq_s64(v17, vceqzq_s64(v27));
          }

          else
          {
            *v22 = v24;
            if (v20 != v21)
            {
              v36 = v17;
              v25 = v19 + 56 * v21;
              *v25 = *(v22 - 6);
              *(v25 + 8) = *(v22 - 10);
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v25 + 16), *(v22 - 3), v23);
              *(v25 + 40) = *(v22 - 2);
              *(v25 + 48) = *v22;
              v14 = *v4;
              v17 = v36;
            }

            ++v21;
          }

          ++v20;
          v16 = *(v14 + 8 * v15);
          v28 = 0x6DB6DB6DB6DB6DB7 * ((*(v16 + 64) - *(v16 + 56)) >> 3);
          v22 += 14;
          v23 += 56;
        }

        while (v20 < v28);
        v29 = v17.i64[1];
        v30 = v17.i64[0];
        v3 = v35;
      }

      else
      {
        v21 = 0;
        v28 = 0;
        v29 = *(v16 + 48);
        v30 = *(v16 + 40);
      }

      fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::DeleteArcs(v16, v28 - v21);
      v14 = *(v3 + 64);
      v31 = *(v3 + 72);
      v32 = *(v14 + 8 * v15);
      *(v32 + 40) = v30;
      *(v32 + 48) = v29;
      ++v15;
    }

    while (v15 < (v31 - v14) >> 3);
  }

  v33 = *(v3 + 88);
  if (v33 == -1)
  {
    v34 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v34 = __p[0];
    *(v3 + 88) = *(__p[0] + v33);
  }

  __p[1] = v34;
  operator delete(v34);
}

void sub_1B5867F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::DeleteArcs(void *a1, int a2)
{
  v3 = *(a1[8] + 8 * a2);
  v3[5] = 0;
  v3[6] = 0;
  v5 = v3[7];
  v4 = v3[8];
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      std::__list_imp<char *>::clear((v4 - 40));
      v4 = v6;
    }

    while (v6 != v5);
  }

  v3[8] = v5;
  result = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void fst::AutoQueue<int>::AutoQueue<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB668;
  *(a1 + 24) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      v6 = 0;
      v5[0] = v3;
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = &v6;
      fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>(a2, v5);
    }

    operator new();
  }

  operator new();
}

void sub_1B5868788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v27 = 0;
  (*(*a1 + 128))(a1, &v25);
  while (1)
  {
    result = v25;
    if (!v25)
    {
      if (v27 >= v26)
      {
        return result;
      }

LABEL_11:
      v15 = v27;
      goto LABEL_12;
    }

    v14 = (*(*v25 + 16))(v25);
    result = v25;
    if (v14)
    {
      break;
    }

    if (!v25)
    {
      goto LABEL_11;
    }

    v15 = (*(*v25 + 24))();
LABEL_12:
    v24 = 0;
    (*(*a1 + 136))(a1, v15, v22);
    while (1)
    {
      if (!v22[0])
      {
        if (v24 >= v22[2])
        {
          goto LABEL_32;
        }

        goto LABEL_18;
      }

      if ((*(*v22[0] + 24))(v22[0]))
      {
        break;
      }

      if (v22[0])
      {
        v16 = (*(*v22[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v16 = v22[1] + 56 * v24;
LABEL_19:
      v17 = *(*a2 + 4 * v15);
      if (v17 == *(*a2 + 4 * *(v16 + 48)))
      {
        v18 = *a3;
        if (!a4 || (v19 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One(), fst::NaturalLess<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::operator()(a4, v16 + 8, v19)))
        {
          v20 = 1;
          goto LABEL_25;
        }

        if ((v18[v17] | 2) == 2)
        {
          v20 = 3;
LABEL_25:
          v18[v17] = v20;
        }

        *a5 = 0;
      }

      *a6 = 0;
      if (v22[0])
      {
        (*(*v22[0] + 40))(v22[0]);
      }

      else
      {
        ++v24;
      }
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))();
      goto LABEL_34;
    }

LABEL_32:
    if (v23)
    {
      --*v23;
    }

LABEL_34:
    if (v25)
    {
      (*(*v25 + 32))(v25);
    }

    else
    {
      ++v27;
    }
  }

  if (v25)
  {
    return (*(*v25 + 8))();
  }

  return result;
}

void sub_1B5868BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>(uint64_t a1)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB748;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v1 = a1 + 24;
  v2 = &v3;
  fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::TopOrderVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>();
}

void sub_1B5868DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1B58695E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::ShortestDistanceState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    if (!(*(**a1 + 64))(*a1, 4, 0))
    {
      return;
    }

    goto LABEL_158;
  }

  if (*(a1 + 32) == 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    }

    v4 = fst::LogMessage::LogMessage(v112, &__p);
    v5 = fst::cerr(v4);
    v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ShortestDistance: first_path option disallowed when ", 52);
    v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Weight does not have the path property: ", 40);
    v99 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Type();
    v100 = *(v99 + 23);
    if (v100 >= 0)
    {
      v101 = v99;
    }

    else
    {
      v101 = *v99;
    }

    if (v100 >= 0)
    {
      v102 = *(v99 + 23);
    }

    else
    {
      v102 = *(v99 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, v101, v102);
    fst::LogMessage::~LogMessage(v112);
    if (SHIBYTE(v117) < 0)
    {
      operator delete(__p);
    }

LABEL_158:
    v103 = a1 + 116;
    goto LABEL_159;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    v6 = a1[1];
    v8 = *v6;
    v7 = v6[1];
    if (v7 != *v6)
    {
      do
      {
        v9 = v7 - 40;
        std::__list_imp<char *>::clear((v7 - 32));
        v7 = v9;
      }

      while (v9 != v8);
    }

    v6[1] = v8;
    v11 = a1[5];
    v10 = a1[6];
    if (v10 != v11)
    {
      do
      {
        v12 = v10 - 40;
        std::__list_imp<char *>::clear((v10 - 32));
        v10 = v12;
      }

      while (v12 != v11);
    }

    a1[6] = v11;
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v13 = a2;
  for (i = a1[1]; 0xCCCCCCCCCCCCCCCDLL * ((i[1] - *i) >> 3) <= a2; i = a1[1])
  {
    v15 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
    std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](i, v15);
    v16 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
    std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](a1 + 5, v16);
    LOBYTE(__p) = 0;
    std::vector<BOOL>::push_back((a1 + 8), &__p);
  }

  if (*(a1 + 33) == 1)
  {
    for (j = a1[11]; a2 >= ((a1[12] - j) >> 2); j = a1[11])
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
    }

    *(j + 4 * a2) = *(a1 + 28);
  }

  v18 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
  v19 = v18;
  v20 = *a1[1] + 40 * v13;
  *v20 = *v18;
  if (v20 != v18)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v20 + 8), *(v18 + 16), v18 + 8);
  }

  *(v20 + 32) = *(v19 + 32);
  v21 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::One();
  v22 = v21;
  v23 = a1 + 5;
  v24 = a1[5] + 40 * v13;
  *v24 = *v21;
  if (v24 != v21)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v24 + 8), *(v21 + 16), v21 + 8);
  }

  *(v24 + 32) = *(v22 + 32);
  v25 = a1 + 8;
  *(a1[8] + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v13);
  v103 = a1 + 116;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_147;
    }

    v26 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    for (k = a1[1]; 0xCCCCCCCCCCCCCCCDLL * ((k[1] - *k) >> 3) <= v26; k = a1[1])
    {
      v28 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
      std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](k, v28);
      v29 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
      std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](a1 + 5, v29);
      LOBYTE(__p) = 0;
      std::vector<BOOL>::push_back((a1 + 8), &__p);
    }

    if (*(a1 + 32) == 1)
    {
      (*(**a1 + 32))(&__p);
      v30 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
      if (__p)
      {
        v31 = v118 + 1;
      }

      else
      {
        v31 = 0;
      }

      if (*v30)
      {
        v32 = *(v30 + 24) + 1;
      }

      else
      {
        v32 = 0;
      }

      if (v31 != v32)
      {
        goto LABEL_146;
      }

      v33 = v117;
      v34 = (v30 + 16);
      v35 = __p && __p == *v30;
      v36 = !v35;
      v37 = 1;
      v38 = !v36;
      while (1)
      {
        v39 = *v34;
        if ((v37 & 1) != 0 && !v38)
        {
          break;
        }

        if (v33 == &v116)
        {
          goto LABEL_50;
        }

        if (*(v33 + 16) != *(v39 + 16))
        {
          goto LABEL_146;
        }

        v37 = 0;
        v33 = *(v33 + 8);
        v34 = (v39 + 8);
      }

      if (__p)
      {
LABEL_146:
        std::__list_imp<char *>::clear(&v116);
LABEL_147:
        ++*(a1 + 28);
        if (!(*(**a1 + 64))(*a1, 4, 0))
        {
          return;
        }

LABEL_159:
        *v103 = 1;
        return;
      }

LABEL_50:
      *v112 = v119;
      v109 = *(v30 + 32);
      v40 = v119;
      v41 = v109;
      std::__list_imp<char *>::clear(&v116);
      if (v40 != v41)
      {
        goto LABEL_147;
      }
    }

    *(*v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
    v42 = *v23 + 40 * v26;
    LODWORD(__p) = *v42;
    std::list<int>::list(&v116, v42 + 8);
    v119 = *(v42 + 32);
    v43 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
    v44 = v43;
    v45 = *v23 + 40 * v26;
    *v45 = *v43;
    if (v45 != v43)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v45 + 8), *(v43 + 16), v43 + 8);
    }

    *(v45 + 32) = *(v44 + 32);
    v46 = *a1;
    v114 = 0;
    (*(*v46 + 136))(v46, v26, v112);
    while (v112[0])
    {
      if ((*(*v112[0] + 24))(v112[0]))
      {
        goto LABEL_139;
      }

      if (v112[0])
      {
        v47 = (*(*v112[0] + 32))(v112[0]);
        goto LABEL_60;
      }

LABEL_59:
      v47 = v112[1] + 56 * v114;
LABEL_60:
      v48 = a1[1];
      for (m = *(v47 + 48); 0xCCCCCCCCCCCCCCCDLL * ((v48[1] - *v48) >> 3) <= m; m = *(v47 + 48))
      {
        v50 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
        std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](v48, v50);
        v51 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
        std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](a1 + 5, v51);
        LOBYTE(v109) = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v109);
        v48 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v52 = a1[11];
          LODWORD(m) = *(v47 + 48);
          if (m < ((a1[12] - v52) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        if (*(v52 + 4 * m) != *(a1 + 28))
        {
          v53 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
          v54 = v53;
          v55 = *a1[1] + 40 * *(v47 + 48);
          *v55 = *v53;
          if (v55 != v53)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v55 + 8), *(v53 + 16), v53 + 8);
          }

          *(v55 + 32) = *(v54 + 32);
          v56 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::Zero();
          v57 = v56;
          v58 = *v23 + 40 * *(v47 + 48);
          *v58 = *v56;
          if (v58 != v56)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v58 + 8), *(v56 + 16), v56 + 8);
          }

          *(v58 + 32) = *(v57 + 32);
          v59 = *(v47 + 48);
          *(a1[8] + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v59);
          *(a1[11] + 4 * v59) = *(a1 + 28);
          LODWORD(m) = *(v47 + 48);
        }
      }

      v60 = *a1[1];
      v61 = a1[5];
      fst::Times<int,(fst::StringType)1>(&__p, v47 + 8, &v104);
      v62 = NAN;
      if (v119 != -INFINITY)
      {
        v63 = *(v47 + 40);
        v62 = NAN;
        if (v63 != -INFINITY)
        {
          v62 = INFINITY;
          if (v63 != INFINITY && v119 != INFINITY)
          {
            v62 = v119 + v63;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v109, &v104, v62);
      v65 = v60 + 40 * m;
      std::__list_imp<char *>::clear(&v105);
      fst::Plus<int>(v65, &v109, &v120);
      v66 = *(v65 + 32);
      v67 = v111;
      if (v66 != INFINITY)
      {
        if (v111 == INFINITY)
        {
          v67 = *(v65 + 32);
        }

        else if (v66 <= v111)
        {
          v69 = expf(-(v111 - v66));
          v67 = v66 - logf(v69 + 1.0);
        }

        else
        {
          v68 = expf(-(v66 - v111));
          v67 = v67 - logf(v68 + 1.0);
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v104, &v120, v67);
      std::__list_imp<char *>::clear(v121);
      v70 = *v65;
      if (*v65)
      {
        v71 = *(v65 + 24) + 1;
      }

      else
      {
        v71 = 0;
      }

      if (v104)
      {
        v72 = v107 + 1;
      }

      else
      {
        v72 = 0;
      }

      if (v71 == v72)
      {
        v73 = *(a1 + 7);
        v74 = (v65 + 16);
        v75 = v106;
        if (v70)
        {
          v76 = v70 == v104;
        }

        else
        {
          v76 = 0;
        }

        v77 = !v76;
        v78 = 1;
        v79 = v77 ^ 1;
        while (1)
        {
          v80 = *v74;
          if ((v78 & 1) != 0 && !v79)
          {
            break;
          }

          if (v80 == v65 + 8)
          {
            goto LABEL_108;
          }

          if (*(v80 + 16) != *(v75 + 16))
          {
            goto LABEL_104;
          }

          v78 = 0;
          v74 = (v80 + 8);
          v75 = *(v75 + 8);
        }

        if (v70)
        {
          goto LABEL_104;
        }

LABEL_108:
        v83 = *(v65 + 32);
        v84 = v108;
        v85 = v73 + v108;
        v86 = v73 + v83;
        std::__list_imp<char *>::clear(&v105);
        if (v84 <= v86 && v83 <= v85)
        {
          goto LABEL_135;
        }
      }

      else
      {
LABEL_104:
        std::__list_imp<char *>::clear(&v105);
      }

      fst::Plus<int>(v65, &v109, &v120);
      v81 = *(v65 + 32);
      v82 = v111;
      if (v81 != INFINITY)
      {
        if (v111 == INFINITY)
        {
          v82 = *(v65 + 32);
        }

        else if (v81 <= v111)
        {
          v89 = expf(-(v111 - v81));
          v82 = v81 - logf(v89 + 1.0);
        }

        else
        {
          v88 = expf(-(v81 - v111));
          v82 = v82 - logf(v88 + 1.0);
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v104, &v120, v82);
      std::__list_imp<char *>::clear(v121);
      *v65 = v104;
      if (v65 != &v104)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v65 + 8), v106, &v105);
      }

      v90 = v61 + 40 * m;
      *(v65 + 32) = v108;
      std::__list_imp<char *>::clear(&v105);
      fst::Plus<int>(v90, &v109, &v120);
      v91 = *(v90 + 32);
      v92 = v111;
      if (v91 != INFINITY)
      {
        if (v111 == INFINITY)
        {
          v92 = *(v90 + 32);
        }

        else if (v91 <= v111)
        {
          v94 = expf(-(v111 - v91));
          v92 = v91 - logf(v94 + 1.0);
        }

        else
        {
          v93 = expf(-(v91 - v111));
          v92 = v92 - logf(v93 + 1.0);
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v104, &v120, v92);
      std::__list_imp<char *>::clear(v121);
      *v90 = v104;
      if (v90 != &v104)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v90 + 8), v106, &v105);
      }

      *(v90 + 32) = v108;
      std::__list_imp<char *>::clear(&v105);
      if (*v65 == -2 && !*(v65 + 24) || *(v65 + 32) == -INFINITY || *v90 == -2 && !*(v90 + 24) || *(v90 + 32) == -INFINITY)
      {
        *v103 = 1;
        std::__list_imp<char *>::clear(v110);
        v96 = 0;
        goto LABEL_140;
      }

      v95 = **(a1[2] + 16);
      if ((*(a1[8] + ((*(v47 + 48) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v47 + 48)))
      {
        (*(v95 + 40))();
      }

      else
      {
        (*(v95 + 24))();
        *(*v25 + ((*(v47 + 48) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v47 + 48);
      }

LABEL_135:
      std::__list_imp<char *>::clear(v110);
      if (v112[0])
      {
        (*(*v112[0] + 40))(v112[0]);
      }

      else
      {
        ++v114;
      }
    }

    if (v114 < v112[2])
    {
      goto LABEL_59;
    }

LABEL_139:
    v96 = 1;
LABEL_140:
    if (v112[0])
    {
      (*(*v112[0] + 8))(v112[0]);
    }

    else if (v113)
    {
      --*v113;
    }

    std::__list_imp<char *>::clear(&v116);
  }

  while ((v96 & 1) != 0);
}

void sub_1B586A498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  fst::LogMessage::~LogMessage(&a22);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  std::list<int>::list((v7 + 8), (a2 + 2));
  *(v7 + 32) = a2[8];
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B586A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D34E80;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

unint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Init(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "map");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v2 = (*(**(a1 + 136) + 112))(*(a1 + 136));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v2);
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 48) = 0;
  }

  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  *(a1 + 156) = 0;
  if (result == -1)
  {
    *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950000;
  }

  else
  {
    v5 = (*(**(a1 + 136) + 64))(*(a1 + 136), 0x3FFFFFFF0004, 0);
    result = fst::ProjectProperties(v5, 1);
    *(a1 + 8) = *(a1 + 8) & 4 | result & 0x3FFCFFFF0007;
    if (*(a1 + 156) == 2)
    {
      *(a1 + 160) = 0;
    }
  }

  return result;
}

void sub_1B586ACAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (fst::ProjectProperties(0, 1) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D34910;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D35250;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

{
  *a1 = &unk_1F2D34910;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D35250;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B586AEC4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::VectorCacheStore(void *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a1 + 4;
  a1[5] = a1 + 4;
  a1[6] = 0;
  a1[7] = 0;
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  a1[7] = a1[5];
  return a1;
}

void sub_1B586AF98(_Unwind_Exception *a1)
{
  v4 = v3;
  std::__list_imp<char *>::clear(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D35250;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D351D0;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 144);
    if (v3)
    {
      MEMORY[0x1B8C85350](v3, 0xC400A2AC0F1);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v3 = *(a1 + 160);
      if (v3 != -1 && v3 <= v2)
      {
        v5 = v2 + 1;
      }

      else
      {
        v5 = v2;
      }

      if (v5 >= *(a1 + 164))
      {
        *(a1 + 164) = v5 + 1;
      }

      *(a1 + 64) = v5;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= v5)
      {
        *(a1 + 68) = v5 + 1;
      }
    }
  }

  return *(a1 + 64);
}

void *fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = *(a1 + 156);
    if (v6 == 1)
    {
      v8 = *(a1 + 160);
      if (v8 != a2)
      {
        v20 = v8 != -1 && v8 <= a2;
        v21 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v20));
        v40 = 0;
        v41 = v21;
        v42 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()(&v40, &v45);
        if (v45)
        {
          v23 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
          v28 = *v23;
          v22 = v29;
          std::list<int>::list(v29, (v23 + 2));
          v30 = v23[8];
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v28);
        }

        else
        {
          v31 = v46;
          v22 = v32;
          std::list<int>::list(v32, v47);
          v33 = v48;
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v31);
        }

        std::__list_imp<char *>::clear(v22);
        v18 = v47;
        goto LABEL_35;
      }

      v9 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
      v34 = *v9;
      v10 = &v34;
      std::list<int>::list(v35, (v9 + 2));
      v36 = v9[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v34);
    }

    else
    {
      if (v6 != 2)
      {
        v11 = *(a1 + 160);
        v13 = v11 != -1 && v11 <= a2;
        v14 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v13));
        v40 = 0;
        v41 = v14;
        v42 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()(&v40, &v45);
        if (v45)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(&v40, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v40, "ERROR");
          }

          v15 = fst::LogMessage::LogMessage(&v44, &v40);
          v16 = fst::cerr(v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "ArcMapFst: non-zero arc labels for superfinal arc", 49);
          fst::LogMessage::~LogMessage(&v44);
          if (v43 < 0)
          {
            operator delete(v40);
          }

          *(a1 + 8) |= 4uLL;
        }

        v37 = v46;
        std::list<int>::list(v38, v47);
        v39 = v48;
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v37);
        std::__list_imp<char *>::clear(v38);
        v18 = v47;
        goto LABEL_35;
      }

      if (*(a1 + 160) == a2)
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
      }

      else
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
      }

      v17 = v7;
      v25 = *v7;
      v10 = &v25;
      std::list<int>::list(v26, (v7 + 2));
      v27 = v17[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v25);
    }

    v18 = v10 + 2;
LABEL_35:
    std::__list_imp<char *>::clear(v18);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B586B528(_Unwind_Exception *a1)
{
  fst::LogMessage::~LogMessage((v1 - 105));
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  std::__list_imp<char *>::clear((v1 - 88));
  _Unwind_Resume(a1);
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
  v7 = *a3;
  std::list<int>::list(v8, (a3 + 2));
  v5 = a3[8];
  v9 = v5;
  *MutableState = v7;
  if (MutableState != &v7)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((MutableState + 8), v8[1], v8);
    v5 = v9;
  }

  *(MutableState + 32) = v5;
  result = std::__list_imp<char *>::clear(v8);
  *(MutableState + 80) |= 9u;
  return result;
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 88) == 1)
  {
    v5 = *(MutableState + 80);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 80) = v5 | 4;
      v6 = *(MutableState + 64) - *(MutableState + 56) + *(a1 + 112) + 88;
      *(a1 + 112) = v6;
      *(a1 + 104) = 1;
      if (v6 > *(a1 + 96))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 76);
  if (v3 == a2)
  {
    return *(a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 76) = a2;
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 80) |= 4u;
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::reserve((MutableState + 56), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!*(v5 + 84))
    {
      *(a1 + 76) = a2;
      fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Reset(v5);
      result = *(a1 + 80);
      *(result + 80) |= 4u;
      return result;
    }

    *(v5 + 80) &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a1 + 104) == 1)
  {
    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v8 = fst::LogMessage::LogMessage(v45, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GCCacheStore: Enter GC: object = ", 33);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
      v12 = MEMORY[0x1B8C84BB0](v11, a1);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "), free recently cached = ", 26);
      v14 = MEMORY[0x1B8C84BD0](v13, a3);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache size = ", 15);
      v16 = MEMORY[0x1B8C84C30](v15, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", cache frac = ", 15);
      v17 = std::ostream::operator<<();
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", cache limit = ", 16);
      v19 = MEMORY[0x1B8C84C30](v18, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
      fst::LogMessage::~LogMessage(v45);
      if (v50 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v20 = (*(a1 + 96) * a4);
    v21 = *(a1 + 40);
    *(a1 + 56) = v21;
    while (v21 != a1 + 32)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v22 - 1;
      }

      else
      {
        v23 = *(a1 + 76);
      }

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::GetMutableState(a1, v23);
      v25 = *(a1 + 112);
      if (v25 > v20 && !*(MutableState + 84))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v26 = *(MutableState + 80);
LABEL_19:
            if ((v26 & 4) != 0)
            {
              v27 = *(MutableState + 64) - *(MutableState + 56) + 88;
              FstCheck(v27 <= v25, "(size) <= (cache_size_)", "../libquasar/libkaldi/tools/openfst/src/include/fst/cache.h", 730);
              *(a1 + 112) -= v27;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>>::Delete(a1);
            v21 = *(a1 + 56);
            continue;
          }
        }

        else
        {
          v26 = *(MutableState + 80);
          if ((v26 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 80) &= ~8u;
      v21 = *(*(a1 + 56) + 8);
      *(a1 + 56) = v21;
    }

    if ((a3 & 1) != 0 || *(a1 + 112) <= v20)
    {
      v28 = *(a1 + 112);
      if (v20)
      {
        if (v28 > v20)
        {
          v29 = *(a1 + 96);
          do
          {
            v29 *= 2;
            v30 = v28 > 2 * v20;
            v20 *= 2;
          }

          while (v30);
          *(a1 + 96) = v29;
        }
      }

      else if (v28)
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        }

        v31 = fst::LogMessage::LogMessage(&v48, __p);
        v32 = fst::cerr(v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "GCCacheStore:GC: Unable to free all cached states", 49);
        fst::LogMessage::~LogMessage(&v48);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GC(a1, a2, 1, a4);
    }

    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "INFO");
      v33 = fst::LogMessage::LogMessage(&v47, v45);
      v34 = fst::cerr(v33);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "GCCacheStore: Exit GC: object = ", 32);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "(", 1);
      v37 = MEMORY[0x1B8C84BB0](v36, a1);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "), free recently cached = ", 26);
      v39 = MEMORY[0x1B8C84BD0](v38, a3);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", cache size = ", 15);
      v41 = MEMORY[0x1B8C84C30](v40, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", cache frac = ", 15);
      v42 = std::ostream::operator<<();
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", cache limit = ", 16);
      v44 = MEMORY[0x1B8C84C30](v43, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "\n", 1);
      fst::LogMessage::~LogMessage(&v47);
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }
    }
  }
}

void sub_1B586BBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2 = (a1 + 8);
  if (a2 >= ((v4 - v3) >> 3))
  {
    v6 = 0;
    std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(v2, a2 + 1, &v6);
    goto LABEL_5;
  }

  if (!*(v3 + 8 * a2))
  {
LABEL_5:
    operator new();
  }

  return *(v3 + 8 * a2);
}

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Reset(uint64_t a1)
{
  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v3 = result;
  *a1 = *result;
  if (result != a1)
  {
    result = std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + 8), *(result + 16), result + 8);
  }

  *(a1 + 32) = *(v3 + 32);
  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      result = std::__list_imp<char *>::clear((v4 - 40));
      v4 = v6;
    }

    while (v6 != v5);
  }

  *(a1 + 64) = v5;
  return result;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0x6DB6DB6DB6DB6DB7 * ((*(*v5 + 64) - *(*v5 + 56)) >> 3);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v56 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v52);
  while (1)
  {
    if (!v52)
    {
      if (v56 >= v54)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if ((*(*v52 + 24))(v52))
    {
      break;
    }

    if (v52)
    {
      v9 = (*(*v52 + 32))();
      goto LABEL_18;
    }

LABEL_17:
    v9 = (v53 + 16 * v56);
LABEL_18:
    v66 = *v9;
    v10 = HIDWORD(v66);
    v11 = *(a1 + 160);
    if (v11 != -1 && v11 <= SHIDWORD(v66))
    {
      v10 = HIDWORD(v66) + 1;
    }

    if (v10 >= *(a1 + 164))
    {
      *(a1 + 164) = v10 + 1;
    }

    HIDWORD(v66) = v10;
    fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()(&v66, &v59);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100]((MutableState + 56), &v59);
    std::__list_imp<char *>::clear(&v61);
    if (v52)
    {
      (*(*v52 + 40))(v52);
    }

    else
    {
      ++v56;
    }
  }

  if (v52)
  {
    (*(*v52 + 8))();
    goto LABEL_32;
  }

LABEL_30:
  if (v55)
  {
    --*v55;
  }

LABEL_32:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
LABEL_49:
    v24 = *(a1 + 156);
    if (v24 == 1)
    {
      v30 = *(a1 + 160);
      v32 = v30 != -1 && v30 <= a2;
      *&v33 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v32));
      v52 = 0;
      v53 = v33 | 0xFFFFFFFF00000000;
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()(&v52, &v59);
      if (v59)
      {
        v34 = *(a1 + 160);
        if (v34 == -1)
        {
          v34 = *(a1 + 164);
          *(a1 + 160) = v34;
          *(a1 + 164) = v34 + 1;
        }

        v65 = v34;
        v35 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
        std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100]((v35 + 56), &v59);
      }

      v21 = &v61;
      goto LABEL_93;
    }

    if (v24 != 2)
    {
      return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetArcs(a1, a2);
    }

    v25 = *(a1 + 160);
    v27 = v25 != -1 && v25 <= a2;
    *&v28 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v27));
    v52 = 0;
    v53 = v28 | 0xFFFFFFFF00000000;
    fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()(&v52, &v59);
    if (v59)
    {
      v29 = v60;
    }

    else
    {
      v36 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
      v29 = v60;
      if (v60)
      {
        v37 = v63 + 1;
      }

      else
      {
        v37 = 0;
      }

      if (*v36)
      {
        v38 = *(v36 + 24) + 1;
      }

      else
      {
        v38 = 0;
      }

      if (v37 == v38)
      {
        v39 = v62;
        v40 = (v36 + 16);
        v41 = v60 && v60 == *v36;
        v42 = !v41;
        v43 = 1;
        v44 = !v42;
        while (1)
        {
          v45 = *v40;
          if ((v43 & 1) != 0 && !v44)
          {
            break;
          }

          if (v39 == &v61)
          {
            goto LABEL_90;
          }

          if (*(v39 + 16) != *(v45 + 16))
          {
            goto LABEL_91;
          }

          v43 = 0;
          v39 = *(v39 + 8);
          v40 = (v45 + 8);
        }

        if (v60)
        {
          goto LABEL_91;
        }

LABEL_90:
        *&v52 = v64;
        LODWORD(v66) = *(v36 + 32);
        if (v64 == *&v66)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v46 = v59;
    v49 = v29;
    std::list<int>::list(v50, &v61);
    v51 = v64;
    v47 = *(a1 + 160);
    v52 = v46;
    LODWORD(v53) = v49;
    std::list<int>::list(&v54, v50);
    v57 = v51;
    v58 = v47;
    v48 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100]((v48 + 56), &v52);
    std::__list_imp<char *>::clear(&v54);
    std::__list_imp<char *>::clear(v50);
LABEL_92:
    v21 = &v61;
    goto LABEL_93;
  }

  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Final(a1, a2, &v59);
  v14 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  if (v59)
  {
    v15 = v62 + 1;
  }

  else
  {
    v15 = 0;
  }

  if (*v14)
  {
    v16 = *(v14 + 24) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (v15 != v16)
  {
LABEL_47:
    v21 = &v60;
LABEL_93:
    std::__list_imp<char *>::clear(v21);
    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetArcs(a1, a2);
  }

  v17 = v61;
  v18 = (v14 + 16);
  for (i = 1; ; i = 0)
  {
    v20 = *v18;
    if (i)
    {
      if (!v59)
      {
        break;
      }

      if (v59 != *v14)
      {
        goto LABEL_47;
      }
    }

    if (v17 == &v60)
    {
      break;
    }

    if (*(v17 + 16) != *(v20 + 16))
    {
      goto LABEL_47;
    }

    v17 = *(v17 + 8);
    v18 = (v20 + 8);
  }

  LODWORD(v52) = v63;
  LODWORD(v66) = *(v14 + 32);
  v22 = *&v63;
  v23 = *&v66;
  std::__list_imp<char *>::clear(&v60);
  if (v22 == v23)
  {
    goto LABEL_49;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetArcs(a1, a2);
}

void sub_1B586C388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = *(MutableState + 56);
  v6 = *(MutableState + 64) - v5;
  if (v6)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 48);
    do
    {
      v11 = *v9;
      v9 += 14;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 68) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  result = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(a1, a2);
  *(MutableState + 80) |= 0xAu;
  return result;
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 80) & 4) != 0)
  {
    v4 = *(a2 + 64) - *(a2 + 56) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 40);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 48);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D35288;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B586C8FC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::CopyStates(a1, a2);
    *(a1 + 56) = *(a1 + 40);
    *(a1 + 72) = *(a2 + 72);
    v4 = *(a2 + 76);
    *(a1 + 76) = v4;
    if (v4 == -1)
    {
      MutableState = 0;
    }

    else
    {
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>>::Clear(a1);
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      if (*(v4 + 8 * v5))
      {
        operator new();
      }

      v7 = a1[2];
      v6 = a1[3];
      if (v7 >= v6)
      {
        v9 = a1[1];
        v10 = (v7 - v9) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v6 - v9;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 1), v13);
        }

        v14 = (8 * v10);
        *v14 = 0;
        v8 = 8 * v10 + 8;
        v15 = a1[1];
        v16 = a1[2] - v15;
        v17 = v14 - v16;
        memcpy(v14 - v16, v15, v16);
        v18 = a1[1];
        a1[1] = v17;
        a1[2] = v8;
        a1[3] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = 0;
        v8 = (v7 + 1);
      }

      a1[2] = v8;
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = 0;
  *(a1 + 40) = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0> const*>>(a1 + 56, v5, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 3));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B586CC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      *(v9 + 8) = *(a2 + v7 + 8);
      std::list<int>::list((a4 + v7 + 16), a2 + v7 + 16);
      *(v9 + 40) = *(a2 + v7 + 40);
      *(v9 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B586CCF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 40);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 7;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D35338;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B586CDB8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::CheckSuperfinal(uint64_t result)
{
  v1 = *(result + 8);
  if (*(v1 + 156) == 1)
  {
    v2 = result;
    if ((*(result + 44) & 1) == 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = (*(*result + 16))(result);
        if (result)
        {
          return result;
        }

        v1 = *(v2 + 8);
      }

      else if (*(v2 + 32) >= *(v2 + 24))
      {
        return result;
      }

      v3 = (*(**(v1 + 136) + 32))(*(v1 + 136), *(v2 + 40));
      v4 = 0;
      v5 = v3;
      v6 = -1;
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()(&v4, &v7);
      if (v7)
      {
        *(v2 + 44) = 1;
      }

      return std::__list_imp<char *>::clear(v8);
    }
  }

  return result;
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D35338;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D35338;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Next(uint64_t a1)
{
  ++*(a1 + 40);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 16))(result);
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        (*(*v3 + 32))(v3);
LABEL_7:

        return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::CheckSuperfinal(a1);
      }

LABEL_6:
      ++*(a1 + 32);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) < *(a1 + 24))
  {
    goto LABEL_6;
  }

  if (*(a1 + 44) == 1)
  {
    *(a1 + 44) = 0;
  }

  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Reset(uint64_t a1)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;

  return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D35288;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFst(void *a1)
{
  fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B586D7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v21 = v19;
  v22 = (v19 - 5);
  v23 = *v21;
  if (*v21)
  {
    v18[30] = v23;
    operator delete(v23);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(v22);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(v18);
  _Unwind_Resume(a1);
}

void fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFstImpl(uint64_t a1)
{
  fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D35480;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    *(a1 + 240) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(a1 + 192);
  v5 = (a1 + 168);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      result = (*(**(a1 + 136) + 24))(*(a1 + 136));
      if (result == -1)
      {
        return result;
      }

      v3 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
      v6 = *v4;
      std::list<int>::list(v7, (v4 + 2));
      v8 = v4[8];
      v9[0] = v3;
      v9[2] = v6;
      std::list<int>::list(v10, v7);
      v11 = v8;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, v9);
      std::__list_imp<char *>::clear(v10);
      std::__list_imp<char *>::clear(v7);
      *(a1 + 64) = State;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= State)
      {
        *(a1 + 68) = State + 1;
      }
    }
  }

  return *(a1 + 64);
}

void sub_1B586DB18(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 16));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::FindState(uint64_t a1, int *a2)
{
  if ((*(a1 + 148) & 2) != 0)
  {
    goto LABEL_21;
  }

  v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_21;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_21;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_21;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  v24[0] = a2[10];
  v28 = *(v4 + 32);
  v13 = *a2;
  if (*v24 != v28 || v13 == -1)
  {
LABEL_21:
    v15 = std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::find<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>((a1 + 192), a2);
    if (v15)
    {
      return *(v15 + 16);
    }

    else
    {
      v16 = -1431655765 * ((*(a1 + 176) - *(a1 + 168)) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::push_back[abi:ne200100]((a1 + 168), a2);
      v17 = a2[2];
      v24[0] = *a2;
      v24[2] = v17;
      std::list<int>::list(v25, (a2 + 4));
      v26 = a2[10];
      v27 = v16;
      std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::__emplace_unique_key_args<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element const,int>>((a1 + 192), v24);
      std::__list_imp<char *>::clear(v25);
    }
  }

  else
  {
    v19 = v13;
    v20 = *(a1 + 232);
    if (v13 >= ((*(a1 + 240) - v20) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100]((a1 + 232), &fst::kNoStateId);
        v20 = *(a1 + 232);
        v13 = *a2;
        v19 = *a2;
      }

      while (v19 >= (*(a1 + 240) - v20) >> 2);
    }

    if (*(v20 + 4 * v19) == -1)
    {
      v21 = *(a1 + 168);
      v22 = *(a1 + 176);
      v23 = (a1 + 168);
      *(v20 + 4 * v19) = -1431655765 * ((v22 - v21) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::push_back[abi:ne200100](v23, a2);
      v13 = *a2;
      v20 = v23[8];
    }

    return *(v20 + 4 * v13);
  }

  return v16;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element const&>(a1, a2);
  }

  else
  {
    std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element const&>(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = a2[2];
  result = std::list<int>::list((v4 + 16), (a2 + 4));
  *(v4 + 40) = a2[10];
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element const&>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = a2[2];
  std::list<int>::list((v7 + 16), (a2 + 4));
  *(v7 + 40) = a2[10];
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element> &>::~__split_buffer(&v14);
  return v13;
}

void sub_1B586DF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = (a4 + v7);
      *v9 = *(v6 + v7);
      v9[2] = *(v6 + v7 + 8);
      result = std::list<int>::list((a4 + v7 + 16), v6 + v7 + 16);
      v9[10] = *(v6 + v7 + 40);
      v7 += 48;
    }

    while (v8 + 48 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 16));
      v6 += 48;
    }
  }

  return result;
}

void sub_1B586DFC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 6;
      v4 += 48;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = (*(a1 + 168) + 48 * a2);
    if (*v6 == -1)
    {
      v26 = v6[2];
      std::list<int>::list(v27, (v6 + 4));
      v28 = *(v6 + 10);
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v22);
      fst::Times<int,(fst::StringType)0>(v6 + 2, &v22, &v29);
      v7 = *(v6 + 10);
      v8 = NAN;
      if (v7 != -INFINITY)
      {
        v8 = NAN;
        if (v24 != -INFINITY)
        {
          v8 = INFINITY;
          v9 = v24 == INFINITY || v7 == INFINITY;
          v10 = v7 + v24;
          if (!v9)
          {
            v8 = v10;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v26, &v29, v8);
      std::__list_imp<char *>::clear(v30);
      std::__list_imp<char *>::clear(v23);
    }

    LODWORD(v22) = v26;
    std::list<int>::list(v23, v27);
    v24 = v28;
    if (v26)
    {
      v11 = (v27[2] + 1) >= 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = !v11;
    v25 = v12;
    if ((*(a1 + 148) & 1) == 0 || v12)
    {
      v19 = v26;
      v14 = v20;
      std::list<int>::list(v20, v27);
      v21 = v28;
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v19);
    }

    else
    {
      v13 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
      v16 = *v13;
      v14 = v17;
      std::list<int>::list(v17, (v13 + 2));
      v18 = v13[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v16);
    }

    std::__list_imp<char *>::clear(v14);
    std::__list_imp<char *>::clear(v23);
    std::__list_imp<char *>::clear(v27);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Final(a1, a2, a3);
}

void sub_1B586E218(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v1);
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0x6DB6DB6DB6DB6DB7 * ((*(*v5 + 64) - *(*v5 + 56)) >> 3);
}

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(uint64_t a1, int a2)
{
  v3 = *(a1 + 168) + 48 * a2;
  v80 = *v3;
  v81 = *(v3 + 8);
  std::list<int>::list(v82, v3 + 16);
  v83 = *(v3 + 40);
  if (v80 == -1)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 136);
  v79 = 0;
  (*(*v4 + 136))(v4);
  while (1)
  {
    if (!v76)
    {
      if (v79 >= v77[1])
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    if ((*(*v76 + 24))(v76))
    {
      break;
    }

    if (v76)
    {
      v5 = (*(*v76 + 32))(v76);
      goto LABEL_9;
    }

LABEL_8:
    v5 = v77[0] + 56 * v79;
LABEL_9:
    fst::Times<int,(fst::StringType)0>(&v81, v5 + 8, &v57);
    v6 = NAN;
    if (v83 != -INFINITY)
    {
      v7 = *(v5 + 40);
      v6 = NAN;
      if (v7 != -INFINITY)
      {
        v6 = INFINITY;
        if (v7 != INFINITY && v83 != INFINITY)
        {
          v6 = v83 + v7;
        }
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v73, &v57, v6);
    std::__list_imp<char *>::clear(&v58);
    v69 = *&v73;
    std::list<int>::list(v70, v74);
    v71 = v75;
    v10 = *&v73 == 0.0 || (v74[2] + 1) < 2;
    v72 = v10;
    if (*(a1 + 148) & 2) == 0 || (v10)
    {
      v15 = *(v5 + 48);
      v16 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
      v66 = *v16;
      std::list<int>::list(v67, (v16 + 2));
      v68 = v16[8];
      LODWORD(v57) = v15;
      LODWORD(v58) = v66;
      std::list<int>::list(v59, v67);
      v61 = v68;
      LODWORD(v16) = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v67);
      v17 = *v5;
      v63 = v73;
      std::list<int>::list(v64, v74);
      v65 = v75;
      v57 = v17;
      LODWORD(v58) = v63;
      std::list<int>::list(v59, v64);
      v61 = v65;
      LODWORD(v62[0]) = v16;
      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100]((MutableState + 56), &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v64);
    }

    else
    {
      fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Value(&v69, &v57);
      v11 = *(v5 + 48);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Quantize(&v61, &v54, *(a1 + 144));
      LODWORD(v49) = v11;
      LODWORD(v50) = v54;
      std::list<int>::list(v51, v55);
      v52 = v56;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v55);
      v13 = *v5;
      v46 = v57;
      std::list<int>::list(v47, &v58);
      v48 = v60;
      v49 = v13;
      LODWORD(v50) = v46;
      std::list<int>::list(v51, v47);
      v52 = v48;
      v53 = State;
      v14 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100]((v14 + 56), &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v47);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v74);
    if (v76)
    {
      (*(*v76 + 40))(v76);
    }

    else
    {
      ++v79;
    }
  }

  if (v76)
  {
    (*(*v76 + 8))(v76);
    goto LABEL_33;
  }

LABEL_31:
  if (v78)
  {
    --*v78;
  }

LABEL_33:
  if (*(a1 + 148))
  {
    if (v80 == -1)
    {
      goto LABEL_65;
    }

    (*(**(a1 + 136) + 32))(&v57);
    v19 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
    v20 = v57 ? v59[1] + 1 : 0;
    v21 = *v19 ? *(v19 + 24) + 1 : 0;
    if (v20 == v21)
    {
      v22 = v59[0];
      v23 = (v19 + 16);
      if (v57)
      {
        v24 = v57 == *v19;
      }

      else
      {
        v24 = 0;
      }

      v25 = !v24;
      v26 = 1;
      v27 = v25 ^ 1;
      while (1)
      {
        v28 = *v23;
        if ((v26 & 1) != 0 && !v27)
        {
          break;
        }

        if (v22 == &v58)
        {
          goto LABEL_77;
        }

        if (*(v22 + 16) != *(v28 + 16))
        {
          goto LABEL_55;
        }

        v26 = 0;
        v22 = *(v22 + 8);
        v23 = (v28 + 8);
      }

      if (v57)
      {
        goto LABEL_55;
      }

LABEL_77:
      *&v49 = v60;
      v69 = *(v19 + 32);
      v37 = v60;
      v38 = v69;
      std::__list_imp<char *>::clear(&v58);
      if (v37 == v38)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_55:
      std::__list_imp<char *>::clear(&v58);
    }

    if (v80 == -1)
    {
LABEL_65:
      LODWORD(v76) = v81;
      std::list<int>::list(v77, v82);
      *&v79 = v83;
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v57);
      fst::Times<int,(fst::StringType)0>(&v81, &v57, &v49);
      v29 = NAN;
      if (v83 != -INFINITY)
      {
        v29 = NAN;
        if (v60 != -INFINITY)
        {
          v29 = INFINITY;
          if (v60 != INFINITY && v83 != INFINITY)
          {
            v29 = v83 + v60;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v76, &v49, v29);
      std::__list_imp<char *>::clear(&v50);
      std::__list_imp<char *>::clear(&v58);
    }

    v31 = *(a1 + 152);
    v69 = *&v76;
    std::list<int>::list(v70, v77);
    v71 = v79;
    if (v76)
    {
      v32 = v78 + 1 >= 2;
    }

    else
    {
      v32 = 0;
    }

    v33 = !v32;
    v72 = v33;
    if (v32)
    {
      fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Value(&v69, &v57);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Quantize(&v61, &v43, *(a1 + 144));
      LODWORD(v49) = -1;
      LODWORD(v50) = v43;
      std::list<int>::list(v51, v44);
      v52 = v45;
      v34 = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v44);
      v40 = v57;
      std::list<int>::list(v41, &v58);
      v42 = v60;
      v49 = v31;
      LODWORD(v50) = v40;
      std::list<int>::list(v51, v41);
      v52 = v42;
      v53 = v34;
      v35 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100]((v35 + 56), &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v41);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v77);
  }

LABEL_76:
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::SetArcs(a1, a2);
  return std::__list_imp<char *>::clear(v82);
}

void sub_1B586EAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  std::__list_imp<char *>::clear((v39 + 8));
  std::__list_imp<char *>::clear(&a39);
  std::__list_imp<char *>::clear((v40 - 136));
  _Unwind_Resume(a1);
}

void *fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Value@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *a1;
  std::list<int>::list(v38, (a1 + 2));
  if (*a1)
  {
    v4 = (*(a1 + 3) + 1) >= 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  v39 = v5;
  fst::StringFactor<int,(fst::StringType)0>::Value(&v37, &v24);
  v32 = v24;
  v33[0] = v33;
  v33[1] = v33;
  v34 = 0;
  v6 = v27;
  if (v27)
  {
    v8 = v25;
    v7 = v26;
    v9 = *(v25 + 8);
    v10 = *v26;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = v33[0];
    *(v33[0] + 8) = v7;
    *v7 = v11;
    v33[0] = v8;
    *(v8 + 8) = v33;
    v34 = v6;
    v27 = 0;
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v35, &v32, *(a1 + 8));
  std::__list_imp<char *>::clear(v33);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  fst::StringFactor<int,(fst::StringType)0>::Value(&v37, &v24);
  v19 = v28;
  v20[0] = v20;
  v20[1] = v20;
  v21 = 0;
  v12 = v31;
  if (v31)
  {
    v14 = v29;
    v13 = v30;
    v15 = *(v29 + 8);
    v16 = *v30;
    *(v16 + 8) = v15;
    *v15 = v16;
    v17 = v20[0];
    *(v20[0] + 8) = v13;
    *v13 = v17;
    v20[0] = v14;
    *(v14 + 8) = v20;
    v21 = v12;
    v31 = 0;
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::GallicWeight(&v22, &v19, 0.0);
  std::__list_imp<char *>::clear(v20);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  std::pair<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>&,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>&,0>(a2, &v35, &v22);
  std::__list_imp<char *>::clear(v23);
  std::__list_imp<char *>::clear(v36);
  return std::__list_imp<char *>::clear(v38);
}

void sub_1B586EE70(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<char *>::clear((v3 - 120));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

void *fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

uint64_t std::pair<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>&,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>&,0>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  *(a1 + 40) = *a3;
  std::list<int>::list((a1 + 48), (a3 + 2));
  *(a1 + 72) = a3[8];
  return a1;
}

void *fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

void *fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v8 = *a1;
  std::list<int>::list(v9, (a1 + 2));
  v6 = a1[8];
  if ((LODWORD(v6) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v6 = floorf((v6 / a3) + 0.5) * a3;
  }

  *a2 = v8;
  std::list<int>::list((a2 + 8), v9);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v9);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 40);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 48);
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D354D0;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B586F3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    v15[30] = v19;
    operator delete(v19);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,int>>>::~__hash_table(v16 + 24);
  __p = v16;
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheStateIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 56);
    v8 = 0x6DB6DB6DB6DB6DB7 * ((*(v19 + 64) - v7) >> 3);
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 56 * v20 + 48);
      do
      {
        v14 = *v12;
        v12 += 14;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 68) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 68);
    --*(v19 + 84);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

uint64_t *fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 84);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::ArcMap<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  (*(*a2 + 288))(a2, 0);
  v7 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    if ((v7 & 4) != 0)
    {
      v18 = *(*a2 + 192);

      return v18(a2, 4, 4);
    }

    return result;
  }

  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v9 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>(a1) != -1;
    (*(*a2 + 248))(a2, v9);
  }

  LODWORD(v24) = 0;
  (*(*a1 + 128))(a1, &v22);
  while (!v22)
  {
    if (v24 >= v23)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(*a2 + 200))(a2);
    if (v22)
    {
      (*(*v22 + 32))(v22);
    }

    else
    {
      LODWORD(v24) = v24 + 1;
    }
  }

  if (!(*(*v22 + 16))(v22))
  {
    goto LABEL_9;
  }

  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

LABEL_14:
  v33 = 0;
  (*(*a1 + 128))(a1, &v31);
  LODWORD(v10) = -1;
  while (2)
  {
    if (!v31)
    {
      if (v33 >= v32)
      {
        goto LABEL_47;
      }

      goto LABEL_20;
    }

    if (!(*(*v31 + 16))(v31))
    {
      if (v31)
      {
        v11 = (*(*v31 + 24))(v31);
        goto LABEL_21;
      }

LABEL_20:
      v11 = v33;
LABEL_21:
      if (v11 == (*(*a1 + 24))(a1))
      {
        (*(*a2 + 176))(a2, v11);
      }

      v12 = (*(*a1 + 40))(a1, v11);
      (*(*a2 + 256))(a2, v11, v12);
      v26 = 0;
      (*(*a1 + 136))(a1, v11, &v22);
LABEL_24:
      if (v22)
      {
        if ((*(*v22 + 24))(v22))
        {
          if (v22)
          {
            (*(*v22 + 8))();
            goto LABEL_37;
          }

LABEL_35:
          if (v25)
          {
            --*v25;
          }

LABEL_37:
          (*(*a1 + 32))(&v19, a1, v11);
          v22 = 0;
          LODWORD(v23) = v19;
          std::list<int>::list(&v24, v20);
          v27 = v21;
          v28 = -1;
          v29 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()(a3, &v22);
          v30 = v15;
          std::__list_imp<char *>::clear(&v24);
          std::__list_imp<char *>::clear(v20);
          if (v29)
          {
            if (v10 == -1)
            {
              v10 = (*(*a2 + 200))(a2);
              (*(*a2 + 184))(a2, v10, 0.0);
            }

            HIDWORD(v30) = v10;
            (*(*a2 + 208))(a2, v11, &v29);
            (*(*a2 + 184))(a2, v11, INFINITY);
          }

          else
          {
            (*(*a2 + 184))(a2, v11, *&v30);
          }

          if (v31)
          {
            (*(*v31 + 32))(v31);
          }

          else
          {
            ++v33;
          }

          continue;
        }

        if (v22)
        {
          v13 = (*(*v22 + 32))();
          goto LABEL_30;
        }
      }

      else if (v26 >= v24)
      {
        goto LABEL_35;
      }

      v13 = (v23 + 56 * v26);
LABEL_30:
      v29 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()(a3, v13);
      v30 = v14;
      (*(*a2 + 208))(a2, v11, &v29);
      if (v22)
      {
        (*(*v22 + 40))(v22);
      }

      else
      {
        ++v26;
      }

      goto LABEL_24;
    }

    break;
  }

  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

LABEL_47:
  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v17 = v7 & 0x2EBC21080007;
  if (*(a3 + 4))
  {
    v17 = v7 & 0x2EBC21080003 | 4;
  }

  return (*(*a2 + 192))(a2, v17 | v16, 0x3FFFFFFF0007);
}

void sub_1B586FF64(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<char *>::clear((v1 + 8));
  v5 = *(v3 - 104);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

unint64_t fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>::operator()(int *a1, unsigned int *a2)
{
  if (a2[12] != -1)
  {
    goto LABEL_18;
  }

  v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_18;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_18;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_18;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  LODWORD(__p[0]) = a2[10];
  v29[0] = *(v4 + 32);
  if (*__p == v29[0])
  {
    v13 = 0;
    v14 = *a2;
  }

  else
  {
LABEL_18:
    v28 = -1;
    if (!fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>::Extract<(fst::GallicType)1>(a2 + 2, &v27, &v28) || (v14 = *a2, *a2 != a2[1]))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v15 = fst::LogMessage::LogMessage(&v26, __p);
      v16 = fst::cerr(v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "FromGallicMapper: unrepresentable weight: ", 42);
      fst::CompositeWeightWriter::CompositeWeightWriter(v29, v17);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *FLAGS_fst_weight_parentheses;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      fst::CompositeWeightWriter::WriteElement<fst::StringWeight<int,(fst::StringType)1>>(v29, a2 + 2);
      fst::CompositeWeightWriter::WriteElement<fst::LogWeightTpl<float>>(v29, a2 + 10);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *(FLAGS_fst_weight_parentheses + 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " for arc with ilabel = ", 23);
      v19 = MEMORY[0x1B8C84C00](v18, *a2);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", olabel = ", 11);
      v21 = MEMORY[0x1B8C84C00](v20, a2[1]);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", nextstate = ", 14);
      MEMORY[0x1B8C84C00](v22, a2[12]);
      fst::LogMessage::~LogMessage(&v26);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 4) = 1;
      v14 = *a2;
    }

    if (!v14 && v28 && a2[12] == -1)
    {
      v14 = *a1;
    }

    v13 = v28 << 32;
  }

  return v13 | v14;
}

void sub_1B58702D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D354D0;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)0>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D34948;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,std::__unordered_map_hasher<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,kaldi::HmmCacheHash,std::equal_to<std::pair<int,std::vector<int>>>,true>,std::__unordered_map_equal<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,std::equal_to<std::pair<int,std::vector<int>>>,kaldi::HmmCacheHash,true>,std::allocator<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>>>::__emplace_unique_key_args<std::pair<int,std::vector<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<int,std::vector<int>> const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 = v7 + 7853 * v6;
    }

    while (v4 != v5);
  }

  v8 = v6 + 103049 * *a2;
  v9 = v8;
  v10 = a1[1];
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v10 <= v8)
    {
      v13 = v8 % v10;
    }
  }

  else
  {
    v13 = (v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    std::__hash_table<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,std::__unordered_map_hasher<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,kaldi::HmmCacheHash,std::equal_to<std::pair<int,std::vector<int>>>,true>,std::__unordered_map_equal<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>,std::equal_to<std::pair<int,std::vector<int>>>,kaldi::HmmCacheHash,true>,std::allocator<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::pair<int,std::vector<int>> const&>,std::tuple<>>();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= v10)
      {
        v16 %= v10;
      }
    }

    else
    {
      v16 &= v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if (!std::equal_to<std::pair<int,std::vector<int>>>::operator()[abi:ne200100](a1, (v15 + 2), a2))
  {
    goto LABEL_22;
  }

  return v15;
}

void sub_1B587068C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B587074C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::vector<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,std::allocator<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuMatrixBase<float> const*,std::allocator<kaldi::CuMatrixBase<float> const*>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B5870824(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__emplace_unique_key_args<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,std::piecewise_construct_t const&,std::tuple<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const* const&>,std::tuple<>>(void *a1, void *a2)
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

uint64_t std::__tree<int>::__erase_unique<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 28) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  std::__tree<std::string>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void fst::RandGenFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~RandGenFst(void *a1)
{
  fst::ImplToFst<fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B5871034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v18 = *v16;
  if (*v16)
  {
    v15[21] = v18;
    operator delete(v18);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~RandGenFstImpl(void *a1)
{
  fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~RandGenFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~RandGenFstImpl(void *a1)
{
  *a1 = &unk_1F2D35710;
  v3 = a1[20];
  v2 = a1[21];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        MEMORY[0x1B8C85350](v5, 0x1060C401AE92110);
        v3 = a1[20];
        v2 = a1[21];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[17];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[18];
  if (v7)
  {
    std::__tree<int>::destroy(v7 + 24, *(v7 + 32));
    MEMORY[0x1B8C85350](v7, 0x1060C40DCB6D5DELL);
  }

  v8 = a1[20];
  if (v8)
  {
    a1[21] = v8;
    operator delete(v8);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

uint64_t fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Start(uint64_t a1)
{
  if (*(a1 + 60))
  {
    return *(a1 + 64);
  }

  if ((*(*a1 + 32))(a1, 4))
  {
    *(a1 + 60) = 1;
    return *(a1 + 64);
  }

  if (*(a1 + 60))
  {
    return *(a1 + 64);
  }

  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (result != -1)
  {
    v3 = (*(a1 + 168) - *(a1 + 160)) >> 3;
    *(a1 + 64) = v3;
    *(a1 + 60) = 1;
    if (*(a1 + 68) <= v3)
    {
      *(a1 + 68) = v3 + 1;
    }

    operator new();
  }

  return result;
}

float fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Final(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0)
  {
    fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return **v5;
}

uint64_t fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 188);
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  if (v4 == a2)
  {
    *MutableState = 0;
    MutableState[12] |= 9u;

    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

  *MutableState = 2139095040;
  MutableState[12] |= 9u;
  v7 = *(*(a1 + 160) + 8 * a2);
  fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Sample(*(a1 + 144), v7);
  v8 = *(a1 + 136);
  v9 = *v7;
  v35 = 0;
  (*(*v8 + 136))(v8, v9, v33);
  v10 = (*(**(a1 + 136) + 40))(*(a1 + 136), *v7);
  v11 = *(a1 + 144);
  v12 = (v11 + 32);
  v13 = *(v11 + 48);
  if (v13 != v12)
  {
    v14 = v10;
    while (1)
    {
      v15 = v13[4];
      v16 = v13[5];
      v17 = v16 / *(v7 + 1);
      if (v15 < v14)
      {
        break;
      }

      if (*(a1 + 184) == 1)
      {
        if ((*(a1 + 185) & 1) == 0)
        {
          v17 = v17 * *(a1 + 152);
        }

        v19 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
        v20 = log(v17);
        *v19 = -v20;
        *(v19 + 48) |= 9u;
      }

      else
      {
        if (*(a1 + 188) == -1)
        {
          *(a1 + 188) = (*(a1 + 168) - *(a1 + 160)) >> 3;
          operator new();
        }

        for (; v16; --v16)
        {
          v21 = *(a1 + 188);
          *&v32 = 0;
          DWORD2(v32) = 0;
          HIDWORD(v32) = v21;
          v22 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
          std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v22 + 24, &v32);
        }
      }

      v28 = *(a1 + 144);
      v29 = *(v28 + 48);
      v30 = v29[1];
      if (v30)
      {
        do
        {
          v13 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v13 = v29[2];
          v31 = *v13 == v29;
          v29 = v13;
        }

        while (!v31);
      }

      *(v28 + 48) = v13;
      if (v13 == (v28 + 32))
      {
        goto LABEL_32;
      }
    }

    if (v33[0])
    {
      (*(*v33[0] + 64))(v33[0], v15);
      if (v33[0])
      {
        v18 = (*(*v33[0] + 32))(v33[0]);
        goto LABEL_23;
      }

      v23 = v35;
    }

    else
    {
      v35 = v13[4];
      v23 = v15;
    }

    v18 = (v33[1] + 16 * v23);
LABEL_23:
    v24 = 0.0;
    if (*(a1 + 184) == 1)
    {
      v25 = log(v17);
      v24 = -v25;
    }

    v26 = (*(a1 + 168) - *(a1 + 160)) >> 3;
    *&v32 = *v18;
    *(&v32 + 1) = __PAIR64__(v26, LODWORD(v24));
    v27 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v27 + 24, &v32);
    operator new();
  }

LABEL_32:
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  result = v33[0];
  if (v33[0])
  {
    return (*(*v33[0] + 8))(v33[0]);
  }

  if (v34)
  {
    --*v34;
  }

  return result;
}

void sub_1B58717D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  else if (a15)
  {
    --*a15;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Sample(uint64_t *a1, unsigned int *a2)
{
  v4 = a1 + 4;
  std::__tree<int>::destroy((a1 + 3), a1[4]);
  a1[3] = v4;
  a1[5] = 0;
  *v4 = 0;
  if (!(*(**a1 + 40))(*a1, *a2) && (LODWORD(v9) = (*(**a1 + 32))(*a1, *a2), LODWORD(v8) = 2139095040, *&v9 == INFINITY) || *(a2 + 2) == *(a1 + 4))
  {
    result = 0;
  }

  else
  {
    if (*(a2 + 1))
    {
      v5 = 0;
      do
      {
        v8 = fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()(a1[1], *a1, *a2);
        v9 = &v8;
        v6 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>((a1 + 3), &v8);
        ++v6[5];
        ++v5;
      }

      while (v5 < *(a2 + 1));
    }

    result = 1;
  }

  a1[6] = a1[3];
  return result;
}

unint64_t fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = rand();
  v6 = (*(*a2 + 40))(a2, a3);
  if ((*(*a2 + 32))(a2, a3) == INFINITY)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 1;
  }

  return (vcvtd_n_f64_s32(v5, 0x1FuLL) * v7);
}

uint64_t fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

void *fst::ImplToFst<fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D35760;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B5871DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v18 = *v16;
  if (*v16)
  {
    v15[21] = v18;
    operator delete(v18);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheStateIterator<fst::RandGenFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::RandGenFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 68) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 68);
    --*(v19 + 52);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

uint64_t *fst::ArcIterator<fst::RandGenFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::RandGenVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
{
  fst::RandGenVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitVisit(a2, a1);
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    memset(&v8, 0, sizeof(v8));
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::MemoryPool(v4, 64);
  }

  return result;
}

void sub_1B58727D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::RandGenVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InitVisit(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  (*(**(a1 + 8) + 224))(*(a1 + 8));
  v4 = *(a1 + 8);
  v5 = (*(*a2 + 112))(a2);
  (*(*v4 + 280))(v4, v5);
  v6 = *(a1 + 8);
  v7 = (*(*a2 + 120))(a2);
  (*(*v6 + 288))(v6, v7);
  result = (*(*a2 + 64))(a2, 4, 0);
  if (result)
  {
    result = (*(**(a1 + 8) + 192))(*(a1 + 8), 4, 4);
  }

  *(a1 + 24) = *(a1 + 16);
  return result;
}

void fst::RandGenVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::FinishState(void *a1, uint64_t a2, int a3)
{
  if (a3 != -1 && (*(**a1 + 32))(*a1) == INFINITY)
  {
    a1[3] -= 16;
  }
}

uint64_t fst::RandGenVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::TreeArc(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(**a1 + 32))(*a1, *(a3 + 12)) == INFINITY)
  {
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100]((a1 + 2), a3);
  }

  else
  {
    fst::RandGenVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::OutputPath(a1);
  }

  return 1;
}

uint64_t fst::RandGenVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::BackArc(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "RandGenVisitor: cyclic input", 28);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  (*(**(a1 + 8) + 192))(*(a1 + 8), 4, 4);
  return 0;
}

void sub_1B5872BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::RandGenVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::OutputPath(uint64_t a1)
{
  if ((*(**(a1 + 8) + 24))(*(a1 + 8)) == -1)
  {
    v2 = (*(**(a1 + 8) + 200))(*(a1 + 8));
    (*(**(a1 + 8) + 176))(*(a1 + 8), v2);
  }

  v3 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v4 = v3;
  if (*(a1 + 24) == *(a1 + 16))
  {
    v7 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (*(**(a1 + 8) + 200))(*(a1 + 8));
      v8 = *(a1 + 8);
      v10 = *(*(a1 + 16) + v5);
      v11 = 0;
      v12 = v7;
      (*(*v8 + 208))(v8, v4, &v10);
      ++v6;
      v5 += 16;
      v4 = v7;
    }

    while (v6 < (*(a1 + 24) - *(a1 + 16)) >> 4);
  }

  return (*(**(a1 + 8) + 184))(*(a1 + 8), v7, 0.0);
}

void *fst::ImplToFst<fst::RandGenFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSampler<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::UniformArcSelector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D35760;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

std::string *quasar::LmLoader2::LmLoader2(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    v4 = *(a2 + 1);
    if (v4)
    {
      std::string::__init_copy_ctor_external(this, *a2, v4);
      goto LABEL_7;
    }

LABEL_6:
    *(&this->__r_.__value_.__s + 23) = 14;
    strcpy(this, "lm-personalize");
    goto LABEL_7;
  }

  if (!*(a2 + 23))
  {
    goto LABEL_6;
  }

  v3 = *a2;
  this->__r_.__value_.__r.__words[2] = *(a2 + 2);
  *&this->__r_.__value_.__l.__data_ = v3;
LABEL_7:
  this[1].__r_.__value_.__s.__data_[0] = 0;
  this[4].__r_.__value_.__s.__data_[0] = 0;
  *&this[1].__r_.__value_.__r.__words[1] = 0u;
  *&this[2].__r_.__value_.__l.__data_ = 0u;
  *&this[2].__r_.__value_.__r.__words[2] = 0u;
  this[3].__r_.__value_.__s.__data_[8] = 0;
  return this;
}

void quasar::LmLoader2::~LmLoader2(quasar::LmLoader2 *this)
{
  if (*(this + 96) == 1)
  {
    v2 = *(this + 11);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void quasar::LmLoader2::fetchOrLoadModel(uint64_t a1, int a2, quasar::SystemConfig *this)
{
  SpeechModelInfo = quasar::SystemConfig::getSpeechModelInfo(this);
  if (*(SpeechModelInfo + 143) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(SpeechModelInfo + 120), *(SpeechModelInfo + 128));
  }

  else
  {
    v6 = *(SpeechModelInfo + 120);
  }

  quasar::SystemConfig::getPtreeOptional(this, a1);
}

void sub_1B5873458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (*(v15 - 105) < 0)
  {
    operator delete(*(v15 - 128));
  }

  _Unwind_Resume(exception_object);
}

void quasar::LmLoader2::loadForRecognition(quasar::SystemConfig *this@<X2>, uint64_t a2@<X0>, int a3@<W1>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (quasar::gLogLevel >= 4)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "task=", 5);
    v13 = *(a4 + 23);
    if (v13 >= 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    if (v13 >= 0)
    {
      v15 = *(a4 + 23);
    }

    else
    {
      v15 = *(a4 + 8);
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " appName=", 9);
    v18 = *(a5 + 23);
    if (v18 >= 0)
    {
      v19 = a5;
    }

    else
    {
      v19 = *a5;
    }

    if (v18 >= 0)
    {
      v20 = *(a5 + 23);
    }

    else
    {
      v20 = *(a5 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v26);
  }

  v21 = *(a4 + 23);
  if (v21 < 0)
  {
    if (*(a4 + 8) != 9)
    {
      goto LABEL_24;
    }

    a4 = *a4;
  }

  else if (v21 != 9)
  {
    goto LABEL_24;
  }

  if (*a4 != 0x6F69746174636944 || *(a4 + 8) != 110)
  {
    goto LABEL_24;
  }

  v23 = *(a5 + 23);
  if (v23 < 0)
  {
    if (*(a5 + 8) != 19)
    {
      goto LABEL_24;
    }

    a5 = *a5;
  }

  else if (v23 != 19)
  {
    goto LABEL_24;
  }

  if (*a5 == 0x6C7070612E6D6F63 && *(a5 + 8) == 0x656C69626F4D2E65 && *(a5 + 11) == 0x534D53656C69626FLL)
  {
    quasar::LmLoader2::fetchOrLoadModel(a2, a3, this);
  }

LABEL_24:
  if (quasar::gLogLevel >= 4)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Not loading custom-lm because task or app doesn't support it.", 61);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v26);
  }

  *a6 = 0;
  a6[1] = 0;
}

void quasar::corrective_reranking::TransformerClassifier::TransformerClassifier(std::string *this, const quasar::corrective_reranking::TransformerClassifierConfig *a2)
{
  v3 = quasar::corrective_reranking::TransformerClassifierConfig::TransformerClassifierConfig(this, a2);
  *&v3[6].__r_.__value_.__r.__words[1] = 0u;
  *&v3[7].__r_.__value_.__r.__words[2] = 0u;
  *&v3[8].__r_.__value_.__r.__words[1] = 0u;
  *&v3[7].__r_.__value_.__l.__data_ = 0u;
  LODWORD(v3[9].__r_.__value_.__l.__data_) = 1065353216;
  if (*(a2 + 12) >= *(a2 + 13))
  {
    operator new();
  }

  memset(v4, 0, sizeof(v4));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "maxLength must be equal or bigger than truncationLength", 55);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
}

void sub_1B5873888(_Unwind_Exception *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v3);
  std::unique_ptr<quasar::corrective_reranking::TransformerTokenUtilities>::reset[abi:ne200100](v2 + 3, 0);
  v5 = *(v1 + 168);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::unique_ptr<quasar::TransformerForClassification>::reset[abi:ne200100](v2, 0);
  quasar::corrective_reranking::TransformerClassifierConfig::~TransformerClassifierConfig(v1);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::TransformerClassifier::~TransformerClassifier(quasar::corrective_reranking::TransformerClassifier *this)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 184);
  std::unique_ptr<quasar::corrective_reranking::TransformerTokenUtilities>::reset[abi:ne200100](this + 22, 0);
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<quasar::TransformerForClassification>::reset[abi:ne200100](this + 19, 0);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_1B5873DF0(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(a1);
}

float quasar::corrective_reranking::TransformerClassifier::sequenceClassification(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 184), a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  kaldi::Matrix<float>::Matrix(v10);
  kaldi::Matrix<float>::Matrix(v9);
  v6 = *(a1 + 160);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
  }

  else
  {
    v12 = *a2;
  }

  memset(v8, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v8, &v12, &v13, 1uLL);
  quasar::TransformerTokenizer::encode(v6, v8, v10, v9, 1, *(a1 + 48), 1);
  v11 = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  kaldi::Matrix<float>::Matrix(v8);
  quasar::TransformerForClassification::run(*(a1 + 152), 0, v10, v9, v8);
  LODWORD(v12.__r_.__value_.__l.__data_) = *(v8[0] + 4);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::string const&,float &>((a1 + 184), a2);
  v5 = *&v12.__r_.__value_.__l.__data_;
  kaldi::Matrix<float>::~Matrix(v8);
  kaldi::Matrix<float>::~Matrix(v9);
  kaldi::Matrix<float>::~Matrix(v10);
  return v5;
}

void sub_1B58740CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

void sub_1B5874458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v56 - 65) < 0)
  {
    operator delete(*(v56 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B58746CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  std::pair<std::string,std::string>::~pair(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  quasar::corrective_reranking::TextEdit::~TextEdit(&a22);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::TransformerClassifier::classifyCapitalizationForText(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(&v1, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    v1 = *(a1 + 104);
  }

  quasar::corrective_reranking::tokenize();
}

void sub_1B5874864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  a10 = &a16;
  std::vector<quasar::corrective_reranking::TokenClassification>::__destroy_vector::operator()[abi:ne200100](&a10);
  a16 = &a19;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B5874E60(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5874EBCLL);
}

void quasar::corrective_reranking::TransformerClassifier::classifyCapitalization(int a1, uint64_t a2, quasar::corrective_reranking::Parse *a3, uint64_t *a4)
{
  quasar::corrective_reranking::TextEdit::TextEdit(v51, a3);
  quasar::corrective_reranking::TextEdit::textSurroundingEditLocation(v51, a4, &v45);
  if ((v47 & 0x80u) == 0)
  {
    v6 = v47;
  }

  else
  {
    v6 = v46;
  }

  if ((v50 & 0x80u) == 0)
  {
    v7 = v50;
  }

  else
  {
    v7 = v49;
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  quasar::corrective_reranking::TextEdit::onText(v51, a4, &__p);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v10 == size)
  {
    if (!v10)
    {
      v21 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if (!v21)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "editedText == textEdit.onText(displayedText)", 44);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        quasar::pySlice<std::basic_string<char32_t>>(a2, 0, v6, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = __p.__r_.__value_.__l.__size_;
        }

        v23 = v47;
        if ((v47 & 0x80u) != 0)
        {
          v23 = v46;
        }

        if (v22 == v23)
        {
          if (!v22)
          {
            v32 = 1;
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_54:
              if (!v32)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "pySlice(editedText, 0, editedRangeStartIndex) == precedingEditText", 66);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
              }

              quasar::pySlice<std::basic_string<char32_t>>(a2, v8 - v7, 0x7FFFFFFF, &__p);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v33 = __p.__r_.__value_.__l.__size_;
              }

              v34 = v50;
              if ((v50 & 0x80u) != 0)
              {
                v34 = v49;
              }

              if (v33 == v34)
              {
                if (!v33)
                {
                  v43 = 1;
                  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_77:
                    if (v43)
                    {
                      quasar::corrective_reranking::getTextAroundSpan(a2, v6, v8 - v7 - v6);
                    }

                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "pySlice(editedText, editedRangeEndIndex) == followingEditText", 61);
                    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
                  }

LABEL_76:
                  operator delete(__p.__r_.__value_.__l.__data_);
                  goto LABEL_77;
                }

                if ((v50 & 0x80u) == 0)
                {
                  v35 = &v48;
                }

                else
                {
                  v35 = v48;
                }

                p_p = __p.__r_.__value_.__r.__words[0];
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                v37 = v33 - 1;
                do
                {
                  v39 = p_p->__r_.__value_.__s.__data_[0];
                  p_p = (p_p + 4);
                  v38 = v39;
                  v41 = *v35++;
                  v40 = v41;
                  v19 = v37-- != 0;
                  v42 = v19;
                  v43 = v40 == v38;
                }

                while (v40 == v38 && (v42 & 1) != 0);
              }

              else
              {
                v43 = 0;
              }

              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            }

LABEL_53:
            operator delete(__p.__r_.__value_.__l.__data_);
            goto LABEL_54;
          }

          v24 = &v45;
          if ((v47 & 0x80u) != 0)
          {
            v24 = v45;
          }

          v25 = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__p;
          }

          v26 = v22 - 1;
          do
          {
            v28 = v25->__r_.__value_.__s.__data_[0];
            v25 = (v25 + 4);
            v27 = v28;
            v30 = *v24++;
            v29 = v30;
            v19 = v26-- != 0;
            v31 = v19;
            v32 = v29 == v27;
          }

          while (v29 == v27 && (v31 & 1) != 0);
        }

        else
        {
          v32 = 0;
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

LABEL_31:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_32;
    }

    v12 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &__p;
    }

    if (v9 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v14 = v10 - 1;
    do
    {
      v16 = *v13++;
      v15 = v16;
      v18 = v12->__r_.__value_.__s.__data_[0];
      v12 = (v12 + 4);
      v17 = v18;
      v19 = v14-- != 0;
      v20 = v19;
      v21 = v17 == v15;
    }

    while (v17 == v15 && (v20 & 1) != 0);
  }

  else
  {
    v21 = 0;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_31;
}

void sub_1B58755D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  std::pair<std::string,std::string>::~pair(&a53);
  quasar::corrective_reranking::TextEdit::~TextEdit(&a59);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::TransformerClassifier::clearCache(quasar::corrective_reranking::TransformerClassifier *this)
{
  if (quasar::gLogLevel >= 5)
  {
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Clearing transformer classifier cache, size=", 44);
    MEMORY[0x1B8C84C30](v2, *(this + 26));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v3);
  }

  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(this + 184);
}

std::string *quasar::corrective_reranking::TransformerClassifierConfig::TransformerClassifierConfig(std::string *this, const quasar::corrective_reranking::TransformerClassifierConfig *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    this[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
    *&this[2].__r_.__value_.__r.__words[1] = v6;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v7 = *(a2 + 5);
    this[4].__r_.__value_.__r.__words[0] = *(a2 + 12);
    *&this[3].__r_.__value_.__r.__words[1] = v7;
  }

  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v8 = *(a2 + 104);
    this[5].__r_.__value_.__r.__words[0] = *(a2 + 15);
    *&this[4].__r_.__value_.__r.__words[1] = v8;
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v9 = *(a2 + 8);
    this[6].__r_.__value_.__r.__words[0] = *(a2 + 18);
    *&this[5].__r_.__value_.__r.__words[1] = v9;
  }

  return this;
}

void sub_1B58757C4(_Unwind_Exception *a1)
{
  std::pair<std::string const,quasar::TranslationPairSetting>::~pair(v1 + 56);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

quasar::TransformerForClassification *std::unique_ptr<quasar::TransformerForClassification>::reset[abi:ne200100](quasar::TransformerForClassification **a1, quasar::TransformerForClassification *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::TransformerForClassification::~TransformerForClassification(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

quasar::corrective_reranking::TransformerTokenUtilities *std::unique_ptr<quasar::corrective_reranking::TransformerTokenUtilities>::reset[abi:ne200100](quasar::corrective_reranking::TransformerTokenUtilities **a1, quasar::corrective_reranking::TransformerTokenUtilities *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::corrective_reranking::TransformerTokenUtilities::~TransformerTokenUtilities(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

std::string *std::__shared_ptr_emplace<quasar::TransformerTokenizer>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::TransformerTokenizer>,0>(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D358C0;
  std::allocator<quasar::TransformerTokenizer>::construct[abi:ne200100]<quasar::TransformerTokenizer,std::string const&>(&v4, a1 + 1, a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::TransformerTokenizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D358C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::TransformerTokenizer>::construct[abi:ne200100]<quasar::TransformerTokenizer,std::string const&>(uint64_t a1, std::string *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v14, "[UNK]");
  std::string::basic_string[abi:ne200100]<0>(&v12, "[SEP]");
  std::string::basic_string[abi:ne200100]<0>(v10, "[PAD]");
  std::string::basic_string[abi:ne200100]<0>(v8, "[CLS]");
  std::string::basic_string[abi:ne200100]<0>(__p, "[MASK]");
  quasar::TransformerTokenizer::TransformerTokenizer(a2, a3, 1, 1, &v14, &v12, v10, v8, __p, 1, v5, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }
}

void sub_1B5875B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::corrective_reranking::TokenClassification>::__construct_one_at_end[abi:ne200100]<quasar::corrective_reranking::TokenClassification&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  v7 = *(a2 + 6);
  *(v4 + 56) = *(a2 + 14);
  *(v4 + 48) = v7;
  *(a1 + 8) = v4 + 64;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::string const&,float &>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__construct_node_hash<std::string const&,float &>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B5875EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5875F80(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::corrective_reranking::TokenClassification>::__emplace_back_slow_path<std::basic_string<char32_t>,std::vector<float>,quasar::corrective_reranking::TextRange>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1[1] - *a1) >> 6;
  v5 = v4 + 1;
  if ((v4 + 1) >> 58)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - *a1;
  if (v8 >> 5 > v5)
  {
    v5 = v8 >> 5;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFC0)
  {
    v9 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v5;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>>(a1, v9);
  }

  v16 = 0;
  v17 = v4 << 6;
  quasar::corrective_reranking::TokenClassification::TokenClassification(v4 << 6, a2, a3, a4);
  v18 = ((v4 << 6) + 64);
  v10 = a1[1];
  v11 = (v4 << 6) + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::TokenClassification>,quasar::corrective_reranking::TokenClassification*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::corrective_reranking::TokenClassification>::~__split_buffer(&v16);
  return v15;
}

void sub_1B58760B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::corrective_reranking::TokenClassification>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<quasar::corrective_reranking::TokenClassification>::__vdeallocate(void **a1)
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
        v3 -= 64;
        std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TargetRange>>::destroy[abi:ne200100](a1, v3);
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