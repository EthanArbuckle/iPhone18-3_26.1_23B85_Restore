void sub_10012A5A0(uint64_t a1, unint64_t a2)
{
  v25 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v25);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v9 = 8 * v7;
  if (v8 < 0xB)
  {
    v10 = v4;
LABEL_12:
    v19 = &v5[8 * v7];
    do
    {
      v20 = *v6;
      *v6 = 0;
      v6 += 8;
      *v10 = v20;
      v10 += 8;
    }

    while (v6 != v19);
    goto LABEL_14;
  }

  v11 = v5 >= &v4[v9] || v4 >= &v5[v9];
  v10 = v4;
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v8 + 1;
  v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
  v10 = &v4[v13];
  v6 = &v5[v13];
  v14 = (v5 + 16);
  v15 = v4 + 16;
  v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    *(v14 - 1) = 0uLL;
    *v14 = 0uLL;
    *(v15 - 1) = v17;
    *v15 = v18;
    v14 += 2;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v21 = v5 - 8;
  do
  {
    v22 = *&v21[v9];
    *&v21[v9] = 0;
    if (v22)
    {
      v23 = *(v22 + 24);
      if (v23 != (v22 + 40))
      {
        free(v23);
      }

      operator delete();
    }

    v9 -= 8;
  }

  while (v9);
  v6 = *a1;
LABEL_21:
  v24 = v25;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v24;
}

void sub_10012A710(void **a1, uint64_t a2)
{
  v4 = a1[15];
  llvm::DominatorTreeBase<mlir::Block,false>::reset(a1);
  a1[15] = v4;
  if (a2)
  {
    v5 = *(a2 + 16);
    if (!v5)
    {
      v13 = 0;
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    if (v5 == v6)
    {
      *(v6 + 592) = *(v5 + 592);
LABEL_24:
      v13 = a2;
LABEL_25:
      v28 = 0x4000000001;
      v29[0] = 0;
      v30 = 0u;
      v31 = 0;
      v32 = v13;
      __src = &v26;
      v15 = v4[1];
      if (v15)
      {
        v16 = v15 - 8;
      }

      else
      {
        v16 = 0;
      }

      v26 = v16;
      v27 = v29;
      v25 = 0x100000001;
      if (&__src == a1)
      {
        goto LABEL_37;
      }

      if (*(a1 + 2))
      {
        **a1 = v16;
        goto LABEL_35;
      }

      if (*(a1 + 3))
      {
        v17 = 1;
      }

      else
      {
        *(a1 + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, 1uLL, 8);
        v17 = v25;
        if (!v25)
        {
          goto LABEL_35;
        }
      }

      memcpy(*a1, __src, 8 * v17);
LABEL_35:
      *(a1 + 2) = 1;
      LODWORD(v25) = 0;
      if (__src != &v26)
      {
        free(__src);
      }

LABEL_37:
      sub_10012C314(&v27, **a1, 0, sub_10012C008, 0, 0);
      sub_10012ABCC(&v27);
      *a2 = 1;
      if (!*(a1 + 2))
      {
        goto LABEL_38;
      }

LABEL_50:
      v23 = **a1;
      operator new();
    }

    sub_10012C010(*(a2 + 8), *(a2 + 16));
    sub_10012C010(v6 + 296, (v5 + 296));
    *(v6 + 592) = *(v5 + 592);
    v7 = (v6 + 600);
    v8 = *(v5 + 608);
    v9 = *(v6 + 608);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*v7, *(v5 + 600), 16 * v8);
      }

      goto LABEL_23;
    }

    if (*(v6 + 612) >= v8)
    {
      if (v9)
      {
        memmove(*v7, *(v5 + 600), 16 * v9);
        v10 = *(v5 + 608) - v9;
        if (!v10)
        {
LABEL_23:
          *(v6 + 608) = v8;
          v4 = a1[15];
          goto LABEL_24;
        }
      }

      else
      {
        v9 = 0;
        v10 = *(v5 + 608);
        if (!*(v5 + 608))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      *(v6 + 608) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6 + 600, (v6 + 616), v8, 16);
      v9 = 0;
      v10 = *(v5 + 608);
      if (!*(v5 + 608))
      {
        goto LABEL_23;
      }
    }

    memcpy(*v7 + 16 * v9, (*(v5 + 600) + 16 * v9), 16 * v10);
    goto LABEL_23;
  }

  v28 = 0x4000000001;
  v29[0] = 0;
  v30 = 0u;
  v31 = 0;
  v32 = 0;
  __src = &v26;
  v11 = v4[1];
  if (v11)
  {
    v12 = v11 - 8;
  }

  else
  {
    v12 = 0;
  }

  v26 = v12;
  v27 = v29;
  v25 = 0x100000001;
  if (&__src != a1)
  {
    if (*(a1 + 2))
    {
      **a1 = v12;
      goto LABEL_47;
    }

    if (*(a1 + 3))
    {
      v14 = 1;
    }

    else
    {
      *(a1 + 2) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, 1uLL, 8);
      v14 = v25;
      if (!v25)
      {
        goto LABEL_47;
      }
    }

    memcpy(*a1, __src, 8 * v14);
LABEL_47:
    *(a1 + 2) = 1;
    LODWORD(v25) = 0;
    if (__src != &v26)
    {
      free(__src);
    }
  }

  sub_10012C314(&v27, **a1, 0, sub_10012C008, 0, 0);
  sub_10012ABCC(&v27);
  if (*(a1 + 2))
  {
    goto LABEL_50;
  }

LABEL_38:
  v18 = v30;
  if (v31)
  {
    v19 = (v30 + 48);
    v20 = v31 << 6;
    do
    {
      if ((*(v19 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v21 = *(v19 - 2);
        if (v19 != v21)
        {
          free(v21);
        }
      }

      v19 += 8;
      v20 -= 64;
    }

    while (v20);
    v18 = v30;
    v22 = (v31 << 6);
  }

  else
  {
    v22 = 0;
  }

  llvm::deallocate_buffer(v18, v22, 8uLL);
  if (v27 != v29)
  {
    free(v27);
  }
}

void sub_10012ABCC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v66 = v68;
  v67 = 0x800000001;
  v68[0] = 0;
  if (v2 < 9)
  {
    if (v2 < 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v2, 8);
  }

  for (i = 1; i != v2; ++i)
  {
    v63 = *(*a1 + 8 * i);
    v4 = sub_10012B2C4(a1 + 528, &v63);
    v4[2] = *(*a1 + 8 * *(v4 + 1));
    v5 = v67;
    if (v67 >= HIDWORD(v67))
    {
      v6 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v67 + 1, 8);
      v4 = v6;
      v5 = v67;
    }

    v66[v5] = v4;
    LODWORD(v67) = v67 + 1;
  }

LABEL_8:
  v63 = v65;
  v64 = 0x2000000000;
  v7 = (v2 - 1);
  if (v7 >= 2)
  {
    v8 = v66;
    v9 = v65;
    v10 = v2;
    do
    {
      v11 = v8[v7];
      v12 = *(v11 + 4);
      *(v11 + 8) = v12;
      v13 = *(v11 + 32);
      if (v13)
      {
        v14 = *(v11 + 24);
        v15 = &v14[v13];
        do
        {
          v16 = v8[*v14];
          if (*(v16 + 4) >= v10)
          {
            v18 = 0;
            do
            {
              if (v18 >= HIDWORD(v64))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v18 + 1, 8);
                v18 = v64;
              }

              *(v63 + v18) = v16;
              v18 = v64 + 1;
              LODWORD(v64) = v64 + 1;
              v16 = v8[*(v16 + 4)];
              v19 = *(v16 + 4);
            }

            while (v19 >= v10);
            v20 = v8[*(v16 + 12)];
            v9 = v63;
            v21 = v63 - 8;
            do
            {
              v22 = *&v21[8 * v18];
              *(v22 + 4) = v19;
              v23 = *(v22 + 12);
              v24 = v8[v23];
              if (*(v20 + 8) < *(v24 + 8))
              {
                v23 = *(v16 + 12);
                *(v22 + 12) = v23;
                v24 = v20;
              }

              v16 = v22;
              v20 = v24;
              --v18;
            }

            while (v18);
            LODWORD(v64) = 0;
            v8 = v66;
            v12 = *(v11 + 8);
            v17 = *(v66[v23] + 8);
            if (v17 >= v12)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v17 = *(v8[*(v16 + 12)] + 8);
            if (v17 >= v12)
            {
              goto LABEL_14;
            }
          }

          *(v11 + 8) = v17;
          v12 = v17;
LABEL_14:
          ++v14;
        }

        while (v14 != v15);
      }

      v10 = v7--;
    }

    while ((v7 & 0xFFFFFFFE) != 0);
    if (v2 >= 3)
    {
      v25 = 2;
      v26 = 0uLL;
      while (1)
      {
        v27 = v66[v25];
        v28 = *v66[*(v27 + 8)];
        v29 = (v27 + 16);
        v30 = (v27 + 16);
        do
        {
          v35 = *v30;
          v36 = *(a1 + 528);
          v37 = *(a1 + 544);
          if (!v37)
          {
            v38 = (4 * *(a1 + 536) + 4);
LABEL_52:
            v44 = 2 * v37;
LABEL_54:
            v45 = (v44 - 1) | ((v44 - 1) >> 1);
            v46 = v45 | (v45 >> 2) | ((v45 | (v45 >> 2)) >> 4);
            v47 = ((v46 | (v46 >> 8)) >> 16) | v46 | (v46 >> 8);
            if ((v47 + 1) > 0x40)
            {
              v48 = v47 + 1;
            }

            else
            {
              v48 = 64;
            }

            *(a1 + 544) = v48;
            buffer = llvm::allocate_buffer((v48 << 6), 8uLL);
            *(a1 + 528) = buffer;
            if (v36)
            {
              v50 = (v37 << 6);
              sub_10012B610(a1 + 528, v36, &v50[v36]);
              llvm::deallocate_buffer(v36, v50, 8uLL);
              LODWORD(v51) = *(a1 + 544);
              buffer = *(a1 + 528);
              v26 = 0uLL;
              goto LABEL_65;
            }

            v26 = 0uLL;
            *(a1 + 536) = 0;
            v51 = *(a1 + 544);
            if (!v51)
            {
              goto LABEL_76;
            }

            v52 = buffer;
            if (((v51 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
            {
              goto LABEL_89;
            }

            v53 = ((v51 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
            v52 = &buffer[8 * (v53 & 0x7FFFFFFFFFFFFFELL)];
            v54 = buffer + 8;
            v55 = v53 & 0x7FFFFFFFFFFFFFELL;
            do
            {
              *(v54 - 8) = -4096;
              *v54 = -4096;
              v54 += 16;
              v55 -= 2;
            }

            while (v55);
            if (v53 != (v53 & 0x7FFFFFFFFFFFFFELL))
            {
LABEL_89:
              do
              {
                *v52 = -4096;
                v52 += 8;
              }

              while (v52 != &buffer[8 * v51]);
            }

LABEL_65:
            if (v51)
            {
              v56 = v51 - 1;
              v57 = (v51 - 1) & ((v35 >> 4) ^ (v35 >> 9));
              v32 = &buffer[8 * v57];
              v58 = *v32;
              if (v35 != *v32)
              {
                v59 = 0;
                v60 = 1;
                while (v58 != -4096)
                {
                  if (v59)
                  {
                    v61 = 0;
                  }

                  else
                  {
                    v61 = v58 == -8192;
                  }

                  if (v61)
                  {
                    v59 = v32;
                  }

                  v62 = v57 + v60++;
                  v57 = v62 & v56;
                  v32 = &buffer[8 * v57];
                  v58 = *v32;
                  v26 = 0uLL;
                  if (v35 == *v32)
                  {
                    goto LABEL_77;
                  }
                }

                if (v59)
                {
                  v32 = v59;
                }

                v26 = 0uLL;
              }
            }

            else
            {
LABEL_76:
              v32 = 0;
            }

LABEL_77:
            ++*(a1 + 536);
            if (*v32 == -4096)
            {
              goto LABEL_39;
            }

LABEL_38:
            --*(a1 + 540);
            goto LABEL_39;
          }

          v31 = ((v35 >> 4) ^ (v35 >> 9)) & (v37 - 1);
          v32 = &v36[8 * v31];
          v33 = *v32;
          if (v35 == *v32)
          {
            goto LABEL_33;
          }

          v39 = 0;
          v40 = 1;
          while (v33 != -4096)
          {
            if (v39)
            {
              v41 = 0;
            }

            else
            {
              v41 = v33 == -8192;
            }

            if (v41)
            {
              v39 = v32;
            }

            v42 = v31 + v40++;
            v31 = v42 & (v37 - 1);
            v32 = &v36[8 * v31];
            v33 = *v32;
            if (v35 == *v32)
            {
              goto LABEL_33;
            }
          }

          if (v39)
          {
            v32 = v39;
          }

          v43 = *(a1 + 536);
          if (4 * v43 + 4 >= (3 * v37))
          {
            goto LABEL_52;
          }

          if (v37 + ~v43 - *(a1 + 540) <= v37 >> 3)
          {
            v44 = *(a1 + 544);
            goto LABEL_54;
          }

          *(a1 + 536) = v43 + 1;
          if (*v32 != -4096)
          {
            goto LABEL_38;
          }

LABEL_39:
          *v32 = v35;
          *(v32 + 3) = v26;
          *(v32 + 5) = v26;
          *(v32 + 1) = v26;
          v32[7] = 0;
          v32[4] = (v32 + 6);
          *(v32 + 11) = 4;
LABEL_33:
          v34 = *(v32 + 2);
          v30 = v32 + 3;
        }

        while (v34 > v28);
        *v29 = v35;
        if (++v25 == v2)
        {
          v9 = v63;
          break;
        }
      }
    }

    if (v9 != v65)
    {
      free(v9);
    }
  }

  if (v66 != v68)
  {
    free(v66);
  }
}

uint64_t *sub_10012B188(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v19 = *(*a1 + 8);
  result = sub_10012B2C4((a1 + 132), &v19);
  result[2] = v5;
  v7 = a1[2];
  if (v7 != 1)
  {
    v8 = *a1 + 8 * v7;
    v9 = (*a1 + 8);
    while (1)
    {
      v11 = *v9;
      v12 = *(a2 + 104);
      if (!v12)
      {
        goto LABEL_4;
      }

      v13 = *(a2 + 88);
      v14 = ((v11 >> 4) ^ (v11 >> 9)) & (v12 - 1);
      v15 = *(v13 + 16 * v14);
      if (v15 != v11)
      {
        break;
      }

LABEL_8:
      if (v14 == v12)
      {
        goto LABEL_4;
      }

      v16 = *(v13 + 16 * v14 + 8);
      if (*(a2 + 32) <= v16 || !*(*(a2 + 24) + 8 * v16))
      {
        goto LABEL_4;
      }

      if (++v9 == v8)
      {
        return result;
      }
    }

    v17 = 1;
    while (v15 != -4096)
    {
      v18 = v14 + v17++;
      v14 = v18 & (v12 - 1);
      v15 = *(v13 + 16 * v14);
      if (v15 == v11)
      {
        goto LABEL_8;
      }
    }

LABEL_4:
    v19 = *v9;
    v10 = sub_10012B2C4((a1 + 132), &v19);
    sub_10012BF08(a1, v10[2], a2);
    llvm::DominatorTreeBase<mlir::Block,false>::createNode();
  }

  return result;
}

uint64_t *sub_10012B2C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + (v3 << 6));
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + (v3 << 6));
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    sub_10012B4F8(a1, v2);
    sub_10012B454(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  *(v4 + 3) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 1) = 0u;
  v4[7] = 0;
  v4[4] = (v4 + 6);
  *(v4 + 11) = 4;
  return v4 + 1;
}

uint64_t sub_10012B454(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + (v6 << 6));
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + (v6 << 6));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void sub_10012B4F8(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((v8 << 6), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = (v11 - 1) & 0x3FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x7FFFFFFFFFFFFFELL;
      v15 = &buffer[8 * v14];
      v16 = buffer + 8;
      v17 = v14;
      do
      {
        *(v16 - 8) = -4096;
        *v16 = -4096;
        v16 += 16;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v18 = &buffer[8 * v11];
    do
    {
      *v15 = -4096;
      v15 += 8;
    }

    while (v15 != v18);
    return;
  }

  v10 = (v3 << 6);
  sub_10012B610(a1, v4, &v10[v4]);

  llvm::deallocate_buffer(v4, v10, 8uLL);
}

void sub_10012B610(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x3FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0x7FFFFFFFFFFFFFELL;
      v11 = &v7[8 * v10];
      v12 = v7 + 8;
      v13 = v10;
      do
      {
        *(v12 - 8) = -4096;
        *v12 = -4096;
        v12 += 16;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[8 * v6];
    do
    {
      *v11 = -4096;
      v11 += 8;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*a1 + (v17 << 6));
        v19 = *v18;
        if (v15 != *v18)
        {
          v24 = 0;
          v25 = 1;
          while (v19 != -4096)
          {
            if (v24)
            {
              v26 = 0;
            }

            else
            {
              v26 = v19 == -8192;
            }

            if (v26)
            {
              v24 = v18;
            }

            v27 = v17 + v25++;
            v17 = v27 & v16;
            v18 = (*a1 + (v17 << 6));
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v24)
          {
            v18 = v24;
          }
        }

LABEL_15:
        *v18 = v15;
        v20 = *(v4 + 1);
        v21 = v4[3];
        v18[4] = v18 + 6;
        v22 = (v18 + 4);
        *(v22 - 8) = v21;
        *(v22 - 24) = v20;
        *(v22 + 8) = 0x400000000;
        if (*(v4 + 10))
        {
          sub_10008BE34(v22, v4 + 4);
        }

        ++*(a1 + 8);
        v23 = v4[4];
        if (v23 != v4 + 6)
        {
          free(v23);
        }
      }

      v4 += 8;
    }

    while (v4 != a3);
  }
}

void sub_10012B7A8(int *a1@<X0>, mlir::Block *a2@<X1>, void *a3@<X8>)
{
  mlir::SuccessorRange::SuccessorRange(v45, a2);
  mlir::SuccessorRange::SuccessorRange(v45, a2);
  v7 = v45[0];
  v6 = v45[1];
  v8 = (a3 + 2);
  *a3 = a3 + 2;
  a3[1] = 0x800000000;
  if (v6 < 9)
  {
    v9 = 0;
    if (!v6)
    {
      goto LABEL_7;
    }

    v10 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v8, v6, 8);
    v9 = *(a3 + 2);
    v8 = *a3;
    v10 = v9;
  }

  v11 = (v7 + 32 * v6 - 8);
  v12 = 8 * v10;
  v13 = v6;
  do
  {
    v14 = *v11;
    v11 -= 4;
    *&v8[v12] = v14;
    v12 += 8;
    --v13;
  }

  while (v13);
LABEL_7:
  v15 = v8;
  v16 = v9 + v6;
  v17 = &v8[8 * v16];
  if (v16)
  {
    v18 = 8 * v16;
    v15 = v8;
    while (*v15)
    {
      v15 += 8;
      v18 -= 8;
      if (!v18)
      {
        v15 = &v8[8 * v16];
        goto LABEL_18;
      }
    }
  }

  if (v15 != v17)
  {
    v19 = v15 + 8;
    if (v15 + 8 != v17)
    {
      v20 = &v8[8 * v16] - v15 - 8;
      do
      {
        if (*v19)
        {
          *v15 = *v19;
          v15 += 8;
        }

        ++v19;
        v20 -= 8;
      }

      while (v20);
    }
  }

