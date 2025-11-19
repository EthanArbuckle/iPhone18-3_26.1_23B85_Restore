void sub_1B5839298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (__p)
  {
    *v33 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 7;
    if (a1 + 7 != a2)
    {
      v4 = 0;
      v5 = a1;
      do
      {
        v6 = v3;
        v39 = v5[7];
        v40 = *(v5 + 16);
        v41 = *(v5 + 68);
        v43 = 0;
        v44 = 0;
        v42 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v42, v5[10], v5[11], (v5[11] - v5[10]) >> 2);
        v45 = *(v5 + 26);
        v32 = *v5;
        v33 = *(v5 + 2);
        v34 = *(v5 + 12);
        v36 = 0;
        v37 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v5[3], v5[4], (v5[4] - v5[3]) >> 2);
        v38 = *(v5 + 12);
        v7 = v39;
        v8 = v32;
        if (__p)
        {
          v36 = __p;
          operator delete(__p);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v7 < v8)
        {
          v25 = *v6;
          v26 = *(v5 + 16);
          v27 = *(v5 + 68);
          v29 = 0;
          v30 = 0;
          v28 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v28, v5[10], v5[11], (v5[11] - v5[10]) >> 2);
          v31 = *(v5 + 26);
          for (i = v4; ; i -= 56)
          {
            *(a1 + i + 56) = *(a1 + i);
            fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(a1 + i + 64, a1 + i + 8);
            *(a1 + i + 104) = *(a1 + i + 48);
            if (!i)
            {
              v11 = a1;
              goto LABEL_19;
            }

            v18 = v25;
            v19 = v26;
            v20 = v27;
            v22 = 0;
            v23 = 0;
            v21 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, v28, v29, (v29 - v28) >> 2);
            v24 = v31;
            v13 = *(a1 + i - 56);
            v15 = 0;
            v16 = 0;
            v14 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v14, *(a1 + i - 32), *(a1 + i - 24), (*(a1 + i - 24) - *(a1 + i - 32)) >> 2);
            v17 = *(a1 + i - 8);
            v10 = v18;
            if (v14)
            {
              v15 = v14;
              operator delete(v14);
            }

            if (v21)
            {
              v22 = v21;
              operator delete(v21);
            }

            if (v10 >= v13)
            {
              break;
            }
          }

          v11 = (a1 + i);
LABEL_19:
          *v11 = v25;
          *(a1 + i + 8) = v26;
          *(v11 + 12) = v27;
          if (v11 != &v25)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v11 + 3, v28, v29, (v29 - v28) >> 2);
          }

          *(v11 + 12) = v31;
          if (v28)
          {
            v29 = v28;
            operator delete(v28);
          }
        }

        v3 = v6 + 7;
        v4 += 56;
        v5 = v6;
      }

      while (v6 + 7 != a2);
    }
  }
}

void sub_1B58395A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    v2 = a1;
    v3 = (a1 + 56);
    if ((a1 + 56) != a2)
    {
      v4 = (a1 + 104);
      do
      {
        v5 = v3;
        v40 = v2[7];
        v41 = *(v2 + 16);
        v42 = *(v2 + 68);
        v44 = 0;
        v45 = 0;
        v43 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v43, v2[10], v2[11], (v2[11] - v2[10]) >> 2);
        v46 = *(v2 + 26);
        v33 = *v2;
        v34 = *(v2 + 2);
        v35 = *(v2 + 12);
        v37 = 0;
        v38 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v2[3], v2[4], (v2[4] - v2[3]) >> 2);
        v39 = *(v2 + 12);
        v6 = v40;
        v7 = v33;
        if (__p)
        {
          v37 = __p;
          operator delete(__p);
        }

        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (v6 < v7)
        {
          v26 = *v5;
          v27 = *(v2 + 16);
          v28 = *(v2 + 68);
          v30 = 0;
          v31 = 0;
          v29 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v29, v2[10], v2[11], (v2[11] - v2[10]) >> 2);
          v32 = *(v2 + 26);
          v8 = v4;
          do
          {
            *(v8 - 6) = *(v8 - 13);
            fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=((v8 - 10), (v8 - 24));
            *v8 = *(v8 - 14);
            v19 = v26;
            v20 = v27;
            v21 = v28;
            v23 = 0;
            v24 = 0;
            v22 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, v29, v30, (v30 - v29) >> 2);
            v25 = v32;
            v14 = *(v8 - 20);
            v16 = 0;
            v17 = 0;
            v9 = *(v8 - 17);
            v10 = *(v8 - 16);
            v15 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v15, v9, v10, (v10 - v9) >> 2);
            v18 = *(v8 - 28);
            v11 = v19;
            if (v15)
            {
              v16 = v15;
              operator delete(v15);
            }

            if (v22)
            {
              v23 = v22;
              operator delete(v22);
            }

            v8 -= 14;
          }

          while (v11 < v14);
          *(v8 - 6) = v26;
          v12 = v8 - 12;
          v12[2] = v27;
          *(v12 + 3) = v28;
          if (v8 - 12 != &v26)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v8 - 3, v29, v30, (v30 - v29) >> 2);
          }

          *v8 = v32;
          if (v29)
          {
            v30 = v29;
            operator delete(v29);
          }
        }

        v3 = v5 + 7;
        v4 += 14;
        v2 = v5;
      }

      while (v5 + 7 != a2);
    }
  }
}

void sub_1B5839890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &>(unint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v107 = *a1;
  v4 = a1 + 8;
  v108 = *(a1 + 8);
  v109 = *(a1 + 12);
  v111 = 0;
  v112 = 0;
  v110 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v110, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v113 = *(v3 + 48);
  v100 = v107;
  v101 = v108;
  v102 = v109;
  v104 = 0;
  v105 = 0;
  v103 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v103, v110, v111, (v111 - v110) >> 2);
  v23 = v4;
  v106 = v113;
  v93 = *(a2 - 7);
  v94 = *(a2 - 12);
  v95 = *(a2 - 44);
  v97 = 0;
  v98 = 0;
  v5 = *(a2 - 4);
  v6 = *(a2 - 3);
  v96 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v96, v5, v6, (v6 - v5) >> 2);
  v99 = *(a2 - 2);
  v7 = v100;
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  v24 = v3;
  if (v7 >= v93)
  {
    for (v3 += 56; v3 < a2; v3 += 56)
    {
      v72 = v107;
      v73 = v108;
      v74 = v109;
      v76 = 0;
      v77 = 0;
      v75 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v75, v110, v111, (v111 - v110) >> 2);
      v78 = v113;
      v65 = *v3;
      v66 = *(v3 + 8);
      v67 = *(v3 + 12);
      v69 = 0;
      v70 = 0;
      v11 = *(v3 + 24);
      v12 = *(v3 + 32);
      v68 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v68, v11, v12, (v12 - v11) >> 2);
      v71 = *(v3 + 48);
      v13 = v72;
      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v13 < v65)
      {
        break;
      }
    }
  }

  else
  {
    do
    {
      v86 = v107;
      v87 = v108;
      v88 = v109;
      v90 = 0;
      v91 = 0;
      v89 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v89, v110, v111, (v111 - v110) >> 2);
      v92 = v113;
      v79 = *(v3 + 56);
      v80 = *(v3 + 64);
      v81 = *(v3 + 68);
      v83 = 0;
      v84 = 0;
      v8 = *(v3 + 80);
      v9 = *(v3 + 88);
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v8, v9, (v9 - v8) >> 2);
      v85 = *(v3 + 104);
      v10 = v86;
      if (__p)
      {
        v83 = __p;
        operator delete(__p);
      }

      if (v89)
      {
        v90 = v89;
        operator delete(v89);
      }

      v3 += 56;
    }

    while (v10 >= v79);
  }

  if (v3 < a2)
  {
    do
    {
      v58 = v107;
      v59 = v108;
      v60 = v109;
      v62 = 0;
      v63 = 0;
      v61 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v61, v110, v111, (v111 - v110) >> 2);
      v64 = v113;
      v51 = *(a2 - 7);
      v52 = *(a2 - 12);
      v53 = *(a2 - 44);
      v55 = 0;
      v56 = 0;
      v14 = *(a2 - 4);
      v15 = *(a2 - 3);
      v54 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v54, v14, v15, (v15 - v14) >> 2);
      v57 = *(a2 - 2);
      v16 = v58;
      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      a2 -= 7;
    }

    while (v16 < v51);
  }

  while (v3 < a2)
  {
    std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(v3, a2);
    do
    {
      v44 = v107;
      v45 = v108;
      v46 = v109;
      v48 = 0;
      v49 = 0;
      v47 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v47, v110, v111, (v111 - v110) >> 2);
      v50 = v113;
      v37 = *(v3 + 56);
      v38 = *(v3 + 64);
      v39 = *(v3 + 68);
      v41 = 0;
      v42 = 0;
      v17 = *(v3 + 80);
      v18 = *(v3 + 88);
      v40 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v40, v17, v18, (v18 - v17) >> 2);
      v43 = *(v3 + 104);
      v19 = v44;
      v20 = v37;
      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      v3 += 56;
    }

    while (v19 >= v20);
    do
    {
      v30 = v107;
      v31 = v108;
      v32 = v109;
      v34 = 0;
      v35 = 0;
      v33 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, v110, v111, (v111 - v110) >> 2);
      v36 = v113;
      v25 = *(a2 - 7);
      v27 = 0;
      v28 = 0;
      v26 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v26, *(a2 - 4), *(a2 - 3), (*(a2 - 3) - *(a2 - 4)) >> 2);
      v29 = *(a2 - 2);
      v21 = v30;
      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      a2 -= 7;
    }

    while (v21 < v25);
  }

  if (v3 - 56 != v24)
  {
    *v24 = *(v3 - 56);
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(v23, v3 - 48);
    *(v24 + 48) = *(v3 - 8);
  }

  *(v3 - 56) = v107;
  *(v3 - 48) = v108;
  *(v3 - 44) = v109;
  if ((v3 - 48) != &v108)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v3 - 32), v110, v111, (v111 - v110) >> 2);
  }

  *(v3 - 8) = v113;
  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  return v3;
}

void sub_1B5839E74(_Unwind_Exception *a1)
{
  v3 = *(v1 - 176);
  if (v3)
  {
    *(v1 - 168) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 120);
  if (v4)
  {
    *(v1 - 112) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> *,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &>(uint64_t *a1, uint64_t *a2)
{
  v91 = *a1;
  v21 = (a1 + 1);
  v92 = *(a1 + 2);
  v93 = *(a1 + 12);
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v94, a1[3], a1[4], (a1[4] - a1[3]) >> 2);
  v4 = 0;
  v22 = a1;
  v97 = *(a1 + 12);
  do
  {
    v84 = v22[v4 + 7];
    v85 = v22[v4 + 8];
    v86 = *(&v22[v4 + 8] + 4);
    v88 = 0;
    v89 = 0;
    v87 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v87, v22[v4 + 10], v22[v4 + 11], (v22[v4 + 11] - v22[v4 + 10]) >> 2);
    v90 = v22[v4 + 13];
    v77 = v91;
    v78 = v92;
    v79 = v93;
    v81 = 0;
    v82 = 0;
    v80 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v80, v94, v95, (v95 - v94) >> 2);
    v83 = v97;
    v5 = v84;
    if (v80)
    {
      v81 = v80;
      operator delete(v80);
    }

    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    v4 += 7;
  }

  while (v5 < v77);
  v6 = &v22[v4];
  if (v4 == 7)
  {
    if (v6 >= a2)
    {
      i = a2;
    }

    else
    {
      for (i = a2 - 7; ; i -= 7)
      {
        v70 = *i;
        v71 = *(i + 2);
        v72 = *(i + 12);
        v74 = 0;
        v75 = 0;
        v73 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v73, i[3], i[4], (i[4] - i[3]) >> 2);
        v76 = *(i + 12);
        v63 = v91;
        v64 = v92;
        v65 = v93;
        v67 = 0;
        v68 = 0;
        v66 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v66, v94, v95, (v95 - v94) >> 2);
        v69 = v97;
        v10 = v70;
        if (v66)
        {
          v67 = v66;
          operator delete(v66);
        }

        if (v73)
        {
          v74 = v73;
          operator delete(v73);
        }

        if (v10 < v63 || v6 >= i)
        {
          break;
        }
      }
    }
  }

  else
  {
    i = a2;
    do
    {
      v8 = *(i - 7);
      i -= 7;
      v56 = v8;
      v57 = *(i + 2);
      v58 = *(i + 12);
      v60 = 0;
      v61 = 0;
      v59 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v59, i[3], i[4], (i[4] - i[3]) >> 2);
      v62 = *(a2 - 2);
      v49 = v91;
      v50 = v92;
      v51 = v93;
      v53 = 0;
      v54 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v94, v95, (v95 - v94) >> 2);
      v55 = v97;
      v9 = v56;
      if (__p)
      {
        v53 = __p;
        operator delete(__p);
      }

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      a2 = i;
    }

    while (v9 >= v49);
  }

  if (v6 >= i)
  {
    v12 = &v22[v4];
  }

  else
  {
    v11 = i;
    v12 = &v22[v4];
    do
    {
      std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(v12, v11);
      v13 = v12;
      do
      {
        v14 = *(v12 + 56);
        v12 += 56;
        v42 = v14;
        v43 = *(v12 + 8);
        v44 = *(v12 + 12);
        v46 = 0;
        v47 = 0;
        v45 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v45, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 2);
        v48 = *(v13 + 104);
        v35 = v91;
        v36 = v92;
        v37 = v93;
        v39 = 0;
        v40 = 0;
        v38 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v38, v94, v95, (v95 - v94) >> 2);
        v41 = v97;
        v15 = v42;
        v16 = v35;
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        v13 = v12;
      }

      while (v15 < v16);
      v17 = v11;
      do
      {
        v18 = *(v11 - 56);
        v11 -= 56;
        v28 = v18;
        v29 = *(v11 + 8);
        v30 = *(v11 + 12);
        v32 = 0;
        v33 = 0;
        v31 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v31, *(v11 + 24), *(v11 + 32), (*(v11 + 32) - *(v11 + 24)) >> 2);
        v34 = *(v17 - 8);
        v23 = v91;
        v25 = 0;
        v26 = 0;
        v24 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v24, v94, v95, (v95 - v94) >> 2);
        v27 = v97;
        v19 = v28;
        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        if (v31)
        {
          v32 = v31;
          operator delete(v31);
        }

        v17 = v11;
      }

      while (v19 >= v23);
    }

    while (v12 < v11);
  }

  if ((v12 - 56) != v22)
  {
    *v22 = *(v12 - 56);
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(v21, v12 - 48);
    *(v22 + 12) = *(v12 - 8);
  }

  *(v12 - 56) = v91;
  *(v12 - 48) = v92;
  *(v12 - 44) = v93;
  if ((v12 - 48) != &v92)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v12 - 32), v94, v95, (v95 - v94) >> 2);
  }

  *(v12 - 8) = v97;
  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  return v12 - 56;
}

void sub_1B583A464(_Unwind_Exception *a1)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(uint64_t a1, uint64_t a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = a2 - 56;
        v59 = *(a2 - 56);
        v60 = *(a2 - 48);
        v61 = *(a2 - 44);
        v63 = 0;
        v64 = 0;
        v62 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v62, *(a2 - 32), *(a2 - 24), (*(a2 - 24) - *(a2 - 32)) >> 2);
        v65 = *(v5 + 48);
        v52 = *a1;
        v53 = *(a1 + 8);
        v54 = *(a1 + 12);
        v56 = 0;
        v57 = 0;
        v6 = *(a1 + 24);
        v7 = *(a1 + 32);
        v55 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v55, v6, v7, (v7 - v6) >> 2);
        v58 = *(a1 + 48);
        v8 = v59;
        if (v55)
        {
          v56 = v55;
          operator delete(v55);
        }

        if (v62)
        {
          v63 = v62;
          operator delete(v62);
        }

        if (v8 < v52)
        {
          std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1, v5);
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(a1, a1 + 56, a2 - 56);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(a1, a1 + 56, a1 + 112, a2 - 56);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56);
      return 1;
  }

