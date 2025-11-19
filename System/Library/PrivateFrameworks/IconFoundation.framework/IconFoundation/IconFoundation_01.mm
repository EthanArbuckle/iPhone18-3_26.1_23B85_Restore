_DWORD *BOMTreeIteratorSet(uint64_t a1, void *a2, unint64_t a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 57) &= 0xF6u;
  result = _findPagesForKey(*a1, 0, a2, a3, a5, a6, a7, a8);
  *(a1 + 8) = result;
  if (result)
  {
    *(a1 + 16) = *result;
    result = _findIndexForKey(*a1, result, a2, a3, a4, v13, v14, v15);
    *(a1 + 20) = result;
    *(a1 + 56) = 1;
    v22 = *(a1 + 8);
    if (result >= *(v22 + 16))
    {
      *(a1 + 20) = 0;
      v23 = *(v22 + 8);
      if (!v23 || (*(a1 + 16) = v23, result = _findPage(*a1, v23, v16, v17, v18, v19, v20, v21), (*(a1 + 8) = result) == 0))
      {
        *(a1 + 57) |= 8u;
      }
    }
  }

  else
  {
    *(a1 + 57) |= 8u;
    *(a1 + 56) = 0;
  }

  return result;
}

void *_findPage(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a1)
    {
      v10 = 0;
      while (1)
      {
        v11 = *(a1 + 32 + v10);
        if (v11)
        {
          if (*v11 == a2)
          {
            break;
          }
        }

        v10 += 8;
        if (v10 == 256)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v11 = 0;
    }

    v12 = 0;
    v13 = a1 + 32;
    while (1)
    {
      if (v11)
      {
        return v11;
      }

      v14 = *(a1 + 288);
      v11 = *(v13 + 8 * v14);
      if (!v11)
      {
        v11 = _NewPage(a1, a2);
        if (!v11)
        {
          return v11;
        }

        if (_ReadPage(a1, v11, v19, v20, v21, v22, v23, v24))
        {
          return 0;
        }

        v14 = *(a1 + 288);
        *(v13 + 8 * v14) = v11;
        goto LABEL_26;
      }

      v15 = *(v11 + 2);
      if ((v15 & 0xC) == 4)
      {
        break;
      }

      if ((v15 & 4) != 0)
      {
        v11 = 0;
LABEL_26:
        v25 = v12;
        goto LABEL_27;
      }

      v25 = 0;
      *(v11 + 2) = v15 | 4;
      LODWORD(v14) = *(a1 + 288);
      v11 = 0;
LABEL_27:
      v26 = v14 + 1;
      v27 = -v26 < 0;
      v28 = -v26 & 0x1F;
      v29 = v26 & 0x1F;
      if (!v27)
      {
        v29 = -v28;
      }

      *(a1 + 288) = v29;
      v12 = v25 + 1;
      if (!v11 && v25 >= 32)
      {
        v30 = __error();
        _BOMExceptionHandlerCall("btree cache is deadlocked", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2356, *v30);
        return 0;
      }
    }

    if ((v15 & 2) != 0)
    {
      _WritePage(a1, *(v13 + 8 * v14));
    }

    v16 = 0;
    v17 = v11[3];
    v11[4] = 0;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    if ((*(a1 + 356) & 0x40) == 0)
    {
      v18 = *(a1 + 308);
      if (v18 <= *(a1 + 312))
      {
        v18 = *(a1 + 312);
      }

      bzero(v17, 8 * v18);
      v16 = v17;
    }

    *v11 = a2;
    v11[1] = -1;
    v11[3] = v16;
    v11[4] = 0;
    if (_ReadPage(a1, v11, a3, a4, a5, a6, a7, a8))
    {
      return 0;
    }

    v14 = *(a1 + 288);
    *(v13 + 8 * v14) = v11;
    goto LABEL_26;
  }

  return 0;
}

uint64_t _revalidateIterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 57))
  {
    PagesForKey = _findPagesForKey(*a1, 0, *(a1 + 24), *(a1 + 32), a5, a6, a7, a8);
    *(a1 + 8) = PagesForKey;
    if (!PagesForKey)
    {
      *(a1 + 57) |= 1u;
      goto LABEL_12;
    }

    IndexForKey = _findIndexForKey(*a1, PagesForKey, *(a1 + 24), *(a1 + 32), (a1 + 56), v12, v13, v14);
    Page = *(a1 + 8);
    *(a1 + 16) = *Page;
    *(a1 + 20) = IndexForKey;
    *(a1 + 57) &= ~1u;
    goto LABEL_9;
  }

  Page = *(a1 + 8);
  if (!Page)
  {
    v10 = *(a1 + 16);
LABEL_8:
    Page = _findPage(*a1, v10, a3, a4, a5, a6, a7, a8);
    *(a1 + 8) = Page;
    if (!Page)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v10 = *(a1 + 16);
  if (*Page != v10)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (*(a1 + 20) < *(Page + 8))
  {
    return 1;
  }

LABEL_12:
  result = 0;
  *(a1 + 57) |= 1u;
  return result;
}

uint64_t BOMTreeIteratorValueSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || (*(a1 + 57) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 57) & 1) != 0 || (v9 = *(a1 + 8)) == 0 || *v9 != *(a1 + 16))
  {
    if (_revalidateIterator(a1, a2, a3, a4, a5, a6, a7, a8))
    {
      v9 = *(a1 + 8);
      goto LABEL_8;
    }

    *(a1 + 57) |= 8u;
    return 0;
  }

LABEL_8:
  v10 = **a1;
  v11 = *(*(v9 + 24) + 8 * *(a1 + 20));
  v12 = bswap32(v11);
  if ((*(*a1 + 356) & 0x40) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  return BOMStorageSizeOfBlock(v10, v13, a3, a4, a5, a6, a7, a8);
}

uint64_t BOMTreeIteratorValue(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = *(result + 57);
    if ((v9 & 8) != 0)
    {
      return 0;
    }

    if ((*(result + 57) & 1) == 0 && (v10 = *(result + 8)) != 0 && *v10 == *(result + 16) || (v11 = _revalidateIterator(result, a2, a3, a4, a5, a6, a7, a8), v9 = *(v8 + 57), v11))
    {
      if ((v9 & 4) == 0)
      {
        v12 = bswap32(*(*(*(v8 + 8) + 24) + 8 * *(v8 + 20)));
        if ((*(*v8 + 356) & 0x40) != 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20));
        }

        v14 = BOMStorageSizeOfBlock(**v8, v13, a3, a4, a5, a6, a7, a8);
        v20 = *(v8 + 48);
        if (v14 > v20)
        {
          v21 = v14;
          v22 = *(v8 + 40);
          if (v22)
          {
            free(v22);
            *(v8 + 40) = 0;
            v20 = *(v8 + 48);
          }

          if (v21 <= 2 * v20)
          {
            v23 = 2 * v20;
          }

          else
          {
            v23 = v21;
          }

          *(v8 + 48) = v23;
          *(v8 + 40) = malloc_type_malloc(v23, 0x6CF44FC8uLL);
        }

        v24 = bswap32(*(*(*(v8 + 8) + 24) + 8 * *(v8 + 20)));
        if ((*(*v8 + 356) & 0x40) != 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20));
        }

        if (BOMStorageCopyFromBlock(**v8, v25, *(v8 + 40), v15, v16, v17, v18, v19))
        {
          return 0;
        }

        *(v8 + 57) |= 4u;
      }

      return *(v8 + 40);
    }

    else
    {
      result = 0;
      *(v8 + 57) = v9 | 8;
    }
  }

  return result;
}

uint64_t _BOMTreeDiagnosticTraverse(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, void *a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  v13 = a2;
  if (!a2)
  {
    v13 = *(a1 + 24);
  }

  *a3 = BOMStorageSizeOfBlock(*a1, *v13, a3, a4, a5, a6, a7, a8);
  if (*(v13 + 4))
  {
    if (a4)
    {
      ++*a4;
    }

    if (*(v13 + 16))
    {
      v28 = 0;
      v29 = 0;
      do
      {
        if (a6)
        {
          v30 = *(a1 + 356);
          if ((v30 & 4) == 0)
          {
            v31 = bswap32(*(*(v13 + 24) + v28 + 4));
            if ((v30 & 0x40) != 0)
            {
              v32 = v31;
            }

            else
            {
              v32 = *(*(v13 + 24) + v28 + 4);
            }

            *a6 += BOMStorageSizeOfBlock(*a1, v32, v15, v16, v17, v18, v19, v20);
          }
        }

        if (a7)
        {
          v33 = bswap32(*(*(v13 + 24) + v28));
          if ((*(a1 + 356) & 0x40) != 0)
          {
            v34 = v33;
          }

          else
          {
            v34 = *(*(v13 + 24) + v28);
          }

          *a7 += BOMStorageSizeOfBlock(*a1, v34, v15, v16, v17, v18, v19, v20);
        }

        ++v29;
        v28 += 8;
      }

      while (v29 < *(v13 + 16));
    }

    else
    {
      v29 = 0;
    }

    v37 = *(*(v13 + 24) + 8 * v29);
    if ((*(a1 + 356) & 0x40) != 0)
    {
      v23 = 0;
      if (!a7 || !v37)
      {
        return v23 != 0;
      }

      v37 = bswap32(v37);
    }

    else
    {
      v23 = 0;
      if (!a7 || !v37)
      {
        return v23 != 0;
      }
    }

    v23 = 0;
    *a7 += BOMStorageSizeOfBlock(*a1, v37, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    if (a5)
    {
      ++*a5;
    }

    if (*(v13 + 16))
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = bswap32(*(*(v13 + 24) + v21));
        if ((*(a1 + 356) & 0x40) != 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = *(*(v13 + 24) + v21);
        }

        Page = _findPage(a1, v25, v15, v16, v17, v18, v19, v20);
        v23 += _BOMTreeDiagnosticTraverse(a1, Page, a3, a4, a5, a6, a7);
        ++v22;
        v21 += 8;
      }

      while (v22 < *(v13 + 16));
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v35 = *(*(v13 + 24) + 8 * v22);
    if ((*(a1 + 356) & 0x40) == 0)
    {
      if (!v35)
      {
        return v23 != 0;
      }

      goto LABEL_38;
    }

    if (v35)
    {
      v35 = bswap32(v35);
LABEL_38:
      v36 = _findPage(a1, v35, v15, v16, v17, v18, v19, v20);
      v23 += _BOMTreeDiagnosticTraverse(a1, v36, a3, a4, a5, a6, a7);
    }
  }

  return v23 != 0;
}

