double sub_1000A59F4(uint64_t a1, char *__s, unsigned int *a3, char *a4, unsigned int *a5, char *a6, char **a7)
{
  v14 = strlen(__s);
  v15 = a1;
  v18 = *(a1 + 16);
  v17 = a1 + 16;
  v16 = v18;
  v37 = 3;
  v38 = __s;
  v39 = v14;
  v19 = *(v17 + 8);
  v20 = &v37;
  if (v19 >= *(v17 + 12))
  {
    if (v16 <= &v37 && v16 + 24 * v19 > &v37)
    {
      v33 = &v37 - v16;
      v34 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v19 + 1, 24);
      v15 = v34;
      v16 = *(v34 + 16);
      v20 = &v33[v16];
    }

    else
    {
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v19 + 1, 24);
      v15 = v31;
      v16 = *(v31 + 16);
      v20 = &v37;
    }
  }

  v21 = v16 + 24 * *(v15 + 24);
  v22 = *v20;
  *(v21 + 16) = *(v20 + 2);
  *v21 = v22;
  v23 = *(v15 + 28);
  v24 = (*(v15 + 24) + 1);
  *(v15 + 24) = v24;
  v25 = *a3;
  v37 = 5;
  v38 = v25;
  v26 = *(v15 + 16);
  v27 = &v37;
  if (v24 >= v23)
  {
    if (v26 <= &v37 && v26 + 24 * v24 > &v37)
    {
      v35 = &v37 - v26;
      v36 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v24 + 1, 24);
      v15 = v36;
      v26 = *(v36 + 16);
      v27 = &v35[v26];
    }

    else
    {
      v32 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v24 + 1, 24);
      v15 = v32;
      v26 = *(v32 + 16);
      v27 = &v37;
    }
  }

  v28 = v26 + 24 * *(v15 + 24);
  v29 = *v27;
  *(v28 + 16) = *(v27 + 2);
  *v28 = v29;
  ++*(v15 + 24);
  return sub_1000A5BE8(v15, a4, a5, a6, a7);
}

double sub_1000A5BE8(uint64_t a1, char *__s, unsigned int *a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 5;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  *&result = sub_10009F5F8(v11, a4, a5).n128_u64[0];
  return result;
}

uint64_t sub_1000A5DC4(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 48 * v6);
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
        v7 = (v4 + 48 * (v13 & v5));
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

uint64_t sub_1000A5E6C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a2;
  v15 = a2;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v12 = a3;
    v7 *= 2;
    goto LABEL_16;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
    v12 = a3;
LABEL_16:
    v13 = a1;
    sub_1000A5FC8(a1, v7);
    sub_1000A5DC4(v13, v12, &v15);
    a1 = v13;
    a3 = v12;
    v14 = *(v13 + 2);
    v5 = v15;
    *(a1 + 2) = v14 + 1;
    if (*v5 == -4096)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v5 = *a3;
  v8 = (v5 + 24);
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x400000000;
  if (v5 + 8 != a4)
  {
    v9 = *(a4 + 8);
    if (v9)
    {
      if (v9 < 5)
      {
        v10 = *(a4 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5 + 8, (v5 + 24), *(a4 + 8), 4);
        v10 = *(a4 + 8);
        if (!v10)
        {
LABEL_12:
          *(v5 + 16) = v9;
          goto LABEL_13;
        }

        v8 = *(v5 + 8);
      }

      memcpy(v8, *a4, 4 * v10);
      goto LABEL_12;
    }
  }

LABEL_13:
  *(v5 + 40) = *(a4 + 32);
  return v5;
}

void sub_1000A5FC8(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((48 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = 48 * v11 - 48;
    if (v12 >= 0x30)
    {
      v14 = v12 / 0x30 + 1;
      v13 = &buffer[6 * (v14 & 0xFFFFFFFFFFFFFFELL)];
      v15 = buffer;
      v16 = v14 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v15 = -4096;
        v15[6] = -4096;
        v15 += 12;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0xFFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v13 = buffer;
    }

    v17 = &buffer[6 * v11];
    do
    {
      *v13 = -4096;
      v13 += 6;
    }

    while (v13 != v17);
    return;
  }

  v10 = 6 * v3;
  sub_1000A610C(a1, v4, &v4[v10]);

  llvm::deallocate_buffer(v4, (v10 * 8), 8uLL);
}

void sub_1000A610C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 48 * v6 - 48;
    if (v8 < 0x30)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[6 * v6];
      do
      {
        *v9 = -4096;
        v9 += 6;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x30 + 1;
    v9 = &v7[6 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[6] = -4096;
      v11 += 12;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & ((v14 >> 4) ^ (v14 >> 9));
          v18 = *a1 + 48 * v17;
          v19 = *v18;
          if (v14 != *v18)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -4096)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -8192;
              }

              if (v22)
              {
                v20 = v18;
              }

              v23 = v17 + v21++;
              v17 = v23 & v16;
              v18 = *a1 + 48 * v17;
              v19 = *v18;
              if (v14 == *v18)
              {
                goto LABEL_25;
              }
            }

            if (v20)
            {
              v18 = v20;
            }
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_25:
        *v18 = v14;
        *(v18 + 8) = v18 + 24;
        *(v18 + 16) = 0x400000000;
        if (*(v4 + 4))
        {
          sub_10008BE34(v18 + 8, v4 + 1);
        }

        *(v18 + 40) = *(v4 + 40);
        ++*(a1 + 8);
        v24 = v4[1];
        if (v24 != v4 + 3)
        {
          free(v24);
        }
      }

      v4 += 6;
    }

    while (v4 != a3);
  }
}

uint64_t sub_1000A62D8(uint64_t a1, mlir::MLIRContext *a2, mlir::UnknownLoc **a3, char a4, _OWORD *a5, uint64_t a6)
{
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 88) = a1 + 536;
  *(a1 + 96) = a1 + 424;
  *(a1 + 104) = a1 + 336;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = &_mh_execute_header;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = &_mh_execute_header;
  *(a1 + 224) = a2;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = a3;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 288;
  *(a1 + 280) = 0x600000000;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0x1000000000;
  *(a1 + 360) = a1 + 376;
  *(a1 + 368) = &_mh_execute_header;
  *(a1 + 424) = a1 + 440;
  *(a1 + 432) = 0x200000000;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0x2000000000;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 536) = a1 + 552;
  *(a1 + 544) = 0x300000000;
  *(a1 + 600) = 0u;
  *(a1 + 616) = a1 + 632;
  *(a1 + 624) = 0x600000000;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 708) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 760) = a1 + 760;
  *(a1 + 768) = a1 + 760;
  *(a1 + 824) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 832) = a1 + 832;
  *(a1 + 840) = a1 + 832;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0u;
  v10 = mlir::UnknownLoc::get(*a3, a2);
  mlir::ValueRange::ValueRange(v17, 0, 0);
  v14 = mlir::NoneType::get(*a3, v11);
  mlir::TypeRange::TypeRange(v16, &v14, 1uLL);
  mlir::BlockRange::BlockRange(v15, 0, 0);
  mlir::OperationState::OperationState(a1 + 872, v10, "builtin.unrealized_conversion_cast", 34, v17[0], v17[1], v16[0], v16[1], 0, 0, v15[0], v15[1], 0, 0);
  v12 = a5[1];
  *(a1 + 1176) = *a5;
  *(a1 + 1192) = v12;
  *(a1 + 1208) = a6;
  return a1;
}

uint64_t sub_1000A6508(uint64_t a1)
{
  mlir::OperationState::~OperationState((a1 + 872));
  mlir::Block::~Block((a1 + 800));
  mlir::Block::~Block((a1 + 728));
  llvm::deallocate_buffer(*(a1 + 704), (16 * *(a1 + 720)), 8uLL);
  v2 = *(a1 + 680);
  if (v2)
  {
    v3 = *(a1 + 688);
    v4 = *(a1 + 680);
    if (v3 != v2)
    {
      v5 = v3 - 16;
      do
      {
        v7 = *(v5 - 2);
        if (v5 != v7)
        {
          free(v7);
        }

        v8 = *(v5 - 5);
        if (v8)
        {
          *(v5 - 4) = v8;
          operator delete(v8);
        }

        v6 = v5 - 40;
        v5 -= 56;
      }

      while (v6 != v2);
      v4 = *(a1 + 680);
    }

    *(a1 + 688) = v2;
    operator delete(v4);
  }

  v9 = *(a1 + 616);
  if (v9 != (a1 + 632))
  {
    free(v9);
  }

  v10 = *(a1 + 536);
  if (v10 != (a1 + 552))
  {
    free(v10);
  }

  v11 = *(a1 + 528);
  v12 = *(a1 + 512);
  if (!v11)
  {
    llvm::deallocate_buffer(v12, 0, 8uLL);
    if (!*(a1 + 500))
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v13 = v12 + 24;
  v14 = 48 * v11;
  do
  {
    if ((*(v13 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = *(v13 - 2);
      if (v13 != v15)
      {
        free(v15);
      }
    }

    v13 += 48;
    v14 -= 48;
  }

  while (v14);
  llvm::deallocate_buffer(*(a1 + 512), (48 * *(a1 + 528)), 8uLL);
  if (*(a1 + 500))
  {
LABEL_24:
    v16 = *(a1 + 496);
    if (v16)
    {
      v17 = 0;
      v18 = 8 * v16;
      do
      {
        v19 = *(*(a1 + 488) + v17);
        if (v19 != -8 && v19 != 0)
        {
          v21 = *v19;
          if (*(v19 + 31) < 0)
          {
            operator delete(*(v19 + 1));
          }

          llvm::deallocate_buffer(v19, (v21 + 33), 8uLL);
        }

        v17 += 8;
      }

      while (v18 != v17);
    }
  }

LABEL_34:
  free(*(a1 + 488));
  v22 = *(a1 + 424);
  if (v22 != (a1 + 440))
  {
    free(v22);
  }

  v23 = *(a1 + 360);
  if (v23 != (a1 + 376))
  {
    free(v23);
  }

  if (*(a1 + 348))
  {
    v24 = *(a1 + 344);
    if (v24)
    {
      v25 = 0;
      v26 = 8 * v24;
      do
      {
        v27 = *(*(a1 + 336) + v25);
        if (v27 != -8 && v27 != 0)
        {
          llvm::deallocate_buffer(v27, (*v27 + 17), 8uLL);
        }

        v25 += 8;
      }

      while (v26 != v25);
    }
  }

  free(*(a1 + 336));
  v29 = *(a1 + 272);
  v30 = *(a1 + 280);
  if (v30)
  {
    v31 = 8 * v30;
    v32 = v29 - 8;
    do
    {
      v33 = *&v32[v31];
      *&v32[v31] = 0;
      if (v33)
      {
        v34 = *(v33 + 56);
        *(v33 + 56) = 0;
        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        operator delete();
      }

      v31 -= 8;
    }

    while (v31);
    v29 = *(a1 + 272);
  }

  if (v29 != (a1 + 288))
  {
    free(v29);
  }

  v35 = *(a1 + 168);
  if (v35 != (a1 + 184))
  {
    free(v35);
  }

  v36 = *(a1 + 112);
  if (v36 != (a1 + 128))
  {
    free(v36);
  }

  llvm::deallocate_buffer(*(a1 + 48), (16 * *(a1 + 64)), 8uLL);
  if (*(a1 + 40))
  {
    v37 = *(a1 + 32);
    v38 = *(*(a1 + 24) + 8);
    v39 = *v37;
    *(v39 + 8) = v38;
    *v38 = v39;
    *(a1 + 40) = 0;
    if (v37 != (a1 + 24))
    {
      do
      {
        v40 = v37[1];
        v41 = v37[8];
        if (v41 != v37 + 10)
        {
          free(v41);
        }

        v42 = v37[6];
        v37[6] = 0;
        if (v42)
        {
          operator delete();
        }

        operator delete(v37);
        v37 = v40;
      }

      while (v40 != (a1 + 24));
    }
  }

  return a1;
}

uint64_t sub_1000A68A8(uint64_t *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x492492492492492)
  {
    sub_10002BC08();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v4 = 0x492492492492492;
  }

  else
  {
    v4 = v2;
  }

  v17 = a1;
  if (v4)
  {
    if (v4 <= 0x492492492492492)
    {
      operator new();
    }

    sub_10002BC08();
  }

  v5 = 56 * v1;
  __p = 0;
  v14 = v5;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  *(v5 + 48) = 0;
  *(v5 + 24) = v5 + 40;
  *(v5 + 36) = 4;
  v15 = 56 * v1 + 56;
  v16 = 0;
  sub_1000A6A1C(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  while (1)
  {
    v8 = v15;
    if (v15 == v7)
    {
      break;
    }

    v9 = (v15 - 56);
    v15 -= 56;
    v10 = *(v8 - 32);
    if (v10 != (v8 - 16))
    {
      free(v10);
    }

    v11 = *v9;
    if (*v9)
    {
      *(v8 - 48) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_1000A6A1C(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = 0;
    do
    {
      v8 = v5 + v7;
      v9 = (v6 + v7);
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = *(v5 + v7);
      v9[2] = *(v5 + v7 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      v9[3] = v6 + v7 + 40;
      *(v6 + v7 + 32) = 0x400000000;
      if (*(v5 + v7 + 32))
      {
        sub_10008BE34(v6 + v7 + 24, (v8 + 24));
      }

      v7 += 56;
    }

    while (v8 + 56 != v4);
    do
    {
      v10 = *(v5 + 24);
      if ((v5 + 40) != v10)
      {
        free(v10);
      }

      v11 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v11;
        operator delete(v11);
      }

      v5 += 56;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_1000A6B4C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_10002BC08();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    if (!(v7 >> 57))
    {
      operator new();
    }

    sub_10002BC08();
  }

  v8 = v2 << 7;
  __p = 0;
  v18 = v8;
  v20 = 0;
  *v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 40) = v8 + 56;
  *(v8 + 48) = 0x600000000;
  if (*(a2 + 48))
  {
    sub_100056AF0(v8 + 40, (a2 + 40));
  }

  *(v8 + 104) = *(a2 + 104);
  *(v8 + 120) = *(a2 + 120);
  v19 = v8 + 128;
  sub_1000A6CE0(a1, &__p);
  v11 = a1[1];
  v12 = v18;
  for (i = v19; v19 != v12; i = v19)
  {
    v19 = i - 128;
    v14 = *(i - 88);
    if (v14 != (i - 72))
    {
      free(v14);
    }

    v15 = *(i - 104);
    *(i - 104) = 0;
    if (v15)
    {
      operator delete();
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

uint64_t *sub_1000A6CE0(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = 0;
    do
    {
      v9 = v4 + v7;
      v10 = v6 + v7;
      v11 = *(v4 + v7);
      *(v10 + 16) = *(v4 + v7 + 16);
      *v10 = v11;
      v12 = *(v4 + v7 + 24);
      *(v4 + v7 + 24) = 0;
      *(v10 + 24) = v12;
      *(v10 + 32) = *(v4 + v7 + 32);
      *(v6 + v7 + 40) = v6 + v7 + 56;
      *(v10 + 48) = 0x600000000;
      if (*(v4 + v7 + 48))
      {
        sub_100056AF0(v6 + v7 + 40, (v9 + 40));
      }

      v8 = *(v9 + 104);
      *(v10 + 120) = *(v9 + 120);
      *(v10 + 104) = v8;
      v7 += 128;
    }

    while ((v9 + 128) != v5);
    v13 = (v4 + 56);
    do
    {
      v15 = *(v13 - 2);
      if (v13 != v15)
      {
        free(v15);
      }

      result = *(v13 - 4);
      *(v13 - 4) = 0;
      if (result)
      {
        operator delete();
      }

      v14 = (v13 + 9);
      v13 += 16;
    }

    while (v14 != v5);
  }

  a2[1] = v6;
  v16 = *v3;
  *v3 = v6;
  v3[1] = v16;
  a2[1] = v16;
  v17 = v3[1];
  v3[1] = a2[2];
  a2[2] = v17;
  v18 = v3[2];
  v3[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

uint64_t sub_1000A70EC(uint64_t a1, char *__s, void **a3)
{
  v6 = strlen(__s);
  v7 = a1 + 16;
  v8 = *(a1 + 16);
  LODWORD(v15[0]) = 3;
  v15[1] = __s;
  v15[2] = v6;
  v9 = *(a1 + 24);
  v10 = v15;
  if (v9 >= *(a1 + 28))
  {
    if (v8 <= v15 && v8 + 24 * v9 > v15)
    {
      v14 = v15 - v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = &v14[v8];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = v15;
    }
  }

  v11 = v8 + 24 * *(a1 + 24);
  v12 = *v10;
  *(v11 + 16) = v10[2];
  *v11 = v12;
  ++*(a1 + 24);
  v16 = 260;
  v15[0] = a3;
  mlir::Diagnostic::operator<<(a1, v15);
  return a1;
}

uint64_t sub_1000A71F4(void *a1, uint64_t a2)
{
  v14 = 0uLL;
  v4 = *a1;
  v3 = a1[1];
  if (*(*a1 + 248) <= 4uLL)
  {
    v15 = 0;
    if (sub_10009A774(v3, &v15))
    {
      v5 = sub_10009F9F4(v3[3], *(v4 + 536), *(v4 + 544), v15, &v14, "string", 6);
      v6 = 0;
      v7 = 0;
      result = 0;
      if ((v5 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

  v15 = 0;
  if ((sub_10009A774(v3, &v15) & 1) == 0)
  {
    return 0;
  }

  v9 = v15;
  if ((sub_10009F9F4(v3[3], *(v4 + 536), *(v4 + 544), (v15 >> 1), &v14, "string", 6) & 1) == 0)
  {
    return 0;
  }

  v6 = v9 & 1;
  v7 = 1;
LABEL_8:
  v10 = v14;
  v11 = v6 | (v7 << 8);
  v12 = *(v4 + 368);
  if (v12 >= *(v4 + 372))
  {
    sub_1000A7364(v4 + 360, a2, v14, *(&v14 + 1), v11);
  }

  else
  {
    v13 = *(v4 + 360) + 48 * v12;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = a2;
    *(v13 + 24) = v10;
    *(v13 + 40) = v11;
    ++*(v4 + 368);
  }

  return 1;
}

__n128 sub_1000A7364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v14[0] = 0;
  v14[8] = 0;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v5 = *(a1 + 8);
  v6 = *a1;
  v7 = v14;
  if (v5 >= *(a1 + 12))
  {
    if (v6 <= v14 && v6 + 48 * v5 > v14)
    {
      v12 = &v14[-v6];
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 48);
      a1 = v13;
      v6 = *v13;
      v7 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 48);
      a1 = v11;
      v6 = *v11;
      v7 = v14;
    }
  }

  v8 = v6 + 48 * *(a1 + 8);
  result = *v7;
  v10 = *(v7 + 2);
  *(v8 + 16) = *(v7 + 1);
  *(v8 + 32) = v10;
  *v8 = result;
  ++*(a1 + 8);
  return result;
}

uint64_t sub_1000A7444@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = (37 * *a2) & (v4 - 1);
  v8 = (*result + 4 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -1)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -2;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 4 * (v15 & v6));
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
      if (*v8 == -1)
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
    sub_1000A7654(result, v4);
    sub_1000A75B4(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 4 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_1000A75B4(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 4 * v6);
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
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 4 * (v13 & v5));
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

void sub_1000A7654(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((4 * v8), 4uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = buffer;
      memset(buffer, 255, 4 * v10);
      buffer = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v4;
      do
      {
        v16 = *v13;
        if (*v13 <= 0xFFFFFFFD)
        {
          v17 = *(a1 + 16) - 1;
          v18 = v17 & (37 * v16);
          v15 = &buffer[4 * v18];
          v19 = *v15;
          if (v16 != *v15)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -1)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -2;
              }

              if (v22)
              {
                v20 = v15;
              }

              v23 = v18 + v21++;
              v18 = v23 & v17;
              v15 = &buffer[4 * (v23 & v17)];
              v19 = *v15;
              if (v16 == *v15)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v15 = v20;
            }
          }

LABEL_16:
          *v15 = v16;
          *(a1 + 8) = ++v12;
        }

        v13 = (v13 + 4);
      }

      while (v13 != (v4 + 4 * v3));
    }

    llvm::deallocate_buffer(v4, (4 * v3), 4uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v14 = *(a1 + 16);
    if (v14)
    {

      memset(buffer, 255, 4 * v14);
    }
  }
}

uint64_t sub_1000A77E8(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    (a2)(a3, a1);
  }

  result = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = result + 24 * v8;
    do
    {
      for (i = *(v9 + 8); i != v9; i = *(i + 8))
      {
        v12 = i - 8;
        if (!i)
        {
          v12 = 0;
        }

        result = *(v12 + 40);
        v13 = v12 + 32;
        if (result != v12 + 32)
        {
          do
          {
            v14 = *(result + 8);
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
            sub_1000A77E8(ValuePtr, a2, a3, a4);
            result = v14;
          }

          while (v14 != v13);
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  if (a4 == 1)
  {

    return (a2)(a3, a1);
  }

  return result;
}

uint64_t sub_1000A7908(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v8 = a2;
  v4 = (*v2)++;
  v7 = v4;
  return sub_1000A7950(v3 + 704, &v8, &v7, v6);
}

uint64_t sub_1000A7950@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = *result + 16 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    sub_10003DA78(result, v5);
    sub_10003D9D4(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t sub_1000A7AD4(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (!v8)
  {
    return 1;
  }

  v9 = Iterable;
  v10 = Iterable + 24 * v8;
  if (a4 == 1)
  {
    while (1)
    {
      v22 = *(v9 + 8);
      if (v22 != v9)
      {
        break;
      }

LABEL_24:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v23 = *(v22 + 8);
      v24 = *(v22 + 32);
      if (v24 != v22 + 24)
      {
        break;
      }

LABEL_29:
      result = (a2)(a3, v22 - 8);
      if (!result)
      {
        return result;
      }

      v22 = v23;
      if (v23 == v9)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v24);
      result = sub_1000A7AD4(ValuePtr, a2, a3, 1);
      if (!result)
      {
        break;
      }

      v24 = *(v24 + 8);
      if (v24 == v22 + 24)
      {
        goto LABEL_29;
      }
    }
  }

  else if (a4)
  {
    while (1)
    {
      v17 = *(v9 + 8);
      if (v17 != v9)
      {
        break;
      }

LABEL_16:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v18 = *(v17 + 8);
      v19 = v17 + 24;
      v20 = *(v17 + 32);
      if (v20 != v17 + 24)
      {
        break;
      }

LABEL_19:
      v17 = v18;
      if (v18 == v9)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v21 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v20);
      result = sub_1000A7AD4(v21, a2, a3, a4);
      if (!result)
      {
        break;
      }

      v20 = *(v20 + 8);
      if (v20 == v19)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    while (1)
    {
      v11 = *(v9 + 8);
      if (v11 != v9)
      {
        break;
      }

LABEL_5:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v13 = *(v11 + 8);
      result = (a2)(a3, v11 - 8);
      if (result != 2)
      {
        if (!result)
        {
          return result;
        }

        v14 = v11 + 24;
        v15 = *(v11 + 32);
        if (v15 != v14)
        {
          break;
        }
      }

LABEL_7:
      v11 = v13;
      if (v13 == v9)
      {
        goto LABEL_5;
      }
    }

    while (1)
    {
      v16 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v15);
      result = sub_1000A7AD4(v16, a2, a3, 0);
      if (!result)
      {
        break;
      }

      v15 = *(v15 + 8);
      if (v15 == v14)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_1000A7CA0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return 1;
  }

  v4 = *a1;
  while ((mlir::BytecodeReader::Impl::sortUseListOrder(v4, *v2) & 1) != 0)
  {
    if (++v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000A7D08(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = *a1;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v4);
    if ((mlir::BytecodeReader::Impl::sortUseListOrder(v5, NextResultAtOffset) & 1) == 0)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 1;
    }
  }

  return 0;
}

mlir::MLIRContext *mlirContextDestroy(mlir::MLIRContext *result)
{
  if (result)
  {
    mlir::MLIRContext::~MLIRContext(result);

    operator delete();
  }

  return result;
}

uint64_t mlirDialectRegistryDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 48);
    v3 = *(v1 + 56);
    if (v3)
    {
      v4 = v2 - 8;
      v5 = 16 * v3;
      do
      {
        v6 = *&v4[v5];
        *&v4[v5] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v5 -= 16;
      }

      while (v5);
      v2 = *(v1 + 48);
    }

    if (v2 != (v1 + 64))
    {
      free(v2);
    }

    llvm::deallocate_buffer(*(v1 + 24), (16 * *(v1 + 40)), 8uLL);
    sub_1000A8424(v1, *(v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1000A7F34(llvm::raw_ostream *this)
{
  *this = off_1002B5C60;
  v2 = this + 48;
  v3 = *(this + 9);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = this;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = this;
  }

  llvm::raw_ostream::~raw_ostream(v4);
}

uint64_t *mlirModuleCreateParse(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = a1;
  v7 = 1;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v14;
  v13 = 0x600000000;
  v14[6] = &v15;
  v14[7] = 0x600000000;
  memset(v16, 0, sizeof(v16));
  v17[0] = v17;
  v17[1] = v17;
  memset(&v17[2], 0, 24);
  if (mlir::parseSourceString(a2, a3, v16, &v6, "", 0, &v5))
  {
    sub_1000A8B3C(v16, v6, v5, &v4);
  }

  else
  {
    v4 = 0;
  }

  mlir::Block::~Block(v16);
  sub_10005318C(&v6);
  return v4;
}

void mlirModuleDestroy(mlir::Operation *this)
{
  if (this)
  {
    mlir::Operation::erase(this);
  }
}

void mlirOperationWriteBytecode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (a2)
  {
    v3 = v5;
    v5[0] = off_1002B5CD8;
    v5[1] = a2;
    v6 = v5;
  }

  else
  {
    v3 = 0;
  }

  v8 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v7 = off_1002B5C60;
  if (v3)
  {
    if (v3 == v5)
    {
      v15 = v14;
      (*(*v3 + 24))(v3, v14);
      v16 = a3;
      v17 = 0;
      if (v6 == v5)
      {
        (*(*v6 + 32))(v6);
      }

      else if (v6)
      {
        (*(*v6 + 40))();
      }

LABEL_9:
      mlir::BytecodeWriterConfig::BytecodeWriterConfig();
    }

    v6 = 0;
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  v16 = a3;
  v17 = 0;
  goto LABEL_9;
}

void sub_1000A8330(mlir::Region *a1, mlir::Region *a2)
{
  mlir::Region::dropAllReferences(a1);
  v4 = *(a1 + 1);
  if (v4 != a1)
  {
    v5 = *(v4 + 1);
    v6 = (v4 - 8);
    if (v4)
    {
      v7 = v4 - 8;
    }

    else
    {
      v7 = 0;
    }

    llvm::ilist_traits<mlir::Block>::removeNodeFromList(a1, v7);
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    *v9 = v8;
    *(v8 + 8) = v9;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    mlir::Block::~Block(v6);
    operator delete();
  }

  if (*a2 != a2 && a2 != a1)
  {
    v10 = *(a2 + 1);
    llvm::ilist_traits<mlir::Block>::transferNodesFromList(a1, a2, v10, a2);
    if (v10 != a2)
    {
      v11 = *a2;
      v12 = *v10;
      *(v12 + 8) = a2;
      *a2 = v12;
      v13 = *a1;
      v11[1] = a1;
      *v10 = v13;
      *(v13 + 8) = v10;
      *a1 = v11;
    }
  }
}

void sub_1000A8424(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000A8424(a1, *a2);
    sub_1000A8424(a1, a2[1]);
    v4 = a2[11];
    if (v4 == a2 + 8)
    {
      (*(*v4 + 32))(v4);
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_6:
        v5 = a2;

LABEL_8:
        operator delete(v5);
        return;
      }
    }

    else
    {
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      if ((*(a2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    operator delete(a2[4]);
    v5 = a2;

    goto LABEL_8;
  }
}

void sub_1000A850C(llvm::raw_ostream *this)
{
  *this = off_1002B5C60;
  v2 = this + 48;
  v3 = *(this + 9);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  llvm::raw_ostream::~raw_ostream(this);

  operator delete();
}

uint64_t sub_1000A85D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v5 = a1 + 72;
  v4 = *(a1 + 72);
  v9 = *(v5 + 8);
  if (v4)
  {
    result = (*(*v4 + 48))(v4, v10, &v9);
    *(a1 + 88) += a3;
  }

  else
  {
    v8 = sub_100033DA0();
    return sub_1000A8648(v8);
  }

  return result;
}

uint64_t sub_1000A8650()
{
  {
    sub_100279998();
  }

  return llvm::getTypeName<mlir::InferTypeOpInterface>(void)::Name;
}

const char *sub_1000A8698()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::InferTypeOpInterface]";
  v6 = 88;
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

uint64_t sub_1000A8718(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 24 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 24 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 24);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 24 * v8), *a2 + 24 * v8, 24 * v11);
    goto LABEL_16;
  }

  return result;
}

void sub_1000A88A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  if (*(a1 + 47) && (Value = mlir::StringAttr::getValue(&v9), mlir::Operation::getInherentAttr(a1, Value, v6), (v7 & 1) != 0))
  {
    mlir::Operation::setInherentAttr(a1, v9, a3);
  }

  else
  {
    mlir::NamedAttrList::NamedAttrList(v10, *(a1 + 56));
    if (mlir::NamedAttrList::set(v10, v9, a3) != a3)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      *(a1 + 56) = mlir::NamedAttrList::getDictionary(v10, Context);
    }

    if (v10[0] != &v11)
    {
      free(v10[0]);
    }
  }
}

uint64_t sub_1000A8998(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  if (*(a1 + 47) && (Value = mlir::StringAttr::getValue(&v10), InherentAttr = mlir::Operation::getInherentAttr(a1, Value, v4), (v6 & 1) != 0))
  {
    v7 = InherentAttr;
    mlir::Operation::setInherentAttr(a1, v10, 0);
  }

  else
  {
    mlir::NamedAttrList::NamedAttrList(v11, *(a1 + 56));
    v7 = mlir::NamedAttrList::erase(v11, v10);
    if (v7)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      *(a1 + 56) = mlir::NamedAttrList::getDictionary(v11, Context);
    }

    if (v11[0] != &v12)
    {
      free(v11[0]);
    }
  }

  return v7;
}