LABEL_18:
  v21 = v15 - v8;
  v22 = (v15 - v8) >> 3;
  *(a3 + 2) = v22;
  v23 = a1 + 2;
  v24 = *a1;
  if (*a1)
  {
    v25 = 4;
  }

  else
  {
    v23 = *(a1 + 1);
    v25 = a1[4];
    if (!v25)
    {
      v26 = 0;
LABEL_21:
      v27 = &v23[18 * v26];
      goto LABEL_25;
    }
  }

  v28 = v25 - 1;
  v29 = (v25 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v27 = &v23[18 * v29];
  v30 = *v27;
  if (*v27 != a2)
  {
    v31 = 1;
    while (v30 != -4096)
    {
      v32 = v29 + v31++;
      v29 = v32 & v28;
      v27 = &v23[18 * (v32 & v28)];
      v30 = *v27;
      if (*v27 == a2)
      {
        goto LABEL_24;
      }
    }

    if ((v24 & 1) == 0)
    {
      v23 = *(a1 + 1);
      v26 = a1[4];
      goto LABEL_21;
    }

    v27 = a1 + 74;
LABEL_34:
    if (v27 == a1 + 74)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_24:
  if (v24)
  {
    goto LABEL_34;
  }

LABEL_25:
  if (v27 == (*(a1 + 1) + 72 * a1[4]))
  {
    return;
  }

LABEL_35:
  v33 = v27[4];
  if (v33)
  {
    v34 = (v21 >> 3);
    v35 = *(v27 + 1);
    v36 = &v35[v33];
    do
    {
      v37 = *v35;
      v38 = &v8[8 * v34];
      if (v34)
      {
        v39 = 8 * v34;
        v40 = v8;
        v41 = v8;
        while (*v41 != v37)
        {
          v41 += 8;
          v40 += 8;
          v39 -= 8;
          if (!v39)
          {
            v40 = &v8[8 * v34];
            goto LABEL_37;
          }
        }
      }

      else
      {
        v40 = v8;
        v41 = v8;
      }

      v42 = v40 + 8;
      if (v41 != v38 && v42 != v38)
      {
        v44 = &v8[8 * v34 - 8] - v40;
        do
        {
          if (*v42 != v37)
          {
            *v40 = *v42;
            v40 += 8;
          }

          v42 += 8;
          v44 -= 8;
        }

        while (v44);
      }

LABEL_37:
      v34 = ((v40 - v8) >> 3);
      ++v35;
    }

    while (v35 != v36);
    v22 = (v40 - v8) >> 3;
    *(a3 + 2) = v34;
  }

  sub_10012BBC8(a3, &v8[8 * v22], *(v27 + 5), (*(v27 + 5) + 8 * v27[12]));
}

void sub_10012BA8C(mlir::Block *a1@<X0>, void *a2@<X8>)
{
  mlir::SuccessorRange::SuccessorRange(v19, a1);
  mlir::SuccessorRange::SuccessorRange(v19, a1);
  v5 = v19[0];
  v4 = v19[1];
  v6 = (a2 + 2);
  *a2 = a2 + 2;
  a2[1] = 0x800000000;
  if (v4 < 9)
  {
    v7 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }

    v8 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, v6, v4, 8);
    v7 = *(a2 + 2);
    v6 = *a2;
    v8 = v7;
  }

  v9 = (v5 + 32 * v4 - 8);
  v10 = 8 * v8;
  v11 = v4;
  do
  {
    v12 = *v9;
    v9 -= 4;
    *&v6[v10] = v12;
    v10 += 8;
    --v11;
  }

  while (v11);
LABEL_7:
  v13 = v6;
  v14 = v7 + v4;
  v15 = &v6[8 * v14];
  if (v14)
  {
    v16 = 8 * v14;
    v13 = v6;
    while (*v13)
    {
      v13 += 8;
      v16 -= 8;
      if (!v16)
      {
        v13 = &v6[8 * v14];
        goto LABEL_18;
      }
    }
  }

  if (v13 != v15)
  {
    v17 = v13 + 8;
    if (v13 + 8 != v15)
    {
      v18 = &v6[8 * v14] - v13 - 8;
      do
      {
        if (*v17)
        {
          *v13 = *v17;
          v13 += 8;
        }

        ++v17;
        v18 -= 8;
      }

      while (v18);
    }
  }

LABEL_18:
  *(a2 + 2) = (v13 - v6) >> 3;
}

void *sub_10012BBC8(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v6 = *a1;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = a4 - __src;
  v12 = (a4 - __src) >> 3;
  v13 = v12 + v9;
  if (*a1 + 8 * v9 == a2)
  {
    if (v13 > v10)
    {
      v23 = a4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v13, 8);
      a4 = v23;
      LODWORD(v9) = *(a1 + 8);
      v7 = *a1;
    }

    if (__src != a4)
    {
      memcpy((v7 + 8 * v9), __src, v11);
      LODWORD(v9) = *(a1 + 8);
      v7 = *a1;
    }

    *(a1 + 8) = v9 + (v11 >> 3);
    return (v7 + v8);
  }

  __len = v11;
  v46 = __src;
  v48 = a4;
  if (v13 > v10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v13, 8);
    v7 = *a1;
    v9 = *(a1 + 8);
  }

  __srca = (v7 + v8);
  v15 = 8 * v9;
  v16 = (v7 + 8 * v9);
  v17 = 8 * v9 - v8;
  v18 = v17 >> 3;
  if (v17 >> 3 < v12)
  {
    v19 = v9 + (__len >> 3);
    *(a1 + 8) = v19;
    if (v15 == v8)
    {
      v20 = v46;
      v21 = v7 + v8;
      v22 = v48;
LABEL_34:
      if (v20 != v22)
      {
        memcpy(v16, v20, v22 - v20);
      }

      return v21;
    }

    v21 = v7 + v8;
    memcpy((v7 + 8 * v19 - 8 * v18), __srca, v17);
    if (v18 > 7)
    {
      if ((v7 + a2 - &v46[v6]) >= 0x20)
      {
        v40 = 8 * (v18 & 0xFFFFFFFFFFFFFFFCLL);
        v28 = &__srca[v40];
        v29 = (v17 >> 3) & 3;
        v20 = &v46[v40];
        v41 = (v46 + 16);
        v42 = (v8 + v7 + 16);
        v43 = v18 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v44 = *v41;
          *(v42 - 1) = *(v41 - 1);
          *v42 = v44;
          v41 += 2;
          v42 += 2;
          v43 -= 4;
        }

        while (v43);
        v22 = v48;
        if (v18 == (v18 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v28 = (v7 + v8);
      v29 = v17 >> 3;
      v20 = v46;
    }

    else
    {
      v28 = (v7 + v8);
      v29 = v17 >> 3;
      v20 = v46;
    }

    v22 = v48;
    do
    {
LABEL_33:
      v39 = *v20;
      v20 += 8;
      *v28 = v39;
      v28 += 8;
      --v29;
    }

    while (v29);
    goto LABEL_34;
  }

  v24 = 8 * v12;
  if (v12 + v9 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v12 + v9, 8);
    LODWORD(v9) = *(a1 + 8);
  }

  v25 = &v16[-v24];
  v21 = v7 + v8;
  if (v48 != v46)
  {
    v26 = (*a1 + 8 * v9);
    if (v24 - 8 < 0x38)
    {
      v27 = &v16[-v24];
      do
      {
LABEL_23:
        v37 = *v27;
        v27 += 8;
        *v26++ = v37;
      }

      while (v27 != v16);
      goto LABEL_24;
    }

    v30 = 8 * v9 + *a1;
    v27 = &v16[-v24];
    if ((v30 - v25) < 0x20)
    {
      goto LABEL_23;
    }

    v31 = ((v24 - 8) >> 3) + 1;
    v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
    v26 = (v26 + v32);
    v27 = &v25[v32];
    v33 = (v15 - v24 + v7 + 16);
    v34 = (v30 + 16);
    v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = *v33;
      *(v34 - 1) = *(v33 - 1);
      *v34 = v36;
      v33 += 2;
      v34 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  *(a1 + 8) = v9 + (v24 >> 3);
  if (v25 != __srca)
  {
    memmove(&__srca[v24], __srca, &v16[-v24] - __srca);
  }

  if (v48 == v46)
  {
    return v21;
  }

  return memmove(__srca, v46, __len);
}

uint64_t sub_10012BF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 104);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = *(a3 + 88);
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v5 + 16 * v6);
  if (v7 != a2)
  {
    v11 = 1;
    while (v7 != -4096)
    {
      v12 = v6 + v11++;
      v6 = v12 & (v4 - 1);
      v7 = *(v5 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    v15 = a2;
    v14 = sub_10012B2C4(a1 + 528, &v15);
    sub_10012BF08(a1, v14[2], a3);
    llvm::DominatorTreeBase<mlir::Block,false>::createNode();
  }

LABEL_3:
  if (v6 == v4)
  {
    goto LABEL_11;
  }

  v8 = *(v5 + 16 * v6 + 8);
  if (*(a3 + 32) <= v8)
  {
    goto LABEL_11;
  }

  v9 = *(*(a3 + 24) + 8 * v8);
  if (!v9)
  {
    goto LABEL_11;
  }

  return v9;
}

void sub_10012C010(uint64_t a1, _DWORD *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = a1 + 8;
    v5 = 4;
  }

  else
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = *(a1 + 8);
  }

  v7 = (v6 + 56);
  v8 = 72 * v5;
  do
  {
    if ((*(v7 - 7) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v9 = *(v7 - 2);
      if (v7 != v9)
      {
        free(v9);
      }

      v10 = *(v7 - 6);
      if (v7 - 4 != v10)
      {
        free(v10);
      }
    }

    v7 += 9;
    v8 -= 72;
  }

  while (v8);
  v4 = *a1;
LABEL_13:
  if ((v4 & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 8), (72 * *(a1 + 16)), 8uLL);
    v4 = *a1;
  }

  *a1 = v4 | 1;
  if ((*a2 & 1) == 0 && a2[4] >= 5u)
  {
    *a1 = v4 & 0xFFFFFFFE;
    if (*a2)
    {
      v11 = 4;
    }

    else
    {
      v11 = a2[4];
    }

    *(a1 + 8) = llvm::allocate_buffer((8 * (v11 + 8 * v11)), 8uLL);
    *(a1 + 16) = v11;
  }

  sub_10012C138(a1, a2);
}

void sub_10012C138(unsigned int *a1, _DWORD *a2)
{
  v2 = *a1 & 1;
  *a1 = *a2 & 0xFFFFFFFE | v2;
  a1[1] = a2[1];
  v3 = (a1 + 2);
  if (v2)
  {
    v4 = (a2 + 2);
    if (*a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *v3;
    v4 = (a2 + 2);
    if (*a2)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_12:
      v5 = 4;
      if (v3 == v4)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  v4 = *v4;
  if (v2)
  {
    goto LABEL_12;
  }

LABEL_4:
  v5 = a1[4];
  if (!v5)
  {
    return;
  }

  if (v3 != v4)
  {
LABEL_13:
    for (i = 0; ; i += 9)
    {
      v10 = v4[i];
      v3[i] = v10;
      if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_17;
      }

      v11 = &v3[i];
      v12 = &v3[i + 3];
      v3[i + 1] = v12;
      v13 = &v4[i];
      v3[i + 2] = 0x200000000;
      v14 = LODWORD(v4[i + 2]);
      if (v14)
      {
        break;
      }

LABEL_26:
      v16 = v11 + 7;
      v11[5] = (v11 + 7);
      v11[6] = 0x200000000;
      v17 = *(v13 + 12);
      if (!v17)
      {
        goto LABEL_17;
      }

      if (v17 < 3)
      {
        v9 = *(v13 + 12);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v11 + 5), v11 + 7, *(v13 + 12), 8);
        v9 = *(v13 + 12);
        if (!v9)
        {
          goto LABEL_16;
        }

        v16 = v11[5];
      }

      memcpy(v16, v13[5], 8 * v9);
LABEL_16:
      *(v11 + 12) = v17;
LABEL_17:
      if (!--v5)
      {
        return;
      }
    }

    if (v14 < 3)
    {
      v15 = LODWORD(v4[i + 2]);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v3[i + 1], &v3[i + 3], LODWORD(v4[i + 2]), 8);
      v15 = *(v13 + 4);
      if (!v15)
      {
LABEL_25:
        *(v11 + 4) = v14;
        goto LABEL_26;
      }

      v12 = v3[i + 1];
    }

    memcpy(v12, v13[1], 8 * v15);
    goto LABEL_25;
  }

LABEL_6:
  v6 = v3 + 7;
  do
  {
    v7 = *v4;
    *(v6 - 7) = *v4;
    if ((v7 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *(v6 - 6) = v6 - 4;
      *(v6 - 5) = 0x200000000;
      *(v6 - 2) = v6;
      *(v6 - 1) = 0x200000000;
    }

    v4 += 9;
    v6 += 9;
    --v5;
  }

  while (v5);
}

uint64_t sub_10012C314(uint64_t a1, void *a2, uint64_t a3, unsigned int (*a4)(void *, uint64_t), int a5, uint64_t *a6)
{
  v31 = &v33;
  v33 = a2;
  v34 = a5;
  v32 = 0x4000000001;
  v28 = a2;
  *(sub_10012B2C4(a1 + 528, &v28) + 1) = a5;
  v11 = v32;
  while (v32)
  {
    v12 = v31 + 16 * v11;
    v13 = *(v12 - 2);
    v14 = *(v12 - 2);
    LODWORD(v32) = v11 - 1;
    v28 = v13;
    v15 = sub_10012B2C4(a1 + 528, &v28);
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 9))
    {
      v25 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod((v15 + 3), v15 + 5, v16 + 1, 4);
      v15 = v25;
      v16 = *(v25 + 8);
    }

    *(v15[3] + 4 * v16) = v14;
    ++*(v15 + 8);
    if (*v15)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v15 + 2) = a3;
    *(v15 + 3) = a3;
    *v15 = a3;
    *(v15 + 1) = v14;
    v17 = *(a1 + 8);
    if (v17 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v17 + 1, 8);
      v17 = *(a1 + 8);
    }

    *(*a1 + 8 * v17) = v13;
    ++*(a1 + 8);
    v18 = *(a1 + 552);
    if (v18)
    {
      sub_10012B7A8(*(v18 + 8), v13, &v28);
      v19 = v29;
      if (a6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_10012BA8C(v13, &v28);
      v19 = v29;
      if (a6)
      {
LABEL_13:
        if (v19 >= 2)
        {
          v27 = a6;
          sub_10012C5B8(v28, v28 + v19, &v27, 126 - 2 * __clz(v19), 1);
          v19 = v29;
        }
      }
    }

    v20 = v28;
    if (v19)
    {
      v21 = 8 * v19;
      do
      {
        v23 = *v20;
        if (a4(v13, *v20))
        {
          v24 = v32;
          if (v32 >= HIDWORD(v32))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, &v33, v32 + 1, 16);
            v24 = v32;
          }

          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          v22 = v31 + 16 * v24;
          *v22 = v23;
          v22[1] = v6;
          LODWORD(v32) = v32 + 1;
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
      v20 = v28;
    }

    if (v20 != &v30)
    {
      free(v20);
    }

LABEL_3:
    v11 = v32;
  }

  if (v31 != &v33)
  {
    free(v31);
  }

  return a3;
}