uint64_t _BOMTreePrintDiagnostics(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  if (result)
  {
    v8 = result;
    result = _BOMTreeDiagnosticTraverse(result, 0, &v14, &v15, &v13, &v12, &v11, a8);
    if (!result)
    {
      v9 = v13 + v15;
      v10 = MEMORY[0x1E69E9858];
      fprintf(*MEMORY[0x1E69E9858], "           # records: %d\n", *(v8 + 20));
      fprintf(*v10, "           page size: %d (%d)\n", *(v8 + 304), v14);
      fprintf(*v10, "           # pages  : %d (%d)\n", v9, *(v8 + 304) * v9);
      fprintf(*v10, "             leaf   : %d (%d)\n", v15, *(v8 + 304) * v15);
      fprintf(*v10, "             branch : %d (%d)\n", v13, *(v8 + 304) * v13);
      fprintf(*v10, "           key size : %zd\n", v12);
      return fprintf(*v10, "           data size: %zd\n", v11);
    }
  }

  return result;
}

uint64_t BOMMemoryDump(unsigned __int8 *a1, uint64_t a2, const char *a3)
{
  v3 = a2;
  v29 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E9858];
  v6 = *MEMORY[0x1E69E9858];
  v27 = a1;
  if (!a1)
  {
    fprintf(v6, "(%lu bytes) (NULL)\n", a2);
    return 0;
  }

  fprintf(v6, "(%lu bytes)\n", a2);
  if (v3 >= 1)
  {
    v8 = v27;
    v9 = &v27[v3];
    v10 = "";
    if (a3)
    {
      v10 = a3;
    }

    v25 = v3;
    v26 = v10;
    while (1)
    {
      v11 = v8;
      fprintf(*v5, "%s%08x:", v26, v8 - v27);
      v12 = 0;
      v13 = v28;
      do
      {
        fprintf(*v5, " %02x", *v8);
        v14 = *v8;
        if (v14 < 0)
        {
          v15 = __maskrune(*v8, 0x40000uLL);
        }

        else
        {
          v15 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
        }

        if (v15)
        {
          v16 = v14;
        }

        else
        {
          v16 = 46;
        }

        *v13 = v16;
        v17 = v13 + 1;
        v18 = v12 + 1;
        if (v12 < 15)
        {
          v19 = &v11[v18];
          if (&v11[v18] < v9)
          {
            fprintf(*v5, "%02x", *v19);
            v20 = *v19;
            if (v20 < 0)
            {
              v21 = __maskrune(*v19, 0x40000uLL);
            }

            else
            {
              v21 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
            }

            if (v21)
            {
              v22 = v20;
            }

            else
            {
              v22 = 46;
            }

            v17 = v13 + 2;
            v13[1] = v22;
            v18 = v12 + 2;
          }
        }

        v8 = &v11[v18];
        if (v18 > 15)
        {
          break;
        }

        v13 = v17;
        v12 = v18;
      }

      while (v8 < v9);
      if (v18 > 15)
      {
        goto LABEL_29;
      }

      v23 = 16 - v18;
      if (((16 - v18) & 1) == 0)
      {
        goto LABEL_28;
      }

      fwrite("  ", 2uLL, 1uLL, *v5);
      if (v18 != 15)
      {
        break;
      }

LABEL_29:
      *v17 = 0;
      fprintf(*v5, "  %s\n", v28);
      if (v8 >= v9)
      {
        return v25;
      }
    }

    v23 = 15 - v18;
    do
    {
LABEL_28:
      fwrite("     ", 5uLL, 1uLL, *v5);
      v23 -= 2;
    }

    while (v23);
    goto LABEL_29;
  }

  return v3;
}

size_t BOMValueDump(size_t result, unint64_t a2, const char *a3, unsigned int a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0x1000000) == 0)
  {
LABEL_8:
    if (v6)
    {
      v11 = (v4 >> 20) & 0xF;
      v12 = MEMORY[0x1E69E9858];
      do
      {
        if ((v4 & 0x1000000) != 0)
        {
          fprintf(*v12, "  %s", a3);
        }

        switch(v11)
        {
          case 3:
            result = BOMPathKeyDump(v7, v6, a3);
            break;
          case 2:
            result = BOMPathIdDump(v7, v6, a3);
            break;
          case 1:
            result = BOMPathDump(v7);
            break;
          default:
            result = BOMMemoryDump(v7, v6, a3);
            break;
        }

        v7 += result;
        v6 -= result;
      }

      while (v6);
    }

    return result;
  }

  if (a2 < 4)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v7 = (result + 4);
  v8 = *result;
  v9 = bswap32(*result);
  v10 = "y";
  if (*result != 0x1000000)
  {
    v10 = "ies";
  }

  result = fprintf(*MEMORY[0x1E69E9858], "(%lu bytes for %d entr%s)\n", a2, v9, v10);
  v6 -= 4;
  if (v8)
  {
    goto LABEL_8;
  }

  return result;
}

size_t BOMPathDump(char *__s)
{
  if (__s)
  {
    v2 = strlen(__s);
  }

  else
  {
    v2 = 0;
  }

  fprintf(*MEMORY[0x1E69E9858], "%s (%lu bytes)\n", __s, v2);
  return v2;
}

uint64_t BOMPathIdDump(unsigned __int8 *a1, unint64_t a2, const char *a3)
{
  if (a1 && a2 >= 4)
  {
    fprintf(*MEMORY[0x1E69E9858], "0x%02x%02x%02x%02x (%lu bytes)\n", *a1, a1[1], a1[2], a1[3], 4);
    return 4;
  }

  else
  {

    return BOMMemoryDump(a1, a2, a3);
  }
}

uint64_t BOMPathKeyDump(uint64_t a1, unint64_t a2, const char *a3)
{
  if (a1 && a2 >= 5)
  {
    v3 = strlen((a1 + 4)) + 5;
    fprintf(*MEMORY[0x1E69E9858], "0x%02x%02x%02x%02x %s (%lu bytes)\n");
    return v3;
  }

  if (a1 && a2 == 4)
  {
    v3 = 4;
    fprintf(*MEMORY[0x1E69E9858], "0x%02x%02x%02x%02x (NULL) (%lu bytes)\n");
    return v3;
  }

  return BOMMemoryDump(a1, a2, a3);
}

uint64_t BOMStorageDumpTree(uint64_t a1, const char *a2, unsigned int a3)
{
  v5 = BOMTreeOpenWithName(a1, a2, 0);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E69E9858];
    fprintf(*MEMORY[0x1E69E9858], "        %s (%u entries) (%d localkeysize)\n", a2, *(v6 + 20), *(v6 + 348));
    _BOMTreePrintDiagnostics(v6, v8, v9, v10, v11, v12, v13, v14);
    v15 = BOMTreeIteratorNew(v6, 0, 0, 0);
    if (!BOMTreeIteratorIsAtEnd(v15, v16, v17, v18, v19, v20, v21, v22))
    {
      v23 = HIWORD(a3) & 0xF;
      do
      {
        fprintf(*v7, "        %s   Key ", a2);
        v31 = BOMTreeIteratorKey(v15, v24, v25, v26, v27, v28, v29, v30);
        v39 = BOMTreeIteratorKeySize(v15, v32, v33, v34, v35, v36, v37, v38);
        switch(v23)
        {
          case 3:
            BOMPathKeyDump(v31, v39, "        ");
            break;
          case 2:
            BOMPathIdDump(v31, v39, "        ");
            break;
          case 1:
            BOMPathDump(v31);
            break;
          default:
            BOMMemoryDump(v31, v39, "        ");
            break;
        }

        fprintf(*v7, "        %s Value ", a2);
        v47 = BOMTreeIteratorValue(v15, v40, v41, v42, v43, v44, v45, v46);
        v55 = BOMTreeIteratorValueSize(v15, v48, v49, v50, v51, v52, v53, v54);
        BOMValueDump(v47, v55, "        ", a3);
        BOMTreeIteratorNext(v15, v56, v57, v58, v59, v60, v61, v62);
      }

      while (!BOMTreeIteratorIsAtEnd(v15, v63, v64, v65, v66, v67, v68, v69));
    }

    fputc(10, *v7);
    if (v15)
    {
      BOMTreeIteratorFree(v15);
    }

    BOMTreeFree(v6);
    return 0;
  }

  else
  {
    fputc(10, *MEMORY[0x1E69E9858]);
    return 0xFFFFFFFFLL;
  }
}

uint64_t BOMTreePrint(uint64_t a1, const char *a2, FILE *a3, uint64_t a4)
{
  v7 = BOMTreeOpenWithName(a1, a2, 0);
  if (v7)
  {
    v8 = v7;
    fprintf(a3, "        %s (%u entries)\n", a2, *(v7 + 20));
    _BOMTreePrintDiagnostics(v8, v9, v10, v11, v12, v13, v14, v15);
    fputc(10, a3);
    v16 = *(v8 + 24);
    v18 = 0;
    _BOMTreePrintPage(v8, v16, a3, a4, 0, 0, &v18);
    fputc(10, a3);
    BOMTreeFree(v8);
    return 0;
  }

  else
  {
    fputc(10, a3);
    return 0xFFFFFFFFLL;
  }
}