LABEL_15:
  v9 = a1 + 112;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,0>(a1, a1 + 56, a1 + 112);
  v10 = a1 + 168;
  if (a1 + 168 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v45 = *v10;
    v46 = *(v10 + 8);
    v47 = *(v10 + 12);
    v49 = 0;
    v50 = 0;
    v48 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v48, *(v10 + 24), *(v10 + 32), (*(v10 + 32) - *(v10 + 24)) >> 2);
    v51 = *(v10 + 48);
    v38 = *v9;
    v39 = *(v9 + 8);
    v40 = *(v9 + 12);
    v42 = 0;
    v43 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 2);
    v44 = *(v9 + 48);
    v13 = v45;
    v14 = v38;
    if (__p)
    {
      v42 = __p;
      operator delete(__p);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v13 < v14)
    {
      v31 = *v10;
      v32 = *(v10 + 8);
      v33 = *(v10 + 12);
      v35 = 0;
      v36 = 0;
      v34 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v34, *(v10 + 24), *(v10 + 32), (*(v10 + 32) - *(v10 + 24)) >> 2);
      v37 = *(v10 + 48);
      for (i = v11; ; i -= 56)
      {
        *(a1 + i + 168) = *(a1 + i + 112);
        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(a1 + i + 176, a1 + i + 120);
        *(a1 + i + 216) = *(a1 + i + 160);
        if (i == -112)
        {
          v17 = a1;
          goto LABEL_32;
        }

        v24 = v31;
        v25 = v32;
        v26 = v33;
        v28 = 0;
        v29 = 0;
        v27 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v27, v34, v35, (v35 - v34) >> 2);
        v30 = v37;
        v19 = *(a1 + i + 56);
        v21 = 0;
        v22 = 0;
        v20 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, *(a1 + i + 80), *(a1 + i + 88), (*(a1 + i + 88) - *(a1 + i + 80)) >> 2);
        v23 = *(a1 + i + 104);
        v16 = v24;
        if (v20)
        {
          v21 = v20;
          operator delete(v20);
        }

        if (v27)
        {
          v28 = v27;
          operator delete(v27);
        }

        if (v16 >= v19)
        {
          break;
        }
      }

      v17 = a1 + i + 112;
LABEL_32:
      *v17 = v31;
      *(a1 + i + 120) = v32;
      *(v17 + 12) = v33;
      if (v17 != &v31)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v17 + 24), v34, v35, (v35 - v34) >> 2);
      }

      *(v17 + 48) = v37;
      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (++v12 == 8)
      {
        return v10 + 56 == a2;
      }
    }

    v9 = v10;
    v11 += 56;
    v10 += 56;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

void sub_1B583A950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v43 = *(v41 - 120);
  if (v43)
  {
    *(v41 - 112) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(uint64_t *a1, uint64_t *a2)
{
  v5 = (a1 + 1);
  v4 = *(a1 + 2);
  v6 = *a1;
  v7 = v4;
  v8 = *(a1 + 12);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, a1[3], a1[4], (a1[4] - a1[3]) >> 2);
  v12 = *(a1 + 12);
  *a1 = *a2;
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(v5, (a2 + 1));
  *(a1 + 12) = *(a2 + 12);
  *a2 = v6;
  *(a2 + 2) = v7;
  *(a2 + 12) = v8;
  if (&v6 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a2 + 3, __p, v10, (v10 - __p) >> 2);
  }

  *(a2 + 12) = v12;
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_1B583AA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    v19 = a2 - a1;
    if (a2 - a1 >= 57)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 56 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(a1, a4, v8, v11);
        v11 -= 7;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v25 = *v12;
        v26 = *(v12 + 8);
        v27 = *(v12 + 12);
        v29 = 0;
        v30 = 0;
        v28 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v28, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 2);
        v31 = *(v12 + 48);
        v20 = *a1;
        v22 = 0;
        v23 = 0;
        v13 = *(a1 + 24);
        v14 = *(a1 + 32);
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v13, v14, (v14 - v13) >> 2);
        v24 = *(a1 + 48);
        v15 = v25;
        if (__p)
        {
          v22 = __p;
          operator delete(__p);
        }

        if (v28)
        {
          v29 = v28;
          operator delete(v28);
        }

        if (v15 < v20)
        {
          std::swap[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(v12, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(a1, a4, v8, a1);
        }

        v12 += 56;
      }

      while (v12 != a3);
    }

    if (v19 >= 57)
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * (v19 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(a1, v6, a4, v16);
        v6 -= 56;
      }

      while (v16-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_1B583ACA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v23 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - a1) >> 3))
    {
      v8 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 3)) | 1;
      v9 = (a1 + 56 * v8);
      v10 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 3) + 2;
      if (v10 < a3)
      {
        v78 = *v9;
        v79 = *(v9 + 2);
        v80 = *(v9 + 12);
        v82 = 0;
        v83 = 0;
        v81 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v81, v9[3], v9[4], (v9[4] - v9[3]) >> 2);
        v11 = v9[7];
        v84 = *(v9 + 12);
        v71 = v11;
        v72 = *(v9 + 16);
        v73 = *(v9 + 68);
        v75 = 0;
        v76 = 0;
        v74 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v74, v9[10], v9[11], (v9[11] - v9[10]) >> 2);
        v77 = *(v9 + 26);
        v12 = v78;
        if (v74)
        {
          v75 = v74;
          operator delete(v74);
        }

        if (v81)
        {
          v82 = v81;
          operator delete(v81);
        }

        if (v12 < v71)
        {
          v9 += 7;
          v8 = v10;
        }
      }

      v64 = *v9;
      v65 = *(v9 + 2);
      v66 = *(v9 + 12);
      v68 = 0;
      v69 = 0;
      v67 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v67, v9[3], v9[4], (v9[4] - v9[3]) >> 2);
      v70 = *(v9 + 12);
      v57 = *v5;
      v58 = *(v5 + 2);
      v59 = *(v5 + 12);
      v61 = 0;
      v62 = 0;
      v13 = v5[3];
      v14 = v5[4];
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v13, v14, (v14 - v13) >> 2);
      v63 = *(v5 + 12);
      v15 = v64;
      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      if (v15 >= v57)
      {
        v50 = *v5;
        v51 = *(v5 + 2);
        v52 = *(v5 + 12);
        v54 = 0;
        v55 = 0;
        v53 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v53, v5[3], v5[4], (v5[4] - v5[3]) >> 2);
        v56 = *(v5 + 12);
        do
        {
          v16 = v9;
          *v5 = *v9;
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=((v5 + 1), (v9 + 1));
          *(v5 + 12) = *(v9 + 12);
          if (v23 < v8)
          {
            break;
          }

          v17 = 2 * v8;
          v8 = (2 * v8) | 1;
          v9 = (a1 + 56 * v8);
          v18 = v17 + 2;
          if (v17 + 2 < a3)
          {
            v43 = *v9;
            v44 = *(v9 + 2);
            v45 = *(v9 + 12);
            v47 = 0;
            v48 = 0;
            v46 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v46, v9[3], v9[4], (v9[4] - v9[3]) >> 2);
            v19 = v9[7];
            v49 = *(v9 + 12);
            v36 = v19;
            v37 = *(v9 + 16);
            v38 = *(v9 + 68);
            v40 = 0;
            v41 = 0;
            v39 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v39, v9[10], v9[11], (v9[11] - v9[10]) >> 2);
            v42 = *(v9 + 26);
            v20 = v43;
            v21 = v36;
            if (v39)
            {
              v40 = v39;
              operator delete(v39);
            }

            if (v46)
            {
              v47 = v46;
              operator delete(v46);
            }

            if (v20 < v21)
            {
              v9 += 7;
              v8 = v18;
            }
          }

          v29 = *v9;
          v30 = *(v9 + 2);
          v31 = *(v9 + 12);
          v33 = 0;
          v34 = 0;
          v32 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v32, v9[3], v9[4], (v9[4] - v9[3]) >> 2);
          v35 = *(v9 + 12);
          v24 = v50;
          v26 = 0;
          v27 = 0;
          v25 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v25, v53, v54, (v54 - v53) >> 2);
          v28 = v56;
          v22 = v29;
          if (v25)
          {
            v26 = v25;
            operator delete(v25);
          }

          if (v32)
          {
            v33 = v32;
            operator delete(v32);
          }

          v5 = v16;
        }

        while (v22 >= v24);
        *v16 = v50;
        *(v16 + 2) = v51;
        *(v16 + 12) = v52;
        if (v16 != &v50)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v16 + 3, v53, v54, (v54 - v53) >> 2);
        }

        *(v16 + 12) = v56;
        if (v53)
        {
          v54 = v53;
          operator delete(v53);
        }
      }
    }
  }
}

void sub_1B583B130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v10 = *a1;
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    v14 = 0;
    v15 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
    v16 = *(a1 + 48);
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(a1, a3, a4);
    v9 = v8;
    if (v8 == a2 - 56)
    {
      *v8 = v10;
      *(v8 + 8) = v11;
      *(v8 + 12) = v12;
      if (v8 != &v10)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v8 + 24), __p, v14, (v14 - __p) >> 2);
      }

      *(v9 + 48) = v16;
    }

    else
    {
      *v8 = *(a2 - 56);
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(v8 + 8, a2 - 48);
      *(v9 + 48) = *(a2 - 8);
      *(a2 - 56) = v10;
      *(a2 - 48) = v11;
      *(a2 - 44) = v12;
      if ((a2 - 48) != &v11)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a2 - 32), __p, v14, (v14 - __p) >> 2);
      }

      *(a2 - 8) = v16;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(a1, v9 + 56, a3, 0x6DB6DB6DB6DB6DB7 * ((v9 + 56 - a1) >> 3));
    }

    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B583B330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    v8 = a1 + 56 * v5;
    a1 = v8 + 56;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v19 = *(v8 + 56);
      v20 = *(v8 + 64);
      v21 = *(v8 + 68);
      v23 = 0;
      v24 = 0;
      v22 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, *(v8 + 80), *(v8 + 88), (*(v8 + 88) - *(v8 + 80)) >> 2);
      v25 = *(v8 + 104);
      v11 = v8 + 112;
      v14 = *(v8 + 112);
      v16 = 0;
      v17 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v8 + 136), *(v8 + 144), (*(v8 + 144) - *(v8 + 136)) >> 2);
      v18 = *(v8 + 160);
      v12 = v19;
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }

      if (v22)
      {
        v23 = v22;
        operator delete(v22);
      }

      if (v12 < v14)
      {
        a1 = v11;
        v5 = v10;
      }
    }

    *v7 = *a1;
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(v7 + 8, a1 + 8);
    *(v7 + 48) = *(a1 + 48);
  }

  while (v5 <= v6);
  return a1;
}

void sub_1B583B4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> &,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 56 * (v4 >> 1));
    v39 = *v8;
    v40 = *(v8 + 2);
    v41 = *(v8 + 12);
    v43 = 0;
    v44 = 0;
    v42 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v42, v8[3], v8[4], (v8[4] - v8[3]) >> 2);
    v45 = *(v8 + 12);
    v9 = (a2 - 56);
    v32 = *(a2 - 56);
    v33 = *(a2 - 48);
    v34 = *(a2 - 44);
    v36 = 0;
    v37 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 - 32), *(a2 - 24), (*(a2 - 24) - *(a2 - 32)) >> 2);
    v38 = *(a2 - 8);
    v10 = v39;
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v10 < v32)
    {
      v25 = *(a2 - 56);
      v26 = *(a2 - 48);
      v27 = *(a2 - 44);
      v29 = 0;
      v30 = 0;
      v28 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v28, *(a2 - 32), *(a2 - 24), (*(a2 - 24) - *(a2 - 32)) >> 2);
      v31 = *(a2 - 8);
      do
      {
        v11 = v8;
        *v9 = *v8;
        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=((v9 + 1), (v8 + 1));
        *(v9 + 12) = *(v8 + 12);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 56 * v7);
        v18 = *v8;
        v19 = *(v8 + 2);
        v20 = *(v8 + 12);
        v22 = 0;
        v23 = 0;
        v21 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, v8[3], v8[4], (v8[4] - v8[3]) >> 2);
        v24 = *(v8 + 12);
        v13 = v25;
        v15 = 0;
        v16 = 0;
        v14 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v14, v28, v29, (v29 - v28) >> 2);
        v17 = v31;
        v12 = v18;
        if (v14)
        {
          v15 = v14;
          operator delete(v14);
        }

        if (v21)
        {
          v22 = v21;
          operator delete(v21);
        }

        v9 = v11;
      }

      while (v12 < v13);
      *v11 = v25;
      *(v11 + 2) = v26;
      *(v11 + 12) = v27;
      if (v11 != &v25)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v11 + 3, v28, v29, (v29 - v28) >> 2);
      }

      *(v11 + 12) = v31;
      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }
    }
  }
}

void sub_1B583B764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::PairWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::One(void)::one;
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 224))(a2);
  v4 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v4);
  v5 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v5);
  v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    if ((v6 & 4) != 0)
    {
      v17 = *(*a2 + 192);

      return v17(a2, 4, 4);
    }

    return result;
  }

  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1) != 0;
    (*(*a2 + 248))(a2, v8);
  }

  HIDWORD(v41) = 0;
  (*(*a1 + 128))(a1, &v39);
  while (!v39)
  {
    if (SHIDWORD(v41) >= v40)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(*a2 + 200))(a2);
    if (v39)
    {
      (*(*v39 + 32))(v39);
    }

    else
    {
      ++HIDWORD(v41);
    }
  }

  if (!(*(*v39 + 16))(v39))
  {
    goto LABEL_9;
  }

  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

LABEL_14:
  v46 = 0;
  (*(*a1 + 128))(a1, &v44);
  while (2)
  {
    if (!v44)
    {
      if (v46 >= v45)
      {
        goto LABEL_63;
      }

      goto LABEL_20;
    }

    if (!(*(*v44 + 16))(v44))
    {
      if (v44)
      {
        v9 = (*(*v44 + 24))(v44);
        goto LABEL_21;
      }

LABEL_20:
      v9 = v46;
LABEL_21:
      if (v9 == (*(*a1 + 24))(a1))
      {
        (*(*a2 + 176))(a2, v9);
      }

      v10 = (*(*a1 + 40))(a1, v9);
      (*(*a2 + 256))(a2, v9, v10);
      v36 = 0;
      (*(*a1 + 136))(a1, v9, &v33);
LABEL_24:
      if (v33)
      {
        if ((*(*v33 + 24))(v33))
        {
          if (v33)
          {
            (*(*v33 + 8))();
            goto LABEL_39;
          }

LABEL_37:
          if (__p)
          {
            --*__p;
          }

LABEL_39:
          (*(*a1 + 32))(&v29, a1, v9);
          v33 = 0;
          LODWORD(v34) = v29;
          *(&v34 + 4) = v30;
          v36 = 0;
          v37 = 0;
          __p = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v31, v32, (v32 - v31) >> 2);
          v38 = -1;
          fst::RmWeightMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::operator()(&v33, &v39);
          if (__p)
          {
            v36 = __p;
            operator delete(__p);
          }

          if (v31)
          {
            v32 = v31;
            operator delete(v31);
          }

          if (v39)
          {
            v12 = FLAGS_fst_error_fatal;
            if (FLAGS_fst_error_fatal == 1)
            {
              std::string::basic_string[abi:ne200100]<0>(v26, "FATAL");
              v13 = fst::LogMessage::LogMessage(&v28, v26);
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(v23, "ERROR");
              v13 = fst::LogMessage::LogMessage(&v25, v23);
            }

            v14 = fst::cerr(v13);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ArcMap: non-zero arc labels for superfinal arc", 46);
            if (v12)
            {
              fst::LogMessage::~LogMessage(&v28);
              if (v27 < 0)
              {
                v15 = v26[0];
                goto LABEL_52;
              }
            }

            else
            {
              fst::LogMessage::~LogMessage(&v25);
              if (v24 < 0)
              {
                v15 = v23[0];
LABEL_52:
                operator delete(v15);
              }
            }

            (*(*a2 + 192))(a2, 4, 4);
          }

          v18 = v40;
          v19 = v41;
          v21 = 0;
          v22 = 0;
          v20 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, v42, v43, (v43 - v42) >> 2);
          (*(*a2 + 184))(a2, v9, &v18);
          if (v20)
          {
            v21 = v20;
            operator delete(v20);
          }

          if (v42)
          {
            v43 = v42;
            operator delete(v42);
          }

          if (v44)
          {
            (*(*v44 + 32))(v44);
          }

          else
          {
            ++v46;
          }

          continue;
        }

        if (v33)
        {
          v11 = (*(*v33 + 32))();
LABEL_30:
          fst::RmWeightMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::operator()(v11, &v39);
          (*(*a2 + 208))(a2, v9, &v39);
          if (v42)
          {
            v43 = v42;
            operator delete(v42);
          }

          if (v33)
          {
            (*(*v33 + 40))(v33);
          }

          else
          {
            ++v36;
          }

          goto LABEL_24;
        }
      }

      else if (v36 >= *(&v34 + 1))
      {
        goto LABEL_37;
      }

      v11 = v34 + 56 * v36;
      goto LABEL_30;
    }

    break;
  }

  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

LABEL_63:
  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  return (*(*a2 + 192))(a2, v6 & 0x3FFCFFFF0007 | v16 | 0x200000000, 0x3FFFFFFF0007);
}

