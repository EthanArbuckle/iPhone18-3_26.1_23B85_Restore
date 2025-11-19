void sub_25A3A9B54(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<signed char,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v127 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_82;
  }

  v101 = *(*a1 + 48);
  v118 = 0;
  v119 = 0;
  v120 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v118, *a4, a4[1], (a4[1] - *a4) >> 3);
  v121 = 0;
  v122 = 0;
  v123 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v121, *a5, a5[1], (a5[1] - *a5) >> 3);
  v107 = 0;
  v108 = 0;
  v109 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v107, &v118, &v124, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v107, 0x7FFFFFFFuLL, &v114);
  v117 = &v107;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v117);
  for (i = 0; i != -6; i -= 3)
  {
    v16 = *(&v121 + i * 8);
    if (v16)
    {
      (&v122)[i] = v16;
      operator delete(v16);
    }
  }

  v17 = (v115 - v114) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v118, &v114, v116, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v107, &v114, v116 + 3, v17 - 3);
    v22 = v115 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v115);
    if (v101)
    {
      v98 = v13;
      v25 = 0;
      v105 = (v120 - v119) >> 2;
      v26 = v114;
      v27 = *v116;
      v28 = v116[3];
      v29 = v17 - 2;
      v30 = v17 - 1;
      v31 = (((v120 - v119) << 30) - 0x100000000) >> 32;
      v32 = v122;
      v93 = v125;
      v96 = v31;
      v97 = &v119[4 * v31];
      v103 = &v125[4 * v31];
      v104 = (v109 - v108) >> 2;
      v33 = v110;
      __p = v112;
      v95 = (((v109 - v108) << 30) - 0x100000000) >> 32;
      v102 = &v112[4 * v95];
      v34 = 4 * (v105 & 0x7FFFFFFF);
      v92 = v119 - 8;
      v35 = 4 * (v104 & 0x7FFFFFFF);
      v91 = v108 - 8;
      v99 = v108 + 4 * v95;
      v100 = v23;
      do
      {
        v106 = v25;
        v36 = v21;
        v37 = v26[v21];
        if (v37 >= 1)
        {
          v38 = 0;
          v39 = *(v27 + 8 * v21);
          v40 = &v98[v107];
          v41 = v118 + v12;
          v42 = v26[v29];
          v43 = 8 * *(v28 + 8 * v21);
          do
          {
            if (v42 >= 1)
            {
              v44 = 0;
              v45 = *(v27 + 8 * v29);
              v46 = v26[v30];
              v47 = 8 * *(v28 + 8 * v29);
              v48 = v40;
              v49 = v41;
              do
              {
                if (v46 >= 1)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = *(v27 + 8 * v30);
                  v53 = 8 * *(v28 + 8 * v30);
                  v54 = v46;
                  do
                  {
                    *(v48 + v50) = v49[v51];
                    v51 += v52;
                    v50 += v53;
                    --v54;
                  }

                  while (v54);
                }

                v49 += v45;
                ++v44;
                v48 = (v48 + v47);
              }

              while (v44 != v42);
            }

            v41 += v39;
            ++v38;
            v40 = (v40 + v43);
          }

          while (v38 != v37);
        }

        v21 = v36;
        if (v105)
        {
          v55 = *v103;
          v56 = v118;
          v57 = v97;
          if (v105 >= 2 && v55 == *v97 - 1)
          {
            v59 = (v105 & 0x7FFFFFFF) - 1;
            v58 = v93;
            v60 = v92;
            v61 = v103;
            v62 = v96;
            do
            {
              v63 = v59;
              *v61 = 0;
              v56 = (v56 - v32[v62] * (*v57 - 1));
              v118 = v56;
              --v59;
              v61 = &v58[v34 - 8];
              v55 = *v61;
              v58 -= 4;
              if (v63 < 2)
              {
                break;
              }

              v57 = &v60[v34];
              v64 = *&v60[4 * (v105 & 0x7FFFFFFF)] - 1;
              v60 -= 4;
              v62 = v59;
            }

            while (v55 == v64);
            v65 = &v58[v34 - 4];
          }

          else
          {
            v59 = v96;
            v65 = v103;
          }

          *v65 = v55 + 1;
          v118 = (v56 + v32[v59]);
        }

        if (v104)
        {
          v66 = *v102;
          v67 = v107;
          if (v104 >= 2 && v66 == *v99 - 1)
          {
            v68 = __p;
            v69 = v95;
            v70 = v91;
            v71 = (v104 & 0x7FFFFFFF) - 1;
            v72 = v99;
            v73 = v102;
            do
            {
              v74 = v71;
              *v73 = 0;
              v67 -= v33[v69] * (*v72 - 1);
              v107 = v67;
              --v71;
              v73 = &v68[v35 - 8];
              v66 = *v73;
              v68 -= 4;
              if (v74 < 2)
              {
                break;
              }

              v72 = &v70[v35];
              v75 = *&v70[4 * (v104 & 0x7FFFFFFF)] - 1;
              v70 -= 4;
              v69 = v71;
            }

            while (v66 == v75);
            v76 = &v68[v35 - 4];
          }

          else
          {
            v71 = v95;
            v76 = v102;
          }

          *v76 = v66 + 1;
          v107 = v33[v71] + v67;
        }

        v25 = v106 + v100;
      }

      while (v106 + v100 < v101);
      v77 = __p;
      if (!__p)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v77 = v112;
      if (!v112)
      {
        goto LABEL_62;
      }
    }

    v113 = v77;
    operator delete(v77);
LABEL_62:
    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }

    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }

    if (v125)
    {
      v126 = v125;
      operator delete(v125);
    }

    if (v122)
    {
      v123 = v122;
      operator delete(v122);
    }

    if (v119)
    {
      v120 = v119;
      operator delete(v119);
    }

    goto LABEL_80;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v78 = *v114;
    if (*v114 >= 1)
    {
      v79 = 0;
      v80 = *v116;
      v81 = **v116;
      v82 = v116[3];
      v83 = *(v114 + 1);
      v84 = 8 * *v82;
      do
      {
        if (v83 >= 1)
        {
          v85 = *(v80 + 8);
          v86 = 8 * v82[1];
          v87 = v13;
          v88 = v83;
          v89 = v12;
          do
          {
            *v87 = *v89;
            v89 += v85;
            v87 = (v87 + v86);
            --v88;
          }

          while (v88);
        }

        v12 += v81;
        ++v79;
        v13 = (v13 + v84);
      }

      while (v79 != v78);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v114;
    if (*v114 >= 1)
    {
      v19 = **v116;
      v20 = 8 * *v116[3];
      do
      {
        *v13 = *v12;
        v12 += v19;
        v13 = (v13 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_80:
  v118 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v118);
  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

LABEL_82:
  v90 = *MEMORY[0x277D85DE8];
}

void sub_25A3AA274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v38 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a38);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<signed char,signed char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v110 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = (*(*a2 + 152) + a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
  }

  else
  {
    v15 = *(*a1 + 48);
    v101 = 0;
    v102 = 0;
    v103 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v101, *a4, a4[1], (a4[1] - *a4) >> 3);
    v104 = 0;
    v105 = 0;
    v106 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v104, *a5, a5[1], (a5[1] - *a5) >> 3);
    v90 = 0;
    v91 = 0;
    v92 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v90, &v101, &v107, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v90, 0x7FFFFFFFuLL, &v97);
    v100 = &v90;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v100);
    for (i = 0; i != -48; i -= 24)
    {
      v17 = *(&v104 + i);
      if (v17)
      {
        *(&v105 + i) = v17;
        operator delete(v17);
      }
    }

    v18 = v97;
    v19 = (v98 - v97) >> 2;
    if (v19 > 2)
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      v23 = v19 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v101, &v97, v99, v19 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v90, &v97, v99 + 3, v19 - 3);
      v24 = v98 - 3;
      v25 = 1;
      do
      {
        v26 = *v24++;
        v25 *= v26;
      }

      while (v24 != v98);
      if (v15)
      {
        v27 = 0;
        v28 = v19 - 2;
        v29 = v19 - 1;
        v30 = v99;
        do
        {
          v31 = *(v97 + v23);
          if (v31 >= 1)
          {
            v32 = 0;
            v33 = *(*v30 + 8 * v23);
            v34 = *(v30[3] + 8 * v23);
            v35 = &v13[v90];
            v36 = v101 + v12;
            do
            {
              v37 = *(v97 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = *(*v30 + 8 * v28);
                v40 = *(v30[3] + 8 * v28);
                v41 = v36;
                v42 = v35;
                do
                {
                  v43 = *(v97 + v29);
                  if (v43 >= 1)
                  {
                    v44 = 0;
                    v45 = 0;
                    v46 = *(*v30 + 8 * v29);
                    v47 = *(v30[3] + 8 * v29);
                    do
                    {
                      v42[v44] = v41[v45];
                      v45 += v46;
                      v44 += v47;
                      --v43;
                    }

                    while (v43);
                  }

                  v41 += v39;
                  v42 += v40;
                  ++v38;
                }

                while (v38 != v37);
              }

              v36 += v33;
              v35 += v34;
              ++v32;
            }

            while (v32 != v31);
          }

          v48 = v103 - v102;
          v49 = (v103 - v102) >> 2;
          if (v49)
          {
            v50 = v108;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = v108 + 4 * v51;
            v53 = *v52;
            v54 = v102 + 4 * v51;
            v55 = v105;
            v56 = v101;
            if (v49 >= 2 && v53 == *v54 - 1)
            {
              v59 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v59 - 1;
              v60 = 4 * v59;
              v61 = v102 - 8;
              do
              {
                v62 = v58;
                *v52 = 0;
                v56 = (v56 - v55[v51] * (*v54 - 1));
                v101 = v56;
                --v58;
                v52 = &v50[v60 - 8];
                v53 = *v52;
                v50 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v54 = &v61[v60];
                v63 = *&v61[4 * v59] - 1;
                v61 -= 4;
                v51 = v58;
              }

              while (v53 == v63);
              v52 = &v50[4 * v59 - 4];
            }

            else
            {
              v58 = ((v48 << 30) - 0x100000000) >> 32;
            }

            *v52 = v53 + 1;
            v101 = (v56 + v55[v58]);
          }

          v64 = v92 - v91;
          v65 = (v92 - v91) >> 2;
          if (v65)
          {
            v66 = __p;
            v67 = ((v64 << 30) - 0x100000000) >> 32;
            v68 = __p + 4 * v67;
            v69 = *v68;
            v70 = v93;
            v71 = v90;
            if (v65 >= 2 && (v72 = v91 + 4 * v67, v69 == *v72 - 1))
            {
              v73 = (v64 >> 2) & 0x7FFFFFFF;
              v74 = v73 - 1;
              v75 = 4 * v73;
              v76 = v91 - 8;
              do
              {
                v77 = v74;
                *v68 = 0;
                v71 -= v70[v67] * (*v72 - 1);
                v90 = v71;
                --v74;
                v68 = &v66[v75 - 8];
                v69 = *v68;
                v66 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v72 = &v76[v75];
                v78 = *&v76[4 * v73] - 1;
                v76 -= 4;
                v67 = v74;
              }

              while (v69 == v78);
              v68 = &v66[4 * v73 - 4];
            }

            else
            {
              v74 = ((v64 << 30) - 0x100000000) >> 32;
            }

            *v68 = v69 + 1;
            v90 = v70[v74] + v71;
          }

          v27 += v25;
        }

        while (v27 < v15);
      }

      if (__p)
      {
        v96 = __p;
        operator delete(__p);
      }

      if (v93)
      {
        v94 = v93;
        operator delete(v93);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (v108)
      {
        v109 = v108;
        operator delete(v108);
      }

      if (v105)
      {
        v106 = v105;
        operator delete(v105);
      }

      if (v102)
      {
        v103 = v102;
        operator delete(v102);
      }
    }

    else
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      if (v19 == 2)
      {
        v79 = *v97;
        if (*v97 >= 1)
        {
          v80 = 0;
          v81 = v99;
          v82 = **v99;
          v83 = *v99[3];
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = *(*v81 + 8);
              v86 = *(v81[3] + 8);
              v87 = v12;
              v88 = v13;
              do
              {
                *v88 = *v87;
                v87 += v85;
                v88 += v86;
                --v84;
              }

              while (v84);
            }

            v12 += v82;
            v13 += v83;
            ++v80;
          }

          while (v80 != v79);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v97;
        if (*v97 >= 1)
        {
          v21 = **v99;
          v22 = *v99[3];
          do
          {
            *v13 = *v12;
            v12 += v21;
            v13 += v22;
            --v20;
          }

          while (v20);
        }
      }
    }

    v101 = &v99;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v101);
    if (v97)
    {
      v98 = v97;
      operator delete(v97);
    }
  }

  v89 = *MEMORY[0x277D85DE8];
}