_DWORD *_newBOMTree(uint64_t a1, const char *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x168uLL, 0x10B0040E869A47AuLL);
  if (v4)
  {
    __CFSetLastAllocationEventName();
    *v4 = a1;
    if (BOMStorageMemoryMapped(a1))
    {
      v5 = (BOMStorageIsOpenForWriting(a1) == 0) << 6;
    }

    else
    {
      v5 = 0;
    }

    v13 = v4[89] & 0xFFFFFFBF | v5;
    v4[89] = v13;
    if (a2)
    {
      v14 = strdup(a2);
      *(v4 + 1) = v14;
      v4[89] = v13 & 0xFFFFFFDF | (32 * (v14 != a2));
    }
  }

  else
  {
    v6 = __error();
    strerror(*v6);
    _CUILog(4, "%s: calloc: %s creating tree '%s'", v7, v8, v9, v10, v11, v12, "BOMTree _newBOMTree(BOMStorage, const char *)");
  }

  return v4;
}

void *_NewPage(uint64_t a1, int a2)
{
  v3 = *a1;
  if ((*(a1 + 356) & 0x40) != 0)
  {
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10300401C741A23uLL);
    v6 = 0;
    if (!v8)
    {
      return 0;
    }

    v7 = v8;
  }

  else
  {
    v4 = *(a1 + 308);
    if (v4 <= *(a1 + 312))
    {
      v4 = *(a1 + 312);
    }

    v5 = malloc_type_calloc(1uLL, 8 * (v4 + 1), 0x100004000313F17uLL);
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x10300401C741A23uLL);
    if (!v7)
    {
      free(v6);
      return v7;
    }
  }

  if (!a2)
  {
    a2 = BOMStorageNewBlock(v3);
  }

  v7[3] = v6;
  *v7 = a2;
  return v7;
}

uint64_t _ReadPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v17 = BOMStorageSizeOfBlock(*a1, *a2, a3, a4, a5, a6, a7, a8);
  v18 = *a1;
  if ((*(a1 + 356) & 0x40) != 0)
  {
    v27 = BOMStorageReadFromBlock(v18, v10, v11, v12, v13, v14, v15, v16);
    if (v27)
    {
      v28 = v27;
      v26 = BOMStreamWithAddress(v27, v17, 0);
      if (BOMStorageInRam(*a1))
      {
        if (v26)
        {
          goto LABEL_7;
        }
      }

      else
      {
        madvise(v28, v17, 3);
        if (v26)
        {
          goto LABEL_7;
        }
      }
    }

    return 1;
  }

  v26 = BOMStreamWithBlockID(v18, v10, v17, 0);
  if (!v26)
  {
    return 1;
  }

LABEL_7:
  UInt16 = BOMStreamReadUInt16(v26, v19, v20, v21, v22, v23, v24, v25);
  v37 = *(a2 + 4) & 0xFFFE;
  if (UInt16)
  {
    ++v37;
  }

  *(a2 + 4) = v37;
  *(a2 + 16) = BOMStreamReadUInt16(v26, v30, v31, v32, v33, v34, v35, v36);
  *(a2 + 8) = BOMStreamReadUInt32(v26, v38, v39, v40, v41, v42, v43, v44);
  *(a2 + 12) = BOMStreamReadUInt32(v26, v45, v46, v47, v48, v49, v50, v51);
  v59 = *(a2 + 16);
  if (*(a1 + 308) < v59)
  {
    v79 = BOMExceptionHandlerMessage("(tree (%s) page->numKeys(%d) > tree->maxKeys(%d)", v52, v53, v54, v55, v56, v57, v58, *(a1 + 8));
    v80 = __error();
    _BOMFatalException(v79, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 1338, *v80);
  }

  if ((*(a1 + 356) & 0x40) != 0)
  {
    *(a2 + 24) = BOMStreamGetDataPointer(v26, (8 * v59) | 4);
  }

  else
  {
    if (*(a2 + 16))
    {
      v60 = 0;
      v61 = 0;
      do
      {
        *(*(a2 + 24) + v60) = BOMStreamReadUInt32(v26, v52, v53, v54, v55, v56, v57, v58);
        *(*(a2 + 24) + v60 + 4) = BOMStreamReadUInt32(v26, v62, v63, v64, v65, v66, v67, v68);
        ++v61;
        v60 += 8;
      }

      while (v61 < *(a2 + 16));
    }

    *(*(a2 + 24) + 8 * *(a2 + 16)) = BOMStreamReadUInt32(v26, v52, v53, v54, v55, v56, v57, v58);
  }

  if ((*(a1 + 356) & 0x44) == 0x40 && (v76 = *(a1 + 348), v76 >= 1))
  {
    DataPointer = BOMStreamGetDataPointer(v26, v76 * *(a2 + 16));
  }

  else
  {
    DataPointer = 0;
  }

  *(a2 + 32) = DataPointer;
  BOMStreamFree(v26, v69, v70, v71, v72, v73, v74, v75);
  return 0;
}

void _invalidateIteratorsForPageID(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 296);
  if (v3)
  {
    v5 = BOMCFArrayMaxRange(v3);
    v7 = v6;
    v8 = *(a1 + 296);
    v9.location = v5;
    v9.length = v7;

    CFArrayApplyFunction(v8, v9, _invalidateIterator, a2);
  }
}

void _addPageToCache(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 32;
  v4 = *(a1 + 288);
  v5 = *(a1 + 32 + 8 * v4);
  if (v5)
  {
    while (1)
    {
      v7 = v5[2];
      if ((v7 & 0xC) == 4)
      {
        break;
      }

      v5[2] = v7 | 4;
      v8 = *(a1 + 288) + 1;
      v9 = -v8 < 0;
      v10 = -v8 & 0x1F;
      LODWORD(v4) = v8 & 0x1F;
      if (!v9)
      {
        LODWORD(v4) = -v10;
      }

      *(a1 + 288) = v4;
      v5 = *(v3 + 8 * v4);
      if (!v5)
      {
        v4 = v4;
        goto LABEL_10;
      }
    }

    if ((v7 & 2) != 0)
    {
      _WritePage(a1, v5);
    }

    _FreePage(a1, v5);
    v4 = *(a1 + 288);
  }

LABEL_10:
  *(v3 + 8 * v4) = a2;
}

uint64_t _invalidateIterator(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (*(result + 16) == a2 && (*(result + 57) & 9) == 0)
    {
      result = *(result + 8);
      if (!result || *result != a2)
      {
        result = _findPage(*v8, a2, a3, a4, a5, a6, a7, a8);
        *(v8 + 8) = result;
        if (!result)
        {
          goto LABEL_27;
        }
      }

      v9 = *v8;
      v10 = *(*v8 + 356);
      if ((v10 & 4) != 0)
      {
        v12 = *(*(result + 24) + 8 * *(v8 + 20) + 4);
        v13 = bswap32(v12);
        if ((v10 & 0x40) != 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = v12;
        }

        *(v8 + 24) = v14;
        *(v8 + 32) = 0;
        goto LABEL_27;
      }

      if ((v10 & 0x40) != 0)
      {
        v15 = *(v9 + 348);
        if (v15 >= 1)
        {
LABEL_17:
          *(v8 + 32) = v15;
          v16 = *(v8 + 24);
          if (v16)
          {
            free(v16);
            *(v8 + 24) = 0;
            v15 = *(v8 + 32);
          }

          v17 = malloc_type_malloc(v15, 0x7AC53727uLL);
          *(v8 + 24) = v17;
          if (!v17)
          {
            v28 = __error();
            _BOMFatalException("BOMTree iterator cannot cache keys. This is a fatal error (!it->key).", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2782, *v28);
          }

          v23 = *v8;
          if ((*(*v8 + 356) & 0x40) != 0)
          {
            v25 = *(v23 + 348);
            v26 = *(v8 + 8);
            if (v25 >= 1)
            {
              v27 = *(v26 + 32);
              if (!v27)
              {
                v30 = __error();
                _BOMFatalException("BOMTree iterator cannot cache keys. This is a fatal error (__getKeyIDValuePTR return 0).", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2790, *v30);
              }

              result = memcpy(v17, (v27 + *(v8 + 20) * v25), v25);
              goto LABEL_27;
            }

            v24 = bswap32(*(*(v26 + 24) + 8 * *(v8 + 20) + 4));
          }

          else
          {
            v24 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4);
          }

          result = BOMStorageCopyFromBlock(*v23, v24, v17, v18, v19, v20, v21, v22);
          if (result)
          {
            v29 = __error();
            _BOMFatalException("BOMTree iterator cannot cache keys. This is a fatal error (BOMStorageCopyFromBlock returned an error).", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2795, *v29);
          }

LABEL_27:
          *(v8 + 57) |= 1u;
          return result;
        }

        v11 = bswap32(*(*(result + 24) + 8 * *(v8 + 20) + 4));
      }

      else
      {
        v11 = *(*(result + 24) + 8 * *(v8 + 20) + 4);
      }

      v15 = BOMStorageSizeOfBlock(*v9, v11, a3, a4, a5, a6, a7, a8);
      goto LABEL_17;
    }
  }

  return result;
}

void _removePageFromCache(uint64_t a1, _WORD *a2)
{
  if ((a2[2] & 8) == 0)
  {
    for (i = 32; i != 288; i += 8)
    {
      if (*(a1 + i) == a2)
      {
        v5 = *(a1 + 296);
        if (v5)
        {
          v6 = BOMCFArrayMaxRange(v5);
          v8 = v7;
          v10.location = v6;
          v10.length = v8;
          CFArrayApplyFunction(*(a1 + 296), v10, _pageRemovedCallback, a2);
        }

        *(a1 + i) = 0;
      }
    }

    if ((a2[2] & 2) != 0)
    {

      _WritePage(a1, a2);
    }
  }
}