void sub_1B583C1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  v47 = *(v45 - 144);
  if (v47)
  {
    *(v45 - 136) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 112);
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  _Unwind_Resume(exception_object);
}

void fst::RmWeightMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::operator()(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v8);
  v20 = *(a1 + 8);
  v19 = v8;
  if (v20 == v8 && (v4 = *(a1 + 16), v20 = *(a1 + 12), v19 = v4, v18 = v9, v17 = v10, v20 == v9) && v19 == v17 && (v5 = *(a1 + 24), v6 = *(a1 + 32) - v5, v6 == v12 - __p) && !memcmp(v5, __p, v6))
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v13);
  }

  else
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v13);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v7 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v13;
  *(a2 + 12) = v14;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 24, v15, v16, (v16 - v15) >> 2);
  *(a2 + 48) = v7;
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_1B583C444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestPath<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4)
  {
    if (v4 == 1 && (*(a4 + 35) & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      __p = 0;
      v12 = 0;
      if (fst::SingleShortestPath<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1, a3, a4, &v12, &v9))
      {
        fst::SingleShortestPathBacktrace<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1, a2, &v9, v12);
      }

      else
      {
        (*(*a2 + 192))(a2, 4, 4);
      }

      if (v9)
      {
        v10 = v9;
        operator delete(v9);
      }
    }

    else
    {
      if ((*(a4 + 33) & 1) != 0 || (fst::ShortestDistance<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1, a3, a4), a3[1] - *a3 != 40) || fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Member(*a3))
      {
        fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::VectorFst();
      }

      v8 = *(*a2 + 192);

      v8(a2, 4, 4);
    }
  }
}

void sub_1B583C8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~ImplToFst(&a25);
  a14 = &a30;
  std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v35 = *(v33 - 144);
  if (v35)
  {
    *(v33 - 136) = v35;
    operator delete(v35);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~ImplToFst((v33 - 120));
  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1, uint64_t a2)
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
      if ((v4 & 0x200000000) == 0)
      {
        v6 = 0;
        v5[0] = v3;
        v5[1] = 0;
        v5[2] = 0;
        v5[3] = &v6;
        fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a2, v5);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B583D260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v10 = *(a3 + 8) - *a3;
  if (v10)
  {
    v11 = v10 >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    bzero(*a3, 4 * v11);
  }

  v56 = 0;
  (*(*a1 + 128))(a1, &v54);
  while (1)
  {
    result = v54;
    if (!v54)
    {
      if (v56 >= v55)
      {
        return result;
      }

LABEL_11:
      v14 = v56;
      goto LABEL_12;
    }

    v13 = (*(*v54 + 16))(v54);
    result = v54;
    if (v13)
    {
      break;
    }

    if (!v54)
    {
      goto LABEL_11;
    }

    v14 = (*(*v54 + 24))(v54);
LABEL_12:
    v53 = 0;
    (*(*a1 + 136))(a1, v14, v51);
    while (1)
    {
      if (!v51[0])
      {
        if (v53 >= v51[2])
        {
          goto LABEL_75;
        }

        goto LABEL_18;
      }

      if ((*(*v51[0] + 24))(v51[0]))
      {
        break;
      }

      if (v51[0])
      {
        v15 = (*(*v51[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v15 = v51[1] + 56 * v53;
LABEL_19:
      v16 = *(*a2 + 4 * v14);
      if (v16 == *(*a2 + 4 * *(v15 + 48)))
      {
        v17 = *a3;
        if (!a4)
        {
          goto LABEL_24;
        }

        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v46);
        v18 = (v15 + 8);
        v19 = fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()(a4, v15 + 8, &v46);
        if (__p)
        {
          v50 = __p;
          operator delete(__p);
        }

        if (v19)
        {
LABEL_24:
          v20 = 1;
          goto LABEL_25;
        }

        if ((v17[v16] | 2) == 2)
        {
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v46);
          v41 = *v18;
          v60 = v46;
          if (v41 == v46 && (v29 = *(v15 + 16), v41 = *(v15 + 12), v60 = v29, v59 = v47, v58 = v48, v41 == v47) && v60 == v58 && (v30 = *(v15 + 24), v31 = *(v15 + 32) - v30, v32 = __p, v31 == v50 - __p) && !memcmp(v30, __p, v31))
          {
            v20 = 2;
            if (v32)
            {
              goto LABEL_58;
            }
          }

          else
          {
            fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v41);
            v60 = *v18;
            v59 = v41;
            if (v60 != v41 || (v33 = *(v15 + 16), v60 = *(v15 + 12), v59 = v33, v58 = v42, v57 = v43, v60 != v42) || v59 != v57)
            {
              v20 = 3;
              goto LABEL_55;
            }

            v37 = *(v15 + 24);
            v38 = *(v15 + 32) - v37;
            v34 = v44;
            if (v38 == v45 - v44)
            {
              if (!memcmp(v37, v44, v38))
              {
                v20 = 2;
              }

              else
              {
                v20 = 3;
              }

LABEL_55:
              v34 = v44;
              if (v44)
              {
LABEL_56:
                v45 = v34;
                operator delete(v34);
              }
            }

            else
            {
              v20 = 3;
              if (v44)
              {
                goto LABEL_56;
              }
            }

            v32 = __p;
            if (__p)
            {
LABEL_58:
              v50 = v32;
              operator delete(v32);
            }
          }

LABEL_25:
          v17[v16] = v20;
        }

        *a5 = 0;
      }

      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v46);
      v41 = *(v15 + 8);
      v60 = v46;
      if (v41 != v46 || (v21 = *(v15 + 16), v41 = *(v15 + 12), v60 = v21, v59 = v47, v58 = v48, v41 != v47) || v60 != v58 || (v22 = *(v15 + 24), v23 = *(v15 + 32) - v22, v24 = __p, v23 != v50 - __p) || memcmp(v22, __p, v23))
      {
        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v41);
        v60 = *(v15 + 8);
        v59 = v41;
        v25.n128_f32[0] = v60;
        if (v60 != v41 || (v26 = *(v15 + 16), v60 = *(v15 + 12), v59 = v26, v58 = v42, v57 = v43, v25.n128_f32[0] = v60, v60 != v42) || (v25.n128_f32[0] = v59, v59 != v57))
        {
          v27 = 1;
          goto LABEL_36;
        }

        v35 = *(v15 + 24);
        v36 = *(v15 + 32) - v35;
        v28 = v44;
        if (v36 == v45 - v44)
        {
          v27 = memcmp(v35, v44, v36) != 0;
LABEL_36:
          v28 = v44;
          if (v44)
          {
LABEL_37:
            v45 = v28;
            operator delete(v28);
          }
        }

        else
        {
          v27 = 1;
          if (v44)
          {
            goto LABEL_37;
          }
        }

        v24 = __p;
        if (!__p)
        {
          goto LABEL_40;
        }

LABEL_39:
        v50 = v24;
        operator delete(v24);
        goto LABEL_40;
      }

      v27 = 0;
      if (v24)
      {
        goto LABEL_39;
      }

LABEL_40:
      if (v27)
      {
        *a6 = 0;
      }

      if (v51[0])
      {
        (*(*v51[0] + 40))(v51[0], v25);
      }

      else
      {
        ++v53;
      }
    }

    if (v51[0])
    {
      (*(*v51[0] + 8))();
      goto LABEL_77;
    }

LABEL_75:
    if (v52)
    {
      --*v52;
    }

LABEL_77:
    if (v54)
    {
      (*(*v54 + 32))(v54);
    }

    else
    {
      ++v56;
    }
  }

  if (v54)
  {
    return (*(*v54 + 8))(v54);
  }

  return result;
}

void sub_1B583D9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = *(v25 - 128);
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1)
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
  fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>();
}

void sub_1B583DBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
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

void sub_1B583E3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::TopOrderVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::FinishVisit(uint64_t **a1)
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

BOOL fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(a2, a3, &v15);
  v23 = v15;
  v5 = *a2;
  v22 = *a2;
  if (v15 == v22 && (v23 = v16, v22 = v17, v6 = *(a2 + 4), v7 = *(a2 + 8), v21 = v6, v20 = v7, v16 == v6) && v22 == v20 && (v8 = v19 - __p, v10 = a2 + 16, v9 = *(a2 + 16), v19 - __p == *(v10 + 8) - v9) && !memcmp(__p, v9, v19 - __p))
  {
    v23 = v5;
    v22 = *a3;
    v11 = v5 != v22 || (v23 = v6, v22 = v7, v13 = *(a3 + 8), v21 = *(a3 + 4), v20 = v13, v6 != v21) || v22 != v20 || (v14 = *(a3 + 16), v8 != *(a3 + 24) - v14) || memcmp(v9, v14, v8) != 0;
  }

  else
  {
    v11 = 0;
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return v11;
}

uint64_t fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>@<X0>(float *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  if (!fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v22, a1, a2))
  {
    if (fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v22, a2, v4))
    {
      goto LABEL_3;
    }

    v6 = v4[1];
    v7 = v6 + v4[2];
    v8 = *(a2 + 4);
    v9 = v8 + *(a2 + 8);
    if (v7 < v9)
    {
      goto LABEL_5;
    }

    if (v7 > v9)
    {
      goto LABEL_3;
    }

    if (v6 < v8)
    {
      goto LABEL_5;
    }

    if (v6 > v8)
    {
      goto LABEL_3;
    }

    v11 = *(v4 + 2);
    v12 = *(v4 + 3) - v11;
    v13 = v12 >> 2;
    v14 = *(a2 + 16);
    v15 = (*(a2 + 24) - v14) >> 2;
    if ((v12 >> 2) > v15)
    {
      goto LABEL_3;
    }

    if (v13 >= 1 && v13 >= v15)
    {
      v16 = ((v12 >> 2) & 0x7FFFFFFF) - 1;
      while (1)
      {
        v18 = *v11++;
        v17 = v18;
        v20 = *v14++;
        v19 = v20;
        if (v17 < v20)
        {
          break;
        }

        if (v17 > v19 || v16-- == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_3:
      v4 = a2;
    }
  }

LABEL_5:
  *a3 = *v4;
  *(a3 + 4) = *(v4 + 1);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3 + 16, *(v4 + 2), *(v4 + 3), (*(v4 + 3) - *(v4 + 2)) >> 2);
}

void *fst::ShortestFirstQueue<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_1F2D33D08;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~Heap(a1 + 2);
  return a1;
}

void fst::ShortestFirstQueue<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_1F2D33D08;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~Heap(a1 + 2);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,false>::Insert(uint64_t a1, int *a2)
{
  v4 = *(a1 + 88);
  v5 = (a1 + 88);
  v8 = *(a1 + 64);
  v6 = (a1 + 64);
  v7 = v8;
  if (v4 >= (*(v5 - 2) - v8) >> 2)
  {
    std::vector<int>::push_back[abi:ne200100](v6, a2);
    std::vector<int>::push_back[abi:ne200100]((a1 + 16), v5);
    std::vector<int>::push_back[abi:ne200100]((a1 + 40), v5);
    LODWORD(v9) = *(a1 + 88);
  }

  else
  {
    *(v7 + 4 * v4) = *a2;
    v9 = *(a1 + 88);
    *(*(a1 + 16) + 4 * *(*(a1 + 40) + 4 * v9)) = v9;
  }

  *(a1 + 88) = v9 + 1;

  return fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,false>::Insert(a1, a2, v9);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,false>::Insert(uint64_t a1, int *a2, int a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(a1 + 64);
    while (1)
    {
      v7 = v3 - 1;
      v8 = (v3 - 1) >> 1;
      if (fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()(a1 + 8, **a1 + 40 * *(v6 + 4 * v8), **a1 + 40 * *a2))
      {
        break;
      }

      v9 = *(a1 + 40);
      v10 = *(v9 + 4 * v3);
      v11 = *(v9 + 4 * v8);
      *(v9 + 4 * v3) = v11;
      v12 = *(a1 + 16);
      *(v12 + 4 * v11) = v3;
      *(v9 + 4 * v8) = v10;
      *(v12 + 4 * v10) = v8;
      v6 = *(a1 + 64);
      LODWORD(v10) = *(v6 + 4 * v3);
      *(v6 + 4 * v3) = *(v6 + 4 * v8);
      *(v6 + 4 * v8) = v10;
      v3 = v7 >> 1;
      if (v7 <= 1)
      {
        return *(*(a1 + 40) + 4 * v8);
      }
    }
  }

  v8 = v3;
  return *(*(a1 + 40) + 4 * v8);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,false>::Pop(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *v1;
  v3 = *(a1 + 88) - 1;
  v4 = *(a1 + 40);
  v5 = *v4;
  v6 = v4[v3];
  *v4 = v6;
  v7 = *(a1 + 16);
  *(v7 + 4 * v6) = 0;
  v4[v3] = v5;
  *(v7 + 4 * v5) = v3;
  LODWORD(v4) = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  --*(a1 + 88);
  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,false>::Heapify(a1, 0);
  return v2;
}

BOOL fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,false>::Heapify(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = (2 * a2) | 1u;
    if (v4 >= *(v3 + 88) || !(result = fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()(v3 + 8, **v3 + 40 * *(*(v3 + 64) + 4 * v4), **v3 + 40 * *(*(v3 + 64) + 4 * a2))))
    {
      v4 = a2;
    }

    v5 = 2 * a2 + 2;
    if (v5 < *(v3 + 88))
    {
      result = fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()(v3 + 8, **v3 + 40 * *(*(v3 + 64) + 4 * v5), **v3 + 40 * *(*(v3 + 64) + 4 * v4));
      if (result)
      {
        v4 = v5;
      }

      else
      {
        v4 = v4;
      }
    }

    if (v4 == a2)
    {
      break;
    }

    v6 = *(v3 + 40);
    v7 = *(v6 + 4 * a2);
    v8 = *(v6 + 4 * v4);
    *(v6 + 4 * a2) = v8;
    v9 = *(v3 + 16);
    *(v9 + 4 * v8) = a2;
    *(v6 + 4 * v4) = v7;
    *(v9 + 4 * v7) = v4;
    v10 = *(v3 + 64);
    LODWORD(v7) = *(v10 + 4 * a2);
    *(v10 + 4 * a2) = *(v10 + 4 * v4);
    *(v10 + 4 * v4) = v7;
    a2 = v4;
  }

  return result;
}

uint64_t fst::SingleShortestPath<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4, void *a5)
{
  a5[1] = *a5;
  *a4 = -1;
  if ((*(*a1 + 24))(a1) == -1)
  {
    return 1;
  }

  memset(v70, 0, sizeof(v70));
  v49 = *a3;
  v10 = *(a3 + 3);
  if (v10 == -1)
  {
    v10 = (*(*a1 + 24))(a1);
  }

  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v66);
  std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::clear[abi:ne200100](a2);
  (*(**(v49 + 16) + 56))(*(v49 + 16));
  if (a3[3] != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v62, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v62, "ERROR");
    }

    v18 = fst::LogMessage::LogMessage(&v57, &v62);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "SingleShortestPath: for nshortest > 1, use ShortestPath", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " instead", 8);
LABEL_21:
    fst::LogMessage::~LogMessage(&v57);
    if (SHIBYTE(__p) < 0)
    {
      operator delete(v62);
    }

    goto LABEL_23;
  }

  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v62);
  LODWORD(v57) = *(a3 + 10);
  LODWORD(v54) = v62;
  if (*&v57 != *&v62 || (v11 = *(a3 + 12), LODWORD(v57) = *(a3 + 11), LODWORD(v54) = v11, v74 = *(&v62 + 2), v50 = *(&v62 + 1), *&v57 != *(&v62 + 1)) || *&v54 != v74 || (v12 = a3[7], v13 = a3[8] - v12, v14 = __p, v13 != v64 - __p) || memcmp(v12, __p, v13))
  {
    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }

LABEL_12:
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v62, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v62, "ERROR");
    }

    v15 = fst::LogMessage::LogMessage(&v57, &v62);
    v16 = fst::cerr(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "SingleShortestPath: weight and state thresholds not applicable", 62);
    goto LABEL_21;
  }

  v47 = a4;
  v22 = *(a3 + 20);
  if (v14)
  {
    v64 = v14;
    operator delete(v14);
  }

  if (v22 != -1)
  {
    goto LABEL_12;
  }

  while (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) < v10)
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v62);
    std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](a2, &v62);
    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }

    LOBYTE(v62) = 0;
    std::vector<BOOL>::push_back(v70, &v62);
    LODWORD(v62) = -1;
    *(&v62 + 1) = -1;
    std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v62);
  }

  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v62);
  std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](a2, &v62);
  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  LODWORD(v62) = -1;
  *(&v62 + 1) = -1;
  std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v62);
  (*(**(v49 + 16) + 24))(*(v49 + 16), v10);
  LOBYTE(v62) = 1;
  std::vector<BOOL>::push_back(v70, &v62);
  do
  {
    if ((*(**(v49 + 16) + 48))(*(v49 + 16)))
    {
      goto LABEL_130;
    }

    v48 = (*(**(v49 + 16) + 16))(*(v49 + 16));
    (*(**(v49 + 16) + 32))(*(v49 + 16));
    *(v70[0] + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v48);
    v23 = *a2 + 40 * v48;
    LODWORD(v62) = *v23;
    *(&v62 + 4) = *(v23 + 4);
    v64 = 0;
    v65 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v23 + 16), *(v23 + 24), (*(v23 + 24) - *(v23 + 16)) >> 2);
    (*(*a1 + 32))(&v57, a1, v48);
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v54);
    v50 = *&v57;
    v74 = *&v54;
    v24.n128_u32[0] = v57;
    if (*&v57 != *&v54 || (v50 = *(&v57 + 1), v74 = *&v58, v72 = *(&v54 + 2), v73 = *(&v54 + 1), v24.n128_u32[0] = HIDWORD(v57), *(&v57 + 1) != *(&v54 + 1)) || (v24.n128_f32[0] = v74, v74 != v72))
    {
      v25 = 1;
      goto LABEL_44;
    }

    v26 = v55;
    if (v60 - v59 == v56 - v55)
    {
      v25 = memcmp(v59, v55, v60 - v59) != 0;
LABEL_44:
      v26 = v55;
      if (!v55)
      {
        goto LABEL_46;
      }

LABEL_45:
      v56 = v26;
      operator delete(v26);
      goto LABEL_46;
    }

    v25 = 1;
    if (v55)
    {
      goto LABEL_45;
    }

LABEL_46:
    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v25)
    {
      (*(*a1 + 32))(&v54, a1, v48, v24);
      fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(&v62, &v54, &v57);
      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(&v66, &v57, &v54);
      v50 = v66;
      v74 = *&v54;
      if (v66 == *&v54 && (v74 = *(&v67 + 1), v50 = *&v67, v72 = *(&v54 + 2), v73 = *(&v54 + 1), *&v67 == *(&v54 + 1)) && v74 == v72)
      {
        v28 = v55;
        if (v69 - v68 != v56 - v55)
        {
          v27 = 1;
          if (!v55)
          {
LABEL_57:
            if (v27)
            {
              fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(&v66, &v57, &v54);
              v66 = *&v54;
              v67 = *(&v54 + 4);
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v68, v55, v56, (v56 - v55) >> 2);
              if (v55)
              {
                v56 = v55;
                operator delete(v55);
              }

              *v47 = v48;
            }

            v29 = fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Member(&v66);
            v30 = v29;
            v31 = *(a3 + 34);
            if (v31)
            {
              v32 = 5;
            }

            else
            {
              v32 = 0;
            }

            if (v29)
            {
              v33 = v32;
            }

            else
            {
              v33 = 1;
            }

            if (v59)
            {
              v60 = v59;
              operator delete(v59);
            }

            if (!v30 || (v31 & 1) != 0)
            {
              goto LABEL_117;
            }

            goto LABEL_71;
          }

LABEL_56:
          v56 = v28;
          operator delete(v28);
          goto LABEL_57;
        }

        v27 = memcmp(v68, v55, v69 - v68) != 0;
      }

      else
      {
        v27 = 1;
      }

      v28 = v55;
      if (!v55)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

LABEL_71:
    v61 = 0;
    (*(*a1 + 136))(a1, v48, &v57, v24);
    while (1)
    {
      if (v57)
      {
        if ((*(*v57 + 24))(v57))
        {
          goto LABEL_109;
        }

        if (v57)
        {
          v34 = (*(*v57 + 32))(v57);
          goto LABEL_78;
        }
      }

      else if (v61 >= v59)
      {
LABEL_109:
        v33 = 0;
        goto LABEL_113;
      }

      v34 = v58 + 56 * v61;
LABEL_78:
      while (1)
      {
        v35 = *a2;
        v36 = *(v34 + 48);
        if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v36)
        {
          break;
        }

        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v54);
        std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](a2, &v54);
        if (v55)
        {
          v56 = v55;
          operator delete(v55);
        }

        LOBYTE(v54) = 0;
        std::vector<BOOL>::push_back(v70, &v54);
        LODWORD(v54) = -1;
        *(&v54 + 1) = -1;
        std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v54);
      }

      fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(&v62, v34 + 8, &v54);
      v37 = v35 + 40 * v36;
      fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(v37, &v54, &v50);
      v74 = *v37;
      v73 = v50;
      v38.n128_f32[0] = v74;
      if (v74 != v50 || (v74 = *(v37 + 4), v73 = *(v37 + 8), v71 = *(&v51 + 1), v72 = *&v51, v38.n128_f32[0] = v74, v74 != *&v51) || (v38.n128_f32[0] = v73, v73 != v71))
      {
        v39 = 1;
        goto LABEL_86;
      }

      v45 = *(v37 + 16);
      v46 = *(v37 + 24) - v45;
      v40 = v52;
      if (v46 == v53 - v52)
      {
        v39 = memcmp(v45, v52, v46) != 0;
LABEL_86:
        v40 = v52;
        if (!v52)
        {
          goto LABEL_88;
        }

LABEL_87:
        v53 = v40;
        operator delete(v40);
        goto LABEL_88;
      }

      v39 = 1;
      if (v52)
      {
        goto LABEL_87;
      }

LABEL_88:
      if (!v39)
      {
        goto LABEL_100;
      }

      fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(v37, &v54, &v50);
      *v37 = v50;
      *(v37 + 4) = v51;
      if (v37 != &v50)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v37 + 16), v52, v53, (v53 - v52) >> 2);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
      }

      if (!fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Member(v37))
      {
        break;
      }

      if (v57)
      {
        v41 = (*(*v57 + 48))(v57);
      }

      else
      {
        v41 = v61;
      }

      v42 = *(v34 + 48);
      v43 = *a5 + 16 * v42;
      *v43 = v48;
      *(v43 + 8) = v41;
      v44 = **(v49 + 16);
      if ((*(v70[0] + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v42))
      {
        (*(v44 + 40))();
      }

      else
      {
        (*(v44 + 24))();
        *(v70[0] + ((*(v34 + 48) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v34 + 48);
      }

LABEL_100:
      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v57)
      {
        (*(*v57 + 40))(v57, v38);
      }

      else
      {
        ++v61;
      }
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    v33 = 1;
LABEL_113:
    if (v57)
    {
      (*(*v57 + 8))(v57);
    }

    else if (v60)
    {
      --*v60;
    }

LABEL_117:
    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }
  }

  while (!v33);
  if (v33 != 5)
  {
LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

LABEL_130:
  v17 = 1;
LABEL_24:
  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v70[0])
  {
    operator delete(v70[0]);
  }

  return v17;
}

void sub_1B583F790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  v32 = *(v30 - 152);
  if (v32)
  {
    *(v30 - 144) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 128);
  if (v33)
  {
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SingleShortestPathBacktrace<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(*a2 + 224))(a2);
  v8 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v8);
  v9 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v9);
  if (a4 != -1)
  {
    v10 = -1;
    v11 = a4;
    LODWORD(v12) = -1;
    while (1)
    {
      v13 = v12;
      v12 = (*(*a2 + 200))(a2);
      if (v10 == -1)
      {
        (*(*a1 + 32))(v29, a1, a4);
        (*(*a2 + 184))(a2, v12, v29);
        if (__p)
        {
          v31 = __p;
          operator delete(__p);
        }

        goto LABEL_18;
      }

      v28 = 0;
      (*(*a1 + 136))(a1, v11, v26);
      v14 = *(*a3 + 16 * v10 + 8);
      if (!v26[0])
      {
        break;
      }

      (*(*v26[0] + 64))(v26[0], v14);
      if (!v26[0])
      {
        v14 = v28;
        goto LABEL_11;
      }

      v15 = (*(*v26[0] + 32))(v26[0]);
LABEL_12:
      v19 = *v15;
      v20 = *(v15 + 8);
      v21 = *(v15 + 12);
      v23 = 0;
      v24 = 0;
      v22 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, *(v15 + 24), *(v15 + 32), (*(v15 + 32) - *(v15 + 24)) >> 2);
      v25 = v13;
      (*(*a2 + 208))(a2, v12, &v19);
      if (v22)
      {
        v23 = v22;
        operator delete(v22);
      }

      if (v26[0])
      {
        (*(*v26[0] + 8))(v26[0]);
      }

      else if (v27)
      {
        --*v27;
      }

LABEL_18:
      v10 = v11;
      v11 = *(*a3 + 16 * v11);
      if (v11 == -1)
      {
        goto LABEL_21;
      }
    }

    v28 = *(*a3 + 16 * v10 + 8);
LABEL_11:
    v15 = v26[1] + 56 * v14;
    goto LABEL_12;
  }

  v12 = 0xFFFFFFFFLL;
LABEL_21:
  (*(*a2 + 176))(a2, v12);
  if ((*(*a1 + 64))(a1, 4, 0))
  {
    (*(*a2 + 192))(a2, 4, 4);
  }

  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v17 = fst::ShortestPathProperties(v16, 0);
  return (*(*a2 + 192))(a2, v17, 0x3FFFFFFF0007);
}

void sub_1B583FDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ShortestDistance<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = *a3;
  v10 = *(a3 + 16);
  v11 = *(a3 + 20);
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::clear[abi:ne200100](a2);
  fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::ShortestDistance(v9, *(a3 + 12));
  if (v16[28] == 1)
  {
    std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::clear[abi:ne200100](a2);
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::NoWeight(v6);
    std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::resize(a2, 1uLL, v6);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ShortestDistanceState(v9);
}

void sub_1B583FF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ShortestDistanceState(&a14);
  _Unwind_Resume(a1);
}

BOOL fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Member(uint64_t a1)
{
  result = fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Member(a1);
  if (result)
  {
    v3 = fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Zero();
    return *a1 != *v3 || *(a1 + 4) != v3[1] || *(a1 + 8) != v3[2] || *(a1 + 16) == *(a1 + 24);
  }

  return result;
}

uint64_t fst::Reverse<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1);
    (*(*a2 + 248))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 24))(a1);
  v82 = 0;
  v39 = v9;
  if (a3)
  {
LABEL_42:
    v10 = (*(*a2 + 200))(a2);
    v20 = 1;
    goto LABEL_43;
  }

  LODWORD(v60) = 0;
  (*(*a1 + 128))(a1, &v58);
  v10 = 0xFFFFFFFFLL;
  while (1)
  {
    if (!v58)
    {
      if (v60 >= v59)
      {
        goto LABEL_36;
      }

LABEL_10:
      v13 = v60;
      goto LABEL_11;
    }

    v11 = (*(*v58 + 16))(v58);
    v12 = v58;
    if (v11)
    {
      goto LABEL_34;
    }

    if (!v58)
    {
      goto LABEL_10;
    }

    v13 = (*(*v58 + 24))();
LABEL_11:
    (*(*a1 + 32))(v73, a1, v13);
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v78);
    v54 = *v73;
    LODWORD(v51[0]) = v78;
    v14.n128_u32[0] = *v73;
    if (*v73 != *&v78 || (v54 = *&v73[4], v51[0] = *&v73[8], LODWORD(v48[0]) = HIDWORD(v78), LODWORD(v70) = v79, v14.n128_u32[0] = *&v73[4], *&v73[4] != *(&v78 + 1)) || (v14.n128_f32[0] = v51[0], v51[0] != *&v70))
    {
      v16 = 0;
LABEL_17:
      v15 = v80;
      if (!v80)
      {
        goto LABEL_19;
      }

LABEL_18:
      v81 = v15;
      operator delete(v15);
      goto LABEL_19;
    }

    v15 = v80;
    if (&v74[-*&v73[16]] == (v81 - v80))
    {
      v16 = memcmp(*&v73[16], v80, &v74[-*&v73[16]]) == 0;
      goto LABEL_17;
    }

    v16 = 0;
    if (v80)
    {
      goto LABEL_18;
    }

LABEL_19:
    if (*&v73[16])
    {
      v74 = *&v73[16];
      operator delete(*&v73[16]);
    }

    v17 = 2 * (v10 != -1);
    v18 = v10 == -1 ? v13 : -1;
    if (v16)
    {
      v17 = 4;
      v10 = v10;
    }

    else
    {
      v10 = v18;
    }

    if ((v17 | 4) != 4)
    {
      break;
    }

    if (v58)
    {
      (*(*v58 + 32))(v58, v14);
    }

    else
    {
      LODWORD(v60) = v60 + 1;
    }
  }

  v12 = v58;
LABEL_34:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_36:
  if (v10 == -1)
  {
    goto LABEL_42;
  }

  (*(*a1 + 32))(v73, a1, v10);
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v78);
  LODWORD(v58) = *v73;
  v54 = *&v78;
  v19 = *v73 != *&v78 || (LODWORD(v58) = *&v73[4], v54 = *&v73[8], v51[0] = *(&v78 + 1), LODWORD(v48[0]) = v79, *&v73[4] != *(&v78 + 1)) || v54 != *v48 || &v74[-*&v73[16]] != (v81 - v80) || memcmp(*&v73[16], v80, &v74[-*&v73[16]]) != 0;
  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (*&v73[16])
  {
    v74 = *&v73[16];
    operator delete(*&v73[16]);
  }

  if (v19)
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
    *v73 = &v58;
    *&v73[8] = 0;
    *&v73[16] = 0;
    v74 = &v82;
    fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1, v73);
  }

  v20 = 0;
LABEL_43:
  v72 = 0;
  (*(*a1 + 128))(a1, &v70);
  while (2)
  {
    if (!v70)
    {
      if (v72 >= v71)
      {
        goto LABEL_110;
      }

      goto LABEL_49;
    }

    if (!(*(*v70 + 16))(v70))
    {
      if (v70)
      {
        v21 = (*(*v70 + 24))();
LABEL_50:
        v22 = v21 + v20;
        while ((*(*a2 + 160))(a2) <= v22)
        {
          (*(*a2 + 200))(a2);
        }

        if (v21 == v39)
        {
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(v67);
          (*(*a2 + 184))(a2, (v21 + v20), v67);
          if (__p)
          {
            v69 = __p;
            operator delete(__p);
          }
        }

        (*(*a1 + 32))(&v78, a1, v21);
        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(v73);
        LODWORD(v58) = v78;
        v54 = *v73;
        v23.n128_u32[0] = v78;
        if (*&v78 != *v73 || (LODWORD(v58) = HIDWORD(v78), v54 = *&v79, v51[0] = *&v73[4], LODWORD(v48[0]) = *&v73[8], v23.n128_u32[0] = HIDWORD(v78), *(&v78 + 1) != *&v73[4]) || (v23.n128_f32[0] = v54, v54 != *v48))
        {
          v24 = 1;
          goto LABEL_60;
        }

        v25 = *&v73[16];
        if ((v81 - v80) == &v74[-*&v73[16]])
        {
          v24 = memcmp(v80, *&v73[16], v81 - v80) != 0;
LABEL_60:
          v25 = *&v73[16];
          if (*&v73[16])
          {
LABEL_61:
            v74 = v25;
            operator delete(v25);
          }
        }

        else
        {
          v24 = 1;
          if (*&v73[16])
          {
            goto LABEL_61;
          }
        }

        if ((v20 & v24) != 0)
        {
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Reverse(&v78, &v63);
          *v73 = 0;
          *&v73[8] = v63;
          *&v73[12] = v64;
          v75 = 0;
          v76 = 0;
          v74 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v74, v65, v66, (v66 - v65) >> 2);
          v77 = v21 + v20;
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          (*(*a2 + 208))(a2, 0, v73);
          if (v74)
          {
            v75 = v74;
            operator delete(v74);
          }
        }

        v62 = 0;
        (*(*a1 + 136))(a1, v21, &v58, v23);
LABEL_68:
        if (v58)
        {
          if ((*(*v58 + 24))(v58))
          {
            if (v58)
            {
              (*(*v58 + 8))();
              goto LABEL_99;
            }

LABEL_97:
            if (v61)
            {
              --*v61;
            }

LABEL_99:
            if (v80)
            {
              v81 = v80;
              operator delete(v80);
            }

            if (v70)
            {
              (*(*v70 + 32))(v70);
            }

            else
            {
              ++v72;
            }

            continue;
          }

          if (v58)
          {
            v26 = (*(*v58 + 32))();
LABEL_74:
            v27 = *(v26 + 48);
            fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Reverse(v26 + 8, &v54);
            v28 = (v27 + v20);
            if (v28 == v10)
            {
              v29 = v20;
            }

            else
            {
              v29 = 1;
            }

            if ((v29 & 1) == 0)
            {
              (*(*a1 + 32))(v48, a1, v10);
              fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Reverse(v48, v51);
              fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(v51, &v54, v73);
              v54 = *v73;
              v55 = *&v73[4];
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v56, *&v73[16], v74, &v74[-*&v73[16]] >> 2);
              if (*&v73[16])
              {
                v74 = *&v73[16];
                operator delete(*&v73[16]);
              }

              if (v52)
              {
                v53 = v52;
                operator delete(v52);
              }

              if (v49)
              {
                v50 = v49;
                operator delete(v49);
              }
            }

            v30 = *v26;
            v43 = v54;
            v44 = v55;
            v46 = 0;
            v47 = 0;
            v45 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v45, v56, v57, (v57 - v56) >> 2);
            *v73 = v30;
            *&v73[8] = v43;
            *&v73[12] = v44;
            v75 = 0;
            v76 = 0;
            v74 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v74, v45, v46, (v46 - v45) >> 2);
            v77 = v22;
            if (v45)
            {
              v46 = v45;
              operator delete(v45);
            }

            while (1)
            {
              v31 = (*(*a2 + 160))(a2);
              v32 = *a2;
              if (v31 > v28)
              {
                break;
              }

              (*(v32 + 200))(a2);
            }

            (*(v32 + 208))(a2, v28, v73);
            if (v74)
            {
              v75 = v74;
              operator delete(v74);
            }

            if (v56)
            {
              v57 = v56;
              operator delete(v56);
            }

            if (v58)
            {
              (*(*v58 + 40))(v58);
            }

            else
            {
              ++v62;
            }

            goto LABEL_68;
          }
        }

        else if (v62 >= v60)
        {
          goto LABEL_97;
        }

        v26 = v59 + 56 * v62;
        goto LABEL_74;
      }