void sub_25A3AA8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<signed char,short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v136 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v111 = *(*a1 + 48);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, *a4, a4[1], (a4[1] - *a4) >> 3);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a5, a5[1], (a5[1] - *a5) >> 3);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v116, &v127, &v133, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v116, 0x7FFFFFFFuLL, &v123);
  v126 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v130 + i);
    if (v16)
    {
      *(&v131 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v124 - v123) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v127, &v123, v125, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v116, &v123, v125 + 3, v17 - 3);
    v22 = v124 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v124);
    if (!v111)
    {
      v81 = v121;
      if (v121)
      {
LABEL_62:
        v122 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      goto LABEL_81;
    }

    v105 = v12;
    v106 = v13;
    v25 = 0;
    v26 = v127;
    v27 = v131;
    v28 = v123;
    v29 = *v125;
    v30 = v125[3];
    v104 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v129 - v128) << 30) - 0x100000000) >> 32;
    v99 = v134;
    v113 = &v134[4 * v32];
    v103 = v32;
    v101 = &v128[4 * v32];
    v33 = ((v129 - v128) >> 2) & 0x7FFFFFFF;
    v98 = v33 - 1;
    v34 = v116;
    v35 = v119;
    v36 = (((v118 - v117) << 30) - 0x100000000) >> 32;
    __p = v121;
    v112 = &v121[4 * v36];
    v37 = ((v118 - v117) >> 2) & 0x7FFFFFFF;
    v97 = v37 - 1;
    v109 = v23;
    v110 = (v129 - v128) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v95 = v117 - 8;
    v96 = v128 - 8;
    v102 = v36;
    v114 = v17 - 3;
    v107 = v117 + 4 * v36;
    v108 = (v118 - v117) >> 2;
    while (1)
    {
      v115 = v25;
      v40 = *&v28[4 * v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = *(v29 + 8 * v114);
        v43 = &v106[v34];
        v44 = v26 + v105;
        v45 = *(v29 + 8 * v104);
        v46 = *&v28[4 * v104];
        v47 = 2 * *(v30 + 8 * v114);
        v48 = 2 * *(v30 + 8 * v104);
        do
        {
          if (v46 >= 1)
          {
            v49 = 0;
            v50 = *(v29 + 8 * v31);
            v51 = *&v28[4 * v31];
            v52 = 2 * *(v30 + 8 * v31);
            v53 = v43;
            v54 = v44;
            do
            {
              if (v51 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v51;
                do
                {
                  *(v53 + v55) = v54[v56];
                  v56 += v50;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              v54 += v45;
              ++v49;
              v53 = (v53 + v48);
            }

            while (v49 != v46);
          }

          v44 += v42;
          ++v41;
          v43 = (v43 + v47);
        }

        while (v41 != v40);
      }

      if (v110)
      {
        break;
      }

      v21 = v114;
      v66 = v115;
      v67 = v107;
      v59 = v108;
      if (v108)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v109;
      if (v25 >= v111)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v113;
    v21 = v114;
    v59 = v108;
    if (v110 >= 2 && (v60 = v101, v58 == *v101 - 1))
    {
      v62 = v98;
      v61 = v99;
      v63 = v96;
      v64 = v113;
      v65 = v103;
      v66 = v115;
      v67 = v107;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v127 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v103;
      v70 = v113;
      v66 = v115;
      v67 = v107;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v127 = v26;
    if (!v108)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v112;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v95;
      v74 = v97;
      v75 = v67;
      v76 = v112;
      v77 = v102;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v116 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v102;
      v80 = v112;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v116 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v123;
    if (*v123 >= 1)
    {
      v83 = 0;
      v84 = v125[3];
      v85 = **v125;
      v86 = (*v125)[1];
      v87 = v84[1];
      v88 = *(v123 + 1);
      v89 = 2 * *v84;
      v90 = 2 * v87;
      do
      {
        if (v88 >= 1)
        {
          v91 = v13;
          v92 = v88;
          v93 = v12;
          do
          {
            *v91 = *v93;
            v93 += v86;
            v91 = (v91 + v90);
            --v92;
          }

          while (v92);
        }

        v12 += v85;
        ++v83;
        v13 = (v13 + v89);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v123;
    if (*v123 >= 1)
    {
      v19 = **v125;
      v20 = 2 * *v125[3];
      do
      {
        *v13 = *v12;
        v12 += v19;
        v13 = (v13 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v127 = &v125;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }

LABEL_83:
  v94 = *MEMORY[0x277D85DE8];
}

void sub_25A3AB028(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<signed char,int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v135 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = (*(*a2 + 152) + 4 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v110 = *(*a1 + 48);
  v126 = 0;
  v127 = 0;
  v128 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v126, *a4, a4[1], (a4[1] - *a4) >> 3);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v129, *a5, a5[1], (a5[1] - *a5) >> 3);
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v115, &v126, &v132, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v115, 0x7FFFFFFFuLL, &v122);
  v125 = &v115;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v129 + i);
    if (v16)
    {
      *(&v130 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = v122;
  v18 = (v123 - v122) >> 2;
  if (v18 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v22 = v18 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v126, &v122, v124, v18 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v115, &v122, v124 + 3, v18 - 3);
    v23 = v123 - 12;
    v24 = 1;
    do
    {
      v25 = *v23;
      v23 += 4;
      v24 *= v25;
    }

    while (v23 != v123);
    if (!v110)
    {
      v82 = v120;
      if (v120)
      {
LABEL_62:
        v121 = v82;
        operator delete(v82);
      }

LABEL_63:
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      if (v130)
      {
        v131 = v130;
        operator delete(v130);
      }

      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      goto LABEL_81;
    }

    v104 = v12;
    v105 = v13;
    v26 = 0;
    v27 = v126;
    v28 = v130;
    v29 = v122;
    v30 = *v124;
    v31 = v124[3];
    v32 = v18 - 2;
    v33 = v18 - 1;
    v34 = (((v128 - v127) << 30) - 0x100000000) >> 32;
    v99 = v133;
    v112 = &v133[4 * v34];
    v103 = v34;
    v101 = &v127[4 * v34];
    v35 = ((v128 - v127) >> 2) & 0x7FFFFFFF;
    v98 = v35 - 1;
    v36 = v115;
    v37 = v118;
    v38 = (((v117 - v116) << 30) - 0x100000000) >> 32;
    __p = v120;
    v111 = &v120[4 * v38];
    v39 = ((v117 - v116) >> 2) & 0x7FFFFFFF;
    v97 = v39 - 1;
    v108 = v24;
    v109 = (v128 - v127) >> 2;
    v40 = 4 * v35;
    v41 = 4 * v39;
    v95 = v116 - 8;
    v96 = v127 - 8;
    v102 = v38;
    v113 = v18 - 3;
    v106 = v116 + 4 * v38;
    v107 = (v117 - v116) >> 2;
    while (1)
    {
      v114 = v26;
      v42 = v29[v22];
      if (v42 >= 1)
      {
        v43 = 0;
        v44 = *(v30 + 8 * v113);
        v45 = &v105[v36];
        v46 = v27 + v104;
        v47 = *(v30 + 8 * v32);
        v48 = 4 * *(v31 + 8 * v113);
        v49 = 4 * *(v31 + 8 * v32);
        do
        {
          v50 = v29[v32];
          if (v50 >= 1)
          {
            v51 = 0;
            v52 = *(v30 + 8 * v33);
            v53 = 4 * *(v31 + 8 * v33);
            v54 = v45;
            v55 = v46;
            do
            {
              v56 = v29[v33];
              if (v56 >= 1)
              {
                v57 = 0;
                v58 = 0;
                do
                {
                  *(v54 + v57) = v55[v58];
                  v58 += v52;
                  v57 += v53;
                  --v56;
                }

                while (v56);
              }

              v55 += v47;
              ++v51;
              v54 = (v54 + v49);
            }

            while (v51 != v50);
          }

          v46 += v44;
          ++v43;
          v45 = (v45 + v48);
        }

        while (v43 != v42);
      }

      if (v109)
      {
        break;
      }

      v22 = v113;
      v67 = v114;
      v68 = v106;
      v60 = v107;
      if (v107)
      {
        goto LABEL_52;
      }

LABEL_60:
      v26 = v67 + v108;
      if (v26 >= v110)
      {
        v82 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v59 = *v112;
    v22 = v113;
    v60 = v107;
    if (v109 >= 2 && (v61 = v101, v59 == *v101 - 1))
    {
      v62 = v98;
      v63 = v99;
      v64 = v96;
      v65 = v112;
      v66 = v103;
      v67 = v114;
      v68 = v106;
      do
      {
        v69 = v62;
        *v65 = 0;
        v27 = (v27 - v28[v66] * (*v61 - 1));
        v126 = v27;
        --v62;
        v65 = &v63[v40 - 8];
        v59 = *v65;
        v63 -= 4;
        if (v69 < 2)
        {
          break;
        }

        v61 = &v64[v40];
        v70 = *&v64[v40] - 1;
        v64 -= 4;
        v66 = v62;
      }

      while (v59 == v70);
      v71 = &v63[v40 - 4];
    }

    else
    {
      v62 = v103;
      v71 = v112;
      v67 = v114;
      v68 = v106;
    }

    *v71 = v59 + 1;
    v27 = (v27 + v28[v62]);
    v126 = v27;
    if (!v107)
    {
      goto LABEL_60;
    }

LABEL_52:
    v72 = *v111;
    if (v60 >= 2 && v72 == *v68 - 1)
    {
      v73 = __p;
      v74 = v95;
      v75 = v97;
      v76 = v68;
      v77 = v111;
      v78 = v102;
      do
      {
        v79 = v75;
        *v77 = 0;
        v36 -= v37[v78] * (*v76 - 1);
        v115 = v36;
        --v75;
        v77 = &v73[v41 - 8];
        v72 = *v77;
        v73 -= 4;
        if (v79 < 2)
        {
          break;
        }

        v76 = &v74[v41];
        v80 = *&v74[v41] - 1;
        v74 -= 4;
        v78 = v75;
      }

      while (v72 == v80);
      v81 = &v73[v41 - 4];
    }

    else
    {
      v75 = v102;
      v81 = v111;
    }

    *v81 = v72 + 1;
    v36 += v37[v75];
    v115 = v36;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v18 == 2)
  {
    v83 = *v122;
    if (*v122 >= 1)
    {
      v84 = 0;
      v85 = v124[3];
      v86 = **v124;
      v87 = (*v124)[1];
      v88 = v85[1];
      v89 = 4 * *v85;
      v90 = 4 * v88;
      do
      {
        v91 = v17[1];
        if (v91 >= 1)
        {
          v92 = v13;
          v93 = v12;
          do
          {
            *v92 = *v93;
            v93 += v87;
            v92 = (v92 + v90);
            --v91;
          }

          while (v91);
        }

        v12 += v86;
        ++v84;
        v13 = (v13 + v89);
      }

      while (v84 != v83);
    }
  }

  else if (v18 == 1)
  {
    v19 = *v122;
    if (*v122 >= 1)
    {
      v20 = **v124;
      v21 = 4 * *v124[3];
      do
      {
        *v13 = *v12;
        v12 += v20;
        v13 = (v13 + v21);
        --v19;
      }

      while (v19);
    }
  }

LABEL_81:
  v126 = &v124;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

LABEL_83:
  v94 = *MEMORY[0x277D85DE8];
}

void sub_25A3AB758(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<signed char,long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v127 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_82;
  }

  v101 = *(*a1 + 48);
  v118 = 0;
  v119 = 0;
  v120 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v118, *a4, a4[1], (a4[1] - *a4) >> 3);
  v121 = 0;
  v122 = 0;
  v123 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v121, *a5, a5[1], (a5[1] - *a5) >> 3);
  v107 = 0;
  v108 = 0;
  v109 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v107, &v118, &v124, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v107, 0x7FFFFFFFuLL, &v114);
  v117 = &v107;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v117);
  for (i = 0; i != -6; i -= 3)
  {
    v16 = *(&v121 + i * 8);
    if (v16)
    {
      (&v122)[i] = v16;
      operator delete(v16);
    }
  }

  v17 = (v115 - v114) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v118, &v114, v116, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v107, &v114, v116 + 3, v17 - 3);
    v22 = v115 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v115);
    if (v101)
    {
      v98 = v13;
      v25 = 0;
      v105 = (v120 - v119) >> 2;
      v26 = v114;
      v27 = *v116;
      v28 = v116[3];
      v29 = v17 - 2;
      v30 = v17 - 1;
      v31 = (((v120 - v119) << 30) - 0x100000000) >> 32;
      v32 = v122;
      v93 = v125;
      v96 = v31;
      v97 = &v119[4 * v31];
      v103 = &v125[4 * v31];
      v104 = (v109 - v108) >> 2;
      v33 = v110;
      __p = v112;
      v95 = (((v109 - v108) << 30) - 0x100000000) >> 32;
      v102 = &v112[4 * v95];
      v34 = 4 * (v105 & 0x7FFFFFFF);
      v92 = v119 - 8;
      v35 = 4 * (v104 & 0x7FFFFFFF);
      v91 = v108 - 8;
      v99 = v108 + 4 * v95;
      v100 = v23;
      do
      {
        v106 = v25;
        v36 = v21;
        v37 = v26[v21];
        if (v37 >= 1)
        {
          v38 = 0;
          v39 = *(v27 + 8 * v21);
          v40 = &v98[v107];
          v41 = v118 + v12;
          v42 = v26[v29];
          v43 = 8 * *(v28 + 8 * v21);
          do
          {
            if (v42 >= 1)
            {
              v44 = 0;
              v45 = *(v27 + 8 * v29);
              v46 = v26[v30];
              v47 = 8 * *(v28 + 8 * v29);
              v48 = v40;
              v49 = v41;
              do
              {
                if (v46 >= 1)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = *(v27 + 8 * v30);
                  v53 = 8 * *(v28 + 8 * v30);
                  v54 = v46;
                  do
                  {
                    *(v48 + v50) = v49[v51];
                    v51 += v52;
                    v50 += v53;
                    --v54;
                  }

                  while (v54);
                }

                v49 += v45;
                ++v44;
                v48 = (v48 + v47);
              }

              while (v44 != v42);
            }

            v41 += v39;
            ++v38;
            v40 = (v40 + v43);
          }

          while (v38 != v37);
        }

        v21 = v36;
        if (v105)
        {
          v55 = *v103;
          v56 = v118;
          v57 = v97;
          if (v105 >= 2 && v55 == *v97 - 1)
          {
            v59 = (v105 & 0x7FFFFFFF) - 1;
            v58 = v93;
            v60 = v92;
            v61 = v103;
            v62 = v96;
            do
            {
              v63 = v59;
              *v61 = 0;
              v56 = (v56 - v32[v62] * (*v57 - 1));
              v118 = v56;
              --v59;
              v61 = &v58[v34 - 8];
              v55 = *v61;
              v58 -= 4;
              if (v63 < 2)
              {
                break;
              }

              v57 = &v60[v34];
              v64 = *&v60[4 * (v105 & 0x7FFFFFFF)] - 1;
              v60 -= 4;
              v62 = v59;
            }

            while (v55 == v64);
            v65 = &v58[v34 - 4];
          }

          else
          {
            v59 = v96;
            v65 = v103;
          }

          *v65 = v55 + 1;
          v118 = (v56 + v32[v59]);
        }

        if (v104)
        {
          v66 = *v102;
          v67 = v107;
          if (v104 >= 2 && v66 == *v99 - 1)
          {
            v68 = __p;
            v69 = v95;
            v70 = v91;
            v71 = (v104 & 0x7FFFFFFF) - 1;
            v72 = v99;
            v73 = v102;
            do
            {
              v74 = v71;
              *v73 = 0;
              v67 -= v33[v69] * (*v72 - 1);
              v107 = v67;
              --v71;
              v73 = &v68[v35 - 8];
              v66 = *v73;
              v68 -= 4;
              if (v74 < 2)
              {
                break;
              }

              v72 = &v70[v35];
              v75 = *&v70[4 * (v104 & 0x7FFFFFFF)] - 1;
              v70 -= 4;
              v69 = v71;
            }

            while (v66 == v75);
            v76 = &v68[v35 - 4];
          }

          else
          {
            v71 = v95;
            v76 = v102;
          }

          *v76 = v66 + 1;
          v107 = v33[v71] + v67;
        }

        v25 = v106 + v100;
      }

      while (v106 + v100 < v101);
      v77 = __p;
      if (!__p)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v77 = v112;
      if (!v112)
      {
        goto LABEL_62;
      }
    }

    v113 = v77;
    operator delete(v77);
