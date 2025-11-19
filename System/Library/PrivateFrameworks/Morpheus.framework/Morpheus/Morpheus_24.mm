void sub_25A3E01DC(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<mlx::core::complex64_t,float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

  v12 = (*(*a1 + 152) + 8 * a6);
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
      v12 += 2 * *v11;
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
        v45 = 8 * *(v29 + 8 * v21);
        v46 = 8 * *(v29 + 8 * v106);
        v47 = 4 * *(v30 + 8 * v21);
        v48 = 4 * *(v30 + 8 * v106);
        v49 = &v107[2 * v26];
        do
        {
          if (v43 >= 1)
          {
            v50 = 0;
            v51 = *&v28[4 * v31];
            v52 = 8 * *(v29 + 8 * v31);
            v53 = 4 * *(v30 + 8 * v31);
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
    v12 += 2 * *v11;
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
      v88 = 8 * **v126;
      v89 = 8 * *(*v126 + 8);
      v90 = *(v124 + 1);
      v91 = 4 * v86;
      v92 = 4 * v87;
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
      v20 = 8 * **v126;
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

void sub_25A3E0934(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<mlx::core::complex64_t,double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

  v12 = (*(*a1 + 152) + 8 * a6);
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
      v12 += 2 * *v11;
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
        v45 = 8 * *(v29 + 8 * v21);
        v46 = 8 * *(v29 + 8 * v106);
        v47 = 8 * *(v30 + 8 * v21);
        v48 = 8 * *(v30 + 8 * v106);
        v49 = &v107[2 * v26];
        do
        {
          if (v43 >= 1)
          {
            v50 = 0;
            v51 = *&v28[4 * v31];
            v52 = 8 * *(v29 + 8 * v31);
            v53 = 8 * *(v30 + 8 * v31);
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
    v12 += 2 * *v11;
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
      v88 = 8 * **v126;
      v89 = 8 * *(*v126 + 8);
      v90 = *(v124 + 1);
      v91 = 8 * v86;
      v92 = 8 * v87;
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
      v20 = 8 * **v126;
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

void sub_25A3E109C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::anonymous namespace::copy_vector<mlx::core::complex64_t,mlx::core::_MLX_BFloat16>(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 160);
  if (v2)
  {
    v3 = *(*result + 152);
    v4 = *(*a2 + 152);
    v5 = 8 * v2;
    do
    {
      v6 = *v3;
      v3 += 2;
      *v4++ = (v6 + (HIWORD(v6) & 1) + 0x7FFF) >> 16;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

void mlx::core::anonymous namespace::copy_general_general<mlx::core::complex64_t,mlx::core::_MLX_BFloat16>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

  v12 = (*(*a1 + 152) + 8 * a6);
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
    *v13 = (*v12 + (HIWORD(*v12) & 1u) + 0x7FFF) >> 16;
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
      v12 += 2 * *v11;
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
    v101 = v31;
    v99 = &v127[4 * v31];
    v32 = ((v128 - v127) >> 2) & 0x7FFFFFFF;
    v96 = v32 - 1;
    v33 = v115;
    v34 = (((v117 - v116) << 30) - 0x100000000) >> 32;
    __p = v120;
    v111 = &v120[4 * v34];
    v112 = &v133[4 * v31];
    v35 = ((v117 - v116) >> 2) & 0x7FFFFFFF;
    v109 = (v128 - v127) >> 2;
    v36 = 4 * v32;
    v94 = v127 - 8;
    v95 = v35 - 1;
    v37 = 4 * v35;
    v93 = v116 - 8;
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
        v42 = 8 * *(v28 + 8 * v113);
        v43 = 8 * *(v28 + 8 * v102);
        v44 = 2 * *(v29 + 8 * v113);
        v45 = 2 * *(v29 + 8 * v102);
        v46 = &v104[2 * v26];
        do
        {
          if (v40 >= 1)
          {
            v47 = 0;
            v48 = *&v27[4 * v30];
            v49 = 8 * *(v28 + 8 * v30);
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
                  *(v51 + v53) = (*(v52 + v54) + (HIWORD(*(v52 + v54)) & 1u) + 0x7FFF) >> 16;
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
    if (v109 >= 2 && v56 == *v99 - 1)
    {
      v59 = v96;
      v58 = v97;
      v60 = v94;
      v61 = v99;
      v62 = v112;
      v63 = v101;
      v64 = v114;
      v65 = v108;
      v66 = v106;
      do
      {
        v67 = v59;
        *v62 = 0;
        v26 = (v26 - v103[v63] * (*v61 - 1));
        v126 = v26;
        --v59;
        v62 = &v58[v36 - 8];
        v56 = *v62;
        v58 -= 4;
        if (v67 < 2)
        {
          break;
        }

        v61 = &v60[v36];
        v68 = *&v60[v36] - 1;
        v60 -= 4;
        v63 = v59;
      }

      while (v56 == v68);
      v69 = &v58[v36 - 4];
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
    v12 += 2 * *v11;
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
      v86 = 8 * **v124;
      v87 = 8 * *(*v124 + 8);
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
            *v89 = (*v90 + (HIWORD(*v90) & 1u) + 0x7FFF) >> 16;
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
      v19 = 8 * **v124;
      v20 = 2 * *v124[3];
      do
      {
        *v13 = (*v12 + (HIWORD(*v12) & 1u) + 0x7FFF) >> 16;
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

void sub_25A3E18FC(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::copy_general_general<mlx::core::complex64_t,mlx::core::complex64_t>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
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

  v12 = (*(*a1 + 152) + 8 * a6);
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
            v33 = &v13[v90];
            v34 = &v12[v101];
            v35 = 8 * *(*v30 + 8 * v23);
            v36 = 8 * *(v30[3] + 8 * v23);
            do
            {
              v37 = *(v97 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = 8 * *(*v30 + 8 * v28);
                v40 = 8 * *(v30[3] + 8 * v28);
                v41 = v33;
                v42 = v34;
                do
                {
                  v43 = *(v97 + v29);
                  if (v43 >= 1)
                  {
                    v44 = 0;
                    v45 = 0;
                    v46 = 8 * *(*v30 + 8 * v29);
                    v47 = 8 * *(v30[3] + 8 * v29);
                    do
                    {
                      *(v41 + v44) = *(v42 + v45);
                      v45 += v46;
                      v44 += v47;
                      --v43;
                    }

                    while (v43);
                  }

                  ++v38;
                  v42 = (v42 + v39);
                  v41 = (v41 + v40);
                }

                while (v38 != v37);
              }

              ++v32;
              v34 = (v34 + v35);
              v33 = (v33 + v36);
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
          v82 = 8 * **v99;
          v83 = 8 * *v99[3];
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = 8 * *(*v81 + 8);
              v86 = 8 * *(v81[3] + 8);
              v87 = v13;
              v88 = v12;
              do
              {
                *v87 = *v88;
                v88 = (v88 + v85);
                v87 = (v87 + v86);
                --v84;
              }

              while (v84);
            }

            ++v80;
            v12 = (v12 + v82);
            v13 = (v13 + v83);
          }

          while (v80 != v79);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v97;
        if (*v97 >= 1)
        {
          v21 = 8 * **v99;
          v22 = 8 * *v99[3];
          do
          {
            *v13 = *v12;
            v12 = (v12 + v21);
            v13 = (v13 + v22);
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

void sub_25A3E1FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&__p);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(&a20);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF3278;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF3278;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF3278;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,mlx::core::CopyType,mlx::core::Stream)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::cpu::CommandEncoder::dispatch<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>(mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0 &&)::{lambda(void)#1}::~dispatch(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    mlx::core::array::~array((a1 + 168));
  }

  if (*(a1 + 160) == 1)
  {
    mlx::core::array::~array((a1 + 144));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 32));
  mlx::core::array::~array((a1 + 16));
  return a1;
}

uint64_t mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  v4 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v4;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    *(a1 + 128) = *(a2 + 128);
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a1 + 144) = 1;
  }

  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a1 + 168) = 1;
  }

  return a1;
}

void sub_25A3E244C(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 5) = v7;
    operator delete(v7);
  }

  mlx::core::array::~array(v2);
  mlx::core::array::~array(v1);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_286BF3370;
  if (*(a1 + 192) == 1)
  {
    mlx::core::array::~array((a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    mlx::core::array::~array((a1 + 152));
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_286BF3370;
  if (*(a1 + 192) == 1)
  {
    mlx::core::array::~array((a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    mlx::core::array::~array((a1 + 152));
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3370;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>::__bind(a2 + 24, a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEE7destroyEv(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    mlx::core::array::~array((a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    mlx::core::array::~array((a1 + 152));
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    mlx::core::array::~array((a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    mlx::core::array::~array((a1 + 152));
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEEclEv(uint64_t a1)
{
  v1 = std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_RKNS_6vectorIiNS_9allocatorIiEEEERKNSB_IxNSC_IxEEEESK_xxNS3_8CopyTypeENS3_6StreamERKNS_8optionalIS7_EESQ_E3__0JEEEvOT_DpOT0_EUlvE_NSC_ISX_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>::__bind(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  v6 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v6;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    v7 = *(a2 + 136);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 144) = 1;
  }

  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v8 = *(a2 + 160);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 168) = 1;
  }

  return a1;
}

void sub_25A3E29C8(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 5) = v7;
    operator delete(v7);
  }

  mlx::core::array::~array(v2);
  mlx::core::array::~array(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>::operator()[abi:ne200100]<>(uint64_t result)
{
  v2 = *(result + 120);
  if (v2 < 2)
  {
  }

  else if ((v2 - 2) <= 1)
  {
  }

  return result;
}

void sub_25A3F8584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BF33F0;
  if (*(a1 + 176) == 1)
  {
    mlx::core::array::~array((a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    mlx::core::array::~array((a1 + 136));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BF33F0;
  if (*(a1 + 176) == 1)
  {
    mlx::core::array::~array((a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    mlx::core::array::~array((a1 + 136));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF33F0;
  result = std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>::__bind(a2 + 8, a1 + 8);
  *(a2 + 188) = 0;
  *(a2 + 185) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    mlx::core::array::~array((a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    mlx::core::array::~array((a1 + 136));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    mlx::core::array::~array((a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    mlx::core::array::~array((a1 + 136));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>,std::allocator<std::__bind<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::LUF::eval_cpu(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  if (a2[1] - *a2 == 16)
  {
    v5 = *(*v4 + 56);
    if (v5 != 11)
    {
      if (v5 == 10)
      {
        v6 = *a3;
        v7 = *(a1 + 8);
        v8 = *(a1 + 16);

        mlx::core::luf_impl<float>(v4, v6);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[LUF::eval_cpu] only supports float32 or float64.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v9 = *a3;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);

    mlx::core::luf_impl<double>(v4, v9);
  }

  mlx::core::LUF::eval_cpu();
}

void mlx::core::luf_impl<float>(uint64_t a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  if (*(*a1 + 8) - **a1 > 4uLL)
  {
    v3 = *(*a1 + 8);
    v4 = *(v3 - 8);
    if (*(v3 - 4) >= v4)
    {
      v5 = *(v3 - 8);
    }

    else
    {
      v5 = *(v3 - 4);
    }

    v6 = *a2;
    v7 = *(*a2 + 8) - **a2;
    v8 = *(*a2 + 168);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v14, *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 3);
    v9 = v14 + 8 * (v7 >> 2);
    *(v9 - 2) = 1;
    *(v9 - 1) = v4;
    v10 = mlx::core::allocator::malloc((*(*a2 + 60) * *(*a2 + 48)));
    v12 = *(*a2 + 48);
    v11 = *(*a2 + 56);
    memset(__p, 0, sizeof(__p));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v14, v15, (v15 - v14) >> 3);
    v17[0] = &unk_286BE3468;
    v17[1] = mlx::core::allocator::free;
    v17[3] = v17;
    mlx::core::array::set_data(a2, v10);
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A3F93F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::luf_impl<double>(uint64_t a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  if (*(*a1 + 8) - **a1 > 4uLL)
  {
    v3 = *(*a1 + 8);
    v4 = *(v3 - 8);
    if (*(v3 - 4) >= v4)
    {
      v5 = *(v3 - 8);
    }

    else
    {
      v5 = *(v3 - 4);
    }

    v6 = *a2;
    v7 = *(*a2 + 8) - **a2;
    v8 = *(*a2 + 168);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v14, *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 3);
    v9 = v14 + 8 * (v7 >> 2);
    *(v9 - 2) = 1;
    *(v9 - 1) = v4;
    v10 = mlx::core::allocator::malloc((*(*a2 + 60) * *(*a2 + 48)));
    v12 = *(*a2 + 48);
    v11 = *(*a2 + 56);
    memset(__p, 0, sizeof(__p));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v14, v15, (v15 - v14) >> 3);
    v17[0] = &unk_286BE3468;
    v17[1] = mlx::core::allocator::free;
    v17[3] = v17;
    mlx::core::array::set_data(a2, v10);
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A3F97D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  v12 = a2[2];
  v5 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  v9 = v13;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A3F9A38(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v11 = a2[2];
  v12 = a2[3];
  v13 = *(a2 + 8);
  v9 = *a2;
  v10 = a2[1];
  *(v8 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIfEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3560;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIfEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  v1 = mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIfEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()(void *result)
{
  if (result[3])
  {
    v1 = result;
    v2 = 0;
    v24 = 0;
    v3 = *result;
    v4 = result[1];
    do
    {
      result = sgetrf_NEWLAPACK();
      if (v24)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v22);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "[LUF::eval_cpu] sgetrf_ failed with code ", 41);
        v17 = MEMORY[0x25F851360](v16, v24);
        if (v24 <= 0)
        {
          v18 = " because argument had an illegal value";
        }

        else
        {
          v18 = " because matrix is singular";
        }

        if (v24 <= 0)
        {
          v19 = 38;
        }

        else
        {
          v19 = 27;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
        exception = __cxa_allocate_exception(0x10uLL);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v22, v21);
        MEMORY[0x25F851100](exception, v21);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      LODWORD(v5) = *(v1 + 10);
      v6 = v1[2];
      if (v5 < 1)
      {
        v9 = 0;
      }

      else
      {
        v7 = 0;
        v8 = v1[1];
        do
        {
          --*(v8 + 4 * v7);
          *(v6 + 4 * v7) = v7;
          ++v7;
          v5 = *(v1 + 10);
        }

        while (v7 < v5);
        v9 = v7;
      }

      v10 = *(v1 + 8);
      if (v9 < v10)
      {
        do
        {
          *(v6 + 4 * v9) = v9;
          ++v9;
          v10 = *(v1 + 8);
        }

        while (v10 > v9);
        LODWORD(v5) = *(v1 + 10);
      }

      v11 = v1[1];
      if (v5 >= 1)
      {
        v12 = v5 - 1;
        do
        {
          v13 = *(v11 + 4 * v12);
          v14 = *(v6 + 4 * v12);
          *(v6 + 4 * v12) = *(v6 + 4 * v13);
          *(v6 + 4 * v13) = v14;
          v15 = v12-- + 1;
        }

        while (v15 > 1);
        v10 = *(v1 + 8);
        LODWORD(v5) = *(v1 + 10);
      }

      *v1 += 4 * *(v1 + 9) * v10;
      v1[1] = v11 + 4 * v5;
      v1[2] = v6 + 4 * v10;
      ++v2;
    }

    while (v2 < v1[3]);
  }

  return result;
}

void sub_25A3F9F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A3FA0B0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *(a2 + 6);
  *(v8 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF35E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::luf_impl<float>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  v12 = a2[2];
  v5 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  v9 = v13;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A3FA524(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v11 = a2[2];
  v12 = a2[3];
  v13 = *(a2 + 8);
  v9 = *a2;
  v10 = a2[1];
  *(v8 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIdEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF36D8;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIdEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  v1 = mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8luf_implIdEEvRKNS3_5arrayERS8_SB_SB_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()(void *result)
{
  if (result[3])
  {
    v1 = result;
    v2 = 0;
    v24 = 0;
    v3 = *result;
    v4 = result[1];
    do
    {
      result = dgetrf_NEWLAPACK();
      if (v24)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v22);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "[LUF::eval_cpu] sgetrf_ failed with code ", 41);
        v17 = MEMORY[0x25F851360](v16, v24);
        if (v24 <= 0)
        {
          v18 = " because argument had an illegal value";
        }

        else
        {
          v18 = " because matrix is singular";
        }

        if (v24 <= 0)
        {
          v19 = 38;
        }

        else
        {
          v19 = 27;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
        exception = __cxa_allocate_exception(0x10uLL);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v22, v21);
        MEMORY[0x25F851100](exception, v21);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      LODWORD(v5) = *(v1 + 10);
      v6 = v1[2];
      if (v5 < 1)
      {
        v9 = 0;
      }

      else
      {
        v7 = 0;
        v8 = v1[1];
        do
        {
          --*(v8 + 4 * v7);
          *(v6 + 4 * v7) = v7;
          ++v7;
          v5 = *(v1 + 10);
        }

        while (v7 < v5);
        v9 = v7;
      }

      v10 = *(v1 + 8);
      if (v9 < v10)
      {
        do
        {
          *(v6 + 4 * v9) = v9;
          ++v9;
          v10 = *(v1 + 8);
        }

        while (v10 > v9);
        LODWORD(v5) = *(v1 + 10);
      }

      v11 = v1[1];
      if (v5 >= 1)
      {
        v12 = v5 - 1;
        do
        {
          v13 = *(v11 + 4 * v12);
          v14 = *(v6 + 4 * v12);
          *(v6 + 4 * v12) = *(v6 + 4 * v13);
          *(v6 + 4 * v13) = v14;
          v15 = v12-- + 1;
        }

        while (v15 > 1);
        v10 = *(v1 + 8);
        LODWORD(v5) = *(v1 + 10);
      }

      *v1 += 8 * *(v1 + 9) * v10;
      v1[1] = v11 + 4 * v5;
      v1[2] = v6 + 4 * v10;
      ++v2;
    }

    while (v2 < v1[3]);
  }

  return result;
}

void sub_25A3FAA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A3FAAF4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *(a2 + 6);
  *(v8 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3758;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::luf_impl<double>(mlx::core::array const&,mlx::core::array&,mlx::core::array&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Softmax::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v169 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Softmax::eval_cpu();
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *v3;
  v9 = **v3;
  if ((*v3)[21])
  {
    v10 = v8[1];
    if (*(v8[3] + 2 * (v10 - v9) - 8) == 1)
    {
      v11 = v3[1];
      if (!v11 || v11[1] || (v117 = v8[18]) == 0 || *(v117 + 8))
      {
        v12 = mlx::core::allocator::malloc((*(v8 + 60) * v8[20]));
        v13 = *v3;
        v14 = (*v3)[20];
        v163 = 0;
        v164 = 0;
        __p = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v13[3], v13[4], (v13[4] - v13[3]) >> 3);
        v15 = *(*v3 + 168);
        v166[0] = &unk_286BE3468;
        v166[1] = mlx::core::allocator::free;
        v168 = v166;
        mlx::core::array::set_data(this, v12);
      }

      mlx::core::array::copy_shared_buffer(this, v3);
      v16 = *v3;
      v17 = v3[1];
      v159[0] = *v3;
      v159[1] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
      }

      goto LABEL_16;
    }

    v18 = (v10 - v9) >> 2;
  }

  else
  {
    v10 = v8[1];
    v18 = (v10 - v9) >> 2;
  }

  v166[0] = 0;
  v166[1] = 0;
  v167 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v166, v9, v10, v18);
  v19 = (*v3)[7];
  v160 = 0;
  v161 = 0;
  v163 = 0;
  v164 = 0;
  __p = 0;
  mlx::core::array::array(v159, v166, v19 & 0xFFFFFFFFFFLL, &v160, &__p);
  p_p = &__p;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (v161)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v161);
  }

  if (v166[0])
  {
    v166[1] = v166[0];
    operator delete(v166[0]);
  }

  mlx::core::copy(v3, v159, 2u, v6, v7);
  mlx::core::array::copy_shared_buffer(this, v159);
  v16 = v159[0];
LABEL_16:
  v20 = *(v16 + 14);
  if (v20 > 10)
  {
    if (v20 == 11)
    {
      command_encoder = mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
      v65 = *(*this + 152);
      v66 = *(*(v159[0] + 8) - 4);
      v68 = *(v159[0] + 152);
      v67 = *(v159[0] + 160);
      v69 = (*(command_encoder + 10) + 1) % 10;
      *(command_encoder + 10) = v69;
      v70 = mlx::core::scheduler::scheduler(command_encoder);
      if (v69)
      {
        v71 = *(v70[1] + 8 * *command_encoder);
        std::mutex::lock(v71);
        if (*(v71 + 160) != 1)
        {
          v72 = *(v71 + 72);
          v73 = *(v71 + 80);
          v74 = 16 * (v73 - v72) - 1;
          if (v73 == v72)
          {
            v74 = 0;
          }

          if (v74 == *(v71 + 104) + *(v71 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v71 + 64));
            v72 = *(v71 + 72);
            v73 = *(v71 + 80);
          }

          if (v73 == v72)
          {
            v76 = 0;
          }

          else
          {
            v75 = *(v71 + 104) + *(v71 + 96);
            v76 = *(v72 + ((v75 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v75 & 0x7F);
          }

          *(v76 + 24) = 0;
          operator new();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v70);
      v166[0] = *command_encoder;
      LODWORD(v166[1]) = *(command_encoder + 2);
      v104 = *(*(mlx::core::scheduler::scheduler(v103) + 1) + 8 * *command_encoder);
      std::mutex::lock(v104);
      if (*(v104 + 160) != 1)
      {
        v105 = *(v104 + 72);
        v106 = *(v104 + 80);
        v107 = 16 * (v106 - v105) - 1;
        if (v106 == v105)
        {
          v107 = 0;
        }

        if (v107 == *(v104 + 104) + *(v104 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v104 + 64));
          v105 = *(v104 + 72);
          v106 = *(v104 + 80);
        }

        if (v106 == v105)
        {
          v109 = 0;
        }

        else
        {
          v108 = *(v104 + 104) + *(v104 + 96);
          v109 = *(v105 + ((v108 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v108 & 0x7F);
        }

        *(v109 + 24) = 0;
        operator new();
      }

      v149 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v149, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v149, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v20 == 12)
    {
      v34 = *(a1 + 8);
      v35 = *(a1 + 16);
      if (*(a1 + 20) == 1)
      {
        v36 = mlx::core::cpu::get_command_encoder(v34, v35);
        v37 = *(*this + 152);
        v38 = *(*(v159[0] + 8) - 4);
        v40 = *(v159[0] + 152);
        v39 = *(v159[0] + 160);
        v41 = (*(v36 + 10) + 1) % 10;
        *(v36 + 10) = v41;
        v42 = mlx::core::scheduler::scheduler(v36);
        if (v41)
        {
          v43 = *(v42[1] + 8 * *v36);
          std::mutex::lock(v43);
          if (*(v43 + 160) != 1)
          {
            v44 = *(v43 + 72);
            v45 = *(v43 + 80);
            v46 = 16 * (v45 - v44) - 1;
            if (v45 == v44)
            {
              v46 = 0;
            }

            if (v46 == *(v43 + 104) + *(v43 + 96))
            {
              std::deque<std::function<void ()(void)>>::__add_back_capacity((v43 + 64));
              v44 = *(v43 + 72);
              v45 = *(v43 + 80);
            }

            if (v45 == v44)
            {
              v48 = 0;
            }

            else
            {
              v47 = *(v43 + 104) + *(v43 + 96);
              v48 = *(v44 + ((v47 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v47 & 0x7F);
            }

            *(v48 + 24) = 0;
            operator new();
          }

          v151 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v151, "Cannot enqueue work after stream is stopped.");
          __cxa_throw(v151, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        mlx::core::scheduler::Scheduler::notify_new_task(v42);
        v166[0] = *v36;
        LODWORD(v166[1]) = *(v36 + 2);
        v133 = *(*(mlx::core::scheduler::scheduler(v132) + 1) + 8 * *v36);
        std::mutex::lock(v133);
        if (*(v133 + 160) != 1)
        {
          v134 = *(v133 + 72);
          v135 = *(v133 + 80);
          v136 = 16 * (v135 - v134) - 1;
          if (v135 == v134)
          {
            v136 = 0;
          }

          if (v136 == *(v133 + 104) + *(v133 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v133 + 64));
            v134 = *(v133 + 72);
            v135 = *(v133 + 80);
          }

          if (v135 == v134)
          {
            v138 = 0;
          }

          else
          {
            v137 = *(v133 + 104) + *(v133 + 96);
            v138 = *(v134 + ((v137 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v137 & 0x7F);
          }

          *(v138 + 24) = 0;
          operator new();
        }

        v157 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v157, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v157, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v90 = mlx::core::cpu::get_command_encoder(v34, v35);
      v91 = *(*this + 152);
      v92 = *(*(v159[0] + 8) - 4);
      v94 = *(v159[0] + 152);
      v93 = *(v159[0] + 160);
      v95 = (*(v90 + 10) + 1) % 10;
      *(v90 + 10) = v95;
      v96 = mlx::core::scheduler::scheduler(v90);
      if (v95)
      {
        v97 = *(v96[1] + 8 * *v90);
        std::mutex::lock(v97);
        if (*(v97 + 160) != 1)
        {
          v98 = *(v97 + 72);
          v99 = *(v97 + 80);
          v100 = 16 * (v99 - v98) - 1;
          if (v99 == v98)
          {
            v100 = 0;
          }

          if (v100 == *(v97 + 104) + *(v97 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v97 + 64));
            v98 = *(v97 + 72);
            v99 = *(v97 + 80);
          }

          if (v99 == v98)
          {
            v102 = 0;
          }

          else
          {
            v101 = *(v97 + 104) + *(v97 + 96);
            v102 = *(v98 + ((v101 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v101 & 0x7F);
          }

          *(v102 + 24) = 0;
          operator new();
        }

        v154 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v154, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v154, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v96);
      v166[0] = *v90;
      LODWORD(v166[1]) = *(v90 + 2);
      v140 = *(*(mlx::core::scheduler::scheduler(v139) + 1) + 8 * *v90);
      std::mutex::lock(v140);
      if (*(v140 + 160) != 1)
      {
        v141 = *(v140 + 72);
        v142 = *(v140 + 80);
        v143 = 16 * (v142 - v141) - 1;
        if (v142 == v141)
        {
          v143 = 0;
        }

        if (v143 == *(v140 + 104) + *(v140 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v140 + 64));
          v141 = *(v140 + 72);
          v142 = *(v140 + 80);
        }

        if (v142 == v141)
        {
          v145 = 0;
        }

        else
        {
          v144 = *(v140 + 104) + *(v140 + 96);
          v145 = *(v141 + ((v144 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v144 & 0x7F);
        }

        *(v145 + 24) = 0;
        operator new();
      }

      v158 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v158, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v158, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    if (v20 == 9)
    {
      v49 = *(a1 + 8);
      v50 = *(a1 + 16);
      if (*(a1 + 20) == 1)
      {
        v51 = mlx::core::cpu::get_command_encoder(v49, v50);
        v52 = *(*this + 152);
        v53 = *(*(v159[0] + 8) - 4);
        v55 = *(v159[0] + 152);
        v54 = *(v159[0] + 160);
        v56 = (*(v51 + 10) + 1) % 10;
        *(v51 + 10) = v56;
        v57 = mlx::core::scheduler::scheduler(v51);
        if (v56)
        {
          v58 = *(v57[1] + 8 * *v51);
          std::mutex::lock(v58);
          if (*(v58 + 160) != 1)
          {
            v59 = *(v58 + 72);
            v60 = *(v58 + 80);
            v61 = 16 * (v60 - v59) - 1;
            if (v60 == v59)
            {
              v61 = 0;
            }

            if (v61 == *(v58 + 104) + *(v58 + 96))
            {
              std::deque<std::function<void ()(void)>>::__add_back_capacity((v58 + 64));
              v59 = *(v58 + 72);
              v60 = *(v58 + 80);
            }

            if (v60 == v59)
            {
              v63 = 0;
            }

            else
            {
              v62 = *(v58 + 104) + *(v58 + 96);
              v63 = *(v59 + ((v62 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v62 & 0x7F);
            }

            *(v63 + 24) = 0;
            operator new();
          }

          v152 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v152, "Cannot enqueue work after stream is stopped.");
          __cxa_throw(v152, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        mlx::core::scheduler::Scheduler::notify_new_task(v57);
        v166[0] = *v51;
        LODWORD(v166[1]) = *(v51 + 2);
        v119 = *(*(mlx::core::scheduler::scheduler(v118) + 1) + 8 * *v51);
        std::mutex::lock(v119);
        if (*(v119 + 160) != 1)
        {
          v120 = *(v119 + 72);
          v121 = *(v119 + 80);
          v122 = 16 * (v121 - v120) - 1;
          if (v121 == v120)
          {
            v122 = 0;
          }

          if (v122 == *(v119 + 104) + *(v119 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v119 + 64));
            v120 = *(v119 + 72);
            v121 = *(v119 + 80);
          }

          if (v121 == v120)
          {
            v124 = 0;
          }

          else
          {
            v123 = *(v119 + 104) + *(v119 + 96);
            v124 = *(v120 + ((v123 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v123 & 0x7F);
          }

          *(v124 + 24) = 0;
          operator new();
        }

        v155 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v155, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v155, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v77 = mlx::core::cpu::get_command_encoder(v49, v50);
      v78 = *(*this + 152);
      v79 = *(*(v159[0] + 8) - 4);
      v81 = *(v159[0] + 152);
      v80 = *(v159[0] + 160);
      v82 = (*(v77 + 10) + 1) % 10;
      *(v77 + 10) = v82;
      v83 = mlx::core::scheduler::scheduler(v77);
      if (v82)
      {
        v84 = *(v83[1] + 8 * *v77);
        std::mutex::lock(v84);
        if (*(v84 + 160) != 1)
        {
          v85 = *(v84 + 72);
          v86 = *(v84 + 80);
          v87 = 16 * (v86 - v85) - 1;
          if (v86 == v85)
          {
            v87 = 0;
          }

          if (v87 == *(v84 + 104) + *(v84 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v84 + 64));
            v85 = *(v84 + 72);
            v86 = *(v84 + 80);
          }

          if (v86 == v85)
          {
            v89 = 0;
          }

          else
          {
            v88 = *(v84 + 104) + *(v84 + 96);
            v89 = *(v85 + ((v88 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v88 & 0x7F);
          }

          *(v89 + 24) = 0;
          operator new();
        }

        v153 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v153, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v153, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v83);
      v166[0] = *v77;
      LODWORD(v166[1]) = *(v77 + 2);
      v126 = *(*(mlx::core::scheduler::scheduler(v125) + 1) + 8 * *v77);
      std::mutex::lock(v126);
      if (*(v126 + 160) != 1)
      {
        v127 = *(v126 + 72);
        v128 = *(v126 + 80);
        v129 = 16 * (v128 - v127) - 1;
        if (v128 == v127)
        {
          v129 = 0;
        }

        if (v129 == *(v126 + 104) + *(v126 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v126 + 64));
          v127 = *(v126 + 72);
          v128 = *(v126 + 80);
        }

        if (v128 == v127)
        {
          v131 = 0;
        }

        else
        {
          v130 = *(v126 + 104) + *(v126 + 96);
          v131 = *(v127 + ((v130 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v130 & 0x7F);
        }

        *(v131 + 24) = 0;
        operator new();
      }

      v156 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v156, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v156, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v20 == 10)
    {
      v21 = mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
      v22 = *(*this + 152);
      v23 = *(*(v159[0] + 8) - 4);
      v25 = *(v159[0] + 152);
      v24 = *(v159[0] + 160);
      v26 = (*(v21 + 10) + 1) % 10;
      *(v21 + 10) = v26;
      v27 = mlx::core::scheduler::scheduler(v21);
      if (v26)
      {
        v28 = *(v27[1] + 8 * *v21);
        std::mutex::lock(v28);
        if (*(v28 + 160) != 1)
        {
          v29 = *(v28 + 72);
          v30 = *(v28 + 80);
          v31 = 16 * (v30 - v29) - 1;
          if (v30 == v29)
          {
            v31 = 0;
          }

          if (v31 == *(v28 + 104) + *(v28 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v28 + 64));
            v29 = *(v28 + 72);
            v30 = *(v28 + 80);
          }

          if (v30 == v29)
          {
            v33 = 0;
          }

          else
          {
            v32 = *(v28 + 104) + *(v28 + 96);
            v33 = *(v29 + ((v32 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v32 & 0x7F);
          }

          *(v33 + 24) = 0;
          operator new();
        }

        v147 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v147, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v147, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v27);
      v166[0] = *v21;
      LODWORD(v166[1]) = *(v21 + 2);
      v111 = *(*(mlx::core::scheduler::scheduler(v110) + 1) + 8 * *v21);
      std::mutex::lock(v111);
      if (*(v111 + 160) != 1)
      {
        v112 = *(v111 + 72);
        v113 = *(v111 + 80);
        v114 = 16 * (v113 - v112) - 1;
        if (v113 == v112)
        {
          v114 = 0;
        }

        if (v114 == *(v111 + 104) + *(v111 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v111 + 64));
          v112 = *(v111 + 72);
          v113 = *(v111 + 80);
        }

        if (v113 == v112)
        {
          v116 = 0;
        }

        else
        {
          v115 = *(v111 + 104) + *(v111 + 96);
          v116 = *(v112 + ((v115 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v115 & 0x7F);
        }

        *(v116 + 24) = 0;
        operator new();
      }

      v150 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v150, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v150, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v146 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v146, "[softmax] Only defined for floating point types.");
  __cxa_throw(v146, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A3FBF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_free_exception(v20);
  std::mutex::unlock(v19);
  mlx::core::array::~array(&a10);
  _Unwind_Resume(a1);
}

void mlx::core::Softmax::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
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

void sub_25A3FC0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIffEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF38D8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIffEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIffEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::softmax<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *a1;
    v5 = vdupq_n_s32(0x3FB8AA3Bu);
    v6 = vdupq_n_s32(0x3920FDDEu);
    v7 = vdupq_n_s32(0x3AAF9F29u);
    v8 = vdupq_n_s32(0x3C1D96A6u);
    v9 = vdupq_n_s32(0x3D635774u);
    v10 = vdupq_n_s32(0x3E75FDEEu);
    v11 = vdupq_n_s32(0x3F317218u);
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V28.4S, #1.0 }

    v18 = vdupq_n_s32(0x42B00000u);
    v19 = vdupq_n_s32(0xC2B00000);
    LODWORD(v20) = *(a1 + 16);
    v21.i64[0] = 0x7F0000007FLL;
    v21.i64[1] = 0x7F0000007FLL;
    v22 = vnegq_f32(v21);
    v67 = v6;
    v68 = v5;
    v65 = v8;
    v66 = v7;
    v63 = v10;
    v64 = v9;
    v61 = _Q28;
    v62 = v11;
    v59 = v19;
    v60 = v18;
    v58 = v22;
    while (1)
    {
      v23 = v20;
      v24.i64[0] = 0x7F0000007FLL;
      v24.i64[1] = 0x7F0000007FLL;
      v25.i64[0] = 0x7F0000007FLL;
      v25.i64[1] = 0x7F0000007FLL;
      v26 = v20;
      v27 = v4;
      if (v20 >= 8)
      {
        v27 = v4;
        v26 = v20;
        do
        {
          v29 = *v27;
          v28 = *(v27 + 1);
          v27 += 2;
          v24 = vmaxnmq_f32(v29, v24);
          v25 = vmaxnmq_f32(v28, v25);
          v26 -= 8;
        }

        while (v26 > 7);
      }

      for (*&v1 = vmaxvq_f32(vmaxnmq_f32(v24, v25)); v26; --v26)
      {
        v30 = *v27;
        v27 = (v27 + 4);
        v31 = v30;
        if (*&v1 < v30)
        {
          *&v1 = v31;
        }
      }

      v32 = *(a1 + 8);
      v33 = 0uLL;
      if (v20 < 8)
      {
        v35 = 0uLL;
      }

      else
      {
        v34 = vdupq_lane_s32(*&v1, 0);
        v35 = 0uLL;
        do
        {
          v37 = *v4;
          v36 = *(v4 + 1);
          v4 += 2;
          v38 = vsubq_f32(v37, v34);
          v39 = vsubq_f32(v36, v34);
          v40 = vmulq_f32(v39, v5);
          v41 = vmulq_f32(v38, v5);
          v42 = vrndmq_f32(vaddq_f32(v40, v12));
          v43 = vrndmq_f32(vaddq_f32(v41, v12));
          v44 = vsubq_f32(v41, v43);
          v45 = vsubq_f32(v40, v42);
          v46 = vbicq_s8(vbslq_s8(vcgtq_f32(v38, v18), v22, vbslq_s8(vceqq_f32(v38, v38), vmulq_f32(vmlaq_f32(_Q28, v44, vmlaq_f32(v11, v44, vmlaq_f32(v10, v44, vmlaq_f32(v9, v44, vmlaq_f32(v8, v44, vmlaq_f32(v7, v6, v44)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v43), 0x17uLL), _Q28)), v38)), vcgtq_f32(v19, v38));
          v47 = vbicq_s8(vbslq_s8(vcgtq_f32(v39, v18), v22, vbslq_s8(vceqq_f32(v39, v39), vmulq_f32(vmlaq_f32(_Q28, v45, vmlaq_f32(v11, v45, vmlaq_f32(v10, v45, vmlaq_f32(v9, v45, vmlaq_f32(v8, v45, vmlaq_f32(v7, v6, v45)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v42), 0x17uLL), _Q28)), v39)), vcgtq_f32(v19, v39));
          *v32 = v46;
          v32[1] = v47;
          v32 += 2;
          v35 = vaddq_f32(v35, v47);
          v33 = vaddq_f32(v33, v46);
          v23 -= 8;
        }

        while (v23 > 7);
      }

      v48 = vaddq_f32(v33, v35);
      v49 = vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)));
      if (v23)
      {
        v69 = v1;
        do
        {
          --v23;
          v50 = *v4;
          v4 = (v4 + 4);
          v51 = expf(v50 - *&v1);
          v1 = v69;
          v32->f32[0] = v51;
          v32 = (v32 + 4);
          v49 = v49 + v51;
        }

        while (v23);
      }

      v52 = *(a1 + 8);
      v53 = *(a1 + 16);
      v54 = 1.0 / v49;
      if (v53 >= 8)
      {
        break;
      }

      v6 = v67;
      v5 = v68;
      v8 = v65;
      v7 = v66;
      v10 = v63;
      v9 = v64;
      _Q28 = v61;
      v11 = v62;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v19 = v59;
      v18 = v60;
      v22 = v58;
      if (*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v3;
      v56 = *(a1 + 20);
      v20 = *(a1 + 16);
      v4 = (*a1 + 4 * v20);
      v57 = *(a1 + 8) + 4 * v20;
      *a1 = v4;
      *(a1 + 8) = v57;
      if (v3 >= v56)
      {
        return;
      }
    }

    v6 = v67;
    v5 = v68;
    v8 = v65;
    v7 = v66;
    v10 = v63;
    v9 = v64;
    _Q28 = v61;
    v11 = v62;
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    v19 = v59;
    v18 = v60;
    v22 = v58;
    do
    {
      v55 = vmulq_n_f32(v52[1], v54);
      *v52 = vmulq_n_f32(*v52, v54);
      v52[1] = v55;
      v52 += 2;
      v53 -= 8;
    }

    while (v53 > 7);
    if (!v53)
    {
      goto LABEL_23;
    }

    do
    {
LABEL_22:
      v52->f32[0] = v54 * v52->f32[0];
      v52 = (v52 + 4);
      --v53;
    }

    while (v53);
    goto LABEL_23;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3958;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhfEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3A50;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhfEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhfEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::softmax<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *a1;
    v5 = vdupq_n_s32(0x3FB8AA3Bu);
    v6 = vdupq_n_s32(0x3920FDDEu);
    v7 = vdupq_n_s32(0x3AAF9F29u);
    v8 = vdupq_n_s32(0x3C1D96A6u);
    v9 = vdupq_n_s32(0x3D635774u);
    v10 = vdupq_n_s32(0x3E75FDEEu);
    v11 = vdupq_n_s32(0x3F317218u);
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V28.4S, #1.0 }

    v18 = vdupq_n_s32(0x42B00000u);
    v19 = vdupq_n_s32(0xC2B00000);
    LODWORD(v20) = *(a1 + 16);
    v21.i64[0] = 0x7F0000007FLL;
    v21.i64[1] = 0x7F0000007FLL;
    v22 = vnegq_f32(v21);
    v81 = v5;
    v79 = v7;
    v80 = v6;
    v77 = v9;
    v78 = v8;
    v75 = v11;
    v76 = v10;
    v73 = v18;
    v74 = _Q28;
    v71 = v22;
    v72 = v19;
    do
    {
      v23 = v20;
      v24.i64[0] = 0x7F0000007FLL;
      v24.i64[1] = 0x7F0000007FLL;
      v25.i64[0] = 0x7F0000007FLL;
      v25.i64[1] = 0x7F0000007FLL;
      v26 = v20;
      v27 = v4;
      if (v20 >= 8)
      {
        v27 = v4;
        v26 = v20;
        do
        {
          v28 = *v27++;
          v24 = vmaxnmq_f32(vcvtq_f32_f16(*v28.i8), v24);
          v25 = vmaxnmq_f32(vcvt_hight_f32_f16(v28), v25);
          v26 -= 8;
        }

        while (v26 > 7);
      }

      for (*&v1 = vmaxvq_f32(vmaxnmq_f32(v24, v25)); v26; --v26)
      {
        v29 = v27->i16[0];
        v27 = (v27 + 2);
        _H0 = v29;
        __asm { FCVT            S0, H0 }

        if (*&v1 < _S0)
        {
          *&v1 = _S0;
        }
      }

      v32 = 0uLL;
      v33 = 0uLL;
      v34 = v20;
      v35 = v4;
      if (v20 >= 8)
      {
        v36 = vdupq_lane_s32(*&v1, 0);
        v35 = v4;
        v34 = v20;
        do
        {
          v37 = *v35++;
          v38 = vsubq_f32(vcvtq_f32_f16(*v37.i8), v36);
          v39 = vsubq_f32(vcvt_hight_f32_f16(v37), v36);
          v40 = vmulq_f32(v39, v5);
          v41 = vmulq_f32(v38, v5);
          v42 = vrndmq_f32(vaddq_f32(v40, v12));
          v43 = vrndmq_f32(vaddq_f32(v41, v12));
          v44 = vsubq_f32(v41, v43);
          v45 = vsubq_f32(v40, v42);
          v33 = vaddq_f32(v33, vbicq_s8(vbslq_s8(vcgtq_f32(v39, v18), v22, vbslq_s8(vceqq_f32(v39, v39), vmulq_f32(vmlaq_f32(_Q28, v45, vmlaq_f32(v11, v45, vmlaq_f32(v10, v45, vmlaq_f32(v9, v45, vmlaq_f32(v8, v45, vmlaq_f32(v7, v6, v45)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v42), 0x17uLL), _Q28)), v39)), vcgtq_f32(v19, v39)));
          v32 = vaddq_f32(v32, vbicq_s8(vbslq_s8(vcgtq_f32(v38, v18), v22, vbslq_s8(vceqq_f32(v38, v38), vmulq_f32(vmlaq_f32(_Q28, v44, vmlaq_f32(v11, v44, vmlaq_f32(v10, v44, vmlaq_f32(v9, v44, vmlaq_f32(v8, v44, vmlaq_f32(v7, v6, v44)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v43), 0x17uLL), _Q28)), v38)), vcgtq_f32(v19, v38)));
          v34 -= 8;
        }

        while (v34 > 7);
      }

      v46 = vaddq_f32(v32, v33);
      v47 = vaddv_f32(vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)));
      for (i = v1; v34; v47 = v47 + v51)
      {
        --v34;
        v48 = v35->i16[0];
        v35 = (v35 + 2);
        _H0 = v48;
        __asm { FCVT            S0, H0 }

        v51 = expf(_S0 - *&v1);
        v1 = i;
      }

      v52 = *(a1 + 8);
      if (v23 >= 8)
      {
        v53 = vdupq_lane_s32(*&v1, 0);
        v54.i64[0] = 0x3F0000003F000000;
        v54.i64[1] = 0x3F0000003F000000;
        do
        {
          v55 = *v4++;
          v56 = vsubq_f32(vcvtq_f32_f16(*v55.i8), v53);
          v57 = vsubq_f32(vcvt_hight_f32_f16(v55), v53);
          v58 = vmulq_f32(v57, v81);
          v59 = vmulq_f32(v56, v81);
          v60 = vrndmq_f32(vaddq_f32(v59, v54));
          v61 = vrndmq_f32(vaddq_f32(v58, v54));
          v62 = vsubq_f32(v59, v60);
          v63 = vsubq_f32(v58, v61);
          *v52++ = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_n_f32(vbicq_s8(vbslq_s8(vcgtq_f32(v56, v73), v71, vbslq_s8(vceqq_f32(v56, v56), vmulq_f32(vmlaq_f32(v74, v62, vmlaq_f32(v75, v62, vmlaq_f32(v76, v62, vmlaq_f32(v77, v62, vmlaq_f32(v78, v62, vmlaq_f32(v79, v80, v62)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v60), 0x17uLL), v74)), v56)), vcgtq_f32(v72, v56)), 1.0 / v47)), vmulq_n_f32(vbicq_s8(vbslq_s8(vcgtq_f32(v57, v73), v71, vbslq_s8(vceqq_f32(v57, v57), vmulq_f32(vmlaq_f32(v74, v63, vmlaq_f32(v75, v63, vmlaq_f32(v76, v63, vmlaq_f32(v77, v63, vmlaq_f32(v78, v63, vmlaq_f32(v79, v80, v63)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v61), 0x17uLL), v74)), v57)), vcgtq_f32(v72, v57)), 1.0 / v47));
          v23 -= 8;
        }

        while (v23 > 7);
      }

      for (; v23; v52 = (v52 + 2))
      {
        --v23;
        v64 = v4->i16[0];
        v4 = (v4 + 2);
        _H0 = v64;
        __asm { FCVT            S0, H0 }

        v67 = expf(_S0 - *&v1);
        v1 = i;
        _S0 = (1.0 / v47) * v67;
        __asm { FCVT            H0, S0 }

        v52->i16[0] = LOWORD(_S0);
      }

      ++v3;
      v69 = *(a1 + 20);
      v20 = *(a1 + 16);
      v4 = (*a1 + 2 * v20);
      v70 = *(a1 + 8) + 2 * v20;
      *a1 = v4;
      *(a1 + 8) = v70;
      v5 = v81;
      v7 = v79;
      v6 = v80;
      v9 = v77;
      v8 = v78;
      v11 = v75;
      v10 = v76;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v18 = v73;
      _Q28 = v74;
      v22 = v71;
      v19 = v72;
    }

    while (v3 < v69);
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3AD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhDhEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3BC8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhDhEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIDhDhEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::softmax<half,half>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 20) >= 1)
  {
    v2 = 0;
    v3 = *a1;
    v63 = vdupq_n_s32(0x3920FDDEu);
    v64 = vdupq_n_s32(0x3FB8AA3Bu);
    v61 = vdupq_n_s32(0x3C1D96A6u);
    v62 = vdupq_n_s32(0x3AAF9F29u);
    v59 = vdupq_n_s32(0x3E75FDEEu);
    v60 = vdupq_n_s32(0x3D635774u);
    v57 = vdupq_n_s16(0x5580u);
    v58 = vdupq_n_s32(0x3F317218u);
    v4 = *(a1 + 16);
    __asm { FMOV            V0.4S, #1.0 }

    v55 = _Q0;
    v56 = vdupq_n_s16(0xD580u);
    do
    {
      v10 = v4;
      v11.i64[0] = 0xFC00FC00FC00FC00;
      v11.i64[1] = 0xFC00FC00FC00FC00;
      if (v4 >= 8)
      {
        do
        {
          v12 = *v3++;
          v11 = vmaxnmq_f16(v12, v11);
          v10 -= 8;
        }

        while (v10 > 7);
      }

      __fmaxf16();
      if (v10)
      {
        v15 = v63;
        v14 = v64;
        v16.i64[0] = 0x3F0000003F000000;
        v16.i64[1] = 0x3F0000003F000000;
        v18 = v61;
        v17 = v62;
        v20 = v59;
        v19 = v60;
        v22 = v57;
        v21 = v58;
        v24 = v55;
        v23 = v56;
        v25.i64[0] = 0x7C007C007C007C00;
        v25.i64[1] = 0x7C007C007C007C00;
        do
        {
          v26 = *v3->i16;
          v3 = (v3 + 2);
          v27 = v26;
          if (*_D0.i16 < v26)
          {
            *_D0.i16 = v27;
          }

          --v10;
        }

        while (v10);
      }

      else
      {
        v15 = v63;
        v14 = v64;
        v16.i64[0] = 0x3F0000003F000000;
        v16.i64[1] = 0x3F0000003F000000;
        v18 = v61;
        v17 = v62;
        v20 = v59;
        v19 = v60;
        v22 = v57;
        v21 = v58;
        v24 = v55;
        v23 = v56;
        v25.i64[0] = 0x7C007C007C007C00;
        v25.i64[1] = 0x7C007C007C007C00;
      }

      v29 = *a1;
      v28 = *(a1 + 8);
      v30 = *(a1 + 16);
      v31 = 0uLL;
      if (v30 >= 8)
      {
        v32 = vdupq_lane_s16(_D0, 0);
        do
        {
          v33 = *v29++;
          v34 = vsubq_f16(v33, v32);
          v35 = vmulq_f32(vcvt_hight_f32_f16(v34), v14);
          v36 = vmulq_f32(vcvtq_f32_f16(*v34.i8), v14);
          v37 = vrndmq_f32(vaddq_f32(v35, v16));
          v38 = vrndmq_f32(vaddq_f32(v36, v16));
          v39 = vsubq_f32(v36, v38);
          v40 = vsubq_f32(v35, v37);
          v41 = vbicq_s8(vbslq_s8(vcgtq_f16(v34, v22), v25, vbslq_s8(vceqq_f16(v34, v34), vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vmlaq_f32(v24, v39, vmlaq_f32(v21, v39, vmlaq_f32(v20, v39, vmlaq_f32(v19, v39, vmlaq_f32(v18, v39, vmlaq_f32(v17, v15, v39)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v38), 0x17uLL), v24))), vmulq_f32(vmlaq_f32(v24, v40, vmlaq_f32(v21, v40, vmlaq_f32(v20, v40, vmlaq_f32(v19, v40, vmlaq_f32(v18, v40, vmlaq_f32(v17, v15, v40)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v37), 0x17uLL), v24))), v34)), vcgtq_f16(v23, v34));
          *v28++ = v41;
          v31 = vaddq_f16(v31, v41);
          v30 -= 8;
        }

        while (v30 > 7);
      }

      v42 = vadd_f16(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
      v43 = vaddv_f16(vadd_f16(v42, vdup_lane_s32(v42, 1)));
      if (v30)
      {
        __asm { FCVT            S11, H0 }

        do
        {
          --v30;
          v45 = v29->i16[0];
          v29 = (v29 + 2);
          _H0 = v45;
          __asm { FCVT            S0, H0 }

          _S0 = expf(_S0 - _S11);
          __asm { FCVT            H0, S0 }

          v28->i16[0] = LOWORD(_S0);
          v28 = (v28 + 2);
          v43 = v43 + *&_S0;
        }

        while (v30);
      }

      v49 = *(a1 + 8);
      v50 = *(a1 + 16);
      v51 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / v43;
      if (v50 >= 8)
      {
        do
        {
          *v49 = vmulq_n_f16(*v49, v51);
          ++v49;
          v50 -= 8;
        }

        while (v50 > 7);
      }

      for (; v50; --v50)
      {
        *v49->i16 = v51 * *v49->i16;
        v49 = (v49 + 2);
      }

      ++v2;
      v52 = *(a1 + 8);
      v53 = *(a1 + 20);
      v54 = *(a1 + 16);
      v3 = (*a1 + 2 * v54);
      *a1 = v3;
      *(a1 + 8) = v52 + 2 * v54;
      v4 = v54;
    }

    while (v2 < v53);
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<half,half>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<half,half>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3C48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<half,half>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<half,half>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16EfEEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3D40;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16EfEEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16EfEEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(unsigned __int16 **a1)
{
  if (*(a1 + 5) >= 1)
  {
    v2 = 0;
    v3 = *a1;
    v4 = *(a1 + 4);
    do
    {
      if (v4)
      {
        v5 = v4;
        v6 = -INFINITY;
        v7 = v3;
        v8 = v5;
        do
        {
          v9 = *v7++;
          LODWORD(v10) = v9 << 16;
          if (v6 < COERCE_FLOAT(v9 << 16))
          {
            v6 = v10;
          }

          --v8;
        }

        while (v8);
        v11 = 0.0;
        do
        {
          v12 = *v3++;
          v11 = v11 + mlx::core::simd::exp<float,1>(COERCE_FLOAT(v12 << 16) - v6);
          --v5;
        }

        while (v5);
        v13 = *(a1 + 4);
        v3 = *a1;
        v14 = a1[1];
        if (!v13)
        {
          v4 = 0;
          goto LABEL_16;
        }

        v15 = 1.0 / v11;
        do
        {
          v16 = v15 * mlx::core::simd::exp<float,1>(COERCE_FLOAT(*v3 << 16) - v6);
          *v14++ = (LODWORD(v16) + (HIWORD(LODWORD(v16)) & 1u) + 0x7FFF) >> 16;
          ++v3;
          --v13;
        }

        while (v13);
        v4 = *(a1 + 4);
        v3 = *a1;
      }

      v14 = a1[1];
LABEL_16:
      ++v2;
      v3 += v4;
      *a1 = v3;
      a1[1] = &v14[v4];
    }

    while (v2 < *(a1 + 5));
  }
}

float mlx::core::simd::exp<float,1>(float a1)
{
  v1 = floor((a1 * 1.4427) + 0.5);
  v2 = (a1 * 1.4427) - v1;
  v3 = ((((((((((((v2 * 0.00015353) + 0.0013399) * v2) + 0.0096184) * v2) + 0.055503) * v2) + 0.24023) * v2) + 0.69315) * v2) + 1.0) * COERCE_FLOAT((v1 << 23) + 1065353216);
  if (a1 > 88.0)
  {
    v3 = INFINITY;
  }

  v4 = a1 < -88.0;
  result = 0.0;
  if (!v4)
  {
    return v3;
  }

  return result;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3DC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16ES9_EEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3EB8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16ES9_EEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxINS3_13_MLX_BFloat16ES9_EEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t result)
{
  if (*(result + 20) >= 1)
  {
    v1 = result;
    v2 = 0;
    v3 = *result;
    v4 = *(result + 16);
    do
    {
      if (v4)
      {
        v5 = v4;
        v6 = 65408;
        v7 = v3;
        v8 = v5;
        do
        {
          v10 = *v7++;
          v9 = v10;
          if (COERCE_FLOAT(v10 << 16) > COERCE_FLOAT(v6 << 16))
          {
            v6 = v9;
          }

          --v8;
        }

        while (v8);
        v11 = 0;
        LODWORD(v12) = v6 << 16;
        v13 = *(v1 + 8);
        do
        {
          result = mlx::core::simd::exp<mlx::core::_MLX_BFloat16,1>((COERCE_INT(COERCE_FLOAT(*v3 << 16) - v12) + (HIWORD(COERCE_UNSIGNED_INT(COERCE_FLOAT(*v3 << 16) - v12)) & 1) + 0x7FFF) >> 16);
          *v13 = result;
          v11 = (COERCE_INT(COERCE_FLOAT(v11 << 16) + COERCE_FLOAT(result << 16)) + (HIWORD(COERCE_UNSIGNED_INT(COERCE_FLOAT(v11 << 16) + COERCE_FLOAT(result << 16))) & 1) + 0x7FFF) >> 16;
          ++v3;
          ++v13;
          --v5;
        }

        while (v5);
        LODWORD(v14) = v11 << 16;
      }

      else
      {
        v14 = 0.0;
      }

      LODWORD(v15) = (COERCE_INT(1.0 / v14) + (HIWORD(COERCE_UNSIGNED_INT(1.0 / v14)) & 1) + 0x7FFF) & 0xFFFF0000;
      v16 = *(v1 + 8);
      v4 = *(v1 + 16);
      if (v4)
      {
        v17 = *(v1 + 8);
        v18 = v4;
        do
        {
          *v17 = (COERCE_INT(v15 * COERCE_FLOAT(*v17 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v15 * COERCE_FLOAT(*v17 << 16))) & 1) + 0x7FFF) >> 16;
          ++v17;
          --v18;
        }

        while (v18);
      }

      ++v2;
      v3 = (*v1 + 2 * v4);
      *v1 = v3;
      *(v1 + 8) = v16 + 2 * v4;
    }

    while (v2 < *(v1 + 20));
  }

  return result;
}

uint64_t mlx::core::simd::exp<mlx::core::_MLX_BFloat16,1>(int a1)
{
  v1 = COERCE_FLOAT(a1 << 16) * 1.4427;
  v2 = floor(v1 + 0.5);
  v3 = v1 - v2;
  v4 = ((((((((((((v3 * 0.00015353) + 0.0013399) * v3) + 0.0096184) * v3) + 0.055503) * v3) + 0.24023) * v3) + 0.69315) * v3) + 1.0) * COERCE_FLOAT((v2 << 23) + 1065353216);
  if (COERCE_FLOAT(a1 << 16) > 88.0)
  {
    v4 = INFINITY;
  }

  v5 = 0.0;
  if (COERCE_FLOAT(a1 << 16) >= -88.0)
  {
    v5 = v4;
  }

  return (LODWORD(v5) + (HIWORD(LODWORD(v5)) & 1u) + 0x7FFF) >> 16;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF3F38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIddEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4030;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIddEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_17softmaxIddEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::softmax<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *a1;
    v65 = vdupq_n_s64(0xFFF0000000000000);
    v5 = vdupq_n_s32(0x3FB8AA3Bu);
    v6 = vdupq_n_s32(0x3920FDDEu);
    v7 = vdupq_n_s32(0x3AAF9F29u);
    v8 = vdupq_n_s32(0x3C1D96A6u);
    v9 = vdupq_n_s32(0x3D635774u);
    v10 = vdupq_n_s32(0x3E75FDEEu);
    v11 = vdupq_n_s32(0x3F317218u);
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V24.4S, #1.0 }

    v18 = vdupq_n_s32(0x42B00000u);
    v19 = vdupq_n_s32(0xC2B00000);
    LODWORD(v20) = *(a1 + 16);
    v21.i64[0] = 0x7F0000007FLL;
    v21.i64[1] = 0x7F0000007FLL;
    v22 = vnegq_f32(v21);
    v63 = v6;
    v64 = v5;
    v61 = v8;
    v62 = v7;
    v59 = v10;
    v60 = v9;
    v57 = _Q24;
    v58 = v11;
    v55 = v19;
    v56 = v18;
    v54 = v22;
    while (1)
    {
      v23 = v20;
      v24 = v65;
      v25 = v65;
      v26 = v20;
      v27 = v4;
      if (v20 >= 4)
      {
        v27 = v4;
        v26 = v20;
        v24 = v65;
        v25 = v65;
        do
        {
          v29 = *v27;
          v28 = *(v27 + 1);
          v27 += 2;
          v25 = vmaxnmq_f64(v29, v25);
          v24 = vmaxnmq_f64(v28, v24);
          v26 -= 4;
        }

        while (v26 > 3);
      }

      for (*&v1 = vpmaxq_f64(vmaxnmq_f64(v25, v24)); v26; --v26)
      {
        v30 = *v27;
        v27 = (v27 + 8);
        v31 = v30;
        if (*&v1 < v30)
        {
          *&v1 = v31;
        }
      }

      v32 = *(a1 + 8);
      v33 = 0uLL;
      if (v20 < 4)
      {
        v35 = 0uLL;
      }

      else
      {
        v34 = vdupq_lane_s64(v1, 0);
        v35 = 0uLL;
        do
        {
          v36 = *v4;
          v37 = *(v4 + 1);
          v4 += 2;
          v38 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(v36, v34)), vsubq_f64(v37, v34));
          v39 = vmulq_f32(v38, v5);
          v40 = vrndmq_f32(vaddq_f32(v39, v12));
          v41 = vsubq_f32(v39, v40);
          v42 = vbicq_s8(vbslq_s8(vcgtq_f32(v38, v18), v22, vbslq_s8(vceqq_f32(v38, v38), vmulq_f32(vmlaq_f32(_Q24, v41, vmlaq_f32(v11, v41, vmlaq_f32(v10, v41, vmlaq_f32(v9, v41, vmlaq_f32(v8, v41, vmlaq_f32(v7, v6, v41)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v40), 0x17uLL), _Q24)), v38)), vcgtq_f32(v19, v38));
          v43 = vcvtq_f64_f32(*v42.f32);
          v44 = vcvt_hight_f64_f32(v42);
          *v32 = v43;
          v32[1] = v44;
          v32 += 2;
          v35 = vaddq_f64(v35, v44);
          v33 = vaddq_f64(v33, v43);
          v23 -= 4;
        }

        while (v23 > 3);
      }

      v45 = vaddvq_f64(vaddq_f64(v33, v35));
      if (v23)
      {
        v66 = v1;
        do
        {
          --v23;
          v46 = *v4;
          v4 = (v4 + 8);
          v47 = exp(v46 - *&v1);
          v1 = v66;
          v32->f64[0] = v47;
          v32 = (v32 + 8);
          v45 = v45 + v47;
        }

        while (v23);
      }

      v48 = *(a1 + 8);
      v49 = *(a1 + 16);
      v50 = 1.0 / v45;
      if (v49 >= 4)
      {
        break;
      }

      v6 = v63;
      v5 = v64;
      v8 = v61;
      v7 = v62;
      v10 = v59;
      v9 = v60;
      _Q24 = v57;
      v11 = v58;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v19 = v55;
      v18 = v56;
      v22 = v54;
      if (*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v3;
      v52 = *(a1 + 20);
      v20 = *(a1 + 16);
      v4 = (*a1 + 8 * v20);
      v53 = *(a1 + 8) + 8 * v20;
      *a1 = v4;
      *(a1 + 8) = v53;
      if (v3 >= v52)
      {
        return;
      }
    }

    v6 = v63;
    v5 = v64;
    v8 = v61;
    v7 = v62;
    v10 = v59;
    v9 = v60;
    _Q24 = v57;
    v11 = v58;
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    v19 = v55;
    v18 = v56;
    v22 = v54;
    do
    {
      v51 = vmulq_n_f64(v48[1], v50);
      *v48 = vmulq_n_f64(*v48, v50);
      v48[1] = v51;
      v48 += 2;
      v49 -= 4;
    }

    while (v49 > 3);
    if (!v49)
    {
      goto LABEL_23;
    }

    do
    {
LABEL_22:
      v48->f64[0] = v50 * v48->f64[0];
      v48 = (v48 + 8);
      --v49;
    }

    while (v49);
    goto LABEL_23;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF40B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::softmax<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::softmax<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Eigh::eval_cpu(uint64_t a1, uint64_t ***a2, void **a3)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  if (*(a1 + 48) == 1)
  {
    v5 = v4[3];
    v16[0] = v4[2];
    v16[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = *v3;
    __p = 0;
    v14 = 0;
    v15 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v6, v6[1], (v6[1] - *v6) >> 2);
    v7 = (*v3)[7];
    v11 = 0;
    v12 = 0;
    memset(v10, 0, sizeof(v10));
    mlx::core::array::array(v16, &__p, v7 & 0xFFFFFFFFFFLL, &v11, v10);
    v9[0] = v10;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v9);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  v8 = mlx::core::allocator::malloc((*(*v4 + 60) * *(*v4 + 48)));
  v17[0] = &unk_286BE3468;
  v17[1] = mlx::core::allocator::free;
  v17[3] = v17;
  mlx::core::array::set_data(v4, v8);
}

void sub_25A3FEB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  __cxa_free_exception(v23);
  std::mutex::unlock(v22);
  mlx::core::array::~array(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::Eigh::~Eigh(void **this)
{
  *this = &unk_286BF41A8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_286BF41A8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x25F851760);
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIfEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4220;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIfEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIfEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::eigh_impl<float>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t *a1)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v16 = 0;
  LODWORD(v14[0]) = 0;
  LODWORD(v23) = 0;
  ssyevd_NEWLAPACK();
  v17 = v23;
  v18 = 0.0;
  v2 = mlx::core::allocator::malloc((4 * 0.0));
  v22[0] = &unk_286BE3468;
  v22[1] = mlx::core::allocator::free;
  v22[3] = v22;
  v23 = v2;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](v24, v22);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v22);
  v3 = mlx::core::allocator::malloc((4 * v17));
  v19[0] = &unk_286BE3468;
  v19[1] = mlx::core::allocator::free;
  v19[3] = v19;
  v20 = v3;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](&v21, v19);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v19);
  if (a1[3] >= (*(a1 + 5) * *(a1 + 5)))
  {
    v4 = 0;
    v5 = *a1;
    v6 = a1[1];
    do
    {
      mlx::core::allocator::Buffer::raw_ptr(&v23);
      mlx::core::allocator::Buffer::raw_ptr(&v20);
      ssyevd_NEWLAPACK();
      v7 = *(a1 + 5);
      v8 = (v7 * v7);
      v9 = a1[1] + 4 * v7;
      *a1 += 4 * v8;
      a1[1] = v9;
      if (v16)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "[Eigh::eval_cpu] Eigenvalue decomposition failed with error code ", 65);
        MEMORY[0x25F851360](v11, v16);
        exception = __cxa_allocate_exception(0x10uLL);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v14, v13);
        MEMORY[0x25F851100](exception, v13);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      ++v4;
    }

    while (v4 < a1[3] / v8);
  }

  mlx::core::array::Data::~Data(&v20);
  mlx::core::array::Data::~Data(&v23);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_25A3FF0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
      mlx::core::array::Data::~Data((v20 - 184));
      mlx::core::array::Data::~Data((v20 - 112));
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::eigh_impl<float>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::eigh_impl<float>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF42A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::eigh_impl<float>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::eigh_impl<float>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIdEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4398;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIdEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19eigh_implIdEEvRNS3_5arrayESA_RKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::eigh_impl<double>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t *a1)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v14[0] = 0;
  LODWORD(v23) = 0;
  dsyevd_NEWLAPACK();
  v17 = v23;
  v18 = 0.0;
  v2 = mlx::core::allocator::malloc((8 * 0.0));
  v22[0] = &unk_286BE3468;
  v22[1] = mlx::core::allocator::free;
  v22[3] = v22;
  v23 = v2;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](v24, v22);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v22);
  v3 = mlx::core::allocator::malloc((4 * v17));
  v19[0] = &unk_286BE3468;
  v19[1] = mlx::core::allocator::free;
  v19[3] = v19;
  v20 = v3;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](&v21, v19);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v19);
  if (a1[3] >= (*(a1 + 5) * *(a1 + 5)))
  {
    v4 = 0;
    v5 = *a1;
    v6 = a1[1];
    do
    {
      mlx::core::allocator::Buffer::raw_ptr(&v23);
      mlx::core::allocator::Buffer::raw_ptr(&v20);
      dsyevd_NEWLAPACK();
      v7 = *(a1 + 5);
      v8 = (v7 * v7);
      v9 = a1[1] + 8 * v7;
      *a1 += 8 * v8;
      a1[1] = v9;
      if (v16)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "[Eigh::eval_cpu] Eigenvalue decomposition failed with error code ", 65);
        MEMORY[0x25F851360](v11, v16);
        exception = __cxa_allocate_exception(0x10uLL);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v14, v13);
        MEMORY[0x25F851100](exception, v13);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      ++v4;
    }

    while (v4 < a1[3] / v8);
  }

  mlx::core::array::Data::~Data(&v20);
  mlx::core::array::Data::~Data(&v23);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_25A3FF67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
      mlx::core::array::Data::~Data((v20 - 184));
      mlx::core::array::Data::~Data((v20 - 112));
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::eigh_impl<double>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::eigh_impl<double>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4418;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::eigh_impl<double>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::eigh_impl<double>(mlx::core::array &,mlx::core::array &,std::string const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::BlockMaskedMM::eval_cpu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[150] = *MEMORY[0x277D85DE8];
  v3 = *(*a3 + 56);
  if (v3 == 10)
  {
    v5 = mlx::core::allocator::malloc((*(*a3 + 48) * BYTE4(v3)));
    v7[0] = &unk_286BE3468;
    v7[1] = mlx::core::allocator::free;
    v7[3] = v7;
    mlx::core::array::set_data(a3, v5);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[BlockMaskedMM::eval] Currently only supports float32.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A400B60(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  mlx::core::array::~array(&STACK[0x278]);
  mlx::core::array::~array(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

void mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(uint64_t a1@<X0>, uint64_t **a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v11 = **a2;
  v12 = v10[1];
  v13 = (v12 - v11) >> 2;
  if (a4)
  {
    goto LABEL_2;
  }

  if (v12 == v11)
  {
    goto LABEL_39;
  }

  v19 = v10[3];
  v20 = *(v19 + 8 * (v13 - 2));
  v21 = *(v19 + 8 * (v13 - 1));
  if (v20 != *(v11 + 4 * (v13 - 1)) || v21 != 1)
  {
    if (v20 != 1)
    {
      goto LABEL_2;
    }

    if (v13 > 1)
    {
      if (v21 == *(v11 + 4 * (v13 - 2)))
      {
        if (a3)
        {
          v37 = 0;
          v38 = 0;
          v36 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v36, v11, v12, v13);
          v23 = (*a2)[7];
          v34 = 0;
          v35 = 0;
          memset(v33, 0, sizeof(v33));
          mlx::core::array::array(&v45, &v36, v23 & 0xFFFFFFFFFFLL, &v34, v33);
          v47 = v33;
          std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v47);
          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          }

          if (v36)
          {
            v37 = v36;
            operator delete(v36);
          }

          mlx::core::copy(a2, &v45, 1u, *a1, *(a1 + 8));
          *a5 = 1;
          v24 = v45;
          v17 = v46;
          *(a5 + 8) = v21;
LABEL_32:
          *(a5 + 16) = v24;
LABEL_8:
          *(a5 + 24) = v17;
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          *(a5 + 32) = 1;
          mlx::core::array::~array(&v45);
          return;
        }

        *a5 = 1;
        *(a5 + 8) = v21;
        goto LABEL_34;
      }

LABEL_2:
      v31 = 0;
      v32 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v11, v12, v13);
      v14 = (*a2)[7];
      v28 = 0;
      v29 = 0;
      memset(v27, 0, sizeof(v27));
      mlx::core::array::array(&v45, &__p, v14 & 0xFFFFFFFFFFLL, &v28, v27);
      v47 = v27;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v47);
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      mlx::core::copy(a2, &v45, 2u, *a1, *(a1 + 8));
      v15 = (*a2)[1];
      if (v15 == **a2)
      {
        std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
      }

      v16 = *(v15 - 4);
      *a5 = 0;
      v18 = v45;
      v17 = v46;
      *(a5 + 8) = v16;
      *(a5 + 16) = v18;
      goto LABEL_8;
    }

LABEL_39:
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  if (a3)
  {
    v43 = 0;
    v44 = 0;
    v42 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v42, v11, v12, v13);
    v25 = (*a2)[7];
    v40 = 0;
    v41 = 0;
    memset(v39, 0, sizeof(v39));
    mlx::core::array::array(&v45, &v42, v25 & 0xFFFFFFFFFFLL, &v40, v39);
    v47 = v39;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v47);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    mlx::core::copy(a2, &v45, 1u, *a1, *(a1 + 8));
    *a5 = 0;
    v24 = v45;
    v17 = v46;
    *(a5 + 8) = v20;
    goto LABEL_32;
  }

  *a5 = 0;
  *(a5 + 8) = v20;
LABEL_34:
  *(a5 + 16) = v10;
  v26 = a2[1];
  *(a5 + 24) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
  }

  *(a5 + 32) = 0;
}

void *mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(void *a1)
{
  v2 = a1[42];
  if (v2)
  {
    a1[43] = v2;
    operator delete(v2);
  }

  v3 = a1[39];
  if (v3)
  {
    a1[40] = v3;
    operator delete(v3);
  }

  v4 = a1[36];
  if (v4)
  {
    a1[37] = v4;
    operator delete(v4);
  }

  v5 = a1[33];
  if (v5)
  {
    a1[34] = v5;
    operator delete(v5);
  }

  v6 = a1[30];
  if (v6)
  {
    a1[31] = v6;
    operator delete(v6);
  }

  v7 = a1[27];
  if (v7)
  {
    a1[28] = v7;
    operator delete(v7);
  }

  v8 = a1[24];
  if (v8)
  {
    a1[25] = v8;
    operator delete(v8);
  }

  v9 = a1[21];
  if (v9)
  {
    a1[22] = v9;
    operator delete(v9);
  }

  v10 = a1[18];
  if (v10)
  {
    a1[19] = v10;
    operator delete(v10);
  }

  v11 = a1[15];
  if (v11)
  {
    a1[16] = v11;
    operator delete(v11);
  }

  return a1;
}

void mlx::core::GatherMM::eval_cpu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[123] = *MEMORY[0x277D85DE8];
  v3 = *(*a3 + 56);
  if (v3 == 10)
  {
    v5 = mlx::core::allocator::malloc((*(*a3 + 48) * BYTE4(v3)));
    v7[0] = &unk_286BE3468;
    v7[1] = mlx::core::allocator::free;
    v7[3] = v7;
    mlx::core::array::set_data(a3, v5);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[GatherMM::eval] Currently only supports float32.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A40225C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  mlx::core::array::~array(&STACK[0x298]);
  mlx::core::array::~array(&STACK[0x2B8]);
  STACK[0x320] = &STACK[0x2E0];
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&STACK[0x320]);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1::operator()@<X0>(uint64_t result@<X0>, mlx::core::array *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = **a2;
  v7 = v5[1];
  v8 = v7 - v6;
  if (v7 == v6)
  {
    goto LABEL_21;
  }

  v9 = v8 >> 2;
  v10 = (v8 >> 2) - 2;
  v11 = (v8 >> 2) - 1;
  v12 = v5[3];
  v13 = *(v12 + 8 * v10);
  v14 = *(v12 + 8 * v11);
  if (v13 == *(v6 + 4 * v11) && v14 == 1)
  {
    *a3 = 0;
    *(a3 + 8) = v13;
    goto LABEL_11;
  }

  v16 = result;
  if (v13 == 1)
  {
    if (v9 <= 1)
    {
      goto LABEL_21;
    }

    if (v14 == *(v6 + 4 * v10))
    {
      *a3 = 1;
      *(a3 + 8) = v14;
LABEL_11:
      *(a3 + 16) = v5;
      v17 = *(a2 + 1);
      goto LABEL_18;
    }
  }

  v18 = *(result + 16);
  v28 = 0;
  v29 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v6, v7, v9);
  v19 = *(*a2 + 56);
  v25 = 0;
  v26 = 0;
  memset(v24, 0, sizeof(v24));
  mlx::core::array::array(v30, &__p, v19 & 0xFFFFFFFFFFLL, &v25, v24);
  std::vector<mlx::core::array>::push_back[abi:ne200100](v18, v30);
  mlx::core::array::~array(v30);
  v31 = v24;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v31);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  result = mlx::core::copy(a2, (*(*(v16 + 16) + 8) - 16), 2u, *v16, *(v16 + 8));
  v20 = *(*a2 + 8);
  if (v20 == **a2)
  {
LABEL_21:
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *(v20 - 4);
  v22 = *(*(v16 + 16) + 8);
  *a3 = 0;
  v23 = *(v22 - 16);
  v17 = *(v22 - 8);
  *(a3 + 8) = v21;
  *(a3 + 16) = v23;
LABEL_18:
  *(a3 + 24) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_25A402654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  mlx::core::array::~array((v16 - 56));
  *(v16 - 40) = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(void *a1)
{
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  v6 = a1[20];
  if (v6)
  {
    a1[21] = v6;
    operator delete(v6);
  }

  v7 = a1[17];
  if (v7)
  {
    a1[18] = v7;
    operator delete(v7);
  }

  v8 = a1[14];
  if (v8)
  {
    a1[15] = v8;
    operator delete(v8);
  }

  v9 = a1[11];
  if (v9)
  {
    a1[12] = v9;
    operator delete(v9);
  }

  return a1;
}

mlx::core::array *std::vector<mlx::core::array>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<mlx::core::array*>>,std::move_iterator<std::__wrap_iter<mlx::core::array*>>>(uint64_t *a1, mlx::core::array *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v8) >> 4)
  {
    v10 = *a1;
    v11 = a5 + ((v8 - *a1) >> 4);
    if (v11 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = v9 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v26[4] = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a1, v14);
    }

    v23 = (16 * v15);
    v26[0] = 0;
    v26[1] = 16 * v15;
    v26[3] = 0;
    v24 = 16 * a5;
    do
    {
      *v23++ = *a3;
      *a3 = 0;
      *(a3 + 8) = 0;
      a3 += 16;
      v24 -= 16;
    }

    while (v24);
    v26[2] = 16 * v15 + 16 * a5;
    v5 = std::vector<mlx::core::array>::__swap_out_circular_buffer(a1, v26, v5);
    std::__split_buffer<mlx::core::array>::~__split_buffer(v26);
    return v5;
  }

  v16 = (v8 - a2) >> 4;
  if (v16 >= a5)
  {
    std::vector<mlx::core::array>::__move_range(a1, a2, v8, a2 + 16 * a5);
    v22 = (a3 + 16 * a5);
    v21 = a3;
    goto LABEL_18;
  }

  v17 = (v8 - a2 + a3);
  v18 = a1[1];
  if (v17 != a4)
  {
    v18 = a1[1];
    v19 = v8 - a2 + a3;
    v20 = v18;
    do
    {
      *v20++ = *v19;
      *v19 = 0;
      *(v19 + 8) = 0;
      v19 += 16;
      ++v18;
    }

    while (v19 != a4);
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    std::vector<mlx::core::array>::__move_range(a1, a2, v8, a2 + 16 * a5);
    v21 = a3;
    v22 = v17;
LABEL_18:
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<mlx::core::array *,mlx::core::array *,mlx::core::array *>(v26, v21, v22, v5);
  }

  return v5;
}

void sub_25A402934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4620;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  bzero(*(a1 + 24), *(a1 + 32));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF46A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF4798;
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 3);
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF4798;
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 3);

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4798;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::__bind(a2 + 24, (a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(void *a1)
{
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 3);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  v1 = std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13BlockMaskedMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::__bind(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 64) = v7;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 120, *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 2);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 144, *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 3);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 3);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 288, *(a2 + 36), *(a2 + 37), (*(a2 + 37) - *(a2 + 36)) >> 3);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 312, *(a2 + 39), *(a2 + 40), (*(a2 + 40) - *(a2 + 39)) >> 3);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 336, *(a2 + 42), *(a2 + 43), (*(a2 + 43) - *(a2 + 42)) >> 3);
  v10 = *(a2 + 361);
  *(a1 + 363) = *(a2 + 363);
  *(a1 + 361) = v10;
  return a1;
}

void sub_25A402FA8(_Unwind_Exception *exception_object)
{
  v9 = v1[39];
  if (v9)
  {
    v1[40] = v9;
    operator delete(v9);
  }

  v10 = v1[36];
  if (v10)
  {
    v1[37] = v10;
    operator delete(v10);
  }

  v11 = v1[33];
  if (v11)
  {
    v1[34] = v11;
    operator delete(v11);
  }

  v12 = *v7;
  if (*v7)
  {
    v1[31] = v12;
    operator delete(v12);
  }

  v13 = *v6;
  if (*v6)
  {
    v1[28] = v13;
    operator delete(v13);
  }

  v14 = *v5;
  if (*v5)
  {
    v1[25] = v14;
    operator delete(v14);
  }

  v15 = *v4;
  if (*v4)
  {
    v1[22] = v15;
    operator delete(v15);
  }

  v16 = *v3;
  if (*v3)
  {
    v1[19] = v16;
    operator delete(v16);
  }

  v17 = *v2;
  if (*v2)
  {
    v1[16] = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::operator()[abi:ne200100]<>(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    v2 = 0;
    v39 = (result + 288);
    v40 = (result + 216);
    v37 = (result + 312);
    v38 = (result + 240);
    v35 = (result + 336);
    v36 = (result + 264);
    do
    {
      v41 = *v1;
      v3 = *(v1 + 80);
      v4 = *(v1 + 120);
      v5 = (*(v1 + 128) - v4) >> 2;
      v42 = *(v1 + 64);
      v6 = (v5 - 1);
      v7 = 0;
      if (v5 - 1 >= 0)
      {
        quot = v42 * v2 * v3;
        v9 = *(v1 + 144);
        do
        {
          v10 = ldiv(quot, *(v4 + 4 * v6));
          quot = v10.quot;
          v7 += *(v9 + 8 * v6--) * v10.rem;
        }

        while (v6 != -1);
      }

      v11 = *(v1 + 8);
      v12 = *(v1 + 72);
      v13 = *(v1 + 168);
      v14 = (*(v1 + 176) - v13) >> 2;
      v15 = 0;
      v16 = (v14 - 1);
      if (v14 - 1 >= 0)
      {
        v17 = v3 * v2 * v12;
        v18 = *(v1 + 192);
        do
        {
          v19 = ldiv(v17, *(v13 + 4 * v16));
          v17 = v19.quot;
          v15 += *(v18 + 8 * v16--) * v19.rem;
        }

        while (v16 != -1);
      }

      v20 = (v41 + 4 * v7);
      v21 = (v11 + 4 * v15);
      v22 = *(v1 + 16);
      if (*(v1 + 48) == 1)
      {
        v23 = *(v1 + 96);
        if (*(v1 + 88))
        {
          v24 = 1;
        }

        else
        {
          v24 = *(v1 + 96);
        }

        if (*(v1 + 88))
        {
          v25 = *(v1 + 96);
        }

        else
        {
          v25 = 1;
        }

        mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::operator()(*(v1 + 24), v20, *(v1 + 52), v2, v42, v3, v24, v25, v40, v39, *(v1 + 361));
        v26 = *(v1 + 104);
        if (*(v1 + 89))
        {
          v27 = 1;
        }

        else
        {
          v27 = *(v1 + 104);
        }

        if (*(v1 + 89))
        {
          v28 = *(v1 + 104);
        }

        else
        {
          v28 = 1;
        }

        mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::operator()(*(v1 + 32), v21, *(v1 + 52), v2, *(v1 + 80), *(v1 + 72), v27, v28, v38, v37, *(v1 + 362));
        v29 = *(v1 + 64);
        v30 = *(v1 + 72);
        v31 = *(v1 + 80);
      }

      *(v1 + 88);
      *(v1 + 89);
      v32 = *(v1 + 96);
      v34 = *(v1 + 112);
      v33 = *(v1 + 104);
      result = cblas_sgemm_NEWLAPACK();
      if (*(v1 + 49) == 1)
      {
        result = mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::operator()(*(v1 + 40), (v22 + 4 * v42 * v2 * v12), *(v1 + 52), v2, *(v1 + 64), *(v1 + 72), *(v1 + 72), 1, v36, v35, *(v1 + 363));
      }

      ++v2;
    }

    while (*(v1 + 56) > v2);
  }

  return result;
}

uint64_t mlx::core::elem_to_loc(int quot, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = (a2[1] - *a2) >> 2;
  v5 = 0;
  v6 = (v4 - 1);
  if (v4 - 1 >= 0)
  {
    v7 = *a3;
    do
    {
      v8 = ldiv(quot, *(v3 + 4 * v6));
      quot = v8.quot;
      v5 += *(v7 + 8 * v6--) * v8.rem;
    }

    while (v6 != -1);
  }

  return v5;
}

uint64_t mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::operator()(uint64_t a1, float *a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, char a11)
{
  v17 = (a9[1] - *a9) >> 2;
  v18 = v17 - 1;
  v19 = v17 - 2;
  result = mlx::core::elem_to_loc(*(*a9 + 4 * (v17 - 1)) * a4 * *(*a9 + 4 * (v17 - 2)), a9, a10);
  v73 = *(*a10 + 8 * v19);
  v21 = *(*a10 + 8 * v18);
  v22 = a3 - 1;
  v74 = a5;
  v23 = ((a3 - 1 + a5) / a3);
  if (a11)
  {
    if (v23 >= 1)
    {
      v24 = 0;
      v70 = a1 + result;
      v78 = &a2[3 * a8];
      v71 = 4 * a7 * a3;
      v25 = 4 * a8 * a3;
      result = 4 * a7;
      v77 = &a2[2 * a8];
      v76 = &a2[a8];
      v26 = vdupq_n_s64(4uLL);
      v27 = a5;
      v28 = ((v22 + a6) / a3);
      v72 = ((a3 - 1 + a5) / a3);
      do
      {
        if (a3 >= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = a3;
        }

        if (v28 >= 1)
        {
          v30 = 0;
          v31 = v29;
          v32 = v78;
          if (v74 - v24 * a3 >= a3)
          {
            v33 = a3;
          }

          else
          {
            v33 = v74 - v24 * a3;
          }

          v34 = a2;
          v36 = v76;
          v35 = v77;
          v37 = a6;
          do
          {
            if (a3 >= v37)
            {
              LODWORD(v38) = v37;
            }

            else
            {
              LODWORD(v38) = a3;
            }

            if (v38 <= 1)
            {
              v38 = 1;
            }

            else
            {
              v38 = v38;
            }

            if ((*(v70 + v24 * v73 + v30 * v21) & 1) == 0 && v33 >= 1)
            {
              v39 = 0;
              v40 = (v38 + 3) & 0xFFFFFFFC;
              v41 = vdupq_n_s64(v38 - 1);
              v42 = v34;
              v43 = v36;
              v44 = v35;
              v45 = v32;
              do
              {
                if (v30 * a3 < a6)
                {
                  v46 = 0;
                  v47 = v40;
                  v48 = xmmword_25A99B0D0;
                  v49 = xmmword_25A99B0C0;
                  do
                  {
                    v50 = vmovn_s64(vcgeq_u64(v41, v48));
                    if (vuzp1_s16(v50, 2).u8[0])
                    {
                      v42[v46] = 0.0;
                    }

                    if (vuzp1_s16(v50, 2).i8[2])
                    {
                      v43[v46] = 0.0;
                    }

                    if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v41, *&v49))).i32[1])
                    {
                      v44[v46] = 0.0;
                      v45[v46] = 0.0;
                    }

                    v49 = vaddq_s64(v49, v26);
                    v48 = vaddq_s64(v48, v26);
                    v46 += 4 * a8;
                    v47 -= 4;
                  }

                  while (v47);
                }

                ++v39;
                v45 = (v45 + result);
                v44 = (v44 + result);
                v43 = (v43 + result);
                v42 = (v42 + result);
              }

              while (v39 != v31);
            }

            ++v30;
            v37 -= a3;
            v32 = (v32 + v25);
            v35 = (v35 + v25);
            v36 = (v36 + v25);
            v34 = (v34 + v25);
          }

          while (v30 != v28);
        }

        ++v24;
        v27 -= a3;
        v78 = (v78 + v71);
        v77 = (v77 + v71);
        v76 = (v76 + v71);
        a2 = (a2 + v71);
      }

      while (v24 != v72);
    }
  }

  else if (v23 >= 1)
  {
    v51 = 0;
    v52 = a1 + 4 * result;
    v53 = 4 * a7 * a3;
    v54 = 4 * a8 * a3;
    v55 = 4 * a7;
    result = 4 * a8;
    v56 = a5;
    v57 = ((v22 + a6) / a3);
    do
    {
      if (a3 >= v56)
      {
        v58 = v56;
      }

      else
      {
        v58 = a3;
      }

      if (v57 >= 1)
      {
        v59 = 0;
        v60 = a5 - v51 * a3;
        if (v60 >= a3)
        {
          v60 = a3;
        }

        v61 = a2;
        v62 = a6;
        do
        {
          if (a3 >= v62)
          {
            LODWORD(v63) = v62;
          }

          else
          {
            LODWORD(v63) = a3;
          }

          if (v63 <= 1)
          {
            v63 = 1;
          }

          else
          {
            v63 = v63;
          }

          v64 = *(v52 + 4 * v51 * v73 + 4 * v59 * v21);
          if (v64 != 1.0 && v60 >= 1)
          {
            v66 = 0;
            v67 = v61;
            do
            {
              v68 = v67;
              v69 = v63;
              if (v59 * a3 < a6)
              {
                do
                {
                  *v68 = v64 * *v68;
                  v68 = (v68 + result);
                  --v69;
                }

                while (v69);
              }

              ++v66;
              v67 = (v67 + v55);
            }

            while (v66 != v58);
          }

          ++v59;
          v62 -= a3;
          v61 = (v61 + v54);
        }

        while (v59 != v57);
      }

      ++v51;
      v56 -= a3;
      a2 = (a2 + v53);
    }

    while (v51 != v23);
  }

  return result;
}

void *std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4818;
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 1);
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4818;
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4818;
  result = std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::__bind(a2 + 8, (a1 + 8));
  *(a2 + 380) = 0;
  *(a2 + 377) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::destroy_deallocate(void *a1)
{
  mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2::~$_2(a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::BlockMaskedMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4910;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    bzero(*(a1 + 24), 4 * v1);
  }

  v2 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4990;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    bzero(*(a1 + 8), 4 * v1);
  }
}

uint64_t std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF4A88;
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 3);
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF4A88;
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 3);

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4A88;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::__bind(a2 + 24, a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(void *a1)
{
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 3);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  v1 = std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8GatherMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::__bind(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 112, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 136, *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 2);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 160, *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 3);
  v8 = *(a2 + 184);
  *(a1 + 200) = 0;
  *(a1 + 184) = v8;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 224, *(a2 + 224), *(a2 + 232), (*(a2 + 232) - *(a2 + 224)) >> 2);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 248, *(a2 + 248), *(a2 + 256), (*(a2 + 256) - *(a2 + 248)) >> 3);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 272, *(a2 + 272), *(a2 + 280), (*(a2 + 280) - *(a2 + 272)) >> 3);
  return a1;
}

void sub_25A403F90(_Unwind_Exception *exception_object)
{
  v10 = *v8;
  if (*v8)
  {
    v1[32] = v10;
    operator delete(v10);
  }

  v11 = *v7;
  if (*v7)
  {
    v1[29] = v11;
    operator delete(v11);
  }

  v12 = *v6;
  if (*v6)
  {
    v1[26] = v12;
    operator delete(v12);
  }

  v13 = *v5;
  if (*v5)
  {
    v1[21] = v13;
    operator delete(v13);
  }

  v14 = *v4;
  if (*v4)
  {
    v1[18] = v14;
    operator delete(v14);
  }

  v15 = *v3;
  if (*v3)
  {
    v1[15] = v15;
    operator delete(v15);
  }

  v16 = *v2;
  if (*v2)
  {
    v1[12] = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::operator()[abi:ne200100]<>(uint64_t result)
{
  if (*(result + 184))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(v1 + 72);
      v4 = *(v1 + 88);
      v5 = (*(v1 + 96) - v4) >> 2;
      v6 = 0;
      v7 = (v5 - 1);
      if (v5 - 1 >= 0)
      {
        v8 = *(v1 + 112);
        quot = v2;
        do
        {
          v10 = ldiv(quot, *(v4 + 4 * v7));
          quot = v10.quot;
          v6 += *(v8 + 8 * v7--) * v10.rem;
        }

        while (v7 != -1);
      }

      v11 = *(v3 + 4 * v6);
      v12 = *(v1 + 80);
      v13 = *(v1 + 136);
      v14 = (*(v1 + 144) - v13) >> 2;
      v15 = 0;
      v16 = (v14 - 1);
      if (v14 - 1 >= 0)
      {
        v17 = *(v1 + 160);
        v18 = v2;
        do
        {
          v19 = ldiv(v18, *(v13 + 4 * v16));
          v18 = v19.quot;
          v15 += *(v17 + 8 * v16--) * v19.rem;
        }

        while (v16 != -1);
      }

      v20 = *(v12 + 4 * v15);
      *(v1 + 64);
      *(v1 + 65);
      v40 = *(v1 + 32);
      v41 = *(v1 + 24);
      v39 = *(v1 + 40);
      v38 = *v1;
      v21 = *(v1 + 200);
      v22 = (*(v1 + 208) - v21) >> 2;
      v23 = 0;
      v24 = (v22 - 1);
      if (v22 - 1 >= 0)
      {
        v25 = *(v1 + 248);
        do
        {
          v26 = ldiv(v11, *(v21 + 4 * v24));
          v23 += *(v25 + 8 * v24--) * v26.rem;
          v11 = v26.quot;
        }

        while (v24 != -1);
      }

      v27 = *(v1 + 48);
      v28 = *(v1 + 8);
      v29 = *(v1 + 224);
      v30 = (*(v1 + 232) - v29) >> 2;
      v31 = 0;
      v32 = (v30 - 1);
      if (v30 - 1 >= 0)
      {
        v33 = *(v1 + 272);
        do
        {
          v34 = ldiv(v20, *(v29 + 4 * v32));
          v31 += *(v33 + 8 * v32--) * v34.rem;
          v20 = v34.quot;
        }

        while (v32 != -1);
      }

      v37 = *(v1 + 68);
      v36 = *(v1 + 16) + 4 * *(v1 + 192) * v2;
      v35 = *(v1 + 56);
      result = cblas_sgemm_NEWLAPACK();
      ++v2;
    }

    while (*(v1 + 184) > v2);
  }

  return result;
}

void *std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4B08;
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 1);
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4B08;
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4B08;
  result = std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::__bind(a2 + 8, a1 + 8);
  *(a2 + 308) = 0;
  *(a2 + 305) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::destroy_deallocate(void *a1)
{
  mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3::~$_3(a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::GatherMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Convolution::eval_cpu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
  v5[0] = &unk_286BE3468;
  v5[1] = mlx::core::allocator::free;
  v5[3] = v5;
  mlx::core::array::set_data(a3, v4);
}

void sub_25A4069B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  mlx::core::array::~array(&STACK[0x418]);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::conv_1D_cpu(__int128 **a1, __int128 **a2, uint64_t a3, int **a4, int **a5, int **a6, int **a7, uint64_t a8, uint64_t a9, int a10)
{
  *&v208[20] = *MEMORY[0x277D85DE8];
  v16 = *a1;
  if (**a6 == 1)
  {
    v17 = *(v16 + 1);
    v18 = **a7;
    if (v18 == 1 && (a8 & 1) == 0)
    {
      v19 = *a3;
      v20 = *(a3 + 8);
      v195[2] = *a3;
      v195[3] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        v16 = *a1;
        v17 = *(*a1 + 1);
      }

      v21 = *v16;
      v22 = v17 - v21;
      if (v22 > 4 && v22 != 8)
      {
        v24 = v19;
        v23 = *v19;
        if ((v24[1] - v23) >= 5)
        {
          v25 = **a2;
          v26 = *(*a2 + 1) - v25;
          if (v26 > 4 && v26 != 8)
          {
            v28 = *v21;
            v27 = v21[1];
            v29 = v21[2];
            v30 = *(v23 + 4);
            v180 = *v25;
            v185 = v25[1];
            v181 = v25[2];
            mlx::core::cpu::get_command_encoder(a9, a10);
            LODWORD(v206) = v28;
            HIDWORD(v206) = v27 + 2 * **a4;
            v207 = v29;
            v204 = 0;
            v205 = 0;
            v203 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v203, &v206, v208, 3uLL);
            v200 = 0;
            v201 = 0;
            v199 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v199, v203, v204, (v204 - v203) >> 2);
            v197 = 0;
            v198 = 0;
            memset(v196, 0, sizeof(v196));
            mlx::core::array::array(&v202, &v199, 0x40000000ALL, &v197, v196);
            v206 = v196;
            std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v206);
            if (v198)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v198);
            }

            if (v199)
            {
              v200 = v199;
              operator delete(v199);
            }

            memset(&v195[72], 0, 24);
            mlx::core::array::array<int>();
          }
        }
      }

      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    }

    if (v18 == 1 && *(v17 - 4) / *(*(*a2 + 1) - 4) == 1)
    {
      v31 = *(a3 + 8);
      v195[0] = *a3;
      v195[1] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
      }
    }
  }

  v32 = *a3;
  v33 = *(a3 + 8);
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    v16 = *a1;
  }

  v34 = *(v16 + 14);
  if (v34 != 9)
  {
    if (v34 != 12)
    {
      if (v34 == 10)
      {
        v203 = v32;
        v204 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        command_encoder = mlx::core::cpu::get_command_encoder(a9, a10);
        v36 = *a1;
        v38 = **a1;
        v37 = *(*a1 + 1);
        v39 = v37 - v38;
        if (v37 != v38 && v39 >= 5 && v203[1] - *v203 >= 5uLL)
        {
          v40 = *a2;
          v41 = **a2;
          v42 = *(*a2 + 1) - v41;
          if (v42 >= 5 && v39 != 8 && v42 != 8)
          {
            v43 = command_encoder;
            v153 = *(v36 + 19);
            v156 = *(v40 + 19);
            v44 = **a7;
            v45 = *(v38 + 1);
            v150 = *(*v203 + 4);
            v46 = *(v38 + 2);
            v47 = v41[1];
            v48 = v41[2];
            v144 = *v38;
            v147 = *v41;
            v49 = *(v36 + 3);
            v159 = *v49;
            v162 = v203[19];
            v165 = v49[1];
            v171 = v49[2];
            v50 = *(v40 + 3);
            v51 = v50[1];
            v168 = *v50;
            v52 = v50[2];
            v53 = v203[3];
            v177 = *v53;
            v182 = v53[1];
            v186 = v53[2];
            v189 = **a5;
            v192 = **a4;
            v174 = **a6;
            v54 = (*(command_encoder + 10) + 1) % 10;
            *(command_encoder + 10) = v54;
            v55 = mlx::core::scheduler::scheduler(command_encoder);
            if (v54)
            {
              v56 = *(v55[1] + 8 * *v43);
              std::mutex::lock(v56);
              if (*(v56 + 160) != 1)
              {
                v57 = *(v56 + 72);
                v58 = *(v56 + 80);
                v59 = 16 * (v58 - v57) - 1;
                if (v58 == v57)
                {
                  v59 = 0;
                }

                if (v59 == *(v56 + 104) + *(v56 + 96))
                {
                  std::deque<std::function<void ()(void)>>::__add_back_capacity((v56 + 64));
                  v57 = *(v56 + 72);
                  v58 = *(v56 + 80);
                }

                if (v58 == v57)
                {
                  v61 = 0;
                }

                else
                {
                  v60 = *(v56 + 104) + *(v56 + 96);
                  v61 = *(v57 + ((v60 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v60 & 0x7F);
                }

                *(v61 + 24) = 0;
                operator new();
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
              __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            mlx::core::scheduler::Scheduler::notify_new_task(v55);
            v206 = *v43;
            v207 = *(v43 + 2);
            v131 = *(*(mlx::core::scheduler::scheduler(v130) + 1) + 8 * *v43);
            std::mutex::lock(v131);
            if (*(v131 + 160) != 1)
            {
              v132 = *(v131 + 72);
              v133 = *(v131 + 80);
              v134 = 16 * (v133 - v132) - 1;
              if (v133 == v132)
              {
                v134 = 0;
              }

              if (v134 == *(v131 + 104) + *(v131 + 96))
              {
                std::deque<std::function<void ()(void)>>::__add_back_capacity((v131 + 64));
                v132 = *(v131 + 72);
                v133 = *(v131 + 80);
              }

              if (v133 == v132)
              {
                v136 = 0;
              }

              else
              {
                v135 = *(v131 + 104) + *(v131 + 96);
                v136 = *(v132 + ((v135 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v135 & 0x7F);
              }

              *(v136 + 24) = 0;
              operator new();
            }

            v143 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v143, "Cannot enqueue work after stream is stopped.");
            __cxa_throw(v143, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }

        std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
      }

      v137 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v137, "[Convolution::eval] got unsupported data type.");
      v137->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v137, off_279921408, MEMORY[0x277D82610]);
    }

    v203 = v32;
    v204 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    }

    v62 = mlx::core::cpu::get_command_encoder(a9, a10);
    v63 = *a1;
    v65 = **a1;
    v64 = *(*a1 + 1);
    v66 = v64 - v65;
    if (v64 != v65 && v66 >= 5 && v203[1] - *v203 >= 5uLL)
    {
      v67 = *a2;
      v68 = **a2;
      v69 = *(*a2 + 1) - v68;
      if (v69 >= 5 && v66 != 8 && v69 != 8)
      {
        v70 = v62;
        v154 = *(v63 + 19);
        v157 = *(v67 + 19);
        v71 = **a7;
        v72 = *(v65 + 1);
        v151 = *(*v203 + 4);
        v73 = *(v65 + 2);
        v74 = v68[1];
        v75 = v68[2];
        v145 = *v65;
        v148 = *v68;
        v76 = *(v63 + 3);
        v160 = *v76;
        v163 = v203[19];
        v166 = v76[1];
        v172 = v76[2];
        v77 = *(v67 + 3);
        v78 = v77[1];
        v169 = *v77;
        v79 = v77[2];
        v80 = v203[3];
        v178 = *v80;
        v183 = v80[1];
        v187 = v80[2];
        v190 = **a5;
        v193 = **a4;
        v175 = **a6;
        v81 = (*(v62 + 10) + 1) % 10;
        *(v62 + 10) = v81;
        v82 = mlx::core::scheduler::scheduler(v62);
        if (v81)
        {
          v83 = *(v82[1] + 8 * *v70);
          std::mutex::lock(v83);
          if (*(v83 + 160) != 1)
          {
            v84 = *(v83 + 72);
            v85 = *(v83 + 80);
            v86 = 16 * (v85 - v84) - 1;
            if (v85 == v84)
            {
              v86 = 0;
            }

            if (v86 == *(v83 + 104) + *(v83 + 96))
            {
              std::deque<std::function<void ()(void)>>::__add_back_capacity((v83 + 64));
              v84 = *(v83 + 72);
              v85 = *(v83 + 80);
            }

            if (v85 == v84)
            {
              v88 = 0;
            }

            else
            {
              v87 = *(v83 + 104) + *(v83 + 96);
              v88 = *(v84 + ((v87 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v87 & 0x7F);
            }

            *(v88 + 24) = 0;
            operator new();
          }

          v138 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v138, "Cannot enqueue work after stream is stopped.");
          __cxa_throw(v138, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        mlx::core::scheduler::Scheduler::notify_new_task(v82);
        v206 = *v70;
        v207 = *(v70 + 2);
        v117 = *(*(mlx::core::scheduler::scheduler(v116) + 1) + 8 * *v70);
        std::mutex::lock(v117);
        if (*(v117 + 160) != 1)
        {
          v118 = *(v117 + 72);
          v119 = *(v117 + 80);
          v120 = 16 * (v119 - v118) - 1;
          if (v119 == v118)
          {
            v120 = 0;
          }

          if (v120 == *(v117 + 104) + *(v117 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v117 + 64));
            v118 = *(v117 + 72);
            v119 = *(v117 + 80);
          }

          if (v119 == v118)
          {
            v122 = 0;
          }

          else
          {
            v121 = *(v117 + 104) + *(v117 + 96);
            v122 = *(v118 + ((v121 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v121 & 0x7F);
          }

          *(v122 + 24) = 0;
          operator new();
        }

        v141 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v141, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v141, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v203 = v32;
  v204 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  v89 = mlx::core::cpu::get_command_encoder(a9, a10);
  v90 = *a1;
  v92 = **a1;
  v91 = *(*a1 + 1);
  v93 = v91 - v92;
  if (v91 != v92 && v93 >= 5 && v203[1] - *v203 >= 5uLL)
  {
    v94 = *a2;
    v95 = **a2;
    v96 = *(*a2 + 1) - v95;
    if (v96 >= 5 && v93 != 8 && v96 != 8)
    {
      v97 = v89;
      v155 = *(v90 + 19);
      v158 = *(v94 + 19);
      v98 = **a7;
      v99 = *(v92 + 1);
      v152 = *(*v203 + 4);
      v100 = *(v92 + 2);
      v101 = v95[1];
      v102 = v95[2];
      v146 = *v92;
      v149 = *v95;
      v103 = *(v90 + 3);
      v161 = *v103;
      v164 = v203[19];
      v167 = v103[1];
      v173 = v103[2];
      v104 = *(v94 + 3);
      v105 = v104[1];
      v170 = *v104;
      v106 = v104[2];
      v107 = v203[3];
      v179 = *v107;
      v184 = v107[1];
      v188 = v107[2];
      v191 = **a5;
      v194 = **a4;
      v176 = **a6;
      v108 = (*(v89 + 10) + 1) % 10;
      *(v89 + 10) = v108;
      v109 = mlx::core::scheduler::scheduler(v89);
      if (v108)
      {
        v110 = *(v109[1] + 8 * *v97);
        std::mutex::lock(v110);
        if (*(v110 + 160) != 1)
        {
          v111 = *(v110 + 72);
          v112 = *(v110 + 80);
          v113 = 16 * (v112 - v111) - 1;
          if (v112 == v111)
          {
            v113 = 0;
          }

          if (v113 == *(v110 + 104) + *(v110 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v110 + 64));
            v111 = *(v110 + 72);
            v112 = *(v110 + 80);
          }

          if (v112 == v111)
          {
            v115 = 0;
          }

          else
          {
            v114 = *(v110 + 104) + *(v110 + 96);
            v115 = *(v111 + ((v114 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v114 & 0x7F);
          }

          *(v115 + 24) = 0;
          operator new();
        }

        v139 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v139, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v139, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v109);
      v206 = *v97;
      v207 = *(v97 + 2);
      v124 = *(*(mlx::core::scheduler::scheduler(v123) + 1) + 8 * *v97);
      std::mutex::lock(v124);
      if (*(v124 + 160) != 1)
      {
        v125 = *(v124 + 72);
        v126 = *(v124 + 80);
        v127 = 16 * (v126 - v125) - 1;
        if (v126 == v125)
        {
          v127 = 0;
        }

        if (v127 == *(v124 + 104) + *(v124 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v124 + 64));
          v125 = *(v124 + 72);
          v126 = *(v124 + 80);
        }

        if (v126 == v125)
        {
          v129 = 0;
        }

        else
        {
          v128 = *(v124 + 104) + *(v124 + 96);
          v129 = *(v125 + ((v128 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v128 & 0x7F);
        }

        *(v129 + 24) = 0;
        operator new();
      }

      v142 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v142, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v142, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A408940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v27);
  std::mutex::unlock(v28);
  mlx::core::array::~array((v29 - 184));
  mlx::core::array::~array(&a27);
  _Unwind_Resume(a1);
}

void mlx::core::Convolution::~Convolution(mlx::core::Convolution *this)
{
  *this = &unk_286BF4C00;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

{
  *this = &unk_286BF4C00;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(__int128 **a1, __int128 **a2, uint64_t a3, int **a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = **a1;
  v10 = *(*a1 + 1);
  v11 = **a1;
  if (v10 != v11)
  {
    v16 = *v11;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v45, (v11 + 1), (v10 - 1), v10 - 1 - (v11 + 1));
    v17 = **a3 + 4;
    v18 = *(*a3 + 8) - 4;
    memset(v44, 0, sizeof(v44));
    std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v44, v17, v18, (v18 - v17) >> 2);
    v19 = **a2;
    v20 = *(*a2 + 1);
    v21 = **a2;
    if (v20 != v21)
    {
      v22 = *v21;
      v23 = *(v20 - 1);
      memset(v43, 0, sizeof(v43));
      std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v43, (v21 + 1), (v20 - 1), v20 - 1 - (v21 + 1));
      mlx::core::cpu::get_command_encoder(a7, a8);
      std::vector<int>::vector[abi:ne200100](&v41, (*(*a1 + 1) - **a1) >> 2);
      v24 = v41;
      *v41 = v16;
      v25 = v45;
      if (v46 != v45)
      {
        v26 = v46 - v45;
        v27 = *a4;
        if (v26 <= 1)
        {
          v26 = 1;
        }

        v28 = v24 + 4;
        do
        {
          v30 = *v25++;
          v29 = v30;
          v31 = *v27++;
          *v28++ = v29 + 2 * v31;
          --v26;
        }

        while (v26);
      }

      v32 = v42;
      *(v42 - 4) = v23;
      v39 = 0;
      v38 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v24, v32, (v32 - v24) >> 2);
      v36 = 0;
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      mlx::core::array::array(&v40, &__p, 0x40000000ALL, &v35, v34);
      *&v48 = v34;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v48);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      if (__p)
      {
        v38 = __p;
        operator delete(__p);
      }

      mlx::core::array::array<int>();
    }

    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A409E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, void *__p, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v72);
  std::mutex::unlock(v73);
  mlx::core::array::~array(&a33);
  mlx::core::array::~array(&a43);
  mlx::core::array::~array(&a45);
  mlx::core::array::~array(&a56);
  if (__p)
  {
    a59 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array(&a69);
  if (a71)
  {
    a72 = a71;
    operator delete(a71);
  }

  v76 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v76;
    operator delete(v76);
  }

  mlx::core::array::~array(&STACK[0x260]);
  STACK[0x208] = &STACK[0x270];
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&STACK[0x208]);
  mlx::core::array::~array(&STACK[0x2D0]);
  v77 = STACK[0x2E0];
  if (STACK[0x2E0])
  {
    STACK[0x2E8] = v77;
    operator delete(v77);
  }

  v78 = *(v74 - 248);
  if (v78)
  {
    *(v74 - 240) = v78;
    operator delete(v78);
  }

  v79 = *(v74 - 224);
  if (v79)
  {
    *(v74 - 216) = v79;
    operator delete(v79);
  }

  v80 = *(v74 - 200);
  if (v80)
  {
    *(v74 - 192) = v80;
    operator delete(v80);
  }

  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE7__cloneEPNS0_6__baseISQ_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4C88;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_0>::operator()[abi:ne200100]<>(uint64_t *result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = 0;
    v3 = *result;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = *result + 4 * (v5 - 1) * v4;
    v7 = 4 * v5 * v4;
    do
    {
      if (v5 >= 2)
      {
        result = 0;
        v8 = v3;
        v9 = v6;
        do
        {
          if (v4)
          {
            for (i = 0; i != v4; ++i)
            {
              v11 = *(v8 + 4 * i);
              *(v8 + 4 * i) = *(v9 + 4 * i);
              *(v9 + 4 * i) = v11;
            }
          }

          result = (result + 1);
          v9 -= 4 * v4;
          v8 += 4 * v4;
        }

        while (result != (v5 >> 1));
      }

      ++v2;
      v6 += v7;
      v3 += v7;
    }

    while (v2 != v1);
  }

  return result;
}

__n128 std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4D08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF4E00;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF4E00;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE7__cloneEPNS0_6__baseISQ_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4E00;
  v3 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v3;
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 48) = 0;
  v6 = a2 + 48;
  *(a2 + 40) = v5;
  *(a2 + 24) = v4;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 48, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  *(v6 + 24) = *(a1 + 72);
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    __p[7] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_ND_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_bNS3_6StreamEE3__1JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>::operator()[abi:ne200100]<>(uint64_t *a1)
{
  v1 = a1[3];
  v2 = *v1;
  v3 = *a1;
  v8 = *(a1 + 12);
  v7 = a1[2];
  v6 = v1[1];
  v5 = a1[1];
  return cblas_sgemm_NEWLAPACK();
}

void *std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4E80;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4E80;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4E80;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 32) = 0;
  v5 = (a2 + 32);
  *(a2 + 24) = v4;
  *(a2 + 8) = v3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 32, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 2);
  v5[6] = *(a1 + 56);
  *(v5 + 33) = 0;
  v5[9] = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    __p[5] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_ND_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::$_1>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::~Stream(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    a1[28] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;
    operator delete(v5);
  }

  return a1;
}

void *mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(void *a1)
{
  v2 = a1[35];
  if (v2)
  {
    a1[36] = v2;
    operator delete(v2);
  }

  v3 = a1[32];
  if (v3)
  {
    a1[33] = v3;
    operator delete(v3);
  }

  v4 = a1[29];
  if (v4)
  {
    a1[30] = v4;
    operator delete(v4);
  }

  v5 = a1[26];
  if (v5)
  {
    a1[27] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void sub_25A40AC14(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[31] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[28] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[25] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF4F78;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF4F78;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4F78;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[36];
  if (v2)
  {
    __p[37] = v2;
    operator delete(v2);
  }

  v3 = __p[33];
  if (v3)
  {
    __p[34] = v3;
    operator delete(v3);
  }

  v4 = __p[30];
  if (v4)
  {
    __p[31] = v4;
    operator delete(v4);
  }

  v5 = __p[27];
  if (v5)
  {
    __p[28] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::__bind(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void sub_25A40B0AC(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[31] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[28] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[25] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v1 = a1;
  v2 = (a1 + 264);
  v3 = *(a1 + 264);
  v4 = *v3;
  v5 = *v3 == 1 && v3[1] == 1 && v3[2] == 1;
  v154 = v5;
  v6 = *(v1 + 240);
  v7 = (v1 + 216);
  v8 = (v1 + 60);
  v135 = (v1 + 240);
  v136 = (v1 + 68);
  v9 = *v6;
  v127 = (v1 + 64);
  if (*(v1 + 288))
  {
    v10 = -v9;
    v12 = v6[1];
    v11 = v6[2];
    v13 = -v12;
    v14 = -v11;
    v15 = (*v8 - 1) * v9;
    v143 = (*(v1 + 64) - 1) * v12;
    v16 = (*(v1 + 68) - 1) * v11;
  }

  else
  {
    v143 = 0;
    v15 = 0;
    v16 = 0;
    v13 = v6[1];
    v14 = v6[2];
    v10 = *v6;
  }

  v17 = std::lcm[abi:ne200100]<int,int>(v4, v9);
  v18 = *(*v135 + 4);
  v153 = v17 / **v135;
  v19 = std::lcm[abi:ne200100]<int,int>((*v2)[1], v18);
  v20 = *(*v135 + 8);
  v152 = v19 / *(*v135 + 4);
  v151 = std::lcm[abi:ne200100]<int,int>((*v2)[2], v20) / *(*v135 + 8);
  v21 = std::lcm[abi:ne200100]<int,int>(**v2, **v7);
  v22 = (*v7)[1];
  v150 = v21 / **v7;
  v23 = std::lcm[abi:ne200100]<int,int>((*v2)[1], v22);
  v24 = (*v7)[2];
  v149 = v23 / (*v7)[1];
  v148 = std::lcm[abi:ne200100]<int,int>((*v2)[2], v24) / (*v7)[2];
  std::vector<int>::vector[abi:ne200100](v147, v150);
  std::vector<int>::vector[abi:ne200100](v146, v149);
  std::vector<int>::vector[abi:ne200100](v145, v148);
  v25 = (v1 + 192);
  if (v150 >= 1)
  {
    v26 = 0;
    v27 = *v7;
    v28 = *v25;
    v29 = v147[0];
    v30 = *v2;
    do
    {
      if (*v8 < 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0;
        v32 = v15 + *v27 * v26 - *v28;
        while (v32 % *v30)
        {
          ++v31;
          v32 += v10;
          if (*v8 == v31)
          {
            v31 = *v8;
            break;
          }
        }
      }

      v29[v26++] = v31;
    }

    while (v26 < v150);
  }

  v134 = (v1 + 288);
  v133 = (v1 + 56);
  if (v149 >= 1)
  {
    v33 = 0;
    v34 = *v7;
    v35 = *v25;
    v36 = v146[0];
    v37 = *v2;
    do
    {
      if (*v127 < 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = 0;
        v39 = v143 + v34[1] * v33 - v35[1];
        while (v39 % v37[1])
        {
          ++v38;
          v39 += v13;
          if (*v127 == v38)
          {
            v38 = *v127;
            break;
          }
        }
      }

      v36[v33++] = v38;
    }

    while (v33 < v149);
  }

  if (v148 >= 1)
  {
    v40 = 0;
    v41 = *v7;
    v42 = *v25;
    v43 = v145[0];
    v44 = *v2;
    do
    {
      if (*v136 < 1)
      {
        v45 = 0;
      }

      else
      {
        v45 = 0;
        v46 = v16 + v41[2] * v40 - v42[2];
        while (v46 % v44[2])
        {
          ++v45;
          v46 += v14;
          if (*v136 == v45)
          {
            v45 = *v136;
            break;
          }
        }
      }

      v43[v40++] = v45;
    }

    while (v40 < v148);
  }

  v144[0] = v1 + 160;
  v144[1] = v1 + 168;
  v144[2] = v1 + 176;
  v144[3] = v1 + 216;
  v144[4] = v1 + 192;
  v144[5] = v147;
  v144[6] = &v150;
  v144[7] = v146;
  v144[8] = &v149;
  v144[9] = v145;
  v144[10] = &v148;
  v144[11] = v1 + 52;
  v144[12] = v1 + 60;
  v144[13] = &v153;
  v144[14] = v1 + 64;
  v144[15] = &v152;
  v144[16] = v1 + 68;
  v144[17] = &v151;
  v144[18] = v1 + 288;
  v144[19] = v1 + 240;
  v144[20] = v1 + 28;
  v144[21] = v1 + 32;
  v144[22] = v1 + 36;
  v144[23] = v1 + 120;
  v144[24] = v1 + 128;
  v144[25] = v1 + 136;
  v144[26] = &v154;
  v144[27] = v2;
  v144[28] = v1 + 80;
  v144[29] = v1 + 88;
  v144[30] = v1 + 96;
  v144[31] = v1 + 56;
  v144[32] = v1 + 104;
  v144[33] = v1 + 144;
  v144[34] = v1 + 184;
  v144[35] = v1 + 112;
  v47 = *(v1 + 192);
  v48 = *(v1 + 216);
  v49 = *v48;
  if (v154)
  {
    v50 = (*v47 + v49 - 1) / v49;
    v113 = *(v1 + 40);
  }

  else
  {
    v113 = *(v1 + 40);
    v50 = v113;
  }

  v51 = *v135;
  v52 = (*(v1 + 28) + *v47 - **v135 * *v8) / v49;
  v110 = v52;
  if (v50 > v52)
  {
    v52 = v50;
  }

  v114 = v52;
  v53 = v47[1];
  v54 = v48[1];
  v120 = *(v1 + 44);
  if (v154)
  {
    v55 = (v53 + v54 - 1) / v54;
  }

  else
  {
    v55 = *(v1 + 44);
  }

  v56 = (*(v1 + 32) + v53 - *(v51 + 4) * *(v1 + 64)) / v54;
  v117 = v55;
  v112 = v56;
  if (v55 > v56)
  {
    v56 = v55;
  }

  v121 = v56;
  if (v154)
  {
    v57 = v47[2];
    v58 = v48[2];
    v59 = *(v1 + 48);
    v60 = (v57 + v58 - 1) / v58;
  }

  else
  {
    v59 = *(v1 + 48);
    v57 = v47[2];
    v58 = v48[2];
    v60 = v59;
  }

  v61 = (*(v1 + 36) + v57 - *(v51 + 8) * *(v1 + 68)) / v58;
  v119 = v61;
  if (v60 > v61)
  {
    v61 = v60;
  }

  v124 = v61;
  if (*(v1 + 24) >= 1)
  {
    v62 = 0;
    v115 = v50;
    v116 = v60;
    v109 = v50;
    v122 = v60;
    v123 = v1;
    v118 = v59;
    do
    {
      v111 = v62;
      if (v50 >= 1)
      {
        v63 = 0;
        v64 = *(v1 + 44);
        do
        {
          if (v64 >= 1)
          {
            v65 = 0;
            v66 = *(v1 + 48);
            do
            {
              if (v66 >= 1)
              {
                for (i = 0; i < v66; ++i)
                {
                  v66 = *(v1 + 48);
                }

                v64 = *(v1 + 44);
              }

              ++v65;
            }

            while (v65 < v64);
          }

          ++v63;
          v50 = v115;
        }

        while (v63 != v115);
      }

      v68 = v109;
      if (v110 > v50)
      {
        do
        {
          v69 = v117;
          if (v117 >= 1)
          {
            v70 = 0;
            v71 = *(v1 + 48);
            do
            {
              if (v71 >= 1)
              {
                for (j = 0; j < v71; ++j)
                {
                  v71 = *(v1 + 48);
                }

                v69 = v117;
              }

              ++v70;
            }

            while (v70 != v69);
          }

          if (v112 > v69)
          {
            v73 = v117;
            v125 = v68;
            do
            {
              if (v60 >= 1)
              {
                for (k = 0; k != v60; ++k)
                {
                }
              }

              v126 = v73;
              if (v119 > v60)
              {
                v75 = *(v123 + 216);
                v76 = *(v123 + 192);
                v139 = *(v123 + 52);
                v77 = *(v123 + 8);
                v130 = *v123;
                v129 = *(v123 + 16) + 4 * *(v123 + 160) * v125 + 4 * *(v123 + 168) * v73;
                v78 = *(v123 + 60);
                v128 = *(v123 + 176);
                v138 = *(v123 + 184);
                v79 = v125 * *v75 - *v76;
                v80 = v75[1] * v73 - v76[1];
                v131 = v75[2];
                v81 = v122 * v131 - v76[2];
                v137 = 4 * *(v123 + 112);
                v132 = v116;
                do
                {
                  if (v139 >= 1)
                  {
                    v82 = 0;
                    v83 = v130;
                    v84 = (v129 + 4 * v132 * v128);
                    v85 = *v127;
                    do
                    {
                      v140 = v83;
                      v141 = v84;
                      v142 = v82;
                      if (v78 < 1)
                      {
                        v88 = 0.0;
                      }

                      else
                      {
                        v86 = 0;
                        v87 = *v136;
                        v88 = 0.0;
                        do
                        {
                          if (v85 >= 1)
                          {
                            v89 = 0;
                            if (*v134)
                            {
                              v90 = v78 + ~v86;
                            }

                            else
                            {
                              v90 = v86;
                            }

                            v91 = v83;
                            do
                            {
                              if (v87 >= 1)
                              {
                                v92 = 0;
                                v93 = v85 + ~v89;
                                if ((*v134 & 1) == 0)
                                {
                                  v93 = v89;
                                }

                                v94 = v91;
                                do
                                {
                                  if (*v133 >= 1)
                                  {
                                    v95 = v87 + ~v92;
                                    if ((*v134 & 1) == 0)
                                    {
                                      v95 = v92;
                                    }

                                    v96 = (v77 + 4 * *(v135 - 19) * (v80 + *(*v135 + 4) * v93) + 4 * *(v135 - 20) * (v79 + **v135 * v90) + 4 * *(v135 - 18) * (v81 + v95 * *(*v135 + 8)));
                                    v97 = v94;
                                    v98 = *v133;
                                    do
                                    {
                                      v88 = v88 + (*v96 * *v97);
                                      v96 += *(v135 - 17);
                                      v97 += *(v135 - 12);
                                      --v98;
                                    }

                                    while (v98);
                                  }

                                  ++v92;
                                  v94 += *(v135 - 13);
                                }

                                while (v92 != v87);
                              }

                              ++v89;
                              v91 += *(v135 - 14);
                            }

                            while (v89 != v85);
                          }

                          ++v86;
                          v83 += 4 * *(v135 - 15);
                        }

                        while (v86 != v78);
                      }

                      *v141 = v88;
                      v84 = &v141[v138];
                      ++v82;
                      v83 = v140 + v137;
                    }

                    while (v142 + 1 != v139);
                  }

                  v81 += v131;
                  ++v132;
                }

                while (v132 != v124);
              }

              v1 = v123;
              v68 = v125;
              if (v124 < v118)
              {
                v99 = v124;
                do
                {
                }

                while (v118 != v99);
              }

              ++v73;
              v60 = v122;
            }

            while (v121 != v126 + 1);
          }

          if (v121 < v120)
          {
            v100 = *(v1 + 48);
            v101 = v121;
            do
            {
              if (v100 >= 1)
              {
                for (m = 0; m < v100; ++m)
                {
                  v100 = *(v1 + 48);
                }
              }

              ++v101;
            }

            while (v101 != v120);
          }

          ++v68;
        }

        while (v114 != v68);
      }

      if (v114 < v113)
      {
        v103 = *(v1 + 44);
        v104 = v114;
        do
        {
          if (v103 >= 1)
          {
            v105 = 0;
            v106 = *(v1 + 48);
            do
            {
              if (v106 >= 1)
              {
                for (n = 0; n < v106; ++n)
                {
                  v106 = *(v1 + 48);
                }

                v103 = *(v1 + 44);
              }

              ++v105;
            }

            while (v105 < v103);
          }

          ++v104;
        }

        while (v104 != v113);
      }

      v108 = *(v1 + 16) + 4 * *(v1 + 152);
      *(v1 + 8) += 4 * *(v1 + 72);
      *(v1 + 16) = v108;
      v62 = v111 + 1;
      v50 = v115;
    }

    while (v111 + 1 < *(v1 + 24));
  }

  if (v145[0])
  {
    v145[1] = v145[0];
    operator delete(v145[0]);
  }

  if (v146[0])
  {
    v146[1] = v146[0];
    operator delete(v146[0]);
  }

  if (v147[0])
  {
    v147[1] = v147[0];
    operator delete(v147[0]);
  }
}

void sub_25A40BC5C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 144);
  if (v4)
  {
    *(v1 - 136) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::lcm[abi:ne200100]<int,int>(int a1, int a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (a1 == 0x80000000)
    {
      v3 = 0;
    }

    else
    {
      v3 = -a1;
    }

    if (a1 >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = v3;
    }

    if (a2 == 0x80000000)
    {
      v5 = 0;
    }

    else
    {
      v5 = -a2;
    }

    if (a2 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = v5;
    }

    return v4 / std::__gcd<unsigned int>(v4, v6) * v6;
  }

  return v2;
}

uint64_t void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(void)::{lambda(float const*,float const*,float *,int,int,int)#2}::operator()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v42 = **(result + 88);
  if (v42 >= 1)
  {
    v7 = 0;
    v8 = **(result + 24);
    v9 = **(result + 32);
    v51 = *v8 * a5 - *v9;
    v50 = v8[1] * a6 - v9[1];
    v10 = v8[2] * a7 - v9[2];
    v11 = *(**(result + 56) + 4 * (a6 % **(result + 64)));
    v12 = *(**(result + 72) + 4 * (a7 % **(result + 80)));
    v13 = (a4 + 4 * **result * a5 + 4 * **(result + 8) * a6 + 4 * **(result + 16) * a7);
    v49 = **(result + 96);
    v41 = 4 * **(result + 280);
    v43 = *(**(result + 40) + 4 * (a5 % **(result + 48)));
    v40 = **(result + 272);
    v46 = 4 * v11;
    v47 = v11;
    do
    {
      v44 = v13;
      v45 = v7;
      v14 = 0.0;
      if (v43 < v49)
      {
        v15 = **(result + 112);
        v48 = **(result + 104);
        v16 = 4 * v43;
        v17 = v43;
        do
        {
          if (v11 < v15)
          {
            v18 = **(result + 128);
            v19 = **(result + 120);
            v20 = v46;
            do
            {
              if (v12 < v18)
              {
                v21 = **(result + 152);
                v22 = *v21;
                v23 = v21[1];
                v24 = v21[2];
                v25 = **(result + 136);
                if (**(result + 144))
                {
                  v26 = v15 + ~v11;
                }

                else
                {
                  v26 = v11;
                }

                v27 = v49 + ~v17;
                if (!**(result + 144))
                {
                  v27 = v17;
                }

                v28 = v51 + v22 * v27;
                v29 = v50 + v23 * v26;
                v30 = 4 * v12;
                v31 = v12;
                do
                {
                  v32 = v18 + ~v31;
                  if (!**(result + 144))
                  {
                    v32 = v31;
                  }

                  if ((v28 & 0x80000000) == 0 && v28 < **(result + 160) && (v29 & 0x80000000) == 0 && v29 < **(result + 168))
                  {
                    v33 = v10 + v24 * v32;
                    if ((v33 & 0x80000000) == 0 && v33 < **(result + 176))
                    {
                      v34 = v29;
                      v35 = v28;
                      if ((**(result + 208) & 1) == 0)
                      {
                        v36 = **(result + 216);
                        v35 = v28 / *v36;
                        v34 = v29 / v36[1];
                        v33 /= v36[2];
                      }

                      v37 = **(result + 248);
                      if (v37 >= 1)
                      {
                        v38 = (a2 + 4 * **(result + 224) * v35 + 4 * **(result + 232) * v34 + 4 * **(result + 240) * v33);
                        v39 = v20 * **(result + 192) + v16 * **(result + 184) + **(result + 200) * v30;
                        do
                        {
                          v14 = v14 + (*v38 * *(a3 + v39));
                          v38 += **(result + 256);
                          v39 += 4 * **(result + 264);
                          --v37;
                        }

                        while (v37);
                      }
                    }
                  }

                  v31 += v25;
                  v30 += 4 * v25;
                }

                while (v31 < v18);
              }

              v11 += v19;
              v20 += 4 * v19;
            }

            while (v11 < v15);
          }

          v17 += v48;
          v16 += 4 * v48;
          v11 = v47;
        }

        while (v17 < v49);
      }

      *v44 = v14;
      v13 = &v44[v40];
      ++v7;
      a3 += v41;
    }

    while (v45 + 1 != v42);
  }

  return result;
}

uint64_t std::__gcd<unsigned int>(uint64_t result, unsigned int a2)
{
  LODWORD(v2) = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  else
  {
    result = result;
  }

  if (v3)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v2 % result)
  {
    v5 = v4 | result;
    v6 = v4 >> __clz(__rbit32(v4));
    do
    {
      v7 = result >> __clz(__rbit32(result));
      if (v6 <= v7)
      {
        LODWORD(result) = v7 - v6;
      }

      else
      {
        LODWORD(result) = v6 - v7;
      }

      if (v6 >= v7)
      {
        v6 = v7;
      }
    }

    while (result);
    return v6 << __clz(__rbit32(v5));
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4FF8;
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF4FF8;
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF4FF8;
  *(a2 + 308) = 0;
  *(a2 + 305) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;

    operator delete(v5);
  }
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[34];
  if (v2)
  {
    __p[35] = v2;
    operator delete(v2);
  }

  v3 = __p[31];
  if (v3)
  {
    __p[32] = v3;
    operator delete(v3);
  }

  v4 = __p[28];
  if (v4)
  {
    __p[29] = v4;
    operator delete(v4);
  }

  v5 = __p[25];
  if (v5)
  {
    __p[26] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void sub_25A40C51C(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[31] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[28] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[25] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF50F0;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF50F0;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF50F0;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[36];
  if (v2)
  {
    __p[37] = v2;
    operator delete(v2);
  }

  v3 = __p[33];
  if (v3)
  {
    __p[34] = v3;
    operator delete(v3);
  }

  v4 = __p[30];
  if (v4)
  {
    __p[31] = v4;
    operator delete(v4);
  }

  v5 = __p[27];
  if (v5)
  {
    __p[28] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::__bind(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void sub_25A40C9B4(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[31] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[28] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[25] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}