uint64_t sub_1000A8B00(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002B5CD8;
  a2[1] = v2;
  return result;
}

uint64_t *sub_1000A8B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v6 = *(a1 + 40);
  if (v6 == a1 + 32 || *(v6 + 8) != a1 + 32 || (v7 = a3, v8 = a2, ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v6), a2 = v8, a3 = v7, *(ValuePtr[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id))
  {
    v12[0] = a2;
    memset(&v12[1], 0, 24);
    sub_1000A8CAC(v12, a3);
  }

  v10 = ValuePtr;
  result = mlir::Operation::remove(ValuePtr);
  *a4 = v10;
  return result;
}

void sub_1000A8CAC(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  Context = mlir::Attribute::getContext(&v7);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, Context);
  if (v6)
  {
    mlir::OperationState::OperationState(v10, a2, v5);
    v9[0] = 0;
    v9[16] = 0;
    mlir::ModuleOp::build(a1, v10);
  }

  sub_1002799EC(v10, v9, v8);
}

uint64_t sub_1000A8D90(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    result = (a2)(a3, a1);
    if (!result)
    {
      return result;
    }

    if (result == 2)
    {
      return 1;
    }
  }

  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = Iterable;
    v10 = Iterable + 24 * v8;
    do
    {
      for (i = *(v9 + 8); i != v9; i = *(i + 8))
      {
        v12 = i - 8;
        if (!i)
        {
          v12 = 0;
        }

        v13 = *(v12 + 40);
        v14 = v12 + 32;
        while (v13 != v14)
        {
          v15 = *(v13 + 8);
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v13);
          v17 = sub_1000A8D90(ValuePtr, a2, a3, a4);
          v13 = v15;
          if (!v17)
          {
            return 0;
          }
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  if (a4 != 1)
  {
    return 1;
  }

  return (a2)(a3, a1);
}

uint64_t mlir::call_interface_impl::parseFunctionResultList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 288))(a1))
  {
    if ((*(*a1 + 304))(a1))
    {
      return 1;
    }

    else
    {
      v11[0] = a2;
      v11[1] = a3;
      v11[2] = a1;
      v10 = (*(*a1 + 392))(a1, 0, sub_1000AA278, v11, 0, 0);
      result = 0;
      if (v10)
      {
        return (*(*a1 + 296))(a1);
      }
    }
  }

  else
  {
    v11[0] = 0;
    if ((*(*a1 + 536))(a1, v11))
    {
      v7 = v11[0];
      v8 = *(a2 + 8);
      if (v8 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v8 + 1, 8);
        LODWORD(v8) = *(a2 + 8);
      }

      *(*a2 + 8 * v8) = v7;
      ++*(a2 + 8);
      v9 = *(a3 + 8);
      if (v9 >= *(a3 + 12))
      {
        sub_1000AA41C(a3);
      }

      else
      {
        *(*a3 + 8 * v9) = 0;
        *(a3 + 8) = v9 + 1;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::call_interface_impl::parseFunctionSignature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 304))(a1) & 1) == 0)
  {
    v13[0] = a2;
    v13[1] = a3;
    v13[2] = a1;
    if (((*(*a1 + 392))(a1, 0, sub_1000AA278, v13, 0, 0) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*a1 + 64))(a1))
  {
    return mlir::call_interface_impl::parseFunctionResultList(a1, a4, a5);
  }

  return a6 ^ 1u;
}

llvm::raw_ostream *mlir::call_interface_impl::printFunctionSignature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10)
{
  v13 = a5;
  v75[0] = a2;
  v75[1] = a3;
  v71 = a4;
  v74[0] = a6;
  v74[1] = a7;
  if (a9)
  {
    v17 = *a9 == a9;
    if (*a9 != a9 && a5 == 0 && a4 == 0 && a8 == 0 && a10 != 0)
    {
      return sub_1000A9BFC(a1, v75, v74);
    }

    v69 = a10;
  }

  else
  {
    v69 = a10;
    v17 = 1;
  }

  v22 = (*(*a1 + 16))(a1);
  v23 = *(v22 + 4);
  v70 = a8;
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 40);
    v24 = a3;
    if (!a3)
    {
      goto LABEL_40;
    }
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 40;
    v24 = a3;
    if (!a3)
    {
      goto LABEL_40;
    }
  }

  if (!v17)
  {
    if (v71)
    {
      v73 = *mlir::ArrayAttr::getValue(&v71);
      Value = mlir::DictionaryAttr::getValue(&v73);
      v37 = v36;
    }

    else
    {
      v37 = 0;
      Value = 0;
    }

    v38 = a9[1];
    if (v38)
    {
      v39 = v38 - 8;
    }

    else
    {
      v39 = 0;
    }

    (*(*a1 + 152))(a1, **(v39 + 48), Value, v37, 0);
    if (v24 == 1)
    {
      goto LABEL_40;
    }

    v42 = 1;
    while (1)
    {
      v48 = (*(*a1 + 16))(a1);
      v49 = v48[4];
      if (v48[3] - v49 > 1uLL)
      {
        *v49 = 8236;
        v48[4] += 2;
        if (!v71)
        {
          goto LABEL_53;
        }
      }

      else
      {
        llvm::raw_ostream::write(v48, ", ", 2uLL);
        if (!v71)
        {
LABEL_53:
          v45 = 0;
          v43 = 0;
          goto LABEL_47;
        }
      }

      v73 = *(mlir::ArrayAttr::getValue(&v71) + 8 * v42);
      v43 = mlir::DictionaryAttr::getValue(&v73);
      v45 = v44;
LABEL_47:
      v46 = a9[1];
      if (v46)
      {
        v47 = v46 - 8;
      }

      else
      {
        v47 = 0;
      }

      (*(*a1 + 152))(a1, *(*(v47 + 48) + 8 * v42++), v43, v45, 0);
      if (v24 == v42)
      {
        goto LABEL_40;
      }
    }
  }

  v25 = mlir::TypeRange::dereference_iterator(a2, 0);
  (*(*a1 + 32))(a1, v25);
  if (v71)
  {
    v73 = *mlir::ArrayAttr::getValue(&v71);
    v26 = mlir::DictionaryAttr::getValue(&v73);
    (*(*a1 + 192))(a1, v26, v27, 0, 0);
  }

  if (v24 != 1)
  {
    for (i = 1; i != v24; ++i)
    {
      v29 = (*(*a1 + 16))(a1);
      v30 = v29[4];
      if (v29[3] - v30 >= 2uLL)
      {
        *v30 = 8236;
        v29[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v29, ", ", 2uLL);
      }

      v31 = mlir::TypeRange::dereference_iterator(a2, i);
      (*(*a1 + 32))(a1, v31);
      if (v71)
      {
        v73 = *(mlir::ArrayAttr::getValue(&v71) + 8 * i);
        v32 = mlir::DictionaryAttr::getValue(&v73);
        (*(*a1 + 192))(a1, v32, v33, 0, 0);
      }
    }
  }

LABEL_40:
  if (v13)
  {
    if (a3)
    {
      v40 = (*(*a1 + 16))(a1);
      v41 = v40[4];
      if (v40[3] - v41 > 1uLL)
      {
        *v41 = 8236;
        v40[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v40, ", ", 2uLL);
      }
    }

    v50 = (*(*a1 + 16))(a1);
    v51 = v50[4];
    if ((v50[3] - v51) > 2)
    {
      *(v51 + 2) = 46;
      *v51 = 11822;
      v50[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v50, "...", 3uLL);
    }
  }

  result = (*(*a1 + 16))(a1);
  v52 = *(result + 4);
  if (v52 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 41);
    v53 = v69;
    if (a7)
    {
      goto LABEL_60;
    }
  }

  else
  {
    *(result + 4) = v52 + 1;
    *v52 = 41;
    v53 = v69;
    if (a7)
    {
LABEL_60:
      v54 = (*(*a1 + 16))(a1);
      v55 = v54[4];
      if (v54[3] - v55 > 3uLL)
      {
        *v55 = 540945696;
        v54[4] += 4;
      }

      else
      {
        llvm::raw_ostream::write(v54, " -> ", 4uLL);
      }

      v72 = v70;
      v57 = (*(*a1 + 16))(a1);
      if (a7 != 1 || *(*mlir::TypeRange::dereference_iterator(a6, 0) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id || v70 && (v73 = *mlir::ArrayAttr::getValue(&v72), mlir::DictionaryAttr::size(&v73)))
      {
        v58 = *(v57 + 4);
        if (v58 >= *(v57 + 3))
        {
          llvm::raw_ostream::write(v57, 40);
        }

        else
        {
          *(v57 + 4) = v58 + 1;
          *v58 = 40;
        }

        v59 = 1;
      }

      else
      {
        v59 = 0;
      }

      v60 = mlir::TypeRange::dereference_iterator(a6, 0);
      result = (*(*a1 + 32))(a1, v60);
      if (v72)
      {
        v73 = *mlir::ArrayAttr::getValue(&v72);
        v61 = mlir::DictionaryAttr::getValue(&v73);
        result = (*(*a1 + 192))(a1, v61, v62, 0, 0);
      }

      if (a7 != 1)
      {
        v64 = 1;
        do
        {
          v65 = *(v57 + 4);
          if (*(v57 + 3) - v65 > 1uLL)
          {
            *v65 = 8236;
            *(v57 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v57, ", ", 2uLL);
          }

          v66 = mlir::TypeRange::dereference_iterator(a6, v64);
          result = (*(*a1 + 32))(a1, v66);
          if (v72)
          {
            v73 = *(mlir::ArrayAttr::getValue(&v72) + 8 * v64);
            v67 = mlir::DictionaryAttr::getValue(&v73);
            result = (*(*a1 + 192))(a1, v67, v68, 0, 0);
          }

          ++v64;
        }

        while (a7 != v64);
      }

      if (v59)
      {
        v63 = *(v57 + 4);
        if (v63 >= *(v57 + 3))
        {
          return llvm::raw_ostream::write(v57, 41);
        }

        else
        {
          *(v57 + 4) = v63 + 1;
          *v63 = 41;
        }
      }

      return result;
    }
  }

  if (v53)
  {
    result = (*(*a1 + 16))(a1);
    v56 = *(result + 4);
    if ((*(result + 3) - v56) > 5)
    {
      *(v56 + 4) = 10536;
      *v56 = 540945696;
      *(result + 4) += 6;
    }

    else
    {
      return llvm::raw_ostream::write(result, " -> ()", 6uLL);
    }
  }

  return result;
}

llvm::raw_ostream *sub_1000A9BFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = v6;
  v8 = *(v6 + 4);
  if (v8 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 40);
    v9 = a2[1];
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(v6 + 4) = v8 + 1;
    *v8 = 40;
    v9 = a2[1];
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v10 = *a2;
  v11 = mlir::TypeRange::dereference_iterator(v10, 0);
  (*(*a1 + 32))(a1, v11);
  if (v9 != 1)
  {
    for (i = 1; i != v9; ++i)
    {
      v16 = (*(*a1 + 16))(a1);
      v17 = v16[4];
      if (v16[3] - v17 <= 1uLL)
      {
        llvm::raw_ostream::write(v16, ", ", 2uLL);
      }

      else
      {
        *v17 = 8236;
        v16[4] += 2;
      }

      v15 = mlir::TypeRange::dereference_iterator(v10, i);
      (*(*a1 + 32))(a1, v15);
    }
  }

LABEL_6:
  v12 = *(v7 + 4);
  if (v12 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 41);
  }

  else
  {
    *(v7 + 4) = v12 + 1;
    *v12 = 41;
  }

  return sub_1000AA484(a1, a3);
}

uint64_t mlir::call_interface_impl::addArgAndResultAttrs(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (a4)
  {
    v14 = a3;
    v15 = 8 * a4;
    v16 = 8 * a4;
    v17 = a3;
    while (1)
    {
      v29 = *v17;
      if (v29)
      {
        result = mlir::DictionaryAttr::size(&v29);
        if (result)
        {
          break;
        }
      }

      ++v17;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v18) = 0;
    v29 = v31;
    v30 = 0x600000000;
    do
    {
      DictionaryAttr = *v14;
      if (!*v14)
      {
        DictionaryAttr = mlir::Builder::getDictionaryAttr(v12, 0, 0);
        LODWORD(v18) = v30;
      }

      if (v18 >= HIDWORD(v30))
      {
        v20 = DictionaryAttr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v18 + 1, 8);
        DictionaryAttr = v20;
        LODWORD(v18) = v30;
      }

      *(v29 + v18) = DictionaryAttr;
      v18 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      ++v14;
      v15 -= 8;
    }

    while (v15);
    ArrayAttr = mlir::Builder::getArrayAttr(v12, v29, v18);
    if (v29 != v31)
    {
      free(v29);
    }

    mlir::NamedAttribute::NamedAttribute(&v29, a7, ArrayAttr);
    result = mlir::NamedAttrList::push_back(a2 + 112, v29, v30);
  }

LABEL_15:
  if (a6)
  {
    v22 = 8 * a6;
    v23 = 8 * a6;
    for (i = a5; ; ++i)
    {
      v29 = *i;
      if (v29)
      {
        result = mlir::DictionaryAttr::size(&v29);
        if (result)
        {
          break;
        }
      }

      v23 -= 8;
      if (!v23)
      {
        return result;
      }
    }

    LODWORD(v25) = 0;
    v29 = v31;
    v30 = 0x600000000;
    do
    {
      v26 = *a5;
      if (!*a5)
      {
        v26 = mlir::Builder::getDictionaryAttr(v12, 0, 0);
        LODWORD(v25) = v30;
      }

      if (v25 >= HIDWORD(v30))
      {
        v27 = v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v25 + 1, 8);
        v26 = v27;
        LODWORD(v25) = v30;
      }

      *(v29 + v25) = v26;
      v25 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      ++a5;
      v22 -= 8;
    }

    while (v22);
    v28 = mlir::Builder::getArrayAttr(v12, v29, v25);
    if (v29 != v31)
    {
      free(v29);
    }

    mlir::NamedAttribute::NamedAttribute(&v29, a8, v28);
    return mlir::NamedAttrList::push_back(a2 + 112, v29, v30);
  }

  return result;
}