LABEL_62:
    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }

    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }

    if (v125)
    {
      v126 = v125;
      operator delete(v125);
    }

    if (v122)
    {
      v123 = v122;
      operator delete(v122);
    }

    if (v119)
    {
      v120 = v119;
      operator delete(v119);
    }

    goto LABEL_80;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v78 = *v114;
    if (*v114 >= 1)
    {
      v79 = 0;
      v80 = *v116;
      v81 = **v116;
      v82 = v116[3];
      v83 = *(v114 + 1);
      v84 = 8 * *v82;
      do
      {
        if (v83 >= 1)
        {
          v85 = *(v80 + 8);
          v86 = 8 * v82[1];
          v87 = v13;
          v88 = v83;
          v89 = v12;
          do
          {
            *v87 = *v89;
            v89 += v85;
            v87 = (v87 + v86);
            --v88;
          }

          while (v88);
        }

        v12 += v81;
        ++v79;
        v13 = (v13 + v84);
      }

      while (v79 != v78);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v114;
    if (*v114 >= 1)
    {
      v19 = **v116;
      v20 = 8 * *v116[3];
      do
      {
        *v13 = *v12;
        v12 += v19;
        v13 = (v13 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_80:
  v118 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v118);
  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

LABEL_82:
  v90 = *MEMORY[0x277D85DE8];
}

void sub_25A3ABE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v38 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a38);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<signed char,half>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v136 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v111 = *(*a1 + 48);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, *a4, a4[1], (a4[1] - *a4) >> 3);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a5, a5[1], (a5[1] - *a5) >> 3);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v116, &v127, &v133, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v116, 0x7FFFFFFFuLL, &v123);
  v126 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v130 + i);
    if (v16)
    {
      *(&v131 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v124 - v123) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v127, &v123, v125, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v116, &v123, v125 + 3, v17 - 3);
    v22 = v124 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v124);
    if (!v111)
    {
      v81 = v121;
      if (v121)
      {
LABEL_62:
        v122 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      goto LABEL_81;
    }

    v105 = v12;
    v106 = v13;
    v25 = 0;
    v26 = v127;
    v27 = v131;
    v28 = v123;
    v29 = *v125;
    v30 = v125[3];
    v104 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v129 - v128) << 30) - 0x100000000) >> 32;
    v99 = v134;
    v113 = &v134[4 * v32];
    v103 = v32;
    v101 = &v128[4 * v32];
    v33 = ((v129 - v128) >> 2) & 0x7FFFFFFF;
    v98 = v33 - 1;
    v34 = v116;
    v35 = v119;
    v36 = (((v118 - v117) << 30) - 0x100000000) >> 32;
    __p = v121;
    v112 = &v121[4 * v36];
    v37 = ((v118 - v117) >> 2) & 0x7FFFFFFF;
    v97 = v37 - 1;
    v109 = v23;
    v110 = (v129 - v128) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v95 = v117 - 8;
    v96 = v128 - 8;
    v102 = v36;
    v114 = v17 - 3;
    v107 = v117 + 4 * v36;
    v108 = (v118 - v117) >> 2;
    while (1)
    {
      v115 = v25;
      v40 = *&v28[4 * v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = *(v29 + 8 * v114);
        v43 = &v106[v34];
        v44 = v26 + v105;
        v45 = *(v29 + 8 * v104);
        v46 = *&v28[4 * v104];
        v47 = 2 * *(v30 + 8 * v114);
        v48 = 2 * *(v30 + 8 * v104);
        do
        {
          if (v46 >= 1)
          {
            v49 = 0;
            v50 = *(v29 + 8 * v31);
            v51 = *&v28[4 * v31];
            v52 = 2 * *(v30 + 8 * v31);
            v53 = v43;
            v54 = v44;
            do
            {
              if (v51 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v51;
                do
                {
                  *(v53 + v55) = v54[v56];
                  v56 += v50;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              v54 += v45;
              ++v49;
              v53 = (v53 + v48);
            }

            while (v49 != v46);
          }

          v44 += v42;
          ++v41;
          v43 = (v43 + v47);
        }

        while (v41 != v40);
      }

      if (v110)
      {
        break;
      }

      v21 = v114;
      v66 = v115;
      v67 = v107;
      v59 = v108;
      if (v108)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v109;
      if (v25 >= v111)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v113;
    v21 = v114;
    v59 = v108;
    if (v110 >= 2 && (v60 = v101, v58 == *v101 - 1))
    {
      v62 = v98;
      v61 = v99;
      v63 = v96;
      v64 = v113;
      v65 = v103;
      v66 = v115;
      v67 = v107;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v127 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v103;
      v70 = v113;
      v66 = v115;
      v67 = v107;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v127 = v26;
    if (!v108)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v112;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v95;
      v74 = v97;
      v75 = v67;
      v76 = v112;
      v77 = v102;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v116 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v102;
      v80 = v112;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v116 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v123;
    if (*v123 >= 1)
    {
      v83 = 0;
      v84 = v125[3];
      v85 = **v125;
      v86 = (*v125)[1];
      v87 = v84[1];
      v88 = *(v123 + 1);
      v89 = 2 * *v84;
      v90 = 2 * v87;
      do
      {
        if (v88 >= 1)
        {
          v91 = v13;
          v92 = v88;
          v93 = v12;
          do
          {
            *v91 = *v93;
            v93 += v86;
            v91 = (v91 + v90);
            --v92;
          }

          while (v92);
        }

        v12 += v85;
        ++v83;
        v13 = (v13 + v89);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v123;
    if (*v123 >= 1)
    {
      v19 = **v125;
      v20 = 2 * *v125[3];
      do
      {
        *v13 = *v12;
        v12 += v19;
        v13 = (v13 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v127 = &v125;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }

LABEL_83:
  v94 = *MEMORY[0x277D85DE8];
}

void sub_25A3AC5C8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<signed char,float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v136 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = (*(*a2 + 152) + 4 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v111 = *(*a1 + 48);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, *a4, a4[1], (a4[1] - *a4) >> 3);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a5, a5[1], (a5[1] - *a5) >> 3);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v116, &v127, &v133, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v116, 0x7FFFFFFFuLL, &v123);
  v126 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v130 + i);
    if (v16)
    {
      *(&v131 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v124 - v123) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v127, &v123, v125, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v116, &v123, v125 + 3, v17 - 3);
    v22 = v124 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v124);
    if (!v111)
    {
      v81 = v121;
      if (v121)
      {
LABEL_62:
        v122 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      goto LABEL_81;
    }

    v105 = v12;
    v106 = v13;
    v25 = 0;
    v26 = v127;
    v27 = v131;
    v28 = v123;
    v29 = *v125;
    v30 = v125[3];
    v104 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v129 - v128) << 30) - 0x100000000) >> 32;
    v99 = v134;
    v113 = &v134[4 * v32];
    v103 = v32;
    v101 = &v128[4 * v32];
    v33 = ((v129 - v128) >> 2) & 0x7FFFFFFF;
    v98 = v33 - 1;
    v34 = v116;
    v35 = v119;
    v36 = (((v118 - v117) << 30) - 0x100000000) >> 32;
    __p = v121;
    v112 = &v121[4 * v36];
    v37 = ((v118 - v117) >> 2) & 0x7FFFFFFF;
    v97 = v37 - 1;
    v109 = v23;
    v110 = (v129 - v128) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v95 = v117 - 8;
    v96 = v128 - 8;
    v102 = v36;
    v114 = v17 - 3;
    v107 = v117 + 4 * v36;
    v108 = (v118 - v117) >> 2;
    while (1)
    {
      v115 = v25;
      v40 = *&v28[4 * v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = *(v29 + 8 * v114);
        v43 = &v106[v34];
        v44 = v26 + v105;
        v45 = *(v29 + 8 * v104);
        v46 = *&v28[4 * v104];
        v47 = 4 * *(v30 + 8 * v114);
        v48 = 4 * *(v30 + 8 * v104);
        do
        {
          if (v46 >= 1)
          {
            v49 = 0;
            v50 = *(v29 + 8 * v31);
            v51 = *&v28[4 * v31];
            v52 = 4 * *(v30 + 8 * v31);
            v53 = v43;
            v54 = v44;
            do
            {
              if (v51 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v51;
                do
                {
                  *(v53 + v55) = v54[v56];
                  v56 += v50;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              v54 += v45;
              ++v49;
              v53 = (v53 + v48);
            }

            while (v49 != v46);
          }

          v44 += v42;
          ++v41;
          v43 = (v43 + v47);
        }

        while (v41 != v40);
      }

      if (v110)
      {
        break;
      }

      v21 = v114;
      v66 = v115;
      v67 = v107;
      v59 = v108;
      if (v108)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v109;
      if (v25 >= v111)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v113;
    v21 = v114;
    v59 = v108;
    if (v110 >= 2 && (v60 = v101, v58 == *v101 - 1))
    {
      v62 = v98;
      v61 = v99;
      v63 = v96;
      v64 = v113;
      v65 = v103;
      v66 = v115;
      v67 = v107;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v127 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v103;
      v70 = v113;
      v66 = v115;
      v67 = v107;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v127 = v26;
    if (!v108)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v112;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v95;
      v74 = v97;
      v75 = v67;
      v76 = v112;
      v77 = v102;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v116 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v102;
      v80 = v112;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v116 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v123;
    if (*v123 >= 1)
    {
      v83 = 0;
      v84 = v125[3];
      v85 = **v125;
      v86 = (*v125)[1];
      v87 = v84[1];
      v88 = *(v123 + 1);
      v89 = 4 * *v84;
      v90 = 4 * v87;
      do
      {
        if (v88 >= 1)
        {
          v91 = v13;
          v92 = v88;
          v93 = v12;
          do
          {
            *v91 = *v93;
            v93 += v86;
            v91 = (v91 + v90);
            --v92;
          }

          while (v92);
        }

        v12 += v85;
        ++v83;
        v13 = (v13 + v89);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v123;
    if (*v123 >= 1)
    {
      v19 = **v125;
      v20 = 4 * *v125[3];
      do
      {
        *v13 = *v12;
        v12 += v19;
        v13 = (v13 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v127 = &v125;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }

LABEL_83:
  v94 = *MEMORY[0x277D85DE8];
}

void sub_25A3ACD18(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<signed char,double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v136 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v111 = *(*a1 + 48);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v127, *a4, a4[1], (a4[1] - *a4) >> 3);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a5, a5[1], (a5[1] - *a5) >> 3);
  v116 = 0;
  v117 = 0;
  v118 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v116, &v127, &v133, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v116, 0x7FFFFFFFuLL, &v123);
  v126 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v130 + i);
    if (v16)
    {
      *(&v131 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v124 - v123) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v127, &v123, v125, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v116, &v123, v125 + 3, v17 - 3);
    v22 = v124 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v124);
    if (!v111)
    {
      v81 = v121;
      if (v121)
      {
LABEL_62:
        v122 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v117)
      {
        v118 = v117;
        operator delete(v117);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      goto LABEL_81;
    }

    v105 = v12;
    v106 = v13;
    v25 = 0;
    v26 = v127;
    v27 = v131;
    v28 = v123;
    v29 = *v125;
    v30 = v125[3];
    v104 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v129 - v128) << 30) - 0x100000000) >> 32;
    v99 = v134;
    v113 = &v134[4 * v32];
    v103 = v32;
    v101 = &v128[4 * v32];
    v33 = ((v129 - v128) >> 2) & 0x7FFFFFFF;
    v98 = v33 - 1;
    v34 = v116;
    v35 = v119;
    v36 = (((v118 - v117) << 30) - 0x100000000) >> 32;
    __p = v121;
    v112 = &v121[4 * v36];
    v37 = ((v118 - v117) >> 2) & 0x7FFFFFFF;
    v97 = v37 - 1;
    v109 = v23;
    v110 = (v129 - v128) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v95 = v117 - 8;
    v96 = v128 - 8;
    v102 = v36;
    v114 = v17 - 3;
    v107 = v117 + 4 * v36;
    v108 = (v118 - v117) >> 2;
    while (1)
    {
      v115 = v25;
      v40 = *&v28[4 * v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = *(v29 + 8 * v114);
        v43 = &v106[v34];
        v44 = v26 + v105;
        v45 = *(v29 + 8 * v104);
        v46 = *&v28[4 * v104];
        v47 = 8 * *(v30 + 8 * v114);
        v48 = 8 * *(v30 + 8 * v104);
        do
        {
          if (v46 >= 1)
          {
            v49 = 0;
            v50 = *(v29 + 8 * v31);
            v51 = *&v28[4 * v31];
            v52 = 8 * *(v30 + 8 * v31);
            v53 = v43;
            v54 = v44;
            do
            {
              if (v51 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v51;
                do
                {
                  *(v53 + v55) = v54[v56];
                  v56 += v50;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              v54 += v45;
              ++v49;
              v53 = (v53 + v48);
            }

            while (v49 != v46);
          }

          v44 += v42;
          ++v41;
          v43 = (v43 + v47);
        }

        while (v41 != v40);
      }

      if (v110)
      {
        break;
      }

      v21 = v114;
      v66 = v115;
      v67 = v107;
      v59 = v108;
      if (v108)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v109;
      if (v25 >= v111)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v113;
    v21 = v114;
    v59 = v108;
    if (v110 >= 2 && (v60 = v101, v58 == *v101 - 1))
    {
      v62 = v98;
      v61 = v99;
      v63 = v96;
      v64 = v113;
      v65 = v103;
      v66 = v115;
      v67 = v107;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v127 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v103;
      v70 = v113;
      v66 = v115;
      v67 = v107;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v127 = v26;
    if (!v108)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v112;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v95;
      v74 = v97;
      v75 = v67;
      v76 = v112;
      v77 = v102;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v116 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v102;
      v80 = v112;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v116 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v123;
    if (*v123 >= 1)
    {
      v83 = 0;
      v84 = v125[3];
      v85 = **v125;
      v86 = (*v125)[1];
      v87 = v84[1];
      v88 = *(v123 + 1);
      v89 = 8 * *v84;
      v90 = 8 * v87;
      do
      {
        if (v88 >= 1)
        {
          v91 = v13;
          v92 = v88;
          v93 = v12;
          do
          {
            *v91 = *v93;
            v93 += v86;
            v91 = (v91 + v90);
            --v92;
          }

          while (v92);
        }

        v12 += v85;
        ++v83;
        v13 = (v13 + v89);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v123;
    if (*v123 >= 1)
    {
      v19 = **v125;
      v20 = 8 * *v125[3];
      do
      {
        *v13 = *v12;
        v12 += v19;
        v13 = (v13 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v127 = &v125;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }

LABEL_83:
  v94 = *MEMORY[0x277D85DE8];
}

void sub_25A3AD468(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::anonymous namespace::copy_single<signed char,mlx::core::_MLX_BFloat16>(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 48);
  if (v2)
  {
    v3 = 0;
    v4 = **(*result + 152);
    v5 = vdupq_n_s64(v2 - 1);
    v6 = (v2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = (*(*a2 + 152) + 8);
    v8 = (LODWORD(v4) + (HIWORD(LODWORD(v4)) & 1u) + 0x7FFF) >> 16;
    do
    {
      v9 = vdupq_n_s64(v3);
      v10 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v9, xmmword_25A99B0D0)));
      if (vuzp1_s8(vuzp1_s16(v10, *v5.i8), *v5.i8).u8[0])
      {
        *(v7 - 4) = v8;
      }

      if (vuzp1_s8(vuzp1_s16(v10, *&v5), *&v5).i8[1])
      {
        *(v7 - 3) = v8;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v9, xmmword_25A99B0C0)))), *&v5).i8[2])
      {
        *(v7 - 2) = v8;
        *(v7 - 1) = v8;
      }

      v11 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v9, xmmword_25A9C2E80)));
      if (vuzp1_s8(*&v5, vuzp1_s16(v11, *&v5)).i32[1])
      {
        *v7 = v8;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v11, *&v5)).i8[5])
      {
        v7[1] = v8;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v9, xmmword_25A9C2E70))))).i8[6])
      {
        v7[2] = v8;
        v7[3] = v8;
      }

      v3 += 8;
      v7 += 8;
    }

    while (v6 != v3);
  }

  return result;
}

void mlx::core::anonymous namespace::copy_general_general<signed char,mlx::core::_MLX_BFloat16>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v135 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = (COERCE_INT(*v12) + (HIWORD(COERCE_UNSIGNED_INT(*v12)) & 1) + 0x7FFF) >> 16;
    goto LABEL_83;
  }

  v110 = *(*a1 + 48);
  v126 = 0;
  v127 = 0;
  v128 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v126, *a4, a4[1], (a4[1] - *a4) >> 3);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v129, *a5, a5[1], (a5[1] - *a5) >> 3);
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v115, &v126, &v132, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v115, 0x7FFFFFFFuLL, &v122);
  v125 = &v115;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v129 + i);
    if (v16)
    {
      *(&v130 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v123 - v122) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v126, &v122, v124, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v115, &v122, v124 + 3, v17 - 3);
    v22 = v123 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v123);
    if (!v110)
    {
      v80 = v120;
      if (v120)
      {
LABEL_62:
        v121 = v80;
        operator delete(v80);
      }

LABEL_63:
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      if (v130)
      {
        v131 = v130;
        operator delete(v130);
      }

      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      goto LABEL_81;
    }

    v104 = v12;
    v105 = v13;
    v25 = 0;
    v26 = v126;
    v27 = v122;
    v28 = *v124;
    v29 = v124[3];
    v102 = v17 - 2;
    v30 = v17 - 1;
    v31 = (((v128 - v127) << 30) - 0x100000000) >> 32;
    v97 = v133;
    v112 = &v133[4 * v31];
    v101 = v31;
    v99 = &v127[4 * v31];
    v32 = ((v128 - v127) >> 2) & 0x7FFFFFFF;
    v96 = v32 - 1;
    v33 = v115;
    v34 = (((v117 - v116) << 30) - 0x100000000) >> 32;
    __p = v120;
    v111 = &v120[4 * v34];
    v35 = ((v117 - v116) >> 2) & 0x7FFFFFFF;
    v95 = v35 - 1;
    v109 = (v128 - v127) >> 2;
    v36 = 4 * v32;
    v37 = 4 * v35;
    v93 = v116 - 8;
    v94 = v127 - 8;
    v100 = v34;
    v113 = v17 - 3;
    v103 = v130;
    v107 = (v117 - v116) >> 2;
    v108 = v118;
    v106 = v116 + 4 * v34;
    while (1)
    {
      v114 = v25;
      v38 = *&v27[4 * v21];
      if (v38 >= 1)
      {
        v39 = 0;
        v40 = *(v28 + 8 * v113);
        v41 = &v105[v33];
        v42 = v26 + v104;
        v43 = *(v28 + 8 * v102);
        v44 = *&v27[4 * v102];
        v45 = 2 * *(v29 + 8 * v113);
        v46 = 2 * *(v29 + 8 * v102);
        do
        {
          if (v44 >= 1)
          {
            v47 = 0;
            v48 = *(v28 + 8 * v30);
            v49 = *&v27[4 * v30];
            v50 = 2 * *(v29 + 8 * v30);
            v51 = v41;
            v52 = v42;
            do
            {
              if (v49 >= 1)
              {
                v53 = 0;
                v54 = 0;
                v55 = v49;
                do
                {
                  *(v51 + v53) = (COERCE_INT(v52[v54]) + (HIWORD(COERCE_UNSIGNED_INT(v52[v54])) & 1) + 0x7FFF) >> 16;
                  v54 += v48;
                  v53 += v50;
                  --v55;
                }

                while (v55);
              }

              v52 += v43;
              ++v47;
              v51 = (v51 + v46);
            }

            while (v47 != v44);
          }

          v42 += v40;
          ++v39;
          v41 = (v41 + v45);
        }

        while (v39 != v38);
      }

      if (v109)
      {
        break;
      }

      v21 = v113;
      v64 = v114;
      v57 = v107;
      v65 = v108;
      v66 = v106;
      if (v107)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v64 + v23;
      if (v25 >= v110)
      {
        v80 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v56 = *v112;
    v21 = v113;
    v57 = v107;
    if (v109 >= 2 && (v58 = v99, v56 == *v99 - 1))
    {
      v59 = v96;
      v60 = v97;
      v61 = v94;
      v62 = v112;
      v63 = v101;
      v64 = v114;
      v65 = v108;
      v66 = v106;
      do
      {
        v67 = v59;
        *v62 = 0;
        v26 = (v26 - v103[v63] * (*v58 - 1));
        v126 = v26;
        --v59;
        v62 = &v60[v36 - 8];
        v56 = *v62;
        v60 -= 4;
        if (v67 < 2)
        {
          break;
        }

        v58 = &v61[v36];
        v68 = *&v61[v36] - 1;
        v61 -= 4;
        v63 = v59;
      }

      while (v56 == v68);
      v69 = &v60[v36 - 4];
    }

    else
    {
      v59 = v101;
      v69 = v112;
      v64 = v114;
      v65 = v108;
      v66 = v106;
    }

    *v69 = v56 + 1;
    v26 = (v26 + v103[v59]);
    v126 = v26;
    if (!v107)
    {
      goto LABEL_60;
    }

LABEL_52:
    v70 = *v111;
    if (v57 >= 2 && v70 == *v66 - 1)
    {
      v71 = __p;
      v72 = v93;
      v73 = v95;
      v74 = v66;
      v75 = v111;
      v76 = v100;
      do
      {
        v77 = v73;
        *v75 = 0;
        v33 -= v65[v76] * (*v74 - 1);
        v115 = v33;
        --v73;
        v75 = &v71[v37 - 8];
        v70 = *v75;
        v71 -= 4;
        if (v77 < 2)
        {
          break;
        }

        v74 = &v72[v37];
        v78 = *&v72[v37] - 1;
        v72 -= 4;
        v76 = v73;
      }

      while (v70 == v78);
      v79 = &v71[v37 - 4];
    }

    else
    {
      v73 = v100;
      v79 = v111;
    }

    *v79 = v70 + 1;
    v33 += v65[v73];
    v115 = v33;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v81 = *v122;
    if (*v122 >= 1)
    {
      v82 = 0;
      v83 = v124[3];
      v84 = **v124;
      v85 = (*v124)[1];
      v86 = v83[1];
      v87 = *(v122 + 1);
      v88 = 2 * *v83;
      do
      {
        if (v87 >= 1)
        {
          v89 = v13;
          v90 = v87;
          v91 = v12;
          do
          {
            *v89 = (COERCE_INT(*v91) + (HIWORD(COERCE_UNSIGNED_INT(*v91)) & 1) + 0x7FFF) >> 16;
            v91 += v85;
            v89 += v86;
            --v90;
          }

          while (v90);
        }

        v12 += v84;
        ++v82;
        v13 = (v13 + v88);
      }

      while (v82 != v81);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v122;
    if (*v122 >= 1)
    {
      v19 = **v124;
      v20 = 2 * *v124[3];
      do
      {
        *v13 = (COERCE_INT(*v12) + (HIWORD(COERCE_UNSIGNED_INT(*v12)) & 1) + 0x7FFF) >> 16;
        v12 += v19;
        v13 = (v13 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v126 = &v124;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

LABEL_83:
  v92 = *MEMORY[0x277D85DE8];
}

void sub_25A3ADD84(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<signed char,mlx::core::complex64_t>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v113 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = *(*a2 + 152) + 8 * a7;
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    *(v13 + 4) = 0;
  }

  else
  {
    v15 = *(*a1 + 48);
    v104 = 0;
    v105 = 0;
    v106 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v104, *a4, a4[1], (a4[1] - *a4) >> 3);
    v107 = 0;
    v108 = 0;
    v109 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v107, *a5, a5[1], (a5[1] - *a5) >> 3);
    v93 = 0;
    v94 = 0;
    v95 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v93, &v104, &v110, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v93, 0x7FFFFFFFuLL, &v100);
    v103 = &v93;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v103);
    for (i = 0; i != -48; i -= 24)
    {
      v17 = *(&v107 + i);
      if (v17)
      {
        *(&v108 + i) = v17;
        operator delete(v17);
      }
    }

    v18 = v100;
    v19 = (v101 - v100) >> 2;
    if (v19 > 2)
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += 8 * *v14;
      }

      v24 = v19 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, &v100, v102, v19 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v93, &v100, v102 + 3, v19 - 3);
      v25 = v101 - 3;
      v26 = 1;
      do
      {
        v27 = *v25++;
        v26 *= v27;
      }

      while (v25 != v101);
      if (v15)
      {
        v28 = 0;
        v29 = v19 - 2;
        v30 = v19 - 1;
        v31 = v13 + 4;
        do
        {
          v32 = *(v100 + v24);
          if (v32 >= 1)
          {
            v33 = 0;
            v34 = v102;
            v35 = (*v102)[v24];
            v36 = v104 + v12;
            v37 = (v31 + 8 * v93);
            v38 = 8 * v102[3][v24];
            do
            {
              v39 = *(v100 + v29);
              if (v39 >= 1)
              {
                v40 = 0;
                v41 = *(*v34 + 8 * v29);
                v42 = 8 * *(v34[3] + 8 * v29);
                v43 = v37;
                v44 = v36;
                do
                {
                  v45 = *(v100 + v30);
                  if (v45 >= 1)
                  {
                    v46 = 0;
                    v47 = *(*v34 + 8 * v30);
                    v48 = 8 * *(v34[3] + 8 * v30);
                    v49 = v43;
                    do
                    {
                      *(v49 - 1) = v44[v46];
                      *v49 = 0.0;
                      v46 += v47;
                      v49 = (v49 + v48);
                      --v45;
                    }

                    while (v45);
                  }

                  v44 += v41;
                  ++v40;
                  v43 = (v43 + v42);
                }

                while (v40 != v39);
              }

              v36 += v35;
              ++v33;
              v37 = (v37 + v38);
            }

            while (v33 != v32);
          }

          v50 = v106 - v105;
          v51 = (v106 - v105) >> 2;
          if (v51)
          {
            v52 = v111;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = v111 + 4 * v53;
            v55 = *v54;
            v56 = v105 + 4 * v53;
            v57 = v108;
            v58 = v104;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v105 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 = (v58 - v57[v53] * (*v56 - 1));
                v104 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v104 = (v58 + v57[v60]);
          }

          v66 = v95 - v94;
          v67 = (v95 - v94) >> 2;
          if (v67)
          {
            v68 = __p;
            v69 = ((v66 << 30) - 0x100000000) >> 32;
            v70 = __p + 4 * v69;
            v71 = *v70;
            v72 = v96;
            v73 = v93;
            if (v67 >= 2 && (v74 = v94 + 4 * v69, v71 == *v74 - 1))
            {
              v75 = (v66 >> 2) & 0x7FFFFFFF;
              v76 = v75 - 1;
              v77 = 4 * v75;
              v78 = v94 - 8;
              do
              {
                v79 = v76;
                *v70 = 0;
                v73 -= v72[v69] * (*v74 - 1);
                v93 = v73;
                --v76;
                v70 = &v68[v77 - 8];
                v71 = *v70;
                v68 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v74 = &v78[v77];
                v80 = *&v78[4 * v75] - 1;
                v78 -= 4;
                v69 = v76;
              }

              while (v71 == v80);
              v70 = &v68[4 * v75 - 4];
            }

            else
            {
              v76 = ((v66 << 30) - 0x100000000) >> 32;
            }

            *v70 = v71 + 1;
            v93 = v72[v76] + v73;
          }

          v28 += v26;
        }

        while (v28 < v15);
      }

      if (__p)
      {
        v99 = __p;
        operator delete(__p);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      if (v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      if (v111)
      {
        v112 = v111;
        operator delete(v111);
      }

      if (v108)
      {
        v109 = v108;
        operator delete(v108);
      }

      if (v105)
      {
        v106 = v105;
        operator delete(v105);
      }
    }

    else
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += 8 * *v14;
      }

      if (v19 == 2)
      {
        v81 = *v100;
        if (*v100 >= 1)
        {
          v82 = 0;
          v83 = v102;
          v84 = **v102;
          v85 = (v13 + 4);
          v86 = 8 * *v102[3];
          do
          {
            v87 = v18[1];
            if (v87 >= 1)
            {
              v88 = *(*v83 + 8);
              v89 = 8 * *(v83[3] + 8);
              v90 = v85;
              v91 = v12;
              do
              {
                *(v90 - 1) = *v91;
                *v90 = 0.0;
                v91 += v88;
                v90 = (v90 + v89);
                --v87;
              }

              while (v87);
            }

            v12 += v84;
            ++v82;
            v85 = (v85 + v86);
          }

          while (v82 != v81);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v100;
        if (*v100 >= 1)
        {
          v21 = **v102;
          v22 = (v13 + 4);
          v23 = 8 * *v102[3];
          do
          {
            *(v22 - 1) = *v12;
            *v22 = 0.0;
            v12 += v21;
            v22 = (v22 + v23);
            --v20;
          }

          while (v20);
        }
      }
    }

    v104 = &v102;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v104);
    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }
  }

  v92 = *MEMORY[0x277D85DE8];
}