LABEL_49:
      v21 = v72;
      goto LABEL_50;
    }

    break;
  }

  if (v70)
  {
    (*(*v70 + 8))();
  }

LABEL_110:
  (*(*a2 + 176))(a2, v10);
  if (v10 == v39)
  {
    v33 = v20;
  }

  else
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    (*(*a1 + 32))(v73, a1, v39);
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Reverse(v73, v40);
    (*(*a2 + 184))(a2, v39, v40);
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (*&v73[16])
    {
      v74 = *&v73[16];
      operator delete(*&v73[16]);
    }
  }

  v34 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  v35 = v82;
  v36 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v37 = fst::ReverseProperties(v35 | v34, v20);
  return (*(*a2 + 192))(a2, v36 | v37, 0x3FFFFFFF0007);
}

void sub_1B5840F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Reverse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  std::vector<int>::vector[abi:ne200100](&__p, (v4 - v5) >> 2);
  v6 = __p;
  if (v4 != v5)
  {
    if (((v4 - v5) >> 2) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (v4 - v5) >> 2;
    }

    v8 = (v4 - v5 + *(a1 + 16) - 4);
    v9 = __p;
    do
    {
      v10 = *v8--;
      *v9++ = v10;
      --v7;
    }

    while (v7);
  }

  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 16, v6, v12, (v12 - v6) >> 2);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_1B5841238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::insert(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 3) + 1;
    if (v11 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v10) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x333333333333333)
    {
      v15 = 0x666666666666666;
    }

    else
    {
      v15 = v14;
    }

    v21 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PruneProbsRecord>>(a1, v15);
    }

    v17 = 0;
    v18 = 8 * (v12 >> 3);
    v19 = v18;
    v20 = 0;
    std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::emplace_back<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int> const&>(&v17, a3);
    v4 = std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__swap_out_circular_buffer(a1, &v17, v4);
    std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(&v17);
  }

  else if (a2 == v6)
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__construct_one_at_end[abi:ne200100]<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int> const&>(a1, a3);
  }

  else
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__move_range(a1, a2, v6, a2 + 40);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 40;
    if (v8)
    {
      v9 = 0;
    }

    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(v4, a3 + v9);
  }

  return v4;
}

void sub_1B58413A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void fst::NShortestPath<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, int a6, int a7, float a8)
{
  v127 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return;
  }

  if ((a7 & 1) != 0 && (*(*a1 + 64))(a1, 0x400000000, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v121, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v121, "ERROR");
    }

    v15 = fst::LogMessage::LogMessage(&v87, &v121);
    v16 = fst::cerr(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "NShortestPath: FST has a cycle and include_final_ties was set to true. This is not currently supported.", 103);
    fst::LogMessage::~LogMessage(&v87);
    if (SHIBYTE(v122) < 0)
    {
      operator delete(v121);
    }

    (*(*a2 + 192))(a2, 4, 4);
    return;
  }

  v71 = a4;
  (*(*a2 + 224))(a2);
  v17 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v17);
  v18 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v18);
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  if ((*(*a1 + 24))(a1) != -1)
  {
    v20 = *a3;
    v19 = a3[1];
    if (0xCCCCCCCCCCCCCCCDLL * ((v19 - v20) >> 3) > (*(*a1 + 24))(a1))
    {
      v21 = (*(*a1 + 24))(a1);
      v22 = *a3;
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v121);
      v23 = v22 + 40 * v21;
      v87 = *v23;
      *v117 = v121;
      if (v87 == *&v121 && (v87 = *(v23 + 4), *v117 = *(v23 + 8), v100[0] = HIDWORD(v121), v95 = *&v122, v87 == *(&v121 + 1)) && *v117 == v95 && (v24 = *(v23 + 16), v25 = (*(v23 + 24) - v24), v26 = *(&v122 + 1), v25 == &v123[-*(&v122 + 1)]) && !memcmp(v24, *(&v122 + 1), v25))
      {
        v28 = 1;
        if (v26)
        {
LABEL_19:
          v123 = v26;
          operator delete(v26);
        }
      }

      else
      {
        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v87);
        v27 = fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()(&v105, a5, &v87);
        if (a6)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1;
        }

        if (*&v89[4])
        {
          v90 = *&v89[4];
          operator delete(*&v89[4]);
        }

        v26 = *(&v122 + 1);
        if (*(&v122 + 1))
        {
          goto LABEL_19;
        }
      }

      if (v28)
      {
        goto LABEL_21;
      }

      v29 = (*(*a2 + 200))(a2);
      (*(*a2 + 176))(a2, v29);
      v30 = (*(*a2 + 200))(a2);
      v104 = v30;
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(v101);
      (*(*a2 + 184))(a2, v30, v101);
      if (v102)
      {
        v103 = v102;
        operator delete(v102);
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 4) <= v104)
      {
        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v87);
        LODWORD(v121) = -1;
        *&v122 = v87;
        *(&v122 + 4) = v88;
        v124 = 0;
        v125 = 0;
        v123 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v123, *&v89[4], v90, (v90 - *&v89[4]) >> 2);
        std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::push_back[abi:ne200100](&v112, &v121);
        if (v123)
        {
          v124 = v123;
          operator delete(v123);
        }

        if (*&v89[4])
        {
          v90 = *&v89[4];
          operator delete(*&v89[4]);
        }
      }

      v31 = (*(*a1 + 24))(a1);
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v87);
      LODWORD(v121) = v31;
      *&v122 = v87;
      *(&v122 + 4) = v88;
      v124 = 0;
      v125 = 0;
      v123 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v123, *&v89[4], v90, (v90 - *&v89[4]) >> 2);
      v32 = v112 + 48 * v104;
      *v32 = v121;
      *(v32 + 8) = v122;
      *(v32 + 12) = *(&v122 + 4);
      if (v32 != &v121)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v32 + 24), v123, v124, (v124 - v123) >> 2);
      }

      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      if (*&v89[4])
      {
        v90 = *&v89[4];
        operator delete(*&v89[4]);
      }

      std::vector<int>::push_back[abi:ne200100](&v109, &v104);
      v33 = (*(*a1 + 24))(a1);
      fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(*a3 + 40 * v33, a5, v100);
      v72 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
LABEL_48:
      v34 = v110;
      v35 = v109;
      if (v109 == v110)
      {
        goto LABEL_179;
      }

      v121 = &v112;
      *&v122 = a3;
      DWORD2(v122) = -1;
      *(&v122 + 3) = a8;
      v36 = (v110 - v109) >> 2;
      if (v36 >= 2)
      {
        v37 = *v109;
        v38 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>> &,std::__wrap_iter<int *>>(v109, &v121, v36);
        v39 = (v34 - 4);
        if (v34 - 4 == v38)
        {
          *v38 = v37;
        }

        else
        {
          *v38 = *v39;
          *v39 = v37;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>> &,std::__wrap_iter<int *>>(v35, (v38 + 1), &v121, ((v38 + 1) - v35) >> 2);
        }
      }

      v40 = *(v110 - 1);
      std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::pair[abi:ne200100](&v87, v112 + 48 * v40);
      v110 -= 4;
      if (v87 == NAN)
      {
        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v82);
      }

      else if (0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3) <= SLODWORD(v87))
      {
        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v82);
      }

      else
      {
        v41 = *a3 + 40 * SLODWORD(v87);
        v82 = *v41;
        v83 = *(v41 + 4);
        v85 = 0;
        v86 = 0;
        v84 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v84, *(v41 + 16), *(v41 + 24), (*(v41 + 24) - *(v41 + 16)) >> 2);
      }

      fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(&v82, &v88 + 4, &v121);
      if (fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()(&v105, v100, &v121))
      {
        v42 = *(&v122 + 1);
        if (*(&v122 + 1))
        {
          v123 = *(&v122 + 1);
          goto LABEL_61;
        }

        goto LABEL_168;
      }

      if (a6 == -1)
      {
        if (*(&v122 + 1))
        {
          v123 = *(&v122 + 1);
          operator delete(*(&v122 + 1));
        }
      }

      else
      {
        v43 = (*(*a2 + 160))(a2);
        if (*(&v122 + 1))
        {
          v123 = *(&v122 + 1);
          operator delete(*(&v122 + 1));
        }

        if (v43 >= a6)
        {
          goto LABEL_168;
        }
      }

      v44 = v106;
      for (i = v87; SLODWORD(v87) + 1 >= ((v107 - v106) >> 2); i = v87)
      {
        LODWORD(v121) = 0;
        std::vector<int>::push_back[abi:ne200100](&v106, &v121);
        v44 = v106;
      }

      if (a7 && 0xCCCCCCCCCCCCCCCDLL * ((v93 - v92) >> 3) <= LODWORD(i) + 1)
      {
        do
        {
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v121);
          std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](&v92, &v121);
          if (*(&v122 + 1))
          {
            v123 = *(&v122 + 1);
            operator delete(*(&v122 + 1));
          }

          i = v87;
        }

        while (0xCCCCCCCCCCCCCCCDLL * ((v93 - v92) >> 3) <= SLODWORD(v87) + 1);
        v44 = v106;
      }

      ++v44[SLODWORD(i) + 1];
      v46 = v87;
      if (v87 == NAN)
      {
        if (v72)
        {
          v47 = *(&v88 + 1) > (v95 + 0.00097656) || v95 > (*(&v88 + 1) + 0.00097656);
          if (v47 || (*&v96 == *v89 ? (v48 = *(&v96 + 1) == *&v89[4]) : (v48 = 0), (v49 = vabds_f32(*&v96 + *(&v96 + 1), *v89 + *&v89[4]), !v48) ? (v50 = v49 > 0.00097656) : (v50 = 0), v50 || v98 - v97 != v91 - v90 || memcmp(v97, v90, v98 - v97)))
          {
            v51 = 1;
            v72 = 1;
            goto LABEL_169;
          }
        }

        v52 = (*(*a2 + 24))(a2);
        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(v117);
        v121 = 0;
        LODWORD(v122) = *v117;
        *(&v122 + 4) = *&v117[4];
        v124 = 0;
        v125 = 0;
        v123 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v123, *&v117[16], v118, &v118[-*&v117[16]] >> 2);
        v126 = v40;
        (*(*a2 + 208))(a2, v52, &v121);
        if (v123)
        {
          v124 = v123;
          operator delete(v123);
        }

        if (*&v117[16])
        {
          v118 = *&v117[16];
          operator delete(*&v117[16]);
        }

        v46 = v87;
      }

      if ((v72 & 1) == 0)
      {
        if (v46 != NAN)
        {
          v72 = 0;
LABEL_103:
          if (a7)
          {
            v53 = SLODWORD(v46) + 1;
            v54 = *(v106 + v53);
            if (v54 == v71)
            {
              v55 = (v92 + 40 * v53);
              *v55 = HIDWORD(v88);
              *(v55 + 4) = *v89;
              if (v55 != (&v88 + 4))
              {
                std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v55 + 2, v90, v91, (v91 - v90) >> 2);
              }
            }

            else if (v54 > v71)
            {
              v57 = v92 + 40 * v53;
              if (*v57 > (*(&v88 + 1) + 0.00097656) || *(&v88 + 1) > (*v57 + 0.00097656))
              {
                goto LABEL_168;
              }

              v59 = *(v57 + 4);
              v60 = *(v57 + 8);
              v61 = *v89 == v59 && *&v89[4] == v60;
              v62 = vabds_f32(*v89 + *&v89[4], v59 + v60);
              if (!v61 && v62 > 0.00097656)
              {
                goto LABEL_168;
              }

              v64 = *(v57 + 16);
              if (v91 - v90 != *(v57 + 24) - v64 || memcmp(v90, v64, v91 - v90))
              {
                goto LABEL_168;
              }
            }
          }

          else if (*(v106 + SLODWORD(v46) + 1) > v71)
          {
            goto LABEL_168;
          }

          v81 = 0;
          (*(*a1 + 136))(a1, LODWORD(v87), &v78);
          while (1)
          {
            if (v78)
            {
              if ((*(*v78 + 24))(v78))
              {
                if (v78)
                {
                  (*(*v78 + 8))();
                }

                else
                {
LABEL_149:
                  if (v80)
                  {
                    --*v80;
                  }
                }

                (*(*a1 + 32))(&v121, a1, LODWORD(v87));
                fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Reverse(&v121, v117);
                if (*(&v122 + 1))
                {
                  v123 = *(&v122 + 1);
                  operator delete(*(&v122 + 1));
                }

                fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v121);
                LODWORD(v78) = *v117;
                v74 = *&v121;
                if (*v117 != *&v121 || (LODWORD(v78) = *&v117[4], v74 = *&v117[8], v116 = HIDWORD(v121), v115 = *&v122, *&v117[4] != *(&v121 + 1)) || v74 != v115)
                {
                  v68 = 1;
                  goto LABEL_157;
                }

                v69 = *(&v122 + 1);
                if (&v118[-*&v117[16]] == &v123[-*(&v122 + 1)])
                {
                  v68 = memcmp(*&v117[16], *(&v122 + 1), &v118[-*&v117[16]]) != 0;
LABEL_157:
                  v69 = *(&v122 + 1);
                  if (*(&v122 + 1))
                  {
LABEL_158:
                    v123 = v69;
                    operator delete(v69);
                  }
                }

                else
                {
                  v68 = 1;
                  if (*(&v122 + 1))
                  {
                    goto LABEL_158;
                  }
                }

                if (v68)
                {
                  fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(&v88 + 4, v117, &v78);
                  LODWORD(v74) = (*(*a2 + 200))(a2);
                  LODWORD(v121) = -1;
                  LODWORD(v122) = v78;
                  *(&v122 + 4) = *(&v78 + 4);
                  v124 = 0;
                  v125 = 0;
                  v123 = 0;
                  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v123, v79, v80, (v80 - v79) >> 2);
                  std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::push_back[abi:ne200100](&v112, &v121);
                  if (v123)
                  {
                    v124 = v123;
                    operator delete(v123);
                  }

                  v70 = LODWORD(v74);
                  v121 = 0;
                  LODWORD(v122) = *v117;
                  *(&v122 + 4) = *&v117[4];
                  v124 = 0;
                  v125 = 0;
                  v123 = 0;
                  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v123, *&v117[16], v118, &v118[-*&v117[16]] >> 2);
                  v126 = v40;
                  (*(*a2 + 208))(a2, v70, &v121);
                  if (v123)
                  {
                    v124 = v123;
                    operator delete(v123);
                  }

                  std::vector<int>::push_back[abi:ne200100](&v109, &v74);
                  v121 = &v112;
                  *&v122 = a3;
                  DWORD2(v122) = -1;
                  *(&v122 + 3) = a8;
                  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>> &,std::__wrap_iter<int *>>(v109, v110, &v121, (v110 - v109) >> 2);
                  if (v79)
                  {
                    v80 = v79;
                    operator delete(v79);
                  }
                }

                v42 = *&v117[16];
                if (*&v117[16])
                {
                  v118 = *&v117[16];
LABEL_61:
                  operator delete(v42);
                }

LABEL_168:
                v51 = 0;
LABEL_169:
                if (v84)
                {
                  v85 = v84;
                  operator delete(v84);
                }

                if (v90)
                {
                  v91 = v90;
                  operator delete(v90);
                }

                if (v51)
                {
LABEL_179:
                  fst::Connect<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a2);
                }

                goto LABEL_48;
              }

              if (v78)
              {
                v65 = (*(*v78 + 32))();
                goto LABEL_136;
              }
            }

            else if (v81 >= v79)
            {
              goto LABEL_149;
            }

            v65 = *(&v78 + 1) + 56 * v81;