void mlir::call_interface_impl::addArgAndResultAttrs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = v21;
  v20 = 0x600000000;
  if (!a4)
  {
    mlir::call_interface_impl::addArgAndResultAttrs(a1, a2, v21, 0, a5, a6, a7, a8);
    v18 = v19;
    if (v19 == v21)
    {
      return;
    }

    goto LABEL_7;
  }

  v8 = a4;
  LODWORD(a4) = 0;
  v9 = (a3 + 40);
  v10 = v8 << 6;
  do
  {
    v11 = *v9;
    if (a4 >= HIDWORD(v20))
    {
      v12 = a1;
      v13 = a2;
      v14 = a8;
      v15 = a7;
      v16 = a6;
      v17 = a5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, a4 + 1, 8);
      a1 = v12;
      a2 = v13;
      a5 = v17;
      a6 = v16;
      a7 = v15;
      a8 = v14;
      LODWORD(a4) = v20;
    }

    *(v19 + a4) = v11;
    a4 = (v20 + 1);
    LODWORD(v20) = v20 + 1;
    v9 += 8;
    v10 -= 64;
  }

  while (v10);
  mlir::call_interface_impl::addArgAndResultAttrs(a1, a2, v19, a4, a5, a6, a7, a8);
  v18 = v19;
  if (v19 != v21)
  {
LABEL_7:
    free(v18);
  }
}

uint64_t mlir::call_interface_impl::resolveCallable(mlir::SymbolTable *a1, uint64_t (**a2)(void, mlir::SymbolTable *), uint64_t a3)
{
  v5 = (*a2)(a2, a1);
  v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = v5 & 0xFFFFFFFFFFFFFFF8 & (v5 << 61 >> 63);
  if (v8)
  {
    return mlir::Value::getDefiningOp(&v8);
  }

  if (a3)
  {

    return mlir::SymbolTableCollection::lookupNearestSymbolFrom(a3, a1, v6);
  }

  else
  {

    return mlir::SymbolTable::lookupNearestSymbolFrom(a1, v6);
  }
}

uint64_t sub_1000AA278(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v2 + 2);
  if (v3 >= *(v2 + 3))
  {
    sub_1000AA41C(v2);
    v4 = *(a1 + 8);
    v5 = *(v4 + 8);
    if (v5 < *(v4 + 12))
    {
      goto LABEL_3;
    }

LABEL_12:
    sub_1000AA41C(v4);
    goto LABEL_4;
  }

  *(*v2 + 8 * v3) = 0;
  *(v2 + 2) = v3 + 1;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    goto LABEL_12;
  }

LABEL_3:
  *(*v4 + 8 * v5) = 0;
  *(v4 + 8) = v5 + 1;
LABEL_4:
  v10[0] = v11;
  v10[1] = 0x400000000;
  v11[8] = 4;
  if ((*(**(a1 + 16) + 536))(*(a1 + 16), **a1 + 8 * *(*a1 + 8) - 8) & 1) != 0 && ((*(**(a1 + 16) + 488))(*(a1 + 16), v10))
  {
    Context = mlir::AsmParser::getContext(*(a1 + 16));
    *(**(a1 + 8) + 8 * *(*(a1 + 8) + 8) - 8) = mlir::NamedAttrList::getDictionary(v10, Context);
    v7 = 1;
    v8 = v10[0];
    if (v10[0] == v11)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = v10[0];
  if (v10[0] != v11)
  {
LABEL_9:
    free(v8);
  }

  return v7;
}

uint64_t sub_1000AA41C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    v4 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v1 + 1, 8);
    a1 = v4;
    LODWORD(v1) = *(v4 + 8);
  }

  *(*a1 + 8 * v1) = 0;
  v2 = *(a1 + 8) + 1;
  *(a1 + 8) = v2;
  return *a1 + 8 * v2 - 8;
}

llvm::raw_ostream *sub_1000AA484(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 16))(a1);
  v5 = result;
  v6 = *(result + 4);
  if (*(result + 3) - v6 > 3uLL)
  {
    *v6 = 540945696;
    *(result + 4) += 4;
    if (a2[1] != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, " -> ", 4uLL);
    v5 = result;
    if (a2[1] != 1)
    {
LABEL_13:
      v14 = *(v5 + 4);
      if (v14 >= *(v5 + 3))
      {
        result = llvm::raw_ostream::write(v5, 40);
        v15 = a2[1];
        if (!v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        *(v5 + 4) = v14 + 1;
        *v14 = 40;
        v15 = a2[1];
        if (!v15)
        {
LABEL_18:
          v18 = *(v5 + 4);
          if (v18 >= *(v5 + 3))
          {

            return llvm::raw_ostream::write(v5, 41);
          }

          else
          {
            *(v5 + 4) = v18 + 1;
            *v18 = 41;
          }

          return result;
        }
      }

      v16 = *a2;
      v17 = mlir::TypeRange::dereference_iterator(v16, 0);
      result = (*(*a1 + 32))(a1, v17);
      if (v15 != 1)
      {
        for (i = 1; i != v15; ++i)
        {
          v21 = (*(*a1 + 16))(a1);
          v22 = v21[4];
          if (v21[3] - v22 > 1uLL)
          {
            *v22 = 8236;
            v21[4] += 2;
          }

          else
          {
            llvm::raw_ostream::write(v21, ", ", 2uLL);
          }

          v20 = mlir::TypeRange::dereference_iterator(v16, i);
          result = (*(*a1 + 32))(a1, v20);
        }
      }

      goto LABEL_18;
    }
  }

  result = mlir::TypeRange::dereference_iterator(*a2, 0);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    goto LABEL_13;
  }

  v7 = a2[1];
  if (v7)
  {
    v8 = *a2;
    v9 = mlir::TypeRange::dereference_iterator(*a2, 0);
    result = (*(*a1 + 32))(a1, v9);
    if (v7 != 1)
    {
      for (j = 1; j != v7; ++j)
      {
        v12 = (*(*a1 + 16))(a1);
        v13 = v12[4];
        if (v12[3] - v13 > 1uLL)
        {
          *v13 = 8236;
          v12[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        v11 = mlir::TypeRange::dereference_iterator(v8, j);
        result = (*(*a1 + 32))(a1, v11);
      }
    }
  }

  return result;
}

uint64_t mlir::AffineExpr::operator+(uint64_t *a1, uint64_t a2)
{
  v44 = a2;
  v45 = a2;
  result = *a1;
  v46 = result;
  v4 = *(result + 8);
  if (v4 == 5)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6 == 5)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v11 = *(v5 + 16);
    v12 = *(v7 + 16);
    v13 = __OFADD__(v11, v12);
    v14 = (v11 + v12);
    if (v13)
    {
      goto LABEL_20;
    }

    v47 = *result;
    v48 = v14;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v47);
    result = sub_1000AB69C(AffineUniquer, sub_1000ABF1C, &v47, &v48);
LABEL_17:
    if (result)
    {
      return result;
    }

    result = *a1;
LABEL_20:
    v16 = mlir::MLIRContext::getAffineUniquer(*result);
    LODWORD(v48) = 0;
    return sub_1000AB79C(v16, 0, 0, &v48, a1, &v44);
  }

  v9 = result;
  if (v4 == 5 || mlir::AffineExpr::isSymbolicOrConstant(&v46) && (mlir::AffineExpr::isSymbolicOrConstant(&v45) & 1) == 0)
  {
    v10 = &v45;
LABEL_14:
    result = mlir::AffineExpr::operator+(v10, v9);
    goto LABEL_17;
  }

  if (!v7)
  {
    result = v9;
    v25 = v4 > 4 || v9 == 0;
    v23 = a2;
    if (v25)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_54;
    }

    v27 = *(v9 + 8);
LABEL_45:
    if (v27 == 1)
    {
      v28 = *(result + 24);
      v22 = 1;
      v21 = 1;
      if (v28)
      {
        v20 = result;
        v9 = result;
        if (*(v28 + 8) == 5)
        {
          v22 = *(v28 + 16);
          v9 = *(result + 16);
          v21 = 1;
          v20 = result;
          if (v6 >= 5)
          {
            v24 = 0;
          }

          else
          {
            v24 = v23;
          }

          if (!v24)
          {
            goto LABEL_64;
          }

          goto LABEL_59;
        }

        goto LABEL_55;
      }

      goto LABEL_97;
    }

    v21 = 1;
    v20 = result;
LABEL_54:
    v22 = 1;
    v9 = result;
    goto LABEL_55;
  }

  v18 = *(v7 + 16);
  result = v9;
  if (v18)
  {
    if (v4 > 4 || v9 == 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = 1;
      v23 = a2;
      if (v6 >= 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = a2;
      }

      if (!v24)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    v27 = *(v9 + 8);
    v23 = a2;
    if (!v27)
    {
      v26 = *(v9 + 24);
      v22 = 1;
      v21 = 1;
      if (v26)
      {
        v20 = v9;
        if (*(v26 + 8) == 5)
        {
          v48 = *(v9 + 16);
          result = mlir::AffineExpr::operator+(&v48, v18 + *(v26 + 16));
          goto LABEL_17;
        }

LABEL_55:
        if (v6 >= 5)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        if (!v24)
        {
          goto LABEL_64;
        }

LABEL_59:
        if (*(v24 + 8) == 1)
        {
          v29 = *(v24 + 24);
          if (v29 && *(v29 + 8) == 5)
          {
            v31 = *(v29 + 16);
            if (v9 != *(v24 + 16))
            {
              goto LABEL_65;
            }

            goto LABEL_93;
          }
        }

LABEL_64:
        v31 = 1;
        if (v9 != v23)
        {
LABEL_65:
          if (v21)
          {
            if (!*(v20 + 8))
            {
              v9 = *(v20 + 24);
              if (v9)
              {
                if (*(v9 + 8) == 5)
                {
                  v47 = *(v20 + 16);
                  v48 = mlir::AffineExpr::operator+(&v47, v23);
                  v10 = &v48;
                  goto LABEL_14;
                }
              }
            }
          }

          if (!v24)
          {
            goto LABEL_20;
          }

          v32 = *(v24 + 16);
          v33 = *(v24 + 24);
          v48 = v33;
          if (*(v32 + 8) >= 5)
          {
            v32 = 0;
          }

          if (v33 && *(v33 + 8) == 5 && *(v33 + 16) == -1)
          {
            if (!v32)
            {
              goto LABEL_112;
            }

            v35 = *(v32 + 8);
            if (v35 == 1)
            {
              v42 = *(v32 + 16);
              if (v42)
              {
                v43 = *(v42 + 8) == 3;
              }

              else
              {
                v43 = 0;
              }

              if (!v43)
              {
                goto LABEL_112;
              }

              v36 = *(v32 + 24);
              if (*(v42 + 24) == v36 && result == *(v42 + 16))
              {
LABEL_91:
                result = mlir::AffineExpr::operator%(&v46, v36);
                goto LABEL_17;
              }
            }

            if (v6 != 1)
            {
LABEL_112:
              result = 0;
              goto LABEL_17;
            }
          }

          else
          {
            if (v32)
            {
              v34 = v6 == 1;
            }

            else
            {
              v34 = 0;
            }

            if (!v34)
            {
              goto LABEL_112;
            }

            v35 = *(v32 + 8);
          }

          if (v35 == 3)
          {
            v36 = *(v32 + 24);
            if (v36 && *(v36 + 8) == 5)
            {
              v38 = *(v32 + 16);
              v39 = *(v36 + 16) >= 1 && result == v38;
              if (v39 && v36 == mlir::AffineExpr::operator-(&v48))
              {
                goto LABEL_91;
              }
            }
          }

          goto LABEL_112;
        }

LABEL_93:
        v47 = *result;
        v48 = (v31 + v22);
        v40 = mlir::MLIRContext::getAffineUniquer(v47);
        v41 = sub_1000AB69C(v40, sub_1000ABF1C, &v47, &v48);
        v48 = v9;
        result = mlir::AffineExpr::operator*(&v48, v41);
        goto LABEL_17;
      }

LABEL_97:
      v20 = result;
      v9 = result;
      if (v6 >= 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }

      if (!v24)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    goto LABEL_45;
  }

  return result;
}

uint64_t mlir::AffineExpr::operator*(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  v20 = a2;
  v3 = *a1;
  v21 = v3;
  v4 = *(v3 + 8);
  if (v4 == 5)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 8) == 5)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if ((mlir::AffineExpr::isSymbolicOrConstant(&v21) & 1) == 0 && !mlir::AffineExpr::isSymbolicOrConstant(&v20))
    {
      goto LABEL_31;
    }

    isSymbolicOrConstant = mlir::AffineExpr::isSymbolicOrConstant(&v20);
    if (v4 != 5 && (isSymbolicOrConstant & 1) != 0)
    {
      if (v6)
      {
        v10 = *(v6 + 16);
        if (!v10)
        {
          return a2;
        }

        if (v10 == 1)
        {
          return v3;
        }

        if (v4 > 4 || !v3 || *(v3 + 8) != 1)
        {
          goto LABEL_31;
        }

        v11 = *(v3 + 24);
        if (v11 && *(v11 + 8) == 5)
        {
          v23 = *(v3 + 16);
          v3 = mlir::AffineExpr::operator*(&v23, v10 * *(v11 + 16));
          if (!v3)
          {
            goto LABEL_30;
          }

          return v3;
        }
      }

      else
      {
        v17 = v4 > 4 || v3 == 0;
        if (v17 || *(v3 + 8) != 1)
        {
          goto LABEL_31;
        }
      }

      v18 = *(v3 + 24);
      if (!v18 || *(v18 + 8) != 5)
      {
        goto LABEL_31;
      }

      v22 = *(v3 + 16);
      v23 = mlir::AffineExpr::operator*(&v22, a2);
      v3 = mlir::AffineExpr::operator*(&v23, v18);
      if (v3)
      {
        return v3;
      }

      goto LABEL_30;
    }

    v3 = mlir::AffineExpr::operator*(&v20, v3);
    if (!v3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v12 = *(v5 + 16);
    v13 = *(v6 + 16);
    if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
    {
LABEL_31:
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(*v3);
      LODWORD(v23) = 1;
      return sub_1000AB79C(AffineUniquer, 0, 0, &v23, a1, &v19);
    }

    v22 = *v3;
    v23 = v12 * v13;
    v14 = mlir::MLIRContext::getAffineUniquer(v22);
    v3 = sub_1000AB69C(v14, sub_1000ABF1C, &v22, &v23);
    if (!v3)
    {
LABEL_30:
      v3 = *a1;
      goto LABEL_31;
    }
  }

  return v3;
}

{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = sub_1000AB69C(AffineUniquer, sub_1000ABF1C, &v6, &v7);
  return mlir::AffineExpr::operator*(a1, v4);
}

uint64_t mlir::AffineExpr::floorDiv(mlir::MLIRContext ***a1, uint64_t a2)
{
  v22 = a2;
  if (*(*a1 + 2) == 5)
  {
    v3 = *a1;
  }

  else
  {
    v3 = 0;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_27;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_27;
  }

  if (!v3)
  {
    v7 = *a1;
    v24 = *a2;
    v25 = 1;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v24);
    if (sub_1000AB69C(AffineUniquer, sub_1000ABF1C, &v24, &v25) == a2)
    {
      return v7;
    }

    v10 = *(v7 + 2);
    if (v10 <= 4)
    {
      if (!v10)
      {
        v17 = v7[2];
        v25 = v17;
        LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v25);
        v25 = v7[3];
        v19 = mlir::AffineExpr::getLargestKnownDivisor(&v25);
        v20 = *(a2 + 16);
        if (LargestKnownDivisor % v20 && v19 % v20)
        {
          goto LABEL_27;
        }

        v24 = v17;
        v25 = mlir::AffineExpr::floorDiv(&v24, v20);
        v23 = v7[3];
        v21 = mlir::AffineExpr::floorDiv(&v23, *(a2 + 16));
        result = mlir::AffineExpr::operator+(&v25, v21);
        if (!result)
        {
          goto LABEL_27;
        }

        return result;
      }

      if (v10 == 1)
      {
        v11 = v7[3];
        if (v11)
        {
          if (*(v11 + 2) == 5)
          {
            v12 = *(v11 + 2);
            v13 = *(a2 + 16);
            if (!(v12 % v13))
            {
              v25 = v7[2];
              result = mlir::AffineExpr::operator*(&v25, v12 / v13);
              if (result)
              {
                return result;
              }
            }
          }
        }
      }
    }

LABEL_27:
    v16 = mlir::MLIRContext::getAffineUniquer(**a1);
    LODWORD(v25) = 3;
    return sub_1000AB79C(v16, 0, 0, &v25, a1, &v22);
  }

  v5 = v3[2];
  if (v4 == -1 && v5 == 0x8000000000000000)
  {
    goto LABEL_27;
  }

  if (v5)
  {
    v6 = ((v5 ^ v4) & 0x8000000000000000) != 0 ? (v5 + ((v4 >> 63) | 1)) / v4 - 1 : v5 / v4;
  }

  else
  {
    v6 = 0;
  }

  v24 = **a1;
  v25 = v6;
  v15 = mlir::MLIRContext::getAffineUniquer(v24);
  result = sub_1000AB69C(v15, sub_1000ABF1C, &v24, &v25);
  if (!result)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t mlir::AffineExpr::ceilDiv(uint64_t *a1, uint64_t a2)
{
  v15 = a2;
  result = *a1;
  v4 = *(result + 8);
  if (v4 == 5)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_31;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_31;
  }

  if (v5)
  {
    v7 = *(v5 + 16);
    if (v6 == -1 && v7 == 0x8000000000000000)
    {
      goto LABEL_31;
    }

    if (v7)
    {
      if ((v7 ^ v6) < 0)
      {
        v9 = v7 / v6;
      }

      else
      {
        if (v6 < 0)
        {
          v8 = v7 + 1;
        }

        else
        {
          v8 = v7 - 1;
        }

        v9 = v8 / v6 + 1;
      }
    }

    else
    {
      v9 = 0;
    }

    v16 = *result;
    v17 = v9;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v16);
    result = sub_1000AB69C(AffineUniquer, sub_1000ABF1C, &v16, &v17);
  }

  else
  {
    if (v6 == 1)
    {
      return result;
    }

    if (v4 != 1 || ((v10 = *(result + 24)) != 0 ? (v11 = *(v10 + 8) == 5) : (v11 = 0), !v11 || (v12 = *(v10 + 16), v12 % v6)))
    {
LABEL_31:
      v14 = mlir::MLIRContext::getAffineUniquer(*result);
      LODWORD(v17) = 4;
      return sub_1000AB79C(v14, 0, 0, &v17, a1, &v15);
    }

    v17 = *(result + 16);
    result = mlir::AffineExpr::operator*(&v17, v12 / v6);
  }

  if (!result)
  {
    result = *a1;
    goto LABEL_31;
  }

  return result;
}

uint64_t mlir::AffineExpr::operator%(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v17 = a2;
  v18 = v3;
  v4 = *(v3 + 8);
  if (v4 == 5)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_27;
  }

  v6 = *(a2 + 16);
  if (v6 < 1)
  {
    goto LABEL_27;
  }

  if (v5)
  {
    v7 = *v3;
    v20 = ((v6 & ((*(v5 + 16) % v6) >> 63)) + *(v5 + 16) % v6);
    goto LABEL_9;
  }

  if (!(mlir::AffineExpr::getLargestKnownDivisor(&v18) % v6))
  {
    v7 = *v3;
    v20 = 0;
LABEL_9:
    v19 = v7;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v7);
    result = sub_1000AB69C(AffineUniquer, sub_1000ABF1C, &v19, &v20);
    if (result)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (v4 > 4)
  {
    goto LABEL_27;
  }

  if (v4 == 2)
  {
    v14 = *(v3 + 24);
    if (!v14)
    {
      goto LABEL_27;
    }

    if (*(v14 + 8) != 5)
    {
      goto LABEL_27;
    }

    v15 = *(v14 + 16);
    if (v15 < 1 || v15 % v6)
    {
      goto LABEL_27;
    }

    v20 = *(v3 + 16);
  }

  else
  {
    if (v4)
    {
      goto LABEL_27;
    }

    v10 = *(v3 + 16);
    v20 = v10;
    LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v20);
    v12 = *(v3 + 24);
    v20 = v12;
    v13 = mlir::AffineExpr::getLargestKnownDivisor(&v20);
    if (LargestKnownDivisor % v6)
    {
      if (!(v13 % v6))
      {
        v20 = v10;
        goto LABEL_25;
      }

LABEL_27:
      v16 = mlir::MLIRContext::getAffineUniquer(*v3);
      LODWORD(v20) = 2;
      return sub_1000AB79C(v16, 0, 0, &v20, a1, &v17);
    }

    v20 = v12;
  }

LABEL_25:
  result = mlir::AffineExpr::operator%(&v20, v6);
  if (!result)
  {
LABEL_26:
    v3 = *a1;
    goto LABEL_27;
  }

  return result;
}

uint64_t mlir::getAffineDimExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v7 = this;
  v6 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  v5 = 6;
  return sub_1000ABB0C(AffineUniquer, sub_1000ABD8C, &v6, &v5, &v7);
}

uint64_t mlir::getAffineSymbolExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v7 = this;
  v6 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  v5 = 7;
  return sub_1000ABB0C(AffineUniquer, sub_1000ABD8C, &v6, &v5, &v7);
}

uint64_t mlir::AffineExpr::isSymbolicOrConstant(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 4)
  {
    return v2 == 5 || v2 == 7;
  }

  v6 = *(v1 + 16);
  result = mlir::AffineExpr::isSymbolicOrConstant(&v6);
  if (result)
  {
    v5 = *(v1 + 24);
    return mlir::AffineExpr::isSymbolicOrConstant(&v5);
  }

  return result;
}

unint64_t mlir::AffineExpr::getLargestKnownDivisor(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 2)
  {
    if ((v2 - 3) < 2)
    {
      v13 = *(v1 + 24);
      if (v13)
      {
        v14 = *(v13 + 8) == 5;
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
        return 1;
      }

      v16 = *(v13 + 16);
      if (!v16)
      {
        return 1;
      }

      v19 = *(v1 + 16);
      LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v15 = LargestKnownDivisor / v16;
      if (LargestKnownDivisor % v16)
      {
        return 1;
      }
    }

    else
    {
      if ((v2 - 6) < 2)
      {
        return 1;
      }

      v15 = *(v1 + 16);
    }

    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    if (v2)
    {
      v3 = v2 == 1;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v19 = *(v1 + 16);
      v12 = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v18 = *(v1 + 24);
      return mlir::AffineExpr::getLargestKnownDivisor(&v18) * v12;
    }

    else
    {
      v19 = *(v1 + 16);
      v4 = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v18 = *(v1 + 24);
      result = mlir::AffineExpr::getLargestKnownDivisor(&v18);
      v6 = result;
      v7 = v4 > result;
      if (v4 < result)
      {
        result = v4;
      }

      if (v7)
      {
        v6 = v4;
      }

      if (result)
      {
        v8 = v6 % result;
        if (v8)
        {
          v9 = v8 >> __clz(__rbit64(v8));
          v10 = result;
          do
          {
            v11 = v10 >> __clz(__rbit64(v10));
            v10 = v11 - v9;
            if (v9 > v11)
            {
              v10 = v9 - v11;
            }

            if (v9 >= v11)
            {
              v9 = v11;
            }
          }

          while (v10);
          return v9 << __clz(__rbit64(v8 | result));
        }
      }

      else
      {
        return v6;
      }
    }
  }

  return result;
}