uint64_t _pageRemovedCallback(uint64_t result, uint64_t a2)
{
  if (result && a2 && *(result + 8) == a2)
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t _shiftKeysAndValues(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 16);
  v5 = *(result + 316);
  v6 = v4 >= v5;
  v8 = v4 - v5;
  v7 = v8 != 0 && v6;
  v9 = (v8 + 1) >> 1;
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a3 + 16);
  }

  v11 = *(a2 + 16);
  v12 = v10 + v11;
  v13 = (v4 - v10);
  if (a4)
  {
    v14 = 0;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v15 = *(a2 + 24);
  *(v15 + 8 * (v10 + v11)) = *(v15 + 8 * v11);
  if (v11)
  {
    v16 = v11 - 1;
    v17 = v11 - 1 + v10;
    do
    {
      *(v15 + 8 * v17--) = *(v15 + 8 * v16--);
      --v11;
    }

    while (v11);
  }

  v14 = v4 - v10;
  if (v10)
  {
LABEL_11:
    v18 = *(a3 + 24);
    v19 = *(a2 + 24);
    v11 = v11;
    v20 = v10;
    do
    {
      *(v19 + 8 * v11) = *(v18 + 8 * v14);
      if (!a4)
      {
        *(v18 + 8 * v14) = 0;
      }

      ++v11;
      ++v14;
      --v20;
    }

    while (v20);
  }

LABEL_15:
  if (a4)
  {
    if ((*(a2 + 4) & 1) == 0 && v4 == v10)
    {
      v21 = *(a3 + 24);
      v22 = 8 * v14;
      *(*(a2 + 24) + 8 * v11) = *(v21 + v22);
      *(v21 + v22) = 0;
    }

    if (v4 != v10)
    {
      if (v4)
      {
        v23 = 0;
        v24 = 8 * v10;
        v25 = 8 * v10;
        do
        {
          if (v23 >= v13)
          {
            v26 = *(a3 + 24);
            if (v13 == v23)
            {
              *(v26 + 8 * v13) = *(v26 + 8 * v13 + v25);
            }

            else
            {
              *(v26 + 8 * v23) = 0;
            }
          }

          else
          {
            v26 = *(a3 + 24);
            *(v26 + 8 * v23) = *(v26 + v24);
          }

          ++v23;
          v24 += 8;
        }

        while (v4 != v23);
      }

      else
      {
        v26 = *(a3 + 24);
      }

      *(v26 + 8 * v4) = 0;
    }
  }

  *(a2 + 16) = v12;
  *(a2 + 4) |= 2u;
  *(a3 + 16) = v13;
  *(a3 + 4) |= 2u;
  return result;
}

uint64_t _findPagesForKey(uint64_t a1, uint64_t a2, void *__s1, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v12 = *(a1 + 24);
  if (a2)
  {
    BOMStackPush(a2, v12, __s1, a4, a5, a6, a7, a8);
  }

  if ((*(v12 + 4) & 1) == 0)
  {
    do
    {
      v19 = *(*(v12 + 24) + 8 * _findIndexForKey(a1, v12, __s1, a4, 0, a6, a7, a8));
      v20 = bswap32(v19);
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      Page = _findPage(a1, v21, v13, v14, v15, v16, v17, v18);
      v12 = Page;
      if (!Page)
      {
        break;
      }

      if (a2)
      {
        BOMStackPush(a2, Page, v23, v24, v25, a6, a7, a8);
        v26 = *(v12 + 4) | 8;
      }

      else
      {
        v26 = *(Page + 2);
      }

      *(v12 + 4) = v26 & 0xFFFB;
    }

    while ((v26 & 1) == 0);
  }

  return v12;
}

uint64_t _BOMTreePrintPage(uint64_t a1, unsigned int *a2, FILE *a3, uint64_t a4, int a5, int a6, _DWORD *a7)
{
  v8 = a5;
  if (!a5)
  {
    goto LABEL_10;
  }

  v12 = a5;
  do
  {
    fwrite("                             ", 0x1DuLL, 1uLL, a3);
    --v12;
  }

  while (v12);
  if (v8)
  {
    fwrite("---", 3uLL, 1uLL, a3);
    v13 = (*a7)++;
    fprintf(a3, "| node #          : %*u\n", 8, v13);
    v14 = v8;
    do
    {
      fwrite("                             ", 0x1DuLL, 1uLL, a3);
      --v14;
    }

    while (v14);
    fwrite("   ", 3uLL, 1uLL, a3);
    fprintf(a3, "| bid             : %*u\n", 8, *a2);
    v15 = v8;
    do
    {
      fwrite("                             ", 0x1DuLL, 1uLL, a3);
      --v15;
    }

    while (v15);
    fwrite("   ", 3uLL, 1uLL, a3);
  }

  else
  {
LABEL_10:
    v22 = (*a7)++;
    fprintf(a3, "| node #          : %*u\n", 8, v22);
    fprintf(a3, "| bid             : %*u\n", 8, *a2);
  }

  v23 = BOMStorageSizeOfBlock(*a1, *a2, v16, v17, v18, v19, v20, v21);
  fprintf(a3, "| psize           : %*u\n", 8, v23);
  if (v8)
  {
    v24 = v8;
    do
    {
      fwrite("                             ", 0x1DuLL, 1uLL, a3);
      --v24;
    }

    while (v24);
    fwrite("   ", 3uLL, 1uLL, a3);
    fprintf(a3, "| prev            : %*u\n", 8, a2[3]);
    v25 = v8;
    do
    {
      fwrite("                             ", 0x1DuLL, 1uLL, a3);
      --v25;
    }

    while (v25);
    fwrite("   ", 3uLL, 1uLL, a3);
    fprintf(a3, "| next            : %*u\n", 8, a2[2]);
    v26 = v8;
    do
    {
      fwrite("                             ", 0x1DuLL, 1uLL, a3);
      --v26;
    }

    while (v26);
    fwrite("   ", 3uLL, 1uLL, a3);
  }

  else
  {
    fprintf(a3, "| prev            : %*u\n", 8, a2[3]);
    fprintf(a3, "| next            : %*u\n", 8, a2[2]);
  }

  fprintf(a3, "| num keys        : %*d/%d", 8, *(a2 + 8), *(a1 + 308));
  if ((a2[1] & 1) == 0)
  {
    fwrite("-----", 5uLL, 1uLL, a3);
    goto LABEL_40;
  }

  fputc(10, a3);
  if (v8)
  {
    v27 = v8;
    do
    {
      fwrite("                             ", 0x1DuLL, 1uLL, a3);
      --v27;
    }

    while (v27);
  }

  fwrite("   ", 3uLL, 1uLL, a3);
  if (*(a2 + 8))
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = bswap32(*(*(a2 + 3) + v34));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v38 = v37;
      }

      else
      {
        v38 = *(*(a2 + 3) + v34);
      }

      v36 += BOMStorageSizeOfBlock(*a1, v38, v28, v29, v30, v31, v32, v33);
      ++v35;
      v34 += 8;
    }

    while (v35 < *(a2 + 8));
  }

  else
  {
    v36 = 0;
    v35 = 0;
  }

  v39 = *(*(a2 + 3) + 8 * v35);
  if ((*(a1 + 356) & 0x40) == 0)
  {
    if (!v39)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v39)
  {
    v39 = bswap32(v39);
LABEL_38:
    v36 += BOMStorageSizeOfBlock(*a1, v39, v28, v29, v30, v31, v32, v33);
  }

LABEL_39:
  fprintf(a3, "| data size       : %*lu", 8, v36);
LABEL_40:
  fputc(10, a3);
  v46 = *(a2 + 2);
  if (v46)
  {
    v94 = v8;
    v95 = a6;
    v53 = malloc_type_calloc(*(a2 + 8), 8uLL, 0x10040436913F5uLL);
    if (*(a2 + 8))
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0xFFFFFFFFLL;
      do
      {
        v58 = bswap32(*(*(a2 + 3) + v54));
        if ((*(a1 + 356) & 0x40) != 0)
        {
          v59 = v58;
        }

        else
        {
          v59 = *(*(a2 + 3) + v54);
        }

        if (v59)
        {
          v60 = BOMStorageSizeOfBlock(*a1, v59, v47, v48, v49, v50, v51, v52);
          if (v57 >= v60)
          {
            v57 = v60;
          }

          v61 = malloc_type_malloc(v60, 0x8D99FF12uLL);
          if (v61)
          {
            v62 = v61;
            if (!BOMStorageCopyFromBlock(*a1, v59, v61, v48, v49, v50, v51, v52))
            {
              v53[v56++] = v62;
            }
          }
        }

        ++v55;
        v54 += 8;
      }

      while (v55 < *(a2 + 8));
      v63 = malloc_type_malloc(v57, 0x61131849uLL);
      v96 = v63;
      if ((v57 & 0x80000000) == 0)
      {
        v64 = 0;
        v65 = 0;
        v93 = v53;
        do
        {
          v66 = 0;
          v67 = v65 + (v57 - v65) / 2;
          v68 = *v53;
          while (v65 > v67)
          {
LABEL_60:
            if (++v66 > (v56 - 1))
            {
              v70 = v67 - v65 + 1;
              v71 = v63;
              memcpy(&v63[v64], &v68[v65], v70);
              v63 = v71;
              v53 = v93;
              v64 += v70;
              v65 = v67 + 1;
              goto LABEL_63;
            }
          }

          v69 = v65;
          while (*(v53[v66] + v69) == v68[v69])
          {
            if (++v69 > v67)
            {
              goto LABEL_60;
            }
          }

          LODWORD(v57) = v67 - 1;
LABEL_63:
          ;
        }

        while (v65 <= v57);
        goto LABEL_67;
      }
    }

    else
    {
      v96 = malloc_type_malloc(0xFFFFFFFFuLL, 0x61131849uLL);
      v56 = 0;
    }

    v64 = 0;
