void sub_25A42D8AC(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned int,short>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v93 = 1;
      goto LABEL_38;
    }
  }

  v93 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v115, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v115, v33, v34, v35);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, a5, *this + 3, v37 >> 2);
      v38 = *(&v104 + 1);
      v39 = v104;
      v110 = v104;
      v40 = v105;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      v111 = v40;
      v112 = v106;
      v41 = v107;
      v42 = v108;
      v107 = 0;
      v106 = 0uLL;
      v114 = v109;
      v43 = v40;
      v36 = v112;
      v37 = v109;
      *&v113 = v41;
      *(&v113 + 1) = v108;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v98)
  {
    v92 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 4 * v30;
    v89 = v37 - v42;
    v50 = 4 * v49;
    v99 = v38 - 8;
    v100 = v49 - 1;
    v95 = v42;
    v96 = v30;
    v87 = v47;
    v90 = v48;
    v91 = &v42[4 * v47];
    v101 = (v38 + 4 * v47);
    do
    {
      v102 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v115[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 2 * v57);
          v74 = mlx::core::array::shape(this, v54);
          if (v73 >= 0)
          {
            v74 = 0;
          }

          v53 += *((*this)[3] + 8 * v54) * (v74 + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v96 == 1)
      {
        *(v97 + 4 * v45++) = *(v94 + 4 * v53);
      }

      else
      {
        v75 = v101;
        if (!v92)
        {
          if (v93)
          {
            v42 = v95;
            v76 = v102;
          }

          else
          {
            v77 = 0;
            v42 = v95;
            v36 = v112;
            v76 = v102;
            do
            {
              *(v97 + 4 * v45) = *(v94 + 4 * v53 + 4 * v39);
              if (v90)
              {
                v78 = *v91;
                if (v90 >= 2 && v78 == *v75 - 1)
                {
                  v79 = v95;
                  v81 = v99;
                  v80 = v100;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v80;
                    *v82 = 0;
                    v39 -= v36[v83] * (*v75 - 1);
                    --v80;
                    v82 = &v79[v50 - 8];
                    v78 = *v82;
                    v79 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v75 = (v81 + v50);
                    v85 = *(v81 + v50) - 1;
                    v81 -= 4;
                    v83 = v80;
                  }

                  while (v78 == v85);
                  v86 = &v79[v50 - 4];
                  v75 = v101;
                }

                else
                {
                  v80 = v87;
                  v86 = v91;
                }

                *v86 = v78 + 1;
                v39 += v36[v80];
                *&v110 = v39;
              }

              ++v45;
              ++v77;
            }

            while (v77 != v96);
          }

          *&v110 = 0;
          if (v89 >= 1)
          {
            bzero(v42, v89);
          }

          v39 = 0;
          goto LABEL_87;
        }

        if ((v93 & 1) == 0)
        {
          memmove((v97 + 4 * v45), (v94 + 4 * v53), __len);
        }

        v45 += v96;
      }

      v42 = v95;
      v76 = v102;
LABEL_87:
      v44 = v76 + 1;
    }

    while (v44 != v98);
  }

  if (v42)
  {
    *&v114 = v42;
    operator delete(v42);
    v36 = v112;
  }

  if (v36)
  {
    *(&v112 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v110 + 1))
  {
    operator delete(*(&v110 + 1));
  }

  *&v110 = v115;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v110);
}

void sub_25A42DEE8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned long long,short>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v93 = 1;
      goto LABEL_38;
    }
  }

  v93 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v115, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v115, v33, v34, v35);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, a5, *this + 3, v37 >> 2);
      v38 = *(&v104 + 1);
      v39 = v104;
      v110 = v104;
      v40 = v105;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      v111 = v40;
      v112 = v106;
      v41 = v107;
      v42 = v108;
      v107 = 0;
      v106 = 0uLL;
      v114 = v109;
      v43 = v40;
      v36 = v112;
      v37 = v109;
      *&v113 = v41;
      *(&v113 + 1) = v108;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v39 = 0;
  v42 = 0;
  v38 = 0;
  v43 = 0;
LABEL_44:
  if (v98)
  {
    v92 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v89 = v37 - v42;
    v50 = 4 * v49;
    v99 = v38 - 8;
    v100 = v49 - 1;
    v95 = v42;
    v96 = v30;
    v87 = v47;
    v90 = v48;
    v91 = &v42[4 * v47];
    v101 = (v38 + 4 * v47);
    do
    {
      v102 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v115[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 2 * v57);
          v74 = mlx::core::array::shape(this, v54);
          if (v73 >= 0)
          {
            v74 = 0;
          }

          v53 += *((*this)[3] + 8 * v54) * (v74 + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v96 == 1)
      {
        *(v97 + 8 * v45++) = *(v94 + 8 * v53);
      }

      else
      {
        v75 = v101;
        if (!v92)
        {
          if (v93)
          {
            v42 = v95;
            v76 = v102;
          }

          else
          {
            v77 = 0;
            v42 = v95;
            v36 = v112;
            v76 = v102;
            do
            {
              *(v97 + 8 * v45) = *(v94 + 8 * v53 + 8 * v39);
              if (v90)
              {
                v78 = *v91;
                if (v90 >= 2 && v78 == *v75 - 1)
                {
                  v79 = v95;
                  v81 = v99;
                  v80 = v100;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v80;
                    *v82 = 0;
                    v39 -= v36[v83] * (*v75 - 1);
                    --v80;
                    v82 = &v79[v50 - 8];
                    v78 = *v82;
                    v79 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v75 = (v81 + v50);
                    v85 = *(v81 + v50) - 1;
                    v81 -= 4;
                    v83 = v80;
                  }

                  while (v78 == v85);
                  v86 = &v79[v50 - 4];
                  v75 = v101;
                }

                else
                {
                  v80 = v87;
                  v86 = v91;
                }

                *v86 = v78 + 1;
                v39 += v36[v80];
                *&v110 = v39;
              }

              ++v45;
              ++v77;
            }

            while (v77 != v96);
          }

          *&v110 = 0;
          if (v89 >= 1)
          {
            bzero(v42, v89);
          }

          v39 = 0;
          goto LABEL_87;
        }

        if ((v93 & 1) == 0)
        {
          memmove((v97 + 8 * v45), (v94 + 8 * v53), __len);
        }

        v45 += v96;
      }

      v42 = v95;
      v76 = v102;
LABEL_87:
      v44 = v76 + 1;
    }

    while (v44 != v98);
  }

  if (v42)
  {
    *&v114 = v42;
    operator delete(v42);
    v36 = v112;
  }

  if (v36)
  {
    *(&v112 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v110 + 1))
  {
    operator delete(*(&v110 + 1));
  }

  *&v110 = v115;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v110);
}