uint64_t sub_10012C5B8(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = a2 - 1;
    v11 = v9;
    while (1)
    {
      while (1)
      {
        v9 = v11;
        v12 = a2 - v11;
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3:

              return sub_10012CB70(v11, v11 + 1, v10, a3);
            case 4:

              return sub_10012D050(v11, v11 + 1, v11 + 2, v10, a3);
            case 5:

              return sub_10012D340(v11, v11 + 1, v11 + 2, v11 + 3, v10, a3);
          }
        }

        else
        {
          if (v12 < 2)
          {
            return result;
          }

          if (v12 == 2)
          {
            v32 = *(a2 - 1);
            v33 = *v11;
            v34 = **a3;
            v35 = *(*a3 + 4);
            if (v35)
            {
              v36 = v35 - 1;
              v37 = (v35 - 1) & ((v32 >> 4) ^ (v32 >> 9));
              v38 = *(v34 + 16 * v37);
              if (v38 == v32)
              {
                v39 = *(v34 + 16 * v37 + 8);
LABEL_75:
                v47 = v36 & ((v33 >> 4) ^ (v33 >> 9));
                v48 = *(v34 + 16 * v47);
                if (v48 == v33)
                {
LABEL_76:
                  v35 = v47;
                }

                else
                {
                  v49 = 1;
                  while (v48 != -4096)
                  {
                    v50 = v47 + v49++;
                    v47 = v50 & v36;
                    v48 = *(v34 + 16 * v47);
                    if (v48 == v33)
                    {
                      goto LABEL_76;
                    }
                  }
                }

                goto LABEL_77;
              }

              v45 = 1;
              while (v38 != -4096)
              {
                v46 = v37 + v45++;
                v37 = v46 & v36;
                v38 = *(v34 + 16 * v37);
                if (v38 == v32)
                {
                  goto LABEL_73;
                }
              }
            }

            v37 = *(*a3 + 4);
LABEL_73:
            v39 = *(v34 + 16 * v37 + 8);
            if (v35)
            {
              v36 = v35 - 1;
              goto LABEL_75;
            }

LABEL_77:
            if (v39 < *(v34 + 16 * v35 + 8))
            {
              *v11 = v32;
              *(a2 - 1) = v33;
            }

            return result;
          }
        }

        if (v12 <= 23)
        {
          if (a5)
          {

            return sub_10012D714(v11, a2, a3);
          }

          else
          {

            return sub_10012D91C(v11, a2, a3);
          }
        }

        if (!a4)
        {
          if (v11 != a2)
          {
            v40 = (v12 - 2) >> 1;
            v41 = v40 + 1;
            v42 = &v11[v40];
            do
            {
              sub_10012E8C8(v11, a3, v12, v42--);
              --v41;
            }

            while (v41);
            do
            {
              while (1)
              {
                v44 = *v11;
                result = sub_10012ECF4(v11, a3, v12);
                if (v10 == result)
                {
                  break;
                }

                *result = *v10;
                *v10-- = v44;
                result = sub_10012EE44(v11, result + 8, a3, (result + 8 - v11) >> 3);
                v43 = v12-- <= 2;
                if (v43)
                {
                  return result;
                }
              }

              *result = v44;
              --v10;
              v43 = v12-- <= 2;
            }

            while (!v43);
          }

          return result;
        }

        if (v12 >= 0x81)
        {
          break;
        }

        sub_10012CB70(&v11[v12 >> 1], v11, v10, a3);
        --a4;
        if (a5)
        {
          goto LABEL_29;
        }

LABEL_16:
        v15 = *v11;
        v16 = **a3;
        v17 = *(*a3 + 4);
        if (v17)
        {
          v18 = *(v11 - 1);
          v19 = v17 - 1;
          v20 = (v17 - 1) & ((v18 >> 4) ^ (v18 >> 9));
          v21 = *(v16 + 16 * v20);
          if (v21 == v18)
          {
            v22 = *(v16 + 16 * v20 + 8);
            goto LABEL_26;
          }

          v23 = 1;
          while (v21 != -4096)
          {
            v24 = v20 + v23++;
            v20 = v24 & v19;
            v21 = *(v16 + 16 * v20);
            if (v21 == v18)
            {
              goto LABEL_24;
            }
          }
        }

        v20 = *(*a3 + 4);
LABEL_24:
        v22 = *(v16 + 16 * v20 + 8);
        if (v17)
        {
          v19 = v17 - 1;
LABEL_26:
          v25 = v19 & ((v15 >> 4) ^ (v15 >> 9));
          v26 = *(v16 + 16 * v25);
          if (v26 == v15)
          {
LABEL_27:
            v17 = v25;
          }

          else
          {
            v30 = 1;
            while (v26 != -4096)
            {
              v31 = v25 + v30++;
              v25 = v31 & v19;
              v26 = *(v16 + 16 * v25);
              if (v26 == v15)
              {
                goto LABEL_27;
              }
            }
          }
        }

        if (v22 < *(v16 + 16 * v17 + 8))
        {
          goto LABEL_29;
        }

        result = sub_10012DB14(v11, a2, a3);
        v11 = result;
        a5 = 0;
      }

      sub_10012CB70(v11, &v11[v12 >> 1], v10, a3);
      v13 = v12 >> 1;
      sub_10012CB70(v11 + 1, &v11[v13 - 1], a2 - 2, a3);
      sub_10012CB70(v11 + 2, &v11[v13 + 1], a2 - 3, a3);
      sub_10012CB70(&v11[v13 - 1], &v11[v13], &v11[v13 + 1], a3);
      v14 = *v11;
      *v11 = v11[v13];
      v11[v13] = v14;
      v10 = a2 - 1;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_29:
      v27 = sub_10012E048(v11, a2, a3);
      if ((v28 & 1) == 0)
      {
        goto LABEL_32;
      }

      v29 = sub_10012E4C0(v11, v27, a3);
      v11 = v27 + 1;
      result = sub_10012E4C0(v27 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v29)
      {
LABEL_32:
        result = sub_10012C5B8(v9, v27, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v27 + 1;
      }
    }

    a2 = v27;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10012CB70(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = *a1;
  v6 = **a4;
  v7 = *(*a4 + 4);
  v8 = *a2 >> 4;
  v9 = *a1 >> 4;
  if (v7)
  {
    v10 = v7 - 1;
    v11 = (v7 - 1) & (v8 ^ (v4 >> 9));
    v12 = *(v6 + 16 * v11);
    if (v12 == v4)
    {
      v13 = *(v6 + 16 * v11 + 8);
      v14 = v10 & (v9 ^ (v5 >> 9));
      v15 = *(v6 + 16 * v14);
      if (v15 == v5)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    v30 = 1;
    while (v12 != -4096)
    {
      v31 = v11 + v30++;
      v11 = v31 & v10;
      v12 = *(v6 + 16 * v11);
      if (v12 == v4)
      {
        goto LABEL_22;
      }
    }
  }

  v11 = *(*a4 + 4);
LABEL_22:
  v13 = *(v6 + 16 * v11 + 8);
  if (!v7)
  {
    goto LABEL_28;
  }

  v10 = v7 - 1;
  v14 = (v7 - 1) & (v9 ^ (v5 >> 9));
  v15 = *(v6 + 16 * v14);
  if (v15 == v5)
  {
LABEL_4:
    v16 = *(v6 + 16 * v14 + 8);
    v17 = *a3;
    if (v13 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_24:
  v32 = 1;
  while (v15 != -4096)
  {
    v33 = v14 + v32++;
    v14 = v33 & v10;
    v15 = *(v6 + 16 * v14);
    if (v15 == v5)
    {
      goto LABEL_29;
    }
  }

LABEL_28:
  v14 = v7;
LABEL_29:
  v34 = *(v6 + 16 * v14 + 8);
  v17 = *a3;
  if (v13 < v34)
  {
    if (!v7)
    {
      goto LABEL_45;
    }

    v10 = v7 - 1;
LABEL_5:
    v18 = ((v17 >> 4) ^ (v17 >> 9)) & v10;
    v19 = *(v6 + 16 * v18);
    if (v19 == v17)
    {
      v20 = *(v6 + 16 * v18 + 8);
      v21 = v10 & (v8 ^ (v4 >> 9));
      v22 = *(v6 + 16 * v21);
      if (v22 == v4)
      {
LABEL_7:
        if (v20 < *(v6 + 16 * v21 + 8))
        {
LABEL_8:
          *a1 = v17;
          goto LABEL_15;
        }

        *a1 = v4;
        *a2 = v5;
        v23 = *a3;
        goto LABEL_10;
      }

      goto LABEL_48;
    }

    v46 = 1;
    while (v19 != -4096)
    {
      v47 = v18 + v46++;
      v18 = v47 & v10;
      v19 = *(v6 + 16 * v18);
      if (v19 == v17)
      {
        goto LABEL_46;
      }
    }

LABEL_45:
    v18 = v7;
LABEL_46:
    v20 = *(v6 + 16 * v18 + 8);
    if (!v7)
    {
      goto LABEL_52;
    }

    v10 = v7 - 1;
    v21 = (v7 - 1) & (v8 ^ (v4 >> 9));
    v22 = *(v6 + 16 * v21);
    if (v22 == v4)
    {
      goto LABEL_7;
    }

LABEL_48:
    v48 = 1;
    while (v22 != -4096)
    {
      v49 = v21 + v48++;
      v21 = v49 & v10;
      v22 = *(v6 + 16 * v21);
      if (v22 == v4)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    v21 = v7;
LABEL_53:
    if (v20 < *(v6 + 16 * v21 + 8))
    {
      goto LABEL_8;
    }

    *a1 = v4;
    *a2 = v5;
    v23 = *a3;
    if (!v7)
    {
      goto LABEL_72;
    }

    v10 = v7 - 1;
LABEL_10:
    v24 = ((v23 >> 4) ^ (v23 >> 9)) & v10;
    v25 = *(v6 + 16 * v24);
    if (v25 == v23)
    {
      v26 = *(v6 + 16 * v24 + 8);
      v27 = v10 & (v9 ^ (v5 >> 9));
      v28 = *(v6 + 16 * v27);
      if (v28 == v5)
      {
LABEL_12:
        v7 = v27;
LABEL_13:
        if (v26 >= *(v6 + 16 * v7 + 8))
        {
          return 1;
        }

        *a2 = v23;
LABEL_15:
        *a3 = v5;
        return 1;
      }

LABEL_75:
      v56 = 1;
      while (v28 != -4096)
      {
        v57 = v27 + v56++;
        v27 = v57 & v10;
        v28 = *(v6 + 16 * v27);
        if (v28 == v5)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    v54 = 1;
    while (v25 != -4096)
    {
      v55 = v24 + v54++;
      v24 = v55 & v10;
      v25 = *(v6 + 16 * v24);
      if (v25 == v23)
      {
        goto LABEL_73;
      }
    }

LABEL_72:
    v24 = v7;
LABEL_73:
    v26 = *(v6 + 16 * v24 + 8);
    if (!v7)
    {
      goto LABEL_13;
    }

    v10 = v7 - 1;
    v27 = (v7 - 1) & (v9 ^ (v5 >> 9));
    v28 = *(v6 + 16 * v27);
    if (v28 == v5)
    {
      goto LABEL_12;
    }

    goto LABEL_75;
  }

  if (!v7)
  {
    goto LABEL_60;
  }

  v10 = v7 - 1;
LABEL_34:
  v35 = ((v17 >> 4) ^ (v17 >> 9)) & v10;
  v36 = *(v6 + 16 * v35);
  if (v36 == v17)
  {
    v37 = *(v6 + 16 * v35 + 8);
    v38 = v10 & (v8 ^ (v4 >> 9));
    v39 = *(v6 + 16 * v38);
    if (v39 == v4)
    {
      goto LABEL_36;
    }

    goto LABEL_63;
  }

  v50 = 1;
  while (v36 != -4096)
  {
    v51 = v35 + v50++;
    v35 = v51 & v10;
    v36 = *(v6 + 16 * v35);
    if (v36 == v17)
    {
      goto LABEL_61;
    }
  }

LABEL_60:
  v35 = v7;
LABEL_61:
  v37 = *(v6 + 16 * v35 + 8);
  if (!v7)
  {
    goto LABEL_67;
  }

  v10 = v7 - 1;
  v38 = (v7 - 1) & (v8 ^ (v4 >> 9));
  v39 = *(v6 + 16 * v38);
  if (v39 == v4)
  {
    goto LABEL_36;
  }

LABEL_63:
  v52 = 1;
  while (v39 != -4096)
  {
    v53 = v38 + v52++;
    v38 = v53 & v10;
    v39 = *(v6 + 16 * v38);
    if (v39 == v4)
    {
      goto LABEL_36;
    }
  }

LABEL_67:
  v38 = v7;
LABEL_36:
  if (v37 >= *(v6 + 16 * v38 + 8))
  {
    return 0;
  }

  *a2 = v17;
  *a3 = v4;
  v40 = *a2;
  v41 = *a1;
  if (v7)
  {
    v42 = v7 - 1;
    v43 = ((v40 >> 4) ^ (v40 >> 9)) & (v7 - 1);
    v44 = *(v6 + 16 * v43);
    if (v44 == v40)
    {
      v45 = *(v6 + 16 * v43 + 8);
      goto LABEL_86;
    }

    v58 = 1;
    while (v44 != -4096)
    {
      v59 = v43 + v58++;
      v43 = v59 & v42;
      v44 = *(v6 + 16 * v43);
      if (v44 == v40)
      {
        goto LABEL_84;
      }
    }
  }

  v43 = v7;
LABEL_84:
  v45 = *(v6 + 16 * v43 + 8);
  if (!v7)
  {
    goto LABEL_88;
  }

  v42 = v7 - 1;
LABEL_86:
  v60 = ((v41 >> 4) ^ (v41 >> 9)) & v42;
  v61 = *(v6 + 16 * v60);
  if (v61 == v41)
  {
LABEL_87:
    v7 = v60;
  }

  else
  {
    v62 = 1;
    while (v61 != -4096)
    {
      v63 = v60 + v62++;
      v60 = v63 & v42;
      v61 = *(v6 + 16 * v60);
      if (v61 == v41)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_88:
  if (v45 >= *(v6 + 16 * v7 + 8))
  {
    return 1;
  }

  *a1 = v40;
  *a2 = v41;
  return 1;
}

uint64_t sub_10012D050(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  result = sub_10012CB70(a1, a2, a3, a5);
  v11 = *a4;
  v12 = *a3;
  v13 = **a5;
  v14 = *(*a5 + 4);
  if (v14)
  {
    v15 = v14 - 1;
    v16 = (v14 - 1) & ((v11 >> 4) ^ (v11 >> 9));
    v17 = *(v13 + 16 * v16);
    if (v17 == v11)
    {
      v18 = *(v13 + 16 * v16 + 8);
      goto LABEL_11;
    }

    v19 = 1;
    while (v17 != -4096)
    {
      v20 = v16 + v19++;
      v16 = v20 & v15;
      v17 = *(v13 + 16 * v16);
      if (v17 == v11)
      {
        goto LABEL_9;
      }
    }
  }

  v16 = *(*a5 + 4);
LABEL_9:
  v18 = *(v13 + 16 * v16 + 8);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14 - 1;
LABEL_11:
  v21 = v15 & ((v12 >> 4) ^ (v12 >> 9));
  v22 = *(v13 + 16 * v21);
  if (v22 == v12)
  {
    goto LABEL_12;
  }

  v29 = 1;
  while (v22 != -4096)
  {
    v30 = v21 + v29++;
    v21 = v30 & v15;
    v22 = *(v13 + 16 * v21);
    if (v22 == v12)
    {
      goto LABEL_12;
    }
  }

LABEL_20:
  v21 = *(*a5 + 4);
LABEL_12:
  if (v18 >= *(v13 + 16 * v21 + 8))
  {
    return result;
  }

  *a3 = v11;
  *a4 = v12;
  v23 = *a3;
  v24 = *a2;
  if (v14)
  {
    v25 = v14 - 1;
    v26 = ((v23 >> 4) ^ (v23 >> 9)) & (v14 - 1);
    v27 = *(v13 + 16 * v26);
    if (v27 == v23)
    {
      v28 = *(v13 + 16 * v26 + 8);
      goto LABEL_28;
    }

    v31 = 1;
    while (v27 != -4096)
    {
      v32 = v26 + v31++;
      v26 = v32 & v25;
      v27 = *(v13 + 16 * v26);
      if (v27 == v23)
      {
        goto LABEL_26;
      }
    }
  }

  v26 = v14;
LABEL_26:
  v28 = *(v13 + 16 * v26 + 8);
  if (!v14)
  {
    goto LABEL_37;
  }

  v25 = v14 - 1;
LABEL_28:
  v33 = ((v24 >> 4) ^ (v24 >> 9)) & v25;
  v34 = *(v13 + 16 * v33);
  if (v34 == v24)
  {
    goto LABEL_29;
  }

  v41 = 1;
  while (v34 != -4096)
  {
    v42 = v33 + v41++;
    v33 = v42 & v25;
    v34 = *(v13 + 16 * v33);
    if (v34 == v24)
    {
      goto LABEL_29;
    }
  }

LABEL_37:
  v33 = v14;
LABEL_29:
  if (v28 >= *(v13 + 16 * v33 + 8))
  {
    return result;
  }

  *a2 = v23;
  *a3 = v24;
  v35 = *a2;
  v36 = *a1;
  if (v14)
  {
    v37 = v14 - 1;
    v38 = ((v35 >> 4) ^ (v35 >> 9)) & (v14 - 1);
    v39 = *(v13 + 16 * v38);
    if (v39 == v35)
    {
      v40 = *(v13 + 16 * v38 + 8);
      goto LABEL_45;
    }

    v43 = 1;
    while (v39 != -4096)
    {
      v44 = v38 + v43++;
      v38 = v44 & v37;
      v39 = *(v13 + 16 * v38);
      if (v39 == v35)
      {
        goto LABEL_43;
      }
    }
  }

  v38 = v14;
LABEL_43:
  v40 = *(v13 + 16 * v38 + 8);
  if (!v14)
  {
    goto LABEL_47;
  }

  v37 = v14 - 1;
LABEL_45:
  v45 = ((v36 >> 4) ^ (v36 >> 9)) & v37;
  v46 = *(v13 + 16 * v45);
  if (v46 == v36)
  {
LABEL_46:
    v14 = v45;
  }

  else
  {
    v47 = 1;
    while (v46 != -4096)
    {
      v48 = v45 + v47++;
      v45 = v48 & v37;
      v46 = *(v13 + 16 * v45);
      if (v46 == v36)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_47:
  if (v40 < *(v13 + 16 * v14 + 8))
  {
    *a1 = v35;
    *a2 = v36;
  }

  return result;
}

uint64_t sub_10012D340(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result = sub_10012D050(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = **a6;
  v16 = *(*a6 + 4);
  if (v16)
  {
    v17 = v16 - 1;
    v18 = (v16 - 1) & ((v13 >> 4) ^ (v13 >> 9));
    v19 = *(v15 + 16 * v18);
    if (v19 == v13)
    {
      v20 = *(v15 + 16 * v18 + 8);
      goto LABEL_11;
    }

    v21 = 1;
    while (v19 != -4096)
    {
      v22 = v18 + v21++;
      v18 = v22 & v17;
      v19 = *(v15 + 16 * v18);
      if (v19 == v13)
      {
        goto LABEL_9;
      }
    }
  }

  v18 = *(*a6 + 4);
LABEL_9:
  v20 = *(v15 + 16 * v18 + 8);
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16 - 1;
LABEL_11:
  v23 = v17 & ((v14 >> 4) ^ (v14 >> 9));
  v24 = *(v15 + 16 * v23);
  if (v24 == v14)
  {
    goto LABEL_12;
  }

  v31 = 1;
  while (v24 != -4096)
  {
    v32 = v23 + v31++;
    v23 = v32 & v17;
    v24 = *(v15 + 16 * v23);
    if (v24 == v14)
    {
      goto LABEL_12;
    }
  }

LABEL_20:
  v23 = *(*a6 + 4);
LABEL_12:
  if (v20 >= *(v15 + 16 * v23 + 8))
  {
    return result;
  }

  *a4 = v13;
  *a5 = v14;
  v25 = *a4;
  v26 = *a3;
  if (v16)
  {
    v27 = v16 - 1;
    v28 = ((v25 >> 4) ^ (v25 >> 9)) & (v16 - 1);
    v29 = *(v15 + 16 * v28);
    if (v29 == v25)
    {
      v30 = *(v15 + 16 * v28 + 8);
      goto LABEL_28;
    }

    v33 = 1;
    while (v29 != -4096)
    {
      v34 = v28 + v33++;
      v28 = v34 & v27;
      v29 = *(v15 + 16 * v28);
      if (v29 == v25)
      {
        goto LABEL_26;
      }
    }
  }

  v28 = v16;
LABEL_26:
  v30 = *(v15 + 16 * v28 + 8);
  if (!v16)
  {
    goto LABEL_37;
  }

  v27 = v16 - 1;
LABEL_28:
  v35 = ((v26 >> 4) ^ (v26 >> 9)) & v27;
  v36 = *(v15 + 16 * v35);
  if (v36 == v26)
  {
    goto LABEL_29;
  }

  v43 = 1;
  while (v36 != -4096)
  {
    v44 = v35 + v43++;
    v35 = v44 & v27;
    v36 = *(v15 + 16 * v35);
    if (v36 == v26)
    {
      goto LABEL_29;
    }
  }

LABEL_37:
  v35 = v16;
LABEL_29:
  if (v30 >= *(v15 + 16 * v35 + 8))
  {
    return result;
  }

  *a3 = v25;
  *a4 = v26;
  v37 = *a3;
  v38 = *a2;
  if (v16)
  {
    v39 = v16 - 1;
    v40 = ((v37 >> 4) ^ (v37 >> 9)) & (v16 - 1);
    v41 = *(v15 + 16 * v40);
    if (v41 == v37)
    {
      v42 = *(v15 + 16 * v40 + 8);
      goto LABEL_45;
    }

    v45 = 1;
    while (v41 != -4096)
    {
      v46 = v40 + v45++;
      v40 = v46 & v39;
      v41 = *(v15 + 16 * v40);
      if (v41 == v37)
      {
        goto LABEL_43;
      }
    }
  }

  v40 = v16;
LABEL_43:
  v42 = *(v15 + 16 * v40 + 8);
  if (!v16)
  {
    goto LABEL_54;
  }

  v39 = v16 - 1;
LABEL_45:
  v47 = ((v38 >> 4) ^ (v38 >> 9)) & v39;
  v48 = *(v15 + 16 * v47);
  if (v48 == v38)
  {
    goto LABEL_46;
  }

  v55 = 1;
  while (v48 != -4096)
  {
    v56 = v47 + v55++;
    v47 = v56 & v39;
    v48 = *(v15 + 16 * v47);
    if (v48 == v38)
    {
      goto LABEL_46;
    }
  }

LABEL_54:
  v47 = v16;
LABEL_46:
  if (v42 >= *(v15 + 16 * v47 + 8))
  {
    return result;
  }

  *a2 = v37;
  *a3 = v38;
  v49 = *a2;
  v50 = *a1;
  if (v16)
  {
    v51 = v16 - 1;
    v52 = ((v49 >> 4) ^ (v49 >> 9)) & (v16 - 1);
    v53 = *(v15 + 16 * v52);
    if (v53 == v49)
    {
      v54 = *(v15 + 16 * v52 + 8);
      goto LABEL_62;
    }

    v57 = 1;
    while (v53 != -4096)
    {
      v58 = v52 + v57++;
      v52 = v58 & v51;
      v53 = *(v15 + 16 * v52);
      if (v53 == v49)
      {
        goto LABEL_60;
      }
    }
  }

  v52 = v16;
LABEL_60:
  v54 = *(v15 + 16 * v52 + 8);
  if (!v16)
  {
    goto LABEL_64;
  }

  v51 = v16 - 1;
LABEL_62:
  v59 = ((v50 >> 4) ^ (v50 >> 9)) & v51;
  v60 = *(v15 + 16 * v59);
  if (v60 == v50)
  {
LABEL_63:
    v16 = v59;
  }

  else
  {
    v61 = 1;
    while (v60 != -4096)
    {
      v62 = v59 + v61++;
      v59 = v62 & v51;
      v60 = *(v15 + 16 * v59);
      if (v60 == v50)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_64:
  if (v54 < *(v15 + 16 * v16 + 8))
  {
    *a1 = v49;
    *a2 = v50;
  }

  return result;
}

void *sub_10012D714(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = *(*a3 + 4);
      v6 = v5 - 1;
      v7 = v4 + 16 * v5;
      v8 = result;
      do
      {
        v10 = v3;
        v12 = *v8;
        v11 = v8[1];
        v13 = v11 >> 4;
        if (v5)
        {
          v14 = v6 & (v13 ^ (v11 >> 9));
          v15 = *(v4 + 16 * v14);
          if (v15 != v11)
          {
            v33 = 1;
            while (v15 != -4096)
            {
              v34 = v14 + v33++;
              v14 = v34 & v6;
              v15 = *(v4 + 16 * v14);
              if (v15 == v11)
              {
                goto LABEL_9;
              }
            }

            v14 = v5;
          }

LABEL_9:
          v16 = *(v4 + 16 * v14 + 8);
          v17 = v6 & ((v12 >> 4) ^ (v12 >> 9));
          v18 = *(v4 + 16 * v17);
          if (v18 != v12)
          {
            v19 = 1;
            while (v18 != -4096)
            {
              v20 = v17 + v19++;
              v17 = v20 & v6;
              v18 = *(v4 + 16 * v17);
              if (v18 == v12)
              {
                goto LABEL_15;
              }
            }

            if (v16 >= *(v4 + 16 * v5 + 8))
            {
              goto LABEL_6;
            }

LABEL_16:
            v21 = v6 & (v13 ^ (v11 >> 9));
            v22 = (v4 + 16 * v21);
            v9 = v10;
            while (1)
            {
              *v9 = v12;
              if (v8 == result)
              {
                break;
              }

              v9 = v8;
              v25 = *--v8;
              v12 = v25;
              if (v5)
              {
                v26 = *v22;
                v27 = v21;
                if (*v22 != v11)
                {
                  v31 = 1;
                  LODWORD(v27) = v21;
                  while (v26 != -4096)
                  {
                    v32 = v27 + v31++;
                    v27 = v32 & v6;
                    v26 = *(v4 + 16 * v27);
                    if (v26 == v11)
                    {
                      goto LABEL_22;
                    }
                  }

                  v27 = v5;
                }

LABEL_22:
                v24 = *(v4 + 16 * v27 + 8);
                v23 = ((v12 >> 4) ^ (v12 >> 9)) & v6;
                v28 = *(v4 + 16 * v23);
                if (v28 != v12)
                {
                  v29 = 1;
                  while (v28 != -4096)
                  {
                    v30 = v23 + v29++;
                    v23 = v30 & v6;
                    v28 = *(v4 + 16 * v23);
                    if (v28 == v12)
                    {
                      goto LABEL_18;
                    }
                  }

                  v23 = v5;
                }
              }

              else
              {
                v23 = 0;
                v24 = *(v7 + 8);
              }

LABEL_18:
              if (v24 >= *(v4 + 16 * v23 + 8))
              {
                goto LABEL_5;
              }
            }

            v9 = result;
LABEL_5:
            *v9 = v11;
            goto LABEL_6;
          }
        }

        else
        {
          v17 = 0;
          v16 = *(v7 + 8);
        }

LABEL_15:
        if (v16 < *(v4 + 16 * v17 + 8))
        {
          goto LABEL_16;
        }

LABEL_6:
        v3 = v10 + 1;
        v8 = v10;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

void *sub_10012D91C(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = *(*a3 + 4);
      v6 = v5 - 1;
      v7 = v4 + 16 * v5;
      do
      {
        v8 = v3;
        v10 = *result;
        v9 = result[1];
        v11 = v9 >> 4;
        if (v5)
        {
          v12 = v6 & (v11 ^ (v9 >> 9));
          v13 = *(v4 + 16 * v12);
          if (v13 != v9)
          {
            v32 = 1;
            while (v13 != -4096)
            {
              v33 = v12 + v32++;
              v12 = v33 & v6;
              v13 = *(v4 + 16 * v12);
              if (v13 == v9)
              {
                goto LABEL_8;
              }
            }

            v12 = v5;
          }

LABEL_8:
          v14 = *(v4 + 16 * v12 + 8);
          v15 = v6 & ((v10 >> 4) ^ (v10 >> 9));
          v16 = *(v4 + 16 * v15);
          if (v16 != v10)
          {
            v17 = 1;
            while (v16 != -4096)
            {
              v18 = v15 + v17++;
              v15 = v18 & v6;
              v16 = *(v4 + 16 * v15);
              if (v16 == v10)
              {
                goto LABEL_14;
              }
            }

            if (v14 >= *(v4 + 16 * v5 + 8))
            {
              goto LABEL_5;
            }

LABEL_15:
            v19 = v6 & (v11 ^ (v9 >> 9));
            v20 = (v4 + 16 * v19);
            v21 = v8;
            do
            {
              *v21 = v10;
              v21 = result;
              v24 = *--result;
              v10 = v24;
              if (v5)
              {
                v25 = *v20;
                v26 = v19;
                if (*v20 != v9)
                {
                  v30 = 1;
                  LODWORD(v26) = v19;
                  while (v25 != -4096)
                  {
                    v31 = v26 + v30++;
                    v26 = v31 & v6;
                    v25 = *(v4 + 16 * v26);
                    if (v25 == v9)
                    {
                      goto LABEL_20;
                    }
                  }

                  v26 = v5;
                }

LABEL_20:
                v23 = *(v4 + 16 * v26 + 8);
                v22 = ((v10 >> 4) ^ (v10 >> 9)) & v6;
                v27 = *(v4 + 16 * v22);
                if (v27 != v10)
                {
                  v28 = 1;
                  while (v27 != -4096)
                  {
                    v29 = v22 + v28++;
                    v22 = v29 & v6;
                    v27 = *(v4 + 16 * v22);
                    if (v27 == v10)
                    {
                      goto LABEL_17;
                    }
                  }

                  v22 = v5;
                }
              }

              else
              {
                v22 = 0;
                v23 = *(v7 + 8);
              }

LABEL_17:
              ;
            }

            while (v23 < *(v4 + 16 * v22 + 8));
            *v21 = v9;
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0;
          v14 = *(v7 + 8);
        }

LABEL_14:
        if (v14 < *(v4 + 16 * v15 + 8))
        {
          goto LABEL_15;
        }

LABEL_5:
        v3 = v8 + 1;
        result = v8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_10012DB14(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = **a3;
  v6 = *(*a3 + 4);
  v7 = *a1 >> 4;
  if (v6)
  {
    v8 = v6 - 1;
    v9 = (v6 - 1) & (v7 ^ (v3 >> 9));
    v10 = *(v5 + 16 * v9);
    if (v10 == v3)
    {
      v11 = *(v5 + 16 * v9 + 8);
      goto LABEL_11;
    }

    v12 = 1;
    while (v10 != -4096)
    {
      v13 = v9 + v12++;
      v9 = v13 & v8;
      v10 = *(v5 + 16 * v9);
      if (v10 == v3)
      {
        goto LABEL_9;
      }
    }
  }

  v9 = *(*a3 + 4);
LABEL_9:
  v11 = *(v5 + 16 * v9 + 8);
  if (!v6)
  {
    goto LABEL_107;
  }

  v8 = v6 - 1;
LABEL_11:
  v14 = v8 & ((v4 >> 4) ^ (v4 >> 9));
  v15 = *(v5 + 16 * v14);
  if (v15 == v4)
  {
    goto LABEL_12;
  }

  v81 = 1;
  while (v15 != -4096)
  {
    v82 = v14 + v81++;
    v14 = v82 & v8;
    v15 = *(v5 + 16 * v14);
    if (v15 == v4)
    {
      goto LABEL_12;
    }
  }

LABEL_107:
  v14 = *(*a3 + 4);
LABEL_12:
  v16 = *(v5 + 16 * v14 + 8);
  v17 = v6 - 1;
  v18 = (v6 - 1) & (v7 ^ (v3 >> 9));
  v19 = (v5 + 16 * v18);
  v20 = v5 + 16 * v6;
  v21 = a1;
  if (v11 < v16)
  {
    do
    {
      v25 = v21[1];
      ++v21;
      v24 = v25;
      if (v6)
      {
        v26 = *v19;
        v27 = (v19 + 1);
        if (*v19 != v3)
        {
          v31 = 1;
          LODWORD(v32) = v18;
          while (v26 != -4096)
          {
            v33 = v32 + v31++;
            v32 = v33 & v17;
            v26 = *(v5 + 16 * v32);
            if (v26 == v3)
            {
              goto LABEL_29;
            }
          }

          v32 = v6;
LABEL_29:
          v27 = (v5 + 16 * v32 + 8);
        }

        v23 = *v27;
        v22 = ((v24 >> 4) ^ (v24 >> 9)) & v17;
        v28 = *(v5 + 16 * v22);
        if (v28 != v24)
        {
          v29 = 1;
          while (v28 != -4096)
          {
            v30 = v22 + v29++;
            v22 = v30 & v17;
            v28 = *(v5 + 16 * v22);
            if (v28 == v24)
            {
              goto LABEL_15;
            }
          }

          v22 = v6;
        }
      }

      else
      {
        v22 = 0;
        v23 = *(v20 + 8);
      }

LABEL_15:
      ;
    }

    while (v23 >= *(v5 + 16 * v22 + 8));
  }

  else
  {
    do
    {
      if (++v21 >= a2)
      {
        break;
      }

      if (v6)
      {
        v36 = *v19;
        v37 = (v19 + 1);
        if (*v19 != v3)
        {
          v41 = 1;
          LODWORD(v42) = v18;
          while (v36 != -4096)
          {
            v43 = v42 + v41++;
            v42 = v43 & v17;
            v36 = *(v5 + 16 * v42);
            if (v36 == v3)
            {
              goto LABEL_46;
            }
          }

          v42 = v6;
LABEL_46:
          v37 = (v5 + 16 * v42 + 8);
        }

        v35 = *v37;
        v34 = ((*v21 >> 4) ^ (*v21 >> 9)) & v17;
        v38 = *(v5 + 16 * v34);
        if (v38 != *v21)
        {
          v39 = 1;
          while (v38 != -4096)
          {
            v40 = v34 + v39++;
            v34 = v40 & v17;
            v38 = *(v5 + 16 * v34);
            if (v38 == *v21)
            {
              goto LABEL_31;
            }
          }

          v34 = v6;
        }
      }

      else
      {
        v34 = 0;
        v35 = *(v20 + 8);
      }

LABEL_31:
      ;
    }

    while (v35 >= *(v5 + 16 * v34 + 8));
  }

  if (v21 < a2)
  {
    do
    {
      v71 = *--a2;
      v70 = v71;
      if (v6)
      {
        v72 = *v19;
        v73 = (v19 + 1);
        if (*v19 != v3)
        {
          v77 = 1;
          LODWORD(v78) = v18;
          while (v72 != -4096)
          {
            v79 = v78 + v77++;
            v78 = v79 & v17;
            v72 = *(v5 + 16 * v78);
            if (v72 == v3)
            {
              goto LABEL_99;
            }
          }

          v78 = v6;
LABEL_99:
          v73 = (v5 + 16 * v78 + 8);
        }

        v69 = *v73;
        v68 = ((v70 >> 4) ^ (v70 >> 9)) & v17;
        v74 = *(v5 + 16 * v68);
        if (v74 != v70)
        {
          v75 = 1;
          while (v74 != -4096)
          {
            v76 = v68 + v75++;
            v68 = v76 & v17;
            v74 = *(v5 + 16 * v68);
            if (v74 == v70)
            {
              goto LABEL_85;
            }
          }

          v68 = v6;
        }
      }

      else
      {
        v68 = 0;
        v69 = *(v20 + 8);
      }

LABEL_85:
      ;
    }

    while (v69 < *(v5 + 16 * v68 + 8));
  }

  if (v21 < a2)
  {
    v44 = *v21;
    v45 = *a2;
    do
    {
      *v21 = v45;
      *a2 = v44;
      do
      {
        v48 = v21[1];
        ++v21;
        v44 = v48;
        if (v6)
        {
          v49 = *v19;
          v50 = (v19 + 1);
          if (*v19 != v3)
          {
            v54 = 1;
            LODWORD(v55) = v18;
            while (v49 != -4096)
            {
              v56 = v55 + v54++;
              v55 = v56 & v17;
              v49 = *(v5 + 16 * v55);
              if (v49 == v3)
              {
                goto LABEL_67;
              }
            }

            v55 = v6;
LABEL_67:
            v50 = (v5 + 16 * v55 + 8);
          }

          v47 = *v50;
          v46 = ((v44 >> 4) ^ (v44 >> 9)) & v17;
          v51 = *(v5 + 16 * v46);
          if (v51 != v44)
          {
            v52 = 1;
            while (v51 != -4096)
            {
              v53 = v46 + v52++;
              v46 = v53 & v17;
              v51 = *(v5 + 16 * v46);
              if (v51 == v44)
              {
                goto LABEL_53;
              }
            }

            v46 = v6;
          }
        }

        else
        {
          v46 = 0;
          v47 = *(v20 + 8);
        }

LABEL_53:
        ;
      }

      while (v47 >= *(v5 + 16 * v46 + 8));
      do
      {
        v59 = *--a2;
        v45 = v59;
        if (v6)
        {
          v60 = *v19;
          v61 = (v19 + 1);
          if (*v19 != v3)
          {
            v65 = 1;
            LODWORD(v66) = v18;
            while (v60 != -4096)
            {
              v67 = v66 + v65++;
              v66 = v67 & v17;
              v60 = *(v5 + 16 * v66);
              if (v60 == v3)
              {
                goto LABEL_83;
              }
            }

            v66 = v6;
LABEL_83:
            v61 = (v5 + 16 * v66 + 8);
          }

          v58 = *v61;
          v57 = ((v45 >> 4) ^ (v45 >> 9)) & v17;
          v62 = *(v5 + 16 * v57);
          if (v62 != v45)
          {
            v63 = 1;
            while (v62 != -4096)
            {
              v64 = v57 + v63++;
              v57 = v64 & v17;
              v62 = *(v5 + 16 * v57);
              if (v62 == v45)
              {
                goto LABEL_69;
              }
            }

            v57 = v6;
          }
        }

        else
        {
          v57 = 0;
          v58 = *(v20 + 8);
        }

LABEL_69:
        ;
      }

      while (v58 < *(v5 + 16 * v57 + 8));
    }

    while (v21 < a2);
  }

  if (v21 - 1 != a1)
  {
    *a1 = *(v21 - 1);
  }

  *(v21 - 1) = v3;
  return v21;
}

void *sub_10012E048(void *a1, void *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = **a3;
  v5 = *(*a3 + 4);
  v6 = v5 - 1;
  v7 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
  v8 = (v4 + 16 * v7);
  v9 = v4 + 16 * v5;
  v10 = a1;
  do
  {
    v13 = v10;
    v15 = v10[1];
    ++v10;
    v14 = v15;
    if (v5)
    {
      v16 = v6 & ((v14 >> 4) ^ (v14 >> 9));
      v17 = *(v4 + 16 * v16);
      if (v17 != v14)
      {
        v19 = 1;
        while (v17 != -4096)
        {
          v20 = v16 + v19++;
          v16 = v20 & v6;
          v17 = *(v4 + 16 * v16);
          if (v17 == v14)
          {
            goto LABEL_6;
          }
        }

        v16 = v5;
      }

LABEL_6:
      v12 = *(v4 + 16 * v16 + 8);
      v18 = *v8;
      if (*v8 == v3)
      {
        v11 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
      }

      else
      {
        v21 = 1;
        LODWORD(v11) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        while (v18 != -4096)
        {
          v22 = v11 + v21++;
          v11 = v22 & v6;
          v18 = *(v4 + 16 * v11);
          if (v18 == v3)
          {
            goto LABEL_3;
          }
        }

        v11 = v5;
      }
    }

    else
    {
      v11 = 0;
      v12 = *(v9 + 8);
    }

LABEL_3:
    ;
  }

  while (v12 < *(v4 + 16 * v11 + 8));
  if (v13 == a1)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v37 = *--a2;
      v36 = v37;
      if (v5)
      {
        v38 = ((v36 >> 4) ^ (v36 >> 9)) & v6;
        v39 = *(v4 + 16 * v38);
        if (v39 != v36)
        {
          v41 = 1;
          while (v39 != -4096)
          {
            v42 = v38 + v41++;
            v38 = v42 & v6;
            v39 = *(v4 + 16 * v38);
            if (v39 == v36)
            {
              goto LABEL_41;
            }
          }

          v38 = v5;
        }

LABEL_41:
        v35 = *(v4 + 16 * v38 + 8);
        v40 = *v8;
        if (*v8 == v3)
        {
          v34 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        }

        else
        {
          v43 = 1;
          LODWORD(v34) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
          while (v40 != -4096)
          {
            v44 = v34 + v43++;
            v34 = v44 & v6;
            v40 = *(v4 + 16 * v34);
            if (v40 == v3)
            {
              goto LABEL_37;
            }
          }

          v34 = v5;
        }
      }

      else
      {
        v34 = 0;
        v35 = *(v9 + 8);
      }

LABEL_37:
      ;
    }

    while (v35 >= *(v4 + 16 * v34 + 8));
  }

  else
  {
    do
    {
      v26 = *--a2;
      v25 = v26;
      if (v5)
      {
        v27 = ((v25 >> 4) ^ (v25 >> 9)) & v6;
        v28 = *(v4 + 16 * v27);
        if (v28 != v25)
        {
          v30 = 1;
          while (v28 != -4096)
          {
            v31 = v27 + v30++;
            v27 = v31 & v6;
            v28 = *(v4 + 16 * v27);
            if (v28 == v25)
            {
              goto LABEL_24;
            }
          }

          v27 = v5;
        }

LABEL_24:
        v24 = *(v4 + 16 * v27 + 8);
        v29 = *v8;
        if (*v8 == v3)
        {
          v23 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        }

        else
        {
          v32 = 1;
          LODWORD(v23) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
          while (v29 != -4096)
          {
            v33 = v23 + v32++;
            v23 = v33 & v6;
            v29 = *(v4 + 16 * v23);
            if (v29 == v3)
            {
              goto LABEL_21;
            }
          }

          v23 = v5;
        }
      }

      else
      {
        v23 = 0;
        v24 = *(v9 + 8);
      }

LABEL_21:
      ;
    }

    while (v24 >= *(v4 + 16 * v23 + 8));
  }

  if (v10 < a2)
  {
    v45 = *a2;
    v46 = v10;
    v47 = a2;
    do
    {
      *v46 = v45;
      *v47 = v14;
      do
      {
        v13 = v46;
        v50 = v46[1];
        ++v46;
        v14 = v50;
        if (v5)
        {
          v51 = ((v14 >> 4) ^ (v14 >> 9)) & v6;
          v52 = *(v4 + 16 * v51);
          if (v52 != v14)
          {
            v54 = 1;
            while (v52 != -4096)
            {
              v55 = v51 + v54++;
              v51 = v55 & v6;
              v52 = *(v4 + 16 * v51);
              if (v52 == v14)
              {
                goto LABEL_61;
              }
            }

            v51 = v5;
          }

LABEL_61:
          v49 = *(v4 + 16 * v51 + 8);
          v53 = *v8;
          if (*v8 == v3)
          {
            v48 = v7;
          }

          else
          {
            v56 = 1;
            LODWORD(v48) = v7;
            while (v53 != -4096)
            {
              v57 = v48 + v56++;
              v48 = v57 & v6;
              v53 = *(v4 + 16 * v48);
              if (v53 == v3)
              {
                goto LABEL_58;
              }
            }

            v48 = v5;
          }
        }

        else
        {
          v48 = 0;
          v49 = *(v9 + 8);
        }

LABEL_58:
        ;
      }

      while (v49 < *(v4 + 16 * v48 + 8));
      do
      {
        v60 = *--v47;
        v45 = v60;
        if (v5)
        {
          v61 = ((v45 >> 4) ^ (v45 >> 9)) & v6;
          v62 = *(v4 + 16 * v61);
          if (v62 != v45)
          {
            v64 = 1;
            while (v62 != -4096)
            {
              v65 = v61 + v64++;
              v61 = v65 & v6;
              v62 = *(v4 + 16 * v61);
              if (v62 == v45)
              {
                goto LABEL_77;
              }
            }

            v61 = v5;
          }

LABEL_77:
          v59 = *(v4 + 16 * v61 + 8);
          v63 = *v8;
          if (*v8 == v3)
          {
            v58 = v7;
          }

          else
          {
            v66 = 1;
            LODWORD(v58) = v7;
            while (v63 != -4096)
            {
              v67 = v58 + v66++;
              v58 = v67 & v6;
              v63 = *(v4 + 16 * v58);
              if (v63 == v3)
              {
                goto LABEL_74;
              }
            }

            v58 = v5;
          }
        }

        else
        {
          v58 = 0;
          v59 = *(v9 + 8);
        }

LABEL_74:
        ;
      }

      while (v59 >= *(v4 + 16 * v58 + 8));
    }

    while (v46 < v47);
  }

  if (v13 != a1)
  {
    *a1 = *v13;
  }

  *v13 = v3;
  return v13;
}

BOOL sub_10012E4C0(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_10012CB70(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        sub_10012D050(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_10012D340(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = **a3;
      v8 = *(*a3 + 4);
      if (v8)
      {
        v9 = v8 - 1;
        v10 = (v8 - 1) & ((v5 >> 4) ^ (v5 >> 9));
        v11 = *(v7 + 16 * v10);
        if (v11 == v5)
        {
          v12 = *(v7 + 16 * v10 + 8);
          goto LABEL_59;
        }

        v48 = 1;
        while (v11 != -4096)
        {
          v49 = v10 + v48++;
          v10 = v49 & v9;
          v11 = *(v7 + 16 * v10);
          if (v11 == v5)
          {
            goto LABEL_57;
          }
        }
      }

      v10 = *(*a3 + 4);
LABEL_57:
      v12 = *(v7 + 16 * v10 + 8);
      if (!v8)
      {
        goto LABEL_61;
      }

      v9 = v8 - 1;
LABEL_59:
      v50 = v9 & ((v6 >> 4) ^ (v6 >> 9));
      v51 = *(v7 + 16 * v50);
      if (v51 == v6)
      {
LABEL_60:
        v8 = v50;
      }

      else
      {
        v52 = 1;
        while (v51 != -4096)
        {
          v53 = v50 + v52++;
          v50 = v53 & v9;
          v51 = *(v7 + 16 * v50);
          if (v51 == v6)
          {
            goto LABEL_60;
          }
        }
      }

LABEL_61:
      if (v12 < *(v7 + 16 * v8 + 8))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v14 = a1 + 2;
  sub_10012CB70(a1, a1 + 1, a1 + 2, a3);
  v17 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v18 = 0;
    v19 = **a3;
    v20 = *(*a3 + 4);
    v21 = v20 - 1;
    v22 = v19 + 16 * v20;
    while (1)
    {
      v24 = *v17;
      v25 = *v14;
      v26 = *v17 >> 4;
      if (!v20)
      {
        break;
      }

      v27 = v21 & (v26 ^ (v24 >> 9));
      v28 = *(v19 + 16 * v27);
      if (v28 != v24)
      {
        v46 = 1;
        while (v28 != -4096)
        {
          v47 = v27 + v46++;
          v27 = v47 & v21;
          v28 = *(v19 + 16 * v27);
          if (v28 == v24)
          {
            goto LABEL_19;
          }
        }

        v27 = v20;
      }

LABEL_19:
      v29 = *(v19 + 16 * v27 + 8);
      v30 = v21 & ((v25 >> 4) ^ (v25 >> 9));
      v31 = *(v19 + 16 * v30);
      if (v31 == v25)
      {
        goto LABEL_25;
      }

      v32 = 1;
      while (v31 != -4096)
      {
        v33 = v30 + v32++;
        v30 = v33 & v21;
        v31 = *(v19 + 16 * v30);
        if (v31 == v25)
        {
          goto LABEL_25;
        }
      }

      if (v29 >= *(v19 + 16 * v20 + 8))
      {
        goto LABEL_16;
      }

LABEL_26:
      v34 = v21 & (v26 ^ (v24 >> 9));
      v35 = (v19 + 16 * v34);
      v23 = v17;
      while (1)
      {
        *v23 = v25;
        if (v14 == a1)
        {
          break;
        }

        v23 = v14;
        v38 = *--v14;
        v25 = v38;
        if (v20)
        {
          v39 = *v35;
          v40 = v34;
          if (*v35 != v24)
          {
            v44 = 1;
            LODWORD(v40) = v34;
            while (v39 != -4096)
            {
              v45 = v40 + v44++;
              v40 = v45 & v21;
              v39 = *(v19 + 16 * v40);
              if (v39 == v24)
              {
                goto LABEL_32;
              }
            }

            v40 = v20;
          }

LABEL_32:
          v37 = *(v19 + 16 * v40 + 8);
          v36 = ((v25 >> 4) ^ (v25 >> 9)) & v21;
          v41 = *(v19 + 16 * v36);
          if (v41 != v25)
          {
            v42 = 1;
            while (v41 != -4096)
            {
              v43 = v36 + v42++;
              v36 = v43 & v21;
              v41 = *(v19 + 16 * v36);
              if (v41 == v25)
              {
                goto LABEL_28;
              }
            }

            v36 = v20;
          }
        }

        else
        {
          v36 = 0;
          v37 = *(v22 + 8);
        }

LABEL_28:
        if (v37 >= *(v19 + 16 * v36 + 8))
        {
          goto LABEL_15;
        }
      }

      v23 = a1;
LABEL_15:
      *v23 = v24;
      if (++v18 == 8)
      {
        return v17 + 1 == a2;
      }

LABEL_16:
      v14 = v17++;
      if (v17 == a2)
      {
        return 1;
      }
    }

    v30 = 0;
    v29 = *(v22 + 8);
LABEL_25:
    if (v29 >= *(v19 + 16 * v30 + 8))
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  return 1;
}

uint64_t sub_10012E8C8(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 3)
    {
      v5 = (a4 - result) >> 2;
      v6 = v5 + 1;
      v7 = (result + 8 * (v5 + 1));
      v8 = v5 + 2;
      v9 = *a2;
      v10 = **a2;
      if (v8 >= a3)
      {
        LODWORD(v9) = *(v9 + 4);
        v16 = *v7;
        v17 = *a4;
        v18 = *a4 >> 4;
        if (!v9)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      v11 = v7[1];
      v9 = *(v9 + 4);
      if (v9)
      {
        v12 = v9 - 1;
        v13 = (v9 - 1) & ((*v7 >> 4) ^ (*v7 >> 9));
        v14 = *(v10 + 16 * v13);
        if (v14 == *v7)
        {
          v15 = *(v10 + 16 * v13 + 8);
          goto LABEL_16;
        }

        v19 = 1;
        while (v14 != -4096)
        {
          v20 = v13 + v19++;
          v13 = v20 & v12;
          v14 = *(v10 + 16 * v13);
          if (v14 == *v7)
          {
            goto LABEL_14;
          }
        }
      }

      v13 = v9;
LABEL_14:
      v15 = *(v10 + 16 * v13 + 8);
      if (!v9)
      {
        goto LABEL_80;
      }

      v12 = v9 - 1;
LABEL_16:
      v21 = v12 & ((v11 >> 4) ^ (v11 >> 9));
      v22 = *(v10 + 16 * v21);
      if (v22 == v11)
      {
        goto LABEL_17;
      }

      v59 = 1;
      while (v22 != -4096)
      {
        v60 = v21 + v59++;
        v21 = v60 & v12;
        v22 = *(v10 + 16 * v21);
        if (v22 == v11)
        {
          goto LABEL_17;
        }
      }

LABEL_80:
      v21 = v9;
LABEL_17:
      if (v15 < *(v10 + 16 * v21 + 8))
      {
        ++v7;
        v6 = v8;
      }

      v16 = *v7;
      v17 = *a4;
      v18 = *a4 >> 4;
      if (!v9)
      {
        goto LABEL_27;
      }

LABEL_20:
      v23 = v9 - 1;
      v24 = (v9 - 1) & ((v16 >> 4) ^ (v16 >> 9));
      v25 = *(v10 + 16 * v24);
      if (v25 == v16)
      {
        v26 = *(v10 + 16 * v24 + 8);
        v27 = v23 & (v18 ^ (v17 >> 9));
        v28 = *(v10 + 16 * v27);
        if (v28 != v17)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      v29 = 1;
      while (v25 != -4096)
      {
        v30 = v24 + v29++;
        v24 = v30 & v23;
        v25 = *(v10 + 16 * v24);
        if (v25 == v16)
        {
          goto LABEL_28;
        }
      }

LABEL_27:
      v24 = v9;
LABEL_28:
      v26 = *(v10 + 16 * v24 + 8);
      if (!v9)
      {
        goto LABEL_34;
      }

      v23 = v9 - 1;
      v27 = (v9 - 1) & (v18 ^ (v17 >> 9));
      v28 = *(v10 + 16 * v27);
      if (v28 != v17)
      {
LABEL_30:
        v31 = 1;
        while (v28 != -4096)
        {
          v32 = v27 + v31++;
          v27 = v32 & v23;
          v28 = *(v10 + 16 * v27);
          if (v28 == v17)
          {
            goto LABEL_35;
          }
        }

LABEL_34:
        v27 = v9;
      }

LABEL_35:
      if (v26 < *(v10 + 16 * v27 + 8))
      {
        return result;
      }

      v33 = v9 - 1;
      v34 = (v9 - 1) & (v18 ^ (v17 >> 9));
      v35 = (v10 + 16 * v34);
      v36 = v10 + 16 * v9;
      while (1)
      {
        v40 = v7;
        *a4 = v16;
        if (v4 < v6)
        {
LABEL_74:
          *v40 = v17;
          return result;
        }

        v41 = (2 * v6) | 1;
        v7 = (result + 8 * v41);
        v6 = 2 * v6 + 2;
        if (v6 >= a3)
        {
          v6 = v41;
          v16 = *v7;
          if (v9)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v42 = v7[1];
          if (v9)
          {
            v43 = ((*v7 >> 4) ^ (*v7 >> 9)) & v33;
            v44 = *(v10 + 16 * v43);
            if (v44 != *v7)
            {
              v57 = 1;
              while (v44 != -4096)
              {
                v58 = v43 + v57++;
                v43 = v58 & v33;
                v44 = *(v10 + 16 * v43);
                if (v44 == *v7)
                {
                  goto LABEL_43;
                }
              }

              v43 = v9;
            }

LABEL_43:
            v45 = *(v10 + 16 * v43 + 8);
            v46 = ((v42 >> 4) ^ (v42 >> 9)) & v33;
            v47 = *(v10 + 16 * v46);
            if (v47 != v42)
            {
              v48 = 1;
              while (v47 != -4096)
              {
                v49 = v46 + v48++;
                v46 = v49 & v33;
                v47 = *(v10 + 16 * v46);
                if (v47 == v42)
                {
                  goto LABEL_51;
                }
              }

              v46 = v9;
            }
          }

          else
          {
            v46 = 0;
            v45 = *(v36 + 8);
          }

LABEL_51:
          if (v45 >= *(v10 + 16 * v46 + 8))
          {
            v6 = v41;
          }

          else
          {
            ++v7;
          }

          v16 = *v7;
          if (v9)
          {
LABEL_55:
            v50 = ((v16 >> 4) ^ (v16 >> 9)) & v33;
            v51 = *(v10 + 16 * v50);
            if (v51 != v16)
            {
              v53 = 1;
              while (v51 != -4096)
              {
                v54 = v50 + v53++;
                v50 = v54 & v33;
                v51 = *(v10 + 16 * v50);
                if (v51 == v16)
                {
                  goto LABEL_56;
                }
              }

              v50 = v9;
            }

LABEL_56:
            v38 = *(v10 + 16 * v50 + 8);
            v52 = *v35;
            if (*v35 == v17)
            {
              v37 = v34;
            }

            else
            {
              v55 = 1;
              LODWORD(v37) = v34;
              while (v52 != -4096)
              {
                v56 = v37 + v55++;
                v37 = v56 & v33;
                v52 = *(v10 + 16 * v37);
                if (v52 == v17)
                {
                  goto LABEL_38;
                }
              }

              v37 = v9;
            }

            goto LABEL_38;
          }
        }

        v37 = 0;
        v38 = *(v36 + 8);
LABEL_38:
        v39 = *(v10 + 16 * v37 + 8);
        a4 = v40;
        if (v38 < v39)
        {
          goto LABEL_74;
        }
      }
    }
  }

  return result;
}

void *sub_10012ECF4(void *a1, uint64_t **a2, uint64_t a3)
{
  v3 = 0;
  v4 = (a3 - 2) / 2;
  v5 = *a2;
  do
  {
    while (1)
    {
      v6 = &a1[v3];
      v7 = v6 + 1;
      v8 = (2 * v3) | 1;
      v3 = 2 * v3 + 2;
      if (v3 < a3)
      {
        break;
      }

      v3 = v8;
      *a1 = *v7;
      a1 = v6 + 1;
      if (v8 > v4)
      {
        return v7;
      }
    }

    v11 = v6[2];
    v9 = v6 + 2;
    v10 = v11;
    v12 = *v5;
    v13 = *(v5 + 4);
    if (v13)
    {
      v14 = *(v9 - 1);
      v15 = v13 - 1;
      v16 = (v13 - 1) & ((v14 >> 4) ^ (v14 >> 9));
      v17 = *(v12 + 16 * v16);
      if (v17 == v14)
      {
        v18 = *(v12 + 16 * v16 + 8);
        goto LABEL_14;
      }

      v19 = 1;
      while (v17 != -4096)
      {
        v20 = v16 + v19++;
        v16 = v20 & v15;
        v17 = *(v12 + 16 * v16);
        if (v17 == v14)
        {
          goto LABEL_12;
        }
      }
    }

    v16 = *(v5 + 4);
LABEL_12:
    v18 = *(v12 + 16 * v16 + 8);
    if (v13)
    {
      v15 = v13 - 1;
LABEL_14:
      v21 = v15 & ((v10 >> 4) ^ (v10 >> 9));
      v22 = *(v12 + 16 * v21);
      if (v22 == v10)
      {
LABEL_15:
        v13 = v21;
      }

      else
      {
        v23 = 1;
        while (v22 != -4096)
        {
          v24 = v21 + v23++;
          v21 = v24 & v15;
          v22 = *(v12 + 16 * v21);
          if (v22 == v10)
          {
            goto LABEL_15;
          }
        }
      }
    }

    if (v18 >= *(v12 + 16 * v13 + 8))
    {
      v3 = v8;
    }

    else
    {
      v7 = v9;
    }

    *a1 = *v7;
    a1 = v7;
  }

  while (v3 <= v4);
  return v7;
}

uint64_t sub_10012EE44(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 8 * (v4 >> 1));
  v7 = *v6;
  v10 = *(a2 - 8);
  v8 = (a2 - 8);
  v9 = v10;
  v11 = **a3;
  v12 = *(*a3 + 4);
  v13 = v10 >> 4;
  if (v12)
  {
    v14 = v12 - 1;
    v15 = (v12 - 1) & ((v7 >> 4) ^ (v7 >> 9));
    v16 = *(v11 + 16 * v15);
    if (v16 == v7)
    {
      v17 = *(v11 + 16 * v15 + 8);
      v18 = v14 & (v13 ^ (v9 >> 9));
      v19 = *(v11 + 16 * v18);
      if (v19 == v9)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    v20 = 1;
    while (v16 != -4096)
    {
      v21 = v15 + v20++;
      v15 = v21 & v14;
      v16 = *(v11 + 16 * v15);
      if (v16 == v7)
      {
        goto LABEL_11;
      }
    }
  }

  v15 = v12;
LABEL_11:
  v17 = *(v11 + 16 * v15 + 8);
  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = v12 - 1;
  v18 = (v12 - 1) & (v13 ^ (v9 >> 9));
  v19 = *(v11 + 16 * v18);
  if (v19 == v9)
  {
    goto LABEL_18;
  }

LABEL_13:
  v22 = 1;
  while (v19 != -4096)
  {
    v23 = v18 + v22++;
    v18 = v23 & v14;
    v19 = *(v11 + 16 * v18);
    if (v19 == v9)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  v18 = v12;
LABEL_18:
  if (v17 < *(v11 + 16 * v18 + 8))
  {
    if (v12)
    {
      v24 = v12 - 1;
      v25 = (v12 - 1) & (v13 ^ (v9 >> 9));
      v26 = (v11 + 16 * v25);
      do
      {
        v27 = v6;
        *v8 = v7;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 8 * v5);
        v7 = *v6;
        v28 = ((*v6 >> 4) ^ (*v6 >> 9)) & v24;
        v29 = *(v11 + 16 * v28);
        if (v29 != *v6)
        {
          v33 = 1;
          while (v29 != -4096)
          {
            v34 = v28 + v33++;
            v28 = v34 & v24;
            v29 = *(v11 + 16 * v28);
            if (v29 == v7)
            {
              goto LABEL_23;
            }
          }

          v28 = v12;
        }

LABEL_23:
        v30 = *v26;
        v31 = v25;
        if (*v26 != v9)
        {
          v35 = 1;
          LODWORD(v31) = v25;
          while (v30 != -4096)
          {
            v36 = v31 + v35++;
            v31 = v36 & v24;
            v30 = *(v11 + 16 * v31);
            if (v30 == v9)
            {
              goto LABEL_24;
            }
          }

          v31 = v12;
        }

LABEL_24:
        v32 = *(v11 + 16 * v28 + 8);
        v8 = v27;
      }

      while (v32 < *(v11 + 16 * v31 + 8));
    }

    else
    {
      *v8 = v7;
      v27 = v6;
    }

    *v27 = v9;
  }

  return result;
}

void sub_10012F044(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    *(a1 + 8) = 0;
    if (!v2)
    {
      return;
    }

    v6 = *a1;
    v7 = (v2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v7)
    {
      v8 = v7 + 1;
      v9 = (v7 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v10 = (v6 + 16 * v9);
      v11 = (v6 + 16);
      v12 = v9;
      do
      {
        *(v11 - 2) = -4096;
        *v11 = -4096;
        v11 += 4;
        v12 -= 2;
      }

      while (v12);
      if (v8 == v9)
      {
        return;
      }
    }

    else
    {
      v10 = *a1;
    }

    v23 = (v6 + 16 * v2);
    do
    {
      *v10 = -4096;
      v10 = (v10 + 16);
    }

    while (v10 != v23);
    return;
  }

  llvm::deallocate_buffer(*a1, (16 * v2), 8uLL);
  if (!v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return;
  }

  v13 = (4 * v5 / 3u + 1) | ((4 * v5 / 3u + 1) >> 1);
  v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4);
  LODWORD(v14) = (((v14 | (v14 >> 8)) >> 16) | v14 | (v14 >> 8)) + 1;
  *(a1 + 16) = v14;
  buffer = llvm::allocate_buffer((16 * v14), 8uLL);
  *a1 = buffer;
  *(a1 + 8) = 0;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = (v16 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v20 = buffer;
LABEL_26:
      v24 = &buffer[2 * v16];
      do
      {
        *v20 = -4096;
        v20 += 2;
      }

      while (v20 != v24);
      return;
    }

    v18 = v17 + 1;
    v19 = (v17 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v20 = &buffer[2 * v19];
    v21 = buffer + 2;
    v22 = v19;
    do
    {
      *(v21 - 2) = -4096;
      *v21 = -4096;
      v21 += 4;
      v22 -= 2;
    }

    while (v22);
    if (v18 != v19)
    {
      goto LABEL_26;
    }
  }
}

uint64_t mlir::CallSiteLoc::get(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v10[1] = Context;
  v14[0] = sub_100131140;
  v14[1] = v10;
  v13[0] = v9;
  v13[1] = a2;
  v5 = (a2 >> 4) ^ (a2 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v9 >> 4) ^ (v9 >> 9));
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, sub_100131058, &v12, sub_100131088, v11);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1)
{
  v8 = a1;
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v9[1] = Context;
  v13[0] = sub_100131328;
  v13[1] = v9;
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = v8;
  v3 = (v8 >> 4) ^ (v8 >> 9);
  v4 = sub_10002C76C(0, 0);
  v5 = __ROR8__(v4 + 16, 16);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)));
  v10[0] = v12;
  v10[1] = v13;
  v11 = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((v6 >> 47) ^ v6)) ^ v4, sub_100131150, &v11, sub_1001311C8, v10);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, int a2)
{
  v11 = a1;
  Context = mlir::Attribute::getContext(&v11);
  v10 = a2;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v12[1] = Context;
  v16[0] = sub_100131328;
  v16[1] = v12;
  v15[0] = v11;
  v15[1] = &v10;
  v15[2] = 1;
  v5 = (v11 >> 4) ^ (v11 >> 9);
  v6 = sub_10002C76C(&v10, &v11);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)));
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((v8 >> 47) ^ v8)) ^ v6, sub_100131150, &v14, sub_1001311C8, v13);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v12 = a1;
  Context = mlir::Attribute::getContext(&v12);
  v18 = __PAIR64__(a3, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v13[1] = Context;
  v17[0] = sub_100131328;
  v17[1] = v13;
  v16[0] = v12;
  v16[1] = &v18;
  v16[2] = 2;
  v7 = (v12 >> 4) ^ (v12 >> 9);
  v8 = sub_10002C76C(&v18, &v19);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((v10 >> 47) ^ v10)) ^ v8, sub_100131150, &v15, sub_1001311C8, v14);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v14 = a1;
  Context = mlir::Attribute::getContext(&v14);
  v20 = __PAIR64__(a3, a2);
  v21 = a4;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v15[1] = Context;
  v19[0] = sub_100131328;
  v19[1] = v15;
  v18[0] = v14;
  v18[1] = &v20;
  v18[2] = 3;
  v9 = (v14 >> 4) ^ (v14 >> 9);
  v10 = sub_10002C76C(&v20, &v22);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, sub_100131150, &v17, sub_1001311C8, v16);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v16 = a1;
  Context = mlir::Attribute::getContext(&v16);
  v22 = __PAIR64__(a3, a2);
  v23 = a5;
  v24 = a4;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v17[1] = Context;
  v21[0] = sub_100131328;
  v21[1] = v17;
  v20[0] = v16;
  v20[1] = &v22;
  v20[2] = 4;
  v11 = (v16 >> 4) ^ (v16 >> 9);
  v12 = sub_10002C76C(&v22, &v25);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ v11)));
  v18[0] = v20;
  v18[1] = v21;
  v19 = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, sub_100131150, &v19, sub_1001311C8, v18);
}