void sub_25A3AE43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v135 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12 != 0;
    goto LABEL_83;
  }

  v110 = *(*a1 + 48);
  v126 = 0;
  v127 = 0;
  v128 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v126, *a4, a4[1], (a4[1] - *a4) >> 3);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v129, *a5, a5[1], (a5[1] - *a5) >> 3);
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v115, &v126, &v132, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v115, 0x7FFFFFFFuLL, &v122);
  v125 = &v115;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v129 + i);
    if (v16)
    {
      *(&v130 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v123 - v122) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v126, &v122, v124, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v115, &v122, v124 + 3, v17 - 3);
    v22 = v123 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v123);
    if (!v110)
    {
      v81 = v120;
      if (v120)
      {
LABEL_62:
        v121 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      if (v130)
      {
        v131 = v130;
        operator delete(v130);
      }

      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      goto LABEL_81;
    }

    v104 = v12;
    v105 = v13;
    v25 = 0;
    v26 = v126;
    v27 = v130;
    v28 = v122;
    v29 = *v124;
    v30 = v124[3];
    v103 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v128 - v127) << 30) - 0x100000000) >> 32;
    v98 = v133;
    v112 = &v133[4 * v32];
    v102 = v32;
    v100 = &v127[4 * v32];
    v33 = ((v128 - v127) >> 2) & 0x7FFFFFFF;
    v97 = v33 - 1;
    v34 = v115;
    v35 = v118;
    v36 = (((v117 - v116) << 30) - 0x100000000) >> 32;
    __p = v120;
    v111 = &v120[4 * v36];
    v37 = ((v117 - v116) >> 2) & 0x7FFFFFFF;
    v96 = v37 - 1;
    v108 = v23;
    v109 = (v128 - v127) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v94 = v116 - 8;
    v95 = v127 - 8;
    v101 = v36;
    v113 = v17 - 3;
    v106 = v116 + 4 * v36;
    v107 = (v117 - v116) >> 2;
    while (1)
    {
      v114 = v25;
      v40 = *&v28[4 * v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = *(v30 + 8 * v113);
        v43 = &v105[v34];
        v44 = &v104[v26];
        v45 = *(v30 + 8 * v103);
        v46 = *&v28[4 * v103];
        v47 = 2 * *(v29 + 8 * v113);
        v48 = 2 * *(v29 + 8 * v103);
        do
        {
          if (v46 >= 1)
          {
            v49 = 0;
            v50 = *(v30 + 8 * v31);
            v51 = *&v28[4 * v31];
            v52 = 2 * *(v29 + 8 * v31);
            v53 = v44;
            v54 = v43;
            do
            {
              if (v51 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v51;
                do
                {
                  v54[v55] = *(v53 + v56) != 0;
                  v56 += v52;
                  v55 += v50;
                  --v57;
                }

                while (v57);
              }

              v54 += v45;
              ++v49;
              v53 = (v53 + v48);
            }

            while (v49 != v46);
          }

          v43 += v42;
          ++v41;
          v44 = (v44 + v47);
        }

        while (v41 != v40);
      }

      if (v109)
      {
        break;
      }

      v21 = v113;
      v66 = v114;
      v67 = v106;
      v59 = v107;
      if (v107)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v108;
      if (v25 >= v110)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v112;
    v21 = v113;
    v59 = v107;
    if (v109 >= 2 && (v60 = v100, v58 == *v100 - 1))
    {
      v62 = v97;
      v61 = v98;
      v63 = v95;
      v64 = v112;
      v65 = v102;
      v66 = v114;
      v67 = v106;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v126 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v102;
      v70 = v112;
      v66 = v114;
      v67 = v106;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v126 = v26;
    if (!v107)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v111;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v94;
      v74 = v96;
      v75 = v67;
      v76 = v111;
      v77 = v101;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v115 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v101;
      v80 = v111;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v115 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v122;
    if (*v122 >= 1)
    {
      v83 = 0;
      v84 = v124[3];
      v85 = *v84;
      v86 = v84[1];
      v87 = *(v122 + 1);
      v88 = 2 * **v124;
      v89 = 2 * *(*v124 + 8);
      do
      {
        if (v87 >= 1)
        {
          v90 = v12;
          v91 = v87;
          v92 = v13;
          do
          {
            *v92 = *v90 != 0;
            v92 += v86;
            v90 = (v90 + v89);
            --v91;
          }

          while (v91);
        }

        v13 += v85;
        ++v83;
        v12 = (v12 + v88);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v122;
    if (*v122 >= 1)
    {
      v19 = *v124[3];
      v20 = 2 * **v124;
      do
      {
        *v13 = *v12 != 0;
        v13 += v19;
        v12 = (v12 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v126 = &v124;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

LABEL_83:
  v93 = *MEMORY[0x277D85DE8];
}

void sub_25A3AEB9C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,unsigned char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v110 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
  }

  else
  {
    v15 = *(*a1 + 48);
    v101 = 0;
    v102 = 0;
    v103 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v101, *a4, a4[1], (a4[1] - *a4) >> 3);
    v104 = 0;
    v105 = 0;
    v106 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v104, *a5, a5[1], (a5[1] - *a5) >> 3);
    v90 = 0;
    v91 = 0;
    v92 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v90, &v101, &v107, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v90, 0x7FFFFFFFuLL, &v97);
    v100 = &v90;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v100);
    for (i = 0; i != -48; i -= 24)
    {
      v17 = *(&v104 + i);
      if (v17)
      {
        *(&v105 + i) = v17;
        operator delete(v17);
      }
    }

    v18 = v97;
    v19 = (v98 - v97) >> 2;
    if (v19 > 2)
    {
      if (v11)
      {
        v12 += 2 * *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      v23 = v19 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v101, &v97, v99, v19 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v90, &v97, v99 + 3, v19 - 3);
      v24 = v98 - 3;
      v25 = 1;
      do
      {
        v26 = *v24++;
        v25 *= v26;
      }

      while (v24 != v98);
      if (v15)
      {
        v27 = 0;
        v28 = v19 - 2;
        v29 = v19 - 1;
        v30 = v99;
        do
        {
          v31 = *(v97 + v23);
          if (v31 >= 1)
          {
            v32 = 0;
            v33 = *(v30[3] + 8 * v23);
            v34 = &v13[v90];
            v35 = &v12[2 * v101];
            v36 = 2 * *(*v30 + 8 * v23);
            do
            {
              v37 = *(v97 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = *(v30[3] + 8 * v28);
                v40 = 2 * *(*v30 + 8 * v28);
                v41 = v35;
                v42 = v34;
                do
                {
                  v43 = *(v97 + v29);
                  if (v43 >= 1)
                  {
                    v44 = 0;
                    v45 = 0;
                    v46 = *(v30[3] + 8 * v29);
                    v47 = 2 * *(*v30 + 8 * v29);
                    do
                    {
                      v42[v44] = v41[v45];
                      v45 += v47;
                      v44 += v46;
                      --v43;
                    }

                    while (v43);
                  }

                  v42 += v39;
                  ++v38;
                  v41 += v40;
                }

                while (v38 != v37);
              }

              v34 += v33;
              ++v32;
              v35 += v36;
            }

            while (v32 != v31);
          }

          v48 = v103 - v102;
          v49 = (v103 - v102) >> 2;
          if (v49)
          {
            v50 = v108;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = v108 + 4 * v51;
            v53 = *v52;
            v54 = v102 + 4 * v51;
            v55 = v105;
            v56 = v101;
            if (v49 >= 2 && v53 == *v54 - 1)
            {
              v59 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v59 - 1;
              v60 = 4 * v59;
              v61 = v102 - 8;
              do
              {
                v62 = v58;
                *v52 = 0;
                v56 = (v56 - v55[v51] * (*v54 - 1));
                v101 = v56;
                --v58;
                v52 = &v50[v60 - 8];
                v53 = *v52;
                v50 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v54 = &v61[v60];
                v63 = *&v61[4 * v59] - 1;
                v61 -= 4;
                v51 = v58;
              }

              while (v53 == v63);
              v52 = &v50[4 * v59 - 4];
            }

            else
            {
              v58 = ((v48 << 30) - 0x100000000) >> 32;
            }

            *v52 = v53 + 1;
            v101 = (v56 + v55[v58]);
          }

          v64 = v92 - v91;
          v65 = (v92 - v91) >> 2;
          if (v65)
          {
            v66 = __p;
            v67 = ((v64 << 30) - 0x100000000) >> 32;
            v68 = __p + 4 * v67;
            v69 = *v68;
            v70 = v93;
            v71 = v90;
            if (v65 >= 2 && (v72 = v91 + 4 * v67, v69 == *v72 - 1))
            {
              v73 = (v64 >> 2) & 0x7FFFFFFF;
              v74 = v73 - 1;
              v75 = 4 * v73;
              v76 = v91 - 8;
              do
              {
                v77 = v74;
                *v68 = 0;
                v71 -= v70[v67] * (*v72 - 1);
                v90 = v71;
                --v74;
                v68 = &v66[v75 - 8];
                v69 = *v68;
                v66 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v72 = &v76[v75];
                v78 = *&v76[4 * v73] - 1;
                v76 -= 4;
                v67 = v74;
              }

              while (v69 == v78);
              v68 = &v66[4 * v73 - 4];
            }

            else
            {
              v74 = ((v64 << 30) - 0x100000000) >> 32;
            }

            *v68 = v69 + 1;
            v90 = v70[v74] + v71;
          }

          v27 += v25;
        }

        while (v27 < v15);
      }

      if (__p)
      {
        v96 = __p;
        operator delete(__p);
      }

      if (v93)
      {
        v94 = v93;
        operator delete(v93);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (v108)
      {
        v109 = v108;
        operator delete(v108);
      }

      if (v105)
      {
        v106 = v105;
        operator delete(v105);
      }

      if (v102)
      {
        v103 = v102;
        operator delete(v102);
      }
    }

    else
    {
      if (v11)
      {
        v12 += 2 * *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      if (v19 == 2)
      {
        v79 = *v97;
        if (*v97 >= 1)
        {
          v80 = 0;
          v81 = v99;
          v82 = *v99[3];
          v83 = 2 * **v99;
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = *(v81[3] + 8);
              v86 = 2 * *(*v81 + 8);
              v87 = v12;
              v88 = v13;
              do
              {
                *v88 = *v87;
                v88 += v85;
                v87 += v86;
                --v84;
              }

              while (v84);
            }

            v13 += v82;
            ++v80;
            v12 += v83;
          }

          while (v80 != v79);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v97;
        if (*v97 >= 1)
        {
          v21 = *v99[3];
          v22 = 2 * **v99;
          do
          {
            *v13 = *v12;
            v13 += v21;
            v12 += v22;
            --v20;
          }

          while (v20);
        }
      }
    }

    v101 = &v99;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v101);
    if (v97)
    {
      v98 = v97;
      operator delete(v97);
    }
  }

  v89 = *MEMORY[0x277D85DE8];
}