void sub_25A42E524(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<half,short>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v93 = 1;
      goto LABEL_38;
    }
  }

  v93 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v115, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v115, v33, v34, v35);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, a5, *this + 3, v37 >> 2);
      v38 = *(&v104 + 1);
      v39 = v104;
      v110 = v104;
      v40 = v105;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      v111 = v40;
      v112 = v106;
      v41 = v107;
      v42 = v108;
      v107 = 0;
      v106 = 0uLL;
      v114 = v109;
      v43 = v40;
      v36 = v112;
      v37 = v109;
      *&v113 = v41;
      *(&v113 + 1) = v108;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v98)
  {
    v92 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 2 * v30;
    v89 = v37 - v42;
    v50 = 4 * v49;
    v99 = v38 - 8;
    v100 = v49 - 1;
    v95 = v42;
    v96 = v30;
    v87 = v47;
    v90 = v48;
    v91 = &v42[4 * v47];
    v101 = (v38 + 4 * v47);
    do
    {
      v102 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v115[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 2 * v57);
          v74 = mlx::core::array::shape(this, v54);
          if (v73 >= 0)
          {
            v74 = 0;
          }

          v53 += *((*this)[3] + 8 * v54) * (v74 + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v96 == 1)
      {
        *(v97 + 2 * v45++) = *(v94 + 2 * v53);
      }

      else
      {
        v75 = v101;
        if (!v92)
        {
          if (v93)
          {
            v42 = v95;
            v76 = v102;
          }

          else
          {
            v77 = 0;
            v42 = v95;
            v36 = v112;
            v76 = v102;
            do
            {
              *(v97 + 2 * v45) = *(v94 + 2 * v53 + 2 * v39);
              if (v90)
              {
                v78 = *v91;
                if (v90 >= 2 && v78 == *v75 - 1)
                {
                  v79 = v95;
                  v81 = v99;
                  v80 = v100;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v80;
                    *v82 = 0;
                    v39 -= v36[v83] * (*v75 - 1);
                    --v80;
                    v82 = &v79[v50 - 8];
                    v78 = *v82;
                    v79 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v75 = (v81 + v50);
                    v85 = *(v81 + v50) - 1;
                    v81 -= 4;
                    v83 = v80;
                  }

                  while (v78 == v85);
                  v86 = &v79[v50 - 4];
                  v75 = v101;
                }

                else
                {
                  v80 = v87;
                  v86 = v91;
                }

                *v86 = v78 + 1;
                v39 += v36[v80];
                *&v110 = v39;
              }

              ++v45;
              ++v77;
            }

            while (v77 != v96);
          }

          *&v110 = 0;
          if (v89 >= 1)
          {
            bzero(v42, v89);
          }

          v39 = 0;
          goto LABEL_87;
        }

        if ((v93 & 1) == 0)
        {
          memmove((v97 + 2 * v45), (v94 + 2 * v53), __len);
        }

        v45 += v96;
      }

      v42 = v95;
      v76 = v102;
LABEL_87:
      v44 = v76 + 1;
    }

    while (v44 != v98);
  }

  if (v42)
  {
    *&v114 = v42;
    operator delete(v42);
    v36 = v112;
  }

  if (v36)
  {
    *(&v112 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v110 + 1))
  {
    operator delete(*(&v110 + 1));
  }

  *&v110 = v115;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v110);
}

