uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<int,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v84 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      v20 = *(*v13 + 4 * v19 * v17);
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        v24 = *(v18 + 4 * v19 * v23);
        if (v20 < v24)
        {
          break;
        }

        if (v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v82 = a5;
      v83 = a6;
      v78 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v37 = (v21 > 0) - v21;
        v31 = &a2[4 * result * (v37 >> 1) + v16];
        v38 = ((a6 - a4) >> 2) / a5;
        if (v38)
        {
          v39 = *v31;
          v40 = *(v18 + 4 * v19 * v39);
          v27 = a4;
          do
          {
            v41 = v38 >> 1;
            v42 = &v27[a3 * v41];
            v43 = *v42;
            v44 = *(v18 + 4 * v19 * v43);
            if (v44 < v40 || (v43 < v39 ? (v45 = v44 == v40) : (v45 = 0), v45))
            {
              v27 = &v42[a3];
              LODWORD(v41) = v38 + ~v41;
            }

            LODWORD(v38) = v41;
          }

          while (v41);
        }

        else
        {
          v27 = a4;
        }

        v86 = (v37 >> 1);
        v85 = ((v27 - a4) >> 2) / a3;
      }

      else
      {
        v27 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v28 = ((a4 - a2 - v16) >> 2) / a3;
        if (v28)
        {
          v29 = *v27;
          v30 = *(v18 + 4 * v19 * v29);
          v31 = &a2[v16];
          do
          {
            v32 = v28 >> 1;
            v33 = &v31[v22 * v32];
            v34 = *v33;
            v35 = *(v18 + 4 * v19 * v34);
            if (v30 >= v35 && (v29 >= v34 || v30 != v35))
            {
              v31 = &v33[4 * result];
              LODWORD(v32) = v28 + ~v32;
            }

            LODWORD(v28) = v32;
          }

          while (v32);
        }

        else
        {
          v31 = &a2[v16];
        }

        LODWORD(v85) = v11 / 2;
        v86 = ((v31 - a2 - v16) >> 2) / result;
      }

      v12 = (-v21 - v86);
      v80 = a3;
      v81 = result;
      v46 = v88;
      if (v86 + v85 >= v11 - (v86 + v85) - v21)
      {
        v51 = v88;
        v52 = v87;
        v27 = v31;
        v13 = a7;
        result = v81;
        a3 = v81;
        v46 = v78;
        v50 = v85;
        LODWORD(v12) = v86;
        a5 = v52;
        a6 = v51;
      }

      else
      {
        v47 = &a2[v16];
        v48 = v31;
        v49 = v87;
        v13 = a7;
        result = v49;
        a5 = v82;
        a6 = v83;
        a3 = v80;
        v50 = v11 - v85;
      }

      v11 = v50;
      a2 = v46;
      a4 = v27;
      if (!v50)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v63 = 4 * result;
        v64 = a2;
        v65 = a10;
        do
        {
          *v65++ = *v64;
          v64 = (v64 + v63);
        }

        while (v64 != a4);
        v66 = *v13;
        v67 = v13[1];
        v68 = v65 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v69 = *a4;
          v70 = *v84;
          v71 = *(v66 + 4 * v67 * v69);
          v72 = *(v66 + 4 * v67 * v70);
          if (v71 < v72 || (v69 < v70 ? (v73 = v71 == v72) : (v73 = 0), v73))
          {
            *a2 = v69;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v70;
            ++v84;
          }

          a2 += v63;
          if (v65 == v84)
          {
            return result;
          }
        }

        v74 = v84 - 1;
        do
        {
          v75 = v74[1];
          ++v74;
          *a2 = v75;
          a2 += v63;
        }

        while (v68 != v74);
      }
    }

    else if (a6 != a4)
    {
      v53 = a4;
      v54 = a10;
      do
      {
        *v54++ = *v53;
        v53 += 4 * a3;
      }

      while (v53 != a6);
      v55 = *v13;
      v56 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v57 = &a4[-4 * a3];
        v58 = *(v54 - 1);
        v59 = *v57;
        v60 = *(v55 + 4 * v56 * v58);
        v61 = *(v55 + 4 * v56 * v59);
        if (v60 >= v61 && (v58 >= v59 || v60 != v61))
        {
          LODWORD(v59) = *(v54 - 1);
          v57 = a4;
          --v54;
        }

        a6 -= 4 * a5;
        *a6 = v59;
        a4 = v57;
        if (v54 == a10)
        {
          return result;
        }
      }

      if (v54 != a10)
      {
        v76 = -4 * a5;
        do
        {
          v77 = *--v54;
          *&a6[v76] = v77;
          v76 -= 4 * a5;
        }

        while (v54 != a10);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<long long,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + 8 * v14 * v12);
      v16 = *(*a5 + 8 * v14 * v13);
      if (v15 < v16 || (v12 < v13 ? (v17 = v15 == v16) : (v17 = 0), v17))
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v18 = result;
      if (a6 > 128)
      {
        v35 = a7;
        v36 = a6 >> 1;
        v37 = a6;
        v52 = a6 - (a6 >> 1);
        v38 = &a2[result * v36];
        if (a6 <= a8)
        {
          v39 = &v35[v36];
          v40 = *a5;
          v41 = a5[1];
          v42 = 4 * v18;
          v43 = v39;
          v44 = &v35[v37];
          while (v43 != v44)
          {
            v45 = *v43;
            v46 = *v35;
            v47 = *(v40 + 8 * v41 * v45);
            v48 = *(v40 + 8 * v41 * v46);
            if (v47 < v48 || (v45 < v46 ? (v49 = v47 == v48) : (v49 = 0), v49))
            {
              *v11 = v45;
              ++v43;
            }

            else
            {
              *v11 = v46;
              ++v35;
            }

            v11 += v42;
            if (v35 == v39)
            {
              while (v43 != v44)
              {
                v51 = *v43++;
                *v11 = v51;
                v11 += v42;
              }

              return result;
            }
          }

          while (v35 != v39)
          {
            v50 = *v35++;
            *v11 = v50;
            v11 += v42;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v19 = &a2[result];
        if (v19 != a4)
        {
          v20 = 0;
          v21 = *a5;
          v22 = a5[1];
          v23 = 4 * result;
          v24 = a2;
          do
          {
            v25 = v19;
            v26 = *v19;
            v27 = *v24;
            v28 = *(v21 + 8 * v22 * v26);
            result = *(v21 + 8 * v22 * v27);
            if (v28 < result || (v26 < v27 ? (v29 = v28 == result) : (v29 = 0), v29))
            {
              *v25 = v27;
              if (v24 == a2)
              {
LABEL_30:
                v33 = a2;
              }

              else
              {
                v30 = v20;
                while (1)
                {
                  v31 = *(a2 + v30 + -4 * v18);
                  result = *(v21 + 8 * v22 * v31);
                  if (v28 >= result && (v26 >= v31 || v28 != result))
                  {
                    break;
                  }

                  *(a2 + v30) = v31;
                  v30 -= v23;
                  if (!v30)
                  {
                    goto LABEL_30;
                  }
                }

                v33 = (a2 + v30);
              }

              *v33 = v26;
            }

            v19 = &v25[v18];
            v20 += v23;
            v24 = v25;
          }

          while (v19 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<long long,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + 8 * v15 * v13);
      v17 = *(*a5 + 8 * v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v37 = a6 >> 1;
      v38 = &a2[result * v37];
      if (4 * v18 * v37)
      {
        v40 = *a5;
        v41 = a5[1];
        v39 = &v9[v18 * v37];
        while (v39 != a4 || v18 != a3)
        {
          v42 = *v39;
          v43 = *v9;
          v44 = *(v40 + 8 * v41 * v42);
          v45 = *(v40 + 8 * v41 * v43);
          if (v44 < v45 || (v42 < v43 ? (v46 = v44 == v45) : (v46 = 0), v46))
          {
            *v7 = v42;
            v39 += v18;
          }

          else
          {
            *v7 = v43;
            v9 += v18;
          }

          ++v7;
          if (v9 == v38)
          {
            goto LABEL_46;
          }
        }

        for (; v9 != v38; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v39 = &v9[v18 * v37];
LABEL_46:
        while (v39 != a4)
        {
          *v7++ = *v39;
          v39 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + 8 * v22 * v27);
          v29 = *(v21 + 8 * v22 * v26);
          if (v28 < v29 || (v27 < v25 ? (v30 = v28 == v29) : (v30 = 0), v30))
          {
            v23[1] = v25;
            v31 = a7;
            if (v23 != a7)
            {
              v32 = v20;
              do
              {
                v33 = *v19;
                v34 = *(a7 + v32 - 4);
                v35 = *(v21 + 8 * v22 * v33);
                result = *(v21 + 8 * v22 * v34);
                if (v35 >= result && (v33 >= v34 || v35 != result))
                {
                  v31 = (a7 + v32);
                  goto LABEL_30;
                }

                *(a7 + v32) = v34;
                v32 -= 4;
              }

              while (v32);
              v31 = a7;
            }

LABEL_30:
            *v31 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += v18;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<long long,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v84 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      v20 = *(*v13 + 8 * v19 * v17);
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        v24 = *(v18 + 8 * v19 * v23);
        if (v20 < v24)
        {
          break;
        }

        if (v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v82 = a5;
      v83 = a6;
      v78 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v37 = (v21 > 0) - v21;
        v31 = &a2[4 * result * (v37 >> 1) + v16];
        v38 = ((a6 - a4) >> 2) / a5;
        if (v38)
        {
          v39 = *v31;
          v40 = *(v18 + 8 * v19 * v39);
          v27 = a4;
          do
          {
            v41 = v38 >> 1;
            v42 = &v27[a3 * v41];
            v43 = *v42;
            v44 = *(v18 + 8 * v19 * v43);
            if (v44 < v40 || (v43 < v39 ? (v45 = v44 == v40) : (v45 = 0), v45))
            {
              v27 = &v42[a3];
              LODWORD(v41) = v38 + ~v41;
            }

            LODWORD(v38) = v41;
          }

          while (v41);
        }

        else
        {
          v27 = a4;
        }

        v86 = (v37 >> 1);
        v85 = ((v27 - a4) >> 2) / a3;
      }

      else
      {
        v27 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v28 = ((a4 - a2 - v16) >> 2) / a3;
        if (v28)
        {
          v29 = *v27;
          v30 = *(v18 + 8 * v19 * v29);
          v31 = &a2[v16];
          do
          {
            v32 = v28 >> 1;
            v33 = &v31[v22 * v32];
            v34 = *v33;
            v35 = *(v18 + 8 * v19 * v34);
            if (v30 >= v35 && (v29 >= v34 || v30 != v35))
            {
              v31 = &v33[4 * result];
              LODWORD(v32) = v28 + ~v32;
            }

            LODWORD(v28) = v32;
          }

          while (v32);
        }

        else
        {
          v31 = &a2[v16];
        }

        LODWORD(v85) = v11 / 2;
        v86 = ((v31 - a2 - v16) >> 2) / result;
      }

      v12 = (-v21 - v86);
      v80 = a3;
      v81 = result;
      v46 = v88;
      if (v86 + v85 >= v11 - (v86 + v85) - v21)
      {
        v51 = v88;
        v52 = v87;
        v27 = v31;
        v13 = a7;
        result = v81;
        a3 = v81;
        v46 = v78;
        v50 = v85;
        LODWORD(v12) = v86;
        a5 = v52;
        a6 = v51;
      }

      else
      {
        v47 = &a2[v16];
        v48 = v31;
        v49 = v87;
        v13 = a7;
        result = v49;
        a5 = v82;
        a6 = v83;
        a3 = v80;
        v50 = v11 - v85;
      }

      v11 = v50;
      a2 = v46;
      a4 = v27;
      if (!v50)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v63 = 4 * result;
        v64 = a2;
        v65 = a10;
        do
        {
          *v65++ = *v64;
          v64 = (v64 + v63);
        }

        while (v64 != a4);
        v66 = *v13;
        v67 = v13[1];
        v68 = v65 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v69 = *a4;
          v70 = *v84;
          v71 = *(v66 + 8 * v67 * v69);
          v72 = *(v66 + 8 * v67 * v70);
          if (v71 < v72 || (v69 < v70 ? (v73 = v71 == v72) : (v73 = 0), v73))
          {
            *a2 = v69;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v70;
            ++v84;
          }

          a2 += v63;
          if (v65 == v84)
          {
            return result;
          }
        }

        v74 = v84 - 1;
        do
        {
          v75 = v74[1];
          ++v74;
          *a2 = v75;
          a2 += v63;
        }

        while (v68 != v74);
      }
    }

    else if (a6 != a4)
    {
      v53 = a4;
      v54 = a10;
      do
      {
        *v54++ = *v53;
        v53 += 4 * a3;
      }

      while (v53 != a6);
      v55 = *v13;
      v56 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v57 = &a4[-4 * a3];
        v58 = *(v54 - 1);
        v59 = *v57;
        v60 = *(v55 + 8 * v56 * v58);
        v61 = *(v55 + 8 * v56 * v59);
        if (v60 >= v61 && (v58 >= v59 || v60 != v61))
        {
          LODWORD(v59) = *(v54 - 1);
          v57 = a4;
          --v54;
        }

        a6 -= 4 * a5;
        *a6 = v59;
        a4 = v57;
        if (v54 == a10)
        {
          return result;
        }
      }

      if (v54 != a10)
      {
        v76 = -4 * a5;
        do
        {
          v77 = *--v54;
          *&a6[v76] = v77;
          v76 -= 4 * a5;
        }

        while (v54 != a10);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<float,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + 4 * v14 * v12);
      v16 = *(*a5 + 4 * v14 * v13);
      if (v15 < v16 || v12 < v13 && v15 == v16)
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v17 = result;
      if (a6 > 128)
      {
        v34 = a7;
        v35 = a6 >> 1;
        v36 = a6;
        v50 = a6 - (a6 >> 1);
        v37 = &a2[result * v35];
        if (a6 <= a8)
        {
          v38 = &v34[v35];
          v39 = *a5;
          v40 = a5[1];
          v41 = 4 * v17;
          v42 = v38;
          v43 = &v34[v36];
          while (v42 != v43)
          {
            v44 = *v42;
            v45 = *v34;
            v46 = *(v39 + 4 * v40 * v44);
            v47 = *(v39 + 4 * v40 * v45);
            if (v46 < v47 || v44 < v45 && v46 == v47)
            {
              *v11 = v44;
              ++v42;
            }

            else
            {
              *v11 = v45;
              ++v34;
            }

            v11 += v41;
            if (v34 == v38)
            {
              while (v42 != v43)
              {
                v49 = *v42++;
                *v11 = v49;
                v11 += v41;
              }

              return result;
            }
          }

          while (v34 != v38)
          {
            v48 = *v34++;
            *v11 = v48;
            v11 += v41;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v18 = &a2[result];
        if (v18 != a4)
        {
          v19 = 0;
          v20 = *a5;
          v21 = a5[1];
          v22 = 4 * result;
          v23 = a2;
          do
          {
            v24 = v23;
            v23 = v18;
            v25 = *v18;
            v26 = *v24;
            v27 = *(v20 + 4 * v21 * v25);
            v28 = *(v20 + 4 * v21 * v26);
            if (v27 < v28 || v25 < v26 && v27 == v28)
            {
              *v23 = v26;
              if (v24 == a2)
              {
LABEL_21:
                v32 = a2;
              }

              else
              {
                v29 = v19;
                while (1)
                {
                  v30 = *(a2 + v29 + -4 * result);
                  v31 = *(v20 + 4 * v21 * v30);
                  if (v27 >= v31 && (v25 >= v30 || v27 != v31))
                  {
                    break;
                  }

                  *(a2 + v29) = v30;
                  v29 -= v22;
                  if (!v29)
                  {
                    goto LABEL_21;
                  }
                }

                v32 = (a2 + v29);
              }

              *v32 = v25;
            }

            v18 = &v23[result];
            v19 += v22;
          }

          while (v18 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<float,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + 4 * v15 * v13);
      v17 = *(*a5 + 4 * v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v36 = a6 >> 1;
      v37 = &a2[result * v36];
      if (4 * v18 * v36)
      {
        v39 = *a5;
        v40 = a5[1];
        v38 = &v9[v18 * v36];
        while (v38 != a4 || v18 != a3)
        {
          v41 = *v38;
          v42 = *v9;
          v43 = *(v39 + 4 * v40 * v41);
          v44 = *(v39 + 4 * v40 * v42);
          if (v43 < v44 || v41 < v42 && v43 == v44)
          {
            *v7 = v41;
            v38 += v18;
          }

          else
          {
            *v7 = v42;
            v9 += v18;
          }

          ++v7;
          if (v9 == v37)
          {
            goto LABEL_40;
          }
        }

        for (; v9 != v37; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v38 = &v9[v18 * v36];
LABEL_40:
        while (v38 != a4)
        {
          *v7++ = *v38;
          v38 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + 4 * v22 * v27);
          v29 = *(v21 + 4 * v22 * v26);
          if (v28 < v29 || v27 < v25 && v28 == v29)
          {
            v23[1] = v25;
            v30 = a7;
            if (v23 != a7)
            {
              v31 = v20;
              while (1)
              {
                v32 = *v19;
                v33 = *(a7 + v31 - 4);
                v34 = *(v21 + 4 * v22 * v32);
                v35 = *(v21 + 4 * v22 * v33);
                if (v34 >= v35 && (v32 >= v33 || v34 != v35))
                {
                  break;
                }

                *(a7 + v31) = v33;
                v31 -= 4;
                if (!v31)
                {
                  v30 = a7;
                  goto LABEL_26;
                }
              }

              v30 = (a7 + v31);
            }

LABEL_26:
            *v30 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += result;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<float,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v79 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      v20 = *(*v13 + 4 * v19 * v17);
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        v24 = *(v18 + 4 * v19 * v23);
        if (v20 < v24 || v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v77 = a5;
      v78 = a6;
      v73 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v35 = (v21 > 0) - v21;
        v30 = &a2[4 * result * (v35 >> 1) + v16];
        v36 = ((a6 - a4) >> 2) / a5;
        if (v36)
        {
          v37 = *v30;
          v38 = *(v18 + 4 * v19 * v37);
          v26 = a4;
          do
          {
            v39 = v36 >> 1;
            v40 = &v26[a3 * v39];
            v41 = *v40;
            v42 = *(v18 + 4 * v19 * v41);
            if (v42 < v38 || v41 < v37 && v42 == v38)
            {
              v26 = &v40[a3];
              LODWORD(v39) = v36 + ~v39;
            }

            LODWORD(v36) = v39;
          }

          while (v39);
        }

        else
        {
          v26 = a4;
        }

        v81 = (v35 >> 1);
        v80 = ((v26 - a4) >> 2) / a3;
      }

      else
      {
        v26 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v27 = ((a4 - a2 - v16) >> 2) / a3;
        if (v27)
        {
          v28 = *v26;
          v29 = *(v18 + 4 * v19 * v28);
          v30 = &a2[v16];
          do
          {
            v31 = v27 >> 1;
            v32 = &v30[v22 * v31];
            v33 = *v32;
            v34 = *(v18 + 4 * v19 * v33);
            if (v29 >= v34 && (v28 >= v33 || v29 != v34))
            {
              v30 = &v32[4 * result];
              LODWORD(v31) = v27 + ~v31;
            }

            LODWORD(v27) = v31;
          }

          while (v31);
        }

        else
        {
          v30 = &a2[v16];
        }

        LODWORD(v80) = v11 / 2;
        v81 = ((v30 - a2 - v16) >> 2) / result;
      }

      v12 = -(v81 + v21);
      v75 = a3;
      v76 = result;
      v43 = v83;
      if (v81 + v80 >= v11 - (v81 + v80) - v21)
      {
        v48 = v83;
        v49 = v82;
        v26 = v30;
        v13 = a7;
        result = v76;
        a3 = v76;
        v43 = v73;
        v47 = v80;
        LODWORD(v12) = v81;
        a5 = v49;
        a6 = v48;
      }

      else
      {
        v44 = &a2[v16];
        v45 = v30;
        v46 = v82;
        v13 = a7;
        result = v46;
        a5 = v77;
        a6 = v78;
        a3 = v75;
        v47 = v11 - v80;
      }

      v11 = v47;
      a2 = v43;
      a4 = v26;
      if (!v47)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v59 = 4 * result;
        v60 = a2;
        v61 = a10;
        do
        {
          *v61++ = *v60;
          v60 = (v60 + v59);
        }

        while (v60 != a4);
        v62 = *v13;
        v63 = v13[1];
        v64 = v61 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v65 = *a4;
          v66 = *v79;
          v67 = *(v62 + 4 * v63 * v65);
          v68 = *(v62 + 4 * v63 * v66);
          if (v67 < v68 || v65 < v66 && v67 == v68)
          {
            *a2 = v65;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v66;
            ++v79;
          }

          a2 += v59;
          if (v61 == v79)
          {
            return result;
          }
        }

        v69 = v79 - 1;
        do
        {
          v70 = v69[1];
          ++v69;
          *a2 = v70;
          a2 += v59;
        }

        while (v64 != v69);
      }
    }

    else if (a6 != a4)
    {
      v50 = a4;
      v51 = a10;
      do
      {
        *v51++ = *v50;
        v50 += 4 * a3;
      }

      while (v50 != a6);
      v52 = *v13;
      v53 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v54 = &a4[-4 * a3];
        v55 = *(v51 - 1);
        v56 = *v54;
        v57 = *(v52 + 4 * v53 * v55);
        v58 = *(v52 + 4 * v53 * v56);
        if (v57 >= v58 && (v55 >= v56 || v57 != v58))
        {
          LODWORD(v56) = *(v51 - 1);
          v54 = a4;
          --v51;
        }

        a6 -= 4 * a5;
        *a6 = v56;
        a4 = v54;
        if (v51 == a10)
        {
          return result;
        }
      }

      if (v51 != a10)
      {
        v71 = -4 * a5;
        do
        {
          v72 = *--v51;
          *&a6[v71] = v72;
          v71 -= 4 * a5;
        }

        while (v51 != a10);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<double,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + 8 * v14 * v12);
      v16 = *(*a5 + 8 * v14 * v13);
      if (v15 < v16 || v12 < v13 && v15 == v16)
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v17 = result;
      if (a6 > 128)
      {
        v34 = a7;
        v35 = a6 >> 1;
        v36 = a6;
        v50 = a6 - (a6 >> 1);
        v37 = &a2[result * v35];
        if (a6 <= a8)
        {
          v38 = &v34[v35];
          v39 = *a5;
          v40 = a5[1];
          v41 = 4 * v17;
          v42 = v38;
          v43 = &v34[v36];
          while (v42 != v43)
          {
            v44 = *v42;
            v45 = *v34;
            v46 = *(v39 + 8 * v40 * v44);
            v47 = *(v39 + 8 * v40 * v45);
            if (v46 < v47 || v44 < v45 && v46 == v47)
            {
              *v11 = v44;
              ++v42;
            }

            else
            {
              *v11 = v45;
              ++v34;
            }

            v11 += v41;
            if (v34 == v38)
            {
              while (v42 != v43)
              {
                v49 = *v42++;
                *v11 = v49;
                v11 += v41;
              }

              return result;
            }
          }

          while (v34 != v38)
          {
            v48 = *v34++;
            *v11 = v48;
            v11 += v41;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v18 = &a2[result];
        if (v18 != a4)
        {
          v19 = 0;
          v20 = *a5;
          v21 = a5[1];
          v22 = 4 * result;
          v23 = a2;
          do
          {
            v24 = v23;
            v23 = v18;
            v25 = *v18;
            v26 = *v24;
            v27 = *(v20 + 8 * v21 * v25);
            v28 = *(v20 + 8 * v21 * v26);
            if (v27 < v28 || v25 < v26 && v27 == v28)
            {
              *v23 = v26;
              if (v24 == a2)
              {
LABEL_21:
                v32 = a2;
              }

              else
              {
                v29 = v19;
                while (1)
                {
                  v30 = *(a2 + v29 + -4 * result);
                  v31 = *(v20 + 8 * v21 * v30);
                  if (v27 >= v31 && (v25 >= v30 || v27 != v31))
                  {
                    break;
                  }

                  *(a2 + v29) = v30;
                  v29 -= v22;
                  if (!v29)
                  {
                    goto LABEL_21;
                  }
                }

                v32 = (a2 + v29);
              }

              *v32 = v25;
            }

            v18 = &v23[result];
            v19 += v22;
          }

          while (v18 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<double,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + 8 * v15 * v13);
      v17 = *(*a5 + 8 * v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v36 = a6 >> 1;
      v37 = &a2[result * v36];
      if (4 * v18 * v36)
      {
        v39 = *a5;
        v40 = a5[1];
        v38 = &v9[v18 * v36];
        while (v38 != a4 || v18 != a3)
        {
          v41 = *v38;
          v42 = *v9;
          v43 = *(v39 + 8 * v40 * v41);
          v44 = *(v39 + 8 * v40 * v42);
          if (v43 < v44 || v41 < v42 && v43 == v44)
          {
            *v7 = v41;
            v38 += v18;
          }

          else
          {
            *v7 = v42;
            v9 += v18;
          }

          ++v7;
          if (v9 == v37)
          {
            goto LABEL_40;
          }
        }

        for (; v9 != v37; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v38 = &v9[v18 * v36];
LABEL_40:
        while (v38 != a4)
        {
          *v7++ = *v38;
          v38 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + 8 * v22 * v27);
          v29 = *(v21 + 8 * v22 * v26);
          if (v28 < v29 || v27 < v25 && v28 == v29)
          {
            v23[1] = v25;
            v30 = a7;
            if (v23 != a7)
            {
              v31 = v20;
              while (1)
              {
                v32 = *v19;
                v33 = *(a7 + v31 - 4);
                v34 = *(v21 + 8 * v22 * v32);
                v35 = *(v21 + 8 * v22 * v33);
                if (v34 >= v35 && (v32 >= v33 || v34 != v35))
                {
                  break;
                }

                *(a7 + v31) = v33;
                v31 -= 4;
                if (!v31)
                {
                  v30 = a7;
                  goto LABEL_26;
                }
              }

              v30 = (a7 + v31);
            }

LABEL_26:
            *v30 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += result;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<double,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v79 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      v20 = *(*v13 + 8 * v19 * v17);
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        v24 = *(v18 + 8 * v19 * v23);
        if (v20 < v24 || v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v77 = a5;
      v78 = a6;
      v73 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v35 = (v21 > 0) - v21;
        v30 = &a2[4 * result * (v35 >> 1) + v16];
        v36 = ((a6 - a4) >> 2) / a5;
        if (v36)
        {
          v37 = *v30;
          v38 = *(v18 + 8 * v19 * v37);
          v26 = a4;
          do
          {
            v39 = v36 >> 1;
            v40 = &v26[a3 * v39];
            v41 = *v40;
            v42 = *(v18 + 8 * v19 * v41);
            if (v42 < v38 || v41 < v37 && v42 == v38)
            {
              v26 = &v40[a3];
              LODWORD(v39) = v36 + ~v39;
            }

            LODWORD(v36) = v39;
          }

          while (v39);
        }

        else
        {
          v26 = a4;
        }

        v81 = (v35 >> 1);
        v80 = ((v26 - a4) >> 2) / a3;
      }

      else
      {
        v26 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v27 = ((a4 - a2 - v16) >> 2) / a3;
        if (v27)
        {
          v28 = *v26;
          v29 = *(v18 + 8 * v19 * v28);
          v30 = &a2[v16];
          do
          {
            v31 = v27 >> 1;
            v32 = &v30[v22 * v31];
            v33 = *v32;
            v34 = *(v18 + 8 * v19 * v33);
            if (v29 >= v34 && (v28 >= v33 || v29 != v34))
            {
              v30 = &v32[4 * result];
              LODWORD(v31) = v27 + ~v31;
            }

            LODWORD(v27) = v31;
          }

          while (v31);
        }

        else
        {
          v30 = &a2[v16];
        }

        LODWORD(v80) = v11 / 2;
        v81 = ((v30 - a2 - v16) >> 2) / result;
      }

      v12 = -(v81 + v21);
      v75 = a3;
      v76 = result;
      v43 = v83;
      if (v81 + v80 >= v11 - (v81 + v80) - v21)
      {
        v48 = v83;
        v49 = v82;
        v26 = v30;
        v13 = a7;
        result = v76;
        a3 = v76;
        v43 = v73;
        v47 = v80;
        LODWORD(v12) = v81;
        a5 = v49;
        a6 = v48;
      }

      else
      {
        v44 = &a2[v16];
        v45 = v30;
        v46 = v82;
        v13 = a7;
        result = v46;
        a5 = v77;
        a6 = v78;
        a3 = v75;
        v47 = v11 - v80;
      }

      v11 = v47;
      a2 = v43;
      a4 = v26;
      if (!v47)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v59 = 4 * result;
        v60 = a2;
        v61 = a10;
        do
        {
          *v61++ = *v60;
          v60 = (v60 + v59);
        }

        while (v60 != a4);
        v62 = *v13;
        v63 = v13[1];
        v64 = v61 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v65 = *a4;
          v66 = *v79;
          v67 = *(v62 + 8 * v63 * v65);
          v68 = *(v62 + 8 * v63 * v66);
          if (v67 < v68 || v65 < v66 && v67 == v68)
          {
            *a2 = v65;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v66;
            ++v79;
          }

          a2 += v59;
          if (v61 == v79)
          {
            return result;
          }
        }

        v69 = v79 - 1;
        do
        {
          v70 = v69[1];
          ++v69;
          *a2 = v70;
          a2 += v59;
        }

        while (v64 != v69);
      }
    }

    else if (a6 != a4)
    {
      v50 = a4;
      v51 = a10;
      do
      {
        *v51++ = *v50;
        v50 += 4 * a3;
      }

      while (v50 != a6);
      v52 = *v13;
      v53 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v54 = &a4[-4 * a3];
        v55 = *(v51 - 1);
        v56 = *v54;
        v57 = *(v52 + 8 * v53 * v55);
        v58 = *(v52 + 8 * v53 * v56);
        if (v57 >= v58 && (v55 >= v56 || v57 != v58))
        {
          LODWORD(v56) = *(v51 - 1);
          v54 = a4;
          --v51;
        }

        a6 -= 4 * a5;
        *a6 = v56;
        a4 = v54;
        if (v51 == a10)
        {
          return result;
        }
      }

      if (v51 != a10)
      {
        v71 = -4 * a5;
        do
        {
          v72 = *--v51;
          *&a6[v71] = v72;
          v71 -= 4 * a5;
        }

        while (v51 != a10);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<half,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + 2 * v14 * v12);
      v16 = *(*a5 + 2 * v14 * v13);
      if (v15 < v16 || v12 < v13 && v15 == v16)
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v17 = result;
      if (a6 > 128)
      {
        v34 = a7;
        v35 = a6 >> 1;
        v36 = a6;
        v50 = a6 - (a6 >> 1);
        v37 = &a2[result * v35];
        if (a6 <= a8)
        {
          v38 = &v34[v35];
          v39 = *a5;
          v40 = a5[1];
          v41 = 4 * v17;
          v42 = v38;
          v43 = &v34[v36];
          while (v42 != v43)
          {
            v44 = *v42;
            v45 = *v34;
            v46 = *(v39 + 2 * v40 * v44);
            v47 = *(v39 + 2 * v40 * v45);
            if (v46 < v47 || v44 < v45 && v46 == v47)
            {
              *v11 = v44;
              ++v42;
            }

            else
            {
              *v11 = v45;
              ++v34;
            }

            v11 += v41;
            if (v34 == v38)
            {
              while (v42 != v43)
              {
                v49 = *v42++;
                *v11 = v49;
                v11 += v41;
              }

              return result;
            }
          }

          while (v34 != v38)
          {
            v48 = *v34++;
            *v11 = v48;
            v11 += v41;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v18 = &a2[result];
        if (v18 != a4)
        {
          v19 = 0;
          v20 = *a5;
          v21 = a5[1];
          v22 = 4 * result;
          v23 = a2;
          do
          {
            v24 = v23;
            v23 = v18;
            v25 = *v18;
            v26 = *v24;
            v27 = *(v20 + 2 * v21 * v25);
            v28 = *(v20 + 2 * v21 * v26);
            if (v27 < v28 || v25 < v26 && v27 == v28)
            {
              *v23 = v26;
              if (v24 == a2)
              {
LABEL_21:
                v32 = a2;
              }

              else
              {
                v29 = v19;
                while (1)
                {
                  v30 = *(a2 + v29 + -4 * result);
                  v31 = *(v20 + 2 * v21 * v30);
                  if (v27 >= v31 && (v25 >= v30 || v27 != v31))
                  {
                    break;
                  }

                  *(a2 + v29) = v30;
                  v29 -= v22;
                  if (!v29)
                  {
                    goto LABEL_21;
                  }
                }

                v32 = (a2 + v29);
              }

              *v32 = v25;
            }

            v18 = &v23[result];
            v19 += v22;
          }

          while (v18 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<half,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + 2 * v15 * v13);
      v17 = *(*a5 + 2 * v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v36 = a6 >> 1;
      v37 = &a2[result * v36];
      if (4 * v18 * v36)
      {
        v39 = *a5;
        v40 = a5[1];
        v38 = &v9[v18 * v36];
        while (v38 != a4 || v18 != a3)
        {
          v41 = *v38;
          v42 = *v9;
          v43 = *(v39 + 2 * v40 * v41);
          v44 = *(v39 + 2 * v40 * v42);
          if (v43 < v44 || v41 < v42 && v43 == v44)
          {
            *v7 = v41;
            v38 += v18;
          }

          else
          {
            *v7 = v42;
            v9 += v18;
          }

          ++v7;
          if (v9 == v37)
          {
            goto LABEL_40;
          }
        }

        for (; v9 != v37; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v38 = &v9[v18 * v36];
LABEL_40:
        while (v38 != a4)
        {
          *v7++ = *v38;
          v38 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + 2 * v22 * v27);
          v29 = *(v21 + 2 * v22 * v26);
          if (v28 < v29 || v27 < v25 && v28 == v29)
          {
            v23[1] = v25;
            v30 = a7;
            if (v23 != a7)
            {
              v31 = v20;
              while (1)
              {
                v32 = *v19;
                v33 = *(a7 + v31 - 4);
                v34 = *(v21 + 2 * v22 * v32);
                v35 = *(v21 + 2 * v22 * v33);
                if (v34 >= v35 && (v32 >= v33 || v34 != v35))
                {
                  break;
                }

                *(a7 + v31) = v33;
                v31 -= 4;
                if (!v31)
                {
                  v30 = a7;
                  goto LABEL_26;
                }
              }

              v30 = (a7 + v31);
            }

LABEL_26:
            *v30 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += result;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<half,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v79 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      v20 = *(*v13 + 2 * v19 * v17);
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        v24 = *(v18 + 2 * v19 * v23);
        if (v20 < v24 || v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v77 = a5;
      v78 = a6;
      v73 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v35 = (v21 > 0) - v21;
        v30 = &a2[4 * result * (v35 >> 1) + v16];
        v36 = ((a6 - a4) >> 2) / a5;
        if (v36)
        {
          v37 = *v30;
          v38 = *(v18 + 2 * v19 * v37);
          v26 = a4;
          do
          {
            v39 = v36 >> 1;
            v40 = &v26[a3 * v39];
            v41 = *v40;
            v42 = *(v18 + 2 * v19 * v41);
            if (v42 < v38 || v41 < v37 && v42 == v38)
            {
              v26 = &v40[a3];
              LODWORD(v39) = v36 + ~v39;
            }

            LODWORD(v36) = v39;
          }

          while (v39);
        }

        else
        {
          v26 = a4;
        }

        v81 = (v35 >> 1);
        v80 = ((v26 - a4) >> 2) / a3;
      }

      else
      {
        v26 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v27 = ((a4 - a2 - v16) >> 2) / a3;
        if (v27)
        {
          v28 = *v26;
          v29 = *(v18 + 2 * v19 * v28);
          v30 = &a2[v16];
          do
          {
            v31 = v27 >> 1;
            v32 = &v30[v22 * v31];
            v33 = *v32;
            v34 = *(v18 + 2 * v19 * v33);
            if (v29 >= v34 && (v28 >= v33 || v29 != v34))
            {
              v30 = &v32[4 * result];
              LODWORD(v31) = v27 + ~v31;
            }

            LODWORD(v27) = v31;
          }

          while (v31);
        }

        else
        {
          v30 = &a2[v16];
        }

        LODWORD(v80) = v11 / 2;
        v81 = ((v30 - a2 - v16) >> 2) / result;
      }

      v12 = -(v81 + v21);
      v75 = a3;
      v76 = result;
      v43 = v83;
      if (v81 + v80 >= v11 - (v81 + v80) - v21)
      {
        v48 = v83;
        v49 = v82;
        v26 = v30;
        v13 = a7;
        result = v76;
        a3 = v76;
        v43 = v73;
        v47 = v80;
        LODWORD(v12) = v81;
        a5 = v49;
        a6 = v48;
      }

      else
      {
        v44 = &a2[v16];
        v45 = v30;
        v46 = v82;
        v13 = a7;
        result = v46;
        a5 = v77;
        a6 = v78;
        a3 = v75;
        v47 = v11 - v80;
      }

      v11 = v47;
      a2 = v43;
      a4 = v26;
      if (!v47)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v59 = 4 * result;
        v60 = a2;
        v61 = a10;
        do
        {
          *v61++ = *v60;
          v60 = (v60 + v59);
        }

        while (v60 != a4);
        v62 = *v13;
        v63 = v13[1];
        v64 = v61 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v65 = *a4;
          v66 = *v79;
          v67 = *(v62 + 2 * v63 * v65);
          v68 = *(v62 + 2 * v63 * v66);
          if (v67 < v68 || v65 < v66 && v67 == v68)
          {
            *a2 = v65;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v66;
            ++v79;
          }

          a2 += v59;
          if (v61 == v79)
          {
            return result;
          }
        }

        v69 = v79 - 1;
        do
        {
          v70 = v69[1];
          ++v69;
          *a2 = v70;
          a2 += v59;
        }

        while (v64 != v69);
      }
    }

    else if (a6 != a4)
    {
      v50 = a4;
      v51 = a10;
      do
      {
        *v51++ = *v50;
        v50 += 4 * a3;
      }

      while (v50 != a6);
      v52 = *v13;
      v53 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v54 = &a4[-4 * a3];
        v55 = *(v51 - 1);
        v56 = *v54;
        v57 = *(v52 + 2 * v53 * v55);
        v58 = *(v52 + 2 * v53 * v56);
        if (v57 >= v58 && (v55 >= v56 || v57 != v58))
        {
          LODWORD(v56) = *(v51 - 1);
          v54 = a4;
          --v51;
        }

        a6 -= 4 * a5;
        *a6 = v56;
        a4 = v54;
        if (v51 == a10)
        {
          return result;
        }
      }

      if (v51 != a10)
      {
        v71 = -4 * a5;
        do
        {
          v72 = *--v51;
          *&a6[v71] = v72;
          v71 -= 4 * a5;
        }

        while (v51 != a10);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<mlx::core::_MLX_BFloat16,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      LODWORD(v15) = *(*a5 + 2 * v14 * v12) << 16;
      LODWORD(v16) = *(*a5 + 2 * v14 * v13) << 16;
      if (v15 < v16 || v12 < v13 && v15 == v16)
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v17 = result;
      if (a6 > 128)
      {
        v33 = a7;
        v34 = a6 >> 1;
        v35 = a6;
        v49 = a6 - (a6 >> 1);
        v36 = &a2[result * v34];
        if (a6 <= a8)
        {
          v37 = &v33[v34];
          v38 = *a5;
          v39 = a5[1];
          v40 = 4 * v17;
          v41 = v37;
          v42 = &v33[v35];
          while (v41 != v42)
          {
            v43 = *v41;
            v44 = *v33;
            LODWORD(v45) = *(v38 + 2 * v39 * v43) << 16;
            LODWORD(v46) = *(v38 + 2 * v39 * v44) << 16;
            if (v45 < v46 || v43 < v44 && v45 == v46)
            {
              *v11 = v43;
              ++v41;
            }

            else
            {
              *v11 = v44;
              ++v33;
            }

            v11 += v40;
            if (v33 == v37)
            {
              while (v41 != v42)
              {
                v48 = *v41++;
                *v11 = v48;
                v11 += v40;
              }

              return result;
            }
          }

          while (v33 != v37)
          {
            v47 = *v33++;
            *v11 = v47;
            v11 += v40;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v18 = &a2[result];
        if (v18 != a4)
        {
          v19 = 0;
          v20 = *a5;
          v21 = a5[1];
          v22 = 4 * result;
          v23 = a2;
          do
          {
            v24 = v23;
            v23 = v18;
            v25 = *v18;
            v26 = *v24;
            result = *(v20 + 2 * v21 * v26);
            LODWORD(v27) = *(v20 + 2 * v21 * v25) << 16;
            if (v27 < COERCE_FLOAT(result << 16) || v25 < v26 && v27 == COERCE_FLOAT(result << 16))
            {
              *v23 = v26;
              if (v24 == a2)
              {
LABEL_21:
                v31 = a2;
              }

              else
              {
                v28 = v19;
                while (1)
                {
                  v29 = *(a2 + v28 + -4 * v17);
                  LODWORD(v30) = *(v20 + 2 * v21 * v29) << 16;
                  if (v27 >= v30 && (v25 >= v29 || v27 != v30))
                  {
                    break;
                  }

                  *(a2 + v28) = v29;
                  v28 -= v22;
                  if (!v28)
                  {
                    goto LABEL_21;
                  }
                }

                v31 = (a2 + v28);
              }

              *v31 = v25;
            }

            v18 = &v23[v17];
            v19 += v22;
          }

          while (v18 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<mlx::core::_MLX_BFloat16,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + 2 * v15 * v13);
      v17 = *(*a5 + 2 * v15 * v14);
      if (COERCE_FLOAT(v16 << 16) >= COERCE_FLOAT(v17 << 16) && ((v13 < v14) & (COERCE_FLOAT(v16 << 16) == COERCE_FLOAT(v17 << 16))) == 0)
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v35 = a6 >> 1;
      v36 = &a2[result * v35];
      if (4 * v18 * v35)
      {
        v38 = *a5;
        v39 = a5[1];
        v37 = &v9[v18 * v35];
        while (v37 != a4 || v18 != a3)
        {
          v40 = *v37;
          v41 = *v9;
          LODWORD(v42) = *(v38 + 2 * v39 * v40) << 16;
          LODWORD(v43) = *(v38 + 2 * v39 * v41) << 16;
          if (v42 < v43 || v40 < v41 && v42 == v43)
          {
            *v7 = v40;
            v37 += v18;
          }

          else
          {
            *v7 = v41;
            v9 += v18;
          }

          ++v7;
          if (v9 == v36)
          {
            goto LABEL_40;
          }
        }

        for (; v9 != v36; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v37 = &v9[v18 * v35];
LABEL_40:
        while (v37 != a4)
        {
          *v7++ = *v37;
          v37 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          LODWORD(v28) = *(v21 + 2 * v22 * v27) << 16;
          LODWORD(v29) = *(v21 + 2 * v22 * v26) << 16;
          if (v28 < v29 || v27 < v25 && v28 == v29)
          {
            v23[1] = v25;
            v30 = a7;
            if (v23 != a7)
            {
              v31 = v20;
              while (1)
              {
                v32 = *v19;
                v33 = *(a7 + v31 - 4);
                result = *(v21 + 2 * v22 * v33);
                LODWORD(v34) = *(v21 + 2 * v22 * v32) << 16;
                if (v34 >= COERCE_FLOAT(result << 16) && (v32 >= v33 || v34 != COERCE_FLOAT(result << 16)))
                {
                  break;
                }

                *(a7 + v31) = v33;
                v31 -= 4;
                if (!v31)
                {
                  v30 = a7;
                  goto LABEL_26;
                }
              }

              v30 = (a7 + v31);
            }

LABEL_26:
            *v30 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += v18;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<mlx::core::_MLX_BFloat16,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v79 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      LODWORD(v20) = *(*v13 + 2 * v19 * v17) << 16;
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        LODWORD(v24) = *(v18 + 2 * v19 * v23) << 16;
        if (v20 < v24 || v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v77 = a5;
      v78 = a6;
      v73 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v35 = (v21 > 0) - v21;
        v30 = &a2[4 * result * (v35 >> 1) + v16];
        v36 = ((a6 - a4) >> 2) / a5;
        if (v36)
        {
          v37 = *v30;
          LODWORD(v38) = *(v18 + 2 * v19 * v37) << 16;
          v26 = a4;
          do
          {
            v39 = v36 >> 1;
            v40 = &v26[a3 * v39];
            v41 = *v40;
            LODWORD(v42) = *(v18 + 2 * v19 * v41) << 16;
            if (v42 < v38 || v41 < v37 && v42 == v38)
            {
              v26 = &v40[a3];
              LODWORD(v39) = v36 + ~v39;
            }

            LODWORD(v36) = v39;
          }

          while (v39);
        }

        else
        {
          v26 = a4;
        }

        v81 = (v35 >> 1);
        v80 = ((v26 - a4) >> 2) / a3;
      }

      else
      {
        v26 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v27 = ((a4 - a2 - v16) >> 2) / a3;
        if (v27)
        {
          v28 = *v26;
          LODWORD(v29) = *(v18 + 2 * v19 * v28) << 16;
          v30 = &a2[v16];
          do
          {
            v31 = v27 >> 1;
            v32 = &v30[v22 * v31];
            v33 = *v32;
            LODWORD(v34) = *(v18 + 2 * v19 * v33) << 16;
            if (v29 >= v34 && (v28 >= v33 || v29 != v34))
            {
              v30 = &v32[4 * result];
              LODWORD(v31) = v27 + ~v31;
            }

            LODWORD(v27) = v31;
          }

          while (v31);
        }

        else
        {
          v30 = &a2[v16];
        }

        LODWORD(v80) = v11 / 2;
        v81 = ((v30 - a2 - v16) >> 2) / result;
      }

      v12 = -(v81 + v21);
      v75 = a3;
      v76 = result;
      v43 = v83;
      if (v81 + v80 >= v11 - (v81 + v80) - v21)
      {
        v48 = v83;
        v49 = v82;
        v26 = v30;
        v13 = a7;
        result = v76;
        a3 = v76;
        v43 = v73;
        v47 = v80;
        LODWORD(v12) = v81;
        a5 = v49;
        a6 = v48;
      }

      else
      {
        v44 = &a2[v16];
        v45 = v30;
        v46 = v82;
        v13 = a7;
        result = v46;
        a5 = v77;
        a6 = v78;
        a3 = v75;
        v47 = v11 - v80;
      }

      v11 = v47;
      a2 = v43;
      a4 = v26;
      if (!v47)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v59 = 4 * result;
        v60 = a2;
        v61 = a10;
        do
        {
          *v61++ = *v60;
          v60 = (v60 + v59);
        }

        while (v60 != a4);
        v62 = *v13;
        v63 = v13[1];
        v64 = v61 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v65 = *a4;
          v66 = *v79;
          LODWORD(v67) = *(v62 + 2 * v63 * v65) << 16;
          LODWORD(v68) = *(v62 + 2 * v63 * v66) << 16;
          if (v67 < v68 || v65 < v66 && v67 == v68)
          {
            *a2 = v65;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v66;
            ++v79;
          }

          a2 += v59;
          if (v61 == v79)
          {
            return result;
          }
        }

        v69 = v79 - 1;
        do
        {
          v70 = v69[1];
          ++v69;
          *a2 = v70;
          a2 += v59;
        }

        while (v64 != v69);
      }
    }

    else if (a6 != a4)
    {
      v50 = a4;
      v51 = a10;
      do
      {
        *v51++ = *v50;
        v50 += 4 * a3;
      }

      while (v50 != a6);
      v52 = *v13;
      v53 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v54 = &a4[-4 * a3];
        v55 = *(v51 - 1);
        v56 = *v54;
        LODWORD(v57) = *(v52 + 2 * v53 * v55) << 16;
        LODWORD(v58) = *(v52 + 2 * v53 * v56) << 16;
        if (v57 >= v58 && (v55 >= v56 || v57 != v58))
        {
          LODWORD(v56) = *(v51 - 1);
          v54 = a4;
          --v51;
        }

        a6 -= 4 * a5;
        *a6 = v56;
        a4 = v54;
        if (v51 == a10)
        {
          return result;
        }
      }

      if (v51 != a10)
      {
        v71 = -4 * a5;
        do
        {
          v72 = *--v51;
          *&a6[v71] = v72;
          v71 -= 4 * a5;
        }

        while (v51 != a10);
      }
    }
  }

  return result;
}

float *std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<mlx::core::complex64_t,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(float *result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = (*a5 + 8 * v14 * v12);
      v16 = (*a5 + 8 * v14 * v13);
      if (*v16 > *v15 || ((v17 = v15[1], v18 = v16[1], *v16 == *v15) ? (v19 = v18 <= v17) : (v19 = 1), !v19 || v12 < v13 && (*v16 == *v15 ? (v20 = v17 == v18) : (v20 = 0), v20)))
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v21 = result;
      if (a6 > 128)
      {
        v44 = a7;
        v45 = a6 >> 1;
        v46 = a6;
        v64 = a6 - (a6 >> 1);
        v47 = &a2[result * v45];
        if (a6 <= a8)
        {
          v48 = &v44[v45];
          v49 = *a5;
          v50 = a5[1];
          v51 = 4 * v21;
          v52 = v48;
          v53 = &v44[v46];
          while (v52 != v53)
          {
            v54 = *v52;
            v55 = *v44;
            v56 = (v49 + 8 * v50 * v54);
            v57 = (v49 + 8 * v50 * v55);
            if (*v57 > *v56 || ((v58 = v56[1], v59 = v57[1], *v57 == *v56) ? (v60 = v59 <= v58) : (v60 = 1), !v60 || v54 < v55 && (*v57 == *v56 ? (v61 = v58 == v59) : (v61 = 0), v61)))
            {
              *v11 = v54;
              ++v52;
            }

            else
            {
              *v11 = v55;
              ++v44;
            }

            v11 += v51;
            if (v44 == v48)
            {
              while (v52 != v53)
              {
                v63 = *v52++;
                *v11 = v63;
                v11 += v51;
              }

              return result;
            }
          }

          while (v44 != v48)
          {
            v62 = *v44++;
            *v11 = v62;
            v11 += v51;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v22 = &a2[result];
        if (v22 != a4)
        {
          v23 = 0;
          v24 = *a5;
          v25 = a5[1];
          v26 = 4 * result;
          v27 = a2;
          do
          {
            v28 = v27;
            v27 = v22;
            v29 = *v22;
            v30 = *v28;
            v31 = (v24 + 8 * v25 * v29);
            result = (v24 + 8 * v25 * v30);
            if (*result > *v31 || ((v32 = v31[1], v33 = result[1], *result == *v31) ? (v34 = v33 <= v32) : (v34 = 1), !v34 || v29 < v30 && (*result == *v31 ? (v35 = v32 == v33) : (v35 = 0), v35)))
            {
              *v27 = v30;
              if (v28 == a2)
              {
LABEL_48:
                v42 = a2;
              }

              else
              {
                v36 = v23;
                while (1)
                {
                  v37 = *(a2 + v36 + -4 * v21);
                  result = (v24 + 8 * v25 * v37);
                  if (*result <= *v31)
                  {
                    v38 = v31[1];
                    v39 = result[1];
                    if (*result != *v31 || v39 <= v38)
                    {
                      if (v29 >= v37)
                      {
                        break;
                      }

                      if (*result != *v31 || v38 != v39)
                      {
                        break;
                      }
                    }
                  }

                  *(a2 + v36) = v37;
                  v36 -= v26;
                  if (!v36)
                  {
                    goto LABEL_48;
                  }
                }

                v42 = (a2 + v36);
              }

              *v42 = v29;
            }

            v22 = &v27[v21];
            v23 += v26;
          }

          while (v22 != a4);
        }
      }
    }
  }

  return result;
}

float *std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<mlx::core::complex64_t,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(float *result, unsigned int *a2, float *a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_19:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = (*a5 + 8 * v15 * v13);
      v17 = (*a5 + 8 * v15 * v14);
      if (*v17 <= *v16)
      {
        v18 = v16[1];
        v19 = v17[1];
        if (*v17 != *v16 || v19 <= v18)
        {
          v22 = v18 == v19 && *v17 == *v16;
          if (v13 >= v14 || !v22)
          {
            LODWORD(v13) = *a2;
            v9 = &a4[-a3];
          }
        }
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_19;
    }

    v23 = result;
    if (a6 > 8)
    {
      v48 = a6 >> 1;
      v49 = &a2[result * v48];
      if (4 * v23 * v48)
      {
        v51 = *a5;
        v52 = a5[1];
        v50 = &v9[v23 * v48];
        while (v50 != a4 || v23 != a3)
        {
          v53 = *v50;
          v54 = *v9;
          v55 = (v51 + 8 * v52 * v53);
          v56 = (v51 + 8 * v52 * v54);
          if (*v56 > *v55 || ((v57 = v55[1], v58 = v56[1], *v56 == *v55) ? (v59 = v58 <= v57) : (v59 = 1), !v59 || v53 < v54 && (*v56 == *v55 ? (v60 = v57 == v58) : (v60 = 0), v60)))
          {
            *v7 = v53;
            v50 += v23;
          }

          else
          {
            *v7 = v54;
            v9 += v23;
          }

          ++v7;
          if (v9 == v49)
          {
            goto LABEL_60;
          }
        }

        for (; v9 != v49; v9 += v23)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v50 = &v9[v23 * v48];
LABEL_60:
        while (v50 != a4)
        {
          *v7++ = *v50;
          v50 += v23;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v24 = &a2[result];
      if (v24 != a4)
      {
        v25 = 0;
        v26 = *a5;
        v27 = a5[1];
        v28 = a7;
        v29 = a7;
        do
        {
          v31 = *v29++;
          v30 = v31;
          v32 = *v24;
          v33 = (v26 + 8 * v27 * v32);
          v34 = (v26 + 8 * v27 * v31);
          if (*v34 > *v33 || ((v35 = v33[1], v36 = v34[1], *v34 == *v33) ? (v37 = v36 <= v35) : (v37 = 1), !v37 || v32 < v30 && (*v34 == *v33 ? (v38 = v35 == v36) : (v38 = 0), v38)))
          {
            v28[1] = v30;
            v39 = a7;
            if (v28 != a7)
            {
              v40 = v25;
              while (1)
              {
                v41 = *v24;
                v42 = *(a7 + v40 - 4);
                v43 = (v26 + 8 * v27 * v41);
                result = (v26 + 8 * v27 * v42);
                if (*result <= *v43)
                {
                  v44 = v43[1];
                  v45 = result[1];
                  if (*result != *v43 || v45 <= v44)
                  {
                    if (v41 >= v42)
                    {
                      break;
                    }

                    if (*result != *v43 || v44 != v45)
                    {
                      break;
                    }
                  }
                }

                *(a7 + v40) = v42;
                v40 -= 4;
                if (!v40)
                {
                  v39 = a7;
                  goto LABEL_55;
                }
              }

              v39 = (a7 + v40);
            }

LABEL_55:
            *v39 = *v24;
          }

          else
          {
            *v29 = v32;
          }

          v24 += v23;
          v25 += 4;
          v28 = v29;
        }

        while (v24 != a4);
      }
    }
  }

  return result;
}

float *std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<mlx::core::complex64_t,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(float *result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    v12 = a7;
    v14 = result;
    v97 = a10;
    while (v11 > a11 && a8 > a11)
    {
      if (!a8)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v12;
      v19 = v12[1];
      v20 = (*v12 + 8 * v19 * v17);
      v21 = *v20;
      v22 = v20[1];
      v23 = -a8;
      v24 = 4 * v14;
      while (1)
      {
        v25 = *&a2[v16];
        v26 = (v18 + 8 * v19 * v25);
        if (*v26 > v21)
        {
          break;
        }

        v27 = v26[1];
        if (*v26 == v21 && v27 > v22)
        {
          break;
        }

        if (v17 < v25 && *v26 == v21 && v22 == v27)
        {
          break;
        }

        v16 += v24;
        if (__CFADD__(v23++, 1))
        {
          return result;
        }
      }

      v31 = &a2[v16];
      v95 = a5;
      v96 = a6;
      v91 = &a2[v16];
      v92 = a2;
      if (-v23 >= v11)
      {
        if (v23 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v25;
          return result;
        }

        v45 = (v23 > 0) - v23;
        v31 = &a2[4 * v14 * (v45 >> 1) + v16];
        v46 = ((a6 - a4) >> 2) / a5;
        if (v46)
        {
          v47 = *v31;
          v48 = (v18 + 8 * v19 * v47);
          v49 = *v48;
          v50 = v48[1];
          v32 = a4;
          do
          {
            v51 = v46 >> 1;
            v52 = &v32[a3 * v51];
            v53 = *v52;
            v54 = (v18 + 8 * v19 * v53);
            if (v49 > *v54 || ((v55 = v54[1], v49 == *v54) ? (v56 = v50 <= v55) : (v56 = 1), !v56 || v53 < v47 && (v49 == *v54 ? (v57 = v55 == v50) : (v57 = 0), v57)))
            {
              v32 = &v52[a3];
              LODWORD(v51) = v46 + ~v51;
            }

            LODWORD(v46) = v51;
          }

          while (v51);
        }

        else
        {
          v32 = a4;
        }

        v99 = (v45 >> 1);
        v98 = ((v32 - a4) >> 2) / a3;
      }

      else
      {
        v32 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v33 = ((a4 - a2 - v16) >> 2) / a3;
        if (v33)
        {
          v34 = *v32;
          v35 = (v18 + 8 * v19 * v34);
          v36 = *v35;
          v37 = v35[1];
          do
          {
            v38 = v33 >> 1;
            v39 = &v31[v24 * v38];
            v40 = *v39;
            v41 = (v18 + 8 * v19 * v40);
            if (*v41 <= v36)
            {
              v42 = v41[1];
              if (*v41 != v36 || v42 <= v37)
              {
                if (v34 >= v40 || (*v41 == v36 ? (v44 = v37 == v42) : (v44 = 0), !v44))
                {
                  v31 = &v39[4 * v14];
                  LODWORD(v38) = v33 + ~v38;
                }
              }
            }

            LODWORD(v33) = v38;
          }

          while (v38);
        }

        LODWORD(v98) = v11 / 2;
        v99 = ((v31 - a2 - v16) >> 2) / v14;
      }

      v94 = v14;
      v58 = v11 - v98;
      v93 = a3;
      v14 = v100;
      a2 = v101;
      if (v99 + v98 >= v11 - (v99 + v98) - v23)
      {
        v59 = v101;
        v12 = a7;
        v32 = v31;
        a3 = v94;
        a2 = v91;
        a8 = v99;
        v58 = v98;
        a5 = v14;
        a6 = v59;
        v14 = v94;
      }

      else
      {
        v12 = a7;
        a5 = v95;
        a6 = v96;
        a8 = -(v99 + v23);
        a3 = v93;
      }

      v11 = v58;
      a4 = v32;
      if (!v58)
      {
        return result;
      }
    }

    if (a8 <= v11)
    {
      if (a2 != a4)
      {
        v72 = 4 * v14;
        v73 = a2;
        v74 = a10;
        do
        {
          *v74++ = *v73;
          v73 = (v73 + v72);
        }

        while (v73 != a4);
        v75 = *v12;
        v76 = v12[1];
        v77 = v74 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v78 = *a4;
          v79 = *v97;
          v80 = (v75 + 8 * v76 * v78);
          v81 = (v75 + 8 * v76 * v79);
          if (*v81 > *v80 || ((v82 = v80[1], v83 = v81[1], *v81 == *v80) ? (v84 = v83 <= v82) : (v84 = 1), !v84 || v78 < v79 && (*v81 == *v80 ? (v85 = v82 == v83) : (v85 = 0), v85)))
          {
            *a2 = v78;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v79;
            ++v97;
          }

          a2 += v72;
          if (v74 == v97)
          {
            return result;
          }
        }

        v86 = v97 - 1;
        do
        {
          v87 = v86[1];
          ++v86;
          *a2 = v87;
          a2 += v72;
        }

        while (v77 != v86);
      }
    }

    else if (a6 != a4)
    {
      v60 = a4;
      v61 = a10;
      do
      {
        *v61++ = *v60;
        v60 += 4 * a3;
      }

      while (v60 != a6);
      v62 = *v12;
      v63 = v12[1];
      while (a2 != a4 || a3 != v14)
      {
        v64 = &a4[-4 * a3];
        v65 = *(v61 - 1);
        v66 = *v64;
        v67 = (v62 + 8 * v63 * v65);
        result = (v62 + 8 * v63 * v66);
        if (*result <= *v67)
        {
          v68 = v67[1];
          v69 = result[1];
          if (*result != *v67 || v69 <= v68)
          {
            if (v65 >= v66 || (*result == *v67 ? (v71 = v68 == v69) : (v71 = 0), !v71))
            {
              LODWORD(v66) = *(v61 - 1);
              v64 = a4;
              --v61;
            }
          }
        }

        a6 -= 4 * a5;
        *a6 = v66;
        a4 = v64;
        if (v61 == a10)
        {
          return result;
        }
      }

      if (v61 != a10)
      {
        v88 = -4 * a5;
        do
        {
          v89 = *--v61;
          *&a6[v88] = v89;
          v88 -= 4 * a5;
        }

        while (v61 != a10);
      }
    }
  }

  return result;
}

void *std::__function::__func<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C002F0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C002F0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C002F0;
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

void std::__function::__func<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Sort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C003E8;
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Sort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C003E8;
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Sort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C003E8;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Sort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Sort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Sort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(mlx::core::array *this)
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

      v4 = v1[6];
      v5 = mlx::core::array::shape(this, v3);
      v6 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v6, v6[1], (v6[1] - *v6) >> 2);
      v7 = &v549[4 * v3];
      v8 = v550 - (v7 + 4);
      if (v550 != v7 + 4)
      {
        memmove(&v549[4 * v3], v7 + 4, v550 - (v7 + 4));
      }

      v550 = &v7[v8];
      v9 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
      v10 = v3;
      v11 = v546 + 8 * v3;
      v12 = v547 - (v11 + 8);
      if (v547 != v11 + 8)
      {
        memmove(v11, v11 + 8, v547 - (v11 + 8));
      }

      v547 = &v11[v12];
      v13 = *(*(*this + 24) + 8 * v10);
      v14 = mlx::core::array::shape(this, v10);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v4 < v5)
      {
        goto LABEL_407;
      }

      v15 = 0;
      v16 = *(*this + 152);
      v17 = v13 * v14;
      v18 = MEMORY[0x277D826F0];
      v19 = v4 / v5;
      while (1)
      {
        v20 = (v16 + v539);
        if (v14 < 129)
        {
          v23 = 0;
LABEL_16:
        }

        else
        {
          v21 = v14;
          while (1)
          {
            v22 = operator new(v21, v18);
            if (v22)
            {
              break;
            }

            v23 = v21 >> 1;
            v24 = v21 > 1;
            v21 >>= 1;
            if (!v24)
            {
              goto LABEL_16;
            }
          }

          v25 = v22;
          operator delete(v25);
        }

        v26 = v541 - v540;
        v27 = (v541 - v540) >> 2;
        if (v27)
        {
          v28 = __p;
          v29 = ((v26 << 30) - 0x100000000) >> 32;
          v30 = __p + 4 * v29;
          v31 = *v30;
          v32 = v540 + 4 * v29;
          v33 = v542;
          v34 = v539;
          if (v27 >= 2 && v31 == *v32 - 1)
          {
            v37 = (v26 >> 2) & 0x7FFFFFFF;
            v36 = v37 - 1;
            v38 = 4 * v37;
            v39 = v540 - 8;
            do
            {
              v40 = v36;
              *v30 = 0;
              v34 -= v33[v29] * (*v32 - 1);
              v539 = v34;
              --v36;
              v30 = &v28[v38 - 8];
              v31 = *v30;
              v28 -= 4;
              if (v40 < 2)
              {
                break;
              }

              v32 = &v39[v38];
              v41 = *&v39[4 * v37] - 1;
              v39 -= 4;
              v29 = v36;
            }

            while (v31 == v41);
            v30 = &v28[4 * v37 - 4];
          }

          else
          {
            v36 = ((v26 << 30) - 0x100000000) >> 32;
          }

          *v30 = v31 + 1;
          v539 = v33[v36] + v34;
        }

        if (v19 <= ++v15)
        {
          goto LABEL_407;
        }
      }

    case 1:
      v303 = *(this + 4);
      if (v303 < 0)
      {
        v303 += (v1[1] - *v1) >> 2;
      }

      v304 = v1[6];
      v305 = mlx::core::array::shape(this, v303);
      v306 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v306, v306[1], (v306[1] - *v306) >> 2);
      v307 = &v549[4 * v303];
      v308 = v550 - (v307 + 4);
      if (v550 != v307 + 4)
      {
        memmove(&v549[4 * v303], v307 + 4, v550 - (v307 + 4));
      }

      v550 = &v307[v308];
      v309 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v309 + 24), *(v309 + 32), (*(v309 + 32) - *(v309 + 24)) >> 3);
      v310 = v303;
      v311 = v546 + 8 * v303;
      v312 = v547 - (v311 + 8);
      if (v547 != v311 + 8)
      {
        memmove(v311, v311 + 8, v547 - (v311 + 8));
      }

      v547 = &v311[v312];
      v313 = *(*(*this + 24) + 8 * v310);
      v314 = mlx::core::array::shape(this, v310);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v304 < v305)
      {
        goto LABEL_407;
      }

      v315 = 0;
      v316 = *(*this + 152);
      v317 = v313 * v314;
      v318 = MEMORY[0x277D826F0];
      v319 = v304 / v305;
      do
      {
        v320 = (v316 + v539);
        if (v314 < 129)
        {
          v323 = 0;
LABEL_248:
        }

        else
        {
          v321 = v314;
          while (1)
          {
            v322 = operator new(v321, v318);
            if (v322)
            {
              break;
            }

            v323 = v321 >> 1;
            v24 = v321 > 1;
            v321 >>= 1;
            if (!v24)
            {
              goto LABEL_248;
            }
          }

          v324 = v322;
          operator delete(v324);
        }

        v325 = v541 - v540;
        v326 = (v541 - v540) >> 2;
        if (v326)
        {
          v327 = __p;
          v328 = ((v325 << 30) - 0x100000000) >> 32;
          v329 = __p + 4 * v328;
          v330 = *v329;
          v331 = v540 + 4 * v328;
          v332 = v542;
          v333 = v539;
          if (v326 >= 2 && v330 == *v331 - 1)
          {
            v336 = (v325 >> 2) & 0x7FFFFFFF;
            v335 = v336 - 1;
            v337 = 4 * v336;
            v338 = v540 - 8;
            do
            {
              v339 = v335;
              *v329 = 0;
              v333 -= v332[v328] * (*v331 - 1);
              v539 = v333;
              --v335;
              v329 = &v327[v337 - 8];
              v330 = *v329;
              v327 -= 4;
              if (v339 < 2)
              {
                break;
              }

              v331 = &v338[v337];
              v340 = *&v338[4 * v336] - 1;
              v338 -= 4;
              v328 = v335;
            }

            while (v330 == v340);
            v329 = &v327[4 * v336 - 4];
          }

          else
          {
            v335 = ((v325 << 30) - 0x100000000) >> 32;
          }

          *v329 = v330 + 1;
          v539 = v332[v335] + v333;
        }

        ++v315;
      }

      while (v319 > v315);
      goto LABEL_407;
    case 2:
      v192 = *(this + 4);
      if (v192 < 0)
      {
        v192 += (v1[1] - *v1) >> 2;
      }

      v193 = v1[6];
      v194 = mlx::core::array::shape(this, v192);
      v195 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v195, v195[1], (v195[1] - *v195) >> 2);
      v196 = &v549[4 * v192];
      v197 = v550 - (v196 + 4);
      if (v550 != v196 + 4)
      {
        memmove(&v549[4 * v192], v196 + 4, v550 - (v196 + 4));
      }

      v550 = &v196[v197];
      v198 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v198 + 24), *(v198 + 32), (*(v198 + 32) - *(v198 + 24)) >> 3);
      v199 = v192;
      v200 = v546 + 8 * v192;
      v201 = v547 - (v200 + 8);
      if (v547 != v200 + 8)
      {
        memmove(v200, v200 + 8, v547 - (v200 + 8));
      }

      v547 = &v200[v201];
      v202 = *(*(*this + 24) + 8 * v199);
      v203 = mlx::core::array::shape(this, v199);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v193 < v194)
      {
        goto LABEL_407;
      }

      v204 = 0;
      __szd = *(*this + 152);
      v206 = MEMORY[0x277D826F0];
      v207 = v193 / v194;
      do
      {
        v208 = (__szd + 2 * v539);
        v205 = v202 * v203;
        if (v203 < 129)
        {
          v211 = 0;
LABEL_161:
        }

        else
        {
          v209 = v203;
          while (1)
          {
            v210 = operator new(2 * v209, v206);
            if (v210)
            {
              break;
            }

            v211 = v209 >> 1;
            v24 = v209 > 1;
            v209 >>= 1;
            if (!v24)
            {
              goto LABEL_161;
            }
          }

          v212 = v210;
          operator delete(v212);
        }

        v213 = v541 - v540;
        v214 = (v541 - v540) >> 2;
        if (v214)
        {
          v215 = __p;
          v216 = ((v213 << 30) - 0x100000000) >> 32;
          v217 = __p + 4 * v216;
          v218 = *v217;
          v219 = v540 + 4 * v216;
          v220 = v542;
          v221 = v539;
          if (v214 >= 2 && v218 == *v219 - 1)
          {
            v224 = (v213 >> 2) & 0x7FFFFFFF;
            v223 = v224 - 1;
            v225 = 4 * v224;
            v226 = v540 - 8;
            do
            {
              v227 = v223;
              *v217 = 0;
              v221 -= v220[v216] * (*v219 - 1);
              v539 = v221;
              --v223;
              v217 = &v215[v225 - 8];
              v218 = *v217;
              v215 -= 4;
              if (v227 < 2)
              {
                break;
              }

              v219 = &v226[v225];
              v228 = *&v226[4 * v224] - 1;
              v226 -= 4;
              v216 = v223;
            }

            while (v218 == v228);
            v217 = &v215[4 * v224 - 4];
          }

          else
          {
            v223 = ((v213 << 30) - 0x100000000) >> 32;
          }

          *v217 = v218 + 1;
          v539 = v220[v223] + v221;
        }

        ++v204;
      }

      while (v207 > v204);
      goto LABEL_407;
    case 3:
      v229 = *(this + 4);
      if (v229 < 0)
      {
        v229 += (v1[1] - *v1) >> 2;
      }

      v230 = v1[6];
      v231 = mlx::core::array::shape(this, v229);
      v232 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v232, v232[1], (v232[1] - *v232) >> 2);
      v233 = &v549[4 * v229];
      v234 = v550 - (v233 + 4);
      if (v550 != v233 + 4)
      {
        memmove(&v549[4 * v229], v233 + 4, v550 - (v233 + 4));
      }

      v550 = &v233[v234];
      v235 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v235 + 24), *(v235 + 32), (*(v235 + 32) - *(v235 + 24)) >> 3);
      v236 = v229;
      v237 = v546 + 8 * v229;
      v238 = v547 - (v237 + 8);
      if (v547 != v237 + 8)
      {
        memmove(v237, v237 + 8, v547 - (v237 + 8));
      }

      v547 = &v237[v238];
      v239 = *(*(*this + 24) + 8 * v236);
      v240 = mlx::core::array::shape(this, v236);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v230 < v231)
      {
        goto LABEL_407;
      }

      v241 = 0;
      __sze = *(*this + 152);
      v243 = MEMORY[0x277D826F0];
      v244 = v230 / v231;
      do
      {
        v245 = (__sze + 4 * v539);
        v242 = v239 * v240;
        if (v240 < 129)
        {
          v248 = 0;
LABEL_190:
        }

        else
        {
          v246 = v240;
          while (1)
          {
            v247 = operator new(4 * v246, v243);
            if (v247)
            {
              break;
            }

            v248 = v246 >> 1;
            v24 = v246 > 1;
            v246 >>= 1;
            if (!v24)
            {
              goto LABEL_190;
            }
          }

          v249 = v247;
          operator delete(v249);
        }

        v250 = v541 - v540;
        v251 = (v541 - v540) >> 2;
        if (v251)
        {
          v252 = __p;
          v253 = ((v250 << 30) - 0x100000000) >> 32;
          v254 = __p + 4 * v253;
          v255 = *v254;
          v256 = v540 + 4 * v253;
          v257 = v542;
          v258 = v539;
          if (v251 >= 2 && v255 == *v256 - 1)
          {
            v261 = (v250 >> 2) & 0x7FFFFFFF;
            v260 = v261 - 1;
            v262 = 4 * v261;
            v263 = v540 - 8;
            do
            {
              v264 = v260;
              *v254 = 0;
              v258 -= v257[v253] * (*v256 - 1);
              v539 = v258;
              --v260;
              v254 = &v252[v262 - 8];
              v255 = *v254;
              v252 -= 4;
              if (v264 < 2)
              {
                break;
              }

              v256 = &v263[v262];
              v265 = *&v263[4 * v261] - 1;
              v263 -= 4;
              v253 = v260;
            }

            while (v255 == v265);
            v254 = &v252[4 * v261 - 4];
          }

          else
          {
            v260 = ((v250 << 30) - 0x100000000) >> 32;
          }

          *v254 = v255 + 1;
          v539 = v257[v260] + v258;
        }

        ++v241;
      }

      while (v244 > v241);
      goto LABEL_407;
    case 4:
      v80 = *(this + 4);
      if (v80 < 0)
      {
        v80 += (v1[1] - *v1) >> 2;
      }

      v81 = v1[6];
      v82 = mlx::core::array::shape(this, v80);
      v83 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v83, v83[1], (v83[1] - *v83) >> 2);
      v84 = &v549[4 * v80];
      v85 = v550 - (v84 + 4);
      if (v550 != v84 + 4)
      {
        memmove(&v549[4 * v80], v84 + 4, v550 - (v84 + 4));
      }

      v550 = &v84[v85];
      v86 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v86 + 24), *(v86 + 32), (*(v86 + 32) - *(v86 + 24)) >> 3);
      v87 = v80;
      v88 = v546 + 8 * v80;
      v89 = v547 - (v88 + 8);
      if (v547 != v88 + 8)
      {
        memmove(v88, v88 + 8, v547 - (v88 + 8));
      }

      v547 = &v88[v89];
      v90 = *(*(*this + 24) + 8 * v87);
      v91 = mlx::core::array::shape(this, v87);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v81 < v82)
      {
        goto LABEL_407;
      }

      v92 = 0;
      __sza = *(*this + 152);
      v94 = MEMORY[0x277D826F0];
      v95 = v81 / v82;
      do
      {
        v96 = (__sza + 8 * v539);
        v93 = v90 * v91;
        if (v91 < 129)
        {
          v99 = 0;
LABEL_74:
        }

        else
        {
          v97 = v91;
          while (1)
          {
            v98 = operator new(8 * v97, v94);
            if (v98)
            {
              break;
            }

            v99 = v97 >> 1;
            v24 = v97 > 1;
            v97 >>= 1;
            if (!v24)
            {
              goto LABEL_74;
            }
          }

          v100 = v98;
          operator delete(v100);
        }

        v101 = v541 - v540;
        v102 = (v541 - v540) >> 2;
        if (v102)
        {
          v103 = __p;
          v104 = ((v101 << 30) - 0x100000000) >> 32;
          v105 = __p + 4 * v104;
          v106 = *v105;
          v107 = v540 + 4 * v104;
          v108 = v542;
          v109 = v539;
          if (v102 >= 2 && v106 == *v107 - 1)
          {
            v112 = (v101 >> 2) & 0x7FFFFFFF;
            v111 = v112 - 1;
            v113 = 4 * v112;
            v114 = v540 - 8;
            do
            {
              v115 = v111;
              *v105 = 0;
              v109 -= v108[v104] * (*v107 - 1);
              v539 = v109;
              --v111;
              v105 = &v103[v113 - 8];
              v106 = *v105;
              v103 -= 4;
              if (v115 < 2)
              {
                break;
              }

              v107 = &v114[v113];
              v116 = *&v114[4 * v112] - 1;
              v114 -= 4;
              v104 = v111;
            }

            while (v106 == v116);
            v105 = &v103[4 * v112 - 4];
          }

          else
          {
            v111 = ((v101 << 30) - 0x100000000) >> 32;
          }

          *v105 = v106 + 1;
          v539 = v108[v111] + v109;
        }

        ++v92;
      }

      while (v95 > v92);
      goto LABEL_407;
    case 5:
      v341 = *(this + 4);
      if (v341 < 0)
      {
        v341 += (v1[1] - *v1) >> 2;
      }

      v342 = v1[6];
      v343 = mlx::core::array::shape(this, v341);
      v344 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v344, v344[1], (v344[1] - *v344) >> 2);
      v345 = &v549[4 * v341];
      v346 = v550 - (v345 + 4);
      if (v550 != v345 + 4)
      {
        memmove(&v549[4 * v341], v345 + 4, v550 - (v345 + 4));
      }

      v550 = &v345[v346];
      v347 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v347 + 24), *(v347 + 32), (*(v347 + 32) - *(v347 + 24)) >> 3);
      v348 = v341;
      v349 = v546 + 8 * v341;
      v350 = v547 - (v349 + 8);
      if (v547 != v349 + 8)
      {
        memmove(v349, v349 + 8, v547 - (v349 + 8));
      }

      v547 = &v349[v350];
      v351 = *(*(*this + 24) + 8 * v348);
      v352 = mlx::core::array::shape(this, v348);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v342 < v343)
      {
        goto LABEL_407;
      }

      v353 = 0;
      v354 = *(*this + 152);
      v355 = v351 * v352;
      v356 = MEMORY[0x277D826F0];
      v357 = v342 / v343;
      do
      {
        v358 = (v354 + v539);
        if (v352 < 129)
        {
          v361 = 0;
LABEL_277:
        }

        else
        {
          v359 = v352;
          while (1)
          {
            v360 = operator new(v359, v356);
            if (v360)
            {
              break;
            }

            v361 = v359 >> 1;
            v24 = v359 > 1;
            v359 >>= 1;
            if (!v24)
            {
              goto LABEL_277;
            }
          }

          v362 = v360;
          operator delete(v362);
        }

        v363 = v541 - v540;
        v364 = (v541 - v540) >> 2;
        if (v364)
        {
          v365 = __p;
          v366 = ((v363 << 30) - 0x100000000) >> 32;
          v367 = __p + 4 * v366;
          v368 = *v367;
          v369 = v540 + 4 * v366;
          v370 = v542;
          v371 = v539;
          if (v364 >= 2 && v368 == *v369 - 1)
          {
            v374 = (v363 >> 2) & 0x7FFFFFFF;
            v373 = v374 - 1;
            v375 = 4 * v374;
            v376 = v540 - 8;
            do
            {
              v377 = v373;
              *v367 = 0;
              v371 -= v370[v366] * (*v369 - 1);
              v539 = v371;
              --v373;
              v367 = &v365[v375 - 8];
              v368 = *v367;
              v365 -= 4;
              if (v377 < 2)
              {
                break;
              }

              v369 = &v376[v375];
              v378 = *&v376[4 * v374] - 1;
              v376 -= 4;
              v366 = v373;
            }

            while (v368 == v378);
            v367 = &v365[4 * v374 - 4];
          }

          else
          {
            v373 = ((v363 << 30) - 0x100000000) >> 32;
          }

          *v367 = v368 + 1;
          v539 = v370[v373] + v371;
        }

        ++v353;
      }

      while (v357 > v353);
      goto LABEL_407;
    case 6:
      v416 = *(this + 4);
      if (v416 < 0)
      {
        v416 += (v1[1] - *v1) >> 2;
      }

      v417 = v1[6];
      v418 = mlx::core::array::shape(this, v416);
      v419 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v419, v419[1], (v419[1] - *v419) >> 2);
      v420 = &v549[4 * v416];
      v421 = v550 - (v420 + 4);
      if (v550 != v420 + 4)
      {
        memmove(&v549[4 * v416], v420 + 4, v550 - (v420 + 4));
      }

      v550 = &v420[v421];
      v422 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v422 + 24), *(v422 + 32), (*(v422 + 32) - *(v422 + 24)) >> 3);
      v423 = v416;
      v424 = v546 + 8 * v416;
      v425 = v547 - (v424 + 8);
      if (v547 != v424 + 8)
      {
        memmove(v424, v424 + 8, v547 - (v424 + 8));
      }

      v547 = &v424[v425];
      v426 = *(*(*this + 24) + 8 * v423);
      v427 = mlx::core::array::shape(this, v423);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v417 < v418)
      {
        goto LABEL_407;
      }

      v428 = 0;
      __szh = *(*this + 152);
      v430 = MEMORY[0x277D826F0];
      v431 = v417 / v418;
      do
      {
        v432 = (__szh + 2 * v539);
        v429 = v426 * v427;
        if (v427 < 129)
        {
          v435 = 0;
LABEL_335:
        }

        else
        {
          v433 = v427;
          while (1)
          {
            v434 = operator new(2 * v433, v430);
            if (v434)
            {
              break;
            }

            v435 = v433 >> 1;
            v24 = v433 > 1;
            v433 >>= 1;
            if (!v24)
            {
              goto LABEL_335;
            }
          }

          v436 = v434;
          operator delete(v436);
        }

        v437 = v541 - v540;
        v438 = (v541 - v540) >> 2;
        if (v438)
        {
          v439 = __p;
          v440 = ((v437 << 30) - 0x100000000) >> 32;
          v441 = __p + 4 * v440;
          v442 = *v441;
          v443 = v540 + 4 * v440;
          v444 = v542;
          v445 = v539;
          if (v438 >= 2 && v442 == *v443 - 1)
          {
            v448 = (v437 >> 2) & 0x7FFFFFFF;
            v447 = v448 - 1;
            v449 = 4 * v448;
            v450 = v540 - 8;
            do
            {
              v451 = v447;
              *v441 = 0;
              v445 -= v444[v440] * (*v443 - 1);
              v539 = v445;
              --v447;
              v441 = &v439[v449 - 8];
              v442 = *v441;
              v439 -= 4;
              if (v451 < 2)
              {
                break;
              }

              v443 = &v450[v449];
              v452 = *&v450[4 * v448] - 1;
              v450 -= 4;
              v440 = v447;
            }

            while (v442 == v452);
            v441 = &v439[4 * v448 - 4];
          }

          else
          {
            v447 = ((v437 << 30) - 0x100000000) >> 32;
          }

          *v441 = v442 + 1;
          v539 = v444[v447] + v445;
        }

        ++v428;
      }

      while (v431 > v428);
      goto LABEL_407;
    case 7:
      v266 = *(this + 4);
      if (v266 < 0)
      {
        v266 += (v1[1] - *v1) >> 2;
      }

      v267 = v1[6];
      v268 = mlx::core::array::shape(this, v266);
      v269 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v269, v269[1], (v269[1] - *v269) >> 2);
      v270 = &v549[4 * v266];
      v271 = v550 - (v270 + 4);
      if (v550 != v270 + 4)
      {
        memmove(&v549[4 * v266], v270 + 4, v550 - (v270 + 4));
      }

      v550 = &v270[v271];
      v272 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v272 + 24), *(v272 + 32), (*(v272 + 32) - *(v272 + 24)) >> 3);
      v273 = v266;
      v274 = v546 + 8 * v266;
      v275 = v547 - (v274 + 8);
      if (v547 != v274 + 8)
      {
        memmove(v274, v274 + 8, v547 - (v274 + 8));
      }

      v547 = &v274[v275];
      v276 = *(*(*this + 24) + 8 * v273);
      v277 = mlx::core::array::shape(this, v273);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v267 < v268)
      {
        goto LABEL_407;
      }

      v278 = 0;
      __szf = *(*this + 152);
      v280 = MEMORY[0x277D826F0];
      v281 = v267 / v268;
      do
      {
        v282 = (__szf + 4 * v539);
        v279 = v276 * v277;
        if (v277 < 129)
        {
          v285 = 0;
LABEL_219:
        }

        else
        {
          v283 = v277;
          while (1)
          {
            v284 = operator new(4 * v283, v280);
            if (v284)
            {
              break;
            }

            v285 = v283 >> 1;
            v24 = v283 > 1;
            v283 >>= 1;
            if (!v24)
            {
              goto LABEL_219;
            }
          }

          v286 = v284;
          operator delete(v286);
        }

        v287 = v541 - v540;
        v288 = (v541 - v540) >> 2;
        if (v288)
        {
          v289 = __p;
          v290 = ((v287 << 30) - 0x100000000) >> 32;
          v291 = __p + 4 * v290;
          v292 = *v291;
          v293 = v540 + 4 * v290;
          v294 = v542;
          v295 = v539;
          if (v288 >= 2 && v292 == *v293 - 1)
          {
            v298 = (v287 >> 2) & 0x7FFFFFFF;
            v297 = v298 - 1;
            v299 = 4 * v298;
            v300 = v540 - 8;
            do
            {
              v301 = v297;
              *v291 = 0;
              v295 -= v294[v290] * (*v293 - 1);
              v539 = v295;
              --v297;
              v291 = &v289[v299 - 8];
              v292 = *v291;
              v289 -= 4;
              if (v301 < 2)
              {
                break;
              }

              v293 = &v300[v299];
              v302 = *&v300[4 * v298] - 1;
              v300 -= 4;
              v290 = v297;
            }

            while (v292 == v302);
            v291 = &v289[4 * v298 - 4];
          }

          else
          {
            v297 = ((v287 << 30) - 0x100000000) >> 32;
          }

          *v291 = v292 + 1;
          v539 = v294[v297] + v295;
        }

        ++v278;
      }

      while (v281 > v278);
      goto LABEL_407;
    case 8:
      v491 = *(this + 4);
      if (v491 < 0)
      {
        v491 += (v1[1] - *v1) >> 2;
      }

      v492 = v1[6];
      v493 = mlx::core::array::shape(this, v491);
      v494 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v494, v494[1], (v494[1] - *v494) >> 2);
      v495 = &v549[4 * v491];
      v496 = v550 - (v495 + 4);
      if (v550 != v495 + 4)
      {
        memmove(&v549[4 * v491], v495 + 4, v550 - (v495 + 4));
      }

      v550 = &v495[v496];
      v497 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v497 + 24), *(v497 + 32), (*(v497 + 32) - *(v497 + 24)) >> 3);
      v498 = v491;
      v499 = v546 + 8 * v491;
      v500 = v547 - (v499 + 8);
      if (v547 != v499 + 8)
      {
        memmove(v499, v499 + 8, v547 - (v499 + 8));
      }

      v547 = &v499[v500];
      v501 = *(*(*this + 24) + 8 * v498);
      v502 = mlx::core::array::shape(this, v498);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v492 < v493)
      {
        goto LABEL_407;
      }

      v503 = 0;
      __szj = *(*this + 152);
      v505 = MEMORY[0x277D826F0];
      v506 = v492 / v493;
      do
      {
        v507 = (__szj + 8 * v539);
        v504 = v501 * v502;
        if (v502 < 129)
        {
          v510 = 0;
LABEL_393:
        }

        else
        {
          v508 = v502;
          while (1)
          {
            v509 = operator new(8 * v508, v505);
            if (v509)
            {
              break;
            }

            v510 = v508 >> 1;
            v24 = v508 > 1;
            v508 >>= 1;
            if (!v24)
            {
              goto LABEL_393;
            }
          }

          v511 = v509;
          operator delete(v511);
        }

        v512 = v541 - v540;
        v513 = (v541 - v540) >> 2;
        if (v513)
        {
          v514 = __p;
          v515 = ((v512 << 30) - 0x100000000) >> 32;
          v516 = __p + 4 * v515;
          v517 = *v516;
          v518 = v540 + 4 * v515;
          v519 = v542;
          v520 = v539;
          if (v513 >= 2 && v517 == *v518 - 1)
          {
            v523 = (v512 >> 2) & 0x7FFFFFFF;
            v522 = v523 - 1;
            v524 = 4 * v523;
            v525 = v540 - 8;
            do
            {
              v526 = v522;
              *v516 = 0;
              v520 -= v519[v515] * (*v518 - 1);
              v539 = v520;
              --v522;
              v516 = &v514[v524 - 8];
              v517 = *v516;
              v514 -= 4;
              if (v526 < 2)
              {
                break;
              }

              v518 = &v525[v524];
              v527 = *&v525[4 * v523] - 1;
              v525 -= 4;
              v515 = v522;
            }

            while (v517 == v527);
            v516 = &v514[4 * v523 - 4];
          }

          else
          {
            v522 = ((v512 << 30) - 0x100000000) >> 32;
          }

          *v516 = v517 + 1;
          v539 = v519[v522] + v520;
        }

        ++v503;
      }

      while (v506 > v503);
      goto LABEL_407;
    case 9:
      v154 = *(this + 4);
      if (v154 < 0)
      {
        v154 += (v1[1] - *v1) >> 2;
      }

      v155 = v1[6];
      v156 = mlx::core::array::shape(this, v154);
      v157 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v157, v157[1], (v157[1] - *v157) >> 2);
      v158 = &v549[4 * v154];
      v159 = v550 - (v158 + 4);
      if (v550 != v158 + 4)
      {
        memmove(&v549[4 * v154], v158 + 4, v550 - (v158 + 4));
      }

      v550 = &v158[v159];
      v160 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v160 + 24), *(v160 + 32), (*(v160 + 32) - *(v160 + 24)) >> 3);
      v161 = v154;
      v162 = v546 + 8 * v154;
      v163 = v547 - (v162 + 8);
      if (v547 != v162 + 8)
      {
        memmove(v162, v162 + 8, v547 - (v162 + 8));
      }

      v547 = &v162[v163];
      v164 = *(*(*this + 24) + 8 * v161);
      v165 = mlx::core::array::shape(this, v161);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v155 < v156)
      {
        goto LABEL_407;
      }

      v167 = 0;
      __szc = *(*this + 152);
      v169 = MEMORY[0x277D826F0];
      v170 = v155 / v156;
      do
      {
        v171 = (__szc + 2 * v539);
        v168 = v164 * v165;
        if (v165 < 129)
        {
          v174 = 0;
LABEL_132:
        }

        else
        {
          v172 = v165;
          while (1)
          {
            v173 = operator new(2 * v172, v169);
            if (v173)
            {
              break;
            }

            v174 = v172 >> 1;
            v24 = v172 > 1;
            v172 >>= 1;
            if (!v24)
            {
              goto LABEL_132;
            }
          }

          v175 = v173;
          operator delete(v175);
        }

        v176 = v541 - v540;
        v177 = (v541 - v540) >> 2;
        if (v177)
        {
          v178 = __p;
          v179 = ((v176 << 30) - 0x100000000) >> 32;
          v180 = __p + 4 * v179;
          v181 = *v180;
          v182 = v540 + 4 * v179;
          v183 = v542;
          v184 = v539;
          if (v177 >= 2 && v181 == *v182 - 1)
          {
            v187 = (v176 >> 2) & 0x7FFFFFFF;
            v186 = v187 - 1;
            v188 = 4 * v187;
            v189 = v540 - 8;
            do
            {
              v190 = v186;
              *v180 = 0;
              v184 -= v183[v179] * (*v182 - 1);
              v539 = v184;
              --v186;
              v180 = &v178[v188 - 8];
              v181 = *v180;
              v178 -= 4;
              if (v190 < 2)
              {
                break;
              }

              v182 = &v189[v188];
              v191 = *&v189[4 * v187] - 1;
              v189 -= 4;
              v179 = v186;
            }

            while (v181 == v191);
            v180 = &v178[4 * v187 - 4];
          }

          else
          {
            v186 = ((v176 << 30) - 0x100000000) >> 32;
          }

          *v180 = v181 + 1;
          v539 = v183[v186] + v184;
        }

        ++v167;
      }

      while (v170 > v167);
      goto LABEL_407;
    case 0xA:
      v453 = *(this + 4);
      if (v453 < 0)
      {
        v453 += (v1[1] - *v1) >> 2;
      }

      v454 = v1[6];
      v455 = mlx::core::array::shape(this, v453);
      v456 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v456, v456[1], (v456[1] - *v456) >> 2);
      v457 = &v549[4 * v453];
      v458 = v550 - (v457 + 4);
      if (v550 != v457 + 4)
      {
        memmove(&v549[4 * v453], v457 + 4, v550 - (v457 + 4));
      }

      v550 = &v457[v458];
      v459 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v459 + 24), *(v459 + 32), (*(v459 + 32) - *(v459 + 24)) >> 3);
      v460 = v453;
      v461 = v546 + 8 * v453;
      v462 = v547 - (v461 + 8);
      if (v547 != v461 + 8)
      {
        memmove(v461, v461 + 8, v547 - (v461 + 8));
      }

      v547 = &v461[v462];
      v463 = *(*(*this + 24) + 8 * v460);
      v464 = mlx::core::array::shape(this, v460);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v454 < v455)
      {
        goto LABEL_407;
      }

      v466 = 0;
      __szi = *(*this + 152);
      v468 = MEMORY[0x277D826F0];
      v469 = v454 / v455;
      do
      {
        v470 = (__szi + 4 * v539);
        v467 = v463 * v464;
        if (v464 < 129)
        {
          v473 = 0;
LABEL_364:
        }

        else
        {
          v471 = v464;
          while (1)
          {
            v472 = operator new(4 * v471, v468);
            if (v472)
            {
              break;
            }

            v473 = v471 >> 1;
            v24 = v471 > 1;
            v471 >>= 1;
            if (!v24)
            {
              goto LABEL_364;
            }
          }

          v474 = v472;
          operator delete(v474);
        }

        v475 = v541 - v540;
        v476 = (v541 - v540) >> 2;
        if (v476)
        {
          v477 = __p;
          v478 = ((v475 << 30) - 0x100000000) >> 32;
          v479 = __p + 4 * v478;
          v480 = *v479;
          v481 = v540 + 4 * v478;
          v482 = v542;
          v483 = v539;
          if (v476 >= 2 && v480 == *v481 - 1)
          {
            v486 = (v475 >> 2) & 0x7FFFFFFF;
            v485 = v486 - 1;
            v487 = 4 * v486;
            v488 = v540 - 8;
            do
            {
              v489 = v485;
              *v479 = 0;
              v483 -= v482[v478] * (*v481 - 1);
              v539 = v483;
              --v485;
              v479 = &v477[v487 - 8];
              v480 = *v479;
              v477 -= 4;
              if (v489 < 2)
              {
                break;
              }

              v481 = &v488[v487];
              v490 = *&v488[4 * v486] - 1;
              v488 -= 4;
              v478 = v485;
            }

            while (v480 == v490);
            v479 = &v477[4 * v486 - 4];
          }

          else
          {
            v485 = ((v475 << 30) - 0x100000000) >> 32;
          }

          *v479 = v480 + 1;
          v539 = v482[v485] + v483;
        }

        ++v466;
      }

      while (v469 > v466);
      goto LABEL_407;
    case 0xB:
      v42 = *(this + 4);
      if (v42 < 0)
      {
        v42 += (v1[1] - *v1) >> 2;
      }

      v43 = v1[6];
      v44 = mlx::core::array::shape(this, v42);
      v45 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v45, v45[1], (v45[1] - *v45) >> 2);
      v46 = &v549[4 * v42];
      v47 = v550 - (v46 + 4);
      if (v550 != v46 + 4)
      {
        memmove(&v549[4 * v42], v46 + 4, v550 - (v46 + 4));
      }

      v550 = &v46[v47];
      v48 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v48 + 24), *(v48 + 32), (*(v48 + 32) - *(v48 + 24)) >> 3);
      v49 = v42;
      v50 = v546 + 8 * v42;
      v51 = v547 - (v50 + 8);
      if (v547 != v50 + 8)
      {
        memmove(v50, v50 + 8, v547 - (v50 + 8));
      }

      v547 = &v50[v51];
      v52 = *(*(*this + 24) + 8 * v49);
      v53 = mlx::core::array::shape(this, v49);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v43 < v44)
      {
        goto LABEL_407;
      }

      v55 = 0;
      __sz = *(*this + 152);
      v57 = MEMORY[0x277D826F0];
      v58 = v43 / v44;
      do
      {
        v59 = (__sz + 8 * v539);
        v56 = v52 * v53;
        if (v53 < 129)
        {
          v62 = 0;
LABEL_45:
        }

        else
        {
          v60 = v53;
          while (1)
          {
            v61 = operator new(8 * v60, v57);
            if (v61)
            {
              break;
            }

            v62 = v60 >> 1;
            v24 = v60 > 1;
            v60 >>= 1;
            if (!v24)
            {
              goto LABEL_45;
            }
          }

          v63 = v61;
          operator delete(v63);
        }

        v64 = v541 - v540;
        v65 = (v541 - v540) >> 2;
        if (v65)
        {
          v66 = __p;
          v67 = ((v64 << 30) - 0x100000000) >> 32;
          v68 = __p + 4 * v67;
          v69 = *v68;
          v70 = v540 + 4 * v67;
          v71 = v542;
          v72 = v539;
          if (v65 >= 2 && v69 == *v70 - 1)
          {
            v75 = (v64 >> 2) & 0x7FFFFFFF;
            v74 = v75 - 1;
            v76 = 4 * v75;
            v77 = v540 - 8;
            do
            {
              v78 = v74;
              *v68 = 0;
              v72 -= v71[v67] * (*v70 - 1);
              v539 = v72;
              --v74;
              v68 = &v66[v76 - 8];
              v69 = *v68;
              v66 -= 4;
              if (v78 < 2)
              {
                break;
              }

              v70 = &v77[v76];
              v79 = *&v77[4 * v75] - 1;
              v77 -= 4;
              v67 = v74;
            }

            while (v69 == v79);
            v68 = &v66[4 * v75 - 4];
          }

          else
          {
            v74 = ((v64 << 30) - 0x100000000) >> 32;
          }

          *v68 = v69 + 1;
          v539 = v71[v74] + v72;
        }

        ++v55;
      }

      while (v58 > v55);
      goto LABEL_407;
    case 0xC:
      v117 = *(this + 4);
      if (v117 < 0)
      {
        v117 += (v1[1] - *v1) >> 2;
      }

      v118 = v1[6];
      v119 = mlx::core::array::shape(this, v117);
      v120 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v120, v120[1], (v120[1] - *v120) >> 2);
      v121 = &v549[4 * v117];
      v122 = v550 - (v121 + 4);
      if (v550 != v121 + 4)
      {
        memmove(&v549[4 * v117], v121 + 4, v550 - (v121 + 4));
      }

      v550 = &v121[v122];
      v123 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v123 + 24), *(v123 + 32), (*(v123 + 32) - *(v123 + 24)) >> 3);
      v124 = v117;
      v125 = v546 + 8 * v117;
      v126 = v547 - (v125 + 8);
      if (v547 != v125 + 8)
      {
        memmove(v125, v125 + 8, v547 - (v125 + 8));
      }

      v547 = &v125[v126];
      v127 = *(*(*this + 24) + 8 * v124);
      v128 = mlx::core::array::shape(this, v124);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v118 < v119)
      {
        goto LABEL_407;
      }

      v129 = 0;
      __szb = *(*this + 152);
      v131 = MEMORY[0x277D826F0];
      v132 = v118 / v119;
      do
      {
        v133 = (__szb + 2 * v539);
        v130 = v127 * v128;
        if (v128 < 129)
        {
          v136 = 0;
LABEL_103:
        }

        else
        {
          v134 = v128;
          while (1)
          {
            v135 = operator new(2 * v134, v131);
            if (v135)
            {
              break;
            }

            v136 = v134 >> 1;
            v24 = v134 > 1;
            v134 >>= 1;
            if (!v24)
            {
              goto LABEL_103;
            }
          }

          v137 = v135;
          operator delete(v137);
        }

        v138 = v541 - v540;
        v139 = (v541 - v540) >> 2;
        if (v139)
        {
          v140 = __p;
          v141 = ((v138 << 30) - 0x100000000) >> 32;
          v142 = __p + 4 * v141;
          v143 = *v142;
          v144 = v540 + 4 * v141;
          v145 = v542;
          v146 = v539;
          if (v139 >= 2 && v143 == *v144 - 1)
          {
            v149 = (v138 >> 2) & 0x7FFFFFFF;
            v148 = v149 - 1;
            v150 = 4 * v149;
            v151 = v540 - 8;
            do
            {
              v152 = v148;
              *v142 = 0;
              v146 -= v145[v141] * (*v144 - 1);
              v539 = v146;
              --v148;
              v142 = &v140[v150 - 8];
              v143 = *v142;
              v140 -= 4;
              if (v152 < 2)
              {
                break;
              }

              v144 = &v151[v150];
              v153 = *&v151[4 * v149] - 1;
              v151 -= 4;
              v141 = v148;
            }

            while (v143 == v153);
            v142 = &v140[4 * v149 - 4];
          }

          else
          {
            v148 = ((v138 << 30) - 0x100000000) >> 32;
          }

          *v142 = v143 + 1;
          v539 = v145[v148] + v146;
        }

        ++v129;
      }

      while (v132 > v129);
      goto LABEL_407;
    case 0xD:
      v379 = *(this + 4);
      if (v379 < 0)
      {
        v379 += (v1[1] - *v1) >> 2;
      }

      v380 = v1[6];
      v381 = mlx::core::array::shape(this, v379);
      v382 = *this;
      v550 = 0;
      v551 = 0;
      v549 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v549, *v382, v382[1], (v382[1] - *v382) >> 2);
      v383 = &v549[4 * v379];
      v384 = v550 - (v383 + 4);
      if (v550 != v383 + 4)
      {
        memmove(&v549[4 * v379], v383 + 4, v550 - (v383 + 4));
      }

      v550 = &v383[v384];
      v385 = *this;
      v547 = 0;
      v548 = 0;
      v546 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v546, *(v385 + 24), *(v385 + 32), (*(v385 + 32) - *(v385 + 24)) >> 3);
      v386 = v379;
      v387 = v546 + 8 * v379;
      v388 = v547 - (v387 + 8);
      if (v547 != v387 + 8)
      {
        memmove(v387, v387 + 8, v547 - (v387 + 8));
      }

      v547 = &v387[v388];
      v389 = *(*(*this + 24) + 8 * v386);
      v390 = mlx::core::array::shape(this, v386);
      mlx::core::ContiguousIterator::ContiguousIterator(&v539, &v549, &v546, (v550 - v549) >> 2);
      if (v380 < v381)
      {
        goto LABEL_407;
      }

      v391 = 0;
      __szg = *(*this + 152);
      v393 = MEMORY[0x277D826F0];
      v394 = v380 / v381;
      break;
    default:
      return;
  }

  do
  {
    v395 = (__szg + 8 * v539);
    v392 = v389 * v390;
    if (v390 < 129)
    {
      v398 = 0;
LABEL_306:
    }

    else
    {
      v396 = v390;
      while (1)
      {
        v397 = operator new(8 * v396, v393);
        if (v397)
        {
          break;
        }

        v398 = v396 >> 1;
        v24 = v396 > 1;
        v396 >>= 1;
        if (!v24)
        {
          goto LABEL_306;
        }
      }

      v399 = v397;
      operator delete(v399);
    }

    v400 = v541 - v540;
    v401 = (v541 - v540) >> 2;
    if (v401)
    {
      v402 = __p;
      v403 = ((v400 << 30) - 0x100000000) >> 32;
      v404 = __p + 4 * v403;
      v405 = *v404;
      v406 = v540 + 4 * v403;
      v407 = v542;
      v408 = v539;
      if (v401 >= 2 && v405 == *v406 - 1)
      {
        v411 = (v400 >> 2) & 0x7FFFFFFF;
        v410 = v411 - 1;
        v412 = 4 * v411;
        v413 = v540 - 8;
        do
        {
          v414 = v410;
          *v404 = 0;
          v408 -= v407[v403] * (*v406 - 1);
          v539 = v408;
          --v410;
          v404 = &v402[v412 - 8];
          v405 = *v404;
          v402 -= 4;
          if (v414 < 2)
          {
            break;
          }

          v406 = &v413[v412];
          v415 = *&v413[4 * v411] - 1;
          v413 -= 4;
          v403 = v410;
        }

        while (v405 == v415);
        v404 = &v402[4 * v411 - 4];
      }

      else
      {
        v410 = ((v400 << 30) - 0x100000000) >> 32;
      }

      *v404 = v405 + 1;
      v539 = v407[v410] + v408;
    }

    ++v391;
  }

  while (v394 > v391);
