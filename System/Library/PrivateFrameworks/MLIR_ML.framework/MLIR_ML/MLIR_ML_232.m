uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseDecltype(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2)
  {
    return 0;
  }

  if (*v1 != 68)
  {
    return 0;
  }

  *a1 = v1 + 1;
  if (v1 + 1 == v2 || (v1[1] | 0x20) != 0x74)
  {
    return 0;
  }

  *a1 = v1 + 2;
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (*a1 == *(a1 + 8) || *v5 != 69)
  {
    return 0;
  }

  *a1 = v5 + 1;
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = result;
    v9 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v9)
    {
      std::terminate();
    }

    v6 = v9;
    v7 = 0;
    *v9 = *(a1 + 4904);
    v9[1] = 0;
    *(a1 + 4904) = v9;
    result = v8;
  }

  v6[1] = v7 + 64;
  v10 = v6 + v7;
  v10[24] = 60;
  *(v10 + 25) = *(v10 + 25) & 0xF000 | 0x540;
  *(v10 + 2) = &unk_2868A4E28;
  *(v10 + 4) = "decltype";
  *(v10 + 5) = 8;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0;
  *(v10 + 6) = result;
  return (v10 + 16);
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSubstitution(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  if (*v2 != 83)
  {
    return 0;
  }

  v3 = v2 + 1;
  *a1 = v2 + 1;
  if (v1 == v2 + 1)
  {
    return 0;
  }

  v4 = *v3;
  if (*v3 < 97)
  {
    if (v4 == 95)
    {
      *a1 = v2 + 2;
      v7 = a1[37];
      if (v7 != a1[38])
      {
        return *v7;
      }
    }

    else if (v4 >= 48)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v4 > 0x7A)
  {
LABEL_16:
    if (v4 < 0x3A || v4 - 65 <= 0x19)
    {
      v9 = 0;
      while (*v3 >= 48)
      {
        if (*v3 < 0x3Au)
        {
          v10 = -48;
        }

        else
        {
          if (*v3 - 65 > 0x19)
          {
            break;
          }

          v10 = -55;
        }

        v9 = *v3++ + 36 * v9 + v10;
        *a1 = v3;
        if (v3 == v1)
        {
          break;
        }
      }

      if (v3 != v1 && *v3 == 95)
      {
        *a1 = v3 + 1;
        v11 = a1[37];
        if (v9 + 1 < ((a1[38] - v11) >> 3))
        {
          return *(v11 + 8 * (v9 + 1));
        }
      }
    }

    return 0;
  }

  if (*v3 > 0x68u)
  {
    switch(v4)
    {
      case 'i':
        v5 = 3;
        break;
      case 'o':
        v5 = 4;
        break;
      case 's':
        v5 = 2;
        break;
      default:
        return 0;
    }
  }

  else
  {
    switch(v4)
    {
      case 'a':
        v5 = 0;
        break;
      case 'b':
        v5 = 1;
        break;
      case 'd':
        v5 = 5;
        break;
      default:
        return 0;
    }
  }

  *a1 = v2 + 2;
  v12 = a1[613];
  v13 = *(v12 + 1);
  if ((v13 - 4064) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v14 = a1;
    v15 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v15)
    {
      std::terminate();
    }

    v12 = v15;
    v13 = 0;
    a1 = v14;
    *v12 = v14[613];
    *(v12 + 1) = 0;
    v14[613] = v12;
  }

  v16 = v13 + 16;
  *(v12 + 1) = v16;
  v17 = &v12[v16];
  v17[8] = 48;
  *(v17 + 9) = *&v12[v16 + 9] & 0xF000 | 0x540;
  *(v17 + 3) = v5;
  *v17 = &unk_2868A5F80;
  v18 = a1;
  if (v19 == v17)
  {
    return v17;
  }

  v20 = v19;
  v21 = v18;
  v22 = v18[38];
  if (v22 == v18[39])
  {
    v23 = v18[37];
    v24 = v22 - v23;
    if (v23 == (v18 + 40))
    {
      v25 = malloc_type_malloc(2 * (v22 - v23), 0x2004093837F09uLL);
      if (!v25)
      {
        goto LABEL_56;
      }

      v21 = v18;
      v26 = v18[37];
      v27 = v18[38];
      if (v27 != v26)
      {
        v28 = v25;
        memmove(v25, v26, v27 - v26);
        v25 = v28;
        v21 = v18;
      }

      v21[37] = v25;
    }

    else
    {
      v25 = malloc_type_realloc(v23, 2 * (v22 - v23), 0x2004093837F09uLL);
      v21 = v18;
      v18[37] = v25;
      if (!v25)
      {
LABEL_56:
        abort();
      }
    }

    v22 = &v25[v24];
    v21[39] = &v25[8 * (v24 >> 2)];
  }

  *v22 = v20;
  v21[38] = v22 + 8;
  return v20;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnqualifiedName(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v54 = a4;
  v55 = a3;
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (v8 == v9)
  {
    v10 = 1;
    goto LABEL_31;
  }

  if (*v8 == 70)
  {
    v10 = 0;
    *a1 = ++v8;
    if (v8 == v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_8:
    v10 = 1;
    if (v8 == v9)
    {
      goto LABEL_11;
    }
  }

  if (*v8 == 76)
  {
    *a1 = ++v8;
  }

LABEL_11:
  if (v9 != v8 && *v8 >= 49)
  {
    v11 = *v8;
    if (v11 <= 0x39)
    {
      goto LABEL_32;
    }

    if (v11 == 85)
    {
      goto LABEL_32;
    }
  }

  if ((v9 - v8) >= 2 && *v8 == 17220)
  {
    *a1 = v8 + 2;
    v35 = *(a1 + 16);
    v34 = *(a1 + 24);
    if (!result)
    {
      return result;
    }

    v36 = result;
    v37 = (v34 - v35) >> 3;
    while (1)
    {
      v38 = *(a1 + 24);
      if (v38 == *(a1 + 32))
      {
        v39 = *(a1 + 16);
        v40 = v38 - v39;
        if (v39 == (a1 + 40))
        {
          v41 = malloc_type_malloc(2 * (v38 - v39), 0x2004093837F09uLL);
          if (!v41)
          {
LABEL_91:
            abort();
          }

          v42 = *(a1 + 16);
          v43 = *(a1 + 24);
          if (v43 != v42)
          {
            v44 = v41;
            memmove(v41, v42, v43 - v42);
            v41 = v44;
          }

          *(a1 + 16) = v41;
        }

        else
        {
          v41 = malloc_type_realloc(v39, 2 * (v38 - v39), 0x2004093837F09uLL);
          *(a1 + 16) = v41;
          if (!v41)
          {
            goto LABEL_91;
          }
        }

        v38 = &v41[v40];
        *(a1 + 32) = &v41[8 * (v40 >> 2)];
      }

      *v38 = v36;
      *(a1 + 24) = v38 + 8;
      v45 = *a1;
      if (*a1 != *(a1 + 8) && *v45 == 69)
      {
        break;
      }

      result = 0;
      if (!v36)
      {
        return result;
      }
    }

    *a1 = v45 + 1;
    v48 = v47;
    v49 = *(a1 + 4904);
    v50 = v49[1];
    if ((v50 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v49 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v49)
      {
        goto LABEL_92;
      }

      v50 = 0;
      *v49 = *(a1 + 4904);
      v49[1] = 0;
      *(a1 + 4904) = v49;
    }

    v49[1] = v50 + 32;
    v51 = v49 + v50;
    v16 = v51 + 16;
    v51[24] = 53;
    *(v51 + 25) = *(v51 + 25) & 0xF000 | 0x540;
    *(v51 + 2) = &unk_2868A60E8;
    *(v51 + 4) = v46;
    *(v51 + 5) = v48;
    goto LABEL_33;
  }

  if (v9 == v8 || *v8 - 67 > 1)
  {
LABEL_31:
    goto LABEL_32;
  }

  result = 0;
  if (!v4 || v54)
  {
    return result;
  }

  if (v4[8] == 48)
  {
    v57 = v4;
    v55 = v4;
    v8 = *a1;
    v9 = *(a1 + 8);
  }

  if (v8 == v9)
  {
    return 0;
  }

  v13 = *v8;
  if (v13 == 67)
  {
    v14 = v8 + 1;
    *a1 = v8 + 1;
    if (v8 + 1 == v9 || *v14 != 73)
    {
      v15 = 0;
    }

    else
    {
      v14 = v8 + 2;
      *a1 = v8 + 2;
      v15 = 1;
    }

    if (v9 == v14)
    {
      return 0;
    }

    v53 = *v14;
    if ((v53 - 49) > 4)
    {
      return 0;
    }

    LODWORD(v57) = v53 - 48;
    *a1 = v14 + 1;
    if (a2)
    {
      *a2 = 1;
    }

    {
      v16 = 0;
      goto LABEL_33;
    }

    v56 = 0;
  }

  else
  {
    result = 0;
    if ((v9 - v8) < 2)
    {
      return result;
    }

    if (v13 != 68)
    {
      return result;
    }

    result = 0;
    v52 = v8[1];
    if (v52 > 0x35 || ((1 << v52) & 0x37000000000000) == 0)
    {
      return result;
    }

    LODWORD(v57) = v52 - 48;
    *a1 = v8 + 2;
    if (a2)
    {
      *a2 = 1;
    }

    v56 = 1;
  }

LABEL_32:
  v16 = v12;
LABEL_33:
  if (v16 && (v17 = v54) != 0)
  {
    v18 = *(a1 + 4904);
    v19 = v18[1];
    if ((v19 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v18 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v18)
      {
        goto LABEL_92;
      }

      v19 = 0;
      *v18 = *(a1 + 4904);
      v18[1] = 0;
      *(a1 + 4904) = v18;
    }

    v18[1] = v19 + 32;
    v20 = v18 + v19;
    v20[24] = 28;
    *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
    *(v20 + 2) = &unk_2868A61D8;
    *(v20 + 4) = v17;
    *(v20 + 5) = v16;
    v16 = v20 + 16;
  }

  else if (!v16)
  {
    return 0;
  }

  if (result)
  {
    v21 = v10;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    v29 = *(a1 + 4904);
    v30 = v29[1];
    if ((v30 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v31 = result;
      v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v32)
      {
        goto LABEL_92;
      }

      v29 = v32;
      v30 = 0;
      *v32 = *(a1 + 4904);
      v32[1] = 0;
      *(a1 + 4904) = v32;
      result = v31;
    }

    v29[1] = v30 + 32;
    v33 = v29 + v30;
    v27 = v33 + 16;
    v33[24] = 25;
    *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
    v28 = &unk_2868A6250;
    goto LABEL_54;
  }

  if (result && v4)
  {
    v22 = *(a1 + 4904);
    v23 = v22[1];
    if ((v23 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_49:
      v22[1] = v23 + 32;
      v26 = v22 + v23;
      v27 = v26 + 16;
      v26[24] = 24;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      v28 = &unk_2868A62C8;
LABEL_54:
      *(v27 + 2) = v4;
      *(v27 + 3) = result;
      result = v27;
      *v27 = v28;
      return result;
    }

    v24 = result;
    v25 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v25)
    {
      v22 = v25;
      v23 = 0;
      *v25 = *(a1 + 4904);
      v25[1] = 0;
      *(a1 + 4904) = v25;
      result = v24;
      goto LABEL_49;
    }

LABEL_92:
    std::terminate();
  }

  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NameType,char const(&)[5]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v7 = v4 + v5 + 16;
  v8 = strlen(__s);
  v6[24] = 8;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4798;
  *(v6 + 4) = __s;
  *(v6 + 5) = v8;
  return v7;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = *(v3 + 9);
  if ((v4 & 0xC0) == 0x80)
  {
    result = (**v3)(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 < 0x40;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::hasArraySlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = v3[10] & 3;
  if (v4 == 2)
  {
    result = (*(*v3 + 8))(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 == 0;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::hasFunctionSlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v3 = *(a1 + 24);
  v4 = (*(v3 + 9) >> 10) & 3;
  if (v4 == 2)
  {
    result = (*(*v3 + 16))(*(a1 + 24));
    *(a1 + 32) = v1;
  }

  else
  {
    *(a1 + 32) = v1;
    return v4 == 0;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::getSyntaxNode(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 24))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::printLeft(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 32))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ForwardTemplateReference::printRight(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    *(result + 32) = 1;
    v2 = result;
    result = (*(**(result + 24) + 40))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseExpr(uint64_t a1, size_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  if (v4 < 2)
  {
    return;
  }

  v6 = *v2;
  v7 = v6 != 29543;
  if (v6 == 29543)
  {
    *a1 = ++v2;
    v4 = v3 - v2;
    v8 = 1;
    v170 = 1;
    if ((v3 - v2) < 2)
    {
      return;
    }
  }

  else
  {
    v8 = 0;
    v170 = 0;
  }

  v9 = 0;
  v10 = v2 + 1;
  v11 = *v2;
  v12 = 61;
  do
  {
    v13 = (v9 + v12) >> 1;
    if (*v14 < v11)
    {
      v9 = v13 + 1;
    }

    else if (*v14 == v11)
    {
      if (v14[1] >= *v10)
      {
        v12 = (v9 + v12) >> 1;
      }

      else
      {
        v9 = v13 + 1;
      }
    }

    else
    {
      v12 = (v9 + v12) >> 1;
    }
  }

  while (v12 != v9);
  if (*v15 == v11 && v15[1] == *v10)
  {
    v16 = v2 + 1;
    *a1 = v2 + 1;
    v17 = v15[2];
    v18 = *(v15 + 1);
    v19 = strlen(v18);
    v20 = v19;
    if (v17 > 0xA)
    {
      v21 = *(v15 + 1);
    }

    else
    {
      v21 = (v18 + 8);
      if (v19 == 8)
      {
        v20 = 0;
      }

      else
      {
        v22 = *v21;
        if (v22 == 32)
        {
          v20 = v19 - 9;
        }

        else
        {
          v20 = v19 - 8;
        }

        if (v22 == 32)
        {
          v21 = (v18 + 9);
        }
      }
    }

    v169.n128_u64[0] = v21;
    v169.n128_u64[1] = v20;
    switch(v17)
    {
      case 1u:
        if (v16 == v3 || *v16 != 95)
        {
          if (v173.n128_u64[0])
          {
            LODWORD(v168) = v15[3] >> 1;
          }
        }

        else
        {
          *a1 = v2 + 3;
          v55 = v15[3] >> 1;
          v173.n128_u64[0] = v21;
          v173.n128_u64[1] = v20;
          LODWORD(v171) = v55;
          if (v168)
          {
          }
        }

        return;
      case 2u:
        v56 = v15[3] >> 1;
        v173.n128_u64[0] = v21;
        v173.n128_u64[1] = v20;
        v172 = v56;
        if (v168)
        {
          if (v171)
          {
          }
        }

        return;
      case 3u:
        if (v173.n128_u64[0])
        {
          if (v168)
          {
            LODWORD(v171) = v15[3] >> 1;
          }
        }

        return;
      case 4u:
        if (v173.n128_u64[0])
        {
          if (v168)
          {
            LODWORD(v171) = v15[3] >> 1;
          }
        }

        return;
      case 5u:
        v63 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        v64 = (a1 + 40);
        while (2)
        {
          if (v16 != v3 && *v16 == 95)
          {
            *a1 = v16 + 1;
            v173.n128_u64[1] = v113;
            if (!v171)
            {
              return;
            }

            v116 = *(a1 + 16);
            v115 = *(a1 + 24);
            if (v114)
            {
              while (1)
              {
                v117 = *a1;
                if (*a1 != *(a1 + 8) && *v117 == 69)
                {
                  break;
                }

                if (!v122)
                {
                  return;
                }

                v121 = *(a1 + 24);
                if (v121 == *(a1 + 32))
                {
                  v123 = v122;
                  v124 = *(a1 + 16);
                  v125 = v121 - v124;
                  if (v124 == v64)
                  {
                    v120 = malloc_type_malloc(2 * (v121 - v124), 0x2004093837F09uLL);
                    if (!v120)
                    {
                      goto LABEL_299;
                    }

                    v126 = *(a1 + 16);
                    v127 = *(a1 + 24);
                    if (v127 != v126)
                    {
                      v128 = v120;
                      memmove(v120, v126, v127 - v126);
                      v120 = v128;
                    }

                    *(a1 + 16) = v120;
                  }

                  else
                  {
                    v120 = malloc_type_realloc(v124, 2 * (v121 - v124), 0x2004093837F09uLL);
                    *(a1 + 16) = v120;
                    if (!v120)
                    {
                      goto LABEL_299;
                    }
                  }

                  v121 = &v120[v125];
                  *(a1 + 32) = &v120[8 * (v125 >> 2)];
                  v122 = v123;
                }

                *v121 = v122;
                *(a1 + 24) = v121 + 1;
              }
            }

            else
            {
              v117 = *a1;
              if (*a1 == *(a1 + 8) || *v117 != 69)
              {
                return;
              }
            }

            *a1 = v117 + 1;
            *(&v168 + 1) = v118;
            v119 = v15[3];
            v167 = v119 & 1;
            v172 = v119 >> 1;
            return;
          }

          if (!v67)
          {
            return;
          }

          v66 = *(a1 + 24);
          if (v66 != *(a1 + 32))
          {
            goto LABEL_124;
          }

          v68 = v67;
          v69 = *(a1 + 16);
          v70 = v66 - v69;
          if (v69 == v64)
          {
            v65 = malloc_type_malloc(2 * (v66 - v69), 0x2004093837F09uLL);
            if (v65)
            {
              v71 = *(a1 + 16);
              v72 = *(a1 + 24);
              if (v72 != v71)
              {
                v73 = v65;
                memmove(v65, v71, v72 - v71);
                v65 = v73;
              }

              *(a1 + 16) = v65;
              goto LABEL_123;
            }
          }

          else
          {
            v65 = malloc_type_realloc(v69, 2 * (v66 - v69), 0x2004093837F09uLL);
            *(a1 + 16) = v65;
            if (v65)
            {
LABEL_123:
              v66 = &v65[v70];
              *(a1 + 32) = &v65[8 * (v70 >> 2)];
              v67 = v68;
LABEL_124:
              *v66 = v67;
              *(a1 + 24) = v66 + 1;
              v16 = *a1;
              v3 = *(a1 + 8);
              continue;
            }
          }

          goto LABEL_299;
        }

      case 6u:
        if (!v57)
        {
          return;
        }

        v58 = v57;
        v59 = v15[3];
        v60 = *(a1 + 4904);
        v61 = v60[1];
        if ((v61 - 4048) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_117;
        }

        v60 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v60)
        {
          goto LABEL_300;
        }

        v61 = 0;
        *v60 = *(a1 + 4904);
        v60[1] = 0;
        *(a1 + 4904) = v60;
LABEL_117:
        v60[1] = v61 + 32;
        v62 = v60 + v61;
        v62[24] = 65;
        *(v62 + 25) = *(v62 + 25) & 0xF000 | (v59 >> 1) | 0x540;
        *(v62 + 2) = &unk_2868A4BD0;
        *(v62 + 4) = v58;
        v62[40] = v8;
        v62[41] = v59 & 1;
        return;
      case 7u:
        if (!v168)
        {
          return;
        }

        v74 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        while (2)
        {
          v78 = *a1;
          if (*a1 == *(a1 + 8) || *v78 != 69)
          {
            if (!v77)
            {
              return;
            }

            v76 = *(a1 + 24);
            if (v76 != *(a1 + 32))
            {
LABEL_142:
              *v76 = v77;
              *(a1 + 24) = v76 + 1;
              continue;
            }

            v79 = v77;
            v80 = *(a1 + 16);
            v81 = v76 - v80;
            if (v80 == (a1 + 40))
            {
              v75 = malloc_type_malloc(2 * (v76 - v80), 0x2004093837F09uLL);
              if (v75)
              {
                v82 = *(a1 + 16);
                v83 = *(a1 + 24);
                if (v83 != v82)
                {
                  v84 = v75;
                  memmove(v75, v82, v83 - v82);
                  v75 = v84;
                }

                *(a1 + 16) = v75;
                goto LABEL_141;
              }
            }

            else
            {
              v75 = malloc_type_realloc(v80, 2 * (v76 - v80), 0x2004093837F09uLL);
              *(a1 + 16) = v75;
              if (v75)
              {
LABEL_141:
                v76 = &v75[v81];
                *(a1 + 32) = &v75[8 * (v81 >> 2)];
                v77 = v79;
                goto LABEL_142;
              }
            }

LABEL_299:
            abort();
          }

          break;
        }

        *a1 = v78 + 1;
        v173.n128_u64[1] = v130;
        LODWORD(v171) = v15[3] >> 1;
        v131 = &v168;
        goto LABEL_231;
      case 8u:
        v49 = *(a1 + 776);
        *(a1 + 776) = 0;
        *&v168 = v50;
        *(a1 + 776) = v49;
        if (!v50)
        {
          return;
        }

        v51 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        v52 = *a1;
        v53 = *(a1 + 8);
        if (*a1 == v53)
        {
          goto LABEL_242;
        }

        v54 = *v52;
        if (v54 == 95)
        {
          v52 = (v52 + 1);
          *a1 = v52;
          while (v52 == v53 || *v52 != 69)
          {
            if (!v87)
            {
              return;
            }

            v86 = *(a1 + 24);
            if (v86 == *(a1 + 32))
            {
              v88 = v87;
              v89 = *(a1 + 16);
              v90 = v86 - v89;
              if (v89 == (a1 + 40))
              {
                v85 = malloc_type_malloc(2 * (v86 - v89), 0x2004093837F09uLL);
                if (!v85)
                {
                  goto LABEL_299;
                }

                v91 = *(a1 + 16);
                v92 = *(a1 + 24);
                if (v92 != v91)
                {
                  v93 = v85;
                  memmove(v85, v91, v92 - v91);
                  v85 = v93;
                }

                *(a1 + 16) = v85;
              }

              else
              {
                v85 = malloc_type_realloc(v89, 2 * (v86 - v89), 0x2004093837F09uLL);
                *(a1 + 16) = v85;
                if (!v85)
                {
                  goto LABEL_299;
                }
              }

              v86 = &v85[v90];
              *(a1 + 32) = &v85[8 * (v90 >> 2)];
              v87 = v88;
            }

            *v86 = v87;
            *(a1 + 24) = v86 + 1;
            v52 = *a1;
            v53 = *(a1 + 8);
          }
        }

        else if (v54 != 69)
        {
LABEL_242:
          if (!v135)
          {
            return;
          }

          v136 = *(a1 + 24);
          if (v136 == *(a1 + 32))
          {
            v137 = v135;
            v138 = *(a1 + 16);
            v139 = v136 - v138;
            if (v138 == (a1 + 40))
            {
              v140 = malloc_type_malloc(2 * (v136 - v138), 0x2004093837F09uLL);
              if (!v140)
              {
                goto LABEL_299;
              }

              v149 = *(a1 + 16);
              v150 = *(a1 + 24);
              if (v150 != v149)
              {
                v151 = v140;
                memmove(v140, v149, v150 - v149);
                v140 = v151;
              }

              *(a1 + 16) = v140;
            }

            else
            {
              v140 = malloc_type_realloc(v138, 2 * (v136 - v138), 0x2004093837F09uLL);
              *(a1 + 16) = v140;
              if (!v140)
              {
                goto LABEL_299;
              }
            }

            v136 = &v140[v139];
            *(a1 + 32) = &v140[8 * (v139 >> 2)];
            v135 = v137;
          }

          *v136 = v135;
          *(a1 + 24) = v136 + 1;
          v173.n128_u64[1] = v134;
LABEL_269:
          if (v134 != 1)
          {
            return;
          }

LABEL_270:
          LODWORD(v171) = v15[3] >> 1;
          return;
        }

        *a1 = v52 + 1;
        v173.n128_u64[1] = v134;
        if (v54 == 95)
        {
          goto LABEL_270;
        }

        goto LABEL_269;
      case 9u:
        if (v173.n128_u64[0])
        {
          if (v168)
          {
            if (v171)
            {
              v172 = v15[3] >> 1;
            }
          }
        }

        return;
      case 0xAu:
        return;
      case 0xBu:
        if (v173.n128_u64[0])
        {
          if (v168)
          {
            LODWORD(v171) = v15[3] >> 1;
          }
        }

        return;
      case 0xCu:
        v47 = v15[3];
        if (v47)
        {
        }

        else
        {
        }

        v95 = v48;
        if (!v48)
        {
          return;
        }

        v96 = *(a1 + 4904);
        v97 = v96[1];
        if ((v97 - 4016) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_178;
        }

        v96 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v96)
        {
          goto LABEL_300;
        }

        v97 = 0;
        *v96 = *(a1 + 4904);
        v96[1] = 0;
        *(a1 + 4904) = v96;
LABEL_178:
        v96[1] = v97 + 64;
        v98 = v96 + v97;
        v98[24] = 60;
        *(v98 + 25) = *(v98 + 25) & 0xF000 | (v47 >> 1) | 0x540;
        *(v98 + 2) = &unk_2868A4E28;
        *(v98 + 4) = v21;
        *(v98 + 5) = v20;
        *(v98 + 7) = 0;
        *(v98 + 8) = 0;
        *(v98 + 6) = v95;
        return;
      default:
        v37 = v15[3];
        if (!v38)
        {
          return;
        }

        v39 = v38;
        v40 = *(a1 + 4904);
        v41 = v40[1];
        if ((v41 - 4032) > 0xFFFFFFFFFFFFF00FLL)
        {
          goto LABEL_72;
        }

        v40 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v40)
        {
          goto LABEL_300;
        }

        v41 = 0;
        *v40 = *(a1 + 4904);
        v40[1] = 0;
        *(a1 + 4904) = v40;
LABEL_72:
        v40[1] = v41 + 48;
        v42 = v40 + v41;
        v42[24] = 66;
        *(v42 + 25) = *(v42 + 25) & 0xF000 | (v37 >> 1) | 0x540;
        *(v42 + 2) = &unk_2868A4978;
        *(v42 + 4) = v21;
        *(v42 + 5) = v20;
        *(v42 + 6) = v39;
        return;
    }
  }

  switch(v11)
  {
    case 'f':
      v23 = *v10;
      if (v23 != 112)
      {
        if (v23 != 76)
        {
          goto LABEL_78;
        }

        if (v4 == 2)
        {
          v24 = 0;
        }

        else
        {
          v24 = *(v2 + 2);
          if (v24 < 0)
          {
            goto LABEL_78;
          }
        }

        if ((*(MEMORY[0x277D85DE0] + 4 * v24 + 60) & 0x400) == 0)
        {
LABEL_78:
          if (v2 != v3)
          {
            *a1 = v10;
            if (v3 != v10)
            {
              v43 = *v10;
              if (v43 > 107)
              {
                if (v43 == 108)
                {
                  v45 = 0;
                  v44 = 1;
                }

                else
                {
                  if (v43 != 114)
                  {
                    return;
                  }

                  v44 = 0;
                  v45 = 0;
                }
              }

              else if (v43 == 76)
              {
                v44 = 1;
                v45 = 1;
              }

              else
              {
                if (v43 != 82)
                {
                  return;
                }

                v44 = 0;
                v45 = 1;
              }

              *a1 = v2 + 1;
              if ((v3 - (v2 + 1)) >= 2)
              {
                v102 = 0;
                v103 = *(v2 + 2);
                v104 = 61;
                do
                {
                  v105 = (v102 + v104) >> 1;
                  if (*v106 < v103)
                  {
                    v102 = v105 + 1;
                  }

                  else if (*v106 == v103)
                  {
                    if (v106[1] >= *(v2 + 3))
                    {
                      v104 = (v102 + v104) >> 1;
                    }

                    else
                    {
                      v102 = v105 + 1;
                    }
                  }

                  else
                  {
                    v104 = (v102 + v104) >> 1;
                  }
                }

                while (v104 != v102);
                if (*v107 == v103 && v107[1] == *(v2 + 3))
                {
                  *a1 = v2 + 2;
                  v108 = v107[2];
                  if (v108 == 2 || v108 == 4 && *(*(v107 + 1) + strlen(*(v107 + 1)) - 1) == 42)
                  {
                    if (v109)
                    {
                      v110 = v109;
                      if (v45)
                      {
                        if (!v111)
                        {
                          return;
                        }

                        if (v44)
                        {
                          v112 = v110;
                        }

                        else
                        {
                          v112 = v111;
                        }

                        if (v44)
                        {
                          v110 = v111;
                        }
                      }

                      else
                      {
                        v112 = 0;
                      }

                      v143 = *(v107 + 1);
                      v144 = strlen(v143);
                      v145 = v143 + 8;
                      if (v144 == 8)
                      {
                        v148 = 0;
                      }

                      else
                      {
                        v146 = *v145;
                        v147 = v143 + 9;
                        if (v146 == 32)
                        {
                          v148 = v144 - 9;
                        }

                        else
                        {
                          v148 = v144 - 8;
                        }

                        if (v146 == 32)
                        {
                          v145 = v147;
                        }
                      }

                      v160 = *(a1 + 4904);
                      v161 = v160[1];
                      if ((v161 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
                      {
                        v160 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
                        if (!v160)
                        {
LABEL_300:
                          std::terminate();
                        }

                        v161 = 0;
                        *v160 = *(a1 + 4904);
                        v160[1] = 0;
                        *(a1 + 4904) = v160;
                      }

                      v160[1] = v161 + 64;
                      v162 = v160 + v161;
                      v162[24] = 71;
                      *(v162 + 25) = *(v162 + 25) & 0xF000 | 0x540;
                      *(v162 + 2) = &unk_2868A5698;
                      *(v162 + 4) = v110;
                      *(v162 + 5) = v112;
                      *(v162 + 6) = v145;
                      *(v162 + 7) = v148;
                      v162[64] = v44;
                    }
                  }
                }
              }
            }
          }

          return;
        }
      }

      return;
    case 'T':

      return;
    case 'L':

      return;
  }

  if (*v2 == 27753)
  {
    v25 = v2 + 1;
    *a1 = v2 + 1;
    v26 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    v27 = (a1 + 40);
    while (v25 == v3 || *v25 != 69)
    {
      if (!v30)
      {
        return;
      }

      v29 = *(a1 + 24);
      if (v29 == *(a1 + 32))
      {
        v31 = v30;
        v32 = *(a1 + 16);
        v33 = v29 - v32;
        if (v32 == v27)
        {
          v28 = malloc_type_malloc(2 * (v29 - v32), 0x2004093837F09uLL);
          if (!v28)
          {
            goto LABEL_299;
          }

          v34 = *(a1 + 16);
          v35 = *(a1 + 24);
          if (v35 != v34)
          {
            v36 = v28;
            memmove(v28, v34, v35 - v34);
            v28 = v36;
          }

          *(a1 + 16) = v28;
        }

        else
        {
          v28 = malloc_type_realloc(v32, 2 * (v29 - v32), 0x2004093837F09uLL);
          *(a1 + 16) = v28;
          if (!v28)
          {
            goto LABEL_299;
          }
        }

        v29 = &v28[v33];
        *(a1 + 32) = &v28[8 * (v33 >> 2)];
        v30 = v31;
      }

      *v29 = v30;
      *(a1 + 24) = v29 + 8;
      v25 = *a1;
      v3 = *(a1 + 8);
    }

    *a1 = v25 + 1;
    v173.n128_u64[1] = v46;
    return;
  }

  if ((v3 - v2) >= 2)
  {
    if (*v2 == 25453)
    {
      *a1 = v2 + 1;

      return;
    }

    if (*v2 == 30830)
    {
      *a1 = v2 + 1;
      if (v173.n128_u64[0])
      {
        v169.n128_u32[0] = 2;
      }

      return;
    }
  }

  if (v3 != v2 && (v3 - v2) >= 2 && v11 == 114 && (*v10 | 0x20) == 0x71)
  {

    return;
  }

  {

    return;
  }

  {
    if (v173.n128_u64[0])
    {
    }

    return;
  }

  {
    if (*(a1 + 8) != *a1 && **a1 == 84)
    {
      if (v173.n128_u64[0])
      {
      }

      return;
    }

    v173.n128_u64[0] = v129;
    if (!v129)
    {
      return;
    }

LABEL_252:
    return;
  }

  {
    {
      if (v169.n128_u64[0])
      {
        v132 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        v133 = *a1;
        if (*a1 == *(a1 + 8))
        {
          goto LABEL_236;
        }

LABEL_235:
        if (*v133 == 69)
        {
          *a1 = v133 + 1;
          v173.n128_u64[1] = v159;
        }

        else
        {
LABEL_236:
          while (1)
          {
            if (!v173.n128_u64[0])
            {
              break;
            }

            llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 16), &v173);
            v133 = *a1;
            if (*a1 != *(a1 + 8))
            {
              goto LABEL_235;
            }
          }
        }
      }

      return;
    }

    {

      return;
    }

    {
      if (v173.n128_u64[0])
      {
      }

      return;
    }

    v152 = *a1;
    if (*a1 == *(a1 + 8) || *v152 != 117)
    {

      return;
    }

    *a1 = v152 + 1;
    v169.n128_u64[0] = v153;
    if (!v153)
    {
      return;
    }

    *&v168 = 0;
    v154 = (*(*v153 + 56))(v153);
    if (v155 == 8 && *v154 == 0x666F646975755F5FLL)
    {
      v164 = *a1;
      if (*a1 != *(a1 + 8))
      {
        v165 = *v164;
        if (v165 == 122)
        {
          *a1 = v164 + 1;
          goto LABEL_297;
        }

        if (v165 == 116)
        {
          *a1 = v164 + 1;
LABEL_297:
          *&v168 = v166;
          if (!v166)
          {
            return;
          }

          v156 = *(a1 + 24) - *(a1 + 16);
          llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 16), &v168);
          goto LABEL_291;
        }
      }
    }

    v156 = *(a1 + 24) - *(a1 + 16);
    v157 = *a1;
    if (*a1 == *(a1 + 8))
    {
      goto LABEL_278;
    }

LABEL_277:
    if (*v157 != 69)
    {
LABEL_278:
      while (1)
      {
        v173.n128_u64[0] = v158;
        if (!v158)
        {
          return;
        }

        llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 16), &v173);
        v157 = *a1;
        if (*a1 != *(a1 + 8))
        {
          goto LABEL_277;
        }
      }
    }

    *a1 = v157 + 1;
LABEL_291:
    v173.n128_u64[1] = v163;
    LODWORD(v171) = 1;
    v131 = &v169;
LABEL_231:
    return;
  }

  v99 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v100 = *a1;
  if (*a1 == *(a1 + 8))
  {
    goto LABEL_182;
  }

