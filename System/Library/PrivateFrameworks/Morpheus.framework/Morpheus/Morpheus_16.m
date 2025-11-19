void sub_25A3890C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,unsigned short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A389804(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,unsigned int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A389F34(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A38A654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v38 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a38);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,signed char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A38ACC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A38B408(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A38BB38(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A38C258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v38 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a38);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,half>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, __n128 a9, _BYTE *a10)
{
  v139 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + a6);
  v14 = (*(*a2 + 152) + 2 * a7);
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    a9.n128_u8[0] = *v13;
    *v14 = a9.n128_u16[0];
    goto LABEL_85;
  }

  v115 = *(*a1 + 48);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a4, a4[1], (a4[1] - *a4) >> 3);
  v133 = 0;
  v134 = 0;
  v135 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v133, *a5, a5[1], (a5[1] - *a5) >> 3);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v119, &v130, &v136, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v119, 0x7FFFFFFFuLL, &v126);
  v129 = &v119;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v129);
  for (i = 0; i != -48; i -= 24)
  {
    v18 = *(&v133 + i);
    if (v18)
    {
      *(&v134 + i) = v18;
      operator delete(v18);
    }
  }

  v19 = (v127 - v126) >> 2;
  if (v19 > 2)
  {
    if (v12)
    {
      v13 += *v12;
    }

    if (v15)
    {
      v14 += *v15;
    }

    v23 = (v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v130, &v126, v128, v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v119, &v126, v128 + 3, v19 - 3);
    v25 = v127 - 12;
    v26 = 1;
    do
    {
      v27 = *v25;
      v25 += 4;
      v26 *= v27;
    }

    while (v25 != v127);
    if (!v115)
    {
      v85 = v124;
      if (v124)
      {
LABEL_64:
        v125 = v85;
        operator delete(v85);
      }

LABEL_65:
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v137)
      {
        v138 = v137;
        operator delete(v137);
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

      goto LABEL_83;
    }

    v109 = v13;
    v110 = v14;
    v28 = 0;
    v29 = v130;
    v30 = v134;
    v31 = v126;
    v32 = *v128;
    v33 = v128[3];
    v108 = v19 - 2;
    v34 = v19 - 1;
    v35 = (((v132 - v131) << 30) - 0x100000000) >> 32;
    v103 = v137;
    v107 = v35;
    v105 = &v131[4 * v35];
    v36 = ((v132 - v131) >> 2) & 0x7FFFFFFF;
    v102 = v36 - 1;
    v37 = v119;
    v38 = v122;
    v39 = (((v121 - v120) << 30) - 0x100000000) >> 32;
    __p = v124;
    v116 = &v124[4 * v39];
    v117 = &v137[4 * v35];
    v40 = ((v121 - v120) >> 2) & 0x7FFFFFFF;
    v113 = v26;
    v114 = (v132 - v131) >> 2;
    v41 = 4 * v36;
    v100 = v131 - 8;
    v101 = v40 - 1;
    v42 = 4 * v40;
    v99 = v120 - 8;
    v106 = v39;
    v111 = v120 + 4 * v39;
    v112 = (v121 - v120) >> 2;
    while (1)
    {
      v118 = v28;
      v43 = v23;
      v44 = *&v31[4 * v23];
      if (v44 >= 1)
      {
        v45 = 0;
        v46 = *(v32 + 8 * v23);
        v47 = &v110[v37];
        v48 = v29 + v109;
        v49 = *(v32 + 8 * v108);
        v50 = *&v31[4 * v108];
        v51 = 2 * *(v33 + 8 * v23);
        v52 = 2 * *(v33 + 8 * v108);
        do
        {
          if (v50 >= 1)
          {
            v53 = 0;
            v54 = *(v32 + 8 * v34);
            v55 = *&v31[4 * v34];
            v56 = 2 * *(v33 + 8 * v34);
            v57 = v47;
            v58 = v48;
            do
            {
              if (v55 >= 1)
              {
                v59 = 0;
                v60 = 0;
                v61 = v55;
                do
                {
                  LOBYTE(v24) = v58[v60];
                  v24 = LOWORD(v24);
                  *(v57 + v59) = v24;
                  v60 += v54;
                  v59 += v56;
                  --v61;
                }

                while (v61);
              }

              v58 += v49;
              ++v53;
              v57 = (v57 + v52);
            }

            while (v53 != v50);
          }

          v48 += v46;
          ++v45;
          v47 = (v47 + v51);
        }

        while (v45 != v44);
      }

      if (!v114)
      {
        v23 = v43;
        v65 = v118;
        v71 = v111;
        v63 = v112;
        if (v112)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v62 = *v117;
      v23 = v43;
      v63 = v112;
      if (v114 < 2)
      {
        break;
      }

      v64 = v105;
      v65 = v118;
      if (v62 != *v105 - 1)
      {
        v67 = v107;
        v74 = v117;
LABEL_52:
        v71 = v111;
        goto LABEL_53;
      }

      v67 = v102;
      v66 = v103;
      v68 = v100;
      v69 = v117;
      v70 = v107;
      v71 = v111;
      do
      {
        v72 = v67;
        *v69 = 0;
        v29 = (v29 - v30[v70] * (*v64 - 1));
        v130 = v29;
        --v67;
        v69 = &v66[v41 - 8];
        v62 = *v69;
        v66 -= 4;
        if (v72 < 2)
        {
          break;
        }

        v64 = &v68[v41];
        v73 = *&v68[v41] - 1;
        v68 -= 4;
        v70 = v67;
      }

      while (v62 == v73);
      v74 = &v66[v41 - 4];
LABEL_53:
      *v74 = v62 + 1;
      v29 = (v29 + v30[v67]);
      v130 = v29;
      if (v112)
      {
LABEL_54:
        v75 = *v116;
        if (v63 >= 2 && v75 == *v71 - 1)
        {
          v76 = __p;
          v77 = v99;
          v78 = v101;
          v79 = v71;
          v80 = v116;
          v81 = v106;
          do
          {
            v82 = v78;
            *v80 = 0;
            v37 -= v38[v81] * (*v79 - 1);
            v119 = v37;
            --v78;
            v80 = &v76[v42 - 8];
            v75 = *v80;
            v76 -= 4;
            if (v82 < 2)
            {
              break;
            }

            v79 = &v77[v42];
            v83 = *&v77[v42] - 1;
            v77 -= 4;
            v81 = v78;
          }

          while (v75 == v83);
          v84 = &v76[v42 - 4];
        }

        else
        {
          v78 = v106;
          v84 = v116;
        }

        *v84 = v75 + 1;
        v37 += v38[v78];
        v119 = v37;
      }

LABEL_62:
      v28 = v65 + v113;
      if (v28 >= v115)
      {
        v85 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v67 = v107;
    v74 = v117;
    v65 = v118;
    goto LABEL_52;
  }

  if (v12)
  {
    v13 += *v12;
  }

  if (v15)
  {
    v14 += *v15;
  }

  if (v19 == 2)
  {
    v86 = *v126;
    if (*v126 >= 1)
    {
      v87 = 0;
      v88 = v128[3];
      v89 = **v128;
      v90 = (*v128)[1];
      v91 = v88[1];
      v92 = *(v126 + 1);
      v93 = 2 * *v88;
      v94 = 2 * v91;
      do
      {
        if (v92 >= 1)
        {
          v95 = v14;
          v96 = v92;
          v97 = v13;
          do
          {
            LOBYTE(v16) = *v97;
            v16 = LOWORD(v16);
            *v95 = v16;
            v97 += v90;
            v95 = (v95 + v94);
            --v96;
          }

          while (v96);
        }

        v13 += v89;
        ++v87;
        v14 = (v14 + v93);
      }

      while (v87 != v86);
    }
  }

  else if (v19 == 1)
  {
    v20 = *v126;
    if (*v126 >= 1)
    {
      v21 = **v128;
      v22 = 2 * *v128[3];
      do
      {
        LOBYTE(v16) = *v13;
        v16 = LOWORD(v16);
        *v14 = v16;
        v13 += v21;
        v14 = (v14 + v22);
        --v20;
      }

      while (v20);
    }
  }

LABEL_83:
  v130 = &v128;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v130);
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

LABEL_85:
  v98 = *MEMORY[0x277D85DE8];
}

void sub_25A38C9A8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, float a9, _BYTE *a10)
{
  v139 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + a6);
  v14 = (*(*a2 + 152) + 4 * a7);
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    LOBYTE(a9) = *v13;
    *v14 = LODWORD(a9);
    goto LABEL_85;
  }

  v115 = *(*a1 + 48);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a4, a4[1], (a4[1] - *a4) >> 3);
  v133 = 0;
  v134 = 0;
  v135 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v133, *a5, a5[1], (a5[1] - *a5) >> 3);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v119, &v130, &v136, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v119, 0x7FFFFFFFuLL, &v126);
  v129 = &v119;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v129);
  for (i = 0; i != -48; i -= 24)
  {
    v18 = *(&v133 + i);
    if (v18)
    {
      *(&v134 + i) = v18;
      operator delete(v18);
    }
  }

  v19 = (v127 - v126) >> 2;
  if (v19 > 2)
  {
    if (v12)
    {
      v13 += *v12;
    }

    if (v15)
    {
      v14 += *v15;
    }

    v23 = (v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v130, &v126, v128, v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v119, &v126, v128 + 3, v19 - 3);
    v25 = v127 - 12;
    v26 = 1;
    do
    {
      v27 = *v25;
      v25 += 4;
      v26 *= v27;
    }

    while (v25 != v127);
    if (!v115)
    {
      v85 = v124;
      if (v124)
      {
LABEL_64:
        v125 = v85;
        operator delete(v85);
      }

LABEL_65:
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v137)
      {
        v138 = v137;
        operator delete(v137);
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

      goto LABEL_83;
    }

    v109 = v13;
    v110 = v14;
    v28 = 0;
    v29 = v130;
    v30 = v134;
    v31 = v126;
    v32 = *v128;
    v33 = v128[3];
    v108 = v19 - 2;
    v34 = v19 - 1;
    v35 = (((v132 - v131) << 30) - 0x100000000) >> 32;
    v103 = v137;
    v107 = v35;
    v105 = &v131[4 * v35];
    v36 = ((v132 - v131) >> 2) & 0x7FFFFFFF;
    v102 = v36 - 1;
    v37 = v119;
    v38 = v122;
    v39 = (((v121 - v120) << 30) - 0x100000000) >> 32;
    __p = v124;
    v116 = &v124[4 * v39];
    v117 = &v137[4 * v35];
    v40 = ((v121 - v120) >> 2) & 0x7FFFFFFF;
    v113 = v26;
    v114 = (v132 - v131) >> 2;
    v41 = 4 * v36;
    v100 = v131 - 8;
    v101 = v40 - 1;
    v42 = 4 * v40;
    v99 = v120 - 8;
    v106 = v39;
    v111 = v120 + 4 * v39;
    v112 = (v121 - v120) >> 2;
    while (1)
    {
      v118 = v28;
      v43 = v23;
      v44 = *&v31[4 * v23];
      if (v44 >= 1)
      {
        v45 = 0;
        v46 = *(v32 + 8 * v23);
        v47 = &v110[v37];
        v48 = v29 + v109;
        v49 = *(v32 + 8 * v108);
        v50 = *&v31[4 * v108];
        v51 = 4 * *(v33 + 8 * v23);
        v52 = 4 * *(v33 + 8 * v108);
        do
        {
          if (v50 >= 1)
          {
            v53 = 0;
            v54 = *(v32 + 8 * v34);
            v55 = *&v31[4 * v34];
            v56 = 4 * *(v33 + 8 * v34);
            v57 = v47;
            v58 = v48;
            do
            {
              if (v55 >= 1)
              {
                v59 = 0;
                v60 = 0;
                v61 = v55;
                do
                {
                  LOBYTE(v24) = v58[v60];
                  v24 = LODWORD(v24);
                  *(v57 + v59) = v24;
                  v60 += v54;
                  v59 += v56;
                  --v61;
                }

                while (v61);
              }

              v58 += v49;
              ++v53;
              v57 = (v57 + v52);
            }

            while (v53 != v50);
          }

          v48 += v46;
          ++v45;
          v47 = (v47 + v51);
        }

        while (v45 != v44);
      }

      if (!v114)
      {
        v23 = v43;
        v65 = v118;
        v71 = v111;
        v63 = v112;
        if (v112)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v62 = *v117;
      v23 = v43;
      v63 = v112;
      if (v114 < 2)
      {
        break;
      }

      v64 = v105;
      v65 = v118;
      if (v62 != *v105 - 1)
      {
        v67 = v107;
        v74 = v117;
LABEL_52:
        v71 = v111;
        goto LABEL_53;
      }

      v67 = v102;
      v66 = v103;
      v68 = v100;
      v69 = v117;
      v70 = v107;
      v71 = v111;
      do
      {
        v72 = v67;
        *v69 = 0;
        v29 = (v29 - v30[v70] * (*v64 - 1));
        v130 = v29;
        --v67;
        v69 = &v66[v41 - 8];
        v62 = *v69;
        v66 -= 4;
        if (v72 < 2)
        {
          break;
        }

        v64 = &v68[v41];
        v73 = *&v68[v41] - 1;
        v68 -= 4;
        v70 = v67;
      }

      while (v62 == v73);
      v74 = &v66[v41 - 4];
LABEL_53:
      *v74 = v62 + 1;
      v29 = (v29 + v30[v67]);
      v130 = v29;
      if (v112)
      {
LABEL_54:
        v75 = *v116;
        if (v63 >= 2 && v75 == *v71 - 1)
        {
          v76 = __p;
          v77 = v99;
          v78 = v101;
          v79 = v71;
          v80 = v116;
          v81 = v106;
          do
          {
            v82 = v78;
            *v80 = 0;
            v37 -= v38[v81] * (*v79 - 1);
            v119 = v37;
            --v78;
            v80 = &v76[v42 - 8];
            v75 = *v80;
            v76 -= 4;
            if (v82 < 2)
            {
              break;
            }

            v79 = &v77[v42];
            v83 = *&v77[v42] - 1;
            v77 -= 4;
            v81 = v78;
          }

          while (v75 == v83);
          v84 = &v76[v42 - 4];
        }

        else
        {
          v78 = v106;
          v84 = v116;
        }

        *v84 = v75 + 1;
        v37 += v38[v78];
        v119 = v37;
      }

LABEL_62:
      v28 = v65 + v113;
      if (v28 >= v115)
      {
        v85 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v67 = v107;
    v74 = v117;
    v65 = v118;
    goto LABEL_52;
  }

  if (v12)
  {
    v13 += *v12;
  }

  if (v15)
  {
    v14 += *v15;
  }

  if (v19 == 2)
  {
    v86 = *v126;
    if (*v126 >= 1)
    {
      v87 = 0;
      v88 = v128[3];
      v89 = **v128;
      v90 = (*v128)[1];
      v91 = v88[1];
      v92 = *(v126 + 1);
      v93 = 4 * *v88;
      v94 = 4 * v91;
      do
      {
        if (v92 >= 1)
        {
          v95 = v14;
          v96 = v92;
          v97 = v13;
          do
          {
            LOBYTE(v16) = *v97;
            v16 = LODWORD(v16);
            *v95 = v16;
            v97 += v90;
            v95 = (v95 + v94);
            --v96;
          }

          while (v96);
        }

        v13 += v89;
        ++v87;
        v14 = (v14 + v93);
      }

      while (v87 != v86);
    }
  }

  else if (v19 == 1)
  {
    v20 = *v126;
    if (*v126 >= 1)
    {
      v21 = **v128;
      v22 = 4 * *v128[3];
      do
      {
        LOBYTE(v16) = *v13;
        v16 = LODWORD(v16);
        *v14 = v16;
        v13 += v21;
        v14 = (v14 + v22);
        --v20;
      }

      while (v20);
    }
  }

LABEL_83:
  v130 = &v128;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v130);
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

LABEL_85:
  v98 = *MEMORY[0x277D85DE8];
}

void sub_25A38D0F8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, double a9, _BYTE *a10)
{
  v139 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + a6);
  v14 = (*(*a2 + 152) + 8 * a7);
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    LOBYTE(a9) = *v13;
    *v14 = *&a9;
    goto LABEL_85;
  }

  v115 = *(*a1 + 48);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a4, a4[1], (a4[1] - *a4) >> 3);
  v133 = 0;
  v134 = 0;
  v135 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v133, *a5, a5[1], (a5[1] - *a5) >> 3);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v119, &v130, &v136, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v119, 0x7FFFFFFFuLL, &v126);
  v129 = &v119;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v129);
  for (i = 0; i != -48; i -= 24)
  {
    v18 = *(&v133 + i);
    if (v18)
    {
      *(&v134 + i) = v18;
      operator delete(v18);
    }
  }

  v19 = (v127 - v126) >> 2;
  if (v19 > 2)
  {
    if (v12)
    {
      v13 += *v12;
    }

    if (v15)
    {
      v14 += *v15;
    }

    v23 = (v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v130, &v126, v128, v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v119, &v126, v128 + 3, v19 - 3);
    v25 = v127 - 12;
    v26 = 1;
    do
    {
      v27 = *v25;
      v25 += 4;
      v26 *= v27;
    }

    while (v25 != v127);
    if (!v115)
    {
      v85 = v124;
      if (v124)
      {
LABEL_64:
        v125 = v85;
        operator delete(v85);
      }

LABEL_65:
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v137)
      {
        v138 = v137;
        operator delete(v137);
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

      goto LABEL_83;
    }

    v109 = v13;
    v110 = v14;
    v28 = 0;
    v29 = v130;
    v30 = v134;
    v31 = v126;
    v32 = *v128;
    v33 = v128[3];
    v108 = v19 - 2;
    v34 = v19 - 1;
    v35 = (((v132 - v131) << 30) - 0x100000000) >> 32;
    v103 = v137;
    v107 = v35;
    v105 = &v131[4 * v35];
    v36 = ((v132 - v131) >> 2) & 0x7FFFFFFF;
    v102 = v36 - 1;
    v37 = v119;
    v38 = v122;
    v39 = (((v121 - v120) << 30) - 0x100000000) >> 32;
    __p = v124;
    v116 = &v124[4 * v39];
    v117 = &v137[4 * v35];
    v40 = ((v121 - v120) >> 2) & 0x7FFFFFFF;
    v113 = v26;
    v114 = (v132 - v131) >> 2;
    v41 = 4 * v36;
    v100 = v131 - 8;
    v101 = v40 - 1;
    v42 = 4 * v40;
    v99 = v120 - 8;
    v106 = v39;
    v111 = v120 + 4 * v39;
    v112 = (v121 - v120) >> 2;
    while (1)
    {
      v118 = v28;
      v43 = v23;
      v44 = *&v31[4 * v23];
      if (v44 >= 1)
      {
        v45 = 0;
        v46 = *(v32 + 8 * v23);
        v47 = &v110[v37];
        v48 = v29 + v109;
        v49 = *(v32 + 8 * v108);
        v50 = *&v31[4 * v108];
        v51 = 8 * *(v33 + 8 * v23);
        v52 = 8 * *(v33 + 8 * v108);
        do
        {
          if (v50 >= 1)
          {
            v53 = 0;
            v54 = *(v32 + 8 * v34);
            v55 = *&v31[4 * v34];
            v56 = 8 * *(v33 + 8 * v34);
            v57 = v47;
            v58 = v48;
            do
            {
              if (v55 >= 1)
              {
                v59 = 0;
                v60 = 0;
                v61 = v55;
                do
                {
                  LOBYTE(v24) = v58[v60];
                  v24 = *&v24;
                  *(v57 + v59) = v24;
                  v60 += v54;
                  v59 += v56;
                  --v61;
                }

                while (v61);
              }

              v58 += v49;
              ++v53;
              v57 = (v57 + v52);
            }

            while (v53 != v50);
          }

          v48 += v46;
          ++v45;
          v47 = (v47 + v51);
        }

        while (v45 != v44);
      }

      if (!v114)
      {
        v23 = v43;
        v65 = v118;
        v71 = v111;
        v63 = v112;
        if (v112)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v62 = *v117;
      v23 = v43;
      v63 = v112;
      if (v114 < 2)
      {
        break;
      }

      v64 = v105;
      v65 = v118;
      if (v62 != *v105 - 1)
      {
        v67 = v107;
        v74 = v117;
LABEL_52:
        v71 = v111;
        goto LABEL_53;
      }

      v67 = v102;
      v66 = v103;
      v68 = v100;
      v69 = v117;
      v70 = v107;
      v71 = v111;
      do
      {
        v72 = v67;
        *v69 = 0;
        v29 = (v29 - v30[v70] * (*v64 - 1));
        v130 = v29;
        --v67;
        v69 = &v66[v41 - 8];
        v62 = *v69;
        v66 -= 4;
        if (v72 < 2)
        {
          break;
        }

        v64 = &v68[v41];
        v73 = *&v68[v41] - 1;
        v68 -= 4;
        v70 = v67;
      }

      while (v62 == v73);
      v74 = &v66[v41 - 4];
LABEL_53:
      *v74 = v62 + 1;
      v29 = (v29 + v30[v67]);
      v130 = v29;
      if (v112)
      {
LABEL_54:
        v75 = *v116;
        if (v63 >= 2 && v75 == *v71 - 1)
        {
          v76 = __p;
          v77 = v99;
          v78 = v101;
          v79 = v71;
          v80 = v116;
          v81 = v106;
          do
          {
            v82 = v78;
            *v80 = 0;
            v37 -= v38[v81] * (*v79 - 1);
            v119 = v37;
            --v78;
            v80 = &v76[v42 - 8];
            v75 = *v80;
            v76 -= 4;
            if (v82 < 2)
            {
              break;
            }

            v79 = &v77[v42];
            v83 = *&v77[v42] - 1;
            v77 -= 4;
            v81 = v78;
          }

          while (v75 == v83);
          v84 = &v76[v42 - 4];
        }

        else
        {
          v78 = v106;
          v84 = v116;
        }

        *v84 = v75 + 1;
        v37 += v38[v78];
        v119 = v37;
      }

LABEL_62:
      v28 = v65 + v113;
      if (v28 >= v115)
      {
        v85 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v67 = v107;
    v74 = v117;
    v65 = v118;
    goto LABEL_52;
  }

  if (v12)
  {
    v13 += *v12;
  }

  if (v15)
  {
    v14 += *v15;
  }

  if (v19 == 2)
  {
    v86 = *v126;
    if (*v126 >= 1)
    {
      v87 = 0;
      v88 = v128[3];
      v89 = **v128;
      v90 = (*v128)[1];
      v91 = v88[1];
      v92 = *(v126 + 1);
      v93 = 8 * *v88;
      v94 = 8 * v91;
      do
      {
        if (v92 >= 1)
        {
          v95 = v14;
          v96 = v92;
          v97 = v13;
          do
          {
            LOBYTE(v16) = *v97;
            v16 = *&v16;
            *v95 = v16;
            v97 += v90;
            v95 = (v95 + v94);
            --v96;
          }

          while (v96);
        }

        v13 += v89;
        ++v87;
        v14 = (v14 + v93);
      }

      while (v87 != v86);
    }
  }

  else if (v19 == 1)
  {
    v20 = *v126;
    if (*v126 >= 1)
    {
      v21 = **v128;
      v22 = 8 * *v128[3];
      do
      {
        LOBYTE(v16) = *v13;
        v16 = *&v16;
        *v14 = v16;
        v13 += v21;
        v14 = (v14 + v22);
        --v20;
      }

      while (v20);
    }
  }

LABEL_83:
  v130 = &v128;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v130);
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

LABEL_85:
  v98 = *MEMORY[0x277D85DE8];
}

void sub_25A38D848(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::anonymous namespace::copy_single<BOOL,mlx::core::_MLX_BFloat16>(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(*a2 + 48);
  if (v3)
  {
    v4 = 0;
    LOBYTE(a3) = **(*result + 152);
    v5 = COERCE_INT(LODWORD(a3)) + (HIWORD(COERCE_UNSIGNED_INT(LODWORD(a3))) & 1) + 0x7FFF;
    v6 = vdupq_n_s64(v3 - 1);
    v7 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = (*(*a2 + 152) + 8);
    v9 = HIWORD(v5);
    do
    {
      v10 = vdupq_n_s64(v4);
      v11 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v10, xmmword_25A99B0D0)));
      if (vuzp1_s8(vuzp1_s16(v11, *v6.i8), *v6.i8).u8[0])
      {
        *(v8 - 4) = v9;
      }

      if (vuzp1_s8(vuzp1_s16(v11, *&v6), *&v6).i8[1])
      {
        *(v8 - 3) = v9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v10, xmmword_25A99B0C0)))), *&v6).i8[2])
      {
        *(v8 - 2) = v9;
        *(v8 - 1) = v9;
      }

      v12 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v10, xmmword_25A9C2E80)));
      if (vuzp1_s8(*&v6, vuzp1_s16(v12, *&v6)).i32[1])
      {
        *v8 = v9;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v12, *&v6)).i8[5])
      {
        v8[1] = v9;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v10, xmmword_25A9C2E70))))).i8[6])
      {
        v8[2] = v9;
        v8[3] = v9;
      }

      v4 += 8;
      v8 += 8;
    }

    while (v7 != v4);
  }

  return result;
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,mlx::core::_MLX_BFloat16>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, float a9, _BYTE *a10)
{
  v138 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + a6);
  v14 = (*(*a2 + 152) + 2 * a7);
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    LOBYTE(a9) = *v13;
    *v14 = (COERCE_INT(LODWORD(a9)) + (HIWORD(COERCE_UNSIGNED_INT(LODWORD(a9))) & 1) + 0x7FFF) >> 16;
    goto LABEL_83;
  }

  v113 = *(*a1 + 48);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v129, *a4, a4[1], (a4[1] - *a4) >> 3);
  v132 = 0;
  v133 = 0;
  v134 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v132, *a5, a5[1], (a5[1] - *a5) >> 3);
  v118 = 0;
  v119 = 0;
  v120 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v118, &v129, &v135, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v118, 0x7FFFFFFFuLL, &v125);
  v128 = &v118;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v128);
  for (i = 0; i != -48; i -= 24)
  {
    v18 = *(&v132 + i);
    if (v18)
    {
      *(&v133 + i) = v18;
      operator delete(v18);
    }
  }

  v19 = (v126 - v125) >> 2;
  if (v19 > 2)
  {
    if (v12)
    {
      v13 += *v12;
    }

    if (v15)
    {
      v14 += *v15;
    }

    v23 = v19 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v129, &v125, v127, v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v118, &v125, v127 + 3, v19 - 3);
    v25 = v126 - 12;
    v26 = 1;
    do
    {
      v27 = *v25;
      v25 += 4;
      v26 *= v27;
    }

    while (v25 != v126);
    if (!v113)
    {
      v83 = v123;
      if (v123)
      {
LABEL_62:
        v124 = v83;
        operator delete(v83);
      }

LABEL_63:
      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (v136)
      {
        v137 = v136;
        operator delete(v136);
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

      goto LABEL_81;
    }

    v107 = v13;
    v108 = v14;
    v28 = 0;
    v29 = v129;
    v30 = v125;
    v31 = *v127;
    v32 = v127[3];
    v105 = v19 - 2;
    v33 = v19 - 1;
    v34 = (((v131 - v130) << 30) - 0x100000000) >> 32;
    v100 = v136;
    v115 = &v136[4 * v34];
    v104 = v34;
    v102 = &v130[4 * v34];
    v35 = ((v131 - v130) >> 2) & 0x7FFFFFFF;
    v99 = v35 - 1;
    v36 = v118;
    v37 = (((v120 - v119) << 30) - 0x100000000) >> 32;
    __p = v123;
    v114 = &v123[4 * v37];
    v38 = ((v120 - v119) >> 2) & 0x7FFFFFFF;
    v98 = v38 - 1;
    v112 = (v131 - v130) >> 2;
    v39 = 4 * v35;
    v40 = 4 * v38;
    v96 = v119 - 8;
    v97 = v130 - 8;
    v103 = v37;
    v116 = v19 - 3;
    v106 = v133;
    v110 = (v120 - v119) >> 2;
    v111 = v121;
    v109 = v119 + 4 * v37;
    while (1)
    {
      v117 = v28;
      v41 = *&v30[4 * v23];
      if (v41 >= 1)
      {
        v42 = 0;
        v43 = *(v31 + 8 * v116);
        v44 = &v108[v36];
        v45 = v29 + v107;
        v46 = *(v31 + 8 * v105);
        v47 = *&v30[4 * v105];
        v48 = 2 * *(v32 + 8 * v116);
        v49 = 2 * *(v32 + 8 * v105);
        do
        {
          if (v47 >= 1)
          {
            v50 = 0;
            v51 = *(v31 + 8 * v33);
            v52 = *&v30[4 * v33];
            v53 = 2 * *(v32 + 8 * v33);
            v54 = v44;
            v55 = v45;
            do
            {
              if (v52 >= 1)
              {
                v56 = 0;
                v57 = 0;
                v58 = v52;
                do
                {
                  LOBYTE(v24) = v55[v57];
                  v24 = LODWORD(v24);
                  *(v54 + v56) = (LODWORD(v24) + (HIWORD(LODWORD(v24)) & 1u) + 0x7FFF) >> 16;
                  v57 += v51;
                  v56 += v53;
                  --v58;
                }

                while (v58);
              }

              v55 += v46;
              ++v50;
              v54 = (v54 + v49);
            }

            while (v50 != v47);
          }

          v45 += v43;
          ++v42;
          v44 = (v44 + v48);
        }

        while (v42 != v41);
      }

      if (v112)
      {
        break;
      }

      v23 = v116;
      v67 = v117;
      v60 = v110;
      v68 = v111;
      v69 = v109;
      if (v110)
      {
        goto LABEL_52;
      }

LABEL_60:
      v28 = v67 + v26;
      if (v28 >= v113)
      {
        v83 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v59 = *v115;
    v23 = v116;
    v60 = v110;
    if (v112 >= 2 && (v61 = v102, v59 == *v102 - 1))
    {
      v62 = v99;
      v63 = v100;
      v64 = v97;
      v65 = v115;
      v66 = v104;
      v67 = v117;
      v68 = v111;
      v69 = v109;
      do
      {
        v70 = v62;
        *v65 = 0;
        v29 = (v29 - v106[v66] * (*v61 - 1));
        v129 = v29;
        --v62;
        v65 = &v63[v39 - 8];
        v59 = *v65;
        v63 -= 4;
        if (v70 < 2)
        {
          break;
        }

        v61 = &v64[v39];
        v71 = *&v64[v39] - 1;
        v64 -= 4;
        v66 = v62;
      }

      while (v59 == v71);
      v72 = &v63[v39 - 4];
    }

    else
    {
      v62 = v104;
      v72 = v115;
      v67 = v117;
      v68 = v111;
      v69 = v109;
    }

    *v72 = v59 + 1;
    v29 = (v29 + v106[v62]);
    v129 = v29;
    if (!v110)
    {
      goto LABEL_60;
    }

LABEL_52:
    v73 = *v114;
    if (v60 >= 2 && v73 == *v69 - 1)
    {
      v74 = __p;
      v75 = v96;
      v76 = v98;
      v77 = v69;
      v78 = v114;
      v79 = v103;
      do
      {
        v80 = v76;
        *v78 = 0;
        v36 -= v68[v79] * (*v77 - 1);
        v118 = v36;
        --v76;
        v78 = &v74[v40 - 8];
        v73 = *v78;
        v74 -= 4;
        if (v80 < 2)
        {
          break;
        }

        v77 = &v75[v40];
        v81 = *&v75[v40] - 1;
        v75 -= 4;
        v79 = v76;
      }

      while (v73 == v81);
      v82 = &v74[v40 - 4];
    }

    else
    {
      v76 = v103;
      v82 = v114;
    }

    *v82 = v73 + 1;
    v36 += v68[v76];
    v118 = v36;
    goto LABEL_60;
  }

  if (v12)
  {
    v13 += *v12;
  }

  if (v15)
  {
    v14 += *v15;
  }

  if (v19 == 2)
  {
    v84 = *v125;
    if (*v125 >= 1)
    {
      v85 = 0;
      v86 = v127[3];
      v87 = **v127;
      v88 = (*v127)[1];
      v89 = v86[1];
      v90 = *(v125 + 1);
      v91 = 2 * *v86;
      do
      {
        if (v90 >= 1)
        {
          v92 = v14;
          v93 = v90;
          v94 = v13;
          do
          {
            LOBYTE(v16) = *v94;
            v16 = LODWORD(v16);
            *v92 = (LODWORD(v16) + (HIWORD(LODWORD(v16)) & 1u) + 0x7FFF) >> 16;
            v94 += v88;
            v92 += v89;
            --v93;
          }

          while (v93);
        }

        v13 += v87;
        ++v85;
        v14 = (v14 + v91);
      }

      while (v85 != v84);
    }
  }

  else if (v19 == 1)
  {
    v20 = *v125;
    if (*v125 >= 1)
    {
      v21 = **v127;
      v22 = 2 * *v127[3];
      do
      {
        LOBYTE(v16) = *v13;
        v16 = LODWORD(v16);
        *v14 = (LODWORD(v16) + (HIWORD(LODWORD(v16)) & 1u) + 0x7FFF) >> 16;
        v13 += v21;
        v14 = (v14 + v22);
        --v20;
      }

      while (v20);
    }
  }

LABEL_81:
  v129 = &v127;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v129);
  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

LABEL_83:
  v95 = *MEMORY[0x277D85DE8];
}