LABEL_407:
  if (__p)
  {
    v545 = __p;
    operator delete(__p);
  }

  if (v542)
  {
    v543 = v542;
    operator delete(v542);
  }

  if (v540)
  {
    v541 = v540;
    operator delete(v540);
  }

  if (v546)
  {
    v547 = v546;
    operator delete(v546);
  }

  if (v549)
  {
    v550 = v549;
    operator delete(v549);
  }
}

void sub_25A5F9380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<BOOL>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5, unsigned __int8 *a6, uint64_t a7)
{
  if (a5 >= 2)
  {
    v9 = a2;
    if (a5 == 2)
    {
      v10 = a4[-a3];
      v11 = *a2;
      if (v10 < v11)
      {
        *a2 = v10;
        a4[-a3] = v11;
      }
    }

    else if (a5 > 128)
    {
      v24 = a6;
      v25 = a5;
      if (a5 <= a7)
      {
        if (a5 - 65537 >= 0xFFFF00FF)
        {
        }

        else
        {
          v28 = a5 >> 1;
          v29 = a5 - (a5 >> 1);
          v30 = &v24[v28];
          v31 = &v24[v25];
          v32 = &v24[v28];
          while (v32 != v31)
          {
            v33 = *v32;
            v34 = *v24;
            v35 = v33 >= v34;
            if (v33 < v34)
            {
              v36 = 0;
            }

            else
            {
              v36 = *v24;
            }

            if (v35)
            {
              ++v24;
            }

            if (!v35)
            {
              ++v32;
            }

            *v9 = v36;
            v9 += a1;
            if (v24 == v30)
            {
              while (v32 != v31)
              {
                v38 = *v32++;
                *v9 = v38;
                v9 += a1;
              }

              return;
            }
          }

          while (v24 != v30)
          {
            v37 = *v24++;
            *v9 = v37;
            v9 += a1;
          }
        }
      }

      else
      {
        v26 = a5 >> 1;
        v27 = a5 - (a5 >> 1);
      }
    }

    else if (a2 != a4 || a1 != a3)
    {
      v14 = &a2[a1];
      if (&a2[a1] != a4)
      {
        v15 = 0;
        v16 = &a2[a1];
        v17 = a2;
        do
        {
          v18 = *v17;
          v17 = v16;
          v19 = *v16;
          if (v19 < v18)
          {
            v20 = v15;
            while (1)
            {
              v14[v20] = 1;
              if (!v20)
              {
                break;
              }

              v21 = a2[v20 - a1];
              v20 -= a1;
              if (v19 >= v21)
              {
                v22 = &v14[v20];
                goto LABEL_17;
              }
            }

            v22 = a2;
LABEL_17:
            *v22 = v19;
          }

          v16 = &v17[a1];
          v15 += a1;
        }

        while (&v17[a1] != a4);
      }
    }
  }
}