LABEL_67:
    v72 = malloc_type_malloc((2 * v64) | 1, 0x4F74F9F0uLL);
    v73 = v72;
    v98 = v64;
    if (v64)
    {
      v74 = v96;
      v75 = v72;
      do
      {
        v76 = *v74++;
        v75 += sprintf(v75, "%02X", v76);
        --v64;
      }

      while (v64);
    }

    v8 = v94;
    if (v94)
    {
      v77 = v94;
      do
      {
        fwrite("                             ", 0x1DuLL, 1uLL, a3);
        --v77;
      }

      while (v77);
    }

    fwrite("   ", 3uLL, 1uLL, a3);
    fprintf(a3, "| common key part : %s (%lu bytes)\n", v73, v98);
    if (a4 && v98)
    {
      if (v94)
      {
        v78 = v94;
        do
        {
          fwrite("                             ", 0x1DuLL, 1uLL, a3);
          --v78;
        }

        while (v78);
      }

      fwrite("   ", 3uLL, 1uLL, a3);
      fwrite("|                 : ", 0x14uLL, 1uLL, a3);
      (*(a4 + 16))(a4, v96, v98, a3);
      fputc(10, a3);
    }

    free(v73);
    free(v96);
    if (v56)
    {
      v79 = v53;
      do
      {
        v80 = *v79++;
        free(v80);
        --v56;
      }

      while (v56);
    }

    free(v53);
    v46 = *(a2 + 2);
    a6 = v95;
  }

  if (v46)
  {
    return a6;
  }

  if (((*(a2 + 8) + 1) & 0x10000) != 0)
  {
    goto LABEL_99;
  }

  v97 = *(a2 + 8);
  v81 = 0;
  v82 = v8 + 1;
  v83 = (v97 + 1);
  do
  {
    v84 = *(*(a2 + 3) + 8 * v81);
    if ((*(a1 + 356) & 0x40) != 0)
    {
      if (!v84)
      {
        goto LABEL_97;
      }

      v84 = bswap32(v84);
    }

    else if (!v84)
    {
      goto LABEL_97;
    }

    Page = _findPage(a1, v84, v40, v41, v42, v43, v44, v45);
    if (Page)
    {
      v86 = Page;
      v87 = a2;
      v88 = a6;
      v89 = 1;
      do
      {
        v90 = v89;
        v91 = v82;
        do
        {
          fwrite("                             ", 0x1DuLL, 1uLL, a3);
          --v91;
        }

        while (v91);
        fputc(124, a3);
        fputc(10, a3);
        v89 = 0;
      }

      while ((v90 & 1) != 0);
      a6 = _BOMTreePrintPage(a1, v86, a3, a4, v82, (v88 + 2), a7) + v88 + 2;
      a2 = v87;
      v83 = (v97 + 1);
    }

LABEL_97:
    ++v81;
  }

  while (v81 < v83);
  if (v97)
  {
LABEL_99:
    LOWORD(a6) = a6 + 3;
  }

  return a6;
}

_DWORD *BOMStreamWithBlockID(uint64_t a1, unsigned int a2, size_t a3, int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040879040B4uLL);
  if (!v8)
  {
    v27 = __error();
    strerror(*v27);
    _CUILog(4, "%s: malloc: %s", v28, v29, v30, v31, v32, v33, "BOMStreamWithBlockID");
    return v8;
  }

  __CFSetLastAllocationEventName();
  v8[1] = 1;
  v15 = BOMStorageSizeOfBlock(a1, a2, v9, v10, v11, v12, v13, v14);
  *(v8 + 9) = BOMStorageGetSys(a1);
  *v8 = 0;
  *(v8 + 1) = a1;
  v8[4] = a2;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = v15;
  }

  *(v8 + 4) = v16;
  v8[10] = a4;
  if (v15 <= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = v15;
  }

  v18 = malloc_type_calloc(1uLL, v17, 0x74A48935uLL);
  *(v8 + 6) = v18;
  if (!v18)
  {
    v34 = __error();
    strerror(*v34);
    _CUILog(4, "%s: malloc: %s", v35, v36, v37, v38, v39, v40, "BOMStreamWithBlockID");
    goto LABEL_16;
  }

  v25 = v18;
  *(v8 + 80) |= 1u;
  v26 = *(v8 + 4);
  *(v8 + 7) = v18;
  *(v8 + 8) = &v18[v26];
  if ((v8[10] | 2) != 2)
  {
    goto LABEL_12;
  }

  if (BOMStorageCopyFromBlock(a1, a2, v18, v20, v21, v22, v23, v24))
  {
LABEL_16:
    BOMStreamFree(v8, v19, v25, v20, v21, v22, v23, v24);
    return 0;
  }

  v26 = *(v8 + 4);
LABEL_12:
  if (!v26)
  {
    goto LABEL_16;
  }

  return v8;
}

uint64_t BOMStreamFree(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if ((*(result + 80) & 2) != 0 && BOMStreamFlush(result, a2, a3, a4, a5, a6, a7, a8))
    {
      return 1;
    }

    else
    {
      v9 = *(v8 + 48);
      if (v9)
      {
        if (*(v8 + 80))
        {
          free(v9);
        }
      }

      free(v8);
      return 0;
    }
  }

  return result;
}

void *BOMStreamWithFileAndSys(int a1, uint64_t a2, size_t a3, int a4, char *a5, __int128 *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040879040B4uLL);
  if (v12)
  {
    if (!a6)
    {
      a6 = BomSys_default();
    }

    __CFSetLastAllocationEventName();
    v12[9] = a6;
    *v12 = 0x100000001;
    *(v12 + 5) = a1;
    v12[3] = a2;
    v12[4] = a3;
    *(v12 + 10) = a4;
    if (a5)
    {
      v12[6] = a5;
      *(v12 + 80) &= ~1u;
      if ((a3 & 0x8000000000000000) != 0)
      {
LABEL_15:
        v21 = __error();
        strerror(*v21);
        _CUILog(4, "%s: malloc: %s", v22, v23, v24, v25, v26, v27, "BOMStreamWithFileAndSys");
LABEL_18:
        BOMStreamFree(v12);
        return 0;
      }
    }

    else
    {
      v20 = malloc_type_calloc(1uLL, a3, 0x22400796uLL);
      v12[6] = v20;
      if (!v20)
      {
        goto LABEL_15;
      }

      a5 = v20;
      *(v12 + 80) |= 1u;
      a3 = v12[4];
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }
    }

    v12[7] = a5;
    v12[8] = &a5[a3];
    if ((*(v12 + 10) | 2) == 2)
    {
      if ((*(a6 + 7))(*(a6 + 1), *(v12 + 5), v12[3], 0) == -1)
      {
        v28 = __error();
        strerror(*v28);
        _CUILog(4, "%s: lseek: %s", v29, v30, v31, v32, v33, v34, "BOMStreamWithFileAndSys");
        goto LABEL_18;
      }

      a3 = (*(a6 + 5))(*(a6 + 1), *(v12 + 5), v12[6], v12[4]);
      if (a3 != v12[4])
      {
        v35 = __error();
        strerror(*v35);
        _CUILog(4, "%s: read: %s", v36, v37, v38, v39, v40, v41, "BOMStreamWithFileAndSys");
        goto LABEL_18;
      }
    }

    if (!a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = __error();
    strerror(*v13);
    _CUILog(4, "%s: malloc: %s", v14, v15, v16, v17, v18, v19, "BOMStreamWithFileAndSys");
  }

  return v12;
}

void *BOMStreamWithAddress(uint64_t a1, uint64_t a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040879040B4uLL);
  if (v6)
  {
    __CFSetLastAllocationEventName();
    *v6 = 0x100000002;
    v6[4] = a2;
    *(v6 + 10) = a3;
    v6[6] = a1;
    *(v6 + 80) &= ~1u;
    if (a2 < 0)
    {
      _CUILog(4, "%s: stream invalid: overflow", v8, v9, v10, v11, v12, v13, "BOMStreamWithAddress");
LABEL_7:
      BOMStreamFree(v6, v7, v8, v9, v10, v11, v12, v13);
      return 0;
    }

    v6[7] = a1;
    v6[8] = a1 + a2;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = __error();
    strerror(*v14);
    _CUILog(4, "%s malloc: %s", v15, v16, v17, v18, v19, v20, "BOMStreamWithAddress");
  }

  return v6;
}

uint64_t BOMStreamFlush(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CUILog(4, "%s: bad stream!", a3, a4, a5, a6, a7, a8, "BOMStreamFlush");
    return 1;
  }

  if (!a1[10])
  {
    goto LABEL_13;
  }

  v9 = *a1;
  if (*a1 == 2)
  {
    goto LABEL_13;
  }

  if (v9 == 1)
  {
    if ((*(*(a1 + 9) + 56))(*(*(a1 + 9) + 8), a1[5], *(a1 + 3), 0) == -1)
    {
      v18 = __error();
      strerror(*v18);
      _CUILog(4, "%s: lseek: %s", v19, v20, v21, v22, v23, v24, "BOMStreamFlush");
    }

    else
    {
      if ((*(*(a1 + 9) + 48))(*(*(a1 + 9) + 8), a1[5], *(a1 + 6), *(a1 + 4)) == *(a1 + 4))
      {
LABEL_13:
        result = 0;
        goto LABEL_14;
      }

      v11 = __error();
      strerror(*v11);
      _CUILog(4, "%s: write: %s", v12, v13, v14, v15, v16, v17, "BOMStreamFlush");
    }

    return 1;
  }

  if (v9)
  {
    _CUILog(4, "%s: unknown stream type: %d", a3, a4, a5, a6, a7, a8, "BOMStreamFlush");
    goto LABEL_13;
  }

  result = BOMStorageCopyToBlock(*(a1 + 1), a1[4], *(a1 + 6), *(a1 + 4), a5, a6, a7, a8);
LABEL_14:
  *(a1 + 80) &= ~2u;
  return result;
}

