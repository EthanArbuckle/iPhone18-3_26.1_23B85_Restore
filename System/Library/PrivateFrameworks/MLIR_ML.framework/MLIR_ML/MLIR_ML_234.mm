uint64_t llvm::itanium_demangle::PointerType::printRight(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (*(result + 8) != 11 || (v5 = *(result + 16), *(v5 + 8) != 8) || *(v5 + 24) != 11 || ((v6 = *(v5 + 16), v7 = *v6, v8 = *(v6 + 3), v7 == 0x6A626F5F636A626FLL) ? (v9 = v8 == 0x7463656A626F5F63) : (v9 = 0), !v9))
  {
    v10 = *(result + 9);
    v11 = (v10 >> 8) & 3;
    if (v11)
    {
      if (v11 == 2)
      {
        if ((*(*result + 8))(result, a2))
        {
          goto LABEL_15;
        }

        result = *(a1 + 16);
        v10 = *(result + 9);
      }

      v12 = (v10 >> 10) & 3;
      if (v12 && (v12 != 2 || !(*(*result + 16))(result, a2)))
      {
LABEL_22:
        v19 = *(**(a1 + 16) + 40);

        return v19();
      }
    }

LABEL_15:
    v13 = *a2;
    v14 = *(a2 + 8);
    v15 = *(a2 + 16);
    if (v14 + 1 > v15)
    {
      v16 = v14 + 993;
      v17 = 2 * v15;
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      *(a2 + 16) = v18;
      v13 = malloc_type_realloc(v13, v18, 0x100004077774924uLL);
      *a2 = v13;
      if (!v13)
      {
        abort();
      }

      v14 = *(a2 + 8);
    }

    *(v13 + v14) = 41;
    ++*(a2 + 8);
    goto LABEL_22;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ReferenceType::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

uint64_t llvm::itanium_demangle::ReferenceType::printLeft(uint64_t result, void **a2)
{
  v2 = *(result + 28);
  if ((v2 & 1) == 0)
  {
    v4 = result;
    *(result + 28) = 1;
    result = llvm::itanium_demangle::ReferenceType::collapse(result, a2);
    if (!v5)
    {
LABEL_40:
      *(v4 + 28) = v2;
      return result;
    }

    v6 = result;
    v7 = v5;
    (*(*v5 + 32))(v5, a2);
    if ((*(v7 + 10) & 3) == 0 || (*(v7 + 10) & 3) == 2 && (*(*v7 + 8))(v7, a2))
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      if ((v9 + 1) > v10)
      {
        v11 = (v9 + 993);
        v12 = 2 * v10;
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        a2[2] = v13;
        v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
        *a2 = v8;
        if (!v8)
        {
          goto LABEL_42;
        }

        v9 = a2[1];
      }

      v9[v8] = 32;
      a2[1] = a2[1] + 1;
    }

    v14 = *(v7 + 9);
    v15 = (v14 >> 8) & 3;
    if (!v15)
    {
      goto LABEL_20;
    }

    if (v15 == 2)
    {
      if ((*(*v7 + 8))(v7, a2))
      {
        goto LABEL_20;
      }

      v14 = *(v7 + 9);
    }

    v16 = (v14 >> 10) & 3;
    if (v16 && (v16 != 2 || !(*(*v7 + 16))(v7, a2)))
    {
LABEL_27:
      if (v6)
      {
        v23 = "&&";
      }

      else
      {
        v23 = "&";
      }

      if (v6)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      v25 = *a2;
      v26 = a2[1];
      v27 = &v26[v24];
      v28 = a2[2];
      if (&v26[v24] <= v28)
      {
        goto LABEL_39;
      }

      if (2 * v28 <= (v27 + 992))
      {
        v29 = (v27 + 992);
      }

      else
      {
        v29 = 2 * v28;
      }

      a2[2] = v29;
      v25 = malloc_type_realloc(v25, v29, 0x100004077774924uLL);
      *a2 = v25;
      if (v25)
      {
        v26 = a2[1];
LABEL_39:
        result = memcpy(&v26[v25], v23, v24);
        a2[1] = a2[1] + v24;
        goto LABEL_40;
      }

LABEL_42:
      abort();
    }

LABEL_20:
    v17 = *a2;
    v18 = a2[1];
    v19 = a2[2];
    if ((v18 + 1) > v19)
    {
      v20 = (v18 + 993);
      v21 = 2 * v19;
      if (v21 <= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      a2[2] = v22;
      v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
      *a2 = v17;
      if (!v17)
      {
        goto LABEL_42;
      }

      v18 = a2[1];
    }

    v18[v17] = 40;
    a2[1] = a2[1] + 1;
    goto LABEL_27;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ReferenceType::printRight(uint64_t result, void **a2)
{
  v2 = *(result + 28);
  if ((v2 & 1) == 0)
  {
    v4 = result;
    *(result + 28) = 1;
    result = llvm::itanium_demangle::ReferenceType::collapse(result, a2);
    if (!v5)
    {
LABEL_18:
      *(v4 + 28) = v2;
      return result;
    }

    v6 = v5;
    v7 = *(v5 + 9);
    v8 = (v7 >> 8) & 3;
    if (!v8)
    {
      goto LABEL_10;
    }

    if (v8 == 2)
    {
      if ((*(*v5 + 8))(v5, a2))
      {
        goto LABEL_10;
      }

      v7 = *(v6 + 9);
    }

    v9 = (v7 >> 10) & 3;
    if (v9 && (v9 != 2 || !(*(*v6 + 16))(v6, a2)))
    {
LABEL_17:
      result = (*(*v6 + 40))(v6, a2);
      goto LABEL_18;
    }

LABEL_10:
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    if ((v11 + 1) > v12)
    {
      v13 = (v11 + 993);
      v14 = 2 * v12;
      if (v14 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      a2[2] = v15;
      v10 = malloc_type_realloc(v10, v15, 0x100004077774924uLL);
      *a2 = v10;
      if (!v10)
      {
        abort();
      }

      v11 = a2[1];
    }

    v11[v10] = 41;
    a2[1] = a2[1] + 1;
    goto LABEL_17;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ReferenceType::collapse(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  ptr = v16;
  v14 = v16;
  v15 = &v17;
  memset(v16, 0, sizeof(v16));
  for (i = (*(*v4 + 24))(v4); *(i + 8) == 13; i = (*(*v6 + 24))(v6, a2))
  {
    v6 = *(i + 16);
    if (*(i + 24) < v3)
    {
      v3 = *(i + 24);
    }

    v7 = v14;
    v8 = ptr;
    if (v14 == v15)
    {
      v10 = v14 - ptr;
      if (ptr == v16)
      {
        v8 = malloc_type_malloc(2 * (v14 - ptr), 0x6004044C4A2DFuLL);
        if (!v8)
        {
LABEL_21:
          abort();
        }

        if (v14 != ptr)
        {
          v11 = v8;
          memmove(v8, ptr, v14 - ptr);
          v8 = v11;
        }

        ptr = v8;
      }

      else
      {
        v8 = malloc_type_realloc(ptr, 2 * (v14 - ptr), 0x6004044C4A2DFuLL);
        ptr = v8;
        if (!v8)
        {
          goto LABEL_21;
        }
      }

      v15 = &v8[8 * (v10 >> 2)];
      *&v8[v10] = v6;
      v14 = &v8[v10 + 8];
      v9 = (v10 + 8) >> 3;
      if (v9 < 2)
      {
        continue;
      }
    }

    else
    {
      *v14 = v6;
      v14 += 8;
      v9 = (v7 + 8 - ptr) >> 3;
      if (v9 < 2)
      {
        continue;
      }
    }

    if (v6 == *&v8[(4 * v9 - 4) & 0xFFFFFFFFFFFFFFF8])
    {
      break;
    }
  }

  if (ptr != v16)
  {
    free(ptr);
  }

  return v3;
}

void *llvm::ms_demangle::Demangler::copyString(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 16);
  v4 = *v3;
  v5 = v3[1];
  v3[1] = v5 + a3;
  if (v5 + a3 > v3[2])
  {
    operator new();
  }

  v6 = (v4 + v5);
  if (a3)
  {
    memcpy(v6, a2, a3);
  }

  return v6;
}

unint64_t llvm::ms_demangle::Demangler::demangleSpecialTableSymbolNode(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = *(a1 + 16);
  v7 = (v6[1] + *v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 - *v6 + 40;
  v6[1] = v8;
  if (v8 > v6[2])
  {
    operator new();
  }

  *(v7 + 8) = 5;
  *(v7 + 16) = 0;
  *v7 = &unk_2868A7178;
  if (a3 > 14)
  {
    if (a3 == 15)
    {
      v10 = 30;
    }

    else
    {
      v10 = 15;
    }
  }

  else
  {
    if (a3 == 1)
    {
    }

    else
    {
    }

    v10 = 9;
  }

  *(v7 + 24) = v9;
  *(v7 + 32) = v10;
  v11 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v7);
  v12 = *(a1 + 16);
  result = (v12[1] + *v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = result - *v12 + 40;
  v12[1] = v14;
  if (v14 > v12[2])
  {
    operator new();
  }

  *(result + 8) = 28;
  *result = &unk_2868A7608;
  *(result + 32) = 0;
  *(result + 16) = v11;
  *(result + 24) = 0;
  v15 = a2[1];
  if (!v15 || (v16 = *a2, v17 = **a2, ++*a2, a2[1] = v15 - 1, (v17 - 56) <= 0xFFFFFFFD))
  {
    result = 0;
    *(a1 + 8) = 1;
    return result;
  }

  if (v15 == 1)
  {
    *(a1 + 8) = 1;
    *(result + 32) = 0;
    v19 = *a2;
    goto LABEL_25;
  }

  v18 = *(v16 + 1);
  *a2 = v16 + 2;
  a2[1] = v15 - 2;
  if (v18 - 65) < 0x14 && ((0xF000Fu >> (v18 - 65)))
  {
    *(result + 32) = byte_2573A5A58[(v18 - 65)];
    v19 = *a2;
    if (v15 == 2)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(a1 + 8) = 1;
    *(result + 32) = 0;
    v19 = *a2;
    if (v15 == 2)
    {
      goto LABEL_25;
    }
  }

  if (*v19 == 64)
  {
    *a2 = (v19 + 1);
    a2[1] = v15 - 3;
    return result;
  }

LABEL_25:
  v20 = a2[1];
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = *v19;
  if (v21 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v21 + 60) & 0x400) == 0)
  {
    if (v20 != 1 && *v19 == 9279)
    {
      v22 = result;
      v23 = llvm::ms_demangle::Demangler::demangleTemplateInstantiationName(a1, a2, 1);
      goto LABEL_31;
    }

LABEL_30:
    v22 = result;
    v23 = llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, 1);
LABEL_31:
    v24 = v23;
    goto LABEL_32;
  }

  v22 = result;
  v27 = v21 - 48;
  if (v27 >= *(a1 + 192))
  {
    v24 = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    *a2 = (v19 + 1);
    a2[1] = v20 - 1;
    v24 = *(a1 + 8 * v27 + 112);
  }

LABEL_32:
  if (*(a1 + 8))
  {
    v25 = 0;
  }

  else
  {
    v26 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v24);
    if (*(a1 + 8))
    {
      v25 = 0;
    }

    else
    {
      v25 = v26;
    }
  }

  result = v22;
  *(v22 + 24) = v25;
  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleNameScopeChain(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  v7 = ((v5[1] + *v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7 - *v5 + 16;
  v5[1] = v8;
  if (v8 > v5[2])
  {
    operator new();
  }

  *v7 = a3;
  v7[1] = 0;
  v9 = 1;
  v10 = a2[1];
  if (v10)
  {
LABEL_4:
    if (**a2 != 64)
    {
      goto LABEL_5;
    }

    ++*a2;
    a2[1] = v10 - 1;
    v16 = *v6;
    v17 = (*(*v6 + 8) + **v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = v17 - **v6 + 24;
    *(v16 + 8) = v18;
    if (v18 > *(v16 + 16))
    {
      operator new();
    }

    *(v17 + 8) = 20;
    *v17 = &unk_2868A74C8;
    *(v17 + 16) = 0;
    v19 = v17;
    v20 = nodeListToNodeArray(v6, v7, v9);
    result = v19;
    *(v19 + 16) = v20;
  }

  else
  {
    while (1)
    {
LABEL_5:
      v11 = *v6;
      v12 = ((*(*v6 + 8) + **v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v13 = v12 - **v6 + 16;
      *(v11 + 8) = v13;
      if (v13 > *(v11 + 16))
      {
        operator new();
      }

      *v12 = 0;
      v12[1] = v7;
      if (!a2[1])
      {
        result = 0;
        *(a1 + 8) = 1;
        return result;
      }

      v14 = llvm::ms_demangle::Demangler::demangleNameScopePiece(a1, a2);
      if (*(a1 + 8))
      {
        return 0;
      }

      *v12 = v14;
      ++v9;
      v7 = v12;
      v10 = a2[1];
      if (v10)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t llvm::ms_demangle::Demangler::demangleQualifiers(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *(*a2)++;
    a2[1] = v2 - 1;
    if (v3 - 65) < 0x14 && ((0xF000Fu >> (v3 - 65)))
    {
      return word_2573A5A30[(v3 - 65)];
    }

    v2 = 0;
  }

  *(a1 + 8) = 1;
  return v2;
}

unint64_t llvm::ms_demangle::Demangler::demangleFullyQualifiedTypeName(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *a2;
  v6 = **a2;
  if ((v6 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) != 0)
  {
    v10 = v6 - 48;
    if (v10 >= *(a1 + 192))
    {
      v8 = 0;
      *(a1 + 8) = 1;
    }

    else
    {
      *a2 = v5 + 1;
      a2[1] = v4 - 1;
      v8 = *(a1 + 8 * v10 + 112);
    }

    goto LABEL_8;
  }

  if (v4 != 1 && *v5 == 9279)
  {
    v7 = llvm::ms_demangle::Demangler::demangleTemplateInstantiationName(a1, a2, 1);
  }

  else
  {
LABEL_6:
    v7 = llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, 1);
  }

  v8 = v7;
LABEL_8:
  if (*(a1 + 8))
  {
    return 0;
  }

  result = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v8);
  if (*(a1 + 8))
  {
    return 0;
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleLocalStaticGuard(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = *(a1 + 16);
  v6 = (v5[1] + *v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 - *v5 + 32;
  v5[1] = v7;
  if (v7 > v5[2])
  {
    operator new();
  }

  *(v6 + 8) = 7;
  *(v6 + 16) = 0;
  *v6 = &unk_2868A7238;
  *(v6 + 28) = 0;
  *(v6 + 24) = a3;
  v8 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v6);
  v9 = *(a1 + 16);
  result = (v9[1] + *v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = result - *v9 + 32;
  v9[1] = v11;
  if (v11 > v9[2])
  {
    operator new();
  }

  *(result + 8) = 25;
  *result = &unk_2868A7648;
  *(result + 24) = 0;
  *(result + 16) = v8;
  v12 = a2[1];
  if (v12 >= 3)
  {
    v13 = *a2;
    if (**a2 == 18740 && *(*a2 + 2) == 65)
    {
      *(result + 24) = 0;
      v16 = v12 - 3;
      *a2 = v13 + 3;
      a2[1] = v12 - 3;
      if (v12 != 3)
      {
        goto LABEL_14;
      }

      return result;
    }
  }

  else if (!v12)
  {
    goto LABEL_18;
  }

  v15 = *a2;
  if (**a2 != 53)
  {
LABEL_18:
    result = 0;
    *(a1 + 8) = 1;
    return result;
  }

  *(result + 24) = 1;
  v16 = v12 - 1;
  *a2 = v15 + 1;
  a2[1] = v12 - 1;
  if (v12 != 1)
  {
LABEL_14:
    v17 = *a2;
    v18 = **a2;
    if (v18 == 63)
    {
      ++v17;
      --v16;
      *a2 = v17;
      a2[1] = v16;
      if (!v16)
      {
LABEL_27:
        v20 = 0;
        goto LABEL_28;
      }

      v19 = *v17;
      if ((v19 & 0x80) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v19 = **a2;
      if ((v18 & 0x80) != 0)
      {
        goto LABEL_23;
      }
    }

    if ((*(MEMORY[0x277D85DE0] + 4 * v19 + 60) & 0x400) != 0)
    {
      v20 = v19 - 47;
      *a2 = (v17 + 1);
      a2[1] = v16 - 1;
      if (v18 != 63)
      {
LABEL_32:
        *(v6 + 28) = v20;
        return result;
      }

LABEL_28:
      *(a1 + 8) = 1;
      *(v6 + 28) = v20;
      return result;
    }

LABEL_23:
    v20 = 0;
    v21 = v16 - 1;
    v22 = v17 + 1;
    while (1)
    {
      v23 = *(v22 - 1);
      if (v23 == 64)
      {
        break;
      }

      v24 = v23 - 65;
      if (v24 <= 0xFu)
      {
        v20 = v24 | (16 * v20);
        --v21;
        ++v22;
        if (v21 != -1)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    *a2 = v22;
    a2[1] = v21;
    if (v18 != 63)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return result;
}

void *consumeFront(void *result, const void *a2, size_t a3)
{
  v3 = result[1];
  v4 = v3 - a3;
  if (v3 >= a3)
  {
    v6 = result;
    v7 = *result;
    result = memcmp(*result, a2, a3);
    if (!result)
    {
      *v6 = &v7[a3];
      v6[1] = v4;
    }
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleUnsigned(uint64_t a1, unsigned __int8 **a2)
{
  v2 = a2[1];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *a2;
  v4 = **a2;
  if (v4 == 63)
  {
    ++v3;
    --v2;
    *a2 = v3;
    a2[1] = v2;
    if (v2)
    {
      v5 = *v3;
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_12:
    *(a1 + 8) = 1;
    return 0;
  }

  v5 = **a2;
  if ((v4 & 0x80) != 0)
  {
LABEL_8:
    v6 = 0;
    v7 = v2 - 1;
    v8 = v3 + 1;
    while (1)
    {
      v9 = *(v8 - 1);
      if (v9 == 64)
      {
        break;
      }

      v10 = v9 - 65;
      if (v10 <= 0xFu)
      {
        v6 = v10 | (16 * v6);
        --v7;
        ++v8;
        if (v7 != -1)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    *a2 = v8;
    a2[1] = v7;
    if (v4 != 63)
    {
      return v6;
    }

LABEL_14:
    *(a1 + 8) = 1;
    return v6;
  }

LABEL_7:
  if ((*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v6 = v5 - 47;
  *a2 = v3 + 1;
  a2[1] = v2 - 1;
  if (v4 == 63)
  {
    goto LABEL_14;
  }

  return v6;
}

unint64_t llvm::ms_demangle::Demangler::demangleUntypedVariable(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = (*(*a2 + 8) + **a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 - **a2 + 40;
  *(v8 + 8) = v10;
  if (v10 > *(v8 + 16))
  {
    operator new();
  }

  *(v9 + 8) = 5;
  *(v9 + 16) = 0;
  *(v9 + 24) = a4;
  *v9 = &unk_2868A7178;
  *(v9 + 32) = a5;
  v11 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a3, v9);
  v12 = *a2;
  result = (*(*a2 + 8) + **a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = result - **a2 + 40;
  *(v12 + 8) = v14;
  if (v14 > *(v12 + 16))
  {
    operator new();
  }

  *(result + 8) = 27;
  *result = &unk_2868A76C8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = v11;
  v15 = a3[1];
  if (v15 && **a3 == 56)
  {
    ++*a3;
    a3[1] = v15 - 1;
  }

  else
  {
    result = 0;
    *(a1 + 8) = 1;
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleRttiBaseClassDescriptorNode(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = (*(*a2 + 8) + **a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 - **a2 + 40;
  *(v5 + 8) = v7;
  if (v7 > *(v5 + 16))
  {
    operator new();
  }

  *(v6 + 8) = 24;
  *(v6 + 16) = 0;
  *v6 = &unk_2868A7588;
  *(v6 + 24) = 0;
  v8 = (v6 + 24);
  *(v6 + 32) = 0;
  v9 = a3[1];
  if (!v9)
  {
LABEL_14:
    *(a1 + 8) = 1;
    *v8 = 0;
    if (!v9)
    {
      goto LABEL_57;
    }

    goto LABEL_21;
  }

  v10 = *a3;
  v11 = **a3;
  if (v11 == 63)
  {
    ++v10;
    --v9;
    *a3 = v10;
    a3[1] = v9;
    if (!v9)
    {
      *(a1 + 8) = 1;
      *v8 = 0;
      goto LABEL_57;
    }

    v12 = *v10;
    if ((v12 & 0x80) != 0)
    {
LABEL_10:
      v13 = 0;
      v14 = v9 - 1;
      v15 = v10 + 1;
      while (1)
      {
        v16 = *(v15 - 1);
        if (v16 == 64)
        {
          break;
        }

        v17 = v16 - 65;
        if (v17 <= 0xFu)
        {
          v13 = v17 | (16 * v13);
          --v14;
          ++v15;
          if (v14 != -1)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      *a3 = v15;
      a3[1] = v14;
      v9 = v14;
      if (v11 != 63)
      {
LABEL_20:
        *v8 = v13;
        if (!v9)
        {
          goto LABEL_57;
        }

        goto LABEL_21;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v12 = **a3;
    if ((v11 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x400) == 0)
  {
    goto LABEL_10;
  }

  v13 = v12 - 47;
  *a3 = (v10 + 1);
  a3[1] = --v9;
  if (v11 != 63)
  {
    goto LABEL_20;
  }

LABEL_17:
  *(a1 + 8) = 1;
  *v8 = v13;
  if (!v9)
  {
    goto LABEL_57;
  }

LABEL_21:
  v18 = *a3;
  v19 = **a3;
  if (v19 != 63)
  {
    v20 = **a3;
    if ((v19 & 0x80) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  ++v18;
  --v9;
  *a3 = v18;
  a3[1] = v9;
  if (!v9)
  {
LABEL_57:
    *(a1 + 8) = 1;
    v22 = v9;
    *(v6 + 28) = 0;
    if (v9)
    {
      goto LABEL_39;
    }

    goto LABEL_58;
  }

  v20 = *v18;
  if ((v20 & 0x80) != 0)
  {
    goto LABEL_27;
  }

LABEL_26:
  if ((*(MEMORY[0x277D85DE0] + 4 * v20 + 60) & 0x400) != 0)
  {
    v21 = v20 - 47;
    *a3 = (v18 + 1);
    v22 = v9 - 1;
    a3[1] = v9 - 1;
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

LABEL_33:
    if (v19 != 63)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

LABEL_27:
  v21 = 0;
  v22 = v9 - 1;
  v23 = v18 + 1;
  while (1)
  {
    v24 = *(v23 - 1);
    if (v24 == 64)
    {
      break;
    }

    v25 = v24 - 65;
    if (v25 <= 0xFu)
    {
      v21 = v25 | (16 * v21);
      --v22;
      ++v23;
      if (v22 != -1)
      {
        continue;
      }
    }

    goto LABEL_57;
  }

  *a3 = v23;
  a3[1] = v22;
  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_37:
  *(a1 + 8) = 1;
  if (v19 != 63)
  {
LABEL_38:
    *(v6 + 28) = v21;
    if (v22)
    {
      goto LABEL_39;
    }

LABEL_58:
    v29 = 0;
    goto LABEL_59;
  }

LABEL_34:
  *(v6 + 28) = -v21;
  if (!v22)
  {
    goto LABEL_58;
  }

LABEL_39:
  v26 = *a3;
  v27 = **a3;
  if (v27 == 63)
  {
    ++v26;
    --v22;
    *a3 = v26;
    a3[1] = v22;
    if (!v22)
    {
LABEL_49:
      *(a1 + 8) = 1;
      *(v6 + 32) = 0;
      if (!v22)
      {
        goto LABEL_70;
      }

      goto LABEL_60;
    }

    v28 = *v26;
    if ((v28 & 0x80) != 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v28 = **a3;
    if ((v27 & 0x80) != 0)
    {
LABEL_45:
      v29 = 0;
      v30 = v22 - 1;
      v31 = v26 + 1;
      while (1)
      {
        v32 = *(v31 - 1);
        if (v32 == 64)
        {
          break;
        }

        v33 = v32 - 65;
        if (v33 <= 0xFu)
        {
          v29 = v33 | (16 * v29);
          --v30;
          ++v31;
          if (v30 != -1)
          {
            continue;
          }
        }

        goto LABEL_49;
      }

      *a3 = v31;
      a3[1] = v30;
      v22 = v30;
      if (v27 != 63)
      {
LABEL_54:
        *(v6 + 32) = v29;
        if (!v22)
        {
          goto LABEL_70;
        }

        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v28 + 60) & 0x400) == 0)
  {
    goto LABEL_45;
  }

  v29 = v28 - 47;
  *a3 = (v26 + 1);
  a3[1] = --v22;
  if (v27 != 63)
  {
    goto LABEL_54;
  }

LABEL_59:
  *(a1 + 8) = 1;
  *(v6 + 32) = v29;
  if (!v22)
  {
    goto LABEL_70;
  }

LABEL_60:
  v34 = *a3;
  v35 = **a3;
  if (v35 == 63)
  {
    ++v34;
    --v22;
    *a3 = v34;
    a3[1] = v22;
    if (v22)
    {
      v36 = *v34;
      if ((v36 & 0x80) != 0)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

LABEL_70:
    v37 = 0;
LABEL_71:
    *(a1 + 8) = 1;
    *(v6 + 36) = v37;
    return 0;
  }

  v36 = **a3;
  if ((v35 & 0x80) != 0)
  {
LABEL_66:
    v37 = 0;
    v38 = v22 - 1;
    v39 = v34 + 1;
    while (1)
    {
      v40 = *(v39 - 1);
      if (v40 == 64)
      {
        break;
      }

      v41 = v40 - 65;
      if (v41 <= 0xFu)
      {
        v37 = v41 | (16 * v37);
        --v38;
        ++v39;
        if (v38 != -1)
        {
          continue;
        }
      }

      goto LABEL_70;
    }

    *a3 = v39;
    a3[1] = v38;
    if (v35 == 63)
    {
      goto LABEL_71;
    }

    goto LABEL_75;
  }

LABEL_65:
  if ((*(MEMORY[0x277D85DE0] + 4 * v36 + 60) & 0x400) == 0)
  {
    goto LABEL_66;
  }

  v37 = v36 - 47;
  *a3 = (v34 + 1);
  a3[1] = v22 - 1;
  if (v35 == 63)
  {
    goto LABEL_71;
  }

LABEL_75:
  v43 = *(a1 + 8);
  *(v6 + 36) = v37;
  if (v43)
  {
    return 0;
  }

  v45 = *a2;
  v44 = (*(*a2 + 8) + **a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = v44 - **a2 + 40;
  *(v45 + 8) = v46;
  if (v46 > *(v45 + 16))
  {
    operator new();
  }

  *(v44 + 8) = 27;
  *(v44 + 16) = 0;
  *v44 = &unk_2868A76C8;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a3, v6);
  v47 = a3[1];
  if (v47 && **a3 == 56)
  {
    ++*a3;
    a3[1] = v47 - 1;
    return v44;
  }

  return v44;
}

unint64_t llvm::ms_demangle::Demangler::demangleSigned(uint64_t a1, unsigned __int8 **a2)
{
  v2 = a2[1];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *a2;
  v4 = **a2;
  if (v4 != 63)
  {
    v5 = **a2;
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  ++v3;
  --v2;
  *a2 = v3;
  a2[1] = v2;
  if (!v2)
  {
LABEL_12:
    *(a1 + 8) = 1;
    return 0;
  }

  v5 = *v3;
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  if ((*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x400) != 0)
  {
    v6 = v5 - 47;
    *a2 = v3 + 1;
    a2[1] = v2 - 1;
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_8:
  v6 = 0;
  v7 = v2 - 1;
  v8 = v3 + 1;
  while (1)
  {
    v9 = *(v8 - 1);
    if (v9 == 64)
    {
      break;
    }

    v10 = v9 - 65;
    if (v10 <= 0xFu)
    {
      v6 = v10 | (16 * v6);
      --v7;
      ++v8;
      if (v7 != -1)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

  *a2 = v8;
  a2[1] = v7;
  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  *(a1 + 8) = 1;
LABEL_15:
  if (v4 == 63)
  {
    return -v6;
  }

  else
  {
    return v6;
  }
}

unint64_t llvm::ms_demangle::Demangler::demangleInitFiniStub(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  v7 = (v5[1] + *v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 - *v5 + 48;
  v5[1] = v8;
  if (v8 > v5[2])
  {
    operator new();
  }

  *(v7 + 8) = 10;
  *(v7 + 16) = 0;
  *v7 = &unk_2868A7138;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = a3;
  v9 = a2[1];
  if (v9 && **a2 == 63)
  {
    ++*a2;
    a2[1] = v9 - 1;
    v10 = 1;
    v11 = llvm::ms_demangle::Demangler::demangleUnqualifiedSymbolName(a1, a2, 2u);
    v12 = *(a1 + 8);
    if (v12)
    {
LABEL_9:
      v15 = 0;
      if (v12)
      {
        return 0;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    v11 = llvm::ms_demangle::Demangler::demangleUnqualifiedSymbolName(a1, a2, 2u);
    v12 = *(a1 + 8);
    if (v12)
    {
      goto LABEL_9;
    }
  }

  v13 = v11;
  v14 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v11);
  v12 = *(a1 + 8);
  if (v12)
  {
    goto LABEL_9;
  }

  v15 = v14;
  if (*(v13 + 8) == 11)
  {
    v17 = *(v14 + 16);
    v18 = *(v17 + 24);
    if (v18 <= 1)
    {
      goto LABEL_35;
    }

    *(v13 + 24) = *(*(v17 + 16) + 8 * v18 - 16);
  }

LABEL_14:
  v19 = a2[1];
  if (v19)
  {
    v20 = **a2;
    if ((v20 - 48) > 4)
    {
      result = llvm::ms_demangle::Demangler::demangleFunctionEncoding(a1, a2);
      if (result)
      {
        v21 = *(*(*(v15 + 16) + 16) + 8 * *(*(v15 + 16) + 24) - 8);
        if (*(v21 + 8) == 9)
        {
          *(v21 + 24) = *(*(result + 24) + 32);
        }
      }
    }

    else
    {
      ++*a2;
      a2[1] = v19 - 1;
      result = llvm::ms_demangle::Demangler::demangleVariableEncoding(a1, a2, v20 - 47);
    }
  }

  else
  {
    result = 0;
    *(a1 + 8) = 1;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  *(result + 16) = v15;
  v22 = *(*(*(v15 + 16) + 16) + 8 * *(*(v15 + 16) + 24) - 8);
  if (*(v22 + 8) == 9 && !*(v22 + 24))
  {
    goto LABEL_35;
  }

  if (*(result + 8) != 27)
  {
    if (!v10)
    {
      *(v7 + 32) = *(result + 16);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  *(v7 + 24) = result;
  v23 = a2[1];
  if (!v23 || **a2 != 64)
  {
    goto LABEL_35;
  }

  ++*a2;
  a2[1] = v23 - 1;
  if (!v10)
  {
    goto LABEL_32;
  }

  if (v23 == 1 || **a2 != 64)
  {
LABEL_35:
    result = 0;
    *(a1 + 8) = 1;
    return result;
  }

  ++*a2;
  a2[1] = v23 - 2;
LABEL_32:
  result = llvm::ms_demangle::Demangler::demangleFunctionEncoding(a1, a2);
  if (result)
  {
LABEL_37:
    v24 = result;
    v25 = synthesizeQualifiedName(v6, v7);
    result = v24;
    *(v24 + 16) = v25;
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleDeclarator(uint64_t a1, uint64_t *a2)
{
  v4 = llvm::ms_demangle::Demangler::demangleUnqualifiedSymbolName(a1, a2, 2u);
  v5 = *(a1 + 8);
  if (v5 & 1) != 0 || (v6 = v4, v7 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v4), v5 = *(a1 + 8), (v5))
  {
    v8 = 0;
    if (v5)
    {
      return 0;
    }
  }

  else
  {
    v8 = v7;
    if (*(v6 + 8) == 11)
    {
      v10 = *(v7 + 16);
      v11 = *(v10 + 24);
      if (v11 < 2)
      {
LABEL_20:
        result = 0;
        *(a1 + 8) = 1;
        return result;
      }

      *(v6 + 24) = *(*(v10 + 16) + 8 * v11 - 16);
    }
  }

  v12 = a2[1];
  if (v12)
  {
    v13 = **a2;
    if ((v13 - 48) > 4)
    {
      result = llvm::ms_demangle::Demangler::demangleFunctionEncoding(a1, a2);
      if (result)
      {
        v14 = *(*(*(v8 + 16) + 16) + 8 * *(*(v8 + 16) + 24) - 8);
        if (*(v14 + 8) == 9)
        {
          *(v14 + 24) = *(*(result + 24) + 32);
        }
      }
    }

    else
    {
      ++*a2;
      a2[1] = v12 - 1;
      result = llvm::ms_demangle::Demangler::demangleVariableEncoding(a1, a2, v13 - 47);
    }
  }

  else
  {
    result = 0;
    *(a1 + 8) = 1;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  *(result + 16) = v8;
  v15 = *(*(*(v8 + 16) + 16) + 8 * *(*(v8 + 16) + 24) - 8);
  if (*(v15 + 8) == 9 && !*(v15 + 24))
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleFunctionEncoding(uint64_t a1, unsigned __int8 **a2)
{
  v4 = a2[1];
  if (v4 < 4)
  {
    v5 = 0;
    if (v4)
    {
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  if (**a2 == 810165284)
  {
    *a2 += 4;
    a2[1] = (v4 - 4);
    v5 = 128;
    if (v4 != 4)
    {
LABEL_3:
      v6 = llvm::ms_demangle::Demangler::demangleFunctionClass(a1, a2) | v5;
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

LABEL_21:
    result = 0;
    *(a1 + 8) = 1;
    return result;
  }

  v6 = llvm::ms_demangle::Demangler::demangleFunctionClass(a1, a2);
  if ((v6 & 0x800) == 0)
  {
LABEL_4:
    if ((v6 & 0x200) == 0)
    {
      v7 = 0;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_94;
    }

    v20 = *(a1 + 16);
    v7 = (v20[1] + *v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = v7 - *v20 + 80;
    v20[1] = v21;
    if (v21 > v20[2])
    {
      operator new();
    }

    *(v7 + 8) = 13;
    *(v7 + 12) = 0;
    *(v7 + 16) = 0;
    *(v7 + 20) = 0;
    *(v7 + 22) = 8;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *v7 = &unk_2868A72F8;
    *(v7 + 68) = 0;
    *(v7 + 60) = 0;
    if ((v6 & 0x400) == 0)
    {
LABEL_68:
      v46 = a2[1];
      if (v46)
      {
        v47 = *a2;
        v48 = **a2;
        if (v48 != 63)
        {
          v49 = **a2;
          if ((v48 & 0x80) != 0)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }

        ++v47;
        --v46;
        *a2 = v47;
        a2[1] = v46;
        if (v46)
        {
          v49 = *v47;
          if ((v49 & 0x80) != 0)
          {
            goto LABEL_75;
          }

LABEL_74:
          if ((*(MEMORY[0x277D85DE0] + 4 * v49 + 60) & 0x400) != 0)
          {
            v50 = v49 - 47;
            v51 = v46 - 1;
            *a2 = v47 + 1;
            a2[1] = v51;
            if ((v50 & 0x8000000000000000) == 0)
            {
LABEL_98:
              if (v48 != 63)
              {
LABEL_81:
                *(v7 + 72) = v50;
                if (v51)
                {
                  v55 = *a2;
                  v56 = **a2;
                  if (v56 != 63)
                  {
                    v57 = **a2;
                    if ((v56 & 0x80) != 0)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_87;
                  }

                  ++v55;
                  --v51;
                  *a2 = v55;
                  a2[1] = v51;
                  if (v51)
                  {
                    v57 = *v55;
                    if ((v57 & 0x80) != 0)
                    {
                      goto LABEL_88;
                    }

LABEL_87:
                    if ((*(MEMORY[0x277D85DE0] + 4 * v57 + 60) & 0x400) != 0)
                    {
                      v28 = v57 - 47;
                      *a2 = v55 + 1;
                      a2[1] = v51 - 1;
                      if ((v28 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_102;
                      }

                      goto LABEL_101;
                    }

LABEL_88:
                    v28 = 0;
                    v58 = v51 - 1;
                    v59 = v55 + 1;
                    while (1)
                    {
                      v60 = *(v59 - 1);
                      if (v60 == 64)
                      {
                        break;
                      }

                      v61 = v60 - 65;
                      if (v61 <= 0xFu)
                      {
                        v28 = v61 | (16 * v28);
                        --v58;
                        ++v59;
                        if (v58 != -1)
                        {
                          continue;
                        }
                      }

                      goto LABEL_92;
                    }

                    *a2 = v59;
                    a2[1] = v58;
                    if ((v28 & 0x8000000000000000) == 0)
                    {
LABEL_102:
                      if (v56 != 63)
                      {
                        goto LABEL_93;
                      }

                      goto LABEL_103;
                    }

LABEL_101:
                    *(a1 + 8) = 1;
                    goto LABEL_102;
                  }
                }

LABEL_92:
                LODWORD(v28) = 0;
                *(a1 + 8) = 1;
                goto LABEL_93;
              }

              v50 = -v50;
LABEL_80:
              v51 = a2[1];
              goto LABEL_81;
            }

LABEL_97:
            *(a1 + 8) = 1;
            goto LABEL_98;
          }

LABEL_75:
          v50 = 0;
          v51 = v46 - 1;
          v52 = v47 + 1;
          while (1)
          {
            v53 = *(v52 - 1);
            if (v53 == 64)
            {
              break;
            }

            v54 = v53 - 65;
            if (v54 <= 0xFu)
            {
              v50 = v54 | (16 * v50);
              --v51;
              ++v52;
              if (v51 != -1)
              {
                continue;
              }
            }

            goto LABEL_79;
          }

          *a2 = v52;
          a2[1] = v51;
          if ((v50 & 0x8000000000000000) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }
      }

LABEL_79:
      LODWORD(v50) = 0;
      *(a1 + 8) = 1;
      goto LABEL_80;
    }

    v22 = a2[1];
    if (v22)
    {
      v23 = *a2;
      v24 = **a2;
      if (v24 != 63)
      {
        v25 = **a2;
        goto LABEL_47;
      }

      ++v23;
      --v22;
      *a2 = v23;
      a2[1] = v22;
      if (v22)
      {
        v25 = *v23;
LABEL_47:
        if ((v25 & 0x80) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v25 + 60) & 0x400) != 0)
        {
          v33 = v25 - 47;
          *a2 = v23 + 1;
          v34 = v22 - 1;
        }

        else
        {
          v33 = 0;
          v34 = v22 - 1;
          v35 = v23 + 1;
          while (1)
          {
            v36 = *(v35 - 1);
            if (v36 == 64)
            {
              break;
            }

            v37 = v36 - 65;
            if (v37 <= 0xFu)
            {
              v33 = v37 | (16 * v33);
              --v34;
              ++v35;
              if (v34 != -1)
              {
                continue;
              }
            }

            goto LABEL_53;
          }

          *a2 = v35;
        }

        a2[1] = v34;
        if ((v33 & 0x8000000000000000) != 0)
        {
          *(a1 + 8) = 1;
          if (v24 == 63)
          {
LABEL_120:
            v33 = -v33;
            goto LABEL_54;
          }
        }

        else if (v24 == 63)
        {
          goto LABEL_120;
        }

LABEL_55:
        *(v7 + 64) = v33;
        if (v34)
        {
          v38 = *a2;
          v39 = **a2;
          if (v39 != 63)
          {
            v40 = **a2;
LABEL_60:
            if ((v40 & 0x80) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v40 + 60) & 0x400) != 0)
            {
              v41 = v40 - 47;
              *a2 = v38 + 1;
              v42 = v34 - 1;
            }

            else
            {
              v41 = 0;
              v42 = v34 - 1;
              v43 = v38 + 1;
              while (1)
              {
                v44 = *(v43 - 1);
                if (v44 == 64)
                {
                  break;
                }

                v45 = v44 - 65;
                if (v45 <= 0xFu)
                {
                  v41 = v45 | (16 * v41);
                  --v42;
                  ++v43;
                  if (v42 != -1)
                  {
                    continue;
                  }
                }

                goto LABEL_66;
              }

              *a2 = v43;
            }

            a2[1] = v42;
            if ((v41 & 0x8000000000000000) != 0)
            {
              *(a1 + 8) = 1;
            }

            if (v39 == 63)
            {
              v41 = -v41;
            }

            goto LABEL_67;
          }

          ++v38;
          --v34;
          *a2 = v38;
          a2[1] = v34;
          if (v34)
          {
            v40 = *v38;
            goto LABEL_60;
          }
        }

LABEL_66:
        LODWORD(v41) = 0;
        *(a1 + 8) = 1;
LABEL_67:
        *(v7 + 68) = v41;
        goto LABEL_68;
      }
    }

LABEL_53:
    LODWORD(v33) = 0;
    *(a1 + 8) = 1;
LABEL_54:
    v34 = a2[1];
    goto LABEL_55;
  }

LABEL_13:
  v13 = *(a1 + 16);
  v7 = (v13[1] + *v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v7 - *v13 + 80;
  v13[1] = v14;
  if (v14 > v13[2])
  {
    operator new();
  }

  *(v7 + 8) = 13;
  *(v7 + 12) = 0;
  *(v7 + 16) = 0;
  *(v7 + 20) = 0;
  *(v7 + 22) = 8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *v7 = &unk_2868A72F8;
  *(v7 + 68) = 0;
  *(v7 + 60) = 0;
  v15 = a2[1];
  if (!v15)
  {
    goto LABEL_92;
  }

  v16 = *a2;
  v17 = **a2;
  if (v17 == 63)
  {
    ++v16;
    --v15;
    *a2 = v16;
    a2[1] = v15;
    if (!v15)
    {
      goto LABEL_92;
    }

    v18 = *v16;
    if ((v18 & 0x80) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v18 = **a2;
    if ((v17 & 0x80) != 0)
    {
      goto LABEL_35;
    }
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v18 + 60) & 0x400) != 0)
  {
    v28 = v18 - 47;
    *a2 = v16 + 1;
    a2[1] = v15 - 1;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_35:
  v28 = 0;
  v29 = v15 - 1;
  v30 = v16 + 1;
  while (1)
  {
    v31 = *(v30 - 1);
    if (v31 == 64)
    {
      break;
    }

    v32 = v31 - 65;
    if (v32 <= 0xFu)
    {
      v28 = v32 | (16 * v28);
      --v29;
      ++v30;
      if (v29 != -1)
      {
        continue;
      }
    }

    goto LABEL_92;
  }

  *a2 = v30;
  a2[1] = v29;
  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_41:
    *(a1 + 8) = 1;
  }

LABEL_42:
  if (v17 != 63)
  {
    goto LABEL_93;
  }

LABEL_103:
  v28 = -v28;
LABEL_93:
  *(v7 + 60) = v28;
  if ((v6 & 0x100) != 0)
  {
LABEL_6:
    v8 = *(a1 + 16);
    v9 = (v8[1] + *v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v10 = v9 - *v8 + 64;
    v8[1] = v10;
    if (v10 > v8[2])
    {
      operator new();
    }

    *(v9 + 8) = 3;
    *(v9 + 12) = 0;
    *v9 = &unk_2868A7090;
    *(v9 + 16) = 0;
    *(v9 + 20) = 0;
    *(v9 + 22) = 8;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    if ((*(a1 + 8) & 1) == 0)
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_94:
  v9 = llvm::ms_demangle::Demangler::demangleFunctionType(a1, a2, (v6 & 0x18) == 0);
  if (*(a1 + 8))
  {
    return 0;
  }

LABEL_9:
  if (v7)
  {
    *(v7 + 8) = *(v9 + 8);
    *(v7 + 12) = *(v9 + 12);
    v11 = *(v9 + 16);
    v12 = *(v9 + 32);
    *(v7 + 41) = *(v9 + 41);
    *(v7 + 16) = v11;
    *(v7 + 32) = v12;
  }

  else
  {
    v7 = v9;
  }

  *(v7 + 22) = v6;
  v26 = *(a1 + 16);
  result = (v26[1] + *v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = result - *v26 + 32;
  v26[1] = v27;
  if (v27 > v26[2])
  {
    operator new();
  }

  *(result + 8) = 26;
  *(result + 16) = 0;
  *(result + 24) = v7;
  *result = &unk_2868A7708;
  return result;
}

unint64_t synthesizeQualifiedName(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (v3[1] + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 - v4 + 24;
  v3[1] = v6;
  v7 = v3[2];
  if (v6 > v7)
  {
    operator new();
  }

  *(v5 + 8) = 20;
  *v5 = &unk_2868A74C8;
  *(v5 + 16) = 0;
  v8 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = v6 - (v5 + 24) + v8 + 32;
  v3[1] = v9;
  if (v9 > v7)
  {
    operator new();
  }

  *(v8 + 8) = 19;
  *v8 = &unk_2868A7488;
  *(v8 + 16) = xmmword_2573686A0;
  *(v5 + 16) = v8;
  v10 = *a1;
  v11 = (((*a1)[1] + **a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11 - **a1 + 8;
  v10[1] = v12;
  if (v12 > v10[2])
  {
    operator new();
  }

  *v11 = 0;
  *(*(v5 + 16) + 16) = v11;
  *v11 = a2;
  return v5;
}

unint64_t llvm::ms_demangle::Demangler::demangleSpecialIntrinsic(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = v2 - 3;
  if (v2 < 3)
  {
    return 0;
  }

  v5 = *a2;
  if (**a2 == 24383 && *(*a2 + 2) == 55)
  {
    v16 = 1;
LABEL_45:
    v17 = (v5 + 3);
LABEL_46:
    v18 = -3;
LABEL_47:
    *a2 = v17;
    a2[1] = v2 + v18;

    return llvm::ms_demangle::Demangler::demangleSpecialTableSymbolNode(a1, a2, v16);
  }

  if (*v5 == 24383 && *(v5 + 2) == 56)
  {
    v16 = 2;
    goto LABEL_45;
  }

  if (*v5 == 24383 && *(v5 + 2) == 57)
  {
    *a2 = v5 + 3;
    a2[1] = v3;

    return llvm::ms_demangle::Demangler::demangleVcallThunkNode(a1, a2);
  }

  if (*v5 == 24383 && *(v5 + 2) == 65)
  {
    goto LABEL_53;
  }

  if (*v5 == 24383 && *(v5 + 2) == 66)
  {
    *a2 = v5 + 3;
    a2[1] = v3;
    v15 = 0;

    return llvm::ms_demangle::Demangler::demangleLocalStaticGuard(a1, a2, v15);
  }

  if (*v5 == 24383 && *(v5 + 2) == 67)
  {
    *a2 = v5 + 3;
    a2[1] = v3;

    return llvm::ms_demangle::Demangler::demangleStringLiteral(a1, a2);
  }

  if (*v5 == 24383 && *(v5 + 2) == 80)
  {
LABEL_53:
    *a2 = v5 + 3;
    a2[1] = v3;
    goto LABEL_54;
  }

  if (v2 == 3)
  {
    goto LABEL_32;
  }

  switch(*v5)
  {
    case 0x30525F3F:
      *a2 = v5 + 4;
      a2[1] = v2 - 4;
      v19 = a1;
      v21 = llvm::ms_demangle::Demangler::demangleType(a1, a2, 2);
      a1 = v19;
      if ((*(v19 + 8) & 1) == 0)
      {
        v22 = a2[1];
        if (v22 >= 2 && **a2 == 14400)
        {
          v23 = v22 - 2;
          *a2 += 2;
          a2[1] = v23;
          if (!v23)
          {
          }
        }
      }

LABEL_54:
      *(a1 + 8) = 1;
      return 0;
    case 0x31525F3F:
      *a2 = v5 + 4;
      a2[1] = v2 - 4;

      return llvm::ms_demangle::Demangler::demangleRttiBaseClassDescriptorNode(a1, (a1 + 16), a2);
    case 0x32525F3F:
      *a2 = v5 + 4;
      a2[1] = v2 - 4;
      v24 = *(a1 + 16);
      v25 = (v24[1] + *v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = v25 - *v24 + 40;
      v24[1] = v26;
      if (v26 > v24[2])
      {
        operator new();
      }

      *(v25 + 8) = 5;
      *v25 = &unk_2868A7178;
      *(v25 + 16) = 0;
      *(v25 + 32) = 23;
      v27 = a1;
      v29 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v25);
      v30 = *(v27 + 16);
      result = (v30[1] + *v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v31 = result - *v30 + 40;
      v30[1] = v31;
      if (v31 > v30[2])
      {
        operator new();
      }

      v41 = v27;
      *(result + 8) = 27;
      *result = &unk_2868A76C8;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = v29;
      v42 = a2[1];
      if (v42 && **a2 == 56)
      {
        ++*a2;
        a2[1] = v42 - 1;
        return result;
      }

LABEL_98:
      result = 0;
      *(v41 + 8) = 1;
      return result;
    case 0x33525F3F:
      *a2 = v5 + 4;
      a2[1] = v2 - 4;
      v33 = *(a1 + 16);
      v34 = (v33[1] + *v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = v34 - *v33 + 40;
      v33[1] = v35;
      if (v35 > v33[2])
      {
        operator new();
      }

      *(v34 + 8) = 5;
      *v34 = &unk_2868A7178;
      *(v34 + 16) = 0;
      *(v34 + 32) = 33;
      v36 = a1;
      v38 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v34);
      v39 = *(v36 + 16);
      result = (v39[1] + *v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = result - *v39 + 40;
      v39[1] = v40;
      if (v40 > v39[2])
      {
        operator new();
      }

      v41 = v36;
      *(result + 8) = 27;
      *result = &unk_2868A76C8;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = v38;
      v43 = a2[1];
      if (v43 && **a2 == 56)
      {
        ++*a2;
        a2[1] = v43 - 1;
        return result;
      }

      goto LABEL_98;
    case 0x34525F3F:
      v17 = (v5 + 4);
      v16 = 15;
      v18 = -4;
      goto LABEL_47;
  }

LABEL_32:
  v13 = *a2;
  if (**a2 == 24383 && *(*a2 + 2) == 83)
  {
    v17 = v13 + 3;
    v16 = 16;
    goto LABEL_46;
  }

  if (v2 == 3)
  {
    return 0;
  }

  switch(*v13)
  {
    case 0x455F5F3F:
      *a2 = (v13 + 1);
      a2[1] = v2 - 4;
      v32 = 0;

      break;
    case 0x465F5F3F:
      *a2 = (v13 + 1);
      a2[1] = v2 - 4;
      v32 = 1;

      break;
    case 0x4A5F5F3F:
      *a2 = (v13 + 1);
      a2[1] = v2 - 4;
      v15 = 1;

      return llvm::ms_demangle::Demangler::demangleLocalStaticGuard(a1, a2, v15);
    default:
      return 0;
  }

  return llvm::ms_demangle::Demangler::demangleInitFiniStub(a1, a2, v32);
}

unint64_t llvm::ms_demangle::Demangler::demangleStringLiteral(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v51 = 0u;
  v53 = -1;
  v54 = 1;
  v4 = *(a1 + 16);
  v5 = (v4[1] + *v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 - *v4 + 48;
  v4[1] = v6;
  if (v6 > v4[2])
  {
    operator new();
  }

  *(v5 + 8) = 22;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *v5 = &unk_2868A7688;
  *(v5 + 44) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  v7 = *(a2 + 8);
  if (v7 < 2)
  {
    goto LABEL_5;
  }

  v8 = *a2;
  if (**a2 != 24384)
  {
    goto LABEL_5;
  }

  *a2 = v8 + 2;
  *(a2 + 8) = v7 - 2;
  if (v7 == 2)
  {
    goto LABEL_5;
  }

  v11 = v8[2];
  v12 = (v8 + 3);
  v13 = v7 - 3;
  *a2 = v8 + 3;
  *(a2 + 8) = v7 - 3;
  if (v11 == 48)
  {
    v14 = 0;
    if (v7 == 3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v11 != 49)
    {
      goto LABEL_5;
    }

    v14 = 1;
    if (v7 == 3)
    {
      goto LABEL_23;
    }
  }

  v15 = *v12;
  v16 = v15 == 63;
  if (v15 != 63)
  {
    goto LABEL_17;
  }

  v12 = (v8 + 4);
  v13 = v7 - 4;
  *a2 = v8 + 4;
  *(a2 + 8) = v7 - 4;
  if (v7 == 4)
  {
LABEL_23:
    *(a1 + 8) = 1;
    goto LABEL_5;
  }

  v15 = *v12;
LABEL_17:
  if ((v15 & 0x80) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v15 + 60) & 0x400) != 0)
  {
    v17 = v15 - 47;
    v19 = v12 + 1;
    v18 = v13 - 1;
  }

  else
  {
    v17 = 0;
    v18 = v13 - 1;
    v19 = v12 + 1;
    while (1)
    {
      v20 = *(v19 - 1);
      if (v20 == 64)
      {
        break;
      }

      v21 = v20 - 65;
      if (v21 <= 0xFu)
      {
        v17 = v21 | (16 * v17);
        --v18;
        ++v19;
        if (v18 != -1)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  *a2 = v19;
  *(a2 + 8) = v18;
  if ((*(a1 + 8) & 1) == 0)
  {
    v9 = 0;
    v22 = 1;
    if (v14)
    {
      v22 = 2;
    }

    v23 = v17 < v22 || v16;
    if (v23)
    {
      goto LABEL_6;
    }

    if (!v18)
    {
      goto LABEL_6;
    }

    v24 = *a2;
    v25 = memchr(*a2, 64, v18);
    v9 = 0;
    if (!v25)
    {
      goto LABEL_6;
    }

    v29 = (v25 - v24);
    if (v29 == -1)
    {
      goto LABEL_6;
    }

    v30 = v29 + 1;
    v31 = &v30[v24];
    v32 = v18 - v30;
    *a2 = v31;
    *(a2 + 8) = v32;
    if (v32)
    {
      if (v14)
      {
        *(v5 + 44) = 3;
        if (v17 >= 0x41)
        {
          *(v5 + 40) = 1;
        }

        v33 = *(a2 + 8);
        if (!v33)
        {
LABEL_53:
          v9 = v51;
          goto LABEL_6;
        }

        v34 = v17 - 2;
        while (**a2 != 64)
        {
          if (v33 != 1)
          {
            v35 = llvm::ms_demangle::Demangler::demangleCharLiteral(a1, a2);
            if (*(a1 + 8) & 1) != 0 || !*(a2 + 8) || (v36 = v35, v37 = llvm::ms_demangle::Demangler::demangleCharLiteral(a1, a2), (*(a1 + 8)))
            {
              v38 = 0;
              v39 = 1;
              *(a1 + 8) = 1;
            }

            else
            {
              v39 = 0;
              v38 = v37 | (v36 << 8);
            }

            if (v34 || *(v5 + 40) == 1)
            {
              outputEscapedChar(&v51, v38);
              v39 = *(a1 + 8);
            }

            if ((v39 & 1) == 0)
            {
              v33 = *(a2 + 8);
              v34 -= 2;
              if (v33)
              {
                continue;
              }
            }
          }

          goto LABEL_53;
        }

        ++*a2;
        *(a2 + 8) = v33 - 1;
      }

      else
      {
        v40 = 0;
        while (**a2 != 64)
        {
          if (v40 <= 0x7F)
          {
            v55.i8[v40++] = llvm::ms_demangle::Demangler::demangleCharLiteral(a1, a2);
            v32 = *(a2 + 8);
            if (v32)
            {
              continue;
            }
          }

          goto LABEL_5;
        }

        ++*a2;
        *(a2 + 8) = v32 - 1;
        if (v17 > v40)
        {
          *(v5 + 40) = 1;
        }

        v41 = guessCharByteSize(&v55, v40, v17, v26, v27, v28);
        *(v5 + 44) = dword_2573A5960[v41 - 1];
        v42 = v40;
        if (v41 <= v40)
        {
          v43 = v41;
          v44 = v41;
          v45 = &v55.u8[3];
          if (v40 / v41 <= 1)
          {
            v46 = 1;
          }

          else
          {
            v46 = v40 / v41;
          }

          v47 = 1;
          v48 = v42 / v41;
          do
          {
            v49 = *(v45 - 3);
            if (v43 != 1)
            {
              v49 |= *(v45 - 2) << 8;
              if (v43 != 2)
              {
                v49 |= *(v45 - 1) << 16;
                if (v43 != 3)
                {
                  v49 |= *v45 << 24;
                }
              }
            }

            if (v47 < v48 || *(v5 + 40) == 1)
            {
              outputEscapedChar(&v51, v49);
            }

            v45 += v44;
            ++v47;
            --v46;
          }

          while (v46);
        }
      }

      *(v5 + 24) = llvm::ms_demangle::Demangler::copyString(a1, v51, *(&v51 + 1));
      *(v5 + 32) = v50;
      v9 = v51;
      goto LABEL_7;
    }
  }

LABEL_5:
  v9 = 0;
LABEL_6:
  v5 = 0;
  *(a1 + 8) = 1;
LABEL_7:
  free(v9);
  return v5;
}

unint64_t llvm::ms_demangle::Demangler::demangleVcallThunkNode(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = (v4[1] + *v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 - *v4 + 32;
  v4[1] = v7;
  v8 = v4[2];
  if (v7 > v8)
  {
    operator new();
  }

  *(v6 + 8) = 26;
  *v6 = &unk_2868A7708;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v9 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 - v5 + 32;
  v4[1] = v10;
  if (v10 > v8)
  {
    operator new();
  }

  *(v9 + 8) = 6;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *v9 = &unk_2868A70E0;
  v11 = (v9 + 39) & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 - (v9 + 32) + v11 + 80;
  v4[1] = v12;
  if (v12 > v8)
  {
    operator new();
  }

  *(v11 + 8) = 13;
  *(v11 + 12) = 0;
  *(v11 + 16) = 0;
  *(v11 + 20) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *v11 = &unk_2868A72F8;
  *(v11 + 68) = 0;
  *(v11 + 60) = 0;
  *(v6 + 24) = v11;
  *(v11 + 22) = 256;
  v13 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v9);
  result = 0;
  *(v6 + 16) = v13;
  if (*(a1 + 8))
  {
    return result;
  }

  v15 = a2[1];
  if (v15 < 2)
  {
    goto LABEL_10;
  }

  v16 = *a2;
  if (**a2 != 16932)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = 0;
  v17 = v15 - 2;
  *a2 = v16 + 2;
  a2[1] = v15 - 2;
  if (v15 == 2)
  {
    goto LABEL_23;
  }

  v18 = *a2;
  v19 = **a2;
  if (v19 != 63)
  {
    v20 = **a2;
    goto LABEL_17;
  }

  ++v18;
  v17 = v15 - 3;
  *a2 = v18;
  a2[1] = v15 - 3;
  if (v15 == 3)
  {
LABEL_23:
    v21 = 0;
LABEL_24:
    result = 0;
    *(a1 + 8) = 1;
    *(v9 + 24) = v21;
    return result;
  }

  v20 = *v18;
LABEL_17:
  if ((v20 & 0x80) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v20 + 60) & 0x400) != 0)
  {
    v21 = v20 - 47;
    *a2 = (v18 + 1);
    v22 = v17 - 1;
  }

  else
  {
    v21 = 0;
    v22 = v17 - 1;
    v23 = v18 + 1;
    while (1)
    {
      v24 = *(v23 - 1);
      if (v24 == 64)
      {
        break;
      }

      v25 = v24 - 65;
      if (v25 <= 0xFu)
      {
        v21 = v25 | (16 * v21);
        --v22;
        ++v23;
        if (v22 != -1)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    *a2 = v23;
  }

  a2[1] = v22;
  if (v19 == 63)
  {
    goto LABEL_24;
  }

  *(v9 + 24) = v21;
  v26 = a2[1];
  if (!v26 || (v27 = *a2, **a2 != 65))
  {
LABEL_10:
    result = 0;
    *(a1 + 8) = 1;
    return result;
  }

  *(a1 + 8) = 0;
  *a2 = v27 + 1;
  a2[1] = v26 - 1;
  if (v26 == 1)
  {
    result = 0;
    *(a1 + 8) = 1;
    *(*(v6 + 24) + 20) = 0;
  }

  else
  {
    v28 = *(*a2)++;
    a2[1] = v26 - 2;
    if ((v28 - 65) > 0x16)
    {
      v29 = 0;
    }

    else
    {
      v29 = byte_2573A5A6C[(v28 - 65)];
    }

    *(*(v6 + 24) + 20) = v29;
    return v6;
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleType(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v3 = a2[1];
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      v4 = 0;
      goto LABEL_17;
    }

    if (!v3)
    {
      goto LABEL_59;
    }

    v4 = 0;
    v5 = **a2;
    --v3;
    ++*a2;
    a2[1] = v3;
    if (v5 <= 80)
    {
LABEL_5:
      if (v5 <= 66)
      {
        if (v5 != 65)
        {
          if (v5 != 66)
          {
            goto LABEL_54;
          }

          goto LABEL_15;
        }

        goto LABEL_17;
      }

      if (v5 != 67)
      {
        if (v5 == 68)
        {
LABEL_51:
          v4 = 3;
          goto LABEL_17;
        }

LABEL_54:
        v4 = 0;
        *(a1 + 8) = 1;
        goto LABEL_17;
      }

      goto LABEL_55;
    }

LABEL_13:
    if (v5 <= 82)
    {
      if (v5 != 81)
      {
LABEL_15:
        v4 = 1;
      }

LABEL_17:
      if (!v3)
      {
        goto LABEL_59;
      }

      v7 = *a2;
      v8 = **a2;
      if ((v8 & 0xFC) == 0x54)
      {
LABEL_19:
        v9 = a1;
        result = llvm::ms_demangle::Demangler::demangleClassType(a1, a2);
        goto LABEL_61;
      }

      goto LABEL_21;
    }

    if (v5 != 83)
    {
      if (v5 == 84)
      {
        goto LABEL_51;
      }

      goto LABEL_54;
    }

LABEL_55:
    v4 = 2;
    goto LABEL_17;
  }

  if (!v3)
  {
    goto LABEL_59;
  }

  v6 = *a2;
  if (**a2 == 63)
  {
    *a2 = v6 + 1;
    a2[1] = (v3 - 1);
    if (v3 == 1)
    {
      goto LABEL_59;
    }

    v4 = 0;
    v5 = v6[1];
    v3 -= 2;
    *a2 = v6 + 2;
    a2[1] = v3;
    if (v5 <= 80)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v4 = 0;
  v7 = *a2;
  v8 = **a2;
  if ((v8 & 0xFC) == 0x54)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v3 >= 3 && *v7 == 9252 && v7[2] == 81)
  {
    goto LABEL_27;
  }

  if ((v8 - 80) < 4)
  {
    goto LABEL_27;
  }

  if (v8 == 89)
  {
    v9 = a1;
    result = llvm::ms_demangle::Demangler::demangleArrayType(a1, a2);
    goto LABEL_61;
  }

  if (v8 == 65)
  {
LABEL_27:
    *(a1 + 8) = 0;
    v12 = (v7 + 1);
    if ((*v7 & 0xFC) == 0x50)
    {
      v13 = v3 - 1;
      if (v3 == 1)
      {
        goto LABEL_59;
      }

      v14 = *v12;
      if ((*v12 & 0x80000000) == 0)
      {
        if ((*(MEMORY[0x277D85DE0] + 4 * *v12 + 60) & 0x400) != 0)
        {
          if (v14 != 54)
          {
            if (v14 == 56)
            {
              goto LABEL_42;
            }

            goto LABEL_59;
          }

          goto LABEL_60;
        }

        if (v14 == 69)
        {
          v13 = v3 - 2;
          if (v3 == 2)
          {
            goto LABEL_59;
          }

          v14 = v7[2];
          v12 = (v7 + 2);
        }

        if (v14 == 73)
        {
          if (!--v13)
          {
            goto LABEL_59;
          }

          v15 = *++v12;
          v14 = v15;
        }

        if (v14 == 70)
        {
          if (v13 == 1)
          {
            goto LABEL_59;
          }

          v14 = v12[1];
        }
      }

      if ((v14 - 65) >= 4)
      {
        if ((v14 - 81) < 4)
        {
LABEL_42:
          v9 = a1;
          result = llvm::ms_demangle::Demangler::demangleMemberPointerType(a1, a2);
          goto LABEL_61;
        }

LABEL_59:
        *(a1 + 8) = 1;
        return 0;
      }
    }

LABEL_60:
    v9 = a1;
    result = llvm::ms_demangle::Demangler::demanglePointerType(a1, a2);
    goto LABEL_61;
  }

  if (v3 < 6)
  {
    if (v3 >= 4 && *v7 == 910238756)
    {
LABEL_76:
      consumeFront(a2, "$$A6", 4uLL);
      v9 = a1;
      result = llvm::ms_demangle::Demangler::demangleFunctionType(a1, a2, 0);
      goto LABEL_61;
    }

    goto LABEL_70;
  }

  v16 = *v7 == 943793188 && *(v7 + 2) == 16448;
  if (!v16 && *v7 != 910238756)
  {
LABEL_70:
    v9 = a1;
    if (v8 == 63)
    {
      result = llvm::ms_demangle::Demangler::demangleCustomType(a1, a2);
    }

    else
    {
      result = llvm::ms_demangle::Demangler::demanglePrimitiveType(a1, a2);
    }

    goto LABEL_61;
  }

  if (*v7 != 943793188 || *(v7 + 2) != 16448)
  {
    goto LABEL_76;
  }

  *a2 = v7 + 6;
  a2[1] = (v3 - 6);
  v9 = a1;
  result = llvm::ms_demangle::Demangler::demangleFunctionType(a1, a2, 1);
LABEL_61:
  if (result)
  {
    if ((*(v9 + 8) & 1) == 0)
    {
      *(result + 12) |= v4;
    }
  }

  return result;
}

unint64_t synthesizeVariable(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = **a1;
  v7 = (v5[1] + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 - v6 + 40;
  v5[1] = v8;
  v9 = v5[2];
  if (v8 > v9)
  {
    operator new();
  }

  *(v7 + 8) = 27;
  *(v7 + 16) = 0;
  *v7 = &unk_2868A76C8;
  *(v7 + 24) = 0;
  *(v7 + 32) = a2;
  v10 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 - v6 + 40;
  v5[1] = v11;
  if (v11 > v9)
  {
    operator new();
  }

  *(v10 + 8) = 5;
  *(v10 + 16) = 0;
  *(v10 + 24) = a3;
  *v10 = &unk_2868A7178;
  *(v10 + 32) = a4;
  *(v7 + 16) = synthesizeQualifiedName(a1, v10);
  return v7;
}

unint64_t llvm::ms_demangle::Demangler::demangleFunctionIdentifierCode(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (*a2 + 1);
  *a2 = v4;
  a2[1] = v3 - 1;
  if (v3 == 2)
  {
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    *(a1 + 8) = 1;
    return 0;
  }

  if (*v4 == 24415)
  {
    *a2 = v2 + 3;
    a2[1] = v3 - 3;
    v6 = 2;
  }

  else
  {
LABEL_5:
    if (*v4 == 95)
    {
      *a2 = v2 + 2;
      a2[1] = v3 - 2;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return llvm::ms_demangle::Demangler::demangleFunctionIdentifierCode(a1, a2, v6);
}

unint64_t llvm::ms_demangle::Demangler::demangleFunctionIdentifierCode(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = a2[1];
  if (!v3)
  {
    *(a1 + 8) = 1;
    return 0;
  }

  v4 = *(*a2)++;
  a2[1] = v3 - 1;
  if (a3 == 2)
  {
    if (v4 != 75)
    {
      if ((v4 - 48) < 0xA || (v4 - 65) < 0x1A)
      {
        v15 = -55;
        if ((v4 - 48) < 0xA)
        {
          v15 = -48;
        }

        v8 = v15 + v4;
        v9 = &llvm::ms_demangle::Demangler::translateIntrinsicFunctionCode(char,llvm::ms_demangle::FunctionIdentifierCodeGroup)::DoubleUnder;
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    return llvm::ms_demangle::Demangler::demangleLiteralOperatorIdentifier(a1, a2);
  }

  else
  {
    v5 = v4 - 48;
    if (a3 == 1)
    {
      v6 = v5 >= 0xA && (v4 - 65) >= 0x1A;
      if (!v6)
      {
        v6 = v5 >= 0xA;
        v7 = -55;
        if (!v6)
        {
          v7 = -48;
        }

        v8 = v7 + v4;
        v9 = "#$%&'(";
LABEL_38:
        v21 = v9[v8];
LABEL_40:
        v22 = *(a1 + 16);
        v23 = (v22[1] + *v22 + 7) & 0xFFFFFFFFFFFFFFF8;
        v24 = v23 - *v22 + 32;
        v22[1] = v24;
        if (v24 > v22[2])
        {
          operator new();
        }

        *(v23 + 8) = 8;
        *(v23 + 16) = 0;
        *v23 = &unk_2868A71B8;
        *(v23 + 24) = v21;
        return v23;
      }

      goto LABEL_39;
    }

    if (v5 >= 2)
    {
      if (v4 != 66)
      {
        if (v5 < 0xA || (v4 - 65) < 0x1A)
        {
          v6 = v5 >= 0xA;
          v20 = -55;
          if (!v6)
          {
            v20 = -48;
          }

          v8 = v20 + v4;
          v9 = &llvm::ms_demangle::Demangler::translateIntrinsicFunctionCode(char,llvm::ms_demangle::FunctionIdentifierCodeGroup)::Basic;
          goto LABEL_38;
        }

LABEL_39:
        v21 = 0;
        *(a1 + 8) = 1;
        goto LABEL_40;
      }

      v16 = *(a1 + 16);
      v17 = (v16[1] + *v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = v17 - *v16 + 32;
      v16[1] = v18;
      if (v18 > v16[2])
      {
        operator new();
      }

      *(v17 + 8) = 9;
      *v17 = &unk_2868A7278;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      return v17;
    }

    else
    {
      v11 = *(a1 + 16);
      v12 = (v11[1] + *v11 + 7) & 0xFFFFFFFFFFFFFFF8;
      v13 = v12 - *v11 + 40;
      v11[1] = v13;
      if (v13 > v11[2])
      {
        operator new();
      }

      *(v12 + 8) = 11;
      *v12 = &unk_2868A72B8;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = v4 == 49;
      return v12;
    }
  }
}

unint64_t llvm::ms_demangle::Demangler::demangleStructorIdentifier(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 16);
  result = (v3[1] + *v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = result - *v3 + 40;
  v3[1] = v5;
  if (v5 > v3[2])
  {
    operator new();
  }

  *(result + 8) = 11;
  *result = &unk_2868A72B8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a3;
  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleConversionOperatorIdentifier(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = (v1[1] + *v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = result - *v1 + 32;
  v1[1] = v3;
  if (v3 > v1[2])
  {
    operator new();
  }

  *(result + 8) = 9;
  *result = &unk_2868A7278;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleLiteralOperatorIdentifier(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  result = (v3[1] + *v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = result - *v3 + 40;
  v3[1] = v5;
  if (v5 > v3[2])
  {
    operator new();
  }

  *(result + 8) = 12;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *result = &unk_2868A71F8;
  *(result + 32) = 0;
  v6 = a2[1];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = 0;
  v8 = *a2;
  while (*(v8 + v7) != 64)
  {
    if (v6 == ++v7)
    {
      goto LABEL_10;
    }
  }

  if (v7)
  {
    *a2 = v8 + v7 + 1;
    a2[1] = ~v7 + v6;
    *(result + 24) = v8;
    *(result + 32) = v7;
  }

  else
  {
LABEL_10:
    *(a1 + 8) = 1;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  return result;
}

_BYTE *llvm::ms_demangle::Demangler::demangleSimpleString(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = 0;
  result = *a2;
  while (result[v6] != 64)
  {
    if (v4 == ++v6)
    {
      goto LABEL_10;
    }
  }

  if (v6)
  {
    *a2 = &result[v6 + 1];
    *(a2 + 8) = ~v6 + v4;
    if (a3)
    {
      v8 = result;
      llvm::ms_demangle::Demangler::memorizeString(a1, result, v6);
      return v8;
    }
  }

  else
  {
LABEL_10:
    result = 0;
    *(a1 + 8) = 1;
  }

  return result;
}

uint64_t llvm::ms_demangle::Demangler::translateIntrinsicFunctionCode(uint64_t a1, unsigned __int8 a2, int a3)
{
  v3 = a2 - 48;
  if (v3 >= 0xA && a2 - 65 >= 0x1A)
  {
    result = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    v5 = -55;
    if (v3 < 0xA)
    {
      v5 = -48;
    }

    return *(*(&off_27983DB30 + a3) + v5 + a2);
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleEncodedSymbol(uint64_t a1, unsigned __int8 **a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = **a2;
    if ((v4 - 48) > 4)
    {
      result = llvm::ms_demangle::Demangler::demangleFunctionEncoding(a1, a2);
      if (result)
      {
        v8 = *(*(*(a3 + 16) + 16) + 8 * *(*(a3 + 16) + 24) - 8);
        if (*(v8 + 8) == 9)
        {
          *(v8 + 24) = *(*(result + 24) + 32);
        }
      }
    }

    else
    {
      ++*a2;
      a2[1] = v3 - 1;

      return llvm::ms_demangle::Demangler::demangleVariableEncoding(a1, a2, v4 - 47);
    }
  }

  else
  {
    result = 0;
    *(a1 + 8) = 1;
  }

  return result;
}

uint64_t llvm::ms_demangle::Demangler::demangleVariableStorageClass(uint64_t a1, char **a2)
{
  v2 = **a2;
  v3 = (a2[1] - 1);
  ++*a2;
  a2[1] = v3;
  return (v2 - 47);
}

unint64_t llvm::ms_demangle::Demangler::demangleVariableEncoding(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v6 = *(a1 + 16);
  v7 = (v6[1] + *v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 - *v6 + 40;
  v6[1] = v8;
  if (v8 > v6[2])
  {
    operator new();
  }

  *(v7 + 8) = 27;
  *(v7 + 16) = 0;
  *v7 = &unk_2868A76C8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v9 = llvm::ms_demangle::Demangler::demangleType(a1, a2, 0);
  v10 = 0;
  *(v7 + 32) = v9;
  *(v7 + 24) = a3;
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*(v9 + 8) == 14)
    {
      v11 = *(v9 + 12);
      v12 = a2[1];
      if (v12)
      {
        v13 = *a2;
        v14 = **a2;
        if (v14 == 69)
        {
          ++v13;
          --v12;
          *a2 = v13;
          a2[1] = v12;
          if (!v12)
          {
            v15 = 64;
            goto LABEL_36;
          }

          v14 = *v13;
          v15 = 64;
          if (v14 != 73)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v15 = 0;
          if (v14 != 73)
          {
LABEL_9:
            if (v14 == 70)
            {
              goto LABEL_10;
            }

            goto LABEL_23;
          }
        }

        ++v13;
        v15 |= 0x20u;
        --v12;
        *a2 = v13;
        a2[1] = v12;
        if (v12)
        {
          if (*v13 == 70)
          {
LABEL_10:
            *(v9 + 12) = v11 | v15 | 0x10;
            --v12;
            *a2 = v13 + 1;
            a2[1] = v12;
            if (!v12)
            {
LABEL_37:
              v19 = 0;
              *(a1 + 8) = 1;
              if (!*(v9 + 24))
              {
LABEL_43:
                *(*(v9 + 32) + 12) |= v19;
                return v7;
              }

              goto LABEL_38;
            }

LABEL_24:
            v18 = *(*a2)++;
            a2[1] = v12 - 1;
            if (v18 - 65) < 0x14 && ((0xF000Fu >> (v18 - 65)))
            {
              v19 = byte_2573A5A58[(v18 - 65)];
            }

            else
            {
              v19 = 0;
              *(a1 + 8) = 1;
            }

            if (!*(v9 + 24))
            {
              goto LABEL_43;
            }

            if (v12 != 1)
            {
              v20 = *a2;
              v21 = **a2;
              if ((v21 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v21 + 60) & 0x400) != 0)
              {
                v22 = v9;
                if ((v21 - 48) >= *(a1 + 192))
                {
                  v24 = 0;
                  *(a1 + 8) = 1;
                }

                else
                {
                  *a2 = v20 + 1;
                  a2[1] = v12 - 2;
                  v24 = *(a1 + 8 * (v21 - 48) + 112);
                }

                goto LABEL_40;
              }

              if (v12 != 2 && *v20 == 9279)
              {
                v22 = v9;
                v23 = llvm::ms_demangle::Demangler::demangleTemplateInstantiationName(a1, a2, 1);
LABEL_39:
                v24 = v23;
LABEL_40:
                if ((*(a1 + 8) & 1) == 0)
                {
                  llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v24);
                }

                v9 = v22;
                goto LABEL_43;
              }
            }

LABEL_38:
            v22 = v9;
            v23 = llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, 1);
            goto LABEL_39;
          }

LABEL_23:
          *(v9 + 12) = v15 | v11;
          goto LABEL_24;
        }
      }

      else
      {
        v15 = 0;
      }

LABEL_36:
      *(v9 + 12) = v15 | v11;
      goto LABEL_37;
    }

    v16 = a2[1];
    if (v16)
    {
      v17 = *(*a2)++;
      a2[1] = v16 - 1;
      if (v17 - 65) < 0x14 && ((0xF000Fu >> (v17 - 65)))
      {
        LOBYTE(v16) = byte_2573A5A58[(v17 - 65)];
LABEL_18:
        *(v9 + 12) = v16;
        return v7;
      }

      LOBYTE(v16) = 0;
    }

    *(a1 + 8) = 1;
    goto LABEL_18;
  }

  return v10;
}

unint64_t llvm::ms_demangle::Demangler::demangleFullyQualifiedSymbolName(uint64_t a1, uint64_t *a2)
{
  v4 = llvm::ms_demangle::Demangler::demangleUnqualifiedSymbolName(a1, a2, 2u);
  if (*(a1 + 8))
  {
    return 0;
  }

  v6 = v4;
  result = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v4);
  if (*(a1 + 8))
  {
    return 0;
  }

  if (*(v6 + 8) == 11)
  {
    v7 = *(result + 16);
    v8 = *(v7 + 24);
    if (v8 > 1)
    {
      *(v6 + 24) = *(*(v7 + 16) + 8 * v8 - 16);
    }

    else
    {
      result = 0;
      *(a1 + 8) = 1;
    }
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleMD5Name(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (v3 < 4 || ((v5 = *a2, v6 = memchr((*a2 + 3), 64, v3 - 3), v7 = &v6[-v5], v6) ? (v8 = v7 + 1 == 0) : (v8 = 1), v8))
  {
    result = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    v10 = v3 - (v7 + 1);
    *a2 = v6 + 1;
    a2[1] = v10;
    if (v10 >= 6 && *(v6 + 1) == 1381973823 && *(v6 + 5) == 16436)
    {
      *a2 = v6 + 7;
      a2[1] = v10 - 6;
      v10 -= 6;
    }

    v14 = *(a1 + 16);
    v12 = (a1 + 16);
    v13 = v14;
    v15 = *v14;
    v16 = (v14[1] + *v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = v16 - *v14 + 24;
    v14[1] = v17;
    v18 = v14[2];
    if (v17 > v18)
    {
      operator new();
    }

    v19 = v3 - v10;
    *(v16 + 8) = 1;
    *v16 = &unk_2868A75C8;
    v20 = v16;
    *(v16 + 16) = 0;
    v21 = (v17 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = v21 - v15 + 40;
    v13[1] = v22;
    if (v22 > v18)
    {
      operator new();
    }

    *(v21 + 8) = 5;
    *(v21 + 16) = 0;
    *(v21 + 24) = v5;
    *v21 = &unk_2868A7178;
    *(v21 + 32) = v19;
    v23 = synthesizeQualifiedName(v12, v21);
    result = v20;
    *(v20 + 16) = v23;
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleTypeinfoName(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 && **a2 == 46)
  {
    ++*a2;
    *(a2 + 8) = v4 - 1;
  }

  v5 = llvm::ms_demangle::Demangler::demangleType(a1, a2, 2);
  if ((*(a1 + 8) & 1) != 0 || *(a2 + 8))
  {
    *(a1 + 8) = 1;
    return 0;
  }

  else
  {
  }
}

unint64_t llvm::ms_demangle::Demangler::parse(uint64_t a1, unsigned __int8 **a2)
{
  v3 = a2[1];
  if (!v3)
  {
    goto LABEL_37;
  }

  v5 = *a2;
  v6 = **a2;
  if (v6 == 46)
  {
    *a2 = v5 + 1;
    a2[1] = (v3 - 1);
    v7 = llvm::ms_demangle::Demangler::demangleType(a1, a2, 2);
    if ((*(a1 + 8) & 1) == 0 && !a2[1])
    {
    }

LABEL_37:
    result = 0;
    *(a1 + 8) = 1;
    return result;
  }

  if (v3 >= 3 && (*v5 == 16191 ? (v9 = v5[2] == 64) : (v9 = 0), v9))
  {

    return llvm::ms_demangle::Demangler::demangleMD5Name(a1, a2);
  }

  else
  {
    if (v6 != 63)
    {
      goto LABEL_37;
    }

    *a2 = v5 + 1;
    a2[1] = (v3 - 1);
    result = llvm::ms_demangle::Demangler::demangleSpecialIntrinsic(a1, a2);
    if (result)
    {
      return result;
    }

    v10 = llvm::ms_demangle::Demangler::demangleUnqualifiedSymbolName(a1, a2, 2u);
    if (*(a1 + 8))
    {
      return 0;
    }

    v11 = v10;
    v12 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v10);
    if (*(a1 + 8))
    {
      return 0;
    }

    if (*(v11 + 8) == 11)
    {
      v13 = *(v12 + 16);
      v14 = *(v13 + 24);
      if (v14 <= 1)
      {
        goto LABEL_37;
      }

      *(v11 + 24) = *(*(v13 + 16) + 8 * v14 - 16);
    }

    v15 = a2[1];
    if (v15)
    {
      v16 = v12;
      v17 = **a2;
      if ((v17 - 48) > 4)
      {
        result = llvm::ms_demangle::Demangler::demangleFunctionEncoding(a1, a2);
        if (result)
        {
          v18 = *(*(*(v16 + 16) + 16) + 8 * *(*(v16 + 16) + 24) - 8);
          if (*(v18 + 8) == 9)
          {
            *(v18 + 24) = *(*(result + 24) + 32);
          }
        }
      }

      else
      {
        ++*a2;
        a2[1] = v15 - 1;
        result = llvm::ms_demangle::Demangler::demangleVariableEncoding(a1, a2, v17 - 47);
      }
    }

    else
    {
      v16 = v12;
      result = 0;
      *(a1 + 8) = 1;
    }

    if (*(a1 + 8))
    {
      return 0;
    }

    *(result + 16) = v16;
    v19 = *(*(*(v16 + 16) + 16) + 8 * *(*(v16 + 16) + 24) - 8);
    if (*(v19 + 8) == 9 && !*(v19 + 24))
    {
      goto LABEL_37;
    }
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::parseTagUniqueName(uint64_t a1, unsigned __int8 **a2)
{
  v2 = a2[1];
  v3 = v2 - 3;
  if (v2 < 3)
  {
    goto LABEL_6;
  }

  v4 = *a2;
  if (**a2 != 16174 || (*a2)[2] != 65)
  {
    goto LABEL_6;
  }

  *a2 = v4 + 3;
  a2[1] = v3;
  if (v3 >= 3)
  {
    if (*(v4 + 3) != 16174 || v4[5] != 65)
    {
      return llvm::ms_demangle::Demangler::demangleClassType(a1, a2);
    }

    v3 = v2 - 6;
    *a2 = v4 + 6;
    a2[1] = (v2 - 6);
  }

  if (!v3)
  {
LABEL_6:
    *(a1 + 8) = 1;
    return 0;
  }

  return llvm::ms_demangle::Demangler::demangleClassType(a1, a2);
}

unint64_t llvm::ms_demangle::Demangler::demangleClassType(uint64_t a1, unsigned __int8 **a2)
{
  v4 = 0;
  v5 = *a2;
  v6 = a2[1];
  v7 = *a2 + 1;
  v8 = **a2;
  v9 = v6 - 1;
  *a2 = v7;
  a2[1] = v6 - 1;
  if (v8 > 85)
  {
    if (v8 == 86)
    {
      v17 = *(a1 + 16);
      v4 = (v17[1] + *v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = v4 - *v17 + 32;
      v17[1] = v18;
      if (v18 > v17[2])
      {
        operator new();
      }

      v14 = 0;
    }

    else
    {
      if (v8 != 87)
      {
        goto LABEL_22;
      }

      if (v6 == 1 || *v7 != 52)
      {
        *(a1 + 8) = 1;
        return 0;
      }

      *a2 = (v5 + 2);
      a2[1] = v6 - 2;
      v12 = *(a1 + 16);
      v4 = (v12[1] + *v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v13 = v4 - *v12 + 32;
      v12[1] = v13;
      if (v13 > v12[2])
      {
        operator new();
      }

      v14 = 3;
    }
  }

  else if (v8 == 84)
  {
    v15 = *(a1 + 16);
    v4 = (v15[1] + *v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = v4 - *v15 + 32;
    v15[1] = v16;
    if (v16 > v15[2])
    {
      operator new();
    }

    v14 = 2;
  }

  else
  {
    if (v8 != 85)
    {
      goto LABEL_22;
    }

    v10 = *(a1 + 16);
    v4 = (v10[1] + *v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = v4 - *v10 + 32;
    v10[1] = v11;
    if (v11 > v10[2])
    {
      operator new();
    }

    v14 = 1;
  }

  *(v4 + 8) = 15;
  *(v4 + 12) = 0;
  *v4 = &unk_2868A7398;
  *(v4 + 16) = 0;
  *(v4 + 24) = v14;
  v7 = *a2;
  v9 = a2[1];
LABEL_22:
  if (!v9)
  {
    goto LABEL_27;
  }

  v20 = *v7;
  if (v20 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v20 + 60) & 0x400) == 0)
  {
    if (v9 != 1 && *v7 == 9279)
    {
      v21 = llvm::ms_demangle::Demangler::demangleTemplateInstantiationName(a1, a2, 1);
      goto LABEL_28;
    }

LABEL_27:
    v21 = llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, 1);
LABEL_28:
    v22 = v21;
    goto LABEL_29;
  }

  v25 = v20 - 48;
  if (v25 >= *(a1 + 192))
  {
    v22 = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    *a2 = v7 + 1;
    a2[1] = v9 - 1;
    v22 = *(a1 + 8 * v25 + 112);
  }

LABEL_29:
  if (*(a1 + 8))
  {
    *(v4 + 16) = 0;
    return v4;
  }

  else
  {
    v23 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v22);
    if (*(a1 + 8))
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    *(v4 + 16) = v24;
    return v4;
  }
}

uint64_t llvm::ms_demangle::Demangler::demanglePointerExtQualifiers(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 0;
  }

  if (**a2 == 69)
  {
    result = 64;
    --v2;
    ++*a2;
    a2[1] = v2;
    if (!v2)
    {
      return result;
    }

    v4 = *a2;
    if (**a2 != 73)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = result | 0x20;
    --v2;
    *a2 = v4 + 1;
    a2[1] = v2;
    if (!v2)
    {
      return result;
    }

    goto LABEL_10;
  }

  result = 0;
  v4 = *a2;
  if (**a2 == 73)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (**a2 == 70)
  {
    ++*a2;
    a2[1] = v2 - 1;
    return result | 0x10;
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleNumber(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *a2;
  v4 = **a2;
  if (v4 != 63)
  {
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  ++v3;
  --v2;
  *a2 = v3;
  a2[1] = v2;
  if (!v2)
  {
LABEL_12:
    *(a1 + 8) = 1;
    return 0;
  }

  v4 = *v3;
  if ((v4 & 0x80) != 0)
  {
LABEL_8:
    v5 = 0;
    v6 = v2 - 1;
    v7 = *a2 + 1;
    while (1)
    {
      v8 = *(v7 - 1);
      if (v8 == 64)
      {
        goto LABEL_14;
      }

      v9 = v8 - 65;
      if (v9 <= 0xFu)
      {
        v5 = v9 | (16 * v5);
        --v6;
        ++v7;
        if (v6 != -1)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

LABEL_7:
  if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v11 = *v3;
  v7 = (v3 + 1);
  v5 = v11 - 47;
  v6 = v2 - 1;
LABEL_14:
  *a2 = v7;
  a2[1] = v6;
  return v5;
}

uint64_t llvm::ms_demangle::Demangler::memorizeString(uint64_t result, void *__s1, size_t __n)
{
  v3 = *(result + 192);
  if (v3 <= 9)
  {
    v6 = result;
    if (v3)
    {
      v7 = result + 112;
      while (1)
      {
        if (__n == *(*v7 + 32))
        {
          result = memcmp(__s1, *(*v7 + 24), __n);
          if (!result)
          {
            break;
          }
        }

        v7 += 8;
        if (!--v3)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v8 = *(v6 + 16);
      result = (v8[1] + *v8 + 7) & 0xFFFFFFFFFFFFFFF8;
      v9 = result - *v8 + 40;
      v8[1] = v9;
      if (v9 > v8[2])
      {
        operator new();
      }

      *(result + 8) = 5;
      *(result + 16) = 0;
      *(result + 24) = __s1;
      *result = &unk_2868A7178;
      *(result + 32) = __n;
      v10 = *(v6 + 192);
      *(v6 + 192) = v10 + 1;
      *(v6 + 8 * v10 + 112) = result;
    }
  }

  return result;
}

uint64_t llvm::ms_demangle::Demangler::demangleBackRefName(uint64_t a1, char **a2)
{
  v2 = **a2 - 48;
  if (v2 >= *(a1 + 192))
  {
    *(a1 + 8) = 1;
    return 0;
  }

  else
  {
    v3 = (a2[1] - 1);
    ++*a2;
    a2[1] = v3;
    return *(a1 + 8 * v2 + 112);
  }
}

void llvm::ms_demangle::Demangler::memorizeIdentifier(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  *v10 = 0u;
  v12 = -1;
  v13 = 1;
  (*(*a2 + 16))(a2, v10, 0);
  v4 = v10[0];
  v3 = v10[1];
  v5 = *(a1 + 16);
  v6 = *v5;
  v7 = v5[1];
  v8 = v10[1] + v7;
  v5[1] = v10[1] + v7;
  if (v8 > v5[2])
  {
    operator new();
  }

  v9 = (v6 + v7);
  if (v3)
  {
    memcpy(v9, v4, v3);
  }

  llvm::ms_demangle::Demangler::memorizeString(a1, v9, v3);
  free(v10[0]);
}

uint64_t llvm::ms_demangle::Demangler::demangleTemplateInstantiationName(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = a2[1];
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (v7 && **a2 == 9279)
  {
    *a2 += 2;
    a2[1] = v8;
  }

  v23 = *(a1 + 56);
  v24 = *(a1 + 72);
  v25 = *(a1 + 88);
  v21 = *(a1 + 24);
  v22 = *(a1 + 40);
  v9 = *(a1 + 104);
  v18 = *(a1 + 144);
  v19 = *(a1 + 160);
  v20 = *(a1 + 176);
  v16 = *(a1 + 112);
  v17 = *(a1 + 128);
  v10 = *(a1 + 192);
  *(a1 + 104) = 0;
  *(a1 + 192) = 0;
  result = llvm::ms_demangle::Demangler::demangleUnqualifiedSymbolName(a1, a2, 2u);
  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    v13 = result;
    v14 = llvm::ms_demangle::Demangler::demangleTemplateParameterList(a1, a2);
    result = v13;
    *(v13 + 16) = v14;
    v12 = *(a1 + 8);
  }

  *(a1 + 40) = v22;
  *(a1 + 24) = v21;
  *(a1 + 88) = v25;
  *(a1 + 72) = v24;
  *(a1 + 56) = v23;
  *(a1 + 104) = v9;
  *(a1 + 160) = v19;
  *(a1 + 176) = v20;
  *(a1 + 128) = v17;
  *(a1 + 144) = v18;
  *(a1 + 112) = v16;
  *(a1 + 192) = v10;
  if (v12)
  {
    return 0;
  }

  if (a3)
  {
    if ((*(result + 8) | 2) == 0xB)
    {
      result = 0;
      *(a1 + 8) = 1;
    }

    else
    {
      v15 = result;
      llvm::ms_demangle::Demangler::memorizeIdentifier(a1, result);
      return v15;
    }
  }

  return result;
}

uint64_t llvm::ms_demangle::Demangler::demangleUnqualifiedSymbolName(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v3 = a2[1];
  if (!v3)
  {
    return llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, (a3 >> 1) & 1);
  }

  v4 = *a2;
  v5 = **a2;
  if ((v5 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x400) != 0)
  {
    v7 = v5 - 48;
    if (v7 >= *(a1 + 192))
    {
      *(a1 + 8) = 1;
      return 0;
    }

    else
    {
      *a2 = (v4 + 1);
      a2[1] = v3 - 1;
      return *(a1 + 8 * v7 + 112);
    }
  }

  else
  {
    if (v3 == 1 || *v4 != 9279)
    {
      if (*v4 == 63)
      {
        return llvm::ms_demangle::Demangler::demangleFunctionIdentifierCode(a1, a2);
      }

      return llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, (a3 >> 1) & 1);
    }

    return llvm::ms_demangle::Demangler::demangleTemplateInstantiationName();
  }
}

unint64_t llvm::ms_demangle::Demangler::demangleTemplateParameterList(uint64_t a1, unsigned __int8 **a2)
{
  v3 = a1;
  v4 = 0;
  v136 = a1 + 112;
  v5 = &v138;
  v138 = 0;
  while (1)
  {
    v6 = a2[1];
    if (v6)
    {
      break;
    }

LABEL_23:
    v12 = *(v3 + 16);
    v13 = ((v12[1] + *v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v14 = v13 - *v12 + 16;
    v12[1] = v14;
    if (v14 > v12[2])
    {
      operator new();
    }

    *v13 = 0;
    v13[1] = 0;
    *v5 = v13;
    v16 = *a2;
    v15 = a2[1];
    v17 = v15 < 2;
    if (v15 >= 2)
    {
      v21 = *v16;
      v22 = v21 != 19748;
      if (v21 != 19748)
      {
        if (v15 == 2)
        {
          v23 = v4;
          v24 = 0;
          v25 = 1;
          v17 = 1;
          v26 = 2;
          v18 = 2;
          v27 = "$1";
        }

        else
        {
          v18 = a2[1];
LABEL_44:
          if (*v16 == 9252 && v16[2] == 89)
          {
            v31 = v16 + 3;
            *a2 = v16 + 3;
            a2[1] = (v18 - 3);
            if (v18 == 3)
            {
              goto LABEL_63;
            }

            v32 = *v31;
            if ((v32 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v32 + 60) & 0x400) != 0)
            {
              if ((v32 - 48) >= *(a1 + 192))
              {
                v34 = 0;
                *(a1 + 8) = 1;
              }

              else
              {
                *a2 = v16 + 4;
                a2[1] = (v18 - 4);
                v34 = *(v136 + 8 * (v32 - 48));
              }

              v3 = a1;
            }

            else
            {
              if (v18 != 4 && *v31 == 9279)
              {
                v3 = a1;
                v33 = llvm::ms_demangle::Demangler::demangleTemplateInstantiationName(a1, a2, 1);
              }

              else
              {
LABEL_63:
                v3 = a1;
                v33 = llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, 1);
              }

              v34 = v33;
            }

            if (*(v3 + 8))
            {
              *v13 = 0;
            }

            else
            {
              v43 = llvm::ms_demangle::Demangler::demangleNameScopeChain(v3, a2, v34);
              if (*(v3 + 8))
              {
                v44 = 0;
              }

              else
              {
                v44 = v43;
              }

              *v13 = v44;
            }

            goto LABEL_179;
          }

          if (*v16 == 9252 && v16[2] == 66)
          {
            *a2 = v16 + 3;
            a2[1] = (v18 - 3);
            v3 = a1;
            v40 = a1;
            v41 = a2;
            v42 = 0;
LABEL_78:
            *v13 = llvm::ms_demangle::Demangler::demangleType(v40, v41, v42);
            goto LABEL_179;
          }

          if (*v16 == 9252 && v16[2] == 67)
          {
            *a2 = v16 + 3;
            a2[1] = (v18 - 3);
            v3 = a1;
            v40 = a1;
            v41 = a2;
            v42 = 1;
            goto LABEL_78;
          }

          v23 = v4;
          v25 = 0;
          v26 = 1;
          if (v22)
          {
            v24 = 0;
            v17 = 1;
            v26 = 2;
            v27 = "$1";
          }

          else
          {
            v17 = 0;
LABEL_80:
            v24 = 1;
            v27 = "1";
          }
        }

        if (!memcmp(v16, v27, v26) || (!v24 ? (v45 = "$H") : (v45 = "H"), !memcmp(v16, v45, v26) || (!v24 ? (v46 = "$I") : (v46 = "I"), !memcmp(v16, v46, v26) || (!v24 ? (v47 = "$J") : (v47 = "J"), !memcmp(v16, v47, v26)))))
        {
          v3 = a1;
          v67 = *(a1 + 16);
          v68 = (v67[1] + *v67 + 7) & 0xFFFFFFFFFFFFFFF8;
          v69 = v68 - *v67 + 64;
          v67[1] = v69;
          if (v69 > v67[2])
          {
            operator new();
          }

          v4 = v23;
          *(v68 + 8) = 21;
          *v68 = &unk_2868A7508;
          *(v68 + 16) = 0;
          *(v68 + 24) = 0;
          *(v68 + 56) = 0;
          *v13 = v68;
          *(v68 + 60) = 1;
          v70 = a2[1];
          if ((v24 & 1) == 0)
          {
            ++v16;
            --v70;
            *a2 = v16;
            a2[1] = v70;
          }

          v73 = *v16;
          v72 = v16 + 1;
          v71 = v73;
          v74 = v70 - 1;
          *a2 = v72;
          a2[1] = v74;
          if (v74 && *v72 == 63)
          {
            v75 = llvm::ms_demangle::Demangler::parse(a1, a2);
            if ((*(a1 + 8) & 1) != 0 || (v76 = v75, (v77 = *(v75 + 16)) == 0))
            {
              *(a1 + 8) = 1;
              return 0;
            }

            llvm::ms_demangle::Demangler::memorizeIdentifier(a1, *(*(*(v77 + 16) + 16) + 8 * *(*(v77 + 16) + 24) - 8));
            if (v71 > 72)
            {
LABEL_134:
              if (v71 == 73)
              {
                v78 = a2[1];
                if (!v78)
                {
LABEL_164:
                  v92 = 0;
                  *(a1 + 8) = 1;
                  v79 = v78;
                  goto LABEL_165;
                }

LABEL_154:
                v89 = *a2;
                v90 = **a2;
                if (v90 == 63)
                {
                  ++v89;
                  --v78;
                  *a2 = v89;
                  a2[1] = v78;
                  if (!v78)
                  {
                    goto LABEL_164;
                  }

                  v91 = *v89;
                  if ((v91 & 0x80) != 0)
                  {
LABEL_160:
                    v92 = 0;
                    v79 = v78 - 1;
                    v93 = v89 + 1;
                    while (1)
                    {
                      v94 = *(v93 - 1);
                      if (v94 == 64)
                      {
                        break;
                      }

                      v95 = v94 - 65;
                      if (v95 <= 0xFu)
                      {
                        v92 = v95 | (16 * v92);
                        --v79;
                        ++v93;
                        if (v79 != -1)
                        {
                          continue;
                        }
                      }

                      goto LABEL_164;
                    }

                    *a2 = v93;
                    a2[1] = v79;
                    if ((v92 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_188;
                    }

                    goto LABEL_189;
                  }
                }

                else
                {
                  v91 = **a2;
                  if ((v90 & 0x80) != 0)
                  {
                    goto LABEL_160;
                  }
                }

                if ((*(MEMORY[0x277D85DE0] + 4 * v91 + 60) & 0x400) == 0)
                {
                  goto LABEL_160;
                }

                v92 = v91 - 47;
                *a2 = v89 + 1;
                v79 = v78 - 1;
                a2[1] = v78 - 1;
                if ((v92 & 0x8000000000000000) != 0)
                {
LABEL_188:
                  *(a1 + 8) = 1;
                }

LABEL_189:
                if (v90 == 63)
                {
                  v92 = -v92;
                }

LABEL_165:
                v96 = *(v68 + 24);
                *(v68 + 24) = v96 + 1;
                *(v68 + 8 * v96 + 32) = v92;
                if (v79)
                {
LABEL_166:
                  v97 = *a2;
                  v98 = **a2;
                  if (v98 != 63)
                  {
                    v99 = **a2;
                    if ((v98 & 0x80) == 0)
                    {
                      goto LABEL_171;
                    }

                    goto LABEL_172;
                  }

                  ++v97;
                  --v79;
                  *a2 = v97;
                  a2[1] = v79;
                  if (v79)
                  {
                    v99 = *v97;
                    if ((v99 & 0x80) != 0)
                    {
                      goto LABEL_172;
                    }

LABEL_171:
                    if ((*(MEMORY[0x277D85DE0] + 4 * v99 + 60) & 0x400) != 0)
                    {
                      v100 = v99 - 47;
                      *a2 = v97 + 1;
                      a2[1] = v79 - 1;
                      if ((v100 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_182;
                      }
                    }

                    else
                    {
LABEL_172:
                      v100 = 0;
                      v101 = v79 - 1;
                      v102 = v97 + 1;
                      while (1)
                      {
                        v103 = *(v102 - 1);
                        if (v103 == 64)
                        {
                          break;
                        }

                        v104 = v103 - 65;
                        if (v104 <= 0xFu)
                        {
                          v100 = v104 | (16 * v100);
                          --v101;
                          ++v102;
                          if (v101 != -1)
                          {
                            continue;
                          }
                        }

                        goto LABEL_176;
                      }

                      *a2 = v102;
                      a2[1] = v101;
                      if ((v100 & 0x8000000000000000) != 0)
                      {
LABEL_182:
                        *(a1 + 8) = 1;
                      }
                    }

                    if (v98 == 63)
                    {
                      v100 = -v100;
                    }

LABEL_177:
                    v105 = *(v68 + 24);
                    *(v68 + 24) = v105 + 1;
                    *(v68 + 8 * v105 + 32) = v100;
LABEL_178:
                    *(v68 + 56) = 1;
                    *(v68 + 16) = v76;
                    goto LABEL_179;
                  }
                }

LABEL_176:
                v100 = 0;
                *(a1 + 8) = 1;
                goto LABEL_177;
              }

              v80 = a2[1];
              if (!v80)
              {
                goto LABEL_152;
              }

              v81 = *a2;
              v82 = **a2;
              if (v82 != 63)
              {
                v83 = **a2;
                if ((v82 & 0x80) == 0)
                {
                  goto LABEL_147;
                }

                goto LABEL_148;
              }

              ++v81;
              --v80;
              *a2 = v81;
              a2[1] = v80;
              if (v80)
              {
                v83 = *v81;
                if ((v83 & 0x80) != 0)
                {
                  goto LABEL_148;
                }

LABEL_147:
                if ((*(MEMORY[0x277D85DE0] + 4 * v83 + 60) & 0x400) != 0)
                {
                  v84 = v83 - 47;
                  *a2 = v81 + 1;
                  v78 = v80 - 1;
                  a2[1] = v80 - 1;
                  if ((v84 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_209;
                  }
                }

                else
                {
LABEL_148:
                  v84 = 0;
                  v78 = v80 - 1;
                  v85 = v81 + 1;
                  while (1)
                  {
                    v86 = *(v85 - 1);
                    if (v86 == 64)
                    {
                      break;
                    }

                    v87 = v86 - 65;
                    if (v87 <= 0xFu)
                    {
                      v84 = v87 | (16 * v84);
                      --v78;
                      ++v85;
                      if (v78 != -1)
                      {
                        continue;
                      }
                    }

                    goto LABEL_152;
                  }

                  *a2 = v85;
                  a2[1] = v78;
                  if ((v84 & 0x8000000000000000) != 0)
                  {
LABEL_209:
                    *(a1 + 8) = 1;
                  }
                }

                if (v82 == 63)
                {
                  v84 = -v84;
                }
              }

              else
              {
LABEL_152:
                v84 = 0;
                *(a1 + 8) = 1;
                v78 = v80;
              }

              v88 = *(v68 + 24);
              *(v68 + 24) = v88 + 1;
              *(v68 + 8 * v88 + 32) = v84;
              if (!v78)
              {
                goto LABEL_164;
              }

              goto LABEL_154;
            }
          }

          else
          {
            v76 = 0;
            if (v71 > 72)
            {
              goto LABEL_134;
            }
          }

          if (v71 == 49)
          {
            goto LABEL_178;
          }

          v79 = a2[1];
          if (v79)
          {
            goto LABEL_166;
          }

          goto LABEL_176;
        }

        if ((v25 & 1) == 0 && *v16 == 17700 && v16[2] == 63)
        {
          if (v18 >= 2 && *v16 == 17700)
          {
            *a2 = v16 + 2;
            a2[1] = (v18 - 2);
          }

          v3 = a1;
          v114 = *(a1 + 16);
          v115 = (v114[1] + *v114 + 7) & 0xFFFFFFFFFFFFFFF8;
          v116 = v115 - *v114 + 64;
          v114[1] = v116;
          v4 = v23;
          if (v116 > v114[2])
          {
            operator new();
          }

          *(v115 + 8) = 21;
          *v115 = &unk_2868A7508;
          *(v115 + 16) = 0;
          *(v115 + 24) = 0;
          *(v115 + 56) = 0;
          *(v115 + 60) = 0;
          *v13 = v115;
          *(v115 + 16) = llvm::ms_demangle::Demangler::parse(a1, a2);
          *(v115 + 56) = 2;
          goto LABEL_179;
        }

        if (v24)
        {
          v49 = "F";
        }

        else
        {
          v49 = "$F";
        }

        v4 = v23;
        if (!memcmp(v16, v49, v26) || (!v24 ? (v50 = "$G") : (v50 = "G"), !memcmp(v16, v50, v26)))
        {
          v3 = a1;
          v51 = *(a1 + 16);
          v52 = (v51[1] + *v51 + 7) & 0xFFFFFFFFFFFFFFF8;
          v53 = v52 - *v51 + 64;
          v51[1] = v53;
          if (v53 > v51[2])
          {
            operator new();
          }

          *(v52 + 8) = 21;
          *v52 = &unk_2868A7508;
          *(v52 + 16) = 0;
          *(v52 + 24) = 0;
          *(v52 + 56) = 0;
          *(v52 + 60) = 0;
          *v13 = v52;
          v55 = *a2;
          v54 = a2[1];
          if ((v24 & 1) == 0)
          {
            ++v55;
            --v54;
            *a2 = v55;
            a2[1] = v54;
          }

          v57 = v55 + 1;
          v56 = *v55;
          v58 = v54 - 1;
          *a2 = v55 + 1;
          a2[1] = v54 - 1;
          if (v56 != 71)
          {
            v66 = 0;
            if (v54 == 1)
            {
              goto LABEL_226;
            }

            goto LABEL_194;
          }

          if (v54 == 1)
          {
            goto LABEL_122;
          }

          v59 = *v57;
          v60 = v59;
          if (v59 != 63)
          {
LABEL_116:
            if ((v60 & 0x80) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v60 + 60) & 0x400) != 0)
            {
              v61 = v60 - 47;
              *a2 = v57 + 1;
              v62 = v58 - 1;
            }

            else
            {
              v61 = 0;
              v62 = v58 - 1;
              v63 = v57 + 1;
              while (1)
              {
                v64 = *(v63 - 1);
                if (v64 == 64)
                {
                  break;
                }

                v65 = v64 - 65;
                if (v65 <= 0xFu)
                {
                  v61 = v65 | (16 * v61);
                  --v62;
                  ++v63;
                  if (v62 != -1)
                  {
                    continue;
                  }
                }

                goto LABEL_122;
              }

              *a2 = v63;
            }

            a2[1] = v62;
            if ((v61 & 0x8000000000000000) != 0)
            {
              *(a1 + 8) = 1;
            }

            if (v59 != 63)
            {
              goto LABEL_123;
            }

            *(v52 + 24) = 1;
            *(v52 + 32) = -v61;
            v66 = 1;
            v58 = a2[1];
            if (v58)
            {
              goto LABEL_194;
            }

LABEL_226:
            v117 = 0;
            *(a1 + 8) = 1;
            goto LABEL_227;
          }

          v57 = v55 + 2;
          v58 = v54 - 2;
          *a2 = v55 + 2;
          a2[1] = v54 - 2;
          if (v54 != 2)
          {
            v60 = *v57;
            goto LABEL_116;
          }

LABEL_122:
          v61 = 0;
          *(a1 + 8) = 1;
LABEL_123:
          *(v52 + 24) = 1;
          *(v52 + 32) = v61;
          v66 = 1;
          v58 = a2[1];
          if (!v58)
          {
            goto LABEL_226;
          }

LABEL_194:
          v106 = *a2;
          v107 = **a2;
          if (v107 == 63)
          {
            ++v106;
            --v58;
            *a2 = v106;
            a2[1] = v58;
            if (!v58)
            {
              goto LABEL_226;
            }

            v108 = *v106;
            if ((v108 & 0x80) != 0)
            {
LABEL_222:
              v117 = 0;
              v118 = v58 - 1;
              v119 = v106 + 1;
              while (1)
              {
                v120 = *(v119 - 1);
                if (v120 == 64)
                {
                  break;
                }

                v121 = v120 - 65;
                if (v121 <= 0xFu)
                {
                  v117 = v121 | (16 * v117);
                  --v118;
                  ++v119;
                  if (v118 != -1)
                  {
                    continue;
                  }
                }

                goto LABEL_226;
              }

              *a2 = v119;
              a2[1] = v118;
              if ((v117 & 0x8000000000000000) != 0)
              {
                goto LABEL_252;
              }

LABEL_248:
              if (v107 == 63)
              {
                goto LABEL_253;
              }

              goto LABEL_227;
            }
          }

          else
          {
            v108 = **a2;
            if ((v107 & 0x80) != 0)
            {
              goto LABEL_222;
            }
          }

          if ((*(MEMORY[0x277D85DE0] + 4 * v108 + 60) & 0x400) == 0)
          {
            goto LABEL_222;
          }

          v117 = v108 - 47;
          *a2 = v106 + 1;
          a2[1] = v58 - 1;
          if ((v117 & 0x8000000000000000) == 0)
          {
            goto LABEL_248;
          }

LABEL_252:
          *(a1 + 8) = 1;
          if (v107 == 63)
          {
LABEL_253:
            v117 = -v117;
          }

LABEL_227:
          *(v52 + 24) = v66 + 1;
          *(v52 + 32 + 8 * v66) = v117;
          v122 = a2[1];
          if (!v122)
          {
            goto LABEL_238;
          }

          v123 = *a2;
          v124 = **a2;
          if (v124 != 63)
          {
            v125 = **a2;
            if ((v124 & 0x80) == 0)
            {
              goto LABEL_233;
            }

            goto LABEL_234;
          }

          ++v123;
          --v122;
          *a2 = v123;
          a2[1] = v122;
          if (v122)
          {
            v125 = *v123;
            if ((v125 & 0x80) != 0)
            {
              goto LABEL_234;
            }

LABEL_233:
            if ((*(MEMORY[0x277D85DE0] + 4 * v125 + 60) & 0x400) != 0)
            {
              v126 = v125 - 47;
              *a2 = v123 + 1;
              v127 = v122 - 1;
            }

            else
            {
LABEL_234:
              v126 = 0;
              v127 = v122 - 1;
              v128 = v123 + 1;
              while (1)
              {
                v129 = *(v128 - 1);
                if (v129 == 64)
                {
                  break;
                }

                v130 = v129 - 65;
                if (v130 <= 0xFu)
                {
                  v126 = v130 | (16 * v126);
                  --v127;
                  ++v128;
                  if (v127 != -1)
                  {
                    continue;
                  }
                }

                goto LABEL_238;
              }

              *a2 = v128;
            }

            a2[1] = v127;
            if ((v126 & 0x8000000000000000) != 0)
            {
              *(a1 + 8) = 1;
            }

            if (v124 == 63)
            {
              v126 = -v126;
            }
          }

          else
          {
LABEL_238:
            v126 = 0;
            *(a1 + 8) = 1;
          }

          *(v52 + 24) = v66 | 2;
          *(v52 + 32 + 8 * (v66 + 1)) = v126;
          *(v52 + 60) = 1;
          goto LABEL_179;
        }

        goto LABEL_27;
      }

      *a2 = v16 + 2;
      a2[1] = (v15 - 2);
      llvm::ms_demangle::Demangler::demangleType(v3, a2, 0);
      if (*(v3 + 8))
      {
        return 0;
      }

      v16 = *a2;
      v18 = a2[1];
      if (v18 >= 3)
      {
        goto LABEL_44;
      }

      v26 = 1;
      if (v18)
      {
        v23 = v4;
        v25 = 1;
        goto LABEL_80;
      }
    }

    else
    {
      v18 = a2[1];
    }

LABEL_27:
    if (v17)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    if (v18 >= v19)
    {
      v20 = v17 ? "$0" : "0";
      if (!memcmp(v16, v20, v19))
      {
        v35 = v4;
        v36 = &v16[v19];
        v37 = (v18 - v19);
        v10 = v18 == v19;
        *a2 = &v16[v19];
        a2[1] = (v18 - v19);
        v3 = a1;
        if (v10)
        {
          goto LABEL_204;
        }

        v38 = *v36;
        if (v38 != 63)
        {
          v39 = 0;
          if ((v38 & 0x80) == 0)
          {
            goto LABEL_199;
          }

          goto LABEL_200;
        }

        ++v36;
        --v37;
        *a2 = v36;
        a2[1] = v37;
        if (!v37)
        {
LABEL_204:
          v109 = 0;
          v39 = 0;
          *(a1 + 8) = 1;
        }

        else
        {
          v38 = *v36;
          v39 = 1;
          if ((v38 & 0x80) != 0)
          {
            goto LABEL_200;
          }

LABEL_199:
          if ((*(MEMORY[0x277D85DE0] + 4 * v38 + 60) & 0x400) != 0)
          {
            v109 = v38 - 47;
            v111 = v36 + 1;
            v110 = v37 - 1;
          }

          else
          {
LABEL_200:
            v109 = 0;
            v110 = v37 - 1;
            v111 = v36 + 1;
            while (1)
            {
              v112 = *(v111 - 1);
              if (v112 == 64)
              {
                break;
              }

              v113 = v112 - 65;
              if (v113 <= 0xFu)
              {
                v109 = v113 | (16 * v109);
                --v110;
                ++v111;
                if (v110 != -1)
                {
                  continue;
                }
              }

              goto LABEL_204;
            }
          }

          *a2 = v111;
          a2[1] = v110;
        }

        v131 = *(a1 + 16);
        v132 = (v131[1] + *v131 + 7) & 0xFFFFFFFFFFFFFFF8;
        v133 = v132 - *v131 + 32;
        v131[1] = v133;
        if (v133 > v131[2])
        {
          operator new();
        }

        *(v132 + 8) = 23;
        *v132 = &unk_2868A7548;
        *(v132 + 16) = v109;
        *(v132 + 24) = v39;
        *v13 = v132;
        v4 = v35;
        goto LABEL_179;
      }
    }

    v3 = a1;
    *v13 = llvm::ms_demangle::Demangler::demangleType(a1, a2, 0);
LABEL_179:
    ++v4;
    v5 = v13 + 1;
    if (*(v3 + 8))
    {
      return 0;
    }
  }

  v7 = *a2;
  while (*v7 != 64)
  {
    if (v6 == 1)
    {
      goto LABEL_23;
    }

    if (*v7 == 21284)
    {
      v8 = -2;
      v9 = 2;
    }

    else
    {
      if (v6 < 3)
      {
        goto LABEL_23;
      }

      v10 = *v7 == 9252 && v7[2] == 86;
      if (!v10)
      {
        if (v6 != 3 && *v7 == 1445209124)
        {
          v8 = -4;
          v9 = 4;
          goto LABEL_5;
        }

        if (*v7 != 9252 || v7[2] != 90)
        {
          goto LABEL_23;
        }
      }

      v8 = -3;
      v9 = 3;
    }

LABEL_5:
    v7 += v9;
    v6 += v8;
    *a2 = v7;
    a2[1] = v6;
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  *a2 = v7 + 1;
  a2[1] = (v6 - 1);
  v134 = v138;

  return nodeListToNodeArray((v3 + 16), v134, v4);
}

unint64_t llvm::ms_demangle::Demangler::demangleSimpleName(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = 0;
  v5 = *a2;
  while (v5[v4] != 64)
  {
    if (v3 == ++v4)
    {
      goto LABEL_11;
    }
  }

  if (!v4)
  {
LABEL_11:
    *(a1 + 8) = 1;
    return 0;
  }

  *a2 = &v5[v4 + 1];
  *(a2 + 8) = ~v4 + v3;
  if (a3)
  {
    v6 = a1;
    llvm::ms_demangle::Demangler::memorizeString(a1, v5, v4);
    a1 = v6;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = v8[1] + *v8;
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) - *v8 + 40;
  v8[1] = v10;
  if (v10 > v8[2])
  {
    operator new();
  }

  result = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(result + 8) = 5;
  *(result + 16) = 0;
  *(result + 24) = v5;
  *result = &unk_2868A7178;
  *(result + 32) = v4;
  return result;
}

uint64_t llvm::ms_demangle::Demangler::demangleCharLiteral(uint64_t a1, unsigned __int8 **a2)
{
  v2 = a2[1];
  if (!v2)
  {
    v3 = *a2;
    LOBYTE(v4) = **a2;
    goto LABEL_10;
  }

  v3 = *a2;
  v4 = **a2;
  if (v4 != 63)
  {
LABEL_10:
    *a2 = v3 + 1;
    a2[1] = v2 - 1;
    return v4;
  }

  *a2 = v3 + 1;
  a2[1] = v2 - 1;
  if (v2 != 1)
  {
    v5 = v3[1];
    if (v5 == 36)
    {
      *a2 = v3 + 2;
      a2[1] = v2 - 2;
      if ((v2 - 2) >= 2)
      {
        v6 = v3[2] - 65;
        if (v6 <= 0xFu)
        {
          v7 = v3[3] - 65;
          if (v7 <= 0xFu)
          {
            *a2 = v3 + 4;
            a2[1] = v2 - 4;
            return (v7 | (16 * v6));
          }
        }
      }
    }

    else if ((v5 & 0x80) == 0)
    {
      if ((*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x400) != 0)
      {
        v10 = asc_257415D5C[v5 - 48];
        *a2 = v3 + 2;
        a2[1] = v2 - 2;
        return v10;
      }

      if (v5 < 0x61)
      {
        if ((v5 - 65) <= 0x19)
        {
          v11 = byte_2573A59F6[v5 - 65];
          *a2 = v3 + 2;
          a2[1] = v2 - 2;
          return v11;
        }
      }

      else if (v5 <= 0x7A)
      {
        v9 = byte_2573A59DC[v5 - 97];
        *a2 = v3 + 2;
        a2[1] = v2 - 2;
        return v9;
      }
    }
  }

  *(a1 + 8) = 1;
  return 0;
}

uint64_t llvm::ms_demangle::Demangler::demangleWcharLiteral(uint64_t a1, uint64_t a2)
{
  v4 = llvm::ms_demangle::Demangler::demangleCharLiteral(a1, a2);
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*(a2 + 8))
    {
      v5 = v4;
      v6 = llvm::ms_demangle::Demangler::demangleCharLiteral(a1, a2);
      if ((*(a1 + 8) & 1) == 0)
      {
        return v6 | (v5 << 8);
      }
    }
  }

  result = 0;
  *(a1 + 8) = 1;
  return result;
}

uint64_t llvm::ms_demangle::Demangler::demangleCallingConvention(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *(*a2)++;
    a2[1] = v2 - 1;
    if ((v3 - 65) > 0x16)
    {
      return 0;
    }

    else
    {
      return byte_2573A5A6C[(v3 - 65)];
    }
  }

  else
  {
    result = 0;
    *(a1 + 8) = 1;
  }

  return result;
}

size_t outputEscapedChar(char **a1, int a2)
{
  v72 = *MEMORY[0x277D85DE8];
  if (a2 <= 10)
  {
    if (a2 > 7)
    {
      if (a2 != 8)
      {
        if (a2 != 9)
        {
          result = *a1;
          v4 = a1[1];
          v10 = a1[2];
          if ((v4 + 2) > v10)
          {
            v11 = (v4 + 994);
            v12 = 2 * v10;
            if (v12 <= v11)
            {
              v13 = v11;
            }

            else
            {
              v13 = v12;
            }

            a1[2] = v13;
            result = malloc_type_realloc(result, v13, 0x100004077774924uLL);
            *a1 = result;
            if (!result)
            {
              goto LABEL_118;
            }

            v4 = a1[1];
          }

          v9 = 28252;
          goto LABEL_91;
        }

        result = *a1;
        v4 = a1[1];
        v26 = a1[2];
        if ((v4 + 2) > v26)
        {
          v27 = (v4 + 994);
          v28 = 2 * v26;
          if (v28 <= v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = v28;
          }

          a1[2] = v29;
          result = malloc_type_realloc(result, v29, 0x100004077774924uLL);
          *a1 = result;
          if (!result)
          {
            goto LABEL_118;
          }

          v4 = a1[1];
        }

        v9 = 29788;
        goto LABEL_91;
      }

      result = *a1;
      v4 = a1[1];
      v38 = a1[2];
      if ((v4 + 2) > v38)
      {
        v39 = (v4 + 994);
        v40 = 2 * v38;
        if (v40 <= v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = v40;
        }

        a1[2] = v41;
        result = malloc_type_realloc(result, v41, 0x100004077774924uLL);
        *a1 = result;
        if (!result)
        {
          goto LABEL_118;
        }

        v4 = a1[1];
      }

      v9 = 25180;
      goto LABEL_91;
    }

    if (!a2)
    {
      result = *a1;
      v4 = a1[1];
      v22 = a1[2];
      if ((v4 + 2) > v22)
      {
        v23 = (v4 + 994);
        v24 = 2 * v22;
        if (v24 <= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        a1[2] = v25;
        result = malloc_type_realloc(result, v25, 0x100004077774924uLL);
        *a1 = result;
        if (!result)
        {
          goto LABEL_118;
        }

        v4 = a1[1];
      }

      v9 = 12380;
      goto LABEL_91;
    }

    if (a2 == 7)
    {
      result = *a1;
      v4 = a1[1];
      v18 = a1[2];
      if ((v4 + 2) > v18)
      {
        v19 = (v4 + 994);
        v20 = 2 * v18;
        if (v20 <= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v20;
        }

        a1[2] = v21;
        result = malloc_type_realloc(result, v21, 0x100004077774924uLL);
        *a1 = result;
        if (!result)
        {
          goto LABEL_118;
        }

        v4 = a1[1];
      }

      v9 = 24924;
      goto LABEL_91;
    }
  }

  else if (a2 > 33)
  {
    switch(a2)
    {
      case '""':
        result = *a1;
        v4 = a1[1];
        v46 = a1[2];
        if ((v4 + 2) > v46)
        {
          v47 = (v4 + 994);
          v48 = 2 * v46;
          if (v48 <= v47)
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }

          a1[2] = v49;
          result = malloc_type_realloc(result, v49, 0x100004077774924uLL);
          *a1 = result;
          if (!result)
          {
            goto LABEL_118;
          }

          v4 = a1[1];
        }

        v9 = 8796;
        goto LABEL_91;
      case '\'':
        result = *a1;
        v4 = a1[1];
        v34 = a1[2];
        if ((v4 + 2) > v34)
        {
          v35 = (v4 + 994);
          v36 = 2 * v34;
          if (v36 <= v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = v36;
          }

          a1[2] = v37;
          result = malloc_type_realloc(result, v37, 0x100004077774924uLL);
          *a1 = result;
          if (!result)
          {
            goto LABEL_118;
          }

          v4 = a1[1];
        }

        v9 = 10076;
        goto LABEL_91;
      case '\\':
        result = *a1;
        v4 = a1[1];
        v14 = a1[2];
        if ((v4 + 2) > v14)
        {
          v15 = (v4 + 994);
          v16 = 2 * v14;
          if (v16 <= v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = v16;
          }

          a1[2] = v17;
          result = malloc_type_realloc(result, v17, 0x100004077774924uLL);
          *a1 = result;
          if (!result)
          {
            goto LABEL_118;
          }

          v4 = a1[1];
        }

        v9 = 23644;
        goto LABEL_91;
    }
  }

  else
  {
    switch(a2)
    {
      case 11:
        result = *a1;
        v4 = a1[1];
        v42 = a1[2];
        if ((v4 + 2) > v42)
        {
          v43 = (v4 + 994);
          v44 = 2 * v42;
          if (v44 <= v43)
          {
            v45 = v43;
          }

          else
          {
            v45 = v44;
          }

          a1[2] = v45;
          result = malloc_type_realloc(result, v45, 0x100004077774924uLL);
          *a1 = result;
          if (!result)
          {
            goto LABEL_118;
          }

          v4 = a1[1];
        }

        v9 = 30300;
        goto LABEL_91;
      case 12:
        result = *a1;
        v4 = a1[1];
        v30 = a1[2];
        if ((v4 + 2) > v30)
        {
          v31 = (v4 + 994);
          v32 = 2 * v30;
          if (v32 <= v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = v32;
          }

          a1[2] = v33;
          result = malloc_type_realloc(result, v33, 0x100004077774924uLL);
          *a1 = result;
          if (!result)
          {
            goto LABEL_118;
          }

          v4 = a1[1];
        }

        v9 = 26204;
        goto LABEL_91;
      case 13:
        result = *a1;
        v4 = a1[1];
        v5 = a1[2];
        if ((v4 + 2) <= v5)
        {
LABEL_12:
          v9 = 29276;
LABEL_91:
          *&v4[result] = v9;
          v50 = (a1[1] + 2);
LABEL_92:
          a1[1] = v50;
          return result;
        }

        v6 = (v4 + 994);
        v7 = 2 * v5;
        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        a1[2] = v8;
        result = malloc_type_realloc(result, v8, 0x100004077774924uLL);
        *a1 = result;
        if (result)
        {
          v4 = a1[1];
          goto LABEL_12;
        }

LABEL_118:
        abort();
    }
  }

  if ((a2 - 32) <= 0x5E)
  {
    result = *a1;
    v51 = a1[1];
    v52 = v51 + 1;
    v53 = a1[2];
    if ((v51 + 1) > v53)
    {
      v54 = a2;
      v55 = (v51 + 993);
      if (2 * v53 <= v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = 2 * v53;
      }

      a1[2] = v56;
      result = malloc_type_realloc(result, v56, 0x100004077774924uLL);
      *a1 = result;
      if (!result)
      {
        goto LABEL_118;
      }

      v51 = a1[1];
      v52 = v51 + 1;
      LOBYTE(a2) = v54;
    }

    a1[1] = v52;
    v51[result] = a2;
    return result;
  }

  v70[0] = 0;
  v70[1] = 0;
  v71 = 0;
  v57 = 15;
  do
  {
    v58 = v70 + v57;
    if ((a2 & 0xFu) >= 0xA)
    {
      v59 = (a2 & 0xF) + 55;
    }

    else
    {
      v59 = a2 & 0xF | 0x30;
    }

    *v58 = v59;
    v57 -= 2;
    if (a2 >= 0xA0u)
    {
      v60 = (a2 >> 4) + 55;
    }

    else
    {
      v60 = (a2 >> 4) | 0x30;
    }

    *(v58 - 1) = v60;
    v61 = a2 > 0xFF;
    a2 = a2 >> 8;
  }

  while (v61);
  v62 = v70 + v57;
  *(v62 - 1) = 30812;
  v63 = v62 - 1;
  result = strlen(v63);
  if (result)
  {
    v64 = result;
    v65 = *a1;
    v66 = a1[1];
    v67 = &v66[v64];
    v68 = a1[2];
    if (&v66[v64] > v68)
    {
      if (2 * v68 <= (v67 + 992))
      {
        v69 = (v67 + 992);
      }

      else
      {
        v69 = 2 * v68;
      }

      a1[2] = v69;
      v65 = malloc_type_realloc(v65, v69, 0x100004077774924uLL);
      *a1 = v65;
      if (!v65)
      {
        goto LABEL_118;
      }

      v66 = a1[1];
    }

    result = memcpy(&v66[v65], v63, v64);
    v50 = &a1[1][v64];
    goto LABEL_92;
  }

  return result;
}

uint64_t guessCharByteSize(int8x16_t *a1, unsigned int a2, unint64_t a3, double a4, double a5, int32x4_t a6)
{
  if (a3)
  {
    return 1;
  }

  if (a3 > 0x1F)
  {
    if (!a2)
    {
      v13 = 0;
      goto LABEL_37;
    }

    if (a2 < 4)
    {
      LODWORD(v12) = 0;
      v13 = 0;
      v14 = a1;
      goto LABEL_33;
    }

    if (a2 >= 0x20)
    {
      v16 = 0uLL;
      v15 = a2 & 0xFFFFFFE0;
      v17.i64[0] = 0x100000001;
      v17.i64[1] = 0x100000001;
      v18 = a1 + 1;
      v19 = 0uLL;
      v20 = v15;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v27 = vceqzq_s8(v18[-1]);
        v28 = vmovl_u8(*v27.i8);
        v29 = vmovl_high_u8(v27);
        v30 = vceqzq_s8(*v18);
        v31 = vmovl_u8(*v30.i8);
        v32 = vmovl_high_u8(v30);
        v22 = vaddq_s32(v22, vandq_s8(vmovl_high_u16(v29), v17));
        v21 = vaddq_s32(v21, vandq_s8(vmovl_u16(*v29.i8), v17));
        v19 = vaddq_s32(v19, vandq_s8(vmovl_high_u16(v28), v17));
        v16 = vaddq_s32(v16, vandq_s8(vmovl_u16(*v28.i8), v17));
        v26 = vaddq_s32(v26, vandq_s8(vmovl_high_u16(v32), v17));
        v25 = vaddq_s32(v25, vandq_s8(vmovl_u16(*v32.i8), v17));
        v24 = vaddq_s32(v24, vandq_s8(vmovl_high_u16(v31), v17));
        v23 = vaddq_s32(v23, vandq_s8(vmovl_u16(*v31.i8), v17));
        v18 += 2;
        v20 -= 32;
      }

      while (v20);
      a6 = vaddq_s32(v25, v21);
      v13 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v23, v16), a6), vaddq_s32(vaddq_s32(v24, v19), vaddq_s32(v26, v22))));
      if (v15 == a2)
      {
LABEL_37:
        if ((a3 & 2) == 0 && v13 >= 2 * a2 / 3)
        {
          return 4;
        }

        if (v13 < a2 / 3)
        {
          return 1;
        }

        return 2;
      }

      if ((a2 & 0x1C) == 0)
      {
        v14 = &a1->u8[v15];
        LODWORD(v12) = a2 & 0xFFFFFFE0;
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v12 = a2 & 0xFFFFFFFC;
    v14 = &a1->u8[v12];
    v33 = v13;
    v34 = &a1->u8[v15];
    v35 = v15 - v12;
    v36.i64[0] = 0x100000001;
    v36.i64[1] = 0x100000001;
    do
    {
      v37 = *v34;
      v34 += 4;
      a6.i32[0] = v37;
      a6 = vandq_s8(vmovl_u16(vceqz_s16(*&vmovl_u8(*a6.i8))), v36);
      v33 = vaddq_s32(v33, a6);
      v35 += 4;
    }

    while (v35);
    v13 = vaddvq_s32(v33);
    if (v12 == a2)
    {
      goto LABEL_37;
    }

LABEL_33:
    v38 = a2 - v12;
    do
    {
      if (!*v14++)
      {
        ++v13;
      }

      --v38;
    }

    while (v38);
    goto LABEL_37;
  }

  if (a2 < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = &a1->u8[a2 - 1];
  while (!*v7--)
  {
    if (a2 == ++v6)
    {
      v6 = a2;
      break;
    }
  }

  if (v6 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v6 > 3 && (a3 & 2) == 0)
  {
    return 4;
  }

  else
  {
    return v9;
  }
}

unint64_t llvm::ms_demangle::Demangler::demangleAnonymousNamespaceName(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (v5 && **a2 == 16703)
  {
    *a2 += 2;
    *(a2 + 8) = v6;
  }

  v7 = *(a1 + 16);
  v8 = (v7[1] + *v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 - *v7 + 40;
  v7[1] = v9;
  if (v9 > v7[2])
  {
    operator new();
  }

  *(v8 + 8) = 5;
  *v8 = &unk_2868A7178;
  *(v8 + 16) = 0;
  *(v8 + 32) = 21;
  v10 = *(a2 + 8);
  if (v10 && (v11 = *a2, (v12 = memchr(*a2, 64, *(a2 + 8))) != 0) && (v13 = v12 - v11, v12 - v11 != -1))
  {
    if (v10 >= v13)
    {
      v14 = v12 - v11;
    }

    else
    {
      v14 = v10;
    }

    llvm::ms_demangle::Demangler::memorizeString(a1, v11, v14);
    v15 = *(a2 + 8);
    if (v15 <= v13)
    {
      abort();
    }

    *a2 += v13 + 1;
    *(a2 + 8) = v15 - (v13 + 1);
    return v8;
  }

  else
  {
    *(a1 + 8) = 1;
    return 0;
  }
}

unint64_t llvm::ms_demangle::Demangler::demangleLocallyScopedNamePiece(uint64_t a1, unsigned __int8 **a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v4 = (v3[1] + *v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 - *v3 + 40;
  v3[1] = v5;
  if (v5 > v3[2])
  {
    operator new();
  }

  *(v4 + 8) = 5;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_2868A7178;
  *(v4 + 32) = 0;
  v6 = a2[1];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = *a2;
  v8 = **a2;
  if (v8 != 63)
  {
    v9 = *a2;
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = v7 + 1;
  *a2 = v7 + 1;
  a2[1] = v6 - 1;
  if (v6 == 1)
  {
    v10 = 0;
    *(a1 + 8) = 1;
    goto LABEL_25;
  }

  v8 = *v9;
  if (v8 == 63)
  {
    v9 = v7 + 2;
    v6 -= 2;
    *a2 = v7 + 2;
    a2[1] = v6;
    if (v6)
    {
      v8 = *v9;
      if ((v8 & 0x80) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_19:
    v10 = 0;
    *(a1 + 8) = 1;
    v11 = v6;
    if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  --v6;
  if ((v8 & 0x80) != 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  if ((*(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x400) != 0)
  {
    v10 = v8 - 47;
    v12 = v9 + 1;
    v11 = v6 - 1;
    goto LABEL_22;
  }

LABEL_15:
  v10 = 0;
  v11 = v6 - 1;
  v12 = v9 + 1;
  while (1)
  {
    v13 = *(v12 - 1);
    if (v13 == 64)
    {
      break;
    }

    v14 = v13 - 65;
    if (v14 <= 0xFu)
    {
      v10 = v14 | (16 * v10);
      --v11;
      ++v12;
      if (v11 != -1)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

LABEL_22:
  *a2 = v12;
  a2[1] = v11;
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (**a2 == 63)
  {
    ++*a2;
    a2[1] = v11 - 1;
  }

LABEL_25:
  v15 = llvm::ms_demangle::Demangler::parse(a1, a2);
  if (*(a1 + 8))
  {
    return 0;
  }

  v16 = v15;
  v46 = -1;
  v47 = 1;
  v45 = 993;
  v17 = malloc_type_realloc(0, 0x3E1uLL, 0x100004077774924uLL);
  ptr = v17;
  if (!v17)
  {
    goto LABEL_62;
  }

  v44 = 1;
  *v17 = 96;
  (*(*v16 + 16))(v16, &ptr, 0);
  v18 = ptr;
  v19 = v44;
  v20 = v44 + 1;
  if (v44 + 1 > v45)
  {
    if (2 * v45 <= v44 + 993)
    {
      v21 = v44 + 993;
    }

    else
    {
      v21 = 2 * v45;
    }

    v45 = v21;
    v18 = malloc_type_realloc(ptr, v21, 0x100004077774924uLL);
    ptr = v18;
    if (!v18)
    {
      goto LABEL_62;
    }

    v19 = v44;
    v20 = v44 + 1;
  }

  v44 = v20;
  *(v18 + v19) = 39;
  v22 = ptr;
  v23 = v44;
  if (v44 + 3 > v45)
  {
    if (2 * v45 <= v44 + 995)
    {
      v24 = v44 + 995;
    }

    else
    {
      v24 = 2 * v45;
    }

    v45 = v24;
    v22 = malloc_type_realloc(ptr, v24, 0x100004077774924uLL);
    ptr = v22;
    if (!v22)
    {
      goto LABEL_62;
    }

    v23 = v44;
  }

  v25 = 0;
  v26 = &v22[v23];
  v26[2] = 96;
  *v26 = 14906;
  v27 = v44;
  v28 = v44 + 3;
  v44 += 3;
  do
  {
    v48[v25-- + 20] = (v10 % 0xA) | 0x30;
    v29 = v10 > 9;
    v10 /= 0xAuLL;
  }

  while (v29);
  if (v25)
  {
    v30 = v27 - v25;
    v31 = ptr;
    if (v30 + 3 > v45)
    {
      if (2 * v45 <= v30 + 995)
      {
        v32 = v30 + 995;
      }

      else
      {
        v32 = 2 * v45;
      }

      v45 = v32;
      v31 = malloc_type_realloc(ptr, v32, 0x100004077774924uLL);
      ptr = v31;
      if (!v31)
      {
        goto LABEL_62;
      }

      v28 = v44;
    }

    memcpy(&v31[v28], &v48[v25 + 21], -v25);
    v28 = v44 - v25;
    v44 -= v25;
  }

  v33 = ptr;
  if (v28 + 1 > v45)
  {
    v34 = v28 + 993;
    if (2 * v45 <= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = 2 * v45;
    }

    v45 = v35;
    v33 = malloc_type_realloc(ptr, v35, 0x100004077774924uLL);
    ptr = v33;
    if (v33)
    {
      v28 = v44;
      goto LABEL_56;
    }

LABEL_62:
    abort();
  }

LABEL_56:
  *(v33 + v28) = 39;
  v36 = ptr;
  v37 = v44 + 1;
  v44 = v37;
  v38 = *(a1 + 16);
  v39 = *v38;
  v40 = v38[1];
  v38[1] = v40 + v37;
  if (v40 + v37 > v38[2])
  {
    operator new();
  }

  v41 = (v39 + v40);
  if (v37)
  {
    memcpy(v41, v36, v37);
  }

  *(v4 + 24) = v41;
  *(v4 + 32) = v37;
  free(ptr);
  return v4;
}

uint64_t llvm::ms_demangle::Demangler::demangleUnqualifiedTypeName(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = a2[1];
  if (!v3)
  {
    return llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, a3);
  }

  v4 = *a2;
  v5 = **a2;
  if ((v5 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x400) != 0)
  {
    v7 = v5 - 48;
    if (v7 >= *(a1 + 192))
    {
      *(a1 + 8) = 1;
      return 0;
    }

    else
    {
      *a2 = v4 + 1;
      a2[1] = v3 - 1;
      return *(a1 + 8 * v7 + 112);
    }
  }

  else
  {
    if (v3 == 1 || *v4 != 9279)
    {
      return llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, a3);
    }

    return llvm::ms_demangle::Demangler::demangleTemplateInstantiationName(a1, a2, 1);
  }
}

uint64_t llvm::ms_demangle::Demangler::demangleNameScopePiece(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
LABEL_29:

    return llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, 1);
  }

  v3 = *a2;
  v4 = **a2;
  if ((v4 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x400) != 0)
  {
    v13 = v4 - 48;
    if (v13 >= *(a1 + 192))
    {
      *(a1 + 8) = 1;
      return 0;
    }

    else
    {
      *a2 = (v3 + 1);
      a2[1] = v2 - 1;
      return *(a1 + 8 * v13 + 112);
    }
  }

  if (v2 == 1)
  {
LABEL_7:
    if (*v3 == 63)
    {
      v5 = v2 - 1;
      if (v2 != 1)
      {
        v6 = v3 + 1;
        v7 = a1;
        v8 = a2;
        v9 = memchr(v3 + 1, 63, v2 - 1);
        a2 = v8;
        v10 = v9;
        a1 = v7;
        if (v10)
        {
          v11 = v10 - v6;
          if (v11 != -1)
          {
            if (v5 < v11)
            {
              v11 = v5;
            }

            if (v11)
            {
              if (v11 == 1)
              {
                v12 = *v6;
                if (v12 == 64 || (v12 - 48) < 0xA)
                {
LABEL_36:

                  return llvm::ms_demangle::Demangler::demangleLocallyScopedNamePiece(v7, v8);
                }
              }

              else if (v3[v11] == 64 && *v6 - 81 >= 0xFFFFFFF1)
              {
                v15 = v11 - 2;
                if (!v15)
                {
                  goto LABEL_36;
                }

                v16 = v3 + 2;
                while (*v16 - 65 <= 0xF)
                {
                  ++v16;
                  if (!--v15)
                  {
                    goto LABEL_36;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_29;
  }

  if (*v3 == 9279)
  {

    return llvm::ms_demangle::Demangler::demangleTemplateInstantiationName(a1, a2, 1);
  }

  else
  {
    if (*v3 != 16703)
    {
      goto LABEL_7;
    }

    return llvm::ms_demangle::Demangler::demangleAnonymousNamespaceName(a1, a2);
  }
}

unint64_t nodeListToNodeArray(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  v6 = (*(*a1 + 8) + **a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 - **a1 + 32;
  *(v5 + 8) = v7;
  if (v7 > *(v5 + 16))
  {
    operator new();
  }

  *(v6 + 8) = 19;
  *v6 = &unk_2868A7488;
  *(v6 + 16) = 0;
  *(v6 + 24) = a3;
  v8 = *a1;
  v9 = ((*(*a1 + 8) + **a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9 + 8 * a3 - **a1;
  *(v8 + 8) = v10;
  if (v10 > *(v8 + 16))
  {
    operator new();
  }

  if (a3 >> 61)
  {
    v11 = -1;
  }

  else
  {
    v11 = 8 * a3;
  }

  bzero(v9, v11);
  for (*(v6 + 16) = v9; v3; --v3)
  {
    *v9++ = *a2;
    a2 = a2[1];
  }

  return v6;
}

uint64_t llvm::ms_demangle::Demangler::demangleFunctionClass(uint64_t a1, unsigned __int8 **a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *a2 + 1;
  v6 = **a2;
  v7 = v3 - 1;
  *a2 = v5;
  a2[1] = v3 - 1;
  result = 384;
  switch(v6)
  {
    case '$':
      if (v3 == 1)
      {
        goto LABEL_42;
      }

      v9 = *v5;
      if (v9 == 82)
      {
        v7 = v3 - 2;
        *a2 = (v4 + 2);
        a2[1] = v3 - 2;
        if (v3 == 2)
        {
          goto LABEL_42;
        }

        v9 = *(v4 + 2);
        v10 = 1536;
        v11 = 2;
      }

      else
      {
        v10 = 512;
        v11 = 1;
      }

      *a2 = (v4 + v11 + 1);
      a2[1] = v7 - 1;
      if (v9 > 50)
      {
        switch(v9)
        {
          case '3':
            result = v10 | 0x62u;
            break;
          case '4':
            result = v10 | 0x21u;
            break;
          case '5':
            result = v10 | 0x61u;
            break;
          default:
            goto LABEL_42;
        }
      }

      else
      {
        switch(v9)
        {
          case '0':
            result = v10 | 0x24u;
            break;
          case '1':
            result = v10 | 0x64u;
            break;
          case '2':
            result = v10 | 0x22u;
            break;
          default:
            goto LABEL_42;
        }
      }

      break;
    case '9':
      return result;
    case 'A':
      result = 4;
      break;
    case 'B':
      result = 68;
      break;
    case 'C':
      result = 20;
      break;
    case 'D':
      result = 84;
      break;
    case 'E':
      result = 36;
      break;
    case 'F':
      result = 100;
      break;
    case 'G':
      result = 2052;
      break;
    case 'H':
      result = 2116;
      break;
    case 'I':
      result = 2;
      break;
    case 'J':
      result = 66;
      break;
    case 'K':
      result = 18;
      break;
    case 'L':
      result = 82;
      break;
    case 'M':
      result = 34;
      break;
    case 'N':
      result = 98;
      break;
    case 'O':
      result = 2082;
      break;
    case 'P':
      result = 2146;
      break;
    case 'Q':
      result = 1;
      break;
    case 'R':
      result = 65;
      break;
    case 'S':
      result = 17;
      break;
    case 'T':
      result = 81;
      break;
    case 'U':
      result = 33;
      break;
    case 'V':
      result = 97;
      break;
    case 'W':
      result = 2081;
      break;
    case 'X':
      result = 2145;
      break;
    case 'Y':
      result = 8;
      break;
    case 'Z':
      result = 72;
      break;
    default:
LABEL_42:
      result = 1;
      *(a1 + 8) = 1;
      break;
  }

  return result;
}

unint64_t llvm::ms_demangle::Demangler::demangleMemberPointerType(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = (v4[1] + *v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 - *v4 + 40;
  v4[1] = v6;
  if (v6 > v4[2])
  {
    operator new();
  }

  *(v5 + 8) = 14;
  *(v5 + 12) = 0;
  *v5 = &unk_2868A7348;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v7 = a2[1];
  if (v7 > 2)
  {
    v8 = *a2;
    if (**a2 == 9252 && *(*a2 + 2) == 81)
    {
      v12 = v7 - 3;
      *a2 = v8 + 3;
      a2[1] = v12;
      LOBYTE(v8) = 0;
      *(v5 + 12) = 0;
      *(v5 + 16) = 3;
      if (v12)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v8 = *a2;
  }

  v11 = *v8;
  v10 = v11;
  v12 = v7 - 1;
  *a2 = v8 + 1;
  a2[1] = v12;
  if (v11 <= 80)
  {
    if (v10 == 65)
    {
      LOBYTE(v8) = 0;
      *(v5 + 12) = 0;
      *(v5 + 16) = 2;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
      *(v5 + 12) = 0;
      *(v5 + 16) = 1;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_21;
  }

  if (v10 == 81)
  {
    v8 = 0x100000001;
LABEL_20:
    *(v5 + 12) = v8;
    *(v5 + 16) = HIDWORD(v8);
    if (v12)
    {
      goto LABEL_21;
    }

LABEL_18:
    v13 = 0;
LABEL_44:
    *(v5 + 12) = v13 | v8;
LABEL_45:
    v16 = 0;
    *(a1 + 8) = 1;
    v20 = a2[1];
    goto LABEL_46;
  }

  v8 = 0x100000002;
  if (v10 == 82)
  {
    goto LABEL_20;
  }

  LOBYTE(v8) = 3;
  *(v5 + 12) = 3;
  *(v5 + 16) = 1;
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_21:
  v14 = *a2;
  v15 = **a2;
  if (v15 != 69)
  {
    v13 = 0;
    if (v15 != 73)
    {
      goto LABEL_24;
    }

LABEL_28:
    ++v14;
    v13 |= 0x20u;
    --v12;
    *a2 = v14;
    a2[1] = v12;
    if (!v12)
    {
      goto LABEL_44;
    }

    if (*v14 == 70)
    {
      goto LABEL_25;
    }

LABEL_30:
    *(v5 + 12) = v13 | v8;
    goto LABEL_31;
  }

  ++v14;
  --v12;
  *a2 = v14;
  a2[1] = v12;
  if (!v12)
  {
    v13 = 64;
    goto LABEL_44;
  }

  v15 = *v14;
  v13 = 64;
  if (v15 == 73)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v15 != 70)
  {
    goto LABEL_30;
  }

LABEL_25:
  *(v5 + 12) = v13 | v8 | 0x10;
  --v12;
  *a2 = (v14 + 1);
  a2[1] = v12;
  if (!v12)
  {
    goto LABEL_45;
  }

LABEL_31:
  v16 = 0;
  v17 = *a2;
  v19 = (*a2 + 1);
  v18 = **a2;
  v20 = v12 - 1;
  *a2 = v19;
  a2[1] = v12 - 1;
  if (v18 > 67)
  {
    if (v18 > 81)
    {
      if (v18 != 82)
      {
        if (v18 != 83)
        {
          if (v18 != 84)
          {
            goto LABEL_69;
          }

LABEL_71:
          v16 = 3;
          goto LABEL_46;
        }

LABEL_66:
        v16 = 2;
        goto LABEL_46;
      }

LABEL_70:
      v16 = 1;
      goto LABEL_46;
    }

    if (v18 == 68)
    {
      goto LABEL_71;
    }

    if (v18 == 81)
    {
      goto LABEL_46;
    }

LABEL_69:
    v16 = 0;
    *(a1 + 8) = 1;
    goto LABEL_46;
  }

  if (v18 > 65)
  {
    if (v18 != 66)
    {
      goto LABEL_66;
    }

    goto LABEL_70;
  }

  if (v18 != 56)
  {
    if (v18 == 65)
    {
      if (!v20)
      {
        goto LABEL_51;
      }

LABEL_46:
      v21 = *a2;
      v22 = **a2;
      if ((v22 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x400) != 0)
      {
        v29 = v22 - 48;
        if (v29 >= *(a1 + 192))
        {
          v24 = 0;
          *(a1 + 8) = 1;
        }

        else
        {
          *a2 = v21 + 1;
          a2[1] = v20 - 1;
          v24 = *(a1 + 8 * v29 + 112);
        }

LABEL_53:
        if (*(a1 + 8))
        {
          v25 = 0;
        }

        else
        {
          v26 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v24);
          if (*(a1 + 8))
          {
            v25 = 0;
          }

          else
          {
            v25 = v26;
          }
        }

        *(v5 + 24) = v25;
        v27 = llvm::ms_demangle::Demangler::demangleType(a1, a2, 0);
        *(v5 + 32) = v27;
        if (v27)
        {
          *(v27 + 12) = v16;
        }

        return v5;
      }

      if (v20 != 1 && *v21 == 9279)
      {
        v23 = llvm::ms_demangle::Demangler::demangleTemplateInstantiationName(a1, a2, 1);
      }

      else
      {
LABEL_51:
        v23 = llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, 1);
      }

      v24 = v23;
      goto LABEL_53;
    }

    goto LABEL_69;
  }

  if (v12 == 1)
  {
    goto LABEL_77;
  }

  v30 = *v19;
  if (v30 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v30 + 60) & 0x400) == 0)
  {
    if (v12 != 2 && *v19 == 9279)
    {
      v31 = llvm::ms_demangle::Demangler::demangleTemplateInstantiationName(a1, a2, 1);
      goto LABEL_78;
    }

LABEL_77:
    v31 = llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, 1);
LABEL_78:
    v32 = v31;
    goto LABEL_79;
  }

  if ((v30 - 48) >= *(a1 + 192))
  {
    v32 = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    *a2 = v17 + 2;
    a2[1] = v12 - 2;
    v32 = *(a1 + 8 * (v30 - 48) + 112);
  }

LABEL_79:
  if (*(a1 + 8))
  {
    v33 = 0;
  }

  else
  {
    v34 = llvm::ms_demangle::Demangler::demangleNameScopeChain(a1, a2, v32);
    if (*(a1 + 8))
    {
      v33 = 0;
    }

    else
    {
      v33 = v34;
    }
  }

  *(v5 + 24) = v33;
  *(v5 + 32) = llvm::ms_demangle::Demangler::demangleFunctionType(a1, a2, 1);
  return v5;
}

unint64_t llvm::ms_demangle::Demangler::demanglePointerType(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = (v4[1] + *v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 - *v4 + 40;
  v4[1] = v6;
  if (v6 > v4[2])
  {
    operator new();
  }

  *(v5 + 8) = 14;
  *(v5 + 12) = 0;
  *v5 = &unk_2868A7348;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v7 = a2[1];
  if (v7 <= 2)
  {
    v8 = *a2;
    goto LABEL_9;
  }

  v8 = *a2;
  if (**a2 != 9252 || *(*a2 + 2) != 81)
  {
LABEL_9:
    v11 = *v8;
    v10 = v11;
    v12 = v7 - 1;
    *a2 = (v8 + 1);
    a2[1] = v7 - 1;
    v7 = 0x200000000;
    v13 = 0x100000001;
    v14 = 0x100000002;
    if (v11 != 82)
    {
      v14 = 0x100000003;
    }

    if (v10 != 81)
    {
      v13 = v14;
    }

    if (v10 != 65)
    {
      v7 = 0x100000000;
    }

    if (v10 > 80)
    {
      v7 = v13;
    }

    *(v5 + 12) = v7;
    *(v5 + 16) = HIDWORD(v7);
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_37:
    v23 = 0;
    goto LABEL_38;
  }

  v12 = v7 - 3;
  *a2 = (v8 + 3);
  a2[1] = v7 - 3;
  LOBYTE(v7) = 0;
  *(v5 + 12) = 0;
  *(v5 + 16) = 3;
  if (!v12)
  {
    goto LABEL_37;
  }

LABEL_18:
  v15 = *a2;
  v16 = **a2;
  if (v16 == 69)
  {
    ++v15;
    --v12;
    *a2 = v15;
    a2[1] = v12;
    if (!v12)
    {
      v23 = 64;
      goto LABEL_38;
    }

    v16 = *v15;
    v23 = 64;
    if (v16 != 73)
    {
LABEL_34:
      if (v16 == 70)
      {
        *a2 = (v15 + 1);
        a2[1] = v12 - 1;
        v23 |= 0x10u;
      }

      goto LABEL_38;
    }
  }

  else
  {
    if (v16 == 54)
    {
      *a2 = (v15 + 1);
      a2[1] = v12 - 1;
      v17 = *(a1 + 16);
      v18 = (v17[1] + *v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = v18 - *v17 + 64;
      v17[1] = v19;
      if (v19 > v17[2])
      {
        operator new();
      }

      *(v18 + 8) = 3;
      *(v18 + 12) = 0;
      *v18 = &unk_2868A7090;
      *(v18 + 16) = 0;
      *(v18 + 20) = 0;
      *(v18 + 22) = 8;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      v20 = a2[1];
      if (!v20)
      {
        *(a1 + 8) = 1;
        *(v18 + 20) = 0;
        goto LABEL_65;
      }

      v21 = *(*a2)++;
      a2[1] = v20 - 1;
      if (v21 <= 72)
      {
        if (v21 > 68)
        {
          if ((v21 - 69) < 2)
          {
            v22 = 3;
            goto LABEL_62;
          }

          if ((v21 - 71) < 2)
          {
            v22 = 4;
            goto LABEL_62;
          }
        }

        else
        {
          if ((v21 - 65) < 2)
          {
            v22 = 1;
            goto LABEL_62;
          }

          if ((v21 - 67) < 2)
          {
            v22 = 2;
            goto LABEL_62;
          }
        }
      }

      else if (v21 <= 78)
      {
        if ((v21 - 73) < 2)
        {
          v22 = 5;
          goto LABEL_62;
        }

        if ((v21 - 77) < 2)
        {
          v22 = 6;
          goto LABEL_62;
        }
      }

      else if (v21 > 82)
      {
        if (v21 == 83)
        {
          v22 = 10;
          goto LABEL_62;
        }

        if (v21 == 87)
        {
          v22 = 11;
          goto LABEL_62;
        }
      }

      else
      {
        if ((v21 - 79) < 2)
        {
          v22 = 7;
LABEL_62:
          *(v18 + 20) = v22;
          if (v20 != 1 && **a2 == 64)
          {
            ++*a2;
            a2[1] = v20 - 2;
            goto LABEL_66;
          }

LABEL_65:
          *(v18 + 32) = llvm::ms_demangle::Demangler::demangleType(a1, a2, 2);
LABEL_66:
          *(v18 + 48) = llvm::ms_demangle::Demangler::demangleFunctionParameterList(a1, a2, (v18 + 40));
          v25 = a2[1];
          if (v25 >= 2)
          {
            v26 = *a2;
            if (**a2 == 17759)
            {
              *a2 = (v26 + 2);
              a2[1] = v25 - 2;
              *(v18 + 56) = 1;
              goto LABEL_39;
            }
          }

          else
          {
            if (!v25)
            {
              goto LABEL_72;
            }

            v26 = *a2;
          }

          if (*v26 == 90)
          {
            *a2 = (v26 + 1);
            a2[1] = v25 - 1;
            *(v18 + 56) = 0;
            goto LABEL_39;
          }

LABEL_72:
          *(a1 + 8) = 1;
          *(v18 + 56) = 0;
          goto LABEL_39;
        }

        if (v21 == 81)
        {
          v22 = 8;
          goto LABEL_62;
        }
      }

      v22 = 0;
      goto LABEL_62;
    }

    v23 = 0;
    if (v16 != 73)
    {
      goto LABEL_34;
    }
  }

  ++v15;
  v23 |= 0x20u;
  --v12;
  *a2 = v15;
  a2[1] = v12;
  if (v12)
  {
    v16 = *v15;
    goto LABEL_34;
  }

LABEL_38:
  *(v5 + 12) = v23 | v7;
  v18 = llvm::ms_demangle::Demangler::demangleType(a1, a2, 1);
LABEL_39:
  *(v5 + 32) = v18;
  return v5;
}

unint64_t llvm::ms_demangle::Demangler::demangleArrayType(uint64_t a1, unsigned __int8 **a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a2 + 1;
  v6 = v4 - 1;
  *a2 = v5;
  a2[1] = v4 - 1;
  if (v4 == 1)
  {
    goto LABEL_44;
  }

  v8 = *v5;
  if (v8 == 63)
  {
    v5 = v3 + 2;
    v6 = v4 - 2;
    *a2 = v3 + 2;
    a2[1] = v4 - 2;
    if (v4 == 2)
    {
      goto LABEL_44;
    }

    v9 = *v5;
    if ((v9 & 0x80) != 0)
    {
LABEL_8:
      v10 = 0;
      v11 = v6 - 1;
      v12 = v5 + 1;
      while (1)
      {
        v13 = *(v12 - 1);
        if (v13 == 64)
        {
          break;
        }

        v14 = v13 - 65;
        if (v14 <= 0xFu)
        {
          v10 = v14 | (16 * v10);
          --v11;
          ++v12;
          if (v11 != -1)
          {
            continue;
          }
        }

        goto LABEL_44;
      }

      *a2 = v12;
      a2[1] = v11;
      if (v8 != 63)
      {
        goto LABEL_16;
      }

LABEL_44:
      result = 0;
      *(a1 + 8) = 1;
      return result;
    }
  }

  else
  {
    v9 = *v5;
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_8;
    }
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v10 = v9 - 47;
  *a2 = v5 + 1;
  a2[1] = v6 - 1;
  if (v8 == 63)
  {
    goto LABEL_44;
  }

LABEL_16:
  if (!v10)
  {
    goto LABEL_44;
  }

  v16 = (a1 + 16);
  v15 = *(a1 + 16);
  v17 = (v15[1] + *v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = v17 - *v15 + 32;
  v15[1] = v18;
  if (v18 > v15[2])
  {
    operator new();
  }

  *(v17 + 8) = 16;
  *(v17 + 12) = 0;
  *v17 = &unk_2868A73E8;
  *(v17 + 16) = 0;
  v49 = (v17 + 16);
  v50 = v17;
  *(v17 + 24) = 0;
  v19 = *v16;
  v20 = (((*v16)[1] + **v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 - **v16 + 16;
  v19[1] = v21;
  if (v21 > v19[2])
  {
    operator new();
  }

  v22 = 0;
  *v20 = 0;
  v20[1] = 0;
  v48 = v20;
  do
  {
    v23 = a2[1];
    if (!v23)
    {
LABEL_35:
      *(a1 + 8) = 1;
      goto LABEL_44;
    }

    v24 = *a2;
    v25 = **a2;
    if (v25 == 63)
    {
      ++v24;
      --v23;
      *a2 = v24;
      a2[1] = v23;
      if (!v23)
      {
        goto LABEL_35;
      }

      v25 = *v24;
      v26 = 1;
      if ((v25 & 0x80) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v26 = 0;
      if ((v25 & 0x80) != 0)
      {
        goto LABEL_31;
      }
    }

    if ((*(MEMORY[0x277D85DE0] + 4 * v25 + 60) & 0x400) != 0)
    {
      v27 = v25 - 47;
      v29 = v24 + 1;
      v28 = v23 - 1;
      goto LABEL_37;
    }

LABEL_31:
    v27 = 0;
    v28 = v23 - 1;
    v29 = v24 + 1;
    while (1)
    {
      v30 = *(v29 - 1);
      if (v30 == 64)
      {
        break;
      }

      v31 = v30 - 65;
      if (v31 <= 0xFu)
      {
        v27 = v31 | (16 * v27);
        --v28;
        ++v29;
        if (v28 != -1)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

LABEL_37:
    *a2 = v29;
    a2[1] = v28;
    if (*(a1 + 8) & 1) != 0 || (v26)
    {
      goto LABEL_44;
    }

    v32 = *v16;
    v33 = **v16;
    v34 = ((*v16)[1] + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = v34 - v33 + 32;
    v32[1] = v35;
    v36 = v32[2];
    if (v35 > v36)
    {
      operator new();
    }

    *(v34 + 8) = 23;
    *v34 = &unk_2868A7548;
    *(v34 + 16) = v27;
    *(v34 + 24) = v26;
    *v20 = v34;
    if (++v22 < v10)
    {
      v37 = ((v34 + 39) & 0xFFFFFFFFFFFFFFF8);
      v38 = v37 + v35 - (v34 + 32) + 16;
      v32[1] = v38;
      if (v38 > v36)
      {
        operator new();
      }

      *v37 = 0;
      v37[1] = 0;
      v20[1] = v37;
      v20 = ((v34 + 39) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  while (v22 != v10);
  *v49 = nodeListToNodeArray((a1 + 16), v48, v10);
  v40 = a2[1];
  if (v40 < 3 || ((v41 = *a2, **a2 == 9252) ? (v42 = (*a2)[2] == 67) : (v42 = 0), !v42))
  {
LABEL_59:
    v46 = llvm::ms_demangle::Demangler::demangleType(a1, a2, 0);
    result = v50;
    *(v50 + 24) = v46;
    return result;
  }

  *a2 = v41 + 3;
  a2[1] = (v40 - 3);
  v43 = 0;
  if (v40 == 3)
  {
    *(a1 + 8) = 1;
    v45 = v50;
    goto LABEL_58;
  }

  v44 = v41[3];
  *a2 = v41 + 4;
  a2[1] = (v40 - 4);
  if (v44 <= 80)
  {
    v45 = v50;
    if (v44 > 66)
    {
      if (v44 == 67)
      {
        v43 = 2;
        goto LABEL_58;
      }

      if (v44 == 68)
      {
        v43 = 3;
        goto LABEL_58;
      }
    }

    else
    {
      if (v44 == 65)
      {
LABEL_58:
        *(v45 + 12) = v43;
        goto LABEL_59;
      }

      if (v44 == 66)
      {
        v43 = 1;
        goto LABEL_58;
      }
    }

LABEL_71:
    v43 = 0;
    *(a1 + 8) = 1;
    goto LABEL_58;
  }

  v45 = v50;
  if (v44 > 82)
  {
    if (v44 == 83)
    {
      v47 = 2;
    }

    else
    {
      if (v44 != 84)
      {
        goto LABEL_71;
      }

      v47 = 3;
    }
  }

  else
  {
    v47 = v44 != 81;
  }

  *(v50 + 12) = v47;
  *(a1 + 8) = 1;
  return 0;
}

unint64_t llvm::ms_demangle::Demangler::demangleFunctionType(uint64_t a1, uint64_t *a2, int a3)
{
  v5 = *(a1 + 16);
  v6 = (v5[1] + *v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 - *v5 + 64;
  v5[1] = v7;
  if (v7 > v5[2])
  {
    operator new();
  }

  *(v6 + 8) = 3;
  *(v6 + 12) = 0;
  *v6 = &unk_2868A7090;
  *(v6 + 16) = 0;
  *(v6 + 20) = 0;
  *(v6 + 22) = 8;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  v8 = a2[1];
  if (a3)
  {
    if (v8)
    {
      v9 = *a2;
      v10 = **a2;
      if (v10 == 69)
      {
        ++v9;
        --v8;
        *a2 = v9;
        a2[1] = v8;
        if (!v8)
        {
          v11 = 64;
          goto LABEL_22;
        }

        v10 = *v9;
        v11 = 64;
        if (v10 != 73)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v11 = 0;
        if (v10 != 73)
        {
LABEL_8:
          if (v10 == 70)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      ++v9;
      v11 |= 0x20u;
      --v8;
      *a2 = v9;
      a2[1] = v8;
      if (v8)
      {
        if (*v9 == 70)
        {
LABEL_9:
          v11 |= 0x10u;
          *(v6 + 12) = v11;
          --v8;
          *a2 = (v9 + 1);
          a2[1] = v8;
          if (!v8)
          {
            goto LABEL_23;
          }

          v12 = *a2;
          v13 = **a2;
          if (v13 != 71)
          {
            goto LABEL_11;
          }

          goto LABEL_19;
        }

LABEL_18:
        *(v6 + 12) = v11;
        v12 = *a2;
        v13 = **a2;
        if (v13 != 71)
        {
LABEL_11:
          if (v13 == 72)
          {
            --v8;
            *a2 = v12 + 1;
            a2[1] = v8;
            *(v6 + 24) = 2;
            if (!v8)
            {
              goto LABEL_37;
            }

            goto LABEL_24;
          }

LABEL_23:
          v8 = a2[1];
          *(v6 + 24) = 0;
          if (!v8)
          {
            goto LABEL_37;
          }

LABEL_24:
          v14 = 0;
          v15 = **a2;
          --v8;
          ++*a2;
          a2[1] = v8;
          if (v15 > 80)
          {
            if (v15 <= 82)
            {
              if (v15 != 81)
              {
LABEL_31:
                v14 = 1;
              }

LABEL_39:
              *(v6 + 12) = v14 | v11;
              goto LABEL_40;
            }

            if (v15 != 83)
            {
              if (v15 == 84)
              {
                goto LABEL_34;
              }

              goto LABEL_37;
            }
          }

          else
          {
            if (v15 <= 66)
            {
              if (v15 != 65)
              {
                if (v15 != 66)
                {
                  goto LABEL_37;
                }

                goto LABEL_31;
              }

              goto LABEL_39;
            }

            if (v15 != 67)
            {
              if (v15 == 68)
              {
LABEL_34:
                v14 = 3;
                goto LABEL_39;
              }

LABEL_37:
              v14 = 0;
              *(a1 + 8) = 1;
              goto LABEL_39;
            }
          }

          v14 = 2;
          goto LABEL_39;
        }

LABEL_19:
        --v8;
        *a2 = v12 + 1;
        a2[1] = v8;
        *(v6 + 24) = 1;
        if (!v8)
        {
          goto LABEL_37;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_22:
    *(v6 + 12) = v11;
    goto LABEL_23;
  }

LABEL_40:
  if (!v8)
  {
    *(a1 + 8) = 1;
    *(v6 + 20) = 0;
    goto LABEL_79;
  }

  v16 = *(*a2)++;
  a2[1] = v8 - 1;
  if (v16 <= 72)
  {
    if (v16 > 68)
    {
      if ((v16 - 69) < 2)
      {
        *(v6 + 20) = 3;
        if (v8 == 1)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      if ((v16 - 71) < 2)
      {
        *(v6 + 20) = 4;
        if (v8 == 1)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((v16 - 65) < 2)
      {
        *(v6 + 20) = 1;
        if (v8 == 1)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      if ((v16 - 67) < 2)
      {
        *(v6 + 20) = 2;
        if (v8 == 1)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }
    }

    goto LABEL_76;
  }

  if (v16 <= 78)
  {
    if ((v16 - 73) < 2)
    {
      *(v6 + 20) = 5;
      if (v8 == 1)
      {
        goto LABEL_79;
      }

      goto LABEL_77;
    }

    if ((v16 - 77) < 2)
    {
      *(v6 + 20) = 6;
      if (v8 == 1)
      {
        goto LABEL_79;
      }

      goto LABEL_77;
    }

    goto LABEL_76;
  }

  if (v16 <= 82)
  {
    if ((v16 - 79) < 2)
    {
      *(v6 + 20) = 7;
      if (v8 == 1)
      {
        goto LABEL_79;
      }

      goto LABEL_77;
    }

    if (v16 == 81)
    {
      *(v6 + 20) = 8;
      if (v8 == 1)
      {
        goto LABEL_79;
      }

      goto LABEL_77;
    }

LABEL_76:
    *(v6 + 20) = 0;
    if (v8 == 1)
    {
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  if (v16 != 83)
  {
    if (v16 == 87)
    {
      *(v6 + 20) = 11;
      if (v8 == 1)
      {
        goto LABEL_79;
      }

      goto LABEL_77;
    }

    goto LABEL_76;
  }

  *(v6 + 20) = 10;
  if (v8 == 1)
  {
    goto LABEL_79;
  }

LABEL_77:
  if (**a2 == 64)
  {
    ++*a2;
    a2[1] = v8 - 2;
    goto LABEL_80;
  }

LABEL_79:
  *(v6 + 32) = llvm::ms_demangle::Demangler::demangleType(a1, a2, 2);
LABEL_80:
  *(v6 + 48) = llvm::ms_demangle::Demangler::demangleFunctionParameterList(a1, a2, (v6 + 40));
  v17 = a2[1];
  if (v17 >= 2)
  {
    v18 = *a2;
    if (**a2 == 17759)
    {
      *a2 = (v18 + 2);
      a2[1] = v17 - 2;
      v19 = 1;
      goto LABEL_88;
    }
  }

  else
  {
    if (!v17)
    {
LABEL_86:
      v19 = 0;
      *(a1 + 8) = 1;
      goto LABEL_88;
    }

    v18 = *a2;
  }

  if (*v18 != 90)
  {
    goto LABEL_86;
  }

  v19 = 0;
  *a2 = (v18 + 1);
  a2[1] = v17 - 1;
LABEL_88:
  *(v6 + 56) = v19;
  return v6;
}

unint64_t llvm::ms_demangle::Demangler::demangleCustomType(uint64_t a1, char **a2)
{
  v4 = (a2[1] - 1);
  ++*a2;
  a2[1] = v4;
  v5 = *(a1 + 16);
  v6 = (v5[1] + *v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 - *v5 + 24;
  v5[1] = v7;
  if (v7 > v5[2])
  {
    operator new();
  }

  *(v6 + 8) = 17;
  *(v6 + 12) = 0;
  *v6 = &unk_2868A7438;
  *(v6 + 16) = 0;
  v8 = a2[1];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = *a2;
  v10 = **a2;
  if ((v10 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v10 + 60) & 0x400) != 0)
  {
    v14 = v10 - 48;
    if (v14 >= *(a1 + 192))
    {
      *(a1 + 8) = 1;
      v12 = a2[1];
      *(v6 + 16) = 0;
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = v8 - 1;
      *a2 = v9 + 1;
      a2[1] = v12;
      *(v6 + 16) = *(a1 + 8 * v14 + 112);
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_9;
  }

  if (v8 != 1 && *v9 == 9279)
  {
    v15 = llvm::ms_demangle::Demangler::demangleTemplateInstantiationName(a1, a2, 1);
    v12 = a2[1];
    *(v6 + 16) = v15;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_8:
    v11 = llvm::ms_demangle::Demangler::demangleSimpleName(a1, a2, 1);
    v12 = a2[1];
    *(v6 + 16) = v11;
    if (!v12)
    {
LABEL_19:
      result = 0;
      *(a1 + 8) = 1;
      return result;
    }
  }

LABEL_9:
  if (**a2 != 64)
  {
    goto LABEL_19;
  }

  ++*a2;
  a2[1] = v12 - 1;
  if (*(a1 + 8))
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t llvm::ms_demangle::Demangler::demanglePrimitiveType(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = v3 - 2;
  if (v3 <= 2)
  {
    v5 = *a2;
    goto LABEL_7;
  }

  v5 = *a2;
  if (**a2 != 9252 || *(*a2 + 2) != 84)
  {
LABEL_7:
    v7 = *v5;
    v8 = v3 - 1;
    *a2 = v5 + 1;
    a2[1] = v8;
    switch(v7)
    {
      case 'C':
        v9 = *(a1 + 16);
        result = (v9[1] + *v9 + 7) & 0xFFFFFFFFFFFFFFF8;
        v11 = result - *v9 + 24;
        v9[1] = v11;
        if (v11 > v9[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 3;
        break;
      case 'D':
        v30 = *(a1 + 16);
        result = (v30[1] + *v30 + 7) & 0xFFFFFFFFFFFFFFF8;
        v31 = result - *v30 + 24;
        v30[1] = v31;
        if (v31 > v30[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 2;
        break;
      case 'E':
        v28 = *(a1 + 16);
        result = (v28[1] + *v28 + 7) & 0xFFFFFFFFFFFFFFF8;
        v29 = result - *v28 + 24;
        v28[1] = v29;
        if (v29 > v28[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 4;
        break;
      case 'F':
        v26 = *(a1 + 16);
        result = (v26[1] + *v26 + 7) & 0xFFFFFFFFFFFFFFF8;
        v27 = result - *v26 + 24;
        v26[1] = v27;
        if (v27 > v26[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 8;
        break;
      case 'G':
        v18 = *(a1 + 16);
        result = (v18[1] + *v18 + 7) & 0xFFFFFFFFFFFFFFF8;
        v19 = result - *v18 + 24;
        v18[1] = v19;
        if (v19 > v18[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 9;
        break;
      case 'H':
        v22 = *(a1 + 16);
        result = (v22[1] + *v22 + 7) & 0xFFFFFFFFFFFFFFF8;
        v23 = result - *v22 + 24;
        v22[1] = v23;
        if (v23 > v22[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 10;
        break;
      case 'I':
        v32 = *(a1 + 16);
        result = (v32[1] + *v32 + 7) & 0xFFFFFFFFFFFFFFF8;
        v33 = result - *v32 + 24;
        v32[1] = v33;
        if (v33 > v32[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 11;
        break;
      case 'J':
        v34 = *(a1 + 16);
        result = (v34[1] + *v34 + 7) & 0xFFFFFFFFFFFFFFF8;
        v35 = result - *v34 + 24;
        v34[1] = v35;
        if (v35 > v34[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 12;
        break;
      case 'K':
        v38 = *(a1 + 16);
        result = (v38[1] + *v38 + 7) & 0xFFFFFFFFFFFFFFF8;
        v39 = result - *v38 + 24;
        v38[1] = v39;
        if (v39 > v38[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 13;
        break;
      case 'M':
        v36 = *(a1 + 16);
        result = (v36[1] + *v36 + 7) & 0xFFFFFFFFFFFFFFF8;
        v37 = result - *v36 + 24;
        v36[1] = v37;
        if (v37 > v36[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 17;
        break;
      case 'N':
        v16 = *(a1 + 16);
        result = (v16[1] + *v16 + 7) & 0xFFFFFFFFFFFFFFF8;
        v17 = result - *v16 + 24;
        v16[1] = v17;
        if (v17 > v16[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 18;
        break;
      case 'O':
        v24 = *(a1 + 16);
        result = (v24[1] + *v24 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = result - *v24 + 24;
        v24[1] = v25;
        if (v25 > v24[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 19;
        break;
      case 'X':
        v20 = *(a1 + 16);
        result = (v20[1] + *v20 + 7) & 0xFFFFFFFFFFFFFFF8;
        v21 = result - *v20 + 24;
        v20[1] = v21;
        if (v21 > v20[2])
        {
          operator new();
        }

        *(result + 8) = 2;
        *(result + 12) = 0;
        *result = &unk_2868A7018;
        *(result + 16) = 0;
        break;
      case '_':
        if (!v8)
        {
          goto LABEL_67;
        }

        v14 = v5[1];
        *a2 = v5 + 2;
        a2[1] = v4;
        if (v14 <= 80)
        {
          if (v14 > 77)
          {
            if (v14 == 78)
            {
              v15 = 1;
            }

            else
            {
              if (v14 != 80)
              {
                goto LABEL_67;
              }

              v15 = 21;
            }
          }

          else if (v14 == 74)
          {
            v15 = 14;
          }

          else
          {
            if (v14 != 75)
            {
              goto LABEL_67;
            }

            v15 = 15;
          }
        }

        else if (v14 <= 83)
        {
          if (v14 == 81)
          {
            v15 = 5;
          }

          else
          {
            if (v14 != 83)
            {
              goto LABEL_67;
            }

            v15 = 6;
          }
        }

        else
        {
          switch(v14)
          {
            case 'T':
              v15 = 22;
              break;
            case 'U':
              v15 = 7;
              break;
            case 'W':
              v15 = 16;
              break;
            default:
              goto LABEL_67;
          }
        }

        v40 = v15;
        result = llvm::ms_demangle::ArenaAllocator::alloc<llvm::ms_demangle::PrimitiveTypeNode,llvm::ms_demangle::PrimitiveKind>((a1 + 16), &v40);
        break;
      default:
LABEL_67:
        result = 0;
        *(a1 + 8) = 1;
        break;
    }

    return result;
  }

  *a2 = v5 + 3;
  a2[1] = v3 - 3;
  v12 = *(a1 + 16);
  result = (v12[1] + *v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = result - *v12 + 24;
  v12[1] = v13;
  if (v13 > v12[2])
  {
    operator new();
  }

  *(result + 8) = 2;
  *(result + 12) = 0;
  *result = &unk_2868A7018;
  *(result + 16) = 20;
  return result;
}

uint64_t llvm::ms_demangle::Demangler::demangleThrowSpecification(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (v2 < 2)
  {
    if (!v2)
    {
LABEL_7:
      *(a1 + 8) = 1;
      return 0;
    }

LABEL_5:
    if (**a2 == 90)
    {
      ++*a2;
      a2[1] = v2 - 1;
      return 0;
    }

    goto LABEL_7;
  }

  if (**a2 != 17759)
  {
    goto LABEL_5;
  }

  *a2 += 2;
  a2[1] = v2 - 2;
  return 1;
}

unint64_t llvm::ms_demangle::Demangler::demangleFunctionParameterList(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v5 = a2[1];
  if (v5 && **a2 == 88)
  {
    result = 0;
    v7 = *a2 + 1;
    v8 = (v5 - 1);
LABEL_4:
    *a2 = v7;
    a2[1] = v8;
    return result;
  }

  v9 = 0x1030C40A9292222;
  v11 = (a1 + 16);
  v10 = *(a1 + 16);
  v12 = 0x1000C8077774924;
  v13 = ((v10[1] + *v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13 - *v10 + 16;
  v10[1] = v14;
  if (v14 > v10[2])
  {
    operator new();
  }

  *v13 = 0;
  v13[1] = 0;
  v33 = v13;
  if (*(a1 + 8))
  {
    return 0;
  }

  v15 = 0;
  v32 = a1 + 24;
  v16 = &v33;
  v17 = MEMORY[0x277D85DE0];
  while (1)
  {
    v18 = a2[1];
    if (!v18)
    {
      ++v15;
LABEL_22:
      v26 = *v11;
      v27 = ((*(*v11 + 8) + **v11 + 7) & 0xFFFFFFFFFFFFFFF8);
      v28 = v27 - **v11 + 16;
      *(v26 + 8) = v28;
      if (v28 > *(v26 + 16))
      {
        operator new();
      }

      *v27 = 0;
      v27[1] = 0;
      *v16 = v27;
      result = llvm::ms_demangle::Demangler::demangleType(a1, a2, 0);
      if (!result)
      {
        return result;
      }

      if (*(a1 + 8))
      {
        return 0;
      }

      v29 = result;
      v24 = *v16;
      **v16 = v29;
      v30 = *(a1 + 104);
      if (v30 <= 9 && &v18[-a2[1]] >= 2)
      {
        *(a1 + 104) = v30 + 1;
        *(v32 + 8 * v30) = v29;
      }

      goto LABEL_12;
    }

    v19 = **a2;
    if (v19 == 64 || v19 == 90)
    {
      break;
    }

    ++v15;
    if ((v19 & 0x80) != 0 || (*(v17 + 4 * v19 + 60) & 0x400) == 0)
    {
      goto LABEL_22;
    }

    v20 = v12;
    v21 = v9;
    v22 = v19 - 48;
    if ((v19 - 48) >= *(a1 + 104))
    {
      result = 0;
      *(a1 + 8) = 1;
      return result;
    }

    ++*a2;
    a2[1] = (v18 - 1);
    v23 = *v11;
    v24 = ((*(*v11 + 8) + **v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    v25 = v24 - **v11 + 16;
    *(v23 + 8) = v25;
    if (v25 > *(v23 + 16))
    {
      operator new();
    }

    *v24 = 0;
    v24[1] = 0;
    *v16 = v24;
    *v24 = *(v32 + 8 * v22);
    v9 = v21;
    v12 = v20;
    v17 = MEMORY[0x277D85DE0];
    if (*(a1 + 8))
    {
      return 0;
    }

LABEL_12:
    v16 = v24 + 1;
  }

  result = nodeListToNodeArray((a1 + 16), v33, v15);
  v7 = *a2 + 1;
  v8 = a2[1] - 1;
  if (**a2 == 64)
  {
    goto LABEL_4;
  }

  *a2 = v7;
  a2[1] = v8;
  *a3 = 1;
  return result;
}

unint64_t llvm::ms_demangle::ArenaAllocator::alloc<llvm::ms_demangle::PrimitiveTypeNode,llvm::ms_demangle::PrimitiveKind>(uint64_t *a1, int *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = v3 + **a1;
  result = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v3 - v4 + result + 24;
  *(v2 + 8) = v6;
  if (v6 > *(v2 + 16))
  {
    operator new();
  }

  v7 = *a2;
  *(result + 8) = 2;
  *(result + 12) = 0;
  *result = &unk_2868A7018;
  *(result + 16) = v7;
  return result;
}

uint64_t llvm::ms_demangle::Demangler::dumpBackReferences(llvm::ms_demangle::Demangler *this)
{
  printf("%d function parameter backreferences\n", *(this + 13));
  v7 = 0;
  *v6 = 0u;
  v8 = -1;
  v9 = 1;
  if (*(this + 13))
  {
    v2 = 0;
    do
    {
      v6[1] = 0;
      (*(**(this + v2 + 3) + 16))(*(this + v2 + 3), v6, 0);
      printf("  [%d] - %.*s\n", v2++, SLODWORD(v6[1]), v6[0]);
    }

    while (v2 < *(this + 13));
    free(v6[0]);
    if (*(this + 13))
    {
      goto LABEL_5;
    }
  }

  else
  {
    free(0);
    if (*(this + 13))
    {
LABEL_5:
      putchar(10);
    }
  }

  result = printf("%d name backreferences\n", *(this + 24));
  if (*(this + 24))
  {
    v4 = 0;
    do
    {
      result = printf("  [%d] - %.*s\n", v4, *(*(this + v4 + 14) + 32), *(*(this + v4 + 14) + 24));
      ++v4;
      v5 = *(this + 24);
    }

    while (v4 < v5);
    if (v5)
    {
      return putchar(10);
    }
  }

  return result;
}