void std::__radix_sort[abi:ne200100]<mlx::core::anonymous namespace::StridedIterator<BOOL>,BOOL *>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  bzero(v18, 0x808uLL);
  if (a2 == a4)
  {
    v9 = 0;
  }

  else
  {
    v10 = a2;
    do
    {
      ++v19[*v10];
      v10 += a1;
    }

    while (v10 != a4);
    v9 = v19[0];
  }

  for (i = 16; i != 2056; i += 8)
  {
    v9 += *&v18[i];
    *&v18[i] = v9;
  }

  if (a2 != a4)
  {
    v12 = a2;
    do
    {
      v13 = *v12;
      v14 = *&v18[8 * v13];
      *&v18[8 * v13] = v14 + 1;
      a5[v14] = v13;
      v12 += a1;
    }

    while (v12 != a4);
  }

  for (j = v20; j; --j)
  {
    v16 = *a5++;
    *a2 = v16;
    a2 += a1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<BOOL>>(uint64_t result, _BYTE *a2, uint64_t a3, _BYTE *a4, unsigned int a5, _BYTE *a6)
{
  if (a5)
  {
    v6 = a6;
    v8 = a2;
    if (a5 == 1)
    {
LABEL_9:
      *v6 = *v8;
      return result;
    }

    if (a5 == 2)
    {
      v11 = a4[-a3];
      v12 = *a2;
      v13 = v11 >= v12;
      if (v11 >= v12)
      {
        LOBYTE(v11) = *a2;
      }

      *a6 = v11;
      v6 = a6 + 1;
      if (v13)
      {
        v8 = &a4[-a3];
      }

      goto LABEL_9;
    }

    v14 = result;
    if (a5 > 8)
    {
      v25 = a5 >> 1;
      v26 = &a2[result * v25];
      if (v14 * v25)
      {
        v27 = &v8[v14 * v25];
        while (v27 != a4 || v14 != a3)
        {
          v28 = *v27;
          v29 = *v8;
          v30 = v28 >= v29;
          if (v28 >= v29)
          {
            v31 = *v8;
          }

          else
          {
            v31 = 0;
          }

          if (v30)
          {
            v32 = 0;
          }

          else
          {
            v32 = v14;
          }

          v27 += v32;
          if (v30)
          {
            v33 = v14;
          }

          else
          {
            v33 = 0;
          }

          v8 += v33;
          *v6++ = v31;
          if (v8 == v26)
          {
            goto LABEL_42;
          }
        }

        while (v8 != v26)
        {
          *v6++ = *v8;
          v8 += v14;
        }
      }

      else
      {
        v27 = &v8[v14 * v25];
LABEL_42:
        while (v27 != a4)
        {
          *v6++ = *v27;
          v27 += v14;
        }
      }
    }

    else if (a2 != a4)
    {
      *a6 = *a2;
      v15 = &a2[result];
      if (&a2[result] != a4)
      {
        v16 = 0;
        v17 = a6;
        v18 = a6;
        do
        {
          v20 = *v18++;
          v19 = v20;
          v21 = *v15;
          if (v21 >= v20)
          {
            *v18 = v21;
          }

          else
          {
            v17[1] = v19;
            v22 = a6;
            if (v17 != a6)
            {
              v23 = v16;
              while (1)
              {
                v22 = &a6[v23];
                v24 = a6[v23 - 1];
                if (*v15 >= v24)
                {
                  break;
                }

                *v22 = v24;
                if (!--v23)
                {
                  v22 = a6;
                  break;
                }
              }
            }

            *v22 = *v15;
          }

          v15 += result;
          ++v16;
          v17 = v18;
        }

        while (v15 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<BOOL>>(uint64_t result, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned __int8 *a6, int a7, int a8, unsigned __int8 *a9, uint64_t a10)
{
  if (!a8)
  {
    return result;
  }

  v12 = result;
  while (a8 > a10 && a7 > a10)
  {
    if (!a7)
    {
      return result;
    }

    v16 = 0;
    v17 = *a4;
    v18 = -a7;
    while (1)
    {
      v19 = a2[v16];
      if (v17 < v19)
      {
        break;
      }

      v16 += v12;
      v71 = __CFADD__(v18++, 1);
      if (v71)
      {
        return result;
      }
    }

    v20 = &a2[v16];
    if (-v18 >= a8)
    {
      if (v18 == -1)
      {
        a2[v16] = v17;
        *a4 = v19;
        return result;
      }

      v23 = &a2[v12 * (((v18 > 0) - v18) >> 1) + v16];
      v28 = (a6 - a4) / a5;
      if (v28)
      {
        v21 = a4;
        do
        {
          v29 = v28 >> 1;
          v30 = &v21[a3 * v29];
          v31 = *v30;
          v32 = &v30[a3];
          LODWORD(v28) = v28 + ~(v28 >> 1);
          if (v31 < *v23)
          {
            v21 = v32;
          }

          else
          {
            LODWORD(v28) = v29;
          }
        }

        while (v28);
      }

      else
      {
        v21 = a4;
      }

      v34 = (-v18 / 2);
      v33 = (v21 - a4) / a3;
    }

    else
    {
      v21 = &a4[a3 * ((a8 + (a8 >> 31)) >> 1)];
      v22 = (a4 - a2 - v16) / a3;
      if (v22)
      {
        v23 = &a2[v16];
        do
        {
          v24 = v22 >> 1;
          v25 = &v23[v12 * v24];
          v26 = *v25;
          v27 = &v25[v12];
          LODWORD(v22) = v22 + ~(v22 >> 1);
          if (*v21 < v26)
          {
            LODWORD(v22) = v24;
          }

          else
          {
            v23 = v27;
          }
        }

        while (v22);
      }

      else
      {
        v23 = &a2[v16];
      }

      v33 = (a8 / 2);
      v34 = (v23 - a2 - v16) / v12;
    }

    if (v23 != a4 || (v35 = v21, v36 = v12, v12 != a3))
    {
      v35 = v23;
      v36 = v12;
      if (a4 != v21)
      {
        if (&v23[v12] == a4 && v12 == a3)
        {
          v37 = 0;
          v38 = *v23;
          do
          {
            v23[v37] = a4[v37];
            v37 += v12;
          }

          while (&a4[v37] != v21);
          a4 = &v23[v37];
          v23[v37] = v38;
          v36 = v12;
        }

        else
        {
          if (&a4[a3] == v21)
          {
            v39 = &v21[-a3];
            v40 = v21[-a3];
            if (&v21[-a3] == v23)
            {
              a4 = v21;
            }

            else
            {
              a4 = v21;
              v58 = v21;
              do
              {
                v39 -= a3;
                v58 -= a3;
                *v58 = *v39;
                a4 -= a3;
              }

              while (v39 != v23);
            }

            *v23 = v40;
          }

          else
          {
            v41 = (v21 - a4) / a3;
            v42 = v41;
            v43 = (a4 - v23) / a3;
            v44 = v43;
            if (v43 != v41)
            {
              do
              {
                v49 = v44;
                v44 = v42;
                v42 = v49 % v42;
              }

              while (v42);
              v50 = v34;
              if (v12)
              {
                v51 = &v23[v12 * v44];
                v52 = v43 * v12;
                do
                {
                  v51 -= v12;
                  v53 = *v51;
                  v54 = &v51[v52];
                  v55 = v51;
                  do
                  {
                    v56 = v54;
                    *v55 = *v54;
                    v57 = (v21 - v54) / a3;
                    if (v43 >= v57)
                    {
                      v54 = &v23[(v43 - v57) * v12];
                    }

                    else
                    {
                      v54 = &v56[v52];
                    }

                    v55 = v56;
                  }

                  while (v54 != v51);
                  *v56 = v53;
                }

                while (v51 != v23);
              }

              a4 = &v23[v41 * v12];
              v36 = v12;
              v34 = v50;
              goto LABEL_67;
            }

            if (v23 != a4)
            {
              v45 = v23;
              v46 = a4;
              do
              {
                v47 = *v45;
                *v45 = *v46;
                *v46 = v47;
                v45 += v12;
                v46 += a3;
              }

              while (v45 != a4 && v46 != v21);
            }
          }

          v36 = a3;
        }

LABEL_67:
        v35 = a4;
      }
    }

    a7 = -(v34 + v18);
    v59 = a8 - v33;
    v85 = a10;
    v83 = a10;
    if (v34 + v33 >= a8 - (v34 + v33) - v18)
    {
      v84 = v35;
      v60 = a9;
      v59 = v33;
      a7 = v34;
      a3 = v12;
      v21 = v23;
      v35 = v20;
      a5 = v36;
      a6 = v84;
    }

    else
    {
      v60 = a9;
      v61 = v12;
      v62 = v12;
      v63 = v23;
      v64 = a5;
      v65 = a6;
      a5 = v64;
      a6 = v65;
      v12 = v36;
    }

    a8 = v59;
    a2 = v35;
    a4 = v21;
    a9 = v60;
    a10 = v85;
    if (!v59)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v73 = a9;
      v74 = a2;
      do
      {
        *v73++ = *v74;
        v74 += v12;
      }

      while (v74 != a4);
      v75 = v73 - 1;
      while (a4 != a6 || a3 != a5)
      {
        v76 = *a4;
        v77 = *a9;
        v78 = v76 >= v77;
        if (v76 < v77)
        {
          v79 = 0;
        }

        else
        {
          v79 = *a9;
        }

        if (v78)
        {
          ++a9;
        }

        if (v78)
        {
          v80 = 0;
        }

        else
        {
          v80 = a3;
        }

        a4 += v80;
        *a2 = v79;
        a2 += v12;
        if (v73 == a9)
        {
          return result;
        }
      }

      v81 = a9 - 1;
      do
      {
        v82 = *++v81;
        *a2 = v82;
        a2 += v12;
      }

      while (v75 != v81);
    }
  }

  else if (a6 != a4)
  {
    v66 = a9;
    v67 = a4;
    do
    {
      *v66++ = *v67;
      v67 += a3;
    }

    while (v67 != a6);
    v68 = -a5;
    while (a2 != a4 || a3 != v12)
    {
      v69 = *(v66 - 1);
      v70 = a4[-a3];
      a6 -= a5;
      v71 = v69 >= v70;
      if (v69 <= v70)
      {
        LOBYTE(v69) = a4[-a3];
      }

      if (v71)
      {
        --v66;
      }

      else
      {
        a4 -= a3;
      }

      *a6 = v69;
      if (v66 == a9)
      {
        return result;
      }
    }

    while (v66 != a9)
    {
      v72 = *--v66;
      a6[v68] = v72;
      v68 -= a5;
    }
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned char>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5, unsigned __int8 *a6, uint64_t a7)
{
  if (a5 >= 2)
  {
    v9 = a2;
    if (a5 == 2)
    {
      v10 = a4[-a3];
      v11 = *a2;
      if (v10 < v11)
      {
        *a2 = v10;
        a4[-a3] = v11;
      }
    }

    else if (a5 > 128)
    {
      v23 = a6;
      v24 = a5;
      if (a5 <= a7)
      {
        if (a5 - 65537 >= 0xFFFF00FF)
        {
        }

        else
        {
          v27 = a5 >> 1;
          v28 = a5 - (a5 >> 1);
          v29 = &v23[v27];
          v30 = &v23[v24];
          v31 = &v23[v27];
          while (v31 != v30)
          {
            v32 = *v31;
            if (v32 < *v23)
            {
              ++v31;
            }

            else
            {
              LOBYTE(v32) = *v23++;
            }

            *v9 = v32;
            v9 += a1;
            if (v23 == v29)
            {
              while (v31 != v30)
              {
                v34 = *v31++;
                *v9 = v34;
                v9 += a1;
              }

              return;
            }
          }

          while (v23 != v29)
          {
            v33 = *v23++;
            *v9 = v33;
            v9 += a1;
          }
        }
      }

      else
      {
        v25 = a5 >> 1;
        v26 = a5 - (a5 >> 1);
      }
    }

    else if (a2 != a4 || a1 != a3)
    {
      v14 = &a2[a1];
      if (&a2[a1] != a4)
      {
        v15 = 0;
        v16 = &a2[a1];
        v17 = a2;
        do
        {
          v18 = *v17;
          v17 = v16;
          v19 = *v16;
          if (v19 < v18)
          {
            v20 = v15;
            while (1)
            {
              v14[v20] = v18;
              if (!v20)
              {
                break;
              }

              v18 = a2[v20 - a1];
              v20 -= a1;
              if (v19 >= v18)
              {
                v21 = &v14[v20];
                goto LABEL_17;
              }
            }

            v21 = a2;
LABEL_17:
            *v21 = v19;
          }

          v16 = &v17[a1];
          v15 += a1;
        }

        while (&v17[a1] != a4);
      }
    }
  }
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned char>>(uint64_t result, _BYTE *a2, uint64_t a3, _BYTE *a4, unsigned int a5, _BYTE *a6)
{
  if (a5)
  {
    v6 = a6;
    v8 = a2;
    if (a5 == 1)
    {
LABEL_9:
      *v6 = *v8;
      return result;
    }

    if (a5 == 2)
    {
      v11 = a4[-a3];
      v12 = *a2;
      v13 = v11 >= v12;
      if (v11 >= v12)
      {
        LOBYTE(v11) = *a2;
      }

      *a6 = v11;
      v6 = a6 + 1;
      if (v13)
      {
        v8 = &a4[-a3];
      }

      goto LABEL_9;
    }

    v14 = result;
    if (a5 > 8)
    {
      v25 = a5 >> 1;
      v26 = &a2[result * v25];
      if (v14 * v25)
      {
        v27 = &v8[v14 * v25];
        while (v27 != a4 || v14 != a3)
        {
          v28 = *v27;
          v29 = *v8;
          v30 = v28 >= v29;
          if (v28 < v29)
          {
            v31 = v14;
          }

          else
          {
            LOBYTE(v28) = *v8;
            v31 = 0;
          }

          v27 += v31;
          if (v30)
          {
            v32 = v14;
          }

          else
          {
            v32 = 0;
          }

          v8 += v32;
          *v6++ = v28;
          if (v8 == v26)
          {
            goto LABEL_39;
          }
        }

        while (v8 != v26)
        {
          *v6++ = *v8;
          v8 += v14;
        }
      }

      else
      {
        v27 = &v8[v14 * v25];
LABEL_39:
        while (v27 != a4)
        {
          *v6++ = *v27;
          v27 += v14;
        }
      }
    }

    else if (a2 != a4)
    {
      *a6 = *a2;
      v15 = &a2[result];
      if (&a2[result] != a4)
      {
        v16 = 0;
        v17 = a6;
        v18 = a6;
        do
        {
          v20 = *v18++;
          v19 = v20;
          v21 = *v15;
          if (v21 >= v20)
          {
            *v18 = v21;
          }

          else
          {
            v17[1] = v19;
            v22 = a6;
            if (v17 != a6)
            {
              v23 = v16;
              while (1)
              {
                v22 = &a6[v23];
                v24 = a6[v23 - 1];
                if (*v15 >= v24)
                {
                  break;
                }

                *v22 = v24;
                if (!--v23)
                {
                  v22 = a6;
                  break;
                }
              }
            }

            *v22 = *v15;
          }

          v15 += result;
          ++v16;
          v17 = v18;
        }

        while (v15 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned char>>(uint64_t result, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned __int8 *a6, int a7, int a8, unsigned __int8 *a9, uint64_t a10)
{
  if (!a8)
  {
    return result;
  }

  v12 = result;
  while (a8 > a10 && a7 > a10)
  {
    if (!a7)
    {
      return result;
    }

    v16 = 0;
    v17 = *a4;
    v18 = -a7;
    while (1)
    {
      v19 = a2[v16];
      if (v17 < v19)
      {
        break;
      }

      v16 += v12;
      v71 = __CFADD__(v18++, 1);
      if (v71)
      {
        return result;
      }
    }

    v20 = &a2[v16];
    if (-v18 >= a8)
    {
      if (v18 == -1)
      {
        a2[v16] = v17;
        *a4 = v19;
        return result;
      }

      v23 = &a2[v12 * (((v18 > 0) - v18) >> 1) + v16];
      v28 = (a6 - a4) / a5;
      if (v28)
      {
        v21 = a4;
        do
        {
          v29 = v28 >> 1;
          v30 = &v21[a3 * v29];
          v31 = *v30;
          v32 = &v30[a3];
          LODWORD(v28) = v28 + ~(v28 >> 1);
          if (v31 < *v23)
          {
            v21 = v32;
          }

          else
          {
            LODWORD(v28) = v29;
          }
        }

        while (v28);
      }

      else
      {
        v21 = a4;
      }

      v34 = (-v18 / 2);
      v33 = (v21 - a4) / a3;
    }

    else
    {
      v21 = &a4[a3 * ((a8 + (a8 >> 31)) >> 1)];
      v22 = (a4 - a2 - v16) / a3;
      if (v22)
      {
        v23 = &a2[v16];
        do
        {
          v24 = v22 >> 1;
          v25 = &v23[v12 * v24];
          v26 = *v25;
          v27 = &v25[v12];
          LODWORD(v22) = v22 + ~(v22 >> 1);
          if (*v21 < v26)
          {
            LODWORD(v22) = v24;
          }

          else
          {
            v23 = v27;
          }
        }

        while (v22);
      }

      else
      {
        v23 = &a2[v16];
      }

      v33 = (a8 / 2);
      v34 = (v23 - a2 - v16) / v12;
    }

    if (v23 != a4 || (v35 = v21, v36 = v12, v12 != a3))
    {
      v35 = v23;
      v36 = v12;
      if (a4 != v21)
      {
        if (&v23[v12] == a4 && v12 == a3)
        {
          v37 = 0;
          v38 = *v23;
          do
          {
            v23[v37] = a4[v37];
            v37 += v12;
          }

          while (&a4[v37] != v21);
          a4 = &v23[v37];
          v23[v37] = v38;
          v36 = v12;
        }

        else
        {
          if (&a4[a3] == v21)
          {
            v39 = &v21[-a3];
            v40 = v21[-a3];
            if (&v21[-a3] == v23)
            {
              a4 = v21;
            }

            else
            {
              a4 = v21;
              v58 = v21;
              do
              {
                v39 -= a3;
                v58 -= a3;
                *v58 = *v39;
                a4 -= a3;
              }

              while (v39 != v23);
            }

            *v23 = v40;
          }

          else
          {
            v41 = (v21 - a4) / a3;
            v42 = v41;
            v43 = (a4 - v23) / a3;
            v44 = v43;
            if (v43 != v41)
            {
              do
              {
                v49 = v44;
                v44 = v42;
                v42 = v49 % v42;
              }

              while (v42);
              v50 = v34;
              if (v12)
              {
                v51 = &v23[v12 * v44];
                v52 = v43 * v12;
                do
                {
                  v51 -= v12;
                  v53 = *v51;
                  v54 = &v51[v52];
                  v55 = v51;
                  do
                  {
                    v56 = v54;
                    *v55 = *v54;
                    v57 = (v21 - v54) / a3;
                    if (v43 >= v57)
                    {
                      v54 = &v23[(v43 - v57) * v12];
                    }

                    else
                    {
                      v54 = &v56[v52];
                    }

                    v55 = v56;
                  }

                  while (v54 != v51);
                  *v56 = v53;
                }

                while (v51 != v23);
              }

              a4 = &v23[v41 * v12];
              v36 = v12;
              v34 = v50;
              goto LABEL_67;
            }

            if (v23 != a4)
            {
              v45 = v23;
              v46 = a4;
              do
              {
                v47 = *v45;
                *v45 = *v46;
                *v46 = v47;
                v45 += v12;
                v46 += a3;
              }

              while (v45 != a4 && v46 != v21);
            }
          }

          v36 = a3;
        }

LABEL_67:
        v35 = a4;
      }
    }

    a7 = -(v34 + v18);
    v59 = a8 - v33;
    v82 = a10;
    v80 = a10;
    if (v34 + v33 >= a8 - (v34 + v33) - v18)
    {
      v81 = v35;
      v60 = a9;
      v59 = v33;
      a7 = v34;
      a3 = v12;
      v21 = v23;
      v35 = v20;
      a5 = v36;
      a6 = v81;
    }

    else
    {
      v60 = a9;
      v61 = v12;
      v62 = v12;
      v63 = v23;
      v64 = a5;
      v65 = a6;
      a5 = v64;
      a6 = v65;
      v12 = v36;
    }

    a8 = v59;
    a2 = v35;
    a4 = v21;
    a9 = v60;
    a10 = v82;
    if (!v59)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v73 = a9;
      v74 = a2;
      do
      {
        *v73++ = *v74;
        v74 += v12;
      }

      while (v74 != a4);
      v75 = v73 - 1;
      while (a4 != a6 || a3 != a5)
      {
        v76 = *a4;
        if (v76 < *a9)
        {
          v77 = a3;
        }

        else
        {
          LOBYTE(v76) = *a9++;
          v77 = 0;
        }

        a4 += v77;
        *a2 = v76;
        a2 += v12;
        if (v73 == a9)
        {
          return result;
        }
      }

      v78 = a9 - 1;
      do
      {
        v79 = *++v78;
        *a2 = v79;
        a2 += v12;
      }

      while (v75 != v78);
    }
  }

  else if (a6 != a4)
  {
    v66 = a9;
    v67 = a4;
    do
    {
      *v66++ = *v67;
      v67 += a3;
    }

    while (v67 != a6);
    v68 = -a5;
    while (a2 != a4 || a3 != v12)
    {
      v69 = *(v66 - 1);
      v70 = a4[-a3];
      a6 -= a5;
      v71 = v69 >= v70;
      if (v69 <= v70)
      {
        LOBYTE(v69) = a4[-a3];
      }

      if (v71)
      {
        --v66;
      }

      else
      {
        a4 -= a3;
      }

      *a6 = v69;
      if (v66 == a9)
      {
        return result;
      }
    }

    while (v66 != a9)
    {
      v72 = *--v66;
      a6[v68] = v72;
      v68 -= a5;
    }
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned short>>(uint64_t a1, char *a2, uint64_t a3, char *a4, unsigned int a5, __int16 *a6, uint64_t a7)
{
  if (a5 >= 2)
  {
    v9 = a2;
    if (a5 == 2)
    {
      v10 = *&a4[-2 * a3];
      v11 = *a2;
      if (v10 < v11)
      {
        *a2 = v10;
        *&a4[-2 * a3] = v11;
      }
    }

    else if (a5 > 128)
    {
      v24 = a6;
      v25 = a5;
      if (a5 <= a7)
      {
        if (a5 - 65537 >= 0xFFFF03FF)
        {
        }

        else
        {
          v28 = a5 >> 1;
          v29 = a5 - (a5 >> 1);
          v30 = &v24[v28];
          v31 = 2 * a1;
          v32 = v30;
          v33 = &v24[v25];
          while (v32 != v33)
          {
            v34 = *v32;
            v35 = *v24;
            v36 = v34 >= v35;
            v37 = v34 < v35;
            if (v34 >= v35)
            {
              LOWORD(v34) = *v24;
            }

            v24 += v36;
            v32 += v37;
            *v9 = v34;
            v9 += v31;
            if (v24 == v30)
            {
              while (v32 != v33)
              {
                v39 = *v32++;
                *v9 = v39;
                v9 += v31;
              }

              return;
            }
          }

          while (v24 != v30)
          {
            v38 = *v24++;
            *v9 = v38;
            v9 += v31;
          }
        }
      }

      else
      {
        v26 = a5 >> 1;
        v27 = a5 - (a5 >> 1);
      }
    }

    else if (a2 != a4 || a1 != a3)
    {
      v14 = &a2[2 * a1];
      if (v14 != a4)
      {
        v15 = 0;
        v16 = 2 * a1;
        v17 = &a2[2 * a1];
        v18 = a2;
        do
        {
          v19 = *v18;
          v18 = v17;
          v20 = *v17;
          if (v20 < v19)
          {
            v21 = v15;
            while (1)
            {
              *&v14[v21] = v19;
              if (!v21)
              {
                break;
              }

              v19 = *&a2[v21 + -2 * a1];
              v21 -= v16;
              if (v20 >= v19)
              {
                v22 = &v14[v21];
                goto LABEL_17;
              }
            }

            v22 = a2;
LABEL_17:
            *v22 = v20;
          }

          v17 = &v18[2 * a1];
          v15 += v16;
        }

        while (v17 != a4);
      }
    }
  }
}

void std::__radix_sort[abi:ne200100]<mlx::core::anonymous namespace::StridedIterator<unsigned short>,unsigned short *>(uint64_t a1, char *a2, uint64_t a3, char *a4, __int16 *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  bzero(v35, 0x800uLL);
  if (a2 == a4)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v12 = 0;
    v11 = 1;
    v13 = a2;
    do
    {
      v14 = *v13;
      v11 &= v14 >= v12;
      ++v35[*v13];
      ++*(v36 + ((v14 >> 6) & 0x3FC));
      v13 += 2 * a1;
      v12 = v14;
    }

    while (v13 != a4);
    v10 = v35[0];
  }

  v15 = 1;
  v16 = v10;
  do
  {
    v17 = v35[v15];
    if (v16 <= v17)
    {
      v16 = v35[v15];
    }

    v10 += v17;
    v35[v15++] = v10;
  }

  while (v15 != 256);
  v18 = v36[0];
  v19 = 257;
  v20 = v36[0];
  do
  {
    v21 = v35[v19];
    if (v20 <= v21)
    {
      v20 = v35[v19];
    }

    v18 += v21;
    v35[v19++] = v18;
  }

  while (v19 != 512);
  if ((v11 & 1) == 0)
  {
    v22 = ((a4 - a2) >> 1) / a3;
    if (v16 != v22 || v20 != v22)
    {
      v24 = v22;
      if (v16 == v22)
      {
        if (a2 != a4)
        {
          v28 = a2;
          v29 = a5;
          do
          {
            *v29++ = *v28;
            v28 += 2 * a1;
          }

          while (v28 != a4);
        }
      }

      else if (a2 != a4)
      {
        v25 = 0;
        do
        {
          v26 = *&a4[v25 + -2 * a3];
          v27 = v35[v26] - 1;
          v35[v26] = v27;
          a5[v27] = v26;
          v25 -= a3;
        }

        while ((a2 - a4) != v25);
      }

      v30 = v22 << 32;
      if (v20 == v22)
      {
        if (v30)
        {
          do
          {
            v33 = *a5++;
            *a2 = v33;
            a2 += 2 * a1;
            --v24;
          }

          while (v24 * 2);
        }
      }

      else if (v30)
      {
        do
        {
          v31 = a5[v24 - 1];
          v32 = v36[v31 >> 8] - 1;
          v36[v31 >> 8] = v32;
          *&a2[2 * a1 * v32] = v31;
          --v24;
        }

        while (v24 * 2);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned short>>(uint64_t result, _WORD *a2, uint64_t a3, _WORD *a4, unsigned int a5, _WORD *a6)
{
  if (a5)
  {
    v6 = a6;
    v8 = a2;
    if (a5 == 1)
    {
LABEL_9:
      *v6 = *v8;
      return result;
    }

    if (a5 == 2)
    {
      v11 = a4[-a3];
      v12 = *a2;
      v13 = v11 >= v12;
      if (v11 >= v12)
      {
        LOWORD(v11) = *a2;
      }

      *a6 = v11;
      v6 = a6 + 1;
      if (v13)
      {
        v8 = &a4[-a3];
      }

      goto LABEL_9;
    }

    v14 = result;
    if (a5 > 8)
    {
      v25 = a5 >> 1;
      v26 = &a2[result * v25];
      if (2 * v14 * v25)
      {
        v27 = &v8[v14 * v25];
        while (v27 != a4 || v14 != a3)
        {
          v28 = *v27;
          v29 = *v8;
          v30 = v28 >= v29;
          if (v28 < v29)
          {
            v31 = v14;
          }

          else
          {
            LOWORD(v28) = *v8;
            v31 = 0;
          }

          v27 += v31;
          if (v30)
          {
            v32 = v14;
          }

          else
          {
            v32 = 0;
          }

          v8 += v32;
          *v6++ = v28;
          if (v8 == v26)
          {
            goto LABEL_37;
          }
        }

        for (; v8 != v26; v8 += v14)
        {
          *v6++ = *v8;
        }
      }

      else
      {
        v27 = &v8[v14 * v25];
LABEL_37:
        while (v27 != a4)
        {
          *v6++ = *v27;
          v27 += v14;
        }
      }
    }

    else if (a2 != a4)
    {
      *a6 = *a2;
      v15 = &a2[result];
      if (v15 != a4)
      {
        v16 = 0;
        v17 = a6;
        v18 = a6;
        do
        {
          v20 = *v18++;
          v19 = v20;
          v21 = *v15;
          if (v21 >= v20)
          {
            *v18 = v21;
          }

          else
          {
            v17[1] = v19;
            v22 = a6;
            if (v17 != a6)
            {
              v23 = v16;
              while (1)
              {
                v22 = (a6 + v23);
                v24 = *(a6 + v23 - 2);
                if (*v15 >= v24)
                {
                  break;
                }

                *v22 = v24;
                v23 -= 2;
                if (!v23)
                {
                  v22 = a6;
                  break;
                }
              }
            }

            *v22 = *v15;
          }

          v15 += result;
          v16 += 2;
          v17 = v18;
        }

        while (v15 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned short>>(uint64_t result, char *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, unsigned __int16 *a6, int a7, int a8, unsigned __int16 *a9, uint64_t a10)
{
  if (!a8)
  {
    return result;
  }

  v13 = result;
  result = 0xFFFFFFFFLL;
  while (a8 > a10 && a7 > a10)
  {
    if (!a7)
    {
      return result;
    }

    v17 = 0;
    v18 = *a4;
    v19 = -a7;
    v20 = 2 * v13;
    while (1)
    {
      v21 = *&a2[v17];
      if (v18 < v21)
      {
        break;
      }

      v17 += v20;
      v73 = __CFADD__(v19++, 1);
      if (v73)
      {
        return result;
      }
    }

    v22 = &a2[v17];
    if (-v19 >= a8)
    {
      if (v19 == -1)
      {
        *&a2[v17] = v18;
        *a4 = v21;
        return result;
      }

      v25 = &a2[2 * v13 * (((v19 > 0) - v19) >> 1) + v17];
      v30 = (a6 - a4) / a5;
      if (v30)
      {
        v23 = a4;
        do
        {
          v31 = v30 >> 1;
          v32 = &v23[a3 * v31];
          v33 = *v32;
          v34 = &v32[a3];
          LODWORD(v30) = v30 + ~(v30 >> 1);
          if (v33 < *v25)
          {
            v23 = v34;
          }

          else
          {
            LODWORD(v30) = v31;
          }
        }

        while (v30);
      }

      else
      {
        v23 = a4;
      }

      v36 = (-v19 / 2);
      v35 = (v23 - a4) / a3;
    }

    else
    {
      v23 = &a4[a3 * ((a8 + (a8 >> 31)) >> 1)];
      v24 = ((a4 - a2 - v17) >> 1) / a3;
      if (v24)
      {
        v25 = &a2[v17];
        do
        {
          v26 = v24 >> 1;
          v27 = (v25 + v13 * (v24 & 0xFFFFFFFE));
          v28 = *v27;
          v29 = &v27[v13];
          LODWORD(v24) = v24 + ~(v24 >> 1);
          if (*v23 < v28)
          {
            LODWORD(v24) = v26;
          }

          else
          {
            v25 = v29;
          }
        }

        while (v24);
      }

      else
      {
        v25 = &a2[v17];
      }

      v35 = (a8 / 2);
      v36 = ((v25 - a2 - v17) >> 1) / v13;
    }

    if (v25 != a4 || (v37 = v23, v38 = v13, v13 != a3))
    {
      v37 = v25;
      v38 = v13;
      if (a4 != v23)
      {
        if (&v25[v13] == a4 && v13 == a3)
        {
          v39 = 0;
          v40 = *v25;
          do
          {
            *(v25 + v39) = *(a4 + v39);
            v39 += v20;
          }

          while ((a4 + v39) != v23);
          a4 = (v25 + v39);
          *(v25 + v39) = v40;
          v38 = v13;
        }

        else
        {
          v41 = 2 * a3;
          if (&a4[a3] == v23)
          {
            v42 = &v23[v41 / 0xFFFFFFFFFFFFFFFELL];
            v43 = v23[-a3];
            if (&v23[v41 / 0xFFFFFFFFFFFFFFFELL] == v25)
            {
              a4 = v23;
            }

            else
            {
              v61 = v23;
              a4 = v23;
              do
              {
                v42 -= a3;
                v61 -= a3;
                *v61 = *v42;
                a4 = (a4 - v41);
              }

              while (v42 != v25);
            }

            *v25 = v43;
          }

          else
          {
            v44 = (v23 - a4) / a3;
            v45 = v44;
            v46 = (a4 - v25) / a3;
            v47 = v46;
            if (v46 != v44)
            {
              do
              {
                v52 = v47;
                v47 = v45;
                v45 = v52 % v45;
              }

              while (v45);
              v53 = v36;
              if (v13)
              {
                v54 = &v25[v13 * v47];
                v55 = v46 * v13;
                do
                {
                  v54 -= v13;
                  v56 = *v54;
                  v57 = &v54[v55];
                  v58 = v54;
                  do
                  {
                    v59 = v57;
                    *v58 = *v57;
                    v60 = (v23 - v57) / a3;
                    if (v46 >= v60)
                    {
                      v57 = &v25[(v46 - v60) * v13];
                    }

                    else
                    {
                      v57 = &v59[v55];
                    }

                    v58 = v59;
                  }

                  while (v57 != v54);
                  *v59 = v56;
                }

                while (v54 != v25);
              }

              a4 = &v25[v44 * v13];
              v38 = v13;
              v36 = v53;
              goto LABEL_67;
            }

            if (v25 != a4)
            {
              v48 = a4;
              v49 = v25;
              do
              {
                v50 = *v49;
                *v49 = *v48;
                *v48 = v50;
                v49 = (v49 + v20);
                v48 = (v48 + v41);
              }

              while (v49 != a4 && v48 != v23);
            }
          }

          v38 = a3;
        }

LABEL_67:
        v37 = a4;
      }
    }

    a7 = -(v36 + v19);
    v62 = a8 - v35;
    v89 = a10;
    v87 = a10;
    if (v36 + v35 >= a8 - (v36 + v35) - v19)
    {
      v88 = v37;
      v63 = a9;
      v62 = v35;
      a7 = v36;
      a3 = v13;
      v23 = v25;
      v37 = v22;
      a5 = v38;
      a6 = v88;
    }

    else
    {
      v63 = a9;
      v64 = v13;
      v65 = v13;
      v66 = v25;
      v67 = a6;
      v68 = a5;
      a5 = v68;
      a6 = v67;
      v13 = v38;
    }

    a8 = v62;
    a2 = v37;
    a4 = v23;
    a9 = v63;
    a10 = v89;
    result = 0xFFFFFFFFLL;
    if (!v62)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v74 = 2 * v13;
      v75 = a2;
      v76 = a9;
      do
      {
        *v76++ = *v75;
        v75 = (v75 + v74);
      }

      while (v75 != a4);
      v77 = v76 - 1;
      while (a4 != a6 || a3 != a5)
      {
        v78 = *a4;
        v79 = *a9;
        v80 = v78 >= v79;
        v81 = v78 >= v79;
        if (v78 >= v79)
        {
          LOWORD(v78) = *a9;
        }

        a9 += v81;
        if (v80)
        {
          v82 = 0;
        }

        else
        {
          v82 = a3;
        }

        a4 += v82;
        *a2 = v78;
        a2 += v74;
        if (v76 == a9)
        {
          return result;
        }
      }

      v83 = a9 - 1;
      do
      {
        v84 = v83[1];
        ++v83;
        *a2 = v84;
        a2 += v74;
      }

      while (v77 != v83);
    }
  }

  else if (a6 != a4)
  {
    v69 = a4;
    v70 = a9;
    do
    {
      *v70++ = *v69;
      v69 += a3;
    }

    while (v69 != a6);
    while (a2 != a4 || a3 != v13)
    {
      v71 = *(v70 - 1);
      v72 = a4[-a3];
      a6 -= a5;
      v73 = v71 >= v72;
      if (v71 <= v72)
      {
        LOWORD(v71) = a4[-a3];
      }

      if (v73)
      {
        --v70;
      }

      else
      {
        a4 -= a3;
      }

      *a6 = v71;
      if (v70 == a9)
      {
        return result;
      }
    }

    if (v70 != a9)
    {
      v85 = -1 * a5;
      do
      {
        v86 = *--v70;
        a6[v85] = v86;
        v85 -= a5;
      }

      while (v70 != a9);
    }
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4, unsigned int a5, unsigned int *a6, uint64_t a7)
{
  if (a5 >= 2)
  {
    v9 = a2;
    if (a5 == 2)
    {
      v10 = a4[-a3];
      v11 = *a2;
      if (v10 < *a2)
      {
        *a2 = v10;
        a4[-a3] = v11;
      }
    }

    else if (a5 > 128)
    {
      v24 = a6;
      v25 = a5;
      if (a5 <= a7)
      {
        if (a5 - 65537 >= 0xFFFF03FF)
        {
        }

        else
        {
          v28 = a5 >> 1;
          v29 = a5 - (a5 >> 1);
          v30 = &v24[v28];
          v31 = 4 * a1;
          v32 = v30;
          v33 = &v24[v25];
          while (v32 != v33)
          {
            v34 = *v32;
            v35 = *v32 < *v24;
            if (*v32 >= *v24)
            {
              v34 = *v24;
            }

            v24 += *v32 >= *v24;
            v32 += v35;
            *v9 = v34;
            v9 += v31;
            if (v24 == v30)
            {
              while (v32 != v33)
              {
                v37 = *v32++;
                *v9 = v37;
                v9 += v31;
              }

              return;
            }
          }

          while (v24 != v30)
          {
            v36 = *v24++;
            *v9 = v36;
            v9 += v31;
          }
        }
      }

      else
      {
        v26 = a5 >> 1;
        v27 = a5 - (a5 >> 1);
      }
    }

    else if (a2 != a4 || a1 != a3)
    {
      v14 = &a2[a1];
      if (v14 != a4)
      {
        v15 = 0;
        v16 = 4 * a1;
        v17 = &a2[a1];
        v18 = a2;
        do
        {
          v19 = *v18;
          v18 = v17;
          v20 = *v17;
          if (v20 < v19)
          {
            v21 = v15;
            while (1)
            {
              *(v14 + v21) = v19;
              if (!v21)
              {
                break;
              }

              v19 = *(a2 + v21 + -4 * a1);
              v21 -= v16;
              if (v20 >= v19)
              {
                v22 = (v14 + v21);
                goto LABEL_17;
              }
            }

            v22 = a2;
LABEL_17:
            *v22 = v20;
          }

          v17 = &v18[a1];
          v15 += v16;
        }

        while (v17 != a4);
      }
    }
  }
}

void std::__radix_sort[abi:ne200100]<mlx::core::anonymous namespace::StridedIterator<unsigned int>,unsigned int *>(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v66 = *MEMORY[0x277D85DE8];
  bzero(v62, 0x1000uLL);
  v11 = 4 * v10;
  if (v9 == v5)
  {
    v12 = 0;
    v13 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 1;
    v15 = v9;
    do
    {
      v16 = *v15;
      v13 &= v16 >= v14;
      ++v62[*v15];
      ++v63[BYTE1(v16)];
      ++v64[BYTE2(v16)];
      ++*(v65 + ((v16 >> 22) & 0x3FC));
      v15 = (v15 + v11);
      v14 = v16;
    }

    while (v15 != v5);
    v12 = v62[0];
  }

  v17 = 1;
  v18 = v12;
  do
  {
    v19 = v62[v17];
    if (v18 <= v19)
    {
      v18 = v62[v17];
    }

    v12 += v19;
    v62[v17++] = v12;
  }

  while (v17 != 256);
  v60[0] = v18;
  v20 = v63[0];
  v21 = 257;
  v22 = v63[0];
  do
  {
    v23 = v62[v21];
    if (v22 <= v23)
    {
      v22 = v62[v21];
    }

    v20 += v23;
    v62[v21++] = v20;
  }

  while (v21 != 512);
  v60[1] = v22;
  v24 = v64[0];
  v25 = 513;
  v26 = v64[0];
  do
  {
    v27 = v62[v25];
    if (v26 <= v27)
    {
      v26 = v62[v25];
    }

    v24 += v27;
    v62[v25++] = v24;
  }

  while (v25 != 768);
  v61[0] = v26;
  v28 = v65[0];
  v29 = 769;
  v30 = v65[0];
  do
  {
    v31 = v62[v29];
    if (v30 <= v31)
    {
      v30 = v62[v29];
    }

    v28 += v31;
    v62[v29++] = v28;
  }

  while (v29 != 1024);
  v61[1] = v30;
  if ((v13 & 1) == 0)
  {
    v32 = 0;
    v33 = ((v5 - v9) >> 2) / v7;
    v34 = v33 << 32;
    v35 = 4 * v7;
    v36 = &v5[-4 * v7];
    v37 = 1;
    v38 = v60;
    v39 = v62;
    do
    {
      v40 = v37;
      v41 = *v38;
      v42 = v60[v32 | 1];
      if (v41 != v33 || v42 != v33)
      {
        if (v41 == v33)
        {
          if (v9 != v5)
          {
            v48 = v9;
            v49 = v3;
            do
            {
              *v49++ = *v48;
              v48 += v11;
            }

            while (v48 != v5);
          }
        }

        else if (v9 != v5)
        {
          v44 = 0;
          v45 = 8 * v32;
          do
          {
            v46 = *&v36[v44];
            v47 = v39[(v46 >> v45)] - 1;
            v39[(v46 >> v45)] = v47;
            v3[v47] = v46;
            v44 -= v35;
          }

          while (v9 - v5 != v44);
        }

        if (v42 == v33)
        {
          if (v34)
          {
            v55 = v9;
            v56 = 4 * v33;
            v57 = v3;
            do
            {
              v58 = *v57++;
              *v55 = v58;
              v55 = (v55 + v11);
              v56 -= 4;
            }

            while (v56);
          }
        }

        else if (v34)
        {
          v50 = &v62[256 * (v32 | 1)];
          v51 = (8 * v32) | 8;
          v52 = v33;
          do
          {
            v53 = v3[v52 - 1];
            v54 = v50[(v53 >> v51)] - 1;
            v50[(v53 >> v51)] = v54;
            *&v9[4 * v10 * v54] = v53;
            --v52;
          }

          while (v52 * 4);
        }
      }

      v37 = 0;
      v38 = v61;
      v39 = v64;
      v32 = 2;
    }

    while ((v40 & 1) != 0);
  }

  v59 = *MEMORY[0x277D85DE8];
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, unsigned int a5, unsigned int *a6)
{
  if (a5)
  {
    v6 = a6;
    v8 = a2;
    if (a5 == 1)
    {
LABEL_9:
      *v6 = *v8;
      return result;
    }

    if (a5 == 2)
    {
      v11 = a4[-a3];
      v12 = v11 >= *a2;
      if (v11 >= *a2)
      {
        v11 = *a2;
      }

      *a6 = v11;
      v6 = (a6 + 1);
      if (v12)
      {
        v8 = &a4[-a3];
      }

      goto LABEL_9;
    }

    v13 = result;
    if (a5 > 8)
    {
      v23 = a5 >> 1;
      v24 = &a2[result * v23];
      if (4 * v13 * v23)
      {
        v25 = &v8[v13 * v23];
        while (v25 != a4 || v13 != a3)
        {
          v26 = *v25;
          v27 = *v25 >= *v8;
          if (*v25 < *v8)
          {
            v28 = v13;
          }

          else
          {
            v26 = *v8;
            v28 = 0;
          }

          v25 += v28;
          if (v27)
          {
            v29 = v13;
          }

          else
          {
            v29 = 0;
          }

          v8 += v29;
          *v6++ = v26;
          if (v8 == v24)
          {
            goto LABEL_37;
          }
        }

        for (; v8 != v24; v8 += v13)
        {
          *v6++ = *v8;
        }
      }

      else
      {
        v25 = &v8[v13 * v23];
LABEL_37:
        while (v25 != a4)
        {
          *v6++ = *v25;
          v25 += v13;
        }
      }
    }

    else if (a2 != a4)
    {
      *a6 = *a2;
      v14 = &a2[result];
      if (v14 != a4)
      {
        v15 = 0;
        v16 = a6;
        v17 = a6;
        do
        {
          v19 = *v17++;
          v18 = v19;
          if (*v14 >= v19)
          {
            *v17 = *v14;
          }

          else
          {
            v16[1] = v18;
            v20 = a6;
            if (v16 != a6)
            {
              v21 = v15;
              while (1)
              {
                v20 = (a6 + v21);
                v22 = *(a6 + v21 - 4);
                if (*v14 >= v22)
                {
                  break;
                }

                *v20 = v22;
                v21 -= 4;
                if (!v21)
                {
                  v20 = a6;
                  break;
                }
              }
            }

            *v20 = *v14;
          }

          v14 += result;
          v15 += 4;
          v16 = v17;
        }

        while (v14 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, int a7, int a8, int *a9, uint64_t a10)
{
  if (a8)
  {
    v10 = a8;
    LODWORD(v11) = a7;
    v63 = a9;
    while (v10 > a10 && v11 > a10)
    {
      if (!v11)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = -v11;
      v19 = 4 * result;
      while (1)
      {
        v20 = *&a2[v16];
        if (v17 < v20)
        {
          break;
        }

        v16 += v19;
        v44 = __CFADD__(v18++, 1);
        if (v44)
        {
          return result;
        }
      }

      v21 = &a2[v16];
      v59 = a5;
      v60 = a6;
      v62 = a10;
      v57 = &a2[v16];
      if (-v18 >= v10)
      {
        if (v18 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v20;
          return result;
        }

        v29 = (v18 > 0) - v18;
        v21 = &a2[4 * result * (v29 >> 1) + v16];
        v30 = ((a6 - a4) >> 2) / a5;
        if (v30)
        {
          v22 = a4;
          do
          {
            v31 = v30 >> 1;
            v32 = &v22[4 * a3 * v31];
            v33 = *v32;
            v34 = &v32[4 * a3];
            LODWORD(v30) = v30 + ~(v30 >> 1);
            if (v33 < *v21)
            {
              v22 = v34;
            }

            else
            {
              LODWORD(v30) = v31;
            }
          }

          while (v30);
        }

        else
        {
          v22 = a4;
        }

        v28 = (v29 >> 1);
        v61 = ((v22 - a4) >> 2) / a3;
      }

      else
      {
        v22 = &a4[4 * a3 * ((v10 + (v10 >> 31)) >> 1)];
        v23 = ((a4 - a2 - v16) >> 2) / a3;
        while (v23)
        {
          v24 = v23 >> 1;
          v25 = &v21[v19 * v24];
          v26 = *v25;
          v27 = &v25[4 * result];
          LODWORD(v23) = v23 + ~(v23 >> 1);
          if (*v22 < v26)
          {
            LODWORD(v23) = v24;
          }

          else
          {
            v21 = v27;
          }
        }

        v61 = (v10 / 2);
        v28 = ((v21 - a2 - v16) >> 2) / result;
      }

      v11 = -(v28 + v18);
      v58 = result;
      if (v28 + v61 >= v10 - (v28 + v61) - v18)
      {
        v38 = v65;
        v39 = v64;
        v22 = v21;
        a2 = v57;
        result = v58;
        a3 = v58;
        v37 = v61;
        LODWORD(v11) = v28;
        a5 = v39;
        a6 = v38;
      }

      else
      {
        v35 = &a2[v16];
        v36 = v64;
        a2 = v65;
        result = v36;
        a5 = v59;
        a6 = v60;
        v37 = v10 - v61;
      }

      v10 = v37;
      a4 = v22;
      a10 = v62;
      if (!v37)
      {
        return result;
      }
    }

    if (v11 <= v10)
    {
      if (a2 != a4)
      {
        v45 = 4 * result;
        v46 = a2;
        v47 = a9;
        do
        {
          *v47++ = *v46;
          v46 = (v46 + v45);
        }

        while (v46 != a4);
        v48 = v47 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v49 = *a4;
          if (*a4 >= *v63)
          {
            v49 = *v63;
          }

          v50 = *a4 >= *v63;
          v51 = &v63[*a4 >= *v63];
          if (*a4 >= *v63)
          {
            v52 = 0;
          }

          else
          {
            v52 = a3;
          }

          a4 += 4 * v52;
          *a2 = v49;
          a2 += v45;
          v63 += v50;
          if (v47 == v51)
          {
            return result;
          }
        }

        v53 = v63 - 1;
        do
        {
          v54 = v53[1];
          ++v53;
          *a2 = v54;
          a2 += v45;
        }

        while (v48 != v53);
      }
    }

    else if (a6 != a4)
    {
      v40 = a4;
      v41 = a9;
      do
      {
        *v41++ = *v40;
        v40 += 4 * a3;
      }

      while (v40 != a6);
      while (a2 != a4 || a3 != result)
      {
        v42 = *(v41 - 1);
        v43 = *&a4[-4 * a3];
        a6 -= 4 * a5;
        v44 = v42 >= v43;
        if (v42 <= v43)
        {
          v42 = *&a4[-4 * a3];
        }

        if (v44)
        {
          --v41;
        }

        else
        {
          a4 -= 4 * a3;
        }

        *a6 = v42;
        if (v41 == a9)
        {
          return result;
        }
      }

      if (v41 != a9)
      {
        v55 = -4 * a5;
        do
        {
          v56 = *--v41;
          *&a6[v55] = v56;
          v55 -= 4 * a5;
        }

        while (v41 != a9);
      }
    }
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned long long>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, unsigned int a5, uint64_t *a6, uint64_t a7)
{
  if (a5 >= 2)
  {
    v9 = a2;
    if (a5 == 2)
    {
      v10 = a4[-a3];
      v11 = *a2;
      if (v10 < *a2)
      {
        *a2 = v10;
        a4[-a3] = v11;
      }
    }

    else if (a5 > 128)
    {
      v24 = a6;
      v25 = a5;
      if (a5 <= a7)
      {
        if (a5 - 32769 >= 0xFFFF83FF)
        {
        }

        else
        {
          v28 = a5 >> 1;
          v29 = a5 - (a5 >> 1);
          v30 = &v24[v28];
          v31 = 8 * a1;
          v32 = v30;
          v33 = &v24[v25];
          while (v32 != v33)
          {
            v34 = *v32;
            v35 = *v32 < *v24;
            if (*v32 >= *v24)
            {
              v34 = *v24;
            }

            v24 += *v32 >= *v24;
            v32 += v35;
            *v9 = v34;
            v9 += v31;
            if (v24 == v30)
            {
              while (v32 != v33)
              {
                v37 = *v32++;
                *v9 = v37;
                v9 += v31;
              }

              return;
            }
          }

          while (v24 != v30)
          {
            v36 = *v24++;
            *v9 = v36;
            v9 += v31;
          }
        }
      }

      else
      {
        v26 = a5 >> 1;
        v27 = a5 - (a5 >> 1);
      }
    }

    else if (a2 != a4 || a1 != a3)
    {
      v14 = &a2[a1];
      if (v14 != a4)
      {
        v15 = 0;
        v16 = 8 * a1;
        v17 = &a2[a1];
        v18 = a2;
        do
        {
          v19 = *v18;
          v18 = v17;
          v20 = *v17;
          if (v20 < v19)
          {
            v21 = v15;
            while (1)
            {
              *(v14 + v21) = v19;
              if (!v21)
              {
                break;
              }

              v19 = *(a2 + v21 + -8 * a1);
              v21 -= v16;
              if (v20 >= v19)
              {
                v22 = (v14 + v21);
                goto LABEL_17;
              }
            }

            v22 = a2;
LABEL_17:
            *v22 = v20;
          }

          v17 = &v18[a1];
          v15 += v16;
        }

        while (v17 != a4);
      }
    }
  }
}

void std::__radix_sort[abi:ne200100]<mlx::core::anonymous namespace::StridedIterator<unsigned long long>,unsigned long long *>(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v85 = *MEMORY[0x277D85DE8];
  bzero(v77, 0x2000uLL);
  v76 = 0;
  v75 = 0;
  v11 = 8 * v10;
  if (v9 == v5)
  {
    v12 = 0;
    v13 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 1;
    v15 = v9;
    do
    {
      v16 = *v15;
      ++v77[*v15];
      ++v78[BYTE1(v16)];
      v13 &= v16 >= v14;
      ++v79[BYTE2(v16)];
      ++v80[BYTE3(v16)];
      ++v81[BYTE4(v16)];
      ++v82[BYTE5(v16)];
      ++v83[BYTE6(v16)];
      ++*(v84 + ((v16 >> 54) & 0x3FC));
      v15 += v11;
      v14 = v16;
    }

    while (v15 != v5);
    v12 = v77[0];
  }

  v17 = 1;
  v18 = v12;
  do
  {
    v19 = v77[v17];
    if (v18 <= v19)
    {
      v18 = v77[v17];
    }

    v12 += v19;
    v77[v17++] = v12;
  }

  while (v17 != 256);
  v74[0] = v18;
  v20 = v78[0];
  v21 = 257;
  v22 = v78[0];
  do
  {
    v23 = v77[v21];
    if (v22 <= v23)
    {
      v22 = v77[v21];
    }

    v20 += v23;
    v77[v21++] = v20;
  }

  while (v21 != 512);
  v74[1] = v22;
  v24 = v79[0];
  v25 = 513;
  v26 = v79[0];
  do
  {
    v27 = v77[v25];
    if (v26 <= v27)
    {
      v26 = v77[v25];
    }

    v24 += v27;
    v77[v25++] = v24;
  }

  while (v25 != 768);
  v74[2] = v26;
  v28 = v80[0];
  v29 = 769;
  v30 = v80[0];
  do
  {
    v31 = v77[v29];
    if (v30 <= v31)
    {
      v30 = v77[v29];
    }

    v28 += v31;
    v77[v29++] = v28;
  }

  while (v29 != 1024);
  v74[3] = v30;
  v32 = 0x3FFFFFFFFFFFFF01;
  v33 = v81[0];
  v34 = v81[0];
  do
  {
    v35 = v82[v32];
    if (v34 <= v35)
    {
      v34 = v82[v32];
    }

    v33 += v35;
    v82[v32++] = v33;
  }

  while (v32 * 4);
  v74[4] = v34;
  v36 = 0x3FFFFFFFFFFFFF01;
  v37 = v82[0];
  v38 = v82[0];
  do
  {
    v39 = v83[v36];
    if (v38 <= v39)
    {
      v38 = v83[v36];
    }

    v37 += v39;
    v83[v36++] = v37;
  }

  while (v36 * 4);
  LODWORD(v75) = v38;
  v40 = 0x3FFFFFFFFFFFFF01;
  v41 = v83[0];
  v42 = v83[0];
  do
  {
    v43 = v84[v40];
    if (v42 <= v43)
    {
      v42 = v84[v40];
    }

    v41 += v43;
    v84[v40++] = v41;
  }

  while (v40 * 4);
  HIDWORD(v75) = v42;
  v44 = v84[0];
  v45 = 1793;
  v46 = v84[0];
  do
  {
    v47 = v77[v45];
    if (v46 <= v47)
    {
      v46 = v77[v45];
    }

    v44 += v47;
    v77[v45++] = v44;
  }

  while (v45 != 2048);
  v76 = v46;
  if ((v13 & 1) == 0)
  {
    v48 = 0;
    v49 = ((v5 - v9) >> 3) / v7;
    v50 = v49 << 32;
    v51 = 8 * v7;
    v52 = &v5[-8 * v7];
    do
    {
      v53 = v74[v48];
      v54 = v74[v48 | 1];
      if (v53 != v49 || v54 != v49)
      {
        if (v53 == v49)
        {
          if (v9 != v5)
          {
            v61 = v9;
            v62 = v3;
            do
            {
              *v62++ = *v61;
              v61 += v11;
            }

            while (v61 != v5);
          }
        }

        else if (v9 != v5)
        {
          v56 = 0;
          v57 = &v77[256 * v48];
          do
          {
            v58 = *&v52[v56];
            v59 = (v58 >> (8 * v48));
            v60 = v57[v59] - 1;
            v57[v59] = v60;
            v3[v60] = v58;
            v56 -= v51;
          }

          while (v9 - v5 != v56);
        }

        if (v54 == v49)
        {
          if (v50)
          {
            v68 = v9;
            v69 = 8 * v49;
            v70 = v3;
            do
            {
              v71 = *v70++;
              *v68 = v71;
              v68 = (v68 + v11);
              v69 -= 8;
            }

            while (v69);
          }
        }

        else if (v50)
        {
          v63 = &v77[256 * (v48 | 1)];
          v64 = v49;
          do
          {
            v65 = v3[v64 - 1];
            v66 = (v65 >> ((8 * v48) | 8));
            v67 = v63[v66] - 1;
            v63[v66] = v67;
            *&v9[8 * v10 * v67] = v65;
            --v64;
          }

          while (v64 * 8);
        }
      }

      v72 = v48 >= 6;
      v48 += 2;
    }

    while (!v72);
  }

  v73 = *MEMORY[0x277D85DE8];
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned long long>>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, unsigned int a5, uint64_t *a6)
{
  if (a5)
  {
    v6 = a6;
    v8 = a2;
    if (a5 == 1)
    {
LABEL_9:
      *v6 = *v8;
      return result;
    }

    if (a5 == 2)
    {
      v11 = &a4[-a3];
      v12 = *v11;
      v13 = *v11 >= *a2;
      if (*v11 >= *a2)
      {
        v12 = *a2;
      }

      *a6 = v12;
      v6 = a6 + 1;
      if (v13)
      {
        v8 = &a4[-a3];
      }

      goto LABEL_9;
    }

    v14 = result;
    if (a5 > 8)
    {
      v24 = a5 >> 1;
      v25 = &a2[result * v24];
      if (8 * v14 * v24)
      {
        v26 = &v8[v14 * v24];
        while (v26 != a4 || v14 != a3)
        {
          v27 = *v26;
          v28 = *v26 >= *v8;
          if (*v26 < *v8)
          {
            v29 = v14;
          }

          else
          {
            v27 = *v8;
            v29 = 0;
          }

          v26 += v29;
          if (v28)
          {
            v30 = v14;
          }

          else
          {
            v30 = 0;
          }

          v8 += v30;
          *v6++ = v27;
          if (v8 == v25)
          {
            goto LABEL_37;
          }
        }

        for (; v8 != v25; v8 += v14)
        {
          *v6++ = *v8;
        }
      }

      else
      {
        v26 = &v8[v14 * v24];
LABEL_37:
        while (v26 != a4)
        {
          *v6++ = *v26;
          v26 += v14;
        }
      }
    }

    else if (a2 != a4)
    {
      *a6 = *a2;
      v15 = &a2[result];
      if (v15 != a4)
      {
        v16 = 0;
        v17 = a6;
        v18 = a6;
        do
        {
          v20 = *v18++;
          v19 = v20;
          if (*v15 >= v20)
          {
            *v18 = *v15;
          }

          else
          {
            v17[1] = v19;
            v21 = a6;
            if (v17 != a6)
            {
              v22 = v16;
              while (1)
              {
                v21 = (a6 + v22);
                v23 = *(a6 + v22 - 8);
                if (*v15 >= v23)
                {
                  break;
                }

                *v21 = v23;
                v22 -= 8;
                if (!v22)
                {
                  v21 = a6;
                  break;
                }
              }
            }

            *v21 = *v15;
          }

          v15 += result;
          v16 += 8;
          v17 = v18;
        }

        while (v15 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<unsigned long long>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, int a7, int a8, void *a9, uint64_t a10)
{
  if (!a8)
  {
    return result;
  }

  v13 = result;
  result = 0xFFFFFFFFLL;
  while (a8 > a10 && a7 > a10)
  {
    if (!a7)
    {
      return result;
    }

    v17 = 0;
    v18 = *a4;
    v19 = -a7;
    v20 = 8 * v13;
    while (1)
    {
      v21 = *&a2[v17];
      if (v18 < v21)
      {
        break;
      }

      v17 += v20;
      v73 = __CFADD__(v19++, 1);
      if (v73)
      {
        return result;
      }
    }

    v22 = &a2[v17];
    if (-v19 >= a8)
    {
      if (v19 == -1)
      {
        *&a2[v17] = v18;
        *a4 = v21;
        return result;
      }

      v25 = &a2[8 * v13 * (((v19 > 0) - v19) >> 1) + v17];
      v30 = ((a6 - a4) >> 3) / a5;
      if (v30)
      {
        v23 = a4;
        do
        {
          v31 = v30 >> 1;
          v32 = &v23[8 * a3 * v31];
          v33 = *v32;
          v34 = &v32[8 * a3];
          LODWORD(v30) = v30 + ~(v30 >> 1);
          if (v33 < *v25)
          {
            v23 = v34;
          }

          else
          {
            LODWORD(v30) = v31;
          }
        }

        while (v30);
      }

      else
      {
        v23 = a4;
      }

      v36 = (-v19 / 2);
      v35 = ((v23 - a4) >> 3) / a3;
    }

    else
    {
      v23 = &a4[8 * a3 * ((a8 + (a8 >> 31)) >> 1)];
      v24 = ((a4 - a2 - v17) >> 3) / a3;
      if (v24)
      {
        v25 = &a2[v17];
        do
        {
          v26 = v24 >> 1;
          v27 = &v25[v20 * v26];
          v28 = *v27;
          v29 = &v27[8 * v13];
          LODWORD(v24) = v24 + ~(v24 >> 1);
          if (*v23 < v28)
          {
            LODWORD(v24) = v26;
          }

          else
          {
            v25 = v29;
          }
        }

        while (v24);
      }

      else
      {
        v25 = &a2[v17];
      }

      v35 = (a8 / 2);
      v36 = ((v25 - a2 - v17) >> 3) / v13;
    }

    if (v25 != a4 || (v37 = v23, v38 = v13, v13 != a3))
    {
      v37 = v25;
      v38 = v13;
      if (a4 != v23)
      {
        if (&v25[8 * v13] == a4 && v13 == a3)
        {
          v39 = 0;
          v40 = *v25;
          do
          {
            *&v25[v39] = *&a4[v39];
            v39 += v20;
          }

          while (&a4[v39] != v23);
          a4 = &v25[v39];
          *&v25[v39] = v40;
          v38 = v13;
        }

        else
        {
          v41 = 8 * a3;
          if (&a4[8 * a3] == v23)
          {
            v42 = &v23[-v41];
            v43 = *&v23[-8 * a3];
            if (&v23[-v41] == v25)
            {
              a4 = v23;
            }

            else
            {
              v61 = v23;
              a4 = v23;
              do
              {
                v42 -= 8 * a3;
                v61 -= 8 * a3;
                *v61 = *v42;
                a4 -= v41;
              }

              while (v42 != v25);
            }

            *v25 = v43;
          }

          else
          {
            v44 = ((v23 - a4) >> 3) / a3;
            v45 = v44;
            v46 = ((a4 - v25) >> 3) / a3;
            v47 = v46;
            if (v46 != v44)
            {
              do
              {
                v52 = v47;
                v47 = v45;
                v45 = v52 % v45;
              }

              while (v45);
              v53 = v36;
              if (v13)
              {
                v54 = &v25[8 * v13 * v47];
                v55 = v46 * v13;
                do
                {
                  v54 -= 8 * v13;
                  v56 = *v54;
                  v57 = &v54[8 * v55];
                  v58 = v54;
                  do
                  {
                    v59 = v57;
                    *v58 = *v57;
                    v60 = ((v23 - v57) >> 3) / a3;
                    if (v46 >= v60)
                    {
                      v57 = &v25[8 * (v46 - v60) * v13];
                    }

                    else
                    {
                      v57 = &v59[8 * v55];
                    }

                    v58 = v59;
                  }

                  while (v57 != v54);
                  *v59 = v56;
                }

                while (v54 != v25);
              }

              a4 = &v25[8 * v44 * v13];
              v38 = v13;
              v36 = v53;
              goto LABEL_67;
            }

            if (v25 != a4)
            {
              v48 = a4;
              v49 = v25;
              do
              {
                v50 = *v49;
                *v49 = *v48;
                *v48 = v50;
                v49 = (v49 + v20);
                v48 = (v48 + v41);
              }

              while (v49 != a4 && v48 != v23);
            }
          }

          v38 = a3;
        }

LABEL_67:
        v37 = a4;
      }
    }

    a7 = -(v36 + v19);
    v62 = a8 - v35;
    v87 = a10;
    v85 = a10;
    if (v36 + v35 >= a8 - (v36 + v35) - v19)
    {
      v86 = v37;
      v63 = a9;
      v62 = v35;
      a7 = v36;
      a3 = v13;
      v23 = v25;
      v37 = v22;
      a5 = v38;
      a6 = v86;
    }

    else
    {
      v63 = a9;
      v64 = v13;
      v65 = v13;
      v66 = v25;
      v67 = a6;
      v68 = a5;
      a5 = v68;
      a6 = v67;
      v13 = v38;
    }

    a8 = v62;
    a2 = v37;
    a4 = v23;
    a9 = v63;
    a10 = v87;
    result = 0xFFFFFFFFLL;
    if (!v62)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v74 = 8 * v13;
      v75 = a2;
      v76 = a9;
      do
      {
        *v76++ = *v75;
        v75 = (v75 + v74);
      }

      while (v75 != a4);
      v77 = v76 - 1;
      while (a4 != a6 || a3 != a5)
      {
        v78 = *a4;
        v79 = *a4 >= *a9;
        if (*a4 >= *a9)
        {
          v78 = *a9;
        }

        a9 += *a4 >= *a9;
        if (v79)
        {
          v80 = 0;
        }

        else
        {
          v80 = a3;
        }

        a4 += 8 * v80;
        *a2 = v78;
        a2 += v74;
        if (v76 == a9)
        {
          return result;
        }
      }

      v81 = a9 - 1;
      do
      {
        v82 = v81[1];
        ++v81;
        *a2 = v82;
        a2 += v74;
      }

      while (v77 != v81);
    }
  }

  else if (a6 != a4)
  {
    v69 = a4;
    v70 = a9;
    do
    {
      *v70++ = *v69;
      v69 += 8 * a3;
    }

    while (v69 != a6);
    while (a2 != a4 || a3 != v13)
    {
      v71 = *(v70 - 1);
      v72 = *&a4[-8 * a3];
      a6 -= 8 * a5;
      v73 = v71 >= v72;
      if (v71 <= v72)
      {
        v71 = *&a4[-8 * a3];
      }

      if (v73)
      {
        --v70;
      }

      else
      {
        a4 -= 8 * a3;
      }

      *a6 = v71;
      if (v70 == a9)
      {
        return result;
      }
    }

    if (v70 != a9)
    {
      v83 = -8 * a5;
      do
      {
        v84 = *--v70;
        *&a6[v83] = v84;
        v83 -= 8 * a5;
      }

      while (v70 != a9);
    }
  }

  return result;
}