uint64_t BOMStreamGetByteOrder(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t BOMStreamReadUInt32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40) == 1)
  {
    v9 = BOMExceptionHandlerMessage("%s read called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt32");
    v10 = *__error();
    v11 = v9;
    v12 = 0;
    v13 = 278;
LABEL_5:
    _BOMExceptionHandlerCall(v11, v12, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v13, v10);
    v17 = 0;
    goto LABEL_7;
  }

  v14 = *(a1 + 56);
  v15 = v14 + 1;
  if ((v14 + 1) > *(a1 + 64))
  {
    v16 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt32");
    v10 = *__error();
    v11 = v16;
    v12 = 1;
    v13 = 280;
    goto LABEL_5;
  }

  v17 = *v14;
  *(a1 + 56) = v15;
LABEL_7:
  v18 = bswap32(v17);
  if (*(a1 + 4) == 2)
  {
    return v17;
  }

  else
  {
    return v18;
  }
}

uint64_t BOMStreamReadUInt16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40) == 1)
  {
    v9 = BOMExceptionHandlerMessage("%s read called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt16");
    v10 = *__error();
    v11 = v9;
    v12 = 0;
    v13 = 298;
LABEL_5:
    _BOMExceptionHandlerCall(v11, v12, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v13, v10);
    v17 = 0;
    goto LABEL_7;
  }

  v14 = *(a1 + 56);
  v15 = v14 + 1;
  if ((v14 + 1) > *(a1 + 64))
  {
    v16 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt16");
    v10 = *__error();
    v11 = v16;
    v12 = 1;
    v13 = 300;
    goto LABEL_5;
  }

  v17 = *v14;
  *(a1 + 56) = v15;
LABEL_7:
  v18 = __rev16(v17);
  if (*(a1 + 4) == 2)
  {
    return v17;
  }

  else
  {
    return v18;
  }
}

uint64_t BOMStreamReadUInt8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40) == 1)
  {
    v8 = BOMExceptionHandlerMessage("%s read called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt8");
    v9 = *__error();
    v10 = v8;
    v11 = 0;
    v12 = 318;
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = v13 + 1;
    if ((v13 + 1) <= *(a1 + 64))
    {
      v16 = *v13;
      *(a1 + 56) = v14;
      return v16;
    }

    v15 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadUInt8");
    v9 = *__error();
    v10 = v15;
    v11 = 1;
    v12 = 320;
  }

  _BOMExceptionHandlerCall(v10, v11, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v12, v9);
  return 0;
}

uint64_t (*BOMStreamReadBuffer(uint64_t a1, void *__dst, size_t __len, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  if (*(a1 + 40) == 1)
  {
    v8 = BOMExceptionHandlerMessage("%s read called on read-only buffer", __dst, __len, a4, a5, a6, a7, a8, "BOMStreamReadBuffer");
    v9 = *__error();
    v10 = v8;
    v11 = 0;
    v12 = 332;
  }

  else
  {
    v15 = *(a1 + 56);
    if (__CFADD__(__len, v15))
    {
      return BOMStreamReadBuffer_cold_1(a1, __dst, __len, a4, a5, a6, a7, a8);
    }

    if (v15 + __len <= *(a1 + 64))
    {
      result = memmove(__dst, v15, __len);
      *(a1 + 56) += __len;
      return result;
    }

    v16 = BOMExceptionHandlerMessage("%s buffer overflow", __dst, __len, a4, a5, a6, a7, a8, "BOMStreamReadBuffer");
    v9 = *__error();
    v10 = v16;
    v11 = 1;
    v12 = 347;
  }

  return _BOMExceptionHandlerCall(v10, v11, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v12, v9);
}

BOOL BOMStreamAtEOF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40))
  {
    v9 = BOMExceptionHandlerMessage("%s Can't check EOF on a writeable stream", a2, a3, a4, a5, a6, a7, a8, "BOMStreamAtEOF");
    v10 = __error();
    _BOMExceptionHandlerCall(v9, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", 359, *v10);
  }

  return *(a1 + 56) == *(a1 + 64);
}