void sub_25A3AF228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,unsigned short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v137 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v112 = *(*a1 + 48);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a4, a4[1], (a4[1] - *a4) >> 3);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v131, *a5, a5[1], (a5[1] - *a5) >> 3);
  v117 = 0;
  v118 = 0;
  v119 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v117, &v128, &v134, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v117, 0x7FFFFFFFuLL, &v124);
  v127 = &v117;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v131 + i);
    if (v16)
    {
      *(&v132 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v125 - v124) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v128, &v124, v126, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v117, &v124, v126 + 3, v17 - 3);
    v22 = v125 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v125);
    if (!v112)
    {
      v81 = v122;
      if (v122)
      {
LABEL_62:
        v123 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v135)
      {
        v136 = v135;
        operator delete(v135);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      goto LABEL_81;
    }

    v106 = v12;
    v107 = v13;
    v25 = 0;
    v26 = v128;
    v27 = v132;
    v28 = v124;
    v29 = *v126;
    v30 = v126[3];
    v105 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v130 - v129) << 30) - 0x100000000) >> 32;
    v100 = v135;
    v114 = &v135[4 * v32];
    v104 = v32;
    v102 = &v129[4 * v32];
    v33 = ((v130 - v129) >> 2) & 0x7FFFFFFF;
    v99 = v33 - 1;
    v34 = v117;
    v35 = v120;
    v36 = (((v119 - v118) << 30) - 0x100000000) >> 32;
    __p = v122;
    v113 = &v122[4 * v36];
    v37 = ((v119 - v118) >> 2) & 0x7FFFFFFF;
    v98 = v37 - 1;
    v110 = v23;
    v111 = (v130 - v129) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v96 = v118 - 8;
    v97 = v129 - 8;
    v103 = v36;
    v115 = v17 - 3;
    v108 = v118 + 4 * v36;
    v109 = (v119 - v118) >> 2;
    while (1)
    {
      v116 = v25;
      v40 = *&v28[4 * v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = *&v28[4 * v105];
        v43 = &v107[v34];
        v44 = 2 * *(v29 + 8 * v115);
        v45 = 2 * *(v29 + 8 * v105);
        v46 = 2 * *(v30 + 8 * v115);
        v47 = 2 * *(v30 + 8 * v105);
        v48 = &v106[v26];
        do
        {
          if (v42 >= 1)
          {
            v49 = 0;
            v50 = *&v28[4 * v31];
            v51 = 2 * *(v29 + 8 * v31);
            v52 = 2 * *(v30 + 8 * v31);
            v53 = v43;
            v54 = v48;
            do
            {
              if (v50 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v50;
                do
                {
                  *(v53 + v55) = *(v54 + v56);
                  v56 += v51;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              ++v49;
              v54 = (v54 + v45);
              v53 = (v53 + v47);
            }

            while (v49 != v42);
          }

          ++v41;
          v48 = (v48 + v44);
          v43 = (v43 + v46);
        }

        while (v41 != v40);
      }

      if (v111)
      {
        break;
      }

      v21 = v115;
      v66 = v116;
      v67 = v108;
      v59 = v109;
      if (v109)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v110;
      if (v25 >= v112)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v114;
    v21 = v115;
    v59 = v109;
    if (v111 >= 2 && (v60 = v102, v58 == *v102 - 1))
    {
      v62 = v99;
      v61 = v100;
      v63 = v97;
      v64 = v114;
      v65 = v104;
      v66 = v116;
      v67 = v108;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v128 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v104;
      v70 = v114;
      v66 = v116;
      v67 = v108;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v128 = v26;
    if (!v109)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v113;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v96;
      v74 = v98;
      v75 = v67;
      v76 = v113;
      v77 = v103;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v117 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v103;
      v80 = v113;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v117 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v124;
    if (*v124 >= 1)
    {
      v83 = 0;
      v84 = v126[3];
      v85 = *v84;
      v86 = v84[1];
      v87 = 2 * **v126;
      v88 = 2 * *(*v126 + 8);
      v89 = *(v124 + 1);
      v90 = 2 * v85;
      v91 = 2 * v86;
      do
      {
        if (v89 >= 1)
        {
          v92 = v13;
          v93 = v12;
          v94 = v89;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v88);
            v92 = (v92 + v91);
            --v94;
          }

          while (v94);
        }

        ++v83;
        v12 = (v12 + v87);
        v13 = (v13 + v90);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v124;
    if (*v124 >= 1)
    {
      v19 = *v126[3];
      v20 = 2 * **v126;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v128 = &v126;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v128);
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

LABEL_83:
  v95 = *MEMORY[0x277D85DE8];
}

void sub_25A3AF980(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,unsigned int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v135 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + 4 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v110 = *(*a1 + 48);
  v126 = 0;
  v127 = 0;
  v128 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v126, *a4, a4[1], (a4[1] - *a4) >> 3);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v129, *a5, a5[1], (a5[1] - *a5) >> 3);
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v115, &v126, &v132, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v115, 0x7FFFFFFFuLL, &v122);
  v125 = &v115;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v129 + i);
    if (v16)
    {
      *(&v130 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = v122;
  v18 = (v123 - v122) >> 2;
  if (v18 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v22 = v18 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v126, &v122, v124, v18 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v115, &v122, v124 + 3, v18 - 3);
    v23 = v123 - 12;
    v24 = 1;
    do
    {
      v25 = *v23;
      v23 += 4;
      v24 *= v25;
    }

    while (v23 != v123);
    if (!v110)
    {
      v82 = v120;
      if (v120)
      {
LABEL_62:
        v121 = v82;
        operator delete(v82);
      }

LABEL_63:
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      if (v130)
      {
        v131 = v130;
        operator delete(v130);
      }

      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      goto LABEL_81;
    }

    v104 = v12;
    v105 = v13;
    v26 = 0;
    v27 = v126;
    v28 = v130;
    v29 = v122;
    v30 = *v124;
    v31 = v124[3];
    v32 = v18 - 2;
    v33 = v18 - 1;
    v34 = (((v128 - v127) << 30) - 0x100000000) >> 32;
    v99 = v133;
    v112 = &v133[4 * v34];
    v103 = v34;
    v101 = &v127[4 * v34];
    v35 = ((v128 - v127) >> 2) & 0x7FFFFFFF;
    v98 = v35 - 1;
    v36 = v115;
    v37 = v118;
    v38 = (((v117 - v116) << 30) - 0x100000000) >> 32;
    __p = v120;
    v111 = &v120[4 * v38];
    v39 = ((v117 - v116) >> 2) & 0x7FFFFFFF;
    v97 = v39 - 1;
    v108 = v24;
    v109 = (v128 - v127) >> 2;
    v40 = 4 * v35;
    v41 = 4 * v39;
    v95 = v116 - 8;
    v96 = v127 - 8;
    v102 = v38;
    v113 = v18 - 3;
    v106 = v116 + 4 * v38;
    v107 = (v117 - v116) >> 2;
    while (1)
    {
      v114 = v26;
      v42 = v29[v22];
      if (v42 >= 1)
      {
        v43 = 0;
        v44 = &v105[v36];
        v45 = &v104[v27];
        v46 = 2 * *(v30 + 8 * v113);
        v47 = 2 * *(v30 + 8 * v32);
        v48 = 4 * *(v31 + 8 * v113);
        v49 = 4 * *(v31 + 8 * v32);
        do
        {
          v50 = v29[v32];
          if (v50 >= 1)
          {
            v51 = 0;
            v52 = 2 * *(v30 + 8 * v33);
            v53 = 4 * *(v31 + 8 * v33);
            v54 = v44;
            v55 = v45;
            do
            {
              v56 = v29[v33];
              if (v56 >= 1)
              {
                v57 = 0;
                v58 = 0;
                do
                {
                  *(v54 + v57) = *(v55 + v58);
                  v58 += v52;
                  v57 += v53;
                  --v56;
                }

                while (v56);
              }

              ++v51;
              v55 = (v55 + v47);
              v54 = (v54 + v49);
            }

            while (v51 != v50);
          }

          ++v43;
          v45 = (v45 + v46);
          v44 = (v44 + v48);
        }

        while (v43 != v42);
      }

      if (v109)
      {
        break;
      }

      v22 = v113;
      v67 = v114;
      v68 = v106;
      v60 = v107;
      if (v107)
      {
        goto LABEL_52;
      }

LABEL_60:
      v26 = v67 + v108;
      if (v26 >= v110)
      {
        v82 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v59 = *v112;
    v22 = v113;
    v60 = v107;
    if (v109 >= 2 && (v61 = v101, v59 == *v101 - 1))
    {
      v62 = v98;
      v63 = v99;
      v64 = v96;
      v65 = v112;
      v66 = v103;
      v67 = v114;
      v68 = v106;
      do
      {
        v69 = v62;
        *v65 = 0;
        v27 = (v27 - v28[v66] * (*v61 - 1));
        v126 = v27;
        --v62;
        v65 = &v63[v40 - 8];
        v59 = *v65;
        v63 -= 4;
        if (v69 < 2)
        {
          break;
        }

        v61 = &v64[v40];
        v70 = *&v64[v40] - 1;
        v64 -= 4;
        v66 = v62;
      }

      while (v59 == v70);
      v71 = &v63[v40 - 4];
    }

    else
    {
      v62 = v103;
      v71 = v112;
      v67 = v114;
      v68 = v106;
    }

    *v71 = v59 + 1;
    v27 = (v27 + v28[v62]);
    v126 = v27;
    if (!v107)
    {
      goto LABEL_60;
    }

LABEL_52:
    v72 = *v111;
    if (v60 >= 2 && v72 == *v68 - 1)
    {
      v73 = __p;
      v74 = v95;
      v75 = v97;
      v76 = v68;
      v77 = v111;
      v78 = v102;
      do
      {
        v79 = v75;
        *v77 = 0;
        v36 -= v37[v78] * (*v76 - 1);
        v115 = v36;
        --v75;
        v77 = &v73[v41 - 8];
        v72 = *v77;
        v73 -= 4;
        if (v79 < 2)
        {
          break;
        }

        v76 = &v74[v41];
        v80 = *&v74[v41] - 1;
        v74 -= 4;
        v78 = v75;
      }

      while (v72 == v80);
      v81 = &v73[v41 - 4];
    }

    else
    {
      v75 = v102;
      v81 = v111;
    }

    *v81 = v72 + 1;
    v36 += v37[v75];
    v115 = v36;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v18 == 2)
  {
    v83 = *v122;
    if (*v122 >= 1)
    {
      v84 = 0;
      v85 = v124[3];
      v86 = 2 * **v124;
      v87 = 2 * *(*v124 + 8);
      v88 = v85[1];
      v89 = 4 * *v85;
      v90 = 4 * v88;
      do
      {
        v91 = v17[1];
        if (v91 >= 1)
        {
          v92 = v13;
          v93 = v12;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v87);
            v92 = (v92 + v90);
            --v91;
          }

          while (v91);
        }

        ++v84;
        v12 = (v12 + v86);
        v13 = (v13 + v89);
      }

      while (v84 != v83);
    }
  }

  else if (v18 == 1)
  {
    v19 = *v122;
    if (*v122 >= 1)
    {
      v20 = *v124[3];
      v21 = 2 * **v124;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v21);
        v13 += v20;
        --v19;
      }

      while (v19);
    }
  }

LABEL_81:
  v126 = &v124;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

LABEL_83:
  v94 = *MEMORY[0x277D85DE8];
}

void sub_25A3B00C8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v127 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_82;
  }

  v101 = *(*a1 + 48);
  v118 = 0;
  v119 = 0;
  v120 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v118, *a4, a4[1], (a4[1] - *a4) >> 3);
  v121 = 0;
  v122 = 0;
  v123 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v121, *a5, a5[1], (a5[1] - *a5) >> 3);
  v107 = 0;
  v108 = 0;
  v109 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v107, &v118, &v124, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v107, 0x7FFFFFFFuLL, &v114);
  v117 = &v107;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v117);
  for (i = 0; i != -6; i -= 3)
  {
    v16 = *(&v121 + i * 8);
    if (v16)
    {
      (&v122)[i] = v16;
      operator delete(v16);
    }
  }

  v17 = (v115 - v114) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v118, &v114, v116, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v107, &v114, v116 + 3, v17 - 3);
    v22 = v115 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v115);
    if (v101)
    {
      v98 = v13;
      v25 = 0;
      v105 = (v120 - v119) >> 2;
      v26 = v114;
      v27 = *v116;
      v28 = v116[3];
      v29 = v17 - 2;
      v30 = v17 - 1;
      v31 = (((v120 - v119) << 30) - 0x100000000) >> 32;
      v32 = v122;
      v93 = v125;
      v96 = v31;
      v97 = &v119[4 * v31];
      v103 = &v125[4 * v31];
      v104 = (v109 - v108) >> 2;
      v33 = v110;
      __p = v112;
      v95 = (((v109 - v108) << 30) - 0x100000000) >> 32;
      v102 = &v112[4 * v95];
      v34 = 4 * (v105 & 0x7FFFFFFF);
      v92 = v119 - 8;
      v35 = 4 * (v104 & 0x7FFFFFFF);
      v91 = v108 - 8;
      v99 = v108 + 4 * v95;
      v100 = v23;
      do
      {
        v106 = v25;
        v36 = v21;
        v37 = v26[v21];
        if (v37 >= 1)
        {
          v38 = 0;
          v39 = &v98[v107];
          v40 = &v12[v118];
          v41 = v26[v29];
          v42 = 2 * *(v27 + 8 * v21);
          v43 = 8 * *(v28 + 8 * v21);
          do
          {
            if (v41 >= 1)
            {
              v44 = 0;
              v45 = v26[v30];
              v46 = 2 * *(v27 + 8 * v29);
              v47 = 8 * *(v28 + 8 * v29);
              v48 = v39;
              v49 = v40;
              do
              {
                if (v45 >= 1)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = 2 * *(v27 + 8 * v30);
                  v53 = 8 * *(v28 + 8 * v30);
                  v54 = v45;
                  do
                  {
                    *(v48 + v50) = *(v49 + v51);
                    v51 += v52;
                    v50 += v53;
                    --v54;
                  }

                  while (v54);
                }

                ++v44;
                v49 = (v49 + v46);
                v48 = (v48 + v47);
              }

              while (v44 != v41);
            }

            ++v38;
            v40 = (v40 + v42);
            v39 = (v39 + v43);
          }

          while (v38 != v37);
        }

        v21 = v36;
        if (v105)
        {
          v55 = *v103;
          v56 = v118;
          v57 = v97;
          if (v105 >= 2 && v55 == *v97 - 1)
          {
            v59 = (v105 & 0x7FFFFFFF) - 1;
            v58 = v93;
            v60 = v92;
            v61 = v103;
            v62 = v96;
            do
            {
              v63 = v59;
              *v61 = 0;
              v56 = (v56 - v32[v62] * (*v57 - 1));
              v118 = v56;
              --v59;
              v61 = &v58[v34 - 8];
              v55 = *v61;
              v58 -= 4;
              if (v63 < 2)
              {
                break;
              }

              v57 = &v60[v34];
              v64 = *&v60[4 * (v105 & 0x7FFFFFFF)] - 1;
              v60 -= 4;
              v62 = v59;
            }

            while (v55 == v64);
            v65 = &v58[v34 - 4];
          }

          else
          {
            v59 = v96;
            v65 = v103;
          }

          *v65 = v55 + 1;
          v118 = (v56 + v32[v59]);
        }

        if (v104)
        {
          v66 = *v102;
          v67 = v107;
          if (v104 >= 2 && v66 == *v99 - 1)
          {
            v68 = __p;
            v69 = v95;
            v70 = v91;
            v71 = (v104 & 0x7FFFFFFF) - 1;
            v72 = v99;
            v73 = v102;
            do
            {
              v74 = v71;
              *v73 = 0;
              v67 -= v33[v69] * (*v72 - 1);
              v107 = v67;
              --v71;
              v73 = &v68[v35 - 8];
              v66 = *v73;
              v68 -= 4;
              if (v74 < 2)
              {
                break;
              }

              v72 = &v70[v35];
              v75 = *&v70[4 * (v104 & 0x7FFFFFFF)] - 1;
              v70 -= 4;
              v69 = v71;
            }

            while (v66 == v75);
            v76 = &v68[v35 - 4];
          }

          else
          {
            v71 = v95;
            v76 = v102;
          }

          *v76 = v66 + 1;
          v107 = v33[v71] + v67;
        }

        v25 = v106 + v100;
      }

      while (v106 + v100 < v101);
      v77 = __p;
      if (!__p)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v77 = v112;
      if (!v112)
      {
        goto LABEL_62;
      }
    }

    v113 = v77;
    operator delete(v77);
LABEL_62:
    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }

    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }

    if (v125)
    {
      v126 = v125;
      operator delete(v125);
    }

    if (v122)
    {
      v123 = v122;
      operator delete(v122);
    }

    if (v119)
    {
      v120 = v119;
      operator delete(v119);
    }

    goto LABEL_80;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v78 = *v114;
    if (*v114 >= 1)
    {
      v79 = 0;
      v80 = *v116;
      v81 = v116[3];
      v82 = *(v114 + 1);
      v83 = 2 * **v116;
      v84 = 8 * *v81;
      do
      {
        if (v82 >= 1)
        {
          v85 = 2 * *(v80 + 8);
          v86 = 8 * v81[1];
          v87 = v13;
          v88 = v12;
          v89 = v82;
          do
          {
            *v87 = *v88;
            v88 = (v88 + v85);
            v87 = (v87 + v86);
            --v89;
          }

          while (v89);
        }

        ++v79;
        v12 = (v12 + v83);
        v13 = (v13 + v84);
      }

      while (v79 != v78);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v114;
    if (*v114 >= 1)
    {
      v19 = *v116[3];
      v20 = 2 * **v116;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_80:
  v118 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v118);
  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

LABEL_82:
  v90 = *MEMORY[0x277D85DE8];
}

