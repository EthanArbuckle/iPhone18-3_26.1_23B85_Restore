void sub_1000F3A08(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F3C7C(void *result)
{
  *result = off_1002D6B38;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F3CD4(void *a1)
{
  *a1 = off_1002D6B38;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F3E08(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6B38;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000F3EAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F3EC4(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F3F0C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000F3F74(uint64_t result)
{
  *result = off_1002D6B80;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F402C(uint64_t a1)
{
  *a1 = off_1002D6B80;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F4210(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000F426C(v4);
}

uint64_t sub_1000F426C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F43BC(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F47B0(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000F43BC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E6C90(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F47B0(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F4A24(void *result)
{
  *result = off_1002D6BB0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F4A7C(void *a1)
{
  *a1 = off_1002D6BB0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F4BC0(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6BB0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000F4C74(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F4C8C(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F4CD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + v8);
}

uint64_t sub_1000F4D3C(uint64_t result)
{
  *result = off_1002D6BF8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F4DF4(uint64_t a1)
{
  *a1 = off_1002D6BF8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F4FD8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000F5034(v4);
}

uint64_t sub_1000F5034@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F5270(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F5664(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000F5184(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0808, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029BEF0();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E0800 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F5EE8(a1, a3);
    return;
  }

  if (qword_1002E0800 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0830, memory_order_acquire))
  {
    if (qword_1002E0828 != a2)
    {
LABEL_5:

      sub_1000F6DF8(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029D184();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0828 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F6CA8(a1, a3);
}

uint64_t sub_1000F5270@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E6F80(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F5664(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F58D8(void *result)
{
  *result = off_1002D6C28;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F5930(void *a1)
{
  *a1 = off_1002D6C28;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F5A74(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6C28;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void sub_1000F5B28(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F5B40(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F5B88(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t sub_1000F5BF0(uint64_t result)
{
  *result = off_1002D6C70;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F5CA8(uint64_t a1)
{
  *a1 = off_1002D6C70;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F5E8C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000F5EE8(v4);
}

uint64_t sub_1000F5EE8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F6038(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F642C(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000F6038@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E7270(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F642C(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F66A0(void *result)
{
  *result = off_1002D6CA0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F66F8(void *a1)
{
  *a1 = off_1002D6CA0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F6838(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6CA0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000F68E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F6900(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F6948(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 4 * v8);
}

uint64_t sub_1000F69B0(uint64_t result)
{
  *result = off_1002D6CE8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F6A68(uint64_t a1)
{
  *a1 = off_1002D6CE8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F6C4C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000F6CA8(v4);
}

uint64_t sub_1000F6CA8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F6EE4(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F72D8(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000F6DF8(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E07E0, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029BE4C();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E07D8 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F5034(a1, a3);
    return;
  }

  if (qword_1002E07D8 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0740, memory_order_acquire))
  {
    if (qword_1002E0738 != a2)
    {
LABEL_5:

      sub_1000F7B3C(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029BBB4();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0738 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F1764(a1, a3);
}

uint64_t sub_1000F6EE4@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E7560(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F72D8(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F754C(void *result)
{
  *result = off_1002D6D18;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F75A4(void *a1)
{
  *a1 = off_1002D6D18;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F76D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6D18;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000F777C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F7794(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F77DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000F7844(uint64_t result)
{
  *result = off_1002D6D60;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F78FC(uint64_t a1)
{
  *a1 = off_1002D6D60;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F7AE0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000F7B3C(v4);
}

void sub_1000F7B3C(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0808, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029BEF0();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E0800 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F5EE8(a1, a3);
    return;
  }

  if (qword_1002E0800 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0768, memory_order_acquire))
  {
    if (qword_1002E0760 != a2)
    {
LABEL_5:

      sub_1000F7C28(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029BC58();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0760 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F2618(a1, a3);
}

void sub_1000F7C28(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0858, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029D1D8();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E0850 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F7D14(a1, a3);
    return;
  }

  if (qword_1002E0850 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0880, memory_order_acquire))
  {
    if (qword_1002E0878 != a2)
    {
LABEL_5:

      sub_1000F8C0C(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029D22C();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0878 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F8ABC(a1, a3);
}

uint64_t sub_1000F7D14@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F7E64(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F8258(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000F7E64@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E7560(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F8258(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F84CC(void *result)
{
  *result = off_1002D6D90;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F8524(void *a1)
{
  *a1 = off_1002D6D90;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F8658(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6D90;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000F86FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F8714(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F875C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000F87C4(uint64_t result)
{
  *result = off_1002D6DD8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F887C(uint64_t a1)
{
  *a1 = off_1002D6DD8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F8A60(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000F8ABC(v4);
}

uint64_t sub_1000F8ABC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F8CF8(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F90EC(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000F8C0C(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0B00, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029CB64();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E0AF8 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F9950(a1, a3);
    return;
  }

  if (qword_1002E0AF8 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E08A8, memory_order_acquire))
  {
    if (qword_1002E08A0 != a2)
    {
LABEL_5:

      sub_1000FAC40(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029D280();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E08A0 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000FAAF0(a1, a3);
}

uint64_t sub_1000F8CF8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DFDB8(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F90EC(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F9360(void *result)
{
  *result = off_1002D6E08;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F93B8(void *a1)
{
  *a1 = off_1002D6E08;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F94EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6E08;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000F9590(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F95A8(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F95F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000F9658(uint64_t result)
{
  *result = off_1002D6E50;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F9710(uint64_t a1)
{
  *a1 = off_1002D6E50;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F98F4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000F9950(v4);
}

unint64_t sub_1000F9950@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F9AA0(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F9F84(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

unint64_t sub_1000F9AA0@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1000FA1F8(a1, &v7);
  v11[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetComplexIntValues(v11, v13);
  if (v14)
  {
    v12[0] = *(v13 + 1);
    *(v12 + 15) = v13[1];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    v8 = 0;
    v10 = 0;
    v11[3] = 0;
    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      operator delete[]();
    }
  }

  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_1000F9F84(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

uint64_t sub_1000FA1F8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1000DE9D4(a1);
  result = mlir::IntegerType::getWidth(&v6);
  v5 = result;
  if (result > 0x40)
  {
    llvm::APInt::initSlowCase(&v4);
  }

  v4 = 0;
  *(a2 + 8) = result;
  *a2 = 0;
  *(a2 + 24) = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1000FA2E8(uint64_t a1)
{
  *a1 = off_1002D6E80;
  if (*(a1 + 88) >= 0x41u && *(a1 + 80))
  {
    operator delete[]();
  }

  if (*(a1 + 72) >= 0x41u && *(a1 + 64))
  {
    operator delete[]();
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000FA388(uint64_t a1)
{
  *a1 = off_1002D6E80;
  if (*(a1 + 88) >= 0x41u && *(a1 + 80))
  {
    operator delete[]();
  }

  if (*(a1 + 72) >= 0x41u && *(a1 + 64))
  {
    operator delete[]();
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_1000FA4A8(uint64_t a1)
{
  if (*(a1 + 88) >= 0x41u && *(a1 + 80))
  {
    operator delete[]();
  }

  if (*(a1 + 72) >= 0x41u && *(a1 + 64))
  {
    operator delete[]();
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;

    operator delete(v2);
  }
}

void sub_1000FA540(_DWORD *__p)
{
  if (__p[22] >= 0x41u && *(__p + 10))
  {
    operator delete[]();
  }

  if (__p[18] >= 0x41u && *(__p + 8))
  {
    operator delete[]();
  }

  v2 = *(__p + 1);
  if (v2)
  {
    *(__p + 2) = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t *sub_1000FA5D4@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = result[1];
  v4 = result[2] - v3;
  if ((v4 & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    v6 = -(v4 >> 3);
    while (1)
    {
      v7 = *v3++;
      if (v7 == *a2)
      {
        break;
      }

      if (v6 == --v5)
      {
        goto LABEL_5;
      }
    }

    v11 = *(result + 2);
    v10 = result[7];
    v12 = result[6] - v5;
    v13 = v10;
    return mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v11, a3);
  }

  else
  {
LABEL_5:
    v8 = *(result + 18);
    a3[2] = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(a3, (result + 8));
    }

    *a3 = result[8];
    v9 = *(result + 22);
    a3[6] = v9;
    if (v9 > 0x40)
    {

      llvm::APInt::initSlowCase((a3 + 4), (result + 10));
    }

    *(a3 + 2) = result[10];
  }

  return result;
}

uint64_t sub_1000FA6DC(uint64_t result, uint64_t a2)
{
  *result = off_1002D6E80;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  v3 = *(a2 + 40);
  *(result + 32) = *(a2 + 24);
  *(result + 48) = v3;
  v4 = *(a2 + 64);
  *(result + 72) = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase((result + 64), (a2 + 56));
  }

  *(result + 64) = *(a2 + 56);
  v5 = *(a2 + 80);
  *(result + 88) = v5;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase((result + 80), (a2 + 72));
  }

  *(result + 80) = *(a2 + 72);
  return result;
}

uint64_t sub_1000FA7F8(uint64_t result)
{
  *result = off_1002D6EC8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FA8B0(uint64_t a1)
{
  *a1 = off_1002D6EC8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FAA94(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000FAAF0(v4);
}

uint64_t sub_1000FAAF0@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FAD2C(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000FB120(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000FAC40(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E08D0, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029D2D4();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E08C8 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000FB9A4(a1, a3);
    return;
  }

  if (qword_1002E08C8 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E08F8, memory_order_acquire))
  {
    if (qword_1002E08F0 != a2)
    {
LABEL_5:

      sub_1000FC8B4(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029D328();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E08F0 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000FC764(a1, a3);
}

uint64_t sub_1000FAD2C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E8130(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000FB120(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000FB394(void *result)
{
  *result = off_1002D6EF8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000FB3EC(void *a1)
{
  *a1 = off_1002D6EF8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000FB530(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6EF8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void sub_1000FB5E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000FB5FC(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000FB644(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t sub_1000FB6AC(uint64_t result)
{
  *result = off_1002D6F40;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FB764(uint64_t a1)
{
  *a1 = off_1002D6F40;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FB948(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000FB9A4(v4);
}

uint64_t sub_1000FB9A4@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FBAF4(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000FBEE8(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000FBAF4@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E842C(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000FBEE8(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000FC15C(void *result)
{
  *result = off_1002D6F70;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000FC1B4(void *a1)
{
  *a1 = off_1002D6F70;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000FC2F4(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6F70;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000FC3A4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000FC3BC(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000FC404(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 4 * v8);
}

uint64_t sub_1000FC46C(uint64_t result)
{
  *result = off_1002D6FB8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FC524(uint64_t a1)
{
  *a1 = off_1002D6FB8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FC708(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000FC764(v4);
}

uint64_t sub_1000FC764@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FC9A0(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000FCD94(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000FC8B4(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0920, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029D37C();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E0918 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000FD5F8(a1, a3);
    return;
  }

  if (qword_1002E0918 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0948, memory_order_acquire))
  {
    if (qword_1002E0940 != a2)
    {
LABEL_5:

      sub_1000FE514(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029D3D0();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0940 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000FE3C4(a1, a3);
}

uint64_t sub_1000FC9A0@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E8728(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000FCD94(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000FD008(void *result)
{
  *result = off_1002D6FE8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000FD060(void *a1)
{
  *a1 = off_1002D6FE8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000FD194(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6FE8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000FD238(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000FD250(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000FD298(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000FD300(uint64_t result)
{
  *result = off_1002D7030;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FD3B8(uint64_t a1)
{
  *a1 = off_1002D7030;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FD59C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000FD5F8(v4);
}

uint64_t sub_1000FD5F8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FD748(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000FDB40(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000FD748@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E8A24(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000FDB40(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000FDDB4(void *result)
{
  *result = off_1002D7060;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000FDE0C(void *a1)
{
  *a1 = off_1002D7060;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000FDF48(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D7060;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000FDFF4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000FE00C(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000FE054(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v9 = 0;
    }

    v10 = (*(a1 + 32) + 16 * v9);
    v11 = v10[1];
    return *v10;
  }

  else
  {
LABEL_5:
    v7 = *(a1 + 64);
    return *(a1 + 56);
  }
}

uint64_t sub_1000FE0CC(uint64_t result)
{
  *result = off_1002D70A8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FE184(uint64_t a1)
{
  *a1 = off_1002D70A8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FE368(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000FE3C4(v4);
}

uint64_t sub_1000FE3C4@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FE600(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000FE9F4(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000FE514(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0970, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029D424();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E0968 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000FF278(a1, a3);
    return;
  }

  if (qword_1002E0968 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0998, memory_order_acquire))
  {
    if (qword_1002E0990 != a2)
    {
LABEL_5:

      sub_100100188(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029D478();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0990 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_100100038(a1, a3);
}

uint64_t sub_1000FE600@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E8D20(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000FE9F4(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000FEC68(void *result)
{
  *result = off_1002D70D8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000FECC0(void *a1)
{
  *a1 = off_1002D70D8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000FEE04(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D70D8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void sub_1000FEEB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000FEED0(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000FEF18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t sub_1000FEF80(uint64_t result)
{
  *result = off_1002D7120;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FF038(uint64_t a1)
{
  *a1 = off_1002D7120;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FF21C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000FF278(v4);
}

uint64_t sub_1000FF278@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FF3C8(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000FF7BC(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000FF3C8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E901C(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000FF7BC(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000FFA30(void *result)
{
  *result = off_1002D7150;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000FFA88(void *a1)
{
  *a1 = off_1002D7150;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000FFBC8(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D7150;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000FFC78(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000FFC90(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000FFCD8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 4 * v8);
}

uint64_t sub_1000FFD40(uint64_t result)
{
  *result = off_1002D7198;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FFDF8(uint64_t a1)
{
  *a1 = off_1002D7198;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FFFDC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_100100038(v4);
}

uint64_t sub_100100038@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100100274(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_100100668(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_100100188(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E09C0, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029D4CC();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E09B8 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_100100ECC(a1, a3);
    return;
  }

  if (qword_1002E09B8 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0B28, memory_order_acquire))
  {
    if (qword_1002E0B20 != a2)
    {
LABEL_5:

      sub_100101DE8(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029CC0C();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0B20 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_100101C98(a1, a3);
}

uint64_t sub_100100274@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E9318(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_100100668(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1001008DC(void *result)
{
  *result = off_1002D71C8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_100100934(void *a1)
{
  *a1 = off_1002D71C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_100100A68(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D71C8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_100100B0C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_100100B24(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_100100B6C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_100100BD4(uint64_t result)
{
  *result = off_1002D7210;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_100100C8C(uint64_t a1)
{
  *a1 = off_1002D7210;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_100100E70(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_100100ECC(v4);
}

uint64_t sub_100100ECC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10010101C(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_100101414(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_10010101C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E95C8(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_100101414(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_100101688(void *result)
{
  *result = off_1002D7240;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1001016E0(void *a1)
{
  *a1 = off_1002D7240;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_10010181C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D7240;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1001018C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1001018E0(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_100101928(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v9 = 0;
    }

    v10 = (*(a1 + 32) + 16 * v9);
    v11 = v10[1];
    return *v10;
  }

  else
  {
LABEL_5:
    v7 = *(a1 + 64);
    return *(a1 + 56);
  }
}

uint64_t sub_1001019A0(uint64_t result)
{
  *result = off_1002D7288;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_100101A58(uint64_t a1)
{
  *a1 = off_1002D7288;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_100101C3C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_100101C98(v4);
}

void sub_100101C98(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100101ED4(a1, v6);
  if (v7 == 1)
  {
    v4 = sub_1000EBF4C(a1) == 1;
    sub_100102440(v4, v6, &v5);
  }

  *a2 = 0;
  a2[16] = 0;
}

void sub_100101DE8(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E09E8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029C6CC();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E09E0 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_100102EE0(a1, a3);
    return;
  }

  if (qword_1002E09E0 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0A10, memory_order_acquire))
  {
    if (qword_1002E0A08 != a2)
    {
LABEL_5:

      sub_100103DFC(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029C720();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0A08 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_100103CAC(a1, a3);
}

void sub_100101ED4(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  mlir::SparseElementsAttr::getZeroAPFloat(a1, &v20);
  v17[0] = *(*a1 + 32);
  FloatValues = mlir::DenseElementsAttr::tryGetFloatValues(v17, v21);
  if (v23)
  {
    v5 = v21[0];
    v18 = *&v21[1];
    *v19 = *v22;
    *&v19[15] = *&v22[15];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v9);
    __p[1] = 0;
    v12 = 0;
    __p[0] = 0;
    if (v10 != v9)
    {
      if (((v10 - v9) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    v13 = v5;
    v14 = v18;
    *v15 = *v19;
    *&v15[15] = *&v19[15];
    v7 = v20.n128_u64[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v6) == v7)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, &v20);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(v16, &v20);
    }

    v17[3] = 0;
    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  v8 = llvm::APFloatBase::PPCDoubleDouble(FloatValues);
  if (v8 == v20.n128_u64[0])
  {
    sub_10002B154(&v20);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v20);
  }
}

void sub_100102440(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1001026B4(void *a1)
{
  *a1 = off_1002D72B8;
  v2 = (a1 + 9);
  v3 = a1[9];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {
    sub_10002B154(v2);
    v4 = a1[1];
    if (!v4)
    {
      return a1;
    }

    goto LABEL_3;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(v2);
  v4 = a1[1];
  if (v4)
  {
LABEL_3:
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_10010273C(void *a1)
{
  *a1 = off_1002D72B8;
  v2 = (a1 + 9);
  v3 = a1[9];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {
    sub_10002B154(v2);
    v4 = a1[1];
    if (!v4)
    {
LABEL_4:

      operator delete();
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  a1[2] = v4;
  operator delete(v4);
  goto LABEL_4;
}

void *sub_1001028F0(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D72B8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  v8 = *(a1 + 72);
  v7 = (a1 + 72);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v8)
  {

    return llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 72), v7);
  }

  else
  {

    return llvm::detail::IEEEFloat::IEEEFloat((a2 + 72), v7);
  }
}

void sub_1001029F0(void *a1)
{
  v2 = (a1 + 9);
  v3 = a1[9];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {
    sub_10002B154(v2);
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  a1[2] = v4;

  operator delete(v4);
}

void sub_100102A70(void *a1)
{
  v2 = (a1 + 9);
  v3 = a1[9];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_10002B154(v2);
  v4 = a1[1];
  if (v4)
  {
LABEL_3:
    a1[2] = v4;
    operator delete(v4);
  }

LABEL_4:

  operator delete(a1);
}

const llvm::APInt *sub_100102AEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, llvm::detail::IEEEFloat *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) - v4;
  if ((v5 & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = -(v5 >> 3);
    while (1)
    {
      v8 = *v4++;
      if (v8 == *a2)
      {
        break;
      }

      if (v7 == --v6)
      {
        goto LABEL_5;
      }
    }

    v13 = *(a1 + 32);
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    v14 = v12 - v6;
    return sub_1000DC190(&v13, a3);
  }

  else
  {
LABEL_5:
    v9 = (a1 + 72);
    v10 = *(a1 + 72);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v10)
    {

      return llvm::detail::DoubleAPFloat::DoubleAPFloat(a3, v9);
    }

    else
    {

      return llvm::detail::IEEEFloat::IEEEFloat(a3, v9);
    }
  }
}

uint64_t sub_100102BE8(uint64_t result)
{
  *result = off_1002D7300;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_100102CA0(uint64_t a1)
{
  *a1 = off_1002D7300;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_100102E84(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_100102EE0(v4);
}

uint64_t sub_100102EE0@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100103030(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_100103430(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_100103030@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*a1 + 32);
  v13[0] = *(v4 + 8);
  ElementType = mlir::ShapedType::getElementType(v13);
  result = sub_1000DDEF8(ElementType, 4, 0, 1u);
  if (result)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 24);
    v13[0] = *(v4 + 8);
    Shape = mlir::ShapedType::getShape(v13);
    mlir::ShapedType::getNumElements(Shape, v10);
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v12 != __p)
    {
      if (((v12 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_100103430(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1001036A4(void *result)
{
  *result = off_1002D7330;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1001036FC(void *a1)
{
  *a1 = off_1002D7330;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_10010383C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D7330;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void sub_1001038EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_100103904(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

float sub_10010394C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 4 * v8);
}

uint64_t sub_1001039B4(uint64_t result)
{
  *result = off_1002D7378;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_100103A6C(uint64_t a1)
{
  *a1 = off_1002D7378;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_100103C50(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_100103CAC(v4);
}

uint64_t sub_100103CAC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100103EE8(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1001042E8(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_100103DFC(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0B50, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029CCB4();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E0B48 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_100104B4C(a1, a3);
    return;
  }

  if (qword_1002E0B48 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0A38, memory_order_acquire))
  {
    if (qword_1002E0A30 != a2)
    {
LABEL_5:

      sub_10010610C(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029C81C();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0A30 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_100105FBC(a1, a3);
}

uint64_t sub_100103EE8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*a1 + 32);
  v13[0] = *(v4 + 8);
  ElementType = mlir::ShapedType::getElementType(v13);
  result = sub_1000DDEF8(ElementType, 8, 0, 1u);
  if (result)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 24);
    v13[0] = *(v4 + 8);
    Shape = mlir::ShapedType::getShape(v13);
    mlir::ShapedType::getNumElements(Shape, v10);
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v12 != __p)
    {
      if (((v12 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1001042E8(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_10010455C(void *result)
{
  *result = off_1002D73A8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1001045B4(void *a1)
{
  *a1 = off_1002D73A8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1001046E8(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D73A8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_10010478C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1001047A4(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

double sub_1001047EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_100104854(uint64_t result)
{
  *result = off_1002D73F0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_10010490C(uint64_t a1)
{
  *a1 = off_1002D73F0;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_100104AF0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_100104B4C(v4);
}

void sub_100104B4C(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100104C9C(a1, v6);
  if (v7 == 1)
  {
    v4 = sub_1000EBF4C(a1) == 1;
    sub_1001051F8(v4, v6, &v5);
  }

  *a2 = 0;
  a2[16] = 0;
}

void sub_100104C9C(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10010546C(a1, &v23);
  v20[0] = *(*a1 + 32);
  ComplexFloatValues = mlir::DenseElementsAttr::tryGetComplexFloatValues(v20, v25);
  if (v27)
  {
    v5 = v25[0];
    v21 = *&v25[1];
    v22[0] = *v26;
    *(v22 + 15) = *&v26[15];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v10);
    v13 = 0;
    v14 = 0;
    __p = 0;
    if (v11 != v10)
    {
      if (((v11 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    v15 = v5;
    v16 = v21;
    *v17 = v22[0];
    *&v17[15] = *(v22 + 15);
    v7 = v23.n128_u64[0];
    v8 = llvm::APFloatBase::PPCDoubleDouble(v6);
    if (v8 == v7)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v18, &v23);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v18, &v23);
    }

    if (v8 == v24.n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v19, &v24);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v19, &v24);
    }

    sub_100105568(v20);
  }

  *a2 = 0;
  a2[48] = 0;
  v9 = llvm::APFloatBase::PPCDoubleDouble(ComplexFloatValues);
  if (v9 == v24.n128_u64[0])
  {
    sub_10002B154(&v24);
    if (v9 != v23.n128_u64[0])
    {
      goto LABEL_15;
    }

LABEL_18:
    sub_10002B154(&v23);
    return;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(&v24);
  if (v9 == v23.n128_u64[0])
  {
    goto LABEL_18;
  }

LABEL_15:
  llvm::detail::IEEEFloat::~IEEEFloat(&v23);
}

void sub_1001051F8(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void sub_10010546C(mlir::SparseElementsAttr *a1@<X0>, llvm::detail::IEEEFloat *a2@<X8>)
{
  ZeroAPFloat = mlir::SparseElementsAttr::getZeroAPFloat(a1, v7);
  v4 = v7[0];
  v5 = llvm::APFloatBase::PPCDoubleDouble(ZeroAPFloat);
  if (v5 != v4)
  {
    llvm::detail::IEEEFloat::IEEEFloat(a2, v7);
    v6 = (a2 + 24);
    if (v5 != v7[0])
    {
      goto LABEL_3;
    }

LABEL_7:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v6, v7);
    if (v5 != v7[0])
    {
      goto LABEL_4;
    }

LABEL_8:
    sub_10002B154(v7);
    return;
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(a2, v7);
  v6 = (a2 + 24);
  if (v5 == v7[0])
  {
    goto LABEL_7;
  }

LABEL_3:
  llvm::detail::IEEEFloat::IEEEFloat(v6, v7);
  if (v5 == v7[0])
  {
    goto LABEL_8;
  }

LABEL_4:
  llvm::detail::IEEEFloat::~IEEEFloat(v7);
}

void *sub_100105670(void *a1)
{
  *a1 = off_1002D7420;
  v2 = (a1 + 12);
  v3 = a1[12];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v5 = (a1 + 9);
    if (v4 != a1[9])
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_10002B154(v5);
    v6 = a1[1];
    if (!v6)
    {
      return a1;
    }

    goto LABEL_4;
  }

  sub_10002B154(v2);
  v5 = (a1 + 9);
  if (v4 == a1[9])
  {
    goto LABEL_7;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v5);
  v6 = a1[1];
  if (v6)
  {
LABEL_4:
    a1[2] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_100105724(void *a1)
{
  *a1 = off_1002D7420;
  v2 = (a1 + 12);
  v3 = a1[12];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 == v3)
  {
    sub_10002B154(v2);
    v5 = (a1 + 9);
    if (v4 != a1[9])
    {
LABEL_3:
      llvm::detail::IEEEFloat::~IEEEFloat(v5);
      v6 = a1[1];
      if (!v6)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v5 = (a1 + 9);
    if (v4 != a1[9])
    {
      goto LABEL_3;
    }
  }

  sub_10002B154(v5);
  v6 = a1[1];
  if (!v6)
  {
LABEL_5:

    operator delete();
  }

LABEL_4:
  a1[2] = v6;
  operator delete(v6);
  goto LABEL_5;
}

void sub_100105898(void *a1)
{
  v2 = (a1 + 12);
  v3 = a1[12];
  v4 = (a1 + 9);
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v5 != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v6 = v4;
    if (v5 != *v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_10002B154(v6);
    v7 = a1[1];
    if (!v7)
    {
      return;
    }

    goto LABEL_4;
  }

  sub_10002B154(v2);
  v6 = v4;
  if (v5 == *v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v6);
  v7 = a1[1];
  if (!v7)
  {
    return;
  }

LABEL_4:
  a1[2] = v7;

  operator delete(v7);
}

void sub_100105954(void *a1)
{
  v2 = (a1 + 12);
  v3 = a1[12];
  v4 = (a1 + 9);
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v5 == v3)
  {
    sub_10002B154(v2);
    v6 = v4;
    if (v5 != *v4)
    {
LABEL_3:
      llvm::detail::IEEEFloat::~IEEEFloat(v6);
      v7 = a1[1];
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v6 = v4;
    if (v5 != *v4)
    {
      goto LABEL_3;
    }
  }

  sub_10002B154(v6);
  v7 = a1[1];
  if (v7)
  {
LABEL_4:
    a1[2] = v7;
    operator delete(v7);
  }

LABEL_5:

  operator delete(a1);
}

uint64_t sub_100105A14(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  v7 = *(a2 + 64);
  v8 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 64), (a2 + 64));
    v9 = (a1 + 88);
    v10 = (a2 + 88);
    if (v8 != *(a2 + 88))
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((a1 + 64), (a2 + 64));
    v9 = (a1 + 88);
    v10 = (a2 + 88);
    if (v8 != *(a2 + 88))
    {
LABEL_6:
      llvm::detail::IEEEFloat::IEEEFloat(v9, v10);
      return a1;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v10);
  return a1;
}

void sub_100105B2C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = (*(a1 + 8) - *a1) >> 3;
  if (!v6)
  {
LABEL_5:
    v9 = *(a1 + 64);
    v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
    if (v10 == v9)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(a3, (a1 + 64));
      v11 = (a3 + 3);
      v12 = (a1 + 88);
      if (v10 != *(a1 + 88))
      {
        goto LABEL_7;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(a3, (a1 + 64));
      v11 = (a3 + 3);
      v12 = (a1 + 88);
      if (v10 != *(a1 + 88))
      {
LABEL_7:

        llvm::detail::IEEEFloat::IEEEFloat(v11, v12);
        return;
      }
    }

    llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v12);
    return;
  }

  v7 = 0;
  while (1)
  {
    v8 = *v5++;
    if (v8 == a2)
    {
      break;
    }

    --v7;
    LODWORD(v6) = v6 - 1;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v14 = *(a1 + 24);
  v13 = *(a1 + 40);
  v16 = *(a1 + 48);
  v15 = v13 - v7;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v14, &v17);
  sub_1000D25AC(&v17, &v14, a3);
  if (v20 >= 0x41 && v19)
  {
    operator delete[]();
  }

  if (v18 >= 0x41 && v17)
  {
    operator delete[]();
  }
}

uint64_t sub_100105CC4(uint64_t result)
{
  *result = off_1002D7468;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_100105D7C(uint64_t a1)
{
  *a1 = off_1002D7468;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_100105F60(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_100105FBC(v4);
}

uint64_t sub_100105FBC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001061F0(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1001065FC(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

mlir::SparseElementsAttr *sub_10010610C@<X0>(mlir::SparseElementsAttr *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0A60, memory_order_acquire))
  {
    if (qword_1002E0A58 != a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = a3;
    v3 = result;
    v5 = a2;
    sub_10029C870();
    result = v3;
    a2 = v5;
    a3 = v7;
    if (qword_1002E0A58 != v5)
    {
LABEL_3:
      if (atomic_load_explicit(&qword_1002E0BA0, memory_order_acquire))
      {
        if (qword_1002E0B98 != a2)
        {
LABEL_5:
          *a3 = 0;
          a3[16] = 0;
          return result;
        }
      }

      else
      {
        v8 = a3;
        v4 = result;
        v6 = a2;
        sub_10029CEFC();
        result = v4;
        a3 = v8;
        if (qword_1002E0B98 != v6)
        {
          goto LABEL_5;
        }
      }

      sub_100107C54(result);
    }
  }

  return sub_100106E70(result, a3);
}

uint64_t sub_1001061F0@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*a1 + 32);
  v13[0] = *(v4 + 8);
  *&v13[0] = mlir::ShapedType::getElementType(v13);
  ElementType = mlir::ComplexType::getElementType(v13);
  result = sub_1000DDEF8(ElementType, 4, 0, 1u);
  if (result)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 24);
    v13[0] = *(v4 + 8);
    Shape = mlir::ShapedType::getShape(v13);
    mlir::ShapedType::getNumElements(Shape, v10);
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v12 != __p)
    {
      if (((v12 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1001065FC(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_100106870(void *result)
{
  *result = off_1002D7498;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1001068C8(void *a1)
{
  *a1 = off_1002D7498;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1001069FC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D7498;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_100106AA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_100106AB8(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

float sub_100106B00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v9 = 0;
    }

    v10 = (*(a1 + 32) + 8 * v9);
    v11 = v10[1];
    return *v10;
  }

  else
  {
LABEL_5:
    v7 = *(a1 + 60);
    return *(a1 + 56);
  }
}

uint64_t sub_100106B78(uint64_t result)
{
  *result = off_1002D74E0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_100106C30(uint64_t a1)
{
  *a1 = off_1002D74E0;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_100106E14(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_100106E70(v4);
}

uint64_t sub_100106E70@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100106FC0(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1001073D0(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_100106FC0@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*a1 + 32);
  v13[0] = *(v4 + 8);
  *&v13[0] = mlir::ShapedType::getElementType(v13);
  ElementType = mlir::ComplexType::getElementType(v13);
  result = sub_1000DDEF8(ElementType, 8, 0, 1u);
  if (result)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 24);
    v13[0] = *(v4 + 8);
    Shape = mlir::ShapedType::getShape(v13);
    mlir::ShapedType::getNumElements(Shape, v10);
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v12 != __p)
    {
      if (((v12 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1001073D0(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_100107644(void *result)
{
  *result = off_1002D7510;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_10010769C(void *a1)
{
  *a1 = off_1002D7510;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1001077D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D7510;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_100107884(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_10010789C(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

double sub_1001078E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v9 = 0;
    }

    v10 = (*(a1 + 32) + 16 * v9);
    v11 = v10[1];
    return *v10;
  }

  else
  {
LABEL_5:
    v7 = *(a1 + 64);
    return *(a1 + 56);
  }
}

uint64_t sub_10010795C(uint64_t result)
{
  *result = off_1002D7558;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_100107A14(uint64_t a1)
{
  *a1 = off_1002D7558;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_100107BF8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_100107C54(v4);
}

void sub_100107DA4(mlir::SparseElementsAttr *a1)
{
  v2 = *(*a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  v9 = *(v2 + 8);
  Shape = mlir::ShapedType::getShape(&v9);
  mlir::ShapedType::getNumElements(Shape, v6);
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
  if (v8 != __p)
  {
    if (((v8 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  operator new();
}

void sub_100108178(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1001083EC(void *result)
{
  *result = off_1002D7588;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_100108444(void *a1)
{
  *a1 = off_1002D7588;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_100108580(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D7588;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_100003FC0();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_10010862C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_100108644(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_10010868C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v9 = 0;
    }

    v10 = (*(a1 + 32) + 16 * v9);
    v11 = v10[1];
    return *v10;
  }

  else
  {
LABEL_5:
    v7 = *(a1 + 64);
    return *(a1 + 56);
  }
}

uint64_t sub_100108704(uint64_t result)
{
  *result = off_1002D75D0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1001087BC(uint64_t a1)
{
  *a1 = off_1002D75D0;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1001089A0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1001089FC(v4);
}

uint64_t sub_100108A00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[3];
  v8 = a2[4];
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v6);
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v7);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v10, v8);
}

uint64_t sub_100108A58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return sub_100108A8C(a2, &v8, &v7);
}

uint64_t sub_100108A8C(void *a1, int64x2_t *a2, int64x2_t *a3)
{
  v24 = a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v22 = *a3;
  v23 = v7;
  v8 = sub_1000EC360(v3, v4, &v23, &v22);
  v10 = v9;
  if (v5)
  {
    v11 = v23.i64[0];
    v23 = vaddq_s64(v23, xmmword_1002B0E70);
    v5 = *v11;
  }

  if (v6)
  {
    v12 = v23.i64[0];
    v23 = vaddq_s64(v23, xmmword_1002B0E70);
    v6 = *v12;
  }

  mlir::Attribute::getContext(&v24);
  *&v25 = v8;
  *(&v25 + 1) = v10;
  Context = mlir::Type::getContext(&v25);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v26[1] = Context;
  v32[0] = sub_1000E2D08;
  v32[1] = v26;
  v29 = v25;
  v30 = v5;
  v31 = v6;
  v15 = (v5 >> 4) ^ (v5 >> 9);
  v16 = 0x9AE16A3B2F90404FLL * ((v6 >> 4) ^ (v6 >> 9));
  v17 = __ROR8__(0xB492B66FBE98F273 * ((v29 >> 4) ^ (v29 >> 9)) - v15, 43);
  v18 = __ROR8__(v16 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v15;
  v19 = __ROR8__(v15 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v16 - 0x4B6D499041670D8DLL * ((v29 >> 4) ^ (v29 >> 9)) + 24;
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * ((v18 + v17) ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v18 + v17) ^ v19)));
  v27[0] = &v29;
  v27[1] = v32;
  v28 = &v29;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v20 >> 47) ^ v20), sub_1000E2C00, &v28, sub_1000E2C48, v27);
}

void sub_100108C88(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100108DC4(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_100108F74;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_179;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100108FD8;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  *(a2 + 144) = "builtin.strided_layout";
  *(a2 + 152) = 22;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100108DC4(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = sub_100108E88;
  v2[1] = sub_100108EDC;
  v2[2] = sub_100108F3C;
  if ((atomic_load_explicit(&qword_1002E0538, memory_order_acquire) & 1) == 0)
  {
    v5 = v2;
    sub_100299A00();
    v3 = v5;
  }

  v4 = qword_1002E0530;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t sub_100108E88(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[1];
  Context = mlir::Attribute::getContext(&v7);
  return mlir::makeStridedLinearLayoutMap(v3, v2, v4, Context);
}

uint64_t sub_100108EDC(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[1];
  Context = mlir::Attribute::getContext(&v7);
  StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v3, v2, v4, Context);
  return mlir::AffineMap::isIdentity(&StridedLinearLayoutMap);
}

BOOL sub_100108F74(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0698, memory_order_acquire))
  {
    return qword_1002E0690 == a1;
  }

  sub_10029D520();
  return qword_1002E0690 == a1;
}

uint64_t sub_100108FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_10010900C(a2, &v8, &v7);
}

uint64_t sub_10010900C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v20 = a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v16 = *a3;
  v17 = *a2;
  sub_10010923C(&v18, &v30);
  Context = mlir::Attribute::getContext(&v20);
  v4 = v30;
  v26 = v30;
  v27 = v29;
  v28 = 0x600000000;
  v5 = v32;
  if (!v32)
  {
    v5 = 0;
    v8 = v29;
    goto LABEL_9;
  }

  if (v32 < 7)
  {
    v7 = v29;
    v6 = v32;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v32, 8);
  v6 = v32;
  if (v32)
  {
    v7 = v27;
LABEL_7:
    memcpy(v7, v31, 8 * v6);
  }

  LODWORD(v28) = v5;
  v4 = v26;
  v8 = v27;
LABEL_9:
  v9 = *v4;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  v21[1] = Context;
  v25[0] = sub_1000E3058;
  v25[1] = v21;
  v24[0] = v9;
  v24[1] = v8;
  v24[2] = v5;
  v11 = sub_10002D970(v8, &v8[v5]);
  v12 = __ROR8__(v11 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v12 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v12 ^ 0xFF51AFD7ED558CCDLL)));
  v22[0] = v24;
  v22[1] = v25;
  v23 = v24;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, (-348639895 * ((v13 >> 47) ^ v13)) ^ v11, sub_1000E2E30, &v23, sub_1000E2E90, v22);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v31 != &v33)
  {
    free(v31);
  }

  return ParametricStorageTypeImpl;
}

void sub_10010923C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100109374(*(a1 + 8), *(a1 + 16), &__src);
  v4 = (a2 + 24);
  *(a2 + 8) = a2 + 24;
  *a2 = a1;
  *(a2 + 16) = 0x600000000;
  v5 = __src;
  if ((a2 + 8) == &__src)
  {
    goto LABEL_12;
  }

  v6 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  if (__src == v12)
  {
    if (v10 < 7)
    {
      v8 = v10;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 8, (a2 + 24), v10, 8);
      v8 = v10;
      v5 = __src;
      if (!v10)
      {
LABEL_10:
        *(a2 + 16) = v6;
        goto LABEL_11;
      }

      v4 = *(a2 + 8);
    }

    memcpy(v4, v5, 8 * v8);
    v5 = __src;
    goto LABEL_10;
  }

  *(a2 + 8) = __src;
  v7 = v11;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  __src = v12;
  v11 = 0;
  v5 = v12;
LABEL_11:
  v10 = 0;
LABEL_12:
  if (v5 != v12)
  {
    free(v5);
  }
}

void sub_100109374(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __src = v16;
  v15 = 0x600000000;
  if (a2)
  {
    v3 = 8 * a2;
    do
    {
      while (1)
      {
        v4 = v15;
        if (v15 >= HIDWORD(v15))
        {
          break;
        }

        v5 = *a1++;
        *(__src + v15) = v5;
        LODWORD(v15) = v4 + 1;
        v3 -= 8;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v6 = a1;
      v7 = a3;
      sub_1000B562C(&__src, a1);
      a3 = v7;
      a1 = v6 + 1;
      v3 -= 8;
    }

    while (v3);
LABEL_7:
    v8 = v15;
    v9 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    if (v8 && &__src != a3)
    {
      if (v9 == v16)
      {
        v11 = v8;
        if (v8 < 7 || (v12 = a3, llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v8, 8), a3 = v12, v11 = v15, v9 = __src, v15))
        {
          v13 = a3;
          memcpy(*a3, v9, 8 * v11);
          a3 = v13;
          v9 = __src;
        }

        *(a3 + 8) = v8;
      }

      else
      {
        *a3 = v9;
        v10 = HIDWORD(v15);
        *(a3 + 8) = v8;
        *(a3 + 12) = v10;
        __src = v16;
        HIDWORD(v15) = 0;
        v9 = v16;
      }

      LODWORD(v15) = 0;
    }

    if (v9 != v16)
    {
      free(v9);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
  }
}

void sub_100109504(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = sub_1001096A4;
  {
    v10 = v4;
    sub_10029D04C();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000E4C5C(a2 + 8, &v14);
  }

  *(a2 + 72) = sub_1001096AC;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_180;
  *(a2 + 112) = &v12;
  *(a2 + 120) = sub_100109710;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  *(a2 + 144) = "builtin.string";
  *(a2 + 152) = 14;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL sub_1001096AC(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_10029CDB0();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t sub_100109720(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  result = mlir::AttrTypeImmediateSubElementWalker::walk(v12, v6);
  if (v8)
  {
    v10 = 8 * v8;
    do
    {
      v11 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v12, v11);
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_10010977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return sub_1001097B0(a2, v5);
}

uint64_t sub_1001097B0(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v3 = *a2;
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    --v2;
    v5 = *v3;
    v3 += 2;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (v2 >= *(a1 + 24))
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = v2;
  }

  mlir::Attribute::getContext(&v14);
  v15 = v4;
  Context = mlir::Attribute::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v16[1] = Context;
  v20[0] = sub_1000E3290;
  v20[1] = v16;
  v19[0] = v15;
  v19[1] = v3;
  v19[2] = v6;
  v9 = (v15 >> 4) ^ (v15 >> 9);
  v10 = sub_1000E0184(v3, &v3[2 * v6]);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, sub_1000E3068, &v18, sub_1000E30D0, v17);
}

uint64_t sub_100109914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_100109944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_100109978(a2, v8, v7);
}

uint64_t sub_100109978(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v8 = a1;
  if (*(a1 + 8))
  {
    v3 = **a3;
  }

  else
  {
    v3 = 0;
  }

  mlir::Attribute::getContext(&v8);
  v9 = v3;
  Context = mlir::Type::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v10[1] = Context;
  v14[0] = sub_1000E3360;
  v14[1] = v10;
  v13 = v9;
  v6 = 0x9DDFEA08EB382D69 * ((8 * ((v9 >> 4) ^ (v9 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = &v13;
  v11[1] = v14;
  v12 = &v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v6 >> 47) ^ 0xED558CCD))), sub_1000E32A0, &v12, sub_1000E32B8, v11);
}

void *sub_100109AA4(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  v2 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = v2 + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v2 = sub_10003E4AC(a2, 8, 8, 3);
    *v2 = 0;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return v2;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *v2 = 0;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], v2);
  }

  return v2;
}

void sub_100109B4C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1002E0670, memory_order_acquire) & 1) == 0)
  {
    sub_10029D574();
  }

  v2 = qword_1002E0668;
  sub_100109C98(a1, v12);
  mlir::Dialect::addAttribute(a1, v2, v12);
  v3 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v4 = v16;
      }

      else
      {
        v4 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1], v16[2]);
    }
  }

  v5 = v13;
  if (v14)
  {
    v6 = 16 * v14;
    v7 = (v13 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v13;
  }

  if (v5 != &v15)
  {
    free(v5);
  }

  v9 = *(a1 + 32);
  if ((atomic_load_explicit(&qword_1002E0670, memory_order_acquire) & 1) == 0)
  {
    v11 = v9;
    sub_10029B8F0();
    v9 = v11;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v9);
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_100109C98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v17, 0, sizeof(v17));
  v15 = v17;
  v16 = 0x300000000;
  *&v12 = sub_100109E54;
  v14 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  if ((atomic_load_explicit(&qword_1002E0670, memory_order_acquire) & 1) == 0)
  {
    v9 = a1;
    sub_10029B8F0();
    a1 = v9;
  }

  v3 = qword_1002E0668;
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v16)
  {
    sub_1000E4C5C(a2 + 8, &v15);
  }

  v4 = v14;
  *(a2 + 96) = v14;
  if (v4 >= 8)
  {
    if ((v4 & 2) != 0 && (v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 8))(a2 + 72, &v12);
      (*((*(a2 + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(&v12);
    }

    else
    {
      *(a2 + 72) = v12;
      *(a2 + 88) = v13;
    }
  }

  *(a2 + 104) = sub_100109E5C;
  *(a2 + 112) = &v11;
  *(a2 + 120) = sub_100109E8C;
  *(a2 + 128) = &v10;
  *(a2 + 136) = v3;
  *(a2 + 144) = "builtin.distinct";
  *(a2 + 152) = 16;
  v5 = v15;
  if (v16)
  {
    v6 = 16 * v16;
    v7 = (v15 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v15;
  }

  if (v5 != v17)
  {
    free(v5);
  }
}

uint64_t sub_100109E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

void *sub_100109E8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return sub_100109EC0(a2, v5);
}

void *sub_100109EC0(uint64_t a1, uint64_t **a2)
{
  v6 = a1;
  if (*(a1 + 8))
  {
    v2 = **a2;
  }

  else
  {
    v2 = 0;
  }

  Context = mlir::Attribute::getContext(&v6);
  Storage = mlir::detail::DistinctAttributeUniquer::allocateStorage(Context, v2);
  if ((atomic_load_explicit(&qword_1002E0670, memory_order_acquire) & 1) == 0)
  {
    sub_10029B8F0();
  }

  *Storage = mlir::AbstractAttribute::lookup(qword_1002E0668, Context);
  return Storage;
}

uint64_t sub_100109F48(uint64_t *a1, uint64_t *a2)
{
  if (mlir::NamedAttribute::operator<(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return mlir::NamedAttribute::operator<(a2, a1);
  }
}

unint64_t sub_100109F90(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    v82 = 0;
  }

  else
  {
    v2 = 0xBF58476D1CE4E5B9 * ((a1[2] >> 4) ^ (a1[2] >> 9) | (((*a1 >> 4) ^ (*a1 >> 9)) << 32));
    v3 = (v2 >> 31) ^ v2;
    *&v89 = v3;
    if (a1 + 4 == a2)
    {
      v82 = 8;
    }

    else
    {
      v4 = 0xBF58476D1CE4E5B9 * ((a1[6] >> 4) ^ (a1[6] >> 9) | (((a1[4] >> 4) ^ (a1[4] >> 9)) << 32));
      v5 = (v4 >> 31) ^ v4;
      *(&v89 + 1) = v5;
      if (a1 + 8 == a2)
      {
        v82 = 16;
      }

      else
      {
        v6 = 0xBF58476D1CE4E5B9 * ((a1[10] >> 4) ^ (a1[10] >> 9) | (((a1[8] >> 4) ^ (a1[8] >> 9)) << 32));
        v7 = (v6 >> 31) ^ v6;
        *&v90 = v7;
        if (a1 + 12 == a2)
        {
          v82 = 24;
        }

        else
        {
          v8 = 0xBF58476D1CE4E5B9 * ((a1[14] >> 4) ^ (a1[14] >> 9) | (((a1[12] >> 4) ^ (a1[12] >> 9)) << 32));
          v9 = (v8 >> 31) ^ v8;
          *(&v90 + 1) = v9;
          if (a1 + 16 == a2)
          {
            v82 = 32;
          }

          else
          {
            v10 = 0xBF58476D1CE4E5B9 * ((a1[18] >> 4) ^ (a1[18] >> 9) | (((a1[16] >> 4) ^ (a1[16] >> 9)) << 32));
            v11 = (v10 >> 31) ^ v10;
            *&v91 = v11;
            if (a1 + 20 == a2)
            {
              v82 = 40;
            }

            else
            {
              v12 = 0xBF58476D1CE4E5B9 * ((a1[22] >> 4) ^ (a1[22] >> 9) | (((a1[20] >> 4) ^ (a1[20] >> 9)) << 32));
              v13 = (v12 >> 31) ^ v12;
              *(&v91 + 1) = v13;
              if (a1 + 24 == a2)
              {
                v82 = 48;
              }

              else
              {
                v14 = 0xBF58476D1CE4E5B9 * ((a1[26] >> 4) ^ (a1[26] >> 9) | (((a1[24] >> 4) ^ (a1[24] >> 9)) << 32));
                v15 = (v14 >> 31) ^ v14;
                *&v92 = v15;
                if (a1 + 28 == a2)
                {
                  v82 = 56;
                }

                else
                {
                  v16 = 0xBF58476D1CE4E5B9 * ((a1[30] >> 4) ^ (a1[30] >> 9) | (((a1[28] >> 4) ^ (a1[28] >> 9)) << 32));
                  v17 = (v16 >> 31) ^ v16;
                  *(&v92 + 1) = v17;
                  v18 = a1 + 32;
                  if (a1 + 32 != a2)
                  {
                    v88 = &v90;
                    v19 = v11 + 0x4BF62CB950C3753ALL;
                    *(&v21 + 1) = v13 + v15 + v11 + 0x4BF62CB950C3753ALL;
                    *&v21 = 0x4BF62CB800000000;
                    v20 = v21 >> 44;
                    v22 = *(&v21 + 1) + v17;
                    *(&v21 + 1) = v15 + 0x61299596E4;
                    *&v21 = 0xBEB4006000000000;
                    v23 = v13 - 0x4B6D499041670D8DLL * (v21 >> 42) - 0x7323D61940A0DA1FLL;
                    v24 = v20 + v19 + __ROR8__(v23 + v7 + v19 + v17, 21);
                    v25 = v3 + 0x298DF016A9F64655 + v5 + v7 + v9;
                    *(&v21 + 1) = v3 + 0x298DF016A9F64655 + v5 + v7;
                    *&v21 = 0x298DF00000000000;
                    v26 = (v21 >> 44) + v3 + 0x298DF016A9F64655;
                    *(&v21 + 1) = v5 + 0x1EACB4B2AELL;
                    *&v21 = 0x8C2DD9BE00000000;
                    v27 = (0xB492B66FBE98F273 * (v21 >> 37)) ^ 0xF7ACCA5326449396;
                    v28 = v26 + __ROR8__(v27 + v3 + 0x298DF016A9F64655 + v9 - 0xAE502812AB8D92, 21);
                    v29 = 0x544962662A7EE1A4;
                    v30 = 64;
                    while (1)
                    {
                      v40 = 0xBF58476D1CE4E5B9 * ((v18[2] >> 4) ^ (v18[2] >> 9) | (((*v18 >> 4) ^ (*v18 >> 9)) << 32));
                      *&v89 = (v40 >> 31) ^ v40;
                      v41 = v18 + 4;
                      v42 = v18 + 4 == a2;
                      if (v18 + 4 == a2)
                      {
                        v50 = 0;
                        v51 = &v89 + 8;
                        v52 = 8;
                      }

                      else
                      {
                        v43 = 0xBF58476D1CE4E5B9 * ((v18[6] >> 4) ^ (v18[6] >> 9) | (((v18[4] >> 4) ^ (v18[4] >> 9)) << 32));
                        *(&v89 + 1) = (v43 >> 31) ^ v43;
                        v41 = v18 + 8;
                        v42 = v18 + 8 == a2;
                        if (v18 + 8 == a2)
                        {
                          v50 = 8;
                          v51 = v88;
                          v52 = 16;
                        }

                        else
                        {
                          v44 = 0xBF58476D1CE4E5B9 * ((v18[10] >> 4) ^ (v18[10] >> 9) | (((v18[8] >> 4) ^ (v18[8] >> 9)) << 32));
                          *&v90 = (v44 >> 31) ^ v44;
                          v41 = v18 + 12;
                          v42 = v18 + 12 == a2;
                          if (v18 + 12 == a2)
                          {
                            v50 = 16;
                            v51 = &v90 + 8;
                            v52 = 24;
                          }

                          else
                          {
                            v45 = 0xBF58476D1CE4E5B9 * ((v18[14] >> 4) ^ (v18[14] >> 9) | (((v18[12] >> 4) ^ (v18[12] >> 9)) << 32));
                            *(&v90 + 1) = (v45 >> 31) ^ v45;
                            v41 = v18 + 16;
                            v42 = v18 + 16 == a2;
                            if (v18 + 16 == a2)
                            {
                              v50 = 24;
                              v51 = &v91;
                              v52 = 32;
                            }

                            else
                            {
                              v46 = 0xBF58476D1CE4E5B9 * ((v18[18] >> 4) ^ (v18[18] >> 9) | (((v18[16] >> 4) ^ (v18[16] >> 9)) << 32));
                              *&v91 = (v46 >> 31) ^ v46;
                              v41 = v18 + 20;
                              v42 = v18 + 20 == a2;
                              if (v18 + 20 == a2)
                              {
                                v50 = 32;
                                v51 = &v91 + 8;
                                v52 = 40;
                              }

                              else
                              {
                                v47 = 0xBF58476D1CE4E5B9 * ((v18[22] >> 4) ^ (v18[22] >> 9) | (((v18[20] >> 4) ^ (v18[20] >> 9)) << 32));
                                *(&v91 + 1) = (v47 >> 31) ^ v47;
                                v41 = v18 + 24;
                                v42 = v18 + 24 == a2;
                                if (v18 + 24 == a2)
                                {
                                  v50 = 40;
                                  v51 = &v92;
                                  v52 = 48;
                                }

                                else
                                {
                                  v48 = 0xBF58476D1CE4E5B9 * ((v18[26] >> 4) ^ (v18[26] >> 9) | (((v18[24] >> 4) ^ (v18[24] >> 9)) << 32));
                                  *&v92 = (v48 >> 31) ^ v48;
                                  v41 = v18 + 28;
                                  v42 = v18 + 28 == a2;
                                  if (v18 + 28 != a2)
                                  {
                                    v49 = 0xBF58476D1CE4E5B9 * ((v18[30] >> 4) ^ (v18[30] >> 9) | (((v18[28] >> 4) ^ (v18[28] >> 9)) << 32));
                                    v18 += 32;
                                    *(&v92 + 1) = (v49 >> 31) ^ v49;
                                    v42 = v18 == a2;
                                    v50 = 56;
                                    v51 = &v93;
                                    v52 = 64;
                                    goto LABEL_28;
                                  }

                                  v50 = 48;
                                  v51 = &v92 + 8;
                                  v52 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v18 = v41;
LABEL_28:
                      if ((v52 & 0x38) != 0)
                      {
                        v53 = 56 - v50;
                        v54 = v52;
                        if (v52 != 56 - v50)
                        {
                          do
                          {
                            v61 = v54;
                            v54 = v53;
                            v53 = v61 % v53;
                          }

                          while (v53);
                          v62 = (&v89 + v54);
                          do
                          {
                            v64 = *(v62 - 1);
                            v62 = (v62 - 1);
                            v63 = v64;
                            v65 = (v62 + v52);
                            v66 = v62;
                            do
                            {
                              v67 = v66;
                              v66 = v65;
                              *v67 = *v65;
                              v68 = v52 < &v93 - v65;
                              v69 = &v89 + v52 - (&v93 - v65);
                              v65 = (v65 + v52);
                              if (!v68)
                              {
                                v65 = v69;
                              }
                            }

                            while (v65 != v62);
                            *v66 = v63;
                          }

                          while (v62 != &v89);
                          goto LABEL_11;
                        }

                        v55 = v50 | 7;
                        if (55 - v50 < (v50 | 7uLL))
                        {
                          v55 = 55 - v50;
                        }

                        v56 = &v89;
                        if (&v89 < (&v89 | 9) + v50 + v55)
                        {
                          v57 = v52;
                          if (v51 < &v89 + v55 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v55 >= 0x1F)
                        {
                          v71 = v55 + 1;
                          v70 = (v55 + 1) & 0x60;
                          v72 = v89;
                          v73 = v90;
                          v74 = *(v51 + 1);
                          v89 = *(&v89 + v52);
                          v90 = v74;
                          *(&v89 + v52) = v72;
                          *(v51 + 1) = v73;
                          if (v70 != 32)
                          {
                            v75 = v91;
                            v76 = v92;
                            v77 = *(v51 + 3);
                            v91 = *(v51 + 2);
                            v92 = v77;
                            *(v51 + 2) = v75;
                            *(v51 + 3) = v76;
                          }

                          if (v71 == v70)
                          {
                            goto LABEL_11;
                          }

                          if ((v71 & 0x18) == 0)
                          {
                            v56 = &v89 + v70;
                            v57 = v52 + v70;
LABEL_34:
                            v58 = v56 + 1;
                            do
                            {
                              v59 = *(v58 - 1);
                              *(v58 - 1) = *(&v89 + v57);
                              *(&v89 + v57) = v59;
                              if (v58 == v51)
                              {
                                break;
                              }

                              ++v58;
                            }

                            while (v57++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v70 = 0;
                        }

                        v78 = &v51[v70];
                        v79 = (&v89 + v70);
                        v80 = v55 - v70 + 1;
                        do
                        {
                          v81 = *v79;
                          *v79++ = *v78;
                          *v78 = v81;
                          v78 += 8;
                          v80 -= 8;
                        }

                        while (v80);
                      }

LABEL_11:
                      v31 = v23 + v25 + v29 + *(&v89 + 1);
                      v23 = *(&v91 + 1) + v25 - 0x4B6D499041670D8DLL * __ROR8__(v23 + v28 + v92, 42);
                      v32 = v27 + v22;
                      v33 = v89 - 0x4B6D499041670D8DLL * v28;
                      v34 = v22 + v33;
                      v35 = v33 + *(&v89 + 1) + v90;
                      v36 = __ROR8__(v35, 44) + v33;
                      v37 = __ROR8__(v32, 33);
                      v38 = (0xB492B66FBE98F273 * __ROR8__(v31, 37)) ^ v24;
                      v28 = v36 + __ROR8__(v38 + v34 + *(&v90 + 1), 21);
                      v29 = 0xB492B66FBE98F273 * v37;
                      v39 = 0xB492B66FBE98F273 * v37 + v24 + v91;
                      v25 = v35 + *(&v90 + 1);
                      v24 = __ROR8__(v23 + v90 + v39 + *(&v92 + 1), 21) + v39 + __ROR8__(*(&v91 + 1) + v92 + v39, 44);
                      v22 = *(&v91 + 1) + v92 + v39 + *(&v92 + 1);
                      v30 += v52;
                      v27 = v38;
                      if (v42)
                      {
                        v83 = 0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v22)));
                        v84 = 0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v28 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v28 ^ v24)));
                        v85 = 0x9DDFEA08EB382D69 * (v84 ^ (v84 >> 47)) - 0x4B6D499041670D8DLL * ((v30 ^ (v30 >> 47)) + v37);
                        v86 = 0x9DDFEA08EB382D69 * (v85 ^ (v38 - 0x4B6D499041670D8DLL * (v23 ^ (v23 >> 47)) - 0x622015F714C7D297 * (v83 ^ (v83 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v85 ^ (v86 >> 47) ^ v86)) ^ ((0x9DDFEA08EB382D69 * (v85 ^ (v86 >> 47) ^ v86)) >> 47));
                      }
                    }
                  }

                  v82 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_10002D6F8(&v89, v82, 0xFF51AFD7ED558CCDLL);
}

BOOL sub_10010A89C(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *sub_10010A8F4(uint64_t a1, unint64_t *a2)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    v3 = **a1;
    v4 = 16 * v2;
    a2[10] += 16 * v2;
    v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = v5 + 16 * v2;
    if (*a2)
    {
      v7 = v6 > a2[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_10003E4AC(a2, 16 * v2, 16 * v2, 3);
      a2 = v18;
      v5 = v19;
      a1 = v17;
    }

    else
    {
      *a2 = v6;
    }

    v8 = v5;
    do
    {
      v9 = *v3++;
      *v8++ = v9;
      v4 -= 16;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  a2[10] += 24;
  v10 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 + 3;
  if (*a2)
  {
    v12 = v11 > a2[1];
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v16 = a1;
    v10 = sub_10003E4AC(a2, 24, 24, 3);
    *v10 = 0;
    v10[1] = v5;
    v10[2] = v2;
    v13 = *(v16 + 8);
    v14 = *v13;
    if (!*v13)
    {
      return v10;
    }

    goto LABEL_16;
  }

  *a2 = v11;
  *v10 = 0;
  v10[1] = v5;
  v10[2] = v2;
  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13)
  {
LABEL_16:
    v14(*(v13 + 8), v10);
  }

  return v10;
}

BOOL sub_10010AA3C(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *sub_10010AA94(uint64_t a1, unint64_t *a2)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    v3 = **a1;
    v4 = 16 * v2;
    a2[10] += 16 * v2;
    v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = v5 + 16 * v2;
    if (*a2)
    {
      v7 = v6 > a2[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_10003E4AC(a2, 16 * v2, 16 * v2, 3);
      a2 = v18;
      v5 = v19;
      a1 = v17;
    }

    else
    {
      *a2 = v6;
    }

    v8 = v5;
    do
    {
      v9 = *v3++;
      *v8++ = v9;
      v4 -= 16;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  a2[10] += 24;
  v10 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 + 3;
  if (*a2)
  {
    v12 = v11 > a2[1];
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v16 = a1;
    v10 = sub_10003E4AC(a2, 24, 24, 3);
    *v10 = 0;
    v10[1] = v5;
    v10[2] = v2;
    v13 = *(v16 + 8);
    v14 = *v13;
    if (!*v13)
    {
      return v10;
    }

    goto LABEL_16;
  }

  *a2 = v11;
  *v10 = 0;
  v10[1] = v5;
  v10[2] = v2;
  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13)
  {
LABEL_16:
    v14(*(v13 + 8), v10);
  }

  return v10;
}

BOOL sub_10010ABDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *sub_10010AC4C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10010AC9C(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_10010AC9C(uint64_t *a1, void *a2)
{
  a1[10] += 40;
  v3 = *a1;
  v4 = a1[1];
  result = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = result + 5;
  if (v3)
  {
    v7 = v6 > v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v23 = a2;
    result = sub_10003E4AC(a1, 40, 40, 3);
    a2 = v23;
    v8 = v23[1];
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *a1 = v6;
    v8 = a2[1];
    if (v8)
    {
LABEL_6:
      v9 = *a2;
      v10 = v8 + 1;
      a1[10] += v8 + 1;
      v11 = *a1;
      if (*a1 && v10 + v11 <= a1[1])
      {
        *a1 = v10 + v11;
        if (v8 >= 8)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v24 = result;
        v25 = a1;
        v26 = a2;
        v27 = sub_10003E4AC(v25, v8 + 1, v10, 0);
        a2 = v26;
        v11 = v27;
        result = v24;
        if (v8 >= 8)
        {
LABEL_9:
          v12 = v11;
          v13 = v9;
          if ((v11 - v9) >= 0x20)
          {
            if (v8 < 0x20)
            {
              v14 = 0;
              goto LABEL_16;
            }

            v14 = v8 & 0xFFFFFFFFFFFFFFE0;
            v15 = (v9 + 16);
            v16 = (v11 + 16);
            v17 = v8 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v18 = *v15;
              *(v16 - 1) = *(v15 - 1);
              *v16 = v18;
              v15 += 2;
              v16 += 2;
              v17 -= 32;
            }

            while (v17);
            if (v8 == v14)
            {
              goto LABEL_26;
            }

            if ((v8 & 0x18) != 0)
            {
LABEL_16:
              v12 = (v11 + (v8 & 0xFFFFFFFFFFFFFFF8));
              v13 = (v9 + (v8 & 0xFFFFFFFFFFFFFFF8));
              v19 = (v9 + v14);
              v20 = (v11 + v14);
              v21 = v14 - (v8 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v22 = *v19++;
                *v20++ = v22;
                v21 += 8;
              }

              while (v21);
              if (v8 == (v8 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_26;
              }

              goto LABEL_25;
            }

            v13 = (v9 + v14);
            v12 = (v11 + v14);
          }

          do
          {
LABEL_25:
            v28 = *v13++;
            *v12++ = v28;
          }

          while (v13 != (v9 + v8));
LABEL_26:
          *(v11 + v8) = 0;
          goto LABEL_27;
        }
      }

      v12 = v11;
      v13 = v9;
      goto LABEL_25;
    }
  }

  v11 = 0;
LABEL_27:
  v29 = a2[2];
  *result = 0;
  result[1] = v29;
  result[2] = v11;
  result[3] = v8;
  result[4] = 0;
  return result;
}

void sub_10010AE54(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

BOOL sub_10010AE9C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *sub_10010AF0C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10010AC9C(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void sub_10010AF5C(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

BOOL sub_10010AFA4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *sub_10010B014(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10010AC9C(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void sub_10010B064(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

uint64_t sub_10010B0AC(uint64_t *a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v19 = *(a6 + 2);
  v9 = *a6;
  v17 = v8;
  v18 = v9;
  *(a6 + 2) = 0;
  v10 = (v8 >> 4) ^ (v8 >> 9);
  v11 = llvm::hash_value(&v18, a2);
  v12 = __ROR8__(v11 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ 0xFF51AFD7ED558CCDLL ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ 0xFF51AFD7ED558CCDLL ^ v10)));
  v15[0] = &v17;
  v15[1] = v20;
  v16 = &v17;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v13 >> 47) ^ v13)) ^ v11, sub_10010B1DC, &v16, sub_10010B224, v15);
  if (v19 >= 0x41)
  {
    if (v18)
    {
      operator delete[]();
    }
  }

  return result;
}

BOOL sub_10010B1DC(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 24) > 0x40u)
  {
    return llvm::APInt::equalSlowCase((a2 + 16), v2 + 1);
  }

  return *(a2 + 16) == v2[1];
}

unint64_t sub_10010B224(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, v5 + 32 > a2[1]))
  {
    v5 = sub_10003E4AC(a2, 32, 32, 3);
    *v5 = 0;
    *(v5 + 8) = v4;
    *(v5 + 24) = v2;
    *(v5 + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *a2 = v5 + 32;
  *v5 = 0;
  *(v5 + 8) = v4;
  *(v5 + 24) = v2;
  *(v5 + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], v5);
  }

  return v5;
}

uint64_t sub_10010B300(uint64_t a1, _DWORD *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v16[0] = a1;
  v5 = sub_10010B4E0(a1, a2, v16);
  if ((v5 & 0x100) == 0)
  {
    v14 = "expected integer value";
    v15 = 259;
    (*(*a1 + 24))(v16, a1, v4, &v14);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
    if (v16[0])
    {
      mlir::InFlightDiagnostic::report(v16);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v22;
        v8 = __p;
        if (v22 != __p)
        {
          do
          {
            v7 = sub_10005BEF4(v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v22 = v6;
        operator delete(v8);
      }

      v9 = v19;
      if (v19)
      {
        v10 = v20;
        v11 = v19;
        if (v20 != v19)
        {
          do
          {
            v12 = *--v10;
            *v10 = 0;
            if (v12)
            {
              operator delete[]();
            }
          }

          while (v10 != v9);
          v11 = v19;
        }

        v20 = v9;
        operator delete(v11);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v5;
}

uint64_t sub_10010B4E0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v27 = 1;
  v26 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v12 = BYTE1(v7);
    return v7 | (v12 << 8);
  }

  llvm::APInt::sextOrTrunc(&v26, 0x20u, &v28);
  v8 = v29;
  if (v29 < 0x41)
  {
    v9 = v28;
    *a2 = v28;
    v10 = v27;
    v11 = v9;
    v29 = v27;
    if (v27 > 0x40)
    {
LABEL_15:
      llvm::APInt::initSlowCase(&v28);
    }

    goto LABEL_10;
  }

  v13 = v8 - llvm::APInt::countLeadingZerosSlowCase(&v28);
  v14 = v28;
  if (v13 <= 0x40)
  {
    *a2 = *v28;
LABEL_14:
    operator delete[]();
  }

  *a2 = -1;
  if (v14)
  {
    goto LABEL_14;
  }

  v10 = v27;
  v11 = -1;
  v29 = v27;
  if (v27 > 0x40)
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
  if (!v10)
  {
    v15 = 0;
  }

  v28 = (v15 & v11);
  if (v28 == v26)
  {
    LOBYTE(v7) = 1;
    v12 = 1;
  }

  else
  {
    v24 = "integer value too large";
    v25 = 259;
    (*(*a1 + 24))(&v28, a1, v6, &v24);
    if (v28)
    {
      mlir::InFlightDiagnostic::report(&v28);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v35;
        v18 = __p;
        if (v35 != __p)
        {
          do
          {
            v17 = sub_10005BEF4(v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v35 = v16;
        operator delete(v18);
      }

      v19 = v32;
      if (v32)
      {
        v20 = v33;
        v21 = v32;
        if (v33 != v32)
        {
          do
          {
            v22 = *--v20;
            *v20 = 0;
            if (v22)
            {
              operator delete[]();
            }
          }

          while (v20 != v19);
          v21 = v32;
        }

        v33 = v19;
        operator delete(v21);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }

    LOBYTE(v7) = 0;
    v12 = 1;
    if (v27 >= 0x41 && v26)
    {
      operator delete[]();
    }
  }

  return v7 | (v12 << 8);
}

void sub_10010B87C(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v15);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v4 + 16;
    v8 = v5 + 6;
    v9 = 32 * v6;
    do
    {
      *(v7 - 2) = *(v8 - 4);
      *(v7 - 2) = *(v8 - 3);
      *(v8 - 4) = 0;
      *(v7 + 2) = *v8;
      *v7 = *(v8 - 1);
      v7 += 32;
      *v8 = 0;
      v8 += 8;
      v9 -= 32;
    }

    while (v9);
    v5 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 8 * v10;
      v12 = -(v11 * 4);
      v13 = &v5[v11 - 4];
      do
      {
        if (*(v13 + 8) >= 0x41u && *v13)
        {
          operator delete[]();
        }

        if (*(v13 - 8) >= 0x41u && *(v13 - 16))
        {
          operator delete[]();
        }

        v13 -= 32;
        v12 += 32;
      }

      while (v12);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v14;
}

void sub_10010B9B0(_DWORD *a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 4;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, a2, 48, &v6);
  sub_10010BA28(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  a1[3] = v5;
}

void sub_10010BA28(llvm::APFloatBase *a1, __n128 *a2)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    return;
  }

  v5 = *a1;
  v6 = *a1 + 48 * v2;
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  do
  {
    while (v7 == v5->n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(a2, v5);
      v8 = (v5 + 24);
      v9 = (a2 + 24);
      if (v7 != v5[1].n128_u64[1])
      {
        goto LABEL_8;
      }

LABEL_3:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v8);
      a2 += 3;
      v5 += 3;
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }

    llvm::detail::IEEEFloat::IEEEFloat(a2, v5);
    v8 = (v5 + 24);
    v9 = (a2 + 24);
    if (v7 == v5[1].n128_u64[1])
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::detail::IEEEFloat::IEEEFloat(v9, v8);
    a2 += 3;
    v5 += 3;
  }

  while (v5 != v6);
LABEL_9:
  v10 = *(a1 + 2);
  if (v10)
  {
    v11 = (*a1 + 48 * v10 - 24);
    v12 = -48 * v10;
    while (1)
    {
      v13 = (v11 - 24);
      if (v7 == *v11)
      {
        sub_10002B154(v11);
        v14 = (v11 - 24);
        if (v7 != *v13)
        {
          goto LABEL_16;
        }

LABEL_11:
        sub_10002B154(v14);
        v11 = (v11 - 48);
        v12 += 48;
        if (!v12)
        {
          return;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v11);
        v14 = (v11 - 24);
        if (v7 == *v13)
        {
          goto LABEL_11;
        }

LABEL_16:
        llvm::detail::IEEEFloat::~IEEEFloat(v14);
        v11 = (v11 - 48);
        v12 += 48;
        if (!v12)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_10010BB74@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *&v27 = result;
  *(&v27 + 1) = a2;
  if (!a4)
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    *(a6 + 16) = a3;
    goto LABEL_9;
  }

  __src[0] = mlir::ShapedType::getElementType(&v27);
  result = mlir::Type::isInteger(__src, 1);
  v10 = result;
  if (!a5)
  {
    Shape = mlir::ShapedType::getShape(&v27);
    NumElements = mlir::ShapedType::getNumElements(Shape, v17);
    if (v10)
    {
      return sub_10010BDF0(v27, *(&v27 + 1), a3, a4, NumElements, a6);
    }

    ElementType = mlir::ShapedType::getElementType(&v27);
    v20 = sub_1000DC620(ElementType);
    if (v20)
    {
      v21 = ((v20 - (v20 != 0)) >> 3) + 1;
    }

    else
    {
      v21 = (v20 - (v20 != 0)) >> 3;
    }

    if (a4 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = a4;
    }

    result = sub_10002D970(a3, &a3[v22]);
    v23 = result;
    if (v21 == a4)
    {
LABEL_23:
      *a6 = v27;
      *(a6 + 16) = a3;
      *(a6 + 24) = v22;
      *(a6 + 32) = v23;
      goto LABEL_24;
    }

    v24 = &a3[v21];
    v25 = v21;
    while (1)
    {
      result = memcmp(a3, v24, v21);
      if (result)
      {
        break;
      }

      v25 += v21;
      v24 += v21;
      if (v25 == a4)
      {
        goto LABEL_23;
      }
    }

    v26 = v27;
    memset(v30, 0, sizeof(v30));
    memset(v29, 0, sizeof(v29));
    v31 = 0;
    v32 = 0xFF51AFD7ED558CCDLL;
    __src[0] = v23;
    __src[1] = sub_10002D970(v24, &a3[a4]);
    result = sub_10002D330(__src, 0, v29, v30);
    *a6 = v26;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
LABEL_9:
    *(a6 + 40) = 0;
    return result;
  }

  v11 = v27;
  if (!result)
  {
    result = sub_10002D970(a3, &a3[a4]);
    *a6 = v11;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
LABEL_24:
    *(a6 + 40) = 1;
    return result;
  }

  if (*a3)
  {
    v12 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
  }

  else
  {
    v12 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
  }

  v13 = *v12;
  v14 = HIDWORD(v13);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  *a6 = v27;
  *(a6 + 8) = *(&v11 + 1);
  *(a6 + 16) = v12;
  *(a6 + 24) = 1;
  *(a6 + 32) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  *(a6 + 40) = 1;
  return result;
}

uint64_t sub_10010BDF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
  if ((v6 & 1) == 0)
  {
    v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
  }

  if (a4 == 1)
  {
    LODWORD(v8) = *v7;
    if (v6 == v8)
    {
      v8 = v8;
LABEL_19:
      v16 = HIDWORD(v8);
      v17 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
      v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
      v11 = 1;
      v13 = 1;
      goto LABEL_21;
    }
  }

  v9 = &a3[a4];
  if ((a5 & 7) == 0 || (v6 & 1) == 0)
  {
    v10 = &a3[a4];
    if (!a4)
    {
LABEL_18:
      v8 = *v7;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v10 = (v9 - 1);
  if (0xFFu >> (8 - (a5 & 7)) != *(v9 - 1))
  {
LABEL_20:
    v18 = result;
    v19 = a2;
    v20 = a6;
    v23 = sub_10002D970(a3, &a3[a4]);
    v7 = a3;
    v11 = a4;
    a2 = v19;
    a6 = v20;
    v12 = v23;
    result = v18;
    v13 = 0;
    goto LABEL_21;
  }

  if (a4 != 1)
  {
LABEL_12:
    if (v6)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3;
    while (*v15 == v14)
    {
      if (++v15 == v10)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  v11 = 1;
  v12 = 0xE58356463FB8AC99;
  v13 = 1;
  v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
LABEL_21:
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v11;
  *(a6 + 32) = v12;
  *(a6 + 40) = v13;
  return result;
}

BOOL sub_10010BF80(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 == *(a2 + 8) && (v3 = v2[3], v3 == *(a2 + 40)))
  {
    return memcmp(v2[2], *(a2 + 32), v3) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10010BFD8(__int128 **a1, uint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 3);
  v6 = *(*a1 + 40);
  if (v5)
  {
    v16 = **a1;
    v7 = *(*a1 + 2);
    a2[10] += v5;
    if (*a2 && (v8 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8), &v8[v5] <= a2[1]))
    {
      *a2 = &v8[v5];
    }

    else
    {
      v14 = v7;
      v15 = sub_10003E4AC(a2, v5, v5, 3);
      v7 = v14;
      v8 = v15;
    }

    memcpy(v8, v7, v5);
    v4 = v16;
    a2[10] += 48;
    v9 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    a2[10] += 48;
    v9 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }
  }

  v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 + 48 <= a2[1])
  {
    *a2 = v10 + 48;
    goto LABEL_10;
  }

LABEL_13:
  v17 = v4;
  v13 = sub_10003E4AC(a2, 48, 48, 3);
  v4 = v17;
  v10 = v13;
LABEL_10:
  *v10 = 0;
  *(v10 + 8) = v4;
  *(v10 + 24) = v6;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  v11 = a1[1];
  if (*v11)
  {
    (*v11)(*(v11 + 1), v10);
  }

  return v10;
}

unint64_t sub_10010C170(__int128 **a1, void *a2)
{
  v2 = **a1;
  v9 = (*a1)[1];
  v10 = *(*a1 + 4);
  a2[10] += 48;
  if (*a2 && (v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, v3 + 48 <= a2[1]))
  {
    *a2 = v3 + 48;
  }

  else
  {
    v6 = a1;
    v8 = v2;
    v7 = sub_10003E4AC(a2, 48, 48, 3);
    v2 = v8;
    v3 = v7;
    a1 = v6;
  }

  *v3 = 0;
  *(v3 + 8) = v2;
  *(v3 + 24) = v9;
  *(v3 + 40) = v10;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t sub_10010C248()
{
  {
    sub_10029D5C4();
  }

  return llvm::getTypeName<mlir::ResourceBlobManagerDialectInterface>(void)::Name;
}

const char *sub_10010C290()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ResourceBlobManagerDialectInterface]";
  v6 = 103;
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

void sub_10010C310(pthread_rwlock_t **a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X2>, unint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X8>)
{
  LOBYTE(v18) = 0;
  v24 = 0;
  if (*(a5 + 64) == 1)
  {
    v18 = *a5;
    v10 = *(a5 + 6);
    v19 = *(a5 + 2);
    v22 = v10;
    if (v10 >= 8)
    {
      if ((v10 & 2) != 0 && (v10 & 4) != 0)
      {
        v11 = a1;
        v12 = a5;
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 8))(&v20, a5 + 24);
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v12 + 24);
        a5 = v12;
        a1 = v11;
      }

      else
      {
        v20 = *(a5 + 24);
        v21 = *(a5 + 5);
      }

      *(a5 + 6) = 0;
    }

    v23 = *(a5 + 56);
    v24 = 1;
  }

  v13 = mlir::DialectResourceBlobManager::insert(a1, a3, a4, &v18);
  if (v24 == 1 && v22 >= 8)
  {
    v14 = (v22 & 2) != 0 ? &v20 : v20;
    (*(v22 & 0xFFFFFFFFFFFFFFF8))(v14, v18, *(&v18 + 1), v19);
    v15 = v22;
    if (v22 >= 8)
    {
      if ((v22 & 4) != 0)
      {
        if ((v22 & 2) != 0)
        {
          v16 = &v20;
        }

        else
        {
          v16 = v20;
        }

        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v16);
      }

      if ((v15 & 2) == 0)
      {
        llvm::deallocate_buffer(v20, *(&v20 + 1), v21);
      }
    }
  }

  {
    sub_100299308();
  }

  v17 = mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id;
  *a6 = v13;
  a6[1] = v17;
  a6[2] = a2;
}

void mlir::BuiltinDialect::BuiltinDialect(mlir::BuiltinDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "builtin", 7, a2, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id);
  *v2 = off_1002D7600;
  mlir::BuiltinDialect::initialize(v2);
}

void mlir::BuiltinDialect::~BuiltinDialect(llvm **this)
{
  mlir::Dialect::~Dialect(this);

  operator delete();
}

void mlir::ModuleOp::create(uint64_t a1, __int128 *a2)
{
  v4 = a1;
  v3[0] = mlir::Attribute::getContext(&v4);
  memset(&v3[1], 0, 24);
  sub_10010C888(v3, v4, a2);
}

void sub_10010C888(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v9 = a2;
  Context = mlir::Attribute::getContext(&v9);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, Context);
  if (v8)
  {
    mlir::OperationState::OperationState(v13, a2, v7);
    v11 = *a3;
    v12 = *(a3 + 2);
    mlir::ModuleOp::build(a1, v13);
  }

  sub_100299DF4(v13, &v11, v10);
}

BOOL mlir::ModuleOp::verify(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    for (i = 16 * v3; i; i -= 16)
    {
      v57 = *v4;
      AttrDictionary = mlir::NamedAttribute::getName(&v57);
      v7 = mlir::StringAttr::getValue(&AttrDictionary);
      if (!v8 || (v9 = v7, (v10 = memchr(v7, 46, v8)) == 0) || v10 - v9 == -1)
      {
        Name = mlir::NamedAttribute::getName(&v57);
        v11 = mlir::StringAttr::getValue(&Name);
        if (v12 == 14)
        {
          if (*v11 != 0x697369765F6D7973 || *(v11 + 6) != 0x7974696C69626973)
          {
LABEL_15:
            v56 = 257;
            mlir::OpState::emitOpError(this, &v55, &AttrDictionary);
            if (AttrDictionary)
            {
              LODWORD(Name) = 3;
              v60 = "can only contain attributes with dialect-prefixed names, found: '";
              v61 = 65;
              p_Name = &Name;
              v14 = v74;
              if (v75 >= v76)
              {
                if (v74 <= &Name && v74 + 24 * v75 > &Name)
                {
                  v50 = &Name - v74;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                  v14 = v74;
                  p_Name = (v74 + v50);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                  p_Name = &Name;
                  v14 = v74;
                }
              }

              v15 = &v14[24 * v75];
              v16 = *p_Name;
              *(v15 + 2) = p_Name[2];
              *v15 = v16;
              ++v75;
            }

            v54 = mlir::NamedAttribute::getName(&v57);
            v17 = mlir::StringAttr::getValue(&v54);
            if (AttrDictionary)
            {
              LOWORD(v63) = 261;
              Name = v17;
              v60 = v18;
              mlir::Diagnostic::operator<<(v73, &Name);
              if (AttrDictionary)
              {
                LODWORD(Name) = 3;
                v60 = "'";
                v61 = 1;
                v19 = &Name;
                v20 = v74;
                if (v75 >= v76)
                {
                  if (v74 <= &Name && v74 + 24 * v75 > &Name)
                  {
                    v51 = &Name - v74;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                    v20 = v74;
                    v19 = (v74 + v51);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                    v19 = &Name;
                    v20 = v74;
                  }
                }

                v21 = &v20[24 * v75];
                v22 = *v19;
                *(v21 + 2) = v19[2];
                *v21 = v22;
                ++v75;
              }
            }

            v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
            if (AttrDictionary)
            {
              mlir::InFlightDiagnostic::report(&AttrDictionary);
            }

            if (v83 == 1)
            {
              if (v82 != &v83)
              {
                free(v82);
              }

              v24 = __p;
              if (__p)
              {
                v25 = v81;
                v26 = __p;
                if (v81 != __p)
                {
                  do
                  {
                    v25 = sub_10005BEF4(v25 - 1);
                  }

                  while (v25 != v24);
                  v26 = __p;
                }

                v81 = v24;
                operator delete(v26);
              }

              v27 = v78;
              if (v78)
              {
                v28 = v79;
                v29 = v78;
                if (v79 != v78)
                {
                  do
                  {
                    v30 = *--v28;
                    *v28 = 0;
                    if (v30)
                    {
                      operator delete[]();
                    }
                  }

                  while (v28 != v27);
                  v29 = v78;
                }

                v79 = v27;
                operator delete(v29);
              }

              if (v74 != v77)
              {
                free(v74);
              }
            }

            return v23;
          }
        }

        else if (v12 != 8 || *v11 != 0x656D616E5F6D7973)
        {
          goto LABEL_15;
        }
      }

      ++v4;
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v31 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v32)
  {
    v33 = v31;
    v34 = 0;
    v53 = (v31 + 16 * v32);
    do
    {
      v35 = sub_10010FB00(*(v33 + 1));
      if (v35)
      {
        v36 = v35;
        if (v34)
        {
          v56 = 257;
          mlir::OpState::emitOpError(this, &v55, &Name);
          if (Name)
          {
            LODWORD(v57) = 3;
            *(&v57 + 1) = "expects at most one data layout attribute";
            v58 = 41;
            v37 = v62;
            if (v63 >= v64)
            {
              if (v62 <= &v57 && v62 + 24 * v63 > &v57)
              {
                v48 = &v57 - v62;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
                v37 = v62;
                v38 = v62 + v48;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
                v38 = &v57;
                v37 = v62;
              }
            }

            else
            {
              v38 = &v57;
            }

            v39 = &v37[24 * v63];
            v40 = *v38;
            *(v39 + 2) = *(v38 + 2);
            *v39 = v40;
            ++v63;
          }

          sub_10006BAFC(&AttrDictionary, &Name);
          if (Name)
          {
            mlir::InFlightDiagnostic::report(&Name);
          }

          if (v71 == 1)
          {
            if (v70 != &v71)
            {
              free(v70);
            }

            v41 = v68;
            if (v68)
            {
              v42 = v69;
              v43 = v68;
              if (v69 != v68)
              {
                do
                {
                  v42 = sub_10005BEF4(v42 - 1);
                }

                while (v42 != v41);
                v43 = v68;
              }

              v69 = v41;
              operator delete(v43);
            }

            v44 = v66;
            if (v66)
            {
              v45 = v67;
              v46 = v66;
              if (v67 != v66)
              {
                do
                {
                  v47 = *--v45;
                  *v45 = 0;
                  if (v47)
                  {
                    operator delete[]();
                  }
                }

                while (v45 != v44);
                v46 = v66;
              }

              v67 = v44;
              operator delete(v46);
            }

            if (v62 != v65)
            {
              free(v62);
            }
          }

          mlir::Diagnostic::attachNote(v73, v1 & 0xFFFFFFFFFFFFFF00, 0);
        }

        AttrDictionary = mlir::NamedAttribute::getName(v33);
        mlir::StringAttr::getValue(&AttrDictionary);
        v34 = v36;
      }

      v33 = (v33 + 16);
    }

    while (v33 != v53);
  }

  return 1;
}