void sub_25A42EB60(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<float,short>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v93 = 1;
      goto LABEL_38;
    }
  }

  v93 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v115, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v115, v33, v34, v35);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, a5, *this + 3, v37 >> 2);
      v38 = *(&v104 + 1);
      v39 = v104;
      v110 = v104;
      v40 = v105;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      v111 = v40;
      v112 = v106;
      v41 = v107;
      v42 = v108;
      v107 = 0;
      v106 = 0uLL;
      v114 = v109;
      v43 = v40;
      v36 = v112;
      v37 = v109;
      *&v113 = v41;
      *(&v113 + 1) = v108;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v98)
  {
    v92 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 4 * v30;
    v89 = v37 - v42;
    v50 = 4 * v49;
    v99 = v38 - 8;
    v100 = v49 - 1;
    v95 = v42;
    v96 = v30;
    v87 = v47;
    v90 = v48;
    v91 = &v42[4 * v47];
    v101 = (v38 + 4 * v47);
    do
    {
      v102 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v115[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 2 * v57);
          v74 = mlx::core::array::shape(this, v54);
          if (v73 >= 0)
          {
            v74 = 0;
          }

          v53 += *((*this)[3] + 8 * v54) * (v74 + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v96 == 1)
      {
        *(v97 + 4 * v45++) = *(v94 + 4 * v53);
      }

      else
      {
        v75 = v101;
        if (!v92)
        {
          if (v93)
          {
            v42 = v95;
            v76 = v102;
          }

          else
          {
            v77 = 0;
            v42 = v95;
            v36 = v112;
            v76 = v102;
            do
            {
              *(v97 + 4 * v45) = *(v94 + 4 * v53 + 4 * v39);
              if (v90)
              {
                v78 = *v91;
                if (v90 >= 2 && v78 == *v75 - 1)
                {
                  v79 = v95;
                  v81 = v99;
                  v80 = v100;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v80;
                    *v82 = 0;
                    v39 -= v36[v83] * (*v75 - 1);
                    --v80;
                    v82 = &v79[v50 - 8];
                    v78 = *v82;
                    v79 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v75 = (v81 + v50);
                    v85 = *(v81 + v50) - 1;
                    v81 -= 4;
                    v83 = v80;
                  }

                  while (v78 == v85);
                  v86 = &v79[v50 - 4];
                  v75 = v101;
                }

                else
                {
                  v80 = v87;
                  v86 = v91;
                }

                *v86 = v78 + 1;
                v39 += v36[v80];
                *&v110 = v39;
              }

              ++v45;
              ++v77;
            }

            while (v77 != v96);
          }

          *&v110 = 0;
          if (v89 >= 1)
          {
            bzero(v42, v89);
          }

          v39 = 0;
          goto LABEL_87;
        }

        if ((v93 & 1) == 0)
        {
          memmove((v97 + 4 * v45), (v94 + 4 * v53), __len);
        }

        v45 += v96;
      }

      v42 = v95;
      v76 = v102;
LABEL_87:
      v44 = v76 + 1;
    }

    while (v44 != v98);
  }

  if (v42)
  {
    *&v114 = v42;
    operator delete(v42);
    v36 = v112;
  }

  if (v36)
  {
    *(&v112 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v110 + 1))
  {
    operator delete(*(&v110 + 1));
  }

  *&v110 = v115;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v110);
}

void sub_25A42F19C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<double,short>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v93 = 1;
      goto LABEL_38;
    }
  }

  v93 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v115, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v115, v33, v34, v35);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, a5, *this + 3, v37 >> 2);
      v38 = *(&v104 + 1);
      v39 = v104;
      v110 = v104;
      v40 = v105;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      v111 = v40;
      v112 = v106;
      v41 = v107;
      v42 = v108;
      v107 = 0;
      v106 = 0uLL;
      v114 = v109;
      v43 = v40;
      v36 = v112;
      v37 = v109;
      *&v113 = v41;
      *(&v113 + 1) = v108;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v98)
  {
    v92 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v89 = v37 - v42;
    v50 = 4 * v49;
    v99 = v38 - 8;
    v100 = v49 - 1;
    v95 = v42;
    v96 = v30;
    v87 = v47;
    v90 = v48;
    v91 = &v42[4 * v47];
    v101 = (v38 + 4 * v47);
    do
    {
      v102 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v115[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 2 * v57);
          v74 = mlx::core::array::shape(this, v54);
          if (v73 >= 0)
          {
            v74 = 0;
          }

          v53 += *((*this)[3] + 8 * v54) * (v74 + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v96 == 1)
      {
        *(v97 + 8 * v45++) = *(v94 + 8 * v53);
      }

      else
      {
        v75 = v101;
        if (!v92)
        {
          if (v93)
          {
            v42 = v95;
            v76 = v102;
          }

          else
          {
            v77 = 0;
            v42 = v95;
            v36 = v112;
            v76 = v102;
            do
            {
              *(v97 + 8 * v45) = *(v94 + 8 * v53 + 8 * v39);
              if (v90)
              {
                v78 = *v91;
                if (v90 >= 2 && v78 == *v75 - 1)
                {
                  v79 = v95;
                  v81 = v99;
                  v80 = v100;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v80;
                    *v82 = 0;
                    v39 -= v36[v83] * (*v75 - 1);
                    --v80;
                    v82 = &v79[v50 - 8];
                    v78 = *v82;
                    v79 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v75 = (v81 + v50);
                    v85 = *(v81 + v50) - 1;
                    v81 -= 4;
                    v83 = v80;
                  }

                  while (v78 == v85);
                  v86 = &v79[v50 - 4];
                  v75 = v101;
                }

                else
                {
                  v80 = v87;
                  v86 = v91;
                }

                *v86 = v78 + 1;
                v39 += v36[v80];
                *&v110 = v39;
              }

              ++v45;
              ++v77;
            }

            while (v77 != v96);
          }

          *&v110 = 0;
          if (v89 >= 1)
          {
            bzero(v42, v89);
          }

          v39 = 0;
          goto LABEL_87;
        }

        if ((v93 & 1) == 0)
        {
          memmove((v97 + 8 * v45), (v94 + 8 * v53), __len);
        }

        v45 += v96;
      }

      v42 = v95;
      v76 = v102;
LABEL_87:
      v44 = v76 + 1;
    }

    while (v44 != v98);
  }

  if (v42)
  {
    *&v114 = v42;
    operator delete(v42);
    v36 = v112;
  }

  if (v36)
  {
    *(&v112 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v110 + 1))
  {
    operator delete(*(&v110 + 1));
  }

  *&v110 = v115;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v110);
}