void sub_25A3B0800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v38 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a38);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,signed char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v110 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
  }

  else
  {
    v15 = *(*a1 + 48);
    v101 = 0;
    v102 = 0;
    v103 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v101, *a4, a4[1], (a4[1] - *a4) >> 3);
    v104 = 0;
    v105 = 0;
    v106 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v104, *a5, a5[1], (a5[1] - *a5) >> 3);
    v90 = 0;
    v91 = 0;
    v92 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v90, &v101, &v107, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v90, 0x7FFFFFFFuLL, &v97);
    v100 = &v90;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v100);
    for (i = 0; i != -48; i -= 24)
    {
      v17 = *(&v104 + i);
      if (v17)
      {
        *(&v105 + i) = v17;
        operator delete(v17);
      }
    }

    v18 = v97;
    v19 = (v98 - v97) >> 2;
    if (v19 > 2)
    {
      if (v11)
      {
        v12 += 2 * *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      v23 = v19 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v101, &v97, v99, v19 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v90, &v97, v99 + 3, v19 - 3);
      v24 = v98 - 3;
      v25 = 1;
      do
      {
        v26 = *v24++;
        v25 *= v26;
      }

      while (v24 != v98);
      if (v15)
      {
        v27 = 0;
        v28 = v19 - 2;
        v29 = v19 - 1;
        v30 = v99;
        do
        {
          v31 = *(v97 + v23);
          if (v31 >= 1)
          {
            v32 = 0;
            v33 = *(v30[3] + 8 * v23);
            v34 = &v13[v90];
            v35 = &v12[2 * v101];
            v36 = 2 * *(*v30 + 8 * v23);
            do
            {
              v37 = *(v97 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = *(v30[3] + 8 * v28);
                v40 = 2 * *(*v30 + 8 * v28);
                v41 = v35;
                v42 = v34;
                do
                {
                  v43 = *(v97 + v29);
                  if (v43 >= 1)
                  {
                    v44 = 0;
                    v45 = 0;
                    v46 = *(v30[3] + 8 * v29);
                    v47 = 2 * *(*v30 + 8 * v29);
                    do
                    {
                      v42[v44] = v41[v45];
                      v45 += v47;
                      v44 += v46;
                      --v43;
                    }

                    while (v43);
                  }

                  v42 += v39;
                  ++v38;
                  v41 += v40;
                }

                while (v38 != v37);
              }

              v34 += v33;
              ++v32;
              v35 += v36;
            }

            while (v32 != v31);
          }

          v48 = v103 - v102;
          v49 = (v103 - v102) >> 2;
          if (v49)
          {
            v50 = v108;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = v108 + 4 * v51;
            v53 = *v52;
            v54 = v102 + 4 * v51;
            v55 = v105;
            v56 = v101;
            if (v49 >= 2 && v53 == *v54 - 1)
            {
              v59 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v59 - 1;
              v60 = 4 * v59;
              v61 = v102 - 8;
              do
              {
                v62 = v58;
                *v52 = 0;
                v56 = (v56 - v55[v51] * (*v54 - 1));
                v101 = v56;
                --v58;
                v52 = &v50[v60 - 8];
                v53 = *v52;
                v50 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v54 = &v61[v60];
                v63 = *&v61[4 * v59] - 1;
                v61 -= 4;
                v51 = v58;
              }

              while (v53 == v63);
              v52 = &v50[4 * v59 - 4];
            }

            else
            {
              v58 = ((v48 << 30) - 0x100000000) >> 32;
            }

            *v52 = v53 + 1;
            v101 = (v56 + v55[v58]);
          }

          v64 = v92 - v91;
          v65 = (v92 - v91) >> 2;
          if (v65)
          {
            v66 = __p;
            v67 = ((v64 << 30) - 0x100000000) >> 32;
            v68 = __p + 4 * v67;
            v69 = *v68;
            v70 = v93;
            v71 = v90;
            if (v65 >= 2 && (v72 = v91 + 4 * v67, v69 == *v72 - 1))
            {
              v73 = (v64 >> 2) & 0x7FFFFFFF;
              v74 = v73 - 1;
              v75 = 4 * v73;
              v76 = v91 - 8;
              do
              {
                v77 = v74;
                *v68 = 0;
                v71 -= v70[v67] * (*v72 - 1);
                v90 = v71;
                --v74;
                v68 = &v66[v75 - 8];
                v69 = *v68;
                v66 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v72 = &v76[v75];
                v78 = *&v76[4 * v73] - 1;
                v76 -= 4;
                v67 = v74;
              }

              while (v69 == v78);
              v68 = &v66[4 * v73 - 4];
            }

            else
            {
              v74 = ((v64 << 30) - 0x100000000) >> 32;
            }

            *v68 = v69 + 1;
            v90 = v70[v74] + v71;
          }

          v27 += v25;
        }

        while (v27 < v15);
      }

      if (__p)
      {
        v96 = __p;
        operator delete(__p);
      }

      if (v93)
      {
        v94 = v93;
        operator delete(v93);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (v108)
      {
        v109 = v108;
        operator delete(v108);
      }

      if (v105)
      {
        v106 = v105;
        operator delete(v105);
      }

      if (v102)
      {
        v103 = v102;
        operator delete(v102);
      }
    }

    else
    {
      if (v11)
      {
        v12 += 2 * *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      if (v19 == 2)
      {
        v79 = *v97;
        if (*v97 >= 1)
        {
          v80 = 0;
          v81 = v99;
          v82 = *v99[3];
          v83 = 2 * **v99;
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = *(v81[3] + 8);
              v86 = 2 * *(*v81 + 8);
              v87 = v12;
              v88 = v13;
              do
              {
                *v88 = *v87;
                v88 += v85;
                v87 += v86;
                --v84;
              }

              while (v84);
            }

            v13 += v82;
            ++v80;
            v12 += v83;
          }

          while (v80 != v79);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v97;
        if (*v97 >= 1)
        {
          v21 = *v99[3];
          v22 = 2 * **v99;
          do
          {
            *v13 = *v12;
            v13 += v21;
            v12 += v22;
            --v20;
          }

          while (v20);
        }
      }
    }

    v101 = &v99;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v101);
    if (v97)
    {
      v98 = v97;
      operator delete(v97);
    }
  }

  v89 = *MEMORY[0x277D85DE8];
}

void sub_25A3B0E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v137 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v112 = *(*a1 + 48);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a4, a4[1], (a4[1] - *a4) >> 3);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v131, *a5, a5[1], (a5[1] - *a5) >> 3);
  v117 = 0;
  v118 = 0;
  v119 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v117, &v128, &v134, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v117, 0x7FFFFFFFuLL, &v124);
  v127 = &v117;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v131 + i);
    if (v16)
    {
      *(&v132 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v125 - v124) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v128, &v124, v126, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v117, &v124, v126 + 3, v17 - 3);
    v22 = v125 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v125);
    if (!v112)
    {
      v81 = v122;
      if (v122)
      {
LABEL_62:
        v123 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v135)
      {
        v136 = v135;
        operator delete(v135);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      goto LABEL_81;
    }

    v106 = v12;
    v107 = v13;
    v25 = 0;
    v26 = v128;
    v27 = v132;
    v28 = v124;
    v29 = *v126;
    v30 = v126[3];
    v105 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v130 - v129) << 30) - 0x100000000) >> 32;
    v100 = v135;
    v114 = &v135[4 * v32];
    v104 = v32;
    v102 = &v129[4 * v32];
    v33 = ((v130 - v129) >> 2) & 0x7FFFFFFF;
    v99 = v33 - 1;
    v34 = v117;
    v35 = v120;
    v36 = (((v119 - v118) << 30) - 0x100000000) >> 32;
    __p = v122;
    v113 = &v122[4 * v36];
    v37 = ((v119 - v118) >> 2) & 0x7FFFFFFF;
    v98 = v37 - 1;
    v110 = v23;
    v111 = (v130 - v129) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v96 = v118 - 8;
    v97 = v129 - 8;
    v103 = v36;
    v115 = v17 - 3;
    v108 = v118 + 4 * v36;
    v109 = (v119 - v118) >> 2;
    while (1)
    {
      v116 = v25;
      v40 = *&v28[4 * v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = *&v28[4 * v105];
        v43 = &v107[v34];
        v44 = 2 * *(v29 + 8 * v115);
        v45 = 2 * *(v29 + 8 * v105);
        v46 = 2 * *(v30 + 8 * v115);
        v47 = 2 * *(v30 + 8 * v105);
        v48 = &v106[v26];
        do
        {
          if (v42 >= 1)
          {
            v49 = 0;
            v50 = *&v28[4 * v31];
            v51 = 2 * *(v29 + 8 * v31);
            v52 = 2 * *(v30 + 8 * v31);
            v53 = v43;
            v54 = v48;
            do
            {
              if (v50 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v50;
                do
                {
                  *(v53 + v55) = *(v54 + v56);
                  v56 += v51;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              ++v49;
              v54 = (v54 + v45);
              v53 = (v53 + v47);
            }

            while (v49 != v42);
          }

          ++v41;
          v48 = (v48 + v44);
          v43 = (v43 + v46);
        }

        while (v41 != v40);
      }

      if (v111)
      {
        break;
      }

      v21 = v115;
      v66 = v116;
      v67 = v108;
      v59 = v109;
      if (v109)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v110;
      if (v25 >= v112)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v114;
    v21 = v115;
    v59 = v109;
    if (v111 >= 2 && (v60 = v102, v58 == *v102 - 1))
    {
      v62 = v99;
      v61 = v100;
      v63 = v97;
      v64 = v114;
      v65 = v104;
      v66 = v116;
      v67 = v108;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v128 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v104;
      v70 = v114;
      v66 = v116;
      v67 = v108;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v128 = v26;
    if (!v109)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v113;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v96;
      v74 = v98;
      v75 = v67;
      v76 = v113;
      v77 = v103;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v117 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v103;
      v80 = v113;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v117 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v124;
    if (*v124 >= 1)
    {
      v83 = 0;
      v84 = v126[3];
      v85 = *v84;
      v86 = v84[1];
      v87 = 2 * **v126;
      v88 = 2 * *(*v126 + 8);
      v89 = *(v124 + 1);
      v90 = 2 * v85;
      v91 = 2 * v86;
      do
      {
        if (v89 >= 1)
        {
          v92 = v13;
          v93 = v12;
          v94 = v89;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v88);
            v92 = (v92 + v91);
            --v94;
          }

          while (v94);
        }

        ++v83;
        v12 = (v12 + v87);
        v13 = (v13 + v90);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v124;
    if (*v124 >= 1)
    {
      v19 = *v126[3];
      v20 = 2 * **v126;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v128 = &v126;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v128);
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

LABEL_83:
  v95 = *MEMORY[0x277D85DE8];
}

void sub_25A3B15E4(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v135 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + 4 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v110 = *(*a1 + 48);
  v126 = 0;
  v127 = 0;
  v128 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v126, *a4, a4[1], (a4[1] - *a4) >> 3);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v129, *a5, a5[1], (a5[1] - *a5) >> 3);
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v115, &v126, &v132, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v115, 0x7FFFFFFFuLL, &v122);
  v125 = &v115;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v129 + i);
    if (v16)
    {
      *(&v130 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = v122;
  v18 = (v123 - v122) >> 2;
  if (v18 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v22 = v18 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v126, &v122, v124, v18 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v115, &v122, v124 + 3, v18 - 3);
    v23 = v123 - 12;
    v24 = 1;
    do
    {
      v25 = *v23;
      v23 += 4;
      v24 *= v25;
    }

    while (v23 != v123);
    if (!v110)
    {
      v82 = v120;
      if (v120)
      {
LABEL_62:
        v121 = v82;
        operator delete(v82);
      }

LABEL_63:
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      if (v130)
      {
        v131 = v130;
        operator delete(v130);
      }

      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      goto LABEL_81;
    }

    v104 = v12;
    v105 = v13;
    v26 = 0;
    v27 = v126;
    v28 = v130;
    v29 = v122;
    v30 = *v124;
    v31 = v124[3];
    v32 = v18 - 2;
    v33 = v18 - 1;
    v34 = (((v128 - v127) << 30) - 0x100000000) >> 32;
    v99 = v133;
    v112 = &v133[4 * v34];
    v103 = v34;
    v101 = &v127[4 * v34];
    v35 = ((v128 - v127) >> 2) & 0x7FFFFFFF;
    v98 = v35 - 1;
    v36 = v115;
    v37 = v118;
    v38 = (((v117 - v116) << 30) - 0x100000000) >> 32;
    __p = v120;
    v111 = &v120[4 * v38];
    v39 = ((v117 - v116) >> 2) & 0x7FFFFFFF;
    v97 = v39 - 1;
    v108 = v24;
    v109 = (v128 - v127) >> 2;
    v40 = 4 * v35;
    v41 = 4 * v39;
    v95 = v116 - 8;
    v96 = v127 - 8;
    v102 = v38;
    v113 = v18 - 3;
    v106 = v116 + 4 * v38;
    v107 = (v117 - v116) >> 2;
    while (1)
    {
      v114 = v26;
      v42 = v29[v22];
      if (v42 >= 1)
      {
        v43 = 0;
        v44 = &v105[v36];
        v45 = &v104[v27];
        v46 = 2 * *(v30 + 8 * v113);
        v47 = 2 * *(v30 + 8 * v32);
        v48 = 4 * *(v31 + 8 * v113);
        v49 = 4 * *(v31 + 8 * v32);
        do
        {
          v50 = v29[v32];
          if (v50 >= 1)
          {
            v51 = 0;
            v52 = 2 * *(v30 + 8 * v33);
            v53 = 4 * *(v31 + 8 * v33);
            v54 = v44;
            v55 = v45;
            do
            {
              v56 = v29[v33];
              if (v56 >= 1)
              {
                v57 = 0;
                v58 = 0;
                do
                {
                  *(v54 + v57) = *(v55 + v58);
                  v58 += v52;
                  v57 += v53;
                  --v56;
                }

                while (v56);
              }

              ++v51;
              v55 = (v55 + v47);
              v54 = (v54 + v49);
            }

            while (v51 != v50);
          }

          ++v43;
          v45 = (v45 + v46);
          v44 = (v44 + v48);
        }

        while (v43 != v42);
      }

      if (v109)
      {
        break;
      }

      v22 = v113;
      v67 = v114;
      v68 = v106;
      v60 = v107;
      if (v107)
      {
        goto LABEL_52;
      }

LABEL_60:
      v26 = v67 + v108;
      if (v26 >= v110)
      {
        v82 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v59 = *v112;
    v22 = v113;
    v60 = v107;
    if (v109 >= 2 && (v61 = v101, v59 == *v101 - 1))
    {
      v62 = v98;
      v63 = v99;
      v64 = v96;
      v65 = v112;
      v66 = v103;
      v67 = v114;
      v68 = v106;
      do
      {
        v69 = v62;
        *v65 = 0;
        v27 = (v27 - v28[v66] * (*v61 - 1));
        v126 = v27;
        --v62;
        v65 = &v63[v40 - 8];
        v59 = *v65;
        v63 -= 4;
        if (v69 < 2)
        {
          break;
        }

        v61 = &v64[v40];
        v70 = *&v64[v40] - 1;
        v64 -= 4;
        v66 = v62;
      }

      while (v59 == v70);
      v71 = &v63[v40 - 4];
    }

    else
    {
      v62 = v103;
      v71 = v112;
      v67 = v114;
      v68 = v106;
    }

    *v71 = v59 + 1;
    v27 = (v27 + v28[v62]);
    v126 = v27;
    if (!v107)
    {
      goto LABEL_60;
    }

LABEL_52:
    v72 = *v111;
    if (v60 >= 2 && v72 == *v68 - 1)
    {
      v73 = __p;
      v74 = v95;
      v75 = v97;
      v76 = v68;
      v77 = v111;
      v78 = v102;
      do
      {
        v79 = v75;
        *v77 = 0;
        v36 -= v37[v78] * (*v76 - 1);
        v115 = v36;
        --v75;
        v77 = &v73[v41 - 8];
        v72 = *v77;
        v73 -= 4;
        if (v79 < 2)
        {
          break;
        }

        v76 = &v74[v41];
        v80 = *&v74[v41] - 1;
        v74 -= 4;
        v78 = v75;
      }

      while (v72 == v80);
      v81 = &v73[v41 - 4];
    }

    else
    {
      v75 = v102;
      v81 = v111;
    }

    *v81 = v72 + 1;
    v36 += v37[v75];
    v115 = v36;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v18 == 2)
  {
    v83 = *v122;
    if (*v122 >= 1)
    {
      v84 = 0;
      v85 = v124[3];
      v86 = 2 * **v124;
      v87 = 2 * *(*v124 + 8);
      v88 = v85[1];
      v89 = 4 * *v85;
      v90 = 4 * v88;
      do
      {
        v91 = v17[1];
        if (v91 >= 1)
        {
          v92 = v13;
          v93 = v12;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v87);
            v92 = (v92 + v90);
            --v91;
          }

          while (v91);
        }

        ++v84;
        v12 = (v12 + v86);
        v13 = (v13 + v89);
      }

      while (v84 != v83);
    }
  }

  else if (v18 == 1)
  {
    v19 = *v122;
    if (*v122 >= 1)
    {
      v20 = *v124[3];
      v21 = 2 * **v124;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v21);
        v13 += v20;
        --v19;
      }

      while (v19);
    }
  }

LABEL_81:
  v126 = &v124;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

LABEL_83:
  v94 = *MEMORY[0x277D85DE8];
}

