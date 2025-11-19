void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<signed char>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5, unsigned __int8 *a6, uint64_t a7)
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

void std::__radix_sort[abi:ne200100]<mlx::core::anonymous namespace::StridedIterator<signed char>,signed char *>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  bzero(v19, 0x808uLL);
  if (a2 == a4)
  {
    v9 = 0;
  }

  else
  {
    v10 = a2;
    do
    {
      ++v20[*v10 ^ 0x80];
      v10 += a1;
    }

    while (v10 != a4);
    v9 = v20[0];
  }

  for (i = 16; i != 2056; i += 8)
  {
    v9 += *&v19[i];
    *&v19[i] = v9;
  }

  if (a2 != a4)
  {
    v12 = a2;
    do
    {
      v13 = *v12;
      v14 = *v12 ^ 0x80u;
      v15 = *&v19[8 * v14];
      *&v19[8 * v14] = v15 + 1;
      a5[v15] = v13;
      v12 += a1;
    }

    while (v12 != a4);
  }

  for (j = v21; j; --j)
  {
    v17 = *a5++;
    *a2 = v17;
    a2 += a1;
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<signed char>>(uint64_t result, _BYTE *a2, uint64_t a3, _BYTE *a4, unsigned int a5, _BYTE *a6)
{
  if (a5)
  {
    v6 = a6;
    v8 = a2;
    if (a5 == 1)
    {
LABEL_8:
      *v6 = *v8;
      return result;
    }

    if (a5 == 2)
    {
      v11 = a4[-a3];
      v12 = *a2;
      v13 = v11 < v12;
      if (v11 >= v12)
      {
        LOBYTE(v11) = *a2;
      }

      *a6 = v11;
      v6 = a6 + 1;
      if (!v13)
      {
        v8 = &a4[-a3];
      }

      goto LABEL_8;
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
          v30 = v28 < v29;
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
            v32 = 0;
          }

          else
          {
            v32 = v14;
          }

          v8 += v32;
          *v6++ = v28;
          if (v8 == v26)
          {
            goto LABEL_38;
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
LABEL_38:
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

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<signed char>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, int a7, int a8, char *a9, uint64_t a10)
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
      if (__CFADD__(v18++, 1))
      {
        return result;
      }
    }

    v21 = &a2[v16];
    if (-v18 >= a8)
    {
      if (v18 == -1)
      {
        a2[v16] = v17;
        *a4 = v19;
        return result;
      }

      v24 = &a2[v12 * (((v18 > 0) - v18) >> 1) + v16];
      v29 = (a6 - a4) / a5;
      if (v29)
      {
        v22 = a4;
        do
        {
          v30 = v29 >> 1;
          v31 = &v22[a3 * v30];
          v32 = *v31;
          v33 = &v31[a3];
          LODWORD(v29) = v29 + ~(v29 >> 1);
          if (v32 < *v24)
          {
            v22 = v33;
          }

          else
          {
            LODWORD(v29) = v30;
          }
        }

        while (v29);
      }

      else
      {
        v22 = a4;
      }

      v35 = (-v18 / 2);
      v34 = (v22 - a4) / a3;
    }

    else
    {
      v22 = &a4[a3 * ((a8 + (a8 >> 31)) >> 1)];
      v23 = (a4 - a2 - v16) / a3;
      if (v23)
      {
        v24 = &a2[v16];
        do
        {
          v25 = v23 >> 1;
          v26 = &v24[v12 * v25];
          v27 = *v26;
          v28 = &v26[v12];
          LODWORD(v23) = v23 + ~(v23 >> 1);
          if (*v22 < v27)
          {
            LODWORD(v23) = v25;
          }

          else
          {
            v24 = v28;
          }
        }

        while (v23);
      }

      else
      {
        v24 = &a2[v16];
      }

      v34 = (a8 / 2);
      v35 = (v24 - a2 - v16) / v12;
    }

    if (v24 != a4 || (v36 = v22, v37 = v12, v12 != a3))
    {
      v36 = v24;
      v37 = v12;
      if (a4 != v22)
      {
        if (&v24[v12] == a4 && v12 == a3)
        {
          v38 = 0;
          v39 = *v24;
          do
          {
            v24[v38] = a4[v38];
            v38 += v12;
          }

          while (&a4[v38] != v22);
          a4 = &v24[v38];
          v24[v38] = v39;
          v37 = v12;
        }

        else
        {
          if (&a4[a3] == v22)
          {
            v40 = &v22[-a3];
            v41 = v22[-a3];
            if (&v22[-a3] == v24)
            {
              a4 = v22;
            }

            else
            {
              a4 = v22;
              v59 = v22;
              do
              {
                v40 -= a3;
                v59 -= a3;
                *v59 = *v40;
                a4 -= a3;
              }

              while (v40 != v24);
            }

            *v24 = v41;
          }

          else
          {
            v42 = (v22 - a4) / a3;
            v43 = v42;
            v44 = (a4 - v24) / a3;
            v45 = v44;
            if (v44 != v42)
            {
              do
              {
                v50 = v45;
                v45 = v43;
                v43 = v50 % v43;
              }

              while (v43);
              v51 = v35;
              if (v12)
              {
                v52 = &v24[v12 * v45];
                v53 = v44 * v12;
                do
                {
                  v52 -= v12;
                  v54 = *v52;
                  v55 = &v52[v53];
                  v56 = v52;
                  do
                  {
                    v57 = v55;
                    *v56 = *v55;
                    v58 = (v22 - v55) / a3;
                    if (v44 >= v58)
                    {
                      v55 = &v24[(v44 - v58) * v12];
                    }

                    else
                    {
                      v55 = &v57[v53];
                    }

                    v56 = v57;
                  }

                  while (v55 != v52);
                  *v57 = v54;
                }

                while (v52 != v24);
              }

              a4 = &v24[v42 * v12];
              v37 = v12;
              v35 = v51;
              goto LABEL_67;
            }

            if (v24 != a4)
            {
              v46 = v24;
              v47 = a4;
              do
              {
                v48 = *v46;
                *v46 = *v47;
                *v47 = v48;
                v46 += v12;
                v47 += a3;
              }

              while (v46 != a4 && v47 != v22);
            }
          }

          v37 = a3;
        }

LABEL_67:
        v36 = a4;
      }
    }

    a7 = -(v35 + v18);
    v60 = a8 - v34;
    v83 = a10;
    v81 = a10;
    if (v35 + v34 >= a8 - (v35 + v34) - v18)
    {
      v82 = v36;
      v61 = a9;
      v60 = v34;
      a7 = v35;
      a3 = v12;
      v22 = v24;
      v36 = v21;
      a5 = v37;
      a6 = v82;
    }

    else
    {
      v61 = a9;
      v62 = v12;
      v63 = v12;
      v64 = v24;
      v65 = a5;
      v66 = a6;
      a5 = v65;
      a6 = v66;
      v12 = v37;
    }

    a8 = v60;
    a2 = v36;
    a4 = v22;
    a9 = v61;
    a10 = v83;
    if (!v60)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v74 = a9;
      v75 = a2;
      do
      {
        *v74++ = *v75;
        v75 += v12;
      }

      while (v75 != a4);
      v76 = v74 - 1;
      while (a4 != a6 || a3 != a5)
      {
        v77 = *a4;
        if (v77 < *a9)
        {
          v78 = a3;
        }

        else
        {
          LOBYTE(v77) = *a9++;
          v78 = 0;
        }

        a4 += v78;
        *a2 = v77;
        a2 += v12;
        if (v74 == a9)
        {
          return result;
        }
      }

      v79 = a9 - 1;
      do
      {
        v80 = *++v79;
        *a2 = v80;
        a2 += v12;
      }

      while (v76 != v79);
    }
  }

  else if (a6 != a4)
  {
    v67 = a9;
    v68 = a4;
    do
    {
      *v67++ = *v68;
      v68 += a3;
    }

    while (v68 != a6);
    v69 = -a5;
    while (a2 != a4 || a3 != v12)
    {
      v70 = *(v67 - 1);
      v71 = a4[-a3];
      a6 -= a5;
      v72 = v70 < v71;
      if (v70 <= v71)
      {
        LOBYTE(v70) = a4[-a3];
      }

      if (v72)
      {
        a4 -= a3;
      }

      else
      {
        --v67;
      }

      *a6 = v70;
      if (v67 == a9)
      {
        return result;
      }
    }

    while (v67 != a9)
    {
      v73 = *--v67;
      a6[v69] = v73;
      v69 -= a5;
    }
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<short>>(uint64_t a1, char *a2, uint64_t a3, char *a4, unsigned int a5, __int16 *a6, uint64_t a7)
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

void std::__radix_sort[abi:ne200100]<mlx::core::anonymous namespace::StridedIterator<short>,short *>(uint64_t a1, char *a2, uint64_t a3, char *a4, __int16 *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  bzero(v36, 0x800uLL);
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
      v11 &= (v14 ^ 0x8000) >= v12;
      ++v36[*v13];
      ++*(v37 + (((v14 ^ 0x8000uLL) >> 6) & 0x3FC));
      v13 += 2 * a1;
      v12 = v14 ^ 0x8000;
    }

    while (v13 != a4);
    v10 = v36[0];
  }

  v15 = 1;
  v16 = v10;
  do
  {
    v17 = v36[v15];
    if (v16 <= v17)
    {
      v16 = v36[v15];
    }

    v10 += v17;
    v36[v15++] = v10;
  }

  while (v15 != 256);
  v18 = v37[0];
  v19 = 257;
  v20 = v37[0];
  do
  {
    v21 = v36[v19];
    if (v20 <= v21)
    {
      v20 = v36[v19];
    }

    v18 += v21;
    v36[v19++] = v18;
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
          v27 = v36[v26] - 1;
          v36[v26] = v27;
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
            v34 = *a5++;
            *a2 = v34;
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
          v32 = (v31 >> 6) & 0x3FC ^ 0x200;
          v33 = *(v37 + v32) - 1;
          *(v37 + v32) = v33;
          *&a2[2 * a1 * v33] = v31;
          --v24;
        }

        while (v24 * 2);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<short>>(uint64_t result, __int16 *a2, uint64_t a3, __int16 *a4, unsigned int a5, __int16 *a6)
{
  if (a5)
  {
    v6 = a6;
    v8 = a2;
    if (a5 == 1)
    {
LABEL_8:
      *v6 = *v8;
      return result;
    }

    if (a5 == 2)
    {
      v11 = a4[-a3];
      v12 = *a2;
      v13 = v11 < v12;
      if (v11 >= v12)
      {
        LOWORD(v11) = *a2;
      }

      *a6 = v11;
      v6 = a6 + 1;
      if (!v13)
      {
        v8 = &a4[-a3];
      }

      goto LABEL_8;
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
          v30 = v28 < v29;
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
            v32 = 0;
          }

          else
          {
            v32 = v14;
          }

          v8 += v32;
          *v6++ = v28;
          if (v8 == v26)
          {
            goto LABEL_36;
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
LABEL_36:
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

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<short>>(uint64_t result, char *a2, uint64_t a3, __int16 *a4, uint64_t a5, __int16 *a6, int a7, int a8, __int16 *a9, uint64_t a10)
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
      if (__CFADD__(v19++, 1))
      {
        return result;
      }
    }

    v23 = &a2[v17];
    if (-v19 >= a8)
    {
      if (v19 == -1)
      {
        *&a2[v17] = v18;
        *a4 = v21;
        return result;
      }

      v26 = &a2[2 * v13 * (((v19 > 0) - v19) >> 1) + v17];
      v31 = (a6 - a4) / a5;
      if (v31)
      {
        v24 = a4;
        do
        {
          v32 = v31 >> 1;
          v33 = &v24[a3 * v32];
          v34 = *v33;
          v35 = &v33[a3];
          LODWORD(v31) = v31 + ~(v31 >> 1);
          if (v34 < *v26)
          {
            v24 = v35;
          }

          else
          {
            LODWORD(v31) = v32;
          }
        }

        while (v31);
      }

      else
      {
        v24 = a4;
      }

      v37 = (-v19 / 2);
      v36 = (v24 - a4) / a3;
    }

    else
    {
      v24 = &a4[a3 * ((a8 + (a8 >> 31)) >> 1)];
      v25 = ((a4 - a2 - v17) >> 1) / a3;
      if (v25)
      {
        v26 = &a2[v17];
        do
        {
          v27 = v25 >> 1;
          v28 = &v26[v13 * (v25 & 0xFFFFFFFE)];
          v29 = *v28;
          v30 = &v28[2 * v13];
          LODWORD(v25) = v25 + ~(v25 >> 1);
          if (*v24 < v29)
          {
            LODWORD(v25) = v27;
          }

          else
          {
            v26 = v30;
          }
        }

        while (v25);
      }

      else
      {
        v26 = &a2[v17];
      }

      v36 = (a8 / 2);
      v37 = ((v26 - a2 - v17) >> 1) / v13;
    }

    if (v26 != a4 || (v38 = v24, v39 = v13, v13 != a3))
    {
      v38 = v26;
      v39 = v13;
      if (a4 != v24)
      {
        if (&v26[2 * v13] == a4 && v13 == a3)
        {
          v40 = 0;
          v41 = *v26;
          do
          {
            *&v26[v40] = *(a4 + v40);
            v40 += v20;
          }

          while ((a4 + v40) != v24);
          a4 = &v26[v40];
          *&v26[v40] = v41;
          v39 = v13;
        }

        else
        {
          v42 = 2 * a3;
          if (&a4[a3] == v24)
          {
            v43 = &v24[v42 / 0xFFFFFFFFFFFFFFFELL];
            v44 = v24[-a3];
            if (&v24[v42 / 0xFFFFFFFFFFFFFFFELL] == v26)
            {
              a4 = v24;
            }

            else
            {
              v62 = v24;
              a4 = v24;
              do
              {
                v43 -= a3;
                v62 -= a3;
                *v62 = *v43;
                a4 = (a4 - v42);
              }

              while (v43 != v26);
            }

            *v26 = v44;
          }

          else
          {
            v45 = (v24 - a4) / a3;
            v46 = v45;
            v47 = ((a4 - v26) >> 1) / a3;
            v48 = v47;
            if (v47 != v45)
            {
              do
              {
                v53 = v48;
                v48 = v46;
                v46 = v53 % v46;
              }

              while (v46);
              v54 = v37;
              if (v13)
              {
                v55 = &v26[2 * v13 * v48];
                v56 = v47 * v13;
                do
                {
                  v55 -= v13;
                  v57 = *v55;
                  v58 = &v55[v56];
                  v59 = v55;
                  do
                  {
                    v60 = v58;
                    *v59 = *v58;
                    v61 = (v24 - v58) / a3;
                    if (v47 >= v61)
                    {
                      v58 = &v26[2 * (v47 - v61) * v13];
                    }

                    else
                    {
                      v58 = &v60[v56];
                    }

                    v59 = v60;
                  }

                  while (v58 != v55);
                  *v60 = v57;
                }

                while (v55 != v26);
              }

              a4 = &v26[2 * v45 * v13];
              v39 = v13;
              v37 = v54;
              goto LABEL_67;
            }

            if (v26 != a4)
            {
              v49 = a4;
              v50 = v26;
              do
              {
                v51 = *v50;
                *v50 = *v49;
                *v49 = v51;
                v50 = (v50 + v20);
                v49 = (v49 + v42);
              }

              while (v50 != a4 && v49 != v24);
            }
          }

          v39 = a3;
        }

LABEL_67:
        v38 = a4;
      }
    }

    a7 = -(v37 + v19);
    v63 = a8 - v36;
    v90 = a10;
    v88 = a10;
    if (v37 + v36 >= a8 - (v37 + v36) - v19)
    {
      v89 = v38;
      v64 = a9;
      v63 = v36;
      a7 = v37;
      a3 = v13;
      v24 = v26;
      v38 = v23;
      a5 = v39;
      a6 = v89;
    }

    else
    {
      v64 = a9;
      v65 = v13;
      v66 = v13;
      v67 = v26;
      v68 = a6;
      v69 = a5;
      a5 = v69;
      a6 = v68;
      v13 = v39;
    }

    a8 = v63;
    a2 = v38;
    a4 = v24;
    a9 = v64;
    a10 = v90;
    result = 0xFFFFFFFFLL;
    if (!v63)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v75 = 2 * v13;
      v76 = a2;
      v77 = a9;
      do
      {
        *v77++ = *v76;
        v76 = (v76 + v75);
      }

      while (v76 != a4);
      v78 = v77 - 1;
      while (a4 != a6 || a3 != a5)
      {
        v79 = *a4;
        v80 = *a9;
        v81 = v79 < v80;
        v82 = v79 >= v80;
        if (v79 >= v80)
        {
          LOWORD(v79) = *a9;
        }

        a9 += v82;
        if (v81)
        {
          v83 = a3;
        }

        else
        {
          v83 = 0;
        }

        a4 += v83;
        *a2 = v79;
        a2 += v75;
        if (v77 == a9)
        {
          return result;
        }
      }

      v84 = a9 - 1;
      do
      {
        v85 = v84[1];
        ++v84;
        *a2 = v85;
        a2 += v75;
      }

      while (v78 != v84);
    }
  }

  else if (a6 != a4)
  {
    v70 = a4;
    v71 = a9;
    do
    {
      *v71++ = *v70;
      v70 += a3;
    }

    while (v70 != a6);
    while (a2 != a4 || a3 != v13)
    {
      v72 = *(v71 - 1);
      v73 = a4[-a3];
      a6 -= a5;
      v74 = v72 < v73;
      if (v72 <= v73)
      {
        LOWORD(v72) = a4[-a3];
      }

      if (v74)
      {
        a4 -= a3;
      }

      else
      {
        --v71;
      }

      *a6 = v72;
      if (v71 == a9)
      {
        return result;
      }
    }

    if (v71 != a9)
    {
      v86 = -1 * a5;
      do
      {
        v87 = *--v71;
        a6[v86] = v87;
        v86 -= a5;
      }

      while (v71 != a9);
    }
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<int>>(uint64_t a1, int *a2, uint64_t a3, int *a4, unsigned int a5, int *a6, uint64_t a7)
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

void std::__radix_sort[abi:ne200100]<mlx::core::anonymous namespace::StridedIterator<int>,int *>(uint64_t a1)
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
      v13 &= (v16 ^ 0x80000000) >= v14;
      ++v62[*v15];
      ++v63[BYTE1(v16)];
      ++v64[BYTE2(v16)];
      ++*(v65 + (((v16 ^ 0x80000000uLL) >> 22) & 0x3FC));
      v15 = (v15 + v11);
      v14 = v16 ^ 0x80000000;
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
            v47 = v39[((v46 ^ 0x80000000) >> v45)] - 1;
            v39[((v46 ^ 0x80000000) >> v45)] = v47;
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
            v54 = v50[((v53 ^ 0x80000000) >> v51)] - 1;
            v50[((v53 ^ 0x80000000) >> v51)] = v54;
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

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<int>>(uint64_t result, int *a2, uint64_t a3, int *a4, unsigned int a5, int *a6)
{
  if (a5)
  {
    v6 = a6;
    v8 = a2;
    if (a5 == 1)
    {
LABEL_8:
      *v6 = *v8;
      return result;
    }

    if (a5 == 2)
    {
      v11 = a4[-a3];
      v12 = v11 < *a2;
      if (v11 >= *a2)
      {
        v11 = *a2;
      }

      *a6 = v11;
      v6 = a6 + 1;
      if (!v12)
      {
        v8 = &a4[-a3];
      }

      goto LABEL_8;
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
          v27 = *v25 < *v8;
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
            v29 = 0;
          }

          else
          {
            v29 = v13;
          }

          v8 += v29;
          *v6++ = v26;
          if (v8 == v24)
          {
            goto LABEL_36;
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
LABEL_36:
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

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, int a7, int a8, _DWORD *a9, uint64_t a10)
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
    v20 = 4 * v13;
    while (1)
    {
      v21 = *&a2[v17];
      if (v18 < v21)
      {
        break;
      }

      v17 += v20;
      if (__CFADD__(v19++, 1))
      {
        return result;
      }
    }

    v23 = &a2[v17];
    if (-v19 >= a8)
    {
      if (v19 == -1)
      {
        *&a2[v17] = v18;
        *a4 = v21;
        return result;
      }

      v26 = &a2[4 * v13 * (((v19 > 0) - v19) >> 1) + v17];
      v31 = ((a6 - a4) >> 2) / a5;
      if (v31)
      {
        v24 = a4;
        do
        {
          v32 = v31 >> 1;
          v33 = &v24[4 * a3 * v32];
          v34 = *v33;
          v35 = &v33[4 * a3];
          LODWORD(v31) = v31 + ~(v31 >> 1);
          if (v34 < *v26)
          {
            v24 = v35;
          }

          else
          {
            LODWORD(v31) = v32;
          }
        }

        while (v31);
      }

      else
      {
        v24 = a4;
      }

      v37 = (-v19 / 2);
      v36 = ((v24 - a4) >> 2) / a3;
    }

    else
    {
      v24 = &a4[4 * a3 * ((a8 + (a8 >> 31)) >> 1)];
      v25 = ((a4 - a2 - v17) >> 2) / a3;
      if (v25)
      {
        v26 = &a2[v17];
        do
        {
          v27 = v25 >> 1;
          v28 = &v26[v20 * v27];
          v29 = *v28;
          v30 = &v28[4 * v13];
          LODWORD(v25) = v25 + ~(v25 >> 1);
          if (*v24 < v29)
          {
            LODWORD(v25) = v27;
          }

          else
          {
            v26 = v30;
          }
        }

        while (v25);
      }

      else
      {
        v26 = &a2[v17];
      }

      v36 = (a8 / 2);
      v37 = ((v26 - a2 - v17) >> 2) / v13;
    }

    if (v26 != a4 || (v38 = v24, v39 = v13, v13 != a3))
    {
      v38 = v26;
      v39 = v13;
      if (a4 != v24)
      {
        if (&v26[4 * v13] == a4 && v13 == a3)
        {
          v40 = 0;
          v41 = *v26;
          do
          {
            *&v26[v40] = *&a4[v40];
            v40 += v20;
          }

          while (&a4[v40] != v24);
          a4 = &v26[v40];
          *&v26[v40] = v41;
          v39 = v13;
        }

        else
        {
          v42 = 4 * a3;
          if (&a4[4 * a3] == v24)
          {
            v43 = &v24[-v42];
            v44 = *&v24[-4 * a3];
            if (&v24[-v42] == v26)
            {
              a4 = v24;
            }

            else
            {
              v62 = v24;
              a4 = v24;
              do
              {
                v43 -= 4 * a3;
                v62 -= 4 * a3;
                *v62 = *v43;
                a4 -= v42;
              }

              while (v43 != v26);
            }

            *v26 = v44;
          }

          else
          {
            v45 = ((v24 - a4) >> 2) / a3;
            v46 = v45;
            v47 = ((a4 - v26) >> 2) / a3;
            v48 = v47;
            if (v47 != v45)
            {
              do
              {
                v53 = v48;
                v48 = v46;
                v46 = v53 % v46;
              }

              while (v46);
              v54 = v37;
              if (v13)
              {
                v55 = &v26[4 * v13 * v48];
                v56 = v47 * v13;
                do
                {
                  v55 -= 4 * v13;
                  v57 = *v55;
                  v58 = &v55[4 * v56];
                  v59 = v55;
                  do
                  {
                    v60 = v58;
                    *v59 = *v58;
                    v61 = ((v24 - v58) >> 2) / a3;
                    if (v47 >= v61)
                    {
                      v58 = &v26[4 * (v47 - v61) * v13];
                    }

                    else
                    {
                      v58 = &v60[4 * v56];
                    }

                    v59 = v60;
                  }

                  while (v58 != v55);
                  *v60 = v57;
                }

                while (v55 != v26);
              }

              a4 = &v26[4 * v45 * v13];
              v39 = v13;
              v37 = v54;
              goto LABEL_67;
            }

            if (v26 != a4)
            {
              v49 = a4;
              v50 = v26;
              do
              {
                v51 = *v50;
                *v50 = *v49;
                *v49 = v51;
                v50 = (v50 + v20);
                v49 = (v49 + v42);
              }

              while (v50 != a4 && v49 != v24);
            }
          }

          v39 = a3;
        }

LABEL_67:
        v38 = a4;
      }
    }

    a7 = -(v37 + v19);
    v63 = a8 - v36;
    v88 = a10;
    v86 = a10;
    if (v37 + v36 >= a8 - (v37 + v36) - v19)
    {
      v87 = v38;
      v64 = a9;
      v63 = v36;
      a7 = v37;
      a3 = v13;
      v24 = v26;
      v38 = v23;
      a5 = v39;
      a6 = v87;
    }

    else
    {
      v64 = a9;
      v65 = v13;
      v66 = v13;
      v67 = v26;
      v68 = a6;
      v69 = a5;
      a5 = v69;
      a6 = v68;
      v13 = v39;
    }

    a8 = v63;
    a2 = v38;
    a4 = v24;
    a9 = v64;
    a10 = v88;
    result = 0xFFFFFFFFLL;
    if (!v63)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v75 = 4 * v13;
      v76 = a2;
      v77 = a9;
      do
      {
        *v77++ = *v76;
        v76 = (v76 + v75);
      }

      while (v76 != a4);
      v78 = v77 - 1;
      while (a4 != a6 || a3 != a5)
      {
        v79 = *a4;
        v80 = *a4 < *a9;
        if (*a4 >= *a9)
        {
          v79 = *a9;
        }

        a9 += *a4 >= *a9;
        if (v80)
        {
          v81 = a3;
        }

        else
        {
          v81 = 0;
        }

        a4 += 4 * v81;
        *a2 = v79;
        a2 += v75;
        if (v77 == a9)
        {
          return result;
        }
      }

      v82 = a9 - 1;
      do
      {
        v83 = v82[1];
        ++v82;
        *a2 = v83;
        a2 += v75;
      }

      while (v78 != v82);
    }
  }

  else if (a6 != a4)
  {
    v70 = a4;
    v71 = a9;
    do
    {
      *v71++ = *v70;
      v70 += 4 * a3;
    }

    while (v70 != a6);
    while (a2 != a4 || a3 != v13)
    {
      v72 = *(v71 - 1);
      v73 = *&a4[-4 * a3];
      a6 -= 4 * a5;
      v74 = v72 < v73;
      if (v72 <= v73)
      {
        v72 = *&a4[-4 * a3];
      }

      if (v74)
      {
        a4 -= 4 * a3;
      }

      else
      {
        --v71;
      }

      *a6 = v72;
      if (v71 == a9)
      {
        return result;
      }
    }

    if (v71 != a9)
    {
      v84 = -4 * a5;
      do
      {
        v85 = *--v71;
        *&a6[v84] = v85;
        v84 -= 4 * a5;
      }

      while (v71 != a9);
    }
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<long long>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, unsigned int a5, uint64_t *a6, uint64_t a7)
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

void std::__radix_sort[abi:ne200100]<mlx::core::anonymous namespace::StridedIterator<long long>,long long *>(uint64_t a1)
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
      v13 &= (v16 ^ 0x8000000000000000) >= v14;
      ++v79[BYTE2(v16)];
      ++v80[BYTE3(v16)];
      ++v81[BYTE4(v16)];
      ++v82[BYTE5(v16)];
      ++v83[BYTE6(v16)];
      ++*(v84 + (((v16 ^ 0x8000000000000000) >> 54) & 0x3FC));
      v15 += v11;
      v14 = v16 ^ 0x8000000000000000;
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
            v59 = ((v58 ^ 0x8000000000000000) >> (8 * v48));
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
            v66 = ((v65 ^ 0x8000000000000000) >> ((8 * v48) | 8));
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

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<long long>>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, unsigned int a5, uint64_t *a6)
{
  if (a5)
  {
    v6 = a6;
    v8 = a2;
    if (a5 == 1)
    {
LABEL_8:
      *v6 = *v8;
      return result;
    }

    if (a5 == 2)
    {
      v11 = &a4[-a3];
      v12 = *v11;
      v13 = *v11 < *a2;
      if (*v11 >= *a2)
      {
        v12 = *a2;
      }

      *a6 = v12;
      v6 = a6 + 1;
      if (!v13)
      {
        v8 = &a4[-a3];
      }

      goto LABEL_8;
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
          v28 = *v26 < *v8;
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
            v30 = 0;
          }

          else
          {
            v30 = v14;
          }

          v8 += v30;
          *v6++ = v27;
          if (v8 == v25)
          {
            goto LABEL_36;
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
LABEL_36:
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

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<long long>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, int a7, int a8, void *a9, uint64_t a10)
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
      if (__CFADD__(v19++, 1))
      {
        return result;
      }
    }

    v23 = &a2[v17];
    if (-v19 >= a8)
    {
      if (v19 == -1)
      {
        *&a2[v17] = v18;
        *a4 = v21;
        return result;
      }

      v26 = &a2[8 * v13 * (((v19 > 0) - v19) >> 1) + v17];
      v31 = ((a6 - a4) >> 3) / a5;
      if (v31)
      {
        v24 = a4;
        do
        {
          v32 = v31 >> 1;
          v33 = &v24[8 * a3 * v32];
          v34 = *v33;
          v35 = &v33[8 * a3];
          LODWORD(v31) = v31 + ~(v31 >> 1);
          if (v34 < *v26)
          {
            v24 = v35;
          }

          else
          {
            LODWORD(v31) = v32;
          }
        }

        while (v31);
      }

      else
      {
        v24 = a4;
      }

      v37 = (-v19 / 2);
      v36 = ((v24 - a4) >> 3) / a3;
    }

    else
    {
      v24 = &a4[8 * a3 * ((a8 + (a8 >> 31)) >> 1)];
      v25 = ((a4 - a2 - v17) >> 3) / a3;
      if (v25)
      {
        v26 = &a2[v17];
        do
        {
          v27 = v25 >> 1;
          v28 = &v26[v20 * v27];
          v29 = *v28;
          v30 = &v28[8 * v13];
          LODWORD(v25) = v25 + ~(v25 >> 1);
          if (*v24 < v29)
          {
            LODWORD(v25) = v27;
          }

          else
          {
            v26 = v30;
          }
        }

        while (v25);
      }

      else
      {
        v26 = &a2[v17];
      }

      v36 = (a8 / 2);
      v37 = ((v26 - a2 - v17) >> 3) / v13;
    }

    if (v26 != a4 || (v38 = v24, v39 = v13, v13 != a3))
    {
      v38 = v26;
      v39 = v13;
      if (a4 != v24)
      {
        if (&v26[8 * v13] == a4 && v13 == a3)
        {
          v40 = 0;
          v41 = *v26;
          do
          {
            *&v26[v40] = *&a4[v40];
            v40 += v20;
          }

          while (&a4[v40] != v24);
          a4 = &v26[v40];
          *&v26[v40] = v41;
          v39 = v13;
        }

        else
        {
          v42 = 8 * a3;
          if (&a4[8 * a3] == v24)
          {
            v43 = &v24[-v42];
            v44 = *&v24[-8 * a3];
            if (&v24[-v42] == v26)
            {
              a4 = v24;
            }

            else
            {
              v62 = v24;
              a4 = v24;
              do
              {
                v43 -= 8 * a3;
                v62 -= 8 * a3;
                *v62 = *v43;
                a4 -= v42;
              }

              while (v43 != v26);
            }

            *v26 = v44;
          }

          else
          {
            v45 = ((v24 - a4) >> 3) / a3;
            v46 = v45;
            v47 = ((a4 - v26) >> 3) / a3;
            v48 = v47;
            if (v47 != v45)
            {
              do
              {
                v53 = v48;
                v48 = v46;
                v46 = v53 % v46;
              }

              while (v46);
              v54 = v37;
              if (v13)
              {
                v55 = &v26[8 * v13 * v48];
                v56 = v47 * v13;
                do
                {
                  v55 -= 8 * v13;
                  v57 = *v55;
                  v58 = &v55[8 * v56];
                  v59 = v55;
                  do
                  {
                    v60 = v58;
                    *v59 = *v58;
                    v61 = ((v24 - v58) >> 3) / a3;
                    if (v47 >= v61)
                    {
                      v58 = &v26[8 * (v47 - v61) * v13];
                    }

                    else
                    {
                      v58 = &v60[8 * v56];
                    }

                    v59 = v60;
                  }

                  while (v58 != v55);
                  *v60 = v57;
                }

                while (v55 != v26);
              }

              a4 = &v26[8 * v45 * v13];
              v39 = v13;
              v37 = v54;
              goto LABEL_67;
            }

            if (v26 != a4)
            {
              v49 = a4;
              v50 = v26;
              do
              {
                v51 = *v50;
                *v50 = *v49;
                *v49 = v51;
                v50 = (v50 + v20);
                v49 = (v49 + v42);
              }

              while (v50 != a4 && v49 != v24);
            }
          }

          v39 = a3;
        }

LABEL_67:
        v38 = a4;
      }
    }

    a7 = -(v37 + v19);
    v63 = a8 - v36;
    v88 = a10;
    v86 = a10;
    if (v37 + v36 >= a8 - (v37 + v36) - v19)
    {
      v87 = v38;
      v64 = a9;
      v63 = v36;
      a7 = v37;
      a3 = v13;
      v24 = v26;
      v38 = v23;
      a5 = v39;
      a6 = v87;
    }

    else
    {
      v64 = a9;
      v65 = v13;
      v66 = v13;
      v67 = v26;
      v68 = a6;
      v69 = a5;
      a5 = v69;
      a6 = v68;
      v13 = v39;
    }

    a8 = v63;
    a2 = v38;
    a4 = v24;
    a9 = v64;
    a10 = v88;
    result = 0xFFFFFFFFLL;
    if (!v63)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v75 = 8 * v13;
      v76 = a2;
      v77 = a9;
      do
      {
        *v77++ = *v76;
        v76 = (v76 + v75);
      }

      while (v76 != a4);
      v78 = v77 - 1;
      while (a4 != a6 || a3 != a5)
      {
        v79 = *a4;
        v80 = *a4 < *a9;
        if (*a4 >= *a9)
        {
          v79 = *a9;
        }

        a9 += *a4 >= *a9;
        if (v80)
        {
          v81 = a3;
        }

        else
        {
          v81 = 0;
        }

        a4 += 8 * v81;
        *a2 = v79;
        a2 += v75;
        if (v77 == a9)
        {
          return result;
        }
      }

      v82 = a9 - 1;
      do
      {
        v83 = v82[1];
        ++v82;
        *a2 = v83;
        a2 += v75;
      }

      while (v78 != v82);
    }
  }

  else if (a6 != a4)
  {
    v70 = a4;
    v71 = a9;
    do
    {
      *v71++ = *v70;
      v70 += 8 * a3;
    }

    while (v70 != a6);
    while (a2 != a4 || a3 != v13)
    {
      v72 = *(v71 - 1);
      v73 = *&a4[-8 * a3];
      a6 -= 8 * a5;
      v74 = v72 < v73;
      if (v72 <= v73)
      {
        v72 = *&a4[-8 * a3];
      }

      if (v74)
      {
        a4 -= 8 * a3;
      }

      else
      {
        --v71;
      }

      *a6 = v72;
      if (v71 == a9)
      {
        return result;
      }
    }

    if (v71 != a9)
    {
      v84 = -8 * a5;
      do
      {
        v85 = *--v71;
        *&a6[v84] = v85;
        v84 -= 8 * a5;
      }

      while (v71 != a9);
    }
  }

  return result;
}

float std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<float>>(uint64_t a1, float *a2, uint64_t a3, float *a4, unsigned int a5, float *a6, uint64_t a7, float result)
{
  if (a5 >= 2)
  {
    v10 = a2;
    if (a5 == 2)
    {
      v11 = &a4[-a3];
      result = *v11;
      v12 = *a2;
      if (*v11 < *a2)
      {
        *a2 = result;
        a4[-a3] = v12;
      }
    }

    else if (a5 > 128)
    {
      v23 = a6;
      v24 = a5 >> 1;
      v25 = a5;
      v26 = a5 - (a5 >> 1);
      v27 = &a2[a1 * v24];
      if (a5 <= a7)
      {
        v30 = &v23[v24];
        v31 = 4 * a1;
        v32 = v30;
        v33 = &v23[v25];
        while (v32 != v33)
        {
          result = *v32;
          v34 = *v32 < *v23;
          if (*v32 >= *v23)
          {
            result = *v23;
          }

          v23 += *v32 >= *v23;
          v32 += v34;
          *v10 = result;
          v10 = (v10 + v31);
          if (v23 == v30)
          {
            while (v32 != v33)
            {
              v36 = *v32++;
              result = v36;
              *v10 = v36;
              v10 = (v10 + v31);
            }

            return result;
          }
        }

        while (v23 != v30)
        {
          v35 = *v23++;
          result = v35;
          *v10 = v35;
          v10 = (v10 + v31);
        }
      }

      else
      {
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
          result = *v17;
          if (*v17 < v19)
          {
            v20 = v15;
            while (1)
            {
              *(v14 + v20) = v19;
              if (!v20)
              {
                break;
              }

              v19 = *(a2 + v20 + -4 * a1);
              v20 -= v16;
              if (result >= v19)
              {
                v21 = (v14 + v20);
                goto LABEL_17;
              }
            }

            v21 = a2;
LABEL_17:
            *v21 = result;
          }

          v17 = &v18[a1];
          v15 += v16;
        }

        while (v17 != a4);
      }
    }
  }

  return result;
}

float std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<float>>(uint64_t a1, float *a2, uint64_t a3, float *a4, unsigned int a5, float *a6, float result)
{
  if (a5)
  {
    v7 = a6;
    v9 = a2;
    if (a5 == 1)
    {
LABEL_8:
      result = *v9;
      *v7 = *v9;
      return result;
    }

    if (a5 == 2)
    {
      v12 = &a4[-a3];
      v13 = *v12;
      v14 = *v12 < *a2;
      if (*v12 >= *a2)
      {
        v13 = *a2;
      }

      *a6 = v13;
      v7 = a6 + 1;
      if (!v14)
      {
        v9 = &a4[-a3];
      }

      goto LABEL_8;
    }

    if (a5 > 8)
    {
      v24 = a5 >> 1;
      v25 = &a2[a1 * v24];
      if (4 * a1 * v24)
      {
        v26 = &v9[a1 * v24];
        while (v26 != a4 || a1 != a3)
        {
          result = *v26;
          v27 = *v26 < *v9;
          if (*v26 < *v9)
          {
            v28 = a1;
          }

          else
          {
            result = *v9;
            v28 = 0;
          }

          v26 += v28;
          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = a1;
          }

          v9 += v29;
          *v7++ = result;
          if (v9 == v25)
          {
            goto LABEL_36;
          }
        }

        for (; v9 != v25; v9 += a1)
        {
          result = *v9;
          *v7++ = *v9;
        }
      }

      else
      {
        v26 = &v9[a1 * v24];
LABEL_36:
        while (v26 != a4)
        {
          result = *v26;
          *v7++ = *v26;
          v26 += a1;
        }
      }
    }

    else if (a2 != a4)
    {
      result = *a2;
      *a6 = *a2;
      v16 = &a2[a1];
      if (v16 != a4)
      {
        v17 = 0;
        v18 = a6;
        v19 = a6;
        do
        {
          v20 = *v19++;
          result = v20;
          if (*v16 >= v20)
          {
            *v19 = *v16;
          }

          else
          {
            v18[1] = result;
            v21 = a6;
            if (v18 != a6)
            {
              v22 = v17;
              while (1)
              {
                v21 = (a6 + v22);
                v23 = *(a6 + v22 - 4);
                if (*v16 >= v23)
                {
                  break;
                }

                *v21 = v23;
                v22 -= 4;
                if (!v22)
                {
                  v21 = a6;
                  break;
                }
              }
            }

            result = *v16;
            *v21 = *v16;
          }

          v16 += a1;
          v17 += 4;
          v18 = v19;
        }

        while (v16 != a4);
      }
    }
  }

  return result;
}

float std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<float>>(uint64_t a1, float *a2, uint64_t a3, float *a4, uint64_t a5, float *a6, int a7, int a8, float result, float *a10, uint64_t a11)
{
  if (!a8)
  {
    return result;
  }

  while (a8 > a11 && a7 > a11)
  {
    if (!a7)
    {
      return result;
    }

    v17 = 0;
    result = *a4;
    v18 = -a7;
    v19 = 4 * a1;
    while (1)
    {
      v20 = *(a2 + v17);
      if (result < v20)
      {
        break;
      }

      v17 += v19;
      if (__CFADD__(v18++, 1))
      {
        return result;
      }
    }

    v22 = (a2 + v17);
    if (-v18 >= a8)
    {
      if (v18 == -1)
      {
        *(a2 + v17) = result;
        *a4 = v20;
        return result;
      }

      v30 = (v18 > 0) - v18;
      v25 = (&a2[a1 * (v30 >> 1)] + v17);
      v31 = (a6 - a4) / a5;
      if (v31)
      {
        v23 = a4;
        do
        {
          v32 = v31 >> 1;
          v33 = &v23[a3 * v32];
          v34 = *v33;
          v35 = &v33[a3];
          LODWORD(v31) = v31 + ~(v31 >> 1);
          if (v34 < *v25)
          {
            v23 = v35;
          }

          else
          {
            LODWORD(v31) = v32;
          }
        }

        while (v31);
      }

      else
      {
        v23 = a4;
      }

      v37 = (v30 >> 1);
      v36 = (v23 - a4) / a3;
    }

    else
    {
      v23 = &a4[a3 * ((a8 + (a8 >> 31)) >> 1)];
      v24 = ((a4 - a2 - v17) >> 2) / a3;
      if (v24)
      {
        v25 = (a2 + v17);
        do
        {
          v26 = v24 >> 1;
          v27 = (v25 + v19 * v26);
          v28 = *v27;
          v29 = &v27[a1];
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
        v25 = (a2 + v17);
      }

      v36 = (a8 / 2);
      v37 = ((v25 - a2 - v17) >> 2) / a1;
    }

    if (v25 != a4 || (v38 = v23, v39 = a1, a1 != a3))
    {
      v38 = v25;
      v39 = a1;
      if (a4 != v23)
      {
        if (&v25[a1] == a4 && a1 == a3)
        {
          v40 = 0;
          v41 = *v25;
          do
          {
            *(v25 + v40) = *(a4 + v40);
            v40 += v19;
          }

          while ((a4 + v40) != v23);
          a4 = (v25 + v40);
          *(v25 + v40) = v41;
          v39 = a1;
        }

        else
        {
          v42 = 4 * a3;
          if (&a4[a3] == v23)
          {
            v43 = &v23[v42 / 0xFFFFFFFFFFFFFFFCLL];
            v44 = v23[-a3];
            if (&v23[v42 / 0xFFFFFFFFFFFFFFFCLL] == v25)
            {
              a4 = v23;
            }

            else
            {
              v62 = v23;
              a4 = v23;
              do
              {
                v43 -= a3;
                v62 -= a3;
                *v62 = *v43;
                a4 = (a4 - v42);
              }

              while (v43 != v25);
            }

            *v25 = v44;
          }

          else
          {
            v45 = (v23 - a4) / a3;
            v46 = v45;
            v47 = (a4 - v25) / a3;
            v48 = v47;
            if (v47 != v45)
            {
              do
              {
                v53 = v48;
                v48 = v46;
                v46 = v53 % v46;
              }

              while (v46);
              v54 = v37;
              if (a1)
              {
                v55 = &v25[a1 * v48];
                v56 = v47 * a1;
                do
                {
                  v55 -= a1;
                  v57 = *v55;
                  v58 = &v55[v56];
                  v59 = v55;
                  do
                  {
                    v60 = v58;
                    *v59 = *v58;
                    v61 = (v23 - v58) / a3;
                    if (v47 >= v61)
                    {
                      v58 = &v25[(v47 - v61) * a1];
                    }

                    else
                    {
                      v58 = &v60[v56];
                    }

                    v59 = v60;
                  }

                  while (v58 != v55);
                  *v60 = v57;
                }

                while (v55 != v25);
              }

              a4 = &v25[v45 * a1];
              v39 = a1;
              v37 = v54;
              goto LABEL_66;
            }

            if (v25 != a4)
            {
              v49 = a4;
              v50 = v25;
              do
              {
                v51 = *v50;
                *v50 = *v49;
                *v49 = v51;
                v50 = (v50 + v19);
                v49 = (v49 + v42);
              }

              while (v50 != a4 && v49 != v23);
            }
          }

          v39 = a3;
        }

LABEL_66:
        v38 = a4;
      }
    }

    a7 = -(v37 + v18);
    v63 = a8 - v36;
    v85 = a11;
    if (v37 + v36 >= a8 - (v37 + v36) - v18)
    {
      v84 = v38;
      v64 = a10;
      v63 = v36;
      a7 = v37;
      a3 = a1;
      v23 = v25;
      v38 = v22;
      a5 = v39;
      a6 = v84;
    }

    else
    {
      v83 = a10;
      v64 = a10;
      v65 = a1;
      v66 = a1;
      v67 = v25;
      v68 = a5;
      v69 = a6;
      a5 = v68;
      a6 = v69;
      a1 = v39;
    }

    a8 = v63;
    a2 = v38;
    a4 = v23;
    a10 = v64;
    a11 = v85;
    if (!v63)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v73 = 4 * a1;
      v74 = a2;
      v75 = a10;
      do
      {
        *v75++ = *v74;
        v74 = (v74 + v73);
      }

      while (v74 != a4);
      v76 = v75 - 1;
      while (a4 != a6 || a3 != a5)
      {
        result = *a4;
        v77 = *a4 < *a10;
        if (*a4 >= *a10)
        {
          result = *a10;
        }

        a10 += *a4 >= *a10;
        if (v77)
        {
          v78 = a3;
        }

        else
        {
          v78 = 0;
        }

        a4 += v78;
        *a2 = result;
        a2 = (a2 + v73);
        if (v75 == a10)
        {
          return result;
        }
      }

      v79 = a10 - 1;
      do
      {
        v80 = v79[1];
        ++v79;
        result = v80;
        *a2 = v80;
        a2 = (a2 + v73);
      }

      while (v76 != v79);
    }
  }

  else if (a6 != a4)
  {
    v70 = a4;
    v71 = a10;
    do
    {
      result = *v70;
      *v71++ = *v70;
      v70 += a3;
    }

    while (v70 != a6);
    while (a2 != a4 || a3 != a1)
    {
      v72 = &a4[-a3];
      result = *(v71 - 1);
      a6 -= a5;
      if (result >= *v72)
      {
        --v71;
      }

      else
      {
        result = *v72;
        a4 -= a3;
      }

      *a6 = result;
      if (v71 == a10)
      {
        return result;
      }
    }

    if (v71 != a10)
    {
      v81 = -1 * a5;
      do
      {
        v82 = *--v71;
        result = v82;
        a6[v81] = v82;
        v81 -= a5;
      }

      while (v71 != a10);
    }
  }

  return result;
}

double std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<double>>(uint64_t a1, double *a2, uint64_t a3, double *a4, unsigned int a5, double *a6, uint64_t a7, double result)
{
  if (a5 >= 2)
  {
    v10 = a2;
    if (a5 == 2)
    {
      v11 = &a4[-a3];
      result = *v11;
      v12 = *a2;
      if (*v11 < *a2)
      {
        *a2 = result;
        a4[-a3] = v12;
      }
    }

    else if (a5 > 128)
    {
      v23 = a6;
      v24 = a5 >> 1;
      v25 = a5;
      v26 = a5 - (a5 >> 1);
      v27 = &a2[a1 * v24];
      if (a5 <= a7)
      {
        v30 = &v23[v24];
        v31 = 8 * a1;
        v32 = v30;
        v33 = &v23[v25];
        while (v32 != v33)
        {
          result = *v32;
          v34 = *v32 < *v23;
          if (*v32 >= *v23)
          {
            result = *v23;
          }

          v23 += *v32 >= *v23;
          v32 += v34;
          *v10 = result;
          v10 = (v10 + v31);
          if (v23 == v30)
          {
            while (v32 != v33)
            {
              v36 = *v32++;
              result = v36;
              *v10 = v36;
              v10 = (v10 + v31);
            }

            return result;
          }
        }

        while (v23 != v30)
        {
          v35 = *v23++;
          result = v35;
          *v10 = v35;
          v10 = (v10 + v31);
        }
      }

      else
      {
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
          result = *v17;
          if (*v17 < v19)
          {
            v20 = v15;
            while (1)
            {
              *(v14 + v20) = v19;
              if (!v20)
              {
                break;
              }

              v19 = *(a2 + v20 + -8 * a1);
              v20 -= v16;
              if (result >= v19)
              {
                v21 = (v14 + v20);
                goto LABEL_17;
              }
            }

            v21 = a2;
LABEL_17:
            *v21 = result;
          }

          v17 = &v18[a1];
          v15 += v16;
        }

        while (v17 != a4);
      }
    }
  }

  return result;
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<double>>(uint64_t a1, double *a2, uint64_t a3, double *a4, unsigned int a5, double *a6, double result)
{
  if (a5)
  {
    v7 = a6;
    v9 = a2;
    if (a5 == 1)
    {
LABEL_8:
      result = *v9;
      *v7 = *v9;
      return result;
    }

    if (a5 == 2)
    {
      v12 = &a4[-a3];
      v13 = *v12;
      v14 = *v12 < *a2;
      if (*v12 >= *a2)
      {
        v13 = *a2;
      }

      *a6 = v13;
      v7 = a6 + 1;
      if (!v14)
      {
        v9 = &a4[-a3];
      }

      goto LABEL_8;
    }

    if (a5 > 8)
    {
      v24 = a5 >> 1;
      v25 = &a2[a1 * v24];
      if (8 * a1 * v24)
      {
        v26 = &v9[a1 * v24];
        while (v26 != a4 || a1 != a3)
        {
          result = *v26;
          v27 = *v26 < *v9;
          if (*v26 < *v9)
          {
            v28 = a1;
          }

          else
          {
            result = *v9;
            v28 = 0;
          }

          v26 += v28;
          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = a1;
          }

          v9 += v29;
          *v7++ = result;
          if (v9 == v25)
          {
            goto LABEL_36;
          }
        }

        for (; v9 != v25; v9 += a1)
        {
          result = *v9;
          *v7++ = *v9;
        }
      }

      else
      {
        v26 = &v9[a1 * v24];
LABEL_36:
        while (v26 != a4)
        {
          result = *v26;
          *v7++ = *v26;
          v26 += a1;
        }
      }
    }

    else if (a2 != a4)
    {
      result = *a2;
      *a6 = *a2;
      v16 = &a2[a1];
      if (v16 != a4)
      {
        v17 = 0;
        v18 = a6;
        v19 = a6;
        do
        {
          v20 = *v19++;
          result = v20;
          if (*v16 >= v20)
          {
            *v19 = *v16;
          }

          else
          {
            v18[1] = result;
            v21 = a6;
            if (v18 != a6)
            {
              v22 = v17;
              while (1)
              {
                v21 = (a6 + v22);
                v23 = *(a6 + v22 - 8);
                if (*v16 >= v23)
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

            result = *v16;
            *v21 = *v16;
          }

          v16 += a1;
          v17 += 8;
          v18 = v19;
        }

        while (v16 != a4);
      }
    }
  }

  return result;
}

double std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<double>>(uint64_t a1, double *a2, uint64_t a3, double *a4, uint64_t a5, double *a6, int a7, int a8, double result, double *a10, uint64_t a11)
{
  if (!a8)
  {
    return result;
  }

  while (a8 > a11 && a7 > a11)
  {
    if (!a7)
    {
      return result;
    }

    v17 = 0;
    result = *a4;
    v18 = -a7;
    v19 = 8 * a1;
    while (1)
    {
      v20 = *(a2 + v17);
      if (result < v20)
      {
        break;
      }

      v17 += v19;
      if (__CFADD__(v18++, 1))
      {
        return result;
      }
    }

    v22 = (a2 + v17);
    if (-v18 >= a8)
    {
      if (v18 == -1)
      {
        *(a2 + v17) = result;
        *a4 = v20;
        return result;
      }

      v30 = (v18 > 0) - v18;
      v25 = (&a2[a1 * (v30 >> 1)] + v17);
      v31 = (a6 - a4) / a5;
      if (v31)
      {
        v23 = a4;
        do
        {
          v32 = v31 >> 1;
          v33 = &v23[a3 * v32];
          v34 = *v33;
          v35 = &v33[a3];
          LODWORD(v31) = v31 + ~(v31 >> 1);
          if (v34 < *v25)
          {
            v23 = v35;
          }

          else
          {
            LODWORD(v31) = v32;
          }
        }

        while (v31);
      }

      else
      {
        v23 = a4;
      }

      v37 = (v30 >> 1);
      v36 = (v23 - a4) / a3;
    }

    else
    {
      v23 = &a4[a3 * ((a8 + (a8 >> 31)) >> 1)];
      v24 = ((a4 - a2 - v17) >> 3) / a3;
      if (v24)
      {
        v25 = (a2 + v17);
        do
        {
          v26 = v24 >> 1;
          v27 = (v25 + v19 * v26);
          v28 = *v27;
          v29 = &v27[a1];
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
        v25 = (a2 + v17);
      }

      v36 = (a8 / 2);
      v37 = ((v25 - a2 - v17) >> 3) / a1;
    }

    if (v25 != a4 || (v38 = v23, v39 = a1, a1 != a3))
    {
      v38 = v25;
      v39 = a1;
      if (a4 != v23)
      {
        if (&v25[a1] == a4 && a1 == a3)
        {
          v40 = 0;
          v41 = *v25;
          do
          {
            *(v25 + v40) = *(a4 + v40);
            v40 += v19;
          }

          while ((a4 + v40) != v23);
          a4 = (v25 + v40);
          *(v25 + v40) = v41;
          v39 = a1;
        }

        else
        {
          v42 = 8 * a3;
          if (&a4[a3] == v23)
          {
            v43 = &v23[v42 / 0xFFFFFFFFFFFFFFF8];
            v44 = v23[-a3];
            if (&v23[v42 / 0xFFFFFFFFFFFFFFF8] == v25)
            {
              a4 = v23;
            }

            else
            {
              v62 = v23;
              a4 = v23;
              do
              {
                v43 -= a3;
                v62 -= a3;
                *v62 = *v43;
                a4 = (a4 - v42);
              }

              while (v43 != v25);
            }

            *v25 = v44;
          }

          else
          {
            v45 = (v23 - a4) / a3;
            v46 = v45;
            v47 = (a4 - v25) / a3;
            v48 = v47;
            if (v47 != v45)
            {
              do
              {
                v53 = v48;
                v48 = v46;
                v46 = v53 % v46;
              }

              while (v46);
              v54 = v37;
              if (a1)
              {
                v55 = &v25[a1 * v48];
                v56 = v47 * a1;
                do
                {
                  v55 -= a1;
                  v57 = *v55;
                  v58 = &v55[v56];
                  v59 = v55;
                  do
                  {
                    v60 = v58;
                    *v59 = *v58;
                    v61 = (v23 - v58) / a3;
                    if (v47 >= v61)
                    {
                      v58 = &v25[(v47 - v61) * a1];
                    }

                    else
                    {
                      v58 = &v60[v56];
                    }

                    v59 = v60;
                  }

                  while (v58 != v55);
                  *v60 = v57;
                }

                while (v55 != v25);
              }

              a4 = &v25[v45 * a1];
              v39 = a1;
              v37 = v54;
              goto LABEL_66;
            }

            if (v25 != a4)
            {
              v49 = a4;
              v50 = v25;
              do
              {
                v51 = *v50;
                *v50 = *v49;
                *v49 = v51;
                v50 = (v50 + v19);
                v49 = (v49 + v42);
              }

              while (v50 != a4 && v49 != v23);
            }
          }

          v39 = a3;
        }

LABEL_66:
        v38 = a4;
      }
    }

    a7 = -(v37 + v18);
    v63 = a8 - v36;
    v85 = a11;
    if (v37 + v36 >= a8 - (v37 + v36) - v18)
    {
      v84 = v38;
      v64 = a10;
      v63 = v36;
      a7 = v37;
      a3 = a1;
      v23 = v25;
      v38 = v22;
      a5 = v39;
      a6 = v84;
    }

    else
    {
      v83 = a10;
      v64 = a10;
      v65 = a1;
      v66 = a1;
      v67 = v25;
      v68 = a5;
      v69 = a6;
      a5 = v68;
      a6 = v69;
      a1 = v39;
    }

    a8 = v63;
    a2 = v38;
    a4 = v23;
    a10 = v64;
    a11 = v85;
    if (!v63)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v73 = 8 * a1;
      v74 = a2;
      v75 = a10;
      do
      {
        *v75++ = *v74;
        v74 = (v74 + v73);
      }

      while (v74 != a4);
      v76 = v75 - 1;
      while (a4 != a6 || a3 != a5)
      {
        result = *a4;
        v77 = *a4 < *a10;
        if (*a4 >= *a10)
        {
          result = *a10;
        }

        a10 += *a4 >= *a10;
        if (v77)
        {
          v78 = a3;
        }

        else
        {
          v78 = 0;
        }

        a4 += v78;
        *a2 = result;
        a2 = (a2 + v73);
        if (v75 == a10)
        {
          return result;
        }
      }

      v79 = a10 - 1;
      do
      {
        v80 = v79[1];
        ++v79;
        result = v80;
        *a2 = v80;
        a2 = (a2 + v73);
      }

      while (v76 != v79);
    }
  }

  else if (a6 != a4)
  {
    v70 = a4;
    v71 = a10;
    do
    {
      result = *v70;
      *v71++ = *v70;
      v70 += a3;
    }

    while (v70 != a6);
    while (a2 != a4 || a3 != a1)
    {
      v72 = &a4[-a3];
      result = *(v71 - 1);
      a6 -= a5;
      if (result >= *v72)
      {
        --v71;
      }

      else
      {
        result = *v72;
        a4 -= a3;
      }

      *a6 = result;
      if (v71 == a10)
      {
        return result;
      }
    }

    if (v71 != a10)
    {
      v81 = -1 * a5;
      do
      {
        v82 = *--v71;
        result = v82;
        a6[v81] = v82;
        v81 -= a5;
      }

      while (v71 != a10);
    }
  }

  return result;
}

unsigned __int16 std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<half>>@<H0>(uint64_t a1@<X0>, short float *a2@<X1>, uint64_t a3@<X2>, unsigned __int16 *a4@<X3>, unsigned int a5@<W4>, unsigned __int16 *a6@<X5>, uint64_t a7@<X6>, __n128 a8@<Q0>)
{
  if (a5 >= 2)
  {
    v10 = a2;
    if (a5 == 2)
    {
      v11 = &a4[-a3];
      a8.n128_u16[0] = *v11;
      v12 = *a2;
      if (*v11 < *a2)
      {
        *a2 = *a8.n128_u16;
        *&a4[-a3] = v12;
      }
    }

    else if (a5 > 128)
    {
      v23 = a6;
      v24 = a5 >> 1;
      v25 = a5;
      v26 = a5 - (a5 >> 1);
      v27 = &a2[a1 * v24];
      if (a5 <= a7)
      {
        v30 = &v23[v24];
        v31 = 2 * a1;
        v32 = v30;
        v33 = &v23[v25];
        while (v32 != v33)
        {
          a8.n128_u16[0] = *v32;
          v34 = *v32 < *v23;
          if (*v32 >= *v23)
          {
            a8.n128_u16[0] = *v23;
          }

          v23 += *v32 >= *v23;
          v32 += v34;
          *v10 = a8.n128_u16[0];
          v10 += v31;
          if (v23 == v30)
          {
            while (v32 != v33)
            {
              v36 = *v32++;
              a8.n128_u16[0] = v36;
              *v10 = v36;
              v10 += v31;
            }

            return a8.n128_u16[0];
          }
        }

        while (v23 != v30)
        {
          v35 = *v23++;
          *a8.n128_u16 = v35;
          *v10 = v35;
          v10 += v31;
        }
      }

      else
      {
      }
    }

    else if (a2 != a4 || a1 != a3)
    {
      v14 = &a2[a1];
      if (v14 != a4)
      {
        v15 = 0;
        v16 = 2 * a1;
        v17 = &a2[a1];
        v18 = a2;
        do
        {
          v19 = *v18;
          v18 = v17;
          a8.n128_u16[0] = *v17;
          if (*v17 < v19)
          {
            v20 = v15;
            while (1)
            {
              *(v14 + v20) = v19;
              if (!v20)
              {
                break;
              }

              v19 = *(a2 + v20 + -2 * a1);
              v20 -= v16;
              if (*a8.n128_u16 >= v19)
              {
                v21 = (v14 + v20);
                goto LABEL_17;
              }
            }

            v21 = a2;
LABEL_17:
            *v21 = *a8.n128_u16;
          }

          v17 = &v18[a1];
          v15 += v16;
        }

        while (v17 != a4);
      }
    }
  }

  return a8.n128_u16[0];
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<half>>(uint64_t a1, short float *a2, uint64_t a3, unsigned __int16 *a4, unsigned int a5, unsigned __int16 *a6, __n128 result)
{
  if (a5)
  {
    v7 = a6;
    v9 = a2;
    if (a5 == 1)
    {
LABEL_8:
      result.n128_u16[0] = *v9;
      *v7 = *v9;
      return result;
    }

    if (a5 == 2)
    {
      v12 = &a4[-a3];
      v13 = *v12;
      v14 = *v12 < *a2;
      if (*v12 >= *a2)
      {
        v13 = *a2;
      }

      *a6 = v13;
      v7 = a6 + 1;
      if (!v14)
      {
        v9 = &a4[-a3];
      }

      goto LABEL_8;
    }

    if (a5 > 8)
    {
      v24 = a5 >> 1;
      v25 = &a2[a1 * v24];
      if (2 * a1 * v24)
      {
        v26 = &v9[a1 * v24];
        while (v26 != a4 || a1 != a3)
        {
          result.n128_u16[0] = *v26;
          v27 = *v26 < *v9;
          if (*v26 < *v9)
          {
            v28 = a1;
          }

          else
          {
            result.n128_u16[0] = *v9;
            v28 = 0;
          }

          v26 += v28;
          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = a1;
          }

          v9 += v29;
          *v7++ = result.n128_u16[0];
          if (v9 == v25)
          {
            goto LABEL_36;
          }
        }

        for (; v9 != v25; v9 += a1)
        {
          result.n128_u16[0] = *v9;
          *v7++ = *v9;
        }
      }

      else
      {
        v26 = &v9[a1 * v24];
LABEL_36:
        while (v26 != a4)
        {
          result.n128_u16[0] = *v26;
          *v7++ = *v26;
          v26 += a1;
        }
      }
    }

    else if (a2 != a4)
    {
      result.n128_u16[0] = *a2;
      *a6 = *a2;
      v16 = &a2[a1];
      if (v16 != a4)
      {
        v17 = 0;
        v18 = a6;
        v19 = a6;
        do
        {
          v20 = *v19++;
          *result.n128_u16 = v20;
          if (*v16 >= v20)
          {
            *v19 = *v16;
          }

          else
          {
            v18[1] = *result.n128_u16;
            v21 = a6;
            if (v18 != a6)
            {
              v22 = v17;
              while (1)
              {
                v21 = (a6 + v22);
                v23 = *(a6 + v22 - 2);
                if (*v16 >= v23)
                {
                  break;
                }

                *v21 = v23;
                v22 -= 2;
                if (!v22)
                {
                  v21 = a6;
                  break;
                }
              }
            }

            result.n128_u16[0] = *v16;
            *v21 = *v16;
          }

          v16 += a1;
          v17 += 2;
          v18 = v19;
        }

        while (v16 != a4);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<half>>(uint64_t a1, char *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, unsigned __int16 *a6, int a7, int a8, __n128 result, short float *a10, uint64_t a11)
{
  if (!a8)
  {
    return result;
  }

  while (a8 > a11 && a7 > a11)
  {
    if (!a7)
    {
      return result;
    }

    v17 = 0;
    result.n128_u16[0] = *a4;
    v18 = -a7;
    v19 = 2 * a1;
    while (1)
    {
      v20 = *&a2[v17];
      if (*result.n128_u16 < v20)
      {
        break;
      }

      v17 += v19;
      if (__CFADD__(v18++, 1))
      {
        return result;
      }
    }

    v22 = &a2[v17];
    if (-v18 >= a8)
    {
      if (v18 == -1)
      {
        *&a2[v17] = result.n128_u16[0];
        *a4 = v20;
        return result;
      }

      v30 = (v18 > 0) - v18;
      v25 = &a2[2 * a1 * (v30 >> 1) + v17];
      v31 = (a6 - a4) / a5;
      if (v31)
      {
        v23 = a4;
        do
        {
          v32 = v31 >> 1;
          v33 = &v23[a3 * v32];
          v34 = *v33;
          v35 = &v33[a3];
          LODWORD(v31) = v31 + ~(v31 >> 1);
          if (v34 < *v25)
          {
            v23 = v35;
          }

          else
          {
            LODWORD(v31) = v32;
          }
        }

        while (v31);
      }

      else
      {
        v23 = a4;
      }

      v37 = (v30 >> 1);
      v36 = ((v23 - a4) >> 1) / a3;
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
          v27 = (v25 + a1 * (v24 & 0xFFFFFFFE));
          v28 = *v27;
          v29 = &v27[a1];
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

      v36 = (a8 / 2);
      v37 = ((v25 - a2 - v17) >> 1) / a1;
    }

    if (v25 != a4 || (v38 = v23, v39 = a1, a1 != a3))
    {
      v38 = v25;
      v39 = a1;
      if (a4 != v23)
      {
        if (&v25[a1] == a4 && a1 == a3)
        {
          v40 = 0;
          v41 = *v25;
          do
          {
            *(v25 + v40) = *(a4 + v40);
            v40 += v19;
          }

          while ((a4 + v40) != v23);
          a4 = (v25 + v40);
          *(v25 + v40) = v41;
          v39 = a1;
        }

        else
        {
          v42 = 2 * a3;
          if (&a4[a3] == v23)
          {
            v43 = &v23[v42 / 0xFFFFFFFFFFFFFFFELL];
            v44 = v23[-a3];
            if (&v23[v42 / 0xFFFFFFFFFFFFFFFELL] == v25)
            {
              a4 = v23;
            }

            else
            {
              v62 = v23;
              a4 = v23;
              do
              {
                v43 -= a3;
                v62 -= a3;
                *v62 = *v43;
                a4 = (a4 - v42);
              }

              while (v43 != v25);
            }

            *v25 = v44;
          }

          else
          {
            v45 = ((v23 - a4) >> 1) / a3;
            v46 = v45;
            v47 = ((a4 - v25) >> 1) / a3;
            v48 = v47;
            if (v47 != v45)
            {
              do
              {
                v53 = v48;
                v48 = v46;
                v46 = v53 % v46;
              }

              while (v46);
              v54 = v37;
              if (a1)
              {
                v55 = &v25[a1 * v48];
                v56 = v47 * a1;
                do
                {
                  v55 -= a1;
                  v57 = *v55;
                  v58 = &v55[v56];
                  v59 = v55;
                  do
                  {
                    v60 = v58;
                    *v59 = *v58;
                    v61 = (v23 - v58) / a3;
                    if (v47 >= v61)
                    {
                      v58 = &v25[(v47 - v61) * a1];
                    }

                    else
                    {
                      v58 = &v60[v56];
                    }

                    v59 = v60;
                  }

                  while (v58 != v55);
                  *v60 = v57;
                }

                while (v55 != v25);
              }

              a4 = &v25[v45 * a1];
              v39 = a1;
              v37 = v54;
              goto LABEL_66;
            }

            if (v25 != a4)
            {
              v49 = a4;
              v50 = v25;
              do
              {
                v51 = *v50;
                *v50 = *v49;
                *v49 = v51;
                v50 = (v50 + v19);
                v49 = (v49 + v42);
              }

              while (v50 != a4 && v49 != v23);
            }
          }

          v39 = a3;
        }

LABEL_66:
        v38 = a4;
      }
    }

    a7 = -(v37 + v18);
    v63 = a8 - v36;
    v85 = a11;
    if (v37 + v36 >= a8 - (v37 + v36) - v18)
    {
      v84 = v38;
      v64 = a10;
      v63 = v36;
      a7 = v37;
      a3 = a1;
      v23 = v25;
      v38 = v22;
      a5 = v39;
      a6 = v84;
    }

    else
    {
      v83 = a10;
      v64 = a10;
      v65 = a1;
      v66 = a1;
      v67 = v25;
      v68 = a5;
      v69 = a6;
      a5 = v68;
      a6 = v69;
      a1 = v39;
    }

    a8 = v63;
    a2 = v38;
    a4 = v23;
    a10 = v64;
    a11 = v85;
    if (!v63)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v73 = 2 * a1;
      v74 = a2;
      v75 = a10;
      do
      {
        *v75++ = *v74;
        v74 = (v74 + v73);
      }

      while (v74 != a4);
      v76 = v75 - 1;
      while (a4 != a6 || a3 != a5)
      {
        result.n128_u16[0] = *a4;
        v77 = *a4 < *a10;
        if (*a4 >= *a10)
        {
          result.n128_u16[0] = *a10;
        }

        a10 += *a4 >= *a10;
        if (v77)
        {
          v78 = a3;
        }

        else
        {
          v78 = 0;
        }

        a4 += v78;
        *a2 = result.n128_u16[0];
        a2 += v73;
        if (v75 == a10)
        {
          return result;
        }
      }

      v79 = a10 - 1;
      do
      {
        v80 = *(v79++ + 1);
        result.n128_u16[0] = v80;
        *a2 = v80;
        a2 += v73;
      }

      while (v76 != v79);
    }
  }

  else if (a6 != a4)
  {
    v70 = a4;
    v71 = a10;
    do
    {
      result.n128_u16[0] = *v70;
      *v71++ = *v70;
      v70 += a3;
    }

    while (v70 != a6);
    while (a2 != a4 || a3 != a1)
    {
      v72 = &a4[-a3];
      result.n128_u16[0] = *(v71 - 1);
      a6 -= a5;
      if (*result.n128_u16 >= *v72)
      {
        --v71;
      }

      else
      {
        result.n128_u16[0] = *v72;
        a4 -= a3;
      }

      *a6 = result.n128_u16[0];
      if (v71 == a10)
      {
        return result;
      }
    }

    if (v71 != a10)
    {
      v81 = -1 * a5;
      do
      {
        v82 = *--v71;
        result.n128_u16[0] = v82;
        a6[v81] = v82;
        v81 -= a5;
      }

      while (v71 != a10);
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<mlx::core::_MLX_BFloat16>>(uint64_t result, char *a2, uint64_t a3, unsigned __int16 *a4, unsigned int a5, unsigned __int16 *a6, uint64_t a7)
{
  if (a5 >= 2)
  {
    v9 = a2;
    if (a5 == 2)
    {
      v10 = a4[-a3];
      v11 = *a2;
      if (COERCE_FLOAT(v10 << 16) < COERCE_FLOAT(v11 << 16))
      {
        *a2 = v10;
        a4[-a3] = v11;
      }
    }

    else
    {
      v12 = result;
      if (a5 > 128)
      {
        v23 = a6;
        v24 = a5 >> 1;
        v25 = a5;
        v26 = a5 - (a5 >> 1);
        v27 = &a2[2 * result * v24];
        if (a5 <= a7)
        {
          v28 = &v23[v24];
          v29 = 2 * v12;
          v30 = v28;
          v31 = &v23[v25];
          while (v30 != v31)
          {
            v32 = *v30;
            v33 = *v23;
            v34 = COERCE_FLOAT(v32 << 16) >= COERCE_FLOAT(v33 << 16);
            v35 = COERCE_FLOAT(v32 << 16) < COERCE_FLOAT(v33 << 16);
            if (COERCE_FLOAT(v32 << 16) >= COERCE_FLOAT(v33 << 16))
            {
              LOWORD(v32) = *v23;
            }

            v23 += v34;
            v30 += v35;
            *v9 = v32;
            v9 += v29;
            if (v23 == v28)
            {
              while (v30 != v31)
              {
                v37 = *v30++;
                *v9 = v37;
                v9 += v29;
              }

              return result;
            }
          }

          while (v23 != v28)
          {
            v36 = *v23++;
            *v9 = v36;
            v9 += v29;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v13 = &a2[2 * result];
        if (v13 != a4)
        {
          v14 = 0;
          v15 = 2 * result;
          v16 = &a2[2 * result];
          v17 = a2;
          do
          {
            v18 = *v17;
            v17 = v16;
            v19 = *v16;
            if (COERCE_FLOAT(v19 << 16) < COERCE_FLOAT(v18 << 16))
            {
              v20 = v14;
              while (1)
              {
                *(v13 + v20) = v18;
                if (!v20)
                {
                  break;
                }

                v18 = *&a2[v20 + -2 * result];
                v20 -= v15;
                if (COERCE_FLOAT(v19 << 16) >= COERCE_FLOAT(v18 << 16))
                {
                  v21 = v13 + v20;
                  goto LABEL_17;
                }
              }

              v21 = a2;
LABEL_17:
              *v21 = v19;
            }

            v16 = &v17[result];
            v14 += v15;
          }

          while (v16 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<mlx::core::_MLX_BFloat16>>(uint64_t result, _WORD *a2, uint64_t a3, _WORD *a4, unsigned int a5, _WORD *a6)
{
  if (a5)
  {
    v6 = a6;
    v8 = a2;
    if (a5 == 1)
    {
LABEL_8:
      *v6 = *v8;
      return result;
    }

    if (a5 == 2)
    {
      v11 = a4[-a3];
      v12 = *a2;
      v13 = COERCE_FLOAT(v11 << 16) < COERCE_FLOAT(v12 << 16);
      if (COERCE_FLOAT(v11 << 16) >= COERCE_FLOAT(v12 << 16))
      {
        LOWORD(v11) = *a2;
      }

      *a6 = v11;
      v6 = a6 + 1;
      if (!v13)
      {
        v8 = &a4[-a3];
      }

      goto LABEL_8;
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
          v30 = COERCE_FLOAT(v28 << 16) < COERCE_FLOAT(v29 << 16);
          if (COERCE_FLOAT(v28 << 16) < COERCE_FLOAT(v29 << 16))
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
            v32 = 0;
          }

          else
          {
            v32 = v14;
          }

          v8 += v32;
          *v6++ = v28;
          if (v8 == v26)
          {
            goto LABEL_36;
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
LABEL_36:
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
          if (COERCE_FLOAT(v21 << 16) >= COERCE_FLOAT(v20 << 16))
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
                if (COERCE_FLOAT(*v15 << 16) >= COERCE_FLOAT(v24 << 16))
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

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<mlx::core::_MLX_BFloat16>>(uint64_t result, char *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, unsigned __int16 *a6, int a7, int a8, unsigned __int16 *a9, uint64_t a10)
{
  if (!a8)
  {
    return result;
  }

  v13 = result;
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
      if (COERCE_FLOAT(v18 << 16) < COERCE_FLOAT(v21 << 16))
      {
        break;
      }

      v17 += v20;
      if (__CFADD__(v19++, 1))
      {
        return result;
      }
    }

    v23 = &a2[v17];
    if (-v19 >= a8)
    {
      if (v19 == -1)
      {
        *&a2[v17] = v18;
        *a4 = v21;
        return result;
      }

      v31 = (v19 > 0) - v19;
      v26 = &a2[2 * v13 * (v31 >> 1) + v17];
      v32 = (a6 - a4) / a5;
      if (v32)
      {
        v24 = a4;
        do
        {
          v33 = v32 >> 1;
          v34 = &v24[a3 * v33];
          LODWORD(v35) = *v34 << 16;
          v36 = &v34[a3];
          LODWORD(v32) = v32 + ~(v32 >> 1);
          if (v35 < COERCE_FLOAT(*v26 << 16))
          {
            v24 = v36;
          }

          else
          {
            LODWORD(v32) = v33;
          }
        }

        while (v32);
      }

      else
      {
        v24 = a4;
      }

      v38 = (v31 >> 1);
      v37 = (v24 - a4) / a3;
    }

    else
    {
      v24 = &a4[a3 * ((a8 + (a8 >> 31)) >> 1)];
      v25 = ((a4 - a2 - v17) >> 1) / a3;
      if (v25)
      {
        v26 = &a2[v17];
        do
        {
          v27 = v25 >> 1;
          v28 = (v26 + v13 * (v25 & 0xFFFFFFFE));
          LODWORD(v29) = *v28 << 16;
          v30 = &v28[v13];
          LODWORD(v25) = v25 + ~(v25 >> 1);
          if (COERCE_FLOAT(*v24 << 16) < v29)
          {
            LODWORD(v25) = v27;
          }

          else
          {
            v26 = v30;
          }
        }

        while (v25);
      }

      else
      {
        v26 = &a2[v17];
      }

      v37 = (a8 / 2);
      v38 = ((v26 - a2 - v17) >> 1) / v13;
    }

    if (v26 != a4 || (v39 = v24, v40 = v13, v13 != a3))
    {
      v39 = v26;
      v40 = v13;
      if (a4 != v24)
      {
        if (&v26[v13] == a4 && v13 == a3)
        {
          v41 = 0;
          v42 = *v26;
          do
          {
            *(v26 + v41) = *(a4 + v41);
            v41 += v20;
          }

          while ((a4 + v41) != v24);
          a4 = (v26 + v41);
          *(v26 + v41) = v42;
          v40 = v13;
        }

        else
        {
          v43 = 2 * a3;
          if (&a4[a3] == v24)
          {
            v44 = &v24[v43 / 0xFFFFFFFFFFFFFFFELL];
            v45 = v24[-a3];
            if (&v24[v43 / 0xFFFFFFFFFFFFFFFELL] == v26)
            {
              a4 = v24;
            }

            else
            {
              v63 = v24;
              a4 = v24;
              do
              {
                v44 -= a3;
                v63 -= a3;
                *v63 = *v44;
                a4 = (a4 - v43);
              }

              while (v44 != v26);
            }

            *v26 = v45;
          }

          else
          {
            v46 = (v24 - a4) / a3;
            v47 = v46;
            v48 = (a4 - v26) / a3;
            v49 = v48;
            if (v48 != v46)
            {
              do
              {
                v54 = v49;
                v49 = v47;
                v47 = v54 % v47;
              }

              while (v47);
              v55 = v38;
              if (v13)
              {
                v56 = &v26[v13 * v49];
                v57 = v48 * v13;
                do
                {
                  v56 -= v13;
                  v58 = *v56;
                  v59 = &v56[v57];
                  v60 = v56;
                  do
                  {
                    v61 = v59;
                    *v60 = *v59;
                    v62 = (v24 - v59) / a3;
                    if (v48 >= v62)
                    {
                      v59 = &v26[(v48 - v62) * v13];
                    }

                    else
                    {
                      v59 = &v61[v57];
                    }

                    v60 = v61;
                  }

                  while (v59 != v56);
                  *v61 = v58;
                }

                while (v56 != v26);
              }

              a4 = &v26[v46 * v13];
              v40 = v13;
              v38 = v55;
              goto LABEL_67;
            }

            if (v26 != a4)
            {
              v50 = a4;
              v51 = v26;
              do
              {
                v52 = *v51;
                *v51 = *v50;
                *v50 = v52;
                v51 = (v51 + v20);
                v50 = (v50 + v43);
              }

              while (v51 != a4 && v50 != v24);
            }
          }

          v40 = a3;
        }

LABEL_67:
        v39 = a4;
      }
    }

    a7 = -(v38 + v19);
    v64 = a8 - v37;
    v89 = a10;
    v87 = a10;
    if (v38 + v37 >= a8 - (v38 + v37) - v19)
    {
      v88 = v39;
      v65 = a9;
      v64 = v37;
      a7 = v38;
      a3 = v13;
      v24 = v26;
      v39 = v23;
      a5 = v40;
      a6 = v88;
    }

    else
    {
      v65 = a9;
      v66 = v13;
      v67 = v13;
      v68 = v26;
      v69 = a6;
      v70 = a5;
      a5 = v70;
      a6 = v69;
      v13 = v40;
    }

    a8 = v64;
    a2 = v39;
    a4 = v24;
    a9 = v65;
    a10 = v89;
    if (!v64)
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
        v80 = COERCE_FLOAT(v78 << 16) < COERCE_FLOAT(v79 << 16);
        v81 = COERCE_FLOAT(v78 << 16) >= COERCE_FLOAT(v79 << 16);
        if (COERCE_FLOAT(v78 << 16) >= COERCE_FLOAT(v79 << 16))
        {
          LOWORD(v78) = *a9;
        }

        a9 += v81;
        if (v80)
        {
          v82 = a3;
        }

        else
        {
          v82 = 0;
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
    v71 = a4;
    v72 = a9;
    do
    {
      *v72++ = *v71;
      v71 += a3;
    }

    while (v71 != a6);
    while (a2 != a4 || a3 != v13)
    {
      v73 = *(v72 - 1);
      a6 -= a5;
      if (COERCE_FLOAT(v73 << 16) >= COERCE_FLOAT(a4[-a3] << 16))
      {
        --v72;
      }

      else
      {
        LOWORD(v73) = a4[-a3];
        a4 -= a3;
      }

      *a6 = v73;
      if (v72 == a9)
      {
        return result;
      }
    }

    if (v72 != a9)
    {
      v85 = -1 * a5;
      do
      {
        v86 = *--v72;
        a6[v85] = v86;
        v85 -= a5;
      }

      while (v72 != a9);
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<mlx::core::complex64_t>>(uint64_t result, float *a2, uint64_t a3, float *a4, unsigned int a5, float *a6, uint64_t a7)
{
  if (a5 < 2)
  {
    return result;
  }

  v9 = a2;
  if (a5 == 2)
  {
    v10 = &a4[-2 * a3];
    if (*a2 > *v10 || *a2 == *v10 && a2[1] > v10[1])
    {
      v11 = *a2;
      *a2 = *v10;
      *v10 = v11;
    }

    return result;
  }

  v12 = result;
  if (a5 > 128)
  {
    v23 = a6;
    v24 = a5 >> 1;
    v25 = a5;
    v26 = a5 - (a5 >> 1);
    v27 = &a2[2 * result * v24];
    if (a5 <= a7)
    {
      v28 = &v23[2 * v24];
      v29 = 8 * v12;
      v30 = v28;
      v31 = &v23[2 * v25];
      while (v30 != v31)
      {
        if (*v23 > *v30 || *v23 == *v30 && v23[1] > v30[1])
        {
          v33 = *v30;
          v30 += 2;
          v32 = v33;
        }

        else
        {
          v34 = *v23;
          v23 += 2;
          v32 = v34;
        }

        *v9 = v32;
        v9 += v29;
        if (v23 == v28)
        {
          while (v30 != v31)
          {
            v36 = *v30;
            v30 += 2;
            *v9 = v36;
            v9 += v29;
          }

          return result;
        }
      }

      while (v23 != v28)
      {
        v35 = *v23;
        v23 += 2;
        *v9 = v35;
        v9 += v29;
      }
    }

    else
    {
    }
  }

  else if (a2 != a4 || result != a3)
  {
    v13 = &a2[2 * result];
    if (v13 != a4)
    {
      v14 = 0;
      v15 = 8 * result;
      v16 = a2;
      while (1)
      {
        v17 = *v13;
        if (*v16 > *v13)
        {
          break;
        }

        if (*v16 == *v13)
        {
          v18 = v13[1];
          if (v16[1] > v18)
          {
            goto LABEL_16;
          }
        }

LABEL_24:
        v13 += 2 * result;
        v16 = (v16 + v15);
        v14 -= v15;
        if (v13 == a4)
        {
          return result;
        }
      }

      v18 = v13[1];
LABEL_16:
      *v13 = *v16;
      if (v16 == a2)
      {
LABEL_22:
        v20 = a2;
      }

      else
      {
        v19 = v14;
        v20 = v16;
        while (1)
        {
          v21 = v20[-2 * result];
          if (v21 <= v17 && (v21 != v17 || v20[-2 * result + 1] <= v18))
          {
            break;
          }

          *v20 = *&v20[-2 * result];
          v20 -= 2 * result;
          v19 += v15;
          if (!v19)
          {
            goto LABEL_22;
          }
        }
      }

      *v20 = v17;
      v20[1] = v18;
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<mlx::core::complex64_t>>(uint64_t result, float *a2, uint64_t a3, float *a4, unsigned int a5, float *a6)
{
  if (a5)
  {
    v6 = a6;
    v8 = a2;
    if (a5 == 1)
    {
      v11 = a2;
LABEL_10:
      *v6 = *v11;
      return result;
    }

    if (a5 == 2)
    {
      v11 = &a4[-2 * a3];
      if (*a2 > *v11 || *a2 == *v11 && a2[1] > v11[1])
      {
        result = a2;
        v8 = &a4[-2 * a3];
        v11 = a2;
      }

      *a6 = *v8;
      v6 = a6 + 2;
      goto LABEL_10;
    }

    v12 = result;
    if (a5 > 8)
    {
      v22 = a5 >> 1;
      v23 = &a2[2 * result * v22];
      if (8 * v12 * v22)
      {
        v24 = &v8[2 * v12 * v22];
        while (v24 != a4 || v12 != a3)
        {
          if (*v8 > *v24 || *v8 == *v24 && v8[1] > v24[1])
          {
            *v6 = *v24;
            v24 += 2 * v12;
          }

          else
          {
            *v6 = *v8;
            v8 += 2 * v12;
          }

          v6 += 2;
          if (v8 == v23)
          {
            goto LABEL_42;
          }
        }

        for (; v8 != v23; v8 += 2 * v12)
        {
          *v6 = *v8;
          v6 += 2;
        }
      }

      else
      {
        v24 = &v8[2 * v12 * v22];
LABEL_42:
        while (v24 != a4)
        {
          *v6 = *v24;
          v6 += 2;
          v24 += 2 * v12;
        }
      }
    }

    else if (a2 != a4)
    {
      *a6 = *a2;
      v13 = &a2[2 * result];
      if (v13 != a4)
      {
        v14 = 0;
        v15 = a6;
        do
        {
          v16 = v15;
          v17 = *v15;
          v15 += 2;
          v18 = v17 == *v13;
          if (v17 > *v13 || (v19 = v15, v18) && (v19 = v15, v16[1] > v13[1]))
          {
            *(v16 + 1) = *v16;
            v19 = a6;
            if (v16 != a6)
            {
              v20 = v14;
              while (1)
              {
                v21 = *(a6 + v20 - 8);
                if (v21 <= *v13)
                {
                  if (v21 != *v13)
                  {
                    v19 = (a6 + v20);
                    goto LABEL_29;
                  }

                  if (*(a6 + v20 - 4) <= v13[1])
                  {
                    break;
                  }
                }

                v16 -= 2;
                *(a6 + v20) = *(a6 + v20 - 8);
                v20 -= 8;
                if (!v20)
                {
                  v19 = a6;
                  goto LABEL_29;
                }
              }

              v19 = v16;
            }
          }

LABEL_29:
          *v19 = *v13;
          v13 += 2 * result;
          v14 += 8;
        }

        while (v13 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,mlx::core::anonymous namespace::StridedIterator<mlx::core::complex64_t>>(uint64_t result, char *a2, uint64_t a3, float *a4, uint64_t a5, float *a6, int a7, int a8, float *a9, uint64_t a10)
{
  if (!a8)
  {
    return result;
  }

  v12 = result;
  v13 = a9;
  while (a8 > a10 && a7 > a10)
  {
    if (!a7)
    {
      return result;
    }

    v15 = 0;
    v16 = *a4;
    v17 = -a7;
    v18 = 8 * v12;
    while (1)
    {
      v19 = *&a2[v15];
      if (v19 > v16 || v19 == v16 && *&a2[v15 + 4] > a4[1])
      {
        break;
      }

      v15 += v18;
      if (__CFADD__(v17++, 1))
      {
        return result;
      }
    }

    v21 = &a2[v15];
    if (-v17 >= a8)
    {
      if (v17 == -1)
      {
        v76 = *&a2[v15];
        *&a2[v15] = *a4;
        *a4 = v76;
        return result;
      }

      v28 = (v17 > 0) - v17;
      v25 = &a2[8 * v12 * (v28 >> 1) + v15];
      v29 = ((a6 - a4) >> 3) / a5;
      if (v29)
      {
        v30 = *v25;
        v22 = a4;
        do
        {
          v31 = v29 >> 1;
          v32 = &v22[2 * a3 * v31];
          if (v30 > *v32 || v30 == *v32 && v25[1] > v32[1])
          {
            v22 = &v32[2 * a3];
            LODWORD(v31) = v29 + ~v31;
          }

          LODWORD(v29) = v31;
        }

        while (v31);
      }

      else
      {
        v22 = a4;
      }

      v34 = (v28 >> 1);
      v33 = ((v22 - a4) >> 3) / a3;
    }

    else
    {
      v22 = &a4[2 * a3 * ((a8 + (a8 >> 31)) >> 1)];
      v23 = ((a4 - a2 - v15) >> 3) / a3;
      if (v23)
      {
        v24 = *v22;
        v25 = &a2[v15];
        do
        {
          v26 = v23 >> 1;
          v27 = (v25 + v18 * v26);
          if (*v27 <= v24 && (*v27 != v24 || v27[1] <= v22[1]))
          {
            v25 = &v27[2 * v12];
            LODWORD(v26) = v23 + ~v26;
          }

          LODWORD(v23) = v26;
        }

        while (v26);
      }

      else
      {
        v25 = &a2[v15];
      }

      v33 = (a8 / 2);
      v34 = ((v25 - a2 - v15) >> 3) / v12;
    }

    if (v25 != a4 || (v35 = v22, v36 = v12, v12 != a3))
    {
      v35 = v25;
      v36 = v12;
      if (a4 != v22)
      {
        if (&v25[2 * v12] == a4 && v12 == a3)
        {
          v37 = 0;
          v38 = *v25;
          do
          {
            *(v25 + v37) = *(a4 + v37);
            v37 += v18;
          }

          while ((a4 + v37) != v22);
          a4 = (v25 + v37);
          *(v25 + v37) = v38;
          v36 = v12;
        }

        else
        {
          v39 = 8 * a3;
          if (&a4[2 * a3] == v22)
          {
            v40 = &v22[v39 / 0xFFFFFFFFFFFFFFFCLL];
            v41 = *&v22[-2 * a3];
            if (&v22[v39 / 0xFFFFFFFFFFFFFFFCLL] == v25)
            {
              a4 = v22;
            }

            else
            {
              v59 = v22;
              a4 = v22;
              do
              {
                v40 -= 2 * a3;
                v59 -= 2 * a3;
                *v59 = *v40;
                a4 = (a4 - v39);
              }

              while (v40 != v25);
            }

            *v25 = v41;
          }

          else
          {
            v42 = ((v22 - a4) >> 3) / a3;
            v43 = v42;
            v44 = ((a4 - v25) >> 3) / a3;
            v45 = v44;
            if (v44 != v42)
            {
              do
              {
                v50 = v45;
                v45 = v43;
                v43 = v50 % v43;
              }

              while (v43);
              v51 = v34;
              if (v12)
              {
                v52 = &v25[2 * v12 * v45];
                v53 = v44 * v12;
                do
                {
                  v52 -= 2 * v12;
                  v54 = *v52;
                  v55 = &v52[2 * v53];
                  v56 = v52;
                  do
                  {
                    v57 = v55;
                    *v56 = *v55;
                    v58 = ((v22 - v55) >> 3) / a3;
                    if (v44 >= v58)
                    {
                      v55 = &v25[2 * (v44 - v58) * v12];
                    }

                    else
                    {
                      v55 = &v57[2 * v53];
                    }

                    v56 = v57;
                  }

                  while (v55 != v52);
                  *v57 = v54;
                }

                while (v52 != v25);
              }

              a4 = &v25[2 * v42 * v12];
              v36 = v12;
              v34 = v51;
              goto LABEL_71;
            }

            if (v25 != a4)
            {
              v46 = a4;
              v47 = v25;
              do
              {
                v48 = *v47;
                *v47 = *v46;
                *v46 = v48;
                v47 = (v47 + v18);
                v46 = (v46 + v39);
              }

              while (v47 != a4 && v46 != v22);
            }
          }

          v36 = a3;
        }

LABEL_71:
        v35 = a4;
      }
    }

    a7 = -(v34 + v17);
    v60 = a8 - v33;
    if (v34 + v33 >= a8 - (v34 + v33) - v17)
    {
      v81 = v35;
      v66 = v35;
      v35 = v21;
      v60 = v33;
      a7 = v34;
      a3 = v12;
      v22 = v25;
      a5 = v36;
      a6 = v81;
    }

    else
    {
      v61 = v12;
      v62 = v12;
      v63 = v25;
      v64 = a5;
      v65 = a6;
      a5 = v64;
      a6 = v65;
      v12 = v36;
    }

    a8 = v60;
    a2 = v35;
    a4 = v22;
    if (!v60)
    {
      return result;
    }
  }

  if (a7 <= a8)
  {
    if (a2 != a4)
    {
      v71 = 8 * v12;
      v72 = a2;
      v73 = a9;
      do
      {
        *v73 = *v72;
        v73 += 2;
        v72 = (v72 + v71);
      }

      while (v72 != a4);
      v74 = v73 - 2;
      while (a4 != a6 || a3 != a5)
      {
        if (*v13 > *a4 || *v13 == *a4 && v13[1] > a4[1])
        {
          *a2 = *a4;
          a4 += 2 * a3;
        }

        else
        {
          v75 = *v13;
          v13 += 2;
          *a2 = v75;
        }

        a2 += v71;
        if (v73 == v13)
        {
          return result;
        }
      }

      v77 = v13 - 2;
      do
      {
        v78 = *(v77 + 1);
        v77 += 2;
        *a2 = v78;
        a2 += v71;
      }

      while (v74 != v77);
    }
  }

  else if (a6 != a4)
  {
    v67 = a4;
    v68 = a9;
    do
    {
      *v68 = *v67;
      v68 += 2;
      v67 += 2 * a3;
    }

    while (v67 != a6);
    while (a2 != a4 || a3 != v12)
    {
      v69 = &a4[-2 * a3];
      v70 = *(v68 - 2);
      if (*v69 <= v70)
      {
        if (*v69 != v70 || (result = &a4[-2 * a3], v69[1] <= *(v68 - 1)))
        {
          v69 = v68 - 2;
          result = a4;
          v68 -= 2;
        }
      }

      else
      {
        result = &a4[-2 * a3];
      }

      a6 -= 2 * a5;
      *a6 = *v69;
      a4 = result;
      if (v68 == a9)
      {
        return result;
      }
    }

    if (v68 != a9)
    {
      v79 = -2 * a5;
      do
      {
        v80 = *(v68 - 1);
        v68 -= 2;
        *&a6[v79] = v80;
        v79 -= 2 * a5;
      }

      while (v68 != a9);
    }
  }

  return result;
}

void *std::__function::__func<std::__bind<mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C00468;
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C00468;
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C00468;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 24);
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Sort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12ArgPartition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C00560;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12ArgPartition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C00560;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12ArgPartition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C00560;
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

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 56) = *(result + 56);
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12ArgPartition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12ArgPartition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12ArgPartition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12ArgPartition8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::ArgPartition::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(mlx::core::array *this)
{
  v1 = *this;
  switch(*(*this + 56))
  {
    case 0:
      v3 = *(this + 8);
      if (v3 < 0)
      {
        v3 += (v1[1] - *v1) >> 2;
      }

      v4 = *(this + 9);
      v5 = v1[6];
      v6 = mlx::core::array::shape(this, v3);
      v7 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v7, v7[1], (v7[1] - *v7) >> 2);
      v8 = &v2524[4 * v3];
      v9 = v2525 - (v8 + 4);
      if (v2525 != v8 + 4)
      {
        memmove(&v2524[4 * v3], v8 + 4, v2525 - (v8 + 4));
      }

      v2525 = &v8[v9];
      v10 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v10 + 24), *(v10 + 32), (*(v10 + 32) - *(v10 + 24)) >> 3);
      v11 = v3;
      v12 = &v2521[8 * v3];
      v13 = v2522 - (v12 + 8);
      if (v2522 != v12 + 8)
      {
        memmove(&v2521[8 * v3], v12 + 8, v2522 - (v12 + 8));
      }

      v2522 = &v12[v13];
      v14 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v14, v14[1], (v14[1] - *v14) >> 2);
      v15 = 4 * v3;
      v16 = &v2518[v15];
      v17 = v2519 - &v2518[v15 + 4];
      if (v2519 != &v2518[v15 + 4])
      {
        memmove(&v2518[v15], &v2518[v15 + 4], v2519 - (v16 + 4));
      }

      v2519 = &v16[v17];
      v18 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
      v19 = &v2515[8 * v11];
      v20 = v2516 - (v19 + 8);
      if (v2516 != v19 + 8)
      {
        memmove(&v2515[8 * v11], v19 + 8, v2516 - (v19 + 8));
      }

      v2516 = &v19[v20];
      v21 = *(*(*this + 24) + 8 * v11);
      v22 = *(*(*(this + 2) + 24) + 8 * v11);
      v23 = mlx::core::array::shape(this, v11);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v24 = v6;
      if (v5 < v6)
      {
        goto LABEL_2666;
      }

      v25 = 0;
      v2481 = v2508;
      v26 = v2511;
      v27 = (v23 & (v4 >> 31)) + v4;
      v28 = (v2510 - v2509) >> 2;
      v2357 = *(*this + 152);
      v29 = *(*(this + 2) + 152);
      v30 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v2329 = (v28 & 0x7FFFFFFF) - 1;
      v31 = v2501;
      v32 = v2504;
      v33 = (v2503 - v2502) >> 2;
      v2321 = (v33 & 0x7FFFFFFF) - 1;
      v34 = v22 * v23;
      v2467 = v22 * v27;
      v35 = 4 * (v28 & 0x7FFFFFFF);
      v2312 = v2509 - 8;
      v36 = 4 * (v33 & 0x7FFFFFFF);
      v2303 = v2502 - 8;
      v2342 = v2513;
      __p = v2506;
      v2370 = v2513 + 4 * v30;
      v2380 = v33;
      v2430 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v2444 = v30;
      v2403 = v2509 + 4 * v30;
      v2416 = &v2506[4 * v2430];
      v2390 = v2502 + 4 * v2430;
      v2454 = v5 / v24;
      v37 = 4 * v22;
      while (1)
      {
        v38 = v31;
        v39 = v2481;
        if (v28)
        {
          v40 = v2370;
          v41 = *v2370;
          if (v28 < 2)
          {
            v42 = v2481;
            v43 = v2444;
            v44 = v2370;
          }

          else
          {
            v42 = v2481;
            v43 = v2444;
            v44 = v2370;
            if (v41 == *v2403 - 1)
            {
              v43 = v2329;
              v45 = v2342;
              v46 = v2312;
              v42 = v2481;
              v47 = v2403;
              v48 = v2444;
              do
              {
                v49 = v43;
                *v40 = 0;
                v42 -= v26[v48] * (*v47 - 1);
                v2508 = v42;
                --v43;
                v40 = &v45[v35 - 8];
                v41 = *v40;
                v45 -= 4;
                if (v49 < 2)
                {
                  break;
                }

                v47 = &v46[v35];
                v50 = *&v46[v35] - 1;
                v46 -= 4;
                v48 = v43;
              }

              while (v41 == v50);
              v44 = &v45[v35 - 4];
              LODWORD(v33) = v2380;
            }
          }

          *v44 = v41 + 1;
          v2481 = v26[v43] + v42;
          v2508 = v2481;
        }

        if (v33)
        {
          v51 = *v2416;
          if (v33 < 2)
          {
            v52 = v31;
            v53 = v2430;
            v54 = v2416;
          }

          else
          {
            v52 = v31;
            v53 = v2430;
            v54 = v2416;
            if (v51 == *v2390 - 1)
            {
              v55 = __p;
              v56 = v2303;
              v53 = v2321;
              v52 = v31;
              v57 = v2390;
              v58 = v2416;
              v59 = v2430;
              do
              {
                v60 = v53;
                *v58 = 0;
                v52 -= v32[v59] * (*v57 - 1);
                v2501 = v52;
                --v53;
                v58 = &v55[v36 - 8];
                v51 = *v58;
                v55 -= 4;
                if (v60 < 2)
                {
                  break;
                }

                v57 = &v56[v36];
                v61 = *&v56[v36] - 1;
                v56 -= 4;
                v59 = v53;
              }

              while (v51 == v61);
              v54 = &v55[v36 - 4];
            }
          }

          *v54 = v51 + 1;
          v31 = v32[v53] + v52;
          v2501 = v31;
        }

        v62 = (v29 + 4 * v38);
        if (v34)
        {
          v63 = 0;
          v64 = 0;
          do
          {
            *(v62 + v63) = v64++;
            v63 += v37;
          }

          while (4 * v34 != v63);
        }

        if (v2467 == v34)
        {
          goto LABEL_36;
        }

        v65 = v2357 + v39;
        v66 = &v62[v34];
        v67 = &v62[v2467];
        while (1)
        {
          v68 = (v66 - v62) / v22;
          if (v68 < 2)
          {
            goto LABEL_36;
          }

          if (v68 == 3)
          {
            break;
          }

          if (v68 == 2)
          {
            v143 = v66[-v22];
            v144 = *v62;
            v145 = *(v65 + v21 * v143);
            v146 = *(v65 + v21 * v144);
            if (v145 < v146 || v143 < v144 && v145 == v146)
            {
              *v62 = v143;
              v66[-v22] = v144;
            }

            goto LABEL_36;
          }

          if (v68 <= 7)
          {
            v153 = &v66[-v22];
            if (v153 != v62)
            {
              v154 = &v62[v37 / 4];
              do
              {
                v155 = &v62[v22];
                if (v66 != v62 && v155 != v66)
                {
                  v156 = v154;
                  v157 = v62;
                  do
                  {
                    v158 = *v156;
                    v159 = *v157;
                    v160 = *(v65 + v21 * v158);
                    v161 = *(v65 + v21 * v159);
                    if (v160 < v161 || (v158 < v159 ? (v162 = v160 == v161) : (v162 = 0), v162))
                    {
                      v157 = v156;
                    }

                    v156 = (v156 + v37);
                  }

                  while (v156 != v66);
                  if (v157 != v62)
                  {
                    v163 = *v62;
                    *v62 = *v157;
                    *v157 = v163;
                  }
                }

                v154 = (v154 + v37);
                v62 += v22;
              }

              while (v155 != v153);
            }

            goto LABEL_36;
          }

          v69 = &v62[((v68 >> 1) & 0x3FFFFFFF) * v22];
          v70 = &v66[-v22];
          v71 = *v69;
          v72 = *v62;
          v73 = *(v65 + v21 * v71);
          v74 = *(v65 + v21 * v72);
          if (v73 >= v74 && (v71 >= v72 || v73 != v74))
          {
            v76 = *v70;
            v77 = *(v65 + v21 * v76);
            if (v77 >= v73 && (v76 >= v71 || v77 != v73))
            {
              v79 = 0;
              goto LABEL_66;
            }

            *v69 = v76;
            *v70 = v71;
            v123 = *v69;
            v124 = *v62;
            v125 = *(v65 + v21 * v123);
            v126 = *(v65 + v21 * v124);
            if (v125 < v126 || (v123 < v124 ? (v127 = v125 == v126) : (v127 = 0), v127))
            {
              *v62 = v123;
              *v69 = v124;
            }

            goto LABEL_65;
          }

          v80 = *v70;
          v81 = *(v65 + v21 * v80);
          if (v81 < v73 || (v80 < v71 ? (v82 = v81 == v73) : (v82 = 0), v82))
          {
            *v62 = v80;
            goto LABEL_64;
          }

          *v62 = v71;
          *v69 = v72;
          v83 = *v70;
          v84 = *(v65 + v21 * v83);
          if (v84 < v74 || (v79 = 1, v83 < v72) && v84 == v74)
          {
            *v69 = v83;
LABEL_64:
            *v70 = v72;
LABEL_65:
            v79 = 1;
          }

LABEL_66:
          v85 = *v62;
          v86 = *v69;
          v87 = *(v65 + v21 * v85);
          v88 = *(v65 + v21 * v86);
          if (v87 < v88 || (v85 < v86 ? (v89 = v87 == v88) : (v89 = 0), v89))
          {
            v92 = &v66[-v22];
            goto LABEL_84;
          }

          v33 = v29;
          v90 = v28;
          v91 = &v66[-2 * v22];
          while (v91 != v62)
          {
            v92 = v91;
            v93 = *v91;
            v94 = *(v65 + v21 * v93);
            if (v94 >= v88)
            {
              v91 -= v22;
              if (v93 >= v86 || v94 != v88)
              {
                continue;
              }
            }

            *v62 = v93;
            *v92 = v85;
            if (v79)
            {
              v79 = 2;
            }

            else
            {
              v79 = 1;
            }

            v28 = v90;
            v29 = v33;
            LODWORD(v33) = v2380;
LABEL_84:
            v96 = &v62[v22];
            if (v96 < v92)
            {
              while (1)
              {
                v97 = *v69;
                v98 = *(v65 + v21 * v97);
                while (1)
                {
                  v99 = *v96;
                  v100 = *(v65 + v21 * v99);
                  if (v100 >= v98 && (v99 >= v97 || v100 != v98))
                  {
                    break;
                  }

                  v96 = (v96 + v37);
                }

                v102 = &v92[-v22];
                do
                {
                  v92 = v102;
                  v103 = *v102;
                  v104 = *(v65 + v21 * v103);
                  if (v104 < v98)
                  {
                    break;
                  }

                  v102 -= v22;
                }

                while (v103 >= v97 || v104 != v98);
                if (v96 >= v92)
                {
                  break;
                }

                *v96 = v103;
                *v92 = v99;
                ++v79;
                if (v96 == v69)
                {
                  v69 = v92;
                }

                v96 = (v96 + v37);
              }
            }

            if (v96 != v69)
            {
              v106 = *v69;
              v107 = *v96;
              v108 = *(v65 + v21 * v106);
              v109 = *(v65 + v21 * v107);
              if (v108 < v109 || v106 < v107 && v108 == v109)
              {
                *v96 = v106;
                *v69 = v107;
                ++v79;
              }
            }

            if (v96 != v67)
            {
              if (v79)
              {
LABEL_110:
                if (v96 <= v67)
                {
                  v110 = &v96[v22];
                }

                else
                {
                  v66 = v96;
                  v110 = v62;
                }

                goto LABEL_113;
              }

              v111 = v96;
              if (v96 <= v67)
              {
                while (&v111[v37 / 4] != v66)
                {
                  v118 = v111[v22];
                  v119 = *v111;
                  v120 = *(v65 + v21 * v118);
                  v121 = *(v65 + v21 * v119);
                  if (v120 >= v121)
                  {
                    v111 = (v111 + v37);
                    if (v118 >= v119 || v120 != v121)
                    {
                      continue;
                    }
                  }

                  goto LABEL_110;
                }
              }

              else
              {
                v112 = v62;
                while (&v112[v37 / 4] != v96)
                {
                  v113 = v112[v22];
                  v114 = *v112;
                  v115 = *(v65 + v21 * v113);
                  v116 = *(v65 + v21 * v114);
                  if (v115 >= v116)
                  {
                    v112 = (v112 + v37);
                    if (v113 >= v114 || v115 != v116)
                    {
                      continue;
                    }
                  }

                  goto LABEL_110;
                }
              }
            }

            goto LABEL_36;
          }

          v128 = &v62[v22];
          v129 = *v70;
          v130 = *(v65 + v21 * v129);
          if (v87 < v130)
          {
            v110 = &v62[v22];
            v28 = v90;
LABEL_156:
            v29 = v33;
            LODWORD(v33) = v2380;
            goto LABEL_157;
          }

          v131 = v85 < v129 && v87 == v130;
          v28 = v90;
          if (v131)
          {
            v110 = &v62[v22];
            goto LABEL_156;
          }

          v29 = v33;
          LODWORD(v33) = v2380;
          if (v128 == v70)
          {
            goto LABEL_36;
          }

          v110 = &v62[2 * v22];
          while (1)
          {
            v132 = *v128;
            v133 = *(v65 + v21 * v132);
            if (v87 < v133)
            {
              break;
            }

            if (v85 < v132 && v87 == v133)
            {
              break;
            }

            v110 = (v110 + v37);
            v128 = (v128 + v37);
            if (v128 == v70)
            {
              goto LABEL_36;
            }
          }

          *v128 = v129;
          *v70 = v132;
LABEL_157:
          if (v110 == v70)
          {
            goto LABEL_36;
          }

          while (1)
          {
            v135 = *v62;
            v136 = *(v65 + v21 * v135);
            v137 = *v110;
            v138 = *(v65 + v21 * v137);
            LODWORD(v139) = *v110;
            while (1)
            {
              if (v136 < v138)
              {
                goto LABEL_166;
              }

              if (v136 == v138 && v135 < v137)
              {
                break;
              }

              v110 = (v110 + v37);
              v139 = *v110;
              v138 = *(v65 + v21 * v139);
              LODWORD(v137) = *v110;
            }

            LODWORD(v139) = v137;
            do
            {
              do
              {
LABEL_166:
                v70 -= v22;
                v140 = *v70;
                v141 = *(v65 + v21 * v140);
              }

              while (v136 < v141);
            }

            while (v135 < v140 && v136 == v141);
            if (v110 >= v70)
            {
              break;
            }

            *v110 = v140;
            *v70 = v139;
            v110 += v22;
          }

          if (v110 > v67)
          {
            goto LABEL_36;
          }

LABEL_113:
          v62 = v110;
          if (v66 == v67)
          {
            goto LABEL_36;
          }
        }

        v147 = v62[v22];
        v148 = *v62;
        v149 = *(v65 + v21 * v147);
        v150 = *(v65 + v21 * v148);
        if (v149 >= v150 && (v147 >= v148 || v149 != v150))
        {
          v164 = v66[-v22];
          v165 = *(v65 + v21 * v164);
          if (v165 < v149 || v164 < v147 && v165 == v149)
          {
            v62[v22] = v164;
            v66[-v22] = v147;
            v166 = v62[v22];
            v167 = *v62;
            v168 = *(v65 + v21 * v166);
            v169 = *(v65 + v21 * v167);
            if (v168 < v169 || v166 < v167 && v168 == v169)
            {
              *v62 = v166;
              v62[v22] = v167;
            }
          }

          goto LABEL_36;
        }

        v151 = v66[-v22];
        v152 = *(v65 + v21 * v151);
        if (v152 < v149 || v151 < v147 && v152 == v149)
        {
          *v62 = v151;
        }

        else
        {
          *v62 = v147;
          v62[v22] = v148;
          v170 = v66[-v22];
          v171 = *(v65 + v21 * v170);
          if (v171 >= v150 && (v170 >= v148 || v171 != v150))
          {
            goto LABEL_36;
          }

          v62[v22] = v170;
        }

        v66[-v22] = v148;
LABEL_36:
        if (v2454 <= ++v25)
        {
          goto LABEL_2869;
        }
      }

    case 1:
      v1309 = *(this + 8);
      if (v1309 < 0)
      {
        v1309 += (v1[1] - *v1) >> 2;
      }

      v1310 = *(this + 9);
      v1311 = v1[6];
      v1312 = mlx::core::array::shape(this, v1309);
      v1313 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v1313, v1313[1], (v1313[1] - *v1313) >> 2);
      v1314 = &v2524[4 * v1309];
      v1315 = v2525 - (v1314 + 4);
      if (v2525 != v1314 + 4)
      {
        memmove(&v2524[4 * v1309], v1314 + 4, v2525 - (v1314 + 4));
      }

      v2525 = &v1314[v1315];
      v1316 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v1316 + 24), *(v1316 + 32), (*(v1316 + 32) - *(v1316 + 24)) >> 3);
      v1317 = v1309;
      v1318 = &v2521[8 * v1309];
      v1319 = v2522 - (v1318 + 8);
      if (v2522 != v1318 + 8)
      {
        memmove(&v2521[8 * v1309], v1318 + 8, v2522 - (v1318 + 8));
      }

      v2522 = &v1318[v1319];
      v1320 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v1320, v1320[1], (v1320[1] - *v1320) >> 2);
      v1321 = 4 * v1309;
      v1322 = &v2518[v1321];
      v1323 = v2519 - &v2518[v1321 + 4];
      if (v2519 != &v2518[v1321 + 4])
      {
        memmove(&v2518[v1321], &v2518[v1321 + 4], v2519 - (v1322 + 4));
      }

      v2519 = &v1322[v1323];
      v1324 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v1324 + 24), *(v1324 + 32), (*(v1324 + 32) - *(v1324 + 24)) >> 3);
      v1325 = &v2515[8 * v1317];
      v1326 = v2516 - (v1325 + 8);
      if (v2516 != v1325 + 8)
      {
        memmove(&v2515[8 * v1317], v1325 + 8, v2516 - (v1325 + 8));
      }

      v2516 = &v1325[v1326];
      v1327 = *(*(*this + 24) + 8 * v1317);
      v1328 = *(*(*(this + 2) + 24) + 8 * v1317);
      v1329 = mlx::core::array::shape(this, v1317);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v1330 = v1312;
      if (v1311 < v1312)
      {
        goto LABEL_2666;
      }

      v1331 = 0;
      v2489 = v2508;
      v1332 = v2511;
      v1333 = (v1329 & (v1310 >> 31)) + v1310;
      v1334 = (v2510 - v2509) >> 2;
      v2365 = *(*this + 152);
      v1335 = *(*(this + 2) + 152);
      v1336 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v2337 = (v1334 & 0x7FFFFFFF) - 1;
      v1337 = v2501;
      v1338 = v2504;
      v1339 = (v2503 - v2502) >> 2;
      v2326 = (v1339 & 0x7FFFFFFF) - 1;
      v1340 = v1328 * v1329;
      v2475 = v1328 * v1333;
      v1341 = 4 * (v1334 & 0x7FFFFFFF);
      v2317 = v2509 - 8;
      v1342 = 4 * (v1339 & 0x7FFFFFFF);
      v2308 = v2502 - 8;
      v2350 = v2513;
      __p = v2506;
      v2376 = v2513 + 4 * v1336;
      v2385 = v1339;
      v2438 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v2449 = v1336;
      v2410 = v2509 + 4 * v1336;
      v2424 = &v2506[4 * v2438];
      v2398 = v2502 + 4 * v2438;
      v2462 = v1311 / v1330;
      v1343 = 4 * v1328;
      while (1)
      {
        v1344 = v1337;
        v1345 = v2489;
        if (v1334)
        {
          v1346 = v2376;
          v1347 = *v2376;
          if (v1334 < 2)
          {
            v1348 = v2489;
            v1349 = v2449;
            v1350 = v2376;
          }

          else
          {
            v1348 = v2489;
            v1349 = v2449;
            v1350 = v2376;
            if (v1347 == *v2410 - 1)
            {
              v1349 = v2337;
              v1351 = v2350;
              v1352 = v2317;
              v1348 = v2489;
              v1353 = v2410;
              v1354 = v2449;
              do
              {
                v1355 = v1349;
                *v1346 = 0;
                v1348 -= v1332[v1354] * (*v1353 - 1);
                v2508 = v1348;
                --v1349;
                v1346 = &v1351[v1341 - 8];
                v1347 = *v1346;
                v1351 -= 4;
                if (v1355 < 2)
                {
                  break;
                }

                v1353 = &v1352[v1341];
                v1356 = *&v1352[v1341] - 1;
                v1352 -= 4;
                v1354 = v1349;
              }

              while (v1347 == v1356);
              v1350 = &v1351[v1341 - 4];
              LODWORD(v1339) = v2385;
            }
          }

          *v1350 = v1347 + 1;
          v2489 = v1332[v1349] + v1348;
          v2508 = v2489;
        }

        if (v1339)
        {
          v1357 = *v2424;
          if (v1339 < 2)
          {
            v1358 = v1337;
            v1359 = v2438;
            v1360 = v2424;
          }

          else
          {
            v1358 = v1337;
            v1359 = v2438;
            v1360 = v2424;
            if (v1357 == *v2398 - 1)
            {
              v1361 = __p;
              v1362 = v2308;
              v1359 = v2326;
              v1358 = v1337;
              v1363 = v2398;
              v1364 = v2424;
              v1365 = v2438;
              do
              {
                v1366 = v1359;
                *v1364 = 0;
                v1358 -= v1338[v1365] * (*v1363 - 1);
                v2501 = v1358;
                --v1359;
                v1364 = &v1361[v1342 - 8];
                v1357 = *v1364;
                v1361 -= 4;
                if (v1366 < 2)
                {
                  break;
                }

                v1363 = &v1362[v1342];
                v1367 = *&v1362[v1342] - 1;
                v1362 -= 4;
                v1365 = v1359;
              }

              while (v1357 == v1367);
              v1360 = &v1361[v1342 - 4];
            }
          }

          *v1360 = v1357 + 1;
          v1337 = v1338[v1359] + v1358;
          v2501 = v1337;
        }

        v1368 = (v1335 + 4 * v1344);
        if (v1340)
        {
          v1369 = 0;
          v1370 = 0;
          do
          {
            *(v1368 + v1369) = v1370++;
            v1369 += v1343;
          }

          while (4 * v1340 != v1369);
        }

        if (v2475 == v1340)
        {
          goto LABEL_1624;
        }

        v1371 = v2365 + v1345;
        v1372 = &v1368[v1340];
        v1373 = &v1368[v2475];
        while (1)
        {
          v1374 = (v1372 - v1368) / v1328;
          if (v1374 < 2)
          {
            goto LABEL_1624;
          }

          if (v1374 == 3)
          {
            v1454 = v1368[v1328];
            v1451 = *v1368;
            v1455 = *(v1371 + v1327 * v1454);
            v1456 = *(v1371 + v1327 * v1451);
            if (v1455 >= v1456 && (v1454 >= v1451 || v1455 != v1456))
            {
              v1469 = v1372[-v1328];
              v1470 = *(v1371 + v1327 * v1469);
              if (v1470 < v1455 || v1469 < v1454 && v1470 == v1455)
              {
                v1368[v1328] = v1469;
                v1372[-v1328] = v1454;
                v1471 = v1368[v1328];
                v1472 = *v1368;
                v1473 = *(v1371 + v1327 * v1471);
                v1474 = *(v1371 + v1327 * v1472);
                if (v1473 < v1474 || v1471 < v1472 && v1473 == v1474)
                {
                  *v1368 = v1471;
                  v1368[v1328] = v1472;
                }
              }

              goto LABEL_1624;
            }

            v1450 = v1372[-v1328];
            v1457 = *(v1371 + v1327 * v1450);
            if (v1457 < v1455 || v1450 < v1454 && v1457 == v1455)
            {
LABEL_1773:
              *v1368 = v1450;
            }

            else
            {
              *v1368 = v1454;
              v1368[v1328] = v1451;
              v1475 = v1372[-v1328];
              v1476 = *(v1371 + v1327 * v1475);
              v1477 = *(v1371 + v1327 * v1451);
              if (v1476 >= v1477 && (v1475 >= v1451 || v1476 != v1477))
              {
                goto LABEL_1624;
              }

              v1368[v1328] = v1475;
            }

            v1372[-v1328] = v1451;
            goto LABEL_1624;
          }

          if (v1374 == 2)
          {
            v1450 = v1372[-v1328];
            v1451 = *v1368;
            v1452 = *(v1371 + v1327 * v1450);
            v1453 = *(v1371 + v1327 * v1451);
            if (v1452 >= v1453 && (v1450 >= v1451 || v1452 != v1453))
            {
              goto LABEL_1624;
            }

            goto LABEL_1773;
          }

          if (v1374 <= 7)
          {
            v1458 = &v1372[-v1328];
            if (v1458 != v1368)
            {
              v1459 = &v1368[v1343 / 4];
              do
              {
                v1460 = &v1368[v1328];
                if (v1372 != v1368 && v1460 != v1372)
                {
                  v1461 = v1459;
                  v1462 = v1368;
                  do
                  {
                    v1463 = *v1461;
                    v1464 = *v1462;
                    v1465 = *(v1371 + v1327 * v1463);
                    v1466 = *(v1371 + v1327 * v1464);
                    if (v1465 < v1466 || (v1463 < v1464 ? (v1467 = v1465 == v1466) : (v1467 = 0), v1467))
                    {
                      v1462 = v1461;
                    }

                    v1461 = (v1461 + v1343);
                  }

                  while (v1461 != v1372);
                  if (v1462 != v1368)
                  {
                    v1468 = *v1368;
                    *v1368 = *v1462;
                    *v1462 = v1468;
                  }
                }

                v1459 = (v1459 + v1343);
                v1368 += v1328;
              }

              while (v1460 != v1458);
            }

            goto LABEL_1624;
          }

          v1375 = &v1368[((v1374 >> 1) & 0x3FFFFFFF) * v1328];
          v1376 = &v1372[-v1328];
          v1377 = *v1375;
          v1378 = *v1368;
          v1379 = *(v1371 + v1327 * v1377);
          v1380 = *(v1371 + v1327 * v1378);
          if (v1379 < v1380 || (v1377 < v1378 ? (v1381 = v1379 == v1380) : (v1381 = 0), v1381))
          {
            v1386 = *v1376;
            v1387 = *(v1371 + v1327 * v1386);
            if (v1387 < v1379 || (v1386 < v1377 ? (v1388 = v1387 == v1379) : (v1388 = 0), v1388))
            {
              *v1368 = v1386;
            }

            else
            {
              *v1368 = v1377;
              *v1375 = v1378;
              v1389 = *v1376;
              v1390 = *(v1371 + v1327 * v1389);
              v1391 = *(v1371 + v1327 * v1378);
              if (v1390 >= v1391)
              {
                v1385 = 1;
                if (v1389 >= v1378 || v1390 != v1391)
                {
                  goto LABEL_1654;
                }
              }

              *v1375 = v1389;
            }

            *v1376 = v1378;
            goto LABEL_1653;
          }

          v1382 = *v1376;
          v1383 = *(v1371 + v1327 * v1382);
          if (v1383 < v1379 || (v1382 < v1377 ? (v1384 = v1383 == v1379) : (v1384 = 0), v1384))
          {
            *v1375 = v1382;
            *v1376 = v1377;
            v1430 = *v1375;
            v1431 = *v1368;
            v1432 = *(v1371 + v1327 * v1430);
            v1433 = *(v1371 + v1327 * v1431);
            if (v1432 < v1433 || (v1430 < v1431 ? (v1434 = v1432 == v1433) : (v1434 = 0), v1434))
            {
              *v1368 = v1430;
              *v1375 = v1431;
            }

LABEL_1653:
            v1385 = 1;
            goto LABEL_1654;
          }

          v1385 = 0;
LABEL_1654:
          v1392 = *v1368;
          v1393 = *v1375;
          v1394 = *(v1371 + v1327 * v1392);
          v1395 = *(v1371 + v1327 * v1393);
          if (v1394 < v1395)
          {
            break;
          }

          if (v1392 < v1393 && v1394 == v1395)
          {
            break;
          }

          v1339 = v1335;
          v1397 = v1334;
          v1398 = &v1372[-2 * v1328];
          while (v1398 != v1368)
          {
            v1399 = v1398;
            v1400 = *v1398;
            v1401 = *(v1371 + v1327 * v1400);
            if (v1401 >= v1395)
            {
              v1398 -= v1328;
              if (v1400 >= v1393 || v1401 != v1395)
              {
                continue;
              }
            }

            *v1368 = v1400;
            *v1399 = v1392;
            if (v1385)
            {
              v1385 = 2;
            }

            else
            {
              v1385 = 1;
            }

            v1334 = v1397;
            v1335 = v1339;
            LODWORD(v1339) = v2385;
            goto LABEL_1672;
          }

          v1435 = &v1368[v1328];
          v1436 = *v1376;
          v1437 = *(v1371 + v1327 * v1436);
          if (v1394 < v1437)
          {
            v1417 = &v1368[v1328];
            v1334 = v1397;
LABEL_1744:
            v1335 = v1339;
            LODWORD(v1339) = v2385;
            goto LABEL_1745;
          }

          v1438 = v1392 < v1436 && v1394 == v1437;
          v1334 = v1397;
          if (v1438)
          {
            v1417 = &v1368[v1328];
            goto LABEL_1744;
          }

          v1335 = v1339;
          LODWORD(v1339) = v2385;
          if (v1435 == v1376)
          {
            goto LABEL_1624;
          }

          v1417 = &v1368[2 * v1328];
          while (1)
          {
            v1439 = *v1435;
            v1440 = *(v1371 + v1327 * v1439);
            if (v1394 < v1440)
            {
              break;
            }

            if (v1392 < v1439 && v1394 == v1440)
            {
              break;
            }

            v1417 = (v1417 + v1343);
            v1435 = (v1435 + v1343);
            if (v1435 == v1376)
            {
              goto LABEL_1624;
            }
          }

          *v1435 = v1436;
          *v1376 = v1439;
LABEL_1745:
          if (v1417 == v1376)
          {
            goto LABEL_1624;
          }

          while (2)
          {
            v1442 = *v1368;
            v1443 = *(v1371 + v1327 * v1442);
            v1444 = *v1417;
            v1445 = *(v1371 + v1327 * v1444);
            LODWORD(v1446) = *v1417;
            while (v1443 >= v1445)
            {
              if (v1443 == v1445 && v1442 < v1444)
              {
                LODWORD(v1446) = v1444;
                goto LABEL_1754;
              }

              v1417 = (v1417 + v1343);
              v1446 = *v1417;
              v1445 = *(v1371 + v1327 * v1446);
              LODWORD(v1444) = *v1417;
            }

            do
            {
              do
              {
LABEL_1754:
                v1376 -= v1328;
                v1447 = *v1376;
                v1448 = *(v1371 + v1327 * v1447);
              }

              while (v1443 < v1448);
            }

            while (v1442 < v1447 && v1443 == v1448);
            if (v1417 < v1376)
            {
              *v1417 = v1447;
              *v1376 = v1446;
              v1417 += v1328;
              continue;
            }

            break;
          }

          if (v1417 > v1373)
          {
            goto LABEL_1624;
          }

LABEL_1701:
          v1368 = v1417;
          if (v1372 == v1373)
          {
            goto LABEL_1624;
          }
        }

        v1399 = &v1372[-v1328];
LABEL_1672:
        v1403 = &v1368[v1328];
        if (v1403 < v1399)
        {
          while (1)
          {
            v1404 = *v1375;
            v1405 = *(v1371 + v1327 * v1404);
            while (1)
            {
              v1406 = *v1403;
              v1407 = *(v1371 + v1327 * v1406);
              if (v1407 >= v1405 && (v1406 >= v1404 || v1407 != v1405))
              {
                break;
              }

              v1403 = (v1403 + v1343);
            }

            v1409 = &v1399[-v1328];
            do
            {
              v1399 = v1409;
              v1410 = *v1409;
              v1411 = *(v1371 + v1327 * v1410);
              if (v1411 < v1405)
              {
                break;
              }

              v1409 -= v1328;
            }

            while (v1410 >= v1404 || v1411 != v1405);
            if (v1403 >= v1399)
            {
              break;
            }

            *v1403 = v1410;
            *v1399 = v1406;
            ++v1385;
            if (v1403 == v1375)
            {
              v1375 = v1399;
            }

            v1403 = (v1403 + v1343);
          }
        }

        if (v1403 != v1375)
        {
          v1413 = *v1375;
          v1414 = *v1403;
          v1415 = *(v1371 + v1327 * v1413);
          v1416 = *(v1371 + v1327 * v1414);
          if (v1415 < v1416 || v1413 < v1414 && v1415 == v1416)
          {
            *v1403 = v1413;
            *v1375 = v1414;
            ++v1385;
          }
        }

        if (v1403 == v1373)
        {
          goto LABEL_1624;
        }

        if (v1385)
        {
LABEL_1698:
          if (v1403 <= v1373)
          {
            v1417 = &v1403[v1328];
          }

          else
          {
            v1372 = v1403;
            v1417 = v1368;
          }

          goto LABEL_1701;
        }

        v1418 = v1403;
        if (v1403 <= v1373)
        {
          while (&v1418[v1343 / 4] != v1372)
          {
            v1425 = v1418[v1328];
            v1426 = *v1418;
            v1427 = *(v1371 + v1327 * v1425);
            v1428 = *(v1371 + v1327 * v1426);
            if (v1427 >= v1428)
            {
              v1418 = (v1418 + v1343);
              if (v1425 >= v1426 || v1427 != v1428)
              {
                continue;
              }
            }

            goto LABEL_1698;
          }
        }

        else
        {
          v1419 = v1368;
          while (&v1419[v1343 / 4] != v1403)
          {
            v1420 = v1419[v1328];
            v1421 = *v1419;
            v1422 = *(v1371 + v1327 * v1420);
            v1423 = *(v1371 + v1327 * v1421);
            if (v1422 >= v1423)
            {
              v1419 = (v1419 + v1343);
              if (v1420 >= v1421 || v1422 != v1423)
              {
                continue;
              }
            }

            goto LABEL_1698;
          }
        }

LABEL_1624:
        if (v2462 <= ++v1331)
        {
LABEL_2869:
          v803 = __p;
          goto LABEL_2870;
        }
      }

    case 2:
      v804 = *(this + 8);
      if (v804 < 0)
      {
        v804 += (v1[1] - *v1) >> 2;
      }

      v805 = *(this + 9);
      v806 = v1[6];
      v807 = mlx::core::array::shape(this, v804);
      v808 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v808, v808[1], (v808[1] - *v808) >> 2);
      v809 = &v2524[4 * v804];
      v810 = v2525 - (v809 + 4);
      if (v2525 != v809 + 4)
      {
        memmove(&v2524[4 * v804], v809 + 4, v2525 - (v809 + 4));
      }

      v2525 = &v809[v810];
      v811 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v811 + 24), *(v811 + 32), (*(v811 + 32) - *(v811 + 24)) >> 3);
      v812 = v804;
      v813 = &v2521[8 * v804];
      v814 = v2522 - (v813 + 8);
      if (v2522 != v813 + 8)
      {
        memmove(&v2521[8 * v804], v813 + 8, v2522 - (v813 + 8));
      }

      v2522 = &v813[v814];
      v815 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v815, v815[1], (v815[1] - *v815) >> 2);
      v816 = 4 * v804;
      v817 = &v2518[v816];
      v818 = v2519 - &v2518[v816 + 4];
      if (v2519 != &v2518[v816 + 4])
      {
        memmove(&v2518[v816], &v2518[v816 + 4], v2519 - (v817 + 4));
      }

      v2519 = &v817[v818];
      v819 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v819 + 24), *(v819 + 32), (*(v819 + 32) - *(v819 + 24)) >> 3);
      v820 = &v2515[8 * v812];
      v821 = v2516 - (v820 + 8);
      if (v2516 != v820 + 8)
      {
        memmove(&v2515[8 * v812], v820 + 8, v2516 - (v820 + 8));
      }

      v2516 = &v820[v821];
      v822 = *(*(*this + 24) + 8 * v812);
      v823 = *(*(*(this + 2) + 24) + 8 * v812);
      v824 = mlx::core::array::shape(this, v812);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v825 = v807;
      if (v806 < v807)
      {
        goto LABEL_2666;
      }

      v826 = 0;
      v2496 = v2508;
      v827 = v2511;
      v828 = (v824 & (v805 >> 31)) + v805;
      v829 = (v2510 - v2509) >> 2;
      v2353 = *(*this + 152);
      v2472 = *(*(this + 2) + 152);
      v830 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v2323 = (v829 & 0x7FFFFFFF) - 1;
      v831 = v2501;
      v832 = v2504;
      v833 = (v2503 - v2502) >> 2;
      v2314 = (v833 & 0x7FFFFFFF) - 1;
      v834 = v823 * v824;
      v2486 = v823 * v828;
      v835 = -v823;
      v836 = 4 * (v829 & 0x7FFFFFFF);
      v2305 = v2509 - 8;
      v837 = 4 * (v833 & 0x7FFFFFFF);
      v2300 = v2502 - 8;
      v2334 = v2513;
      v2347 = v2506;
      v2362 = v2513 + 4 * v830;
      v2373 = v833;
      v2435 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v2446 = v830;
      v2395 = v2509 + 4 * v830;
      v2421 = &v2506[4 * v2435];
      v2382 = v2502 + 4 * v2435;
      v2459 = v806 / v825;
      v838 = 4 * v823;
      while (1)
      {
        v839 = v831;
        v840 = v2496;
        if (v829)
        {
          v841 = *v2362;
          if (v829 < 2)
          {
            v842 = v2496;
            v843 = v2446;
            v844 = v2362;
          }

          else
          {
            v842 = v2496;
            v843 = v2446;
            v844 = v2362;
            if (v841 == *v2395 - 1)
            {
              v843 = v2323;
              v845 = v2334;
              v846 = v2305;
              v842 = v2496;
              v847 = v2395;
              v848 = v2362;
              v849 = v2446;
              do
              {
                v850 = v843;
                *v848 = 0;
                v842 -= v827[v849] * (*v847 - 1);
                v2508 = v842;
                --v843;
                v848 = &v845[v836 - 8];
                v841 = *v848;
                v845 -= 4;
                if (v850 < 2)
                {
                  break;
                }

                v847 = &v846[v836];
                v851 = *&v846[v836] - 1;
                v846 -= 4;
                v849 = v843;
              }

              while (v841 == v851);
              v844 = &v845[v836 - 4];
              LODWORD(v833) = v2373;
            }
          }

          *v844 = v841 + 1;
          v2496 = v827[v843] + v842;
          v2508 = v2496;
        }

        if (v833)
        {
          v852 = *v2421;
          if (v833 < 2)
          {
            v853 = v831;
            v854 = v2435;
            v855 = v2421;
          }

          else
          {
            v853 = v831;
            v854 = v2435;
            v855 = v2421;
            if (v852 == *v2382 - 1)
            {
              v856 = v2347;
              v857 = v2300;
              v854 = v2314;
              v853 = v831;
              v858 = v2382;
              v859 = v2421;
              v860 = v2435;
              do
              {
                v861 = v854;
                *v859 = 0;
                v853 -= v832[v860] * (*v858 - 1);
                v2501 = v853;
                --v854;
                v859 = &v856[v837 - 8];
                v852 = *v859;
                v856 -= 4;
                if (v861 < 2)
                {
                  break;
                }

                v858 = &v857[v837];
                v862 = *&v857[v837] - 1;
                v857 -= 4;
                v860 = v854;
              }

              while (v852 == v862);
              v855 = &v856[v837 - 4];
            }
          }

          *v855 = v852 + 1;
          v831 = v832[v854] + v853;
          v2501 = v831;
        }

        v863 = (v2472 + 4 * v839);
        if (v834)
        {
          v864 = 0;
          v865 = 0;
          do
          {
            *(v863 + v864) = v865++;
            v864 += v838;
          }

          while (4 * v834 != v864);
        }

        if (v2486 == v834)
        {
          goto LABEL_989;
        }

        v866 = v2353 + 2 * v840;
        v867 = &v863[v834];
        v868 = &v863[v2486];
        while (1)
        {
          v869 = (v867 - v863) / v823;
          if (v869 < 2)
          {
            goto LABEL_989;
          }

          if (v869 == 3)
          {
            break;
          }

          if (v869 == 2)
          {
            v942 = v867[v835];
            v943 = *v863;
            v944 = *(v866 + 2 * v822 * v942);
            v945 = *(v866 + 2 * v822 * v943);
            if (v944 < v945 || v942 < v943 && v944 == v945)
            {
              *v863 = v942;
              v867[v835] = v943;
            }

            goto LABEL_989;
          }

          if (v869 <= 7)
          {
            v952 = &v867[v835];
            if (v952 != v863)
            {
              v953 = &v863[v838 / 4];
              do
              {
                v954 = &v863[v823];
                if (v867 != v863 && v954 != v867)
                {
                  v955 = v953;
                  v956 = v863;
                  do
                  {
                    v957 = *v955;
                    v958 = *v956;
                    v959 = *(v866 + 2 * v822 * v957);
                    v960 = *(v866 + 2 * v822 * v958);
                    if (v959 < v960 || (v957 < v958 ? (v961 = v959 == v960) : (v961 = 0), v961))
                    {
                      v956 = v955;
                    }

                    v955 = (v955 + v838);
                  }

                  while (v955 != v867);
                  v835 = -v823;
                  if (v956 != v863)
                  {
                    v962 = *v863;
                    *v863 = *v956;
                    *v956 = v962;
                  }
                }

                v953 = (v953 + v838);
                v863 += v823;
              }

              while (v954 != v952);
            }

            goto LABEL_989;
          }

          v870 = &v863[((v869 >> 1) & 0x3FFFFFFF) * v823];
          v871 = &v867[v835];
          v872 = *v870;
          v873 = *v863;
          v874 = *(v866 + 2 * v822 * v872);
          v875 = *(v866 + 2 * v822 * v873);
          if (v874 < v875 || (v872 < v873 ? (v876 = v874 == v875) : (v876 = 0), v876))
          {
            v881 = *v871;
            v882 = *(v866 + 2 * v822 * v881);
            if (v882 < v874 || (v881 < v872 ? (v883 = v882 == v874) : (v883 = 0), v883))
            {
              *v863 = v881;
            }

            else
            {
              *v863 = v872;
              *v870 = v873;
              v884 = *v871;
              v885 = *(v866 + 2 * v822 * v884);
              if (v885 >= v875)
              {
                v880 = 1;
                if (v884 >= v873 || v885 != v875)
                {
                  goto LABEL_1019;
                }
              }

              *v870 = v884;
            }

            *v871 = v873;
            goto LABEL_1018;
          }

          v877 = *v871;
          v878 = *(v866 + 2 * v822 * v877);
          if (v878 < v874 || (v877 < v872 ? (v879 = v878 == v874) : (v879 = 0), v879))
          {
            *v870 = v877;
            *v871 = v872;
            v923 = *v870;
            v924 = *v863;
            v925 = *(v866 + 2 * v822 * v923);
            v926 = *(v866 + 2 * v822 * v924);
            if (v925 < v926 || (v923 < v924 ? (v927 = v925 == v926) : (v927 = 0), v927))
            {
              *v863 = v923;
              *v870 = v924;
            }

LABEL_1018:
            v880 = 1;
            goto LABEL_1019;
          }

          v880 = 0;
LABEL_1019:
          v886 = *v863;
          v887 = *(v866 + 2 * v822 * v886);
          v888 = *v870;
          v889 = *(v866 + 2 * v822 * v888);
          v890 = &v863[v823];
          if (v887 < v889 || (v886 < v888 ? (v891 = v887 == v889) : (v891 = 0), v891))
          {
            v893 = &v867[v835];
LABEL_1037:
            if (v890 < v893)
            {
              while (1)
              {
                v897 = *v870;
                v898 = *(v866 + 2 * v822 * v897);
                while (1)
                {
                  v899 = *v890;
                  v900 = *(v866 + 2 * v822 * v899);
                  if (v900 >= v898 && (v899 >= v897 || v900 != v898))
                  {
                    break;
                  }

                  v890 = (v890 + v838);
                }

                v902 = &v893[-v823];
                do
                {
                  v893 = v902;
                  v903 = *v902;
                  v904 = *(v866 + 2 * v822 * v903);
                  if (v904 < v898)
                  {
                    break;
                  }

                  v902 -= v823;
                }

                while (v903 >= v897 || v904 != v898);
                if (v890 >= v893)
                {
                  break;
                }

                *v890 = v903;
                *v893 = v899;
                ++v880;
                if (v890 == v870)
                {
                  v870 = v893;
                }

                v890 = (v890 + v838);
              }
            }

            if (v890 != v870)
            {
              v906 = *v870;
              v907 = *v890;
              v908 = *(v866 + 2 * v822 * v906);
              v909 = *(v866 + 2 * v822 * v907);
              if (v908 < v909 || v906 < v907 && v908 == v909)
              {
                *v890 = v906;
                *v870 = v907;
                ++v880;
              }
            }

            if (v890 == v868)
            {
              goto LABEL_989;
            }

            if (!v880)
            {
              v911 = v890;
              if (v890 <= v868)
              {
                while (&v911[v838 / 4] != v867)
                {
                  v918 = v911[v823];
                  v919 = *v911;
                  v920 = *(v866 + 2 * v822 * v918);
                  v921 = *(v866 + 2 * v822 * v919);
                  if (v920 >= v921)
                  {
                    v911 = (v911 + v838);
                    if (v918 >= v919 || v920 != v921)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1063;
                }
              }

              else
              {
                v912 = v863;
                while (&v912[v838 / 4] != v890)
                {
                  v913 = v912[v823];
                  v914 = *v912;
                  v915 = *(v866 + 2 * v822 * v913);
                  v916 = *(v866 + 2 * v822 * v914);
                  if (v915 >= v916)
                  {
                    v912 = (v912 + v838);
                    if (v913 >= v914 || v915 != v916)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1063;
                }
              }

              goto LABEL_989;
            }

LABEL_1063:
            if (v890 <= v868)
            {
              v910 = &v890[v823];
            }

            else
            {
              v867 = v890;
              v910 = v863;
            }
          }

          else
          {
            v833 = v829;
            v892 = &v867[-2 * v823];
            while (v892 != v863)
            {
              v893 = v892;
              v894 = *v892;
              v895 = *(v866 + 2 * v822 * v894);
              if (v895 >= v889)
              {
                v892 -= v823;
                if (v894 >= v888 || v895 != v889)
                {
                  continue;
                }
              }

              *v863 = v894;
              *v893 = v886;
              if (v880)
              {
                v880 = 2;
              }

              else
              {
                v880 = 1;
              }

              v829 = v833;
              LODWORD(v833) = v2373;
              v835 = -v823;
              goto LABEL_1037;
            }

            v928 = *v871;
            v929 = *(v866 + 2 * v822 * v928);
            if (v887 >= v929)
            {
              v930 = v886 < v928 && v887 == v929;
              v829 = v833;
              v835 = -v823;
              if (v930)
              {
                v910 = &v863[v823];
                LODWORD(v833) = v2373;
              }

              else
              {
                LODWORD(v833) = v2373;
                if (v890 == v871)
                {
                  goto LABEL_989;
                }

                v910 = &v863[2 * v823];
                while (1)
                {
                  v931 = *v890;
                  v932 = *(v866 + 2 * v822 * v931);
                  if (v887 < v932)
                  {
                    break;
                  }

                  if (v886 < v931 && v887 == v932)
                  {
                    break;
                  }

                  v910 = (v910 + v838);
                  v890 = (v890 + v838);
                  if (v890 == v871)
                  {
                    goto LABEL_989;
                  }
                }

                *v890 = v928;
                *v871 = v931;
              }
            }

            else
            {
              v910 = &v863[v823];
              v829 = v833;
              LODWORD(v833) = v2373;
              v835 = -v823;
            }

            if (v910 == v871)
            {
              goto LABEL_989;
            }

            while (1)
            {
              v934 = *v863;
              v935 = *(v866 + 2 * v822 * v934);
              v936 = *v910;
              v937 = *(v866 + 2 * v822 * v936);
              LODWORD(v938) = *v910;
              while (v935 >= v937)
              {
                if (v935 == v937 && v934 < v936)
                {
                  LODWORD(v938) = v936;
                  goto LABEL_1117;
                }

                v910 = (v910 + v838);
                v938 = *v910;
                v937 = *(v866 + 2 * v822 * v938);
                LODWORD(v936) = *v910;
              }

              do
              {
                do
                {
LABEL_1117:
                  v871 -= v823;
                  v939 = *v871;
                  v940 = *(v866 + 2 * v822 * v939);
                }

                while (v935 < v940);
              }

              while (v934 < v939 && v935 == v940);
              if (v910 >= v871)
              {
                break;
              }

              *v910 = v939;
              *v871 = v938;
              v910 += v823;
            }

            if (v910 > v868)
            {
              goto LABEL_989;
            }
          }

          v863 = v910;
          if (v867 == v868)
          {
            goto LABEL_989;
          }
        }

        v946 = v863[v823];
        v947 = *v863;
        v948 = *(v866 + 2 * v822 * v946);
        v949 = *(v866 + 2 * v822 * v947);
        if (v948 < v949 || v946 < v947 && v948 == v949)
        {
          v950 = v867[v835];
          v951 = *(v866 + 2 * v822 * v950);
          if (v951 < v948 || v950 < v946 && v951 == v948)
          {
            *v863 = v950;
          }

          else
          {
            *v863 = v946;
            v863[v823] = v947;
            v969 = v867[v835];
            v970 = *(v866 + 2 * v822 * v969);
            if (v970 >= v949 && (v969 >= v947 || v970 != v949))
            {
              goto LABEL_989;
            }

            v863[v823] = v969;
          }

          v867[v835] = v947;
          goto LABEL_989;
        }

        v963 = v867[v835];
        v964 = *(v866 + 2 * v822 * v963);
        if (v964 < v948 || v963 < v946 && v964 == v948)
        {
          v863[v823] = v963;
          v867[v835] = v946;
          v965 = v863[v823];
          v966 = *v863;
          v967 = *(v866 + 2 * v822 * v965);
          v968 = *(v866 + 2 * v822 * v966);
          if (v967 < v968 || v965 < v966 && v967 == v968)
          {
            *v863 = v965;
            v863[v823] = v966;
          }
        }

LABEL_989:
        if (v2459 <= ++v826)
        {
LABEL_2479:
          v803 = v2347;
          goto LABEL_2870;
        }
      }

    case 3:
      v971 = *(this + 8);
      if (v971 < 0)
      {
        v971 += (v1[1] - *v1) >> 2;
      }

      v972 = *(this + 9);
      v973 = v1[6];
      v974 = mlx::core::array::shape(this, v971);
      v975 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v975, v975[1], (v975[1] - *v975) >> 2);
      v976 = &v2524[4 * v971];
      v977 = v2525 - (v976 + 4);
      if (v2525 != v976 + 4)
      {
        memmove(&v2524[4 * v971], v976 + 4, v2525 - (v976 + 4));
      }

      v2525 = &v976[v977];
      v978 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v978 + 24), *(v978 + 32), (*(v978 + 32) - *(v978 + 24)) >> 3);
      v979 = v971;
      v980 = &v2521[8 * v971];
      v981 = v2522 - (v980 + 8);
      if (v2522 != v980 + 8)
      {
        memmove(&v2521[8 * v971], v980 + 8, v2522 - (v980 + 8));
      }

      v2522 = &v980[v981];
      v982 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v982, v982[1], (v982[1] - *v982) >> 2);
      v983 = 4 * v971;
      v984 = &v2518[v983];
      v985 = v2519 - &v2518[v983 + 4];
      if (v2519 != &v2518[v983 + 4])
      {
        memmove(&v2518[v983], &v2518[v983 + 4], v2519 - (v984 + 4));
      }

      v2519 = &v984[v985];
      v986 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v986 + 24), *(v986 + 32), (*(v986 + 32) - *(v986 + 24)) >> 3);
      v987 = &v2515[8 * v979];
      v988 = v2516 - (v987 + 8);
      if (v2516 != v987 + 8)
      {
        memmove(&v2515[8 * v979], v987 + 8, v2516 - (v987 + 8));
      }

      v2516 = &v987[v988];
      v989 = *(*(*this + 24) + 8 * v979);
      v990 = *(*(*(this + 2) + 24) + 8 * v979);
      v991 = mlx::core::array::shape(this, v979);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v992 = v974;
      if (v973 < v974)
      {
        goto LABEL_2666;
      }

      v993 = 0;
      v2487 = v2508;
      v994 = v2511;
      v995 = (v991 & (v972 >> 31)) + v972;
      v996 = (v2510 - v2509) >> 2;
      v2363 = *(*this + 152);
      v997 = *(*(this + 2) + 152);
      v998 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v2335 = (v996 & 0x7FFFFFFF) - 1;
      v999 = v2501;
      v1000 = v2504;
      v1001 = (v2503 - v2502) >> 2;
      v2324 = (v1001 & 0x7FFFFFFF) - 1;
      v1002 = v990 * v991;
      v2473 = v990 * v995;
      v1003 = 4 * (v996 & 0x7FFFFFFF);
      v2315 = v2509 - 8;
      v1004 = 4 * (v1001 & 0x7FFFFFFF);
      v2306 = v2502 - 8;
      v2348 = v2513;
      __p = v2506;
      v2374 = v2513 + 4 * v998;
      v2383 = v1001;
      v2436 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v2447 = v998;
      v2408 = v2509 + 4 * v998;
      v2422 = &v2506[4 * v2436];
      v2396 = v2502 + 4 * v2436;
      v2460 = v973 / v992;
      v1005 = 4 * v990;
      while (1)
      {
        v1006 = v999;
        v1007 = v2487;
        if (v996)
        {
          v1008 = v2374;
          v1009 = *v2374;
          if (v996 < 2)
          {
            v1010 = v2487;
            v1011 = v2447;
            v1012 = v2374;
          }

          else
          {
            v1010 = v2487;
            v1011 = v2447;
            v1012 = v2374;
            if (v1009 == *v2408 - 1)
            {
              v1011 = v2335;
              v1013 = v2348;
              v1014 = v2315;
              v1010 = v2487;
              v1015 = v2408;
              v1016 = v2447;
              do
              {
                v1017 = v1011;
                *v1008 = 0;
                v1010 -= v994[v1016] * (*v1015 - 1);
                v2508 = v1010;
                --v1011;
                v1008 = &v1013[v1003 - 8];
                v1009 = *v1008;
                v1013 -= 4;
                if (v1017 < 2)
                {
                  break;
                }

                v1015 = &v1014[v1003];
                v1018 = *&v1014[v1003] - 1;
                v1014 -= 4;
                v1016 = v1011;
              }

              while (v1009 == v1018);
              v1012 = &v1013[v1003 - 4];
              LODWORD(v1001) = v2383;
            }
          }

          *v1012 = v1009 + 1;
          v2487 = v994[v1011] + v1010;
          v2508 = v2487;
        }

        if (v1001)
        {
          v1019 = *v2422;
          if (v1001 < 2)
          {
            v1020 = v999;
            v1021 = v2436;
            v1022 = v2422;
          }

          else
          {
            v1020 = v999;
            v1021 = v2436;
            v1022 = v2422;
            if (v1019 == *v2396 - 1)
            {
              v1023 = __p;
              v1024 = v2306;
              v1021 = v2324;
              v1020 = v999;
              v1025 = v2396;
              v1026 = v2422;
              v1027 = v2436;
              do
              {
                v1028 = v1021;
                *v1026 = 0;
                v1020 -= v1000[v1027] * (*v1025 - 1);
                v2501 = v1020;
                --v1021;
                v1026 = &v1023[v1004 - 8];
                v1019 = *v1026;
                v1023 -= 4;
                if (v1028 < 2)
                {
                  break;
                }

                v1025 = &v1024[v1004];
                v1029 = *&v1024[v1004] - 1;
                v1024 -= 4;
                v1027 = v1021;
              }

              while (v1019 == v1029);
              v1022 = &v1023[v1004 - 4];
            }
          }

          *v1022 = v1019 + 1;
          v999 = v1000[v1021] + v1020;
          v2501 = v999;
        }

        v1030 = (v997 + 4 * v1006);
        if (v1002)
        {
          v1031 = 0;
          v1032 = 0;
          do
          {
            *(v1030 + v1031) = v1032++;
            v1031 += v1005;
          }

          while (4 * v1002 != v1031);
        }

        if (v2473 == v1002)
        {
          goto LABEL_1200;
        }

        v1033 = v2363 + 4 * v1007;
        v1034 = &v1030[v1002];
        v1035 = &v1030[v2473];
        while (1)
        {
          v1036 = (v1034 - v1030) / v990;
          if (v1036 < 2)
          {
            goto LABEL_1200;
          }

          if (v1036 == 3)
          {
            v1116 = v1030[v990];
            v1113 = *v1030;
            v1117 = *(v1033 + 4 * v989 * v1116);
            v1118 = *(v1033 + 4 * v989 * v1113);
            if (v1117 >= v1118 && (v1116 >= v1113 || v1117 != v1118))
            {
              v1131 = v1034[-v990];
              v1132 = *(v1033 + 4 * v989 * v1131);
              if (v1132 < v1117 || v1131 < v1116 && v1132 == v1117)
              {
                v1030[v990] = v1131;
                v1034[-v990] = v1116;
                v1133 = v1030[v990];
                v1134 = *v1030;
                v1135 = *(v1033 + 4 * v989 * v1133);
                v1136 = *(v1033 + 4 * v989 * v1134);
                if (v1135 < v1136 || v1133 < v1134 && v1135 == v1136)
                {
                  *v1030 = v1133;
                  v1030[v990] = v1134;
                }
              }

              goto LABEL_1200;
            }

            v1112 = v1034[-v990];
            v1119 = *(v1033 + 4 * v989 * v1112);
            if (v1119 < v1117 || v1112 < v1116 && v1119 == v1117)
            {
              goto LABEL_1348;
            }

            *v1030 = v1116;
            v1030[v990] = v1113;
            v1137 = v1034[-v990];
            v1138 = *(v1033 + 4 * v989 * v1137);
            v1139 = *(v1033 + 4 * v989 * v1113);
            if (v1138 >= v1139 && (v1137 >= v1113 || v1138 != v1139))
            {
              goto LABEL_1200;
            }

            v1030[v990] = v1137;
LABEL_1349:
            v1034[-v990] = v1113;
            goto LABEL_1200;
          }

          if (v1036 == 2)
          {
            v1112 = v1034[-v990];
            v1113 = *v1030;
            v1114 = *(v1033 + 4 * v989 * v1112);
            v1115 = *(v1033 + 4 * v989 * v1113);
            if (v1114 >= v1115 && (v1112 >= v1113 || v1114 != v1115))
            {
              goto LABEL_1200;
            }

LABEL_1348:
            *v1030 = v1112;
            goto LABEL_1349;
          }

          if (v1036 <= 7)
          {
            v1120 = &v1034[-v990];
            if (v1120 != v1030)
            {
              v1121 = &v1030[v1005 / 4];
              do
              {
                v1122 = &v1030[v990];
                if (v1034 != v1030 && v1122 != v1034)
                {
                  v1123 = v1121;
                  v1124 = v1030;
                  do
                  {
                    v1125 = *v1123;
                    v1126 = *v1124;
                    v1127 = *(v1033 + 4 * v989 * v1125);
                    v1128 = *(v1033 + 4 * v989 * v1126);
                    if (v1127 < v1128 || (v1125 < v1126 ? (v1129 = v1127 == v1128) : (v1129 = 0), v1129))
                    {
                      v1124 = v1123;
                    }

                    v1123 = (v1123 + v1005);
                  }

                  while (v1123 != v1034);
                  if (v1124 != v1030)
                  {
                    v1130 = *v1030;
                    *v1030 = *v1124;
                    *v1124 = v1130;
                  }
                }

                v1121 = (v1121 + v1005);
                v1030 += v990;
              }

              while (v1122 != v1120);
            }

            goto LABEL_1200;
          }

          v1037 = &v1030[((v1036 >> 1) & 0x3FFFFFFF) * v990];
          v1038 = &v1034[-v990];
          v1039 = *v1037;
          v1040 = *v1030;
          v1041 = *(v1033 + 4 * v989 * v1039);
          v1042 = *(v1033 + 4 * v989 * v1040);
          if (v1041 >= v1042 && (v1039 >= v1040 || v1041 != v1042))
          {
            v1044 = *v1038;
            v1045 = *(v1033 + 4 * v989 * v1044);
            if (v1045 >= v1041 && (v1044 >= v1039 || v1045 != v1041))
            {
              v1047 = 0;
              goto LABEL_1230;
            }

            *v1037 = v1044;
            *v1038 = v1039;
            v1092 = *v1037;
            v1093 = *v1030;
            v1094 = *(v1033 + 4 * v989 * v1092);
            v1095 = *(v1033 + 4 * v989 * v1093);
            if (v1094 < v1095 || (v1092 < v1093 ? (v1096 = v1094 == v1095) : (v1096 = 0), v1096))
            {
              *v1030 = v1092;
              *v1037 = v1093;
            }

            goto LABEL_1229;
          }

          v1048 = *v1038;
          v1049 = *(v1033 + 4 * v989 * v1048);
          if (v1049 < v1041 || (v1048 < v1039 ? (v1050 = v1049 == v1041) : (v1050 = 0), v1050))
          {
            *v1030 = v1048;
            goto LABEL_1228;
          }

          *v1030 = v1039;
          *v1037 = v1040;
          v1051 = *v1038;
          v1052 = *(v1033 + 4 * v989 * v1051);
          v1053 = *(v1033 + 4 * v989 * v1040);
          if (v1052 < v1053 || (v1047 = 1, v1051 < v1040) && v1052 == v1053)
          {
            *v1037 = v1051;
LABEL_1228:
            *v1038 = v1040;
LABEL_1229:
            v1047 = 1;
          }

LABEL_1230:
          v1054 = *v1030;
          v1055 = *v1037;
          v1056 = *(v1033 + 4 * v989 * v1054);
          v1057 = *(v1033 + 4 * v989 * v1055);
          if (v1056 < v1057 || (v1054 < v1055 ? (v1058 = v1056 == v1057) : (v1058 = 0), v1058))
          {
            v1061 = &v1034[-v990];
            goto LABEL_1248;
          }

          v1001 = v997;
          v1059 = v996;
          v1060 = &v1034[-2 * v990];
LABEL_1236:
          if (v1060 != v1030)
          {
            break;
          }

          v1097 = &v1030[v990];
          v1098 = *v1038;
          v1099 = *(v1033 + 4 * v989 * v1098);
          if (v1056 < v1099)
          {
            v1079 = &v1030[v990];
            v996 = v1059;
LABEL_1320:
            v997 = v1001;
            LODWORD(v1001) = v2383;
            goto LABEL_1321;
          }

          v1100 = v1054 < v1098 && v1056 == v1099;
          v996 = v1059;
          if (v1100)
          {
            v1079 = &v1030[v990];
            goto LABEL_1320;
          }

          v997 = v1001;
          LODWORD(v1001) = v2383;
          if (v1097 == v1038)
          {
            goto LABEL_1200;
          }

          v1079 = &v1030[2 * v990];
          while (1)
          {
            v1101 = *v1097;
            v1102 = *(v1033 + 4 * v989 * v1101);
            if (v1056 < v1102)
            {
              break;
            }

            if (v1054 < v1101 && v1056 == v1102)
            {
              break;
            }

            v1079 = (v1079 + v1005);
            v1097 = (v1097 + v1005);
            if (v1097 == v1038)
            {
              goto LABEL_1200;
            }
          }

          *v1097 = v1098;
          *v1038 = v1101;
LABEL_1321:
          if (v1079 == v1038)
          {
            goto LABEL_1200;
          }

          while (1)
          {
            v1104 = *v1030;
            v1105 = *(v1033 + 4 * v989 * v1104);
            v1106 = *v1079;
            v1107 = *(v1033 + 4 * v989 * v1106);
            LODWORD(v1108) = *v1079;
            while (1)
            {
              if (v1105 < v1107)
              {
                goto LABEL_1328;
              }

              if (v1105 == v1107 && v1104 < v1106)
              {
                break;
              }

              v1079 = (v1079 + v1005);
              v1108 = *v1079;
              v1107 = *(v1033 + 4 * v989 * v1108);
              LODWORD(v1106) = *v1079;
            }

            LODWORD(v1108) = v1106;
            do
            {
              do
              {
LABEL_1328:
                v1038 -= v990;
                v1109 = *v1038;
                v1110 = *(v1033 + 4 * v989 * v1109);
              }

              while (v1105 < v1110);
            }

            while (v1104 < v1109 && v1105 == v1110);
            if (v1079 >= v1038)
            {
              break;
            }

            *v1079 = v1109;
            *v1038 = v1108;
            v1079 += v990;
          }

          if (v1079 > v1035)
          {
            goto LABEL_1200;
          }

LABEL_1277:
          v1030 = v1079;
          if (v1034 == v1035)
          {
            goto LABEL_1200;
          }
        }

        v1061 = v1060;
        v1062 = *v1060;
        v1063 = *(v1033 + 4 * v989 * v1062);
        if (v1063 >= v1057)
        {
          v1060 -= v990;
          if (v1062 >= v1055 || v1063 != v1057)
          {
            goto LABEL_1236;
          }
        }

        *v1030 = v1062;
        *v1061 = v1054;
        if (v1047)
        {
          v1047 = 2;
        }

        else
        {
          v1047 = 1;
        }

        v996 = v1059;
        v997 = v1001;
        LODWORD(v1001) = v2383;
LABEL_1248:
        v1065 = &v1030[v990];
        if (v1065 < v1061)
        {
          while (1)
          {
            v1066 = *v1037;
            v1067 = *(v1033 + 4 * v989 * v1066);
            while (1)
            {
              v1068 = *v1065;
              v1069 = *(v1033 + 4 * v989 * v1068);
              if (v1069 >= v1067 && (v1068 >= v1066 || v1069 != v1067))
              {
                break;
              }

              v1065 = (v1065 + v1005);
            }

            v1071 = &v1061[-v990];
            do
            {
              v1061 = v1071;
              v1072 = *v1071;
              v1073 = *(v1033 + 4 * v989 * v1072);
              if (v1073 < v1067)
              {
                break;
              }

              v1071 -= v990;
            }

            while (v1072 >= v1066 || v1073 != v1067);
            if (v1065 >= v1061)
            {
              break;
            }

            *v1065 = v1072;
            *v1061 = v1068;
            ++v1047;
            if (v1065 == v1037)
            {
              v1037 = v1061;
            }

            v1065 = (v1065 + v1005);
          }
        }

        if (v1065 != v1037)
        {
          v1075 = *v1037;
          v1076 = *v1065;
          v1077 = *(v1033 + 4 * v989 * v1075);
          v1078 = *(v1033 + 4 * v989 * v1076);
          if (v1077 < v1078 || v1075 < v1076 && v1077 == v1078)
          {
            *v1065 = v1075;
            *v1037 = v1076;
            ++v1047;
          }
        }

        if (v1065 != v1035)
        {
          if (v1047)
          {
LABEL_1274:
            if (v1065 <= v1035)
            {
              v1079 = &v1065[v990];
            }

            else
            {
              v1034 = v1065;
              v1079 = v1030;
            }

            goto LABEL_1277;
          }

          v1080 = v1065;
          if (v1065 <= v1035)
          {
            while (&v1080[v1005 / 4] != v1034)
            {
              v1087 = v1080[v990];
              v1088 = *v1080;
              v1089 = *(v1033 + 4 * v989 * v1087);
              v1090 = *(v1033 + 4 * v989 * v1088);
              if (v1089 >= v1090)
              {
                v1080 = (v1080 + v1005);
                if (v1087 >= v1088 || v1089 != v1090)
                {
                  continue;
                }
              }

              goto LABEL_1274;
            }
          }

          else
          {
            v1081 = v1030;
            while (&v1081[v1005 / 4] != v1065)
            {
              v1082 = v1081[v990];
              v1083 = *v1081;
              v1084 = *(v1033 + 4 * v989 * v1082);
              v1085 = *(v1033 + 4 * v989 * v1083);
              if (v1084 >= v1085)
              {
                v1081 = (v1081 + v1005);
                if (v1082 >= v1083 || v1084 != v1085)
                {
                  continue;
                }
              }

              goto LABEL_1274;
            }
          }
        }

LABEL_1200:
        if (v2460 <= ++v993)
        {
          goto LABEL_2869;
        }
      }

    case 4:
      v326 = *(this + 8);
      if (v326 < 0)
      {
        v326 += (v1[1] - *v1) >> 2;
      }

      v327 = *(this + 9);
      v328 = v1[6];
      v329 = mlx::core::array::shape(this, v326);
      v330 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v330, v330[1], (v330[1] - *v330) >> 2);
      v331 = &v2524[4 * v326];
      v332 = v2525 - (v331 + 4);
      if (v2525 != v331 + 4)
      {
        memmove(&v2524[4 * v326], v331 + 4, v2525 - (v331 + 4));
      }

      v2525 = &v331[v332];
      v333 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v333 + 24), *(v333 + 32), (*(v333 + 32) - *(v333 + 24)) >> 3);
      v334 = v326;
      v335 = &v2521[8 * v326];
      v336 = v2522 - (v335 + 8);
      if (v2522 != v335 + 8)
      {
        memmove(&v2521[8 * v326], v335 + 8, v2522 - (v335 + 8));
      }

      v2522 = &v335[v336];
      v337 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v337, v337[1], (v337[1] - *v337) >> 2);
      v338 = 4 * v326;
      v339 = &v2518[v338];
      v340 = v2519 - &v2518[v338 + 4];
      if (v2519 != &v2518[v338 + 4])
      {
        memmove(&v2518[v338], &v2518[v338 + 4], v2519 - (v339 + 4));
      }

      v2519 = &v339[v340];
      v341 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v341 + 24), *(v341 + 32), (*(v341 + 32) - *(v341 + 24)) >> 3);
      v342 = &v2515[8 * v334];
      v343 = v2516 - (v342 + 8);
      if (v2516 != v342 + 8)
      {
        memmove(&v2515[8 * v334], v342 + 8, v2516 - (v342 + 8));
      }

      v2516 = &v342[v343];
      v344 = *(*(*this + 24) + 8 * v334);
      v345 = *(*(*(this + 2) + 24) + 8 * v334);
      v346 = mlx::core::array::shape(this, v334);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v347 = v329;
      if (v328 < v329)
      {
        goto LABEL_2666;
      }

      v348 = 0;
      v2483 = v2508;
      v349 = v2511;
      v350 = (v346 & (v327 >> 31)) + v327;
      v351 = (v2510 - v2509) >> 2;
      v2359 = *(*this + 152);
      v352 = *(*(this + 2) + 152);
      v353 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v2331 = (v351 & 0x7FFFFFFF) - 1;
      v354 = v2501;
      v355 = v2504;
      v356 = (v2503 - v2502) >> 2;
      v2322 = (v356 & 0x7FFFFFFF) - 1;
      v357 = v345 * v346;
      v2469 = v345 * v350;
      v358 = 4 * (v351 & 0x7FFFFFFF);
      v2313 = v2509 - 8;
      v359 = 4 * (v356 & 0x7FFFFFFF);
      v2304 = v2502 - 8;
      v2344 = v2513;
      __p = v2506;
      v2372 = v2513 + 4 * v353;
      v2381 = v356;
      v2432 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v2445 = v353;
      v2405 = v2509 + 4 * v353;
      v2418 = &v2506[4 * v2432];
      v2392 = v2502 + 4 * v2432;
      v2456 = v328 / v347;
      v360 = 4 * v345;
      while (1)
      {
        v361 = v354;
        v362 = v2483;
        if (v351)
        {
          v363 = v2372;
          v364 = *v2372;
          if (v351 < 2)
          {
            v365 = v2483;
            v366 = v2445;
            v367 = v2372;
          }

          else
          {
            v365 = v2483;
            v366 = v2445;
            v367 = v2372;
            if (v364 == *v2405 - 1)
            {
              v366 = v2331;
              v368 = v2344;
              v369 = v2313;
              v365 = v2483;
              v370 = v2405;
              v371 = v2445;
              do
              {
                v372 = v366;
                *v363 = 0;
                v365 -= v349[v371] * (*v370 - 1);
                v2508 = v365;
                --v366;
                v363 = &v368[v358 - 8];
                v364 = *v363;
                v368 -= 4;
                if (v372 < 2)
                {
                  break;
                }

                v370 = &v369[v358];
                v373 = *&v369[v358] - 1;
                v369 -= 4;
                v371 = v366;
              }

              while (v364 == v373);
              v367 = &v368[v358 - 4];
              LODWORD(v356) = v2381;
            }
          }

          *v367 = v364 + 1;
          v2483 = v349[v366] + v365;
          v2508 = v2483;
        }

        if (v356)
        {
          v374 = *v2418;
          if (v356 < 2)
          {
            v375 = v354;
            v376 = v2432;
            v377 = v2418;
          }

          else
          {
            v375 = v354;
            v376 = v2432;
            v377 = v2418;
            if (v374 == *v2392 - 1)
            {
              v378 = __p;
              v379 = v2304;
              v376 = v2322;
              v375 = v354;
              v380 = v2392;
              v381 = v2418;
              v382 = v2432;
              do
              {
                v383 = v376;
                *v381 = 0;
                v375 -= v355[v382] * (*v380 - 1);
                v2501 = v375;
                --v376;
                v381 = &v378[v359 - 8];
                v374 = *v381;
                v378 -= 4;
                if (v383 < 2)
                {
                  break;
                }

                v380 = &v379[v359];
                v384 = *&v379[v359] - 1;
                v379 -= 4;
                v382 = v376;
              }

              while (v374 == v384);
              v377 = &v378[v359 - 4];
            }
          }

          *v377 = v374 + 1;
          v354 = v355[v376] + v375;
          v2501 = v354;
        }

        v385 = (v352 + 4 * v361);
        if (v357)
        {
          v386 = 0;
          v387 = 0;
          do
          {
            *(v385 + v386) = v387++;
            v386 += v360;
          }

          while (4 * v357 != v386);
        }

        if (v2469 == v357)
        {
          goto LABEL_425;
        }

        v388 = v2359 + 8 * v362;
        v389 = &v385[v357];
        v390 = &v385[v2469];
        while (1)
        {
          v391 = (v389 - v385) / v345;
          if (v391 < 2)
          {
            goto LABEL_425;
          }

          if (v391 == 3)
          {
            break;
          }

          if (v391 == 2)
          {
            v466 = v389[-v345];
            v467 = *v385;
            v468 = *(v388 + 8 * v344 * v466);
            v469 = *(v388 + 8 * v344 * v467);
            if (v468 < v469 || v466 < v467 && v468 == v469)
            {
              *v385 = v466;
              v389[-v345] = v467;
            }

            goto LABEL_425;
          }

          if (v391 <= 7)
          {
            v476 = &v389[-v345];
            if (v476 != v385)
            {
              v477 = &v385[v360 / 4];
              do
              {
                v478 = &v385[v345];
                if (v389 != v385 && v478 != v389)
                {
                  v479 = v477;
                  v480 = v385;
                  do
                  {
                    v481 = *v479;
                    v482 = *v480;
                    v483 = *(v388 + 8 * v344 * v481);
                    v484 = *(v388 + 8 * v344 * v482);
                    if (v483 < v484 || (v481 < v482 ? (v485 = v483 == v484) : (v485 = 0), v485))
                    {
                      v480 = v479;
                    }

                    v479 = (v479 + v360);
                  }

                  while (v479 != v389);
                  if (v480 != v385)
                  {
                    v486 = *v385;
                    *v385 = *v480;
                    *v480 = v486;
                  }
                }

                v477 = (v477 + v360);
                v385 += v345;
              }

              while (v478 != v476);
            }

            goto LABEL_425;
          }

          v392 = &v385[((v391 >> 1) & 0x3FFFFFFF) * v345];
          v393 = &v389[-v345];
          v394 = *v392;
          v395 = *v385;
          v396 = *(v388 + 8 * v344 * v394);
          v397 = *(v388 + 8 * v344 * v395);
          if (v396 >= v397 && (v394 >= v395 || v396 != v397))
          {
            v399 = *v393;
            v400 = *(v388 + 8 * v344 * v399);
            if (v400 >= v396 && (v399 >= v394 || v400 != v396))
            {
              v402 = 0;
              goto LABEL_455;
            }

            *v392 = v399;
            *v393 = v394;
            v446 = *v392;
            v447 = *v385;
            v448 = *(v388 + 8 * v344 * v446);
            v449 = *(v388 + 8 * v344 * v447);
            if (v448 < v449 || (v446 < v447 ? (v450 = v448 == v449) : (v450 = 0), v450))
            {
              *v385 = v446;
              *v392 = v447;
            }

            goto LABEL_454;
          }

          v403 = *v393;
          v404 = *(v388 + 8 * v344 * v403);
          if (v404 < v396 || (v403 < v394 ? (v405 = v404 == v396) : (v405 = 0), v405))
          {
            *v385 = v403;
            goto LABEL_453;
          }

          *v385 = v394;
          *v392 = v395;
          v406 = *v393;
          v407 = *(v388 + 8 * v344 * v406);
          if (v407 < v397 || (v402 = 1, v406 < v395) && v407 == v397)
          {
            *v392 = v406;
LABEL_453:
            *v393 = v395;
LABEL_454:
            v402 = 1;
          }

LABEL_455:
          v408 = *v385;
          v409 = *v392;
          v410 = *(v388 + 8 * v344 * v408);
          v411 = *(v388 + 8 * v344 * v409);
          if (v410 < v411 || (v408 < v409 ? (v412 = v410 == v411) : (v412 = 0), v412))
          {
            v415 = &v389[-v345];
            goto LABEL_473;
          }

          v356 = v352;
          v413 = v351;
          v414 = &v389[-2 * v345];
          while (v414 != v385)
          {
            v415 = v414;
            v416 = *v414;
            v417 = *(v388 + 8 * v344 * v416);
            if (v417 >= v411)
            {
              v414 -= v345;
              if (v416 >= v409 || v417 != v411)
              {
                continue;
              }
            }

            *v385 = v416;
            *v415 = v408;
            if (v402)
            {
              v402 = 2;
            }

            else
            {
              v402 = 1;
            }

            v351 = v413;
            v352 = v356;
            LODWORD(v356) = v2381;
LABEL_473:
            v419 = &v385[v345];
            if (v419 < v415)
            {
              while (1)
              {
                v420 = *v392;
                v421 = *(v388 + 8 * v344 * v420);
                while (1)
                {
                  v422 = *v419;
                  v423 = *(v388 + 8 * v344 * v422);
                  if (v423 >= v421 && (v422 >= v420 || v423 != v421))
                  {
                    break;
                  }

                  v419 = (v419 + v360);
                }

                v425 = &v415[-v345];
                do
                {
                  v415 = v425;
                  v426 = *v425;
                  v427 = *(v388 + 8 * v344 * v426);
                  if (v427 < v421)
                  {
                    break;
                  }

                  v425 -= v345;
                }

                while (v426 >= v420 || v427 != v421);
                if (v419 >= v415)
                {
                  break;
                }

                *v419 = v426;
                *v415 = v422;
                ++v402;
                if (v419 == v392)
                {
                  v392 = v415;
                }

                v419 = (v419 + v360);
              }
            }

            if (v419 != v392)
            {
              v429 = *v392;
              v430 = *v419;
              v431 = *(v388 + 8 * v344 * v429);
              v432 = *(v388 + 8 * v344 * v430);
              if (v431 < v432 || v429 < v430 && v431 == v432)
              {
                *v419 = v429;
                *v392 = v430;
                ++v402;
              }
            }

            if (v419 != v390)
            {
              if (v402)
              {
LABEL_499:
                if (v419 <= v390)
                {
                  v433 = &v419[v345];
                }

                else
                {
                  v389 = v419;
                  v433 = v385;
                }

                goto LABEL_502;
              }

              v434 = v419;
              if (v419 <= v390)
              {
                while (&v434[v360 / 4] != v389)
                {
                  v441 = v434[v345];
                  v442 = *v434;
                  v443 = *(v388 + 8 * v344 * v441);
                  v444 = *(v388 + 8 * v344 * v442);
                  if (v443 >= v444)
                  {
                    v434 = (v434 + v360);
                    if (v441 >= v442 || v443 != v444)
                    {
                      continue;
                    }
                  }

                  goto LABEL_499;
                }
              }

              else
              {
                v435 = v385;
                while (&v435[v360 / 4] != v419)
                {
                  v436 = v435[v345];
                  v437 = *v435;
                  v438 = *(v388 + 8 * v344 * v436);
                  v439 = *(v388 + 8 * v344 * v437);
                  if (v438 >= v439)
                  {
                    v435 = (v435 + v360);
                    if (v436 >= v437 || v438 != v439)
                    {
                      continue;
                    }
                  }

                  goto LABEL_499;
                }
              }
            }

            goto LABEL_425;
          }

          v451 = &v385[v345];
          v452 = *v393;
          v453 = *(v388 + 8 * v344 * v452);
          if (v410 < v453)
          {
            v433 = &v385[v345];
            v351 = v413;
LABEL_545:
            v352 = v356;
            LODWORD(v356) = v2381;
            goto LABEL_546;
          }

          v454 = v408 < v452 && v410 == v453;
          v351 = v413;
          if (v454)
          {
            v433 = &v385[v345];
            goto LABEL_545;
          }

          v352 = v356;
          LODWORD(v356) = v2381;
          if (v451 == v393)
          {
            goto LABEL_425;
          }

          v433 = &v385[2 * v345];
          while (1)
          {
            v455 = *v451;
            v456 = *(v388 + 8 * v344 * v455);
            if (v410 < v456)
            {
              break;
            }

            if (v408 < v455 && v410 == v456)
            {
              break;
            }

            v433 = (v433 + v360);
            v451 = (v451 + v360);
            if (v451 == v393)
            {
              goto LABEL_425;
            }
          }

          *v451 = v452;
          *v393 = v455;
LABEL_546:
          if (v433 == v393)
          {
            goto LABEL_425;
          }

          while (1)
          {
            v458 = *v385;
            v459 = *(v388 + 8 * v344 * v458);
            v460 = *v433;
            v461 = *(v388 + 8 * v344 * v460);
            LODWORD(v462) = *v433;
            while (1)
            {
              if (v459 < v461)
              {
                goto LABEL_555;
              }

              if (v459 == v461 && v458 < v460)
              {
                break;
              }

              v433 = (v433 + v360);
              v462 = *v433;
              v461 = *(v388 + 8 * v344 * v462);
              LODWORD(v460) = *v433;
            }

            LODWORD(v462) = v460;
            do
            {
              do
              {
LABEL_555:
                v393 -= v345;
                v463 = *v393;
                v464 = *(v388 + 8 * v344 * v463);
              }

              while (v459 < v464);
            }

            while (v458 < v463 && v459 == v464);
            if (v433 >= v393)
            {
              break;
            }

            *v433 = v463;
            *v393 = v462;
            v433 += v345;
          }

          if (v433 > v390)
          {
            goto LABEL_425;
          }

LABEL_502:
          v385 = v433;
          if (v389 == v390)
          {
            goto LABEL_425;
          }
        }

        v470 = v385[v345];
        v471 = *v385;
        v472 = *(v388 + 8 * v344 * v470);
        v473 = *(v388 + 8 * v344 * v471);
        if (v472 >= v473 && (v470 >= v471 || v472 != v473))
        {
          v487 = v389[-v345];
          v488 = *(v388 + 8 * v344 * v487);
          if (v488 < v472 || v487 < v470 && v488 == v472)
          {
            v385[v345] = v487;
            v389[-v345] = v470;
            v489 = v385[v345];
            v490 = *v385;
            v491 = *(v388 + 8 * v344 * v489);
            v492 = *(v388 + 8 * v344 * v490);
            if (v491 < v492 || v489 < v490 && v491 == v492)
            {
              *v385 = v489;
              v385[v345] = v490;
            }
          }

          goto LABEL_425;
        }

        v474 = v389[-v345];
        v475 = *(v388 + 8 * v344 * v474);
        if (v475 < v472 || v474 < v470 && v475 == v472)
        {
          *v385 = v474;
        }

        else
        {
          *v385 = v470;
          v385[v345] = v471;
          v493 = v389[-v345];
          v494 = *(v388 + 8 * v344 * v493);
          if (v494 >= v473 && (v493 >= v471 || v494 != v473))
          {
            goto LABEL_425;
          }

          v385[v345] = v493;
        }

        v389[-v345] = v471;
LABEL_425:
        if (v2456 <= ++v348)
        {
          goto LABEL_2869;
        }
      }

    case 5:
      v1478 = *(this + 8);
      if (v1478 < 0)
      {
        v1478 += (v1[1] - *v1) >> 2;
      }

      v1479 = *(this + 9);
      v1480 = v1[6];
      v1481 = mlx::core::array::shape(this, v1478);
      v1482 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v1482, v1482[1], (v1482[1] - *v1482) >> 2);
      v1483 = &v2524[4 * v1478];
      v1484 = v2525 - (v1483 + 4);
      if (v2525 != v1483 + 4)
      {
        memmove(&v2524[4 * v1478], v1483 + 4, v2525 - (v1483 + 4));
      }

      v2525 = &v1483[v1484];
      v1485 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v1485 + 24), *(v1485 + 32), (*(v1485 + 32) - *(v1485 + 24)) >> 3);
      v1486 = v1478;
      v1487 = &v2521[8 * v1478];
      v1488 = v2522 - (v1487 + 8);
      if (v2522 != v1487 + 8)
      {
        memmove(&v2521[8 * v1478], v1487 + 8, v2522 - (v1487 + 8));
      }

      v2522 = &v1487[v1488];
      v1489 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v1489, v1489[1], (v1489[1] - *v1489) >> 2);
      v1490 = 4 * v1478;
      v1491 = &v2518[v1490];
      v1492 = v2519 - &v2518[v1490 + 4];
      if (v2519 != &v2518[v1490 + 4])
      {
        memmove(&v2518[v1490], &v2518[v1490 + 4], v2519 - (v1491 + 4));
      }

      v2519 = &v1491[v1492];
      v1493 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v1493 + 24), *(v1493 + 32), (*(v1493 + 32) - *(v1493 + 24)) >> 3);
      v1494 = &v2515[8 * v1486];
      v1495 = v2516 - (v1494 + 8);
      if (v2516 != v1494 + 8)
      {
        memmove(&v2515[8 * v1486], v1494 + 8, v2516 - (v1494 + 8));
      }

      v2516 = &v1494[v1495];
      v1496 = *(*(*this + 24) + 8 * v1486);
      v1497 = *(*(*(this + 2) + 24) + 8 * v1486);
      v1498 = mlx::core::array::shape(this, v1486);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v1499 = v1481;
      if (v1480 < v1481)
      {
        goto LABEL_2666;
      }

      v1500 = 0;
      v2476 = v2508;
      v1501 = v2511;
      v1502 = (v2510 - v2509) >> 2;
      v1503 = (v1498 & (v1479 >> 31)) + v1479;
      v2354 = *(*this + 152);
      v1504 = *(*(this + 2) + 152);
      v1505 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v1506 = v2501;
      v1507 = v2504;
      v1508 = (v2503 - v2502) >> 2;
      v2318 = (v1508 & 0x7FFFFFFF) - 1;
      v1509 = v1497 * v1498;
      v2463 = v1497 * v1503;
      v1510 = 4 * (v1502 & 0x7FFFFFFF);
      v2309 = v2509 - 8;
      v1511 = 4 * (v1508 & 0x7FFFFFFF);
      v2301 = v2502 - 8;
      v1512 = 4 * v1509;
      v2338 = v2513;
      v2347 = v2506;
      v1513 = v2513 + 4 * v1505;
      v2399 = v2509 + 4 * v1505;
      v2411 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v1514 = &v2506[4 * v2411];
      v2377 = v1508;
      v2386 = v2502 + 4 * v2411;
      v2425 = v1480 / v1499;
      v2439 = v1514;
      v1515 = 4 * v1497;
      v2366 = v1509;
      v2450 = v1513;
      while (1)
      {
        v1516 = v1506;
        v1517 = v2476;
        if (v1502)
        {
          v1518 = *v1513;
          if (v1502 < 2)
          {
            v1519 = v2476;
            v1520 = v1505;
            v1521 = v1513;
          }

          else
          {
            v1519 = v2476;
            v1520 = v1505;
            v1521 = v1513;
            if (v1518 == *v2399 - 1)
            {
              v1520 = (v1502 & 0x7FFFFFFF) - 1;
              v1522 = v2338;
              v1523 = v2309;
              v1519 = v2476;
              v1524 = v2399;
              v1525 = v1513;
              v1526 = v1505;
              do
              {
                v1527 = v1520;
                *v1525 = 0;
                v1519 -= v1501[v1526] * (*v1524 - 1);
                v2508 = v1519;
                --v1520;
                v1525 = &v1522[v1510 - 8];
                v1518 = *v1525;
                v1522 -= 4;
                if (v1527 < 2)
                {
                  break;
                }

                v1524 = &v1523[v1510];
                v1528 = *&v1523[4 * (v1502 & 0x7FFFFFFF)] - 1;
                v1523 -= 4;
                v1526 = v1520;
              }

              while (v1518 == v1528);
              v1521 = &v1522[v1510 - 4];
              LODWORD(v1508) = v2377;
            }
          }

          *v1521 = v1518 + 1;
          v2476 = v1501[v1520] + v1519;
          v2508 = v2476;
        }

        v1529 = v1516;
        if (v1508)
        {
          v1530 = *v1514;
          if (v1508 < 2)
          {
            v1531 = v1516;
            v1532 = v2411;
            v1533 = v1514;
          }

          else
          {
            v1531 = v1516;
            v1532 = v2411;
            v1533 = v1514;
            if (v1530 == *v2386 - 1)
            {
              v1534 = v2347;
              v1535 = v2301;
              v1532 = v2318;
              v1531 = v1516;
              v1536 = v2386;
              v1537 = v1514;
              v1538 = v2411;
              do
              {
                v1539 = v1532;
                *v1537 = 0;
                v1531 -= v1507[v1538] * (*v1536 - 1);
                v2501 = v1531;
                --v1532;
                v1537 = &v1534[v1511 - 8];
                v1530 = *v1537;
                v1534 -= 4;
                if (v1539 < 2)
                {
                  break;
                }

                v1536 = &v1535[v1511];
                v1540 = *&v1535[v1511] - 1;
                v1535 -= 4;
                v1538 = v1532;
              }

              while (v1530 == v1540);
              v1533 = &v1534[v1511 - 4];
              v1509 = v2366;
            }
          }

          *v1533 = v1530 + 1;
          v1529 = v1507[v1532] + v1531;
          v2501 = v1529;
        }

        v2497 = v1529;
        v1541 = (v1504 + 4 * v1516);
        if (v1509)
        {
          v1542 = 0;
          v1543 = 0;
          do
          {
            *(v1541 + v1542) = v1543++;
            v1542 += v1515;
          }

          while (v1512 != v1542);
        }

        if (v2463 == v1509)
        {
          goto LABEL_1837;
        }

        v1544 = v2354 + v1517;
        v1545 = &v1541[v1509];
        v1546 = &v1541[v2463];
        while (1)
        {
          v1547 = (v1545 - v1541) / v1497;
          if (v1547 < 2)
          {
            goto LABEL_1837;
          }

          if (v1547 == 3)
          {
            break;
          }

          if (v1547 == 2)
          {
            v1613 = v1545[-v1497];
            v1614 = *v1541;
            v1615 = *(v1544 + v1496 * v1613);
            v1616 = *(v1544 + v1496 * v1614);
            if (v1615 < v1616 || v1613 < v1614 && v1615 == v1616)
            {
              *v1541 = v1613;
              v1545[-v1497] = v1614;
            }

            goto LABEL_1837;
          }

          if (v1547 <= 7)
          {
            v1621 = &v1545[-v1497];
            if (v1621 != v1541)
            {
              v1622 = &v1541[v1515 / 4];
              do
              {
                v1623 = &v1541[v1497];
                if (v1545 != v1541 && v1623 != v1545)
                {
                  v1624 = v1622;
                  v1625 = v1541;
                  do
                  {
                    v1626 = *v1624;
                    v1627 = *v1625;
                    v1628 = *(v1544 + v1496 * v1626);
                    v1629 = *(v1544 + v1496 * v1627);
                    if (v1628 < v1629 || (v1626 < v1627 ? (v1630 = v1628 == v1629) : (v1630 = 0), v1630))
                    {
                      v1625 = v1624;
                    }

                    v1624 = (v1624 + v1515);
                  }

                  while (v1624 != v1545);
                  if (v1625 != v1541)
                  {
                    v1631 = *v1541;
                    *v1541 = *v1625;
                    *v1625 = v1631;
                  }
                }

                v1622 = (v1622 + v1515);
                v1541 += v1497;
              }

              while (v1623 != v1621);
            }

            goto LABEL_1837;
          }

          v1548 = &v1541[((v1547 >> 1) & 0x3FFFFFFF) * v1497];
          v1549 = &v1545[-v1497];
          v1550 = *v1548;
          v1551 = *v1541;
          v1552 = *(v1544 + v1496 * v1550);
          if (*(v1544 + v1496 * v1550) >= *(v1544 + v1496 * v1551) && (v1550 >= v1551 || v1552 != *(v1544 + v1496 * v1551)))
          {
            v1554 = *v1549;
            if (*(v1544 + v1496 * v1554) >= v1552 && (v1554 >= v1550 || *(v1544 + v1496 * v1554) != v1552))
            {
              v1556 = 0;
              goto LABEL_1867;
            }

            *v1548 = v1554;
            *v1549 = v1550;
            v1598 = *v1548;
            v1599 = *v1541;
            v1600 = *(v1544 + v1496 * v1598);
            v1601 = *(v1544 + v1496 * v1599);
            if (v1600 < v1601 || (v1598 < v1599 ? (v1602 = v1600 == v1601) : (v1602 = 0), v1602))
            {
              *v1541 = v1598;
              *v1548 = v1599;
            }

            goto LABEL_1866;
          }

          v1557 = *v1549;
          if (*(v1544 + v1496 * v1557) < v1552 || (v1557 < v1550 ? (v1558 = *(v1544 + v1496 * v1557) == v1552) : (v1558 = 0), v1558))
          {
            *v1541 = v1557;
            goto LABEL_1865;
          }

          *v1541 = v1550;
          *v1548 = v1551;
          v1559 = *v1549;
          v1560 = *(v1544 + v1496 * v1559);
          v1561 = *(v1544 + v1496 * v1551);
          if (v1560 < v1561 || (v1556 = 1, v1559 < v1551) && v1560 == v1561)
          {
            *v1548 = v1559;
LABEL_1865:
            *v1549 = v1551;
LABEL_1866:
            v1556 = 1;
          }

LABEL_1867:
          v1562 = *v1541;
          v1563 = *v1548;
          v1564 = &v1541[v1497];
          if (*(v1544 + v1496 * v1562) < *(v1544 + v1496 * v1563) || ((v1565 = *(v1544 + v1496 * v1562), v1566 = *(v1544 + v1496 * v1563), v1562 < v1563) ? (v1567 = v1565 == v1566) : (v1567 = 0), v1567))
          {
            v1571 = &v1545[-v1497];
            goto LABEL_1885;
          }

          v1568 = v1505;
          v1569 = v1504;
          v1570 = &v1545[-2 * v1497];
          while (v1570 != v1541)
          {
            v1571 = v1570;
            v1572 = *v1570;
            if (*(v1544 + v1496 * v1572) >= v1566)
            {
              v1570 -= v1497;
              if (v1572 >= v1563 || *(v1544 + v1496 * v1572) != v1566)
              {
                continue;
              }
            }

            *v1541 = v1572;
            *v1571 = v1562;
            if (v1556)
            {
              v1556 = 2;
            }

            else
            {
              v1556 = 1;
            }

            v1504 = v1569;
            v1505 = v1568;
            v1509 = v2366;
            LODWORD(v1508) = v2377;
LABEL_1885:
            if (v1564 < v1571)
            {
              while (1)
              {
                v1574 = *v1548;
                v1575 = *(v1544 + v1496 * v1574);
                while (1)
                {
                  v1576 = *v1564;
                  if (*(v1544 + v1496 * v1576) >= v1575 && (v1576 >= v1574 || *(v1544 + v1496 * v1576) != v1575))
                  {
                    break;
                  }

                  v1564 = (v1564 + v1515);
                }

                v1578 = &v1571[-v1497];
                do
                {
                  v1571 = v1578;
                  v1579 = *v1578;
                  if (*(v1544 + v1496 * v1579) < v1575)
                  {
                    break;
                  }

                  v1578 -= v1497;
                }

                while (v1579 >= v1574 || *(v1544 + v1496 * v1579) != v1575);
                if (v1564 >= v1571)
                {
                  break;
                }

                *v1564 = v1579;
                *v1571 = v1576;
                ++v1556;
                if (v1564 == v1548)
                {
                  v1548 = v1571;
                }

                v1564 = (v1564 + v1515);
              }
            }

            if (v1564 != v1548)
            {
              v1581 = *v1548;
              v1582 = *v1564;
              v1583 = *(v1544 + v1496 * v1581);
              v1584 = *(v1544 + v1496 * v1582);
              if (v1583 < v1584 || v1581 < v1582 && v1583 == v1584)
              {
                *v1564 = v1581;
                *v1548 = v1582;
                ++v1556;
              }
            }

            if (v1564 != v1546)
            {
              if (v1556)
              {
LABEL_1911:
                if (v1564 <= v1546)
                {
                  v1585 = &v1564[v1497];
                }

                else
                {
                  v1545 = v1564;
                  v1585 = v1541;
                }

                goto LABEL_1914;
              }

              v1586 = v1564;
              if (v1564 <= v1546)
              {
                while (&v1586[v1515 / 4] != v1545)
                {
                  v1593 = v1586[v1497];
                  v1594 = *v1586;
                  v1595 = *(v1544 + v1496 * v1593);
                  v1596 = *(v1544 + v1496 * v1594);
                  if (v1595 >= v1596)
                  {
                    v1586 = (v1586 + v1515);
                    if (v1593 >= v1594 || v1595 != v1596)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1911;
                }
              }

              else
              {
                v1587 = v1541;
                while (&v1587[v1515 / 4] != v1564)
                {
                  v1588 = v1587[v1497];
                  v1589 = *v1587;
                  v1590 = *(v1544 + v1496 * v1588);
                  v1591 = *(v1544 + v1496 * v1589);
                  if (v1590 >= v1591)
                  {
                    v1587 = (v1587 + v1515);
                    if (v1588 >= v1589 || v1590 != v1591)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1911;
                }
              }
            }

            goto LABEL_1837;
          }

          v1603 = *v1549;
          if (*(v1544 + v1496 * v1603) <= v1565)
          {
            v1604 = v1562 < v1603 && v1565 == *(v1544 + v1496 * v1603);
            v1504 = v1569;
            if (!v1604)
            {
              v1505 = v1568;
              v1509 = v2366;
              LODWORD(v1508) = v2377;
              if (v1564 == v1549)
              {
                goto LABEL_1837;
              }

              v1585 = &v1541[2 * v1497];
              while (1)
              {
                v1605 = *v1564;
                if (*(v1544 + v1496 * v1605) > v1565)
                {
                  break;
                }

                if (v1562 < v1605 && v1565 == *(v1544 + v1496 * v1605))
                {
                  break;
                }

                v1585 = (v1585 + v1515);
                v1564 = (v1564 + v1515);
                if (v1564 == v1549)
                {
                  goto LABEL_1837;
                }
              }

              *v1564 = v1603;
              *v1549 = v1605;
              goto LABEL_1958;
            }

            v1585 = &v1541[v1497];
          }

          else
          {
            v1585 = &v1541[v1497];
            v1504 = v1569;
          }

          v1505 = v1568;
          v1509 = v2366;
          LODWORD(v1508) = v2377;
LABEL_1958:
          if (v1585 == v1549)
          {
            goto LABEL_1837;
          }

          while (1)
          {
            v1607 = *v1541;
            v1608 = *(v1544 + v1496 * v1607);
            v1609 = *v1585;
            if (*(v1544 + v1496 * v1607) >= *(v1544 + v1496 * v1609))
            {
              v1610 = *(v1544 + v1496 * v1609);
              do
              {
                if (v1608 == v1610 && v1607 < v1609)
                {
                  break;
                }

                v1585 = (v1585 + v1515);
                v1609 = *v1585;
                v1610 = *(v1544 + v1496 * v1609);
              }

              while (*(v1544 + v1496 * v1609) <= v1608);
            }

            do
            {
              do
              {
                v1549 -= v1497;
                v1611 = *v1549;
              }

              while (*(v1544 + v1496 * v1611) > v1608);
            }

            while (v1607 < v1611 && v1608 == *(v1544 + v1496 * v1611));
            if (v1585 >= v1549)
            {
              break;
            }

            *v1585 = v1611;
            *v1549 = v1609;
            v1585 += v1497;
          }

          if (v1585 > v1546)
          {
            goto LABEL_1837;
          }

LABEL_1914:
          v1541 = v1585;
          if (v1545 == v1546)
          {
            goto LABEL_1837;
          }
        }

        v1617 = v1541[v1497];
        v1618 = *v1541;
        v1619 = *(v1544 + v1496 * v1617);
        if (*(v1544 + v1496 * v1617) >= *(v1544 + v1496 * v1618) && (v1617 >= v1618 || v1619 != *(v1544 + v1496 * v1618)))
        {
          v1632 = v1545[-v1497];
          if (*(v1544 + v1496 * v1632) < v1619 || v1632 < v1617 && *(v1544 + v1496 * v1632) == v1619)
          {
            v1541[v1497] = v1632;
            v1545[-v1497] = v1617;
            v1633 = v1541[v1497];
            v1634 = *v1541;
            v1635 = *(v1544 + v1496 * v1633);
            v1636 = *(v1544 + v1496 * v1634);
            if (v1635 < v1636 || v1633 < v1634 && v1635 == v1636)
            {
              *v1541 = v1633;
              v1541[v1497] = v1634;
            }
          }

          goto LABEL_1837;
        }

        v1620 = v1545[-v1497];
        if (*(v1544 + v1496 * v1620) < v1619 || v1620 < v1617 && *(v1544 + v1496 * v1620) == v1619)
        {
          *v1541 = v1620;
        }

        else
        {
          *v1541 = v1617;
          v1541[v1497] = v1618;
          v1637 = v1545[-v1497];
          v1638 = *(v1544 + v1496 * v1637);
          v1639 = *(v1544 + v1496 * v1618);
          if (v1638 >= v1639 && (v1637 >= v1618 || v1638 != v1639))
          {
            goto LABEL_1837;
          }

          v1541[v1497] = v1637;
        }

        v1545[-v1497] = v1618;
LABEL_1837:
        ++v1500;
        v1514 = v2439;
        v1513 = v2450;
        v1506 = v2497;
        if (v2425 <= v1500)
        {
          goto LABEL_2479;
        }
      }

    case 6:
      v1817 = *(this + 8);
      if (v1817 < 0)
      {
        v1817 += (v1[1] - *v1) >> 2;
      }

      v1818 = *(this + 9);
      v1819 = v1[6];
      v1820 = mlx::core::array::shape(this, v1817);
      v1821 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v1821, v1821[1], (v1821[1] - *v1821) >> 2);
      v1822 = &v2524[4 * v1817];
      v1823 = v2525 - (v1822 + 4);
      if (v2525 != v1822 + 4)
      {
        memmove(&v2524[4 * v1817], v1822 + 4, v2525 - (v1822 + 4));
      }

      v2525 = &v1822[v1823];
      v1824 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v1824 + 24), *(v1824 + 32), (*(v1824 + 32) - *(v1824 + 24)) >> 3);
      v1825 = v1817;
      v1826 = &v2521[8 * v1817];
      v1827 = v2522 - (v1826 + 8);
      if (v2522 != v1826 + 8)
      {
        memmove(&v2521[8 * v1817], v1826 + 8, v2522 - (v1826 + 8));
      }

      v2522 = &v1826[v1827];
      v1828 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v1828, v1828[1], (v1828[1] - *v1828) >> 2);
      v1829 = 4 * v1817;
      v1830 = &v2518[v1829];
      v1831 = v2519 - &v2518[v1829 + 4];
      if (v2519 != &v2518[v1829 + 4])
      {
        memmove(&v2518[v1829], &v2518[v1829 + 4], v2519 - (v1830 + 4));
      }

      v2519 = &v1830[v1831];
      v1832 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v1832 + 24), *(v1832 + 32), (*(v1832 + 32) - *(v1832 + 24)) >> 3);
      v1833 = &v2515[8 * v1825];
      v1834 = v2516 - (v1833 + 8);
      if (v2516 != v1833 + 8)
      {
        memmove(&v2515[8 * v1825], v1833 + 8, v2516 - (v1833 + 8));
      }

      v2516 = &v1833[v1834];
      v1835 = *(*(*this + 24) + 8 * v1825);
      v1836 = *(*(*(this + 2) + 24) + 8 * v1825);
      v1837 = mlx::core::array::shape(this, v1825);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v1838 = v1820;
      if (v1819 < v1820)
      {
        goto LABEL_2666;
      }

      v1839 = 0;
      v2478 = v2508;
      v1840 = v2511;
      v1841 = (v2510 - v2509) >> 2;
      v1842 = (v1837 & (v1818 >> 31)) + v1818;
      v2355 = *(*this + 152);
      v1843 = *(*(this + 2) + 152);
      v1844 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v1845 = v2501;
      v1846 = v2504;
      v1847 = (v2503 - v2502) >> 2;
      v2319 = (v1847 & 0x7FFFFFFF) - 1;
      v1848 = v1836 * v1837;
      v2464 = v1836 * v1842;
      v1849 = 4 * (v1841 & 0x7FFFFFFF);
      v2310 = v2509 - 8;
      v1850 = 4 * (v1847 & 0x7FFFFFFF);
      v2302 = v2502 - 8;
      v1851 = 4 * v1848;
      v2339 = v2513;
      v2347 = v2506;
      v1852 = v2513 + 4 * v1844;
      v2400 = v2509 + 4 * v1844;
      v2413 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v1853 = &v2506[4 * v2413];
      v2378 = v1847;
      v2387 = v2502 + 4 * v2413;
      v2427 = v1819 / v1838;
      v2441 = v1853;
      v1854 = 4 * v1836;
      v2367 = v1848;
      v2452 = v1852;
      while (1)
      {
        v1855 = v1845;
        v1856 = v2478;
        if (v1841)
        {
          v1857 = *v1852;
          if (v1841 < 2)
          {
            v1858 = v2478;
            v1859 = v1844;
            v1860 = v1852;
          }

          else
          {
            v1858 = v2478;
            v1859 = v1844;
            v1860 = v1852;
            if (v1857 == *v2400 - 1)
            {
              v1859 = (v1841 & 0x7FFFFFFF) - 1;
              v1861 = v2339;
              v1862 = v2310;
              v1858 = v2478;
              v1863 = v2400;
              v1864 = v1852;
              v1865 = v1844;
              do
              {
                v1866 = v1859;
                *v1864 = 0;
                v1858 -= v1840[v1865] * (*v1863 - 1);
                v2508 = v1858;
                --v1859;
                v1864 = &v1861[v1849 - 8];
                v1857 = *v1864;
                v1861 -= 4;
                if (v1866 < 2)
                {
                  break;
                }

                v1863 = &v1862[v1849];
                v1867 = *&v1862[4 * (v1841 & 0x7FFFFFFF)] - 1;
                v1862 -= 4;
                v1865 = v1859;
              }

              while (v1857 == v1867);
              v1860 = &v1861[v1849 - 4];
              LODWORD(v1847) = v2378;
            }
          }

          *v1860 = v1857 + 1;
          v2478 = v1840[v1859] + v1858;
          v2508 = v2478;
        }

        v1868 = v1855;
        if (v1847)
        {
          v1869 = *v1853;
          if (v1847 < 2)
          {
            v1870 = v1855;
            v1871 = v2413;
            v1872 = v1853;
          }

          else
          {
            v1870 = v1855;
            v1871 = v2413;
            v1872 = v1853;
            if (v1869 == *v2387 - 1)
            {
              v1873 = v2347;
              v1874 = v2302;
              v1871 = v2319;
              v1870 = v1855;
              v1875 = v2387;
              v1876 = v1853;
              v1877 = v2413;
              do
              {
                v1878 = v1871;
                *v1876 = 0;
                v1870 -= v1846[v1877] * (*v1875 - 1);
                v2501 = v1870;
                --v1871;
                v1876 = &v1873[v1850 - 8];
                v1869 = *v1876;
                v1873 -= 4;
                if (v1878 < 2)
                {
                  break;
                }

                v1875 = &v1874[v1850];
                v1879 = *&v1874[v1850] - 1;
                v1874 -= 4;
                v1877 = v1871;
              }

              while (v1869 == v1879);
              v1872 = &v1873[v1850 - 4];
              v1848 = v2367;
            }
          }

          *v1872 = v1869 + 1;
          v1868 = v1846[v1871] + v1870;
          v2501 = v1868;
        }

        v2499 = v1868;
        v1880 = (v1843 + 4 * v1855);
        if (v1848)
        {
          v1881 = 0;
          v1882 = 0;
          do
          {
            *(v1880 + v1881) = v1882++;
            v1881 += v1854;
          }

          while (v1851 != v1881);
        }

        if (v2464 == v1848)
        {
          goto LABEL_2302;
        }

        v1883 = v2355 + 2 * v1856;
        v1884 = &v1880[v1848];
        v1885 = &v1880[v2464];
        while (1)
        {
          v1886 = (v1884 - v1880) / v1836;
          if (v1886 < 2)
          {
            goto LABEL_2302;
          }

          if (v1886 == 3)
          {
            break;
          }

          if (v1886 == 2)
          {
            v1951 = v1884[-v1836];
            v1952 = *v1880;
            v1953 = *(v1883 + 2 * v1835 * v1951);
            v1954 = *(v1883 + 2 * v1835 * v1952);
            if (v1953 < v1954 || v1951 < v1952 && v1953 == v1954)
            {
              *v1880 = v1951;
              v1884[-v1836] = v1952;
            }

            goto LABEL_2302;
          }

          if (v1886 <= 7)
          {
            v1960 = &v1884[-v1836];
            if (v1960 != v1880)
            {
              v1961 = &v1880[v1854 / 4];
              do
              {
                v1962 = &v1880[v1836];
                if (v1884 != v1880 && v1962 != v1884)
                {
                  v1963 = v1961;
                  v1964 = v1880;
                  do
                  {
                    v1965 = *v1963;
                    v1966 = *v1964;
                    v1967 = *(v1883 + 2 * v1835 * v1965);
                    v1968 = *(v1883 + 2 * v1835 * v1966);
                    if (v1967 < v1968 || (v1965 < v1966 ? (v1969 = v1967 == v1968) : (v1969 = 0), v1969))
                    {
                      v1964 = v1963;
                    }

                    v1963 = (v1963 + v1854);
                  }

                  while (v1963 != v1884);
                  if (v1964 != v1880)
                  {
                    v1970 = *v1880;
                    *v1880 = *v1964;
                    *v1964 = v1970;
                  }
                }

                v1961 = (v1961 + v1854);
                v1880 += v1836;
              }

              while (v1962 != v1960);
            }

            goto LABEL_2302;
          }

          v1887 = &v1880[((v1886 >> 1) & 0x3FFFFFFF) * v1836];
          v1888 = &v1884[-v1836];
          v1889 = *v1887;
          v1890 = *v1880;
          v1891 = *(v1883 + 2 * v1835 * v1889);
          v1892 = *(v1883 + 2 * v1835 * v1890);
          if (*(v1883 + 2 * v1835 * v1889) >= *(v1883 + 2 * v1835 * v1890) && (v1889 >= v1890 || v1891 != v1892))
          {
            v1894 = *v1888;
            if (*(v1883 + 2 * v1835 * v1894) >= v1891 && (v1894 >= v1889 || *(v1883 + 2 * v1835 * v1894) != v1891))
            {
              v1896 = 0;
              goto LABEL_2332;
            }

            *v1887 = v1894;
            *v1888 = v1889;
            v1936 = *v1887;
            v1937 = *v1880;
            v1938 = *(v1883 + 2 * v1835 * v1936);
            v1939 = *(v1883 + 2 * v1835 * v1937);
            if (v1938 < v1939 || (v1936 < v1937 ? (v1940 = v1938 == v1939) : (v1940 = 0), v1940))
            {
              *v1880 = v1936;
              *v1887 = v1937;
            }

            goto LABEL_2331;
          }

          v1897 = *v1888;
          if (*(v1883 + 2 * v1835 * v1897) < v1891 || (v1897 < v1889 ? (v1898 = *(v1883 + 2 * v1835 * v1897) == v1891) : (v1898 = 0), v1898))
          {
            *v1880 = v1897;
            goto LABEL_2330;
          }

          *v1880 = v1889;
          *v1887 = v1890;
          v1899 = *v1888;
          if (*(v1883 + 2 * v1835 * v1899) < v1892 || (v1896 = 1, v1899 < v1890) && *(v1883 + 2 * v1835 * v1899) == v1892)
          {
            *v1887 = v1899;
LABEL_2330:
            *v1888 = v1890;
LABEL_2331:
            v1896 = 1;
          }

LABEL_2332:
          v1900 = *v1880;
          v1901 = *v1887;
          v1902 = &v1880[v1836];
          if (*(v1883 + 2 * v1835 * v1900) < *(v1883 + 2 * v1835 * v1901) || ((v1903 = *(v1883 + 2 * v1835 * v1900), v1904 = *(v1883 + 2 * v1835 * v1901), v1900 < v1901) ? (v1905 = v1903 == v1904) : (v1905 = 0), v1905))
          {
            v1909 = &v1884[-v1836];
            goto LABEL_2350;
          }

          v1906 = v1844;
          v1907 = v1843;
          v1908 = &v1884[-2 * v1836];
          while (v1908 != v1880)
          {
            v1909 = v1908;
            v1910 = *v1908;
            if (*(v1883 + 2 * v1835 * v1910) >= v1904)
            {
              v1908 -= v1836;
              if (v1910 >= v1901 || *(v1883 + 2 * v1835 * v1910) != v1904)
              {
                continue;
              }
            }

            *v1880 = v1910;
            *v1909 = v1900;
            if (v1896)
            {
              v1896 = 2;
            }

            else
            {
              v1896 = 1;
            }

            v1843 = v1907;
            v1844 = v1906;
            v1848 = v2367;
            LODWORD(v1847) = v2378;
LABEL_2350:
            if (v1902 < v1909)
            {
              while (1)
              {
                v1912 = *v1887;
                v1913 = *(v1883 + 2 * v1835 * v1912);
                while (1)
                {
                  v1914 = *v1902;
                  if (*(v1883 + 2 * v1835 * v1914) >= v1913 && (v1914 >= v1912 || *(v1883 + 2 * v1835 * v1914) != v1913))
                  {
                    break;
                  }

                  v1902 = (v1902 + v1854);
                }

                v1916 = &v1909[-v1836];
                do
                {
                  v1909 = v1916;
                  v1917 = *v1916;
                  if (*(v1883 + 2 * v1835 * v1917) < v1913)
                  {
                    break;
                  }

                  v1916 -= v1836;
                }

                while (v1917 >= v1912 || *(v1883 + 2 * v1835 * v1917) != v1913);
                if (v1902 >= v1909)
                {
                  break;
                }

                *v1902 = v1917;
                *v1909 = v1914;
                ++v1896;
                if (v1902 == v1887)
                {
                  v1887 = v1909;
                }

                v1902 = (v1902 + v1854);
              }
            }

            if (v1902 != v1887)
            {
              v1919 = *v1887;
              v1920 = *v1902;
              v1921 = *(v1883 + 2 * v1835 * v1919);
              v1922 = *(v1883 + 2 * v1835 * v1920);
              if (v1921 < v1922 || v1919 < v1920 && v1921 == v1922)
              {
                *v1902 = v1919;
                *v1887 = v1920;
                ++v1896;
              }
            }

            if (v1902 != v1885)
            {
              if (v1896)
              {
LABEL_2376:
                if (v1902 <= v1885)
                {
                  v1923 = &v1902[v1836];
                }

                else
                {
                  v1884 = v1902;
                  v1923 = v1880;
                }

                goto LABEL_2379;
              }

              v1924 = v1902;
              if (v1902 <= v1885)
              {
                while (&v1924[v1854 / 4] != v1884)
                {
                  v1931 = v1924[v1836];
                  v1932 = *v1924;
                  v1933 = *(v1883 + 2 * v1835 * v1931);
                  v1934 = *(v1883 + 2 * v1835 * v1932);
                  if (v1933 >= v1934)
                  {
                    v1924 = (v1924 + v1854);
                    if (v1931 >= v1932 || v1933 != v1934)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2376;
                }
              }

              else
              {
                v1925 = v1880;
                while (&v1925[v1854 / 4] != v1902)
                {
                  v1926 = v1925[v1836];
                  v1927 = *v1925;
                  v1928 = *(v1883 + 2 * v1835 * v1926);
                  v1929 = *(v1883 + 2 * v1835 * v1927);
                  if (v1928 >= v1929)
                  {
                    v1925 = (v1925 + v1854);
                    if (v1926 >= v1927 || v1928 != v1929)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2376;
                }
              }
            }

            goto LABEL_2302;
          }

          v1941 = *v1888;
          if (*(v1883 + 2 * v1835 * v1941) <= v1903)
          {
            v1942 = v1900 < v1941 && v1903 == *(v1883 + 2 * v1835 * v1941);
            v1843 = v1907;
            if (!v1942)
            {
              v1844 = v1906;
              v1848 = v2367;
              LODWORD(v1847) = v2378;
              if (v1902 == v1888)
              {
                goto LABEL_2302;
              }

              v1923 = &v1880[2 * v1836];
              while (1)
              {
                v1943 = *v1902;
                if (*(v1883 + 2 * v1835 * v1943) > v1903)
                {
                  break;
                }

                if (v1900 < v1943 && v1903 == *(v1883 + 2 * v1835 * v1943))
                {
                  break;
                }

                v1923 = (v1923 + v1854);
                v1902 = (v1902 + v1854);
                if (v1902 == v1888)
                {
                  goto LABEL_2302;
                }
              }

              *v1902 = v1941;
              *v1888 = v1943;
              goto LABEL_2423;
            }

            v1923 = &v1880[v1836];
          }

          else
          {
            v1923 = &v1880[v1836];
            v1843 = v1907;
          }

          v1844 = v1906;
          v1848 = v2367;
          LODWORD(v1847) = v2378;
LABEL_2423:
          if (v1923 == v1888)
          {
            goto LABEL_2302;
          }

          while (1)
          {
            v1945 = *v1880;
            v1946 = *(v1883 + 2 * v1835 * v1945);
            v1947 = *v1923;
            if (*(v1883 + 2 * v1835 * v1945) >= *(v1883 + 2 * v1835 * v1947))
            {
              v1948 = *(v1883 + 2 * v1835 * v1947);
              do
              {
                if (v1946 == v1948 && v1945 < v1947)
                {
                  break;
                }

                v1923 = (v1923 + v1854);
                v1947 = *v1923;
                v1948 = *(v1883 + 2 * v1835 * v1947);
              }

              while (*(v1883 + 2 * v1835 * v1947) <= v1946);
            }

            do
            {
              do
              {
                v1888 -= v1836;
                v1949 = *v1888;
              }

              while (*(v1883 + 2 * v1835 * v1949) > v1946);
            }

            while (v1945 < v1949 && v1946 == *(v1883 + 2 * v1835 * v1949));
            if (v1923 >= v1888)
            {
              break;
            }

            *v1923 = v1949;
            *v1888 = v1947;
            v1923 += v1836;
          }

          if (v1923 > v1885)
          {
            goto LABEL_2302;
          }

LABEL_2379:
          v1880 = v1923;
          if (v1884 == v1885)
          {
            goto LABEL_2302;
          }
        }

        v1955 = v1880[v1836];
        v1956 = *v1880;
        v1957 = *(v1883 + 2 * v1835 * v1955);
        v1958 = *(v1883 + 2 * v1835 * v1956);
        if (*(v1883 + 2 * v1835 * v1955) >= *(v1883 + 2 * v1835 * v1956) && (v1955 >= v1956 || v1957 != v1958))
        {
          v1971 = v1884[-v1836];
          if (*(v1883 + 2 * v1835 * v1971) < v1957 || v1971 < v1955 && *(v1883 + 2 * v1835 * v1971) == v1957)
          {
            v1880[v1836] = v1971;
            v1884[-v1836] = v1955;
            v1972 = v1880[v1836];
            v1973 = *v1880;
            v1974 = *(v1883 + 2 * v1835 * v1972);
            v1975 = *(v1883 + 2 * v1835 * v1973);
            if (v1974 < v1975 || v1972 < v1973 && v1974 == v1975)
            {
              *v1880 = v1972;
              v1880[v1836] = v1973;
            }
          }

          goto LABEL_2302;
        }

        v1959 = v1884[-v1836];
        if (*(v1883 + 2 * v1835 * v1959) < v1957 || v1959 < v1955 && *(v1883 + 2 * v1835 * v1959) == v1957)
        {
          *v1880 = v1959;
        }

        else
        {
          *v1880 = v1955;
          v1880[v1836] = v1956;
          v1976 = v1884[-v1836];
          v1977 = *(v1883 + 2 * v1835 * v1976);
          if (v1977 >= v1958 && (v1976 >= v1956 || v1977 != v1958))
          {
            goto LABEL_2302;
          }

          v1880[v1836] = v1976;
        }

        v1884[-v1836] = v1956;
LABEL_2302:
        ++v1839;
        v1853 = v2441;
        v1852 = v2452;
        v1845 = v2499;
        if (v2427 <= v1839)
        {
          goto LABEL_2479;
        }
      }

    case 7:
      v1140 = *(this + 8);
      if (v1140 < 0)
      {
        v1140 += (v1[1] - *v1) >> 2;
      }

      v1141 = *(this + 9);
      v1142 = v1[6];
      v1143 = mlx::core::array::shape(this, v1140);
      v1144 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v1144, v1144[1], (v1144[1] - *v1144) >> 2);
      v1145 = &v2524[4 * v1140];
      v1146 = v2525 - (v1145 + 4);
      if (v2525 != v1145 + 4)
      {
        memmove(&v2524[4 * v1140], v1145 + 4, v2525 - (v1145 + 4));
      }

      v2525 = &v1145[v1146];
      v1147 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v1147 + 24), *(v1147 + 32), (*(v1147 + 32) - *(v1147 + 24)) >> 3);
      v1148 = v1140;
      v1149 = &v2521[8 * v1140];
      v1150 = v2522 - (v1149 + 8);
      if (v2522 != v1149 + 8)
      {
        memmove(&v2521[8 * v1140], v1149 + 8, v2522 - (v1149 + 8));
      }

      v2522 = &v1149[v1150];
      v1151 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v1151, v1151[1], (v1151[1] - *v1151) >> 2);
      v1152 = 4 * v1140;
      v1153 = &v2518[v1152];
      v1154 = v2519 - &v2518[v1152 + 4];
      if (v2519 != &v2518[v1152 + 4])
      {
        memmove(&v2518[v1152], &v2518[v1152 + 4], v2519 - (v1153 + 4));
      }

      v2519 = &v1153[v1154];
      v1155 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v1155 + 24), *(v1155 + 32), (*(v1155 + 32) - *(v1155 + 24)) >> 3);
      v1156 = &v2515[8 * v1148];
      v1157 = v2516 - (v1156 + 8);
      if (v2516 != v1156 + 8)
      {
        memmove(&v2515[8 * v1148], v1156 + 8, v2516 - (v1156 + 8));
      }

      v2516 = &v1156[v1157];
      v1158 = *(*(*this + 24) + 8 * v1148);
      v1159 = *(*(*(this + 2) + 24) + 8 * v1148);
      v1160 = mlx::core::array::shape(this, v1148);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v1161 = v1143;
      if (v1142 < v1143)
      {
        goto LABEL_2666;
      }

      v1162 = 0;
      v2488 = v2508;
      v1163 = v2511;
      v1164 = (v1160 & (v1141 >> 31)) + v1141;
      v1165 = (v2510 - v2509) >> 2;
      v2364 = *(*this + 152);
      v1166 = *(*(this + 2) + 152);
      v1167 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v2336 = (v1165 & 0x7FFFFFFF) - 1;
      v1168 = v2501;
      v1169 = v2504;
      v1170 = (v2503 - v2502) >> 2;
      v2325 = (v1170 & 0x7FFFFFFF) - 1;
      v1171 = v1159 * v1160;
      v2474 = v1159 * v1164;
      v1172 = 4 * (v1165 & 0x7FFFFFFF);
      v2316 = v2509 - 8;
      v1173 = 4 * (v1170 & 0x7FFFFFFF);
      v2307 = v2502 - 8;
      v2349 = v2513;
      __p = v2506;
      v2375 = v2513 + 4 * v1167;
      v2384 = v1170;
      v2437 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v2448 = v1167;
      v2409 = v2509 + 4 * v1167;
      v2423 = &v2506[4 * v2437];
      v2397 = v2502 + 4 * v2437;
      v2461 = v1142 / v1161;
      v1174 = 4 * v1159;
      while (1)
      {
        v1175 = v1168;
        v1176 = v2488;
        if (v1165)
        {
          v1177 = v2375;
          v1178 = *v2375;
          if (v1165 < 2)
          {
            v1179 = v2488;
            v1180 = v2448;
            v1181 = v2375;
          }

          else
          {
            v1179 = v2488;
            v1180 = v2448;
            v1181 = v2375;
            if (v1178 == *v2409 - 1)
            {
              v1180 = v2336;
              v1182 = v2349;
              v1183 = v2316;
              v1179 = v2488;
              v1184 = v2409;
              v1185 = v2448;
              do
              {
                v1186 = v1180;
                *v1177 = 0;
                v1179 -= v1163[v1185] * (*v1184 - 1);
                v2508 = v1179;
                --v1180;
                v1177 = &v1182[v1172 - 8];
                v1178 = *v1177;
                v1182 -= 4;
                if (v1186 < 2)
                {
                  break;
                }

                v1184 = &v1183[v1172];
                v1187 = *&v1183[v1172] - 1;
                v1183 -= 4;
                v1185 = v1180;
              }

              while (v1178 == v1187);
              v1181 = &v1182[v1172 - 4];
              LODWORD(v1170) = v2384;
            }
          }

          *v1181 = v1178 + 1;
          v2488 = v1163[v1180] + v1179;
          v2508 = v2488;
        }

        if (v1170)
        {
          v1188 = *v2423;
          if (v1170 < 2)
          {
            v1189 = v1168;
            v1190 = v2437;
            v1191 = v2423;
          }

          else
          {
            v1189 = v1168;
            v1190 = v2437;
            v1191 = v2423;
            if (v1188 == *v2397 - 1)
            {
              v1192 = __p;
              v1193 = v2307;
              v1190 = v2325;
              v1189 = v1168;
              v1194 = v2397;
              v1195 = v2423;
              v1196 = v2437;
              do
              {
                v1197 = v1190;
                *v1195 = 0;
                v1189 -= v1169[v1196] * (*v1194 - 1);
                v2501 = v1189;
                --v1190;
                v1195 = &v1192[v1173 - 8];
                v1188 = *v1195;
                v1192 -= 4;
                if (v1197 < 2)
                {
                  break;
                }

                v1194 = &v1193[v1173];
                v1198 = *&v1193[v1173] - 1;
                v1193 -= 4;
                v1196 = v1190;
              }

              while (v1188 == v1198);
              v1191 = &v1192[v1173 - 4];
            }
          }

          *v1191 = v1188 + 1;
          v1168 = v1169[v1190] + v1189;
          v2501 = v1168;
        }

        v1199 = (v1166 + 4 * v1175);
        if (v1171)
        {
          v1200 = 0;
          v1201 = 0;
          do
          {
            *(v1199 + v1200) = v1201++;
            v1200 += v1174;
          }

          while (4 * v1171 != v1200);
        }

        if (v2474 == v1171)
        {
          goto LABEL_1412;
        }

        v1202 = v2364 + 4 * v1176;
        v1203 = &v1199[v1171];
        v1204 = &v1199[v2474];
        while (1)
        {
          v1205 = (v1203 - v1199) / v1159;
          if (v1205 < 2)
          {
            goto LABEL_1412;
          }

          if (v1205 == 3)
          {
            v1285 = v1199[v1159];
            v1282 = *v1199;
            v1286 = *(v1202 + 4 * v1158 * v1285);
            v1287 = *(v1202 + 4 * v1158 * v1282);
            if (v1286 >= v1287 && (v1285 >= v1282 || v1286 != v1287))
            {
              v1300 = v1203[-v1159];
              v1301 = *(v1202 + 4 * v1158 * v1300);
              if (v1301 < v1286 || v1300 < v1285 && v1301 == v1286)
              {
                v1199[v1159] = v1300;
                v1203[-v1159] = v1285;
                v1302 = v1199[v1159];
                v1303 = *v1199;
                v1304 = *(v1202 + 4 * v1158 * v1302);
                v1305 = *(v1202 + 4 * v1158 * v1303);
                if (v1304 < v1305 || v1302 < v1303 && v1304 == v1305)
                {
                  *v1199 = v1302;
                  v1199[v1159] = v1303;
                }
              }

              goto LABEL_1412;
            }

            v1281 = v1203[-v1159];
            v1288 = *(v1202 + 4 * v1158 * v1281);
            if (v1288 < v1286 || v1281 < v1285 && v1288 == v1286)
            {
              goto LABEL_1560;
            }

            *v1199 = v1285;
            v1199[v1159] = v1282;
            v1306 = v1203[-v1159];
            v1307 = *(v1202 + 4 * v1158 * v1306);
            v1308 = *(v1202 + 4 * v1158 * v1282);
            if (v1307 >= v1308 && (v1306 >= v1282 || v1307 != v1308))
            {
              goto LABEL_1412;
            }

            v1199[v1159] = v1306;
LABEL_1561:
            v1203[-v1159] = v1282;
            goto LABEL_1412;
          }

          if (v1205 == 2)
          {
            v1281 = v1203[-v1159];
            v1282 = *v1199;
            v1283 = *(v1202 + 4 * v1158 * v1281);
            v1284 = *(v1202 + 4 * v1158 * v1282);
            if (v1283 >= v1284 && (v1281 >= v1282 || v1283 != v1284))
            {
              goto LABEL_1412;
            }

LABEL_1560:
            *v1199 = v1281;
            goto LABEL_1561;
          }

          if (v1205 <= 7)
          {
            v1289 = &v1203[-v1159];
            if (v1289 != v1199)
            {
              v1290 = &v1199[v1174 / 4];
              do
              {
                v1291 = &v1199[v1159];
                if (v1203 != v1199 && v1291 != v1203)
                {
                  v1292 = v1290;
                  v1293 = v1199;
                  do
                  {
                    v1294 = *v1292;
                    v1295 = *v1293;
                    v1296 = *(v1202 + 4 * v1158 * v1294);
                    v1297 = *(v1202 + 4 * v1158 * v1295);
                    if (v1296 < v1297 || (v1294 < v1295 ? (v1298 = v1296 == v1297) : (v1298 = 0), v1298))
                    {
                      v1293 = v1292;
                    }

                    v1292 = (v1292 + v1174);
                  }

                  while (v1292 != v1203);
                  if (v1293 != v1199)
                  {
                    v1299 = *v1199;
                    *v1199 = *v1293;
                    *v1293 = v1299;
                  }
                }

                v1290 = (v1290 + v1174);
                v1199 += v1159;
              }

              while (v1291 != v1289);
            }

            goto LABEL_1412;
          }

          v1206 = &v1199[((v1205 >> 1) & 0x3FFFFFFF) * v1159];
          v1207 = &v1203[-v1159];
          v1208 = *v1206;
          v1209 = *v1199;
          v1210 = *(v1202 + 4 * v1158 * v1208);
          v1211 = *(v1202 + 4 * v1158 * v1209);
          if (v1210 >= v1211 && (v1208 >= v1209 || v1210 != v1211))
          {
            v1213 = *v1207;
            v1214 = *(v1202 + 4 * v1158 * v1213);
            if (v1214 >= v1210 && (v1213 >= v1208 || v1214 != v1210))
            {
              v1216 = 0;
              goto LABEL_1442;
            }

            *v1206 = v1213;
            *v1207 = v1208;
            v1261 = *v1206;
            v1262 = *v1199;
            v1263 = *(v1202 + 4 * v1158 * v1261);
            v1264 = *(v1202 + 4 * v1158 * v1262);
            if (v1263 < v1264 || (v1261 < v1262 ? (v1265 = v1263 == v1264) : (v1265 = 0), v1265))
            {
              *v1199 = v1261;
              *v1206 = v1262;
            }

            goto LABEL_1441;
          }

          v1217 = *v1207;
          v1218 = *(v1202 + 4 * v1158 * v1217);
          if (v1218 < v1210 || (v1217 < v1208 ? (v1219 = v1218 == v1210) : (v1219 = 0), v1219))
          {
            *v1199 = v1217;
            goto LABEL_1440;
          }

          *v1199 = v1208;
          *v1206 = v1209;
          v1220 = *v1207;
          v1221 = *(v1202 + 4 * v1158 * v1220);
          v1222 = *(v1202 + 4 * v1158 * v1209);
          if (v1221 < v1222 || (v1216 = 1, v1220 < v1209) && v1221 == v1222)
          {
            *v1206 = v1220;
LABEL_1440:
            *v1207 = v1209;
LABEL_1441:
            v1216 = 1;
          }

LABEL_1442:
          v1223 = *v1199;
          v1224 = *v1206;
          v1225 = *(v1202 + 4 * v1158 * v1223);
          v1226 = *(v1202 + 4 * v1158 * v1224);
          if (v1225 < v1226 || (v1223 < v1224 ? (v1227 = v1225 == v1226) : (v1227 = 0), v1227))
          {
            v1230 = &v1203[-v1159];
            goto LABEL_1460;
          }

          v1170 = v1166;
          v1228 = v1165;
          v1229 = &v1203[-2 * v1159];
LABEL_1448:
          if (v1229 != v1199)
          {
            break;
          }

          v1266 = &v1199[v1159];
          v1267 = *v1207;
          v1268 = *(v1202 + 4 * v1158 * v1267);
          if (v1225 < v1268)
          {
            v1248 = &v1199[v1159];
            v1165 = v1228;
LABEL_1532:
            v1166 = v1170;
            LODWORD(v1170) = v2384;
            goto LABEL_1533;
          }

          v1269 = v1223 < v1267 && v1225 == v1268;
          v1165 = v1228;
          if (v1269)
          {
            v1248 = &v1199[v1159];
            goto LABEL_1532;
          }

          v1166 = v1170;
          LODWORD(v1170) = v2384;
          if (v1266 == v1207)
          {
            goto LABEL_1412;
          }

          v1248 = &v1199[2 * v1159];
          while (1)
          {
            v1270 = *v1266;
            v1271 = *(v1202 + 4 * v1158 * v1270);
            if (v1225 < v1271)
            {
              break;
            }

            if (v1223 < v1270 && v1225 == v1271)
            {
              break;
            }

            v1248 = (v1248 + v1174);
            v1266 = (v1266 + v1174);
            if (v1266 == v1207)
            {
              goto LABEL_1412;
            }
          }

          *v1266 = v1267;
          *v1207 = v1270;
LABEL_1533:
          if (v1248 == v1207)
          {
            goto LABEL_1412;
          }

          while (1)
          {
            v1273 = *v1199;
            v1274 = *(v1202 + 4 * v1158 * v1273);
            v1275 = *v1248;
            v1276 = *(v1202 + 4 * v1158 * v1275);
            LODWORD(v1277) = *v1248;
            while (1)
            {
              if (v1274 < v1276)
              {
                goto LABEL_1540;
              }

              if (v1274 == v1276 && v1273 < v1275)
              {
                break;
              }

              v1248 = (v1248 + v1174);
              v1277 = *v1248;
              v1276 = *(v1202 + 4 * v1158 * v1277);
              LODWORD(v1275) = *v1248;
            }

            LODWORD(v1277) = v1275;
            do
            {
              do
              {
LABEL_1540:
                v1207 -= v1159;
                v1278 = *v1207;
                v1279 = *(v1202 + 4 * v1158 * v1278);
              }

              while (v1274 < v1279);
            }

            while (v1273 < v1278 && v1274 == v1279);
            if (v1248 >= v1207)
            {
              break;
            }

            *v1248 = v1278;
            *v1207 = v1277;
            v1248 += v1159;
          }

          if (v1248 > v1204)
          {
            goto LABEL_1412;
          }

LABEL_1489:
          v1199 = v1248;
          if (v1203 == v1204)
          {
            goto LABEL_1412;
          }
        }

        v1230 = v1229;
        v1231 = *v1229;
        v1232 = *(v1202 + 4 * v1158 * v1231);
        if (v1232 >= v1226)
        {
          v1229 -= v1159;
          if (v1231 >= v1224 || v1232 != v1226)
          {
            goto LABEL_1448;
          }
        }

        *v1199 = v1231;
        *v1230 = v1223;
        if (v1216)
        {
          v1216 = 2;
        }

        else
        {
          v1216 = 1;
        }

        v1165 = v1228;
        v1166 = v1170;
        LODWORD(v1170) = v2384;
LABEL_1460:
        v1234 = &v1199[v1159];
        if (v1234 < v1230)
        {
          while (1)
          {
            v1235 = *v1206;
            v1236 = *(v1202 + 4 * v1158 * v1235);
            while (1)
            {
              v1237 = *v1234;
              v1238 = *(v1202 + 4 * v1158 * v1237);
              if (v1238 >= v1236 && (v1237 >= v1235 || v1238 != v1236))
              {
                break;
              }

              v1234 = (v1234 + v1174);
            }

            v1240 = &v1230[-v1159];
            do
            {
              v1230 = v1240;
              v1241 = *v1240;
              v1242 = *(v1202 + 4 * v1158 * v1241);
              if (v1242 < v1236)
              {
                break;
              }

              v1240 -= v1159;
            }

            while (v1241 >= v1235 || v1242 != v1236);
            if (v1234 >= v1230)
            {
              break;
            }

            *v1234 = v1241;
            *v1230 = v1237;
            ++v1216;
            if (v1234 == v1206)
            {
              v1206 = v1230;
            }

            v1234 = (v1234 + v1174);
          }
        }

        if (v1234 != v1206)
        {
          v1244 = *v1206;
          v1245 = *v1234;
          v1246 = *(v1202 + 4 * v1158 * v1244);
          v1247 = *(v1202 + 4 * v1158 * v1245);
          if (v1246 < v1247 || v1244 < v1245 && v1246 == v1247)
          {
            *v1234 = v1244;
            *v1206 = v1245;
            ++v1216;
          }
        }

        if (v1234 != v1204)
        {
          if (v1216)
          {
LABEL_1486:
            if (v1234 <= v1204)
            {
              v1248 = &v1234[v1159];
            }

            else
            {
              v1203 = v1234;
              v1248 = v1199;
            }

            goto LABEL_1489;
          }

          v1249 = v1234;
          if (v1234 <= v1204)
          {
            while (&v1249[v1174 / 4] != v1203)
            {
              v1256 = v1249[v1159];
              v1257 = *v1249;
              v1258 = *(v1202 + 4 * v1158 * v1256);
              v1259 = *(v1202 + 4 * v1158 * v1257);
              if (v1258 >= v1259)
              {
                v1249 = (v1249 + v1174);
                if (v1256 >= v1257 || v1258 != v1259)
                {
                  continue;
                }
              }

              goto LABEL_1486;
            }
          }

          else
          {
            v1250 = v1199;
            while (&v1250[v1174 / 4] != v1234)
            {
              v1251 = v1250[v1159];
              v1252 = *v1250;
              v1253 = *(v1202 + 4 * v1158 * v1251);
              v1254 = *(v1202 + 4 * v1158 * v1252);
              if (v1253 >= v1254)
              {
                v1250 = (v1250 + v1174);
                if (v1251 >= v1252 || v1253 != v1254)
                {
                  continue;
                }
              }

              goto LABEL_1486;
            }
          }
        }

LABEL_1412:
        if (v2461 <= ++v1162)
        {
          goto LABEL_2869;
        }
      }

    case 8:
      v2131 = *(this + 8);
      if (v2131 < 0)
      {
        v2131 += (v1[1] - *v1) >> 2;
      }

      v2132 = *(this + 9);
      v2133 = v1[6];
      v2134 = mlx::core::array::shape(this, v2131);
      v2135 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v2135, v2135[1], (v2135[1] - *v2135) >> 2);
      v2136 = &v2524[4 * v2131];
      v2137 = v2525 - (v2136 + 4);
      if (v2525 != v2136 + 4)
      {
        memmove(&v2524[4 * v2131], v2136 + 4, v2525 - (v2136 + 4));
      }

      v2525 = &v2136[v2137];
      v2138 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v2138 + 24), *(v2138 + 32), (*(v2138 + 32) - *(v2138 + 24)) >> 3);
      v2139 = v2131;
      v2140 = &v2521[8 * v2131];
      v2141 = v2522 - (v2140 + 8);
      if (v2522 != v2140 + 8)
      {
        memmove(&v2521[8 * v2131], v2140 + 8, v2522 - (v2140 + 8));
      }

      v2522 = &v2140[v2141];
      v2142 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v2142, v2142[1], (v2142[1] - *v2142) >> 2);
      v2143 = 4 * v2131;
      v2144 = &v2518[v2143];
      v2145 = v2519 - &v2518[v2143 + 4];
      if (v2519 != &v2518[v2143 + 4])
      {
        memmove(&v2518[v2143], &v2518[v2143 + 4], v2519 - (v2144 + 4));
      }

      v2519 = &v2144[v2145];
      v2146 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v2146 + 24), *(v2146 + 32), (*(v2146 + 32) - *(v2146 + 24)) >> 3);
      v2147 = &v2515[8 * v2139];
      v2148 = v2516 - (v2147 + 8);
      if (v2516 != v2147 + 8)
      {
        memmove(&v2515[8 * v2139], v2147 + 8, v2516 - (v2147 + 8));
      }

      v2516 = &v2147[v2148];
      v2149 = *(*(*this + 24) + 8 * v2139);
      v2150 = *(*(*(this + 2) + 24) + 8 * v2139);
      v2151 = mlx::core::array::shape(this, v2139);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v2152 = v2134;
      if (v2133 < v2134)
      {
        goto LABEL_2666;
      }

      v2153 = 0;
      v2492 = v2508;
      v2154 = v2511;
      v2155 = (v2151 & (v2132 >> 31)) + v2132;
      v2156 = (v2510 - v2509) >> 2;
      v2369 = *(*this + 152);
      v2157 = *(*(this + 2) + 152);
      v2158 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v2341 = (v2156 & 0x7FFFFFFF) - 1;
      v2159 = v2501;
      v2160 = v2504;
      v2161 = (v2503 - v2502) >> 2;
      v2328 = (v2161 & 0x7FFFFFFF) - 1;
      v2162 = v2150 * v2151;
      v2480 = v2150 * v2155;
      v2163 = 4 * (v2156 & 0x7FFFFFFF);
      v2320 = v2509 - 8;
      v2164 = 4 * (v2161 & 0x7FFFFFFF);
      v2311 = v2502 - 8;
      v2351 = v2513;
      __p = v2506;
      v2379 = v2513 + 4 * v2158;
      v2389 = v2161;
      v2443 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v2453 = v2158;
      v2415 = v2509 + 4 * v2158;
      v2429 = &v2506[4 * v2443];
      v2402 = v2502 + 4 * v2443;
      v2466 = v2133 / v2152;
      v2165 = 4 * v2150;
      while (1)
      {
        v2166 = v2159;
        v2167 = v2492;
        if (v2156)
        {
          v2168 = v2379;
          v2169 = *v2379;
          if (v2156 < 2)
          {
            v2170 = v2492;
            v2171 = v2453;
            v2172 = v2379;
          }

          else
          {
            v2170 = v2492;
            v2171 = v2453;
            v2172 = v2379;
            if (v2169 == *v2415 - 1)
            {
              v2171 = v2341;
              v2173 = v2351;
              v2174 = v2320;
              v2170 = v2492;
              v2175 = v2415;
              v2176 = v2453;
              do
              {
                v2177 = v2171;
                *v2168 = 0;
                v2170 -= v2154[v2176] * (*v2175 - 1);
                v2508 = v2170;
                --v2171;
                v2168 = &v2173[v2163 - 8];
                v2169 = *v2168;
                v2173 -= 4;
                if (v2177 < 2)
                {
                  break;
                }

                v2175 = &v2174[v2163];
                v2178 = *&v2174[v2163] - 1;
                v2174 -= 4;
                v2176 = v2171;
              }

              while (v2169 == v2178);
              v2172 = &v2173[v2163 - 4];
              LODWORD(v2161) = v2389;
            }
          }

          *v2172 = v2169 + 1;
          v2492 = v2154[v2171] + v2170;
          v2508 = v2492;
        }

        if (v2161)
        {
          v2179 = *v2429;
          if (v2161 < 2)
          {
            v2180 = v2159;
            v2181 = v2443;
            v2182 = v2429;
          }

          else
          {
            v2180 = v2159;
            v2181 = v2443;
            v2182 = v2429;
            if (v2179 == *v2402 - 1)
            {
              v2183 = __p;
              v2184 = v2311;
              v2181 = v2328;
              v2180 = v2159;
              v2185 = v2402;
              v2186 = v2429;
              v2187 = v2443;
              do
              {
                v2188 = v2181;
                *v2186 = 0;
                v2180 -= v2160[v2187] * (*v2185 - 1);
                v2501 = v2180;
                --v2181;
                v2186 = &v2183[v2164 - 8];
                v2179 = *v2186;
                v2183 -= 4;
                if (v2188 < 2)
                {
                  break;
                }

                v2185 = &v2184[v2164];
                v2189 = *&v2184[v2164] - 1;
                v2184 -= 4;
                v2187 = v2181;
              }

              while (v2179 == v2189);
              v2182 = &v2183[v2164 - 4];
            }
          }

          *v2182 = v2179 + 1;
          v2159 = v2160[v2181] + v2180;
          v2501 = v2159;
        }

        v2190 = (v2157 + 4 * v2166);
        if (v2162)
        {
          v2191 = 0;
          v2192 = 0;
          do
          {
            *(v2190 + v2191) = v2192++;
            v2191 += v2165;
          }

          while (4 * v2162 != v2191);
        }

        if (v2480 == v2162)
        {
          goto LABEL_2690;
        }

        v2193 = v2369 + 8 * v2167;
        v2194 = &v2190[v2162];
        v2195 = &v2190[v2480];
        while (1)
        {
          v2196 = (v2194 - v2190) / v2150;
          if (v2196 < 2)
          {
            goto LABEL_2690;
          }

          if (v2196 == 3)
          {
            break;
          }

          if (v2196 == 2)
          {
            v2271 = v2194[-v2150];
            v2272 = *v2190;
            v2273 = *(v2193 + 8 * v2149 * v2271);
            v2274 = *(v2193 + 8 * v2149 * v2272);
            if (v2273 < v2274 || v2271 < v2272 && v2273 == v2274)
            {
              *v2190 = v2271;
              v2194[-v2150] = v2272;
            }

            goto LABEL_2690;
          }

          if (v2196 <= 7)
          {
            v2281 = &v2194[-v2150];
            if (v2281 != v2190)
            {
              v2282 = &v2190[v2165 / 4];
              do
              {
                v2283 = &v2190[v2150];
                if (v2194 != v2190 && v2283 != v2194)
                {
                  v2284 = v2282;
                  v2285 = v2190;
                  do
                  {
                    v2286 = *v2284;
                    v2287 = *v2285;
                    v2288 = *(v2193 + 8 * v2149 * v2286);
                    v2289 = *(v2193 + 8 * v2149 * v2287);
                    if (v2288 < v2289 || (v2286 < v2287 ? (v2290 = v2288 == v2289) : (v2290 = 0), v2290))
                    {
                      v2285 = v2284;
                    }

                    v2284 = (v2284 + v2165);
                  }

                  while (v2284 != v2194);
                  if (v2285 != v2190)
                  {
                    v2291 = *v2190;
                    *v2190 = *v2285;
                    *v2285 = v2291;
                  }
                }

                v2282 = (v2282 + v2165);
                v2190 += v2150;
              }

              while (v2283 != v2281);
            }

            goto LABEL_2690;
          }

          v2197 = &v2190[((v2196 >> 1) & 0x3FFFFFFF) * v2150];
          v2198 = &v2194[-v2150];
          v2199 = *v2197;
          v2200 = *v2190;
          v2201 = *(v2193 + 8 * v2149 * v2199);
          v2202 = *(v2193 + 8 * v2149 * v2200);
          if (v2201 >= v2202 && (v2199 >= v2200 || v2201 != v2202))
          {
            v2204 = *v2198;
            v2205 = *(v2193 + 8 * v2149 * v2204);
            if (v2205 >= v2201 && (v2204 >= v2199 || v2205 != v2201))
            {
              v2207 = 0;
              goto LABEL_2720;
            }

            *v2197 = v2204;
            *v2198 = v2199;
            v2251 = *v2197;
            v2252 = *v2190;
            v2253 = *(v2193 + 8 * v2149 * v2251);
            v2254 = *(v2193 + 8 * v2149 * v2252);
            if (v2253 < v2254 || (v2251 < v2252 ? (v2255 = v2253 == v2254) : (v2255 = 0), v2255))
            {
              *v2190 = v2251;
              *v2197 = v2252;
            }

            goto LABEL_2719;
          }

          v2208 = *v2198;
          v2209 = *(v2193 + 8 * v2149 * v2208);
          if (v2209 < v2201 || (v2208 < v2199 ? (v2210 = v2209 == v2201) : (v2210 = 0), v2210))
          {
            *v2190 = v2208;
            goto LABEL_2718;
          }

          *v2190 = v2199;
          *v2197 = v2200;
          v2211 = *v2198;
          v2212 = *(v2193 + 8 * v2149 * v2211);
          if (v2212 < v2202 || (v2207 = 1, v2211 < v2200) && v2212 == v2202)
          {
            *v2197 = v2211;
LABEL_2718:
            *v2198 = v2200;
LABEL_2719:
            v2207 = 1;
          }

LABEL_2720:
          v2213 = *v2190;
          v2214 = *v2197;
          v2215 = *(v2193 + 8 * v2149 * v2213);
          v2216 = *(v2193 + 8 * v2149 * v2214);
          if (v2215 < v2216 || (v2213 < v2214 ? (v2217 = v2215 == v2216) : (v2217 = 0), v2217))
          {
            v2220 = &v2194[-v2150];
            goto LABEL_2738;
          }

          v2161 = v2157;
          v2218 = v2156;
          v2219 = &v2194[-2 * v2150];
          while (v2219 != v2190)
          {
            v2220 = v2219;
            v2221 = *v2219;
            v2222 = *(v2193 + 8 * v2149 * v2221);
            if (v2222 >= v2216)
            {
              v2219 -= v2150;
              if (v2221 >= v2214 || v2222 != v2216)
              {
                continue;
              }
            }

            *v2190 = v2221;
            *v2220 = v2213;
            if (v2207)
            {
              v2207 = 2;
            }

            else
            {
              v2207 = 1;
            }

            v2156 = v2218;
            v2157 = v2161;
            LODWORD(v2161) = v2389;
LABEL_2738:
            v2224 = &v2190[v2150];
            if (v2224 < v2220)
            {
              while (1)
              {
                v2225 = *v2197;
                v2226 = *(v2193 + 8 * v2149 * v2225);
                while (1)
                {
                  v2227 = *v2224;
                  v2228 = *(v2193 + 8 * v2149 * v2227);
                  if (v2228 >= v2226 && (v2227 >= v2225 || v2228 != v2226))
                  {
                    break;
                  }

                  v2224 = (v2224 + v2165);
                }

                v2230 = &v2220[-v2150];
                do
                {
                  v2220 = v2230;
                  v2231 = *v2230;
                  v2232 = *(v2193 + 8 * v2149 * v2231);
                  if (v2232 < v2226)
                  {
                    break;
                  }

                  v2230 -= v2150;
                }

                while (v2231 >= v2225 || v2232 != v2226);
                if (v2224 >= v2220)
                {
                  break;
                }

                *v2224 = v2231;
                *v2220 = v2227;
                ++v2207;
                if (v2224 == v2197)
                {
                  v2197 = v2220;
                }

                v2224 = (v2224 + v2165);
              }
            }

            if (v2224 != v2197)
            {
              v2234 = *v2197;
              v2235 = *v2224;
              v2236 = *(v2193 + 8 * v2149 * v2234);
              v2237 = *(v2193 + 8 * v2149 * v2235);
              if (v2236 < v2237 || v2234 < v2235 && v2236 == v2237)
              {
                *v2224 = v2234;
                *v2197 = v2235;
                ++v2207;
              }
            }

            if (v2224 != v2195)
            {
              if (v2207)
              {
LABEL_2764:
                if (v2224 <= v2195)
                {
                  v2238 = &v2224[v2150];
                }

                else
                {
                  v2194 = v2224;
                  v2238 = v2190;
                }

                goto LABEL_2767;
              }

              v2239 = v2224;
              if (v2224 <= v2195)
              {
                while (&v2239[v2165 / 4] != v2194)
                {
                  v2246 = v2239[v2150];
                  v2247 = *v2239;
                  v2248 = *(v2193 + 8 * v2149 * v2246);
                  v2249 = *(v2193 + 8 * v2149 * v2247);
                  if (v2248 >= v2249)
                  {
                    v2239 = (v2239 + v2165);
                    if (v2246 >= v2247 || v2248 != v2249)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2764;
                }
              }

              else
              {
                v2240 = v2190;
                while (&v2240[v2165 / 4] != v2224)
                {
                  v2241 = v2240[v2150];
                  v2242 = *v2240;
                  v2243 = *(v2193 + 8 * v2149 * v2241);
                  v2244 = *(v2193 + 8 * v2149 * v2242);
                  if (v2243 >= v2244)
                  {
                    v2240 = (v2240 + v2165);
                    if (v2241 >= v2242 || v2243 != v2244)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2764;
                }
              }
            }

            goto LABEL_2690;
          }

          v2256 = &v2190[v2150];
          v2257 = *v2198;
          v2258 = *(v2193 + 8 * v2149 * v2257);
          if (v2215 < v2258)
          {
            v2238 = &v2190[v2150];
            v2156 = v2218;
LABEL_2810:
            v2157 = v2161;
            LODWORD(v2161) = v2389;
            goto LABEL_2811;
          }

          v2259 = v2213 < v2257 && v2215 == v2258;
          v2156 = v2218;
          if (v2259)
          {
            v2238 = &v2190[v2150];
            goto LABEL_2810;
          }

          v2157 = v2161;
          LODWORD(v2161) = v2389;
          if (v2256 == v2198)
          {
            goto LABEL_2690;
          }

          v2238 = &v2190[2 * v2150];
          while (1)
          {
            v2260 = *v2256;
            v2261 = *(v2193 + 8 * v2149 * v2260);
            if (v2215 < v2261)
            {
              break;
            }

            if (v2213 < v2260 && v2215 == v2261)
            {
              break;
            }

            v2238 = (v2238 + v2165);
            v2256 = (v2256 + v2165);
            if (v2256 == v2198)
            {
              goto LABEL_2690;
            }
          }

          *v2256 = v2257;
          *v2198 = v2260;
LABEL_2811:
          if (v2238 == v2198)
          {
            goto LABEL_2690;
          }

          while (1)
          {
            v2263 = *v2190;
            v2264 = *(v2193 + 8 * v2149 * v2263);
            v2265 = *v2238;
            v2266 = *(v2193 + 8 * v2149 * v2265);
            LODWORD(v2267) = *v2238;
            while (1)
            {
              if (v2264 < v2266)
              {
                goto LABEL_2820;
              }

              if (v2264 == v2266 && v2263 < v2265)
              {
                break;
              }

              v2238 = (v2238 + v2165);
              v2267 = *v2238;
              v2266 = *(v2193 + 8 * v2149 * v2267);
              LODWORD(v2265) = *v2238;
            }

            LODWORD(v2267) = v2265;
            do
            {
              do
              {
LABEL_2820:
                v2198 -= v2150;
                v2268 = *v2198;
                v2269 = *(v2193 + 8 * v2149 * v2268);
              }

              while (v2264 < v2269);
            }

            while (v2263 < v2268 && v2264 == v2269);
            if (v2238 >= v2198)
            {
              break;
            }

            *v2238 = v2268;
            *v2198 = v2267;
            v2238 += v2150;
          }

          if (v2238 > v2195)
          {
            goto LABEL_2690;
          }

LABEL_2767:
          v2190 = v2238;
          if (v2194 == v2195)
          {
            goto LABEL_2690;
          }
        }

        v2275 = v2190[v2150];
        v2276 = *v2190;
        v2277 = *(v2193 + 8 * v2149 * v2275);
        v2278 = *(v2193 + 8 * v2149 * v2276);
        if (v2277 >= v2278 && (v2275 >= v2276 || v2277 != v2278))
        {
          v2292 = v2194[-v2150];
          v2293 = *(v2193 + 8 * v2149 * v2292);
          if (v2293 < v2277 || v2292 < v2275 && v2293 == v2277)
          {
            v2190[v2150] = v2292;
            v2194[-v2150] = v2275;
            v2294 = v2190[v2150];
            v2295 = *v2190;
            v2296 = *(v2193 + 8 * v2149 * v2294);
            v2297 = *(v2193 + 8 * v2149 * v2295);
            if (v2296 < v2297 || v2294 < v2295 && v2296 == v2297)
            {
              *v2190 = v2294;
              v2190[v2150] = v2295;
            }
          }

          goto LABEL_2690;
        }

        v2279 = v2194[-v2150];
        v2280 = *(v2193 + 8 * v2149 * v2279);
        if (v2280 < v2277 || v2279 < v2275 && v2280 == v2277)
        {
          *v2190 = v2279;
        }

        else
        {
          *v2190 = v2275;
          v2190[v2150] = v2276;
          v2298 = v2194[-v2150];
          v2299 = *(v2193 + 8 * v2149 * v2298);
          if (v2299 >= v2278 && (v2298 >= v2276 || v2299 != v2278))
          {
            goto LABEL_2690;
          }

          v2190[v2150] = v2298;
        }

        v2194[-v2150] = v2276;
LABEL_2690:
        if (v2466 <= ++v2153)
        {
          goto LABEL_2869;
        }
      }

    case 9:
      v649 = *(this + 8);
      if (v649 < 0)
      {
        v649 += (v1[1] - *v1) >> 2;
      }

      v650 = *(this + 9);
      v651 = v1[6];
      v652 = mlx::core::array::shape(this, v649);
      v653 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v653, v653[1], (v653[1] - *v653) >> 2);
      v654 = &v2524[4 * v649];
      v655 = v2525 - (v654 + 4);
      if (v2525 != v654 + 4)
      {
        memmove(&v2524[4 * v649], v654 + 4, v2525 - (v654 + 4));
      }

      v2525 = &v654[v655];
      v656 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v656 + 24), *(v656 + 32), (*(v656 + 32) - *(v656 + 24)) >> 3);
      v657 = v649;
      v658 = &v2521[8 * v649];
      v659 = v2522 - (v658 + 8);
      if (v2522 != v658 + 8)
      {
        memmove(&v2521[8 * v649], v658 + 8, v2522 - (v658 + 8));
      }

      v2522 = &v658[v659];
      v660 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v660, v660[1], (v660[1] - *v660) >> 2);
      v661 = 4 * v649;
      v662 = &v2518[v661];
      v663 = v2519 - &v2518[v661 + 4];
      if (v2519 != &v2518[v661 + 4])
      {
        memmove(&v2518[v661], &v2518[v661 + 4], v2519 - (v662 + 4));
      }

      v2519 = &v662[v663];
      v664 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v664 + 24), *(v664 + 32), (*(v664 + 32) - *(v664 + 24)) >> 3);
      v665 = &v2515[8 * v657];
      v666 = v2516 - (v665 + 8);
      if (v2516 != v665 + 8)
      {
        memmove(&v2515[8 * v657], v665 + 8, v2516 - (v665 + 8));
      }

      v2516 = &v665[v666];
      v667 = *(*(*this + 24) + 8 * v657);
      v668 = *(*(*(this + 2) + 24) + 8 * v657);
      v669 = mlx::core::array::shape(this, v657);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v670 = v652;
      if (v651 < v652)
      {
        goto LABEL_2666;
      }

      v671 = 0;
      v672 = v2508;
      v673 = v2511;
      v2495 = (v2510 - v2509) >> 2;
      v2394 = *(*this + 152);
      v2471 = *(*(this + 2) + 152);
      v674 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v675 = v2501;
      v676 = v2504;
      v677 = (v2503 - v2502) >> 2;
      v678 = v668 * v669;
      v2485 = v668 * ((v669 & (v650 >> 31)) + v650);
      v679 = 4 * (v2495 & 0x7FFFFFFF);
      v2346 = v2509 - 8;
      v680 = 4 * (v677 & 0x7FFFFFFF);
      v2333 = v2502 - 8;
      v2361 = v2513;
      v2371 = v2506;
      v681 = v2513 + 4 * v674;
      v2434 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v2420 = v2509 + 4 * v674;
      v682 = &v2506[4 * v2434];
      v2407 = v2502 + 4 * v2434;
      v2458 = v651 / v670;
      v683 = 4 * v668;
      do
      {
        v684 = v675;
        v685 = v672;
        if (v2495)
        {
          v686 = *v681;
          if (v2495 < 2)
          {
            v687 = v672;
            v688 = v674;
            v689 = v681;
          }

          else
          {
            v687 = v672;
            v688 = v674;
            v689 = v681;
            if (v686 == *v2420 - 1)
            {
              v688 = (v2495 & 0x7FFFFFFF) - 1;
              v690 = v2361;
              v691 = v2346;
              v687 = v672;
              v692 = v2420;
              v693 = v681;
              v694 = v674;
              do
              {
                v695 = v688;
                *v693 = 0;
                v687 -= v673[v694] * (*v692 - 1);
                v2508 = v687;
                --v688;
                v693 = &v690[v679 - 8];
                v686 = *v693;
                v690 -= 4;
                if (v695 < 2)
                {
                  break;
                }

                v692 = &v691[v679];
                v696 = *&v691[4 * (v2495 & 0x7FFFFFFF)] - 1;
                v691 -= 4;
                v694 = v688;
              }

              while (v686 == v696);
              v689 = &v690[v679 - 4];
            }
          }

          *v689 = v686 + 1;
          v672 = v673[v688] + v687;
          v2508 = v672;
        }

        v675 = v684;
        if (v677)
        {
          v697 = *v682;
          if (v677 < 2)
          {
            v698 = v684;
            v699 = v2434;
            v700 = v682;
          }

          else
          {
            v698 = v684;
            v699 = v2434;
            v700 = v682;
            if (v697 == *v2407 - 1)
            {
              v701 = v2371;
              v702 = v2333;
              v699 = (v677 & 0x7FFFFFFF) - 1;
              v698 = v684;
              v703 = v2407;
              v704 = v682;
              v705 = v2434;
              do
              {
                v706 = v699;
                *v704 = 0;
                v698 -= v676[v705] * (*v703 - 1);
                v2501 = v698;
                --v699;
                v704 = &v701[v680 - 8];
                v697 = *v704;
                v701 -= 4;
                if (v706 < 2)
                {
                  break;
                }

                v703 = &v702[v680];
                v707 = *&v702[4 * (v677 & 0x7FFFFFFF)] - 1;
                v702 -= 4;
                v705 = v699;
              }

              while (v697 == v707);
              v700 = &v701[v680 - 4];
            }
          }

          *v700 = v697 + 1;
          v675 = v676[v699] + v698;
          v2501 = v675;
        }

        v708 = (v2471 + 4 * v684);
        if (v678)
        {
          v709 = 0;
          v710 = 0;
          do
          {
            *(v708 + v709) = v710++;
            v709 += v683;
          }

          while (4 * v678 != v709);
        }

        if (v2485 == v678)
        {
          goto LABEL_813;
        }

        v711 = v2394 + 2 * v685;
        v712 = &v708[v678];
        v713 = &v708[v2485];
        while (1)
        {
          v714 = (v712 - v708) / v668;
          if (v714 < 2)
          {
            goto LABEL_813;
          }

          if (v714 == 3)
          {
            v780 = v708[v668];
            v777 = *v708;
            v781 = *(v711 + 2 * v667 * v780);
            v782 = *(v711 + 2 * v667 * v777);
            if (v781 >= v782 && (v780 >= v777 || v781 != v782))
            {
              v795 = v712[-v668];
              v796 = *(v711 + 2 * v667 * v795);
              if (v796 < v781 || v795 < v780 && v796 == v781)
              {
                v708[v668] = v795;
                v712[-v668] = v780;
                v797 = v708[v668];
                v798 = *v708;
                v799 = *(v711 + 2 * v667 * v797);
                v800 = *(v711 + 2 * v667 * v798);
                if (v799 < v800 || v797 < v798 && v799 == v800)
                {
                  *v708 = v797;
                  v708[v668] = v798;
                }
              }

              goto LABEL_813;
            }

            v783 = v712[-v668];
            v784 = *(v711 + 2 * v667 * v783);
            if (v784 < v781 || v783 < v780 && v784 == v781)
            {
              *v708 = v783;
            }

            else
            {
              *v708 = v780;
              v708[v668] = v777;
              v801 = v712[-v668];
              v802 = *(v711 + 2 * v667 * v801);
              if (v802 >= v782 && (v801 >= v777 || v802 != v782))
              {
                goto LABEL_813;
              }

              v708[v668] = v801;
            }

LABEL_928:
            v712[-v668] = v777;
            goto LABEL_813;
          }

          if (v714 == 2)
          {
            v776 = v712[-v668];
            v777 = *v708;
            v778 = *(v711 + 2 * v667 * v776);
            v779 = *(v711 + 2 * v667 * v777);
            if (v778 >= v779 && (v776 >= v777 || v778 != v779))
            {
              goto LABEL_813;
            }

            *v708 = v776;
            goto LABEL_928;
          }

          if (v714 <= 7)
          {
            v785 = &v712[-v668];
            if (v785 != v708)
            {
              v786 = &v708[v683 / 4];
              do
              {
                v787 = &v708[v668];
                if (v712 != v708 && v787 != v712)
                {
                  v788 = v786;
                  v789 = v708;
                  do
                  {
                    v790 = *v788;
                    v791 = *v789;
                    v792 = *(v711 + 2 * v667 * v790);
                    v793 = *(v711 + 2 * v667 * v791);
                    if (v792 < v793 || v790 < v791 && v792 == v793)
                    {
                      v789 = v788;
                    }

                    v788 = (v788 + v683);
                  }

                  while (v788 != v712);
                  if (v789 != v708)
                  {
                    v794 = *v708;
                    *v708 = *v789;
                    *v789 = v794;
                  }
                }

                v786 = (v786 + v683);
                v708 += v668;
              }

              while (v787 != v785);
            }

            goto LABEL_813;
          }

          v715 = &v708[((v714 >> 1) & 0x3FFFFFFF) * v668];
          v716 = &v712[-v668];
          v717 = *v715;
          v718 = *v708;
          v719 = *(v711 + 2 * v667 * v717);
          v720 = *(v711 + 2 * v667 * v718);
          if (v719 < v720 || v717 < v718 && v719 == v720)
          {
            v721 = *v716;
            v722 = *(v711 + 2 * v667 * v721);
            if (v722 < v719 || v721 < v717 && v722 == v719)
            {
              *v708 = v721;
LABEL_827:
              *v716 = v718;
LABEL_828:
              v723 = 1;
              goto LABEL_829;
            }

            *v708 = v717;
            *v715 = v718;
            v761 = *v716;
            v762 = *(v711 + 2 * v667 * v761);
            if (v762 < v720 || (v723 = 1, v761 < v718) && v762 == v720)
            {
              *v715 = v761;
              goto LABEL_827;
            }
          }

          else
          {
            v752 = *v716;
            v753 = *(v711 + 2 * v667 * v752);
            if (v753 < v719 || (v723 = 0, v752 < v717) && v753 == v719)
            {
              *v715 = v752;
              *v716 = v717;
              v754 = *v715;
              v755 = *v708;
              v756 = *(v711 + 2 * v667 * v754);
              v757 = *(v711 + 2 * v667 * v755);
              if (v756 < v757 || (v723 = 1, v754 < v755) && v756 == v757)
              {
                *v708 = v754;
                *v715 = v755;
                goto LABEL_828;
              }
            }
          }

LABEL_829:
          v724 = *v708;
          v725 = *v715;
          v726 = *(v711 + 2 * v667 * v724);
          v727 = *(v711 + 2 * v667 * v725);
          if (v726 < v727 || v724 < v725 && v726 == v727)
          {
            break;
          }

          v758 = &v712[-2 * v668];
          while (v758 != v708)
          {
            v728 = v758;
            v759 = *v758;
            v760 = *(v711 + 2 * v667 * v759);
            if (v760 >= v727)
            {
              v758 -= v668;
              if (v759 >= v725 || v760 != v727)
              {
                continue;
              }
            }

            *v708 = v759;
            *v728 = v724;
            if (v723)
            {
              v723 = 2;
            }

            else
            {
              v723 = 1;
            }

            goto LABEL_833;
          }

          v763 = &v708[v668];
          v764 = *v716;
          v765 = *(v711 + 2 * v667 * v764);
          if (v726 < v765 || v724 < v764 && v726 == v765)
          {
            v741 = &v708[v668];
          }

          else
          {
            if (v763 == v716)
            {
              goto LABEL_813;
            }

            v741 = &v708[2 * v668];
            while (1)
            {
              v774 = *v763;
              v775 = *(v711 + 2 * v667 * v774);
              if (v726 < v775 || v724 < v774 && v726 == v775)
              {
                break;
              }

              v741 = (v741 + v683);
              v763 = (v763 + v683);
              if (v763 == v716)
              {
                goto LABEL_813;
              }
            }

            *v763 = v764;
            *v716 = v774;
          }

          if (v741 == v716)
          {
            goto LABEL_813;
          }

          while (1)
          {
            v766 = *v708;
            v767 = *(v711 + 2 * v667 * v766);
            v768 = *v741;
            v769 = *(v711 + 2 * v667 * v768);
            LODWORD(v770) = *v741;
            if (v767 >= v769)
            {
              while (v767 != v769 || v766 >= v768)
              {
                v741 = (v741 + v683);
                v770 = *v741;
                v769 = *(v711 + 2 * v667 * v770);
                LODWORD(v768) = *v741;
                if (v767 < v769)
                {
                  goto LABEL_902;
                }
              }

              LODWORD(v770) = v768;
            }

            do
            {
              do
              {
LABEL_902:
                v716 -= v668;
                v772 = *v716;
                v773 = *(v711 + 2 * v667 * v772);
              }

              while (v767 < v773);
            }

            while (v766 < v772 && v767 == v773);
            if (v741 >= v716)
            {
              break;
            }

            *v741 = v772;
            *v716 = v770;
            v741 += v668;
          }

          if (v741 > v713)
          {
            goto LABEL_813;
          }

LABEL_857:
          v708 = v741;
          if (v712 == v713)
          {
            goto LABEL_813;
          }
        }

        v728 = &v712[-v668];
LABEL_833:
        v729 = &v708[v668];
        if (v729 < v728)
        {
          while (1)
          {
            v730 = *v715;
            v731 = *(v711 + 2 * v667 * v730);
            while (1)
            {
              v732 = *v729;
              v733 = *(v711 + 2 * v667 * v732);
              if (v733 >= v731 && (v732 >= v730 || v733 != v731))
              {
                break;
              }

              v729 = (v729 + v683);
            }

            v734 = &v728[-v668];
            do
            {
              v728 = v734;
              v735 = *v734;
              v736 = *(v711 + 2 * v667 * v735);
              if (v736 < v731)
              {
                break;
              }

              v734 -= v668;
            }

            while (v735 >= v730 || v736 != v731);
            if (v729 >= v728)
            {
              break;
            }

            *v729 = v735;
            *v728 = v732;
            ++v723;
            if (v729 == v715)
            {
              v715 = v728;
            }

            v729 = (v729 + v683);
          }
        }

        if (v729 != v715)
        {
          v737 = *v715;
          v738 = *v729;
          v739 = *(v711 + 2 * v667 * v737);
          v740 = *(v711 + 2 * v667 * v738);
          if (v739 < v740 || v737 < v738 && v739 == v740)
          {
            *v729 = v737;
            *v715 = v738;
            ++v723;
          }
        }

        if (v729 == v713)
        {
          goto LABEL_813;
        }

        if (v723)
        {
LABEL_854:
          if (v729 <= v713)
          {
            v741 = &v729[v668];
          }

          else
          {
            v712 = v729;
            v741 = v708;
          }

          goto LABEL_857;
        }

        v742 = v729;
        if (v729 <= v713)
        {
          while (&v742[v683 / 4] != v712)
          {
            v748 = v742[v668];
            v749 = *v742;
            v750 = *(v711 + 2 * v667 * v748);
            v751 = *(v711 + 2 * v667 * v749);
            if (v750 >= v751)
            {
              v742 = (v742 + v683);
              if (v748 >= v749 || v750 != v751)
              {
                continue;
              }
            }

            goto LABEL_854;
          }
        }

        else
        {
          v743 = v708;
          while (&v743[v683 / 4] != v729)
          {
            v744 = v743[v668];
            v745 = *v743;
            v746 = *(v711 + 2 * v667 * v744);
            v747 = *(v711 + 2 * v667 * v745);
            if (v746 >= v747)
            {
              v743 = (v743 + v683);
              if (v744 >= v745 || v746 != v747)
              {
                continue;
              }
            }

            goto LABEL_854;
          }
        }

LABEL_813:
        ++v671;
      }

      while (v2458 > v671);
LABEL_954:
      v803 = v2371;
LABEL_2870:
      if (v803)
      {
        v2507 = v803;
        operator delete(v803);
      }

      if (v2504)
      {
        v2505 = v2504;
        operator delete(v2504);
      }

      if (v2502)
      {
        v2503 = v2502;
        operator delete(v2502);
      }

      if (v2513)
      {
        v2514 = v2513;
        operator delete(v2513);
      }

      if (v2511)
      {
        v2512 = v2511;
        operator delete(v2511);
      }

      if (v2509)
      {
        v2510 = v2509;
        operator delete(v2509);
      }

      if (v2515)
      {
        v2516 = v2515;
        operator delete(v2515);
      }

      if (v2518)
      {
        v2519 = v2518;
        operator delete(v2518);
      }

      if (v2521)
      {
        v2522 = v2521;
        operator delete(v2521);
      }

      if (v2524)
      {
        v2525 = v2524;
        operator delete(v2524);
      }

      return;
    case 0xA:
      v1978 = *(this + 8);
      if (v1978 < 0)
      {
        v1978 += (v1[1] - *v1) >> 2;
      }

      v1979 = *(this + 9);
      v1980 = v1[6];
      v1981 = mlx::core::array::shape(this, v1978);
      v1982 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v1982, v1982[1], (v1982[1] - *v1982) >> 2);
      v1983 = &v2524[4 * v1978];
      v1984 = v2525 - (v1983 + 4);
      if (v2525 != v1983 + 4)
      {
        memmove(&v2524[4 * v1978], v1983 + 4, v2525 - (v1983 + 4));
      }

      v2525 = &v1983[v1984];
      v1985 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v1985 + 24), *(v1985 + 32), (*(v1985 + 32) - *(v1985 + 24)) >> 3);
      v1986 = v1978;
      v1987 = &v2521[8 * v1978];
      v1988 = v2522 - (v1987 + 8);
      if (v2522 != v1987 + 8)
      {
        memmove(&v2521[8 * v1978], v1987 + 8, v2522 - (v1987 + 8));
      }

      v2522 = &v1987[v1988];
      v1989 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v1989, v1989[1], (v1989[1] - *v1989) >> 2);
      v1990 = 4 * v1978;
      v1991 = &v2518[v1990];
      v1992 = v2519 - &v2518[v1990 + 4];
      if (v2519 != &v2518[v1990 + 4])
      {
        memmove(&v2518[v1990], &v2518[v1990 + 4], v2519 - (v1991 + 4));
      }

      v2519 = &v1991[v1992];
      v1993 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v1993 + 24), *(v1993 + 32), (*(v1993 + 32) - *(v1993 + 24)) >> 3);
      v1994 = &v2515[8 * v1986];
      v1995 = v2516 - (v1994 + 8);
      if (v2516 != v1994 + 8)
      {
        memmove(&v2515[8 * v1986], v1994 + 8, v2516 - (v1994 + 8));
      }

      v2516 = &v1994[v1995];
      v1996 = *(*(*this + 24) + 8 * v1986);
      v1997 = *(*(*(this + 2) + 24) + 8 * v1986);
      v1998 = mlx::core::array::shape(this, v1986);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v1999 = v1981;
      if (v1980 < v1981)
      {
        goto LABEL_2666;
      }

      v2000 = 0;
      v2001 = v2508;
      v2002 = v2511;
      v2500 = (v2510 - v2509) >> 2;
      v2388 = *(*this + 152);
      v2479 = *(*(this + 2) + 152);
      v2003 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v2004 = v2501;
      v2005 = v2504;
      v2006 = (v2503 - v2502) >> 2;
      v2007 = v1997 * v1998;
      v2491 = v1997 * ((v1998 & (v1979 >> 31)) + v1979);
      v2008 = 4 * (v2500 & 0x7FFFFFFF);
      v2340 = v2509 - 8;
      v2009 = 4 * (v2006 & 0x7FFFFFFF);
      v2327 = v2502 - 8;
      v2356 = v2513;
      v2368 = v2506;
      v2428 = v2513 + 4 * v2003;
      v2442 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v2414 = v2509 + 4 * v2003;
      v2010 = &v2506[4 * v2442];
      v2401 = v2502 + 4 * v2442;
      v2465 = v1980 / v1999;
      v2011 = 4 * v1997;
      while (1)
      {
        v2012 = v2004;
        v2013 = v2001;
        if (v2500)
        {
          v2014 = *v2428;
          if (v2500 < 2)
          {
            v2015 = v2001;
            v2016 = v2003;
            v2017 = v2428;
          }

          else
          {
            v2015 = v2001;
            v2016 = v2003;
            v2017 = v2428;
            if (v2014 == *v2414 - 1)
            {
              v2016 = (v2500 & 0x7FFFFFFF) - 1;
              v2018 = v2356;
              v2019 = v2340;
              v2015 = v2001;
              v2021 = v2414;
              v2020 = v2428;
              v2022 = v2003;
              do
              {
                v2023 = v2016;
                *v2020 = 0;
                v2015 -= v2002[v2022] * (*v2021 - 1);
                v2508 = v2015;
                --v2016;
                v2020 = &v2018[v2008 - 8];
                v2014 = *v2020;
                v2018 -= 4;
                if (v2023 < 2)
                {
                  break;
                }

                v2021 = &v2019[v2008];
                v2024 = *&v2019[4 * (v2500 & 0x7FFFFFFF)] - 1;
                v2019 -= 4;
                v2022 = v2016;
              }

              while (v2014 == v2024);
              v2017 = &v2018[v2008 - 4];
            }
          }

          *v2017 = v2014 + 1;
          v2001 = v2002[v2016] + v2015;
          v2508 = v2001;
        }

        v2004 = v2012;
        if (v2006)
        {
          v2025 = *v2010;
          if (v2006 < 2)
          {
            v2026 = v2012;
            v2027 = v2442;
            v2028 = v2010;
          }

          else
          {
            v2026 = v2012;
            v2027 = v2442;
            v2028 = v2010;
            if (v2025 == *v2401 - 1)
            {
              v2029 = v2368;
              v2030 = v2327;
              v2027 = (v2006 & 0x7FFFFFFF) - 1;
              v2026 = v2012;
              v2031 = v2401;
              v2032 = v2010;
              v2033 = v2442;
              do
              {
                v2034 = v2027;
                *v2032 = 0;
                v2026 -= v2005[v2033] * (*v2031 - 1);
                v2501 = v2026;
                --v2027;
                v2032 = &v2029[v2009 - 8];
                v2025 = *v2032;
                v2029 -= 4;
                if (v2034 < 2)
                {
                  break;
                }

                v2031 = &v2030[v2009];
                v2035 = *&v2030[4 * (v2006 & 0x7FFFFFFF)] - 1;
                v2030 -= 4;
                v2033 = v2027;
              }

              while (v2025 == v2035);
              v2028 = &v2029[v2009 - 4];
            }
          }

          *v2028 = v2025 + 1;
          v2004 = v2005[v2027] + v2026;
          v2501 = v2004;
        }

        v2036 = (v2479 + 4 * v2012);
        if (v2007)
        {
          v2037 = 0;
          v2038 = 0;
          do
          {
            *(v2036 + v2037) = v2038++;
            v2037 += v2011;
          }

          while (4 * v2007 != v2037);
        }

        if (v2491 == v2007)
        {
          goto LABEL_2514;
        }

        v2039 = v2388 + 4 * v2013;
        v2040 = &v2036[v2007];
        v2041 = &v2036[v2491];
        while (1)
        {
          v2042 = (v2040 - v2036) / v1997;
          if (v2042 < 2)
          {
            goto LABEL_2514;
          }

          if (v2042 == 3)
          {
            break;
          }

          if (v2042 == 2)
          {
            v2103 = v2040[-v1997];
            v2104 = *v2036;
            v2105 = *(v2039 + 4 * v1996 * v2103);
            v2106 = *(v2039 + 4 * v1996 * v2104);
            if (v2105 < v2106 || v2103 < v2104 && v2105 == v2106)
            {
              *v2036 = v2103;
              v2040[-v1997] = v2104;
            }

            goto LABEL_2514;
          }

          if (v2042 <= 7)
          {
            v2113 = &v2040[-v1997];
            if (v2113 != v2036)
            {
              v2114 = &v2036[v2011 / 4];
              do
              {
                v2115 = &v2036[v1997];
                if (v2040 != v2036 && v2115 != v2040)
                {
                  v2116 = v2114;
                  v2117 = v2036;
                  do
                  {
                    v2118 = *v2116;
                    v2119 = *v2117;
                    v2120 = *(v2039 + 4 * v1996 * v2118);
                    v2121 = *(v2039 + 4 * v1996 * v2119);
                    if (v2120 < v2121 || v2118 < v2119 && v2120 == v2121)
                    {
                      v2117 = v2116;
                    }

                    v2116 = (v2116 + v2011);
                  }

                  while (v2116 != v2040);
                  if (v2117 != v2036)
                  {
                    v2122 = *v2036;
                    *v2036 = *v2117;
                    *v2117 = v2122;
                  }
                }

                v2114 = (v2114 + v2011);
                v2036 += v1997;
              }

              while (v2115 != v2113);
            }

            goto LABEL_2514;
          }

          v2043 = &v2036[((v2042 >> 1) & 0x3FFFFFFF) * v1997];
          v2044 = &v2040[-v1997];
          v2045 = *v2043;
          v2046 = *v2036;
          v2047 = *(v2039 + 4 * v1996 * v2045);
          v2048 = *(v2039 + 4 * v1996 * v2046);
          if (v2047 < v2048 || v2045 < v2046 && v2047 == v2048)
          {
            v2049 = *v2044;
            v2050 = *(v2039 + 4 * v1996 * v2049);
            if (v2050 < v2047 || v2049 < v2045 && v2050 == v2047)
            {
              *v2036 = v2049;
            }

            else
            {
              *v2036 = v2045;
              *v2043 = v2046;
              v2089 = *v2044;
              v2090 = *(v2039 + 4 * v1996 * v2089);
              if (v2090 >= v2048)
              {
                v2051 = 1;
                if (v2089 >= v2046 || v2090 != v2048)
                {
                  goto LABEL_2530;
                }
              }

              *v2043 = v2089;
            }

            *v2044 = v2046;
          }

          else
          {
            v2080 = *v2044;
            v2081 = *(v2039 + 4 * v1996 * v2080);
            if (v2081 >= v2047)
            {
              v2051 = 0;
              if (v2080 >= v2045 || v2081 != v2047)
              {
                goto LABEL_2530;
              }
            }

            *v2043 = v2080;
            *v2044 = v2045;
            v2082 = *v2043;
            v2083 = *v2036;
            v2084 = *(v2039 + 4 * v1996 * v2082);
            v2085 = *(v2039 + 4 * v1996 * v2083);
            if (v2084 >= v2085)
            {
              v2051 = 1;
              if (v2082 >= v2083 || v2084 != v2085)
              {
                goto LABEL_2530;
              }
            }

            *v2036 = v2082;
            *v2043 = v2083;
          }

          v2051 = 1;
LABEL_2530:
          v2052 = *v2036;
          v2053 = *(v2039 + 4 * v1996 * v2052);
          v2054 = *v2043;
          v2055 = *(v2039 + 4 * v1996 * v2054);
          v2056 = &v2036[v1997];
          if (v2053 < v2055 || v2052 < v2054 && v2053 == v2055)
          {
            v2057 = &v2040[-v1997];
            goto LABEL_2534;
          }

          v2086 = &v2040[-2 * v1997];
          while (v2086 != v2036)
          {
            v2057 = v2086;
            v2087 = *v2086;
            v2088 = *(v2039 + 4 * v1996 * v2087);
            if (v2088 >= v2055)
            {
              v2086 -= v1997;
              if (v2087 >= v2054 || v2088 != v2055)
              {
                continue;
              }
            }

            *v2036 = v2087;
            *v2057 = v2052;
            if (v2051)
            {
              v2051 = 2;
            }

            else
            {
              v2051 = 1;
            }

LABEL_2534:
            if (v2056 < v2057)
            {
              while (1)
              {
                v2058 = *v2043;
                v2059 = *(v2039 + 4 * v1996 * v2058);
                while (1)
                {
                  v2060 = *v2056;
                  v2061 = *(v2039 + 4 * v1996 * v2060);
                  if (v2061 >= v2059 && (v2060 >= v2058 || v2061 != v2059))
                  {
                    break;
                  }

                  v2056 = (v2056 + v2011);
                }

                v2062 = &v2057[-v1997];
                do
                {
                  v2057 = v2062;
                  v2063 = *v2062;
                  v2064 = *(v2039 + 4 * v1996 * v2063);
                  if (v2064 < v2059)
                  {
                    break;
                  }

                  v2062 -= v1997;
                }

                while (v2063 >= v2058 || v2064 != v2059);
                if (v2056 >= v2057)
                {
                  break;
                }

                *v2056 = v2063;
                *v2057 = v2060;
                ++v2051;
                if (v2056 == v2043)
                {
                  v2043 = v2057;
                }

                v2056 = (v2056 + v2011);
              }
            }

            if (v2056 != v2043)
            {
              v2065 = *v2043;
              v2066 = *v2056;
              v2067 = *(v2039 + 4 * v1996 * v2065);
              v2068 = *(v2039 + 4 * v1996 * v2066);
              if (v2067 < v2068 || v2065 < v2066 && v2067 == v2068)
              {
                *v2056 = v2065;
                *v2043 = v2066;
                ++v2051;
              }
            }

            if (v2056 != v2041)
            {
              if (v2051)
              {
LABEL_2555:
                if (v2056 <= v2041)
                {
                  v2069 = &v2056[v1997];
                }

                else
                {
                  v2040 = v2056;
                  v2069 = v2036;
                }

                goto LABEL_2558;
              }

              v2070 = v2056;
              if (v2056 <= v2041)
              {
                while (&v2070[v2011 / 4] != v2040)
                {
                  v2076 = v2070[v1997];
                  v2077 = *v2070;
                  v2078 = *(v2039 + 4 * v1996 * v2076);
                  v2079 = *(v2039 + 4 * v1996 * v2077);
                  if (v2078 >= v2079)
                  {
                    v2070 = (v2070 + v2011);
                    if (v2076 >= v2077 || v2078 != v2079)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2555;
                }
              }

              else
              {
                v2071 = v2036;
                while (&v2071[v2011 / 4] != v2056)
                {
                  v2072 = v2071[v1997];
                  v2073 = *v2071;
                  v2074 = *(v2039 + 4 * v1996 * v2072);
                  v2075 = *(v2039 + 4 * v1996 * v2073);
                  if (v2074 >= v2075)
                  {
                    v2071 = (v2071 + v2011);
                    if (v2072 >= v2073 || v2074 != v2075)
                    {
                      continue;
                    }
                  }

                  goto LABEL_2555;
                }
              }
            }

            goto LABEL_2514;
          }

          v2091 = *v2044;
          v2092 = *(v2039 + 4 * v1996 * v2091);
          if (v2053 < v2092 || v2052 < v2091 && v2053 == v2092)
          {
            v2069 = &v2036[v1997];
          }

          else
          {
            if (v2056 == v2044)
            {
              goto LABEL_2514;
            }

            v2069 = &v2036[2 * v1997];
            while (1)
            {
              v2101 = *v2056;
              v2102 = *(v2039 + 4 * v1996 * v2101);
              if (v2053 < v2102 || v2052 < v2101 && v2053 == v2102)
              {
                break;
              }

              v2069 = (v2069 + v2011);
              v2056 = (v2056 + v2011);
              if (v2056 == v2044)
              {
                goto LABEL_2514;
              }
            }

            *v2056 = v2091;
            *v2044 = v2101;
          }

          if (v2069 == v2044)
          {
            goto LABEL_2514;
          }

          while (1)
          {
            v2093 = *v2036;
            v2094 = *(v2039 + 4 * v1996 * v2093);
            v2095 = *v2069;
            v2096 = *(v2039 + 4 * v1996 * v2095);
            LODWORD(v2097) = *v2069;
            if (v2094 >= v2096)
            {
              while (v2094 != v2096 || v2093 >= v2095)
              {
                v2069 = (v2069 + v2011);
                v2097 = *v2069;
                v2096 = *(v2039 + 4 * v1996 * v2097);
                LODWORD(v2095) = *v2069;
                if (v2094 < v2096)
                {
                  goto LABEL_2603;
                }
              }

              LODWORD(v2097) = v2095;
            }

            do
            {
              do
              {
LABEL_2603:
                v2044 -= v1997;
                v2099 = *v2044;
                v2100 = *(v2039 + 4 * v1996 * v2099);
              }

              while (v2094 < v2100);
            }

            while (v2093 < v2099 && v2094 == v2100);
            if (v2069 >= v2044)
            {
              break;
            }

            *v2069 = v2099;
            *v2044 = v2097;
            v2069 += v1997;
          }

          if (v2069 > v2041)
          {
            goto LABEL_2514;
          }

LABEL_2558:
          v2036 = v2069;
          if (v2040 == v2041)
          {
            goto LABEL_2514;
          }
        }

        v2107 = v2036[v1997];
        v2108 = *v2036;
        v2109 = *(v2039 + 4 * v1996 * v2107);
        v2110 = *(v2039 + 4 * v1996 * v2108);
        if (v2109 >= v2110 && (v2107 >= v2108 || v2109 != v2110))
        {
          v2123 = v2040[-v1997];
          v2124 = *(v2039 + 4 * v1996 * v2123);
          if (v2124 < v2109 || v2123 < v2107 && v2124 == v2109)
          {
            v2036[v1997] = v2123;
            v2040[-v1997] = v2107;
            v2125 = v2036[v1997];
            v2126 = *v2036;
            v2127 = *(v2039 + 4 * v1996 * v2125);
            v2128 = *(v2039 + 4 * v1996 * v2126);
            if (v2127 < v2128 || v2125 < v2126 && v2127 == v2128)
            {
              *v2036 = v2125;
              v2036[v1997] = v2126;
            }
          }

          goto LABEL_2514;
        }

        v2111 = v2040[-v1997];
        v2112 = *(v2039 + 4 * v1996 * v2111);
        if (v2112 < v2109 || v2111 < v2107 && v2112 == v2109)
        {
          *v2036 = v2111;
        }

        else
        {
          *v2036 = v2107;
          v2036[v1997] = v2108;
          v2129 = v2040[-v1997];
          v2130 = *(v2039 + 4 * v1996 * v2129);
          if (v2130 >= v2110 && (v2129 >= v2108 || v2130 != v2110))
          {
            goto LABEL_2514;
          }

          v2036[v1997] = v2129;
        }

        v2040[-v1997] = v2108;
LABEL_2514:
        if (v2465 <= ++v2000)
        {
          v803 = v2368;
          goto LABEL_2870;
        }
      }

    case 0xB:
      v172 = *(this + 8);
      if (v172 < 0)
      {
        v172 += (v1[1] - *v1) >> 2;
      }

      v173 = *(this + 9);
      v174 = v1[6];
      v175 = mlx::core::array::shape(this, v172);
      v176 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v176, v176[1], (v176[1] - *v176) >> 2);
      v177 = &v2524[4 * v172];
      v178 = v2525 - (v177 + 4);
      if (v2525 != v177 + 4)
      {
        memmove(&v2524[4 * v172], v177 + 4, v2525 - (v177 + 4));
      }

      v2525 = &v177[v178];
      v179 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v179 + 24), *(v179 + 32), (*(v179 + 32) - *(v179 + 24)) >> 3);
      v180 = v172;
      v181 = &v2521[8 * v172];
      v182 = v2522 - (v181 + 8);
      if (v2522 != v181 + 8)
      {
        memmove(&v2521[8 * v172], v181 + 8, v2522 - (v181 + 8));
      }

      v2522 = &v181[v182];
      v183 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v183, v183[1], (v183[1] - *v183) >> 2);
      v184 = 4 * v172;
      v185 = &v2518[v184];
      v186 = v2519 - &v2518[v184 + 4];
      if (v2519 != &v2518[v184 + 4])
      {
        memmove(&v2518[v184], &v2518[v184 + 4], v2519 - (v185 + 4));
      }

      v2519 = &v185[v186];
      v187 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v187 + 24), *(v187 + 32), (*(v187 + 32) - *(v187 + 24)) >> 3);
      v188 = &v2515[8 * v180];
      v189 = v2516 - (v188 + 8);
      if (v2516 != v188 + 8)
      {
        memmove(&v2515[8 * v180], v188 + 8, v2516 - (v188 + 8));
      }

      v2516 = &v188[v189];
      v190 = *(*(*this + 24) + 8 * v180);
      v191 = *(*(*(this + 2) + 24) + 8 * v180);
      v192 = mlx::core::array::shape(this, v180);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v193 = v175;
      if (v174 < v175)
      {
        goto LABEL_2666;
      }

      v194 = 0;
      v195 = v2508;
      v196 = v2511;
      v2493 = (v2510 - v2509) >> 2;
      v2391 = *(*this + 152);
      v2468 = *(*(this + 2) + 152);
      v197 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v198 = v2501;
      v199 = v2504;
      v200 = (v2503 - v2502) >> 2;
      v201 = v191 * v192;
      v2482 = v191 * ((v192 & (v173 >> 31)) + v173);
      v202 = 4 * (v2493 & 0x7FFFFFFF);
      v2343 = v2509 - 8;
      v203 = 4 * (v200 & 0x7FFFFFFF);
      v2330 = v2502 - 8;
      v2358 = v2513;
      v2371 = v2506;
      v204 = v2513 + 4 * v197;
      v2431 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v2417 = v2509 + 4 * v197;
      v205 = &v2506[4 * v2431];
      v2404 = v2502 + 4 * v2431;
      v2455 = v174 / v193;
      v206 = 4 * v191;
      while (1)
      {
        v207 = v198;
        v208 = v195;
        if (v2493)
        {
          v209 = *v204;
          if (v2493 < 2)
          {
            v210 = v195;
            v211 = v197;
            v212 = v204;
          }

          else
          {
            v210 = v195;
            v211 = v197;
            v212 = v204;
            if (v209 == *v2417 - 1)
            {
              v211 = (v2493 & 0x7FFFFFFF) - 1;
              v213 = v2358;
              v214 = v2343;
              v210 = v195;
              v215 = v2417;
              v216 = v204;
              v217 = v197;
              do
              {
                v218 = v211;
                *v216 = 0;
                v210 -= v196[v217] * (*v215 - 1);
                v2508 = v210;
                --v211;
                v216 = &v213[v202 - 8];
                v209 = *v216;
                v213 -= 4;
                if (v218 < 2)
                {
                  break;
                }

                v215 = &v214[v202];
                v219 = *&v214[4 * (v2493 & 0x7FFFFFFF)] - 1;
                v214 -= 4;
                v217 = v211;
              }

              while (v209 == v219);
              v212 = &v213[v202 - 4];
            }
          }

          *v212 = v209 + 1;
          v195 = v196[v211] + v210;
          v2508 = v195;
        }

        v198 = v207;
        if (v200)
        {
          v220 = *v205;
          if (v200 < 2)
          {
            v221 = v207;
            v222 = v2431;
            v223 = v205;
          }

          else
          {
            v221 = v207;
            v222 = v2431;
            v223 = v205;
            if (v220 == *v2404 - 1)
            {
              v224 = v2371;
              v225 = v2330;
              v222 = (v200 & 0x7FFFFFFF) - 1;
              v221 = v207;
              v226 = v2404;
              v227 = v205;
              v228 = v2431;
              do
              {
                v229 = v222;
                *v227 = 0;
                v221 -= v199[v228] * (*v226 - 1);
                v2501 = v221;
                --v222;
                v227 = &v224[v203 - 8];
                v220 = *v227;
                v224 -= 4;
                if (v229 < 2)
                {
                  break;
                }

                v226 = &v225[v203];
                v230 = *&v225[4 * (v200 & 0x7FFFFFFF)] - 1;
                v225 -= 4;
                v228 = v222;
              }

              while (v220 == v230);
              v223 = &v224[v203 - 4];
            }
          }

          *v223 = v220 + 1;
          v198 = v199[v222] + v221;
          v2501 = v198;
        }

        v231 = (v2468 + 4 * v207);
        if (v201)
        {
          v232 = 0;
          v233 = 0;
          do
          {
            *(v231 + v232) = v233++;
            v232 += v206;
          }

          while (4 * v201 != v232);
        }

        if (v2482 == v201)
        {
          goto LABEL_249;
        }

        v234 = v2391 + 8 * v208;
        v235 = &v231[v201];
        v236 = &v231[v2482];
        do
        {
          v237 = (v235 - v231) / v191;
          if (v237 < 2)
          {
            break;
          }

          if (v237 == 3)
          {
            v303 = v231[v191];
            v300 = *v231;
            v304 = *(v234 + 8 * v190 * v303);
            v305 = *(v234 + 8 * v190 * v300);
            if (v304 >= v305 && (v303 >= v300 || v304 != v305))
            {
              v318 = v235[-v191];
              v319 = *(v234 + 8 * v190 * v318);
              if (v319 < v304 || v318 < v303 && v319 == v304)
              {
                v231[v191] = v318;
                v235[-v191] = v303;
                v320 = v231[v191];
                v321 = *v231;
                v322 = *(v234 + 8 * v190 * v320);
                v323 = *(v234 + 8 * v190 * v321);
                if (v322 < v323 || v320 < v321 && v322 == v323)
                {
                  *v231 = v320;
                  v231[v191] = v321;
                }
              }

              break;
            }

            v306 = v235[-v191];
            v307 = *(v234 + 8 * v190 * v306);
            if (v307 < v304 || v306 < v303 && v307 == v304)
            {
              *v231 = v306;
            }

            else
            {
              *v231 = v303;
              v231[v191] = v300;
              v324 = v235[-v191];
              v325 = *(v234 + 8 * v190 * v324);
              if (v325 >= v305 && (v324 >= v300 || v325 != v305))
              {
                break;
              }

              v231[v191] = v324;
            }

LABEL_365:
            v235[-v191] = v300;
            break;
          }

          if (v237 == 2)
          {
            v299 = v235[-v191];
            v300 = *v231;
            v301 = *(v234 + 8 * v190 * v299);
            v302 = *(v234 + 8 * v190 * v300);
            if (v301 >= v302 && (v299 >= v300 || v301 != v302))
            {
              break;
            }

            *v231 = v299;
            goto LABEL_365;
          }

          if (v237 <= 7)
          {
            v308 = &v235[-v191];
            if (v308 != v231)
            {
              v309 = &v231[v206 / 4];
              do
              {
                v310 = &v231[v191];
                if (v235 != v231 && v310 != v235)
                {
                  v311 = v309;
                  v312 = v231;
                  do
                  {
                    v313 = *v311;
                    v314 = *v312;
                    v315 = *(v234 + 8 * v190 * v313);
                    v316 = *(v234 + 8 * v190 * v314);
                    if (v315 < v316 || v313 < v314 && v315 == v316)
                    {
                      v312 = v311;
                    }

                    v311 = (v311 + v206);
                  }

                  while (v311 != v235);
                  if (v312 != v231)
                  {
                    v317 = *v231;
                    *v231 = *v312;
                    *v312 = v317;
                  }
                }

                v309 = (v309 + v206);
                v231 += v191;
              }

              while (v310 != v308);
            }

            break;
          }

          v238 = &v231[((v237 >> 1) & 0x3FFFFFFF) * v191];
          v239 = &v235[-v191];
          v240 = *v238;
          v241 = *v231;
          v242 = *(v234 + 8 * v190 * v240);
          v243 = *(v234 + 8 * v190 * v241);
          if (v242 < v243 || v240 < v241 && v242 == v243)
          {
            v244 = *v239;
            v245 = *(v234 + 8 * v190 * v244);
            if (v245 < v242 || v244 < v240 && v245 == v242)
            {
              *v231 = v244;
            }

            else
            {
              *v231 = v240;
              *v238 = v241;
              v284 = *v239;
              v285 = *(v234 + 8 * v190 * v284);
              if (v285 >= v243)
              {
                v246 = 1;
                if (v284 >= v241 || v285 != v243)
                {
                  goto LABEL_265;
                }
              }

              *v238 = v284;
            }

            *v239 = v241;
          }

          else
          {
            v275 = *v239;
            v276 = *(v234 + 8 * v190 * v275);
            if (v276 >= v242)
            {
              v246 = 0;
              if (v275 >= v240 || v276 != v242)
              {
                goto LABEL_265;
              }
            }

            *v238 = v275;
            *v239 = v240;
            v277 = *v238;
            v278 = *v231;
            v279 = *(v234 + 8 * v190 * v277);
            v280 = *(v234 + 8 * v190 * v278);
            if (v279 >= v280)
            {
              v246 = 1;
              if (v277 >= v278 || v279 != v280)
              {
                goto LABEL_265;
              }
            }

            *v231 = v277;
            *v238 = v278;
          }

          v246 = 1;
LABEL_265:
          v247 = *v231;
          v248 = *v238;
          v249 = *(v234 + 8 * v190 * v247);
          v250 = *(v234 + 8 * v190 * v248);
          if (v249 < v250 || v247 < v248 && v249 == v250)
          {
            v251 = &v235[-v191];
            goto LABEL_269;
          }

          v281 = &v235[-2 * v191];
          while (v281 != v231)
          {
            v251 = v281;
            v282 = *v281;
            v283 = *(v234 + 8 * v190 * v282);
            if (v283 >= v250)
            {
              v281 -= v191;
              if (v282 >= v248 || v283 != v250)
              {
                continue;
              }
            }

            *v231 = v282;
            *v251 = v247;
            if (v246)
            {
              v246 = 2;
            }

            else
            {
              v246 = 1;
            }

LABEL_269:
            v252 = &v231[v191];
            if (v252 < v251)
            {
              while (1)
              {
                v253 = *v238;
                v254 = *(v234 + 8 * v190 * v253);
                while (1)
                {
                  v255 = *v252;
                  v256 = *(v234 + 8 * v190 * v255);
                  if (v256 >= v254 && (v255 >= v253 || v256 != v254))
                  {
                    break;
                  }

                  v252 = (v252 + v206);
                }

                v257 = &v251[-v191];
                do
                {
                  v251 = v257;
                  v258 = *v257;
                  v259 = *(v234 + 8 * v190 * v258);
                  if (v259 < v254)
                  {
                    break;
                  }

                  v257 -= v191;
                }

                while (v258 >= v253 || v259 != v254);
                if (v252 >= v251)
                {
                  break;
                }

                *v252 = v258;
                *v251 = v255;
                ++v246;
                if (v252 == v238)
                {
                  v238 = v251;
                }

                v252 = (v252 + v206);
              }
            }

            if (v252 != v238)
            {
              v260 = *v238;
              v261 = *v252;
              v262 = *(v234 + 8 * v190 * v260);
              v263 = *(v234 + 8 * v190 * v261);
              if (v262 < v263 || v260 < v261 && v262 == v263)
              {
                *v252 = v260;
                *v238 = v261;
                ++v246;
              }
            }

            if (v252 != v236)
            {
              if (v246)
              {
LABEL_290:
                if (v252 <= v236)
                {
                  v264 = &v252[v191];
                }

                else
                {
                  v235 = v252;
                  v264 = v231;
                }

                goto LABEL_293;
              }

              v265 = v252;
              if (v252 <= v236)
              {
                while (&v265[v206 / 4] != v235)
                {
                  v271 = v265[v191];
                  v272 = *v265;
                  v273 = *(v234 + 8 * v190 * v271);
                  v274 = *(v234 + 8 * v190 * v272);
                  if (v273 >= v274)
                  {
                    v265 = (v265 + v206);
                    if (v271 >= v272 || v273 != v274)
                    {
                      continue;
                    }
                  }

                  goto LABEL_290;
                }
              }

              else
              {
                v266 = v231;
                while (&v266[v206 / 4] != v252)
                {
                  v267 = v266[v191];
                  v268 = *v266;
                  v269 = *(v234 + 8 * v190 * v267);
                  v270 = *(v234 + 8 * v190 * v268);
                  if (v269 >= v270)
                  {
                    v266 = (v266 + v206);
                    if (v267 >= v268 || v269 != v270)
                    {
                      continue;
                    }
                  }

                  goto LABEL_290;
                }
              }
            }

            goto LABEL_249;
          }

          v286 = &v231[v191];
          v287 = *v239;
          v288 = *(v234 + 8 * v190 * v287);
          if (v249 < v288 || v247 < v287 && v249 == v288)
          {
            v264 = &v231[v191];
          }

          else
          {
            if (v286 == v239)
            {
              break;
            }

            v264 = &v231[2 * v191];
            while (1)
            {
              v297 = *v286;
              v298 = *(v234 + 8 * v190 * v297);
              if (v249 < v298 || v247 < v297 && v249 == v298)
              {
                break;
              }

              v264 = (v264 + v206);
              v286 = (v286 + v206);
              if (v286 == v239)
              {
                goto LABEL_249;
              }
            }

            *v286 = v287;
            *v239 = v297;
          }

          if (v264 == v239)
          {
            break;
          }

          while (1)
          {
            v289 = *v231;
            v290 = *(v234 + 8 * v190 * v289);
            v291 = *v264;
            v292 = *(v234 + 8 * v190 * v291);
            LODWORD(v293) = *v264;
            if (v290 >= v292)
            {
              while (v290 != v292 || v289 >= v291)
              {
                v264 = (v264 + v206);
                v293 = *v264;
                v292 = *(v234 + 8 * v190 * v293);
                LODWORD(v291) = *v264;
                if (v290 < v292)
                {
                  goto LABEL_340;
                }
              }

              LODWORD(v293) = v291;
            }

            do
            {
              do
              {
LABEL_340:
                v239 -= v191;
                v295 = *v239;
                v296 = *(v234 + 8 * v190 * v295);
              }

              while (v290 < v296);
            }

            while (v289 < v295 && v290 == v296);
            if (v264 >= v239)
            {
              break;
            }

            *v264 = v295;
            *v239 = v293;
            v264 += v191;
          }

          if (v264 > v236)
          {
            break;
          }

LABEL_293:
          v231 = v264;
        }

        while (v235 != v236);
LABEL_249:
        if (v2455 <= ++v194)
        {
          goto LABEL_954;
        }
      }

    case 0xC:
      v495 = *(this + 8);
      if (v495 < 0)
      {
        v495 += (v1[1] - *v1) >> 2;
      }

      v496 = *(this + 9);
      v497 = v1[6];
      v498 = mlx::core::array::shape(this, v495);
      v499 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v499, v499[1], (v499[1] - *v499) >> 2);
      v500 = &v2524[4 * v495];
      v501 = v2525 - (v500 + 4);
      if (v2525 != v500 + 4)
      {
        memmove(&v2524[4 * v495], v500 + 4, v2525 - (v500 + 4));
      }

      v2525 = &v500[v501];
      v502 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v502 + 24), *(v502 + 32), (*(v502 + 32) - *(v502 + 24)) >> 3);
      v503 = v495;
      v504 = &v2521[8 * v495];
      v505 = v2522 - (v504 + 8);
      if (v2522 != v504 + 8)
      {
        memmove(&v2521[8 * v495], v504 + 8, v2522 - (v504 + 8));
      }

      v2522 = &v504[v505];
      v506 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v506, v506[1], (v506[1] - *v506) >> 2);
      v507 = 4 * v495;
      v508 = &v2518[v507];
      v509 = v2519 - &v2518[v507 + 4];
      if (v2519 != &v2518[v507 + 4])
      {
        memmove(&v2518[v507], &v2518[v507 + 4], v2519 - (v508 + 4));
      }

      v2519 = &v508[v509];
      v510 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v510 + 24), *(v510 + 32), (*(v510 + 32) - *(v510 + 24)) >> 3);
      v511 = &v2515[8 * v503];
      v512 = v2516 - (v511 + 8);
      if (v2516 != v511 + 8)
      {
        memmove(&v2515[8 * v503], v511 + 8, v2516 - (v511 + 8));
      }

      v2516 = &v511[v512];
      v513 = *(*(*this + 24) + 8 * v503);
      v514 = *(*(*(this + 2) + 24) + 8 * v503);
      v515 = mlx::core::array::shape(this, v503);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      v516 = v498;
      if (v497 < v498)
      {
        goto LABEL_2666;
      }

      v517 = 0;
      v518 = v2508;
      v519 = v2511;
      v2494 = (v2510 - v2509) >> 2;
      v2393 = *(*this + 152);
      v2470 = *(*(this + 2) + 152);
      v520 = (((v2510 - v2509) << 30) - 0x100000000) >> 32;
      v521 = v2501;
      v522 = v2504;
      v523 = (v2503 - v2502) >> 2;
      v524 = v514 * v515;
      v2484 = v514 * ((v515 & (v496 >> 31)) + v496);
      v525 = 4 * (v2494 & 0x7FFFFFFF);
      v2345 = v2509 - 8;
      v526 = 4 * (v523 & 0x7FFFFFFF);
      v2332 = v2502 - 8;
      v2360 = v2513;
      v2371 = v2506;
      v527 = v2513 + 4 * v520;
      v2433 = (((v2503 - v2502) << 30) - 0x100000000) >> 32;
      v2419 = v2509 + 4 * v520;
      v528 = &v2506[4 * v2433];
      v2406 = v2502 + 4 * v2433;
      v2457 = v497 / v516;
      v529 = 4 * v514;
      break;
    case 0xD:
      v1640 = *(this + 8);
      if (v1640 < 0)
      {
        v1640 += (v1[1] - *v1) >> 2;
      }

      v1641 = *(this + 9);
      v1642 = v1[6];
      v1643 = mlx::core::array::shape(this, v1640);
      v1644 = *this;
      v2525 = 0;
      v2526 = 0;
      v2524 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2524, *v1644, v1644[1], (v1644[1] - *v1644) >> 2);
      v1645 = &v2524[4 * v1640];
      v1646 = v2525 - (v1645 + 4);
      if (v2525 != v1645 + 4)
      {
        memmove(&v2524[4 * v1640], v1645 + 4, v2525 - (v1645 + 4));
      }

      v2525 = &v1645[v1646];
      v1647 = *this;
      v2522 = 0;
      v2523 = 0;
      v2521 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2521, *(v1647 + 24), *(v1647 + 32), (*(v1647 + 32) - *(v1647 + 24)) >> 3);
      v1648 = v1640;
      v1649 = &v2521[8 * v1640];
      v1650 = v2522 - (v1649 + 8);
      if (v2522 != v1649 + 8)
      {
        memmove(&v2521[8 * v1640], v1649 + 8, v2522 - (v1649 + 8));
      }

      v2522 = &v1649[v1650];
      v1651 = *(this + 2);
      v2519 = 0;
      v2520 = 0;
      v2518 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v2518, *v1651, v1651[1], (v1651[1] - *v1651) >> 2);
      v1652 = 4 * v1640;
      v1653 = &v2518[v1652];
      v1654 = v2519 - &v2518[v1652 + 4];
      if (v2519 != &v2518[v1652 + 4])
      {
        memmove(&v2518[v1652], &v2518[v1652 + 4], v2519 - (v1653 + 4));
      }

      v2519 = &v1653[v1654];
      v1655 = *(this + 2);
      v2516 = 0;
      v2517 = 0;
      v2515 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v2515, *(v1655 + 24), *(v1655 + 32), (*(v1655 + 32) - *(v1655 + 24)) >> 3);
      v1656 = &v2515[8 * v1648];
      v1657 = v2516 - (v1656 + 8);
      if (v2516 != v1656 + 8)
      {
        memmove(&v2515[8 * v1648], v1656 + 8, v2516 - (v1656 + 8));
      }

      v2516 = &v1656[v1657];
      v1658 = *(*(*this + 24) + 8 * v1648);
      v1659 = *(*(*(this + 2) + 24) + 8 * v1648);
      v1660 = mlx::core::array::shape(this, v1648);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2508, &v2524, &v2521, (v2525 - v2524) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v2501, &v2518, &v2515, (v2519 - v2518) >> 2);
      if (v1642 < v1643)
      {
        goto LABEL_2666;
      }

      v1661 = 0;
      v2440 = *(*this + 152);
      v2426 = *(*(this + 2) + 152);
      v2451 = v1659 * ((v1660 & (v1641 >> 31)) + v1641);
      v2498 = v1659 * v1660;
      v1662 = 4 * v1659;
      v2412 = v1642 / v1643;
      while (1)
      {
        v2477 = v1661;
        v1663 = v2501;
        v1664 = v2508;
        v1665 = v2510 - v2509;
        v1666 = (v2510 - v2509) >> 2;
        if (v1666)
        {
          v1667 = ((v1665 << 30) - 0x100000000) >> 32;
          v1668 = v2513;
          v1669 = v2511;
          v1670 = v2513 + 4 * v1667;
          v1671 = *v1670;
          v1672 = v2509 + 4 * v1667;
          if (v1666 >= 2 && v1671 == *v1672 - 1)
          {
            v1676 = (v1665 >> 2) & 0x7FFFFFFF;
            v1675 = v1676 - 1;
            v1677 = 4 * v1676;
            v1678 = v2509 - 8;
            v1674 = v2508;
            do
            {
              v1679 = v1675;
              *v1670 = 0;
              v1674 -= v1669[v1667] * (*v1672 - 1);
              v2508 = v1674;
              --v1675;
              v1670 = &v1668[v1677 - 8];
              v1671 = *v1670;
              v1668 -= 4;
              if (v1679 < 2)
              {
                break;
              }

              v1672 = &v1678[v1677];
              v1680 = *&v1678[4 * v1676] - 1;
              v1678 -= 4;
              v1667 = v1675;
            }

            while (v1671 == v1680);
            v1670 = &v1668[4 * v1676 - 4];
          }

          else
          {
            v1674 = v2508;
            v1675 = ((v1665 << 30) - 0x100000000) >> 32;
          }

          *v1670 = v1671 + 1;
          v2508 = v1669[v1675] + v1674;
        }

        v1681 = v2503 - v2502;
        v1682 = (v2503 - v2502) >> 2;
        if (v1682)
        {
          v1683 = ((v1681 << 30) - 0x100000000) >> 32;
          v1684 = v2506;
          v1685 = v2504;
          v1686 = &v2506[4 * v1683];
          v1687 = *v1686;
          v1688 = v2502 + 4 * v1683;
          if (v1682 >= 2 && v1687 == *v1688 - 1)
          {
            v1692 = (v1681 >> 2) & 0x7FFFFFFF;
            v1691 = v1692 - 1;
            v1693 = 4 * v1692;
            v1694 = v2502 - 8;
            v1690 = v1663;
            do
            {
              v1695 = v1691;
              *v1686 = 0;
              v1690 -= v1685[v1683] * (*v1688 - 1);
              v2501 = v1690;
              --v1691;
              v1686 = &v1684[v1693 - 8];
              v1687 = *v1686;
              v1684 -= 4;
              if (v1695 < 2)
              {
                break;
              }

              v1688 = &v1694[v1693];
              v1696 = *&v1694[4 * v1692] - 1;
              v1694 -= 4;
              v1683 = v1691;
            }

            while (v1687 == v1696);
            v1686 = &v1684[4 * v1692 - 4];
          }

          else
          {
            v1690 = v1663;
            v1691 = ((v1681 << 30) - 0x100000000) >> 32;
          }

          *v1686 = v1687 + 1;
          v2501 = v1685[v1691] + v1690;
        }

        v1697 = (v2426 + 4 * v1663);
        if (v2498)
        {
          v1698 = 0;
          v1699 = 0;
          do
          {
            *(v1697 + v1698) = v1699++;
            v1698 += v1662;
          }

          while (4 * v2498 != v1698);
        }

        v1700 = v2440 + 8 * v1664;
        v2527 = v1700;
        v2528 = v1658;
        if (v2451 == v2498)
        {
          goto LABEL_2053;
        }

        v1701 = &v1697[v2498];
        v2490 = &v1697[v2451];
        do
        {
          v1702 = (v1701 - v1697) / v1659;
          if (v1702 < 2)
          {
            break;
          }

          if (v1702 == 3)
          {
            break;
          }

          if (v1702 == 2)
          {
            v1794 = v1701[-v1659];
            v1795 = *v1697;
            v1796 = (v1700 + 8 * v1658 * v1794);
            v1797 = (v1700 + 8 * v1658 * v1795);
            if (*v1797 > *v1796 || ((v1798 = v1796[1], v1799 = v1797[1], *v1797 == *v1796) ? (v1800 = v1799 <= v1798) : (v1800 = 1), !v1800 || v1794 < v1795 && (*v1797 == *v1796 ? (v1801 = v1798 == v1799) : (v1801 = 0), v1801)))
            {
              *v1697 = v1794;
              v1701[-v1659] = v1795;
            }

            break;
          }

          v1703 = &v1701[-v1659];
          if (v1702 <= 7)
          {
            if (v1703 != v1697)
            {
              v1802 = v2527;
              v1803 = v2528;
              v1804 = &v1697[v1662 / 4];
              do
              {
                v1805 = &v1697[v1659];
                if (v1701 != v1697 && v1805 != v1701)
                {
                  v1806 = v1804;
                  v1807 = v1697;
                  do
                  {
                    v1808 = *v1806;
                    v1809 = *v1807;
                    v1810 = (v1802 + 8 * v1803 * v1808);
                    v1811 = (v1802 + 8 * v1803 * v1809);
                    if (*v1811 > *v1810 || ((v1812 = v1810[1], v1813 = v1811[1], *v1811 == *v1810) ? (v1814 = v1813 <= v1812) : (v1814 = 1), !v1814 || v1808 < v1809 && (*v1811 == *v1810 ? (v1815 = v1812 == v1813) : (v1815 = 0), v1815)))
                    {
                      v1807 = v1806;
                    }

                    v1806 = (v1806 + v1662);
                  }

                  while (v1806 != v1701);
                  if (v1807 != v1697)
                  {
                    v1816 = *v1697;
                    *v1697 = *v1807;
                    *v1807 = v1816;
                  }
                }

                v1804 = (v1804 + v1662);
                v1697 += v1659;
              }

              while (v1805 != v1703);
            }

            break;
          }

          v1704 = &v1697[((v1702 >> 1) & 0x3FFFFFFF) * v1659];
          v1706 = *v1697;
          v1707 = *v1704;
          v1708 = (v1700 + 8 * v1658 * v1706);
          v1709 = *v1708;
          v1710 = (v1700 + 8 * v1658 * v1707);
          v1711 = *v1710;
          v1712 = &v1697[v1659];
          if (*v1710 > *v1708 || ((v1713 = v1708[1], v1714 = v1710[1], *v1710 == *v1708) ? (v1715 = v1714 <= v1713) : (v1715 = 1), !v1715 || v1706 < v1707 && (v1711 == v1709 ? (v1716 = v1713 == v1714) : (v1716 = 0), v1716)))
          {
            v1717 = &v1701[-v1659];
            goto LABEL_2073;
          }

          v1762 = &v1701[-2 * v1659];
          do
          {
            if (v1762 == v1697)
            {
              v1769 = *v1703;
              v1770 = (v1700 + 8 * v1658 * v1769);
              if (*v1770 <= v1709)
              {
                v1771 = v1770[1];
                v1772 = *v1770 != v1709 || v1771 <= v1713;
                v1742 = v2490;
                if (!v1772 || v1706 < v1769 && (*v1770 == v1709 ? (v1773 = v1713 == v1771) : (v1773 = 0), v1773))
                {
                  v1743 = &v1697[v1659];
                }

                else
                {
                  if (v1712 == v1703)
                  {
                    goto LABEL_2053;
                  }

                  v1743 = &v1697[2 * v1659];
                  while (1)
                  {
                    v1789 = *v1712;
                    v1790 = (v1700 + 8 * v1658 * v1789);
                    if (*v1790 > v1709)
                    {
                      break;
                    }

                    v1791 = v1790[1];
                    if (*v1790 == v1709 && v1791 > v1713)
                    {
                      break;
                    }

                    if (v1706 < v1789 && *v1790 == v1709 && v1713 == v1791)
                    {
                      break;
                    }

                    v1743 = (v1743 + v1662);
                    v1712 = (v1712 + v1662);
                    if (v1712 == v1703)
                    {
                      goto LABEL_2053;
                    }
                  }

                  *v1712 = v1769;
                  *v1703 = v1789;
                }
              }

              else
              {
                v1743 = &v1697[v1659];
                v1742 = v2490;
              }

              if (v1743 != v1703)
              {
                while (1)
                {
                  v1774 = *v1697;
                  v1775 = (v1700 + 8 * v1658 * v1774);
                  v1776 = *v1775;
                  v1777 = v1775[1];
                  v1778 = *v1743;
                  for (i = v1658 * v1778; ; i = v1658 * v1778)
                  {
                    v1780 = *(v1700 + 8 * i);
                    if (v1780 > v1776)
                    {
                      break;
                    }

                    v1781 = *(v1700 + 8 * i + 4);
                    if (v1780 == v1776 && v1781 > v1777)
                    {
                      break;
                    }

                    if (v1774 < v1778 && v1780 == v1776 && v1777 == v1781)
                    {
                      break;
                    }

                    v1743 = (v1743 + v1662);
                    v1778 = *v1743;
                  }

                  while (1)
                  {
                    do
                    {
                      v1703 -= v1659;
                      v1784 = *v1703;
                      v1785 = (v1700 + 8 * v1658 * v1784);
                    }

                    while (*v1785 > v1776);
                    v1786 = v1785[1];
                    if (*v1785 != v1776 || v1786 <= v1777)
                    {
                      if (v1774 >= v1784)
                      {
                        break;
                      }

                      if (*v1785 != v1776 || v1777 != v1786)
                      {
                        break;
                      }
                    }
                  }

                  if (v1743 >= v1703)
                  {
                    break;
                  }

                  *v1743 = v1784;
                  *v1703 = v1778;
                  v1743 += v1659;
                }

                if (v1743 <= v1742)
                {
                  goto LABEL_2123;
                }
              }

              goto LABEL_2053;
            }

            v1717 = v1762;
            v1763 = *v1762;
            v1764 = (v1700 + 8 * v1658 * v1763);
            v1765 = *v1764;
            if (v1711 > *v1764)
            {
              break;
            }

            v1766 = v1764[1];
            if (v1711 == *v1764 && v1714 > v1766)
            {
              break;
            }

            v1762 = &v1717[-v1659];
          }

          while (v1763 >= v1707 || v1711 != v1765 || v1766 != v1714);
          *v1697 = v1763;
          *v1717 = v1706;
          if (v1705)
          {
            v1705 = 2;
          }

          else
          {
            v1705 = 1;
          }

LABEL_2073:
          if (v1712 < v1717)
          {
            while (1)
            {
              v1718 = *v1704;
              v1719 = (v1700 + 8 * v1658 * v1718);
              v1720 = *v1719;
              v1721 = v1719[1];
              while (1)
              {
                v1722 = *v1712;
                v1723 = (v1700 + 8 * v1658 * v1722);
                if (v1720 <= *v1723)
                {
                  v1724 = v1723[1];
                  if (v1720 != *v1723 || v1721 <= v1724)
                  {
                    if (v1722 >= v1718)
                    {
                      break;
                    }

                    if (v1720 != *v1723 || v1724 != v1721)
                    {
                      break;
                    }
                  }
                }

                v1712 = (v1712 + v1662);
              }

              v1727 = &v1717[-v1659];
              do
              {
                v1717 = v1727;
                v1728 = *v1727;
                v1729 = (v1700 + 8 * v1658 * v1728);
                v1730 = *v1729;
                if (v1720 > *v1729)
                {
                  break;
                }

                v1731 = v1729[1];
                if (v1720 == *v1729 && v1721 > v1731)
                {
                  break;
                }

                v1727 = &v1717[-v1659];
              }

              while (v1728 >= v1718 || v1720 != v1730 || v1731 != v1721);
              if (v1712 >= v1717)
              {
                break;
              }

              *v1712 = v1728;
              *v1717 = v1722;
              ++v1705;
              if (v1712 == v1704)
              {
                v1704 = v1717;
              }

              v1712 = (v1712 + v1662);
            }
          }

          if (v1712 != v1704)
          {
            v1734 = *v1704;
            v1735 = *v1712;
            v1736 = (v1700 + 8 * v1658 * v1734);
            v1737 = (v1700 + 8 * v1658 * v1735);
            if (*v1737 > *v1736 || ((v1738 = v1736[1], v1739 = v1737[1], *v1737 == *v1736) ? (v1740 = v1739 <= v1738) : (v1740 = 1), !v1740 || v1734 < v1735 && (*v1737 == *v1736 ? (v1741 = v1738 == v1739) : (v1741 = 0), v1741)))
            {
              *v1712 = v1734;
              *v1704 = v1735;
              ++v1705;
            }
          }

          v1742 = v2490;
          if (v1712 == v2490)
          {
            break;
          }

          if (!v1705)
          {
            v1744 = v1712;
            if (v1712 <= v2490)
            {
              while (&v1744[v1662 / 4] != v1701)
              {
                v1754 = v1744[v1659];
                v1755 = *v1744;
                v1756 = (v1700 + 8 * v1658 * v1754);
                v1757 = (v1700 + 8 * v1658 * v1755);
                if (*v1757 <= *v1756)
                {
                  v1758 = v1756[1];
                  v1759 = v1757[1];
                  if (*v1757 != *v1756 || v1759 <= v1758)
                  {
                    v1744 = (v1744 + v1662);
                    if (v1754 >= v1755)
                    {
                      continue;
                    }

                    if (*v1757 != *v1756 || v1758 != v1759)
                    {
                      continue;
                    }
                  }
                }

                goto LABEL_2121;
              }
            }

            else
            {
              v1745 = v1697;
              while (&v1745[v1662 / 4] != v1712)
              {
                v1746 = v1745[v1659];
                v1747 = *v1745;
                v1748 = (v1700 + 8 * v1658 * v1746);
                v1749 = (v1700 + 8 * v1658 * v1747);
                if (*v1749 <= *v1748)
                {
                  v1750 = v1748[1];
                  v1751 = v1749[1];
                  if (*v1749 != *v1748 || v1751 <= v1750)
                  {
                    v1745 = (v1745 + v1662);
                    if (v1746 >= v1747)
                    {
                      continue;
                    }

                    if (*v1749 != *v1748 || v1750 != v1751)
                    {
                      continue;
                    }
                  }
                }

                goto LABEL_2121;
              }
            }

            break;
          }

LABEL_2121:
          v1743 = &v1712[v1659];
          if (v1712 > v2490)
          {
            v1701 = v1712;
            v1743 = v1697;
          }

LABEL_2123:
          v1697 = v1743;
        }

        while (v1701 != v1742);
LABEL_2053:
        v1661 = v2477 + 1;
        if (v2412 <= v2477 + 1)
        {
LABEL_2666:
          v803 = v2506;
          goto LABEL_2870;
        }
      }

    default:
      return;
  }

LABEL_616:
  v530 = v521;
  v531 = v518;
  if (v2494)
  {
    v532 = *v527;
    if (v2494 < 2)
    {
      v533 = v518;
      v534 = v520;
      v535 = v527;
    }

    else
    {
      v533 = v518;
      v534 = v520;
      v535 = v527;
      if (v532 == *v2419 - 1)
      {
        v534 = (v2494 & 0x7FFFFFFF) - 1;
        v536 = v2360;
        v537 = v2345;
        v533 = v518;
        v538 = v2419;
        v539 = v527;
        v540 = v520;
        do
        {
          v541 = v534;
          *v539 = 0;
          v533 -= v519[v540] * (*v538 - 1);
          v2508 = v533;
          --v534;
          v539 = &v536[v525 - 8];
          v532 = *v539;
          v536 -= 4;
          if (v541 < 2)
          {
            break;
          }

          v538 = &v537[v525];
          v542 = *&v537[4 * (v2494 & 0x7FFFFFFF)] - 1;
          v537 -= 4;
          v540 = v534;
        }

        while (v532 == v542);
        v535 = &v536[v525 - 4];
      }
    }

    *v535 = v532 + 1;
    v518 = v519[v534] + v533;
    v2508 = v518;
  }

  v521 = v530;
  if (v523)
  {
    v543 = *v528;
    if (v523 < 2)
    {
      v544 = v530;
      v545 = v2433;
      v546 = v528;
    }

    else
    {
      v544 = v530;
      v545 = v2433;
      v546 = v528;
      if (v543 == *v2406 - 1)
      {
        v547 = v2371;
        v548 = v2332;
        v545 = (v523 & 0x7FFFFFFF) - 1;
        v544 = v530;
        v549 = v2406;
        v550 = v528;
        v551 = v2433;
        do
        {
          v552 = v545;
          *v550 = 0;
          v544 -= v522[v551] * (*v549 - 1);
          v2501 = v544;
          --v545;
          v550 = &v547[v526 - 8];
          v543 = *v550;
          v547 -= 4;
          if (v552 < 2)
          {
            break;
          }

          v549 = &v548[v526];
          v553 = *&v548[4 * (v523 & 0x7FFFFFFF)] - 1;
          v548 -= 4;
          v551 = v545;
        }

        while (v543 == v553);
        v546 = &v547[v526 - 4];
      }
    }

    *v546 = v543 + 1;
    v521 = v522[v545] + v544;
    v2501 = v521;
  }

  v554 = (v2470 + 4 * v530);
  if (v524)
  {
    v555 = 0;
    v556 = 0;
    do
    {
      *(v554 + v555) = v556++;
      v555 += v529;
    }

    while (4 * v524 != v555);
  }

  if (v2484 == v524)
  {
    goto LABEL_638;
  }

  v557 = v2393 + 2 * v531;
  v558 = &v554[v524];
  v559 = &v554[v2484];
  while (1)
  {
    v560 = (v558 - v554) / v514;
    if (v560 < 2)
    {
      goto LABEL_638;
    }

    if (v560 == 3)
    {
      v626 = v554[v514];
      v623 = *v554;
      LODWORD(v627) = *(v557 + 2 * v513 * v626) << 16;
      LODWORD(v628) = *(v557 + 2 * v513 * v623) << 16;
      if (v627 >= v628 && (v626 >= v623 || v627 != v628))
      {
        v641 = v558[-v514];
        LODWORD(v642) = *(v557 + 2 * v513 * v641) << 16;
        if (v642 < v627 || v641 < v626 && v642 == v627)
        {
          v554[v514] = v641;
          v558[-v514] = v626;
          v643 = v554[v514];
          v644 = *v554;
          LODWORD(v645) = *(v557 + 2 * v513 * v643) << 16;
          LODWORD(v646) = *(v557 + 2 * v513 * v644) << 16;
          if (v645 < v646 || v643 < v644 && v645 == v646)
          {
            *v554 = v643;
            v554[v514] = v644;
          }
        }

        goto LABEL_638;
      }

      v629 = v558[-v514];
      LODWORD(v630) = *(v557 + 2 * v513 * v629) << 16;
      if (v630 < v627 || v629 < v626 && v630 == v627)
      {
        *v554 = v629;
      }

      else
      {
        *v554 = v626;
        v554[v514] = v623;
        v647 = v558[-v514];
        LODWORD(v648) = *(v557 + 2 * v513 * v647) << 16;
        if (v648 >= v628 && (v647 >= v623 || v648 != v628))
        {
          goto LABEL_638;
        }

        v554[v514] = v647;
      }

LABEL_753:
      v558[-v514] = v623;
      goto LABEL_638;
    }

    if (v560 == 2)
    {
      v622 = v558[-v514];
      v623 = *v554;
      LODWORD(v624) = *(v557 + 2 * v513 * v622) << 16;
      LODWORD(v625) = *(v557 + 2 * v513 * v623) << 16;
      if (v624 >= v625 && (v622 >= v623 || v624 != v625))
      {
        goto LABEL_638;
      }

      *v554 = v622;
      goto LABEL_753;
    }

    if (v560 <= 7)
    {
      v631 = &v558[-v514];
      if (v631 != v554)
      {
        v632 = &v554[v529 / 4];
        do
        {
          v633 = &v554[v514];
          if (v558 != v554 && v633 != v558)
          {
            v634 = v632;
            v635 = v554;
            do
            {
              v636 = *v634;
              v637 = *v635;
              LODWORD(v638) = *(v557 + 2 * v513 * v636) << 16;
              LODWORD(v639) = *(v557 + 2 * v513 * v637) << 16;
              if (v638 < v639 || v636 < v637 && v638 == v639)
              {
                v635 = v634;
              }

              v634 = (v634 + v529);
            }

            while (v634 != v558);
            if (v635 != v554)
            {
              v640 = *v554;
              *v554 = *v635;
              *v635 = v640;
            }
          }

          v632 = (v632 + v529);
          v554 += v514;
        }

        while (v633 != v631);
      }

      goto LABEL_638;
    }

    v561 = &v554[((v560 >> 1) & 0x3FFFFFFF) * v514];
    v562 = *v561;
    v563 = *v554;
    v564 = &v558[-v514];
    LODWORD(v565) = *(v557 + 2 * v513 * v562) << 16;
    LODWORD(v566) = *(v557 + 2 * v513 * v563) << 16;
    if (v565 < v566 || v562 < v563 && v565 == v566)
    {
      v567 = *v564;
      LODWORD(v568) = *(v557 + 2 * v513 * v567) << 16;
      if (v568 < v565 || v567 < v562 && v568 == v565)
      {
        *v554 = v567;
      }

      else
      {
        *v554 = v562;
        *v561 = v563;
        v607 = *v564;
        LODWORD(v608) = *(v557 + 2 * v513 * v607) << 16;
        if (v608 >= v566)
        {
          v569 = 1;
          if (v607 >= v563 || v608 != v566)
          {
            goto LABEL_654;
          }
        }

        *v561 = v607;
      }

      *v564 = v563;
    }

    else
    {
      v598 = *v564;
      LODWORD(v599) = *(v557 + 2 * v513 * v598) << 16;
      if (v599 >= v565)
      {
        v569 = 0;
        if (v598 >= v562 || v599 != v565)
        {
          goto LABEL_654;
        }
      }

      *v561 = v598;
      *v564 = v562;
      v600 = *v561;
      v601 = *v554;
      LODWORD(v602) = *(v557 + 2 * v513 * v600) << 16;
      LODWORD(v603) = *(v557 + 2 * v513 * v601) << 16;
      if (v602 >= v603)
      {
        v569 = 1;
        if (v600 >= v601 || v602 != v603)
        {
          goto LABEL_654;
        }
      }

      *v554 = v600;
      *v561 = v601;
    }

    v569 = 1;
LABEL_654:
    v570 = *v554;
    v571 = *v561;
    LODWORD(v572) = *(v557 + 2 * v513 * v570) << 16;
    LODWORD(v573) = *(v557 + 2 * v513 * v571) << 16;
    if (v572 < v573 || v570 < v571 && v572 == v573)
    {
      v574 = &v558[-v514];
      goto LABEL_658;
    }

    v604 = &v558[-2 * v514];
    while (v604 != v554)
    {
      v574 = v604;
      v605 = *v604;
      LODWORD(v606) = *(v557 + 2 * v513 * v605) << 16;
      if (v606 >= v573)
      {
        v604 -= v514;
        if (v605 >= v571 || v606 != v573)
        {
          continue;
        }
      }

      *v554 = v605;
      *v574 = v570;
      if (v569)
      {
        v569 = 2;
      }

      else
      {
        v569 = 1;
      }

LABEL_658:
      v575 = &v554[v514];
      if (v575 < v574)
      {
        while (1)
        {
          v576 = *v561;
          LODWORD(v577) = *(v557 + 2 * v513 * v576) << 16;
          while (1)
          {
            v578 = *v575;
            LODWORD(v579) = *(v557 + 2 * v513 * v578) << 16;
            if (v579 >= v577 && (v578 >= v576 || v579 != v577))
            {
              break;
            }

            v575 = (v575 + v529);
          }

          v580 = &v574[-v514];
          do
          {
            v574 = v580;
            v581 = *v580;
            LODWORD(v582) = *(v557 + 2 * v513 * v581) << 16;
            if (v582 < v577)
            {
              break;
            }

            v580 -= v514;
          }

          while (v581 >= v576 || v582 != v577);
          if (v575 >= v574)
          {
            break;
          }

          *v575 = v581;
          *v574 = v578;
          ++v569;
          if (v575 == v561)
          {
            v561 = v574;
          }

          v575 = (v575 + v529);
        }
      }

      if (v575 != v561)
      {
        v583 = *v561;
        v584 = *v575;
        LODWORD(v585) = *(v557 + 2 * v513 * v583) << 16;
        LODWORD(v586) = *(v557 + 2 * v513 * v584) << 16;
        if (v585 < v586 || v583 < v584 && v585 == v586)
        {
          *v575 = v583;
          *v561 = v584;
          ++v569;
        }
      }

      if (v575 != v559)
      {
        if (v569)
        {
LABEL_679:
          if (v575 <= v559)
          {
            v587 = &v575[v514];
          }

          else
          {
            v558 = v575;
            v587 = v554;
          }

          goto LABEL_682;
        }

        v588 = v575;
        if (v575 <= v559)
        {
          while (&v588[v529 / 4] != v558)
          {
            v594 = v588[v514];
            v595 = *v588;
            LODWORD(v596) = *(v557 + 2 * v513 * v594) << 16;
            LODWORD(v597) = *(v557 + 2 * v513 * v595) << 16;
            if (v596 >= v597)
            {
              v588 = (v588 + v529);
              if (v594 >= v595 || v596 != v597)
              {
                continue;
              }
            }

            goto LABEL_679;
          }
        }

        else
        {
          v589 = v554;
          while (&v589[v529 / 4] != v575)
          {
            v590 = v589[v514];
            v591 = *v589;
            LODWORD(v592) = *(v557 + 2 * v513 * v590) << 16;
            LODWORD(v593) = *(v557 + 2 * v513 * v591) << 16;
            if (v592 >= v593)
            {
              v589 = (v589 + v529);
              if (v590 >= v591 || v592 != v593)
              {
                continue;
              }
            }

            goto LABEL_679;
          }
        }
      }

      goto LABEL_638;
    }

    v609 = &v554[v514];
    v610 = *v564;
    LODWORD(v611) = *(v557 + 2 * v513 * v610) << 16;
    if (v572 < v611 || v570 < v610 && v572 == v611)
    {
      v587 = &v554[v514];
    }

    else
    {
      if (v609 == v564)
      {
        goto LABEL_638;
      }

      v587 = &v554[2 * v514];
      while (1)
      {
        v620 = *v609;
        LODWORD(v621) = *(v557 + 2 * v513 * v620) << 16;
        if (v572 < v621 || v570 < v620 && v572 == v621)
        {
          break;
        }

        v587 = (v587 + v529);
        v609 = (v609 + v529);
        if (v609 == v564)
        {
          goto LABEL_638;
        }
      }

      *v609 = v610;
      *v564 = v620;
    }

    if (v587 == v564)
    {
      goto LABEL_638;
    }

    while (1)
    {
      v612 = *v554;
      LODWORD(v613) = *(v557 + 2 * v513 * v612) << 16;
      v614 = *v587;
      v615 = *(v557 + 2 * v513 * v614) << 16;
      LODWORD(v616) = *v587;
      if (v613 >= *&v615)
      {
        while (*&v615 != v613 || v612 >= v614)
        {
          v587 = (v587 + v529);
          v616 = *v587;
          v615 = *(v557 + 2 * v513 * v616) << 16;
          LODWORD(v614) = *v587;
          if (v613 < *&v615)
          {
            goto LABEL_727;
          }
        }

        LODWORD(v616) = v614;
      }

      do
      {
        do
        {
LABEL_727:
          v564 -= v514;
          v618 = *v564;
          LODWORD(v619) = *(v557 + 2 * v513 * v618) << 16;
        }

        while (v613 < v619);
      }

      while (v612 < v618 && v613 == v619);
      if (v587 >= v564)
      {
        break;
      }

      *v587 = v618;
      *v564 = v616;
      v587 += v514;
    }

    if (v587 > v559)
    {
LABEL_638:
      if (v2457 <= ++v517)
      {
        goto LABEL_954;
      }

      goto LABEL_616;
    }

LABEL_682:
    v554 = v587;
    if (v558 == v559)
    {
      goto LABEL_638;
    }
  }
}