uint64_t mlir::getAffineConstantExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v5 = a2;
  v6 = this;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  return sub_1000AB69C(AffineUniquer, sub_1000ABF1C, &v5, &v6);
}

uint64_t sub_1000AB69C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((atomic_load_explicit(&qword_1002C0608, memory_order_acquire) & 1) == 0)
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    sub_100279A54();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, qword_1002C0600, 37 * v11, sub_1000ABD98, &v10, sub_1000ABDB0, v9);
}

uint64_t mlir::AffineExpr::operator+(mlir::MLIRContext ***a1, uint64_t a2)
{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = sub_1000AB69C(AffineUniquer, sub_1000ABF1C, &v6, &v7);
  return mlir::AffineExpr::operator+(a1, v4);
}

uint64_t sub_1000AB79C(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5, void *a6)
{
  v6 = a2;
  if ((atomic_load_explicit(&qword_1002C0630, memory_order_acquire) & 1) == 0)
  {
    v18 = a5;
    v19 = a1;
    v15 = a4;
    v16 = a6;
    v17 = a3;
    sub_100279AA8();
    v6 = a2;
    a4 = v15;
    a3 = v17;
    a5 = v18;
    a6 = v16;
    a1 = v19;
  }

  v25[0] = v6;
  v25[1] = a3;
  v22 = *a4;
  v7 = *a6;
  v23 = *a5;
  v24 = v7;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v23 - 0xAE502812AA7333) ^ HIDWORD(v23));
  v9 = HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v11 = (1400339394 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) | (0xEB382D6900000000 * ((((0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (HIDWORD(v23) ^ (v8 >> 47) ^ v8))));
  v12 = 0xBF58476D1CE4E5B9 * (((0xBF58476D1CE4E5B9 * v11) >> 31) ^ (484763065 * v11) | ((37 * v22) << 32));
  v21 = &v22;
  v20[0] = &v22;
  v20[1] = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, qword_1002C0628, (v12 >> 31) ^ v12, sub_1000ABF28, &v21, sub_1000ABF68, v20);
}

uint64_t mlir::AffineExpr::operator-(uint64_t *a1)
{
  v5 = **a1;
  v6 = -1;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v5);
  v3 = sub_1000AB69C(AffineUniquer, sub_1000ABF1C, &v5, &v6);
  return mlir::AffineExpr::operator*(a1, v3);
}

uint64_t mlir::AffineExpr::operator-(uint64_t *a1, mlir::MLIRContext **a2)
{
  v7 = a2;
  v8 = *a2;
  v9 = -1;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v8);
  v4 = sub_1000AB69C(AffineUniquer, sub_1000ABF1C, &v8, &v9);
  v5 = mlir::AffineExpr::operator*(&v7, v4);
  return mlir::AffineExpr::operator+(a1, v5);
}

uint64_t mlir::AffineExpr::floorDiv(mlir::MLIRContext ***this, uint64_t a2)
{
  v6 = **this;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = sub_1000AB69C(AffineUniquer, sub_1000ABF1C, &v6, &v7);
  return mlir::AffineExpr::floorDiv(this, v4);
}

uint64_t mlir::AffineExpr::operator%(mlir::MLIRContext ***a1, uint64_t a2)
{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = sub_1000AB69C(AffineUniquer, sub_1000ABF1C, &v6, &v7);
  return mlir::AffineExpr::operator%(a1, v4);
}

uint64_t sub_1000ABB0C(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  if ((atomic_load_explicit(&qword_1002C05E0, memory_order_acquire) & 1) == 0)
  {
    v12 = a4;
    v13 = a1;
    v9 = a3;
    v10 = a5;
    v11 = a2;
    sub_100279AFC();
    a2 = v11;
    a4 = v12;
    a3 = v9;
    a5 = v10;
    a1 = v13;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a4;
  v6 = *a5;
  v16 = v5 | (v6 << 32);
  v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | ((37 * v5) << 32));
  v15 = &v16;
  v14[0] = &v16;
  v14[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, qword_1002C05D8, (v7 >> 31) ^ v7, sub_1000ABBE0, &v15, sub_1000ABC10, v14);
}

unint64_t sub_1000ABC10(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
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
    v3 = sub_10003A984(a2, 24, 24, 3);
    v11 = v2[1];
    *(v3 + 8) = *v2;
    *(v3 + 16) = v11;
    v7 = *(a1 + 8);
    v8 = *v7;
    if (!*v7)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  v6 = v2[1];
  *(v3 + 8) = *v2;
  *(v3 + 16) = v6;
  v7 = *(a1 + 8);
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 8), v3);
  }

  return v3;
}

uint64_t sub_1000ABCC4()
{
  if ((atomic_load_explicit(&qword_1002C05F8, memory_order_acquire) & 1) == 0)
  {
    sub_100279B50();
  }

  return qword_1002C05E8;
}

const char *sub_1000ABD0C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::AffineDimExprStorage]";
  v6 = 96;
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

unint64_t sub_1000ABDB0(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
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
    v8 = a1;
    v3 = sub_10003A984(a2, 24, 24, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(v3 + 8) = 5;
  *(v3 + 16) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3);
  }

  return v3;
}

uint64_t sub_1000ABE54()
{
  if ((atomic_load_explicit(&qword_1002C0620, memory_order_acquire) & 1) == 0)
  {
    sub_100279BA4();
  }

  return qword_1002C0610;
}

const char *sub_1000ABE9C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::AffineConstantExprStorage]";
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

unint64_t sub_1000ABF68(void *a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 32;
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
    v9 = a1;
    v3 = sub_10003A984(a2, 32, 32, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(v3 + 8) = *v2;
  v6 = *(v2 + 8);
  *(v3 + 16) = v6;
  *(v3 + 24) = *(v2 + 16);
  *v3 = *v6;
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(*(v7 + 8), v3);
  }

  return v3;
}

uint64_t sub_1000AC01C()
{
  if ((atomic_load_explicit(&qword_1002C0648, memory_order_acquire) & 1) == 0)
  {
    sub_100279BF8();
  }

  return qword_1002C0638;
}

const char *sub_1000AC064()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::AffineBinaryOpExprStorage]";
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

uint64_t mlir::AffineMap::getMultiDimIdentityMap(mlir::AffineMap *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v4 = this;
  v12 = v14;
  v13 = 0x400000000;
  if (this < 5)
  {
    if (!this)
    {
      v8 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v14, this, 8);
  }

  v5 = 0;
  do
  {
    AffineDimExpr = mlir::getAffineDimExpr(v5, a2, a3);
    v7 = v13;
    if (v13 >= HIDWORD(v13))
    {
      v9 = AffineDimExpr;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v14, v13 + 1, 8);
      AffineDimExpr = v9;
      v7 = v13;
    }

    *(v12 + v7) = AffineDimExpr;
    v8 = v13 + 1;
    LODWORD(v13) = v13 + 1;
    v5 = (v5 + 1);
  }

  while (v4 != v5);
LABEL_10:
  result = mlir::AffineMap::get(v4, 0, v12, v8, a2);
  if (v12 != v14)
  {
    v11 = result;
    free(v12);
    return v11;
  }

  return result;
}

uint64_t mlir::AffineMap::isIdentity(mlir::AffineMap *this)
{
  v1 = **this;
  if (v1 == *(*this + 8))
  {
    if (!v1)
    {
      return 1;
    }

    v2 = 0;
    v3 = *this + 24;
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v7 = v4;
      if (mlir::AffineExpr::getKind(&v7) == 6)
      {
        mlir::AffineDimExpr::AffineDimExpr(&v7, v4);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      else
      {
        mlir::AffineDimExpr::AffineDimExpr(&v7, 0);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      if (v2 != mlir::AffineDimExpr::getPosition(&v6))
      {
        break;
      }

      if (v1 == ++v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000AC328(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    v6 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 8);
    a1 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  *(*a1 + 8 * v3) = v2;
  v4 = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 8 * v4 - 8;
}

void *mlir::OperationName::print(mlir::OperationName *this, llvm::raw_ostream *a2)
{
  v7 = *(*this + 8);
  Value = mlir::StringAttr::getValue(&v7);
  v5 = v3;
  result = *(a2 + 4);
  if (v3 > *(a2 + 3) - result)
  {
    return llvm::raw_ostream::write(a2, Value, v3);
  }

  if (v3)
  {
    result = memcpy(result, Value, v3);
    *(a2 + 4) += v5;
  }

  return result;
}

uint64_t mlir::AsmParser::parseTypeList(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return (*(*a1 + 392))(a1, 0, sub_1000C2F80, v3, 0, 0);
}

mlir::OpPrintingFlags *mlir::OpPrintingFlags::OpPrintingFlags(mlir::OpPrintingFlags *this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 4) = 100;
  *(this + 20) &= 0xFE00u;
  if (!atomic_load(qword_1002C5070))
  {
    return this;
  }

  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  if (*(qword_1002C5070[0] + 200))
  {
    if (atomic_load_explicit(qword_1002C5070, memory_order_acquire))
    {
      v3 = *(qword_1002C5070[0] + 312);
      if (*(this + 8))
      {
LABEL_8:
        *this = v3;
        goto LABEL_9;
      }
    }

    else
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
      v3 = *(qword_1002C5070[0] + 312);
      if (*(this + 8))
      {
        goto LABEL_8;
      }
    }

    *(this + 8) = 1;
    goto LABEL_8;
  }

LABEL_9:
  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  if (*(qword_1002C5070[0] + 8))
  {
    if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
    }

    *(this + 4) = *(qword_1002C5070[0] + 120);
  }

  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  if (!*(qword_1002C5070[0] + 384))
  {
    goto LABEL_22;
  }

  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
    v4 = *(qword_1002C5070[0] + 496);
    if (*(this + 24))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v4 = *(qword_1002C5070[0] + 496);
  if ((*(this + 24) & 1) == 0)
  {
LABEL_20:
    *(this + 24) = 1;
  }

LABEL_21:
  *(this + 2) = v4;
LABEL_22:
  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  *(this + 20) = *(this + 20) & 0xFFFE | *(qword_1002C5070[0] + 680);
  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  if (*(qword_1002C5070[0] + 864))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(this + 20) = *(this + 20) & 0xFFFD | v5;
  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  if (*(qword_1002C5070[0] + 1048))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(this + 20) = *(this + 20) & 0xFFFB | v6;
  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  if (*(qword_1002C5070[0] + 1232))
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *(this + 20) = *(this + 20) & 0xFFEF | v7;
  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  if (*(qword_1002C5070[0] + 1416))
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *(this + 20) = *(this + 20) & 0xFFDF | v8;
  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  if (*(qword_1002C5070[0] + 1600))
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *(this + 20) = *(this + 20) & 0xFFF7 | v9;
  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  if (*(qword_1002C5070[0] + 1784))
  {
    v10 = 64;
  }

  else
  {
    v10 = 0;
  }

  *(this + 20) = *(this + 20) & 0xFFBF | v10;
  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  if (*(qword_1002C5070[0] + 1968))
  {
    v11 = 128;
  }

  else
  {
    v11 = 0;
  }

  *(this + 20) = *(this + 20) & 0xFF7F | v11;
  if (!atomic_load_explicit(qword_1002C5070, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002C5070, sub_1000C301C, sub_1000C32AC);
  }

  if (*(qword_1002C5070[0] + 2152))
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  *(this + 20) = *(this + 20) & 0xFEFF | v12;
  return this;
}

uint64_t mlir::OpPrintingFlags::elideLargeElementsAttrs(uint64_t this, uint64_t a2)
{
  *this = a2;
  *(this + 8) = 1;
  return this;
}

uint64_t mlir::OpPrintingFlags::printGenericOpForm(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(this + 40) = *(this + 40) & 0xFFFB | v2;
  return this;
}

uint64_t mlir::OpPrintingFlags::useLocalScope(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(this + 40) = *(this + 40) & 0xFFDF | v2;
  return this;
}

uint64_t mlir::OpPrintingFlags::shouldElideElementsAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v9[3] = v3;
  v9[4] = v4;
  v6 = *a1;
  if (v6 >= mlir::ElementsAttr::getNumElements(a2, a3))
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::classof(a2))
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v9[0] = v7;
  if (v7)
  {
    return mlir::DenseElementsAttr::isSplat(v9) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t mlir::FallbackAsmResourceMap::getParserFor(uint64_t a1, const void *a2, size_t a3)
{
  if (a2)
  {
    if (a3 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10002BC08();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v8) = a3;
    if (a3)
    {
      memmove(__dst, a2, a3);
    }

    *(__dst + a3) = 0;
    v5 = sub_1000ACDAC(a1, __dst);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
LABEL_11:
      result = *v5;
      if (*v5)
      {
        return result;
      }

LABEL_14:
      operator new();
    }
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v8 = 0;
    v5 = sub_1000ACDAC(a1, __dst);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  operator delete(__dst[0]);
  result = *v5;
  if (!*v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1000ACDAC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100033C24(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v21 = *(a2 + 16);
  }

  v24 = v21;
  *v23 = *__p;
  if (v21 >= 0)
  {
    v4 = v23;
  }

  else
  {
    v4 = __p[0];
  }

  v25 = 0;
  if (v21 >= 0)
  {
    v5 = SHIBYTE(v21);
  }

  else
  {
    v5 = __p[1];
  }

  __p[0] = v4;
  __p[1] = v5;
  LODWORD(v21) = 0;
  v6 = llvm::StringMapImpl::hash(v4, v5);
  v7 = *sub_1000C498C(a1, v4, v5, v6, &v21);
  if (v8)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100033C24(__p, *a2, *(a2 + 8));
      v22 = 0;
      v9 = *(a1 + 32);
      v10 = *(a1 + 24);
      v11 = __p;
      if (v9 < *(a1 + 36))
      {
        goto LABEL_17;
      }
    }

    else
    {
      *__p = *a2;
      v21 = *(a2 + 16);
      v22 = 0;
      v9 = *(a1 + 32);
      v10 = *(a1 + 24);
      v11 = __p;
      if (v9 < *(a1 + 36))
      {
        goto LABEL_17;
      }
    }

    if (v10 <= __p && v10 + 32 * v9 > __p)
    {
      v19 = __p - v10;
      sub_1000C4AB4(a1 + 24, v9 + 1);
      v10 = *(a1 + 24);
      v11 = &v19[v10];
    }

    else
    {
      sub_1000C4AB4(a1 + 24, v9 + 1);
      v10 = *(a1 + 24);
      v11 = __p;
    }

LABEL_17:
    v14 = v10 + 32 * *(a1 + 32);
    v15 = *v11;
    *(v14 + 16) = v11[2];
    *v14 = v15;
    *v11 = 0;
    v11[1] = 0;
    v16 = v11[3];
    v11[2] = 0;
    v11[3] = 0;
    *(v14 + 24) = v16;
    ++*(a1 + 32);
    v17 = v22;
    v22 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    v12 = *(a1 + 32) - 1;
    *(v7 + 8) = v12;
    v13 = *(a1 + 24);
    if (SHIBYTE(v24) < 0)
    {
      goto LABEL_22;
    }

    return v13 + 32 * v12 + 24;
  }

  v12 = *(v7 + 8);
  v13 = *(a1 + 24);
  if (SHIBYTE(v24) < 0)
  {
LABEL_22:
    operator delete(v23[0]);
  }

  return v13 + 32 * v12 + 24;
}

uint64_t mlir::FallbackAsmResourceMap::getPrinters@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 32))
  {
    v2 = *(this + 24) + 24;
    v3 = *v2;
    v4 = *(*v2 + 31);
    if (v4 >= 0)
    {
      v5 = *v2 + 8;
    }

    else
    {
      v5 = *(*v2 + 8);
    }

    v6 = *(v3 + 16);
    if (v4 >= 0)
    {
      v7 = *(*v2 + 31);
    }

    else
    {
      v7 = *(v3 + 16);
    }

    operator new();
  }

  return this;
}

BOOL mlir::FallbackAsmResourceMap::ResourceCollection::parseResource(mlir::FallbackAsmResourceMap::ResourceCollection *this, mlir::AsmParsedResourceEntry *a2)
{
  v4 = (*(*a2 + 32))(a2);
  switch(v4)
  {
    case 2:
      (*(*a2 + 48))(&__p, a2);
      v10 = LOBYTE(v19[0]);
      v11 = v19[0];
      if (LOBYTE(v19[0]) == 1)
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = v12;
        sub_1000AD930(this + 32, &v14, &__p);
        v11 = v19[0];
      }

      if ((v11 & 1) != 0 && SHIBYTE(v18) < 0)
      {
        operator delete(__p);
      }

      return v10 != 0;
    case 1:
      LOWORD(v14) = (*(*a2 + 40))(a2);
      if ((v14 & 0x100) == 0)
      {
        return 0;
      }

      __p = (*(*a2 + 16))(a2);
      v17 = v9;
      sub_1000AD740(this + 32, &__p, &v14);
      break;
    case 0:
      (*(*a2 + 56))(&__p, a2, sub_1000B8038, &v14);
      if (v21 == 1)
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = v5;
        sub_1000AD4E0(this + 32, &v14, &__p);
        if ((v21 & 1) != 0 && v20 >= 8)
        {
          v6 = (v20 & 2) != 0 ? v19 : v19[0];
          (*(v20 & 0xFFFFFFFFFFFFFFF8))(v6, __p, v17, v18);
          v7 = v20;
          if (v20 >= 8)
          {
            if ((v20 & 4) != 0)
            {
              if ((v20 & 2) != 0)
              {
                v8 = v19;
              }

              else
              {
                v8 = v19[0];
              }

              (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
            }

            if ((v7 & 2) == 0)
            {
              llvm::deallocate_buffer(v19[0], v19[1], v19[2]);
            }
          }
        }

        return 1;
      }

      return 0;
  }

  return 1;
}

uint64_t sub_1000AD4E0(uint64_t a1, const void **a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 < *(a1 + 12))
  {
    v5 = (*a1 + 96 * v4);
    v7 = *a2;
    v6 = a2[1];
    v17 = *a3;
    v8 = *(a3 + 48);
    v18 = *(a3 + 16);
    v21 = v8;
    if (v8 >= 8)
    {
      if ((v8 & 2) != 0 && (v8 & 4) != 0)
      {
        v9 = a3;
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 8))(&v19, a3 + 24);
        (*((v21 & 0xFFFFFFFFFFFFFFF8) + 16))(v9 + 24);
        a3 = v9;
      }

      else
      {
        v19 = *(a3 + 24);
        v20 = *(a3 + 40);
      }

      *(a3 + 48) = 0;
    }

    v22 = *(a3 + 56);
    v23 = 0;
    if (v7)
    {
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10002BC08();
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      *(v5 + 23) = v6;
      if (v6)
      {
        memmove(v5, v7, v6);
      }

      *(v5 + v6) = 0;
      v10 = v23;
      *(v5 + 22) = -1;
      v13 = v5 + 11;
      *(v13 - 64) = 0;
      v11 = v13 - 16;
      if (v10 == -1)
      {
        goto LABEL_20;
      }

      v12 = v13;
    }

    else
    {
      v10 = 0;
      *(v5 + 24) = 0;
      v11 = v5 + 3;
      *(v5 + 22) = -1;
      v12 = v5 + 11;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    v16 = v11;
    (off_1002B6248[v10])(&v16, &v17);
    *v12 = v10;
    if (v23 != -1)
    {
      (off_1002B60F0[v23])(&v16, &v17);
    }

LABEL_20:
    v14 = *(a1 + 8) + 1;
    *(a1 + 8) = v14;
    return *a1 + 96 * v14 - 96;
  }

  return sub_1000C4CD4(a1, a2, a3);
}

uint64_t sub_1000AD740(uint64_t a1, const void **a2, _BYTE *a3)
{
  v4 = *(a1 + 8);
  if (v4 < *(a1 + 12))
  {
    v5 = (*a1 + 96 * v4);
    v7 = *a2;
    v6 = a2[1];
    v15[0] = *a3;
    v16 = 1;
    if (v7)
    {
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10002BC08();
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      *(v5 + 23) = v6;
      if (v6)
      {
        memmove(v5, v7, v6);
      }

      *(v5 + v6) = 0;
      v10 = v16;
      *(v5 + 22) = -1;
      v11 = v5 + 11;
      *(v11 - 64) = 0;
      v8 = v11 - 16;
      if (v10 == -1)
      {
        goto LABEL_14;
      }

      v9 = v11;
    }

    else
    {
      *(v5 + 24) = 0;
      v8 = v5 + 3;
      *(v5 + 22) = -1;
      v9 = (v5 + 11);
      *v5 = 0;
      v5[1] = 0;
      v10 = 1;
      v5[2] = 0;
    }

    v14 = v8;
    (off_1002B6248[v10])(&v14, v15);
    *v9 = v10;
    if (v16 != -1)
    {
      (off_1002B60F0[v16])(&v14, v15);
    }

LABEL_14:
    v12 = *(a1 + 8) + 1;
    *(a1 + 8) = v12;
    return *a1 + 96 * v12 - 96;
  }

  return sub_1000C50F0(a1, a2, a3);
}

uint64_t sub_1000AD930(uint64_t a1, const void **a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 < *(a1 + 12))
  {
    v5 = (*a1 + 96 * v4);
    v7 = *a2;
    v6 = a2[1];
    v15 = *a3;
    v16 = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v17 = 2;
    if (v7)
    {
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10002BC08();
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      *(v5 + 23) = v6;
      if (v6)
      {
        memmove(v5, v7, v6);
      }

      *(v5 + v6) = 0;
      v10 = v17;
      *(v5 + 22) = -1;
      v11 = v5 + 11;
      *(v11 - 64) = 0;
      v8 = v11 - 16;
      if (v10 == -1)
      {
        goto LABEL_14;
      }

      v9 = v11;
    }

    else
    {
      *(v5 + 24) = 0;
      v8 = v5 + 3;
      *(v5 + 22) = -1;
      v9 = (v5 + 11);
      *v5 = 0;
      v5[1] = 0;
      v10 = 2;
      v5[2] = 0;
    }

    v14 = v8;
    (off_1002B6248[v10])(&v14, &v15);
    *v9 = v10;
    if (v17 != -1)
    {
      (off_1002B60F0[v17])(&v14, &v15);
    }

LABEL_14:
    v12 = *(a1 + 8) + 1;
    *(a1 + 8) = v12;
    return *a1 + 96 * v12 - 96;
  }

  return sub_1000C53D8(a1, a2, a3);
}