void sub_25A3B1D2C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v127 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_82;
  }

  v101 = *(*a1 + 48);
  v118 = 0;
  v119 = 0;
  v120 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v118, *a4, a4[1], (a4[1] - *a4) >> 3);
  v121 = 0;
  v122 = 0;
  v123 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v121, *a5, a5[1], (a5[1] - *a5) >> 3);
  v107 = 0;
  v108 = 0;
  v109 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v107, &v118, &v124, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v107, 0x7FFFFFFFuLL, &v114);
  v117 = &v107;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v117);
  for (i = 0; i != -6; i -= 3)
  {
    v16 = *(&v121 + i * 8);
    if (v16)
    {
      (&v122)[i] = v16;
      operator delete(v16);
    }
  }

  v17 = (v115 - v114) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v118, &v114, v116, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v107, &v114, v116 + 3, v17 - 3);
    v22 = v115 - 3;
    v23 = 1;
    do
    {
      v24 = *v22++;
      v23 *= v24;
    }

    while (v22 != v115);
    if (v101)
    {
      v98 = v13;
      v25 = 0;
      v105 = (v120 - v119) >> 2;
      v26 = v114;
      v27 = *v116;
      v28 = v116[3];
      v29 = v17 - 2;
      v30 = v17 - 1;
      v31 = (((v120 - v119) << 30) - 0x100000000) >> 32;
      v32 = v122;
      v93 = v125;
      v96 = v31;
      v97 = &v119[4 * v31];
      v103 = &v125[4 * v31];
      v104 = (v109 - v108) >> 2;
      v33 = v110;
      __p = v112;
      v95 = (((v109 - v108) << 30) - 0x100000000) >> 32;
      v102 = &v112[4 * v95];
      v34 = 4 * (v105 & 0x7FFFFFFF);
      v92 = v119 - 8;
      v35 = 4 * (v104 & 0x7FFFFFFF);
      v91 = v108 - 8;
      v99 = v108 + 4 * v95;
      v100 = v23;
      do
      {
        v106 = v25;
        v36 = v21;
        v37 = v26[v21];
        if (v37 >= 1)
        {
          v38 = 0;
          v39 = &v98[v107];
          v40 = &v12[v118];
          v41 = v26[v29];
          v42 = 2 * *(v27 + 8 * v21);
          v43 = 8 * *(v28 + 8 * v21);
          do
          {
            if (v41 >= 1)
            {
              v44 = 0;
              v45 = v26[v30];
              v46 = 2 * *(v27 + 8 * v29);
              v47 = 8 * *(v28 + 8 * v29);
              v48 = v39;
              v49 = v40;
              do
              {
                if (v45 >= 1)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = 2 * *(v27 + 8 * v30);
                  v53 = 8 * *(v28 + 8 * v30);
                  v54 = v45;
                  do
                  {
                    *(v48 + v50) = *(v49 + v51);
                    v51 += v52;
                    v50 += v53;
                    --v54;
                  }

                  while (v54);
                }

                ++v44;
                v49 = (v49 + v46);
                v48 = (v48 + v47);
              }

              while (v44 != v41);
            }

            ++v38;
            v40 = (v40 + v42);
            v39 = (v39 + v43);
          }

          while (v38 != v37);
        }

        v21 = v36;
        if (v105)
        {
          v55 = *v103;
          v56 = v118;
          v57 = v97;
          if (v105 >= 2 && v55 == *v97 - 1)
          {
            v59 = (v105 & 0x7FFFFFFF) - 1;
            v58 = v93;
            v60 = v92;
            v61 = v103;
            v62 = v96;
            do
            {
              v63 = v59;
              *v61 = 0;
              v56 = (v56 - v32[v62] * (*v57 - 1));
              v118 = v56;
              --v59;
              v61 = &v58[v34 - 8];
              v55 = *v61;
              v58 -= 4;
              if (v63 < 2)
              {
                break;
              }

              v57 = &v60[v34];
              v64 = *&v60[4 * (v105 & 0x7FFFFFFF)] - 1;
              v60 -= 4;
              v62 = v59;
            }

            while (v55 == v64);
            v65 = &v58[v34 - 4];
          }

          else
          {
            v59 = v96;
            v65 = v103;
          }

          *v65 = v55 + 1;
          v118 = (v56 + v32[v59]);
        }

        if (v104)
        {
          v66 = *v102;
          v67 = v107;
          if (v104 >= 2 && v66 == *v99 - 1)
          {
            v68 = __p;
            v69 = v95;
            v70 = v91;
            v71 = (v104 & 0x7FFFFFFF) - 1;
            v72 = v99;
            v73 = v102;
            do
            {
              v74 = v71;
              *v73 = 0;
              v67 -= v33[v69] * (*v72 - 1);
              v107 = v67;
              --v71;
              v73 = &v68[v35 - 8];
              v66 = *v73;
              v68 -= 4;
              if (v74 < 2)
              {
                break;
              }

              v72 = &v70[v35];
              v75 = *&v70[4 * (v104 & 0x7FFFFFFF)] - 1;
              v70 -= 4;
              v69 = v71;
            }

            while (v66 == v75);
            v76 = &v68[v35 - 4];
          }

          else
          {
            v71 = v95;
            v76 = v102;
          }

          *v76 = v66 + 1;
          v107 = v33[v71] + v67;
        }

        v25 = v106 + v100;
      }

      while (v106 + v100 < v101);
      v77 = __p;
      if (!__p)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v77 = v112;
      if (!v112)
      {
        goto LABEL_62;
      }
    }

    v113 = v77;
    operator delete(v77);
LABEL_62:
    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }

    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }

    if (v125)
    {
      v126 = v125;
      operator delete(v125);
    }

    if (v122)
    {
      v123 = v122;
      operator delete(v122);
    }

    if (v119)
    {
      v120 = v119;
      operator delete(v119);
    }

    goto LABEL_80;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v78 = *v114;
    if (*v114 >= 1)
    {
      v79 = 0;
      v80 = *v116;
      v81 = v116[3];
      v82 = *(v114 + 1);
      v83 = 2 * **v116;
      v84 = 8 * *v81;
      do
      {
        if (v82 >= 1)
        {
          v85 = 2 * *(v80 + 8);
          v86 = 8 * v81[1];
          v87 = v13;
          v88 = v12;
          v89 = v82;
          do
          {
            *v87 = *v88;
            v88 = (v88 + v85);
            v87 = (v87 + v86);
            --v89;
          }

          while (v89);
        }

        ++v79;
        v12 = (v12 + v83);
        v13 = (v13 + v84);
      }

      while (v79 != v78);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v114;
    if (*v114 >= 1)
    {
      v19 = *v116[3];
      v20 = 2 * **v116;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_80:
  v118 = &v116;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v118);
  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

LABEL_82:
  v90 = *MEMORY[0x277D85DE8];
}

void sub_25A3B2464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v38 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a38);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,half>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v137 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_85;
  }

  v113 = *(*a1 + 48);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a4, a4[1], (a4[1] - *a4) >> 3);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v131, *a5, a5[1], (a5[1] - *a5) >> 3);
  v117 = 0;
  v118 = 0;
  v119 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v117, &v128, &v134, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v117, 0x7FFFFFFFuLL, &v124);
  v127 = &v117;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v131 + i);
    if (v16)
    {
      *(&v132 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v125 - v124) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = (v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v128, &v124, v126, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v117, &v124, v126 + 3, v17 - 3);
    v22 = v125 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v125);
    if (!v113)
    {
      v82 = v122;
      if (v122)
      {
LABEL_64:
        v123 = v82;
        operator delete(v82);
      }

LABEL_65:
      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v135)
      {
        v136 = v135;
        operator delete(v135);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      goto LABEL_83;
    }

    v107 = v12;
    v108 = v13;
    v25 = 0;
    v26 = v128;
    v27 = v132;
    v28 = v124;
    v29 = *v126;
    v30 = v126[3];
    v106 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v130 - v129) << 30) - 0x100000000) >> 32;
    v101 = v135;
    v105 = v32;
    v103 = &v129[4 * v32];
    v33 = ((v130 - v129) >> 2) & 0x7FFFFFFF;
    v100 = v33 - 1;
    v34 = v117;
    v35 = v120;
    v36 = (((v119 - v118) << 30) - 0x100000000) >> 32;
    __p = v122;
    v114 = &v122[4 * v36];
    v115 = &v135[4 * v32];
    v37 = ((v119 - v118) >> 2) & 0x7FFFFFFF;
    v111 = v23;
    v112 = (v130 - v129) >> 2;
    v38 = 4 * v33;
    v98 = v129 - 8;
    v99 = v37 - 1;
    v39 = 4 * v37;
    v97 = v118 - 8;
    v104 = v36;
    v109 = v118 + 4 * v36;
    v110 = (v119 - v118) >> 2;
    while (1)
    {
      v116 = v25;
      v40 = v21;
      v41 = *&v28[4 * v21];
      if (v41 >= 1)
      {
        v42 = 0;
        v43 = *&v28[4 * v106];
        v44 = &v108[v34];
        v45 = 2 * *(v29 + 8 * v21);
        v46 = 2 * *(v29 + 8 * v106);
        v47 = 2 * *(v30 + 8 * v21);
        v48 = 2 * *(v30 + 8 * v106);
        v49 = &v107[v26];
        do
        {
          if (v43 >= 1)
          {
            v50 = 0;
            v51 = *&v28[4 * v31];
            v52 = 2 * *(v29 + 8 * v31);
            v53 = 2 * *(v30 + 8 * v31);
            v54 = v44;
            v55 = v49;
            do
            {
              if (v51 >= 1)
              {
                v56 = 0;
                v57 = 0;
                v58 = v51;
                do
                {
                  *(v54 + v56) = *(v55 + v57);
                  v57 += v52;
                  v56 += v53;
                  --v58;
                }

                while (v58);
              }

              ++v50;
              v55 = (v55 + v46);
              v54 = (v54 + v48);
            }

            while (v50 != v43);
          }

          ++v42;
          v49 = (v49 + v45);
          v44 = (v44 + v47);
        }

        while (v42 != v41);
      }

      if (!v112)
      {
        v21 = v40;
        v62 = v116;
        v68 = v109;
        v60 = v110;
        if (v110)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v59 = *v115;
      v21 = v40;
      v60 = v110;
      if (v112 < 2)
      {
        break;
      }

      v61 = v103;
      v62 = v116;
      if (v59 != *v103 - 1)
      {
        v64 = v105;
        v71 = v115;
LABEL_52:
        v68 = v109;
        goto LABEL_53;
      }

      v64 = v100;
      v63 = v101;
      v65 = v98;
      v66 = v115;
      v67 = v105;
      v68 = v109;
      do
      {
        v69 = v64;
        *v66 = 0;
        v26 = (v26 - v27[v67] * (*v61 - 1));
        v128 = v26;
        --v64;
        v66 = &v63[v38 - 8];
        v59 = *v66;
        v63 -= 4;
        if (v69 < 2)
        {
          break;
        }

        v61 = &v65[v38];
        v70 = *&v65[v38] - 1;
        v65 -= 4;
        v67 = v64;
      }

      while (v59 == v70);
      v71 = &v63[v38 - 4];
LABEL_53:
      *v71 = v59 + 1;
      v26 = (v26 + v27[v64]);
      v128 = v26;
      if (v110)
      {
LABEL_54:
        v72 = *v114;
        if (v60 >= 2 && v72 == *v68 - 1)
        {
          v73 = __p;
          v74 = v97;
          v75 = v99;
          v76 = v68;
          v77 = v114;
          v78 = v104;
          do
          {
            v79 = v75;
            *v77 = 0;
            v34 -= v35[v78] * (*v76 - 1);
            v117 = v34;
            --v75;
            v77 = &v73[v39 - 8];
            v72 = *v77;
            v73 -= 4;
            if (v79 < 2)
            {
              break;
            }

            v76 = &v74[v39];
            v80 = *&v74[v39] - 1;
            v74 -= 4;
            v78 = v75;
          }

          while (v72 == v80);
          v81 = &v73[v39 - 4];
        }

        else
        {
          v75 = v104;
          v81 = v114;
        }

        *v81 = v72 + 1;
        v34 += v35[v75];
        v117 = v34;
      }

LABEL_62:
      v25 = v62 + v111;
      if (v25 >= v113)
      {
        v82 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v64 = v105;
    v71 = v115;
    v62 = v116;
    goto LABEL_52;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v83 = *v124;
    if (*v124 >= 1)
    {
      v84 = 0;
      v85 = v126[3];
      v86 = *v85;
      v87 = v85[1];
      v88 = 2 * **v126;
      v89 = 2 * *(*v126 + 8);
      v90 = *(v124 + 1);
      v91 = 2 * v86;
      v92 = 2 * v87;
      do
      {
        if (v90 >= 1)
        {
          v93 = v13;
          v94 = v12;
          v95 = v90;
          do
          {
            *v93 = *v94;
            v94 = (v94 + v89);
            v93 = (v93 + v92);
            --v95;
          }

          while (v95);
        }

        ++v84;
        v12 = (v12 + v88);
        v13 = (v13 + v91);
      }

      while (v84 != v83);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v124;
    if (*v124 >= 1)
    {
      v19 = *v126[3];
      v20 = 2 * **v126;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_83:
  v128 = &v126;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v128);
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

LABEL_85:
  v96 = *MEMORY[0x277D85DE8];
}

void sub_25A3B2BCC(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v137 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + 4 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v112 = *(*a1 + 48);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a4, a4[1], (a4[1] - *a4) >> 3);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v131, *a5, a5[1], (a5[1] - *a5) >> 3);
  v117 = 0;
  v118 = 0;
  v119 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v117, &v128, &v134, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v117, 0x7FFFFFFFuLL, &v124);
  v127 = &v117;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v131 + i);
    if (v16)
    {
      *(&v132 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v125 - v124) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v128, &v124, v126, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v117, &v124, v126 + 3, v17 - 3);
    v22 = v125 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v125);
    if (!v112)
    {
      v81 = v122;
      if (v122)
      {
LABEL_62:
        v123 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v135)
      {
        v136 = v135;
        operator delete(v135);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      goto LABEL_81;
    }

    v106 = v12;
    v107 = v13;
    v25 = 0;
    v26 = v128;
    v27 = v132;
    v28 = v124;
    v29 = *v126;
    v30 = v126[3];
    v105 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v130 - v129) << 30) - 0x100000000) >> 32;
    v100 = v135;
    v114 = &v135[4 * v32];
    v104 = v32;
    v102 = &v129[4 * v32];
    v33 = ((v130 - v129) >> 2) & 0x7FFFFFFF;
    v99 = v33 - 1;
    v34 = v117;
    v35 = v120;
    v36 = (((v119 - v118) << 30) - 0x100000000) >> 32;
    __p = v122;
    v113 = &v122[4 * v36];
    v37 = ((v119 - v118) >> 2) & 0x7FFFFFFF;
    v98 = v37 - 1;
    v110 = v23;
    v111 = (v130 - v129) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v96 = v118 - 8;
    v97 = v129 - 8;
    v103 = v36;
    v115 = v17 - 3;
    v108 = v118 + 4 * v36;
    v109 = (v119 - v118) >> 2;
    while (1)
    {
      v116 = v25;
      v40 = *&v28[4 * v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = *&v28[4 * v105];
        v43 = &v107[v34];
        v44 = 2 * *(v29 + 8 * v115);
        v45 = 2 * *(v29 + 8 * v105);
        v46 = 4 * *(v30 + 8 * v115);
        v47 = 4 * *(v30 + 8 * v105);
        v48 = &v106[v26];
        do
        {
          if (v42 >= 1)
          {
            v49 = 0;
            v50 = *&v28[4 * v31];
            v51 = 2 * *(v29 + 8 * v31);
            v52 = 4 * *(v30 + 8 * v31);
            v53 = v43;
            v54 = v48;
            do
            {
              if (v50 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v50;
                do
                {
                  *(v53 + v55) = *(v54 + v56);
                  v56 += v51;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              ++v49;
              v54 = (v54 + v45);
              v53 = (v53 + v47);
            }

            while (v49 != v42);
          }

          ++v41;
          v48 = (v48 + v44);
          v43 = (v43 + v46);
        }

        while (v41 != v40);
      }

      if (v111)
      {
        break;
      }

      v21 = v115;
      v66 = v116;
      v67 = v108;
      v59 = v109;
      if (v109)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v110;
      if (v25 >= v112)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v114;
    v21 = v115;
    v59 = v109;
    if (v111 >= 2 && (v60 = v102, v58 == *v102 - 1))
    {
      v62 = v99;
      v61 = v100;
      v63 = v97;
      v64 = v114;
      v65 = v104;
      v66 = v116;
      v67 = v108;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v128 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v104;
      v70 = v114;
      v66 = v116;
      v67 = v108;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v128 = v26;
    if (!v109)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v113;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v96;
      v74 = v98;
      v75 = v67;
      v76 = v113;
      v77 = v103;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v117 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v103;
      v80 = v113;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v117 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v124;
    if (*v124 >= 1)
    {
      v83 = 0;
      v84 = v126[3];
      v85 = *v84;
      v86 = v84[1];
      v87 = 2 * **v126;
      v88 = 2 * *(*v126 + 8);
      v89 = *(v124 + 1);
      v90 = 4 * v85;
      v91 = 4 * v86;
      do
      {
        if (v89 >= 1)
        {
          v92 = v13;
          v93 = v12;
          v94 = v89;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v88);
            v92 = (v92 + v91);
            --v94;
          }

          while (v94);
        }

        ++v83;
        v12 = (v12 + v87);
        v13 = (v13 + v90);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v124;
    if (*v124 >= 1)
    {
      v19 = *v126[3];
      v20 = 2 * **v126;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v128 = &v126;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v128);
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

LABEL_83:
  v95 = *MEMORY[0x277D85DE8];
}

void sub_25A3B3334(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v137 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + 8 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v112 = *(*a1 + 48);
  v128 = 0;
  v129 = 0;
  v130 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v128, *a4, a4[1], (a4[1] - *a4) >> 3);
  v131 = 0;
  v132 = 0;
  v133 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v131, *a5, a5[1], (a5[1] - *a5) >> 3);
  v117 = 0;
  v118 = 0;
  v119 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v117, &v128, &v134, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v117, 0x7FFFFFFFuLL, &v124);
  v127 = &v117;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v127);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v131 + i);
    if (v16)
    {
      *(&v132 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v125 - v124) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v128, &v124, v126, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v117, &v124, v126 + 3, v17 - 3);
    v22 = v125 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v125);
    if (!v112)
    {
      v81 = v122;
      if (v122)
      {
LABEL_62:
        v123 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v135)
      {
        v136 = v135;
        operator delete(v135);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      goto LABEL_81;
    }

    v106 = v12;
    v107 = v13;
    v25 = 0;
    v26 = v128;
    v27 = v132;
    v28 = v124;
    v29 = *v126;
    v30 = v126[3];
    v105 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v130 - v129) << 30) - 0x100000000) >> 32;
    v100 = v135;
    v114 = &v135[4 * v32];
    v104 = v32;
    v102 = &v129[4 * v32];
    v33 = ((v130 - v129) >> 2) & 0x7FFFFFFF;
    v99 = v33 - 1;
    v34 = v117;
    v35 = v120;
    v36 = (((v119 - v118) << 30) - 0x100000000) >> 32;
    __p = v122;
    v113 = &v122[4 * v36];
    v37 = ((v119 - v118) >> 2) & 0x7FFFFFFF;
    v98 = v37 - 1;
    v110 = v23;
    v111 = (v130 - v129) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v96 = v118 - 8;
    v97 = v129 - 8;
    v103 = v36;
    v115 = v17 - 3;
    v108 = v118 + 4 * v36;
    v109 = (v119 - v118) >> 2;
    while (1)
    {
      v116 = v25;
      v40 = *&v28[4 * v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = *&v28[4 * v105];
        v43 = &v107[v34];
        v44 = 2 * *(v29 + 8 * v115);
        v45 = 2 * *(v29 + 8 * v105);
        v46 = 8 * *(v30 + 8 * v115);
        v47 = 8 * *(v30 + 8 * v105);
        v48 = &v106[v26];
        do
        {
          if (v42 >= 1)
          {
            v49 = 0;
            v50 = *&v28[4 * v31];
            v51 = 2 * *(v29 + 8 * v31);
            v52 = 8 * *(v30 + 8 * v31);
            v53 = v43;
            v54 = v48;
            do
            {
              if (v50 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v50;
                do
                {
                  *(v53 + v55) = *(v54 + v56);
                  v56 += v51;
                  v55 += v52;
                  --v57;
                }

                while (v57);
              }

              ++v49;
              v54 = (v54 + v45);
              v53 = (v53 + v47);
            }

            while (v49 != v42);
          }

          ++v41;
          v48 = (v48 + v44);
          v43 = (v43 + v46);
        }

        while (v41 != v40);
      }

      if (v111)
      {
        break;
      }

      v21 = v115;
      v66 = v116;
      v67 = v108;
      v59 = v109;
      if (v109)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v110;
      if (v25 >= v112)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v114;
    v21 = v115;
    v59 = v109;
    if (v111 >= 2 && (v60 = v102, v58 == *v102 - 1))
    {
      v62 = v99;
      v61 = v100;
      v63 = v97;
      v64 = v114;
      v65 = v104;
      v66 = v116;
      v67 = v108;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v128 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v104;
      v70 = v114;
      v66 = v116;
      v67 = v108;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v128 = v26;
    if (!v109)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v113;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v96;
      v74 = v98;
      v75 = v67;
      v76 = v113;
      v77 = v103;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v117 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v103;
      v80 = v113;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v117 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v124;
    if (*v124 >= 1)
    {
      v83 = 0;
      v84 = v126[3];
      v85 = *v84;
      v86 = v84[1];
      v87 = 2 * **v126;
      v88 = 2 * *(*v126 + 8);
      v89 = *(v124 + 1);
      v90 = 8 * v85;
      v91 = 8 * v86;
      do
      {
        if (v89 >= 1)
        {
          v92 = v13;
          v93 = v12;
          v94 = v89;
          do
          {
            *v92 = *v93;
            v93 = (v93 + v88);
            v92 = (v92 + v91);
            --v94;
          }

          while (v94);
        }

        ++v83;
        v12 = (v12 + v87);
        v13 = (v13 + v90);
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v124;
    if (*v124 >= 1)
    {
      v19 = *v126[3];
      v20 = 2 * **v126;
      do
      {
        *v13 = *v12;
        v12 = (v12 + v20);
        v13 += v19;
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v128 = &v126;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v128);
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

LABEL_83:
  v95 = *MEMORY[0x277D85DE8];
}

void sub_25A3B3A9C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::anonymous namespace::copy_single<short,mlx::core::_MLX_BFloat16>(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 48);
  if (v2)
  {
    v3 = 0;
    v4 = **(*result + 152);
    v5 = vdupq_n_s64(v2 - 1);
    v6 = (v2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = (*(*a2 + 152) + 8);
    v8 = (LODWORD(v4) + (HIWORD(LODWORD(v4)) & 1u) + 0x7FFF) >> 16;
    do
    {
      v9 = vdupq_n_s64(v3);
      v10 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v9, xmmword_25A99B0D0)));
      if (vuzp1_s8(vuzp1_s16(v10, *v5.i8), *v5.i8).u8[0])
      {
        *(v7 - 4) = v8;
      }

      if (vuzp1_s8(vuzp1_s16(v10, *&v5), *&v5).i8[1])
      {
        *(v7 - 3) = v8;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v9, xmmword_25A99B0C0)))), *&v5).i8[2])
      {
        *(v7 - 2) = v8;
        *(v7 - 1) = v8;
      }

      v11 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v9, xmmword_25A9C2E80)));
      if (vuzp1_s8(*&v5, vuzp1_s16(v11, *&v5)).i32[1])
      {
        *v7 = v8;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v11, *&v5)).i8[5])
      {
        v7[1] = v8;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v9, xmmword_25A9C2E70))))).i8[6])
      {
        v7[2] = v8;
        v7[3] = v8;
      }

      v3 += 8;
      v7 += 8;
    }

    while (v6 != v3);
  }

  return result;
}