void sub_25A38E164(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,mlx::core::complex64_t>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, float a9, _BYTE *a10)
{
  v116 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + a6);
  v14 = *(*a2 + 152) + 8 * a7;
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    LOBYTE(a9) = *v13;
    *v14 = LODWORD(a9);
    *(v14 + 4) = 0;
  }

  else
  {
    v16 = *(*a1 + 48);
    v107 = 0;
    v108 = 0;
    v109 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v107, *a4, a4[1], (a4[1] - *a4) >> 3);
    v110 = 0;
    v111 = 0;
    v112 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v110, *a5, a5[1], (a5[1] - *a5) >> 3);
    v96 = 0;
    v97 = 0;
    v98 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v96, &v107, &v113, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v96, 0x7FFFFFFFuLL, &v103);
    v106 = &v96;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v106);
    for (i = 0; i != -48; i -= 24)
    {
      v19 = *(&v110 + i);
      if (v19)
      {
        *(&v111 + i) = v19;
        operator delete(v19);
      }
    }

    v20 = v103;
    v21 = (v104 - v103) >> 2;
    if (v21 > 2)
    {
      if (v12)
      {
        v13 += *v12;
      }

      if (v15)
      {
        v14 += 8 * *v15;
      }

      v26 = v21 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v107, &v103, v105, v21 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v96, &v103, v105 + 3, v21 - 3);
      v28 = v104 - 3;
      v29 = 1;
      do
      {
        v30 = *v28++;
        v29 *= v30;
      }

      while (v28 != v104);
      if (v16)
      {
        v31 = 0;
        v32 = v21 - 2;
        v33 = v21 - 1;
        v34 = v14 + 4;
        do
        {
          v35 = *(v103 + v26);
          if (v35 >= 1)
          {
            v36 = 0;
            v37 = v105;
            v38 = (*v105)[v26];
            v39 = v107 + v13;
            v40 = (v34 + 8 * v96);
            v41 = 8 * v105[3][v26];
            do
            {
              v42 = *(v103 + v32);
              if (v42 >= 1)
              {
                v43 = 0;
                v44 = *(*v37 + 8 * v32);
                v45 = 8 * *(v37[3] + 8 * v32);
                v46 = v40;
                v47 = v39;
                do
                {
                  v48 = *(v103 + v33);
                  if (v48 >= 1)
                  {
                    v49 = 0;
                    v50 = *(*v37 + 8 * v33);
                    v51 = 8 * *(v37[3] + 8 * v33);
                    v52 = v46;
                    do
                    {
                      LOBYTE(v27) = v47[v49];
                      v27 = LODWORD(v27);
                      *(v52 - 1) = v27;
                      *v52 = 0.0;
                      v49 += v50;
                      v52 = (v52 + v51);
                      --v48;
                    }

                    while (v48);
                  }

                  v47 += v44;
                  ++v43;
                  v46 = (v46 + v45);
                }

                while (v43 != v42);
              }

              v39 += v38;
              ++v36;
              v40 = (v40 + v41);
            }

            while (v36 != v35);
          }

          v53 = v109 - v108;
          v54 = (v109 - v108) >> 2;
          if (v54)
          {
            v55 = v114;
            v56 = ((v53 << 30) - 0x100000000) >> 32;
            v57 = v114 + 4 * v56;
            v58 = *v57;
            v59 = v108 + 4 * v56;
            v60 = v111;
            v61 = v107;
            if (v54 >= 2 && v58 == *v59 - 1)
            {
              v64 = (v53 >> 2) & 0x7FFFFFFF;
              v63 = v64 - 1;
              v65 = 4 * v64;
              v66 = v108 - 8;
              do
              {
                v67 = v63;
                *v57 = 0;
                v61 = (v61 - v60[v56] * (*v59 - 1));
                v107 = v61;
                --v63;
                v57 = &v55[v65 - 8];
                v58 = *v57;
                v55 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v59 = &v66[v65];
                v68 = *&v66[4 * v64] - 1;
                v66 -= 4;
                v56 = v63;
              }

              while (v58 == v68);
              v57 = &v55[4 * v64 - 4];
            }

            else
            {
              v63 = ((v53 << 30) - 0x100000000) >> 32;
            }

            *v57 = v58 + 1;
            v107 = (v61 + v60[v63]);
          }

          v69 = v98 - v97;
          v70 = (v98 - v97) >> 2;
          if (v70)
          {
            v71 = __p;
            v72 = ((v69 << 30) - 0x100000000) >> 32;
            v73 = __p + 4 * v72;
            v74 = *v73;
            v75 = v99;
            v76 = v96;
            if (v70 >= 2 && (v77 = v97 + 4 * v72, v74 == *v77 - 1))
            {
              v78 = (v69 >> 2) & 0x7FFFFFFF;
              v79 = v78 - 1;
              v80 = 4 * v78;
              v81 = v97 - 8;
              do
              {
                v82 = v79;
                *v73 = 0;
                v76 -= v75[v72] * (*v77 - 1);
                v96 = v76;
                --v79;
                v73 = &v71[v80 - 8];
                v74 = *v73;
                v71 -= 4;
                if (v82 < 2)
                {
                  break;
                }

                v77 = &v81[v80];
                v83 = *&v81[4 * v78] - 1;
                v81 -= 4;
                v72 = v79;
              }

              while (v74 == v83);
              v73 = &v71[4 * v78 - 4];
            }

            else
            {
              v79 = ((v69 << 30) - 0x100000000) >> 32;
            }

            *v73 = v74 + 1;
            v96 = v75[v79] + v76;
          }

          v31 += v29;
        }

        while (v31 < v16);
      }

      if (__p)
      {
        v102 = __p;
        operator delete(__p);
      }

      if (v99)
      {
        v100 = v99;
        operator delete(v99);
      }

      if (v97)
      {
        v98 = v97;
        operator delete(v97);
      }

      if (v114)
      {
        v115 = v114;
        operator delete(v114);
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
    }

    else
    {
      if (v12)
      {
        v13 += *v12;
      }

      if (v15)
      {
        v14 += 8 * *v15;
      }

      if (v21 == 2)
      {
        v84 = *v103;
        if (*v103 >= 1)
        {
          v85 = 0;
          v86 = v105;
          v87 = **v105;
          v88 = (v14 + 4);
          v89 = 8 * *v105[3];
          do
          {
            v90 = v20[1];
            if (v90 >= 1)
            {
              v91 = *(*v86 + 8);
              v92 = 8 * *(v86[3] + 8);
              v93 = v88;
              v94 = v13;
              do
              {
                LOBYTE(v17) = *v94;
                v17 = LODWORD(v17);
                *(v93 - 1) = v17;
                *v93 = 0.0;
                v94 += v91;
                v93 = (v93 + v92);
                --v90;
              }

              while (v90);
            }

            v13 += v87;
            ++v85;
            v88 = (v88 + v89);
          }

          while (v85 != v84);
        }
      }

      else if (v21 == 1)
      {
        v22 = *v103;
        if (*v103 >= 1)
        {
          v23 = **v105;
          v24 = (v14 + 4);
          v25 = 8 * *v105[3];
          do
          {
            LOBYTE(v17) = *v13;
            v17 = LODWORD(v17);
            *(v24 - 1) = v17;
            *v24 = 0.0;
            v13 += v23;
            v24 = (v24 + v25);
            --v22;
          }

          while (v22);
        }
      }
    }

    v107 = &v105;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v107);
    if (v103)
    {
      v104 = v103;
      operator delete(v103);
    }
  }

  v95 = *MEMORY[0x277D85DE8];
}