uint64_t mlir::FusedLoc::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v14[1] = a1;
  v18[0] = sub_10013173C;
  v18[1] = v14;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v9 = sub_1000D6708(a2, &a2[2 * a3]);
  v10 = (a4 >> 4) ^ (a4 >> 9);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, sub_100131520, &v16, sub_100131580, v15);
}

uint64_t mlir::FusedLoc::getLocations(mlir::FusedLoc *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::NameLoc::get(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v10[1] = Context;
  v14[0] = sub_100131834;
  v14[1] = v10;
  v13[0] = v9;
  v13[1] = a2;
  v5 = (a2 >> 4) ^ (a2 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v9 >> 4) ^ (v9 >> 9));
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, sub_10013174C, &v12, sub_10013177C, v11);
}

uint64_t mlir::NameLoc::get(uint64_t a1)
{
  v10 = a1;
  Context = mlir::Attribute::getContext(&v10);
  v2 = mlir::Attribute::getContext(&v10);
  v4 = mlir::UnknownLoc::get(v2, v3);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v11[1] = Context;
  v15[0] = sub_10013192C;
  v15[1] = v11;
  v14[0] = v10;
  v14[1] = v4;
  v6 = (v4 >> 4) ^ (v4 >> 9);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)))) ^ v6, sub_100131844, &v13, sub_100131874, v12);
}