void mlx::core::anonymous namespace::copy_general_general<short,mlx::core::_MLX_BFloat16>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v135 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = (*(*a2 + 152) + 2 * a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = (COERCE_INT(*v12) + (HIWORD(COERCE_UNSIGNED_INT(*v12)) & 1) + 0x7FFF) >> 16;
    goto LABEL_83;
  }

  v110 = *(*a1 + 48);
  v126 = 0;
  v127 = 0;
  v128 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v126, *a4, a4[1], (a4[1] - *a4) >> 3);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v129, *a5, a5[1], (a5[1] - *a5) >> 3);
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v115, &v126, &v132, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v115, 0x7FFFFFFFuLL, &v122);
  v125 = &v115;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v129 + i);
    if (v16)
    {
      *(&v130 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v123 - v122) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v126, &v122, v124, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v115, &v122, v124 + 3, v17 - 3);
    v22 = v123 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v123);
    if (!v110)
    {
      v80 = v120;
      if (v120)
      {
LABEL_62:
        v121 = v80;
        operator delete(v80);
      }

LABEL_63:
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      if (v130)
      {
        v131 = v130;
        operator delete(v130);
      }

      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      goto LABEL_81;
    }

    v104 = v12;
    v105 = v13;
    v25 = 0;
    v26 = v126;
    v27 = v122;
    v28 = *v124;
    v29 = v124[3];
    v102 = v17 - 2;
    v30 = v17 - 1;
    v31 = (((v128 - v127) << 30) - 0x100000000) >> 32;
    v97 = v133;
    v112 = &v133[4 * v31];
    v101 = v31;
    v99 = &v127[4 * v31];
    v32 = ((v128 - v127) >> 2) & 0x7FFFFFFF;
    v96 = v32 - 1;
    v33 = v115;
    v34 = (((v117 - v116) << 30) - 0x100000000) >> 32;
    __p = v120;
    v111 = &v120[4 * v34];
    v35 = ((v117 - v116) >> 2) & 0x7FFFFFFF;
    v95 = v35 - 1;
    v109 = (v128 - v127) >> 2;
    v36 = 4 * v32;
    v37 = 4 * v35;
    v93 = v116 - 8;
    v94 = v127 - 8;
    v100 = v34;
    v113 = v17 - 3;
    v103 = v130;
    v107 = (v117 - v116) >> 2;
    v108 = v118;
    v106 = v116 + 4 * v34;
    while (1)
    {
      v114 = v25;
      v38 = *&v27[4 * v21];
      if (v38 >= 1)
      {
        v39 = 0;
        v40 = *&v27[4 * v102];
        v41 = &v105[v33];
        v42 = 2 * *(v28 + 8 * v113);
        v43 = 2 * *(v28 + 8 * v102);
        v44 = 2 * *(v29 + 8 * v113);
        v45 = 2 * *(v29 + 8 * v102);
        v46 = &v104[v26];
        do
        {
          if (v40 >= 1)
          {
            v47 = 0;
            v48 = *&v27[4 * v30];
            v49 = 2 * *(v28 + 8 * v30);
            v50 = 2 * *(v29 + 8 * v30);
            v51 = v41;
            v52 = v46;
            do
            {
              if (v48 >= 1)
              {
                v53 = 0;
                v54 = 0;
                v55 = v48;
                do
                {
                  *(v51 + v53) = (COERCE_INT(*(v52 + v54)) + (HIWORD(COERCE_UNSIGNED_INT(*(v52 + v54))) & 1) + 0x7FFF) >> 16;
                  v54 += v49;
                  v53 += v50;
                  --v55;
                }

                while (v55);
              }

              ++v47;
              v52 = (v52 + v43);
              v51 = (v51 + v45);
            }

            while (v47 != v40);
          }

          ++v39;
          v46 = (v46 + v42);
          v41 = (v41 + v44);
        }

        while (v39 != v38);
      }

      if (v109)
      {
        break;
      }

      v21 = v113;
      v64 = v114;
      v57 = v107;
      v65 = v108;
      v66 = v106;
      if (v107)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v64 + v23;
      if (v25 >= v110)
      {
        v80 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v56 = *v112;
    v21 = v113;
    v57 = v107;
    if (v109 >= 2 && (v58 = v99, v56 == *v99 - 1))
    {
      v59 = v96;
      v60 = v97;
      v61 = v94;
      v62 = v112;
      v63 = v101;
      v64 = v114;
      v65 = v108;
      v66 = v106;
      do
      {
        v67 = v59;
        *v62 = 0;
        v26 = (v26 - v103[v63] * (*v58 - 1));
        v126 = v26;
        --v59;
        v62 = &v60[v36 - 8];
        v56 = *v62;
        v60 -= 4;
        if (v67 < 2)
        {
          break;
        }

        v58 = &v61[v36];
        v68 = *&v61[v36] - 1;
        v61 -= 4;
        v63 = v59;
      }

      while (v56 == v68);
      v69 = &v60[v36 - 4];
    }

    else
    {
      v59 = v101;
      v69 = v112;
      v64 = v114;
      v65 = v108;
      v66 = v106;
    }

    *v69 = v56 + 1;
    v26 = (v26 + v103[v59]);
    v126 = v26;
    if (!v107)
    {
      goto LABEL_60;
    }

LABEL_52:
    v70 = *v111;
    if (v57 >= 2 && v70 == *v66 - 1)
    {
      v71 = __p;
      v72 = v93;
      v73 = v95;
      v74 = v66;
      v75 = v111;
      v76 = v100;
      do
      {
        v77 = v73;
        *v75 = 0;
        v33 -= v65[v76] * (*v74 - 1);
        v115 = v33;
        --v73;
        v75 = &v71[v37 - 8];
        v70 = *v75;
        v71 -= 4;
        if (v77 < 2)
        {
          break;
        }

        v74 = &v72[v37];
        v78 = *&v72[v37] - 1;
        v72 -= 4;
        v76 = v73;
      }

      while (v70 == v78);
      v79 = &v71[v37 - 4];
    }

    else
    {
      v73 = v100;
      v79 = v111;
    }

    *v79 = v70 + 1;
    v33 += v65[v73];
    v115 = v33;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v81 = *v122;
    if (*v122 >= 1)
    {
      v82 = 0;
      v83 = v124[3];
      v84 = *v83;
      v85 = v83[1];
      v86 = 2 * **v124;
      v87 = 2 * *(*v124 + 8);
      v88 = *(v122 + 1);
      do
      {
        if (v88 >= 1)
        {
          v89 = v13;
          v90 = v12;
          v91 = v88;
          do
          {
            *v89 = (COERCE_INT(*v90) + (HIWORD(COERCE_UNSIGNED_INT(*v90)) & 1) + 0x7FFF) >> 16;
            v90 = (v90 + v87);
            v89 += v85;
            --v91;
          }

          while (v91);
        }

        ++v82;
        v12 = (v12 + v86);
        v13 += v84;
      }

      while (v82 != v81);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v122;
    if (*v122 >= 1)
    {
      v19 = 2 * **v124;
      v20 = 2 * *v124[3];
      do
      {
        *v13 = (COERCE_INT(*v12) + (HIWORD(COERCE_UNSIGNED_INT(*v12)) & 1) + 0x7FFF) >> 16;
        v12 = (v12 + v19);
        v13 = (v13 + v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v126 = &v124;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

LABEL_83:
  v92 = *MEMORY[0x277D85DE8];
}

void sub_25A3B43D4(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<short,mlx::core::complex64_t>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v113 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + 2 * a6);
  v13 = *(*a2 + 152) + 8 * a7;
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    *(v13 + 4) = 0;
  }

  else
  {
    v15 = *(*a1 + 48);
    v104 = 0;
    v105 = 0;
    v106 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v104, *a4, a4[1], (a4[1] - *a4) >> 3);
    v107 = 0;
    v108 = 0;
    v109 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v107, *a5, a5[1], (a5[1] - *a5) >> 3);
    v93 = 0;
    v94 = 0;
    v95 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v93, &v104, &v110, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v93, 0x7FFFFFFFuLL, &v100);
    v103 = &v93;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v103);
    for (i = 0; i != -48; i -= 24)
    {
      v17 = *(&v107 + i);
      if (v17)
      {
        *(&v108 + i) = v17;
        operator delete(v17);
      }
    }

    v18 = v100;
    v19 = (v101 - v100) >> 2;
    if (v19 > 2)
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += 8 * *v14;
      }

      v24 = v19 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, &v100, v102, v19 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v93, &v100, v102 + 3, v19 - 3);
      v25 = v101 - 3;
      v26 = 1;
      do
      {
        v27 = *v25++;
        v26 *= v27;
      }

      while (v25 != v101);
      if (v15)
      {
        v28 = 0;
        v29 = v19 - 2;
        v30 = v19 - 1;
        v31 = v13 + 4;
        do
        {
          v32 = *(v100 + v24);
          if (v32 >= 1)
          {
            v33 = 0;
            v34 = v102;
            v35 = &v12[v104];
            v36 = 2 * *(*v102 + 8 * v24);
            v37 = (v31 + 8 * v93);
            v38 = 8 * *(v102[3] + 8 * v24);
            do
            {
              v39 = *(v100 + v29);
              if (v39 >= 1)
              {
                v40 = 0;
                v41 = 2 * *(*v34 + 8 * v29);
                v42 = 8 * *(v34[3] + 8 * v29);
                v43 = v37;
                v44 = v35;
                do
                {
                  v45 = *(v100 + v30);
                  if (v45 >= 1)
                  {
                    v46 = 0;
                    v47 = 2 * *(*v34 + 8 * v30);
                    v48 = 8 * *(v34[3] + 8 * v30);
                    v49 = v43;
                    do
                    {
                      *(v49 - 1) = *(v44 + v46);
                      *v49 = 0.0;
                      v46 += v47;
                      v49 = (v49 + v48);
                      --v45;
                    }

                    while (v45);
                  }

                  ++v40;
                  v44 = (v44 + v41);
                  v43 = (v43 + v42);
                }

                while (v40 != v39);
              }

              ++v33;
              v35 = (v35 + v36);
              v37 = (v37 + v38);
            }

            while (v33 != v32);
          }

          v50 = v106 - v105;
          v51 = (v106 - v105) >> 2;
          if (v51)
          {
            v52 = v111;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = v111 + 4 * v53;
            v55 = *v54;
            v56 = v105 + 4 * v53;
            v57 = v108;
            v58 = v104;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v105 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 = (v58 - v57[v53] * (*v56 - 1));
                v104 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v104 = (v58 + v57[v60]);
          }

          v66 = v95 - v94;
          v67 = (v95 - v94) >> 2;
          if (v67)
          {
            v68 = __p;
            v69 = ((v66 << 30) - 0x100000000) >> 32;
            v70 = __p + 4 * v69;
            v71 = *v70;
            v72 = v96;
            v73 = v93;
            if (v67 >= 2 && (v74 = v94 + 4 * v69, v71 == *v74 - 1))
            {
              v75 = (v66 >> 2) & 0x7FFFFFFF;
              v76 = v75 - 1;
              v77 = 4 * v75;
              v78 = v94 - 8;
              do
              {
                v79 = v76;
                *v70 = 0;
                v73 -= v72[v69] * (*v74 - 1);
                v93 = v73;
                --v76;
                v70 = &v68[v77 - 8];
                v71 = *v70;
                v68 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v74 = &v78[v77];
                v80 = *&v78[4 * v75] - 1;
                v78 -= 4;
                v69 = v76;
              }

              while (v71 == v80);
              v70 = &v68[4 * v75 - 4];
            }

            else
            {
              v76 = ((v66 << 30) - 0x100000000) >> 32;
            }

            *v70 = v71 + 1;
            v93 = v72[v76] + v73;
          }

          v28 += v26;
        }

        while (v28 < v15);
      }

      if (__p)
      {
        v99 = __p;
        operator delete(__p);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      if (v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      if (v111)
      {
        v112 = v111;
        operator delete(v111);
      }

      if (v108)
      {
        v109 = v108;
        operator delete(v108);
      }

      if (v105)
      {
        v106 = v105;
        operator delete(v105);
      }
    }

    else
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += 8 * *v14;
      }

      if (v19 == 2)
      {
        v81 = *v100;
        if (*v100 >= 1)
        {
          v82 = 0;
          v83 = v102;
          v84 = 2 * **v102;
          v85 = (v13 + 4);
          v86 = 8 * *v102[3];
          do
          {
            v87 = v18[1];
            if (v87 >= 1)
            {
              v88 = 2 * *(*v83 + 8);
              v89 = 8 * *(v83[3] + 8);
              v90 = v85;
              v91 = v12;
              do
              {
                *(v90 - 1) = *v91;
                *v90 = 0.0;
                v91 = (v91 + v88);
                v90 = (v90 + v89);
                --v87;
              }

              while (v87);
            }

            ++v82;
            v12 = (v12 + v84);
            v85 = (v85 + v86);
          }

          while (v82 != v81);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v100;
        if (*v100 >= 1)
        {
          v21 = 2 * **v102;
          v22 = (v13 + 4);
          v23 = 8 * *v102[3];
          do
          {
            *(v22 - 1) = *v12;
            *v22 = 0.0;
            v12 = (v12 + v21);
            v22 = (v22 + v23);
            --v20;
          }

          while (v20);
        }
      }
    }

    v104 = &v102;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v104);
    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }
  }

  v92 = *MEMORY[0x277D85DE8];
}