void sub_25A38E81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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
        v42 = *(v29 + 8 * v113);
        v43 = *(v30 + 8 * v113);
        v44 = &v105[v34];
        v45 = v26 + v104;
        v46 = *(v29 + 8 * v103);
        v47 = *(v30 + 8 * v103);
        v48 = *&v28[4 * v103];
        do
        {
          if (v48 >= 1)
          {
            v49 = 0;
            v50 = *(v29 + 8 * v31);
            v51 = *(v30 + 8 * v31);
            v52 = v45;
            v53 = *&v28[4 * v31];
            v54 = v44;
            do
            {
              if (v53 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v53;
                do
                {
                  v54[v55] = v52[v56] != 0;
                  v56 += v50;
                  v55 += v51;
                  --v57;
                }

                while (v57);
              }

              v52 += v46;
              v54 += v47;
              ++v49;
            }

            while (v49 != v48);
          }

          v45 += v42;
          v44 += v43;
          ++v41;
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
      v85 = **v124;
      v86 = (*v124)[1];
      v87 = *v84;
      v88 = v84[1];
      v89 = *(v122 + 1);
      do
      {
        if (v89 >= 1)
        {
          v90 = v89;
          v91 = v12;
          v92 = v13;
          do
          {
            *v92 = *v91 != 0;
            v91 += v86;
            v92 += v88;
            --v90;
          }

          while (v90);
        }

        v12 += v85;
        v13 += v87;
        ++v83;
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v122;
    if (*v122 >= 1)
    {
      v19 = **v124;
      v20 = *v124[3];
      do
      {
        *v13 = *v12 != 0;
        v12 += v19;
        v13 += v20;
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

void sub_25A38EF60(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,unsigned char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A38F5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,unsigned short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A38FD14(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,unsigned int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A390444(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A390B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v38 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a38);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,signed char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A3911D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A391918(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A392048(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

void sub_25A392768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v38 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a38);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,half>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, __n128 a9, _BYTE *a10)
{
  v139 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + a6);
  v14 = (*(*a2 + 152) + 2 * a7);
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    a9.n128_u8[0] = *v13;
    *v14 = a9.n128_u16[0];
    goto LABEL_85;
  }

  v115 = *(*a1 + 48);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a4, a4[1], (a4[1] - *a4) >> 3);
  v133 = 0;
  v134 = 0;
  v135 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v133, *a5, a5[1], (a5[1] - *a5) >> 3);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v119, &v130, &v136, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v119, 0x7FFFFFFFuLL, &v126);
  v129 = &v119;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v129);
  for (i = 0; i != -48; i -= 24)
  {
    v18 = *(&v133 + i);
    if (v18)
    {
      *(&v134 + i) = v18;
      operator delete(v18);
    }
  }

  v19 = (v127 - v126) >> 2;
  if (v19 > 2)
  {
    if (v12)
    {
      v13 += *v12;
    }

    if (v15)
    {
      v14 += *v15;
    }

    v23 = (v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v130, &v126, v128, v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v119, &v126, v128 + 3, v19 - 3);
    v25 = v127 - 12;
    v26 = 1;
    do
    {
      v27 = *v25;
      v25 += 4;
      v26 *= v27;
    }

    while (v25 != v127);
    if (!v115)
    {
      v85 = v124;
      if (v124)
      {
LABEL_64:
        v125 = v85;
        operator delete(v85);
      }

LABEL_65:
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v137)
      {
        v138 = v137;
        operator delete(v137);
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

      goto LABEL_83;
    }

    v109 = v13;
    v110 = v14;
    v28 = 0;
    v29 = v130;
    v30 = v134;
    v31 = v126;
    v32 = *v128;
    v33 = v128[3];
    v108 = v19 - 2;
    v34 = v19 - 1;
    v35 = (((v132 - v131) << 30) - 0x100000000) >> 32;
    v103 = v137;
    v107 = v35;
    v105 = &v131[4 * v35];
    v36 = ((v132 - v131) >> 2) & 0x7FFFFFFF;
    v102 = v36 - 1;
    v37 = v119;
    v38 = v122;
    v39 = (((v121 - v120) << 30) - 0x100000000) >> 32;
    __p = v124;
    v116 = &v124[4 * v39];
    v117 = &v137[4 * v35];
    v40 = ((v121 - v120) >> 2) & 0x7FFFFFFF;
    v113 = v26;
    v114 = (v132 - v131) >> 2;
    v41 = 4 * v36;
    v100 = v131 - 8;
    v101 = v40 - 1;
    v42 = 4 * v40;
    v99 = v120 - 8;
    v106 = v39;
    v111 = v120 + 4 * v39;
    v112 = (v121 - v120) >> 2;
    while (1)
    {
      v118 = v28;
      v43 = v23;
      v44 = *&v31[4 * v23];
      if (v44 >= 1)
      {
        v45 = 0;
        v46 = *(v32 + 8 * v23);
        v47 = &v110[v37];
        v48 = v29 + v109;
        v49 = *(v32 + 8 * v108);
        v50 = *&v31[4 * v108];
        v51 = 2 * *(v33 + 8 * v23);
        v52 = 2 * *(v33 + 8 * v108);
        do
        {
          if (v50 >= 1)
          {
            v53 = 0;
            v54 = *(v32 + 8 * v34);
            v55 = *&v31[4 * v34];
            v56 = 2 * *(v33 + 8 * v34);
            v57 = v47;
            v58 = v48;
            do
            {
              if (v55 >= 1)
              {
                v59 = 0;
                v60 = 0;
                v61 = v55;
                do
                {
                  LOBYTE(v24) = v58[v60];
                  v24 = LOWORD(v24);
                  *(v57 + v59) = v24;
                  v60 += v54;
                  v59 += v56;
                  --v61;
                }

                while (v61);
              }

              v58 += v49;
              ++v53;
              v57 = (v57 + v52);
            }

            while (v53 != v50);
          }

          v48 += v46;
          ++v45;
          v47 = (v47 + v51);
        }

        while (v45 != v44);
      }

      if (!v114)
      {
        v23 = v43;
        v65 = v118;
        v71 = v111;
        v63 = v112;
        if (v112)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v62 = *v117;
      v23 = v43;
      v63 = v112;
      if (v114 < 2)
      {
        break;
      }

      v64 = v105;
      v65 = v118;
      if (v62 != *v105 - 1)
      {
        v67 = v107;
        v74 = v117;
LABEL_52:
        v71 = v111;
        goto LABEL_53;
      }

      v67 = v102;
      v66 = v103;
      v68 = v100;
      v69 = v117;
      v70 = v107;
      v71 = v111;
      do
      {
        v72 = v67;
        *v69 = 0;
        v29 = (v29 - v30[v70] * (*v64 - 1));
        v130 = v29;
        --v67;
        v69 = &v66[v41 - 8];
        v62 = *v69;
        v66 -= 4;
        if (v72 < 2)
        {
          break;
        }

        v64 = &v68[v41];
        v73 = *&v68[v41] - 1;
        v68 -= 4;
        v70 = v67;
      }

      while (v62 == v73);
      v74 = &v66[v41 - 4];
LABEL_53:
      *v74 = v62 + 1;
      v29 = (v29 + v30[v67]);
      v130 = v29;
      if (v112)
      {
LABEL_54:
        v75 = *v116;
        if (v63 >= 2 && v75 == *v71 - 1)
        {
          v76 = __p;
          v77 = v99;
          v78 = v101;
          v79 = v71;
          v80 = v116;
          v81 = v106;
          do
          {
            v82 = v78;
            *v80 = 0;
            v37 -= v38[v81] * (*v79 - 1);
            v119 = v37;
            --v78;
            v80 = &v76[v42 - 8];
            v75 = *v80;
            v76 -= 4;
            if (v82 < 2)
            {
              break;
            }

            v79 = &v77[v42];
            v83 = *&v77[v42] - 1;
            v77 -= 4;
            v81 = v78;
          }

          while (v75 == v83);
          v84 = &v76[v42 - 4];
        }

        else
        {
          v78 = v106;
          v84 = v116;
        }

        *v84 = v75 + 1;
        v37 += v38[v78];
        v119 = v37;
      }

LABEL_62:
      v28 = v65 + v113;
      if (v28 >= v115)
      {
        v85 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v67 = v107;
    v74 = v117;
    v65 = v118;
    goto LABEL_52;
  }

  if (v12)
  {
    v13 += *v12;
  }

  if (v15)
  {
    v14 += *v15;
  }

  if (v19 == 2)
  {
    v86 = *v126;
    if (*v126 >= 1)
    {
      v87 = 0;
      v88 = v128[3];
      v89 = **v128;
      v90 = (*v128)[1];
      v91 = v88[1];
      v92 = *(v126 + 1);
      v93 = 2 * *v88;
      v94 = 2 * v91;
      do
      {
        if (v92 >= 1)
        {
          v95 = v14;
          v96 = v92;
          v97 = v13;
          do
          {
            LOBYTE(v16) = *v97;
            v16 = LOWORD(v16);
            *v95 = v16;
            v97 += v90;
            v95 = (v95 + v94);
            --v96;
          }

          while (v96);
        }

        v13 += v89;
        ++v87;
        v14 = (v14 + v93);
      }

      while (v87 != v86);
    }
  }

  else if (v19 == 1)
  {
    v20 = *v126;
    if (*v126 >= 1)
    {
      v21 = **v128;
      v22 = 2 * *v128[3];
      do
      {
        LOBYTE(v16) = *v13;
        v16 = LOWORD(v16);
        *v14 = v16;
        v13 += v21;
        v14 = (v14 + v22);
        --v20;
      }

      while (v20);
    }
  }

LABEL_83:
  v130 = &v128;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v130);
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

LABEL_85:
  v98 = *MEMORY[0x277D85DE8];
}

void sub_25A392EB8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, float a9, _BYTE *a10)
{
  v139 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + a6);
  v14 = (*(*a2 + 152) + 4 * a7);
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    LOBYTE(a9) = *v13;
    *v14 = LODWORD(a9);
    goto LABEL_85;
  }

  v115 = *(*a1 + 48);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a4, a4[1], (a4[1] - *a4) >> 3);
  v133 = 0;
  v134 = 0;
  v135 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v133, *a5, a5[1], (a5[1] - *a5) >> 3);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v119, &v130, &v136, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v119, 0x7FFFFFFFuLL, &v126);
  v129 = &v119;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v129);
  for (i = 0; i != -48; i -= 24)
  {
    v18 = *(&v133 + i);
    if (v18)
    {
      *(&v134 + i) = v18;
      operator delete(v18);
    }
  }

  v19 = (v127 - v126) >> 2;
  if (v19 > 2)
  {
    if (v12)
    {
      v13 += *v12;
    }

    if (v15)
    {
      v14 += *v15;
    }

    v23 = (v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v130, &v126, v128, v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v119, &v126, v128 + 3, v19 - 3);
    v25 = v127 - 12;
    v26 = 1;
    do
    {
      v27 = *v25;
      v25 += 4;
      v26 *= v27;
    }

    while (v25 != v127);
    if (!v115)
    {
      v85 = v124;
      if (v124)
      {
LABEL_64:
        v125 = v85;
        operator delete(v85);
      }

LABEL_65:
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v137)
      {
        v138 = v137;
        operator delete(v137);
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

      goto LABEL_83;
    }

    v109 = v13;
    v110 = v14;
    v28 = 0;
    v29 = v130;
    v30 = v134;
    v31 = v126;
    v32 = *v128;
    v33 = v128[3];
    v108 = v19 - 2;
    v34 = v19 - 1;
    v35 = (((v132 - v131) << 30) - 0x100000000) >> 32;
    v103 = v137;
    v107 = v35;
    v105 = &v131[4 * v35];
    v36 = ((v132 - v131) >> 2) & 0x7FFFFFFF;
    v102 = v36 - 1;
    v37 = v119;
    v38 = v122;
    v39 = (((v121 - v120) << 30) - 0x100000000) >> 32;
    __p = v124;
    v116 = &v124[4 * v39];
    v117 = &v137[4 * v35];
    v40 = ((v121 - v120) >> 2) & 0x7FFFFFFF;
    v113 = v26;
    v114 = (v132 - v131) >> 2;
    v41 = 4 * v36;
    v100 = v131 - 8;
    v101 = v40 - 1;
    v42 = 4 * v40;
    v99 = v120 - 8;
    v106 = v39;
    v111 = v120 + 4 * v39;
    v112 = (v121 - v120) >> 2;
    while (1)
    {
      v118 = v28;
      v43 = v23;
      v44 = *&v31[4 * v23];
      if (v44 >= 1)
      {
        v45 = 0;
        v46 = *(v32 + 8 * v23);
        v47 = &v110[v37];
        v48 = v29 + v109;
        v49 = *(v32 + 8 * v108);
        v50 = *&v31[4 * v108];
        v51 = 4 * *(v33 + 8 * v23);
        v52 = 4 * *(v33 + 8 * v108);
        do
        {
          if (v50 >= 1)
          {
            v53 = 0;
            v54 = *(v32 + 8 * v34);
            v55 = *&v31[4 * v34];
            v56 = 4 * *(v33 + 8 * v34);
            v57 = v47;
            v58 = v48;
            do
            {
              if (v55 >= 1)
              {
                v59 = 0;
                v60 = 0;
                v61 = v55;
                do
                {
                  LOBYTE(v24) = v58[v60];
                  v24 = LODWORD(v24);
                  *(v57 + v59) = v24;
                  v60 += v54;
                  v59 += v56;
                  --v61;
                }

                while (v61);
              }

              v58 += v49;
              ++v53;
              v57 = (v57 + v52);
            }

            while (v53 != v50);
          }

          v48 += v46;
          ++v45;
          v47 = (v47 + v51);
        }

        while (v45 != v44);
      }

      if (!v114)
      {
        v23 = v43;
        v65 = v118;
        v71 = v111;
        v63 = v112;
        if (v112)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v62 = *v117;
      v23 = v43;
      v63 = v112;
      if (v114 < 2)
      {
        break;
      }

      v64 = v105;
      v65 = v118;
      if (v62 != *v105 - 1)
      {
        v67 = v107;
        v74 = v117;
LABEL_52:
        v71 = v111;
        goto LABEL_53;
      }

      v67 = v102;
      v66 = v103;
      v68 = v100;
      v69 = v117;
      v70 = v107;
      v71 = v111;
      do
      {
        v72 = v67;
        *v69 = 0;
        v29 = (v29 - v30[v70] * (*v64 - 1));
        v130 = v29;
        --v67;
        v69 = &v66[v41 - 8];
        v62 = *v69;
        v66 -= 4;
        if (v72 < 2)
        {
          break;
        }

        v64 = &v68[v41];
        v73 = *&v68[v41] - 1;
        v68 -= 4;
        v70 = v67;
      }

      while (v62 == v73);
      v74 = &v66[v41 - 4];
LABEL_53:
      *v74 = v62 + 1;
      v29 = (v29 + v30[v67]);
      v130 = v29;
      if (v112)
      {
LABEL_54:
        v75 = *v116;
        if (v63 >= 2 && v75 == *v71 - 1)
        {
          v76 = __p;
          v77 = v99;
          v78 = v101;
          v79 = v71;
          v80 = v116;
          v81 = v106;
          do
          {
            v82 = v78;
            *v80 = 0;
            v37 -= v38[v81] * (*v79 - 1);
            v119 = v37;
            --v78;
            v80 = &v76[v42 - 8];
            v75 = *v80;
            v76 -= 4;
            if (v82 < 2)
            {
              break;
            }

            v79 = &v77[v42];
            v83 = *&v77[v42] - 1;
            v77 -= 4;
            v81 = v78;
          }

          while (v75 == v83);
          v84 = &v76[v42 - 4];
        }

        else
        {
          v78 = v106;
          v84 = v116;
        }

        *v84 = v75 + 1;
        v37 += v38[v78];
        v119 = v37;
      }

LABEL_62:
      v28 = v65 + v113;
      if (v28 >= v115)
      {
        v85 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v67 = v107;
    v74 = v117;
    v65 = v118;
    goto LABEL_52;
  }

  if (v12)
  {
    v13 += *v12;
  }

  if (v15)
  {
    v14 += *v15;
  }

  if (v19 == 2)
  {
    v86 = *v126;
    if (*v126 >= 1)
    {
      v87 = 0;
      v88 = v128[3];
      v89 = **v128;
      v90 = (*v128)[1];
      v91 = v88[1];
      v92 = *(v126 + 1);
      v93 = 4 * *v88;
      v94 = 4 * v91;
      do
      {
        if (v92 >= 1)
        {
          v95 = v14;
          v96 = v92;
          v97 = v13;
          do
          {
            LOBYTE(v16) = *v97;
            v16 = LODWORD(v16);
            *v95 = v16;
            v97 += v90;
            v95 = (v95 + v94);
            --v96;
          }

          while (v96);
        }

        v13 += v89;
        ++v87;
        v14 = (v14 + v93);
      }

      while (v87 != v86);
    }
  }

  else if (v19 == 1)
  {
    v20 = *v126;
    if (*v126 >= 1)
    {
      v21 = **v128;
      v22 = 4 * *v128[3];
      do
      {
        LOBYTE(v16) = *v13;
        v16 = LODWORD(v16);
        *v14 = v16;
        v13 += v21;
        v14 = (v14 + v22);
        --v20;
      }

      while (v20);
    }
  }

LABEL_83:
  v130 = &v128;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v130);
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

LABEL_85:
  v98 = *MEMORY[0x277D85DE8];
}

void sub_25A393608(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<unsigned char,double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, double a9, _BYTE *a10)
{
  v139 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v12 = *(*a8 + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 152) + a6);
  v14 = (*(*a2 + 152) + 8 * a7);
  if (a10[16] == 1)
  {
    v15 = *(*a10 + 152);
  }

  else
  {
    v15 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    LOBYTE(a9) = *v13;
    *v14 = *&a9;
    goto LABEL_85;
  }

  v115 = *(*a1 + 48);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v130, *a4, a4[1], (a4[1] - *a4) >> 3);
  v133 = 0;
  v134 = 0;
  v135 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v133, *a5, a5[1], (a5[1] - *a5) >> 3);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v119, &v130, &v136, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v119, 0x7FFFFFFFuLL, &v126);
  v129 = &v119;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v129);
  for (i = 0; i != -48; i -= 24)
  {
    v18 = *(&v133 + i);
    if (v18)
    {
      *(&v134 + i) = v18;
      operator delete(v18);
    }
  }

  v19 = (v127 - v126) >> 2;
  if (v19 > 2)
  {
    if (v12)
    {
      v13 += *v12;
    }

    if (v15)
    {
      v14 += *v15;
    }

    v23 = (v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v130, &v126, v128, v19 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v119, &v126, v128 + 3, v19 - 3);
    v25 = v127 - 12;
    v26 = 1;
    do
    {
      v27 = *v25;
      v25 += 4;
      v26 *= v27;
    }

    while (v25 != v127);
    if (!v115)
    {
      v85 = v124;
      if (v124)
      {
LABEL_64:
        v125 = v85;
        operator delete(v85);
      }

LABEL_65:
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (v137)
      {
        v138 = v137;
        operator delete(v137);
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

      goto LABEL_83;
    }

    v109 = v13;
    v110 = v14;
    v28 = 0;
    v29 = v130;
    v30 = v134;
    v31 = v126;
    v32 = *v128;
    v33 = v128[3];
    v108 = v19 - 2;
    v34 = v19 - 1;
    v35 = (((v132 - v131) << 30) - 0x100000000) >> 32;
    v103 = v137;
    v107 = v35;
    v105 = &v131[4 * v35];
    v36 = ((v132 - v131) >> 2) & 0x7FFFFFFF;
    v102 = v36 - 1;
    v37 = v119;
    v38 = v122;
    v39 = (((v121 - v120) << 30) - 0x100000000) >> 32;
    __p = v124;
    v116 = &v124[4 * v39];
    v117 = &v137[4 * v35];
    v40 = ((v121 - v120) >> 2) & 0x7FFFFFFF;
    v113 = v26;
    v114 = (v132 - v131) >> 2;
    v41 = 4 * v36;
    v100 = v131 - 8;
    v101 = v40 - 1;
    v42 = 4 * v40;
    v99 = v120 - 8;
    v106 = v39;
    v111 = v120 + 4 * v39;
    v112 = (v121 - v120) >> 2;
    while (1)
    {
      v118 = v28;
      v43 = v23;
      v44 = *&v31[4 * v23];
      if (v44 >= 1)
      {
        v45 = 0;
        v46 = *(v32 + 8 * v23);
        v47 = &v110[v37];
        v48 = v29 + v109;
        v49 = *(v32 + 8 * v108);
        v50 = *&v31[4 * v108];
        v51 = 8 * *(v33 + 8 * v23);
        v52 = 8 * *(v33 + 8 * v108);
        do
        {
          if (v50 >= 1)
          {
            v53 = 0;
            v54 = *(v32 + 8 * v34);
            v55 = *&v31[4 * v34];
            v56 = 8 * *(v33 + 8 * v34);
            v57 = v47;
            v58 = v48;
            do
            {
              if (v55 >= 1)
              {
                v59 = 0;
                v60 = 0;
                v61 = v55;
                do
                {
                  LOBYTE(v24) = v58[v60];
                  v24 = *&v24;
                  *(v57 + v59) = v24;
                  v60 += v54;
                  v59 += v56;
                  --v61;
                }

                while (v61);
              }

              v58 += v49;
              ++v53;
              v57 = (v57 + v52);
            }

            while (v53 != v50);
          }

          v48 += v46;
          ++v45;
          v47 = (v47 + v51);
        }

        while (v45 != v44);
      }

      if (!v114)
      {
        v23 = v43;
        v65 = v118;
        v71 = v111;
        v63 = v112;
        if (v112)
        {
          goto LABEL_54;
        }

        goto LABEL_62;
      }

      v62 = *v117;
      v23 = v43;
      v63 = v112;
      if (v114 < 2)
      {
        break;
      }

      v64 = v105;
      v65 = v118;
      if (v62 != *v105 - 1)
      {
        v67 = v107;
        v74 = v117;
LABEL_52:
        v71 = v111;
        goto LABEL_53;
      }

      v67 = v102;
      v66 = v103;
      v68 = v100;
      v69 = v117;
      v70 = v107;
      v71 = v111;
      do
      {
        v72 = v67;
        *v69 = 0;
        v29 = (v29 - v30[v70] * (*v64 - 1));
        v130 = v29;
        --v67;
        v69 = &v66[v41 - 8];
        v62 = *v69;
        v66 -= 4;
        if (v72 < 2)
        {
          break;
        }

        v64 = &v68[v41];
        v73 = *&v68[v41] - 1;
        v68 -= 4;
        v70 = v67;
      }

      while (v62 == v73);
      v74 = &v66[v41 - 4];
LABEL_53:
      *v74 = v62 + 1;
      v29 = (v29 + v30[v67]);
      v130 = v29;
      if (v112)
      {
LABEL_54:
        v75 = *v116;
        if (v63 >= 2 && v75 == *v71 - 1)
        {
          v76 = __p;
          v77 = v99;
          v78 = v101;
          v79 = v71;
          v80 = v116;
          v81 = v106;
          do
          {
            v82 = v78;
            *v80 = 0;
            v37 -= v38[v81] * (*v79 - 1);
            v119 = v37;
            --v78;
            v80 = &v76[v42 - 8];
            v75 = *v80;
            v76 -= 4;
            if (v82 < 2)
            {
              break;
            }

            v79 = &v77[v42];
            v83 = *&v77[v42] - 1;
            v77 -= 4;
            v81 = v78;
          }

          while (v75 == v83);
          v84 = &v76[v42 - 4];
        }

        else
        {
          v78 = v106;
          v84 = v116;
        }

        *v84 = v75 + 1;
        v37 += v38[v78];
        v119 = v37;
      }

LABEL_62:
      v28 = v65 + v113;
      if (v28 >= v115)
      {
        v85 = __p;
        if (__p)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }
    }

    v67 = v107;
    v74 = v117;
    v65 = v118;
    goto LABEL_52;
  }

  if (v12)
  {
    v13 += *v12;
  }

  if (v15)
  {
    v14 += *v15;
  }

  if (v19 == 2)
  {
    v86 = *v126;
    if (*v126 >= 1)
    {
      v87 = 0;
      v88 = v128[3];
      v89 = **v128;
      v90 = (*v128)[1];
      v91 = v88[1];
      v92 = *(v126 + 1);
      v93 = 8 * *v88;
      v94 = 8 * v91;
      do
      {
        if (v92 >= 1)
        {
          v95 = v14;
          v96 = v92;
          v97 = v13;
          do
          {
            LOBYTE(v16) = *v97;
            v16 = *&v16;
            *v95 = v16;
            v97 += v90;
            v95 = (v95 + v94);
            --v96;
          }

          while (v96);
        }

        v13 += v89;
        ++v87;
        v14 = (v14 + v93);
      }

      while (v87 != v86);
    }
  }

  else if (v19 == 1)
  {
    v20 = *v126;
    if (*v126 >= 1)
    {
      v21 = **v128;
      v22 = 8 * *v128[3];
      do
      {
        LOBYTE(v16) = *v13;
        v16 = *&v16;
        *v14 = v16;
        v13 += v21;
        v14 = (v14 + v22);
        --v20;
      }

      while (v20);
    }
  }

LABEL_83:
  v130 = &v128;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v130);
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

LABEL_85:
  v98 = *MEMORY[0x277D85DE8];
}