uint64_t mlir::OpaqueLoc::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  Context = mlir::Attribute::getContext(&v14);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v15[1] = Context;
  v19[0] = sub_100131A40;
  v19[1] = v15;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = v14;
  v7 = (a2 >> 4) ^ (a2 >> 9);
  v8 = 0x9AE16A3B2F90404FLL * ((v14 >> 4) ^ (v14 >> 9));
  v9 = __ROR8__(0xB492B66FBE98F273 * a1 - v7, 43);
  v10 = __ROR8__(v8 ^ 0xFF51AFD7ED558CCDLL, 30);
  v11 = 0xB492B66FBE98F273 * a1 - 0xAE502812AA7333 + __ROR8__(v7 ^ 0xC949D7C7509E6557, 20) - v8 + 24;
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, -348639895 * ((v12 >> 47) ^ v12), sub_10013193C, &v17, sub_10013197C, v16);
}

uint64_t mlir::LocationAttr::walk(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v9[0] = off_1002B7668;
  v9[1] = v8;
  v10 = v9;
  *(&v6[0] + 1) = sub_100130CBC(v6, v9);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  v4 = mlir::AttrTypeWalker::walkImpl(v6, *a1, 0);
  sub_100130EE4(v6);
  return v4;
}

uint64_t mlir::LocationAttr::classof(uint64_t *a1)
{
  v1 = *a1;
  if ((atomic_load_explicit(&qword_1002C0D60, memory_order_acquire) & 1) == 0)
  {
    v7 = v1;
    sub_10027F53C();
    v1 = v7;
  }

  v2 = (v1 + 72);
  v3 = qword_1002C0D58;
  v4 = *(v1 + 96);
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  if ((v4 & 2) == 0)
  {
    v2 = *v2;
  }

  return v5(v2, v3);
}