LABEL_181:
  if (*v100 == 69)
  {
    *a1 = v100 + 1;
    v173.n128_u64[1] = v141;
    v173.n128_u64[0] = v142;
    goto LABEL_252;
  }

LABEL_182:
  while (1)
  {
    v173.n128_u64[0] = v101;
    if (!v101)
    {
      break;
    }

    llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 16), &v173);
    v100 = *a1;
    if (*a1 != *(a1 + 8))
    {
      goto LABEL_181;
    }
  }
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PostfixExpr,llvm::itanium_demangle::Node *&,std::string_view &,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, __n128 *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 48;
  v10 = v8 + v9;
  v11 = *a2;
  v12 = *a4;
  v10[24] = 56;
  v13 = *(v10 + 25) & 0xF000 | v12 & 0x3F;
  *(v10 + 2) = &unk_2868A49F0;
  *(v10 + 4) = v11;
  result = *a3;
  *(v10 + 25) = v13 | 0x540;
  *(v10 + 40) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ArraySubscriptExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, uint64_t *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 32;
  v10 = v8 + v9;
  result = v10 + 16;
  v12 = *a2;
  v13 = *a3;
  v14 = *a4;
  v10[24] = 55;
  *(v10 + 25) = *(v10 + 25) & 0xF000 | v14 & 0x3F | 0x540;
  *(v10 + 2) = &unk_2868A4A68;
  *(v10 + 4) = v12;
  *(v10 + 5) = v13;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::MemberExpr,llvm::itanium_demangle::Node *&,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, __n128 *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  v13 = *a2;
  v14 = *a4;
  v15 = *a5;
  v12[24] = 58;
  v16 = *(v12 + 25) & 0xF000 | v15 & 0x3F;
  *(v12 + 2) = &unk_2868A4AE0;
  *(v12 + 4) = v13;
  result = *a3;
  *(v12 + 25) = v16 | 0x540;
  *(v12 + 40) = result;
  *(v12 + 7) = v14;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NewExpr,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray &,BOOL &,BOOL,llvm::itanium_demangle::Node::Prec>(uint64_t a1, __n128 *a2, uint64_t *a3, __int128 *a4, char *a5, char *a6, _WORD *a7)
{
  v14 = *(a1 + 4904);
  v15 = v14[1];
  if ((v15 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v14 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v14)
    {
      std::terminate();
    }

    v15 = 0;
    *v14 = *(a1 + 4904);
    v14[1] = 0;
    *(a1 + 4904) = v14;
  }

  v14[1] = v15 + 64;
  v16 = v14 + v15;
  v17 = *a3;
  v18 = *a5;
  v19 = *a6;
  v20 = *a7;
  v16[24] = 64;
  v21 = *(v16 + 25) & 0xF000 | v20 & 0x3F;
  *(v16 + 2) = &unk_2868A4B58;
  result = *a2;
  *(v16 + 6) = v17;
  v23 = *a4;
  *(v16 + 25) = v21 | 0x540;
  *(v16 + 2) = result;
  *(v16 + 56) = v23;
  v16[72] = v18;
  v16[73] = v19;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::CallExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, __n128 *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 48;
  v10 = v8 + v9;
  v11 = *a2;
  v12 = *a4;
  v10[24] = 63;
  v13 = *(v10 + 25) & 0xF000 | v12 & 0x3F;
  *(v10 + 2) = &unk_2868A4C48;
  *(v10 + 4) = v11;
  result = *a3;
  *(v10 + 25) = v13 | 0x540;
  *(v10 + 40) = result;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ConversionExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, __n128 *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 48;
  v10 = v8 + v9;
  v11 = *a2;
  v12 = *a4;
  v10[24] = 68;
  v13 = *(v10 + 25) & 0xF000 | v12 & 0x3F;
  *(v10 + 2) = &unk_2868A4CC0;
  *(v10 + 4) = v11;
  result = *a3;
  *(v10 + 25) = v13 | 0x540;
  *(v10 + 40) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ConditionalExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  result = v12 + 16;
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v12[24] = 57;
  *(v12 + 25) = *(v12 + 25) & 0xF000 | v17 & 0x3F | 0x540;
  *(v12 + 2) = &unk_2868A4D38;
  *(v12 + 4) = v14;
  *(v12 + 5) = v15;
  *(v12 + 6) = v16;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::CastExpr,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, __n128 *a2, uint64_t *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v12[24] = 61;
  v16 = *(v12 + 25) & 0xF000 | v15 & 0x3F;
  *(v12 + 2) = &unk_2868A4DB0;
  result = *a2;
  *(v12 + 25) = v16 | 0x540;
  *(v12 + 2) = result;
  *(v12 + 6) = v13;
  *(v12 + 7) = v14;
  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseExprPrimary(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2 && *v1 == 76)
  {
    v3 = v1 + 1;
    *a1 = v1 + 1;
    v4 = v2 - (v1 + 1);
    if (v2 == v1 + 1)
    {
LABEL_10:
      v7 = a1;
      if (v114)
      {
        v9 = *v7;
        v8 = v7[1];
        if (*v7 != v8)
        {
          v10 = *v7;
          if (*v9 == 110)
          {
            v10 = v9 + 1;
            *v7 = v9 + 1;
          }

          if (v8 != v10)
          {
            v11 = *v10;
            if ((v11 & 0x8000000000000000) == 0)
            {
              v12 = MEMORY[0x277D85DE0];
              if ((*(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x400) != 0)
              {
                while (1)
                {
                  v13 = *v10;
                  if (v13 < 0 || (*(v12 + 4 * v13 + 60) & 0x400) == 0)
                  {
                    break;
                  }

                  *v7 = ++v10;
                  if (v10 == v8)
                  {
                    v14 = v8;
                    goto LABEL_238;
                  }
                }

                v14 = v10;
LABEL_238:
                v113.n128_u64[0] = v9;
                v113.n128_u64[1] = v14 - v9;
                if (v14 != v9 && v10 != v8 && *v10 == 69)
                {
                  *v7 = v10 + 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      switch(*v3)
      {
        case 'A':
          v5 = a1;
          if (v113.n128_u64[0])
          {
            v6 = *v5;
            if (*v5 != v5[1] && *v6 == 69)
            {
              *v5 = v6 + 1;
            }
          }

          return;
        case 'D':
          if (v4 >= 2 && *v3 == 28228)
          {
            v35 = v1 + 3;
            *a1 = v1 + 3;
            if (v1 + 3 != v2 && *v35 == 48)
            {
              v35 = v1 + 4;
              *a1 = v1 + 4;
            }

            if (v35 != v2 && *v35 == 69)
            {
              *a1 = v35 + 1;
            }
          }

          return;
        case 'T':
          return;
        case 'U':
          if (v4 >= 2 && v1[2] == 108)
          {
            v38 = a1;
            if (v113.n128_u64[0])
            {
              v39 = *v38;
              if (*v38 != v38[1] && *v39 == 69)
              {
                *v38 = v39 + 1;
              }
            }
          }

          return;
        case '_':
          if (v4 >= 2 && *v3 == 23135)
          {
            *a1 = v1 + 3;
            v36 = a1;
            {
              v37 = *v36;
              if (*v36 != *(v36 + 8) && *v37 == 69)
              {
                *v36 = v37 + 1;
              }
            }
          }

          return;
        case 'a':
          *a1 = v1 + 2;
          v15 = "signed char";
          v16 = 11;

          goto LABEL_23;
        case 'b':
          if (v4 >= 3 && (*v3 == 12386 ? (v40 = v1[3] == 69) : (v40 = 0), v40))
          {
            *a1 = v1 + 4;
            v113.n128_u32[0] = 0;
          }

          else
          {
            v41 = a1;
            {
              return;
            }

            v113.n128_u32[0] = 1;
            a1 = v41;
          }

          break;
        case 'c':
          *a1 = v1 + 2;
          v15 = "char";
          v16 = 4;

          goto LABEL_23;
        case 'd':
          v84 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 0x11)
          {
            return;
          }

          v85 = v1[2];
          v86 = v85 - 48;
          v87 = v85 - 97;
          if (v86 >= 0xA && v87 > 5)
          {
            return;
          }

          v89 = v1[3];
          v90 = v89 - 48;
          v91 = v89 - 97;
          if (v90 >= 0xA && v91 > 5)
          {
            return;
          }

          v93 = v1[4];
          if ((v93 - 48) >= 0xA && (v93 - 97) > 5)
          {
            return;
          }

          v94 = v1[5];
          if ((v94 - 48) >= 0xA && (v94 - 97) > 5)
          {
            return;
          }

          v95 = v1[6];
          if ((v95 - 48) >= 0xA && (v95 - 97) > 5)
          {
            return;
          }

          v96 = v1[7];
          if ((v96 - 48) >= 0xA && (v96 - 97) > 5)
          {
            return;
          }

          v112 = a1;
          v97 = v1[8];
          if ((v97 - 48) >= 0xA && (v97 - 97) > 5)
          {
            return;
          }

          v98 = v1[9];
          if ((v98 - 48) >= 0xA && (v98 - 97) > 5)
          {
            return;
          }

          v99 = v1[10];
          if ((v99 - 48) >= 0xA && (v99 - 97) > 5)
          {
            return;
          }

          v100 = v1[11];
          if ((v100 - 48) >= 0xA && (v100 - 97) > 5)
          {
            return;
          }

          v101 = v1[12];
          if ((v101 - 48) >= 0xA && (v101 - 97) > 5)
          {
            return;
          }

          v102 = v1[13];
          if ((v102 - 48) >= 0xA && (v102 - 97) > 5)
          {
            return;
          }

          v103 = v1[14];
          if ((v103 - 48) >= 0xA && (v103 - 97) > 5)
          {
            return;
          }

          v104 = v1[15];
          if ((v104 - 48) >= 0xA && (v104 - 97) > 5)
          {
            return;
          }

          v105 = v1[16];
          if ((v105 - 48) >= 0xA && (v105 - 97) > 5)
          {
            return;
          }

          v106 = v1[17];
          if ((v106 - 48) >= 0xA && (v106 - 97) > 5)
          {
            return;
          }

          *a1 = v1 + 18;
          if (v1 + 18 == v2 || v1[18] != 69)
          {
            return;
          }

          *a1 = v1 + 19;
          v107 = *(a1 + 4904);
          v108 = v107[1];
          if ((v108 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_227;
          }

          v107 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v107)
          {
            goto LABEL_245;
          }

          v108 = 0;
          *v107 = *(v112 + 4904);
          v107[1] = 0;
          *(v112 + 4904) = v107;
LABEL_227:
          v107[1] = v108 + 32;
          v109 = v107 + v108;
          v109[24] = 79;
          *(v109 + 25) = *(v109 + 25) & 0xF000 | 0x540;
          *(v109 + 2) = &unk_2868A5008;
          *(v109 + 4) = v84;
          *(v109 + 5) = 16;
          return;
        case 'e':
          v42 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 0x21)
          {
            return;
          }

          v43 = v1[2];
          v44 = v43 - 48;
          v45 = v43 - 97;
          if (v44 >= 0xA && v45 > 5)
          {
            return;
          }

          v47 = v1[3];
          v48 = v47 - 48;
          v49 = v47 - 97;
          if (v48 >= 0xA && v49 > 5)
          {
            return;
          }

          v51 = v1[4];
          if ((v51 - 48) >= 0xA && (v51 - 97) > 5)
          {
            return;
          }

          v52 = v1[5];
          if ((v52 - 48) >= 0xA && (v52 - 97) > 5)
          {
            return;
          }

          v53 = v1[6];
          if ((v53 - 48) >= 0xA && (v53 - 97) > 5)
          {
            return;
          }

          v54 = v1[7];
          if ((v54 - 48) >= 0xA && (v54 - 97) > 5)
          {
            return;
          }

          v111 = a1;
          v55 = v1[8];
          if ((v55 - 48) >= 0xA && (v55 - 97) > 5)
          {
            return;
          }

          v56 = v1[9];
          if ((v56 - 48) >= 0xA && (v56 - 97) > 5)
          {
            return;
          }

          v57 = v1[10];
          if ((v57 - 48) >= 0xA && (v57 - 97) > 5)
          {
            return;
          }

          v58 = v1[11];
          if ((v58 - 48) >= 0xA && (v58 - 97) > 5)
          {
            return;
          }

          v59 = v1[12];
          if ((v59 - 48) >= 0xA && (v59 - 97) > 5)
          {
            return;
          }

          v60 = v1[13];
          if ((v60 - 48) >= 0xA && (v60 - 97) > 5)
          {
            return;
          }

          v61 = v1[14];
          if ((v61 - 48) >= 0xA && (v61 - 97) > 5)
          {
            return;
          }

          v62 = v1[15];
          if ((v62 - 48) >= 0xA && (v62 - 97) > 5)
          {
            return;
          }

          v63 = v1[16];
          if ((v63 - 48) >= 0xA && (v63 - 97) > 5)
          {
            return;
          }

          v64 = v1[17];
          if ((v64 - 48) >= 0xA && (v64 - 97) > 5)
          {
            return;
          }

          v65 = v1[18];
          if ((v65 - 48) >= 0xA && (v65 - 97) > 5)
          {
            return;
          }

          v66 = v1[19];
          if ((v66 - 48) >= 0xA && (v66 - 97) > 5)
          {
            return;
          }

          v67 = v1[20];
          if ((v67 - 48) >= 0xA && (v67 - 97) > 5)
          {
            return;
          }

          v68 = v1[21];
          if ((v68 - 48) >= 0xA && (v68 - 97) > 5)
          {
            return;
          }

          v69 = v1[22];
          if ((v69 - 48) >= 0xA && (v69 - 97) > 5)
          {
            return;
          }

          v70 = v1[23];
          if ((v70 - 48) >= 0xA && (v70 - 97) > 5)
          {
            return;
          }

          v71 = v1[24];
          if ((v71 - 48) >= 0xA && (v71 - 97) > 5)
          {
            return;
          }

          v72 = v1[25];
          if ((v72 - 48) >= 0xA && (v72 - 97) > 5)
          {
            return;
          }

          v73 = v1[26];
          if ((v73 - 48) >= 0xA && (v73 - 97) > 5)
          {
            return;
          }

          v74 = v1[27];
          if ((v74 - 48) >= 0xA && (v74 - 97) > 5)
          {
            return;
          }

          v75 = v1[28];
          if ((v75 - 48) >= 0xA && (v75 - 97) > 5)
          {
            return;
          }

          v76 = v1[29];
          if ((v76 - 48) >= 0xA && (v76 - 97) > 5)
          {
            return;
          }

          v77 = v1[30];
          if ((v77 - 48) >= 0xA && (v77 - 97) > 5)
          {
            return;
          }

          v78 = v1[31];
          if ((v78 - 48) >= 0xA && (v78 - 97) > 5)
          {
            return;
          }

          v79 = v1[32];
          if ((v79 - 48) >= 0xA && (v79 - 97) > 5)
          {
            return;
          }

          v80 = v1[33];
          if ((v80 - 48) >= 0xA && (v80 - 97) > 5)
          {
            return;
          }

          *a1 = v1 + 34;
          if (v1 + 34 == v2 || v1[34] != 69)
          {
            return;
          }

          *a1 = v1 + 35;
          v81 = *(a1 + 4904);
          v82 = v81[1];
          if ((v82 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_184;
          }

          v81 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v81)
          {
            goto LABEL_245;
          }

          v82 = 0;
          *v81 = *(v111 + 4904);
          v81[1] = 0;
          *(v111 + 4904) = v81;
LABEL_184:
          v81[1] = v82 + 32;
          v83 = v81 + v82;
          v83[24] = 80;
          *(v83 + 25) = *(v83 + 25) & 0xF000 | 0x540;
          *(v83 + 2) = &unk_2868A5080;
          *(v83 + 4) = v42;
          *(v83 + 5) = 32;
          return;
        case 'f':
          v17 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 9)
          {
            return;
          }

          v18 = v1[2];
          v19 = v18 - 48;
          v20 = v18 - 97;
          if (v19 >= 0xA && v20 > 5)
          {
            return;
          }

          v22 = v1[3];
          v23 = v22 - 48;
          v24 = v22 - 97;
          if (v23 >= 0xA && v24 > 5)
          {
            return;
          }

          v26 = v1[4];
          if ((v26 - 48) >= 0xA && (v26 - 97) > 5)
          {
            return;
          }

          v27 = v1[5];
          if ((v27 - 48) >= 0xA && (v27 - 97) > 5)
          {
            return;
          }

          v28 = v1[6];
          if ((v28 - 48) >= 0xA && (v28 - 97) > 5)
          {
            return;
          }

          v29 = v1[7];
          if ((v29 - 48) >= 0xA && (v29 - 97) > 5)
          {
            return;
          }

          v110 = a1;
          v30 = v1[8];
          if ((v30 - 48) >= 0xA && (v30 - 97) > 5)
          {
            return;
          }

          v31 = v1[9];
          if ((v31 - 48) >= 0xA && (v31 - 97) > 5)
          {
            return;
          }

          *a1 = v1 + 10;
          if (v1 + 10 == v2 || v1[10] != 69)
          {
            return;
          }

          *a1 = v1 + 11;
          v32 = *(a1 + 4904);
          v33 = v32[1];
          if ((v33 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_56;
          }

          v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v32)
          {
LABEL_245:
            std::terminate();
          }

          v33 = 0;
          *v32 = *(v110 + 4904);
          v32[1] = 0;
          *(v110 + 4904) = v32;
LABEL_56:
          v32[1] = v33 + 32;
          v34 = v32 + v33;
          v34[24] = 78;
          *(v34 + 25) = *(v34 + 25) & 0xF000 | 0x540;
          *(v34 + 2) = &unk_2868A4F90;
          *(v34 + 4) = v17;
          *(v34 + 5) = 8;
          return;
        case 'h':
          *a1 = v1 + 2;
          v15 = "unsigned char";
          v16 = 13;

          goto LABEL_23;
        case 'i':
          *a1 = v1 + 2;
          v15 = "";
          v16 = 0;

          goto LABEL_23;
        case 'j':
          *a1 = v1 + 2;
          v15 = "u";
          v16 = 1;

          goto LABEL_23;
        case 'l':
          *a1 = v1 + 2;
          v15 = "l";
          v16 = 1;

          goto LABEL_23;
        case 'm':
          *a1 = v1 + 2;
          v15 = "ul";
          v16 = 2;

          goto LABEL_23;
        case 'n':
          *a1 = v1 + 2;
          v15 = "__int128";
          v16 = 8;

          goto LABEL_23;
        case 'o':
          *a1 = v1 + 2;
          v15 = "unsigned __int128";
          v16 = 17;

          goto LABEL_23;
        case 's':
          *a1 = v1 + 2;
          v15 = "short";
          v16 = 5;

          goto LABEL_23;
        case 't':
          *a1 = v1 + 2;
          v15 = "unsigned short";
          v16 = 14;

          goto LABEL_23;
        case 'w':
          *a1 = v1 + 2;
          v15 = "wchar_t";
          v16 = 7;

          goto LABEL_23;
        case 'x':
          *a1 = v1 + 2;
          v15 = "ll";
          v16 = 2;

          goto LABEL_23;
        case 'y':
          *a1 = v1 + 2;
          v15 = "ull";
          v16 = 3;

LABEL_23:
          return;
        default:
          goto LABEL_10;
      }
    }
  }
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseFunctionParam(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = &v1[-*a1];
  if (v3 >= 3)
  {
    if (*v2 == 28774 && *(v2 + 2) == 84)
    {
      *a1 = v2 + 3;
      v21 = a1[613];
      v22 = v21[1];
      if ((v22 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v24 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v24)
        {
          goto LABEL_75;
        }

        v21 = v24;
        v22 = 0;
        *v24 = a1[613];
        v24[1] = 0;
        a1[613] = v24;
      }

      v21[1] = v22 + 32;
      v25 = v21 + v22;
      v25[24] = 8;
      *(v25 + 25) = *(v25 + 25) & 0xF000 | 0x540;
      *(v25 + 2) = &unk_2868A4798;
      *(v25 + 4) = "this";
      *(v25 + 5) = 4;
      return;
    }
  }

  else if (v3 != 2)
  {
    return;
  }

  if (*v2 == 28774)
  {
    v11 = (v2 + 2);
    *a1 = v2 + 2;
    if ((v2 + 2) != v1 && *v11 == 114)
    {
      v11 = (v2 + 3);
      *a1 = v2 + 3;
    }

    if (v11 != v1 && *v11 == 86)
    {
      *a1 = ++v11;
    }

    if (v11 != v1 && *v11 == 75)
    {
      *a1 = ++v11;
    }

    if (v1 == v11 || (v12 = *v11, v12 < 0) || (v13 = MEMORY[0x277D85DE0], (*(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x400) == 0))
    {
      v14 = 0;
      v15 = 0;
      if (v11 == v1)
      {
        return;
      }
    }

    else
    {
      v26 = v11;
      while (1)
      {
        v27 = *v26;
        if (v27 < 0 || (*(v13 + 4 * v27 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v26;
        if (v26 == v1)
        {
          v28 = v1;
          goto LABEL_46;
        }
      }

      v28 = v26;
LABEL_46:
      v14 = v11;
      v15 = v28 - v11;
      v11 = v26;
      if (v26 == v1)
      {
        return;
      }
    }

    if (*v11 != 95)
    {
      return;
    }

    *a1 = (v11 + 1);
    v16 = a1[613];
    v17 = v16[1];
    if ((v17 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_35:
      v16[1] = v17 + 32;
      v20 = v16 + v17;
      v20[24] = 67;
      *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
      *(v20 + 2) = &unk_2868A5620;
      *(v20 + 4) = v14;
      *(v20 + 5) = v15;
      return;
    }

    v19 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v19)
    {
      v16 = v19;
      v17 = 0;
      *v19 = a1[613];
      v19[1] = 0;
      a1[613] = v19;
      goto LABEL_35;
    }

LABEL_75:
    std::terminate();
  }

  if (*v2 == 19558)
  {
    v5 = (v2 + 2);
    *a1 = v2 + 2;
    if (v1 != (v2 + 2))
    {
      v6 = *v5;
      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = MEMORY[0x277D85DE0];
        if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) != 0)
        {
          v8 = v5;
          while (1)
          {
            v9 = *v8;
            if (v9 < 0 || (*(v7 + 4 * v9 + 60) & 0x400) == 0)
            {
              break;
            }

            *a1 = ++v8;
            if (v8 == v1)
            {
              v10 = v1;
              goto LABEL_49;
            }
          }

          v10 = v8;
LABEL_49:
          if (v10 != v5 && v8 != v1 && *v8 == 112)
          {
            v29 = v8 + 1;
            *a1 = (v8 + 1);
            if (v8 + 1 != v1 && *v29 == 114)
            {
              v29 = v8 + 2;
              *a1 = (v8 + 2);
            }

            if (v29 != v1 && *v29 == 86)
            {
              *a1 = ++v29;
            }

            if (v29 != v1 && *v29 == 75)
            {
              *a1 = ++v29;
            }

            if (v1 == v29 || (v30 = *v29, v30 < 0) || (*(v7 + 4 * v30 + 60) & 0x400) == 0)
            {
              v36 = 0uLL;
              if (v29 == v1)
              {
                return;
              }

              goto LABEL_65;
            }

            v31 = v29;
            while (1)
            {
              v32 = *v31;
              if (v32 < 0 || (*(v7 + 4 * v32 + 60) & 0x400) == 0)
              {
                break;
              }

              *a1 = ++v31;
              if (v31 == v1)
              {
                v33 = v1;
                goto LABEL_73;
              }
            }

            v33 = v31;
LABEL_73:
            v34 = v29;
            v35 = v33 - v29;
            v29 = v31;
            v36.n128_u64[0] = v34;
            v36.n128_u64[1] = v35;
            if (v31 != v1)
            {
LABEL_65:
              if (*v29 == 95)
              {
                *a1 = (v29 + 1);
              }
            }
          }
        }
      }
    }
  }
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseBracedExpr(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8) - *a1 < 2uLL || *v1 != 100)
  {
    goto LABEL_13;
  }

  v2 = v1[1];
  if (v2 != 88)
  {
    if (v2 == 120)
    {
      *a1 = v1 + 2;
      if (result)
      {
        v11 = result;
        if (result)
        {
          v12 = result;
          v13 = *(a1 + 4904);
          v14 = v13[1];
          if ((v14 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v13 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v13)
            {
              goto LABEL_29;
            }

            v14 = 0;
            *v13 = *(a1 + 4904);
            v13[1] = 0;
            *(a1 + 4904) = v13;
          }

          v13[1] = v14 + 48;
          v15 = v13 + v14;
          result = v15 + 16;
          v15[24] = 81;
          *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
          *(v15 + 2) = &unk_2868A5788;
          *(v15 + 4) = v11;
          *(v15 + 5) = v12;
          v15[48] = 1;
          return result;
        }
      }

      return result;
    }

    if (v2 == 105)
    {
      *a1 = v1 + 2;
      if (result)
      {
        v5 = result;
        if (result)
        {
          v6 = result;
          v7 = *(a1 + 4904);
          v8 = v7[1];
          if ((v8 - 4032) > 0xFFFFFFFFFFFFF00FLL)
          {
LABEL_11:
            v7[1] = v8 + 48;
            v9 = v7 + v8;
            result = v9 + 16;
            v9[24] = 81;
            *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
            *(v9 + 2) = &unk_2868A5788;
            *(v9 + 4) = v5;
            *(v9 + 5) = v6;
            v9[48] = 0;
            return result;
          }

          v7 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (v7)
          {
            v8 = 0;
            *v7 = *(a1 + 4904);
            v7[1] = 0;
            *(a1 + 4904) = v7;
            goto LABEL_11;
          }

LABEL_29:
          std::terminate();
        }
      }

      return result;
    }

LABEL_13:
  }

  *a1 = v1 + 2;
  if (result)
  {
    v17 = result;
    if (result)
    {
      v18 = result;
      if (result)
      {
        v19 = result;
        v20 = *(a1 + 4904);
        v21 = v20[1];
        if ((v21 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v20 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v20)
          {
            goto LABEL_29;
          }

          v21 = 0;
          *v20 = *(a1 + 4904);
          v20[1] = 0;
          *(a1 + 4904) = v20;
        }

        v20[1] = v21 + 48;
        v22 = v20 + v21;
        result = v22 + 16;
        v22[24] = 82;
        *(v22 + 25) = *(v22 + 25) & 0xF000 | 0x540;
        *(v22 + 2) = &unk_2868A5800;
        *(v22 + 4) = v17;
        *(v22 + 5) = v18;
        *(v22 + 6) = v19;
      }
    }
  }

  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::InitListExpr,decltype(nullptr),llvm::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  v6[24] = 70;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A5878;
  *(v6 + 4) = 0;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 40) = result;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parsePointerToMemberConversionExpr(char **a1)
{
  if (result)
  {
    v3 = result;
    if (result)
    {
      v5 = *a1;
      v4 = a1[1];
      if (*a1 == v4)
      {
        return 0;
      }

      v6 = *a1;
      if (*v5 == 110)
      {
        v6 = v5 + 1;
        *a1 = v5 + 1;
      }

      if (v4 == v6 || (v7 = *v6, v7 < 0) || (v8 = MEMORY[0x277D85DE0], (*(MEMORY[0x277D85DE0] + 4 * v7 + 60) & 0x400) == 0))
      {
        v9 = 0;
        v10 = 0;
        v11 = v6;
        if (v6 == v4)
        {
          return 0;
        }
      }

      else
      {
        while (1)
        {
          v12 = *v6;
          if (v12 < 0 || (*(v8 + 4 * v12 + 60) & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v6;
          if (v6 == v4)
          {
            v13 = v4;
            goto LABEL_17;
          }
        }

        v13 = v6;
LABEL_17:
        v9 = v5;
        v10 = v13 - v5;
        v11 = v6;
        if (v6 == v4)
        {
          return 0;
        }
      }

      if (*v11 != 69)
      {
        return 0;
      }

      *a1 = v11 + 1;
      v14 = a1[613];
      v15 = *(v14 + 1);
      if ((v15 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v16 = result;
        v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v17)
        {
          std::terminate();
        }

        v14 = v17;
        v15 = 0;
        *v17 = a1[613];
        *(v17 + 1) = 0;
        a1[613] = v17;
        result = v16;
      }

      *(v14 + 1) = v15 + 48;
      v18 = &v14[v15];
      v18[24] = 69;
      *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x542;
      *(v18 + 2) = &unk_2868A58F0;
      *(v18 + 4) = v3;
      *(v18 + 5) = result;
      result = (v18 + 16);
      *(v18 + 6) = v9;
      *(v18 + 7) = v10;
    }
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::EnclosingExpr,char const(&)[10],llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 64;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 60;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | v11 & 0x3F | 0x540;
  *(v8 + 2) = &unk_2868A4E28;
  *(v8 + 4) = "noexcept ";
  *(v8 + 5) = 9;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 6) = v10;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseRequiresExpr(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (&v2[-*a1] < 2)
  {
    return 0;
  }

  if (*v1 == 20850)
  {
    v5 = v1 + 1;
    *a1 = v5;
    v6 = (a1[3] - a1[2]) >> 3;
    v7 = a1 + 5;
    while (v5 == v2 || *v5 != 95)
    {
      if (!result)
      {
        return result;
      }

      v9 = a1[3];
      if (v9 == a1[4])
      {
        v10 = result;
        v11 = a1[2];
        v12 = v9 - v11;
        if (v11 == v7)
        {
          v8 = malloc_type_malloc(2 * (v9 - v11), 0x2004093837F09uLL);
          if (!v8)
          {
LABEL_68:
            abort();
          }

          v13 = a1[2];
          v14 = a1[3];
          if (v14 != v13)
          {
            v15 = v8;
            memmove(v8, v13, v14 - v13);
            v8 = v15;
          }

          a1[2] = v8;
        }

        else
        {
          v8 = malloc_type_realloc(v11, 2 * (v9 - v11), 0x2004093837F09uLL);
          a1[2] = v8;
          if (!v8)
          {
            goto LABEL_68;
          }
        }

        v9 = &v8[v12];
        a1[4] = &v8[8 * (v12 >> 2)];
        result = v10;
      }

      *v9 = result;
      a1[3] = v9 + 1;
      v5 = *a1;
      v2 = a1[1];
    }

    *a1 = v5 + 1;
    v18 = *a1;
    if (*a1 == a1[1])
    {
      return 0;
    }
  }

  else
  {
    if (*v1 != 29042)
    {
      return 0;
    }

    v16 = 0;
    v17 = 0;
    v18 = v1 + 1;
    *a1 = v18;
    if (v18 == v2)
    {
      return 0;
    }
  }

  v51 = v17;
  v52 = v16;
  v53 = (a1[3] - a1[2]) >> 3;
  while (1)
  {
    v19 = *v18;
    if (v19 == 81)
    {
      *a1 = v18 + 1;
      if (!result)
      {
        return result;
      }

      v31 = result;
      v32 = a1[613];
      v33 = v32[1];
      if ((v33 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v32)
        {
          goto LABEL_69;
        }

        v33 = 0;
        *v32 = a1[613];
        v32[1] = 0;
        a1[613] = v32;
      }

      v32[1] = v33 + 32;
      v34 = v32 + v33;
      v29 = v34 + 16;
      v34[24] = 86;
      *(v34 + 25) = *(v34 + 25) & 0xF000 | 0x540;
      *(v34 + 2) = &unk_2868A5A58;
      *(v34 + 4) = v31;
      v30 = a1[3];
      if (v30 != a1[4])
      {
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    if (v19 == 84)
    {
      *a1 = v18 + 1;
      if (!result)
      {
        return result;
      }

      v25 = result;
      v26 = a1[613];
      v27 = v26[1];
      if ((v27 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v26 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v26)
        {
          goto LABEL_69;
        }

        v27 = 0;
        *v26 = a1[613];
        v26[1] = 0;
        a1[613] = v26;
      }

      v26[1] = v27 + 32;
      v28 = v26 + v27;
      v29 = v28 + 16;
      v28[24] = 85;
      *(v28 + 25) = *(v28 + 25) & 0xF000 | 0x540;
      *(v28 + 2) = &unk_2868A59E0;
      *(v28 + 4) = v25;
      v30 = a1[3];
      if (v30 != a1[4])
      {
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    if (v19 != 88)
    {
      return 0;
    }

    *a1 = v18 + 1;
    if (!result)
    {
      return result;
    }

    v20 = result;
    v21 = *a1;
    v22 = a1[1];
    if (*a1 == v22 || *v21 != 78)
    {
      v23 = 0;
      if (v21 == v22)
      {
LABEL_30:
        v24 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      *a1 = ++v21;
      v23 = 1;
      if (v21 == v22)
      {
        goto LABEL_30;
      }
    }

    if (*v21 == 82)
    {
      *a1 = v21 + 1;
      v24 = result;
      if (!result)
      {
        return result;
      }

LABEL_46:
      v35 = a1[613];
      v36 = v35[1];
      if ((v36 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v24 = 0;
    v35 = a1[613];
    v36 = v35[1];
    if ((v36 - 4032) > 0xFFFFFFFFFFFFF00FLL)
    {
      goto LABEL_51;
    }

LABEL_49:
    v35 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v35)
    {
      goto LABEL_69;
    }

    v36 = 0;
    *v35 = a1[613];
    v35[1] = 0;
    a1[613] = v35;
LABEL_51:
    v35[1] = v36 + 48;
    v37 = v35 + v36;
    v29 = v37 + 16;
    v37[24] = 84;
    *(v37 + 25) = *(v37 + 25) & 0xF000 | 0x540;
    *(v37 + 2) = &unk_2868A5968;
    *(v37 + 4) = v20;
    v37[40] = v23;
    *(v37 + 6) = v24;
    v30 = a1[3];
    if (v30 != a1[4])
    {
      goto LABEL_60;
    }

LABEL_52:
    v38 = a1[2];
    v39 = v30 - v38;
    if (v38 == (a1 + 5))
    {
      v40 = malloc_type_malloc(2 * (v30 - v38), 0x2004093837F09uLL);
      if (!v40)
      {
        goto LABEL_68;
      }

      v41 = a1[2];
      v42 = a1[3];
      if (v42 != v41)
      {
        v43 = v40;
        memmove(v40, v41, v42 - v41);
        v40 = v43;
      }

      a1[2] = v40;
    }

    else
    {
      v40 = malloc_type_realloc(v38, 2 * (v30 - v38), 0x2004093837F09uLL);
      a1[2] = v40;
      if (!v40)
      {
        goto LABEL_68;
      }
    }

    v30 = &v40[v39];
    a1[4] = &v40[8 * (v39 >> 2)];
LABEL_60:
    *v30 = v29;
    a1[3] = v30 + 8;
    v18 = *a1;
    v44 = a1[1];
    if (*a1 == v44)
    {
      return 0;
    }

    if (*v18 == 69)
    {
      break;
    }

    result = 0;
    if (v18 == v44)
    {
      return result;
    }
  }

  *a1 = v18 + 1;
  v47 = v46;
  v48 = a1[613];
  v49 = v48[1];
  if ((v49 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v48 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v48)
    {
LABEL_69:
      std::terminate();
    }

    v49 = 0;
    *v48 = a1[613];
    v48[1] = 0;
    a1[613] = v48;
  }

  v48[1] = v49 + 48;
  v50 = v48 + v49;
  result = (v50 + 16);
  v50[24] = 83;
  *(v50 + 25) = *(v50 + 25) & 0xF000 | 0x540;
  *(v50 + 2) = &unk_2868A5AD0;
  *(v50 + 4) = v51;
  *(v50 + 5) = v52;
  *(v50 + 6) = v45;
  *(v50 + 7) = v47;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSubobjectExpr(char **a1)
{
  if (!result)
  {
    return result;
  }

  v42 = result;
  if (!result)
  {
    return result;
  }

  v4 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v8 = 0;
    v9 = 0;
    v11 = a1[2];
    v10 = a1[3];
    goto LABEL_41;
  }

  v5 = *a1;
  if (*v4 == 110)
  {
    v5 = v4 + 1;
    *a1 = v4 + 1;
  }

  if (v3 != v5)
  {
    v6 = *v5;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = MEMORY[0x277D85DE0];
      if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) != 0)
      {
        while (1)
        {
          v29 = *v5;
          if (v29 < 0 || (*(v7 + 4 * v29 + 60) & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v5;
          if (v5 == v3)
          {
            v30 = v3;
            goto LABEL_56;
          }
        }

        v30 = v5;
LABEL_56:
        v8 = v4;
        v9 = v30 - v4;
        v4 = v5;
        v11 = a1[2];
        v10 = a1[3];
        if (v5 != v3)
        {
          goto LABEL_10;
        }

LABEL_41:
        if (v4 != v3)
        {
          goto LABEL_44;
        }

        goto LABEL_47;
      }
    }
  }

  v8 = 0;
  v9 = 0;
  v4 = v5;
  v11 = a1[2];
  v10 = a1[3];
  if (v5 == v3)
  {
    goto LABEL_41;
  }

LABEL_10:
  v39 = v11;
  v40 = v10;
  v41 = result;
  v12 = MEMORY[0x277D85DE0];
  while (*v4 == 95)
  {
    v13 = v4 + 1;
    *a1 = v4 + 1;
    if (v3 == v4 + 1 || (v14 = *v13, v14 < 0) || (*(v12 + 4 * v14 + 60) & 0x400) == 0)
    {
      v13 = 0;
      v15 = 0;
      v16 = a1[613];
      v17 = *(v16 + 1);
      if ((v17 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = v13;
      while (1)
      {
        v25 = *v24;
        if (v25 < 0 || (*(v12 + 4 * v25 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v24;
        if (v24 == v3)
        {
          v24 = v3;
          break;
        }
      }

      v15 = v24 - v13;
      v16 = a1[613];
      v17 = *(v16 + 1);
      if ((v17 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_17:
        v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v16)
        {
          goto LABEL_58;
        }

        v17 = 0;
        *v16 = a1[613];
        *(v16 + 1) = 0;
        a1[613] = v16;
      }
    }

    *(v16 + 1) = v17 + 32;
    v18 = &v16[v17];
    v19 = v18 + 16;
    v18[24] = 8;
    *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x540;
    *(v18 + 2) = &unk_2868A4798;
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v20 = a1[3];
    if (v20 == a1[4])
    {
      v21 = a1[2];
      v22 = v20 - v21;
      if (v21 == a1 + 5)
      {
        v23 = malloc_type_malloc(2 * (v20 - v21), 0x2004093837F09uLL);
        if (!v23)
        {
LABEL_59:
          abort();
        }

        v26 = a1[2];
        v27 = a1[3];
        if (v27 != v26)
        {
          v28 = v23;
          memmove(v23, v26, v27 - v26);
          v23 = v28;
        }

        a1[2] = v23;
      }

      else
      {
        v23 = malloc_type_realloc(v21, 2 * (v20 - v21), 0x2004093837F09uLL);
        a1[2] = v23;
        if (!v23)
        {
          goto LABEL_59;
        }
      }

      a1[4] = &v23[8 * (v22 >> 2)];
      *&v23[v22] = v19;
      a1[3] = &v23[v22 + 8];
      v4 = *a1;
      v3 = a1[1];
      if (*a1 == v3)
      {
        return 0;
      }
    }

    else
    {
      *v20 = v19;
      a1[3] = v20 + 8;
      v4 = *a1;
      v3 = a1[1];
      if (*a1 == v3)
      {
        return 0;
      }
    }
  }

  result = v41;
  v10 = v40;
  v11 = v39;
  if (v4 == v3)
  {
LABEL_47:
    v31 = 0;
    if (v4 == v3)
    {
      return 0;
    }

    goto LABEL_48;
  }

LABEL_44:
  if (*v4 != 112)
  {
    goto LABEL_47;
  }

  *a1 = ++v4;
  v31 = 1;
  if (v4 == v3)
  {
    return 0;
  }

LABEL_48:
  if (*v4 != 69)
  {
    return 0;
  }

  v32 = result;
  *a1 = v4 + 1;
  v35 = v34;
  v36 = a1[613];
  v37 = *(v36 + 1);
  if ((v37 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v36 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v36)
    {
LABEL_58:
      std::terminate();
    }

    v37 = 0;
    *v36 = a1[613];
    *(v36 + 1) = 0;
    a1[613] = v36;
  }

  *(v36 + 1) = v37 + 80;
  v38 = &v36[v37];
  result = (v38 + 16);
  v38[24] = 59;
  *(v38 + 25) = *(v38 + 25) & 0xF000 | 0x540;
  *(v38 + 2) = &unk_2868A5B48;
  *(v38 + 4) = v42;
  *(v38 + 5) = v32;
  *(v38 + 6) = v8;
  *(v38 + 7) = v9;
  *(v38 + 8) = v33;
  *(v38 + 9) = v35;
  v38[80] = v31;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ParameterPackExpansion,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 42;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A5710;
  *(v6 + 4) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SizeofParamPackExpr,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 62;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A5BC0;
  *(v6 + 4) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::EnclosingExpr,char const(&)[11],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 64;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 60;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4E28;
  *(v6 + 4) = "sizeof... ";
  *(v6 + 5) = 10;
  *(v6 + 7) = 0;
  *(v6 + 8) = 0;
  *(v6 + 6) = v8;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NodeArrayNode,llvm::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v6[24] = 0;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A5C38;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::InitListExpr,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray>(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 48;
  v8 = v6 + v7;
  v9 = *a2;
  v8[24] = 70;
  v10 = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = &unk_2868A5878;
  *(v8 + 4) = v9;
  result = *a3;
  *(v8 + 25) = v10;
  *(v8 + 40) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ThrowExpr,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 72;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A5CB0;
  *(v6 + 4) = v8;
  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnresolvedName(uint64_t a1, size_t a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = &v5[-*a1];
  if (v6 >= 3)
  {
    if (*v4 == 29299 && v4[2] == 78)
    {
      *a1 = v4 + 3;
      if (v20)
      {
        v22 = v20;
        if (*(a1 + 8) == *a1 || **a1 != 73)
        {
LABEL_34:
          while (1)
          {
            v30 = *a1;
            if (*a1 != *(a1 + 8) && *v30 == 69)
            {
              break;
            }

            if (!v31)
            {
              return;
            }

            v32 = v31;
            v33 = *(a1 + 4904);
            v34 = v33[1];
            if ((v34 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
            {
              v33 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
              if (!v33)
              {
                goto LABEL_78;
              }

              v34 = 0;
              *v33 = *(a1 + 4904);
              v33[1] = 0;
              *(a1 + 4904) = v33;
            }

            v33[1] = v34 + 32;
            v29 = v33 + v34;
            v29[24] = 23;
            *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
            *(v29 + 2) = &unk_2868A5D28;
            *(v29 + 4) = v22;
            *(v29 + 5) = v32;
            v22 = v29 + 16;
          }

          *a1 = v30 + 1;
          if (v43)
          {
            v44 = v43;
            v45 = *(a1 + 4904);
            v46 = v45[1];
            if ((v46 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
            {
              v45 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
              if (!v45)
              {
                goto LABEL_78;
              }

              v46 = 0;
              *v45 = *(a1 + 4904);
              v45[1] = 0;
              *(a1 + 4904) = v45;
            }

            v45[1] = v46 + 32;
            v47 = v45 + v46;
            v47[24] = 23;
            *(v47 + 25) = *(v47 + 25) & 0xF000 | 0x540;
            *(v47 + 2) = &unk_2868A5D28;
            *(v47 + 4) = v22;
            *(v47 + 5) = v44;
            return;
          }
        }

        else
        {
          if (v23)
          {
            v24 = *(a1 + 4904);
            v25 = v24[1];
            if ((v25 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
            {
              v26 = v23;
              v27 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
              if (!v27)
              {
                goto LABEL_78;
              }

              v24 = v27;
              v25 = 0;
              *v27 = *(a1 + 4904);
              v27[1] = 0;
              *(a1 + 4904) = v27;
              v23 = v26;
            }

            v24[1] = v25 + 32;
            v28 = v24 + v25;
            v28[24] = 45;
            *(v28 + 25) = *(v28 + 25) & 0xF000 | 0x540;
            *(v28 + 2) = &unk_2868A64A8;
            *(v28 + 4) = v22;
            *(v28 + 5) = v23;
            v22 = v28 + 16;
            goto LABEL_34;
          }
        }
      }

      return;
    }
  }

  else if (v6 != 2)
  {
    goto LABEL_9;
  }

  if (*v4 != 29299)
  {
LABEL_9:
    if (v8 && v2)
    {
      v9 = *(a1 + 4904);
      v10 = v9[1];
      if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_14:
        v9[1] = v10 + 32;
        v13 = v9 + v10;
        v13[24] = 46;
        *(v13 + 25) = *(v13 + 25) & 0xF000 | 0x540;
        *(v13 + 2) = &unk_2868A5F08;
        *(v13 + 4) = v8;
        return;
      }

      v11 = v8;
      v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v12)
      {
        v9 = v12;
        v10 = 0;
        *v12 = *(a1 + 4904);
        v12[1] = 0;
        *(a1 + 4904) = v12;
        v8 = v11;
        goto LABEL_14;
      }

LABEL_78:
      std::terminate();
    }

    return;
  }

  v14 = (v4 + 2);
  *a1 = v14;
  if (v5 == v14)
  {
    if ((*(MEMORY[0x277D85DE0] + 60) & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

  v15 = *v14;
  if ((v15 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v15 + 60) & 0x400) != 0)
  {
LABEL_41:
    if (!v35)
    {
      return;
    }

    v36 = v35;
    if (v2)
    {
      v18 = 0;
      while (1)
      {
        v38 = *(a1 + 4904);
        v39 = v38[1];
        if (v18)
        {
          if ((v39 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v38 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v38)
            {
              goto LABEL_78;
            }

            v39 = 0;
            *v38 = *(a1 + 4904);
            v38[1] = 0;
            *(a1 + 4904) = v38;
          }

          v38[1] = v39 + 32;
          v40 = v38 + v39;
          v40[24] = 23;
          *(v40 + 25) = *(v40 + 25) & 0xF000 | 0x540;
          *(v40 + 2) = &unk_2868A5D28;
          *(v40 + 4) = v18;
          v18 = v40 + 16;
          *(v40 + 5) = v36;
          v41 = *a1;
          if (*a1 == *(a1 + 8))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if ((v39 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v38 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v38)
            {
              goto LABEL_78;
            }

            v39 = 0;
            *v38 = *(a1 + 4904);
            v38[1] = 0;
            *(a1 + 4904) = v38;
          }

          v38[1] = v39 + 32;
          v42 = v38 + v39;
          v18 = v42 + 16;
          v42[24] = 46;
          *(v42 + 25) = *(v42 + 25) & 0xF000 | 0x540;
          *(v42 + 2) = &unk_2868A5F08;
          *(v42 + 4) = v36;
          v41 = *a1;
          if (*a1 == *(a1 + 8))
          {
            goto LABEL_44;
          }
        }

        if (*v41 == 69)
        {
          goto LABEL_72;
        }

LABEL_44:
        v36 = v37;
        if (!v37)
        {
          return;
        }
      }
    }

    v18 = 0;
    while (1)
    {
      if (v18)
      {
        v49 = *(a1 + 4904);
        v50 = v49[1];
        if ((v50 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v49 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v49)
          {
            goto LABEL_78;
          }

          v50 = 0;
          *v49 = *(a1 + 4904);
          v49[1] = 0;
          *(a1 + 4904) = v49;
        }

        v49[1] = v50 + 32;
        v51 = v49 + v50;
        v51[24] = 23;
        *(v51 + 25) = *(v51 + 25) & 0xF000 | 0x540;
        *(v51 + 2) = &unk_2868A5D28;
        *(v51 + 4) = v18;
        *(v51 + 5) = v36;
        v18 = v51 + 16;
        v41 = *a1;
        if (*a1 == *(a1 + 8))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v18 = v36;
        v41 = *a1;
        if (*a1 == *(a1 + 8))
        {
          goto LABEL_63;
        }
      }

      if (*v41 == 69)
      {
LABEL_72:
        *a1 = v41 + 1;
        goto LABEL_73;
      }

LABEL_63:
      v36 = v48;
      if (!v48)
      {
        return;
      }
    }
  }

LABEL_19:
  v58 = v16;
  if (v16)
  {
    v18 = v16;
    if (*(a1 + 8) == *a1 || **a1 != 73)
    {
LABEL_73:
      if (v52)
      {
        v53 = v52;
        v54 = *(a1 + 4904);
        v55 = v54[1];
        if ((v55 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v54 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v54)
          {
            goto LABEL_78;
          }

          v55 = 0;
          *v54 = *(a1 + 4904);
          v54[1] = 0;
          *(a1 + 4904) = v54;
        }

        v54[1] = v55 + 32;
        v56 = v54 + v55;
        v56[24] = 23;
        *(v56 + 25) = *(v56 + 25) & 0xF000 | 0x540;
        *(v56 + 2) = &unk_2868A5D28;
        *(v56 + 4) = v18;
        *(v56 + 5) = v53;
      }
    }

    else
    {
      v57 = v19;
      if (v19)
      {
        goto LABEL_73;
      }
    }
  }
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::BinaryExpr,llvm::itanium_demangle::Node *&,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec &>(uint64_t a1, uint64_t *a2, __n128 *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  v13 = *a2;
  v14 = *a4;
  v15 = *a5;
  v12[24] = 54;
  v16 = *(v12 + 25) & 0xF000 | v15 & 0x3F;
  *(v12 + 2) = &unk_2868A4900;
  *(v12 + 4) = v13;
  result = *a3;
  *(v12 + 25) = v16 | 0x540;
  *(v12 + 40) = result;
  *(v12 + 7) = v14;
  return result;
}

char *llvm::itanium_demangle::BinaryExpr::printLeft(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    goto LABEL_2;
  }

  v35 = *(a1 + 24);
  v36 = *(a1 + 32);
  if (v36 != 2)
  {
    if (v36 == 1 && *v35 == 62)
    {
      goto LABEL_44;
    }

LABEL_2:
    v4 = 0;
    goto LABEL_3;
  }

  if (*v35 != 15934)
  {
    goto LABEL_2;
  }

LABEL_44:
  *(a2 + 32) = 1;
  v37 = *a2;
  v38 = *(a2 + 8);
  v39 = v38 + 1;
  v40 = *(a2 + 16);
  if (v38 + 1 > v40)
  {
    v41 = v38 + 993;
    if (2 * v40 <= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = 2 * v40;
    }

    *(a2 + 16) = v42;
    v37 = malloc_type_realloc(v37, v42, 0x100004077774924uLL);
    *a2 = v37;
    if (!v37)
    {
      goto LABEL_51;
    }

    v38 = *(a2 + 8);
    v39 = v38 + 1;
  }

  *(a2 + 8) = v39;
  v37[v38] = 40;
  v4 = 1;
LABEL_3:
  v5 = *(a1 + 9);
  v6 = v5 << 10;
  v7 = (v5 << 10);
  v8 = v5 << 26 >> 26;
  if (v7 == 17408)
  {
    v9 = 15;
  }

  else
  {
    v9 = v8;
  }

  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, v9, v7 != 17408);
  if (*(a1 + 32) == 1)
  {
    v10 = *(a1 + 24);
    if (*v10 == 44)
    {
      v11 = 1;
      v12 = *a2;
      v13 = *(a2 + 8);
      v14 = v13 + 1;
      v15 = *(a2 + 16);
      if (v13 + 1 <= v15)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  if (v17 + 1 > v18)
  {
    v19 = v17 + 993;
    v20 = 2 * v18;
    if (v20 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    *(a2 + 16) = v21;
    v16 = malloc_type_realloc(v16, v21, 0x100004077774924uLL);
    *a2 = v16;
    if (!v16)
    {
      goto LABEL_51;
    }

    v17 = *(a2 + 8);
  }

  v16[v17] = 32;
  v22 = *(a2 + 8) + 1;
  *(a2 + 8) = v22;
  v11 = *(a1 + 32);
  if (v11)
  {
    v10 = *(a1 + 24);
    v12 = *a2;
    v13 = *(a2 + 8);
    v14 = v13 + v11;
    v15 = *(a2 + 16);
    if (v13 + v11 <= v15)
    {
LABEL_23:
      memcpy(&v12[v13], v10, v11);
      v22 = *(a2 + 8) + v11;
      *(a2 + 8) = v22;
      goto LABEL_24;
    }

LABEL_18:
    if (2 * v15 <= v14 + 992)
    {
      v23 = v14 + 992;
    }

    else
    {
      v23 = 2 * v15;
    }

    *(a2 + 16) = v23;
    v12 = malloc_type_realloc(v12, v23, 0x100004077774924uLL);
    *a2 = v12;
    if (!v12)
    {
      goto LABEL_51;
    }

    v13 = *(a2 + 8);
    goto LABEL_23;
  }

LABEL_24:
  v24 = *(a2 + 16);
  v25 = *a2;
  if (v22 + 1 > v24)
  {
    v26 = v22 + 993;
    v27 = 2 * v24;
    if (v27 <= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    *(a2 + 16) = v28;
    v25 = malloc_type_realloc(v25, v28, 0x100004077774924uLL);
    *a2 = v25;
    if (!v25)
    {
      goto LABEL_51;
    }

    v22 = *(a2 + 8);
  }

  v25[v22] = 32;
  ++*(a2 + 8);
  result = llvm::itanium_demangle::Node::printAsOperand(*(a1 + 40), a2, *(a1 + 9) << 26 >> 26, v6 == 17408);
  if (!v4)
  {
    return result;
  }

  --*(a2 + 32);
  result = *a2;
  v30 = *(a2 + 8);
  v31 = v30 + 1;
  v32 = *(a2 + 16);
  if (v30 + 1 > v32)
  {
    v33 = v30 + 993;
    if (2 * v32 <= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = 2 * v32;
    }

    *(a2 + 16) = v34;
    result = malloc_type_realloc(result, v34, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v30 = *(a2 + 8);
      v31 = v30 + 1;
      goto LABEL_37;
    }

LABEL_51:
    abort();
  }

LABEL_37:
  *(a2 + 8) = v31;
  result[v30] = 41;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::PrefixExpr,std::string_view &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node::Prec &>(uint64_t a1, __n128 *a2, uint64_t *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 48;
  v10 = v8 + v9;
  v11 = *a3;
  v12 = *a4;
  v10[24] = 66;
  v13 = *(v10 + 25) & 0xF000 | v12 & 0x3F;
  *(v10 + 2) = &unk_2868A4978;
  result = *a2;
  *(v10 + 25) = v13 | 0x540;
  *(v10 + 2) = result;
  *(v10 + 6) = v11;
  return result;
}

void *llvm::itanium_demangle::PrefixExpr::printLeft(uint64_t a1, char **a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = (v8 + 992);
      }

      else
      {
        v10 = 2 * v9;
      }

      a2[2] = v10;
      v6 = malloc_type_realloc(v6, v10, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 9) << 26 >> 26;

  return llvm::itanium_demangle::Node::printAsOperand(v11, a2, v12, 0);
}

void *llvm::itanium_demangle::PostfixExpr::printLeft(uint64_t a1, char **a2)
{
  result = llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 1);
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = *a2;
    v8 = a2[1];
    v9 = &v8[v5];
    v10 = a2[2];
    if (&v8[v5] > v10)
    {
      if (2 * v10 <= (v9 + 992))
      {
        v11 = (v9 + 992);
      }

      else
      {
        v11 = 2 * v10;
      }

      a2[2] = v11;
      v7 = malloc_type_realloc(v7, v11, 0x100004077774924uLL);
      *a2 = v7;
      if (!v7)
      {
        abort();
      }

      v8 = a2[1];
    }

    result = memcpy(&v8[v7], v6, v5);
    a2[1] += v5;
  }

  return result;
}

void *llvm::itanium_demangle::ArraySubscriptExpr::printLeft(uint64_t a1, uint64_t a2)
{
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 0);
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_14;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  *(v4 + v5) = 91;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 24), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v11 = *(a2 + 8);
  v12 = v11 + 1;
  v13 = *(a2 + 16);
  if (v11 + 1 > v13)
  {
    v14 = v11 + 993;
    if (2 * v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 2 * v13;
    }

    *(a2 + 16) = v15;
    result = malloc_type_realloc(result, v15, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = *(a2 + 8);
      v12 = v11 + 1;
      goto LABEL_13;
    }

LABEL_14:
    abort();
  }

LABEL_13:
  *(a2 + 8) = v12;
  *(result + v11) = 93;
  return result;
}

void *llvm::itanium_demangle::MemberExpr::printLeft(uint64_t a1, char **a2)
{
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 1);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = (v8 + 992);
      }

      else
      {
        v10 = 2 * v9;
      }

      a2[2] = v10;
      v6 = malloc_type_realloc(v6, v10, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 9) << 26 >> 26;

  return llvm::itanium_demangle::Node::printAsOperand(v11, a2, v12, 0);
}

char *llvm::itanium_demangle::NewExpr::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 56) == 1)
  {
    v5 = *(a2 + 16);
    v6 = *a2;
    if (v4 + 2 > v5)
    {
      v7 = v4 + 994;
      v8 = 2 * v5;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      *(a2 + 16) = v9;
      v6 = malloc_type_realloc(v6, v9, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        goto LABEL_88;
      }

      v4 = *(a2 + 8);
    }

    *&v6[v4] = 14906;
    v4 = *(a2 + 8) + 2;
    *(a2 + 8) = v4;
  }

  v10 = *(a2 + 16);
  v11 = *a2;
  if (v4 + 3 > v10)
  {
    v12 = v4 + 995;
    v13 = 2 * v10;
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    *(a2 + 16) = v14;
    v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_88;
    }

    v4 = *(a2 + 8);
  }

  v15 = &v11[v4];
  v15[2] = 119;
  *v15 = 25966;
  v16 = *(a2 + 8);
  v17 = v16 + 3;
  *(a2 + 8) = v16 + 3;
  if (*(a1 + 57) == 1)
  {
    v18 = *(a2 + 16);
    v19 = *a2;
    if (v16 + 5 > v18)
    {
      if (2 * v18 <= v16 + 997)
      {
        v20 = v16 + 997;
      }

      else
      {
        v20 = 2 * v18;
      }

      *(a2 + 16) = v20;
      v19 = malloc_type_realloc(v19, v20, 0x100004077774924uLL);
      *a2 = v19;
      if (!v19)
      {
        goto LABEL_88;
      }

      v17 = *(a2 + 8);
    }

    *&v19[v17] = 23899;
    v17 = *(a2 + 8) + 2;
    *(a2 + 8) = v17;
  }

  if (*(a1 + 24))
  {
    ++*(a2 + 32);
    v21 = v17 + 1;
    v22 = *(a2 + 16);
    v23 = *a2;
    if (v17 + 1 > v22)
    {
      v24 = v17 + 993;
      if (2 * v22 <= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = 2 * v22;
      }

      *(a2 + 16) = v25;
      v23 = malloc_type_realloc(v23, v25, 0x100004077774924uLL);
      *a2 = v23;
      if (!v23)
      {
        goto LABEL_88;
      }

      v17 = *(a2 + 8);
      v21 = v17 + 1;
    }

    *(a2 + 8) = v21;
    v23[v17] = 40;
    v26 = *(a2 + 8);
    if (*(a1 + 24))
    {
      v27 = 0;
      v28 = 1;
      while (1)
      {
        v29 = v26;
        if ((v28 & 1) == 0)
        {
          v30 = *(a2 + 16);
          v31 = *a2;
          if (v26 + 2 <= v30)
          {
            v34 = v26;
          }

          else
          {
            v32 = 2 * v30;
            if (v32 <= v26 + 994)
            {
              v33 = v26 + 994;
            }

            else
            {
              v33 = v32;
            }

            *(a2 + 16) = v33;
            v31 = malloc_type_realloc(v31, v33, 0x100004077774924uLL);
            *a2 = v31;
            if (!v31)
            {
              goto LABEL_88;
            }

            v34 = *(a2 + 8);
          }

          *&v31[v34] = 8236;
          v29 = *(a2 + 8) + 2;
          *(a2 + 8) = v29;
        }

        llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 16) + 8 * v27), a2, 18, 0);
        if (v29 == *(a2 + 8))
        {
          *(a2 + 8) = v26;
          if (++v27 == *(a1 + 24))
          {
            break;
          }
        }

        else
        {
          v28 = 0;
          v26 = *(a2 + 8);
          if (++v27 == *(a1 + 24))
          {
            break;
          }
        }
      }
    }

    --*(a2 + 32);
    v35 = v26 + 1;
    v36 = *(a2 + 16);
    v37 = *a2;
    if (v26 + 1 > v36)
    {
      v38 = 2 * v36;
      if (v38 <= v26 + 993)
      {
        v39 = v26 + 993;
      }

      else
      {
        v39 = v38;
      }

      *(a2 + 16) = v39;
      v37 = malloc_type_realloc(v37, v39, 0x100004077774924uLL);
      *a2 = v37;
      if (!v37)
      {
        goto LABEL_88;
      }

      v26 = *(a2 + 8);
      v35 = v26 + 1;
    }

    *(a2 + 8) = v35;
    v37[v26] = 41;
    v17 = *(a2 + 8);
  }

  v40 = *(a2 + 16);
  v41 = *a2;
  if (v17 + 1 > v40)
  {
    v42 = v17 + 993;
    v43 = 2 * v40;
    if (v43 <= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v43;
    }

    *(a2 + 16) = v44;
    v41 = malloc_type_realloc(v41, v44, 0x100004077774924uLL);
    *a2 = v41;
    if (!v41)
    {
      goto LABEL_88;
    }

    v17 = *(a2 + 8);
  }

  v41[v17] = 32;
  ++*(a2 + 8);
  v45 = *(a1 + 32);
  result = (*(*v45 + 32))(v45, a2);
  if ((*(v45 + 9) & 0xC0) != 0x40)
  {
    result = (*(*v45 + 40))(v45, a2);
  }

  if (*(a1 + 48))
  {
    ++*(a2 + 32);
    v47 = *a2;
    v48 = *(a2 + 8);
    v49 = v48 + 1;
    v50 = *(a2 + 16);
    if (v48 + 1 > v50)
    {
      v51 = v48 + 993;
      if (2 * v50 <= v51)
      {
        v52 = v51;
      }

      else
      {
        v52 = 2 * v50;
      }

      *(a2 + 16) = v52;
      v47 = malloc_type_realloc(v47, v52, 0x100004077774924uLL);
      *a2 = v47;
      if (!v47)
      {
        goto LABEL_88;
      }

      v48 = *(a2 + 8);
      v49 = v48 + 1;
    }

    *(a2 + 8) = v49;
    v47[v48] = 40;
    v53 = *(a2 + 8);
    if (*(a1 + 48))
    {
      v54 = 0;
      v55 = 1;
      while (1)
      {
        v56 = v53;
        if ((v55 & 1) == 0)
        {
          v57 = *(a2 + 16);
          v58 = *a2;
          if (v53 + 2 <= v57)
          {
            v61 = v53;
          }

          else
          {
            v59 = 2 * v57;
            if (v59 <= v53 + 994)
            {
              v60 = v53 + 994;
            }

            else
            {
              v60 = v59;
            }

            *(a2 + 16) = v60;
            v58 = malloc_type_realloc(v58, v60, 0x100004077774924uLL);
            *a2 = v58;
            if (!v58)
            {
              goto LABEL_88;
            }

            v61 = *(a2 + 8);
          }

          *&v58[v61] = 8236;
          v56 = *(a2 + 8) + 2;
          *(a2 + 8) = v56;
        }

        llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 40) + 8 * v54), a2, 18, 0);
        if (v56 == *(a2 + 8))
        {
          *(a2 + 8) = v53;
          if (++v54 == *(a1 + 48))
          {
            break;
          }
        }

        else
        {
          v55 = 0;
          v53 = *(a2 + 8);
          if (++v54 == *(a1 + 48))
          {
            break;
          }
        }
      }
    }

    --*(a2 + 32);
    v62 = v53 + 1;
    v63 = *(a2 + 16);
    result = *a2;
    if (v53 + 1 <= v63)
    {
      goto LABEL_86;
    }

    v64 = 2 * v63;
    if (v64 <= v53 + 993)
    {
      v65 = v53 + 993;
    }

    else
    {
      v65 = v64;
    }

    *(a2 + 16) = v65;
    result = malloc_type_realloc(result, v65, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v53 = *(a2 + 8);
      v62 = v53 + 1;
LABEL_86:
      *(a2 + 8) = v62;
      result[v53] = 41;
      return result;
    }

LABEL_88:
    abort();
  }

  return result;
}

uint64_t llvm::itanium_demangle::DeleteExpr::printLeft(uint64_t a1, char **a2)
{
  v4 = a2[1];
  if (*(a1 + 24) == 1)
  {
    v5 = a2[2];
    v6 = *a2;
    if (v4 + 2 > v5)
    {
      v7 = v4 + 994;
      v8 = 2 * v5;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      a2[2] = v9;
      v6 = malloc_type_realloc(v6, v9, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        goto LABEL_33;
      }

      v4 = a2[1];
    }

    *&v6[v4] = 14906;
    v4 = (a2[1] + 2);
    a2[1] = v4;
  }

  v10 = a2[2];
  v11 = *a2;
  if (v4 + 6 > v10)
  {
    v12 = v4 + 998;
    v13 = 2 * v10;
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    a2[2] = v14;
    v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_33;
    }

    v4 = a2[1];
  }

  v15 = &v11[v4];
  *(v15 + 2) = 25972;
  *v15 = 1701602660;
  v16 = a2[1];
  v17 = (v16 + 6);
  a2[1] = v16 + 6;
  if (*(a1 + 25) == 1)
  {
    v18 = a2[2];
    v19 = *a2;
    if ((v16 + 8) > v18)
    {
      if (2 * v18 <= (v16 + 1000))
      {
        v20 = (v16 + 1000);
      }

      else
      {
        v20 = 2 * v18;
      }

      a2[2] = v20;
      v19 = malloc_type_realloc(v19, v20, 0x100004077774924uLL);
      *a2 = v19;
      if (!v19)
      {
        goto LABEL_33;
      }

      v17 = a2[1];
    }

    *&v19[v17] = 23899;
    v17 = (a2[1] + 2);
    a2[1] = v17;
  }

  v21 = v17 + 1;
  v22 = a2[2];
  v23 = *a2;
  if (v17 + 1 <= v22)
  {
    goto LABEL_29;
  }

  v24 = v17 + 993;
  if (2 * v22 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = 2 * v22;
  }

  a2[2] = v25;
  v23 = malloc_type_realloc(v23, v25, 0x100004077774924uLL);
  *a2 = v23;
  if (!v23)
  {
LABEL_33:
    abort();
  }

  v17 = a2[1];
  v21 = v17 + 1;
LABEL_29:
  a2[1] = v21;
  v23[v17] = 32;
  v26 = *(a1 + 16);
  result = (*(*v26 + 32))(v26, a2);
  if ((*(v26 + 9) & 0xC0) != 0x40)
  {
    v28 = *(*v26 + 40);

    return v28(v26, a2);
  }

  return result;
}

char *llvm::itanium_demangle::CallExpr::printLeft(void *a1, uint64_t a2)
{
  v4 = a1[2];
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  ++*(a2 + 32);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = v6 + 1;
  v8 = *(a2 + 16);
  if (v6 + 1 > v8)
  {
    v9 = v6 + 993;
    if (2 * v8 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 2 * v8;
    }

    *(a2 + 16) = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_30;
    }

    v6 = *(a2 + 8);
    v7 = v6 + 1;
  }

  *(a2 + 8) = v7;
  v5[v6] = 40;
  v11 = *(a2 + 8);
  if (a1[4])
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = v11;
      if ((v13 & 1) == 0)
      {
        v15 = *(a2 + 16);
        v16 = *a2;
        if (v11 + 2 <= v15)
        {
          v19 = v11;
        }

        else
        {
          v17 = 2 * v15;
          if (v17 <= v11 + 994)
          {
            v18 = v11 + 994;
          }

          else
          {
            v18 = v17;
          }

          *(a2 + 16) = v18;
          v16 = malloc_type_realloc(v16, v18, 0x100004077774924uLL);
          *a2 = v16;
          if (!v16)
          {
            goto LABEL_30;
          }

          v19 = *(a2 + 8);
        }

        *&v16[v19] = 8236;
        v14 = *(a2 + 8) + 2;
        *(a2 + 8) = v14;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(a1[3] + 8 * v12), a2, 18, 0);
      if (v14 == *(a2 + 8))
      {
        *(a2 + 8) = v11;
        if (++v12 == a1[4])
        {
          break;
        }
      }

      else
      {
        v13 = 0;
        v11 = *(a2 + 8);
        if (++v12 == a1[4])
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v20 = v11 + 1;
  v21 = *(a2 + 16);
  result = *a2;
  if (v11 + 1 > v21)
  {
    v23 = 2 * v21;
    if (v23 <= v11 + 993)
    {
      v24 = v11 + 993;
    }

    else
    {
      v24 = v23;
    }

    *(a2 + 16) = v24;
    result = malloc_type_realloc(result, v24, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = *(a2 + 8);
      v20 = v11 + 1;
      goto LABEL_29;
    }

LABEL_30:
    abort();
  }

LABEL_29:
  *(a2 + 8) = v20;
  result[v11] = 41;
  return result;
}

char *llvm::itanium_demangle::ConversionExpr::printLeft(void *a1, uint64_t a2)
{
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_42;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v4[v5] = 40;
  v10 = a1[2];
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  --*(a2 + 32);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = v12 + 1;
  v14 = *(a2 + 16);
  if (v12 + 1 > v14)
  {
    v15 = v12 + 993;
    if (2 * v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = 2 * v14;
    }

    *(a2 + 16) = v16;
    v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_42;
    }

    v12 = *(a2 + 8);
    v13 = v12 + 1;
  }

  *(a2 + 8) = v13;
  v11[v12] = 41;
  ++*(a2 + 32);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = v18 + 1;
  v20 = *(a2 + 16);
  if (v18 + 1 > v20)
  {
    v21 = v18 + 993;
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2 * v20;
    }

    *(a2 + 16) = v22;
    v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_42;
    }

    v18 = *(a2 + 8);
    v19 = v18 + 1;
  }

  *(a2 + 8) = v19;
  v17[v18] = 40;
  v23 = *(a2 + 8);
  if (a1[4])
  {
    v24 = 0;
    v25 = 1;
    while (1)
    {
      v26 = v23;
      if ((v25 & 1) == 0)
      {
        v27 = *(a2 + 16);
        v28 = *a2;
        if (v23 + 2 <= v27)
        {
          v31 = v23;
        }

        else
        {
          v29 = 2 * v27;
          if (v29 <= v23 + 994)
          {
            v30 = v23 + 994;
          }

          else
          {
            v30 = v29;
          }

          *(a2 + 16) = v30;
          v28 = malloc_type_realloc(v28, v30, 0x100004077774924uLL);
          *a2 = v28;
          if (!v28)
          {
            goto LABEL_42;
          }

          v31 = *(a2 + 8);
        }

        *&v28[v31] = 8236;
        v26 = *(a2 + 8) + 2;
        *(a2 + 8) = v26;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(a1[3] + 8 * v24), a2, 18, 0);
      if (v26 == *(a2 + 8))
      {
        *(a2 + 8) = v23;
        if (++v24 == a1[4])
        {
          break;
        }
      }

      else
      {
        v25 = 0;
        v23 = *(a2 + 8);
        if (++v24 == a1[4])
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v32 = v23 + 1;
  v33 = *(a2 + 16);
  result = *a2;
  if (v23 + 1 > v33)
  {
    v35 = 2 * v33;
    if (v35 <= v23 + 993)
    {
      v36 = v23 + 993;
    }

    else
    {
      v36 = v35;
    }

    *(a2 + 16) = v36;
    result = malloc_type_realloc(result, v36, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v23 = *(a2 + 8);
      v32 = v23 + 1;
      goto LABEL_41;
    }

LABEL_42:
    abort();
  }

LABEL_41:
  *(a2 + 8) = v32;
  result[v23] = 41;
  return result;
}

void *llvm::itanium_demangle::ConditionalExpr::printLeft(uint64_t a1, char **a2)
{
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 0);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 3) > v6)
  {
    v7 = (v5 + 995);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  v10[2] = 32;
  *v10 = 16160;
  a2[1] += 3;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 24), a2, 19, 0);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 3) <= v13)
  {
    goto LABEL_13;
  }

  v14 = (v12 + 995);
  v15 = 2 * v13;
  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  a2[2] = v16;
  v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
  *a2 = v11;
  if (!v11)
  {
LABEL_16:
    abort();
  }

  v12 = a2[1];
LABEL_13:
  v17 = &v12[v11];
  v17[2] = 32;
  *v17 = 14880;
  a2[1] += 3;
  v18 = *(a1 + 32);

  return llvm::itanium_demangle::Node::printAsOperand(v18, a2, 17, 1);
}

char *llvm::itanium_demangle::CastExpr::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  if (v4)
  {
    v6 = *(a1 + 16);
    v7 = v5 + v4;
    v8 = *(a2 + 16);
    v9 = *a2;
    if (v5 + v4 > v8)
    {
      if (2 * v8 <= v7 + 992)
      {
        v10 = v7 + 992;
      }

      else
      {
        v10 = 2 * v8;
      }

      *(a2 + 16) = v10;
      v9 = malloc_type_realloc(v9, v10, 0x100004077774924uLL);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_34;
      }

      v5 = *(a2 + 8);
    }

    memcpy(&v9[v5], v6, v4);
    v5 = *(a2 + 8) + v4;
    *(a2 + 8) = v5;
  }

  v11 = *(a2 + 32);
  *(a2 + 32) = 0;
  v12 = *(a2 + 16);
  v13 = *a2;
  if (v5 + 1 > v12)
  {
    v14 = v5 + 993;
    v15 = 2 * v12;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    *(a2 + 16) = v16;
    v13 = malloc_type_realloc(v13, v16, 0x100004077774924uLL);
    *a2 = v13;
    if (!v13)
    {
      goto LABEL_34;
    }

    v5 = *(a2 + 8);
  }

  v13[v5] = 60;
  ++*(a2 + 8);
  (*(**(a1 + 32) + 32))(*(a1 + 32), a2);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  if (v18 + 1 > v19)
  {
    v20 = v18 + 993;
    v21 = 2 * v19;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    *(a2 + 16) = v22;
    v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_34;
    }

    v18 = *(a2 + 8);
  }

  v17[v18] = 62;
  v23 = *a2;
  v24 = *(a2 + 8);
  v25 = v24 + 1;
  *(a2 + 8) = v24 + 1;
  *(a2 + 32) = v11 + 1;
  v26 = v24 + 2;
  v27 = *(a2 + 16);
  if (v24 + 2 > v27)
  {
    if (2 * v27 <= v24 + 994)
    {
      v28 = v24 + 994;
    }

    else
    {
      v28 = 2 * v27;
    }

    *(a2 + 16) = v28;
    v23 = malloc_type_realloc(v23, v28, 0x100004077774924uLL);
    *a2 = v23;
    if (!v23)
    {
      goto LABEL_34;
    }

    v25 = *(a2 + 8);
    v26 = v25 + 1;
  }

  *(a2 + 8) = v26;
  v23[v25] = 40;
  llvm::itanium_demangle::Node::printAsOperand(*(a1 + 40), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v30 = *(a2 + 8);
  v31 = v30 + 1;
  v32 = *(a2 + 16);
  if (v30 + 1 > v32)
  {
    v33 = v30 + 993;
    if (2 * v32 <= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = 2 * v32;
    }

    *(a2 + 16) = v34;
    result = malloc_type_realloc(result, v34, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v30 = *(a2 + 8);
      v31 = v30 + 1;
      goto LABEL_33;
    }

LABEL_34:
    abort();
  }

LABEL_33:
  *(a2 + 8) = v31;
  result[v30] = 41;
  return result;
}

char *llvm::itanium_demangle::EnclosingExpr::printLeft(void *a1, char **a2)
{
  v4 = a1[3];
  v5 = a2[1];
  if (v4)
  {
    v6 = a1[2];
    v7 = v5 + v4;
    v8 = a2[2];
    v9 = *a2;
    if (v5 + v4 > v8)
    {
      if (2 * v8 <= v7 + 992)
      {
        v10 = v7 + 992;
      }

      else
      {
        v10 = 2 * v8;
      }

      a2[2] = v10;
      v9 = malloc_type_realloc(v9, v10, 0x100004077774924uLL);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_32;
      }

      v5 = a2[1];
    }

    memcpy(&v9[v5], v6, v4);
    v5 = &a2[1][v4];
    a2[1] = v5;
  }

  ++*(a2 + 8);
  v11 = v5 + 1;
  v12 = a2[2];
  v13 = *a2;
  if (v5 + 1 > v12)
  {
    v14 = v5 + 993;
    if (2 * v12 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 2 * v12;
    }

    a2[2] = v15;
    v13 = malloc_type_realloc(v13, v15, 0x100004077774924uLL);
    *a2 = v13;
    if (!v13)
    {
      goto LABEL_32;
    }

    v5 = a2[1];
    v11 = v5 + 1;
  }

  a2[1] = v11;
  v13[v5] = 40;
  v16 = a1[4];
  (*(*v16 + 32))(v16, a2);
  if ((*(v16 + 9) & 0xC0) != 0x40)
  {
    (*(*v16 + 40))(v16, a2);
  }

  --*(a2 + 8);
  result = *a2;
  v18 = a2[1];
  v19 = v18 + 1;
  v20 = a2[2];
  if ((v18 + 1) > v20)
  {
    v21 = (v18 + 993);
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2 * v20;
    }

    a2[2] = v22;
    result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      goto LABEL_32;
    }

    v18 = a2[1];
    v19 = v18 + 1;
  }

  a2[1] = v19;
  v18[result] = 41;
  v23 = a1[6];
  if (!v23)
  {
    return result;
  }

  v24 = a1[5];
  v25 = *a2;
  v26 = a2[1];
  v27 = &v26[v23];
  v28 = a2[2];
  if (&v26[v23] > v28)
  {
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
      goto LABEL_30;
    }

LABEL_32:
    abort();
  }

LABEL_30:
  result = memcpy(&v26[v25], v24, v23);
  a2[1] += v23;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseIntegerLiteral(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = *a1;
  if (*v4 == 110)
  {
    v5 = v4 + 1;
    *a1 = v4 + 1;
  }

  if (v3 == v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 < 0)
  {
    return 0;
  }

  v7 = MEMORY[0x277D85DE0];
  if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) == 0)
  {
    return 0;
  }

  while (1)
  {
    v9 = *v5;
    if (v9 < 0 || (*(v7 + 4 * v9 + 60) & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v5;
    if (v5 == v3)
    {
      v10 = v3;
      goto LABEL_13;
    }
  }

  v10 = v5;
LABEL_13:
  v11 = v10 - v4;
  if (v10 == v4 || v5 == v3 || *v5 != 69)
  {
    return 0;
  }

  *a1 = v5 + 1;
  v12 = *(a1 + 4904);
  v13 = v12[1];
  if ((v13 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v15 = a2;
    v16 = a3;
    v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v17)
    {
      std::terminate();
    }

    v12 = v17;
    v13 = 0;
    *v17 = *(a1 + 4904);
    v17[1] = 0;
    *(a1 + 4904) = v17;
    a3 = v16;
    a2 = v15;
  }

  v12[1] = v13 + 48;
  v18 = v12 + v13;
  v18[24] = 77;
  *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x540;
  *(v18 + 2) = &unk_2868A4EA0;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  *(v18 + 6) = v4;
  *(v18 + 7) = v11;
  return v18 + 16;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::BoolExpr,int>(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4064) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v6 = v5 + 16;
  v4[1] = v6;
  result = v4 + v6;
  LOBYTE(v6) = *a2 != 0;
  result[8] = 73;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = &unk_2868A4F18;
  result[11] = v6;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::StringLiteral,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 74;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A50F8;
  *(v6 + 4) = v8;
  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnnamedTypeName(unsigned __int8 **a1, size_t size)
{
  if (size)
  {
    a1[84] = a1[83];
  }

  v4 = *a1;
  v3 = a1[1];
  if ((v3 - *a1) < 2)
  {
    return;
  }

  if (*v4 != 29781)
  {
    if (*v4 != 27733)
    {
      if (*v4 != 25173)
      {
        return;
      }

      v5 = v4 + 2;
      *a1 = v5;
      if (v3 != v5)
      {
        v6 = *v5;
        if ((v6 & 0x8000000000000000) == 0)
        {
          v7 = MEMORY[0x277D85DE0];
          if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) != 0)
          {
            do
            {
              v8 = *v5;
              if (v8 < 0)
              {
                break;
              }

              if ((*(v7 + 4 * v8 + 60) & 0x400) == 0)
              {
                break;
              }

              *a1 = ++v5;
            }

            while (v5 != v3);
          }
        }
      }

      if (v5 == v3 || *v5 != 95)
      {
        return;
      }

      *a1 = v5 + 1;
      v9 = a1[613];
      v10 = *(v9 + 1);
      if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_19:
        *(v9 + 1) = v10 + 32;
        v11 = &v9[v10];
        v11[24] = 8;
        *(v11 + 25) = *(v11 + 25) & 0xF000 | 0x540;
        *(v11 + 2) = &unk_2868A4798;
        *(v11 + 4) = "'block-literal'";
        *(v11 + 5) = 15;
        return;
      }

      v9 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v9)
      {
        v10 = 0;
        *v9 = a1[613];
        *(v9 + 1) = 0;
        a1[613] = v9;
        goto LABEL_19;
      }

LABEL_113:
      std::terminate();
    }

    v20 = v4 + 2;
    *a1 = v20;
    v21 = a1[84];
    v22 = a1[83];
    v23 = v21 - v22;
    v24 = a1[98];
    a1[98] = ((v21 - v22) >> 3);
    v81 = a1;
    v82 = (v21 - v22) >> 3;
    v83[0] = v84;
    v83[1] = v84;
    v75 = v24;
    v83[2] = &v85;
    memset(v84, 0, sizeof(v84));
    if (v21 == a1[85])
    {
      if (v22 == a1 + 86)
      {
        v25 = malloc_type_malloc(2 * v23, 0x2004093837F09uLL);
        if (!v25)
        {
          goto LABEL_112;
        }

        v29 = a1[83];
        v30 = a1[84];
        if (v30 != v29)
        {
          v31 = v25;
          memmove(v25, v29, v30 - v29);
          v25 = v31;
        }

        a1[83] = v25;
      }

      else
      {
        v25 = malloc_type_realloc(v22, 2 * v23, 0x2004093837F09uLL);
        a1[83] = v25;
        if (!v25)
        {
LABEL_112:
          abort();
        }
      }

      v21 = &v25[v23];
      a1[85] = &v25[8 * (v23 >> 2)];
      v20 = *a1;
      v3 = a1[1];
    }

    *v21 = v83;
    a1[84] = v21 + 8;
    v33 = a1[2];
    v32 = a1[3];
    for (i = v3 - v20; i; i = a1[1] - *a1)
    {
      if (*v20 != 84)
      {
        break;
      }

      v38 = i < 2 ? 0 : v20[1];
      v39 = memchr("yptnk", v38, 5uLL);
      if (!v39 || v39 - "yptnk" == -1)
      {
        break;
      }

      if (!v37)
      {
        goto LABEL_109;
      }

      v36 = a1[3];
      if (v36 == a1[4])
      {
        v40 = v37;
        v41 = a1[2];
        v42 = v36 - v41;
        if (v41 == a1 + 5)
        {
          v35 = malloc_type_malloc(2 * (v36 - v41), 0x2004093837F09uLL);
          if (!v35)
          {
            goto LABEL_112;
          }

          v43 = a1[2];
          v44 = a1[3];
          if (v44 != v43)
          {
            v45 = v35;
            memmove(v35, v43, v44 - v43);
            v35 = v45;
          }

          a1[2] = v35;
        }

        else
        {
          v35 = malloc_type_realloc(v41, 2 * (v36 - v41), 0x2004093837F09uLL);
          a1[2] = v35;
          if (!v35)
          {
            goto LABEL_112;
          }
        }

        v36 = &v35[v42];
        a1[4] = &v35[8 * (v42 >> 2)];
        v37 = v40;
      }

      *v36 = v37;
      a1[3] = v36 + 8;
      v20 = *a1;
    }

    v46 = (v32 - v33) >> 3;
    v80.n128_u64[1] = v47;
    if (!v47)
    {
      a1[84] -= 8;
    }

    v79 = 0;
    v48 = *a1;
    v49 = a1[1];
    if (*a1 == v49)
    {
      goto LABEL_73;
    }

    if (*v48 == 81)
    {
      *a1 = v48 + 1;
      v50 = *(a1 + 778);
      *(a1 + 778) = 1;
      *(a1 + 778) = v50;
      v79 = v51;
      if (!v51)
      {
        goto LABEL_109;
      }

      v48 = *a1;
      v49 = a1[1];
    }

    if (v49 == v48 || *v48 != 118)
    {
LABEL_73:
      if (!v52)
      {
        goto LABEL_109;
      }

      while (1)
      {
        v53 = a1[3];
        if (v53 == a1[4])
        {
          v54 = v52;
          v55 = a1[2];
          v56 = v53 - v55;
          if (v55 == a1 + 5)
          {
            v57 = malloc_type_malloc(2 * (v53 - v55), 0x2004093837F09uLL);
            if (!v57)
            {
              goto LABEL_112;
            }

            v58 = a1[2];
            v59 = a1[3];
            if (v59 != v58)
            {
              v60 = v57;
              memmove(v57, v58, v59 - v58);
              v57 = v60;
            }

            a1[2] = v57;
          }

          else
          {
            v57 = malloc_type_realloc(v55, 2 * (v53 - v55), 0x2004093837F09uLL);
            a1[2] = v57;
            if (!v57)
            {
              goto LABEL_112;
            }
          }

          v53 = &v57[v56];
          a1[4] = &v57[8 * (v56 >> 2)];
          v52 = v54;
        }

        *v53 = v52;
        a1[3] = v53 + 8;
        if (a1[1] != *a1)
        {
          v61 = **a1;
          if (v61 == 69 || v61 == 81)
          {
            break;
          }
        }

        if (!v52)
        {
          goto LABEL_109;
        }
      }
    }

    else
    {
      *a1 = v48 + 1;
    }

    *(&v78 + 1) = v62;
    v77 = 0;
    v64 = *a1;
    v63 = a1[1];
    if (*a1 == v63)
    {
      goto LABEL_109;
    }

    if (*v64 == 81)
    {
      *a1 = v64 + 1;
      v65 = *(a1 + 778);
      *(a1 + 778) = 1;
      *(a1 + 778) = v65;
      v77 = v66;
      if (!v66)
      {
        goto LABEL_109;
      }

      v64 = *a1;
      v63 = a1[1];
    }

    if (v64 != v63 && *v64 == 69)
    {
      v67 = v64 + 1;
      *a1 = v67;
      if (v63 != v67)
      {
        v68 = *v67;
        if ((v68 & 0x8000000000000000) == 0)
        {
          v69 = MEMORY[0x277D85DE0];
          if ((*(MEMORY[0x277D85DE0] + 4 * v68 + 60) & 0x400) != 0)
          {
            v70 = v67;
            while (1)
            {
              v71 = *v70;
              if (v71 < 0 || (*(v69 + 4 * v71 + 60) & 0x400) == 0)
              {
                break;
              }

              *a1 = ++v70;
              if (v70 == v63)
              {
                v72 = v63;
                goto LABEL_108;
              }
            }

            v72 = v70;
LABEL_108:
            v73 = v67;
            v74 = v72 - v67;
            v67 = v70;
            *&v76 = v73;
            *(&v76 + 1) = v74;
            if (v70 == v63)
            {
              goto LABEL_109;
            }

            goto LABEL_98;
          }
        }
      }

      v76 = 0uLL;
      if (v67 != v63)
      {
LABEL_98:
        if (*v67 == 95)
        {
          *a1 = v67 + 1;
        }
      }
    }

LABEL_109:
    v81[84] = &v81[83][8 * v82];
    if (v83[0] != v84)
    {
      free(v83[0]);
    }

    a1[98] = v75;
    return;
  }

  v12 = v4 + 2;
  *a1 = v12;
  if (v3 == v12 || (v13 = *v12, v13 < 0) || (v14 = MEMORY[0x277D85DE0], (*(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x400) == 0))
  {
    v15 = 0;
    v16 = 0;
    if (v12 == v3)
    {
      return;
    }

LABEL_24:
    if (*v12 != 95)
    {
      return;
    }

    *a1 = v12 + 1;
    v17 = a1[613];
    v18 = *(v17 + 1);
    if ((v18 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
        goto LABEL_113;
      }

      v18 = 0;
      *v17 = a1[613];
      *(v17 + 1) = 0;
      a1[613] = v17;
    }

    *(v17 + 1) = v18 + 32;
    v19 = &v17[v18];
    v19[24] = 51;
    *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
    *(v19 + 2) = &unk_2868A5170;
    *(v19 + 4) = v15;
    *(v19 + 5) = v16;
    return;
  }

  v26 = v12;
  while (1)
  {
    v27 = *v26;
    if (v27 < 0 || (*(v14 + 4 * v27 + 60) & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v26;
    if (v26 == v3)
    {
      v28 = v3;
      goto LABEL_39;
    }
  }

  v28 = v26;
LABEL_39:
  v15 = v12;
  v16 = v28 - v12;
  v12 = v26;
  if (v26 != v3)
  {
    goto LABEL_24;
  }
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::LambdaExpr,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 75;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A5530;
  *(v6 + 4) = v8;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::EnumLiteral,llvm::itanium_demangle::Node *&,std::string_view &>(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 48;
  v8 = v6 + v7;
  v9 = *a2;
  v8[24] = 76;
  v10 = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = &unk_2868A55A8;
  *(v8 + 4) = v9;
  result = *a3;
  *(v8 + 25) = v10;
  *(v8 + 40) = result;
  return result;
}

void *llvm::itanium_demangle::IntegerLiteral::printLeft(void *result, char **a2)
{
  v3 = result;
  if (result[3] >= 4uLL)
  {
    ++*(a2 + 8);
    v4 = *a2;
    v5 = a2[1];
    v6 = v5 + 1;
    v7 = a2[2];
    if ((v5 + 1) > v7)
    {
      v8 = (v5 + 993);
      if (2 * v7 <= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = 2 * v7;
      }

      a2[2] = v9;
      v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
      *a2 = v4;
      if (!v4)
      {
        goto LABEL_57;
      }

      v5 = a2[1];
      v6 = v5 + 1;
    }

    a2[1] = v6;
    v5[v4] = 40;
    v10 = v3[3];
    v11 = a2[1];
    if (v10)
    {
      v12 = v3[2];
      v13 = v11 + v10;
      v14 = a2[2];
      v15 = *a2;
      if (v11 + v10 > v14)
      {
        if (2 * v14 <= v13 + 992)
        {
          v16 = v13 + 992;
        }

        else
        {
          v16 = 2 * v14;
        }

        a2[2] = v16;
        v15 = malloc_type_realloc(v15, v16, 0x100004077774924uLL);
        *a2 = v15;
        if (!v15)
        {
          goto LABEL_57;
        }

        v11 = a2[1];
      }

      memcpy(&v15[v11], v12, v10);
      v11 = &a2[1][v10];
      a2[1] = v11;
    }

    --*(a2 + 8);
    v17 = v11 + 1;
    v18 = a2[2];
    result = *a2;
    if (v11 + 1 > v18)
    {
      v19 = v11 + 993;
      if (2 * v18 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = 2 * v18;
      }

      a2[2] = v20;
      result = malloc_type_realloc(result, v20, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_57;
      }

      v11 = a2[1];
      v17 = v11 + 1;
    }

    a2[1] = v17;
    *(result + v11) = 41;
  }

  v21 = v3[4];
  if (*v21 == 110)
  {
    v23 = (a2 + 1);
    v22 = a2[1];
    v24 = v22 + 1;
    v25 = a2[2];
    result = *a2;
    if (v22 + 1 > v25)
    {
      v26 = v22 + 993;
      if (2 * v25 <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = 2 * v25;
      }

      a2[2] = v27;
      result = malloc_type_realloc(result, v27, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_57;
      }

      v22 = *v23;
      v24 = *v23 + 1;
    }

    *v23 = v24;
    *(result + v22) = 45;
    v28 = v3[5];
    v29 = v28 - 1;
    if (v28 != 1)
    {
      v30 = v3[4];
      v31 = *a2;
      v32 = a2[1];
      v33 = v32 + v29;
      v34 = a2[2];
      if (v32 + v29 > v34)
      {
        if (2 * v34 <= v33 + 992)
        {
          v35 = v33 + 992;
        }

        else
        {
          v35 = 2 * v34;
        }

        a2[2] = v35;
        v31 = malloc_type_realloc(v31, v35, 0x100004077774924uLL);
        *a2 = v31;
        if (!v31)
        {
          goto LABEL_57;
        }

        v32 = *v23;
      }

      v36 = &v31[v32];
      v37 = (v30 + 1);
LABEL_46:
      result = memcpy(v36, v37, v29);
      *v23 += v29;
    }
  }

  else
  {
    v29 = v3[5];
    if (v29)
    {
      v23 = (a2 + 1);
      v38 = a2[1];
      v39 = v38 + v29;
      v40 = a2[2];
      v41 = *a2;
      if (v38 + v29 > v40)
      {
        if (2 * v40 <= v39 + 992)
        {
          v42 = v39 + 992;
        }

        else
        {
          v42 = 2 * v40;
        }

        a2[2] = v42;
        v41 = malloc_type_realloc(v41, v42, 0x100004077774924uLL);
        *a2 = v41;
        if (!v41)
        {
          goto LABEL_57;
        }

        v38 = *v23;
      }

      v36 = &v41[v38];
      v37 = v21;
      goto LABEL_46;
    }
  }

  v43 = v3[3];
  if (v43 <= 3 && v43)
  {
    v44 = v3[2];
    v45 = *a2;
    v46 = a2[1];
    v47 = &v46[v43];
    v48 = a2[2];
    if (&v46[v43] <= v48)
    {
LABEL_55:
      result = memcpy(&v46[v45], v44, v43);
      a2[1] += v43;
      return result;
    }

    if (2 * v48 <= (v47 + 992))
    {
      v49 = (v47 + 992);
    }

    else
    {
      v49 = 2 * v48;
    }

    a2[2] = v49;
    v45 = malloc_type_realloc(v45, v49, 0x100004077774924uLL);
    *a2 = v45;
    if (v45)
    {
      v46 = a2[1];
      goto LABEL_55;
    }

LABEL_57:
    abort();
  }

  return result;
}

void *llvm::itanium_demangle::BoolExpr::printLeft(uint64_t a1, char **a2)
{
  v3 = *(a1 + 11);
  if (*(a1 + 11))
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = &v6[v4];
  v8 = a2[2];
  if (&v6[v4] > v8)
  {
    if (2 * v8 <= (v7 + 992))
    {
      v9 = (v7 + 992);
    }

    else
    {
      v9 = 2 * v8;
    }

    a2[2] = v9;
    v5 = malloc_type_realloc(v5, v9, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = a2[1];
  }

  if (v3)
  {
    v10 = "true";
  }

  else
  {
    v10 = "false";
  }

  result = memcpy(&v6[v5], v10, v4);
  a2[1] += v4;
  return result;
}

void *llvm::itanium_demangle::FloatLiteralImpl<float>::printLeft(void *result, char **a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(result + 3) < 8uLL)
  {
    return result;
  }

  v3 = *(result + 2);
  v4 = *v3;
  if ((v4 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x400) != 0)
  {
    v5 = 208;
    v6 = v3[1];
    if (v6 < 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 169;
    v6 = v3[1];
    if (v6 < 0)
    {
LABEL_8:
      v7 = 169;
      v8 = v3[2];
      if (v8 < 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = 208;
  v8 = v3[2];
  if (v8 < 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  if ((*(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x400) != 0)
  {
    v9 = -48;
    v10 = v3[3];
    if (v10 < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_12:
  v9 = -87;
  v10 = v3[3];
  if (v10 < 0)
  {
LABEL_16:
    v11 = -87;
    v12 = v3[4];
    if (v12 < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_15:
  if ((*(MEMORY[0x277D85DE0] + 4 * v10 + 60) & 0x400) == 0)
  {
    goto LABEL_16;
  }

  v11 = -48;
  v12 = v3[4];
  if (v12 < 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  if ((*(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x400) != 0)
  {
    v13 = -48;
    v14 = v3[5];
    if (v14 < 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_20:
  v13 = -87;
  v14 = v3[5];
  if (v14 < 0)
  {
    goto LABEL_24;
  }

LABEL_23:
  if ((*(MEMORY[0x277D85DE0] + 4 * v14 + 60) & 0x400) != 0)
  {
    v15 = -48;
    goto LABEL_26;
  }

LABEL_24:
  v15 = -87;
LABEL_26:
  v16 = v4 + v5;
  v17 = v6 + v7;
  v18 = v8 + v9;
  v19 = v10 + v11;
  v20 = v12 + v13;
  v21 = v3[6];
  v22 = v14 + v15;
  if ((v21 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v21 + 60) & 0x400) != 0)
  {
    v23 = v17 + 16 * v16;
    v24 = v19 + 16 * v18;
    v25 = v21 - 48;
    v26 = v3[7];
    v27 = v22 + 16 * v20;
    if (v26 < 0)
    {
LABEL_32:
      v28 = -87;
      goto LABEL_34;
    }
  }

  else
  {
    v23 = v17 + 16 * v16;
    v24 = v19 + 16 * v18;
    v25 = v21 - 87;
    v26 = v3[7];
    v27 = v22 + 16 * v20;
    if (v26 < 0)
    {
      goto LABEL_32;
    }
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v26 + 60) & 0x400) == 0)
  {
    goto LABEL_32;
  }

  v28 = -48;
LABEL_34:
  *__str = 0;
  v36 = 0;
  v37 = 0;
  result = snprintf(__str, 0x18uLL, "%af", COERCE_FLOAT((v26 + v28 + 16 * v25) | (v23 << 24) | (v27 << 8) | (v24 << 16)));
  if (result)
  {
    v29 = result;
    v30 = *a2;
    v31 = a2[1];
    v32 = &v31[v29];
    v33 = a2[2];
    if (&v31[v29] > v33)
    {
      if (2 * v33 <= (v32 + 992))
      {
        v34 = (v32 + 992);
      }

      else
      {
        v34 = 2 * v33;
      }

      a2[2] = v34;
      v30 = malloc_type_realloc(v30, v34, 0x100004077774924uLL);
      *a2 = v30;
      if (!v30)
      {
        abort();
      }

      v31 = a2[1];
    }

    result = memcpy(&v31[v30], __str, v29);
    a2[1] += v29;
  }

  return result;
}

void *llvm::itanium_demangle::FloatLiteralImpl<double>::printLeft(void *result, char **a2)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*(result + 3) < 0x10uLL)
  {
    return result;
  }

  v3 = *(result + 2);
  v4 = *v3;
  if ((v4 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x400) != 0)
  {
    v5 = -48;
    v6 = v3[1];
    if (v6 < 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = -87;
    v6 = v3[1];
    if (v6 < 0)
    {
LABEL_8:
      v7 = -87;
      v8 = v3[2];
      if (v8 < 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = -48;
  v8 = v3[2];
  if (v8 < 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  if ((*(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x400) != 0)
  {
    v9 = -48;
    v10 = v3[3];
    if (v10 < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_12:
  v9 = -87;
  v10 = v3[3];
  if (v10 < 0)
  {
LABEL_16:
    v11 = -87;
    v12 = v3[4];
    if (v12 < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_15:
  if ((*(MEMORY[0x277D85DE0] + 4 * v10 + 60) & 0x400) == 0)
  {
    goto LABEL_16;
  }

  v11 = -48;
  v12 = v3[4];
  if (v12 < 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  if ((*(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x400) != 0)
  {
    v13 = -48;
    v14 = v3[5];
    if (v14 < 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_20:
  v13 = -87;
  v14 = v3[5];
  if (v14 < 0)
  {
LABEL_24:
    v15 = -87;
    v16 = v3[6];
    if (v16 < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_23:
  if ((*(MEMORY[0x277D85DE0] + 4 * v14 + 60) & 0x400) == 0)
  {
    goto LABEL_24;
  }

  v15 = -48;
  v16 = v3[6];
  if (v16 < 0)
  {
    goto LABEL_28;
  }

LABEL_27:
  if ((*(MEMORY[0x277D85DE0] + 4 * v16 + 60) & 0x400) != 0)
  {
    v17 = -48;
    v18 = v3[7];
    if (v18 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_28:
  v17 = -87;
  v18 = v3[7];
  if (v18 < 0)
  {
LABEL_32:
    v19 = -87;
    v20 = v3[8];
    if (v20 < 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_31:
  if ((*(MEMORY[0x277D85DE0] + 4 * v18 + 60) & 0x400) == 0)
  {
    goto LABEL_32;
  }

  v19 = -48;
  v20 = v3[8];
  if (v20 < 0)
  {
    goto LABEL_36;
  }

LABEL_35:
  if ((*(MEMORY[0x277D85DE0] + 4 * v20 + 60) & 0x400) != 0)
  {
    v21 = -48;
    v22 = v3[9];
    if (v22 < 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_36:
  v21 = -87;
  v22 = v3[9];
  if (v22 < 0)
  {
LABEL_40:
    v23 = -87;
    v24 = v3[10];
    if (v24 < 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_39:
  if ((*(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x400) == 0)
  {
    goto LABEL_40;
  }

  v23 = -48;
  v24 = v3[10];
  if (v24 < 0)
  {
    goto LABEL_44;
  }

LABEL_43:
  if ((*(MEMORY[0x277D85DE0] + 4 * v24 + 60) & 0x400) != 0)
  {
    v25 = v20 + v21;
    v26 = v22 + v23;
    v27 = v24 - 48;
    v28 = v3[11];
    if (v28 < 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_44:
  v25 = v20 + v21;
  v26 = v22 + v23;
  v27 = v24 - 87;
  v28 = v3[11];
  if (v28 < 0)
  {
    goto LABEL_48;
  }

LABEL_47:
  if ((*(MEMORY[0x277D85DE0] + 4 * v28 + 60) & 0x400) != 0)
  {
    v29 = -48;
    goto LABEL_50;
  }

LABEL_48:
  v29 = -87;
LABEL_50:
  v30 = v4 + v5;
  v31 = v6 + v7;
  v32 = v8 + v9;
  v33 = v10 + v11;
  v34 = v12 + v13;
  v35 = v14 + v15;
  v36 = v3[12];
  if ((v36 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v36 + 60) & 0x400) != 0)
  {
    v37 = -48;
  }

  else
  {
    v37 = -87;
  }

  v38 = v31 + 16 * v30;
  v39 = v33 + 16 * v32;
  v40 = v35 + 16 * v34;
  v41 = v36 + v37;
  v42 = v3[13];
  if ((v42 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v42 + 60) & 0x400) != 0)
  {
    v43 = (v42 - 48 + 16 * v41);
    v44 = v3[14];
    if (v44 < 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v43 = (v42 - 87 + 16 * v41);
    v44 = v3[14];
    if (v44 < 0)
    {
      goto LABEL_60;
    }
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v44 + 60) & 0x400) != 0)
  {
    v45 = -48;
    goto LABEL_62;
  }

LABEL_60:
  v45 = -87;
LABEL_62:
  v46 = v43 << 48;
  v47 = v3[15];
  if ((v47 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v47 + 60) & 0x400) != 0)
  {
    v48 = -48;
  }

  else
  {
    v48 = -87;
  }

  *(&v49 + 1) = v40;
  *&v49 = (v28 + v29 + 16 * v27) << 40;
  *__str = 0u;
  v57 = 0u;
  result = snprintf(__str, 0x20uLL, "%a", COERCE_DOUBLE((v49 >> 24) & 0xFFFFFFFFFFFF0000 | (v47 + v48 + 16 * (v44 + v45)) | (v38 << 56) | (v46 >> 40) & 0xFF00 | (v39 << 48) | ((((v26 + 16 * v25) << 32) | v49) >> 8) & 0xFF000000 | ((v18 + v19 + 16 * (v16 + v17)) << 32)));
  if (result)
  {
    v50 = result;
    v51 = *a2;
    v52 = a2[1];
    v53 = &v52[v50];
    v54 = a2[2];
    if (&v52[v50] > v54)
    {
      if (2 * v54 <= (v53 + 992))
      {
        v55 = (v53 + 992);
      }

      else
      {
        v55 = 2 * v54;
      }

      a2[2] = v55;
      v51 = malloc_type_realloc(v51, v55, 0x100004077774924uLL);
      *a2 = v51;
      if (!v51)
      {
        abort();
      }

      v52 = a2[1];
    }

    result = memcpy(&v52[v51], __str, v50);
    a2[1] += v50;
  }

  return result;
}

void *llvm::itanium_demangle::FloatLiteralImpl<long double>::printLeft(void *result, char **a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(result + 3) < 0x20uLL)
  {
    return result;
  }

  v3 = (*(result + 2) + 1);
  v4 = &v26 + 4;
  v5 = 32;
  v6 = MEMORY[0x277D85DE0];
  do
  {
    v9 = *(v3 - 1);
    if ((v9 & 0x8000000000000000) == 0 && (*(v6 + 4 * v9 + 60) & 0x400) != 0)
    {
      v10 = -48;
      v11 = *v3;
      if (v11 < 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v10 = -87;
      v11 = *v3;
      if (v11 < 0)
      {
        goto LABEL_3;
      }
    }

    if ((*(v6 + 4 * v11 + 60) & 0x400) == 0)
    {
LABEL_3:
      v7 = -87;
      goto LABEL_4;
    }

    v7 = -48;
LABEL_4:
    v8 = v11 + v7 + 16 * (v9 + v10);
    v4[4] = v8;
    v3 += 2;
    ++v4;
    v5 -= 2;
  }

  while (v5);
  if (v4 + 3 > &v27)
  {
    v12 = LOBYTE(v27);
    LOBYTE(v27) = v8;
    v4[3] = v12;
    v13 = BYTE1(v27);
    BYTE1(v27) = v4[2];
    v4[2] = v13;
    v14 = BYTE2(v27);
    BYTE2(v27) = v4[1];
    v4[1] = v14;
    v15 = BYTE3(v27);
    BYTE3(v27) = *v4;
    *v4 = v15;
    v16 = BYTE4(v27);
    BYTE4(v27) = *(v4 - 1);
    *(v4 - 1) = v16;
    v17 = BYTE5(v27);
    BYTE5(v27) = *(v4 - 2);
    *(v4 - 2) = v17;
    v18 = BYTE6(v27);
    BYTE6(v27) = *(v4 - 3);
    *(v4 - 3) = v18;
    v19 = HIBYTE(v27);
    HIBYTE(v27) = *(v4 - 4);
    *(v4 - 4) = v19;
  }

  *__str = 0u;
  memset(v29, 0, sizeof(v29));
  result = snprintf(__str, 0x2AuLL, "%LaL", v27);
  if (result)
  {
    v20 = result;
    v21 = *a2;
    v22 = a2[1];
    v23 = &v22[v20];
    v24 = a2[2];
    if (&v22[v20] > v24)
    {
      if (2 * v24 <= (v23 + 992))
      {
        v25 = (v23 + 992);
      }

      else
      {
        v25 = 2 * v24;
      }

      a2[2] = v25;
      v21 = malloc_type_realloc(v21, v25, 0x100004077774924uLL);
      *a2 = v21;
      if (!v21)
      {
        abort();
      }

      v22 = a2[1];
    }

    result = memcpy(&v22[v21], __str, v20);
    a2[1] += v20;
  }

  return result;
}

char *llvm::itanium_demangle::StringLiteral::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 2) > v6)
  {
    v7 = (v5 + 994);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  *&v5[v4] = 15394;
  a2[1] += 2;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  result = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 2) > v13)
  {
    v14 = (v12 + 994);
    v15 = 2 * v13;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    a2[2] = v16;
    result = malloc_type_realloc(result, v16, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v12 = a2[1];
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  *&v12[result] = 8766;
  a2[1] += 2;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateParamDecl(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v54[0] = a1;
  v54[1] = &v55;
  v2 = *a1;
  if (*(a1 + 8) - *a1 < 2uLL)
  {
    return 0;
  }

  switch(*v2)
  {
    case 0x7954:
      *a1 = v2 + 1;
      v6 = *(a1 + 4904);
      v7 = v6[1];
      if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v6)
        {
          goto LABEL_62;
        }

        v7 = 0;
        *v6 = *(a1 + 4904);
        v6[1] = 0;
        *(a1 + 4904) = v6;
      }

      v6[1] = v7 + 32;
      v8 = v6 + v7;
      result = v8 + 16;
      v8[24] = 35;
      *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x500;
      *(v8 + 2) = &unk_2868A5260;
      *(v8 + 4) = v5;
      return result;
    case 0x6B54:
      *a1 = v2 + 1;
      v9 = *(a1 + 778);
      *(a1 + 778) = 1;
      if (result)
      {
        v10 = result;
        v12 = *(a1 + 4904);
        v13 = v12[1];
        if ((v13 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v12)
          {
            goto LABEL_62;
          }

          v13 = 0;
          *v12 = *(a1 + 4904);
          v12[1] = 0;
          *(a1 + 4904) = v12;
        }

        v12[1] = v13 + 32;
        v14 = v12 + v13;
        result = v14 + 16;
        v14[24] = 36;
        *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x500;
        *(v14 + 2) = &unk_2868A52D8;
        *(v14 + 4) = v10;
        *(v14 + 5) = v11;
      }

      *(a1 + 778) = v9;
      return result;
    case 0x6E54:
      *a1 = v2 + 1;
      if (!result)
      {
        return result;
      }

      v16 = result;
      v17 = *(a1 + 4904);
      v18 = v17[1];
      if ((v18 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v17)
        {
          goto LABEL_62;
        }

        v18 = 0;
        *v17 = *(a1 + 4904);
        v17[1] = 0;
        *(a1 + 4904) = v17;
      }

      v17[1] = v18 + 32;
      v19 = v17 + v18;
      result = v19 + 16;
      v19[24] = 37;
      *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x500;
      *(v19 + 2) = &unk_2868A5350;
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      return result;
    case 0x7454:
      *a1 = v2 + 1;
      v22 = *(a1 + 16);
      v21 = *(a1 + 24);
      v23 = *(a1 + 672);
      v24 = *(a1 + 664);
      v25 = v23 - v24;
      v50 = a1;
      v51 = (v23 - v24) >> 3;
      v52[0] = v53;
      v52[1] = v53;
      v52[2] = v54;
      memset(v53, 0, sizeof(v53));
      if (v23 == *(a1 + 680))
      {
        if (v24 == (a1 + 688))
        {
          v26 = malloc_type_malloc(2 * v25, 0x2004093837F09uLL);
          if (!v26)
          {
            goto LABEL_61;
          }

          v27 = *(a1 + 664);
          v28 = *(a1 + 672);
          if (v28 != v27)
          {
            v29 = v26;
            memmove(v26, v27, v28 - v27);
            v26 = v29;
          }

          *(a1 + 664) = v26;
        }

        else
        {
          v26 = malloc_type_realloc(v24, 2 * v25, 0x2004093837F09uLL);
          *(a1 + 664) = v26;
          if (!v26)
          {
LABEL_61:
            abort();
          }
        }

        v23 = &v26[v25];
        *(a1 + 680) = &v26[8 * (v25 >> 2)];
      }

      v30 = (v21 - v22) >> 3;
      *v23 = v52;
      *(a1 + 672) = v23 + 8;
      v31 = *a1;
      v32 = *(a1 + 8);
      do
      {
        if (v31 != v32 && *v31 == 69)
        {
          v42 = 0;
          goto LABEL_54;
        }

        if (!result)
        {
          goto LABEL_58;
        }

        v33 = *(a1 + 24);
        if (v33 == *(a1 + 32))
        {
          v34 = result;
          v35 = *(a1 + 16);
          v36 = v33 - v35;
          if (v35 == (a1 + 40))
          {
            v37 = malloc_type_malloc(2 * (v33 - v35), 0x2004093837F09uLL);
            if (!v37)
            {
              goto LABEL_61;
            }

            v38 = *(a1 + 16);
            v39 = *(a1 + 24);
            if (v39 != v38)
            {
              v40 = v37;
              memmove(v37, v38, v39 - v38);
              v37 = v40;
            }

            *(a1 + 16) = v37;
          }

          else
          {
            v37 = malloc_type_realloc(v35, 2 * (v33 - v35), 0x2004093837F09uLL);
            *(a1 + 16) = v37;
            if (!v37)
            {
              goto LABEL_61;
            }
          }

          v33 = &v37[v36];
          *(a1 + 32) = &v37[8 * (v36 >> 2)];
          result = v34;
        }

        *v33 = result;
        *(a1 + 24) = v33 + 8;
        v31 = *a1;
        v32 = *(a1 + 8);
      }

      while (*a1 == v32 || *v31 != 81);
      *a1 = v31 + 1;
      v41 = *(a1 + 778);
      *(a1 + 778) = 1;
      *(a1 + 778) = v41;
      if (!result)
      {
LABEL_58:
        *(v50 + 672) = *(v50 + 664) + 8 * v51;
        if (v52[0] != v53)
        {
          v49 = result;
          free(v52[0]);
          return v49;
        }

        return result;
      }

      v31 = *a1;
      if (*a1 == *(a1 + 8) || (v42 = result, *v31 != 69))
      {
        result = 0;
        goto LABEL_58;
      }

LABEL_54:
      *a1 = v31 + 1;
      v45 = v44;
      v46 = *(a1 + 4904);
      v47 = v46[1];
      if ((v47 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_57:
        v46[1] = v47 + 48;
        v48 = v46 + v47;
        result = v48 + 16;
        v48[24] = 38;
        *(v48 + 25) = *(v48 + 25) & 0xF000 | 0x500;
        *(v48 + 2) = &unk_2868A53C8;
        *(v48 + 4) = v20;
        *(v48 + 5) = v43;
        *(v48 + 6) = v45;
        *(v48 + 7) = v42;
        goto LABEL_58;
      }

      v46 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v46)
      {
        v47 = 0;
        *v46 = *(a1 + 4904);
        v46[1] = 0;
        *(a1 + 4904) = v46;
        goto LABEL_57;
      }

LABEL_62:
      std::terminate();
      break;
  }

  if (*v2 != 28756)
  {
    return 0;
  }

  *a1 = v2 + 1;
  v50 = result;
  if (result)
  {
  }

  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ClosureTypeName,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node *&,std::string_view &>(uint64_t a1, __n128 *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, __int128 *a6)
{
  v12 = *(a1 + 4904);
  v13 = v12[1];
  if ((v13 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v12)
    {
      std::terminate();
    }

    v13 = 0;
    *v12 = *(a1 + 4904);
    v12[1] = 0;
    *(a1 + 4904) = v12;
  }

  v12[1] = v13 + 80;
  v14 = v12 + v13;
  v15 = *a3;
  v16 = *a5;
  v14[24] = 52;
  v17 = *(v14 + 25) & 0xF000 | 0x540;
  *(v14 + 2) = &unk_2868A54B8;
  result = *a2;
  *(v14 + 6) = v15;
  v19 = *a4;
  *(v14 + 9) = v16;
  v20 = *a6;
  *(v14 + 25) = v17;
  *(v14 + 2) = result;
  *(v14 + 56) = v19;
  *(v14 + 5) = v20;
  return result;
}

char *llvm::itanium_demangle::UnnamedTypeName::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 8) > v6)
  {
    v7 = (v5 + 1000);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_22;
    }

    v5 = a2[1];
  }

  *&v5[v4] = 0x64656D616E6E7527;
  v10 = (a2[1] + 8);
  a2[1] = v10;
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = *(a1 + 16);
    v13 = v10 + v11;
    v14 = a2[2];
    v15 = *a2;
    if (v10 + v11 > v14)
    {
      if (2 * v14 <= v13 + 992)
      {
        v16 = v13 + 992;
      }

      else
      {
        v16 = 2 * v14;
      }

      a2[2] = v16;
      v15 = malloc_type_realloc(v15, v16, 0x100004077774924uLL);
      *a2 = v15;
      if (!v15)
      {
        goto LABEL_22;
      }

      v10 = a2[1];
    }

    memcpy(&v15[v10], v12, v11);
    v10 = &a2[1][v11];
    a2[1] = v10;
  }

  v17 = a2[2];
  result = *a2;
  if (v10 + 1 > v17)
  {
    v19 = v10 + 993;
    v20 = 2 * v17;
    if (v20 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    a2[2] = v21;
    result = malloc_type_realloc(result, v21, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v10 = a2[1];
      goto LABEL_21;
    }

LABEL_22:
    abort();
  }

LABEL_21:
  result[v10] = 39;
  ++a2[1];
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateParamDecl(llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,8ul> *)::{lambda(llvm::itanium_demangle::TemplateParamKind)#1}::operator()(uint64_t *a1, size_t size)
{
  v2 = size;
  v4 = *a1;
  v5 = *a1 + 4 * size;
  v6 = *(v5 + 792);
  *(v5 + 792) = v6 + 1;
  v7 = *(v4 + 4904);
  v8 = v7[1];
  if ((v8 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v7 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v7)
    {
      std::terminate();
    }

    v8 = 0;
    *v7 = *(v4 + 4904);
    v7[1] = 0;
    *(v4 + 4904) = v7;
  }

  v7[1] = v8 + 32;
  v9 = v7 + v8;
  result = v9 + 16;
  v9[24] = 33;
  *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = &unk_2868A51E8;
  *(v9 + 7) = v2;
  *(v9 + 8) = v6;
  v11 = *a1[1];
  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12 == *(v11 + 16))
    {
      v13 = result;
      v14 = &v12[-*v11];
      if (*v11 == v11 + 24)
      {
        v15 = malloc_type_malloc(2 * v14, 0x2004093837F09uLL);
        if (!v15)
        {
          goto LABEL_17;
        }

        v16 = *(v11 + 8);
        if (v16 != *v11)
        {
          v17 = v15;
          memmove(v15, *v11, v16 - *v11);
          v15 = v17;
        }

        *v11 = v15;
      }

      else
      {
        v15 = malloc_type_realloc(*v11, 2 * v14, 0x2004093837F09uLL);
        *v11 = v15;
        if (!v15)
        {
LABEL_17:
          abort();
        }
      }

      v12 = &v15[v14];
      *(v11 + 16) = &v15[8 * (v14 >> 2)];
      result = v13;
    }

    *v12 = result;
    *(v11 + 8) = v12 + 8;
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::TemplateParamPackDecl,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 39;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x500;
  *(v6 + 2) = &unk_2868A5440;
  *(v6 + 4) = v8;
  return result;
}

_DWORD *llvm::itanium_demangle::SyntheticTemplateParamName::printLeft(_DWORD *result, char **a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = result[3];
  switch(v3)
  {
    case 2:
      v5 = a2 + 1;
      v21 = a2[1];
      v22 = a2[2];
      v23 = *a2;
      if ((v21 + 3) > v22)
      {
        v24 = result;
        v25 = (v21 + 995);
        v26 = 2 * v22;
        if (v26 <= v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        a2[2] = v27;
        v28 = malloc_type_realloc(v23, v27, 0x100004077774924uLL);
        *a2 = v28;
        if (!v28)
        {
          goto LABEL_39;
        }

        v23 = v28;
        v21 = *v5;
        result = v24;
      }

      v29 = &v21[v23];
      v29[2] = 84;
      *v29 = 21540;
      v20 = 3;
      goto LABEL_26;
    case 1:
      v5 = a2 + 1;
      v4 = a2[1];
      v14 = a2[2];
      v7 = *a2;
      if ((v4 + 2) > v14)
      {
        v15 = result;
        v16 = (v4 + 994);
        v17 = 2 * v14;
        if (v17 <= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }

        a2[2] = v18;
        v19 = malloc_type_realloc(v7, v18, 0x100004077774924uLL);
        *a2 = v19;
        if (!v19)
        {
          goto LABEL_39;
        }

        v7 = v19;
        v4 = *v5;
        result = v15;
      }

      v13 = 20004;
      goto LABEL_18;
    case 0:
      v5 = a2 + 1;
      v4 = a2[1];
      v6 = a2[2];
      v7 = *a2;
      if ((v4 + 2) > v6)
      {
        v8 = result;
        v9 = (v4 + 994);
        v10 = 2 * v6;
        if (v10 <= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        a2[2] = v11;
        v12 = malloc_type_realloc(v7, v11, 0x100004077774924uLL);
        *a2 = v12;
        if (!v12)
        {
          goto LABEL_39;
        }

        v7 = v12;
        v4 = *v5;
        result = v8;
      }

      v13 = 21540;
LABEL_18:
      *&v4[v7] = v13;
      v20 = 2;
LABEL_26:
      *v5 += v20;
      break;
  }

  v30 = result[4];
  if (v30)
  {
    v31 = 0;
    v32 = (v30 - 1);
    do
    {
      v40[v31-- + 20] = (v32 % 0xA) | 0x30;
      v33 = v32 >= 9;
      v34 = v32 == 9;
      v32 /= 0xAuLL;
    }

    while (!v34 && v33);
    if (v31)
    {
      v35 = *a2;
      v36 = a2[1];
      v37 = &v36[-v31];
      v38 = a2[2];
      if (&v36[-v31] <= v38)
      {
LABEL_37:
        result = memcpy(&v36[v35], &v40[v31 + 21], -v31);
        a2[1] -= v31;
        return result;
      }

      if (2 * v38 <= (v37 + 992))
      {
        v39 = (v37 + 992);
      }

      else
      {
        v39 = 2 * v38;
      }

      a2[2] = v39;
      v35 = malloc_type_realloc(v35, v39, 0x100004077774924uLL);
      *a2 = v35;
      if (v35)
      {
        v36 = a2[1];
        goto LABEL_37;
      }

LABEL_39:
      abort();
    }
  }

  return result;
}

char *llvm::itanium_demangle::TypeTemplateParamDecl::printLeft(uint64_t a1, char **a2)
{
  result = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if ((v4 + 9) > v5)
  {
    v6 = (v4 + 1001);
    v7 = 2 * v5;
    if (v7 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    a2[2] = v8;
    result = malloc_type_realloc(result, v8, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v4 = a2[1];
  }

  v9 = &v4[result];
  *v9 = *"typename ";
  v9[8] = 32;
  a2[1] += 9;
  return result;
}

uint64_t llvm::itanium_demangle::TypeTemplateParamDecl::printRight(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = (*(*v3 + 32))(v3);
  if ((*(v3 + 9) & 0xC0) != 0x40)
  {
    v5 = *(*v3 + 40);

    return v5(v3, a2);
  }

  return result;
}

void *llvm::itanium_demangle::ConstrainedTypeTemplateParamDecl::printLeft(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  (*(*v3 + 32))(v3);
  if ((*(v3 + 9) & 0xC0) != 0x40)
  {
    (*(*v3 + 40))(v3, a2);
  }

  result = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 + 1 > v6)
  {
    v7 = v5 + 993;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(a2 + 16) = v9;
    result = malloc_type_realloc(result, v9, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v5 = *(a2 + 8);
  }

  *(result + v5) = 32;
  ++*(a2 + 8);
  return result;
}

uint64_t llvm::itanium_demangle::ConstrainedTypeTemplateParamDecl::printRight(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  result = (*(*v3 + 32))(v3);
  if ((*(v3 + 9) & 0xC0) != 0x40)
  {
    v5 = *(*v3 + 40);

    return v5(v3, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::NonTypeTemplateParamDecl::printLeft(uint64_t a1, uint64_t *a2)
{
  (*(**(a1 + 24) + 32))(*(a1 + 24));
  result = *(a1 + 24);
  v5 = *(result + 9);
  if ((v5 & 0xC0) == 0x80)
  {
    result = (**result)(result, a2);
    if (result)
    {
      return result;
    }
  }

  else if (v5 < 0x40)
  {
    return result;
  }

  result = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v6 + 1 > v7)
  {
    v8 = v6 + 993;
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    result = malloc_type_realloc(result, v10, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v6 = a2[1];
  }

  *(result + v6) = 32;
  ++a2[1];
  return result;
}

uint64_t llvm::itanium_demangle::NonTypeTemplateParamDecl::printRight(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *(**(a1 + 24) + 40);

  return v5();
}

char *llvm::itanium_demangle::TemplateTemplateParamDecl::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v6 + 9 > v7)
  {
    v8 = v6 + 1001;
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    *(a2 + 16) = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_28;
    }

    v6 = *(a2 + 8);
  }

  v11 = &v5[v6];
  *v11 = *"template<";
  v11[8] = 60;
  v12 = *(a2 + 8) + 9;
  *(a2 + 8) = v12;
  if (*(a1 + 32))
  {
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = v12;
      if ((v14 & 1) == 0)
      {
        v16 = *(a2 + 16);
        v17 = *a2;
        if (v12 + 2 <= v16)
        {
          v20 = v12;
        }

        else
        {
          v18 = 2 * v16;
          if (v18 <= v12 + 994)
          {
            v19 = v12 + 994;
          }

          else
          {
            v19 = v18;
          }

          *(a2 + 16) = v19;
          v17 = malloc_type_realloc(v17, v19, 0x100004077774924uLL);
          *a2 = v17;
          if (!v17)
          {
            goto LABEL_28;
          }

          v20 = *(a2 + 8);
        }

        *&v17[v20] = 8236;
        v15 = *(a2 + 8) + 2;
        *(a2 + 8) = v15;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(*(a1 + 24) + 8 * v13), a2, 18, 0);
      if (v15 == *(a2 + 8))
      {
        *(a2 + 8) = v12;
        if (++v13 == *(a1 + 32))
        {
          break;
        }
      }

      else
      {
        v14 = 0;
        v12 = *(a2 + 8);
        if (++v13 == *(a1 + 32))
        {
          break;
        }
      }
    }
  }

  v21 = *(a2 + 16);
  result = *a2;
  if (v12 + 11 > v21)
  {
    v23 = 2 * v21;
    if (v23 <= v12 + 1003)
    {
      v24 = v12 + 1003;
    }

    else
    {
      v24 = v23;
    }

    *(a2 + 16) = v24;
    result = malloc_type_realloc(result, v24, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v12 = *(a2 + 8);
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  v25 = &result[v12];
  *v25 = *"> typename ";
  *(v25 + 7) = 543518049;
  *(a2 + 8) += 11;
  *(a2 + 32) = v4;
  return result;
}

uint64_t llvm::itanium_demangle::TemplateTemplateParamDecl::printRight(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  result = (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    result = (*(*v4 + 40))(v4, a2);
  }

  if (*(a1 + 40))
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    if ((v7 + 10) > v8)
    {
      v9 = (v7 + 1002);
      v10 = 2 * v8;
      if (v10 <= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      a2[2] = v11;
      v6 = malloc_type_realloc(v6, v11, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    v12 = &v7[v6];
    *v12 = *" requires ";
    *(v12 + 4) = 8307;
    a2[1] += 10;
    v13 = *(a1 + 40);
    result = (*(*v13 + 32))(v13, a2);
    if ((*(v13 + 9) & 0xC0) != 0x40)
    {
      v14 = *(*v13 + 40);

      return v14(v13, a2);
    }
  }

  return result;
}

char *llvm::itanium_demangle::TemplateParamPackDecl::printLeft(uint64_t a1, char **a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));
  result = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if ((v4 + 3) > v5)
  {
    v6 = (v4 + 995);
    v7 = 2 * v5;
    if (v7 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    a2[2] = v8;
    result = malloc_type_realloc(result, v8, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v4 = a2[1];
  }

  v9 = &v4[result];
  v9[2] = 46;
  *v9 = 11822;
  a2[1] += 3;
  return result;
}

char *llvm::itanium_demangle::ClosureTypeName::printLeft(void *a1, void **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 7) > v6)
  {
    v7 = (v5 + 999);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_24;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *(v10 + 3) = 1633968749;
  *v10 = 1835101223;
  v11 = a2[1] + 7;
  a2[1] = v11;
  v12 = a1[9];
  if (v12)
  {
    v13 = a1[8];
    v14 = v11 + v12;
    v15 = a2[2];
    v16 = *a2;
    if (v11 + v12 > v15)
    {
      if (2 * v15 <= v14 + 992)
      {
        v17 = v14 + 992;
      }

      else
      {
        v17 = 2 * v15;
      }

      a2[2] = v17;
      v16 = malloc_type_realloc(v16, v17, 0x100004077774924uLL);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      v11 = a2[1];
    }

    memcpy(&v16[v11], v13, v12);
    v11 = a2[1] + v12;
    a2[1] = v11;
  }

  v18 = a2[2];
  v19 = *a2;
  if (v11 + 1 <= v18)
  {
    goto LABEL_21;
  }

  v20 = v11 + 993;
  v21 = 2 * v18;
  if (v21 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  a2[2] = v22;
  v19 = malloc_type_realloc(v19, v22, 0x100004077774924uLL);
  *a2 = v19;
  if (!v19)
  {
LABEL_24:
    abort();
  }

  v11 = a2[1];
LABEL_21:
  *(v19 + v11) = 39;
  a2[1] = a2[1] + 1;

  return llvm::itanium_demangle::ClosureTypeName::printDeclarator(a1, a2);
}

char *llvm::itanium_demangle::ClosureTypeName::printDeclarator(void *a1, uint64_t a2)
{
  if (a1[3])
  {
    v4 = *(a2 + 32);
    *(a2 + 32) = 0;
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    if (v6 + 1 > v7)
    {
      v8 = v6 + 993;
      v9 = 2 * v7;
      if (v9 <= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      *(a2 + 16) = v10;
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      *a2 = v5;
      if (!v5)
      {
        goto LABEL_83;
      }

      v6 = *(a2 + 8);
    }

    v5[v6] = 60;
    v11 = *(a2 + 8) + 1;
    *(a2 + 8) = v11;
    if (a1[3])
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = v11;
        if ((v13 & 1) == 0)
        {
          v15 = *(a2 + 16);
          v16 = *a2;
          if (v11 + 2 <= v15)
          {
            v19 = v11;
          }

          else
          {
            v17 = 2 * v15;
            if (v17 <= v11 + 994)
            {
              v18 = v11 + 994;
            }

            else
            {
              v18 = v17;
            }

            *(a2 + 16) = v18;
            v16 = malloc_type_realloc(v16, v18, 0x100004077774924uLL);
            *a2 = v16;
            if (!v16)
            {
              goto LABEL_83;
            }

            v19 = *(a2 + 8);
          }

          *&v16[v19] = 8236;
          v14 = *(a2 + 8) + 2;
          *(a2 + 8) = v14;
        }

        llvm::itanium_demangle::Node::printAsOperand(*(a1[2] + 8 * v12), a2, 18, 0);
        if (v14 == *(a2 + 8))
        {
          *(a2 + 8) = v11;
          if (++v12 == a1[3])
          {
            break;
          }
        }

        else
        {
          v13 = 0;
          v11 = *(a2 + 8);
          if (++v12 == a1[3])
          {
            break;
          }
        }
      }
    }

    v20 = *(a2 + 16);
    v21 = *a2;
    if (v11 + 1 > v20)
    {
      v22 = 2 * v20;
      if (v22 <= v11 + 993)
      {
        v23 = v11 + 993;
      }

      else
      {
        v23 = v22;
      }

      *(a2 + 16) = v23;
      v21 = malloc_type_realloc(v21, v23, 0x100004077774924uLL);
      *a2 = v21;
      if (!v21)
      {
        goto LABEL_83;
      }

      v11 = *(a2 + 8);
    }

    v21[v11] = 62;
    ++*(a2 + 8);
    *(a2 + 32) = v4;
  }

  v24 = *(a2 + 8);
  if (a1[4])
  {
    v25 = *(a2 + 16);
    v26 = *a2;
    if (v24 + 10 > v25)
    {
      v27 = v24 + 1002;
      v28 = 2 * v25;
      if (v28 <= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      *(a2 + 16) = v29;
      v26 = malloc_type_realloc(v26, v29, 0x100004077774924uLL);
      *a2 = v26;
      if (!v26)
      {
        goto LABEL_83;
      }

      v24 = *(a2 + 8);
    }

    v30 = &v26[v24];
    *v30 = *" requires ";
    *(v30 + 4) = 8307;
    *(a2 + 8) += 10;
    v31 = a1[4];
    (*(*v31 + 32))(v31, a2);
    if ((*(v31 + 9) & 0xC0) != 0x40)
    {
      (*(*v31 + 40))(v31, a2);
    }

    v32 = *a2;
    v33 = *(a2 + 8);
    v34 = *(a2 + 16);
    if (v33 + 1 > v34)
    {
      v35 = v33 + 993;
      v36 = 2 * v34;
      if (v36 <= v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      *(a2 + 16) = v37;
      v32 = malloc_type_realloc(v32, v37, 0x100004077774924uLL);
      *a2 = v32;
      if (!v32)
      {
        goto LABEL_83;
      }

      v33 = *(a2 + 8);
    }

    v32[v33] = 32;
    v24 = *(a2 + 8) + 1;
    *(a2 + 8) = v24;
  }

  ++*(a2 + 32);
  v38 = v24 + 1;
  v39 = *(a2 + 16);
  v40 = *a2;
  if (v24 + 1 > v39)
  {
    v41 = v24 + 993;
    if (2 * v39 <= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = 2 * v39;
    }

    *(a2 + 16) = v42;
    v40 = malloc_type_realloc(v40, v42, 0x100004077774924uLL);
    *a2 = v40;
    if (!v40)
    {
      goto LABEL_83;
    }

    v24 = *(a2 + 8);
    v38 = v24 + 1;
  }

  *(a2 + 8) = v38;
  v40[v24] = 40;
  v43 = *(a2 + 8);
  if (a1[6])
  {
    v44 = 0;
    v45 = 1;
    while (1)
    {
      v46 = v43;
      if ((v45 & 1) == 0)
      {
        v47 = *(a2 + 16);
        v48 = *a2;
        if (v43 + 2 <= v47)
        {
          v51 = v43;
        }

        else
        {
          v49 = 2 * v47;
          if (v49 <= v43 + 994)
          {
            v50 = v43 + 994;
          }

          else
          {
            v50 = v49;
          }

          *(a2 + 16) = v50;
          v48 = malloc_type_realloc(v48, v50, 0x100004077774924uLL);
          *a2 = v48;
          if (!v48)
          {
            goto LABEL_83;
          }

          v51 = *(a2 + 8);
        }

        *&v48[v51] = 8236;
        v46 = *(a2 + 8) + 2;
        *(a2 + 8) = v46;
      }

      llvm::itanium_demangle::Node::printAsOperand(*(a1[5] + 8 * v44), a2, 18, 0);
      if (v46 == *(a2 + 8))
      {
        *(a2 + 8) = v43;
        if (++v44 == a1[6])
        {
          break;
        }
      }

      else
      {
        v45 = 0;
        v43 = *(a2 + 8);
        if (++v44 == a1[6])
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v52 = v43 + 1;
  v53 = *(a2 + 16);
  result = *a2;
  if (v43 + 1 > v53)
  {
    v55 = 2 * v53;
    if (v55 <= v43 + 993)
    {
      v56 = v43 + 993;
    }

    else
    {
      v56 = v55;
    }

    *(a2 + 16) = v56;
    result = malloc_type_realloc(result, v56, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      goto LABEL_83;
    }

    v43 = *(a2 + 8);
    v52 = v43 + 1;
  }

  *(a2 + 8) = v52;
  result[v43] = 41;
  if (!a1[7])
  {
    return result;
  }

  v57 = *a2;
  v58 = *(a2 + 8);
  v59 = *(a2 + 16);
  if (v58 + 10 > v59)
  {
    v60 = v58 + 1002;
    v61 = 2 * v59;
    if (v61 <= v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = v61;
    }

    *(a2 + 16) = v62;
    v57 = malloc_type_realloc(v57, v62, 0x100004077774924uLL);
    *a2 = v57;
    if (v57)
    {
      v58 = *(a2 + 8);
      goto LABEL_78;
    }

LABEL_83:
    abort();
  }

LABEL_78:
  v63 = &v57[v58];
  *v63 = *" requires ";
  *(v63 + 4) = 8307;
  *(a2 + 8) += 10;
  v64 = a1[7];
  result = (*(*v64 + 32))(v64, a2);
  if ((*(v64 + 9) & 0xC0) != 0x40)
  {
    v65 = *(*v64 + 40);

    return v65(v64, a2);
  }

  return result;
}