uint64_t (*BOMStreamWriteUInt32(uint64_t (*result)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  v8 = bswap32(a2);
  if (*(result + 1) == 2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  if (*(result + 10))
  {
    v10 = *(result + 7);
    if ((v10 + 1) <= *(result + 8))
    {
      *v10 = v9;
      *(result + 7) += 4;
      *(result + 80) |= 2u;
      return result;
    }

    v11 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt32");
    v12 = *__error();
    v13 = v11;
    v14 = 1;
    v15 = 379;
  }

  else
  {
    v16 = BOMExceptionHandlerMessage("%s write called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt32");
    v12 = *__error();
    v13 = v16;
    v14 = 0;
    v15 = 377;
  }

  return _BOMExceptionHandlerCall(v13, v14, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v15, v12);
}

uint64_t (*BOMStreamWriteUInt16(uint64_t (*result)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  v8 = __rev16(a2);
  if (*(result + 1) == 2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  if (*(result + 10))
  {
    v10 = *(result + 7);
    if ((v10 + 1) <= *(result + 8))
    {
      *v10 = v9;
      *(result + 7) += 2;
      *(result + 80) |= 2u;
      return result;
    }

    v11 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt16");
    v12 = *__error();
    v13 = v11;
    v14 = 1;
    v15 = 398;
  }

  else
  {
    v16 = BOMExceptionHandlerMessage("%s write called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt16");
    v12 = *__error();
    v13 = v16;
    v14 = 0;
    v15 = 396;
  }

  return _BOMExceptionHandlerCall(v13, v14, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v15, v12);
}

uint64_t (*BOMStreamWriteUInt8(uint64_t (*result)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  if (*(result + 10))
  {
    v8 = *(result + 7);
    if ((v8 + 1) <= *(result + 8))
    {
      *v8 = a2;
      ++*(result + 7);
      *(result + 80) |= 2u;
      return result;
    }

    v9 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt8");
    v10 = *__error();
    v11 = v9;
    v12 = 1;
    v13 = 411;
  }

  else
  {
    v14 = BOMExceptionHandlerMessage("%s write called on read-only buffer", a2, a3, a4, a5, a6, a7, a8, "BOMStreamWriteUInt8");
    v10 = *__error();
    v11 = v14;
    v12 = 0;
    v13 = 409;
  }

  return _BOMExceptionHandlerCall(v11, v12, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v13, v10);
}

uint64_t (*BOMStreamWriteBuffer(uint64_t a1, const void *a2, size_t __len, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  if (*(a1 + 40))
  {
    v10 = *(a1 + 56);
    if (v10 + __len <= *(a1 + 64))
    {
      result = memmove(v10, a2, __len);
      *(a1 + 56) += __len;
      *(a1 + 80) |= 2u;
      return result;
    }

    v11 = BOMExceptionHandlerMessage("%s buffer overflow", a2, __len, a4, a5, a6, a7, a8, "BOMStreamWriteBuffer");
    v12 = *__error();
    v13 = v11;
    v14 = 1;
    v15 = 424;
  }

  else
  {
    v16 = BOMExceptionHandlerMessage("%s write called on read-only buffer", a2, __len, a4, a5, a6, a7, a8, "BOMStreamWriteBuffer");
    v12 = *__error();
    v13 = v16;
    v14 = 0;
    v15 = 422;
  }

  return _BOMExceptionHandlerCall(v13, v14, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", v15, v12);
}

uint64_t BOMStreamGetDataPointer(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  result = *(a1 + 56);
  *(a1 + 56) = result + a2;
  return result;
}

uint64_t parse_macho_iterate_slices(const char *a1, uint64_t a2)
{
  v4 = open(a1, 256);
  if (v4 < 0)
  {
    v8 = __error();
    v9 = strerror(*v8);
    syslog(3, "Failed to open macho file at %s for reading: %s", a1, v9);
    return 0;
  }

  else
  {
    v5 = v4;
    v6 = parse_macho_iterate_slices_fd(v4, a1, a2);
    close(v5);
    return v6;
  }
}

uint64_t parse_macho_iterate_slices_fd(int a1, uint64_t a2, uint64_t a3)
{
  __buf[0] = 0;
  memset(&v24, 0, sizeof(v24));
  if (fstat(a1, &v24))
  {
    v5 = __error();
    strerror(*v5);
    syslog(3, "Failed to stat %s : %s");
    return 0;
  }

  if (v24.st_size <= 8)
  {
    syslog(3, "File at %s is not a valid mach-o (too small to contain a valid header)");
    return 0;
  }

  *__error() = 0;
  if (pread(a1, __buf, 4uLL, 0) != 4)
  {
    v7 = __error();
    strerror(*v7);
    syslog(3, "Failed to read magic from %s : %s");
    return 0;
  }

  if (__buf[0] <= -805638659)
  {
    if (__buf[0] != -1095041334 && __buf[0] != -889275714)
    {
      v6 = -822415874;
      goto LABEL_15;
    }

    fat_header = 0;
    *__error() = 0;
    if (pread(a1, &fat_header, 8uLL, 0) == 8)
    {
      magic = fat_header.magic;
      if (fat_header.magic == -1095041334)
      {
        swap_fat_header(&fat_header, NX_LittleEndian);
        magic = fat_header.magic;
      }

      syslog(7, "Got fat header with magic 0x%08x and %u archs", magic, fat_header.nfat_arch);
      if (fat_header.nfat_arch < 0x401)
      {
        v15 = 20 * fat_header.nfat_arch;
        if (v24.st_size > (v15 + 8))
        {
          v14 = malloc_type_malloc(20 * fat_header.nfat_arch, 0xE03DB683uLL);
          if (pread(a1, v14, v15, 8) == v15)
          {
            swap_fat_arch(v14, fat_header.nfat_arch, NX_LittleEndian);
            if (!fat_header.nfat_arch)
            {
LABEL_37:
              v8 = 1;
              if (!v14)
              {
                return v8;
              }

              goto LABEL_28;
            }

            v16 = 0;
            v17 = v14;
            while (1)
            {
              syslog(7, "Evaluating fat slice with cputype %d; subtype %d; offset %u; size %u; align %u", v17->cputype, v17->cpusubtype, v17->offset, v17->size, v17->align);
              offset = v17->offset;
              if (v24.st_size <= offset)
              {
                syslog(3, "Fat arch %u in %s specifies offset which is beyond the end of the file");
                goto LABEL_27;
              }

              macho_header_and_load_commands = _read_macho_header_and_load_commands(a1, offset, v24.st_size);
              if (!macho_header_and_load_commands)
              {
                break;
              }

              v20 = macho_header_and_load_commands;
              v21 = (*(a3 + 16))(a3, v17, macho_header_and_load_commands);
              free(v20);
              if (++v16 < fat_header.nfat_arch)
              {
                ++v17;
                if (v21)
                {
                  continue;
                }
              }

              goto LABEL_37;
            }

            syslog(3, "Failed to read macho header and load commands in %s at %u");
          }

          else
          {
            v22 = __error();
            strerror(*v22);
            syslog(3, "Failed to read fat archs from %s : %s");
          }

LABEL_27:
          v8 = 0;
          if (!v14)
          {
            return v8;
          }

LABEL_28:
          free(v14);
          return v8;
        }

        syslog(3, "File is not large enough to contain %u fat arch headers and their referenced slices.");
      }

      else
      {
        syslog(3, "Number of fat archs %u exceeds the maximum %u");
      }
    }

    else
    {
      v13 = __error();
      strerror(*v13);
      syslog(3, "Failed to read fat header of %s : %s");
    }

    v14 = 0;
    goto LABEL_27;
  }

  if ((__buf[0] + 17958194) >= 2)
  {
    v6 = -805638658;
LABEL_15:
    if (__buf[0] != v6)
    {
      syslog(3, "Unknown binary with magic 0x%08x at %s");
      return 0;
    }
  }

  v10 = _read_macho_header_and_load_commands(a1, 0, v24.st_size);
  if (v10)
  {
    v11 = v10;
    (*(a3 + 16))(a3, 0, v10);
    free(v11);
    return 1;
  }

  syslog(3, "Failed to read macho header and load commands in %s at %u");
  return 0;
}

char *_read_macho_header_and_load_commands(int a1, off_t a2, uint64_t a3)
{
  __buf = 0u;
  v18 = 0u;
  v6 = pread(a1, &__buf, 0x20uLL, a2);
  if (v6 < 0)
  {
    v8 = __error();
    strerror(*v8);
    syslog(3, "Failed to read mach header at offset %lld : %s");
    goto LABEL_26;
  }

  if (v6 != 28 && v6 != 32)
  {
    syslog(3, "Expected to read at least sizeof(struct mach_header) but only got %zd bytes");
    goto LABEL_26;
  }

  v7 = v18;
  if (__buf > -17958195)
  {
    if (__buf != -17958194)
    {
      if (__buf == -17958193)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (__buf != -822415874)
    {
      if (__buf == -805638658)
      {
        v7 = vrev32_s8(*&v18);
LABEL_11:
        if (v6 == 32)
        {
          v9 = 32;
          goto LABEL_18;
        }

        syslog(3, "Got 64-bit magic but didn't read size of 64-bit mach header");
LABEL_26:
        v12 = 0;
        goto LABEL_27;
      }

LABEL_14:
      syslog(3, "Unknown magic in macho header at offset %llu: 0x%08x");
      goto LABEL_26;
    }

    v7 = vrev32_s8(*&v18);
  }

  v9 = 28;
LABEL_18:
  v10 = v7.u32[1];
  if (8 * v7.u32[0] > v7.u32[1])
  {
    syslog(3, "Space required for total size of load commands (%llu) is greater than indicated size of commands (%u).");
    goto LABEL_26;
  }

  if ((v9 + v7.u32[1] + a2) >= a3)
  {
    syslog(3, "File is not large enough to contain commands with length %u");
    goto LABEL_26;
  }

  v11 = malloc_type_malloc(v9 + v7.u32[1], 0xE91A1002uLL);
  v12 = v11;
  if (!v11)
  {
    v15 = __error();
    strerror(*v15);
    syslog(3, "Failed to allocate %llu bytes: %s");
    goto LABEL_27;
  }

  memcpy(v11, &__buf, v9);
  v13 = pread(a1, &v12[v9], v10, v9 + a2);
  if (v13 < 0)
  {
    v16 = __error();
    strerror(*v16);
    syslog(3, "Failed to read %u bytes at offset %lld : %s");
    goto LABEL_27;
  }

  if (v13 != v10)
  {
    syslog(3, "Expected to read %u bytes of commands but only got %zd bytes");
LABEL_27:
    free(v12);
    return 0;
  }

  return v12;
}

uint64_t get_highest_sdk_version_for_any_slice(const char *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __get_highest_sdk_version_for_any_slice_block_invoke;
  v4[3] = &unk_1E7EE0A88;
  v4[4] = &v5;
  v4[5] = a1;
  if (parse_macho_iterate_slices(a1, v4))
  {
    v2 = *(v6 + 6);
  }

  else
  {
    syslog(3, "Failed to iterate macho file at %s", a1);
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __get_highest_sdk_version_for_any_slice_block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  dyld_get_image_versions();
  v2 = *(v7 + 6);
  if (!v2)
  {
    syslog(3, "Failed to get SDK version from slice in %s", *(a1 + 40));
    v2 = *(v7 + 6);
  }

  syslog(7, "Slice had version 0x%08x", v2);
  v3 = *(v7 + 6);
  v4 = *(*(a1 + 32) + 8);
  if (v3 > *(v4 + 24))
  {
    *(v4 + 24) = v3;
  }

  _Block_object_dispose(&v6, 8);
  return 1;
}

BOOL parse_macho_is_cpu_type_runnable_for_apps(int a1, int a2, char *a3, int *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    syslog(3, "Error: Argument pointer must not be null");
    v12 = 13;
    syslog(3, "Unable to determine CPU type is runnable with error: %d", 13);
    v9 = 0;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_12;
  }

  v17[0] = a1;
  v17[1] = a2;
  v16 = 0;
  v15 = 4;
  v8 = sysctlbyname("kern.grade_cputype", &v16, &v15, v17, 8uLL);
  v9 = v8 == 0;
  if (v8)
  {
    v10 = __error();
    v11 = strerror(*v10);
    syslog(3, "Error calling kern.grade_cputype for CPU type 0x%x and subtype 0x%x: %s", a1, a2, v11);
    v12 = 12;
    syslog(3, "Unable to determine CPU type is runnable with error: %d", 12);
    v13 = 0;
  }

  else if (v16 >= 1 && a1 == 16777228 && (a2 & 0xFFFFFFu) <= 2)
  {
    syslog(7, "CPU type 0x%x and subtype 0x%x are runnable", 16777228, a2);
    v12 = 0;
    v13 = 1;
  }

  else
  {
    syslog(7, "CPU type 0x%x and subtype 0x%x are not runnable", a1, a2);
    v12 = 0;
    v13 = 0;
  }

  *a3 = v13;
  if (a4)
  {
LABEL_12:
    *a4 = v12;
  }

  return v9;
}

BOOL parse_macho_is_file_runnable_for_apps(const char *a1, _BYTE *a2, _DWORD *a3)
{
  v34 = 0;
  v33 = 0;
  memset(&v32, 0, sizeof(v32));
  v31 = 0;
  if (!a1)
  {
    v34 = 1;
    syslog(3, "Input path is NULL");
    goto LABEL_58;
  }

  if (!a2)
  {
    v34 = 13;
    syslog(3, "Error: Argument pointer must not be null");
    goto LABEL_60;
  }

  v6 = open(a1, 256);
  if (v6 != -1)
  {
    v7 = v6;
    if (fstat(v6, &v32) == -1)
    {
      v12 = *__error();
      v34 = 3;
      cputype = a1;
      cpusubtype = strerror(v12);
      v9 = "Can't stat input file %s: %s";
      goto LABEL_54;
    }

    st_size = v32.st_size;
    if (read(v7, &v31, 4uLL) != 4)
    {
      v13 = *__error();
      v34 = 5;
      cputype = a1;
      cpusubtype = strerror(v13);
      v9 = "Failed to read header for file %s: %s";
      goto LABEL_54;
    }

    if (lseek(v7, 0, 0) == -1)
    {
      v14 = *__error();
      v34 = 4;
      cputype = a1;
      cpusubtype = strerror(v14);
      v9 = "Can't seek input file %s: %s";
      goto LABEL_54;
    }

    if (st_size >= 8 && v31 == -1095041334)
    {
      *&fat_header.magic = 0;
      if (read(v7, &fat_header, 8uLL) != 8)
      {
        v16 = *__error();
        v34 = 5;
        cputype = a1;
        cpusubtype = strerror(v16);
        v9 = "Failed to read fat header from input file %s: %s";
        goto LABEL_54;
      }

      swap_fat_header(&fat_header, NX_LittleEndian);
      if (fat_header.cputype >= 0x401u)
      {
        v34 = 7;
        cputype = fat_header.cputype;
        cpusubtype = 1024;
        v9 = "Number of fat archs %u exceeds the maximum %u";
LABEL_54:
        v15 = 3;
        goto LABEL_55;
      }

      v17 = 20 * fat_header.cputype;
      if (v17 + 8 > st_size)
      {
        v34 = 8;
        cputype = a1;
        v9 = "Malformed fat file: %s";
        goto LABEL_54;
      }

      v19 = malloc_type_malloc(v17, 0x4A4E4860uLL);
      if (v19)
      {
        if (read(v7, v19, v17) == v17)
        {
          swap_fat_arch(v19, fat_header.cputype, NX_LittleEndian);
          if (fat_header.cputype)
          {
            v20 = 0;
            p_cpusubtype = &v19->cpusubtype;
            do
            {
              v22 = v20;
              if (!parse_macho_is_cpu_type_runnable_for_apps(*(p_cpusubtype - 1), *p_cpusubtype, &v33, &v34))
              {
                v24 = "Failed to check if cpu type is runnable";
                goto LABEL_68;
              }

              if (v33 == 1)
              {
                break;
              }

              p_cpusubtype += 5;
              v20 = v22 + 1;
            }

            while (v22 + 1 < fat_header.cputype);
            if (v33)
            {
              goto LABEL_65;
            }
          }

          else if (v33)
          {
LABEL_65:
            syslog(7, "FAT matching_arch cpu_type: 0x%x cpu_subtype: 0x%x");
            goto LABEL_56;
          }

          cputype = a1;
          v24 = "Failed to find matching arch for FAT input file %s";
        }

        else
        {
          v27 = *__error();
          v34 = 6;
          cputype = a1;
          cpusubtype = strerror(v27);
          v24 = "Failed to read fat arch(s) from input file %s: %s";
        }
      }

      else
      {
        v23 = *__error();
        v34 = 9;
        cputype = strerror(v23);
        v24 = "Failed to allocate memory for fat arch(s): %s";
      }

LABEL_68:
      syslog(3, v24, cputype, cpusubtype);
LABEL_56:
      free(v19);
      if ((v7 & 0x80000000) == 0)
      {
        close(v7);
      }

LABEL_58:
      if (!a2)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    if (st_size >= 0x1C)
    {
      if (v31 == -17958194 || v31 == -822415874)
      {
        memset(&fat_header, 0, 28);
        if (read(v7, &fat_header, 0x1CuLL) == 28)
        {
          if (v31 == -822415874)
          {
            swap_mach_header(&fat_header, NX_LittleEndian);
          }

          if (parse_macho_is_cpu_type_runnable_for_apps(fat_header.cputype, fat_header.cpusubtype, &v33, &v34))
          {
            if (v33 != 1)
            {
              cputype = a1;
              v9 = "Failed to find matching arch for 32-bit Mach-O input file %s";
              goto LABEL_54;
            }

            cputype = fat_header.cputype;
            cpusubtype = fat_header.cpusubtype;
            v9 = "32-bit thin matching_arch cpu_type: 0x%x cpu_subtype: 0x%x";
LABEL_27:
            v15 = 7;
LABEL_55:
            syslog(v15, v9, cputype, cpusubtype);
            v19 = 0;
            goto LABEL_56;
          }

          goto LABEL_51;
        }

        goto LABEL_41;
      }

      if (st_size >= 0x20 && (v31 == -17958193 || v31 == -805638658))
      {
        memset(&fat_header, 0, sizeof(fat_header));
        if (read(v7, &fat_header, 0x20uLL) == 32)
        {
          if (v31 == -805638658)
          {
            swap_mach_header_64(&fat_header, NX_LittleEndian);
          }

          if (parse_macho_is_cpu_type_runnable_for_apps(fat_header.cputype, fat_header.cpusubtype, &v33, &v34))
          {
            if (v33 != 1)
            {
              cputype = a1;
              v9 = "Failed to find matching arch for 64-bit Mach-O input file %s";
              goto LABEL_54;
            }

            cputype = fat_header.cputype;
            cpusubtype = fat_header.cpusubtype;
            v9 = "64-bit thin matching_arch cpu_type: 0x%x cpu_subtype: 0x%x";
            goto LABEL_27;
          }

LABEL_51:
          v9 = "Failed to check if cpu type is runnable";
          goto LABEL_54;
        }

LABEL_41:
        v18 = *__error();
        v34 = 5;
        cputype = a1;
        cpusubtype = strerror(v18);
        v9 = "Failed to read mach header from input file %s: %s";
        goto LABEL_54;
      }
    }

    v34 = 10;
    cputype = a1;
    v9 = "Unknown binary format for input file %s.";
    goto LABEL_54;
  }

  v10 = *__error();
  v34 = 2;
  v11 = strerror(v10);
  syslog(3, "Can't open input file %s: %s", a1, v11);
LABEL_59:
  *a2 = v33;
LABEL_60:
  v25 = v34;
  if (a3)
  {
    *a3 = v34;
  }

  return v25 == 0;
}

void logAndSetError_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_1B9DEC000, log, OS_LOG_TYPE_ERROR, "%@ (%ld)", &v3, 0x16u);
}

void __CUISubtypeFromIndex_cold_1(uint64_t a1)
{
  CUIPlatformNameForPlatform(a1);
  _CUILog(4, "CoreUI: %s got a index %d that doesn't map to a known device subtype in platform %d:'%@'", v1, v2, v3, v4, v5, v6, "int32_t __CUISubtypeFromIndex(CUIThemeSchemaPlatform, u_int32_t)");
  abort();
}

void _CUILog_cold_4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_FAULT, "%{public}@", &v2, 0xCu);
}

uint64_t _CUICopySortedKeySignature(char *__dst, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = -1;
  if (__dst && a2 >= 0x65)
  {
    v9 = stpncpy(__dst, "{", a2 - 1);
    v10 = (&__dst[a2] - v9);
    if (&__dst[a2] == v9 || (a4 & 0xFFFFFFFFFFFFFFFELL) < 1)
    {
      v28 = v9;
    }

    else
    {
      v11 = a3 + 2;
      do
      {
        v12 = *(v11 - 2);
        v13 = (v12 >> 8) & 0xF;
        if (v12 >= 0xA000)
        {
          v14 = 87;
        }

        else
        {
          v14 = 48;
        }

        v15 = v14 + (v12 >> 12);
        if (v13 >= 0xA)
        {
          v16 = 87;
        }

        else
        {
          v16 = 48;
        }

        v17 = v16 + v13;
        v18 = v12 & 0xF;
        v19 = v12 >> 4;
        if (v19 >= 0xA)
        {
          v20 = 87;
        }

        else
        {
          v20 = 48;
        }

        v21 = v20 + v19;
        if (v18 >= 0xA)
        {
          v22 = 87;
        }

        else
        {
          v22 = 48;
        }

        v23 = v22 + v18;
        v25 = v15 == 48 && v17 == 48;
        v26 = v21 == 48 && v25;
        v27 = v9 + 1;
        if (v26 && v23 == 48)
        {
          *v9 = 48;
        }

        else if (v26)
        {
          *v9 = v23;
        }

        else if (v25)
        {
          *v9 = v21;
          v27 = v9 + 2;
          v9[1] = v23;
        }

        else if (v15 == 48)
        {
          v27 = v9 + 3;
          *v9 = v17;
          v9[1] = v21;
          v9[2] = v23;
        }

        else
        {
          *v9 = v15;
          v9[1] = v17;
          v9[2] = v21;
          v27 = v9 + 4;
          v9[3] = v23;
        }

        *v27 = 45;
        v28 = v27 + 1;
        v10 -= 5;
        if (v10)
        {
          v29 = v11 >= a3 + (a4 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          v29 = 1;
        }

        v11 += 2;
        v9 = v28;
      }

      while (!v29);
    }

    if ((v10 - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v28 -= 2;
    }

    else
    {
      *(v28 - 1) = 125;
    }

    *v28 = 0;
    return v28 - __dst;
  }

  return result;
}

void _CUIRenditionKeySetIntegerValueForAttribute_cold_1(unsigned __int16 a1)
{
  v1 = CUIThemeAttributeNameToString(a1);
  _CUILog(4, "CoreUI: Value passed for rendition key attribute out of bounds for u_int16_t identifier:'%s:%d' value:'%d'", v2, v3, v4, v5, v6, v7, v1);
  __assert_rtn("_CUIRenditionKeySetIntegerValueForAttribute", "CUIRenditionKey.m", 28, "0");
}

uint64_t (*BOMStorageCopyToBlockRange_cold_1())(void *)
{
  OUTLINED_FUNCTION_1_2();
  BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v0, v1, v2, v3, v4, v5, v6, v12);
  __error();
  v7 = OUTLINED_FUNCTION_0_3();

  return _BOMExceptionHandlerCall(v7, v8, v9, 933, v10);
}

uint64_t (*BOMStorageCopyToBlockRange_cold_2())(void *)
{
  OUTLINED_FUNCTION_1_2();
  BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v0, v1, v2, v3, v4, v5, v6, v12);
  __error();
  v7 = OUTLINED_FUNCTION_0_3();

  return _BOMExceptionHandlerCall(v7, v8, v9, 961, v10);
}

uint64_t (*BOMStorageCopyToBlockRange_cold_3())(void *)
{
  OUTLINED_FUNCTION_1_2();
  BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v0, v1, v2, v3, v4, v5, v6, v12);
  __error();
  v7 = OUTLINED_FUNCTION_0_3();

  return _BOMExceptionHandlerCall(v7, v8, v9, 921, v10);
}

uint64_t (*BOMStorageCopyToBlockRange_cold_4())(void *)
{
  OUTLINED_FUNCTION_1_2();
  BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v0, v1, v2, v3, v4, v5, v6, v12);
  __error();
  v7 = OUTLINED_FUNCTION_0_3();

  return _BOMExceptionHandlerCall(v7, v8, v9, 898, v10);
}

uint64_t (*BOMStorageCopyToBlockRange_cold_5())(void *)
{
  OUTLINED_FUNCTION_1_2();
  BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v0, v1, v2, v3, v4, v5, v6, v12);
  __error();
  v7 = OUTLINED_FUNCTION_0_3();

  return _BOMExceptionHandlerCall(v7, v8, v9, 861, v10);
}

uint64_t (*BOMStorageCopyFromBlockRange_cold_1())(void *)
{
  v0 = *__error();

  return _BOMExceptionHandlerCall("BOMStorageCopyRangeFromBlockRange: length extends beyond block size overflow", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1152, v0);
}

uint64_t (*BOMStreamReadBuffer_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  v8 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadBuffer");
  v9 = *__error();

  return _BOMExceptionHandlerCall(v8, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", 344, v9);
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x1EEDB9528](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x1EEDBA770](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x1EEDBF300](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}