uint64_t mlir::FileLineColLoc::get(mlir::StringAttr *a1, const char *a2, const llvm::Twine *a3, unsigned int a4, unsigned int a5)
{
  v8 = "-";
  if (a3)
  {
    v8 = a2;
  }

  v19 = 261;
  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  v18[0] = v8;
  v18[1] = v9;
  v10 = mlir::StringAttr::get(a1, v18, a3);
  v25[0] = a4;
  v25[1] = a5;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v20[1] = a1;
  v24[0] = sub_100131510;
  v24[1] = v20;
  v23[0] = v10;
  v23[1] = v25;
  v23[2] = 2;
  v12 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ (8 * a4 + 8));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = __ROR8__(v14 + 16, 16);
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v21[0] = v23;
  v21[1] = v24;
  v22 = v23;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 32) >> 15) ^ (-348639895 * (v15 ^ (v16 >> 47) ^ v16)))) ^ v14, sub_100131338, &v22, sub_1001313B0, v21);
}

uint64_t mlir::FileLineColRange::getStartColumn(mlir::FileLineColRange *this)
{
  if ((*(*this + 8) & 6) != 0)
  {
    return *(*this + 24);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::isStrictFileLineColLoc(void *a1)
{
  result = 0;
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id)
    {
      return (a1[1] & 6) == 2;
    }
  }

  return result;
}

uint64_t mlir::FileLineColRange::getEndColumn(mlir::FileLineColRange *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if ((v2 & 4) != 0)
  {
    return *(v1 + 28);
  }

  if ((v2 & 2) != 0)
  {
    return *(v1 + 24);
  }

  return 0;
}

uint64_t mlir::FileLineColRange::getEndLine(mlir::FileLineColRange *this)
{
  v1 = 16;
  if ((~*(*this + 8) & 6) == 0)
  {
    v1 = 32;
  }

  return *(*this + v1);
}

uint64_t mlir::FusedLoc::get(uint64_t **a1, mlir::MLIRContext *a2, uint64_t a3, mlir::UnknownLoc *this)
{
  v83 = 0;
  *v82 = 0u;
  v84 = v86;
  v85 = 0x400000000;
  if (!a2)
  {
    goto LABEL_110;
  }

  v6 = a1;
  v7 = &a1[a2];
  do
  {
    v8 = *v6;
    v76 = v8;
    v9 = *(*v8 + 136);
    if (v8)
    {
      v10 = v9 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      if (v9 == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
      {
        goto LABEL_5;
      }

LABEL_4:
      sub_100130AB8(v82, &v76);
      goto LABEL_5;
    }

    if (v8[3] != a3)
    {
      goto LABEL_4;
    }

    v11 = v8[2];
    if (v11)
    {
      v12 = v8[1];
      v13 = &v12[v11];
      do
      {
        if (LODWORD(v82[1]))
        {
          a2 = v83;
          if (!v83)
          {
            goto LABEL_88;
          }

          v14 = ((*v12 >> 4) ^ (*v12 >> 9)) & (v83 - 1);
          v15 = v82[0] + 8 * v14;
          v16 = *v15;
          if (*v12 != *v15)
          {
            v40 = 0;
            v41 = 1;
            while (v16 != -4096)
            {
              if (v40)
              {
                v42 = 0;
              }

              else
              {
                v42 = v16 == -8192;
              }

              if (v42)
              {
                v40 = v15;
              }

              v43 = v14 + v41++;
              v14 = v43 & (v83 - 1);
              v15 = v82[0] + 8 * v14;
              v16 = *v15;
              if (*v12 == *v15)
              {
                goto LABEL_15;
              }
            }

            if (v40)
            {
              v44 = v40;
            }

            else
            {
              v44 = v15;
            }

            if (4 * LODWORD(v82[1]) + 4 < 3 * v83)
            {
              if (v83 + ~LODWORD(v82[1]) - HIDWORD(v82[1]) <= v83 >> 3)
              {
                goto LABEL_89;
              }

              ++LODWORD(v82[1]);
              if (*v44 == -4096)
              {
LABEL_22:
                v17 = *v12;
                *v44 = *v12;
                v18 = v85;
                if (v85 >= HIDWORD(v85))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v85 + 1, 8);
                  v18 = v85;
                }

                *(v84 + v18) = v17;
                LODWORD(v85) = v85 + 1;
                goto LABEL_15;
              }
            }

            else
            {
LABEL_88:
              LODWORD(a2) = 2 * v83;
LABEL_89:
              sub_100131DD0(v82, a2);
              if (v83)
              {
                v45 = v83 - 1;
                v46 = ((*v12 >> 4) ^ (*v12 >> 9)) & (v83 - 1);
                v44 = v82[0] + 8 * v46;
                v47 = *v44;
                if (*v12 != *v44)
                {
                  v48 = 0;
                  v49 = 1;
                  while (v47 != -4096)
                  {
                    if (v48)
                    {
                      v50 = 0;
                    }

                    else
                    {
                      v50 = v47 == -8192;
                    }

                    if (v50)
                    {
                      v48 = v44;
                    }

                    v51 = v46 + v49++;
                    v46 = v51 & v45;
                    v44 = v82[0] + 8 * (v51 & v45);
                    v47 = *v44;
                    if (*v12 == *v44)
                    {
                      goto LABEL_101;
                    }
                  }

                  if (v48)
                  {
                    v44 = v48;
                  }
                }
              }

              else
              {
                v44 = 0;
              }

LABEL_101:
              ++LODWORD(v82[1]);
              if (*v44 == -4096)
              {
                goto LABEL_22;
              }
            }

            --HIDWORD(v82[1]);
            goto LABEL_22;
          }
        }

        else
        {
          v19 = v84;
          if (v85)
          {
            v20 = *v12;
            v21 = 8 * v85;
            v19 = v84;
            do
            {
              if (*v19 == v20)
              {
                goto LABEL_71;
              }

              ++v19;
              v21 -= 8;
            }

            while (v21);
            if (v85 >= HIDWORD(v85))
            {
LABEL_73:
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v85 + 1, 8);
              *(v84 + v85) = v20;
              v22 = v85 + 1;
              LODWORD(v85) = v22;
              if (v22 < 5)
              {
                goto LABEL_15;
              }

LABEL_31:
              v23 = v84;
              v24 = v84 + 8 * v22;
              while (2)
              {
                a2 = v83;
                if (!v83)
                {
LABEL_53:
                  LODWORD(a2) = 2 * v83;
                  goto LABEL_54;
                }

                v25 = ((*v23 >> 4) ^ (*v23 >> 9)) & (v83 - 1);
                v26 = v82[0] + 8 * v25;
                v27 = *v26;
                if (*v23 == *v26)
                {
LABEL_33:
                  if (++v23 == v24)
                  {
                    goto LABEL_15;
                  }

                  continue;
                }

                break;
              }

              v28 = 0;
              v29 = 1;
              while (v27 != -4096)
              {
                if (v28)
                {
                  v30 = 0;
                }

                else
                {
                  v30 = v27 == -8192;
                }

                if (v30)
                {
                  v28 = v26;
                }

                v31 = v25 + v29++;
                v25 = v31 & (v83 - 1);
                v26 = v82[0] + 8 * v25;
                v27 = *v26;
                if (*v23 == *v26)
                {
                  goto LABEL_33;
                }
              }

              if (v28)
              {
                v32 = v28;
              }

              else
              {
                v32 = v26;
              }

              if (4 * LODWORD(v82[1]) + 4 >= 3 * v83)
              {
                goto LABEL_53;
              }

              if (v83 + ~LODWORD(v82[1]) - HIDWORD(v82[1]) <= v83 >> 3)
              {
LABEL_54:
                sub_100131DD0(v82, a2);
                if (v83)
                {
                  v33 = v83 - 1;
                  v34 = ((*v23 >> 4) ^ (*v23 >> 9)) & (v83 - 1);
                  v32 = v82[0] + 8 * v34;
                  v35 = *v32;
                  if (*v23 != *v32)
                  {
                    v36 = 0;
                    v37 = 1;
                    while (v35 != -4096)
                    {
                      if (v36)
                      {
                        v38 = 0;
                      }

                      else
                      {
                        v38 = v35 == -8192;
                      }

                      if (v38)
                      {
                        v36 = v32;
                      }

                      v39 = v34 + v37++;
                      v34 = v39 & v33;
                      v32 = v82[0] + 8 * (v39 & v33);
                      v35 = *v32;
                      if (*v23 == *v32)
                      {
                        goto LABEL_66;
                      }
                    }

                    if (v36)
                    {
                      v32 = v36;
                    }
                  }
                }

                else
                {
                  v32 = 0;
                }

LABEL_66:
                ++LODWORD(v82[1]);
                if (*v32 != -4096)
                {
LABEL_38:
                  --HIDWORD(v82[1]);
                }
              }

              else
              {
                ++LODWORD(v82[1]);
                if (*v32 != -4096)
                {
                  goto LABEL_38;
                }
              }

              *v32 = *v23;
              goto LABEL_33;
            }
          }

          else
          {
LABEL_71:
            if (v19 != (v84 + 8 * v85))
            {
              goto LABEL_15;
            }

            v20 = *v12;
            if (v85 >= HIDWORD(v85))
            {
              goto LABEL_73;
            }
          }

          *(v84 + v85) = v20;
          v22 = v85 + 1;
          LODWORD(v85) = v22;
          if (v22 >= 5)
          {
            goto LABEL_31;
          }
        }

LABEL_15:
        ++v12;
      }

      while (v12 != v13);
    }

LABEL_5:
    ++v6;
  }

  while (v6 != v7);
  v52 = v85;
  if (v85)
  {
    v53 = v84;
    if (v85 != 1 || a3)
    {
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
      v71 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
      v72 = this;
      v79 = sub_100132158;
      v80 = &v71;
      v76 = v53;
      v77 = v52;
      v78 = a3;
      v55 = sub_1000D6708(v53, &v53[v52]);
      v56 = (a3 >> 4) ^ (a3 >> 9);
      v57 = __ROR8__(v56 + 16, 16);
      v58 = 0x9DDFEA08EB382D69 * (v57 ^ ((0x9DDFEA08EB382D69 * (v57 ^ 0xFF51AFD7ED558CCDLL ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v57 ^ 0xFF51AFD7ED558CCDLL ^ v55)));
      v73 = &v76;
      v74 = &v79;
      v75 = &v76;
      v59 = sub_1001320A8;
      v60 = sub_100132108;
      v61 = (-348639895 * ((v58 >> 47) ^ v58)) ^ v56;
      v62 = AttributeUniquer;
      goto LABEL_112;
    }

    ParametricStorageTypeImpl = *v84;
    v69 = v84;
    if (v84 == v86)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

LABEL_110:
  if (a3)
  {
    v81 = mlir::UnknownLoc::get(this, a2);
    v63 = mlir::MLIRContext::getAttributeUniquer(this);
    v71 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
    v72 = this;
    v79 = sub_100132098;
    v80 = &v71;
    v76 = &v81;
    v77 = 1;
    v78 = a3;
    v64 = sub_1000D6708(&v81, v82);
    v65 = (a3 >> 4) ^ (a3 >> 9);
    v66 = __ROR8__(v65 + 16, 16);
    v67 = 0x9DDFEA08EB382D69 * (v66 ^ ((0x9DDFEA08EB382D69 * (v66 ^ v64 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v66 ^ v64 ^ 0xFF51AFD7ED558CCDLL)));
    v73 = &v76;
    v74 = &v79;
    v75 = &v76;
    v59 = sub_100131FE8;
    v60 = sub_100132048;
    v61 = (-348639895 * ((v67 >> 47) ^ v67)) ^ v65;
    v62 = v63;
LABEL_112:
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(v62, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, v61, v59, &v75, v60, &v73);
    v69 = v84;
    if (v84 == v86)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  ParametricStorageTypeImpl = mlir::UnknownLoc::get(this, a2);
  v69 = v84;
  if (v84 != v86)
  {
LABEL_115:
    free(v69);
  }

LABEL_116:
  llvm::deallocate_buffer(v82[0], (8 * v83), 8uLL);
  return ParametricStorageTypeImpl;
}

uint64_t sub_100130AB8(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 8))
  {
    v7 = (a1 + 24);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = v8;
    if (v9)
    {
      v11 = *a2;
      v12 = 8 * v9;
      v10 = *(a1 + 24);
      while (*v10 != v11)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    if (v10 != &v8[v9])
    {
      return 0;
    }

    v11 = *a2;
LABEL_14:
    if (v9 >= *(a1 + 36))
    {
      v16 = (a1 + 24);
      v17 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v9 + 1, 8);
      v7 = v16;
      *(*(a1 + 24) + 8 * *(a1 + 32)) = v17;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 5)
      {
LABEL_16:
        v14 = *v7;
        v15 = 8 * v13;
        do
        {
          sub_100131C5C(a1, v14++, v18);
          v15 -= 8;
        }

        while (v15);
      }
    }

    else
    {
      v8[v9] = v11;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 5)
      {
        goto LABEL_16;
      }
    }

    return 1;
  }

  sub_100131C5C(a1, a2, v18);
  if (v18[16] != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a1 + 32);
  if (v5 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v5 + 1, 8);
    LODWORD(v5) = *(a1 + 32);
  }

  *(*(a1 + 24) + 8 * v5) = v4;
  ++*(a1 + 32);
  return 1;
}