void sub_25A42F7D8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<mlx::core::complex64_t,short>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v115, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v115, v33, v34, v35);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  v93 = v10;
  if (v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = (*this)[1] - **this;
    if (v36)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v104, a5, *this + 3, v36 >> 2);
      v37 = *(&v104 + 1);
      v38 = v104;
      v110 = v104;
      v39 = v105;
      *(&v104 + 1) = 0;
      v105 = 0uLL;
      v111 = v39;
      v112 = v106;
      v40 = v107;
      v41 = v108;
      v107 = 0;
      v106 = 0uLL;
      v114 = v109;
      v42 = v39;
      v43 = v112;
      v36 = v109;
      *&v113 = v40;
      *(&v113 + 1) = v108;
      goto LABEL_43;
    }
  }

  v43 = 0;
  v41 = 0;
  v37 = 0;
  v42 = 0;
  v38 = 0;
LABEL_43:
  if (v98)
  {
    v44 = 0;
    v45 = 0;
    v46 = v42 - v37;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v89 = v36 - v41;
    v50 = 4 * v49;
    v99 = v37 - 8;
    v100 = v49 - 1;
    v95 = v41;
    v96 = v30;
    v87 = v47;
    v90 = v48;
    v91 = &v41[4 * v47];
    v101 = (v37 + 4 * v47);
    do
    {
      v102 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v115[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 2 * v57);
          v74 = mlx::core::array::shape(this, v54);
          if (v73 >= 0)
          {
            v74 = 0;
          }

          v53 += *((*this)[3] + 8 * v54) * (v74 + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v96 == 1)
      {
        *(v97 + 8 * v45++) = *(v94 + 8 * v53);
      }

      else
      {
        v75 = v101;
        if (!v93)
        {
          if (v92)
          {
            v41 = v95;
            v76 = v102;
          }

          else
          {
            v77 = 0;
            v41 = v95;
            v76 = v102;
            do
            {
              *(v97 + 8 * v45) = *(v94 + 8 * v53 + 8 * v38);
              if (v90)
              {
                v78 = *v91;
                if (v90 >= 2 && v78 == *v75 - 1)
                {
                  v79 = v95;
                  v81 = v99;
                  v80 = v100;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v80;
                    *v82 = 0;
                    v38 -= v43[v83] * (*v75 - 1);
                    --v80;
                    v82 = &v79[v50 - 8];
                    v78 = *v82;
                    v79 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v75 = (v81 + v50);
                    v85 = *(v81 + v50) - 1;
                    v81 -= 4;
                    v83 = v80;
                  }

                  while (v78 == v85);
                  v86 = &v79[v50 - 4];
                  v75 = v101;
                }

                else
                {
                  v80 = v87;
                  v86 = v91;
                }

                *v86 = v78 + 1;
                v38 += v43[v80];
                *&v110 = v38;
              }

              ++v45;
              ++v77;
            }

            while (v77 != v96);
          }

          *&v110 = 0;
          if (v89 >= 1)
          {
            bzero(v41, v89);
          }

          v38 = 0;
          goto LABEL_86;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v97 + 8 * v45), (v94 + 8 * v53), __len);
        }

        v45 += v96;
      }

      v41 = v95;
      v76 = v102;
LABEL_86:
      v44 = v76 + 1;
    }

    while (v44 != v98);
  }

  if (v41)
  {
    *&v114 = v41;
    operator delete(v41);
    v43 = v112;
  }

  if (v43)
  {
    *(&v112 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v110 + 1))
  {
    operator delete(*(&v110 + 1));
  }

  *&v110 = v115;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v110);
}

void sub_25A42FE0C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<BOOL,int>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v113, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v113, v33, v34, v35);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v108 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v102, a5, *this + 3, v37 >> 2);
      v38 = *(&v102 + 1);
      v39 = v102;
      v108 = v102;
      v40 = v103;
      *(&v102 + 1) = 0;
      v103 = 0uLL;
      v109 = v40;
      v110 = v104;
      v41 = v105;
      v42 = v106;
      v105 = 0;
      v104 = 0uLL;
      v112 = v107;
      v43 = v40;
      v36 = v110;
      v37 = v107;
      *&v111 = v41;
      *(&v111 + 1) = v106;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    v86 = v47;
    v87 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    __len = v30;
    v88 = &v42[4 * v47];
    v89 = (v38 + 4 * v47);
    v90 = v48;
    do
    {
      v100 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v113[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (__len == 1)
      {
        *(v96 + v45++) = *(v93 + v53);
      }

      else
      {
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
          }

          else
          {
            v74 = 0;
            v75 = v93 + v53;
            v36 = v110;
            v42 = v94;
            do
            {
              *(v96 + v45) = *(v75 + v39);
              if (v90)
              {
                v76 = *v88;
                if (v90 >= 2 && v76 == *v89 - 1)
                {
                  v77 = v94;
                  v79 = v98;
                  v78 = v99;
                  v80 = v89;
                  v81 = v88;
                  v82 = v86;
                  do
                  {
                    v83 = v78;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v80 - 1);
                    --v78;
                    v81 = &v77[v50 - 8];
                    v76 = *v81;
                    v77 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v80 = (v79 + v50);
                    v84 = *(v79 + v50) - 1;
                    v79 -= 4;
                    v82 = v78;
                  }

                  while (v76 == v84);
                  v85 = &v77[v50 - 4];
                }

                else
                {
                  v78 = v86;
                  v85 = v88;
                }

                *v85 = v76 + 1;
                v39 += v36[v78];
                *&v108 = v39;
              }

              ++v45;
              ++v74;
            }

            while (v74 != __len);
          }

          *&v108 = 0;
          if (v87 >= 1)
          {
            bzero(v42, v87);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + v45), (v93 + v53), __len);
        }

        v45 += __len;
      }

      v42 = v94;