uint64_t mlir::FallbackAsmResourceMap::ResourceCollection::buildResources(uint64_t this, Operation *a2, mlir::AsmResourceBuilder *a3)
{
  v3 = *(this + 40);
  if (v3)
  {
    v5 = 0;
    v6 = *(this + 32);
    v7 = 96 * v3;
    do
    {
      v11 = (v6 + v5);
      v12 = (v6 + v5 + 24);
      v13 = *(v6 + v5 + 88);
      if (v13 == 1)
      {
        v8 = *(v11 + 23);
        if (v8 >= 0)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = *v11;
        }

        if (v8 >= 0)
        {
          v10 = *(v11 + 23);
        }

        else
        {
          v10 = v11[1];
        }

        this = (*(*a3 + 16))(a3, v9, v10, *v12);
      }

      else if (v13)
      {
        v17 = v6 + v5;
        v18 = *(v6 + v5 + 23);
        if (v18 >= 0)
        {
          v19 = v6 + v5;
        }

        else
        {
          v19 = *(v6 + v5);
        }

        if (v18 >= 0)
        {
          v20 = *(v6 + v5 + 23);
        }

        else
        {
          v20 = *(v6 + v5 + 8);
        }

        v21 = *(v17 + 47);
        if (v21 >= 0)
        {
          v22 = v6 + v5 + 24;
        }

        else
        {
          v22 = *v12;
        }

        if (v21 >= 0)
        {
          v23 = *(v17 + 47);
        }

        else
        {
          v23 = *(v17 + 32);
        }

        this = (*(*a3 + 24))(a3, v19, v20, v22, v23);
      }

      else
      {
        v14 = *(v6 + v5 + 23);
        if (v14 >= 0)
        {
          v15 = v6 + v5;
        }

        else
        {
          v15 = *(v6 + v5);
        }

        if (v14 >= 0)
        {
          v16 = *(v6 + v5 + 23);
        }

        else
        {
          v16 = *(v6 + v5 + 8);
        }

        this = (*(*a3 + 32))(a3, v15, v16, *v12, *(v6 + v5 + 32), *(v6 + v5 + 40));
      }

      v5 += 96;
    }

    while (v7 != v5);
  }

  return this;
}

void mlir::AsmState::AsmState(llvm *a1, uint64_t a2, uint64_t a3)
{
  v13 = *a3;
  v14 = *(a3 + 16);
  v15 = *(a3 + 32);
  v4 = *(a3 + 40);
  v11 = *(a3 + 42);
  v12 = *(a3 + 46);
  if ((v4 & 0x14) != 0)
  {
    v5 = *(a3 + 16);
    v19 = *a3;
    *v20 = v5;
    v21 = *(a3 + 32);
    v22 = v4;
    v23 = *(a3 + 42);
    v24 = *(a3 + 46);
  }

  else
  {
    threadid = llvm::get_threadid(a1);
    Context = mlir::Attribute::getContext((a2 + 24));
    DiagEngine = mlir::MLIRContext::getDiagEngine(Context);
    *&v19 = &threadid;
    v20[1] = (&off_1002C0658 + 2);
    v16 = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v19);
    v7 = v20[1];
    if (v20[1] >= 8)
    {
      if ((v20[1] & 4) != 0)
      {
        if ((v20[1] & 2) != 0)
        {
          v8 = &v19;
        }

        else
        {
          v8 = v19;
        }

        (*((v20[1] & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
      }

      if ((v7 & 2) == 0)
      {
        llvm::deallocate_buffer(v19, *(&v19 + 1), v20[0]);
      }
    }

    v9 = mlir::verify(a2, 1);
    v10 = v4 | 4;
    if (v9)
    {
      v10 = v4;
    }

    v19 = v13;
    *v20 = v14;
    v21 = v15;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&v16);
  }

  operator new();
}

void sub_1000ADE60(uint64_t *a1, mlir::FallbackAsmResourceMap *this)
{
  mlir::FallbackAsmResourceMap::getPrinters(this, &v14);
  v3 = v14;
  v4 = v15;
  if (v14 == v15)
  {
    if (v14)
    {
      goto LABEL_16;
    }

    return;
  }

  v5 = v14;
  do
  {
    v6 = *v5;
    *v5 = 0;
    v13 = v6;
    v7 = *a1;
    v8 = *(*a1 + 64);
    if (v8 < *(*a1 + 68))
    {
      v9 = *(v7 + 56);
      v13 = 0;
      *(v9 + 8 * v8) = v6;
      *(v7 + 64) = v8 + 1;
      v10 = v13;
      v13 = 0;
      if (!v10)
      {
        goto LABEL_3;
      }

LABEL_6:
      (*(*v10 + 8))(v10);
      goto LABEL_3;
    }

    sub_10008E290(v7 + 56, &v13);
    v10 = v13;
    v13 = 0;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_3:
    ++v5;
  }

  while (v5 != v4);
  if (v3)
  {
    while (v4 != v3)
    {
      v12 = *--v4;
      v11 = v12;
      *v4 = 0;
      if (v12)
      {
        (*(*v11 + 8))(v11);
      }
    }

LABEL_16:
    operator delete(v3);
  }
}

void mlir::AsmState::~AsmState(mlir::AsmState *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    sub_1000C84A8(v2);
    operator delete();
  }
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printLocation(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a1 + 56) & 2) == 0)
  {
    v4 = *a1;
    v5 = *(*a1 + 32);
    if (*(*a1 + 24) - v5 > 3uLL)
    {
      *v5 = 677605228;
      v4[4] += 4;
      if (!a3)
      {
LABEL_10:
        mlir::AsmPrinter::Impl::printLocationInternal(a1, a2, 0, 1);
LABEL_11:
        result = *a1;
        v11 = *(*a1 + 32);
        if (v11 >= *(*a1 + 24))
        {

          return llvm::raw_ostream::write(result, 41);
        }

        else
        {
          *(result + 4) = v11 + 1;
          *v11 = 41;
        }

        return result;
      }
    }

    else
    {
      v6 = a2;
      llvm::raw_ostream::write(v4, "loc(", 4uLL);
      a2 = v6;
      if (!a3)
      {
        goto LABEL_10;
      }
    }

    v9 = a2;
    v10 = sub_1000AEDE4((*(a1 + 8) + 144), a2, *a1);
    a2 = v9;
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return mlir::AsmPrinter::Impl::printLocationInternal(a1, a2, 1, 1);
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printLocationInternal(llvm::raw_ostream **a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    result = sub_1000AEDE4(a1[1] + 18, a2, *a1);
    if (result)
    {
      return result;
    }
  }

  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id && a2 != 0)
  {
    v114 = a2;
    FallbackLocation = mlir::OpaqueLoc::getFallbackLocation(&v114);
    v14 = a1;
    return mlir::AsmPrinter::Impl::printLocationInternal(v14, FallbackLocation, a3, 0);
  }

  if (v8 != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
    if (v8 != &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id)
    {
      if (v8 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id && a2 != 0)
      {
        v114 = a2;
        Name = mlir::NameLoc::getName(&v114);
        Value = mlir::StringAttr::getValue(&Name);
        v29 = *a1;
        v30 = *(*a1 + 4);
        if (*(*a1 + 3) == v30)
        {
          v43 = Value;
          v44 = v28;
          llvm::raw_ostream::write(*a1, "", 1uLL);
          llvm::printEscapedString(v43, v44, *a1);
          v31 = *a1;
          v32 = *(*a1 + 4);
          if (*(*a1 + 3) != v32)
          {
LABEL_39:
            *v32 = 34;
            ++*(v31 + 4);
            result = mlir::NameLoc::getChildLoc(&v114);
            if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
            {
              return result;
            }

            goto LABEL_56;
          }
        }

        else
        {
          *v30 = 34;
          ++*(v29 + 4);
          llvm::printEscapedString(Value, v28, *a1);
          v31 = *a1;
          v32 = *(*a1 + 4);
          if (*(*a1 + 3) != v32)
          {
            goto LABEL_39;
          }
        }

        llvm::raw_ostream::write(v31, "", 1uLL);
        result = mlir::NameLoc::getChildLoc(&v114);
        if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
        {
          return result;
        }

LABEL_56:
        v45 = result;
        v46 = *a1;
        v47 = *(*a1 + 4);
        if (v47 >= *(*a1 + 3))
        {
          llvm::raw_ostream::write(v46, 40);
        }

        else
        {
          *(v46 + 4) = v47 + 1;
          *v47 = 40;
        }

        mlir::AsmPrinter::Impl::printLocationInternal(a1, v45, a3, 0);
        result = *a1;
        v48 = *(*a1 + 4);
        if (v48 < *(*a1 + 3))
        {
          *(result + 4) = v48 + 1;
          v49 = 41;
LABEL_139:
          *v48 = v49;
          return result;
        }

        v50 = 41;
        return llvm::raw_ostream::write(result, v50);
      }

      if (v8 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id && a2 != 0)
      {
        v114 = a2;
        Caller = mlir::CallSiteLoc::getCaller(&v114);
        Callee = mlir::CallSiteLoc::getCallee(&v114);
        v40 = Callee;
        if (a3)
        {
          mlir::AsmPrinter::Impl::printLocationInternal(a1, Callee, a3, 0);
          if (*(*v40 + 136) == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
          {
            v41 = *a1;
            if (*(*Caller + 136) == &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id)
            {
              goto LABEL_117;
            }
          }

          else
          {
            v41 = *a1;
          }

          ++*(a1 + 16);
          v93 = *(v41 + 4);
          if (v93 >= *(v41 + 3))
          {
            v41 = llvm::raw_ostream::write(v41, 10);
          }

          else
          {
            *(v41 + 4) = v93 + 1;
            *v93 = 10;
          }

LABEL_117:
          v94 = *(v41 + 4);
          if (*(v41 + 3) - v94 > 3uLL)
          {
            *v94 = 544497952;
            *(v41 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(v41, " at ", 4uLL);
          }

          v14 = a1;
          FallbackLocation = Caller;
          return mlir::AsmPrinter::Impl::printLocationInternal(v14, FallbackLocation, a3, 0);
        }

        v53 = *a1;
        v54 = *(*a1 + 4);
        if ((*(*a1 + 3) - v54) > 8)
        {
          *(v54 + 8) = 40;
          *v54 = *"callsite(";
          *(v53 + 4) += 9;
        }

        else
        {
          llvm::raw_ostream::write(v53, "callsite(", 9uLL);
        }

        mlir::AsmPrinter::Impl::printLocationInternal(a1, v40, a3, 0);
        v90 = *a1;
        v91 = *(*a1 + 4);
        if (*(*a1 + 3) - v91 > 3uLL)
        {
          *v91 = 544497952;
          *(v90 + 4) += 4;
        }

        else
        {
          llvm::raw_ostream::write(v90, " at ", 4uLL);
        }

        mlir::AsmPrinter::Impl::printLocationInternal(a1, Caller, a3, 0);
        result = *a1;
        v92 = *(*a1 + 4);
        if (*(*a1 + 3) == v92)
        {
          return llvm::raw_ostream::write(result, ")", 1uLL);
        }

        *v92 = 41;
        v42 = *(result + 4) + 1;
LABEL_112:
        *(result + 4) = v42;
        return result;
      }

      if (v8 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id && a2 != 0)
      {
        v114 = a2;
        if ((a3 & 1) == 0)
        {
          v51 = *a1;
          v52 = *(*a1 + 4);
          if ((*(*a1 + 3) - v52) > 4)
          {
            *(v52 + 4) = 100;
            *v52 = 1702065510;
            *(v51 + 4) += 5;
          }

          else
          {
            llvm::raw_ostream::write(v51, "fused", 5uLL);
          }
        }

        Metadata = mlir::FusedLoc::getMetadata(&v114);
        if (Metadata)
        {
          v96 = Metadata;
          v97 = *a1;
          v98 = *(*a1 + 4);
          if (v98 >= *(*a1 + 3))
          {
            llvm::raw_ostream::write(v97, 60);
          }

          else
          {
            *(v97 + 4) = v98 + 1;
            *v98 = 60;
          }

          if ((sub_1000AEDE4(a1[1] + 18, v96, *a1) & 1) == 0)
          {
            mlir::AsmPrinter::Impl::printAttributeImpl(a1, v96, 0);
          }

          v99 = *a1;
          v100 = *(*a1 + 4);
          if (v100 >= *(*a1 + 3))
          {
            llvm::raw_ostream::write(v99, 62);
          }

          else
          {
            *(v99 + 4) = v100 + 1;
            *v100 = 62;
          }
        }

        v101 = *a1;
        v102 = *(*a1 + 4);
        if (v102 >= *(*a1 + 3))
        {
          llvm::raw_ostream::write(v101, 91);
        }

        else
        {
          *(v101 + 4) = v102 + 1;
          *v102 = 91;
        }

        Locations = mlir::FusedLoc::getLocations(&v114);
        if (v104)
        {
          v105 = Locations;
          v106 = v104;
          mlir::AsmPrinter::Impl::printLocationInternal(a1, *Locations, a3, 0);
          if (v106 != 1)
          {
            v107 = 8 * v106;
            v108 = v105 + 1;
            v109 = v107 - 8;
            do
            {
              v111 = *a1;
              v112 = *(*a1 + 4);
              if (*(*a1 + 3) - v112 > 1uLL)
              {
                *v112 = 8236;
                *(v111 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v111, ", ", 2uLL);
              }

              v110 = *v108++;
              mlir::AsmPrinter::Impl::printLocationInternal(a1, v110, a3, 0);
              v109 -= 8;
            }

            while (v109);
          }
        }

        result = *a1;
        v48 = *(*a1 + 4);
        if (v48 < *(*a1 + 3))
        {
          *(result + 4) = v48 + 1;
          v49 = 93;
          goto LABEL_139;
        }

        v50 = 93;
        return llvm::raw_ostream::write(result, v50);
      }

      result = sub_1000AEDE4(a1[1] + 18, a2, *a1);
      if ((result & 1) == 0)
      {

        return mlir::AsmPrinter::Impl::printAttributeImpl(a1, a2, 0);
      }

      return result;
    }

    v114 = a2;
    if (a3)
    {
      v19 = *a1;
      Name = mlir::FileLineColRange::getFilename(&v114);
      v21 = mlir::StringAttr::getValue(&Name);
      v22 = v20;
      v23 = *(v19 + 4);
      if (v20 > *(v19 + 3) - v23)
      {
        v24 = v19;
        v25 = v21;
        v26 = v22;
LABEL_71:
        llvm::raw_ostream::write(v24, v25, v26);
        goto LABEL_72;
      }

      if (v20)
      {
        memcpy(v23, v21, v20);
        *(v19 + 4) += v22;
      }

LABEL_72:
      EndColumn = mlir::FileLineColRange::getEndColumn(&v114);
      if (EndColumn == mlir::FileLineColRange::getStartColumn(&v114))
      {
        StartLine = mlir::FileLineColRange::getStartLine(&v114);
        if (StartLine == mlir::FileLineColRange::getEndLine(&v114))
        {
          v59 = *a1;
          v60 = *(v59 + 4);
          if (v60 >= *(v59 + 3))
          {
            v59 = llvm::raw_ostream::write(v59, 58);
          }

          else
          {
            *(v59 + 4) = v60 + 1;
            *v60 = 58;
          }

          v87 = mlir::FileLineColRange::getStartLine(&v114);
          v88 = llvm::raw_ostream::operator<<(v59, v87);
          v89 = *(v88 + 4);
          if (v89 >= *(v88 + 3))
          {
            v82 = llvm::raw_ostream::write(v88, 58);
          }

          else
          {
            v82 = v88;
            *(v88 + 4) = v89 + 1;
            *v89 = 58;
          }

          StartColumn = mlir::FileLineColRange::getStartColumn(&v114);
          return llvm::raw_ostream::operator<<(v82, StartColumn);
        }
      }

      v61 = mlir::FileLineColRange::getStartLine(&v114);
      EndLine = mlir::FileLineColRange::getEndLine(&v114);
      v63 = *a1;
      v65 = *(v63 + 3);
      v64 = *(v63 + 4);
      if (v61 == EndLine)
      {
        if (v64 >= v65)
        {
          v63 = llvm::raw_ostream::write(v63, 58);
        }

        else
        {
          *(v63 + 4) = v64 + 1;
          *v64 = 58;
        }

        v66 = mlir::FileLineColRange::getStartLine(&v114);
        v67 = llvm::raw_ostream::operator<<(v63, v66);
        v68 = *(v67 + 4);
        if (v68 >= *(v67 + 3))
        {
          v69 = llvm::raw_ostream::write(v67, 58);
        }

        else
        {
          v69 = v67;
          *(v67 + 4) = v68 + 1;
          *v68 = 58;
        }

        v74 = mlir::FileLineColRange::getStartColumn(&v114);
        v75 = llvm::raw_ostream::operator<<(v69, v74);
        v76 = *(v75 + 4);
        if ((*(v75 + 3) - v76) <= 4)
        {
          v77 = llvm::raw_ostream::write(v75, " to :", 5uLL);
LABEL_98:
          v82 = v77;
          goto LABEL_99;
        }

        *(v76 + 4) = 58;
        *v76 = 544175136;
        v82 = v75;
        *(v75 + 4) += 5;
      }

      else
      {
        if (v64 >= v65)
        {
          v63 = llvm::raw_ostream::write(v63, 58);
        }

        else
        {
          *(v63 + 4) = v64 + 1;
          *v64 = 58;
        }

        v70 = mlir::FileLineColRange::getStartLine(&v114);
        v71 = llvm::raw_ostream::operator<<(v63, v70);
        v72 = *(v71 + 4);
        if (v72 >= *(v71 + 3))
        {
          v73 = llvm::raw_ostream::write(v71, 58);
        }

        else
        {
          v73 = v71;
          *(v71 + 4) = v72 + 1;
          *v72 = 58;
        }

        v78 = mlir::FileLineColRange::getStartColumn(&v114);
        v79 = llvm::raw_ostream::operator<<(v73, v78);
        v80 = *(v79 + 4);
        if (*(v79 + 3) - v80 > 3uLL)
        {
          *v80 = 544175136;
          v81 = v79;
          *(v79 + 4) += 4;
        }

        else
        {
          v81 = llvm::raw_ostream::write(v79, " to ", 4uLL);
        }

        v83 = mlir::FileLineColRange::getEndLine(&v114);
        v84 = llvm::raw_ostream::operator<<(v81, v83);
        v85 = *(v84 + 4);
        if (v85 >= *(v84 + 3))
        {
          v77 = llvm::raw_ostream::write(v84, 58);
          goto LABEL_98;
        }

        v82 = v84;
        *(v84 + 4) = v85 + 1;
        *v85 = 58;
      }

LABEL_99:
      StartColumn = mlir::FileLineColRange::getEndColumn(&v114);
      return llvm::raw_ostream::operator<<(v82, StartColumn);
    }

    Name = mlir::FileLineColRange::getFilename(&v114);
    v33 = mlir::StringAttr::getValue(&Name);
    v35 = *a1;
    v36 = *(*a1 + 4);
    if (*(*a1 + 3) == v36)
    {
      v55 = v33;
      v56 = v34;
      llvm::raw_ostream::write(*a1, "", 1uLL);
      llvm::printEscapedString(v55, v56, *a1);
      v24 = *a1;
      v37 = *(*a1 + 4);
      if (*(*a1 + 3) != v37)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *v36 = 34;
      ++*(v35 + 4);
      llvm::printEscapedString(v33, v34, *a1);
      v24 = *a1;
      v37 = *(*a1 + 4);
      if (*(*a1 + 3) != v37)
      {
LABEL_48:
        *v37 = 34;
        ++*(v24 + 4);
        goto LABEL_72;
      }
    }

    v25 = "";
    v26 = 1;
    goto LABEL_71;
  }

  result = *a1;
  v15 = *(*a1 + 4);
  v16 = *(*a1 + 3) - v15;
  if (a3)
  {
    if (v16 > 8)
    {
      *(v15 + 8) = 93;
      *v15 = *"[unknown]";
      v42 = *(result + 4) + 9;
      goto LABEL_112;
    }

    v17 = "[unknown]";
    v18 = 9;
  }

  else
  {
    if (v16 > 6)
    {
      *(v15 + 3) = 1853321070;
      *v15 = 1852534389;
      v42 = *(result + 4) + 7;
      goto LABEL_112;
    }

    v17 = "unknown";
    v18 = 7;
  }

  return llvm::raw_ostream::write(result, v17, v18);
}

uint64_t sub_1000AEDE4(uint64_t *a1, uint64_t a2, llvm::raw_ostream *this)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = *a1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(*a1 + 16 * v6);
  if (v7 != a2)
  {
    v21 = 1;
    while (v7 != -4096)
    {
      v22 = v6 + v21++;
      v6 = v22 & (v4 - 1);
      v7 = *(v5 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v6 == v4)
  {
LABEL_4:
    v8 = *(a1 + 8);
    *(a1 + 8);
    return 0;
  }

  v10 = *(v5 + 16 * v6 + 8);
  if (v10 == *(a1 + 8))
  {
    return 0;
  }

  v11 = a1[3] + 32 * v10;
  if ((*(v11 + 27) & 0x40) != 0)
  {
    v12 = "!";
  }

  else
  {
    v12 = "#";
  }

  v13 = *(this + 4);
  if (*(this + 3) == v13)
  {
    v15 = llvm::raw_ostream::write(this, v12, 1uLL);
    v14 = *(v15 + 4);
    v16 = *(v11 + 8);
    v17 = *(v11 + 16);
    if (v17 > *(v15 + 3) - v14)
    {
      goto LABEL_12;
    }

LABEL_14:
    if (v17)
    {
      v18 = v15;
      v19 = v17;
      memcpy(v14, v16, v17);
      *(v18 + 4) += v19;
    }

    goto LABEL_16;
  }

  *v13 = *v12;
  v14 = (*(this + 4) + 1);
  *(this + 4) = v14;
  v15 = this;
  v16 = *(v11 + 8);
  v17 = *(v11 + 16);
  if (v17 <= *(this + 3) - v14)
  {
    goto LABEL_14;
  }

LABEL_12:
  llvm::raw_ostream::write(v15, v16, v17);
LABEL_16:
  v20 = *(v11 + 24);
  if ((v20 & 0x3FFFFFFF) != 0)
  {
    llvm::raw_ostream::operator<<(this, v20 & 0x3FFFFFFF);
  }

  return 1;
}

__n128 mlir::AsmPrinter::Impl::printResourceHandle(uint64_t a1, __n128 *a2)
{
  v2 = a2;
  v4 = sub_10006575C(a2[1].n128_i64[0]);
  (*(*v4 + 40))(__p);
  if (v19 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v19 >= 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  sub_1000AF0CC(v5, v6, *a1);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 8);
  v16 = v2[1].n128_u64[0];
  v8 = sub_1000AF2E0(v7 + 120, &v16);
  sub_100095EE4(v8, v2, __p);
  if (v18 == 1)
  {
    v10 = (v8 + 3);
    v11 = v8[3];
    v12 = *(v8 + 8);
    if (v12 >= *(v8 + 9))
    {
      if (v11 <= v2 && v11 + 24 * v12 > v2)
      {
        v15 = v2 - v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v8 + 5, v12 + 1, 24);
        v11 = v8[3];
        v2 = &v15[v11];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v8 + 5, v12 + 1, 24);
        v11 = v8[3];
      }
    }

    v13 = (v11 + 24 * *(v8 + 8));
    result = *v2;
    v13[1].n128_u64[0] = v2[1].n128_u64[0];
    *v13 = result;
    ++*(v8 + 8);
  }

  return result;
}