uint64_t sub_100130CBC(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_10002BC08();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_10002BC08();
  }

  v7 = 32 * v2;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
    }

    else
    {
      *(v7 + 24) = v8;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(v7 + 24) = 0;
  }

  v9 = v7 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = v7 + v12;
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v7 + v12;
    do
    {
      v16 = v14[3];
      if (v16)
      {
        if (v14 == v16)
        {
          *(v15 + 24) = v15;
          (*(*v14[3] + 24))(v14[3], v15);
        }

        else
        {
          *(v15 + 24) = v16;
          v14[3] = 0;
        }
      }

      else
      {
        *(v15 + 24) = 0;
      }

      v14 += 4;
      v15 += 32;
    }

    while (v14 != v11);
    v17 = v10;
    do
    {
      v18 = v10[3];
      if (v10 == v18)
      {
        (*(*v18 + 32))(v18);
      }

      else if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v10 += 4;
      v17 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

char **sub_100130EE4(char **a1)
{
  llvm::deallocate_buffer(a1[6], (24 * *(a1 + 16)), 8uLL);
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v7 = *a1;
  if (*a1)
  {
    v8 = a1[1];
    v9 = *a1;
    if (v8 != v7)
    {
      v10 = v8 - 32;
      do
      {
        v11 = *(v8 - 1);
        v8 -= 32;
        if (v8 == v11)
        {
          (*(*v11 + 32))(v11);
        }

        else if (v11)
        {
          (*(*v11 + 40))(v11);
        }

        v10 -= 32;
      }

      while (v8 != v7);
      v9 = *a1;
    }

    a1[1] = v7;
    operator delete(v9);
  }

  return a1;
}

unint64_t sub_100131088(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    v3 = sub_10003A984(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

BOOL sub_100131150(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if ((v3 & 0xFFFFFFFFFFFFFFF8) == **a1 && (v4 = (v3 >> 1) & 3, v2[2] == v4 + 1) && (v5 = v2[1], *(a2 + 16) == *v5))
  {
    return memcmp((a2 + 24), v5 + 1, 4 * v4) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001311C8(void *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*a1 + 16);
  }

  v5 = v4 - 1;
  v6 = 4 * (v4 - 1) + 24;
  a2[10] += v6;
  v7 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + v6;
  if (*a2)
  {
    v9 = v8 > a2[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v26 = a1;
    v7 = sub_10003A984(a2, v6, v6, 3);
    a1 = v26;
  }

  else
  {
    *a2 = v8;
  }

  v10 = *v2 & 0xFFFFFFFFFFFFFFF9 | (2 * v5);
  *v7 = 0;
  *(v7 + 8) = v10;
  *(v7 + 16) = 0;
  if (v3)
  {
    v12 = v2[1];
    v11 = v2[2];
    *(v7 + 16) = *v12;
    if (v11 != 1)
    {
      v13 = 4 * v11;
      v14 = (v7 + 24);
      v15 = v12 + 1;
      if ((v13 - 8) < 0x1C)
      {
        goto LABEL_16;
      }

      if (v7 - v12 + 20 < 0x20)
      {
        goto LABEL_16;
      }

      v16 = ((v13 - 8) >> 2) + 1;
      v17 = 4 * (v16 & 0x7FFFFFFFFFFFFFF8);
      v14 = (v14 + v17);
      v15 = (v15 + v17);
      v18 = (v12 + 5);
      v19 = (v7 + 40);
      v20 = v16 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 8;
      }

      while (v20);
      if (v16 != (v16 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_16:
        v22 = &v12[v13 / 4];
        do
        {
          v23 = *v15++;
          *v14++ = v23;
        }

        while (v15 != v22);
      }
    }
  }

  v24 = a1[1];
  if (*v24)
  {
    (*v24)(*(v24 + 8), v7);
  }

  return v7;
}

BOOL sub_100131338(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if ((v3 & 0xFFFFFFFFFFFFFFF8) == **a1 && (v4 = (v3 >> 1) & 3, v2[2] == v4 + 1) && (v5 = v2[1], *(a2 + 16) == *v5))
  {
    return memcmp((a2 + 24), v5 + 1, 4 * v4) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001313B0(void *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*a1 + 16);
  }

  v5 = v4 - 1;
  v6 = 4 * (v4 - 1) + 24;
  a2[10] += v6;
  v7 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + v6;
  if (*a2)
  {
    v9 = v8 > a2[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v26 = a1;
    v7 = sub_10003A984(a2, v6, v6, 3);
    a1 = v26;
  }

  else
  {
    *a2 = v8;
  }

  v10 = *v2 & 0xFFFFFFFFFFFFFFF9 | (2 * v5);
  *v7 = 0;
  *(v7 + 8) = v10;
  *(v7 + 16) = 0;
  if (v3)
  {
    v12 = v2[1];
    v11 = v2[2];
    *(v7 + 16) = *v12;
    if (v11 != 1)
    {
      v13 = 4 * v11;
      v14 = (v7 + 24);
      v15 = v12 + 1;
      if ((v13 - 8) < 0x1C)
      {
        goto LABEL_16;
      }

      if (v7 - v12 + 20 < 0x20)
      {
        goto LABEL_16;
      }

      v16 = ((v13 - 8) >> 2) + 1;
      v17 = 4 * (v16 & 0x7FFFFFFFFFFFFFF8);
      v14 = (v14 + v17);
      v15 = (v15 + v17);
      v18 = (v12 + 5);
      v19 = (v7 + 40);
      v20 = v16 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 8;
      }

      while (v20);
      if (v16 != (v16 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_16:
        v22 = &v12[v13 / 4];
        do
        {
          v23 = *v15++;
          *v14++ = v23;
        }

        while (v15 != v22);
      }
    }
  }

  v24 = a1[1];
  if (*v24)
  {
    (*v24)(*(v24 + 8), v7);
  }

  return v7;
}

BOOL sub_100131520(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *sub_100131580(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1001315D0(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_1001315D0(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  if (v2)
  {
    v4 = *a2;
    v5 = 8 * v2;
    a1[10] += 8 * v2;
    v6 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = v6 + 8 * v2;
    if (*a1)
    {
      v8 = v7 > a1[1];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v18 = a1;
      v6 = sub_10003A984(a1, 8 * v2, 8 * v2, 3);
      a1 = v18;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v7;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
LABEL_7:
        v10 = v6;
        v11 = v4;
        if (v6 - v4 >= 0x20)
        {
          v12 = (v9 >> 3) + 1;
          v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
          v10 = (v6 + v13);
          v11 = (v4 + v13);
          v14 = (v4 + 16);
          v15 = (v6 + 16);
          v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 4;
          }

          while (v16);
          if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v10 = v6;
    v11 = v4;
    do
    {
LABEL_15:
      v19 = *v11++;
      *v10++ = v19;
    }

    while (v11 != (v4 + 8 * v2));
    goto LABEL_16;
  }

  v6 = 0;
LABEL_16:
  a1[10] += 32;
  v20 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 4;
  if (*a1)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = sub_10003A984(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = v6;
  v20[2] = v2;
  v20[3] = v3;
  return v20;
}

unint64_t sub_10013177C(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    v3 = sub_10003A984(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t sub_100131874(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    v3 = sub_10003A984(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t sub_10013197C(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 1);
  a2[10] += 32;
  v4 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 32;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v4 = sub_10003A984(a2, 32, 32, 3);
    *v4 = 0;
    *(v4 + 8) = v2;
    *(v4 + 16) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return v4;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *v4 = 0;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(v7[1], v4);
  }

  return v4;
}

uint64_t sub_100131AC0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002B7668;
  a2[1] = v2;
  return result;
}

uint64_t sub_100131AEC(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = **a2;
  if ((atomic_load_explicit(&qword_1002C0D60, memory_order_acquire) & 1) == 0)
  {
    v11 = v4;
    sub_10027F53C();
    v4 = v11;
  }

  v5 = (v4 + 72);
  v6 = *(v4 + 96);
  if ((v6 & 2) == 0)
  {
    v5 = *v5;
  }

  if (!(*(v6 & 0xFFFFFFFFFFFFFFF8))(v5, qword_1002C0D58))
  {
    return 2;
  }

  v7 = *(a1 + 8);
  v9 = *v7;
  v8 = *(v7 + 8);

  return v9(v8, v3);
}

uint64_t sub_100131B94()
{
  if ((atomic_load_explicit(&qword_1002C0D78, memory_order_acquire) & 1) == 0)
  {
    sub_10027F58C();
  }

  return qword_1002C0D68;
}

const char *sub_100131BDC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::AttributeTrait::IsLocation<Empty>]";
  v6 = 101;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t sub_100131C5C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    sub_100131DD0(result, v4);
    sub_100065A5C(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

void sub_100131DD0(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((8 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &buffer->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = buffer + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v17 = &buffer->i8[8 * v11];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v17);
      }
    }

    if (v3)
    {
      v18 = v4;
      do
      {
        v27 = *v18;
        if ((*v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = *(a1 + 16) - 1;
          v29 = v28 & ((v27 >> 4) ^ (v27 >> 9));
          v26 = (*a1 + 8 * v29);
          v30 = *v26;
          if (v27 != *v26)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v26;
              }

              v34 = v29 + v32++;
              v29 = v34 & v28;
              v26 = (*a1 + 8 * (v34 & v28));
              v30 = *v26;
              if (v27 == *v26)
              {
                goto LABEL_24;
              }
            }

            if (v31)
            {
              v26 = v31;
            }
          }

LABEL_24:
          *v26 = v27;
          ++*(a1 + 8);
        }

        v18 = (v18 + 8);
      }

      while (v18 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v20 < 3)
      {
        goto LABEL_19;
      }

      v21 = v20 + 1;
      v10 = &buffer->i8[8 * (v21 & 0x3FFFFFFFFFFFFFFCLL)];
      v22 = buffer + 1;
      v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v24 = v21 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v22[-1] = v23;
        *v22 = v23;
        v22 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_19:
        v25 = &buffer->i8[8 * v19];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v25);
      }
    }
  }
}

BOOL sub_100131FE8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *sub_100132048(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1001315D0(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

BOOL sub_1001320A8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *sub_100132108(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1001315D0(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void sub_100132168(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_100132A00;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_100132A60;
  v18 = &v10;
  v19 = sub_100132AA8;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v22 = "builtin.call_site_loc";
  v23 = 21;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1001322CC(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_100132BBC;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = nullsub_207;
  v18 = &v10;
  v19 = sub_100132C20;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v22 = "builtin.file_line_range";
  v23 = 23;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_100132430(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_100132C28;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_100132C88;
  v18 = &v10;
  v19 = sub_100132CEC;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v22 = "builtin.fused_loc";
  v23 = 17;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_100132594(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_10013327C;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_1001332DC;
  v18 = &v10;
  v19 = sub_100133324;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v22 = "builtin.name_loc";
  v23 = 16;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1001326F8(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_100133484;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_1001334E4;
  v18 = &v10;
  v19 = sub_100133514;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v22 = "builtin.opaque_loc";
  v23 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

uint64_t sub_10013285C(uint64_t a1)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = sub_1001336D8;
  v18 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = nullsub_208;
  v20 = v11;
  v21 = sub_10013373C;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id;
  v24 = "builtin.unknown_loc";
  v25 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v8 = *(a1 + 32);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v11[0] = v8;
  v11[1] = &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id;
  v13 = sub_100133744;
  v14 = v11;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id, sub_100100028, &v12);
}

BOOL sub_100132A00(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0D60, memory_order_acquire))
  {
    return qword_1002C0D58 == a1;
  }

  sub_10027F53C();
  return qword_1002C0D58 == a1;
}

uint64_t sub_100132A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t sub_100132AA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = a2;
  v3 = *a3;
  v4 = a3[1];
  mlir::Attribute::getContext(&v11);
  v12 = v3;
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v13[1] = Context;
  v17[0] = sub_100131140;
  v17[1] = v13;
  v16[0] = v12;
  v16[1] = v4;
  v7 = (v4 >> 4) ^ (v4 >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v12 >> 4) ^ (v12 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, sub_100131058, &v15, sub_100131088, v14);
}

BOOL sub_100132BBC(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0D60, memory_order_acquire))
  {
    return qword_1002C0D58 == a1;
  }

  sub_10027F53C();
  return qword_1002C0D58 == a1;
}

BOOL sub_100132C28(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0D60, memory_order_acquire))
  {
    return qword_1002C0D58 == a1;
  }

  sub_10027F53C();
  return qword_1002C0D58 == a1;
}

uint64_t sub_100132C88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[1];
  v6 = a2[2];
  v8 = a2[3];
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  if (v6)
  {
    v9 = 8 * v6;
    do
    {
      v10 = *v7++;
      mlir::AttrTypeImmediateSubElementWalker::walk(v12, v10);
      v9 -= 8;
    }

    while (v9);
  }

  return mlir::AttrTypeImmediateSubElementWalker::walk(v12, v8);
}

uint64_t sub_100132CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_100132D20(a2, &v8, &v7);
}

uint64_t sub_100132D20(uint64_t a1, int64x2_t *a2, __int128 *a3)
{
  v21 = a1;
  v3 = *(a1 + 8);
  v20 = *(a1 + 24);
  v18 = *a2;
  v19 = v3;
  v17 = *a3;
  sub_100132F58(&v19, &v18, &v30);
  Context = mlir::Attribute::getContext(&v21);
  v27 = v29;
  v28 = 0x600000000;
  v5 = v31;
  if (!v31)
  {
    v5 = 0;
    v8 = v29;
    goto LABEL_9;
  }

  if (v31 < 7)
  {
    v7 = v29;
    v6 = v31;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v31, 8);
  v6 = v31;
  if (v31)
  {
    v7 = v27;
LABEL_7:
    memcpy(v7, v30, 8 * v6);
  }

  LODWORD(v28) = v5;
  v8 = v27;
LABEL_9:
  v9 = v33;
  v29[6] = v33;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v22[1] = Context;
  v26[0] = sub_10013173C;
  v26[1] = v22;
  v25[0] = v8;
  v25[1] = v5;
  v25[2] = v9;
  v11 = sub_1000D6708(v8, &v8[2 * v5]);
  v12 = (v9 >> 4) ^ (v9 >> 9);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v11 ^ 0xFF51AFD7ED558CCDLL)));
  v23[0] = v25;
  v23[1] = v26;
  v24 = v25;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, sub_100131520, &v24, sub_100131580, v23);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v30 != &v32)
  {
    free(v30);
  }

  return ParametricStorageTypeImpl;
}

void sub_100132F58(uint64_t *a1@<X0>, int64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  sub_1001330C4(a1[1], a2, &__src);
  if (a1[2])
  {
    v7 = *a2;
    *a2 = vaddq_s64(*a2, xmmword_10028FD30);
    v8 = *v7.i64[0];
  }

  else
  {
    v8 = 0;
  }

  v9 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  v10 = v15;
  v11 = __src;
  if (!v15 || &__src == a3)
  {
    goto LABEL_15;
  }

  if (__src == v17)
  {
    if (v15 < 7)
    {
      v13 = v15;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v15, 8);
      v13 = v15;
      v11 = __src;
      if (!v15)
      {
LABEL_13:
        *(a3 + 8) = v10;
        goto LABEL_14;
      }

      v9 = *a3;
    }

    memcpy(v9, v11, 8 * v13);
    v11 = __src;
    goto LABEL_13;
  }

  *a3 = __src;
  v12 = v16;
  *(a3 + 8) = v10;
  *(a3 + 12) = v12;
  __src = v17;
  v16 = 0;
  v11 = v17;
LABEL_14:
  v15 = 0;
LABEL_15:
  *(a3 + 64) = v8;
  if (v11 != v17)
  {
    free(v11);
  }
}

void sub_1001330C4(uint64_t a1@<X1>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  __src = v19;
  v18 = 0x600000000;
  if (a1)
  {
    v3 = 8 * a1;
    v4 = xmmword_10028FD30;
    do
    {
      while (1)
      {
        v5 = *a2;
        *a2 = vaddq_s64(*a2, v4);
        v6 = *v5.i64[0];
        v16 = *v5.i64[0];
        if (v18 >= HIDWORD(v18))
        {
          break;
        }

        *(__src + v18) = v6;
        LODWORD(v18) = v18 + 1;
        v3 -= 8;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v7 = a3;
      v8 = a2;
      v15 = v4;
      sub_1000AC328(&__src, &v16);
      v4 = v15;
      a2 = v8;
      a3 = v7;
      v3 -= 8;
    }

    while (v3);
LABEL_7:
    v9 = v18;
    v10 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    if (v9 && &__src != a3)
    {
      if (v10 == v19)
      {
        v12 = v9;
        if (v9 < 7 || (v13 = a3, llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v9, 8), a3 = v13, v12 = v18, v10 = __src, v18))
        {
          v14 = a3;
          memcpy(*a3, v10, 8 * v12);
          a3 = v14;
          v10 = __src;
        }

        *(a3 + 8) = v9;
      }

      else
      {
        *a3 = v10;
        v11 = HIDWORD(v18);
        *(a3 + 8) = v9;
        *(a3 + 12) = v11;
        __src = v19;
        HIDWORD(v18) = 0;
        v10 = v19;
      }

      LODWORD(v18) = 0;
    }

    if (v10 != v19)
    {
      free(v10);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
  }
}

BOOL sub_10013327C(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0D60, memory_order_acquire))
  {
    return qword_1002C0D58 == a1;
  }

  sub_10027F53C();
  return qword_1002C0D58 == a1;
}

uint64_t sub_1001332DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t sub_100133324(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return sub_100133358(a2, v5);
}

uint64_t sub_100133358(uint64_t a1, uint64_t **a2)
{
  v12 = a1;
  v2 = *a2;
  if (*(a1 + 8))
  {
    v4 = *v2++;
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  v5 = *v2;
  mlir::Attribute::getContext(&v12);
  v13 = v3;
  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v14[1] = Context;
  v18[0] = sub_100131834;
  v18[1] = v14;
  v17[0] = v13;
  v17[1] = v5;
  v8 = (v5 >> 4) ^ (v5 >> 9);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v13 >> 4) ^ (v13 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) ^ v8, sub_10013174C, &v16, sub_10013177C, v15);
}

BOOL sub_100133484(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0D60, memory_order_acquire))
  {
    return qword_1002C0D58 == a1;
  }

  sub_10027F53C();
  return qword_1002C0D58 == a1;
}

uint64_t sub_1001334E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_100133514(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return sub_100133548(a2, v5);
}

uint64_t sub_100133548(uint64_t a1, uint64_t **a2)
{
  v14 = a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = **a2;
  mlir::Attribute::getContext(&v14);
  v15 = v4;
  Context = mlir::Attribute::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v16[1] = Context;
  v20[0] = sub_100131A40;
  v20[1] = v16;
  v19[0] = v2;
  v19[1] = v3;
  v19[2] = v15;
  v7 = (v3 >> 4) ^ (v3 >> 9);
  v8 = 0x9AE16A3B2F90404FLL * ((v15 >> 4) ^ (v15 >> 9));
  v9 = __ROR8__(0xB492B66FBE98F273 * v2 - v7, 43);
  v10 = __ROR8__(v8 ^ 0xFF51AFD7ED558CCDLL, 30);
  v11 = 0xB492B66FBE98F273 * v2 - 0xAE502812AA7333 + __ROR8__(v7 ^ 0xC949D7C7509E6557, 20) - v8 + 24;
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, -348639895 * ((v12 >> 47) ^ v12), sub_10013193C, &v18, sub_10013197C, v17);
}

BOOL sub_1001336D8(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0D60, memory_order_acquire))
  {
    return qword_1002C0D58 == a1;
  }

  sub_10027F53C();
  return qword_1002C0D58 == a1;
}

_BYTE *sub_100133DE0(_BYTE *result, uint64_t a2)
{
  v3 = result;
  v4 = result + 8;
  v5 = *result;
  if (*result != result + 8)
  {
    do
    {
      v9 = *(v5 + 55);
      if (v9 >= 0)
      {
        v10 = v5 + 4;
      }

      else
      {
        v10 = v5[4];
      }

      v11 = v5[5];
      if (v9 >= 0)
      {
        v12 = *(v5 + 55);
      }

      else
      {
        v12 = v5[5];
      }

      result = mlir::DialectRegistry::insert(a2, v5[7], v10, v12, (v5 + 8));
      v13 = v5[1];
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
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != v4);
  }

  v6 = *(v3 + 14);
  if (v6)
  {
    v7 = *(v3 + 6);
    for (i = 16 * v6; i; i -= 16)
    {
      (*(**(v7 + 8) + 24))(&v19);
      v21 = *v7;
      v22 = 0;
      sub_1000A7950(a2 + 24, &v21, &v22, &v23);
      if (v24 == 1)
      {
        v16 = *(a2 + 56);
        *(v23 + 8) = v16;
        v20 = &v19;
        v21 = v7;
        if (v16 >= *(a2 + 60))
        {
          sub_1001368C4(a2 + 48, &std::piecewise_construct, &v21, &v20);
          result = v19;
          v19 = 0;
          if (!result)
          {
            goto LABEL_17;
          }

LABEL_22:
          result = (*(*result + 8))(result);
          goto LABEL_17;
        }

        v17 = (*(a2 + 48) + 16 * v16);
        *v17 = *v7;
        v18 = v19;
        v19 = 0;
        v17[1] = v18;
        *(a2 + 56) = v16 + 1;
      }

      result = v19;
      v19 = 0;
      if (result)
      {
        goto LABEL_22;
      }

LABEL_17:
      v7 += 16;
    }
  }

  return result;
}

void mlir::MLIRContext::~MLIRContext(mlir::MLIRContext *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    sub_100138214(v2);
    operator delete();
  }
}

void mlir::MLIRContext::getLoadedDialects(mlir::MLIRContext *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(*this + 256))
  {
    operator new();
  }
}

void mlir::MLIRContext::getAvailableDialects(mlir::MLIRContext *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(*this + 272);
  v4 = *this + 280;
  if (v3 != v4)
  {
    do
    {
      v5 = v3[4];
      v6 = *(v3 + 55);
      if (v6 >= 0)
      {
        v5 = v3 + 4;
      }

      if (v6 < 0)
      {
        v6 = v3[5];
      }

      *&v10 = v5;
      *(&v10 + 1) = v6;
      sub_100031958(a2, &v10);
      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
  }
}

uint64_t mlir::MLIRContext::getLoadedDialect(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v4 = *a1;
  v5 = sub_10007EDD8((*a1 + 248), v8);
  v6 = *(v4 + 248) + 24 * *(v4 + 264);
  if (v5)
  {
    v6 = v5;
  }

  if (v6 == *(*a1 + 248) + 24 * *(*a1 + 264))
  {
    return 0;
  }

  else
  {
    return *(v6 + 16);
  }
}

uint64_t (*mlir::MLIRContext::getOrLoadDialect(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v11[0] = a2;
  v11[1] = a3;
  v6 = *a1;
  v7 = sub_10007EDD8((*a1 + 248), v11);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v6 + 248) + 24 * *(v6 + 264);
  }

  if (v8 == *(*a1 + 248) + 24 * *(*a1 + 264) || (result = *(v8 + 16)) == 0)
  {
    result = mlir::DialectRegistry::getDialectAllocator(*a1 + 272, a2, a3);
    if (result)
    {
      return result(v10, a1);
    }
  }

  return result;
}