LABEL_85:
      v44 = v100 + 1;
    }

    while (v100 + 1 != v97);
  }

  if (v42)
  {
    *&v112 = v42;
    operator delete(v42);
    v36 = v110;
  }

  if (v36)
  {
    *(&v110 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v108 + 1))
  {
    operator delete(*(&v108 + 1));
  }

  *&v108 = v113;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v108);
}

void sub_25A430434(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned char,int>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v93 = v10;
  if (v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = (*this)[1] - **this;
    if (v36)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v36 >> 2);
      v37 = *(&v103 + 1);
      v38 = v103;
      v109 = v103;
      v39 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v39;
      v111 = v105;
      v40 = v106;
      v41 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v42 = v39;
      v43 = v111;
      v36 = v108;
      *&v112 = v40;
      *(&v112 + 1) = v107;
      goto LABEL_43;
    }
  }

  v43 = 0;
  v41 = 0;
  v37 = 0;
  v42 = 0;
  v38 = 0;
LABEL_43:
  if (v98)
  {
    v44 = 0;
    v45 = 0;
    v46 = v42 - v37;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    v87 = v47;
    v88 = v36 - v41;
    v50 = 4 * v49;
    v99 = v37 - 8;
    v100 = v49 - 1;
    v95 = v41;
    __len = v30;
    v90 = v48;
    v91 = &v41[4 * v47];
    v89 = (v37 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (__len == 1)
      {
        *(v97 + v45++) = *(v94 + v53);
      }

      else
      {
        if (!v93)
        {
          if (v92)
          {
            v41 = v95;
            v74 = v101;
          }

          else
          {
            v75 = 0;
            v41 = v95;
            v76 = v94 + v53;
            v74 = v101;
            do
            {
              *(v97 + v45) = *(v76 + v38);
              if (v90)
              {
                v77 = *v91;
                if (v90 >= 2 && v77 == *v89 - 1)
                {
                  v78 = v95;
                  v80 = v99;
                  v79 = v100;
                  v81 = v89;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v79;
                    *v82 = 0;
                    v38 -= v43[v83] * (*v81 - 1);
                    --v79;
                    v82 = &v78[v50 - 8];
                    v77 = *v82;
                    v78 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v81 = (v80 + v50);
                    v85 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v83 = v79;
                  }

                  while (v77 == v85);
                  v86 = &v78[v50 - 4];
                }

                else
                {
                  v79 = v87;
                  v86 = v91;
                }

                *v86 = v77 + 1;
                v38 += v43[v79];
                *&v109 = v38;
              }

              ++v45;
              ++v75;
            }

            while (v75 != __len);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v41, v88);
          }

          v38 = 0;
          goto LABEL_84;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v97 + v45), (v94 + v53), __len);
        }

        v45 += __len;
      }

      v41 = v95;
      v74 = v101;