LABEL_136:
            v66 = *v65;
            fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Reverse(v65 + 8, v117);
            v67 = *(v65 + 48);
            v121 = v66;
            LODWORD(v122) = *v117;
            *(&v122 + 4) = *&v117[4];
            v124 = 0;
            v125 = 0;
            v123 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v123, *&v117[16], v118, &v118[-*&v117[16]] >> 2);
            v126 = v67;
            if (*&v117[16])
            {
              v118 = *&v117[16];
              operator delete(*&v117[16]);
            }

            fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(&v88 + 4, &v122, &v74);
            v116 = (*(*a2 + 200))(a2);
            *v117 = v126;
            *&v117[8] = v74;
            *&v117[12] = v75;
            v119 = 0;
            v120 = 0;
            v118 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v118, v76, v77, (v77 - v76) >> 2);
            std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::push_back[abi:ne200100](&v112, v117);
            if (v118)
            {
              v119 = v118;
              operator delete(v118);
            }

            v126 = v40;
            (*(*a2 + 208))(a2, v116, &v121);
            std::vector<int>::push_back[abi:ne200100](&v109, &v116);
            *v117 = &v112;
            *&v117[8] = a3;
            *&v117[16] = -1;
            *&v117[20] = a8;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>> &,std::__wrap_iter<int *>>(v109, v110, v117, (v110 - v109) >> 2);
            if (v76)
            {
              v77 = v76;
              operator delete(v76);
            }

            if (v123)
            {
              v124 = v123;
              operator delete(v123);
            }

            if (v78)
            {
              (*(*v78 + 40))(v78);
            }

            else
            {
              ++v81;
            }
          }
        }

        v51 = *v106 == v71;
        if (*v106 != v71 || a7 == 0)
        {
          v72 = 0;
          goto LABEL_169;
        }

        v95 = *(&v88 + 1);
        v96 = *v89;
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v97, v90, v91, (v91 - v90) >> 2);
        v46 = v87;
      }

      v72 = 1;
      if (v46 == NAN)
      {
        goto LABEL_168;
      }

      goto LABEL_103;
    }
  }

LABEL_21:
  if ((*(*a1 + 64))(a1, 4, 0))
  {
    (*(*a2 + 192))(a2, 4, 4);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  v121 = &v112;
  std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::__destroy_vector::operator()[abi:ne200100](&v121);
}

void sub_1B58426C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  v58 = *(v56 - 152);
  if (v58)
  {
    *(v56 - 144) = v58;
    operator delete(v58);
  }

  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  if (a52)
  {
    a53 = a52;
    operator delete(a52);
  }

  if (a55)
  {
    a56 = a55;
    operator delete(a55);
  }

  a27 = v56 - 256;
  std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__emplace_back_slow_path<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__construct_one_at_end[abi:ne200100]<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int> const&>(a1, a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__emplace_back_slow_path<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>(a1, a2);
  }

  else
  {
    std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__construct_one_at_end[abi:ne200100]<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>(a1, a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__construct_one_at_end[abi:ne200100]<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  *(v3 + 4) = *(a2 + 4);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(a1 + 8) = v3 + 40;
  return result;
}

uint64_t std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__emplace_back_slow_path<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int> const&>(uint64_t *a1, uint64_t a2)
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

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PruneProbsRecord>>(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  v18 = 40 * v2;
  *v7 = *a2;
  v8 = *(a2 + 4);
  *(v7 + 16) = 0;
  v9 = 40 * v2 + 16;
  *(v9 - 12) = v8;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v9, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *&v18 = v18 + 40;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(&v16);
  return v15;
}

void sub_1B5842B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      v8 = *(v7 + 4);
      *(v4 + 16) = 0;
      v9 = v4 + 16;
      *(v9 - 12) = v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v9, *(v7 + 16), *(v7 + 24), (*(v7 + 24) - *(v7 + 16)) >> 2);
      v7 += 40;
      v4 = v15 + 40;
      v15 += 40;
    }

    while (v7 != a3);
    v13 = 1;
    while (v6 != a3)
    {
      v10 = *(v6 + 16);
      if (v10)
      {
        *(v6 + 24) = v10;
        operator delete(v10);
      }

      v6 += 40;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::ShortestDistance(uint64_t *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    if (!(*(**a1 + 64))(*a1, 4, 0))
    {
      return;
    }

    v47 = a1 + 116;
LABEL_133:
    *v47 = 1;
    return;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::clear[abi:ne200100](a1[1]);
    std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::clear[abi:ne200100](a1 + 5);
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v4 = a2;
  for (i = a1[1]; 0xCCCCCCCCCCCCCCCDLL * ((i[1] - *i) >> 3) <= a2; i = a1[1])
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v60);
    std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](i, &v60);
    if (__p)
    {
      v63 = __p;
      operator delete(__p);
    }

    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v60);
    std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](a1 + 5, &v60);
    if (__p)
    {
      v63 = __p;
      operator delete(__p);
    }

    LOBYTE(v60) = 0;
    std::vector<BOOL>::push_back((a1 + 8), &v60);
  }

  if (*(a1 + 33) == 1)
  {
    for (j = a1[11]; a2 >= ((a1[12] - j) >> 2); j = a1[11])
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
    }

    *(j + 4 * a2) = *(a1 + 28);
  }

  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v60);
  v7 = *a1[1] + 40 * a2;
  *v7 = v60;
  *(v7 + 4) = v61;
  if (v7 != &v60)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v7 + 16), __p, v63, (v63 - __p) >> 2);
  }

  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v60);
  v8 = a1 + 5;
  v9 = a1[5] + 40 * v4;
  *v9 = v60;
  *(v9 + 4) = v61;
  if (v9 != &v60)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v9 + 16), __p, v63, (v63 - __p) >> 2);
  }

  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  v10 = a1 + 8;
  *(a1[8] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v4);
  v47 = a1 + 116;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
LABEL_132:
      ++*(a1 + 28);
      if (!(*(**a1 + 64))(*a1, 4, 0))
      {
        return;
      }

      goto LABEL_133;
    }

    v11 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    for (k = a1[1]; 0xCCCCCCCCCCCCCCCDLL * ((k[1] - *k) >> 3) <= v11; k = a1[1])
    {
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v60);
      std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](k, &v60);
      if (__p)
      {
        v63 = __p;
        operator delete(__p);
      }

      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v60);
      std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](a1 + 5, &v60);
      if (__p)
      {
        v63 = __p;
        operator delete(__p);
      }

      LOBYTE(v60) = 0;
      std::vector<BOOL>::push_back((a1 + 8), &v60);
    }

    if (*(a1 + 32) == 1)
    {
      (*(**a1 + 32))(&v60);
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v56);
      v52 = v60;
      v48 = *&v56;
      if (v60 == *&v56 && (v48 = *(&v61 + 1), v52 = *&v61, v65 = *(&v56 + 2), v66 = DWORD1(v56), *&v61 == *(&v56 + 1)) && v48 == v65)
      {
        v14 = v57;
        if (v63 - __p != v58 - v57)
        {
          v13 = 1;
          if (!v57)
          {
LABEL_39:
            if (__p)
            {
              v63 = __p;
              operator delete(__p);
            }

            if (v13)
            {
              goto LABEL_132;
            }

            goto LABEL_42;
          }

LABEL_38:
          v58 = v14;
          operator delete(v14);
          goto LABEL_39;
        }

        v13 = memcmp(__p, v57, v63 - __p) != 0;
      }

      else
      {
        v13 = 1;
      }

      v14 = v57;
      if (!v57)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

LABEL_42:
    *(*v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v11);
    v15 = *v8 + 40 * v11;
    v60 = *v15;
    v61 = *(v15 + 4);
    v63 = 0;
    v64 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v15 + 16), *(v15 + 24), (*(v15 + 24) - *(v15 + 16)) >> 2);
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v56);
    v16 = *v8 + 40 * v11;
    *v16 = v56;
    *(v16 + 4) = *(&v56 + 4);
    if (v16 != &v56)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v16 + 16), v57, v58, (v58 - v57) >> 2);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    v17 = *a1;
    v59 = 0;
    (*(*v17 + 136))(v17, v11, &v56);
    while (1)
    {
      if (!v56)
      {
        if (v59 >= v57)
        {
          v41 = 10;
          goto LABEL_117;
        }

        goto LABEL_52;
      }

      v18 = (*(*v56 + 24))(v56);
      v19 = v56;
      if (v18)
      {
        break;
      }

      if (v56)
      {
        v20 = (*(*v56 + 32))();
        goto LABEL_53;
      }

LABEL_52:
      v20 = *(&v56 + 1) + 56 * v59;
LABEL_53:
      v21 = a1[1];
      for (m = *(v20 + 48); 0xCCCCCCCCCCCCCCCDLL * ((v21[1] - *v21) >> 3) <= m; m = *(v20 + 48))
      {
        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v52);
        std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](v21, &v52);
        if (v54)
        {
          v55 = v54;
          operator delete(v54);
        }

        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v52);
        std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::push_back[abi:ne200100](a1 + 5, &v52);
        if (v54)
        {
          v55 = v54;
          operator delete(v54);
        }

        LOBYTE(v52) = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v52);
        v21 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v23 = a1[11];
          LODWORD(m) = *(v20 + 48);
          if (m < ((a1[12] - v23) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        if (*(v23 + 4 * m) != *(a1 + 28))
        {
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v52);
          v24 = *a1[1] + 40 * *(v20 + 48);
          *v24 = v52;
          *(v24 + 4) = v53;
          if (v24 != &v52)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v24 + 16), v54, v55, (v55 - v54) >> 2);
          }

          if (v54)
          {
            v55 = v54;
            operator delete(v54);
          }

          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v52);
          v25 = *v8 + 40 * *(v20 + 48);
          *v25 = v52;
          *(v25 + 4) = v53;
          if (v25 != &v52)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v25 + 16), v54, v55, (v55 - v54) >> 2);
          }

          if (v54)
          {
            v55 = v54;
            operator delete(v54);
          }

          v26 = *(v20 + 48);
          *(a1[8] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
          *(a1[11] + 4 * v26) = *(a1 + 28);
          LODWORD(m) = *(v20 + 48);
        }
      }

      v27 = *a1[1];
      v28 = a1[5];
      fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(&v60, v20 + 8, &v52);
      v29 = v27 + 40 * m;
      fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(v29, &v52, &v48);
      v30 = *(a1 + 7);
      v31 = v48 > (v30 + *v29) || *v29 > (v30 + v48);
      if (v31 || ((v33 = *(v29 + 4), v34 = *(v29 + 8), v33 == *&v49) ? (v35 = v34 == *(&v49 + 1)) : (v35 = 0), (v36 = vabds_f32(v33 + v34, *&v49 + *(&v49 + 1)), !v35) ? (v37 = v36 > v30) : (v37 = 0), v37))
      {
        v32 = 0;
        goto LABEL_87;
      }

      v38 = *(v29 + 16);
      v39 = *(v29 + 24) - v38;
      v40 = v50;
      if (v39 == v51 - v50)
      {
        v32 = memcmp(v38, v50, v39) == 0;
LABEL_87:
        v40 = v50;
        if (!v50)
        {
          goto LABEL_89;
        }

LABEL_88:
        v51 = v40;
        operator delete(v40);
        goto LABEL_89;
      }

      v32 = 0;
      if (v50)
      {
        goto LABEL_88;
      }

LABEL_89:
      if (v32)
      {
        goto LABEL_90;
      }

      fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(v29, &v52, &v48);
      *v29 = v48;
      *(v29 + 4) = v49;
      if (v29 != &v48)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v29 + 16), v50, v51, (v51 - v50) >> 2);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      v43 = v28 + 40 * m;
      fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(v43, &v52, &v48);
      *v43 = v48;
      *(v43 + 4) = v49;
      if (v43 != &v48)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v43 + 16), v50, v51, (v51 - v50) >> 2);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      if (fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Member(v29) && fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Member(v43))
      {
        v44 = **(a1[2] + 16);
        if ((*(a1[8] + ((*(v20 + 48) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v20 + 48)))
        {
          (*(v44 + 40))();
LABEL_90:
          v41 = 0;
          v42 = 1;
          goto LABEL_104;
        }

        (*(v44 + 24))();
        v41 = 0;
        v45 = *(v20 + 48);
        v42 = 1;
        *(*v10 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      }

      else
      {
        v42 = 0;
        v41 = 1;
        *v47 = 1;
      }

LABEL_104:
      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      v19 = v56;
      if (!v42)
      {
        goto LABEL_114;
      }

      if (v56)
      {
        (*(*v56 + 40))();
      }

      else
      {
        ++v59;
      }
    }

    v41 = 10;
LABEL_114:
    if (v19)
    {
      (*(*v19 + 8))(v19);
      goto LABEL_119;
    }

LABEL_117:
    if (v58)
    {
      --*v58;
    }

LABEL_119:
    if (v41 == 10)
    {
      v46 = 0;
    }

    else
    {
      v46 = v41;
    }

    if (__p)
    {
      v63 = __p;
      operator delete(__p);
    }
  }

  while (!v46);
}

void sub_1B5843878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::resize(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 40 * a2;
    while (v4 != v8)
    {
      v9 = *(v4 - 24);
      if (v9)
      {
        *(v4 - 16) = v9;
        operator delete(v9);
      }

      v4 -= 40;
    }

    a1[1] = v8;
  }
}

uint64_t fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::NoWeight@<X0>(uint64_t a1@<X8>)
{
  v2 = fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::NoWeight();
  *a1 = *v2;
  v3 = *(v2 + 4);
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *(v4 - 12) = v3;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;

  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, 0, 0, 0);
}

uint64_t *std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__append(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = v7 + 40 * a2;
      v13 = 40 * a2;
      do
      {
        *v7 = *a3;
        v14 = *(a3 + 4);
        *(v7 + 16) = 0;
        *(v7 + 4) = v14;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v7 + 16, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
        v7 += 40;
        v13 -= 40;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v22 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PruneProbsRecord>>(result, v11);
    }

    v19 = 0;
    v20 = 40 * v8;
    v21 = 40 * v8;
    std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__construct_at_end(&v19, a2, a3);
    v15 = v5[1];
    v16 = v20 + *v5 - v15;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>*>(v5, *v5, v15, v16);
    v17 = *v5;
    *v5 = v16;
    v18 = v5[2];
    *(v5 + 1) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(&v19);
  }

  return result;
}

void sub_1B5843C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = v4 + 40 * a2;
    v7 = 40 * a2;
    do
    {
      *v4 = *a3;
      v8 = *(a3 + 4);
      *(v4 + 16) = 0;
      *(v4 + 4) = v8;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 16, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
      v4 += 40;
      v7 -= 40;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::NoWeight(void)::no_weight;
}

void sub_1B5843D4C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1000C403E1C8BA9);
  _Unwind_Resume(a1);
}

uint64_t fst::PairWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::NoWeight(void)::no_weight;
}

uint64_t fst::ShortestDistanceState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ShortestDistanceState(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    operator delete(v3);
  }

  v5 = (a1 + 40);
  std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return a1;
}

BOOL fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Member(float *a1)
{
  result = 0;
  if (*a1 != -INFINITY)
  {
    result = fst::LatticeWeightTpl<float>::Member(a1 + 1);
    if (result)
    {
      return *a1 == INFINITY && a1[1] == INFINITY && a1[2] == INFINITY || *a1 != INFINITY && (a1[1] != INFINITY || a1[2] != INFINITY);
    }
  }

  return result;
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v3;
  *(a3 + 4) = *(v3 + 4);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3 + 16, *(v3 + 16), *(v3 + 24), (*(v3 + 24) - *(v3 + 16)) >> 2);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
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

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v7 = *a3;
  v8 = *(a3 + 1);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 2);
  fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::SetFinal(v6, a2, &v7);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_1B5844494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[5] = 0;
  v5[6] = 0;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](v5 + 7);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 56);

  return std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D34000;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D33F50;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B5844B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D33FC8;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D34000;
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

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Write(uint64_t a1)
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

void sub_1B5844E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5844F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::operator=(uint64_t a1)
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