llvm::raw_ostream *sub_1000AF0CC(char *a1, size_t a2, llvm::raw_ostream *this)
{
  if (!a2)
  {
    goto LABEL_21;
  }

  v6 = *a1;
  if (v6 < 0)
  {
    if (!__maskrune(v6, 0x100uLL))
    {
      goto LABEL_6;
    }

LABEL_7:
    if (a2 == 1)
    {
      v8 = (this + 32);
      v7 = *(this + 4);
      if (*(this + 3) == v7)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }

    v10 = 1;
    while (1)
    {
      v11 = a1[v10];
      if (v11 < 0)
      {
        if (!__maskrune(a1[v10], 0x500uLL))
        {
LABEL_16:
          if (v11 - 36 > 0x3B || ((1 << (v11 - 36)) & 0x800000000000401) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v11] & 0x500) == 0)
      {
        goto LABEL_16;
      }

      if (a2 == ++v10)
      {
        v8 = (this + 32);
        v7 = *(this + 4);
        if (a2 > *(this + 3) - v7)
        {
LABEL_24:

          return llvm::raw_ostream::write(this, a1, a2);
        }

LABEL_9:
        result = memcpy(v7, a1, a2);
        *v8 += a2;
        return result;
      }
    }
  }

  if ((_DefaultRuneLocale.__runetype[v6] & 0x100) != 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  if (*a1 == 95)
  {
    goto LABEL_7;
  }

LABEL_21:
  v13 = *(this + 4);
  if (*(this + 3) == v13)
  {
    llvm::raw_ostream::write(this, "", 1uLL);
  }

  else
  {
    *v13 = 34;
    ++*(this + 4);
  }

  result = llvm::printEscapedString(a1, a2, this);
  v14 = *(this + 4);
  if (v14 >= *(this + 3))
  {

    return llvm::raw_ostream::write(this, 34);
  }

  else
  {
    *(this + 4) = v14 + 1;
    *v14 = 34;
  }

  return result;
}

void *sub_1000AF2E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 48 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 48 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    sub_1000C8728(a1, v2);
    sub_1000A5DC4(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v5 + 6;
  v5[5] = 0;
  return v5 + 1;
}

uint64_t mlir::AsmPrinter::Impl::printAlias(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 160);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(v2 + 144);
  v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v4 + 16 * v5);
  if (v6 != a2)
  {
    v21 = 1;
    while (v6 != -4096)
    {
      v22 = v5 + v21++;
      v5 = v22 & (v3 - 1);
      v6 = *(v4 + 16 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v5 == v3)
  {
LABEL_4:
    v7 = *(v2 + 176);
    *(v2 + 176);
    return 0;
  }

  v8 = *(v4 + 16 * v5 + 8);
  if (v8 == *(v2 + 176))
  {
    return 0;
  }

  v9 = *(v2 + 168) + 32 * v8;
  if (*(v9 + 28) != 1)
  {
    return 0;
  }

  v10 = *a1;
  if ((*(v9 + 27) & 0x40) != 0)
  {
    v11 = "!";
  }

  else
  {
    v11 = "#";
  }

  v12 = v10[4];
  if (v10[3] == v12)
  {
    v14 = llvm::raw_ostream::write(*a1, v11, 1uLL);
    v13 = v14[4];
    v15 = *(v9 + 8);
    v16 = *(v9 + 16);
    if (v16 > v14[3] - v13)
    {
      goto LABEL_12;
    }

LABEL_15:
    if (v16)
    {
      v18 = v14;
      v19 = v16;
      memcpy(v13, v15, v16);
      v18[4] += v19;
    }

    goto LABEL_17;
  }

  *v12 = *v11;
  v13 = (v10[4] + 1);
  v10[4] = v13;
  v14 = v10;
  v15 = *(v9 + 8);
  v16 = *(v9 + 16);
  if (v16 <= v10[3] - v13)
  {
    goto LABEL_15;
  }

LABEL_12:
  llvm::raw_ostream::write(v14, v15, v16);
LABEL_17:
  v20 = *(v9 + 24);
  if ((v20 & 0x3FFFFFFF) != 0)
  {
    llvm::raw_ostream::operator<<(v10, v20 & 0x3FFFFFFF);
  }

  return 1;
}

void mlir::AsmPrinter::Impl::printAttributeImpl(llvm::raw_ostream **a1, uint64_t **a2, int a3)
{
  if (*(**a2 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
  {
    mlir::AsmPrinter::Impl::printDialectAttribute(a1, a2);
    goto LABEL_8;
  }

  v6 = (*a2)[17];
  if (v6 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v118 = v7;
  if (v7)
  {
    v8 = *a1;
    v120.n128_u64[0] = mlir::OpaqueAttr::getDialectNamespace(&v118);
    Value = mlir::StringAttr::getValue(&v120);
    v11 = v10;
    AttrData = mlir::OpaqueAttr::getAttrData(&v118);
    sub_1000B032C(v8, "#", 1uLL, Value, v11, AttrData, v13);
    goto LABEL_8;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v22 = *a1;
    v23 = *(*a1 + 4);
    if (*(*a1 + 3) - v23 > 3uLL)
    {
      *v23 = 1953066613;
      *(v22 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v22, "unit", 4uLL);
    }

    return;
  }

  if (atomic_load_explicit(&qword_1002C0668, memory_order_acquire))
  {
    if (v6 == qword_1002C0660)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0;
    }

    v117 = v19;
    if (v19)
    {
LABEL_20:
      v20 = *a1;
      v21 = *(*a1 + 4);
      if ((*(*a1 + 3) - v21) > 8)
      {
        *(v21 + 8) = 91;
        *v21 = *"distinct[";
        *(v20 + 4) += 9;
      }

      else
      {
        v20 = llvm::raw_ostream::write(*a1, "distinct[", 9uLL);
      }

      v24 = a1[1];
      v25 = (v24 + 592);
      v119 = v19;
      sub_1000B81AC(v24 + 600, &v119, v24 + 74, &v120);
      if (v121 == 1)
      {
        ++*v25;
      }

      v26 = llvm::raw_ostream::operator<<(v20, *(v120.n128_u64[0] + 8));
      v27 = *(v26 + 4);
      if (*(v26 + 3) - v27 > 1uLL)
      {
        *v27 = 15453;
        *(v26 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v26, "]<", 2uLL);
      }

      if (*(*mlir::DistinctAttr::getReferencedAttr(&v117) + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        ReferencedAttr = mlir::DistinctAttr::getReferencedAttr(&v117);
        if (ReferencedAttr)
        {
          v29 = ReferencedAttr;
          if ((sub_1000AEDE4(a1[1] + 18, ReferencedAttr, *a1) & 1) == 0)
          {
            mlir::AsmPrinter::Impl::printAttributeImpl(a1, v29, 0);
          }
        }

        else
        {
          v30 = *a1;
          v31 = *(*a1 + 4);
          if ((*(*a1 + 3) - v31) > 0x11)
          {
            *(v31 + 16) = 15934;
            *v31 = *"<<NULL ATTRIBUTE>>";
            *(v30 + 4) += 18;
          }

          else
          {
            llvm::raw_ostream::write(v30, "<<NULL ATTRIBUTE>>", 0x12uLL);
          }
        }
      }

      goto LABEL_40;
    }
  }

  else
  {
    sub_10027B0D8();
    if (v6 == qword_1002C0660)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0;
    }

    v117 = v19;
    if (v19)
    {
      goto LABEL_20;
    }
  }

  v34 = (*a2)[17];
  if (v34 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v35 = a2;
  }

  else
  {
    v35 = 0;
  }

  v119 = v35;
  if (v35)
  {
    v36 = *a1;
    v37 = *(*a1 + 4);
    if (v37 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v36, 123);
    }

    else
    {
      *(v36 + 4) = v37 + 1;
      *v37 = 123;
    }

    v42 = mlir::DictionaryAttr::getValue(&v119);
    if (v43)
    {
      v44 = v42;
      v45 = v43;
      v46 = *a1;
      mlir::AsmPrinter::Impl::printNamedAttribute(a1, *v42, v42[1]);
      if (v45 != 1)
      {
        v47 = &v44[2 * v45];
        v48 = v44 + 2;
        do
        {
          while (1)
          {
            v51 = *(v46 + 4);
            if (*(v46 + 3) - v51 <= 1uLL)
            {
              break;
            }

            *v51 = 8236;
            *(v46 + 4) += 2;
            v49 = *v48;
            v50 = v48[1];
            v48 += 2;
            mlir::AsmPrinter::Impl::printNamedAttribute(a1, v49, v50);
            if (v48 == v47)
            {
              goto LABEL_68;
            }
          }

          llvm::raw_ostream::write(v46, ", ", 2uLL);
          v52 = *v48;
          v53 = v48[1];
          v48 += 2;
          mlir::AsmPrinter::Impl::printNamedAttribute(a1, v52, v53);
        }

        while (v48 != v47);
      }
    }

LABEL_68:
    v54 = *a1;
    v55 = *(*a1 + 4);
    if (v55 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v54, 125);
      goto LABEL_8;
    }

    *(v54 + 4) = v55 + 1;
    v56 = 125;
    goto LABEL_70;
  }

  if (v34 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v38 = a2;
  }

  else
  {
    v38 = 0;
  }

  v116 = v38;
  if (!v38)
  {
    if (v34 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v57 = a2;
    }

    else
    {
      v57 = 0;
    }

    v115 = v57;
    if (v57)
    {
      LOBYTE(v114) = 0;
      mlir::FloatAttr::getValue(&v115, &v120);
      sub_1000B0610(&v120, *a1, &v114);
      sub_10002999C(&v120);
      if (a3 == 1)
      {
        v120.n128_u64[0] = mlir::FloatAttr::getType(&v115);
        if (mlir::Type::isF64(&v120) && (v114 & 1) == 0)
        {
          return;
        }
      }

      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v61 = a2;
    }

    else
    {
      v61 = 0;
    }

    v114 = v61;
    if (v61)
    {
      v62 = mlir::StringAttr::getValue(&v114);
      mlir::AsmPrinter::Impl::printEscapedString(a1, v62, v63);
      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v64 = a2;
    }

    else
    {
      v64 = 0;
    }

    v113 = v64;
    if (v64)
    {
      v65 = *a1;
      v66 = *(*a1 + 4);
      if (v66 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v65, 91);
      }

      else
      {
        *(v65 + 4) = v66 + 1;
        *v66 = 91;
      }

      v120.n128_u64[0] = mlir::ArrayAttr::getValue(&v113);
      v120.n128_u64[1] = v68;
      sub_1000C8A68(&v120, *a1, a1);
      v69 = *a1;
      v55 = *(*a1 + 4);
      if (v55 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v69, 93);
        goto LABEL_8;
      }

      *(v69 + 4) = v55 + 1;
      v56 = 93;
      goto LABEL_70;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v67 = a2;
    }

    else
    {
      v67 = 0;
    }

    v112 = v67;
    if (v67)
    {
      sub_100032174(*a1, "affine_map<");
      v120.n128_u64[0] = mlir::AffineMapAttr::getValue(&v112);
      mlir::AffineMap::print(&v120, *a1);
LABEL_40:
      v32 = *a1;
      v33 = *(*a1 + 4);
      if (v33 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v32, 62);
      }

      else
      {
        *(v32 + 4) = v33 + 1;
        *v33 = 62;
      }

      return;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v70 = a2;
    }

    else
    {
      v70 = 0;
    }

    v111 = v70;
    if (v70)
    {
      sub_100032174(*a1, "affine_set<");
      v120.n128_u64[0] = mlir::IntegerSetAttr::getValue(&v111);
      mlir::IntegerSet::print(&v120, *a1);
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v71 = a2;
    }

    else
    {
      v71 = 0;
    }

    v110 = v71;
    if (v71)
    {
      v72 = mlir::TypeAttr::getValue(&v110);
      mlir::AsmPrinter::Impl::printType(a1, v72);
      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v73 = a2;
    }

    else
    {
      v73 = 0;
    }

    v109 = v73;
    if (v73)
    {
      v120.n128_u64[0] = mlir::SymbolRefAttr::getRootReference(&v109);
      v74 = mlir::StringAttr::getValue(&v120);
      sub_1000B0E54(v74, v75, *a1);
      NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v109);
      if (v77)
      {
        v78 = NestedReferences;
        v79 = 8 * v77;
        do
        {
          v80 = *v78++;
          v120.n128_u64[0] = v80;
          sub_100032174(*a1, "::");
          v81 = sub_1000B0F34(&v120);
          sub_1000B0E54(v81, v82, *a1);
          v79 -= 8;
        }

        while (v79);
      }

LABEL_8:
      if (a3 != 2)
      {
        v120.n128_u64[0] = sub_100062D0C(a2);
        v120.n128_u64[1] = v14;
        if (v120.n128_u64[0])
        {
          Type = mlir::TypedAttr::getType(&v120);
          if (*(*Type + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
          {
            v16 = Type;
            v17 = *a1;
            v18 = *(*a1 + 4);
            if ((*(*a1 + 3) - v18) <= 2)
            {
              llvm::raw_ostream::write(v17, " : ", 3uLL);
              if (mlir::AsmPrinter::Impl::printAlias(a1, v16))
              {
                return;
              }

LABEL_23:
              mlir::AsmPrinter::Impl::printTypeImpl(a1, v16);
              return;
            }

            *(v18 + 2) = 32;
            *v18 = 14880;
            *(v17 + 4) += 3;
            if ((mlir::AsmPrinter::Impl::printAlias(a1, v16) & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }
      }

      return;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v83 = a2;
    }

    else
    {
      v83 = 0;
    }

    v108 = v83;
    if (v83)
    {
      v84 = sub_1000B0F60(&v108);
      shouldElideElementsAttr = mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v84, v85);
      v87 = *a1;
      if (!shouldElideElementsAttr)
      {
        sub_100032174(v87, "dense<");
        mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, v108, 1);
LABEL_157:
        v97 = *a1;
        v55 = *(*a1 + 4);
        if (v55 >= *(*a1 + 3))
        {
          llvm::raw_ostream::write(v97, 62);
          goto LABEL_8;
        }

        *(v97 + 4) = v55 + 1;
        v56 = 62;
LABEL_70:
        *v55 = v56;
        goto LABEL_8;
      }
    }

    else
    {
      if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
      {
        v88 = a2;
      }

      else
      {
        v88 = 0;
      }

      v107 = v88;
      if (!v88)
      {
        if (v34 == &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id)
        {
          v92 = a2;
        }

        else
        {
          v92 = 0;
        }

        v106 = v92;
        if (!v92)
        {
          if (v34 == &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id)
          {
            v98 = a2;
          }

          else
          {
            v98 = 0;
          }

          Values = v98;
          if (v98)
          {
            mlir::StridedLayoutAttr::print(&Values, *a1);
          }

          else
          {
            if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
            {
              v100 = a2;
            }

            else
            {
              v100 = 0;
            }

            v104 = v100;
            if (v100)
            {
              sub_100032174(*a1, "array<");
              ElementType = mlir::DenseArrayAttr::getElementType(&v104);
              mlir::AsmPrinter::Impl::printType(a1, ElementType);
              if (mlir::DenseArrayAttr::getSize(&v104))
              {
                sub_100032174(*a1, ": ");
                mlir::AsmPrinter::Impl::printDenseArrayAttr(a1, v104);
              }

              sub_100032174(*a1, ">");
              return;
            }

            if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
            {
              v102 = a2;
            }

            else
            {
              v102 = 0;
            }

            v103 = v102;
            if (v102)
            {
              sub_100032174(*a1, "dense_resource<");
              mlir::DenseResourceElementsAttr::getRawHandle(&v103, &v120);
              mlir::AsmPrinter::Impl::printResourceHandle(a1, &v120);
              sub_100032174(*a1, ">");
            }

            else
            {
              if (!mlir::LocationAttr::classof(a2) || !a2)
              {
                llvm::report_fatal_error("Unknown builtin attribute", 1);
              }

              mlir::AsmPrinter::Impl::printLocation(a1, a2, 0);
            }
          }

          goto LABEL_8;
        }

        v120.n128_u64[0] = mlir::SparseElementsAttr::getIndices(&v106);
        v93 = sub_1000B0F60(&v120);
        if (mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v93, v94) & 1) != 0 || (Values = mlir::SparseElementsAttr::getValues(&v106), v95 = sub_1000B0F60(&Values), (mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v95, v96)))
        {
          sub_1000B105C(*a1);
          goto LABEL_8;
        }

        sub_100032174(*a1, "sparse<");
        v120.n128_u64[0] = mlir::SparseElementsAttr::getIndices(&v106);
        if (mlir::DenseElementsAttr::getNumElements(&v120))
        {
          mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, v120.n128_u64[0], 0);
          sub_100032174(*a1, ", ");
          v99 = mlir::SparseElementsAttr::getValues(&v106);
          mlir::AsmPrinter::Impl::printDenseElementsAttr(a1, v99, 1);
        }

        goto LABEL_157;
      }

      v89 = sub_1000B0F60(&v107);
      v91 = mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v89, v90);
      v87 = *a1;
      if (!v91)
      {
        sub_100032174(v87, "dense<");
        mlir::AsmPrinter::Impl::printDenseStringElementsAttr(a1, v107);
        goto LABEL_157;
      }
    }

    sub_1000B105C(v87);
    goto LABEL_8;
  }

  v115 = mlir::IntegerAttr::getType(&v116);
  if (mlir::Type::isSignlessInteger(&v115, 1))
  {
    v39 = *a1;
    mlir::IntegerAttr::getValue(&v116, &v120);
    v40 = v120.n128_u32[2];
    if (v120.n128_u32[2] > 0x40)
    {
      v41 = llvm::APInt::countLeadingZerosSlowCase(&v120) == v40;
    }

    else
    {
      v41 = v120.n128_u64[0] == 0;
    }

    if (v41)
    {
      v60 = "false";
    }

    else
    {
      v60 = "true";
    }

    sub_100032174(v39, v60);
    if (v120.n128_u32[2] >= 0x41 && v120.n128_u64[0])
    {
      operator delete[]();
    }

    return;
  }

  v58 = !mlir::Type::isUnsignedInteger(&v115) && !mlir::Type::isSignlessInteger(&v115, 1);
  mlir::IntegerAttr::getValue(&v116, &v120);
  llvm::APInt::print(&v120, *a1, v58);
  if (v120.n128_u32[2] >= 0x41 && v120.n128_u64[0])
  {
    operator delete[]();
  }

  if (a3 != 1 || !mlir::Type::isSignlessInteger(&v115, 64))
  {
    goto LABEL_8;
  }
}

void mlir::AsmPrinter::Impl::printDialectAttribute(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = &off_1002B45C0;
  v22 = &v23;
  llvm::raw_ostream::SetBufferAndMode(&v15, 0, 0, 0);
  v5 = *(a1 + 8);
  v10[0] = &v15;
  v10[1] = v5;
  v6 = v5[40];
  v11 = v5[39];
  v12 = v6;
  v13 = v5[41];
  v14 = 1;
  v9[1] = v10;
  v9[0] = off_1002B5D98;
  (*(*v4 + 40))(v4, a2, v9);
  llvm::raw_ostream::~raw_ostream(&v15);
  if (v25 >= 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23;
  }

  if (v25 >= 0)
  {
    v8 = SHIBYTE(v25);
  }

  else
  {
    v8 = v24;
  }

  sub_1000B032C(*a1, "#", 1uLL, *(v4 + 8), *(v4 + 16), v7, v8);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }
}