LABEL_84:
      v44 = v74 + 1;
    }

    while (v44 != v98);
  }

  if (v41)
  {
    *&v113 = v41;
    operator delete(v41);
    v43 = v111;
  }

  if (v43)
  {
    *(&v111 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A430A58(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned short,int>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 2 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 2 * v45++) = *(v93 + 2 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 2 * v45) = *(v93 + 2 * v53 + 2 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 2 * v45), (v93 + 2 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A43108C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned int,int>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 4 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 4 * v45++) = *(v93 + 4 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 4 * v45) = *(v93 + 4 * v53 + 4 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 4 * v45), (v93 + 4 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A4316C0(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned long long,int>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v39 = 0;
  v42 = 0;
  v38 = 0;
  v43 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A431CF4(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<half,int>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 2 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 2 * v45++) = *(v93 + 2 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 2 * v45) = *(v93 + 2 * v53 + 2 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 2 * v45), (v93 + 2 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A432328(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<float,int>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 4 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 4 * v45++) = *(v93 + 4 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 4 * v45) = *(v93 + 4 * v53 + 4 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 4 * v45), (v93 + 4 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A43295C(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<double,int>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A432F90(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<mlx::core::complex64_t,int>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v91 = 1;
      goto LABEL_38;
    }
  }

  v91 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v92 = v10;
  if (v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = (*this)[1] - **this;
    if (v36)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v36 >> 2);
      v37 = *(&v103 + 1);
      v38 = v103;
      v109 = v103;
      v39 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v39;
      v111 = v105;
      v40 = v106;
      v41 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v42 = v39;
      v43 = v111;
      v36 = v108;
      *&v112 = v40;
      *(&v112 + 1) = v107;
      goto LABEL_43;
    }
  }

  v43 = 0;
  v41 = 0;
  v37 = 0;
  v42 = 0;
  v38 = 0;
LABEL_43:
  if (v97)
  {
    v44 = 0;
    v45 = 0;
    v46 = v42 - v37;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v36 - v41;
    v50 = 4 * v49;
    v98 = v37 - 8;
    v99 = v49 - 1;
    v94 = v41;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v41[4 * v47];
    v100 = (v37 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 4 * v57);
          v53 += *((*this)[3] + 8 * v54) * (v73 + (mlx::core::array::shape(this, v54) & (v73 >> 31)));
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v92)
        {
          if (v91)
          {
            v41 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v41 = v94;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v38);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v38 -= v43[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v38 += v43[v79];
                *&v109 = v38;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v41, v88);
          }

          v38 = 0;
          goto LABEL_84;
        }

        if ((v91 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v41 = v94;
      v75 = v101;
LABEL_84:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v41)
  {
    *&v113 = v41;
    operator delete(v41);
    v43 = v111;
  }

  if (v43)
  {
    *(&v111 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A4335BC(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<BOOL,long long>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v113, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v113, v33, v34, v35);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v108 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v102, a5, *this + 3, v37 >> 2);
      v38 = *(&v102 + 1);
      v39 = v102;
      v108 = v102;
      v40 = v103;
      *(&v102 + 1) = 0;
      v103 = 0uLL;
      v109 = v40;
      v110 = v104;
      v41 = v105;
      v42 = v106;
      v105 = 0;
      v104 = 0uLL;
      v112 = v107;
      v43 = v40;
      v36 = v110;
      v37 = v107;
      *&v111 = v41;
      *(&v111 + 1) = v106;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    v86 = v47;
    v87 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    __len = v30;
    v88 = &v42[4 * v47];
    v89 = (v38 + 4 * v47);
    v90 = v48;
    do
    {
      v100 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v113[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (__len == 1)
      {
        *(v96 + v45++) = *(v93 + v53);
      }

      else
      {
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
          }

          else
          {
            v74 = 0;
            v75 = v93 + v53;
            v36 = v110;
            v42 = v94;
            do
            {
              *(v96 + v45) = *(v75 + v39);
              if (v90)
              {
                v76 = *v88;
                if (v90 >= 2 && v76 == *v89 - 1)
                {
                  v77 = v94;
                  v79 = v98;
                  v78 = v99;
                  v80 = v89;
                  v81 = v88;
                  v82 = v86;
                  do
                  {
                    v83 = v78;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v80 - 1);
                    --v78;
                    v81 = &v77[v50 - 8];
                    v76 = *v81;
                    v77 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v80 = (v79 + v50);
                    v84 = *(v79 + v50) - 1;
                    v79 -= 4;
                    v82 = v78;
                  }

                  while (v76 == v84);
                  v85 = &v77[v50 - 4];
                }

                else
                {
                  v78 = v86;
                  v85 = v88;
                }

                *v85 = v76 + 1;
                v39 += v36[v78];
                *&v108 = v39;
              }

              ++v45;
              ++v74;
            }

            while (v74 != __len);
          }

          *&v108 = 0;
          if (v87 >= 1)
          {
            bzero(v42, v87);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + v45), (v93 + v53), __len);
        }

        v45 += __len;
      }

      v42 = v94;
LABEL_85:
      v44 = v100 + 1;
    }

    while (v100 + 1 != v97);
  }

  if (v42)
  {
    *&v112 = v42;
    operator delete(v42);
    v36 = v110;
  }

  if (v36)
  {
    *(&v110 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v108 + 1))
  {
    operator delete(*(&v108 + 1));
  }

  *&v108 = v113;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v108);
}

void sub_25A433BE8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned char,long long>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v98 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v98 = *(v32 + 48) / v30;
LABEL_38:
  v94 = (*this)[19];
  v97 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v93 = v10;
  if (v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = (*this)[1] - **this;
    if (v36)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v36 >> 2);
      v37 = *(&v103 + 1);
      v38 = v103;
      v109 = v103;
      v39 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v39;
      v111 = v105;
      v40 = v106;
      v41 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v42 = v39;
      v43 = v111;
      v36 = v108;
      *&v112 = v40;
      *(&v112 + 1) = v107;
      goto LABEL_43;
    }
  }

  v43 = 0;
  v41 = 0;
  v37 = 0;
  v42 = 0;
  v38 = 0;
LABEL_43:
  if (v98)
  {
    v44 = 0;
    v45 = 0;
    v46 = v42 - v37;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    v87 = v47;
    v88 = v36 - v41;
    v50 = 4 * v49;
    v99 = v37 - 8;
    v100 = v49 - 1;
    v95 = v41;
    __len = v30;
    v90 = v48;
    v91 = &v41[4 * v47];
    v89 = (v37 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (__len == 1)
      {
        *(v97 + v45++) = *(v94 + v53);
      }

      else
      {
        if (!v93)
        {
          if (v92)
          {
            v41 = v95;
            v74 = v101;
          }

          else
          {
            v75 = 0;
            v41 = v95;
            v76 = v94 + v53;
            v74 = v101;
            do
            {
              *(v97 + v45) = *(v76 + v38);
              if (v90)
              {
                v77 = *v91;
                if (v90 >= 2 && v77 == *v89 - 1)
                {
                  v78 = v95;
                  v80 = v99;
                  v79 = v100;
                  v81 = v89;
                  v82 = v91;
                  v83 = v87;
                  do
                  {
                    v84 = v79;
                    *v82 = 0;
                    v38 -= v43[v83] * (*v81 - 1);
                    --v79;
                    v82 = &v78[v50 - 8];
                    v77 = *v82;
                    v78 -= 4;
                    if (v84 < 2)
                    {
                      break;
                    }

                    v81 = (v80 + v50);
                    v85 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v83 = v79;
                  }

                  while (v77 == v85);
                  v86 = &v78[v50 - 4];
                }

                else
                {
                  v79 = v87;
                  v86 = v91;
                }

                *v86 = v77 + 1;
                v38 += v43[v79];
                *&v109 = v38;
              }

              ++v45;
              ++v75;
            }

            while (v75 != __len);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v41, v88);
          }

          v38 = 0;
          goto LABEL_84;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v97 + v45), (v94 + v53), __len);
        }

        v45 += __len;
      }

      v41 = v95;
      v74 = v101;