void sub_1B5845020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D34000;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D33F50;
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
    v6 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a2);
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
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::AddState();
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

uint64_t fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1)
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

void sub_1B5845858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>();
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  v3 = *(*(a1 + 64) + 8 * a2);
  v4 = *a3;
  v5 = *(a3 + 1);
  v7 = 0;
  v8 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 2);
  *v3 = v4;
  *(v3 + 4) = v5;
  if (v3 != &v4)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v3 + 16), __p, v7, (v7 - __p) >> 2);
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_1B5845908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B58459F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::construct[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const&,0>(a1, a4, v7);
      v7 += 56;
      a4 = v13 + 56;
      v13 += 56;
    }

    while (v7 != a3);
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 24);
      if (v8)
      {
        *(v5 + 32) = v8;
        operator delete(v8);
      }

      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[5];
  }

  if (!a2[1])
  {
    ++a1[6];
  }

  return std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::push_back[abi:ne200100](a1 + 7, a2);
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::__emplace_back_slow_path<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::construct[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const&,0>(a1, a1[1], a2);
    result = v3 + 56;
    a1[1] = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::__emplace_back_slow_path<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> const&>(uint64_t *a1, uint64_t a2)
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

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  std::allocator_traits<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::construct[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const&,0>(a1, 56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = 56 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5845CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1, a2, a3, 1);
  }
}

void sub_1B5845E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v8 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v9 = v8;
  if (!a4 || (v10 = v8 & 0x3FFFFFFF0000 | (2 * v8) & 0x2AAAAAAA0000 | (v8 >> 1) & 0x155555550000 | 7, (a2 & ~v10) != 0))
  {
    v9 = v8 & 7;
    v74 = v9;
    v11 = (*(*v7 + 16))(v7);
    if ((a2 & 0xF3C00000000) != 0 && v11)
    {
      v68 = 0;
      v69[0] = 0;
      v69[1] = 0;
      v70 = &v74;
      fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(v7, &v68);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
    {
      goto LABEL_139;
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

    v74 = v14;
    memset(&v67, 0, sizeof(v67));
    memset(&v66, 0, sizeof(v66));
    v65 = 0;
    (*(*v7 + 128))(v7, &v63);
    v16 = 0;
    v47 = v7;
LABEL_12:
    if (!v63)
    {
      if (v65 >= v64)
      {
        goto LABEL_131;
      }

      goto LABEL_17;
    }

    if (!(*(*v63 + 16))(v63))
    {
      if (v63)
      {
        v17 = (*(*v63 + 24))();
LABEL_18:
        v18 = (*(*v7 + 40))(v7, v17);
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v67.__end_ = v67.__begin_;
        v66.__end_ = v66.__begin_;
        if (v12)
        {
          std::vector<int>::reserve(&v67, v18);
        }

        if (v15)
        {
          std::vector<int>::reserve(&v66, v18);
        }

        v62 = 0;
        (*(*v7 + 136))(v7, v17, &v58);
        v19 = 1;
        while (1)
        {
          if (v58)
          {
            if ((*(*v58 + 24))(v58))
            {
              if (v58)
              {
                (*(*v58 + 8))();
                goto LABEL_80;
              }

LABEL_78:
              if (v61)
              {
                --*v61;
              }

LABEL_80:
              v7 = v47;
              if (!v12 || (std::__sort<std::__less<int,int> &,int *>(), v34 = v67.__end_ - v67.__begin_, v34 < 2))
              {
LABEL_85:
                if (!v15)
                {
                  goto LABEL_94;
                }

LABEL_86:
                std::__sort<std::__less<int,int> &,int *>();
                v37 = v66.__end_ - v66.__begin_;
                if (v37 >= 2)
                {
                  v38 = v37 - 1;
                  v39 = v66.__begin_ + 1;
                  while (*v39 != *(v39 - 1))
                  {
                    ++v39;
                    if (!--v38)
                    {
                      goto LABEL_94;
                    }
                  }

                  v74 = v74 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                }

                goto LABEL_94;
              }

              v35 = v34 - 1;
              v36 = v67.__begin_ + 1;
              while (*v36 != *(v36 - 1))
              {
                ++v36;
                if (!--v35)
                {
                  goto LABEL_85;
                }
              }

              v74 = v74 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
              if (v15)
              {
                goto LABEL_86;
              }

LABEL_94:
              if (v16 >= 1)
              {
                v74 = v74 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              (*(*v47 + 32))(&v58, v47, v17);
              fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v53);
              v48 = *&v58;
              v78 = v53;
              v40.n128_u32[0] = v58;
              if (*&v58 != v53 || (v48 = *(&v58 + 1), v78 = *&v59, v77 = v54, v76 = v55, v40.n128_u32[0] = HIDWORD(v58), *(&v58 + 1) != v54) || (v40.n128_f32[0] = v78, v78 != v76))
              {
                v41 = 1;
                goto LABEL_100;
              }

              v42 = v56;
              if (v61 - v60 == v57 - v56)
              {
                v41 = memcmp(v60, v56, v61 - v60) != 0;
LABEL_100:
                v42 = v56;
                if (v56)
                {
LABEL_101:
                  v57 = v42;
                  operator delete(v42);
                }
              }

              else
              {
                v41 = 1;
                if (v56)
                {
                  goto LABEL_101;
                }
              }

              if (v41)
              {
                fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v53);
                v48 = *&v58;
                v78 = v53;
                v43.n128_u32[0] = v58;
                if (*&v58 != v53 || (v48 = *(&v58 + 1), v78 = *&v59, v77 = v54, v76 = v55, v43.n128_u32[0] = HIDWORD(v58), *(&v58 + 1) != v54) || (v43.n128_f32[0] = v78, v78 != v76))
                {
                  v44 = 1;
                  goto LABEL_107;
                }

                v45 = v56;
                if (v61 - v60 == v57 - v56)
                {
                  v44 = memcmp(v60, v56, v61 - v60) != 0;
LABEL_107:
                  v45 = v56;
                  if (v56)
                  {
LABEL_108:
                    v57 = v45;
                    operator delete(v45);
                  }
                }

                else
                {
                  v44 = 1;
                  if (v56)
                  {
                    goto LABEL_108;
                  }
                }

                if (v44)
                {
                  v74 = v74 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }

                ++v16;
              }

              else if ((*(*v47 + 40))(v47, v17, v40) != 1)
              {
                v74 = v74 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              if (v60)
              {
                v61 = v60;
                operator delete(v60);
              }

              if (v70)
              {
                v71 = v70;
                operator delete(v70);
              }

              if (v63)
              {
                (*(*v63 + 32))(v63, v43);
              }

              else
              {
                ++v65;
              }

              goto LABEL_12;
            }

            if (v58)
            {
              v20 = (*(*v58 + 32))();
              goto LABEL_29;
            }
          }

          else if (v62 >= v60)
          {
            goto LABEL_78;
          }

          v20 = v59 + 56 * v62;
LABEL_29:
          v21 = *v20;
          v22 = *v20;
          if (*v20 != *(v20 + 4))
          {
            v74 = v74 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
            v22 = *(v20 + 4);
          }

          if (v21 | v22)
          {
            if (v21)
            {
              if (!v22)
              {
                goto LABEL_39;
              }

              goto LABEL_35;
            }

            v23 = v74;
          }

          else
          {
            v23 = v74 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
          }

          v74 = v23 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
          if (!v22)
          {
LABEL_39:
            v74 = v74 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
            if (v19)
            {
              goto LABEL_44;
            }

            goto LABEL_40;
          }

LABEL_35:
          if (v19)
          {
            goto LABEL_44;
          }

LABEL_40:
          if (v21 < v68)
          {
            v74 = v74 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
          }

          if (v22 < SHIDWORD(v68))
          {
            v74 = v74 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
          }

LABEL_44:
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v53);
          v48 = *(v20 + 8);
          v78 = v53;
          if (v48 != v53 || (v24 = *(v20 + 16), v48 = *(v20 + 12), v78 = v24, v77 = v54, v76 = v55, v48 != v54) || v78 != v76 || (v25 = *(v20 + 24), v26 = *(v20 + 32) - v25, v27 = v56, v26 != v57 - v56) || memcmp(v25, v56, v26))
          {
            fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v48);
            v78 = *(v20 + 8);
            v77 = v48;
            if (v78 != v48 || (v28 = *(v20 + 16), v78 = *(v20 + 12), v77 = v28, v76 = v49, v75 = v50, v78 != v49) || v77 != v75)
            {
              v29 = 1;
              goto LABEL_53;
            }

            v32 = *(v20 + 24);
            v33 = *(v20 + 32) - v32;
            v30 = __p;
            if (v33 == v52 - __p)
            {
              v29 = memcmp(v32, __p, v33) != 0;
LABEL_53:
              v30 = __p;
              if (__p)
              {
LABEL_54:
                v52 = v30;
                operator delete(v30);
              }
            }

            else
            {
              v29 = 1;
              if (__p)
              {
                goto LABEL_54;
              }
            }

            v27 = v56;
            if (!v56)
            {
              goto LABEL_57;
            }

LABEL_56:
            v57 = v27;
            operator delete(v27);
            goto LABEL_57;
          }

          v29 = 0;
          if (v27)
          {
            goto LABEL_56;
          }

LABEL_57:
          if (v29)
          {
            v74 = v74 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
          }

          v31 = *(v20 + 48);
          if (v31 <= v17)
          {
            v74 = v74 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
          }

          if (v31 != v17 + 1)
          {
            v74 = v74 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          v68 = *v20;
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(v69, v20 + 8);
          v73 = *(v20 + 48);
          if (v12)
          {
            std::vector<int>::push_back[abi:ne200100](&v67.__begin_, v20);
          }

          if (v15)
          {
            std::vector<int>::push_back[abi:ne200100](&v66.__begin_, (v20 + 4));
          }

          if (v58)
          {
            (*(*v58 + 40))(v58);
            v19 = 0;
          }

          else
          {
            v19 = 0;
            ++v62;
          }
        }
      }

LABEL_17:
      v17 = v65;
      goto LABEL_18;
    }

    if (v63)
    {
      (*(*v63 + 8))();
    }

LABEL_131:
    if ((*(*v7 + 24))(v7) != -1 && (*(*v7 + 24))(v7))
    {
      v74 = v74 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
    }

    if (v66.__begin_)
    {
      v66.__end_ = v66.__begin_;
      operator delete(v66.__begin_);
    }

    if (v67.__begin_)
    {
      v67.__end_ = v67.__begin_;
      operator delete(v67.__begin_);
    }

    v9 = v74;
LABEL_139:
    v10 = v9 & 0x3FFFFFFF0000 | (2 * v9) & 0x2AAAAAAA0000 | (v9 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v10;
  return v9;
}

void sub_1B58468C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5847198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::InitVisit(uint64_t a1, uint64_t a2)
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

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 32))(&v26);
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v21);
  v33 = v26;
  v32 = v21;
  v6 = *&v26 != v21 || (v33 = HIDWORD(v26), v32 = v27, v31 = v22, v30 = v23, *(&v26 + 1) != v22) || v32 != v30 || v29 - v28 != v25 - __p || memcmp(v28, __p, v29 - v28) != 0;
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v6)
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v7 + 4 * a2))
  {
    goto LABEL_26;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_25;
    }

LABEL_23:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_23;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_25:
  ++*(a1 + 48);
LABEL_26:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * a2);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

void sub_1B5847610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D34178;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D34178;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D341B8;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B58477A0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D341B8;
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

void *std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>> *>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>> *>>::__add_back_capacity(void *a1)
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

void sub_1B5847AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetFromFst<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v25);
  if (!v25 && (a4 & 1) == 0)
  {
    v10 = v26 + 56 * v27;
    *(a1 + 16) = v26;
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

    v24 = 0x4000;
    if (v13 > 0x4000)
    {
      v24 = v13;
    }

    *(a1 + 8) = v24;
    v15 = malloc_type_malloc(56 * v24, 0x10100407878D4B7uLL);
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
  v16 = v25;
  v17 = v26;
  v19 = v27;
  v18 = v28;
  if (v28)
  {
    ++*v28;
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
    *(v15 - 7) = *v23;
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=((v15 - 6), v23 + 8);
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

void sub_1B5847DDC(_Unwind_Exception *exception_object)
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

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::WriteFst<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>(void *a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  *v33 = 0u;
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
    v37 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) != 0)
  {
    v7 = 1;
    v6 = -1;
  }

  else
  {
    (*(**(v8 + 5) + 32))(&__p);
    v6 = v41;
    if (v41 != -1)
    {
      goto LABEL_3;
    }

    v7 = 1;
  }

LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::WriteFstHeader(a1, a2, a3, 2, &__p, v9 | 3, v31);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v29 = v6;
  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = v7;
    v12 = 0;
    v13 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 32))(&__p, a1, v12);
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Write(&__p, a2);
      if (__p.__r_.__value_.__r.__words[2])
      {
        v40 = __p.__r_.__value_.__r.__words[2];
        operator delete(__p.__r_.__value_.__r.__words[2]);
      }

      __p.__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v12);
      std::ostream::write();
      v14 = *(*(a1[1] + 64) + 8 * v12);
      v16 = *(v14 + 56);
      v15 = *(v14 + 64);
      if (v15 == v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v14 + 56);
      }

      if (v15 != v16)
      {
        if ((0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 3)) <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 3);
        }

        do
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = *v17;
          std::ostream::write();
          LODWORD(__p.__r_.__value_.__l.__data_) = v17[1];
          std::ostream::write();
          fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Write((v17 + 2), a2);
          LODWORD(__p.__r_.__value_.__l.__data_) = v17[12];
          std::ostream::write();
          v17 += 14;
          --v18;
        }

        while (v18);
      }

      ++v12;
    }

    while (v12 != v13);
    v7 = v11;
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v19 = fst::LogMessage::LogMessage(&v30, &__p);
    v20 = fst::cerr(v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "VectorFst::Write: write failed: ", 32);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