size_t *mlir::MLIRContext::getOrLoadDialect(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  *&v35 = a2;
  *(&v35 + 1) = a3;
  v9 = *a1;
  v32[0] = 0;
  sub_100134590(v9 + 248, &v35, &v33);
  if (v34 == 1)
  {
    a5(v32, a6);
    v10 = sub_1001346A0(v9 + 248, &v35);
    v11 = v32[0];
    v32[0] = 0;
    v12 = *v10;
    *v10 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v32[0];
    v32[0] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = *v10;
    v15 = sub_100138D74((v9 + 712), &v35);
    if (v15 && v15 != *(v9 + 712) + 80 * *(v9 + 728))
    {
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v17)
      {
        v18 = *(v15 + 16);
        if (((v17 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_13;
        }

        v19 = ((v17 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
        v18 = &v16[v19 & 0x3FFFFFFFFFFFFFFELL];
        v20 = v16 + 1;
        v21 = v19 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          v22 = *v20;
          *(*(v20 - 1) + 32) = v14;
          *(v22 + 32) = v14;
          v20 += 2;
          v21 -= 2;
        }

        while (v21);
        if (v19 != (v19 & 0x3FFFFFFFFFFFFFFELL))
        {
LABEL_13:
          v23 = &v16[v17];
          do
          {
            v24 = *v18++;
            *(v24 + 32) = v14;
          }

          while (v18 != v23);
        }
      }

      if (v16 != (v15 + 32))
      {
        v25 = v15;
        free(v16);
        v15 = v25;
      }

      *v15 = xmmword_10028FCA0;
      *(v9 + 720) = vadd_s32(*(v9 + 720), 0x1FFFFFFFFLL);
    }

    mlir::DialectRegistry::applyExtensions((v9 + 272), v14);
    return v14;
  }

  else
  {
    if (*(*(v33 + 16) + 24) != a4)
    {
      v31 = 1283;
      v29 = "a dialect with namespace '";
      v30 = v35;
      v27 = "' has already been registered";
      v28 = 259;
      sub_100038624(&v29, &v27, v32);
      llvm::report_fatal_error(v32, 1);
    }

    return *(v33 + 16);
  }
}

uint64_t sub_100134590@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  result = sub_100095A6C(a1, a2, &v12);
  v7 = v12;
  if (!result)
  {
    v13 = v12;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    if (4 * v9 + 4 >= 3 * v10)
    {
      v10 *= 2;
    }

    else if (v10 + ~v9 - *(a1 + 12) > v10 >> 3)
    {
      *(a1 + 8) = v9 + 1;
      if (*v7 == -1)
      {
LABEL_7:
        *v7 = *a2;
        v7[2] = 0;
        v8 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    sub_100138B10(a1, v10);
    result = sub_100095A6C(a1, a2, &v13);
    v7 = v13;
    ++*(a1 + 8);
    if (*v7 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:
  v11 = *a1 + 24 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v11;
  *(a3 + 16) = v8;
  return result;
}

char **sub_1001346A0(uint64_t a1, _OWORD *a2)
{
  v9 = 0;
  v4 = sub_100095A6C(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      *(a1 + 8) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = 0;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 12);
      goto LABEL_6;
    }

    sub_100138B10(a1, v7);
    sub_100095A6C(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 8);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

uint64_t mlir::RegisteredOperationName::lookup(int8x16_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = llvm::StringMapImpl::hash(a1, a2);
  Key = llvm::StringMapImpl::FindKey((v5 + 208), a1, a2, v6);
  if (Key == -1 || Key == *(v5 + 216))
  {
    return 0;
  }

  else
  {
    return *(*(*(v5 + 208) + 8 * Key) + 8);
  }
}

uint64_t mlir::Dialect::addType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  v6 = v5 + 8;
  v7 = v5[8];
  v5[18] += 160;
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 160;
  if (v7)
  {
    v10 = v9 > v5[9];
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v8 = sub_10003A984(v6, 160, 160, 3);
  }

  else
  {
    *v6 = v9;
  }

  *v8 = *a3;
  *(v8 + 8) = v8 + 24;
  *(v8 + 16) = 0x300000000;
  if (*(a3 + 16))
  {
    sub_1000DB1E0(v8 + 8, (a3 + 8));
  }

  *(v8 + 96) = 0;
  v11 = *(a3 + 96);
  *(v8 + 96) = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(v8 + 72, a3 + 72);
      (*((*(v8 + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(a3 + 72);
    }

    else
    {
      v12 = *(a3 + 72);
      *(v8 + 88) = *(a3 + 88);
      *(v8 + 72) = v12;
    }

    *(a3 + 96) = 0;
  }

  v13 = *(a3 + 104);
  v14 = *(a3 + 120);
  v15 = *(a3 + 136);
  *(v8 + 152) = *(a3 + 152);
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *&v21 = a2;
  *(&v21 + 1) = v8;
  sub_100078AB0((v5 + 45), &v21, &v21 + 1, v24);
  if ((v25 & 1) == 0)
  {
    llvm::report_fatal_error("Dialect Type already registered.", 1);
  }

  v21 = *(v8 + 144);
  v22[0] = v8;
  result = sub_100138F80((v5 + 49), &v21, v22, v24);
  if ((v25 & 1) == 0)
  {
    v17 = *(v8 + 144);
    v18 = *(v8 + 152);
    v23 = 1283;
    *&v21 = "Dialect Type with name ";
    v22[0] = v17;
    v22[1] = v18;
    v19 = " is already registered.";
    v20 = 259;
    sub_100038624(&v21, &v19, v24);
    llvm::report_fatal_error(v24, 1);
  }

  return result;
}

uint64_t mlir::Dialect::addAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  v6 = v5 + 8;
  v7 = v5[8];
  v5[18] += 160;
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 160;
  if (v7)
  {
    v10 = v9 > v5[9];
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v8 = sub_10003A984(v6, 160, 160, 3);
  }

  else
  {
    *v6 = v9;
  }

  *v8 = *a3;
  *(v8 + 8) = v8 + 24;
  *(v8 + 16) = 0x300000000;
  if (*(a3 + 16))
  {
    sub_1000DB1E0(v8 + 8, (a3 + 8));
  }

  *(v8 + 96) = 0;
  v11 = *(a3 + 96);
  *(v8 + 96) = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(v8 + 72, a3 + 72);
      (*((*(v8 + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(a3 + 72);
    }

    else
    {
      v12 = *(a3 + 72);
      *(v8 + 88) = *(a3 + 88);
      *(v8 + 72) = v12;
    }

    *(a3 + 96) = 0;
  }

  v13 = *(a3 + 104);
  v14 = *(a3 + 120);
  v15 = *(a3 + 136);
  *(v8 + 152) = *(a3 + 152);
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *&v21 = a2;
  *(&v21 + 1) = v8;
  sub_100078AB0((v5 + 67), &v21, &v21 + 1, v24);
  if ((v25 & 1) == 0)
  {
    llvm::report_fatal_error("Dialect Attribute already registered.", 1);
  }

  v21 = *(v8 + 144);
  v22[0] = v8;
  result = sub_100138F80((v5 + 71), &v21, v22, v24);
  if ((v25 & 1) == 0)
  {
    v17 = *(v8 + 144);
    v18 = *(v8 + 152);
    v23 = 1283;
    *&v21 = "Dialect Attribute with name ";
    v22[0] = v17;
    v22[1] = v18;
    v19 = " is already registered.";
    v20 = 259;
    sub_100038624(&v21, &v19, v24);
    llvm::report_fatal_error(v24, 1);
  }

  return result;
}

uint64_t mlir::AbstractAttribute::lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 552);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(*a2 + 536);
  v4 = v2 - 1;
  v5 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 != a1)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a1)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create an Attribute that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  result = *(v3 + 16 * v5 + 8);
  if (!result)
  {
    goto LABEL_9;
  }

  return result;
}

void *mlir::OperationName::Impl::Impl(void *a1, size_t a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 + 32);
  v20 = 261;
  v19[0] = a2;
  v19[1] = a3;
  v11 = mlir::StringAttr::get(v10, v19, a3);
  v21 = v23;
  v22 = 0x300000000;
  if (*(a6 + 8))
  {
    sub_1000DB1E0(&v21, a6);
    v12 = v22 == 0;
  }

  else
  {
    v12 = 1;
  }

  *a1 = off_1002B72A8;
  a1[1] = v11;
  a1[2] = a5;
  a1[3] = a4;
  a1[4] = a1 + 6;
  a1[5] = 0x300000000;
  if (v12)
  {
    a1[12] = 0;
    a1[13] = 0;
  }

  else
  {
    sub_1000DB1E0((a1 + 4), &v21);
    v13 = v22;
    a1[12] = 0;
    a1[13] = 0;
    v14 = v21;
    if (!v13)
    {
      goto LABEL_10;
    }

    v15 = 16 * v13;
    v16 = (v21 + 8);
    do
    {
      v17 = *v16;
      v16 += 2;
      free(v17);
      v15 -= 16;
    }

    while (v15);
  }

  v14 = v21;
LABEL_10:
  if (v14 != v23)
  {
    free(v14);
  }

  return a1;
}

void *mlir::OperationName::OperationName(void *a1, int8x16_t *a2, void *a3, mlir::StringAttr *a4)
{
  v8 = 0;
  *a1 = 0;
  v9 = *a4;
  if (*(*a4 + 41) == 1)
  {
    v10 = llvm::StringMapImpl::hash(a2, a3);
    Key = llvm::StringMapImpl::FindKey((v9 + 208), a2, a3, v10);
    if (Key != -1 && Key != *(v9 + 216))
    {
      *a1 = *(*(*(v9 + 208) + 8 * Key) + 8);
      return a1;
    }

    if ((sub_10027F720(v9, a2, a3, a1, v22) & 1) == 0)
    {
      return a1;
    }

    v8 = v22[0];
  }

  v19[1] = a2;
  v19[2] = a3;
  v20[0] = 0;
  v12 = llvm::StringMapImpl::hash(a2, a3);
  v14 = sub_100139098((v9 + 160), a2, a3, v12, v20);
  v16 = v15;
  v17 = v20[0];
  v20[0] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if (v16)
  {
    v23 = 261;
    v22[0] = a2;
    v22[1] = a3;
    v19[0] = mlir::StringAttr::get(a4, v22, v13);
    mlir::StringAttr::getReferencedDialect(v19);
    memset(v21, 0, sizeof(v21));
    v20[1] = v21;
    v20[2] = 0x300000000;
    operator new();
  }

  *a1 = *(*v14 + 8);
  if (v8)
  {
    llvm::sys::RWMutexImpl::unlock(v8);
  }

  return a1;
}

uint64_t sub_100135150(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v6 = llvm::StringMapImpl::hash(a2, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  v8 = *a1;
  if (Key == -1)
  {
    return v8 + 8 * *(a1 + 8);
  }

  else
  {
    return v8 + 8 * Key;
  }
}

uint64_t mlir::OperationName::getDialectNamespace(mlir::OperationName *this)
{
  v2 = *this;
  if (*(*this + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7[0] = *(v2 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v7);
    if (ReferencedDialect)
    {
      goto LABEL_3;
    }
  }

  else
  {
    ReferencedDialect = *(v2 + 24);
    if (ReferencedDialect)
    {
LABEL_3:
      result = *(ReferencedDialect + 8);
      v5 = *(ReferencedDialect + 16);
      return result;
    }
  }

  v7[0] = *(*this + 8);
  v7[0] = mlir::StringAttr::getValue(v7);
  v7[1] = v6;
  v8 = 46;
  llvm::StringRef::find(v7, &v8, 1uLL, 0);
  return v7[0];
}

unint64_t mlir::OperationName::UnregisteredOpModel::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (!v4)
  {
    return 0;
  }

  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = 0;
  }

  v9 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = mlir::DictionaryAttr::get(&v9, a3, a4);
  v6 = v5 & 0xFFFFFFFFFFFFFF00;
  v7 = v5;
  if (!v5)
  {
    v7 = 0;
    v6 = 0;
  }

  return v6 | v7;
}

void mlir::OperationName::UnregisteredOpModel::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2 + 64;
  v8 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (v8)
  {
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      v9 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  mlir::NamedAttrList::NamedAttrList(v13, v9);
  mlir::NamedAttrList::set(v13, a3, a4);
  Context = mlir::Attribute::getContext((a2 + 24));
  Dictionary = mlir::NamedAttrList::getDictionary(v13, Context);
  if (HIBYTE(*(a2 + 44)))
  {
    v12 = (v7 + 16 * ((*(a2 + 44) >> 23) & 1));
  }

  else
  {
    v12 = 0;
  }

  *v12 = Dictionary;
  if (v13[0] != &v14)
  {
    free(v13[0]);
  }
}

uint64_t mlir::RegisteredOperationName::lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 200);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a2 + 184);
  v4 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v5 = *(v3 + 16 * v4);
  if (v5 != a1)
  {
    v7 = 1;
    while (v5 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v2 - 1);
      v5 = *(v3 + 16 * v4);
      if (v5 == a1)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v4 == v2)
  {
    return 0;
  }

  return *(v3 + 16 * v4 + 8);
}

void mlir::RegisteredOperationName::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*(*a1 + 24) + 32);
  v6 = *v5;
  if (a3)
  {
    v8 = (v6 + 64);
    v9 = *(v6 + 64);
    v10 = 8 * a3;
    *(v6 + 144) += v10;
    v11 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = v11 + v10;
    if (v9)
    {
      v13 = v12 > *(v6 + 72);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v48 = a2;
      v49 = sub_10003A984(v8, v10, v10, 3);
      a2 = v48;
      v11 = v49;
      v14 = a3;
      if (a3)
      {
LABEL_7:
        v15 = (a2 + 8);
        v16 = v11;
        do
        {
          v51 = 261;
          v50[0] = *(v15 - 1);
          v17 = *v15;
          v15 += 2;
          v50[1] = v17;
          *v16++ = mlir::StringAttr::get(v5, v50, v10);
          --v14;
        }

        while (v14);
      }
    }

    else
    {
      *v8 = v12;
      v14 = a3;
      if (a3)
      {
        goto LABEL_7;
      }
    }

    v4[12] = v11;
    v4[13] = a3;
  }

  v50[0] = v4[1];
  Value = mlir::StringAttr::getValue(v50);
  v20 = v19;
  v21 = llvm::StringMapImpl::hash(Value, v19);
  v22 = *sub_10007CECC((v6 + 160), Value, v20, v21);
  v23 = *a1;
  *a1 = 0;
  v24 = *(v22 + 8);
  *(v22 + 8) = v23;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = v4[2];
  v52 = v4;
  v53 = v25;
  sub_1000B81AC(v6 + 184, &v53, &v52, v50);
  v53 = v4;
  v26 = llvm::StringMapImpl::hash(Value, v20);
  sub_1000336D0((v6 + 208), Value, v20, v26, &v53);
  v27 = v50[0];
  v28 = *(v6 + 232);
  v29 = *(v6 + 240);
  if (v29)
  {
    v30 = *(v6 + 232);
    do
    {
      v31 = v29 >> 1;
      v32 = v30 + 8 * (v29 >> 1);
      v33 = *(*v32 + 8);
      v52 = *(*(v27 + 8) + 8);
      v53 = v33;
      if (v52 == v33 || ((v34 = mlir::StringAttr::getValue(&v52), v36 = v35, v37 = mlir::StringAttr::getValue(&v53), v39 = v38, v38 >= v36) ? (v40 = v36) : (v40 = v38), (!v40 || !memcmp(v34, v37, v40)) && v36 == v39))
      {
        v30 = v32 + 8;
        v31 = v29 + ~v31;
      }

      v29 = v31;
    }

    while (v31);
    v28 = *(v6 + 232);
    v41 = *(v27 + 8);
    v42 = *(v6 + 240);
    if (v28 + 8 * v42 != v30)
    {
      v43 = v30 - v28;
      if (v42 >= *(v6 + 244))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6 + 232, (v6 + 248), v42 + 1, 8);
        v28 = *(v6 + 232);
        v42 = *(v6 + 240);
      }

      v44 = (v28 + v43);
      *(v28 + 8 * v42) = *(v28 + 8 * v42 - 8);
      v45 = *(v6 + 240);
      v46 = *(v6 + 232) + 8 * v45 - 8;
      if (v46 != v44)
      {
        memmove(v44 + 1, v44, v46 - v44);
        LODWORD(v45) = *(v6 + 240);
      }

      *(v6 + 240) = v45 + 1;
      *v44 = v41;
      return;
    }
  }

  else
  {
    v47 = *(v6 + 232);
    v41 = *(v50[0] + 8);
    v42 = 0;
  }

  if (v42 >= *(v6 + 244))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v6 + 232, (v6 + 248), v42 + 1, 8);
    v42 = *(v6 + 240);
    v28 = *(v6 + 232);
  }

  *(v28 + 8 * v42) = v41;
  ++*(v6 + 240);
}

uint64_t mlir::AbstractType::lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 376);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(*a2 + 360);
  v4 = v2 - 1;
  v5 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 != a1)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a1)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  result = *(v3 + 16 * v5 + 8);
  if (!result)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t mlir::IntegerType::get(uint64_t *a1, int a2, unsigned int a3)
{
  if (a3)
  {
    goto LABEL_2;
  }

  if (a2 > 31)
  {
    switch(a2)
    {
      case 32:
        v7 = *(*a1 + 504);
        if (v7)
        {
          return v7;
        }

        break;
      case 64:
        v7 = *(*a1 + 512);
        if (v7)
        {
          return v7;
        }

        break;
      case 128:
        v7 = *(*a1 + 520);
        if (!v7)
        {
          break;
        }

        return v7;
      default:
        break;
    }

LABEL_2:
    v9 = a1;
    v3 = *a1;
    v8[0] = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
    v8[1] = &v9;
    v13[0] = sub_10013928C;
    v13[1] = v8;
    v12 = a2 | (a3 << 32);
    v4 = a3 ^ 0xFF51AFD7ED558CCDLL;
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ (8 * a2 + 8));
    v11 = &v12;
    v10[0] = &v12;
    v10[1] = v13;
    return mlir::StorageUniquer::getParametricStorageTypeImpl((v3 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), sub_1001391C0, &v11, sub_1001391E4, v10);
  }

  if (a2 == 1)
  {
    v7 = *(*a1 + 480);
    if (v7)
    {
      return v7;
    }

    goto LABEL_2;
  }

  if (a2 == 8)
  {
    v7 = *(*a1 + 488);
    if (v7)
    {
      return v7;
    }

    goto LABEL_2;
  }

  if (a2 != 16)
  {
    goto LABEL_2;
  }

  v7 = *(*a1 + 496);
  if (!v7)
  {
    goto LABEL_2;
  }

  return v7;
}

uint64_t mlir::NoneType::get(mlir::NoneType *this, mlir::MLIRContext *a2)
{
  v2 = *this;
  result = *(*this + 528);
  if (!result)
  {
    return mlir::StorageUniquer::getSingletonImpl((v2 + 384), &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id);
  }

  return result;
}

void *mlir::detail::AttributeUniquer::initializeAttributeStorage(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 552);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(*a2 + 536);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a3 >> 4) ^ (a3 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 != a3)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a3)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create an Attribute that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  v8 = *(v4 + 16 * v6 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  *result = v8;
  return result;
}

uint64_t mlir::BoolAttr::get(mlir::BoolAttr *this, mlir::MLIRContext *a2)
{
  v2 = 592;
  if (a2)
  {
    v2 = 600;
  }

  return *(*this + v2);
}

void *mlir::detail::DistinctAttributeUniquer::allocateStorage(uint64_t a1, uint64_t a2)
{
  v3 = sub_100136AD8((*a1 + 736));
  v3[10] += 16;
  v4 = ((*v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = v4 + 2;
  if (*v3)
  {
    v6 = v5 > v3[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    result = sub_10003A984(v3, 16, 16, 3);
    *result = 0;
    result[1] = a2;
  }

  else
  {
    *v3 = v5;
    *v4 = 0;
    v4[1] = a2;
    return v4;
  }

  return result;
}

void mlir::detail::StringAttrStorage::initialize(mlir::detail::StringAttrStorage *this, mlir::MLIRContext *a2)
{
  LOBYTE(v22[0]) = 46;
  v4 = llvm::StringRef::find(this + 2, v22, 1uLL, 0);
  if (v4 != -1)
  {
    v6 = *(this + 2);
    v5 = *(this + 3);
    v7 = v4 >= v5 ? *(this + 3) : v4;
    v8 = v5 >= v4 + 1 ? v4 + 1 : *(this + 3);
    *&v19 = *(this + 2);
    *(&v19 + 1) = v7;
    v20 = v6 + v8;
    v21 = v5 - v8;
    if (v7 && v5 > v4 + 1)
    {
      v22[0] = v19;
      v22[1] = v7;
      v10 = *a2;
      v11 = sub_10007EDD8((*a2 + 248), v22);
      v12 = *(v10 + 248) + 24 * *(v10 + 264);
      if (v11)
      {
        v12 = v11;
      }

      v13 = *a2;
      if (v12 == *(v13 + 248) + 24 * *(v13 + 264))
      {
        *(this + 4) = 0;
      }

      else
      {
        v14 = *(v12 + 16);
        *(this + 4) = v14;
        if (v14)
        {
          return;
        }
      }

      std::recursive_mutex::lock((v13 + 640));
      v15 = sub_100135EC8(v13 + 712, &v19);
      v16 = *(v15 + 2);
      if (v16 >= *(v15 + 3))
      {
        v18 = v13;
        v17 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v15 + 2, v16 + 1, 8);
        v15 = v17;
        v13 = v18;
        LODWORD(v16) = *(v15 + 2);
      }

      *&(*v15)[8 * v16] = this;
      ++*(v15 + 2);
      std::recursive_mutex::unlock((v13 + 640));
    }
  }
}