LABEL_84:
      v44 = v74 + 1;
    }

    while (v44 != v98);
  }

  if (v41)
  {
    *&v113 = v41;
    operator delete(v41);
    v43 = v111;
  }

  if (v43)
  {
    *(&v111 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A434210(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned short,long long>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 2 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 2 * v45++) = *(v93 + 2 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 2 * v45) = *(v93 + 2 * v53 + 2 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 2 * v45), (v93 + 2 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A434848(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned int,long long>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 4 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 4 * v45++) = *(v93 + 4 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 4 * v45) = *(v93 + 4 * v53 + 4 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 4 * v45), (v93 + 4 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A434E80(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<unsigned long long,long long>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v39 = 0;
  v42 = 0;
  v38 = 0;
  v43 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A4354B8(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<half,long long>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 2 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 2 * v45++) = *(v93 + 2 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 2 * v45) = *(v93 + 2 * v53 + 2 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 2 * v45), (v93 + 2 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A435AF0(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<float,long long>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 4 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 4 * v45++) = *(v93 + 4 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 4 * v45) = *(v93 + 4 * v53 + 4 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 4 * v45), (v93 + 4 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A436128(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<double,long long>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v92 = 1;
      goto LABEL_38;
    }
  }

  v92 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  if (v10)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v37 = (*this)[1] - **this;
    if (v37)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v37 >> 2);
      v38 = *(&v103 + 1);
      v39 = v103;
      v109 = v103;
      v40 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v40;
      v111 = v105;
      v41 = v106;
      v42 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v43 = v40;
      v36 = v111;
      v37 = v108;
      *&v112 = v41;
      *(&v112 + 1) = v107;
      goto LABEL_44;
    }

    v36 = 0;
  }

  v42 = 0;
  v38 = 0;
  v43 = 0;
  v39 = 0;
LABEL_44:
  if (v97)
  {
    v91 = v10;
    v44 = 0;
    v45 = 0;
    v46 = v43 - v38;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v37 - v42;
    v50 = 4 * v49;
    v98 = v38 - 8;
    v99 = v49 - 1;
    v94 = v42;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v42[4 * v47];
    v100 = (v38 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v91)
        {
          if (v92)
          {
            v42 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v42 = v94;
            v36 = v111;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v39);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v39 -= v36[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v39 += v36[v79];
                *&v109 = v39;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v42, v88);
          }

          v39 = 0;
          goto LABEL_85;
        }

        if ((v92 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v42 = v94;
      v75 = v101;
LABEL_85:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v42)
  {
    *&v113 = v42;
    operator delete(v42);
    v36 = v111;
  }

  if (v36)
  {
    *(&v111 + 1) = v36;
    operator delete(v36);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}

void sub_25A436760(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void mlx::core::gather<mlx::core::complex64_t,long long>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v9 = *a5;
  if (((*this)[21] & 2) == 0)
  {
    if (((*this)[21] & 4) == 0)
    {
      v10 = 0;
      goto LABEL_31;
    }

    v16 = (a5[1] - v9) >> 2;
    v17 = v16 - 1;
    if (v16 - 1 >= -1)
    {
      v17 = -1;
    }

    v18 = v17 + 1;
    v19 = v16 + 1;
    v20 = v16 - 1;
    while ((v20 & 0x80000000) == 0)
    {
      v21 = v9[v20 & 0x7FFFFFFF];
      --v19;
      --v20;
      if (v21 != 1)
      {
        goto LABEL_25;
      }
    }

    v19 = v18;
LABEL_25:
    v25 = (v19 - 2);
    if (v19 - 2 >= 0)
    {
      do
      {
        v26 = mlx::core::array::shape(this, v25);
        v9 = *a5;
        v27 = *(*a5 + 4 * v25);
        v10 = v26 == v27;
        v28 = v25-- != 0;
      }

      while (v28 && v26 == v27);
      goto LABEL_31;
    }

LABEL_30:
    v10 = 1;
    goto LABEL_31;
  }

  v11 = a5[1];
  v12 = v11 - v9;
  if (v11 == v9)
  {
    v15 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (v9[v13] == 1)
    {
      if (v14 == ++v13)
      {
        LODWORD(v13) = v14;
        break;
      }
    }

    v15 = (v13 + 1);
  }

  if (v15 >= ((*this)[1] - **this) >> 2)
  {
    goto LABEL_30;
  }

  do
  {
    v22 = mlx::core::array::shape(this, v15);
    v9 = *a5;
    v23 = *(*a5 + 4 * v15);
    v10 = v22 == v23;
  }

  while (++v15 < ((*this)[1] - **this) >> 2 && v22 == v23);
LABEL_31:
  v29 = a5[1];
  if (v9 == v29)
  {
    v32 = *a3;
    v30 = 1;
  }

  else
  {
    v30 = 1;
    do
    {
      v31 = *v9++;
      v30 *= v31;
    }

    while (v9 != v29);
    v32 = *a3;
    if (!v30)
    {
      v97 = 0;
      v91 = 1;
      goto LABEL_38;
    }
  }

  v91 = 0;
  v97 = *(v32 + 48) / v30;
LABEL_38:
  v93 = (*this)[19];
  v96 = *(v32 + 152);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v34 - *a2) >> 4;
  memset(v114, 0, 24);
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v114, v33, v34, v35);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v92 = v10;
  if (v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = (*this)[1] - **this;
    if (v36)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v103, a5, *this + 3, v36 >> 2);
      v37 = *(&v103 + 1);
      v38 = v103;
      v109 = v103;
      v39 = v104;
      *(&v103 + 1) = 0;
      v104 = 0uLL;
      v110 = v39;
      v111 = v105;
      v40 = v106;
      v41 = v107;
      v106 = 0;
      v105 = 0uLL;
      v113 = v108;
      v42 = v39;
      v43 = v111;
      v36 = v108;
      *&v112 = v40;
      *(&v112 + 1) = v107;
      goto LABEL_43;
    }
  }

  v43 = 0;
  v41 = 0;
  v37 = 0;
  v42 = 0;
  v38 = 0;
LABEL_43:
  if (v97)
  {
    v44 = 0;
    v45 = 0;
    v46 = v42 - v37;
    v47 = ((v46 << 30) - 0x100000000) >> 32;
    v48 = v46 >> 2;
    v49 = (v46 >> 2) & 0x7FFFFFFF;
    __len = 8 * v30;
    v88 = v36 - v41;
    v50 = 4 * v49;
    v98 = v37 - 8;
    v99 = v49 - 1;
    v94 = v41;
    v95 = v30;
    v86 = v47;
    v89 = v48;
    v90 = &v41[4 * v47];
    v100 = (v37 + 4 * v47);
    do
    {
      v101 = v44;
      v51 = *a2;
      if (a2[1] == *a2)
      {
        v53 = 0;
      }

      else
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(*a4 + 4 * v52);
          v55 = (v114[0] + 80 * v52);
          v56 = v55[1];
          v57 = *v55;
          v58 = v55[2] - v56;
          if ((v58 >> 2))
          {
            v59 = v55[7];
            v60 = ((v58 << 30) - 0x100000000) >> 32;
            v61 = (v59 + 4 * v60);
            v62 = *v61;
            v63 = (v56 + 4 * v60);
            v64 = v55[4];
            if ((v58 >> 2) >= 2 && v62 == *v63 - 1)
            {
              v68 = (v58 >> 2) & 0x7FFFFFFF;
              v67 = v68 - 1;
              v69 = 4 * v68;
              v70 = v56 - 8;
              v66 = *v55;
              do
              {
                v71 = v67;
                *v61 = 0;
                v66 -= *(v64 + 8 * v60) * (*v63 - 1);
                *v55 = v66;
                --v67;
                v61 = (v59 + v69 - 8);
                v62 = *v61;
                v59 -= 4;
                if (v71 < 2)
                {
                  break;
                }

                v63 = (v70 + v69);
                v72 = *(v70 + 4 * v68) - 1;
                v70 -= 4;
                v60 = v67;
              }

              while (v62 == v72);
              v61 = (v59 + 4 * v68 - 4);
            }

            else
            {
              v66 = *v55;
              v67 = ((v58 << 30) - 0x100000000) >> 32;
            }

            *v61 = v62 + 1;
            *v55 = *(v64 + 8 * v67) + v66;
          }

          v73 = *(*(*(v51 + 16 * v52) + 152) + 8 * v57);
          v53 += *((*this)[3] + 8 * v54) * ((mlx::core::array::shape(this, v54) & (v73 >> 63)) + v73);
          ++v52;
          v51 = *a2;
        }

        while (v52 < (a2[1] - *a2) >> 4);
      }

      if (v95 == 1)
      {
        *(v96 + 8 * v45++) = *(v93 + 8 * v53);
      }

      else
      {
        v74 = v100;
        if (!v92)
        {
          if (v91)
          {
            v41 = v94;
            v75 = v101;
          }

          else
          {
            v76 = 0;
            v41 = v94;
            v75 = v101;
            do
            {
              *(v96 + 8 * v45) = *(v93 + 8 * v53 + 8 * v38);
              if (v89)
              {
                v77 = *v90;
                if (v89 >= 2 && v77 == *v74 - 1)
                {
                  v78 = v94;
                  v80 = v98;
                  v79 = v99;
                  v81 = v90;
                  v82 = v86;
                  do
                  {
                    v83 = v79;
                    *v81 = 0;
                    v38 -= v43[v82] * (*v74 - 1);
                    --v79;
                    v81 = &v78[v50 - 8];
                    v77 = *v81;
                    v78 -= 4;
                    if (v83 < 2)
                    {
                      break;
                    }

                    v74 = (v80 + v50);
                    v84 = *(v80 + v50) - 1;
                    v80 -= 4;
                    v82 = v79;
                  }

                  while (v77 == v84);
                  v85 = &v78[v50 - 4];
                  v74 = v100;
                }

                else
                {
                  v79 = v86;
                  v85 = v90;
                }

                *v85 = v77 + 1;
                v38 += v43[v79];
                *&v109 = v38;
              }

              ++v45;
              ++v76;
            }

            while (v76 != v95);
          }

          *&v109 = 0;
          if (v88 >= 1)
          {
            bzero(v41, v88);
          }

          v38 = 0;
          goto LABEL_84;
        }

        if ((v91 & 1) == 0)
        {
          memmove((v96 + 8 * v45), (v93 + 8 * v53), __len);
        }

        v45 += v95;
      }

      v41 = v94;
      v75 = v101;
LABEL_84:
      v44 = v75 + 1;
    }

    while (v44 != v97);
  }

  if (v41)
  {
    *&v113 = v41;
    operator delete(v41);
    v43 = v111;
  }

  if (v43)
  {
    *(&v111 + 1) = v43;
    operator delete(v43);
  }

  if (*(&v109 + 1))
  {
    operator delete(*(&v109 + 1));
  }

  *&v109 = v114;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v109);
}