LABEL_31:
    fst::LogMessage::~LogMessage(&v30);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_34;
  }

  if (!v7)
  {
    if (v37 == v13)
    {
      updated = 1;
      goto LABEL_34;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v27 = fst::LogMessage::LogMessage(&v30, &__p);
    v28 = fst::cerr(v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Inconsistent number of states observed during write", 51);
    goto LABEL_31;
  }

  v37 = v13;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  updated = fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::UpdateFstHeader(a1, a2, a3, 2, &__p, v9 | 3, v31, v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_34:
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

void sub_1B58482F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a15);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::Type();
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

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
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

uint64_t fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::Type()
{
  {
    operator new();
  }

  return fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::WriteFile(fst *a1, uint64_t a2)
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

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::SetFinal(void *a1, int a2, uint64_t a3)
{
  v6 = *(a1[8] + 8 * a2);
  v23 = *v6;
  v24 = *(v6 + 1);
  v26 = 0;
  v27 = 0;
  v25 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v25, *(v6 + 2), *(v6 + 3), (*(v6 + 3) - *(v6 + 2)) >> 2);
  v18 = *a3;
  v19 = *(a3 + 4);
  v21 = 0;
  v22 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::SetFinal(a1, a2, &v18);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  v7 = (*(*a1 + 24))(a1);
  v13 = v23;
  v14 = v24;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v15, v25, v26, (v26 - v25) >> 2);
  v8 = *a3;
  v9 = *(a3 + 4);
  v11 = 0;
  v12 = 0;
  v10 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v10, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
  a1[1] = a1[1] & 4 | fst::SetFinalProperties<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>(v7, &v13, &v8);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_1B5848F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v24 = *(v22 - 56);
  if (v24)
  {
    *(v22 - 48) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::AddArc(void *a1, int a2, float *a3)
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
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::AddArc(v9, a3);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::DeleteStates(uint64_t a1, char **a2)
{
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

  v10 = *(a1 + 64);
  if (*(a1 + 72) == v10)
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
        fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Destroy(*(v10 + 8 * v11));
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
      v10 = *(a1 + 64);
    }

    while (v11 < (*(a1 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v13);
  v14 = *(a1 + 64);
  if (*(a1 + 72) != v14)
  {
    v15 = 0;
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
        do
        {
          v23 = *(__p[0] + *v22);
          if (v23 == -1)
          {
            v25 = *(v22 - 6);
            v26.i64[0] = v25;
            v26.i64[1] = HIDWORD(v25);
            v17 = vaddq_s64(v17, vceqzq_s64(v26));
          }

          else
          {
            *v22 = v23;
            if (v20 != v21)
            {
              v34 = v17;
              v24 = (v19 + 56 * v21);
              *v24 = *(v22 - 6);
              fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=((v24 + 1), (v22 - 10));
              *(v19 + 56 * v21 + 48) = *v22;
              v14 = *v4;
              v17 = v34;
            }

            ++v21;
          }

          ++v20;
          v16 = *(v14 + 8 * v15);
          v27 = 0x6DB6DB6DB6DB6DB7 * ((*(v16 + 64) - *(v16 + 56)) >> 3);
          v22 += 14;
        }

        while (v20 < v27);
        v28 = v17.i64[1];
        v29 = v17.i64[0];
      }

      else
      {
        v21 = 0;
        v27 = 0;
        v28 = *(v16 + 48);
        v29 = *(v16 + 40);
      }

      fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::DeleteArcs(v16, v27 - v21);
      v14 = *(a1 + 64);
      v30 = *(a1 + 72);
      v31 = *(v14 + 8 * v15);
      *(v31 + 40) = v29;
      *(v31 + 48) = v28;
      ++v15;
    }

    while (v15 < (v30 - v14) >> 3);
  }

  v32 = *(a1 + 88);
  if (v32 == -1)
  {
    v33 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v33 = __p[0];
    *(a1 + 88) = *(__p[0] + v32);
  }

  __p[1] = v33;
  operator delete(v33);
}

void sub_1B58492EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::SetValue(uint64_t a1, float *a2)
{
  v4 = *(*(a1 + 8) + 56) + 56 * *(a1 + 24);
  v5 = *v4;
  v6 = *(v4 + 4);
  if (*v4 != v6)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v5)
  {
    if (!v6)
    {
      v7 = *(a1 + 16);
      v8 = *v7;
LABEL_8:
      *v7 = v8 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v9 = *v7;
    *v7 &= ~0x1000000uLL;
    if (!v6)
    {
      v8 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      *v7 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      goto LABEL_8;
    }
  }

  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v37);
  v32 = *(v4 + 8);
  v45 = v37;
  if (v32 == v37 && (v32 = *(v4 + 12), v45 = *(v4 + 16), v44 = v38, v43 = v39, v32 == v38) && v45 == v43 && (v10 = *(v4 + 24), v11 = *(v4 + 32) - v10, v12 = v40, v11 == v41 - v40) && !memcmp(v10, v40, v11))
  {
    v15 = 0;
    if (v12)
    {
LABEL_23:
      v41 = v12;
      operator delete(v12);
    }
  }

  else
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v32);
    v45 = *(v4 + 8);
    v44 = v32;
    v15 = v45 != v32 || (v45 = *(v4 + 12), v44 = *(v4 + 16), v43 = v33, v42 = v34, v45 != v33) || v44 != v42 || (v13 = *(v4 + 24), v14 = *(v4 + 32) - v13, v14 != v36 - __p) || memcmp(v13, __p, v14) != 0;
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    v12 = v40;
    if (v40)
    {
      goto LABEL_23;
    }
  }

  if (v15)
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  v16 = 0x30FC30007;
  if (*a2 == *v4 && *(a2 + 1) == *(v4 + 4) && *(a2 + 12) == *(v4 + 48))
  {
    v16 = 0x3FFFFFFF0007;
  }

  fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetArc(*(a1 + 8), a2, *(a1 + 24));
  v17 = *a2;
  v18 = *(a2 + 1);
  if (*a2 != v18)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v17 == 0.0)
  {
    v19 = *(a1 + 16);
    v21 = *v19 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v19 = v21;
    if (!v18)
    {
      v20 = v21 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v19 = v20;
      goto LABEL_37;
    }
  }

  else if (!v18)
  {
    v19 = *(a1 + 16);
    v20 = *v19;
LABEL_37:
    *v19 = v20 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v37);
  v32 = a2[2];
  v45 = v37;
  if (v32 == v37 && (v22 = a2[4], v32 = a2[3], v45 = v22, v44 = v38, v43 = v39, v32 == v38) && v45 == v43 && (v23 = *(a2 + 3), v24 = *(a2 + 4) - v23, v25 = v40, v24 == v41 - v40) && !memcmp(v23, v40, v24))
  {
    v29 = 0;
    if (v25)
    {
LABEL_52:
      v41 = v25;
      operator delete(v25);
    }
  }

  else
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v32);
    v45 = a2[2];
    v44 = v32;
    v29 = v45 != v32 || (v26 = a2[4], v45 = a2[3], v44 = v26, v43 = v33, v42 = v34, v45 != v33) || v44 != v42 || (v27 = *(a2 + 3), v28 = *(a2 + 4) - v27, v28 != v36 - __p) || memcmp(v27, __p, v28) != 0;
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    v25 = v40;
    if (v40)
    {
      goto LABEL_52;
    }
  }

  v30 = *(a1 + 16);
  v31 = *v30;
  if (v29)
  {
    v31 = v31 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    *v30 = v31;
  }

  *v30 = v31 & v16;
}

void sub_1B58497D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      *v10 = *v8;
      v11 = *(v8 + 4);
      *(v10 + 16) = 0;
      *(v10 + 4) = v11;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v10 + 16, *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 2);
      v8 += 40;
      v10 += 40;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v12 = v7 - 40;
    v13 = a4 - v7;
    v14 = a2 + v7 - 40 - a4;
    do
    {
      result = fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(v12, v14);
      v12 -= 40;
      v14 -= 40;
      v13 += 40;
    }

    while (v13);
  }

  return result;
}

uint64_t std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::emplace_back<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int> const&>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x999999999999999ALL * ((v4 - *a1) >> 3);
      }

      v10 = a1[4];
      v14 = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<PruneProbsRecord>>(v10, v9);
    }

    v8 = (0xCCCCCCCCCCCCCCCDLL * (v7 >> 3) + 1) / -2;
    v5 = v6 - 40 * ((0xCCCCCCCCCCCCCCCDLL * (v7 >> 3) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::operator=(v5, v6);
        v6 += 40;
        v5 += 40;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 40 * v8;
    a1[2] = v5;
  }

  *v5 = *a2;
  v11 = *(a2 + 4);
  *(v5 + 16) = 0;
  v12 = v5 + 16;
  *(v12 - 12) = v11;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v12, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  a1[2] += 40;
  return result;
}

uint64_t std::vector<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::__construct_at_end_with_size<std::move_iterator<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>*>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = v4 + 40 * a3;
    v7 = 40 * a3;
    do
    {
      *v4 = *a2;
      v8 = *(a2 + 4);
      *(v4 + 16) = 0;
      *(v4 + 4) = v8;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      v4 += 40;
      a2 += 40;
      v7 -= 40;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::__emplace_back_slow_path<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>(a1, a2);
  }

  else
  {
    std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::pair[abi:ne200100](a1[1], a2);
    result = v3 + 48;
    a1[1] = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void fst::Connect<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  v2 = 0;
  memset(v3, 0, sizeof(v3));
  v1[0] = 0;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = &v2;
  fst::DfsVisit<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::SccVisitor<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1, v1);
}

void sub_1B5849D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *(v12 - 80);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(v11 + 24);
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::__emplace_back_slow_path<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>(uint64_t *a1, uint64_t a2)
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

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::pair[abi:ne200100](48 * v2, a2);
  v15 = 48 * v2 + 48;
  v7 = a1[1];
  v8 = 48 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5849EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::pair[abi:ne200100](a4, v6);
      v6 += 48;
      a4 = v12 + 48;
      v12 += 48;
    }

    while (v6 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 24);
      if (v7)
      {
        *(v5 + 32) = v7;
        operator delete(v7);
      }

      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>,std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 48;
  }
}

uint64_t std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 48;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 48;
    }
  }
}

int *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>> &,std::__wrap_iter<int *>>(int *a1, uint64_t **a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()(a2, *v8, a1[v6 + 2]);
      if (v11)
      {
        v12 = 4;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

BOOL std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>> &,std::__wrap_iter<int *>>(_BOOL8 result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()(a3, *v8, *(a2 - 4));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        result = fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()(a3, *v8, v10);
        v9 = v11;
      }

      while (result);
      *v11 = v10;
    }
  }

  return result;
}

BOOL fst::ShortestPathCompare<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()(uint64_t **a1, int a2, int a3)
{
  v4 = **a1;
  v5 = (v4 + 48 * a2);
  v6 = (v4 + 48 * a3);
  v7 = *v5;
  if (v7 == *(a1 + 4))
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v37);
  }

  else
  {
    v8 = *a1[1];
    if (0xCCCCCCCCCCCCCCCDLL * ((a1[1][1] - v8) >> 3) <= v7)
    {
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v37);
    }

    else
    {
      v9 = (v8 + 40 * v7);
      v37 = *v9;
      v38 = *(v9 + 1);
      v40 = 0;
      v41 = 0;
      v39 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v39, *(v9 + 2), *(v9 + 3), (*(v9 + 3) - *(v9 + 2)) >> 2);
    }
  }

  v10 = *v6;
  if (v10 == *(a1 + 4))
  {
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v32);
  }

  else
  {
    v11 = *a1[1];
    if (0xCCCCCCCCCCCCCCCDLL * ((a1[1][1] - v11) >> 3) <= v10)
    {
      fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v32);
    }

    else
    {
      v12 = (v11 + 40 * v10);
      v32 = *v12;
      v33 = *(v12 + 1);
      v35 = 0;
      v36 = 0;
      v34 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v34, *(v12 + 2), *(v12 + 3), (*(v12 + 3) - *(v12 + 2)) >> 2);
    }
  }

  fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(&v37, (v5 + 2), &v27);
  fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(&v32, (v6 + 2), &v22);
  v13 = *(a1 + 4);
  v14 = *v6;
  if (*v5 == v13 && v14 != v13)
  {
    if (fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()((a1 + 3), &v22, &v27))
    {
      v17 = 1;
      goto LABEL_41;
    }

    v19 = *(a1 + 5);
    v20 = v22 > (v19 + v27) || v27 > (v19 + v22);
    if (!v20 && (v28 == v23 && v29 == v24 || vabds_f32(v28 + v29, v23 + v24) <= v19) && v31 - v30 == v26 - __p)
    {
      v17 = memcmp(v30, __p, v31 - v30) == 0;
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (*v5 == v13 || v14 != v13)
  {
    v17 = fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()((a1 + 3), &v22, &v27);
    goto LABEL_41;
  }

  if (!fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>::operator()((a1 + 3), &v22, &v27))
  {
LABEL_40:
    v17 = 0;
    goto LABEL_41;
  }

  v18 = *(a1 + 5);
  v17 = 1;
  if (v22 <= (v18 + v27) && v27 <= (v18 + v22) && (v28 == v23 && v29 == v24 || vabds_f32(v28 + v29, v23 + v24) <= v18) && v31 - v30 == v26 - __p)
  {
    v17 = memcmp(v30, __p, v31 - v30) != 0;
  }

LABEL_41:
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  return v17;
}

void sub_1B584A5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v24 = *(v22 - 56);
  if (v24)
  {
    *(v22 - 48) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D342A8;
  a1[1] = 0;
  if (!(*(*a2 + 64))(a2, 0x10000, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v3 = fst::LogMessage::LogMessage(&v8, __p);
    v4 = fst::cerr(v3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "DeterminizeFst:", 15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " distance to final states computed for acceptors only", 53);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1[1] + 8) |= 4uLL;
  }

  operator new();
}

void sub_1B584A864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~ImplToFst(v18);
  _Unwind_Resume(a1);
}

_DWORD *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    ++*(a2 + 56);
  }

  result = *(a1 + 8);
  if (result)
  {
    v6 = result[14] - 1;
    result[14] = v6;
    if (!v6)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(a1 + 8) = a2;
  return result;
}

void *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D34388;
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

void fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~DeterminizeFst(void *a1)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B584AE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_1F2D344F0;
  v2 = a1[17];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~CacheBaseImpl(a1);
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::Expand(void *a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, (v4 + 5));
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v9);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetArcs(a1, a2);
  std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::destroy(&v8, v9[0]);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  v1 = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (v1 != -1)
  {
    v2 = v1;
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(&v4);
    v8 = v2;
    v9 = v4;
    v10 = v5;
    memset(v11, 0, sizeof(v11));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v11, __p, v7, (v7 - __p) >> 2);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    operator new();
  }

  return 0xFFFFFFFFLL;
}

void sub_1B584B460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(*(*(a1 + 184) + 88) + 8 * a2);
  result = fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(a3);
  for (i = *v5; i; i = *i)
  {
    (*(**(a1 + 136) + 32))(v13);
    fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>((i + 2), v13, v16);
    fst::Plus<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(a3, v16, &v19);
    *a3 = v19;
    *(a3 + 4) = v20;
    if (&v19 != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a3 + 16), v21, v22, (v22 - v21) >> 2);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    v8 = *a3;
    v9 = *(a3 + 4);
    v11 = 0;
    v12 = 0;
    v10 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v10, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
    v19 = v8;
    v20 = v9;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, v10, v11, (v11 - v10) >> 2);
    *a3 = v19;
    *(a3 + 4) = v20;
    if (&v19 != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a3 + 16), v21, v22, (v22 - v21) >> 2);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }

    result = fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Member(a3);
    if ((result & 1) == 0)
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  return result;
}

void sub_1B584B660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  v25 = *(v23 - 72);
  if (v25)
  {
    *(v23 - 64) = v25;
    operator delete(v25);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v22 + 16);
  if (v26)
  {
    *(v22 + 24) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D34000;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D34548;
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
  *a1 = &unk_1F2D34000;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D34548;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B584B810(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::VectorCacheStore(void *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a1 + 4;
  a1[5] = a1 + 4;
  a1[6] = 0;
  a1[7] = 0;
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Clear(a1);
  a1[7] = a1[5];
  return a1;
}

void sub_1B584B8E4(_Unwind_Exception *a1)
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

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D34548;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(void *a1, size_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), a2, a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (a2)
  {
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 10, a2);
  }

  return a1;
}

void sub_1B584BA2C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_1F2D34438;
  v2 = a1[22];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[23];
  if (v3)
  {
    v4 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(v3);
    MEMORY[0x1B8C85350](v4, 0x10E0C400200E20DLL);
  }

  return fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~DeterminizeFstImplBase(a1);
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(uint64_t a1)
{
  v4 = a1 + 88;
  v2 = *(a1 + 88);
  v3 = *(v4 + 8);
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::clear(v2[v5]);
        MEMORY[0x1B8C85350](v6, 0x1020C405F07FB98);
        v2 = *(a1 + 88);
        v3 = *(a1 + 96);
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 32);
  return a1;
}

void std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::clear(void **a1)
{
  for (i = *a1; i; i = v3)
  {
    v3 = *i;
    std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::__delete_node[abi:ne200100](a1, i);
  }

  *a1 = 0;
}

void std::__forward_list_base<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[4];
  if (v3)
  {
    __p[5] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

void sub_1B584BE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_1B584BFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void sub_1B584C160(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::CopyStates(a1, a2);
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Clear(a1);
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

uint64_t fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = 0;
  *(a1 + 40) = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> const*>>(a1 + 56, v5, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 3));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void sub_1B584C458(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B584C4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> const*,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>> const*,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::allocator_traits<std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::construct[abi:ne200100]<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int> const&,0>(a1, v4, v6);
      v6 += 56;
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(void *a1, int a2, void *a3)
{
  v5 = **(*(a1[23] + 88) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = *(v5 + 2);
      v7 = a1[17];
      v25 = 0;
      (*(*v7 + 136))(v7, v6, v23);
      if (!v23[0])
      {
        break;
      }

      if (!(*(*v23[0] + 24))(v23[0]))
      {
        if (v23[0])
        {
          v8 = (*(*v23[0] + 32))();
        }

        else
        {
LABEL_7:
          v8 = (v23[1] + 56 * v25);
        }

        v9 = v8[12];
        fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>((v5 + 2), (v8 + 2), &v16);
        v20[0] = v9;
        v20[2] = v16;
        v21 = v17;
        memset(v22, 0, sizeof(v22));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v22, __p, v19, (v19 - __p) >> 2);
        if (__p)
        {
          v19 = __p;
          operator delete(__p);
        }

        fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::FilterArc(a1[22], v8, (v5 + 1), v20, a3);
      }

      if (!v23[0])
      {
        goto LABEL_13;
      }

      (*(*v23[0] + 8))();
LABEL_15:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    if (v25 < v23[2])
    {
      goto LABEL_7;
    }

LABEL_13:
    if (v24)
    {
      --*v24;
    }

    goto LABEL_15;
  }

LABEL_16:
  v12 = *a3;
  v10 = a3 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::DefaultCommonDivisor<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::IntegerFilterState<signed char>>>::NormArc(a1, (v11 + 5));
      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v11[2];
          v15 = *v14 == v11;
          v11 = v14;
        }

        while (!v15);
      }

      v11 = v14;
    }

    while (v14 != v10);
  }
}

void sub_1B584C818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23)
{
  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  else if (a23)
  {
    --*a23;
  }

  _Unwind_Resume(exception_object);
}