llvm::raw_ostream *sub_1000B032C(llvm::raw_ostream *this, const char *a2, size_t a3, const char *a4, size_t a5, char *a6, size_t a7)
{
  v11 = this;
  v13 = *(this + 3);
  v12 = *(this + 4);
  if (a3 > v13 - v12)
  {
    v14 = llvm::raw_ostream::write(v11, a2, a3);
    v12 = v14[4];
    if (a5 <= v14[3] - v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    llvm::raw_ostream::write(v14, a4, a5);
    if (!a7)
    {
      goto LABEL_36;
    }

    goto LABEL_11;
  }

  if (a3)
  {
    memcpy(v12, a2, a3);
    v12 = (*(v11 + 4) + a3);
    *(v11 + 4) = v12;
  }

  v14 = v11;
  if (a5 > *(v11 + 3) - v12)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (a5)
  {
    memcpy(v12, a4, a5);
    v14[4] += a5;
  }

  if (!a7)
  {
    goto LABEL_36;
  }

LABEL_11:
  v16 = *a6;
  if (v16 < 0)
  {
    if (!__maskrune(v16, 0x100uLL))
    {
      goto LABEL_36;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v16] & 0x100) == 0)
  {
    goto LABEL_36;
  }

  v17 = 0;
  while (1)
  {
    v18 = a6[v17];
    if (v18 != 95)
    {
      v19 = v18 != 46 && (v18 - 48) >= 0xA;
      if (v19 && (v18 & 0xFFFFFFDF) - 65 > 0x19)
      {
        break;
      }
    }

    if (a7 == ++v17)
    {
      goto LABEL_27;
    }
  }

  if (a7 >= v17 && (a6[v17] != 60 || a6[a7 - 1] != 62))
  {
LABEL_36:
    v24 = *(v11 + 4);
    if (v24 >= *(v11 + 3))
    {
      v11 = llvm::raw_ostream::write(v11, 60);
      result = *(v11 + 4);
      if (a7 <= *(v11 + 3) - result)
      {
LABEL_38:
        if (a7)
        {
          memcpy(result, a6, a7);
          result = (*(v11 + 4) + a7);
          *(v11 + 4) = result;
        }

        if (result < *(v11 + 3))
        {
          goto LABEL_41;
        }

LABEL_44:

        return llvm::raw_ostream::write(v11, 62);
      }
    }

    else
    {
      *(v11 + 4) = v24 + 1;
      *v24 = 60;
      result = *(v11 + 4);
      if (a7 <= *(v11 + 3) - result)
      {
        goto LABEL_38;
      }
    }

    v11 = llvm::raw_ostream::write(v11, a6, a7);
    result = *(v11 + 4);
    if (result < *(v11 + 3))
    {
LABEL_41:
      *(v11 + 4) = result + 1;
      *result = 62;
      return result;
    }

    goto LABEL_44;
  }

LABEL_27:
  v21 = *(v11 + 4);
  if (v21 >= *(v11 + 3))
  {
    v11 = llvm::raw_ostream::write(v11, 46);
    v22 = *(v11 + 4);
    if (a7 <= *(v11 + 3) - v22)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *(v11 + 4) = v21 + 1;
    *v21 = 46;
    v22 = *(v11 + 4);
    if (a7 <= *(v11 + 3) - v22)
    {
LABEL_29:
      result = memcpy(v22, a6, a7);
      *(v11 + 4) += a7;
      return result;
    }
  }

  return llvm::raw_ostream::write(v11, a6, a7);
}

void sub_1000B0610(llvm::APFloatBase *a1, void *a2, _BYTE *a3)
{
  v6 = *a1;
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v8 = *(a1 + 1);
  if (v7 != v6)
  {
    v8 = a1;
  }

  if ((*(v8 + 20) & 6) == 0)
  {
LABEL_27:
    if (a3)
    {
      *a3 = 1;
    }

    v16 = v18;
    v17 = xmmword_10028EDC0;
    if (v7 == *a1)
    {
      llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v14);
    }

    else
    {
      llvm::detail::IEEEFloat::bitcastToAPInt(a1, &v14);
    }

    llvm::APInt::toString(&v14, &v16, 16, 0, 1, 1, 0);
    llvm::raw_ostream::write(a2, v16, v17);
    if (v15 >= 0x41)
    {
      if (v14)
      {
        operator delete[]();
      }
    }

    v10 = v16;
    if (v16 != v18)
    {
      goto LABEL_36;
    }

    return;
  }

  v16 = v18;
  v17 = xmmword_10028F100;
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::toString(a1, &v16, 6, 0, 0);
  }

  else
  {
    llvm::detail::IEEEFloat::toString(a1, &v16, 6u, 0, 0);
  }

  llvm::APFloat::APFloat(&v14, *a1, v16, v17);
  if (v14 == *a1)
  {
    if (v7 == v14)
    {
      IsEqual = llvm::detail::DoubleAPFloat::bitwiseIsEqual(&v14, a1);
      if (v7 == v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      IsEqual = llvm::detail::IEEEFloat::bitwiseIsEqual(&v14, a1);
      if (v7 == v14)
      {
        goto LABEL_16;
      }
    }

LABEL_9:
    llvm::detail::IEEEFloat::~IEEEFloat(&v14);
    if (IsEqual)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  IsEqual = 0;
  if (v7 != v14)
  {
    goto LABEL_9;
  }

LABEL_16:
  sub_100029F40(&v14);
  if (IsEqual)
  {
LABEL_10:
    llvm::raw_ostream::write(a2, v16, v17);
    v10 = v16;
    if (v16 == v18)
    {
      return;
    }

LABEL_36:
    free(v10);
    return;
  }

LABEL_17:
  *&v17 = 0;
  if (v7 == *a1)
  {
    llvm::detail::DoubleAPFloat::toString(a1, &v16, 0, 3, 1);
    v11 = v16;
    v12 = v17;
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::toString(a1, &v16, 0, 3u, 1);
    v11 = v16;
    v12 = v17;
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  v13 = memchr(v11, 46, v12);
  if (!v13 || v13 - v11 == -1)
  {
LABEL_25:
    if (v11 != v18)
    {
      free(v11);
    }

    goto LABEL_27;
  }

  llvm::raw_ostream::write(a2, v11, v12);
  v10 = v16;
  if (v16 != v18)
  {
    goto LABEL_36;
  }
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printEscapedString(llvm::raw_ostream **a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++*(v6 + 4);
  }

  llvm::printEscapedString(a2, a3, *a1);
  result = *a1;
  v9 = *(*a1 + 4);
  if (*(*a1 + 3) == v9)
  {

    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  else
  {
    *v9 = 34;
    ++*(result + 4);
  }

  return result;
}

double mlir::AffineMap::print(mlir::AffineMap *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    mlir::AffineMap::getContext(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v4);
    operator new();
  }

  v2 = *(a2 + 4);
  if ((*(a2 + 3) - v2) > 0x12)
  {
    *(v2 + 15) = 1044271169;
    result = *"<<NULL AFFINE MAP>>";
    *v2 = *"<<NULL AFFINE MAP>>";
    *(a2 + 4) += 19;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL AFFINE MAP>>", 0x13uLL);
  }

  return result;
}

void mlir::IntegerSet::print(mlir::IntegerSet *this, llvm::raw_ostream *a2)
{
  mlir::IntegerSet::getContext(this);
  mlir::OpPrintingFlags::OpPrintingFlags(&v2);
  operator new();
}

void mlir::AsmPrinter::Impl::printType(llvm::raw_ostream **a1, uint64_t **a2)
{
  if (a2)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(a1, a2) & 1) == 0)
    {

      mlir::AsmPrinter::Impl::printTypeImpl(a1, a2);
    }
  }

  else
  {
    v4 = *a1;
    v5 = *(v4 + 4);
    if (*(v4 + 3) - v5 > 0xCuLL)
    {
      qmemcpy(v5, "<<NULL TYPE>>", 13);
      *(v4 + 4) += 13;
    }

    else
    {

      llvm::raw_ostream::write(v4, "<<NULL TYPE>>", 0xDuLL);
    }
  }
}

double sub_1000B0E54(char *a1, size_t a2, llvm::raw_ostream *this)
{
  if (a2)
  {
    v4 = *(this + 4);
    if (v4 >= *(this + 3))
    {
      v7 = a1;
      v8 = a2;
      v9 = this;
      llvm::raw_ostream::write(this, 64);
      a1 = v7;
      a2 = v8;
      this = v9;
    }

    else
    {
      *(this + 4) = v4 + 1;
      *v4 = 64;
    }

    sub_1000AF0CC(a1, a2, this);
  }

  else
  {
    v6 = *(this + 4);
    if (*(this + 3) - v6 > 0x18uLL)
    {
      qmemcpy(v6, "@<<INVALID EMPTY SYMBOL>>", 25);
      result = *"D EMPTY SYMBOL>>";
      *(this + 4) += 25;
    }

    else
    {

      llvm::raw_ostream::write(this, "@<<INVALID EMPTY SYMBOL>>", 0x19uLL);
    }
  }

  return result;
}

void *sub_1000B0F60(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v13 = v2;
      v14 = result;
      sub_10027B12C();
      result = v14;
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v4 = *(v13 + 8);
      v5 = *(v13 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
    if (v6 != &v4[2 * v5] && *v6 == v3)
    {
      v12 = v6[1];
    }
  }

  return result;
}

double sub_1000B105C(void *a1)
{
  v1 = a1[4];
  if (a1[3] - v1 > 0x19uLL)
  {
    qmemcpy(v1, "dense_resource<__elided__>", 26);
    result = *"urce<__elided__>";
    a1[4] += 26;
  }

  else
  {
    llvm::raw_ostream::write(a1, "dense_resource<__elided__>", 0x1AuLL);
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(uint64_t a1, void *a2, int a3)
{
  v29 = a2;
  Type = mlir::DenseElementsAttr::getType(&v29);
  v28 = v5;
  ElementType = mlir::ShapedType::getElementType(&Type);
  v26 = ElementType;
  if (!a3 || (v7 = sub_1000B0F60(&v29), v9 = *(a1 + 48), v9 == -1) || (v10 = v7, v9 >= mlir::ElementsAttr::getNumElements(v7, v8)) || (!mlir::DenseElementsAttr::classof(v10) ? (v11 = 0) : (v11 = v10), (*&v36 = v11) != 0 && (mlir::DenseElementsAttr::isSplat(&v36) & 1) != 0))
  {
    v12 = *(*ElementType + 136);
    v13 = v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = ElementType;
    }

    else
    {
      v14 = 0;
    }

    v25 = v14;
    if (v13)
    {
      v24 = mlir::ComplexType::getElementType(&v25);
      if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::DenseElementsAttr::tryGetComplexIntValues(&v29, &v36);
        v31 = v37;
        isSplat = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Type;
        v17 = v28;
        v18 = *a1;
        *&v30 = &v36;
        *(&v30 + 1) = a1;
        *&v31 = &v24;
        v21 = sub_1000C8C20;
      }

      else
      {
        mlir::DenseElementsAttr::tryGetComplexFloatValues(&v29, &v36);
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v34 = v40;
        v35 = v41;
        isSplat = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Type;
        v17 = v28;
        v18 = *a1;
        *&v30 = &v36;
        *(&v30 + 1) = a1;
        v21 = sub_1000C8F3C;
      }
    }

    else
    {
      if (mlir::Type::isIntOrIndex(&v26))
      {
        sub_1000B83F8(&v29, &v36);
        v30 = v36;
        v31 = v37;
        isSplat = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Type;
        v17 = v28;
        v18 = *a1;
        *&v36 = &v30;
        *(&v36 + 1) = a1;
        *&v37 = &v26;
        v19 = sub_1000C9464;
        v20 = &v36;
LABEL_20:
        sub_1000B1584(isSplat, v16, v17, v18, v19, v20);
        return;
      }

      mlir::DenseElementsAttr::tryGetFloatValues(&v29, &v36);
      v30 = v36;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      isSplat = mlir::DenseElementsAttr::isSplat(&v29);
      v16 = Type;
      v17 = v28;
      v18 = *a1;
      *&v30 = &v36;
      *(&v30 + 1) = a1;
      v21 = sub_1000C94EC;
    }

    v19 = v21;
    v20 = &v30;
    goto LABEL_20;
  }

  RawData = mlir::DenseElementsAttr::getRawData(&v29);
  mlir::AsmPrinter::Impl::printHexString(a1, RawData, v23);
}

void mlir::AsmPrinter::Impl::printDenseStringElementsAttr(llvm::raw_ostream **a1, uint64_t a2)
{
  v9 = a2;
  v8[0] = mlir::DenseElementsAttr::getRawStringData(&v9);
  v8[1] = v3;
  v7[0] = a1;
  v7[1] = v8;
  isSplat = mlir::DenseElementsAttr::isSplat(&v9);
  Type = mlir::DenseElementsAttr::getType(&v9);
  sub_1000B1584(isSplat, Type, v6, *a1, sub_1000C961C, v7);
}

void mlir::AsmPrinter::Impl::printDenseElementsAttr(llvm::raw_ostream **a1, void *a2, int a3)
{
  if (a2 && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    v12[3] = v3;
    v12[4] = v4;
    v12[0] = a2;
    v11[0] = mlir::DenseElementsAttr::getRawStringData(v12);
    v11[1] = v6;
    v10[0] = a1;
    v10[1] = v11;
    isSplat = mlir::DenseElementsAttr::isSplat(v12);
    Type = mlir::DenseElementsAttr::getType(v12);
    sub_1000B1584(isSplat, Type, v9, *a1, sub_1000C961C, v10);
  }

  else
  {

    mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, a2, a3);
  }
}

void mlir::AsmPrinter::Impl::printDenseArrayAttr(void **a1, uint64_t a2)
{
  v14 = a2;
  ElementType = mlir::DenseArrayAttr::getElementType(&v14);
  if (mlir::Type::isInteger(&ElementType, 1))
  {
    IntOrFloatBitWidth = 8;
  }

  else
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
  }

  v11 = IntOrFloatBitWidth >> 3;
  v12 = IntOrFloatBitWidth;
  v10[0] = mlir::DenseArrayAttr::getRawData(&v14);
  v10[1] = v4;
  Size = mlir::DenseArrayAttr::getSize(&v14);
  v6 = *a1;
  v15[0] = &v12;
  v15[1] = v10;
  v15[2] = &v11;
  v15[3] = &ElementType;
  v15[4] = a1;
  v7 = Size;
  if (Size)
  {
    sub_1000C96E8(v15, 0);
    if (v7 != 1)
    {
      for (i = 1; i != v7; ++i)
      {
        while (1)
        {
          v9 = v6[4];
          if (v6[3] - v9 > 1uLL)
          {
            break;
          }

          llvm::raw_ostream::write(v6, ", ", 2uLL);
          sub_1000C96E8(v15, i++);
          if (v7 == i)
          {
            return;
          }
        }

        *v9 = 8236;
        v6[4] += 2;
        sub_1000C96E8(v15, i);
      }
    }
  }
}

void sub_1000B1584(int a1, uint64_t a2, uint64_t a3, llvm::raw_ostream *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v31[0] = a2;
  v31[1] = a3;
  if (a1)
  {

    a5(a6, 0);
    return;
  }

  Shape = mlir::ShapedType::getShape(v31);
  NumElements = mlir::ShapedType::getNumElements(Shape, v8);
  if (!NumElements)
  {
    return;
  }

  v10 = NumElements;
  mlir::ShapedType::getShape(v31);
  v12 = v11;
  v32 = v34;
  v33 = 0x400000000;
  if (v11 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v11, 4);
    v13 = v32;
    v14 = 4 * v12;
LABEL_10:
    bzero(v13, v14);
    goto LABEL_11;
  }

  if (v11)
  {
    v14 = 4 * v11;
    v13 = v34;
    goto LABEL_10;
  }

LABEL_11:
  LODWORD(v33) = v12;
  v15 = mlir::ShapedType::getShape(v31);
  if (!v10)
  {
    goto LABEL_38;
  }

  v16 = v15;
  v17 = 0;
  v18 = 0;
  do
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    v19 = *(a4 + 4);
    if (*(a4 + 3) - v19 <= 1uLL)
    {
      llvm::raw_ostream::write(a4, ", ", 2uLL);
LABEL_18:
      if (v12 <= v18)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    *v19 = 8236;
    *(a4 + 4) += 2;
    if (v12 <= v18)
    {
      goto LABEL_26;
    }

LABEL_21:
    v20 = v18 + 1;
    do
    {
      while (1)
      {
        v22 = *(a4 + 4);
        if (v22 >= *(a4 + 3))
        {
          break;
        }

        *(a4 + 4) = v22 + 1;
        *v22 = 91;
        v21 = v12 > v20++;
        if (!v21)
        {
          goto LABEL_26;
        }
      }

      llvm::raw_ostream::write(a4, 91);
      v21 = v12 > v20++;
    }

    while (v21);
LABEL_26:
    a5(a6, v17);
    ++*(v32 + v12 - 1);
    if (v12 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v12;
      v23 = (v12 - 1);
      LODWORD(v24) = v12;
      do
      {
        v25 = v24;
        v24 = v23;
        v26 = v32;
        if (*(v16 + 8 * v24) <= *(v32 + v24))
        {
          *(v32 + v24) = 0;
          ++v26[v25 - 2];
          --v18;
          v27 = *(a4 + 4);
          if (v27 < *(a4 + 3))
          {
            *(a4 + 4) = v27 + 1;
            *v27 = 93;
          }

          else
          {
            llvm::raw_ostream::write(a4, 93);
          }
        }

        v23 = v24 - 1;
      }

      while (v24 != 1);
    }

    v17 = (v17 + 1);
  }

  while (v17 != v10);
  for (; v18; --v18)
  {
    while (1)
    {
      v28 = *(a4 + 4);
      if (v28 >= *(a4 + 3))
      {
        break;
      }

      *(a4 + 4) = v28 + 1;
      *v28 = 93;
      if (!--v18)
      {
        goto LABEL_38;
      }
    }

    llvm::raw_ostream::write(a4, 93);
  }

LABEL_38:
  if (v32 != v34)
  {
    free(v32);
  }
}

void mlir::AsmPrinter::Impl::printTypeImpl(llvm::raw_ostream **a1, uint64_t **a2)
{
  v2 = (*a2)[17];
  if (v2 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id)
  {
    v6 = *a1;
    Layout = a2;
    DialectNamespace = mlir::OpaqueType::getDialectNamespace(&Layout);
    Value = mlir::StringAttr::getValue(&DialectNamespace);
    v9 = v8;
    TypeData = mlir::OpaqueType::getTypeData(&Layout);
    sub_1000B032C(v6, "!", 1uLL, Value, v9, TypeData, v11);
    return;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v12 = *a1;
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) <= 4)
    {
      v14 = "index";
      v15 = 5;
      goto LABEL_38;
    }

    *(v13 + 4) = 120;
    *v13 = 1701080681;
    v17 = *(v12 + 4) + 5;
LABEL_46:
    *(v12 + 4) = v17;
    return;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 > 7uLL)
    {
      v18 = 0x314D32453466;
      goto LABEL_45;
    }

    v14 = "f4E2M1FN";
LABEL_37:
    v15 = 8;
    goto LABEL_38;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 > 7uLL)
    {
      v18 = 0x334D32453666;
      goto LABEL_45;
    }

    v14 = "f6E2M3FN";
    goto LABEL_37;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 > 7uLL)
    {
      v18 = 0x324D33453666;
      goto LABEL_45;
    }

    v14 = "f6E3M2FN";
    goto LABEL_37;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id)
  {
    v12 = *a1;
    v19 = *(v12 + 4);
    if ((*(v12 + 3) - v19) <= 5)
    {
      v14 = "f8E5M2";
      v15 = 6;
      goto LABEL_38;
    }

    *(v19 + 4) = 12877;
    v20 = 893728870;
    goto LABEL_54;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    v12 = *a1;
    v19 = *(v12 + 4);
    if ((*(v12 + 3) - v19) <= 5)
    {
      v14 = "f8E4M3";
      v15 = 6;
      goto LABEL_38;
    }

    *(v19 + 4) = 13133;
    v20 = 876951654;
    goto LABEL_54;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 <= 7uLL)
    {
      v14 = "f8E4M3FN";
      goto LABEL_37;
    }

    v18 = 0x334D34453866;
LABEL_45:
    *v16 = v18 & 0xFFFFFFFFFFFFLL | 0x4E46000000000000;
    v17 = *(v12 + 4) + 8;
    goto LABEL_46;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    v12 = *a1;
    v21 = *(v12 + 4);
    if ((*(v12 + 3) - v21) <= 9)
    {
      v14 = "f8E5M2FNUZ";
      v15 = 10;
      goto LABEL_38;
    }

    v22 = "f8E5M2FNUZ";
    goto LABEL_64;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id)
  {
    v12 = *a1;
    v21 = *(v12 + 4);
    if ((*(v12 + 3) - v21) <= 9)
    {
      v14 = "f8E4M3FNUZ";
      v15 = 10;
      goto LABEL_38;
    }

    v22 = "f8E4M3FNUZ";
LABEL_64:
    *(v21 + 8) = 23125;
    *v21 = *v22;
    v17 = *(v12 + 4) + 10;
    goto LABEL_46;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    v12 = *a1;
    v23 = *(v12 + 4);
    if (*(v12 + 3) - v23 <= 0xCuLL)
    {
      v14 = "f8E4M3B11FNUZ";
      v15 = 13;
      goto LABEL_38;
    }

    qmemcpy(v23, "f8E4M3B11FNUZ", 13);
    v17 = *(v12 + 4) + 13;
    goto LABEL_46;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id)
  {
    v12 = *a1;
    v19 = *(v12 + 4);
    if ((*(v12 + 3) - v19) <= 5)
    {
      v14 = "f8E3M4";
      v15 = 6;
      goto LABEL_38;
    }

    *(v19 + 4) = 13389;
    v20 = 860174438;
LABEL_54:
    *v19 = v20;
    v17 = *(v12 + 4) + 6;
    goto LABEL_46;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id)
  {
    v12 = *a1;
    v24 = *(v12 + 4);
    if ((*(v12 + 3) - v24) <= 8)
    {
      v14 = "f8E8M0FNU";
      v15 = 9;
      goto LABEL_38;
    }

    *(v24 + 8) = 85;
    *v24 = *"f8E8M0FNU";
    v17 = *(v12 + 4) + 9;
    goto LABEL_46;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    v12 = *a1;
    v25 = *(v12 + 4);
    if (*(v12 + 3) - v25 > 3uLL)
    {
      v27 = 909207138;
      goto LABEL_83;
    }

    v14 = "bf16";
    v15 = 4;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    v12 = *a1;
    v26 = *(v12 + 4);
    if ((*(v12 + 3) - v26) > 2)
    {
      *(v26 + 2) = 54;
      v28 = 12646;
      goto LABEL_93;
    }

    v14 = "f16";
    v15 = 3;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    v12 = *a1;
    v25 = *(v12 + 4);
    if (*(v12 + 3) - v25 > 3uLL)
    {
      v27 = 842229364;
      goto LABEL_83;
    }

    v14 = "tf32";
    v15 = 4;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    v12 = *a1;
    v26 = *(v12 + 4);
    if ((*(v12 + 3) - v26) > 2)
    {
      *(v26 + 2) = 50;
      v28 = 13158;
      goto LABEL_93;
    }

    v14 = "f32";
    v15 = 3;
  }

  else
  {
    if (v2 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
    {
      if (v2 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
      {
        if (v2 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
            {
              Layout = a2;
              v4 = *a1;
              v5 = *(*a1 + 4);
              if (v5 >= *(*a1 + 3))
              {
                llvm::raw_ostream::write(v4, 40);
              }

              else
              {
                *(v4 + 4) = v5 + 1;
                *v5 = 40;
              }

              Inputs = mlir::FunctionType::getInputs(&Layout);
              if (v40)
              {
                v41 = Inputs;
                v42 = v40;
                v43 = *a1;
                v44 = *Inputs;
                if (*Inputs)
                {
                  if ((mlir::AsmPrinter::Impl::printAlias(a1, v44) & 1) == 0)
                  {
                    mlir::AsmPrinter::Impl::printTypeImpl(a1, v44);
                  }
                }

                else
                {
                  v60 = *(v43 + 4);
                  if (*(v43 + 3) - v60 > 0xCuLL)
                  {
                    qmemcpy(v60, "<<NULL TYPE>>", 13);
                    *(v43 + 4) += 13;
                  }

                  else
                  {
                    llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                  }
                }

                if (v42 != 1)
                {
                  v90 = v41 + 1;
                  v91 = 8 * v42 - 8;
                  do
                  {
                    v92 = *(v43 + 4);
                    if (*(v43 + 3) - v92 > 1uLL)
                    {
                      *v92 = 8236;
                      *(v43 + 4) += 2;
                    }

                    else
                    {
                      llvm::raw_ostream::write(v43, ", ", 2uLL);
                    }

                    v93 = *v90;
                    if (*v90)
                    {
                      if ((mlir::AsmPrinter::Impl::printAlias(a1, *v90) & 1) == 0)
                      {
                        mlir::AsmPrinter::Impl::printTypeImpl(a1, v93);
                      }
                    }

                    else
                    {
                      v94 = *a1;
                      v95 = *(*a1 + 4);
                      if (*(*a1 + 3) - v95 > 0xCuLL)
                      {
                        qmemcpy(v95, "<<NULL TYPE>>", 13);
                        *(v94 + 4) += 13;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v94, "<<NULL TYPE>>", 0xDuLL);
                      }
                    }

                    ++v90;
                    v91 -= 8;
                  }

                  while (v91);
                }
              }

              v79 = *a1;
              v80 = *(*a1 + 4);
              if ((*(*a1 + 3) - v80) > 4)
              {
                *(v80 + 4) = 32;
                *v80 = 1043144745;
                *(v79 + 4) += 5;
              }

              else
              {
                llvm::raw_ostream::write(v79, ") -> ", 5uLL);
              }

              Results = mlir::FunctionType::getResults(&Layout);
              v82 = Results;
              v84 = v83;
              if (v83 != 1 || (v85 = *Results, *(**Results + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id))
              {
                v86 = *a1;
                v87 = *(*a1 + 4);
                if (v87 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v86, 40);
                }

                else
                {
                  *(v86 + 4) = v87 + 1;
                  *v87 = 40;
                }

                if (v84)
                {
                  v88 = *a1;
                  v89 = *v82;
                  if (*v82)
                  {
                    if ((mlir::AsmPrinter::Impl::printAlias(a1, *v82) & 1) == 0)
                    {
                      mlir::AsmPrinter::Impl::printTypeImpl(a1, v89);
                    }
                  }

                  else
                  {
                    v96 = *(v88 + 4);
                    if (*(v88 + 3) - v96 > 0xCuLL)
                    {
                      qmemcpy(v96, "<<NULL TYPE>>", 13);
                      *(v88 + 4) += 13;
                    }

                    else
                    {
                      llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                    }
                  }

                  if (v84 != 1)
                  {
                    v99 = v82 + 1;
                    v100 = 8 * v84 - 8;
                    do
                    {
                      v101 = *(v88 + 4);
                      if (*(v88 + 3) - v101 > 1uLL)
                      {
                        *v101 = 8236;
                        *(v88 + 4) += 2;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v88, ", ", 2uLL);
                      }

                      v102 = *v99;
                      if (*v99)
                      {
                        if ((mlir::AsmPrinter::Impl::printAlias(a1, *v99) & 1) == 0)
                        {
                          mlir::AsmPrinter::Impl::printTypeImpl(a1, v102);
                        }
                      }

                      else
                      {
                        v103 = *a1;
                        v104 = *(*a1 + 4);
                        if (*(*a1 + 3) - v104 > 0xCuLL)
                        {
                          qmemcpy(v104, "<<NULL TYPE>>", 13);
                          *(v103 + 4) += 13;
                        }

                        else
                        {
                          llvm::raw_ostream::write(v103, "<<NULL TYPE>>", 0xDuLL);
                        }
                      }

                      ++v99;
                      v100 -= 8;
                    }

                    while (v100);
                  }
                }

                v97 = *a1;
                v98 = *(*a1 + 4);
                if (v98 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v97, 41);
                }

                else
                {
                  *(v97 + 4) = v98 + 1;
                  *v98 = 41;
                }
              }

              else if ((mlir::AsmPrinter::Impl::printAlias(a1, *Results) & 1) == 0)
              {
                mlir::AsmPrinter::Impl::printTypeImpl(a1, v85);
              }

              return;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
            {
              Layout = a2;
              ScalableDims = mlir::VectorType::getScalableDims(&Layout);
              v34 = v33;
              v35 = *a1;
              v36 = *(*a1 + 4);
              if (*(*a1 + 3) - v36 > 6uLL)
              {
                *(v36 + 3) = 1014132596;
                *v36 = 1952671094;
                *(v35 + 4) += 7;
              }

              else
              {
                llvm::raw_ostream::write(v35, "vector<", 7uLL);
              }

              Shape = mlir::VectorType::getShape(&Layout);
              v50 = v49;
              if (v49)
              {
                v51 = Shape;
                if (v34)
                {
                  v52 = a1;
                  while (1)
                  {
                    while (*ScalableDims != 1)
                    {
                      llvm::raw_ostream::operator<<(*v52, *v51);
                      if (*ScalableDims != 1)
                      {
                        goto LABEL_134;
                      }

LABEL_129:
                      v56 = *a1;
                      v57 = *(*a1 + 4);
                      if (v57 >= *(*a1 + 3))
                      {
                        llvm::raw_ostream::write(v56, 93);
                        v58 = *a1;
                        v59 = *(*a1 + 4);
                        if (v59 >= *(*a1 + 3))
                        {
                          goto LABEL_135;
                        }
                      }

                      else
                      {
                        *(v56 + 4) = v57 + 1;
                        *v57 = 93;
                        v58 = *a1;
                        v59 = *(*a1 + 4);
                        if (v59 >= *(*a1 + 3))
                        {
                          goto LABEL_135;
                        }
                      }

LABEL_124:
                      *(v58 + 4) = v59 + 1;
                      *v59 = 120;
                      ++ScalableDims;
                      ++v51;
                      --v50;
                      v52 = a1;
                      if (!v50)
                      {
                        goto LABEL_159;
                      }
                    }

                    v53 = *v52;
                    v55 = *(*v52 + 3);
                    v54 = *(*v52 + 4);
                    if (v54 >= v55)
                    {
                      llvm::raw_ostream::write(v53, 91);
                    }

                    else
                    {
                      *(v53 + 4) = v54 + 1;
                      *v54 = 91;
                    }

                    llvm::raw_ostream::operator<<(*a1, *v51);
                    if (*ScalableDims == 1)
                    {
                      goto LABEL_129;
                    }

LABEL_134:
                    v58 = *a1;
                    v59 = *(*a1 + 4);
                    if (v59 < *(*a1 + 3))
                    {
                      goto LABEL_124;
                    }

LABEL_135:
                    llvm::raw_ostream::write(v58, 120);
                    ++ScalableDims;
                    ++v51;
                    --v50;
                    v52 = a1;
                    if (!v50)
                    {
                      goto LABEL_159;
                    }
                  }
                }

                v72 = a1;
                do
                {
                  while (1)
                  {
                    v73 = *v51++;
                    v74 = v72;
                    llvm::raw_ostream::operator<<(*v72, v73);
                    v75 = *v74;
                    v76 = *(*v74 + 4);
                    if (v76 >= *(*v74 + 3))
                    {
                      break;
                    }

                    *(v75 + 4) = v76 + 1;
                    *v76 = 120;
                    --v50;
                    v72 = a1;
                    if (!v50)
                    {
                      goto LABEL_159;
                    }
                  }

                  llvm::raw_ostream::write(v75, 120);
                  --v50;
                  v72 = a1;
                }

                while (v50);
              }

LABEL_159:
              ElementType = mlir::VectorType::getElementType(&Layout);
              if (ElementType)
              {
                goto LABEL_160;
              }

              goto LABEL_219;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
            {
              DialectNamespace = a2;
              v37 = *a1;
              v38 = *(*a1 + 4);
              if (*(*a1 + 3) - v38 > 6uLL)
              {
                *(v38 + 3) = 1014132595;
                *v38 = 1936614772;
                *(v37 + 4) += 7;
              }

              else
              {
                llvm::raw_ostream::write(v37, "tensor<", 7uLL);
              }

              v66 = mlir::RankedTensorType::getShape(&DialectNamespace);
              v67 = *a1;
              Layout = "x";
              v167 = 1;
              sub_1000C992C(v66, &v66[v68], v67, v67, &Layout);
              mlir::RankedTensorType::getShape(&DialectNamespace);
              if (v69)
              {
                v70 = *a1;
                v71 = *(*a1 + 4);
                if (v71 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v70, 120);
                }

                else
                {
                  *(v70 + 4) = v71 + 1;
                  *v71 = 120;
                }
              }

              v105 = mlir::RankedTensorType::getElementType(&DialectNamespace);
              if (v105)
              {
                v106 = v105;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v105) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v106);
                }
              }

              else
              {
                v107 = *a1;
                v108 = *(*a1 + 4);
                if (*(*a1 + 3) - v108 > 0xCuLL)
                {
                  qmemcpy(v108, "<<NULL TYPE>>", 13);
                  *(v107 + 4) += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v107, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              if (!mlir::RankedTensorType::getEncoding(&DialectNamespace))
              {
                goto LABEL_290;
              }

              v114 = *a1;
              v115 = *(*a1 + 4);
              if (*(*a1 + 3) - v115 > 1uLL)
              {
                *v115 = 8236;
                *(v114 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v114, ", ", 2uLL);
              }

              Encoding = mlir::RankedTensorType::getEncoding(&DialectNamespace);
              if (Encoding)
              {
                v117 = Encoding;
                if ((sub_1000AEDE4(a1[1] + 18, Encoding, *a1) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printAttributeImpl(a1, v117, 0);
                }

                goto LABEL_290;
              }

              goto LABEL_286;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
            {
              Layout = a2;
              v46 = *a1;
              v47 = *(*a1 + 4);
              if ((*(*a1 + 3) - v47) > 8)
              {
                *(v47 + 8) = 120;
                *v47 = *"tensor<*x";
                *(v46 + 4) += 9;
              }

              else
              {
                llvm::raw_ostream::write(v46, "tensor<*x", 9uLL);
              }

              ElementType = mlir::UnrankedTensorType::getElementType(&Layout);
              if (!ElementType)
              {
LABEL_219:
                v111 = *a1;
                v112 = *(*a1 + 4);
                if (*(*a1 + 3) - v112 <= 0xCuLL)
                {
                  llvm::raw_ostream::write(v111, "<<NULL TYPE>>", 0xDuLL);
                  goto LABEL_290;
                }

                qmemcpy(v112, "<<NULL TYPE>>", 13);
                v113 = *(v111 + 4) + 13;
                goto LABEL_289;
              }

LABEL_160:
              v78 = ElementType;
              if ((mlir::AsmPrinter::Impl::printAlias(a1, ElementType) & 1) == 0)
              {
                mlir::AsmPrinter::Impl::printTypeImpl(a1, v78);
              }

              goto LABEL_290;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
            {
              DialectNamespace = a2;
              v64 = *a1;
              v65 = *(*a1 + 4);
              if (*(*a1 + 3) - v65 > 6uLL)
              {
                *(v65 + 3) = 1013343602;
                *v65 = 1919772013;
                *(v64 + 4) += 7;
              }

              else
              {
                llvm::raw_ostream::write(v64, "memref<", 7uLL);
              }

              v120 = mlir::MemRefType::getShape(&DialectNamespace);
              v121 = *a1;
              Layout = "x";
              v167 = 1;
              sub_1000C992C(v120, &v120[v122], v121, v121, &Layout);
              mlir::MemRefType::getShape(&DialectNamespace);
              if (v123)
              {
                v124 = *a1;
                v125 = *(*a1 + 4);
                if (v125 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v124, 120);
                }

                else
                {
                  *(v124 + 4) = v125 + 1;
                  *v125 = 120;
                }
              }

              v126 = mlir::MemRefType::getElementType(&DialectNamespace);
              if (v126)
              {
                v127 = v126;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v126) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v127);
                }
              }

              else
              {
                v128 = *a1;
                v129 = *(*a1 + 4);
                if (*(*a1 + 3) - v129 > 0xCuLL)
                {
                  qmemcpy(v129, "<<NULL TYPE>>", 13);
                  *(v128 + 4) += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v128, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              Layout = mlir::MemRefType::getLayout(&DialectNamespace);
              v167 = v136;
              if (*(*Layout + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || (mlir::MemRefLayoutAttrInterface::isIdentity(&Layout) & 1) == 0)
              {
                v137 = *a1;
                v138 = *(*a1 + 4);
                if (*(*a1 + 3) - v138 > 1uLL)
                {
                  *v138 = 8236;
                  *(v137 + 4) += 2;
                }

                else
                {
                  llvm::raw_ostream::write(v137, ", ", 2uLL);
                }

                v139 = mlir::MemRefType::getLayout(&DialectNamespace);
                if (v139)
                {
                  v140 = v139;
                  if ((sub_1000AEDE4(a1[1] + 18, v139, *a1) & 1) == 0)
                  {
                    mlir::AsmPrinter::Impl::printAttributeImpl(a1, v140, 1);
                  }
                }

                else
                {
                  v141 = *a1;
                  v142 = *(*a1 + 4);
                  if ((*(*a1 + 3) - v142) > 0x11)
                  {
                    *(v142 + 16) = 15934;
                    *v142 = *"<<NULL ATTRIBUTE>>";
                    *(v141 + 4) += 18;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v141, "<<NULL ATTRIBUTE>>", 0x12uLL);
                  }
                }
              }

              if (!mlir::MemRefType::getMemorySpace(&DialectNamespace))
              {
                goto LABEL_290;
              }

              v143 = *a1;
              v144 = *(*a1 + 4);
              if (*(*a1 + 3) - v144 > 1uLL)
              {
                *v144 = 8236;
                *(v143 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v143, ", ", 2uLL);
              }

              MemorySpace = mlir::MemRefType::getMemorySpace(&DialectNamespace);
              if (MemorySpace)
              {
                goto LABEL_271;
              }

              goto LABEL_286;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
            {
              Layout = a2;
              v109 = *a1;
              v110 = *(*a1 + 4);
              if ((*(*a1 + 3) - v110) > 8)
              {
                *(v110 + 8) = 120;
                *v110 = *"memref<*x";
                *(v109 + 4) += 9;
              }

              else
              {
                llvm::raw_ostream::write(v109, "memref<*x", 9uLL);
              }

              v132 = mlir::UnrankedMemRefType::getElementType(&Layout);
              if (v132)
              {
                v133 = v132;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v132) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v133);
                }
              }

              else
              {
                v134 = *a1;
                v135 = *(*a1 + 4);
                if (*(*a1 + 3) - v135 > 0xCuLL)
                {
                  qmemcpy(v135, "<<NULL TYPE>>", 13);
                  *(v134 + 4) += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v134, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              if (!mlir::UnrankedMemRefType::getMemorySpace(&Layout))
              {
                goto LABEL_290;
              }

              v147 = *a1;
              v148 = *(*a1 + 4);
              if (*(*a1 + 3) - v148 > 1uLL)
              {
                *v148 = 8236;
                *(v147 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v147, ", ", 2uLL);
              }

              MemorySpace = mlir::UnrankedMemRefType::getMemorySpace(&Layout);
              if (MemorySpace)
              {
LABEL_271:
                v146 = MemorySpace;
                if ((sub_1000AEDE4(a1[1] + 18, MemorySpace, *a1) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printAttributeImpl(a1, v146, 1);
                }

                goto LABEL_290;
              }

LABEL_286:
              v111 = *a1;
              v149 = *(*a1 + 4);
              if ((*(*a1 + 3) - v149) <= 0x11)
              {
                llvm::raw_ostream::write(v111, "<<NULL ATTRIBUTE>>", 0x12uLL);
                goto LABEL_290;
              }

              *(v149 + 16) = 15934;
              *v149 = *"<<NULL ATTRIBUTE>>";
              v113 = *(v111 + 4) + 18;
LABEL_289:
              *(v111 + 4) = v113;
LABEL_290:
              v150 = *a1;
              v151 = *(*a1 + 4);
              if (v151 >= *(*a1 + 3))
              {
                llvm::raw_ostream::write(v150, 62);
              }

              else
              {
                *(v150 + 4) = v151 + 1;
                *v151 = 62;
              }

              return;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
            {
              Layout = a2;
              v118 = *a1;
              v119 = *(*a1 + 4);
              if (*(*a1 + 3) - v119 > 7uLL)
              {
                *v119 = 0x3C78656C706D6F63;
                *(v118 + 4) += 8;
              }

              else
              {
                llvm::raw_ostream::write(v118, "complex<", 8uLL);
              }

              ElementType = mlir::ComplexType::getElementType(&Layout);
              if (!ElementType)
              {
                goto LABEL_219;
              }

              goto LABEL_160;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
            {
              Layout = a2;
              v130 = *a1;
              v131 = *(*a1 + 4);
              if ((*(*a1 + 3) - v131) > 5)
              {
                *(v131 + 4) = 15461;
                *v131 = 1819309428;
                *(v130 + 4) += 6;
              }

              else
              {
                llvm::raw_ostream::write(v130, "tuple<", 6uLL);
              }

              Types = mlir::TupleType::getTypes(&Layout);
              if (v153)
              {
                v154 = Types;
                v155 = v153;
                v156 = *a1;
                v157 = *Types;
                if (*Types)
                {
                  if ((mlir::AsmPrinter::Impl::printAlias(a1, v157) & 1) == 0)
                  {
                    mlir::AsmPrinter::Impl::printTypeImpl(a1, v157);
                  }
                }

                else
                {
                  v158 = *(v156 + 4);
                  if (*(v156 + 3) - v158 > 0xCuLL)
                  {
                    qmemcpy(v158, "<<NULL TYPE>>", 13);
                    *(v156 + 4) += 13;
                  }

                  else
                  {
                    llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                  }
                }

                if (v155 != 1)
                {
                  v159 = v154 + 1;
                  v160 = 8 * v155 - 8;
                  do
                  {
                    v161 = *(v156 + 4);
                    if (*(v156 + 3) - v161 > 1uLL)
                    {
                      *v161 = 8236;
                      *(v156 + 4) += 2;
                    }

                    else
                    {
                      llvm::raw_ostream::write(v156, ", ", 2uLL);
                    }

                    v162 = *v159;
                    if (*v159)
                    {
                      if ((mlir::AsmPrinter::Impl::printAlias(a1, *v159) & 1) == 0)
                      {
                        mlir::AsmPrinter::Impl::printTypeImpl(a1, v162);
                      }
                    }

                    else
                    {
                      v163 = *a1;
                      v164 = *(*a1 + 4);
                      if (*(*a1 + 3) - v164 > 0xCuLL)
                      {
                        qmemcpy(v164, "<<NULL TYPE>>", 13);
                        *(v163 + 4) += 13;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v163, "<<NULL TYPE>>", 0xDuLL);
                      }
                    }

                    ++v159;
                    v160 -= 8;
                  }

                  while (v160);
                }
              }

              goto LABEL_290;
            }

            if (v2 != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
            {

              mlir::AsmPrinter::Impl::printDialectType(a1, a2);
              return;
            }

            v12 = *a1;
            v25 = *(*a1 + 4);
            if (*(*a1 + 3) - v25 <= 3uLL)
            {
              v14 = "none";
              v15 = 4;
              goto LABEL_38;
            }

            v27 = 1701736302;
            goto LABEL_83;
          }

          Layout = a2;
          if (mlir::IntegerType::getSignedness(&Layout) == 1)
          {
            v29 = *a1;
            v30 = *(*a1 + 4);
            if (v30 < *(*a1 + 3))
            {
              *(v29 + 4) = v30 + 1;
              v31 = 115;
LABEL_105:
              *v30 = v31;
              goto LABEL_143;
            }

            v45 = 115;
          }

          else
          {
            if (mlir::IntegerType::getSignedness(&Layout) != 2)
            {
LABEL_143:
              v61 = *a1;
              v62 = *(v61 + 4);
              if (v62 >= *(v61 + 3))
              {
                v61 = llvm::raw_ostream::write(v61, 105);
              }

              else
              {
                *(v61 + 4) = v62 + 1;
                *v62 = 105;
              }

              Width = mlir::IntegerType::getWidth(&Layout);
              llvm::raw_ostream::operator<<(v61, Width);
              return;
            }

            v29 = *a1;
            v30 = *(*a1 + 4);
            if (v30 < *(*a1 + 3))
            {
              *(v29 + 4) = v30 + 1;
              v31 = 117;
              goto LABEL_105;
            }

            v45 = 117;
          }

          llvm::raw_ostream::write(v29, v45);
          goto LABEL_143;
        }

        v12 = *a1;
        v25 = *(v12 + 4);
        if (*(v12 + 3) - v25 <= 3uLL)
        {
          v14 = "f128";
          v15 = 4;
          goto LABEL_38;
        }

        v27 = 942813542;
LABEL_83:
        *v25 = v27;
        v17 = *(v12 + 4) + 4;
        goto LABEL_46;
      }

      v12 = *a1;
      v26 = *(v12 + 4);
      if ((*(v12 + 3) - v26) <= 2)
      {
        v14 = "f80";
        v15 = 3;
        goto LABEL_38;
      }

      *(v26 + 2) = 48;
      v28 = 14438;
LABEL_93:
      *v26 = v28;
      v17 = *(v12 + 4) + 3;
      goto LABEL_46;
    }

    v12 = *a1;
    v26 = *(v12 + 4);
    if ((*(v12 + 3) - v26) > 2)
    {
      *(v26 + 2) = 52;
      v28 = 13926;
      goto LABEL_93;
    }

    v14 = "f64";
    v15 = 3;
  }

LABEL_38:

  llvm::raw_ostream::write(v12, v14, v15);
}