uint64_t BOMTreeCopyToTree(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if (a1 && a2)
  {
    if (!*(a2 + 20))
    {
      *(a2 + 295) = 1;
    }

    v4 = BOMTreeIteratorNew(a1, 0, 0, 0);
    if (!v4)
    {
      goto LABEL_13;
    }

    for (i = v4; ; BOMTreeIteratorNext(i))
    {
      if (BOMTreeIteratorIsAtEnd(i))
      {
        v3 = 0;
        goto LABEL_11;
      }

      v6 = BOMTreeIteratorKey(i);
      v7 = BOMTreeIteratorKeySize(i);
      v8 = BOMTreeIteratorValue(i);
      v9 = BOMTreeIteratorValueSize(i);
      if (BOMTreeSetValue(a2, v6, v7, v8, v9))
      {
        break;
      }
    }

    v3 = 1;
LABEL_11:
    BOMTreeIteratorFree(i);
  }

  if (a2)
  {
LABEL_13:
    *(a2 + 295) = 0;
  }

  return v3;
}

uint64_t BOMTreeIteratorValue(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 67))
    {
      return 0;
    }

    if (!*(result + 65) && (v2 = *(result + 8)) != 0 && *v2 == *(result + 16) || _revalidateIterator(result))
    {
      if (!*(v1 + 64))
      {
        v3 = BOMStorageSizeOfBlock(**v1, *(*(*(v1 + 8) + 32) + 4 * *(v1 + 20)));
        v4 = *(v1 + 48);
        v5 = *(v1 + 56);
        if (v3 > v5)
        {
          v6 = v3;
          if (v4)
          {
            free(*(v1 + 48));
            *(v1 + 48) = 0;
            v5 = *(v1 + 56);
          }

          if (v6 <= 2 * v5)
          {
            v7 = 2 * v5;
          }

          else
          {
            v7 = v6;
          }

          *(v1 + 56) = v7;
          v4 = BOM_malloc(v7);
          *(v1 + 48) = v4;
        }

        if (BOMStorageCopyFromBlock(**v1, *(*(*(v1 + 8) + 32) + 4 * *(v1 + 20)), v4))
        {
          return 0;
        }

        *(v1 + 64) = 1;
      }

      return *(v1 + 48);
    }

    else
    {
      result = 0;
      *(v1 + 67) = 1;
    }
  }

  return result;
}

uint64_t BOMTreeIteratorValueSize(uint64_t a1)
{
  if (!a1 || *(a1 + 67))
  {
    return 0;
  }

  if (*(a1 + 65) || (v3 = *(a1 + 8)) == 0 || *v3 != *(a1 + 16))
  {
    if (!_revalidateIterator(a1))
    {
      *(a1 + 67) = 1;
      return 0;
    }

    v3 = *(a1 + 8);
  }

  v4 = **a1;
  v5 = *(*(v3 + 32) + 4 * *(a1 + 20));

  return BOMStorageSizeOfBlock(v4, v5);
}

uint64_t BOMTreeSetDensePacking(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 295) = a2;
  }

  return result;
}

_DWORD *BOMTreeIteratorSet(uint64_t a1, const void *a2, size_t a3, BOOL *a4)
{
  *(a1 + 65) = 0;
  *(a1 + 67) = 0;
  result = _findPagesForKey(*a1, 0, a2, a3);
  *(a1 + 8) = result;
  if (result)
  {
    *(a1 + 16) = *result;
    result = _findIndexForKey(*a1, result, a2, a3, a4);
    *(a1 + 20) = result;
    *(a1 + 66) = 1;
    v9 = *(a1 + 8);
    if (result >= *(v9 + 16))
    {
      *(a1 + 20) = 0;
      v10 = *(v9 + 8);
      if (!v10 || (*(a1 + 16) = v10, result = _findPage(*a1, v10), (*(a1 + 8) = result) == 0))
      {
        *(a1 + 67) = 1;
      }
    }
  }

  else
  {
    *(a1 + 66) = 256;
  }

  return result;
}

void *_findPage(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a1)
    {
      v4 = 0;
      while (1)
      {
        v5 = *(a1 + 32 + v4);
        if (v5)
        {
          if (*v5 == a2)
          {
            break;
          }
        }

        v4 += 8;
        if (v4 == 256)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v5 = 0;
    }

    v6 = 0;
    v7 = a1 + 32;
    while (1)
    {
      if (v5)
      {
        return v5;
      }

      v8 = *(a1 + 288);
      v5 = *(v7 + 8 * v8);
      if (!v5)
      {
        v5 = _NewPage(a1, a2);
        if (!v5)
        {
          return v5;
        }

        if (_ReadPage(a1, v5))
        {
          return 0;
        }

        v8 = *(a1 + 288);
        *(v7 + 8 * v8) = v5;
        goto LABEL_22;
      }

      v9 = *(v5 + 2);
      if ((v9 & 0xC) == 4)
      {
        break;
      }

      if ((v9 & 4) != 0)
      {
        v5 = 0;
LABEL_22:
        v12 = v6;
        goto LABEL_23;
      }

      v12 = 0;
      *(v5 + 2) = v9 | 4;
      LODWORD(v8) = *(a1 + 288);
      v5 = 0;
LABEL_23:
      v13 = v8 + 1;
      v14 = -v13 < 0;
      v15 = -v13 & 0x1F;
      v16 = v13 & 0x1F;
      if (!v14)
      {
        v16 = -v15;
      }

      *(a1 + 288) = v16;
      v6 = v12 + 1;
      if (!v5 && v12 >= 32)
      {
        v17 = __error();
        _BOMExceptionHandlerCall("btree cache is deadlocked", 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMTree.c", 2144, *v17);
        return 0;
      }
    }

    if ((v9 & 2) != 0)
    {
      _WritePage(a1, *(v7 + 8 * v8));
    }

    v10 = v5[3];
    v11 = v5[4];
    *v5 = 0u;
    *(v5 + 1) = 0u;
    v5[4] = 0;
    bzero(v10, 4 * *(a1 + 316));
    bzero(v11, 4 * *(a1 + 320));
    *v5 = a2;
    v5[1] = -1;
    v5[3] = v10;
    v5[4] = v11;
    if (_ReadPage(a1, v5))
    {
      return 0;
    }

    v8 = *(a1 + 288);
    *(v7 + 8 * v8) = v5;
    goto LABEL_22;
  }

  return 0;
}

uint64_t _revalidateIterator(uint64_t a1)
{
  if (!*(a1 + 65))
  {
    Page = *(a1 + 8);
    if (Page)
    {
      v5 = *(a1 + 16);
      if (*Page == v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = *(a1 + 16);
    }

    Page = _findPage(*a1, v5);
    *(a1 + 8) = Page;
    if (!Page)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  PagesForKey = _findPagesForKey(*a1, 0, *(a1 + 24), *(a1 + 32));
  *(a1 + 8) = PagesForKey;
  if (!PagesForKey)
  {
    goto LABEL_11;
  }

  IndexForKey = _findIndexForKey(*a1, PagesForKey, *(a1 + 24), *(a1 + 32), (a1 + 66));
  Page = *(a1 + 8);
  *(a1 + 16) = *Page;
  *(a1 + 20) = IndexForKey;
  *(a1 + 65) = 0;
LABEL_9:
  if (*(a1 + 20) < *(Page + 8))
  {
    return 1;
  }

LABEL_11:
  result = 0;
  *(a1 + 65) = 1;
  return result;
}

uint64_t BOMTreeVerifyLeaves(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (!v2)
    {
      return 0;
    }

    _SyncCache(result);
    if ((*(v2 + 2) & 1) == 0)
    {
      while (1)
      {
        v3 = _NewPage(v1, **(v2 + 4));
        if (!v3)
        {
          v5 = *__error();
          v6 = "verifier: can't make page";
          v7 = 2642;
          goto LABEL_24;
        }

        v4 = v3;
        if (_ReadPage(v1, v3))
        {
          break;
        }

        if (v2 != *(v1 + 24))
        {
          _FreePage(v2);
        }

        v2 = v4;
        if (*(v4 + 2))
        {
          goto LABEL_11;
        }
      }

      v5 = *__error();
      v6 = "verifier: can't read page";
      v7 = 2647;
      goto LABEL_24;
    }

    v4 = v2;
LABEL_11:
    if (*(v4 + 3))
    {
      v5 = *__error();
      v6 = "verifier: first leaf has prev value";
      v7 = 2658;
LABEL_24:
      _BOMExceptionHandlerCall(v6, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMTree.c", v7, v5);
      return 0;
    }

    v9 = v4 + 8;
    v8 = *(v4 + 2);
    if (v8)
    {
      while (1)
      {
        v10 = _NewPage(v1, v8);
        if (!v10)
        {
          v5 = *__error();
          v6 = "verifier: can't make page";
          v7 = 2666;
          goto LABEL_24;
        }

        v11 = v10;
        if (_ReadPage(v1, v10))
        {
          v5 = *__error();
          v6 = "verifier: can't read page";
          v7 = 2671;
          goto LABEL_24;
        }

        if (*v9 != *v11)
        {
          v5 = *__error();
          v6 = "verifier: page->next != next->bid";
          v7 = 2678;
          goto LABEL_24;
        }

        if (*(v11 + 3) != *v4)
        {
          break;
        }

        if (v4 != *(v1 + 24))
        {
          _FreePage(v4);
        }

        v9 = v11 + 8;
        v8 = *(v11 + 2);
        v4 = v11;
        if (!v8)
        {
          goto LABEL_28;
        }
      }

      v5 = *__error();
      v6 = "verifier: next->prev != page->bid";
      v7 = 2683;
      goto LABEL_24;
    }

    v11 = v4;
LABEL_28:
    if (v11 != *(v1 + 24))
    {
      _FreePage(v11);
    }

    return 1;
  }

  return result;
}

uint64_t _BOMTreeDiagnosticTraverse(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, void *a5, void *a6)
{
  if (!a1)
  {
    return 1;
  }

  v10 = a2;
  if (!a2)
  {
    v10 = *(a1 + 24);
  }

  if (*(v10 + 4))
  {
    if (a3)
    {
      ++*a3;
    }

    if (!*(v10 + 16))
    {
      v16 = 0;
LABEL_28:
      v13 = 0;
      if (a6)
      {
        v19 = *(*(v10 + 32) + 4 * v16);
        if (v19)
        {
          v13 = 0;
          *a6 += BOMStorageSizeOfBlock(*a1, v19);
        }
      }

      return v13 != 0;
    }

    v16 = 0;
    while (!a5 || *(a1 + 294))
    {
      if (a6)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (++v16 >= *(v10 + 16))
      {
        goto LABEL_28;
      }
    }

    *a5 += BOMStorageSizeOfBlock(*a1, *(*(v10 + 24) + 4 * v16));
    if (!a6)
    {
      goto LABEL_20;
    }

LABEL_19:
    *a6 += BOMStorageSizeOfBlock(*a1, *(*(v10 + 32) + 4 * v16));
    goto LABEL_20;
  }

  if (a4)
  {
    ++*a4;
  }

  if (*(v10 + 16))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      Page = _findPage(a1, *(*(v10 + 32) + 4 * v12));
      v13 += _BOMTreeDiagnosticTraverse(a1, Page, a3, a4, a5, a6);
      ++v12;
    }

    while (v12 < *(v10 + 16));
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v17 = *(*(v10 + 32) + 4 * v12);
  if (v17)
  {
    v18 = _findPage(a1, v17);
    v13 += _BOMTreeDiagnosticTraverse(a1, v18, a3, a4, a5, a6);
  }

  return v13 != 0;
}

uint64_t _BOMTreePrintDiagnostics(uint64_t result)
{
  v7 = 0;
  v6 = 0;
  v4 = 0;
  v5 = 0;
  if (result)
  {
    v1 = result;
    result = _BOMTreeDiagnosticTraverse(result, 0, &v7, &v6, &v5, &v4);
    if (!result)
    {
      v2 = v6 + v7;
      v3 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "   # records: %d\n", *(v1 + 20));
      fprintf(*v3, "   # pages  : %d (%d)\n", v2, *(v1 + 312) * v2);
      fprintf(*v3, "     leaf   : %d (%d)\n", v7, *(v1 + 312) * v7);
      fprintf(*v3, "     branch : %d (%d)\n", v6, *(v1 + 312) * v6);
      fprintf(*v3, "   key size : %zd\n", v5);
      return fprintf(*v3, "   data size: %zd\n", v4);
    }
  }

  return result;
}

uint64_t BOMMemoryDump(unsigned __int8 *a1, uint64_t a2, const char *a3)
{
  v3 = a2;
  v30 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D85E08];
  v6 = *MEMORY[0x277D85E08];
  v28 = a1;
  if (!a1)
  {
    fprintf(v6, "(%lu bytes) (NULL)\n", a2);
    v3 = 0;
    goto LABEL_32;
  }

  fprintf(v6, "(%lu bytes)\n", a2);
  if (v3 >= 1)
  {
    v8 = v28;
    v9 = &v28[v3];
    v10 = "";
    if (a3)
    {
      v10 = a3;
    }

    v26 = v3;
    v27 = v10;
    while (1)
    {
      v11 = v8;
      fprintf(*v5, "%s%08x:", v27, v8 - v28);
      v12 = 0;
      v13 = v29;
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
          v15 = *(MEMORY[0x277D85DE0] + 4 * v14 + 60) & 0x40000;
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
              v21 = *(MEMORY[0x277D85DE0] + 4 * v20 + 60) & 0x40000;
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
      fprintf(*v5, "  %s\n", v29);
      if (v8 >= v9)
      {
        v3 = v26;
        goto LABEL_32;
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

LABEL_32:
  v24 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t BOMStorageDumpTree(uint64_t a1, const char *a2, unsigned int a3)
{
  v4 = a2;
  v5 = BOMTreeOpenWithName(a1, a2, 0);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277D85E08];
    fprintf(*MEMORY[0x277D85E08], "        %s (%u entries)\n", v4, *(v5 + 20));
    v26 = v6;
    v8 = BOMTreeIteratorNew(v6, 0, 0, 0);
    if (!BOMTreeIteratorIsAtEnd(v8))
    {
      v9 = HIWORD(a3) & 0xF;
      v27 = v9;
      v28 = a3;
      do
      {
        fprintf(*v7, "        %s   Key ", v4);
        v10 = BOMTreeIteratorKey(v8);
        v11 = BOMTreeIteratorKeySize(v8);
        switch(v9)
        {
          case 3:
            BOMPathKeyDump(v10, v11);
            break;
          case 2:
            BOMPathIdDump(v10, v11);
            break;
          case 1:
            BOMPathDump(v10);
            break;
          default:
            BOMMemoryDump(v10, v11, "        ");
            break;
        }

        fprintf(*v7, "        %s Value ", v4);
        v12 = BOMTreeIteratorValue(v8);
        v13 = BOMTreeIteratorValueSize(v8);
        v14 = v13;
        if ((a3 & 0x1000000) != 0)
        {
          if (v13 >= 4)
          {
            v17 = v4;
            v18 = a3;
            v20 = *v12;
            v12 += 4;
            v19 = v20;
            v21 = bswap32(v20);
            v22 = "ies";
            if (v20 == 0x1000000)
            {
              v22 = "y";
            }

            fprintf(*v7, "(%lu bytes for %d entr%s)\n", v13, v21, v22);
            v15 = v19 != 0;
            v14 -= 4;
            v16 = v18;
            v4 = v17;
            if (!v14)
            {
              goto LABEL_32;
            }

LABEL_20:
            if (v15)
            {
              v23 = (v16 >> 20) & 0xF;
              do
              {
                if ((v16 & 0x1000000) != 0)
                {
                  fprintf(*v7, "  %s", "        ");
                }

                switch(v23)
                {
                  case 3:
                    v24 = BOMPathKeyDump(v12, v14);
                    break;
                  case 2:
                    v24 = BOMPathIdDump(v12, v14);
                    break;
                  case 1:
                    v24 = BOMPathDump(v12);
                    break;
                  default:
                    v24 = BOMMemoryDump(v12, v14, "        ");
                    break;
                }

                v12 += v24;
                v14 -= v24;
              }

              while (v14);
            }

            goto LABEL_32;
          }

          v16 = 0;
          v15 = 1;
          if (v13)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v15 = 1;
          v16 = a3;
          if (v13)
          {
            goto LABEL_20;
          }
        }

LABEL_32:
        BOMTreeIteratorNext(v8);
        v9 = v27;
        a3 = v28;
      }

      while (!BOMTreeIteratorIsAtEnd(v8));
    }

    fputc(10, *v7);
    if (v8)
    {
      BOMTreeIteratorFree(v8);
    }

    BOMTreeFree(v26);
    return 0;
  }

  else
  {
    fputc(10, *MEMORY[0x277D85E08]);
    return 0xFFFFFFFFLL;
  }
}

void *_newBOMTree(uint64_t a1, const char *a2)
{
  v4 = BOM_malloczero(0x168uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    if (a2)
    {
      v4[1] = strdup(a2);
    }
  }

  else
  {
    v6 = *MEMORY[0x277D85DF8];
    v7 = __error();
    v8 = strerror(*v7);
    fprintf(v6, "malloc: %s\n", v8);
  }

  return v5;
}

void *_NewPage(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = BOM_malloczero(4 * (*(a1 + 316) + 1));
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = BOM_malloczero(4 * (*(a1 + 320) + 1));
  if (!v7)
  {
    free(v6);
    return 0;
  }

  v8 = v7;
  v9 = BOM_malloczero(0x28uLL);
  if (v9)
  {
    if (!a2)
    {
      a2 = BOMStorageNewBlock(v4);
    }

    v9[3] = v6;
    v9[4] = v8;
    *v9 = a2;
  }

  else
  {
    free(v6);
    free(v8);
  }

  return v9;
}

uint64_t _ReadPage(uint64_t a1, uint64_t a2)
{
  v3 = BOMStreamWithBlockID(*a1, *a2, *(a1 + 312), 0);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  UInt16 = BOMStreamReadUInt16(v3);
  v6 = *(a2 + 4) & 0xFFFE;
  if (UInt16)
  {
    ++v6;
  }

  *(a2 + 4) = v6;
  *(a2 + 16) = BOMStreamReadUInt16(v4);
  *(a2 + 8) = BOMStreamReadUInt32(v4);
  *(a2 + 12) = BOMStreamReadUInt32(v4);
  if (*(a2 + 16))
  {
    v7 = 0;
    do
    {
      *(*(a2 + 32) + 4 * v7) = BOMStreamReadUInt32(v4);
      *(*(a2 + 24) + 4 * v7++) = BOMStreamReadUInt32(v4);
    }

    while (v7 < *(a2 + 16));
  }

  *(*(a2 + 32) + 4 * *(a2 + 16)) = BOMStreamReadUInt32(v4);
  BOMStreamFree(v4);
  return 0;
}

void _invalidateIteratorsForPageID(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 304);
  if (v3)
  {
    v5 = BOMCFArrayMaxRange(v3);
    v7 = v6;
    v8 = *(a1 + 304);
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

    _FreePage(v5);
    v4 = *(a1 + 288);
  }

LABEL_10:
  *(v3 + 8 * v4) = a2;
}

uint64_t _invalidateIterator(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 16) == a2 && !*(result + 67) && !*(result + 65))
    {
      result = *(result + 8);
      if (result && *result == a2 || (result = _findPage(*v2, a2), (*(v2 + 8) = result) != 0))
      {
        if (*(*v2 + 294))
        {
          *(v2 + 24) = *(*(result + 24) + 4 * *(v2 + 20));
          *(v2 + 32) = 0;
        }

        else
        {
          v3 = BOMStorageSizeOfBlock(**v2, *(*(result + 24) + 4 * *(v2 + 20)));
          *(v2 + 32) = v3;
          if (*(v2 + 24))
          {
            free(*(v2 + 24));
            *(v2 + 24) = 0;
            v3 = *(v2 + 32);
          }

          v4 = BOM_malloc(v3);
          *(v2 + 24) = v4;
          if (!v4)
          {
            v5 = __error();
            _BOMFatalException("BOMTree iterator cannot cache keys. This is a fatal error (!it->key).\n", "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMTree.c", 2550, *v5);
          }

          result = BOMStorageCopyFromBlock(**v2, *(*(*(v2 + 8) + 24) + 4 * *(v2 + 20)), v4);
          if (result)
          {
            v6 = __error();
            _BOMFatalException("BOMTree iterator cannot cache keys. This is a fatal error (BOMStorageCopyFromBlock returned an error).\n", "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMTree.c", 2554, *v6);
          }
        }
      }

      *(v2 + 65) = 1;
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
        v5 = *(a1 + 304);
        if (v5)
        {
          v6 = BOMCFArrayMaxRange(v5);
          v8 = v7;
          v10.location = v6;
          v10.length = v8;
          CFArrayApplyFunction(*(a1 + 304), v10, _pageRemovedCallback, a2);
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
  v5 = *(result + 324);
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
  v13 = v4 - v10;
  if (a4)
  {
    v14 = 0;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v15 = *(a2 + 32);
  *(v15 + 4 * v12) = *(v15 + 4 * v11);
  if (v11)
  {
    v16 = *(a2 + 24);
    v17 = v11 - 1;
    v18 = v11 - 1 + v10;
    do
    {
      *(v16 + 4 * v18) = *(v16 + 4 * v17);
      *(v15 + 4 * v18--) = *(v15 + 4 * v17--);
      --v11;
    }

    while (v11);
  }

  v14 = v4 - v10;
  if (v10)
  {
LABEL_11:
    v19 = *(a3 + 24);
    v20 = *(a3 + 32);
    v11 = v11;
    v21 = v10;
    v22 = *(a2 + 24);
    result = *(a2 + 32);
    do
    {
      *(v22 + 4 * v11) = *(v19 + 4 * v14);
      *(result + 4 * v11) = *(v20 + 4 * v14);
      if (!a4)
      {
        *(v19 + 4 * v14) = 0;
        *(v20 + 4 * v14) = 0;
      }

      ++v11;
      ++v14;
      --v21;
    }

    while (v21);
  }

LABEL_15:
  if (a4)
  {
    if ((*(a2 + 4) & 1) == 0 && v4 == v10)
    {
      v23 = *(a3 + 32);
      *(*(a2 + 32) + 4 * v11) = *(v23 + 4 * v14);
      *(v23 + 4 * v14) = 0;
    }

    if (v4 != v10)
    {
      if (v4)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= v13)
          {
            v28 = *(a3 + 24);
            if (v13 != v24)
            {
              *(v28 + 4 * v24) = 0;
              v25 = *(a3 + 32);
              *(v25 + 4 * v24) = 0;
              goto LABEL_28;
            }

            *(v28 + 4 * v13) = 0;
            v25 = *(a3 + 32);
            v26 = (v25 + 4 * v13);
            v27 = v26[v10];
          }

          else
          {
            v25 = *(a3 + 32);
            *(*(a3 + 24) + 4 * v24) = *(*(a3 + 24) + 4 * v24 + 4 * v10);
            v26 = (v25 + 4 * v24);
            v27 = v26[v10];
          }

          *v26 = v27;
LABEL_28:
          if (v4 == ++v24)
          {
            goto LABEL_31;
          }
        }
      }

      v25 = *(a3 + 32);
LABEL_31:
      *(v25 + 4 * v4) = 0;
    }
  }

  *(a2 + 16) = v12;
  *(a2 + 4) |= 2u;
  *(a3 + 16) = v4 - v10;
  *(a3 + 4) |= 2u;
  return result;
}

uint64_t _findPagesForKey(uint64_t a1, char *a2, const void *a3, size_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  if (a2)
  {
    BOMStackPush(a2, v8);
  }

  if ((*(v8 + 4) & 1) == 0)
  {
    do
    {
      IndexForKey = _findIndexForKey(a1, v8, a3, a4, 0);
      Page = _findPage(a1, *(*(v8 + 32) + 4 * IndexForKey));
      v8 = Page;
      if (!Page)
      {
        break;
      }

      if (a2)
      {
        BOMStackPush(a2, Page);
        v11 = *(v8 + 4) | 8;
      }

      else
      {
        v11 = *(Page + 2);
      }

      *(v8 + 4) = v11 & 0xFFFB;
    }

    while ((v11 & 1) == 0);
  }

  return v8;
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

  fprintf(*MEMORY[0x277D85E08], "%s (%lu bytes)\n", __s, v2);
  return v2;
}

uint64_t BOMPathIdDump(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 < 4)
  {

    return BOMMemoryDump(a1, a2, "        ");
  }

  else
  {
    if (a1)
    {
      fprintf(*MEMORY[0x277D85E08], "0x%02x%02x%02x%02x (%lu bytes)\n", *a1, a1[1], a1[2], a1[3], 4);
    }

    return 4;
  }
}

uint64_t BOMPathKeyDump(char *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 >= 5)
  {
    v3 = strlen(a1 + 4) + 5;
    v4 = *a1;
    v9 = a1[2];
    v11 = a1[3];
    v7 = a1[1];
    fprintf(*MEMORY[0x277D85E08], "0x%02x%02x%02x%02x %s (%lu bytes)\n");
    return v3;
  }

  if (a2 == 4)
  {
    v5 = *a1;
    v3 = 4;
    v12 = a1[3];
    v8 = a1[1];
    v10 = a1[2];
    fprintf(*MEMORY[0x277D85E08], "0x%02x%02x%02x%02x (NULL) (%lu bytes)\n");
    return v3;
  }

  return BOMMemoryDump(a1, a2, "        ");
}

void *data_archive_entry_new(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  result = platform_calloc(a1, 1uLL, 0x80uLL);
  if (result)
  {
    *result = 1684369012;
    result[1] = a1;
    *(result + 30) = 1953391972;
  }

  return result;
}

void data_archive_entry_free(void *__b)
{
  if (__b && *__b == 1684369012 && *(__b + 30) == 1953391972)
  {
    v2 = __b[3];
    if (v2)
    {
      platform_free(__b[1], v2);
    }

    v3 = __b[1];
    platform_memset(v3, __b, 0, 0x80uLL);

    platform_free(v3, __b);
  }
}

_DWORD *data_archive_entry_get_type(_DWORD *result)
{
  if (result)
  {
    if (*result == 1684369012 && result[30] == 1953391972)
    {
      return result[4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t data_archive_entry_set_format_entry(uint64_t a1, int a2, int a3, _DWORD *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1684369012 || *(a1 + 120) != 1953391972)
  {
    v30 = "Invalid data archive entry";
    v31 = a5;
    v32 = 214;
LABEL_27:
    capture_error(v31, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", v32, "data_archive_entry_set_format_entry", v30, a6, a7, a8, v134);
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    v30 = "Unknown format type";
    v31 = a5;
    v32 = 220;
    goto LABEL_27;
  }

  if (!a4)
  {
    v30 = "Invalid format entry";
    v31 = a5;
    v32 = 226;
    goto LABEL_27;
  }

  if (!darc_format_entry_get_type(a4))
  {
    v30 = "Unknown data entry type";
    v31 = a5;
    v32 = 235;
    goto LABEL_27;
  }

  if (a2 == 9)
  {
    type = darc_format_entry_get_type(a4);
    if (type > 9)
    {
      if ((type - 12) < 3)
      {
        goto LABEL_69;
      }

      if (type == 10)
      {
        *(a1 + 16) = 0x100000003;
        attribute = darc_format_entry_get_attribute(a4, "name", 0);
        if (attribute <= 0)
        {
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 1300, "populate_pkzip_entry_central_directory_header", "PKZip local header format entry is missing %s attribute", v57, v58, v59, "name");
          return 0xFFFFFFFFLL;
        }

        v60 = attribute + 1;
        v61 = platform_calloc(*(a1 + 8), attribute + 1, 1uLL);
        if (!v61)
        {
          v106 = __error();
          strerror(*v106);
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 1308, "populate_pkzip_entry_central_directory_header", "Could not allocate %ld bytes for name buffer: %s", v107, v108, v109, v60);
          return 0xFFFFFFFFLL;
        }

        v62 = v61;
        if (darc_format_entry_get_attribute(a4, "name", v61) == -1)
        {
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 1315, "populate_pkzip_entry_central_directory_header", "Could not get %s attribute", v63, v64, v65, "name");
          return 0xFFFFFFFFLL;
        }

        *(a1 + 24) = v62;
        v66 = *(a1 + 24) + platform_strlen(*(a1 + 8), v62);
        v67 = *(v66 - 1);
        if (v67 == 47)
        {
          *(v66 - 1) = 0;
        }

        if (darc_format_entry_get_attribute(a4, "pkzip central directory header", 0) <= 0)
        {
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 1341, "populate_pkzip_entry_central_directory_header", "PKZip local header format entry is missing %s attribute", v68, v69, v70, "pkzip central directory header");
          return 0xFFFFFFFFLL;
        }

        memset(v135, 0, sizeof(v135));
        if (darc_format_entry_get_attribute(a4, "pkzip central directory header", v135) == -1)
        {
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 1350, "populate_pkzip_entry_central_directory_header", "Could not get %s attribute", v71, v72, v73, "pkzip central directory header");
          return 0xFFFFFFFFLL;
        }

        *(a1 + 80) = DWORD2(v135[1]);
        v74 = convert_dos_to_unix_time(a1, WORD6(v135[0]), HIWORD(v135[0]));
        *(a1 + 88) = v74;
        *(a1 + 72) = v74;
        v75 = (DWORD2(v135[2]) >> 4) & 1;
        if (v67 == 47)
        {
          v75 = 1;
        }

        if (v75)
        {
          v76 = 16832;
        }

        else
        {
          v76 = -32384;
        }

        if (DWORD2(v135[2]) >> 28)
        {
          v76 = WORD5(v135[2]);
        }

        *(a1 + 48) = v76;
        if (darc_format_entry_get_attribute(a4, "pkzip extra field InfoZIP UNIX v1", 0) >= 1)
        {
          v138 = 0u;
          v139 = 0u;
          if (darc_format_entry_get_attribute(a4, "pkzip extra field InfoZIP UNIX v1", &v138) == -1)
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 1393, "populate_pkzip_entry_central_directory_header", "Could not get %s attribute", v77, v78, v79, "pkzip extra field InfoZIP UNIX v1");
            return 0xFFFFFFFFLL;
          }

          v80 = *(&v138 + 1);
          *(a1 + 88) = v138;
          *(a1 + 72) = v80;
          if (v139 == 1)
          {
            *(a1 + 52) = DWORD1(v139);
          }

          if (BYTE8(v139) == 1)
          {
            *(a1 + 56) = HIDWORD(v139);
          }
        }

        return 0;
      }

LABEL_72:
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 909, "populate_pkzip_entry", "Unsupported format entry type: %d", v53, v54, v55, type);
      return 0xFFFFFFFFLL;
    }

    if (type == 1)
    {
      goto LABEL_70;
    }

    if (type != 6)
    {
      if (type == 7)
      {
        goto LABEL_69;
      }

      goto LABEL_72;
    }

    v82 = darc_format_entry_get_attribute(a4, "name", 0);
    if (v82 <= 0)
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 948, "populate_pkzip_entry_local_header", "PKZip local header format entry is missing %s attribute", v83, v84, v85, "name");
      return 0xFFFFFFFFLL;
    }

    v86 = v82 + 1;
    v87 = platform_calloc(*(a1 + 8), v82 + 1, 1uLL);
    if (!v87)
    {
      v114 = __error();
      strerror(*v114);
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 956, "populate_pkzip_entry_local_header", "Could not allocate %ld bytes for name buffer: %s", v115, v116, v117, v86);
      return 0xFFFFFFFFLL;
    }

    v88 = v87;
    if (darc_format_entry_get_attribute(a4, "name", v87) == -1)
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 963, "populate_pkzip_entry_local_header", "Could not get %s attribute", v89, v90, v91, "name");
      return 0xFFFFFFFFLL;
    }

    *(a1 + 24) = v88;
    if (darc_format_entry_get_attribute(a4, "pkzip local header", 0) <= 0)
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 978, "populate_pkzip_entry_local_header", "PKZip local header format entry is missing %s attribute", v92, v93, v94, "pkzip local header");
      return 0xFFFFFFFFLL;
    }

    v138 = 0u;
    v139 = 0u;
    if (darc_format_entry_get_attribute(a4, "pkzip local header", &v138) == -1)
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 987, "populate_pkzip_entry_local_header", "Could not get %s attribute", v95, v96, v97, "pkzip local header");
      return 0xFFFFFFFFLL;
    }

    v98 = DWORD1(v139);
    *(a1 + 80) = DWORD2(v139);
    *(a1 + 112) = v98;
    v99 = convert_dos_to_unix_time(a1, WORD5(v138), WORD6(v138));
    *(a1 + 88) = v99;
    *(a1 + 72) = v99;
    v100 = BYTE6(v138);
    if (BYTE6(v138))
    {
      *(a1 + 104) = 1;
    }

    if ((v100 & 8) != 0)
    {
      *(a1 + 105) = 1;
      v101 = (a1 + 108);
    }

    else
    {
      *(a1 + 108) = v139;
      v101 = (a1 + 108);
      if ((*(a1 + 105) & 1) == 0)
      {
LABEL_108:
        if (darc_format_entry_get_attribute(a4, "pkzip extra field extended timestamp", 0) >= 1)
        {
          memset(v135, 0, 24);
          if (darc_format_entry_get_attribute(a4, "pkzip extra field extended timestamp", v135) == -1)
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 1041, "populate_pkzip_entry_local_header", "Could not get %s attribute", v118, v119, v120, "pkzip extra field extended timestamp");
            return 0xFFFFFFFFLL;
          }

          *(a1 + 72) = *&v135[0];
          *(a1 + 88) = *(v135 + 8);
        }

        if (darc_format_entry_get_attribute(a4, "pkzip extra field InfoZIP UNIX v1", 0) >= 1)
        {
          memset(v135, 0, 32);
          if (darc_format_entry_get_attribute(a4, "pkzip extra field InfoZIP UNIX v1", v135) == -1)
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 1064, "populate_pkzip_entry_local_header", "Could not get %s attribute", v121, v122, v123, "pkzip extra field InfoZIP UNIX v1");
            return 0xFFFFFFFFLL;
          }

          v124 = *(&v135[0] + 1);
          *(a1 + 88) = *&v135[0];
          *(a1 + 72) = v124;
          if (LOBYTE(v135[1]) == 1)
          {
            *(a1 + 52) = DWORD1(v135[1]);
          }

          if (BYTE8(v135[1]) == 1)
          {
            *(a1 + 56) = HIDWORD(v135[1]);
          }
        }

        if (darc_format_entry_get_attribute(a4, "pkzip extra field InfoZIP UNIX v3", 0) >= 1)
        {
          DWORD2(v135[0]) = 0;
          *&v135[0] = 0;
          if (darc_format_entry_get_attribute(a4, "pkzip extra field InfoZIP UNIX v3", v135) == -1)
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 1096, "populate_pkzip_entry_local_header", "Could not get %s attribute", v125, v126, v127, "pkzip extra field InfoZIP UNIX v3");
            return 0xFFFFFFFFLL;
          }

          *(a1 + 52) = *(v135 + 4);
        }

        if (darc_format_entry_get_attribute(a4, "pkzip extra field ZIP64", 0) >= 1)
        {
          memset(v135, 0, 40);
          if (darc_format_entry_get_attribute(a4, "pkzip extra field ZIP64", v135) == -1)
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 1118, "populate_pkzip_entry_local_header", "Could not get %s attribute", v128, v129, v130, "pkzip extra field ZIP64");
            return 0xFFFFFFFFLL;
          }

          if (LOBYTE(v135[0]) == 1)
          {
            *(a1 + 80) = *(&v135[0] + 1);
          }

          if (BYTE1(v135[0]) == 1)
          {
            *(a1 + 112) = *&v135[1];
          }
        }

        v131 = *(a1 + 24) + platform_strlen(*(a1 + 8), *(a1 + 24));
        v132 = *(a1 + 48);
        if (*(v131 - 1) == 47)
        {
          *(a1 + 48) = v132 | 0x41C0;
          *(v131 - 1) = 0;
        }

        else
        {
          *(a1 + 48) = v132 | 0x8180;
        }

        *(a1 + 16) = 2;
        if (*(a1 + 104) == 1)
        {
          v133 = *(a1 + 105);
          if (v133)
          {
            v29 = 7;
          }

          else
          {
            v29 = 4;
          }

          if (!WORD4(v138))
          {
            goto LABEL_142;
          }
        }

        else
        {
          v133 = *(a1 + 105);
          if (!WORD4(v138))
          {
            if (*(a1 + 105))
            {
              v29 = 5;
            }

            else if (*(a1 + 80))
            {
              v29 = 2;
            }

            else
            {
              v29 = 1;
            }

            goto LABEL_142;
          }
        }

        if (v133)
        {
          v29 = 6;
        }

        else
        {
          v29 = 3;
        }

LABEL_142:
        result = 0;
LABEL_25:
        *(a1 + 20) = v29;
        return result;
      }
    }

    *v101 = WORD5(v138);
    goto LABEL_108;
  }

  if (a2 != 3)
  {
    if (a2 != 2)
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 258, "data_archive_entry_set_format_entry", "Unsupported format: %d", a6, a7, a8, a2);
      return 0xFFFFFFFFLL;
    }

    v13 = darc_format_entry_get_type(a4);
    if (v13 != 1 && (a3 != 3 || v13 != 3))
    {
      if (v13 != 3)
      {
        v14 = darc_format_entry_get_attribute(a4, "name", 0);
        if (v14 < 1)
        {
          goto LABEL_18;
        }

        v15 = v14 + 1;
        v16 = platform_calloc(*(a1 + 8), v14 + 1, 1uLL);
        if (v16)
        {
          v17 = v16;
          if (darc_format_entry_get_attribute(a4, "name", v16) != -1)
          {
            *(a1 + 24) = v17;
LABEL_18:
            if (darc_format_entry_get_attribute(a4, "POSIX ustar header", 0) <= 0)
            {
              capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 670, "populate_posix_ustar_entry", "POSIX ustar format entry is missing %s attribute", v21, v22, v23, "POSIX ustar header");
            }

            else
            {
              memset(v135, 0, 40);
              if (darc_format_entry_get_attribute(a4, "POSIX ustar header", v135) != -1)
              {
                *(a1 + 48) = WORD2(v135[0]);
                *(a1 + 52) = *(&v135[0] + 1);
                v27 = *&v135[1];
                *(a1 + 72) = vextq_s8(v135[1], v135[1], 8uLL);
                if (LODWORD(v135[0]) <= 4)
                {
                  *(a1 + 16) = dword_241C78FB0[LODWORD(v135[0])];
                }

                result = 0;
                if (v27 <= 0)
                {
                  v29 = 1;
                }

                else
                {
                  v29 = 2;
                }

                goto LABEL_25;
              }

              capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 679, "populate_posix_ustar_entry", "Could not get %s attribute", v24, v25, v26, "POSIX ustar header");
            }

            return 0xFFFFFFFFLL;
          }

          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 654, "populate_posix_ustar_entry", "Could not get %s attribute", v18, v19, v20, "name");
        }

        else
        {
          v110 = __error();
          strerror(*v110);
          capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 647, "populate_posix_ustar_entry", "Could not allocate %ld bytes for name buffer: %s", v111, v112, v113, v15);
        }

        return 0xFFFFFFFFLL;
      }

      goto LABEL_69;
    }

LABEL_70:
    result = 0;
    v81 = 0x100000001;
    goto LABEL_71;
  }

  v33 = darc_format_entry_get_type(a4);
  if (v33 == 5)
  {
LABEL_69:
    result = 0;
    v81 = 0x100000004;
LABEL_71:
    *(a1 + 16) = v81;
    return result;
  }

  if (v33 == 1)
  {
    goto LABEL_70;
  }

  v34 = darc_format_entry_get_attribute(a4, "name", 0);
  if (v34 <= 0)
  {
    capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 768, "populate_cpio_entry", "CPIO format entry is missing %s attribute", v35, v36, v37, "name");
    return 0xFFFFFFFFLL;
  }

  v38 = v34 + 1;
  v39 = platform_calloc(*(a1 + 8), v34 + 1, 1uLL);
  if (!v39)
  {
    v102 = __error();
    strerror(*v102);
    capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 776, "populate_cpio_entry", "Could not allocate %ld bytes for name buffer: %s", v103, v104, v105, v38);
    return 0xFFFFFFFFLL;
  }

  v40 = v39;
  if (darc_format_entry_get_attribute(a4, "name", v39) == -1)
  {
    capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 783, "populate_cpio_entry", "Could not get %s attribute", v41, v42, v43, "name");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = v40;
  if (darc_format_entry_get_attribute(a4, "cpio header", 0) <= 0)
  {
    capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 798, "populate_cpio_entry", "CPIO format entry is missing %s attribute", v44, v45, v46, "cpio header");
    return 0xFFFFFFFFLL;
  }

  v137 = 0;
  v136 = 0u;
  memset(v135, 0, sizeof(v135));
  if (darc_format_entry_get_attribute(a4, "cpio header", v135) == -1)
  {
    capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_entry.c", 807, "populate_cpio_entry", "Could not get %s attribute", v47, v48, v49, "cpio header");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = DWORD2(v135[0]);
  *(a1 + 40) = *&v135[1];
  *(a1 + 48) = WORD4(v135[1]);
  *(a1 + 52) = *(&v135[1] + 12);
  *(a1 + 60) = WORD2(v135[2]);
  *(a1 + 64) = DWORD2(v135[2]);
  v50 = v137;
  *(a1 + 72) = v136;
  *(a1 + 80) = v50;
  if (platform_strlen(*(a1 + 8), *(a1 + 24)) == 10)
  {
    result = platform_strncmp(*(a1 + 8), "TRAILER!!!", *(a1 + 24), 0xAuLL);
    *(a1 + 20) = 1;
    v51 = (a1 + 20);
    if (!result)
    {
      *(a1 + 16) = 4;
      return result;
    }
  }

  else
  {
    *(a1 + 20) = 1;
    v51 = (a1 + 20);
  }

  *(a1 + 16) = 2;
  if (*(a1 + 80) >= 1)
  {
    result = 0;
    *v51 = 2;
    return result;
  }

  return 0;
}

_DWORD *data_archive_entry_get_data_type(_DWORD *result)
{
  if (result)
  {
    if (*result == 1684369012 && result[30] == 1953391972)
    {
      return result[5];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t data_archive_entry_path(uint64_t result)
{
  if (result)
  {
    if (*result == 1684369012 && *(result + 120) == 1953391972)
    {
      return *(result + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t data_archive_entry_dev(_DWORD *a1)
{
  if (a1 && *a1 == 1684369012 && a1[30] == 1953391972)
  {
    return a1[8];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t data_archive_entry_inode(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 40);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_nlink(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 60);
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t data_archive_entry_mode(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t data_archive_entry_uid(_DWORD *a1)
{
  if (a1 && *a1 == 1684369012 && a1[30] == 1953391972)
  {
    return a1[13];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t data_archive_entry_gid(_DWORD *a1)
{
  if (a1 && *a1 == 1684369012 && a1[30] == 1953391972)
  {
    return a1[14];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t data_archive_entry_size(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 80);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_atime(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 88);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_atime_nsec(_DWORD *a1)
{
  if (!a1 || *a1 != 1684369012)
  {
    return -1;
  }

  if (a1[30] == 1953391972)
  {
    return 0;
  }

  return -1;
}

uint64_t data_archive_entry_mtime(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 72);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_ctime(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 96);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_compressed_size(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    return *(a1 + 112);
  }

  else
  {
    return -1;
  }
}

uint64_t data_archive_entry_crc32(_DWORD *a1)
{
  if (a1 && *a1 == 1684369012 && a1[30] == 1953391972)
  {
    return a1[27];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t data_archive_entry_is_streamed(uint64_t a1)
{
  if (a1 && *a1 == 1684369012 && *(a1 + 120) == 1953391972)
  {
    v1 = *(a1 + 105);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

time_t convert_dos_to_unix_time(uint64_t a1, unsigned int a2, unsigned int a3)
{
  memset(&v7, 0, sizeof(v7));
  platform_memset(*(a1 + 8), &v7, 0, 0x38uLL);
  v7.tm_mon = ((a2 >> 5) & 0xF) - 1;
  v7.tm_year = (a2 >> 9) + 80;
  v7.tm_hour = a3 >> 11;
  v7.tm_mday = a2 & 0x1F;
  v7.tm_sec = 2 * (a3 & 0x1F);
  v7.tm_min = (a3 >> 5) & 0x3F;
  v7.tm_isdst = -1;
  return platform_mktime(*(a1 + 8), &v7);
}

uint64_t BOMStreamWithBlockID(uint64_t a1, unsigned int a2, unint64_t a3, int a4)
{
  if (a3 > 0xE8D4A51000)
  {
    fprintf(*MEMORY[0x277D85DF8], "stream maximum size exceeded: %lu > %lu");
    return 0;
  }

  v8 = BOMStorageSizeOfBlock(a1, a2);
  if (!(a3 | v8))
  {
    return 0;
  }

  v9 = v8;
  v10 = BOM_malloczero(0x58uLL);
  if (!v10)
  {
    v16 = *MEMORY[0x277D85DF8];
    v17 = __error();
    strerror(*v17);
    fprintf(v16, "malloc: %s\n");
    return 0;
  }

  v11 = v10;
  v10[1] = 1;
  *(v10 + 10) = BOMStorageGetSys(a1);
  *v11 = 0;
  *(v11 + 8) = a1;
  *(v11 + 16) = a2;
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = v9;
  }

  *(v11 + 32) = v12;
  *(v11 + 40) = a4;
  if (v9 <= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = v9;
  }

  v14 = BOM_malloczero(v13);
  *(v11 + 48) = v14;
  if (!v14)
  {
    v18 = *MEMORY[0x277D85DF8];
    v19 = __error();
    v20 = strerror(*v19);
    fprintf(v18, "malloc: %s\n", v20);
LABEL_17:
    BOMStreamFree(v11);
    return 0;
  }

  *(v11 + 72) = 1;
  v15 = &v14[*(v11 + 32)];
  *(v11 + 56) = v14;
  *(v11 + 64) = v15;
  if ((*(v11 + 40) | 2) == 2 && BOMStorageCopyFromBlock(a1, a2, v14))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t BOMStreamFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 73) && BOMStreamFlush(result))
    {
      return 1;
    }

    else
    {
      v2 = *(v1 + 48);
      if (v2)
      {
        if (*(v1 + 72))
        {
          free(v2);
        }
      }

      free(v1);
      return 0;
    }
  }

  return result;
}

uint64_t BOMStreamWithFileAndSys(int a1, uint64_t a2, unint64_t a3, int a4, char *a5, void *a6)
{
  v6 = a3;
  if (a3 > 0xE8D4A51000)
  {
    fprintf(*MEMORY[0x277D85DF8], "stream maximum size exceeded: %lu > %lu");
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v12 = BOM_malloczero(0x58uLL);
  if (!v12)
  {
    v14 = *MEMORY[0x277D85DF8];
    v15 = __error();
    strerror(*v15);
    fprintf(v14, "malloc: %s\n");
    return 0;
  }

  v13 = v12;
  if (!a6)
  {
    a6 = BomSys_default();
  }

  *(v13 + 80) = a6;
  *v13 = 0x100000001;
  *(v13 + 20) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = v6;
  *(v13 + 40) = a4;
  if (a5)
  {
    *(v13 + 48) = a5;
    *(v13 + 72) = 0;
  }

  else
  {
    v16 = BOM_malloczero(v6);
    *(v13 + 48) = v16;
    if (!v16)
    {
      v17 = "malloc: %s\n";
      goto LABEL_19;
    }

    a5 = v16;
    *(v13 + 72) = 1;
    v6 = *(v13 + 32);
    a4 = *(v13 + 40);
  }

  *(v13 + 56) = a5;
  *(v13 + 64) = &a5[v6];
  if ((a4 | 2) == 2)
  {
    if ((*(a6 + 8))(*(a6 + 1), *(v13 + 20), *(v13 + 24), 0) == -1)
    {
      v17 = "lseek: %s\n";
      goto LABEL_19;
    }

    if ((*(a6 + 6))(*(a6 + 1), *(v13 + 20), *(v13 + 48), *(v13 + 32)) != *(v13 + 32))
    {
      v17 = "read: %s\n";
LABEL_19:
      v18 = *MEMORY[0x277D85DF8];
      v19 = __error();
      v20 = strerror(*v19);
      fprintf(v18, v17, v20);
      BOMStreamFree(v13);
      return 0;
    }
  }

  return v13;
}

void *BOMStreamWithAddress(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 <= 0xE8D4A51000)
  {
    if (a2)
    {
      result = BOM_malloczero(0x58uLL);
      if (result)
      {
        *result = 0x100000002;
        result[4] = a2;
        *(result + 10) = a3;
        *(result + 72) = 0;
        result[6] = a1;
        result[7] = a1;
        result[8] = a1 + a2;
        return result;
      }

      v7 = *MEMORY[0x277D85DF8];
      v8 = __error();
      strerror(*v8);
      fprintf(v7, "malloc: %s\n");
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "stream maximum size exceeded: %lu > %lu");
  }

  return 0;
}

uint64_t BOMStreamFlush(int *a1)
{
  if (a1)
  {
    if (!a1[10])
    {
      goto LABEL_12;
    }

    v2 = *a1;
    if (*a1 == 2)
    {
      goto LABEL_12;
    }

    if (v2 != 1)
    {
      if (!v2)
      {
        v3 = BOMStorageSetBlockData(*(a1 + 1), a1[4], *(a1 + 6), *(a1 + 4));
LABEL_13:
        *(a1 + 73) = 0;
        return v3;
      }

      fprintf(*MEMORY[0x277D85DF8], "unknown stream type: %d\n", *a1);
LABEL_12:
      v3 = 0;
      goto LABEL_13;
    }

    if ((*(*(a1 + 10) + 64))(*(*(a1 + 10) + 8), a1[5], *(a1 + 3), 0) == -1)
    {
      v7 = *MEMORY[0x277D85DF8];
      v8 = __error();
      strerror(*v8);
      fprintf(v7, "lseek: %s\n");
    }

    else
    {
      if ((*(*(a1 + 10) + 56))(*(*(a1 + 10) + 8), a1[5], *(a1 + 6), *(a1 + 4)) == *(a1 + 4))
      {
        goto LABEL_12;
      }

      v4 = *MEMORY[0x277D85DF8];
      v5 = __error();
      strerror(*v5);
      fprintf(v4, "write: %s\n");
    }

    return 1;
  }

  v3 = 1;
  fwrite("bad stream!\n", 0xCuLL, 1uLL, *MEMORY[0x277D85DF8]);
  return v3;
}

uint64_t BOMStreamGetSys(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t BOMStreamSetByteOrder(uint64_t a1, unsigned int a2)
{
  result = 1;
  if (a1)
  {
    if (a2 <= 2)
    {
      result = 0;
      *(a1 + 4) = a2;
    }
  }

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

unint64_t BOMStreamReadUInt64(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *__error();
    v3 = "read called on write-only buffer!\n";
    v4 = 0;
    v5 = 356;
LABEL_5:
    _BOMExceptionHandlerCall(v3, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v5, v2);
    v8 = 0;
    goto LABEL_7;
  }

  v6 = *(a1 + 56);
  v7 = v6 + 1;
  if ((v6 + 1) > *(a1 + 64))
  {
    v2 = *__error();
    v3 = "buffer overflow!";
    v4 = 1;
    v5 = 604;
    goto LABEL_5;
  }

  v8 = *v6;
  *(a1 + 56) = v7;
LABEL_7:
  v9 = bswap64(v8);
  if (*(a1 + 4) == 2)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t BOMStreamReadUInt32(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *__error();
    v3 = "read called on write-only buffer!\n";
    v4 = 0;
    v5 = 378;
LABEL_5:
    _BOMExceptionHandlerCall(v3, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v5, v2);
    v8 = 0;
    goto LABEL_7;
  }

  v6 = *(a1 + 56);
  v7 = v6 + 1;
  if ((v6 + 1) > *(a1 + 64))
  {
    v2 = *__error();
    v3 = "buffer overflow!";
    v4 = 1;
    v5 = 604;
    goto LABEL_5;
  }

  v8 = *v6;
  *(a1 + 56) = v7;
LABEL_7:
  v9 = bswap32(v8);
  if (*(a1 + 4) == 2)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t BOMStreamReadUInt16(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *__error();
    v3 = "read called on write-only buffer!\n";
    v4 = 0;
    v5 = 400;
LABEL_5:
    _BOMExceptionHandlerCall(v3, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v5, v2);
    v8 = 0;
    goto LABEL_7;
  }

  v6 = *(a1 + 56);
  v7 = v6 + 1;
  if ((v6 + 1) > *(a1 + 64))
  {
    v2 = *__error();
    v3 = "buffer overflow!";
    v4 = 1;
    v5 = 604;
    goto LABEL_5;
  }

  v8 = *v6;
  *(a1 + 56) = v7;
LABEL_7:
  v9 = __rev16(v8);
  if (*(a1 + 4) == 2)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t BOMStreamReadUInt8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *__error();
    v2 = "read called on write-only buffer!\n";
    v3 = 0;
    v4 = 422;
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = v5 + 1;
    if ((v5 + 1) <= *(a1 + 64))
    {
      v7 = *v5;
      *(a1 + 56) = v6;
      return v7;
    }

    v1 = *__error();
    v2 = "buffer overflow!";
    v3 = 1;
    v4 = 604;
  }

  _BOMExceptionHandlerCall(v2, v3, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v4, v1);
  return 0;
}

void *BOMStreamReadBuffer(uint64_t a1, void *__dst, size_t __len)
{
  if (*(a1 + 40) == 1)
  {
    v3 = *__error();
    v4 = "read called on write-only buffer!\n";
    v5 = 0;
    v6 = 441;
  }

  else if (__len < 0xE8D4A51001)
  {
    v9 = *(a1 + 56);
    if (v9 + __len <= *(a1 + 64))
    {
      result = memmove(__dst, v9, __len);
      *(a1 + 56) += __len;
      return result;
    }

    v3 = *__error();
    v4 = "buffer overflow!";
    v5 = 1;
    v6 = 604;
  }

  else
  {
    v3 = *__error();
    v4 = "buffer overflow!";
    v5 = 1;
    v6 = 599;
  }

  return _BOMExceptionHandlerCall(v4, v5, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v6, v3);
}

uint64_t BOMStreamReadAddress(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *__error();
    v3 = "read called on write-only buffer!\n";
    v4 = 0;
    v5 = 464;
  }

  else if (*a1 == 2)
  {
    if (a2 < 0xE8D4A51001)
    {
      v6 = *(a1 + 56);
      if (v6 + a2 <= *(a1 + 64))
      {
        *(a1 + 56) = v6 + a2;
        return v6;
      }

      v2 = *__error();
      v3 = "buffer overflow!";
      v4 = 1;
      v5 = 604;
    }

    else
    {
      v2 = *__error();
      v3 = "buffer overflow!";
      v4 = 1;
      v5 = 599;
    }
  }

  else
  {
    v2 = *__error();
    v3 = "BOMStreamReadAddress: bad buffer type!\n";
    v4 = 0;
    v5 = 468;
  }

  _BOMExceptionHandlerCall(v3, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v5, v2);
  return 0;
}

uint64_t BOMStreamWriteUInt32(uint64_t result, unsigned int a2)
{
  v2 = bswap32(a2);
  if (*(result + 4) == 2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v2;
  }

  if (*(result + 40))
  {
    v4 = *(result + 56);
    if ((v4 + 1) <= *(result + 64))
    {
      *v4 = v3;
      *(result + 56) += 4;
      *(result + 73) = 1;
      return result;
    }

    v5 = *__error();
    v6 = "buffer overflow!";
    v7 = 1;
    v8 = 614;
  }

  else
  {
    v5 = *__error();
    v6 = "write called on read-only buffer!\n";
    v7 = 0;
    v8 = 500;
  }

  return _BOMExceptionHandlerCall(v6, v7, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v8, v5);
}

uint64_t BOMStreamWriteUInt16(uint64_t result, __int16 a2)
{
  v2 = __rev16(a2);
  if (*(result + 4) == 2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v2;
  }

  if (*(result + 40))
  {
    v4 = *(result + 56);
    if ((v4 + 1) <= *(result + 64))
    {
      *v4 = v3;
      *(result + 56) += 2;
      *(result + 73) = 1;
      return result;
    }

    v5 = *__error();
    v6 = "buffer overflow!";
    v7 = 1;
    v8 = 614;
  }

  else
  {
    v5 = *__error();
    v6 = "write called on read-only buffer!\n";
    v7 = 0;
    v8 = 527;
  }

  return _BOMExceptionHandlerCall(v6, v7, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v8, v5);
}

uint64_t BOMStreamWriteUInt8(uint64_t result, char a2)
{
  if (*(result + 40))
  {
    v2 = *(result + 56);
    if ((v2 + 1) <= *(result + 64))
    {
      *v2 = a2;
      ++*(result + 56);
      *(result + 73) = 1;
      return result;
    }

    v3 = *__error();
    v4 = "buffer overflow!";
    v5 = 1;
    v6 = 614;
  }

  else
  {
    v3 = *__error();
    v4 = "write called on read-only buffer!\n";
    v5 = 0;
    v6 = 545;
  }

  return _BOMExceptionHandlerCall(v4, v5, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v6, v3);
}

void *BOMStreamWriteBuffer(uint64_t a1, const void *a2, size_t __len)
{
  if (*(a1 + 40))
  {
    if (__len < 0xE8D4A51001)
    {
      v9 = *(a1 + 56);
      if (v9 + __len <= *(a1 + 64))
      {
        result = memmove(v9, a2, __len);
        *(a1 + 56) += __len;
        *(a1 + 73) = 1;
        return result;
      }

      v4 = *__error();
      v5 = "buffer overflow!";
      v6 = 1;
      v7 = 614;
    }

    else
    {
      v4 = *__error();
      v5 = "buffer overflow!";
      v6 = 1;
      v7 = 609;
    }
  }

  else
  {
    v4 = *__error();
    v5 = "write called on read-only buffer!\n";
    v6 = 0;
    v7 = 563;
  }

  return _BOMExceptionHandlerCall(v5, v6, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v7, v4);
}

uint64_t BOMStreamAdvance(uint64_t result, unint64_t a2)
{
  if (a2 < 0xE8D4A51001)
  {
    v4 = *(result + 56) + a2;
    if (v4 <= *(result + 64))
    {
      *(result + 56) = v4;
      return result;
    }

    v2 = *__error();
    v3 = 614;
  }

  else
  {
    v2 = *__error();
    v3 = 609;
  }

  return _BOMExceptionHandlerCall("buffer overflow!", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStream.c", v3, v2);
}

char *BOMBomEnumeratorNewWithOptions(uint64_t a1, unsigned int *a2, int a3)
{
  v3 = 0;
  if (a1)
  {
    if (a3)
    {
      v7 = BOM_malloczero(0x440uLL);
      v3 = v7;
      if (v7)
      {
        v21 = 0;
        *(v7 + 11) = a3;
        *v7 = a1;
        *(v7 + 1) = BOMBomPathsTree(a1);
        *(v3 + 2) = BOMStackNew();
        *(v3 + 3) = BOMStackNew();
        v8 = BOMStackNew();
        *(v3 + 4) = v8;
        if (!*(v3 + 2) || !*(v3 + 3) || !v8)
        {
          goto LABEL_20;
        }

        RootFSObject = a2;
        if (!a2)
        {
          RootFSObject = BOMBomGetRootFSObject(a1);
          if (!RootFSObject)
          {
            v3[49] = 1;
            return v3;
          }
        }

        v10 = BOMFSObjectParentPathID(RootFSObject);
        v11 = BOMFSObjectShortName(RootFSObject);
        v12 = BOMFSObjectPathName(RootFSObject);
        v3[48] = BOMFSObjectType(RootFSObject) == 2;
        v13 = strlen(v12);
        memmove(v3 + 50, v12, v13);
        *(v3 + 135) = &v3[v13 + 50];
        v14 = BOMNewPathKey(v10, v11, &v21);
        if ((a3 & 4) != 0)
        {
          Value = BOMTreeGetValue(*(v3 + 1), v14, v21);
          free(v14);
          v10 = BOMPathIDFromPathKey(Value);
          v14 = BOMNewPathKey(v10, "", &v21);
        }

        if (!a2)
        {
          BOMFSObjectFree(RootFSObject);
        }

        v16 = BOMTreeIteratorNew(*(v3 + 1), v14, v21, 0);
        free(v14);
        if (v16)
        {
          BOMStackPush(*(v3 + 3), v16);
          BOMStackPush(*(v3 + 2), v10);
          BOMStackPush(*(v3 + 4), 0);
          *(v3 + 10) = v10;
          if ((a3 & 4) == 0)
          {
            v17 = (*(v3 + 135) - 1);
            while (1)
            {
              v18 = v17 + 1;
              if (v17 + 1 <= v3 + 50)
              {
                break;
              }

              *(v3 + 135) = v17;
              v19 = *v17--;
              if (v19 == 47)
              {
                v18 = v17 + 1;
                break;
              }
            }

            *v18 = 0;
          }
        }

        else
        {
LABEL_20:
          BOMBomEnumeratorFree(v3);
          return 0;
        }
      }
    }
  }

  return v3;
}

void BOMBomEnumeratorFree(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      BOMStackFree(v2);
    }

    v3 = *(a1 + 3);
    if (v3)
    {
      while (!BOMStackIsEmpty(v3))
      {
        v4 = BOMStackPop(*(a1 + 3));
        BOMTreeIteratorFree(v4);
        v3 = *(a1 + 3);
      }

      BOMStackFree(*(a1 + 3));
    }

    v5 = *(a1 + 4);
    if (v5)
    {
      BOMStackFree(v5);
    }

    free(a1);
  }
}

_DWORD *BOMBomEnumeratorNext(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  if (!a1 || *(a1 + 49))
  {
    FSObjectWithBlockID = 0;
    goto LABEL_4;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v54 = 0;
  v8 = a1 + 50;
  v9 = 1;
  do
  {
    while (1)
    {
      v10 = BOMStackPeek(*(a1 + 24));
      if (!v10)
      {
        FSObjectWithBlockID = 0;
        *(a1 + 49) = 1;
        goto LABEL_4;
      }

      v11 = v10;
      v12 = BOMStackPeek(*(a1 + 32));
      v13 = 0;
      if (v12 > 1)
      {
        break;
      }

      if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_66;
        }

        if (BOMTreeIteratorIsAtEnd(v11))
        {
          v14 = (*(a1 + 1080) - 1);
          while (1)
          {
            v15 = v14 + 1;
            if ((v14 + 1) <= v8)
            {
              break;
            }

            *(a1 + 1080) = v14;
            v16 = *v14--;
            if (v16 == 47)
            {
              goto LABEL_63;
            }
          }

LABEL_64:
          *v15 = 0;
LABEL_65:
          BOMStackPoke(*(a1 + 32), 3);
          v13 = 0;
          goto LABEL_66;
        }

        v37 = BOMTreeIteratorKey(v11);
        v7 = BOMPathIDFromPathKey(v37);
        if (v7 != BOMStackPeek(*(a1 + 16)))
        {
          v14 = (*(a1 + 1080) - 1);
          while (1)
          {
            v15 = v14 + 1;
            if ((v14 + 1) <= v8)
            {
              goto LABEL_64;
            }

            *(a1 + 1080) = v14;
            v42 = *v14--;
            if (v42 == 47)
            {
LABEL_63:
              v15 = v14 + 1;
              goto LABEL_64;
            }
          }
        }

        v38 = strrchr((a1 + 50), 47);
        if (v38)
        {
          v39 = v38;
          if (*v38)
          {
            v40 = BOMShortNameFromPathKey(v37);
            if (strcmp(v39 + 1, v40))
            {
              v14 = (*(a1 + 1080) - 1);
              while (1)
              {
                v15 = v14 + 1;
                if ((v14 + 1) <= v8)
                {
                  goto LABEL_64;
                }

                *(a1 + 1080) = v14;
                v41 = *v14--;
                if (v41 == 47)
                {
                  goto LABEL_63;
                }
              }
            }
          }
        }

        v43 = BOMTreeIteratorValue(v11);
        v6 = BOMPathIDFromPathKey(v43);
        v44 = BOMNewPathKey(v6, "", &v54);
        v45 = BOMTreeIteratorNew(*(a1 + 8), v44, v54, 0);
        free(v44);
        BOMStackPush(*(a1 + 16), v6);
        BOMStackPush(*(a1 + 24), v45);
        BOMStackPush(*(a1 + 32), 0);
      }

      else
      {
        if (BOMTreeIteratorIsAtEnd(v11))
        {
          goto LABEL_65;
        }

        v17 = BOMTreeIteratorKey(v11);
        v7 = BOMPathIDFromPathKey(v17);
        if (v7 != BOMStackPeek(*(a1 + 16)))
        {
          goto LABEL_65;
        }

        v13 = *(a1 + 44) & 1;
        if (v13)
        {
          v9 = 1;
        }

        v18 = BOMShortNameFromPathKey(v17);
        v19 = strlen(v18);
        v20 = v19;
        v21 = *(a1 + 1080);
        if (&v21[v19 - v8] >= 1024)
        {
          v52 = BOMExceptionHandlerMessage("%lu + %p - %p > %d", v19, v21, (a1 + 50), 1024);
          v53 = __error();
          _BOMFatalException(v52, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMBomEnumerator.c", 75, *v53);
        }

        if (v21 != v8)
        {
          *(a1 + 1080) = v21 + 1;
          *v21 = 47;
          **(a1 + 1080) = 0;
        }

        if (__strlcat_chk() >= 0x401)
        {
          v50 = BOMExceptionHandlerMessage("strlcat(%p, %s, %lu) >= %lu)", (a1 + 50), v18, 1025, 1025);
          v51 = __error();
          _BOMFatalException(v50, "/Library/Caches/com.apple.xbs/Sources/Bom/Bom/BOMBomEnumerator.c", 83, *v51);
        }

        *(a1 + 1080) += v20;
        if (v13)
        {
          __strlcpy_chk();
        }

        v22 = BOMTreeIteratorValue(v11);
        v6 = BOMPathIDFromPathKey(v22);
        v5 = BOMBlockIDFromPathValue(v22);
        v23 = BOMTreeStorage(*(a1 + 8));
        v24 = BOMStorageSizeOfBlock(v23, v5);
        v25 = BOM_malloc(v24);
        v26 = BOMTreeStorage(*(a1 + 8));
        if (BOMStorageCopyFromBlock(v26, v5, v25))
        {
          goto LABEL_66;
        }

        v27 = BOMFSObjectTypeFromRawData(v25);
        free(v25);
        if (v27 != 2 || (*(a1 + 44) & 4) != 0)
        {
          goto LABEL_44;
        }

        v28 = *(a1 + 32);
        v29 = 1;
LABEL_45:
        BOMStackPoke(v28, v29);
        if (v13)
        {
          goto LABEL_72;
        }
      }
    }

    if (v12 == 2)
    {
      if (BOMTreeIteratorIsAtEnd(v11) || (v30 = BOMTreeIteratorKey(v11), v7 = BOMPathIDFromPathKey(v30), v7 != BOMStackPeek(*(a1 + 16))))
      {
        v13 = 0;
      }

      else
      {
        if ((*(a1 + 44) & 2) != 0)
        {
          v46 = BOMTreeIteratorKey(v11);
          v7 = BOMPathIDFromPathKey(v46);
          v47 = BOMTreeIteratorValue(v11);
          v6 = BOMPathIDFromPathKey(v47);
          v5 = BOMBlockIDFromPathValue(v47);
          __strlcpy_chk();
          v9 = 2;
          v13 = 1;
        }

        else
        {
          v13 = 0;
        }

        BOMTreeIteratorNext(v11);
      }

      v31 = (*(a1 + 1080) - 1);
      while (1)
      {
        v32 = v31 + 1;
        if ((v31 + 1) <= v8)
        {
          break;
        }

        *(a1 + 1080) = v31;
        v33 = *v31--;
        if (v33 == 47)
        {
          v32 = v31 + 1;
          break;
        }
      }

      *v32 = 0;
LABEL_42:
      if (!BOMTreeIteratorIsAtEnd(v11))
      {
        if (*(a1 + 48))
        {
          v35 = BOMStackPeek(*(a1 + 16));
          v36 = BOMTreeIteratorKey(v11);
          if (BOMPathIDFromPathKey(v36) == v35 && ((*(a1 + 44) & 4) != 0 || *(a1 + 40) != BOMStackPeek(*(a1 + 16))))
          {
            v28 = *(a1 + 32);
            v29 = 0;
            goto LABEL_45;
          }
        }
      }

      v34 = BOMStackPop(*(a1 + 24));
      BOMTreeIteratorFree(v34);
      BOMStackPop(*(a1 + 16));
      BOMStackPop(*(a1 + 32));
LABEL_44:
      v28 = *(a1 + 32);
      v29 = 2;
      goto LABEL_45;
    }

    if (v12 == 3)
    {
      goto LABEL_42;
    }

LABEL_66:
    ;
  }

  while (!v13);
LABEL_72:
  FSObjectWithBlockID = _BOMBomGetFSObjectWithBlockID(*a1, v5);
  if (FSObjectWithBlockID)
  {
    v48 = __s;
    v49 = strrchr(__s, 47);
    if (v49)
    {
      v48 = v49 + 1;
    }

    BOMFSObjectSetPathName(FSObjectWithBlockID, __s, 1);
    BOMFSObjectSetShortName(FSObjectWithBlockID, v48, 1);
    BOMFSObjectSetPathID(FSObjectWithBlockID, v6);
    BOMFSObjectSetParentPathID(FSObjectWithBlockID, v7);
    BOMFSObjectSetBlockID(FSObjectWithBlockID, v5);
    BOMFSObjectSetVisitOrder(FSObjectWithBlockID, v9);
  }

LABEL_4:
  v3 = *MEMORY[0x277D85DE8];
  return FSObjectWithBlockID;
}

void *BOMBomEnumeratorSkip(void *result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 49))
    {
      result = BOMStackPeek(result[4]);
      if (result == 1)
      {
        v2 = v1[4];

        return BOMStackPoke(v2, 2);
      }
    }
  }

  return result;
}

uint64_t BOMBomEnumeratorSkipAll(uint64_t result)
{
  if (result)
  {
    if (!*(result + 49))
    {
      *(result + 44) |= 4u;
    }
  }

  return result;
}

uint64_t BOMAppleDoublePathToADPath(char *a1, char *__s)
{
  result = 0xFFFFFFFFLL;
  if (a1 && __s)
  {
    v5 = a1;
    if (a1 == __s)
    {
      v6 = strlen(__s);
      v7 = BOM_malloc(v6 + 1);
      if (!v7)
      {
        return 0xFFFFFFFFLL;
      }

      v5 = v7;
      strlcpy(v7, __s, v6 + 1);
    }

    v8 = rindex(v5, 47);
    if (v8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v5;
    }

    *__s = 0;
    if (v8)
    {
      v10 = v8 - v5 + 1;
      memmove(__s, v5, v10);
      __s[v10] = 0;
    }

    strlcat(__s, "._", 0x400uLL);
    strlcat(__s, v9, 0x400uLL);
    if (a1 == __s)
    {
      free(v5);
    }

    return 0;
  }

  return result;
}

uint64_t BOMAppleDoubleADPathToPath(char *a1, void *a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v5 = rindex(a1, 47);
    if (v5)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = a1;
    }

    v7 = *v6;
    if (v7 == 46)
    {
      v7 = v6[1];
      v8 = 95;
    }

    else
    {
      v8 = 46;
    }

    v9 = &v6[2 * (v8 == v7)];
    if (v5)
    {
      v10 = v5 - a1 + 1;
      memmove(a2, a1, v10);
      *(a2 + v10) = 0;
    }

    strlcat(a2, v9, 0x400uLL);
    return 0;
  }

  return result;
}

uint64_t BOMAppleDoubleIsADFile(const char *a1)
{
  if (!a1)
  {
    return 255;
  }

  v2 = rindex(a1, 47);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = a1;
  }

  return *v3 == 46 && *(v3 + 1) == 95;
}

uint64_t BOMAppleDoubleCopyHeader(unsigned int a1, unsigned int a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = BOM_malloc(0x32uLL);
  if (v8)
  {
    v9 = v8;
    result = 0;
    *v9 = 0x20007160500;
    *(v9 + 8) = 0uLL;
    *(v9 + 12) = 512;
    *(v9 + 26) = 0x3200000009000000;
    *(v9 + 34) = bswap32(a1);
    LODWORD(v11) = 0x2000000;
    HIDWORD(v11) = bswap32(a1 + 50);
    *(v9 + 38) = v11;
    *(v9 + 46) = bswap32(a2);
    *a3 = v9;
    *a4 = 50;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMAppleDoubleWriteHeader(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = 0;
  if (BOMAppleDoubleCopyHeader(a2, a3, &v7, &v6))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v6;
  if (BOMFileWrite(a1, v7, v6) == v5)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t BOMAppleDoubleReadHeaderWithOffsets(int *a1, unsigned int *a2, _DWORD *a3, unsigned int *a4, _DWORD *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  result = 0xFFFFFFFFLL;
  if (a2 && a4)
  {
    v19 = 0;
    v18 = 0;
    *a2 = 0;
    *a4 = 0;
    memset(v20, 0, sizeof(v20));
    v21 = 0;
    if (BOMFileRead(a1, v20, 0x1AuLL) == 26)
    {
      v11 = v20[0];
      v20[0] = vrev32_s8(v20[0]);
      v12 = v21;
      v21 = __rev16(v21);
      result = 0xFFFFFFFFLL;
      if (*&v11 == 0x20007160500)
      {
        if (v12)
        {
          for (i = 0; i < v21; ++i)
          {
            if (BOMFileRead(a1, &v18, 0xCuLL) != 12)
            {
              goto LABEL_16;
            }

            v14 = vrev32_s8(v18);
            v18 = v14;
            v15 = bswap32(v19);
            v19 = v15;
            if (v14.i32[0] == 2)
            {
              *a4 = v15;
              v16 = a5;
              if (!a5)
              {
                continue;
              }
            }

            else
            {
              if (v14.i32[0] != 9)
              {
                continue;
              }

              *a2 = v15;
              v16 = a3;
              if (!a3)
              {
                continue;
              }
            }

            *v16 = v14.i32[1];
          }
        }

        result = 0;
      }
    }

    else
    {
LABEL_16:
      result = 0xFFFFFFFFLL;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMCPIONew(uint64_t **a1, uint64_t a2, char a3, int a4)
{
  v8 = BOM_malloc(0x468uLL);
  if (v8)
  {
    v9 = v8;
    *v8 = a2;
    *(v8 + 8) = a3;
    *(v8 + 3) = a4;
    *(v8 + 24) = 0;
    v10 = BOMHardLinkTableNew();
    v9[2] = v10;
    if (v10)
    {
      result = 0;
      *a1 = v9;
      return result;
    }

    BOMCPIOFree(v9);
  }

  return 0xFFFFFFFFLL;
}

void BOMCPIOFree(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      BOMHardLinkTableFree(v2);
    }

    if (*(a1 + 8))
    {
      BOMFileClose(*a1);
    }

    free(a1);
  }
}

uint64_t BOMCPIOWriteHeader(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s) + 1;

  return BOMCPIOWriteHeaderAndData(a1, a3, __s, v6, 0, 0);
}

uint64_t BOMCPIOWriteHeaderAndData(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, int a6)
{
  if ((*(a2 + 4) & 0xF000) == 0x8000 && *(a2 + 6) >= 2u)
  {
    v12 = BOMHardLinkTableGet(*(a1 + 16), *a2, *(a2 + 8));
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v19 = *(a1 + 12);
      *(a1 + 12) = v19 + 1;
      *bytes = v19;
      BOMHardLinkTableSet(*(a1 + 16), *a2, *(a2 + 8), bytes, 8);
      LODWORD(v13) = *bytes;
    }
  }

  else
  {
    LODWORD(v13) = *(a1 + 12);
    *(a1 + 12) = v13 + 1;
  }

  *bytes = v13;
  v14 = *(a2 + 4);
  if ((v14 & 0xD000 | 0x2000) == 0xA000)
  {
    v15 = *(a2 + 96);
    if (v15 >> 33)
    {
      *__error() = 27;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 0;
  }

  snprintf((a1 + 25), 0x4DuLL, "%s%06ho%06ho%06ho%06ho%06ho%06ho%06ho%011o%06ho%011llo", "070707", WORD1(v13), v13, v14, *(a2 + 16), *(a2 + 20), *(a2 + 6), *(a2 + 24), *(a2 + 48), a4, v15);
  v16 = a4 + a6 + 76;
  if (v16 < 0x44D)
  {
    v18 = v16;
    memcpy((a1 + 101), a3, a4);
    if (a5)
    {
      memcpy((a1 + 101 + a4), a5, a6);
    }

    if (BOMFileWrite(*a1, (a1 + 25), v18) != v18)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (BOMFileWrite(*a1, (a1 + 25), 76) != 76 || BOMFileWrite(*a1, a3, a4) != a4 || a5 && BOMFileWrite(*a1, a5, a6) != a6)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t BOMCPIOWriteDirectory(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s) + 1;

  return BOMCPIOWriteHeaderAndData(a1, a3, __s, v6, 0, 0);
}

uint64_t BOMCPIOWriteDevice(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s) + 1;

  return BOMCPIOWriteHeaderAndData(a1, a3, __s, v6, 0, 0);
}

uint64_t BOMCPIOWriteSymlink(uint64_t a1, char *__s, uint64_t a3, char *a4)
{
  v8 = strlen(__s);
  v9 = *(a3 + 96);
  v10 = strlen(a4);
  *(a3 + 96) = v10;
  result = BOMCPIOWriteHeaderAndData(a1, a3, __s, v8 + 1, a4, v10);
  *(a3 + 96) = v9;
  return result;
}

uint64_t BOMCPIOWriteTerminator(uint64_t *a1)
{
  memset(v8, 0, sizeof(v8));
  WORD3(v8[0]) = 1;
  if (BOMCPIOWriteHeaderAndData(a1, v8, "TRAILER!!!", 11, 0, 0))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 1;
  v3 = BOM_calloc(0x200uLL, 1uLL);
  if (v3)
  {
    v4 = v3;
    v5 = BOMFileUncompressedOffset(*a1);
    if (v5 <= 0)
    {
      v6 = -(-v5 & 0x1FF);
    }

    else
    {
      v6 = v5 & 0x1FF;
    }

    v2 = BOMFileWrite(*a1, v4, 512 - v6) != 512 - v6;
    free(v4);
  }

  return v2;
}

uint64_t BOMCPIOReadHeader(uint64_t a1, char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    if (BOMFileRead(*a1, v25, 0x4CuLL) == 76)
    {
      v25[76] = 0;
      if (sscanf(v25, "%06s%06ho%06ho%06ho%06ho%06ho%06ho%06ho%011o%06ho%011llo", v24, &v22 + 2, &v22, a3 + 4, &v21 + 2, &v21, a3 + 6, &v20, &v19, &v23, &v18) != 11)
      {
        goto LABEL_11;
      }

      *a3 = HIWORD(v22);
      *(a3 + 8) = v22;
      v7 = v21;
      *(a3 + 16) = HIWORD(v21);
      *(a3 + 20) = v7;
      *(a3 + 24) = v20;
      v8 = v24[0] == 925906736 && *(v24 + 3) == 3616823;
      v9 = v19;
      *(a3 + 96) = v18;
      *(a3 + 116) = 0;
      *(a3 + 32) = v9;
      *(a3 + 40) = 0;
      *(a3 + 48) = v9;
      *(a3 + 56) = 0;
      if (!v8 || v23 > 0x400uLL)
      {
        goto LABEL_11;
      }

      v10 = BOMFileRead(*a1, a2, v23);
      v11 = v23;
      if ((v10 & 0x8000000000000000) == 0)
      {
        v12 = v10;
        if (v10 == v23)
        {
          v13 = 0;
          if (v23)
          {
            result = 3;
            while (a2[v13])
            {
              if (v12 == ++v13)
              {
                goto LABEL_21;
              }
            }
          }

          if (v13 != v12 && !a2[v13])
          {
            if (strcmp(a2, "TRAILER!!!"))
            {
              result = _sanitizePath(a2, v12);
              goto LABEL_21;
            }

            *(a1 + 24) = 1;
            goto LABEL_2;
          }

LABEL_11:
          result = 3;
          goto LABEL_21;
        }
      }

      v14 = *MEMORY[0x277D85DF8];
      v15 = __error();
      v16 = strerror(*v15);
      fprintf(v14, "can't read path of size %d: %s\n", v11, v16);
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

LABEL_2:
  result = 4;
LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t BOMCPIOSeek()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v11 = *MEMORY[0x277D85DE8];
  if (v4 == 1)
  {
    if (v1)
    {
      while (1)
      {
        v5 = v2 >= 0x20000 ? 0x20000 : v2;
        result = BOMFileRead(*v3, v10, v5);
        if (result == -1)
        {
          break;
        }

        if (result)
        {
          v2 -= result;
          if (v2)
          {
            continue;
          }
        }

        goto LABEL_9;
      }
    }

    else
    {
LABEL_9:
      result = 1;
    }

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *v0;
    v9 = *MEMORY[0x277D85DE8];

    return BOMFileSeek();
  }

  return result;
}

uint64_t BOMPKZipNew(void *a1, uint64_t a2, char a3)
{
  v6 = BOM_malloczero(0x58uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *v6 = a2;
  v6[8] = a3;
  *(v6 + 12) = 16;
  v8 = BOM_calloc(0x10uLL, 0x40uLL);
  *(v7 + 5) = v8;
  if (!v8)
  {
    return 1;
  }

  result = 0;
  *a1 = v7;
  return result;
}

void BOMPKZipFree(void *a1)
{
  if (*(a1 + 13))
  {
    v2 = 0;
    v3 = 40;
    do
    {
      free(*(a1[5] + v3));
      ++v2;
      v3 += 64;
    }

    while (v2 < *(a1 + 13));
  }

  v4 = a1[5];
  if (v4)
  {
    free(v4);
  }

  if (*(a1 + 8))
  {
    BOMFileClose(*a1);
  }

  if (*(a1 + 16))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      free(*(a1[7] + v5));
      ++v6;
      v5 += 16;
    }

    while (v6 < *(a1 + 16));
  }

  v7 = a1[7];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    free(v8);
  }

  free(a1);
}

uint64_t BOMPKZipGetFile(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t BOMPKZipReadNextSignature(uint64_t a1, int *a2)
{
  result = 1;
  if (!a1 || !a2)
  {
    return result;
  }

  v9 = 0;
  v8 = 0;
  while (1)
  {
    if (BOMFileRead(*a1, &v9, 4uLL) != 4)
    {
      return 1;
    }

    if (v9 <= 101010255)
    {
      break;
    }

    if (v9 > 117853007)
    {
      if (v9 == 117853008)
      {
        result = 0;
        v7 = 5;
        goto LABEL_31;
      }

      if (v9 == 808471376)
      {
        return BOMPKZipReadNextSignature(a1, a2);
      }
    }

    else
    {
      if (v9 == 101010256)
      {
        result = 0;
        v7 = 6;
        goto LABEL_31;
      }

      if (v9 == 101075792)
      {
        result = 0;
        v7 = 4;
        goto LABEL_31;
      }
    }

LABEL_16:
    v8 = 19280;
    if (v9 == 19280)
    {
      if (BOMFileRead(*a1, &v8, 2uLL) != 2)
      {
        return 1;
      }

      if (v8 == 1027)
      {
LABEL_26:
        result = 0;
        v7 = 1;
        goto LABEL_31;
      }
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      v6 = *(a1 + 12) - 1;
      if (*(a1 + 72) <= v6)
      {
        LODWORD(v5) = 0;
      }

      else
      {
        LODWORD(v5) = *(v5 + 12 * v6);
      }
    }

    if (v5 != v9)
    {
      *a2 = 0;
      return 1;
    }
  }

  if (v9 != 33639248)
  {
    if (v9 == 67324752)
    {
      goto LABEL_26;
    }

    if (v9 == 84233040)
    {
      result = 0;
      v7 = 3;
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  result = 0;
  v7 = 2;
LABEL_31:
  *a2 = v7;
  return result;
}

uint64_t BOMPKZipGetNumLocalHeaders(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 12);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t BOMPKZipReadLocalHeader(uint64_t a1, char *a2, uint64_t a3, unint64_t *a4, _DWORD *a5, _BYTE *a6, int *a7, unsigned int *a8, _BYTE *a9)
{
  v46 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a1 && a2 && a3 && a4)
  {
    if (BOMFileRead(*a1, v45, 0x1AuLL) != 26)
    {
      goto LABEL_10;
    }

    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    v18 = BOMStreamWithAddress(v45, 0x1AuLL, 0);
    if (!v18)
    {
      goto LABEL_10;
    }

    v19 = v18;
    if (BOMStreamSetByteOrder(v18, 2u))
    {
      v20 = v19;
LABEL_9:
      BOMStreamFree(v20);
      goto LABEL_10;
    }

    BOMStreamReadUInt16(v19);
    UInt16 = BOMStreamReadUInt16(v19);
    *a5 = BOMStreamReadUInt16(v19);
    v22 = BOMStreamReadUInt16(v19);
    v23 = BOMStreamReadUInt16(v19);
    UInt32 = BOMStreamReadUInt32(v19);
    *a4 = BOMStreamReadUInt32(v19);
    *(a3 + 96) = BOMStreamReadUInt32(v19);
    v44 = BOMStreamReadUInt16(v19);
    v42 = BOMStreamReadUInt16(v19);
    v24 = _dos2unixtime(v22 | (v23 << 16));
    *(a3 + 116) = 0;
    *(a3 + 32) = v24;
    *(a3 + 40) = 0;
    *(a3 + 48) = v24;
    *(a3 + 56) = 0;
    if (a6)
    {
      *a6 = UInt16 & 1;
    }

    if (a7)
    {
      *a7 = (UInt16 >> 3) & 1;
    }

    *a9 = 0;
    if (a8)
    {
      v25 = (v22 << 16) & 0xFF000000;
      if ((UInt16 & 8) == 0)
      {
        v25 = UInt32;
      }

      *a8 = v25;
    }

    BOMStreamFree(v19);
    if (v44)
    {
      if (v44 > 0x3FF)
      {
        goto LABEL_10;
      }

      v26 = v44;
      if (BOMFileRead(*a1, a2, v44) != v44)
      {
        goto LABEL_10;
      }

      v27 = *(a3 + 4);
      if (a2[v44 - 1] == 47)
      {
        *(a3 + 4) = v27 | 0x41C0;
        v26 = (v44 - 1);
      }

      else
      {
        *(a3 + 4) = v27 | 0x8180;
      }

      a2[v26] = 0;
      v33 = _sanitizePath(a2, v26);
      v28 = v42;
      if (v33)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *a2 = 0;
      v28 = v42;
    }

    if (!v28)
    {
LABEL_62:
      result = 0;
      ++*(a1 + 12);
      goto LABEL_11;
    }

    v29 = v28;
    if (v28 < 0x1B)
    {
      v30 = v45;
    }

    else
    {
      v30 = BOM_malloc(v28);
      if (!v30)
      {
        goto LABEL_10;
      }
    }

    if (BOMFileRead(*a1, v30, v29) != v29)
    {
      if (v30 != v45)
      {
        free(v30);
      }

      goto LABEL_10;
    }

    v31 = BOMStreamWithAddress(v30, v29, 0);
    if (!v31)
    {
LABEL_10:
      result = 1;
      goto LABEL_11;
    }

    v32 = v31;
    if (BOMStreamSetByteOrder(v31, 2u))
    {
LABEL_34:
      v20 = v32;
      goto LABEL_9;
    }

    v34 = 0;
    v35 = v42;
    while (1)
    {
      v36 = BOMStreamReadUInt16(v32);
      v37 = BOMStreamReadUInt16(v32);
      v38 = v34 + 4;
      if (v37 + v38 > v35)
      {
        goto LABEL_34;
      }

      v39 = v37;
      if (v36 == 1)
      {
        if (*(a3 + 96) == 0xFFFFFFFFLL)
        {
          *(a3 + 96) = BOMStreamReadUInt64(v32);
          v40 = 8;
        }

        else
        {
          v40 = 0;
        }

        if (*a4 == 0xFFFFFFFF)
        {
          *a4 = BOMStreamReadUInt64(v32);
          v40 += 8;
        }

        *a9 = 1;
        goto LABEL_55;
      }

      if (v36 != 22613)
      {
        v40 = 0;
        goto LABEL_55;
      }

      *(a3 + 32) = BOMStreamReadUInt32(v32);
      *(a3 + 48) = BOMStreamReadUInt32(v32);
      if (v39 < 0xA)
      {
        break;
      }

      *(a3 + 16) = BOMStreamReadUInt16(v32);
      if (v39 != 12)
      {
        v40 = 10;
LABEL_55:
        if (v39 != v40)
        {
          BOMStreamAdvance(v32, (v39 - v40));
        }

        goto LABEL_57;
      }

      *(a3 + 20) = BOMStreamReadUInt16(v32);
LABEL_57:
      v34 = v39 + v38;
      v35 = v42;
      if (v42 == v34)
      {
        BOMStreamFree(v32);
        if (v30 != v45)
        {
          free(v30);
        }

        goto LABEL_62;
      }
    }

    v40 = 8;
    goto LABEL_55;
  }

LABEL_11:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

time_t _dos2unixtime(unsigned int a1)
{
  v6 = time(0);
  v2 = localtime(&v6);
  v3.i32[0] = a1;
  v4 = vshlq_u32(vdupq_n_s32(a1), xmmword_241C78FF0);
  v4.i32[0] = vshlq_u32(v3, xmmword_241C78FE0).u32[0];
  *&v2->tm_sec = vandq_s8(v4, xmmword_241C79000);
  v2->tm_mon = ((a1 >> 21) & 0xF) - 1;
  v2->tm_year = (a1 >> 25) + 80;
  return mktime(v2);
}

uint64_t BOMPKZipWriteLocalHeader(uint64_t a1, char *__s, uint64_t a3, int a4, int a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = 1;
  if (a1)
  {
    v6 = __s;
    if (__s)
    {
      if (a3)
      {
        v11 = strlen(__s);
        v12 = *v6;
        if (v12 != 46 || v11 != 1)
        {
          if (v12 == 46)
          {
            if (v6[1] == 47)
            {
              v13 = v6[2];
              v6 += 2;
              v12 = v13;
              v11 -= 2;
            }

            else
            {
              v12 = 46;
            }
          }

          v14 = v12 == 47;
          v15 = v12 == 47;
          if (v14)
          {
            v16 = v6 + 1;
          }

          else
          {
            v16 = v6;
          }

          v17 = v11 - v15;
          v18 = (v11 - v15);
          v19 = *(a3 + 4) & 0xF000;
          if (v19 == 0x4000)
          {
            __memcpy_chk();
            v41[0] = 0;
            v23 = 0;
            v40 = 0;
            v42[v17++] = 47;
            v42[v17] = 0;
            v20 = v18 + 47;
            v22 = 10;
            __src = v42;
          }

          else
          {
            v20 = v18 + 46;
            __src = v16;
            if (v19 == 40960)
            {
              v23 = 0;
              v40 = 0;
              v41[0] = *(a3 + 96);
              v22 = 10;
            }

            else if (v19 == 0x8000)
            {
              *v41 = *(a3 + 96);
              v21 = *v41 != 0;
              if (*v41)
              {
                v22 = 20;
              }

              else
              {
                v22 = 10;
              }

              v23 = 8 * v21;
              v40 = 8 * v21;
            }

            else
            {
              v41[0] = 0;
              v40 = 0;
              v23 = 8;
              v22 = 20;
            }
          }

          v24 = v20;
          v25 = BOM_malloc(v20);
          if (v25)
          {
            v26 = v25;
            v38 = v22;
            v5 = 1;
            v27 = BOMStreamWithAddress(v25, v24, 1);
            if (!v27)
            {
              goto LABEL_43;
            }

            v28 = v27;
            if (BOMStreamSetByteOrder(v27, 2u))
            {
              BOMStreamFree(v28);
              free(v26);
              goto LABEL_43;
            }

            BOMStreamWriteUInt32(v28, 0x4034B50u);
            BOMStreamWriteUInt16(v28, v38);
            BOMStreamWriteUInt16(v28, v23);
            BOMStreamWriteUInt16(v28, v40);
            v29 = _unix2dostime((a3 + 48));
            BOMStreamWriteUInt32(v28, v29);
            v30 = *(a3 + 4) & 0xF000;
            if (v30 == 40960)
            {
              v31 = a4;
            }

            else
            {
              v31 = 0;
            }

            if (v30 == 40960)
            {
              v32 = a5;
            }

            else
            {
              v32 = 0;
            }

            if (v30 == 40960)
            {
              v33 = v41[0];
            }

            else
            {
              v33 = 0;
            }

            BOMStreamWriteUInt32(v28, v31);
            BOMStreamWriteUInt32(v28, v32);
            BOMStreamWriteUInt32(v28, v33);
            BOMStreamWriteUInt16(v28, v17);
            BOMStreamWriteUInt16(v28, 16 * ((*(a3 + 4) & 0xF000) != 40960));
            BOMStreamWriteBuffer(v28, __src, v17);
            if ((*(a3 + 4) & 0xF000) == 0xA000)
            {
              v24 = (v24 - 16);
            }

            else
            {
              BOMStreamWriteUInt16(v28, 22613);
              BOMStreamWriteUInt16(v28, 12);
              BOMStreamWriteUInt32(v28, *(a3 + 32));
              BOMStreamWriteUInt32(v28, *(a3 + 48));
              BOMStreamWriteUInt16(v28, *(a3 + 16));
              BOMStreamWriteUInt16(v28, *(a3 + 20));
            }

            BOMStreamFree(v28);
            v34 = BOMFileOffset(*a1);
            v35 = BOMFileWrite(*a1, v26, v24);
            free(v26);
            if (v35 == v24 && !_squirrelAwayInfo(a1, v34, v38, v40, a3, a4, a5, v41[0], v17, __src))
            {
              v5 = 0;
              ++*(a1 + 12);
              goto LABEL_43;
            }
          }

          v5 = 1;
          goto LABEL_43;
        }

        v5 = 0;
      }
    }
  }

LABEL_43:
  v36 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t _unix2dostime(void *a1)
{
  v4 = (*a1 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v1 = localtime(&v4);
  tm_year = v1->tm_year;
  if (tm_year >= 80)
  {
    return ((tm_year << 25) + 1610612736) | (v1->tm_sec >> 1) | (32 * v1->tm_min) | (v1->tm_hour << 11) | (v1->tm_mday << 16) | ((v1->tm_mon << 21) + 0x200000);
  }

  else
  {
    return 2162688;
  }
}

uint64_t _squirrelAwayInfo(uint64_t a1, int a2, __int16 a3, __int16 a4, uint64_t a5, int a6, int a7, int a8, unsigned __int16 a9, void *__src)
{
  v18 = *(a1 + 52);
  if (v18 == *(a1 + 48))
  {
    v19 = 2 * v18;
    if (v18 > 0x4000)
    {
      v19 = v18 + 0x4000;
    }

    *(a1 + 48) = v19;
    v20 = BOM_realloc(*(a1 + 40), v19 << 6);
    *(a1 + 40) = v20;
    if (!v20)
    {
      return 1;
    }

    v18 = *(a1 + 52);
  }

  *(a1 + 52) = v18 + 1;
  v21 = BOM_malloc(a9);
  if (!v21)
  {
    return 1;
  }

  v22 = v21;
  memcpy(v21, __src, a9);
  result = 0;
  v24 = *(a1 + 40) + (v18 << 6);
  *v24 = a3;
  *(v24 + 2) = a4;
  v25 = *(a5 + 48);
  *(v24 + 8) = *(a5 + 32);
  *(v24 + 16) = v25;
  *(v24 + 24) = a6;
  *(v24 + 28) = a7;
  *(v24 + 32) = a8;
  *(v24 + 36) = a9;
  *(v24 + 40) = v22;
  v26 = *(a5 + 4);
  *(v24 + 48) = (v26 << 16) | 0x4000;
  *(v24 + 52) = a2;
  v27 = (v26 & 0xF000) == 40960;
  v28 = *(a1 + 36);
  if (!v27)
  {
    v28 += 12;
  }

  *(v24 + 56) = v27;
  *(a1 + 36) = a9 + v28 + 46;
  return result;
}

uint64_t BOMPKZipReadDataDescriptor(int **a1, int a2, _DWORD *a3, unint64_t *a4, unint64_t *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = 1;
  if (a1 && a3 && a4 && a5)
  {
    v10 = a2 ? 20 : 12;
    if (BOMFileRead(*a1, v16, v10) == v10)
    {
      v11 = BOMStreamWithAddress(v16, v10, 0);
      if (v11)
      {
        v12 = v11;
        if (!BOMStreamSetByteOrder(v11, 2u))
        {
          *a3 = BOMStreamReadUInt32(v12);
          if (a2)
          {
            *a4 = BOMStreamReadUInt64(v12);
            UInt64 = BOMStreamReadUInt64(v12);
          }

          else
          {
            *a4 = BOMStreamReadUInt32(v12);
            UInt64 = BOMStreamReadUInt32(v12);
          }

          v5 = 0;
          *a5 = UInt64;
        }

        BOMStreamFree(v12);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL BOMPKZipWriteDataDescriptor(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v8 = (*(a1 + 40) + ((*(a1 + 52) - 1) << 6));
    v8[6] = a2;
    v8[7] = a3;
    v8[8] = a4;
    v9 = 1;
    v10 = BOMStreamWithAddress(v14, 0xCuLL, 1);
    if (v10)
    {
      v11 = v10;
      if (BOMStreamSetByteOrder(v10, 2u))
      {
        BOMStreamFree(v11);
      }

      else
      {
        BOMStreamWriteUInt32(v11, a2);
        BOMStreamWriteUInt32(v11, a3);
        BOMStreamWriteUInt32(v11, a4);
        BOMStreamFree(v11);
        v9 = BOMFileWrite(*a1, v14, 12) != 12;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t BOMPKZipReadCentralHeader(int **a1, char *a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a1 && a2 && a3)
  {
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    if (BOMFileRead(*a1, v23, 0x2AuLL) != 42)
    {
      goto LABEL_8;
    }

    v9 = BOMStreamWithAddress(v23, 0x2AuLL, 0);
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v9;
    if (BOMStreamSetByteOrder(v9, 2u))
    {
      BOMStreamFree(v10);
      goto LABEL_8;
    }

    BOMStreamReadUInt16(v10);
    BOMStreamReadUInt16(v10);
    BOMStreamReadUInt16(v10);
    BOMStreamReadUInt16(v10);
    UInt32 = BOMStreamReadUInt32(v10);
    *(a3 + 48) = _dos2unixtime(UInt32);
    BOMStreamReadUInt32(v10);
    *a4 = BOMStreamReadUInt32(v10);
    *(a3 + 96) = BOMStreamReadUInt32(v10);
    UInt16 = BOMStreamReadUInt16(v10);
    v14 = BOMStreamReadUInt16(v10);
    *(a3 + 116) = 0;
    v15 = BOMStreamReadUInt16(v10);
    BOMStreamReadUInt16(v10);
    BOMStreamReadUInt16(v10);
    v16 = BOMStreamReadUInt32(v10);
    v17 = v16;
    *(a3 + 4) = WORD1(v16);
    BOMStreamReadUInt32(v10);
    BOMStreamFree(v10);
    if (UInt16)
    {
      v18 = UInt16;
      if (UInt16 > 0x3FF)
      {
        goto LABEL_8;
      }

      if (BOMFileRead(*a1, a2, UInt16) != UInt16)
      {
        goto LABEL_8;
      }

      UInt16 = a2[UInt16 - 1] == 47;
      v19 = (v18 - UInt16);
      a2[v19] = 0;
      if (_sanitizePath(a2, v19))
      {
        goto LABEL_8;
      }
    }

    if (*(a3 + 4) <= 0xFFFu)
    {
      if (UInt16 | ((v17 & 0x10) >> 4))
      {
        v20 = 0x4000;
      }

      else
      {
        v20 = 0x8000;
      }

      *(a3 + 4) = v20;
    }

    if (v14)
    {
      if (v14 < 0x2B)
      {
        v21 = v23;
      }

      else
      {
        v21 = BOM_malloc(v14);
        if (!v21)
        {
          goto LABEL_8;
        }
      }

      if (BOMFileRead(*a1, v21, v14) != v14)
      {
        goto LABEL_8;
      }

      if (v21 != v23)
      {
        free(v21);
      }
    }

    if (!v15)
    {
LABEL_35:
      result = 0;
      goto LABEL_9;
    }

    if (v15 < 0x2B)
    {
      v22 = v23;
    }

    else
    {
      v22 = BOM_malloc(v15);
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    if (BOMFileRead(*a1, v22, v15) == v15)
    {
      if (v22 != v23)
      {
        free(v22);
      }

      goto LABEL_35;
    }

LABEL_8:
    result = 1;
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMPKZipWriteCentralDirectory(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 36);
  if (!v2)
  {
    return 1;
  }

  v3 = (v2 + 22);
  v4 = BOM_malloc(v3);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = BOMStreamWithAddress(v4, v3, 1);
  if (!v6)
  {
LABEL_7:
    free(v5);
    return 1;
  }

  v7 = v6;
  if (BOMStreamSetByteOrder(v6, 2u))
  {
    BOMStreamFree(v7);
    goto LABEL_7;
  }

  if (*(a1 + 52))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      BOMStreamWriteUInt32(v7, 0x2014B50u);
      BOMStreamWriteUInt16(v7, 789);
      BOMStreamWriteUInt16(v7, *(*(a1 + 40) + v10));
      v12 = *(a1 + 40) + v10;
      if (*(v12 + 56))
      {
        v13 = 0;
      }

      else
      {
        v13 = 8 * (*(v12 + 32) != 0);
      }

      BOMStreamWriteUInt16(v7, v13);
      BOMStreamWriteUInt16(v7, *(*(a1 + 40) + v10 + 2));
      v14 = _unix2dostime((*(a1 + 40) + v10 + 16));
      BOMStreamWriteUInt32(v7, v14);
      BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 24));
      BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 28));
      BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 32));
      BOMStreamWriteUInt16(v7, *(*(a1 + 40) + v10 + 36));
      if (*(*(a1 + 40) + v10 + 56))
      {
        v15 = 0;
      }

      else
      {
        v15 = 12;
      }

      BOMStreamWriteUInt16(v7, v15);
      BOMStreamWriteUInt16(v7, 0);
      BOMStreamWriteUInt16(v7, 0);
      BOMStreamWriteUInt16(v7, 0);
      BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 48));
      BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 52));
      BOMStreamWriteBuffer(v7, *(*(a1 + 40) + v10 + 40), *(*(a1 + 40) + v10 + 36));
      if (!*(*(a1 + 40) + v10 + 56))
      {
        BOMStreamWriteUInt16(v7, 22613);
        BOMStreamWriteUInt16(v7, 8);
        BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 8));
        BOMStreamWriteUInt32(v7, *(*(a1 + 40) + v10 + 16));
      }

      ++v11;
      v10 += 64;
    }

    while (v11 < *(a1 + 52));
  }

  BOMStreamWriteUInt32(v7, 0x6054B50u);
  BOMStreamWriteUInt16(v7, 0);
  BOMStreamWriteUInt16(v7, 0);
  BOMStreamWriteUInt16(v7, *(a1 + 52));
  BOMStreamWriteUInt16(v7, *(a1 + 52));
  BOMStreamWriteUInt32(v7, *(a1 + 36));
  v16 = BOMFileOffset(*a1);
  BOMStreamWriteUInt32(v7, v16);
  BOMStreamWriteUInt16(v7, 0);
  BOMStreamFree(v7);
  v8 = BOMFileWrite(*a1, v5, v3) != v3;
  free(v5);
  return v8;
}

uint64_t BOMPKZipSkipDigitalSignature(int **a1)
{
  if (!a1)
  {
    return 1;
  }

  v7 = 0;
  if (BOMFileRead(*a1, &v7, 2uLL) != 2)
  {
    return 1;
  }

  if (!v7)
  {
    return 0;
  }

  v2 = BOM_malloc(v7);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = BOMFileRead(*a1, v2, v7);
  v5 = v4 != v7;
  free(v3);
  return v5;
}

uint64_t BOMPKZipSkipZIP64CentralDirectoryRecord(int **a1)
{
  if (!a1)
  {
    return 1;
  }

  v6 = 0;
  if (BOMFileRead(*a1, &v6, 8uLL) != 8)
  {
    return 1;
  }

  if (!v6)
  {
    return 0;
  }

  v2 = BOM_malloc(0x2CuLL);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = BOMFileRead(*a1, v2, 0x2CuLL) != 44;
  free(v3);
  return v4;
}

BOOL BOMPKZipSkipZIP64CentralDirectoryLocation(int **a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = BOMFileRead(*a1, v3, 0x10uLL) != 16;
  }

  else
  {
    result = 1;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL BOMPKZipSkipEndOfCentralDirectoryRecord(int **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_4;
  }

  if (BOMFileRead(*a1, v10, 0x12uLL) != 18)
  {
    goto LABEL_4;
  }

  v7 = 0;
  if (_readEOCDRecord(v10, &v9, &v8, &v7))
  {
    goto LABEL_4;
  }

  v5 = v7;
  if (!v7)
  {
    v2 = 0;
    goto LABEL_5;
  }

  v6 = v10;
  if (v7 < 0x13u || (v6 = BOM_malloc(v7)) != 0)
  {
    v2 = BOMFileRead(*a1, v6, v5) != v5;
    if (v6 != v10)
    {
      free(v6);
    }
  }

  else
  {
LABEL_4:
    v2 = 1;
  }

LABEL_5:
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t _readEOCDRecord(uint64_t a1, _WORD *a2, _DWORD *a3, _WORD *a4)
{
  v7 = BOMStreamWithAddress(a1, 0x12uLL, 0);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  if (BOMStreamSetByteOrder(v7, 2u))
  {
    v9 = 1;
  }

  else
  {
    BOMStreamReadUInt16(v8);
    BOMStreamReadUInt16(v8);
    BOMStreamReadUInt16(v8);
    *a2 = BOMStreamReadUInt16(v8);
    BOMStreamReadUInt32(v8);
    *a3 = BOMStreamReadUInt32(v8);
    v9 = 0;
    *a4 = BOMStreamReadUInt16(v8);
  }

  BOMStreamFree(v8);
  return v9;
}

uint64_t BOMPKZipGetFileCompressedSize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = *(result + 80);
    if (v2 && *(result + 72) > a2)
    {
      return *(v2 + 12 * a2 + 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BOMPKZipGetFileUncompressedSize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = *(result + 80);
    if (v2 && *(result + 72) > a2)
    {
      return *(v2 + 12 * a2 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BOMPKZipLoadCentralDirectory(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  BOMFileOffset(*a1);
  if (BOMPKZipSeekToCentralDirectory() || (v18 = 0, BOMPKZipReadNextSignature(a1, &v18)))
  {
LABEL_3:
    v2 = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  while (v18 == 2)
  {
    if (BOMFileRead(*a1, v19, 0x2AuLL) != 42)
    {
      goto LABEL_3;
    }

    v6 = *(a1 + 80);
    if (v6)
    {
      v7 = *(a1 + 68);
      if (*(a1 + 72) + 1 <= v7)
      {
        goto LABEL_12;
      }

      v8 = v7 + 32;
      *(a1 + 68) = v8;
      v9 = BOM_realloc(v6, 12 * v8);
    }

    else
    {
      *(a1 + 68) = 32;
      v9 = BOM_malloczero(0x180uLL);
    }

    *(a1 + 80) = v9;
    if (!v9)
    {
      *(a1 + 68) = 0;
      *(a1 + 72) = 0;
      goto LABEL_3;
    }

LABEL_12:
    v10 = BOMStreamWithAddress(v19, 0x2AuLL, 0);
    if (!v10)
    {
      goto LABEL_3;
    }

    v11 = v10;
    if (BOMStreamSetByteOrder(v10, 2u))
    {
      BOMStreamFree(v11);
      goto LABEL_3;
    }

    BOMStreamReadUInt16(v11);
    BOMStreamReadUInt16(v11);
    BOMStreamReadUInt16(v11);
    BOMStreamReadUInt16(v11);
    BOMStreamReadUInt16(v11);
    BOMStreamReadUInt16(v11);
    UInt32 = BOMStreamReadUInt32(v11);
    v13 = BOMStreamReadUInt32(v11);
    v14 = BOMStreamReadUInt32(v11);
    BOMStreamReadUInt16(v11);
    BOMStreamReadUInt16(v11);
    BOMStreamReadUInt16(v11);
    BOMStreamReadUInt16(v11);
    BOMStreamReadUInt16(v11);
    BOMStreamReadUInt32(v11);
    BOMStreamReadUInt32(v11);
    BOMStreamFree(v11);
    v15 = *(a1 + 72);
    v16 = (*(a1 + 80) + 12 * v15);
    *v16 = UInt32;
    v16[1] = v13;
    v16[2] = v14;
    *(a1 + 72) = v15 + 1;
    v17 = *a1;
    BOMFileSeek();
    v18 = 0;
    if (BOMPKZipReadNextSignature(a1, &v18))
    {
      goto LABEL_3;
    }
  }

  if (v18 == 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

LABEL_4:
  v3 = *a1;
  BOMFileSeek();
  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t BOMPKZipSeekToCentralDirectory()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v29 = *MEMORY[0x277D85DE8];
  v4 = *v0;
  v5 = BOMFileSeek();
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  v6 = v5;
  v7 = v5 >= 0x10016 ? 65558 : v5;
  v8 = *v3;
  if (BOMFileSeek() < 0 || BOMFileRead(*v3, v28, v7) != v7 || v6 < 0x16)
  {
    goto LABEL_27;
  }

  v9 = &v28[(v7 - 22)];
  if (*v9 != 101010256)
  {
    v10 = v7 >= (v7 & 0x3FF | 0x400) ? v7 & 0x3FF | 0x400 : v7;
    if (v7 - v10 < 0)
    {
      goto LABEL_27;
    }

    v11 = v10 - 18;
    v12 = &v28[(v7 - v10)];
    do
    {
      v13 = 0;
      v14 = v12;
LABEL_15:
      v15 = v11 - 3;
      if (v11 != 3)
      {
        v16 = v14;
        do
        {
          v9 = memchr(v16, 80, v15);
          if (!v9)
          {
            break;
          }

          if (*v9 == 101010256)
          {
            v18 = v9 - v14 + 4;
            v11 -= v18;
            v14 += v18;
            v13 = v9;
            if (v11 > 3)
            {
              goto LABEL_15;
            }

            goto LABEL_26;
          }

          v17 = v9 - v16;
          v16 = v9 + 1;
          v15 += ~v17;
        }

        while (v15);
      }

      v12 -= 1024;
      if (v13)
      {
        break;
      }

      v11 = 1027;
    }

    while (v12 >= v28);
    v9 = v13;
    if (!v13)
    {
      goto LABEL_27;
    }
  }

LABEL_26:
  v26 = 0;
  v27 = 0;
  if (_readEOCDRecord((v9 + 4), &v26 + 1, &v27, &v26))
  {
LABEL_27:
    result = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  v21 = v27;
  v22 = v27 | 0xFFFFFFFF00000000;
  v23 = v6 - v27;
  do
  {
    v22 += 0x100000000;
    if (v21 >= v6)
    {
      break;
    }

    v21 += 0x100000000;
    v24 = HIDWORD(v23);
    v23 -= 0x100000000;
  }

  while (v24);
  if (v2)
  {
    *v2 = HIWORD(v26);
  }

  v25 = *v3;
  result = BOMFileSeek() >> 63;
LABEL_28:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMPKZipStoreQuarantinePath(uint64_t a1, char *__s)
{
  result = 1;
  if (a1 && __s)
  {
    v5 = strlen(__s);
    v6 = v5;
    v7 = *(a1 + 64);
    if (v7)
    {
      v20 = 0;
      v19 = 0;
      _search(a1, 0, v7 - 1, __s, v5, &v20, &v19);
      if (v19)
      {
        return 1;
      }

      v8 = BOM_realloc(*(a1 + 56), 16 * (v7 + 1));
      *(a1 + 56) = v8;
      if (!v8)
      {
        return 1;
      }

      v9 = *(a1 + 64);
      v10 = v20;
      if (v9 > v20)
      {
        v11 = &v8[16 * v9];
        v12 = *(a1 + 64);
        v13 = v11;
        do
        {
          v14 = *(v13 - 2);
          v13 -= 16;
          --v12;
          *v11 = v14;
          v11[8] = *(v11 - 8);
          v11 = v13;
        }

        while (v12 > v10);
      }

      *(a1 + 64) = v9 + 1;
      v15 = BOM_malloc(v6);
      v16 = *(a1 + 56);
      v16[2 * v10] = v15;
      if (v15)
      {
        memcpy(v15, __s, v6);
        result = 0;
        *(*(a1 + 56) + 16 * v10 + 8) = v6;
        return result;
      }
    }

    else
    {
      v17 = BOM_malloc(0x10uLL);
      *(a1 + 56) = v17;
      if (!v17)
      {
        return 1;
      }

      v18 = BOM_malloc(v6);
      v16 = *(a1 + 56);
      *v16 = v18;
      if (v18)
      {
        memcpy(v18, __s, v6);
        result = 0;
        *(*(a1 + 56) + 8) = v6;
        ++*(a1 + 64);
        return result;
      }
    }

    free(v16);
    return 1;
  }

  return result;
}

uint64_t _search(uint64_t a1, unsigned int a2, unsigned int a3, void *__s1, unsigned int a5, unsigned int *a6, _BYTE *a7)
{
  v13 = *(a1 + 56);
  while (1)
  {
    while (1)
    {
      v14 = a2 + ((a3 - a2) >> 1);
      v15 = v13 + 16 * v14;
      v16 = *(v15 + 8);
      v17 = v16 >= a5 ? a5 : *(v15 + 8);
      result = memcmp(__s1, *v15, v17);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      if (a3 == a2)
      {
        v20 = 0;
LABEL_20:
        *a6 = v14 + v20;
        return result;
      }

LABEL_14:
      a3 = v14 - (a3 - a2 > 1);
    }

    v20 = result != 0;
    if (v16 <= a5 && result == 0)
    {
      break;
    }

    if (a3 == a2)
    {
      goto LABEL_20;
    }

    if (!result)
    {
      goto LABEL_14;
    }

LABEL_17:
    if (v14 == a3)
    {
      a2 += (a3 - a2) >> 1;
    }

    else
    {
      a2 = v14 + 1;
    }
  }

  if (a3 != a2)
  {
    if (v16 >= a5)
    {
      *a6 = v14;
LABEL_28:
      *a7 = 1;
      return result;
    }

    goto LABEL_17;
  }

  if (v16 >= a5)
  {
    v21 = a2 + ((a3 - a2) >> 1);
  }

  else
  {
    v21 = v14 + 1;
  }

  *a6 = v21;
  if (v16 >= a5)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t BOMPKZipLookupQuarantinePath(uint64_t a1, char *__s, _BYTE *a3)
{
  result = 1;
  if (a1 && __s && a3)
  {
    v7 = *(a1 + 64);
    *a3 = 0;
    if (v7)
    {
      v8 = strlen(__s);
      _search(a1, 0, *(a1 + 64) - 1, __s, v8, &v9, a3);
    }

    return 0;
  }

  return result;
}

uint64_t BOMPKZipQuarantinePathCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 64);
  }

  else
  {
    return 1;
  }
}

uint64_t BOMPKZipCopyQuarantinePath(uint64_t a1, unsigned int a2, void *__dst)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a1 + 64) < a2)
  {
    return 1;
  }

  v7 = *(a1 + 56) + 16 * a2;
  memcpy(__dst, *v7, *(v7 + 8));
  result = 0;
  *(__dst + *(*(a1 + 56) + 16 * a2 + 8)) = 0;
  return result;
}

uint64_t update_keys(int *a1, uint64_t a2)
{
  v2 = PKZip_crctab_0[(*a1 ^ a2)] ^ (*a1 >> 8);
  v3 = 134775813 * (a1[1] + v2) + 1;
  *a1 = v2;
  a1[1] = v3;
  a1[2] = PKZip_crctab_0[a1[2] ^ HIBYTE(v3)] ^ (a1[2] >> 8);
  return a2;
}

uint64_t init_keys(uint64_t result, _BYTE *a2)
{
  *result = 0x2345678912345678;
  *(result + 8) = 878082192;
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    v4 = a2 + 1;
    do
    {
      result = update_keys(v3, v2);
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *BOMCopierDataAnalyzerNew(int a1, void *a2)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 90, "BOMCopierDataAnalyzerNew", "No flag is set.");
    return 0;
  }

  v3 = a1;
  v4 = malloc_type_calloc(1uLL, 0x90uLL, 0x1030040F8F0F2B1uLL);
  if (!v4)
  {
    v7 = *__error();
    v8 = __error();
    strerror(*v8);
    BOMCopierErrorCapture(a2, v7, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 103, "BOMCopierDataAnalyzerNew", "Could not allocate BOMCopierDataAnalyzer: %s");
    return 0;
  }

  v5 = v4;
  if (v3)
  {
    *v4 |= 1uLL;
    if ((v3 & 2) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_5;
  }

  *v4 |= 2uLL;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *v4 |= 8uLL;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *v4 |= 0x10uLL;
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *v4 |= 0x20uLL;
  if ((v3 & 0x40) == 0)
  {
LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *v4 |= 0x40uLL;
  if ((v3 & 0x80) == 0)
  {
LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_24:
  *v4 |= 0x80uLL;
  if ((v3 & 0x100) != 0)
  {
LABEL_11:
    *v4 |= 0x100uLL;
  }

LABEL_12:
  inited = init_data_analyzer(v4, a2);
  if (inited)
  {
    BOMCopierErrorCapture(a2, inited, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 112, "BOMCopierDataAnalyzerNew", "Could not initialize BOMCopierDataAnalyzer");
    BOMCopierDataAnalyzerFree(v5);
    return 0;
  }

  return v5;
}

uint64_t init_data_analyzer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = a1 + 1;
    if (a1[1])
    {
      CNCRCRelease();
      *v6 = 0;
    }

    if (CNCRCInit())
    {
      v7 = *__error();
      v8 = __error();
      strerror(*v8);
      BOMCopierErrorCapture(a2, v7, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 474, "init_data_analyzer", "Could not allocate CRC_32 context: %s");
      return 1;
    }

    *(a1 + 4) = 0;
    v4 = *a1;
    v5 = 1;
    if ((*a1 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v5 = 0;
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  if (a1[3])
  {
    CNCRCRelease();
    a1[3] = 0;
  }

  if (CNCRCInit())
  {
    v9 = *__error();
    v10 = __error();
    strerror(*v10);
    BOMCopierErrorCapture(a2, v9, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 498, "init_data_analyzer", "Could not allocate CRC_32 POSIX context: %s");
    return 1;
  }

  *(a1 + 10) = 0;
  a1[4] = 0;
  ++v5;
  v4 = *a1;
  if ((*a1 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_21:
  v13 = a1[6];
  if (!v13)
  {
    v13 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
    a1[6] = v13;
    if (!v13)
    {
      v27 = *__error();
      v28 = __error();
      strerror(*v28);
      BOMCopierErrorCapture(a2, v27, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 519, "init_data_analyzer", "Could not allocate MD5 context: %s");
      return 1;
    }
  }

  CC_MD5_Init(v13);
  if (!a1[12])
  {
    v14 = malloc_type_malloc(0x10uLL, 0xE67CDD74uLL);
    a1[12] = v14;
    if (!v14)
    {
      v31 = *__error();
      v32 = __error();
      strerror(*v32);
      BOMCopierErrorCapture(a2, v31, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 534, "init_data_analyzer", "Could not allocate MD5 digest: %s");
      return 1;
    }
  }

  ++v5;
  v4 = *a1;
  if ((*a1 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_26:
  v15 = a1[7];
  if (!v15)
  {
    v15 = malloc_type_calloc(1uLL, 0x60uLL, 0x1000040565EDBD2uLL);
    a1[7] = v15;
    if (!v15)
    {
      v29 = *__error();
      v30 = __error();
      strerror(*v30);
      BOMCopierErrorCapture(a2, v29, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 553, "init_data_analyzer", "Could not allocate SHA1 context: %s");
      return 1;
    }
  }

  CC_SHA1_Init(v15);
  if (!a1[13])
  {
    v16 = malloc_type_malloc(0x14uLL, 0xF874F85BuLL);
    a1[13] = v16;
    if (!v16)
    {
      v35 = *__error();
      v36 = __error();
      strerror(*v36);
      BOMCopierErrorCapture(a2, v35, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 565, "init_data_analyzer", "Could not allocate SHA1 digest: %s");
      return 1;
    }
  }

  ++v5;
  v4 = *a1;
  if ((*a1 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_36:
    v19 = a1[9];
    if (!v19)
    {
      v19 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040ED882C02uLL);
      a1[9] = v19;
      if (!v19)
      {
        v37 = *__error();
        v38 = __error();
        strerror(*v38);
        BOMCopierErrorCapture(a2, v37, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 615, "init_data_analyzer", "Could not allocate SHA256 context: %s");
        return 1;
      }
    }

    CC_SHA256_Init(v19);
    if (!a1[15])
    {
      v20 = malloc_type_malloc(0x20uLL, 0xB5662981uLL);
      a1[15] = v20;
      if (!v20)
      {
        v43 = *__error();
        v44 = __error();
        strerror(*v44);
        BOMCopierErrorCapture(a2, v43, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 627, "init_data_analyzer", "Could not allocate SHA256 digest: %s");
        return 1;
      }
    }

    ++v5;
    if ((*a1 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

LABEL_31:
  v17 = a1[8];
  if (!v17)
  {
    v17 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040ED882C02uLL);
    a1[8] = v17;
    if (!v17)
    {
      v33 = *__error();
      v34 = __error();
      strerror(*v34);
      BOMCopierErrorCapture(a2, v33, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 584, "init_data_analyzer", "Could not allocate SHA224 context: %s");
      return 1;
    }
  }

  CC_SHA224_Init(v17);
  if (!a1[14])
  {
    v18 = malloc_type_malloc(0x1CuLL, 0x51147CD4uLL);
    a1[14] = v18;
    if (!v18)
    {
      v39 = *__error();
      v40 = __error();
      strerror(*v40);
      BOMCopierErrorCapture(a2, v39, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 596, "init_data_analyzer", "Could not allocate SHA224 digest: %s");
      return 1;
    }
  }

  ++v5;
  v4 = *a1;
  if ((*a1 & 0x40) != 0)
  {
    goto LABEL_36;
  }

LABEL_7:
  if ((v4 & 0x80) != 0)
  {
LABEL_41:
    v21 = a1[10];
    if (!v21)
    {
      v21 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10000400F93440CuLL);
      a1[10] = v21;
      if (!v21)
      {
        v41 = *__error();
        v42 = __error();
        strerror(*v42);
        BOMCopierErrorCapture(a2, v41, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 646, "init_data_analyzer", "Could not allocate SHA384 context: %s");
        return 1;
      }
    }

    CC_SHA384_Init(v21);
    if (!a1[16])
    {
      v22 = malloc_type_malloc(0x30uLL, 0xE2F2F79FuLL);
      a1[16] = v22;
      if (!v22)
      {
        v47 = *__error();
        v48 = __error();
        strerror(*v48);
        BOMCopierErrorCapture(a2, v47, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 658, "init_data_analyzer", "Could not allocate SHA384 digest: %s");
        return 1;
      }
    }

    v5 = 1;
  }

LABEL_46:
  if ((*(a1 + 1) & 1) == 0)
  {
    if (!v5)
    {
      v23 = __error();
      v24 = strerror(*v23);
      v11 = 22;
      BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 699, "init_data_analyzer", "No method enabled", v24);
      return v11;
    }

    return 0;
  }

  v25 = a1[11];
  if (v25 || (v25 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10000400F93440CuLL), (a1[11] = v25) != 0))
  {
    CC_SHA512_Init(v25);
    if (a1[17])
    {
      return 0;
    }

    v26 = malloc_type_malloc(0x40uLL, 0x6CB3BB63uLL);
    a1[17] = v26;
    if (v26)
    {
      return 0;
    }

    v49 = *__error();
    v50 = __error();
    strerror(*v50);
    BOMCopierErrorCapture(a2, v49, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 689, "init_data_analyzer", "Could not allocate SHA512 digest: %s");
  }

  else
  {
    v45 = *__error();
    v46 = __error();
    strerror(*v46);
    BOMCopierErrorCapture(a2, v45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 677, "init_data_analyzer", "Could not allocate SHA512 context: %s");
  }

  return 1;
}

void BOMCopierDataAnalyzerFree(void *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      CNCRCRelease();
    }

    if (a1[3])
    {
      CNCRCRelease();
    }

    v2 = a1[6];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[7];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[8];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[9];
    if (v5)
    {
      free(v5);
    }

    v6 = a1[10];
    if (v6)
    {
      free(v6);
    }

    v7 = a1[11];
    if (v7)
    {
      free(v7);
    }

    v8 = a1[12];
    if (v8)
    {
      free(v8);
    }

    v9 = a1[13];
    if (v9)
    {
      free(v9);
    }

    v10 = a1[14];
    if (v10)
    {
      free(v10);
    }

    v11 = a1[15];
    if (v11)
    {
      free(v11);
    }

    v12 = a1[16];
    if (v12)
    {
      free(v12);
    }

    v13 = a1[17];
    if (v13)
    {
      free(v13);
    }

    free(a1);
  }
}

uint64_t *BOMCopierDataAnalyzerReset(uint64_t *result)
{
  if (result)
  {
    v1 = 0;
    result = init_data_analyzer(result, &v1);
    if (result)
    {
      return BOMCopierErrorCapture(&v1, result, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 219, "BOMCopierDataAnalyzerReset", "Could not initialize BOMCopierDataAnalyzer");
    }
  }

  return result;
}

uint64_t BOMCopierDataAnalyzerUpdate(uint64_t *a1, void *data, uint64_t len, void *a4)
{
  if (a1)
  {
    if (data)
    {
      if (len)
      {
        v8 = *a1;
        if (*a1)
        {
          v9 = a1[1];
          if (CNCRCUpdate())
          {
            v10 = *__error();
            v11 = __error();
            strerror(*v11);
            BOMCopierErrorCapture(a4, v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 723, "update_data_analyzer", "Could not update CRC_32 context: %s");
            return 1;
          }

          v8 = *a1;
        }

        if ((v8 & 2) != 0)
        {
          v14 = a1[3];
          if (CNCRCUpdate())
          {
            v15 = *__error();
            v16 = __error();
            strerror(*v16);
            BOMCopierErrorCapture(a4, v15, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 737, "update_data_analyzer", "Could not update CRC_32 POSIX context: %s");
            return 1;
          }

          a1[4] += len;
          v8 = *a1;
        }

        if ((v8 & 8) != 0)
        {
          CC_MD5_Update(a1[6], data, len);
          v8 = *a1;
          if ((*a1 & 0x10) == 0)
          {
LABEL_19:
            if ((v8 & 0x20) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_27;
          }
        }

        else if ((v8 & 0x10) == 0)
        {
          goto LABEL_19;
        }

        CC_SHA1_Update(a1[7], data, len);
        v8 = *a1;
        if ((*a1 & 0x20) == 0)
        {
LABEL_20:
          if ((v8 & 0x40) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

LABEL_27:
        CC_SHA224_Update(a1[8], data, len);
        v8 = *a1;
        if ((*a1 & 0x40) == 0)
        {
LABEL_21:
          if ((v8 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_29;
        }

LABEL_28:
        CC_SHA256_Update(a1[9], data, len);
        v8 = *a1;
        if ((*a1 & 0x80) == 0)
        {
LABEL_22:
          if ((v8 & 0x100) == 0)
          {
            return 0;
          }

LABEL_23:
          CC_SHA512_Update(a1[11], data, len);
          return 0;
        }

LABEL_29:
        CC_SHA384_Update(a1[10], data, len);
        if ((*a1 & 0x100) == 0)
        {
          return 0;
        }

        goto LABEL_23;
      }

      v12 = 22;
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 249, "BOMCopierDataAnalyzerUpdate", "data_size is 0");
    }

    else
    {
      v12 = 22;
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 243, "BOMCopierDataAnalyzerUpdate", "data is NULL");
    }
  }

  else
  {
    v12 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 237, "BOMCopierDataAnalyzerUpdate", "data_analyzer is NULL");
  }

  return v12;
}

uint64_t BOMCopierDataAnalyzerFinalize(uint64_t *a1, void *a2)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      v5 = a1[1];
      if (CNCRCFinal())
      {
        v6 = *__error();
        v7 = __error();
        strerror(*v7);
        BOMCopierErrorCapture(a2, v6, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 820, "finalize_data_analyzer", "Could not finalize CRC_32 context: %s");
        return 1;
      }

      *(a1 + 4) = 0;
      v4 = *a1;
    }

    if ((v4 & 2) != 0)
    {
      v9 = a1[4];
      if (v9)
      {
        while (1)
        {
          v10 = a1[3];
          if (CNCRCUpdate())
          {
            break;
          }

          v11 = v9 > 0xFF;
          v9 >>= 8;
          if (!v11)
          {
            goto LABEL_11;
          }
        }

        v15 = *__error();
        v16 = __error();
        strerror(*v16);
        BOMCopierErrorCapture(a2, v15, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 842, "finalize_data_analyzer", "Could not update length for CRC_32 POSIX context: %s");
        return 1;
      }

LABEL_11:
      v12 = a1[3];
      if (CNCRCFinal())
      {
        v13 = *__error();
        v14 = __error();
        strerror(*v14);
        BOMCopierErrorCapture(a2, v13, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 851, "finalize_data_analyzer", "Could not finalize CRC_32 POSIX context: %s");
        return 1;
      }

      *(a1 + 10) = 0;
      v4 = *a1;
    }

    if ((v4 & 8) != 0)
    {
      CC_MD5_Final(a1[12], a1[6]);
      v4 = *a1;
      if ((*a1 & 0x10) == 0)
      {
LABEL_18:
        if ((v4 & 0x20) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_27;
      }
    }

    else if ((v4 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    CC_SHA1_Final(a1[13], a1[7]);
    v4 = *a1;
    if ((*a1 & 0x20) == 0)
    {
LABEL_19:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }

LABEL_27:
    CC_SHA224_Final(a1[14], a1[8]);
    v4 = *a1;
    if ((*a1 & 0x40) == 0)
    {
LABEL_20:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    }

LABEL_28:
    CC_SHA256_Final(a1[15], a1[9]);
    v4 = *a1;
    if ((*a1 & 0x80) == 0)
    {
LABEL_21:
      if ((v4 & 0x100) == 0)
      {
        return 0;
      }

LABEL_22:
      CC_SHA512_Final(a1[17], a1[11]);
      return 0;
    }

LABEL_29:
    CC_SHA384_Final(a1[16], a1[10]);
    if ((*a1 & 0x100) == 0)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v8 = 22;
  BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 267, "BOMCopierDataAnalyzerFinalize", "data_analyzer is NULL");
  return v8;
}

uint64_t BOMCopierDataAnalyzerGetDigest(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a2 <= 4)
      {
        if (a2 <= 2)
        {
          if (a2 == 1)
          {
            if ((*a1 & 1) == 0)
            {
              BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 303, "BOMCopierDataAnalyzerGetDigest", "CRC32 is not supported");
              return 22;
            }

            v4 = 0;
            v5 = *(a1 + 16);
            goto LABEL_37;
          }

          if (a2 == 2)
          {
            if ((*a1 & 2) == 0)
            {
              BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 314, "BOMCopierDataAnalyzerGetDigest", "CRC32 POSIX is not supported");
              return 22;
            }

            v4 = 0;
            v5 = *(a1 + 40);
LABEL_37:
            *a3 = v5;
            return v4;
          }

LABEL_31:
          v4 = 22;
          BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 389, "BOMCopierDataAnalyzerGetDigest", "Unknown digest_type: %d");
          return v4;
        }

        if (a2 == 3)
        {
          if ((*a1 & 8) == 0)
          {
            BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 325, "BOMCopierDataAnalyzerGetDigest", "MD5 is not supported");
            return 22;
          }

          v4 = 0;
          v7 = **(a1 + 96);
        }

        else
        {
          if ((*a1 & 0x10) == 0)
          {
            BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 336, "BOMCopierDataAnalyzerGetDigest", "SHA1 is not supported");
            return 22;
          }

          v4 = 0;
          v13 = *(a1 + 104);
          v7 = *v13;
          *(a3 + 16) = *(v13 + 4);
        }

LABEL_40:
        *a3 = v7;
        return v4;
      }

      if (a2 > 6)
      {
        if (a2 == 7)
        {
          if ((*a1 & 0x80) == 0)
          {
            BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 369, "BOMCopierDataAnalyzerGetDigest", "SHA384 is not supported");
            return 22;
          }

          v4 = 0;
          v8 = *(a1 + 128);
          v9 = *v8;
          v10 = v8[1];
          v11 = v8[2];
        }

        else
        {
          if (a2 != 8)
          {
            goto LABEL_31;
          }

          if ((*(a1 + 1) & 1) == 0)
          {
            BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 380, "BOMCopierDataAnalyzerGetDigest", "SHA512 is not supported");
            return 22;
          }

          v4 = 0;
          v14 = *(a1 + 136);
          v9 = *v14;
          v10 = v14[1];
          v11 = v14[2];
          *(a3 + 48) = v14[3];
        }

        *(a3 + 32) = v11;
      }

      else
      {
        if (a2 == 5)
        {
          if ((*a1 & 0x20) == 0)
          {
            BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 347, "BOMCopierDataAnalyzerGetDigest", "SHA224 is not supported");
            return 22;
          }

          v4 = 0;
          v6 = *(a1 + 112);
          v7 = *v6;
          *(a3 + 12) = *(v6 + 12);
          goto LABEL_40;
        }

        if ((*a1 & 0x40) == 0)
        {
          BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 358, "BOMCopierDataAnalyzerGetDigest", "SHA256 is not supported");
          return 22;
        }

        v4 = 0;
        v12 = *(a1 + 120);
        v9 = *v12;
        v10 = v12[1];
      }

      *a3 = v9;
      *(a3 + 16) = v10;
      return v4;
    }

    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 293, "BOMCopierDataAnalyzerGetDigest", "message_digest is NULL");
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDataAnalyzer.c", 287, "BOMCopierDataAnalyzerGetDigest", "data_analyzer is NULL");
  }

  return v4;
}

uint64_t volume_has_data_protection(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, 512);
  if (statfs(a1, &v7))
  {
    v2 = *MEMORY[0x277D85DF8];
    v3 = __error();
    v4 = strerror(*v3);
    fprintf(v2, "Could not statfs %s: %s\n", a1, v4);
    result = 0;
  }

  else
  {
    result = LOBYTE(v7.f_flags) >> 7;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL set_timestamps_0(const char *a1, __int128 *a2, _OWORD *a3)
{
  v7 = 0;
  v3 = *a2;
  v5[0] = *a3;
  v5[1] = v3;
  v6 = xmmword_241C79418;
  return setattrlist(a1, &v6, v5, 0x20uLL, 1u) != 0;
}

uint64_t _mkdirs_parent(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  __strlcpy_chk();
  v2 = strrchr(__s, 47);
  result = 0;
  if (v2 && __s != v2)
  {
    *v2 = 0;
    result = _mkdirs(a1, __s);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _mkdirs(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_16;
  }

  if (!(*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8)))
  {
    *__error() = 20;
    goto LABEL_16;
  }

  if (*__error() != 2)
  {
LABEL_16:
    result = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  __strlcpy_chk();
  v3 = rindex(v7, 47);
  if (!v3 || v3 == v7)
  {
    goto LABEL_12;
  }

  v4 = v3;
  *v3 = 0;
  result = _mkdirs(a1, v7);
  *v4 = 47;
  if (result == -1)
  {
    goto LABEL_17;
  }

  result = v4[1];
  if (!v4[1])
  {
    goto LABEL_17;
  }

  if (result != 46)
  {
LABEL_12:
    result = (*(*(a1 + 12832) + 168))(*(*(a1 + 12832) + 8), v7, 511);
    goto LABEL_17;
  }

  result = v4[2];
  if (v4[2])
  {
    if (result == 46 && !v4[3])
    {
      result = 0;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

LABEL_17:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _initGroupList(uint64_t a1)
{
  v2 = getgroups(16, (a1 + 10500));
  *(a1 + 10564) = v2;
  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _chPerms(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4, int a5)
{
  v8 = *(a3 + 20);
  v9 = *(a3 + 4);
  if ((v9 & 0xF000) == 0x4000)
  {
    v10 = 448;
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 10496))
  {
    v11 = *(a1 + 10564);
    if (v11 >= 1)
    {
      v12 = (a1 + 10500);
      while (1)
      {
        v13 = *v12++;
        if (v13 == v8)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_9;
        }
      }

      v15 = 0xFFFFFFFFLL;
      goto LABEL_16;
    }

LABEL_9:
    v8 = -1;
    v14 = 61951;
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    v15 = *(a3 + 16);
    if (*(a1 + 205) == 1)
    {
LABEL_16:
      v14 = 61951;
      goto LABEL_17;
    }

    v14 = 0xFFFF;
    if (*(a1 + 209) == 1)
    {
      if (*(a1 + 210))
      {
        v14 = 0xFFFF;
      }

      else
      {
        v14 = 61951;
      }
    }
  }

LABEL_17:
  if ((v9 & 0xF000) == 0x8000 && *(a1 + 206) == 1)
  {
    v14 &= 0xFFB6u;
  }

  v16 = v9 & v14;
  if (a4 && v10 > (v9 & v14 & 0x1C0u))
  {
    *(a3 + 4) = v9 & v14;
    v16 = v16 | v10;
    *a4 = 1;
  }

  if (a5 && (v15 & v8) != 0xFFFFFFFF && (*(*(a1 + 12832) + 192))(*(*(a1 + 12832) + 8), a2, v15) && (*__error() == 45 || *__error() == 1 && (v16 & 0xF000) == 0xA000))
  {
    *__error() = 0;
  }

  if ((v16 & 0xF000) == 0xA000)
  {

    return lchmod(a2, v16);
  }

  else
  {
    v18 = (*(*(a1 + 12832) + 200))(*(*(a1 + 12832) + 8), a2, v16);
    if (v18 && *__error() == 45)
    {
      v18 = 0;
      *__error() = 0;
    }

    return v18;
  }
}

uint64_t _makeDestDir(uint64_t a1, char *a2, int a3, uint64_t a4, _BYTE *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    result = _mkdirs(a1, a2);
    if (!result)
    {
LABEL_9:
      result = _chPerms(a1, a2, a4, a5, 1);
    }
  }

  else
  {
    v10 = rindex(a2, 47);
    if (!v10 || *v10 != 47 || v10[1] != 46 || v10[2] || (__strlcpy_chk(), __s[strlen(__s) - 2] = 0, result = (*(*(a1 + 12832) + 168))(*(*(a1 + 12832) + 8), __s, 511), !result))
    {
      result = (*(*(a1 + 12832) + 168))(*(*(a1 + 12832) + 8), a2, 511);
      if (!result)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _filterFatArchs(uint64_t a1, unsigned int a2, _DWORD *a3, void *a4)
{
  v8 = 0;
  v9 = 0;
  *a4 = 0;
  v10 = 1;
  if (a1 && a2)
  {
    v11 = 0;
    v12 = 0;
    v8 = 0;
    v9 = 0;
    while (2)
    {
      v13 = 0;
      v14 = (a1 + 20 * v11);
      while (1)
      {
        v15 = &a3[8 * v13];
        v16 = *v15;
        if (*v15 == -1)
        {
          break;
        }

        if (!v16)
        {
          goto LABEL_16;
        }

        if (*v14 == v16 && ((v15[1] & 1) != 0 || ((v15[2] ^ v14[1]) & 0xFFFFFF) == 0))
        {
          break;
        }

        ++v13;
      }

      if (v9)
      {
        v17 = (v9 + 1);
        v8 = BOM_realloc(v8, 8 * v17);
        if (!v8)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v8 = BOM_malloczero(8uLL);
        v17 = 1;
        if (!v8)
        {
LABEL_42:
          v26 = v17;
          goto LABEL_43;
        }
      }

      *(v8 + v9) = v14;
      v9 = v17;
      v12 = a1 + 20 * v11;
LABEL_16:
      if (++v11 < a2)
      {
        continue;
      }

      break;
    }

    v10 = v12 == 0;
  }

  if (a2 && v10 && a1)
  {
    v18 = 0;
    v19 = a2;
    do
    {
      if (*a3)
      {
        LODWORD(v20) = 0;
        v21 = a1 + 20 * v18;
        v22 = a3;
        while (1)
        {
          v23 = *(v22 + 2);
          if (v23 && v22[6] && (v24 = *v23) != 0)
          {
            v25 = 1;
            while (*(v21 + 4) != v24)
            {
              v24 = v23[v25++];
              if (!v24)
              {
                goto LABEL_30;
              }
            }

            if (v9)
            {
              v26 = (v9 + 1);
              v8 = BOM_realloc(v8, 8 * v26);
              if (!v8)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v8 = BOM_malloczero(8uLL);
              v26 = 1;
              if (!v8)
              {
                goto LABEL_43;
              }
            }

            *(v8 + v9) = v21;
          }

          else
          {
LABEL_30:
            v26 = v9;
          }

          v20 = (v20 + 1);
          v22 = &a3[8 * v20];
          v9 = v26;
          if (!*v22)
          {
            goto LABEL_39;
          }
        }
      }

      v26 = v9;
LABEL_39:
      ++v18;
      v9 = v26;
    }

    while (v18 < v19);
  }

  else
  {
    v26 = v9;
  }

LABEL_43:
  *a4 = v8;
  return v26;
}

uint64_t _determine_thin_type_and_archs(uint64_t a1, unsigned int a2, _DWORD *a3, void *a4, _DWORD *a5, _DWORD *a6, int a7)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  LODWORD(v15[0]) = -1;
  BYTE4(v15[0]) = 1;
  *a4 = 0;
  *a5 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_9;
  }

  if (a3)
  {
    goto LABEL_6;
  }

  if (!a7)
  {
LABEL_9:
    result = 0;
    *a6 = 0;
    goto LABEL_10;
  }

  a3 = v15;
LABEL_6:
  v11 = _filterFatArchs(a1, a2, a3, a4);
  if (!v11)
  {
    result = 1;
    goto LABEL_10;
  }

  v12 = v11;
  if (!a7 && v11 == a2)
  {
    goto LABEL_9;
  }

  if (v11 == 1)
  {
    result = 0;
    *a6 = 1;
  }

  else
  {
    result = 0;
    *a6 = 2;
  }

  *a5 = v12;
LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void *_sortFatArchsByOffset(void *result, int a2)
{
  if (result)
  {
    if (a2)
    {
      return mergesort(result, a2, 8uLL, _compareFatArchsByOffset);
    }
  }

  return result;
}

uint64_t _compareFatArchsByOffset(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 8);
  v3 = *(*a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double _createNewFatArchArray(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 1)
  {
    v4 = (a3 + 16);
    v5 = a2;
    do
    {
      v6 = *a1++;
      result = *v6;
      *(v4 - 2) = *v6;
      v9 = *(v6 + 12);
      v8 = *(v6 + 16);
      *(v4 - 1) = v9;
      *v4 = v8;
      v10 = (a4 + (1 << v8) - 1) & (0xFFFFFFFFLL << v8);
      *(v4 - 2) = v10;
      a4 = v10 + v9;
      v4 += 5;
      --v5;
    }

    while (v5);
  }

  return result;
}

size_t _normalizeBomCopySpecification(uint64_t a1, unsigned int a2, unsigned int a3, size_t *a4)
{
  v6 = *(a1 + 48);
  v7 = a3;
  v8 = a2;
  if (v6 >= 1)
  {
    v9 = 0;
    v10 = (a1 + 64);
    while (1)
    {
      v11 = *(v10 - 2);
      if (v11 > 2)
      {
        v11 = (v11 - 3) < 2;
      }

      else
      {
        if (!v11)
        {
          v12 = *v10 % a2;
          v13 = *v10 < a2;
LABEL_10:
          v11 = !v13;
          if (v13)
          {
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          if (v12)
          {
            v11 = v14;
          }

          goto LABEL_18;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            v12 = *v10 % a3;
            v13 = *v10 < a3;
            goto LABEL_10;
          }

          v11 = 0;
        }
      }

LABEL_18:
      v9 += v11;
      v10 += 7;
      if (!--v6)
      {
        goto LABEL_22;
      }
    }
  }

  v9 = 0;
LABEL_22:
  result = BOM_calloc(56 * v9 + 56, 1uLL);
  v16 = result;
  *result = *a1;
  *(result + 8) = *(a1 + 8);
  *(result + 16) = *(a1 + 16);
  v17 = *(a1 + 32);
  *(result + 24) = *(a1 + 24);
  *(result + 32) = v17;
  *(result + 40) = *(a1 + 40);
  *(result + 48) = v9;
  if (*(a1 + 48) >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = *(a1 + 16);
    v21 = result + 56;
    v22 = (a1 + 96);
    while (1)
    {
      v23 = *(v22 - 2);
      v24 = *v22;
      v25 = *(v22 - 6) <= 1u ? 1 : *(v22 - 6);
      v26 = *(v22 - 10);
      if (v26 <= 2)
      {
        break;
      }

      if ((v26 - 3) < 2)
      {
        result = 0;
        v30 = 0;
LABEL_42:
        v32 = v21 + 56 * v19;
        *v32 = v26;
        *(v32 + 8) = result;
        *(v32 + 16) = 1;
        *(v32 + 24) = v23;
        *(v32 + 32) = v30;
        *(v32 + 40) = v24;
        *(v32 + 48) = v20;
        ++v19;
      }

LABEL_43:
      ++v18;
      v22 += 7;
      if (v18 >= *(a1 + 48))
      {
        goto LABEL_46;
      }
    }

    result = *(v22 - 4);
    v27 = result * v25;
    if (v26)
    {
      if (v26 == 1)
      {
        v30 = *(v22 - 1);
        result = v27;
      }

      else
      {
        if (v26 != 2)
        {
          goto LABEL_43;
        }

        v28 = v27 / v7 * v7;
        if (v28)
        {
          v29 = v21 + 56 * v19;
          *v29 = 2;
          *(v29 + 8) = v7;
          *(v29 + 16) = v27 / v7;
          *(v29 + 24) = v23;
          *(v29 + 32) = 0;
          *(v29 + 40) = v24;
          *(v29 + 48) = v20;
          ++v19;
        }

        result = v27 % v7;
        if (!(v27 % v7))
        {
          goto LABEL_43;
        }

        v30 = 0;
        v23 += v28;
        v24 += v28;
      }
    }

    else
    {
      if (v27 / v8 * v8)
      {
        v31 = v21 + 56 * v19;
        *v31 = 0;
        *(v31 + 8) = v8;
        *(v31 + 16) = v27 / v8;
        *(v31 + 24) = v23;
        *(v31 + 32) = 0;
        *(v31 + 40) = v24;
        *(v31 + 48) = v20;
        ++v19;
      }

      result = v27 % v8;
      if (!(v27 % v8))
      {
        goto LABEL_43;
      }

      v30 = 0;
      v24 = v27 + v24 - result;
    }

    goto LABEL_42;
  }

  v19 = 0;
LABEL_46:
  if (v19 != v9)
  {
    result = fwrite("BOMCopier: Inconsistency while preflighting copy\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  *a4 = v16;
  return result;
}

uint64_t _printBomCopySpecification(const void **a1)
{
  printf("_BOMCopySpecification %p:\n", a1);
  printf("\tcopier:\t%p\n", *a1);
  printf("\tsource:\t%p\n", a1[1]);
  printf("\tdest:\t%p\n", a1[2]);
  printf("\toriginalSourceSize:\t%lld\n", a1[4]);
  printf("\ttotalDestinationSize:\t%lld\n", a1[5]);
  printf("\tnumSteps:\t%d\n", *(a1 + 12));
  result = puts("-------------------");
  if (*(a1 + 12) >= 1)
  {
    v3 = 0;
    for (i = a1 + 7; ; i += 7)
    {
      result = printf("Step %d:\n", v3);
      v5 = *i;
      if (*i > 1)
      {
        break;
      }

      if (!v5)
      {
        v7 = "_BOMCopyStepZero";
LABEL_14:
        printf("\ttype:\t%s\n", v7);
        printf("\tsize:\t%lld\n", i[1]);
        v8 = *(i + 4);
        printf("\titerationCount:\t%d\n");
        goto LABEL_15;
      }

      if (v5 == 1)
      {
        printf("\ttype:\t%s\n", "_BOMCopyStepBuffer");
        printf("\tsize:\t%lld\n", i[1]);
        v6 = i[4];
        printf("\tbuffer:\t%p\n");
LABEL_15:
        printf("\tsourceOffset:\t%lld\n", i[3]);
        result = printf("\tdestOffset:\t%lld\n");
      }

LABEL_16:
      if (++v3 >= *(a1 + 12))
      {
        return result;
      }
    }

    if (v5 != 2)
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
          printf("\ttype:\t%s\n", "_BOMCopyStepSeekToEndOfSource");
          result = printf("\tsourceOffset:\t%lld\n");
        }

        goto LABEL_16;
      }

      printf("\ttype:\t%s\n");
      goto LABEL_15;
    }

    v7 = "_BOMCopyStepCopy";
    goto LABEL_14;
  }

  return result;
}

uint64_t _executeBomCopySpecification(int *a1, unsigned int a2, unsigned int a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a4)
  {
    v11 = *a4;
  }

  else
  {
    v11 = 0;
  }

  if (!a1)
  {
    v14 = 22;
    goto LABEL_130;
  }

  v72 = BOM_calloc(a2, 1uLL);
  if (!v72)
  {
    v14 = 12;
    goto LABEL_130;
  }

  v12 = *a1;
  if (*(*a1 + 3328))
  {
    v13 = v12 + 3328;
  }

  else
  {
    v13 = *(v12 + 2296);
  }

  v69 = a5;
  v70 = *a1;
  buf = *(v12 + 8);
  v15 = *(a1 + 1);
  v68 = v8;
  crc = v11;
  if (a5)
  {
    v16 = CNCRCInit();
    if (v16)
    {
      v14 = v16;
      goto LABEL_129;
    }
  }

  if (a1[12] < 1)
  {
    v14 = 0;
    goto LABEL_129;
  }

  v66 = v13;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v67 = a3;
  while (1)
  {
    v20 = &a1[14 * v17 + 14];
    v21 = *(v20 + 48);
    if (!v21)
    {
      v21 = *(a1 + 2);
    }

    v22 = *v20;
    if (*v20 > 1)
    {
      switch(v22)
      {
        case 2:
          v36 = v70;
          if (*(v20 + 24) > a6)
          {
            if (BOMFileSeek() < 0)
            {
LABEL_134:
              v63 = __error();
              goto LABEL_120;
            }

            a6 = *(v20 + 24);
          }

          if (*(v20 + 16) >= 1)
          {
            v37 = 0;
            while (1)
            {
              v36 = v70;
              v38 = *(v20 + 8);
              if (*(v70 + 12776))
              {
                break;
              }

              v39 = BOMFileRead(v15, buf, v38);
LABEL_73:
              if (v39 != *(v20 + 8))
              {
                goto LABEL_116;
              }

              v41 = BOMFileWrite(v21, buf, v39);
              if (v41 != *(v20 + 8))
              {
                goto LABEL_134;
              }

              v42 = v41;
              if (v68)
              {
                crc = crc32(crc, buf, v41);
                v42 = *(v20 + 8);
              }

              if (v69)
              {
                CNCRCUpdate();
                v42 = *(v20 + 8);
              }

              v18 += v42;
              v43 = *(v70 + 104);
              if (v43)
              {
                v43(v70, *(a1 + 3), v18);
                if (*(v70 + 168))
                {
                  goto LABEL_133;
                }
              }

              v14 = 0;
              a6 += v39;
              if (++v37 >= *(v20 + 16))
              {
                goto LABEL_102;
              }
            }

            v39 = 0;
            while (1)
            {
              v40 = BOMFileRead(v15, buf, v38 - v39);
              if ((v40 & 0x8000000000000000) != 0)
              {
                break;
              }

              v39 += v40;
              if (!BOMFileEndOfCompressionStream(v15))
              {
                v38 = *(v20 + 8);
                if (v39 != v38)
                {
                  continue;
                }
              }

              goto LABEL_73;
            }

LABEL_116:
            v58 = __error();
LABEL_117:
            v59 = *(v36 + 72);
            if (v59)
            {
              v60 = *v58;
              v61 = v36 + 248;
              v62 = v36;
              goto LABEL_122;
            }

LABEL_124:
            v64 = 1;
            goto LABEL_126;
          }

          break;
        case 4:
          v44 = *(a1 + 4);
          if (v44 == -1)
          {
            v36 = v70;
            if (!BOMFileEndOfCompressionStream(v15))
            {
              while (1)
              {
                v49 = BOMFileRead(v15, buf, v67);
                if ((v49 & 0x8000000000000000) != 0)
                {
                  goto LABEL_116;
                }

                a6 += v49;
                if (BOMFileEndOfCompressionStream(v15))
                {
                  goto LABEL_101;
                }
              }
            }
          }

          else if (v44 > a6)
          {
            if (BOMFileSeek() < 0)
            {
              v58 = __error();
              v36 = v70;
              goto LABEL_117;
            }

            a6 = *(a1 + 4);
          }

          break;
        case 3:
          v23 = *(a1 + 4);
          v24 = v23 - a6;
          if (v23 - a6 >= v67)
          {
            v24 = v67;
          }

          if (v23 == -1)
          {
            v25 = v67;
          }

          else
          {
            v25 = v24;
          }

          v14 = v19;
          if (v25)
          {
            while (1)
            {
              if ((*(v70 + 12776) || *(v70 + 12796)) && *(v70 + 12769) && BOMFileEndOfCompressionStream(v15))
              {
                goto LABEL_101;
              }

              v26 = BOMFileRead(v15, buf, v25);
              if (v26 < 0)
              {
                break;
              }

              v27 = v26;
              v28 = *(a1 + 4);
              if (v25 != v26 && v28 != -1)
              {
                break;
              }

              a6 += v26;
              if (!v26 && v28 == -1)
              {
                goto LABEL_101;
              }

              if (BOMFileWrite(v21, buf, v26) != v26)
              {
                v56 = __error();
                v51 = v70;
                v52 = *(v70 + 72);
                if (!v52)
                {
                  goto LABEL_110;
                }

                v53 = *v56;
                v55 = v70;
                v54 = v66;
LABEL_108:
                v57 = v52(v55, v54, v53);
                if (v57 == 1)
                {
                  v57 = 0;
                }

                else if (!v57)
                {
                  goto LABEL_110;
                }

                goto LABEL_112;
              }

              if (v68)
              {
                crc = crc32(crc, buf, v27);
              }

              if (v69)
              {
                CNCRCUpdate();
              }

              v18 += v27;
              v29 = *(v70 + 104);
              if (v29)
              {
                v29(v70, *(a1 + 3), v18);
                if (*(v70 + 168))
                {
                  goto LABEL_133;
                }
              }

              v19 = 0;
              v14 = 0;
              v30 = *(a1 + 4);
              v31 = v30 - a6;
              if (v30 - a6 >= v67)
              {
                v31 = v67;
              }

              if (v30 == -1)
              {
                v25 = v67;
              }

              else
              {
                v25 = v31;
              }

              if (!v25)
              {
                goto LABEL_102;
              }
            }

            v50 = __error();
            v51 = v70;
            v52 = *(v70 + 72);
            if (v52)
            {
              v53 = *v50;
              v54 = v70 + 248;
              v55 = v70;
              goto LABEL_108;
            }

LABEL_110:
            v57 = 1;
LABEL_112:
            if (*(v51 + 168))
            {
              v14 = 2;
            }

            else
            {
              v14 = v57;
            }

            goto LABEL_102;
          }

          goto LABEL_102;
      }

LABEL_101:
      v14 = v19;
      goto LABEL_102;
    }

    if (!v22)
    {
      break;
    }

    if (v22 != 1)
    {
      goto LABEL_101;
    }

    v32 = BOMFileWrite(v21, *(v20 + 32), *(v20 + 8));
    if (v32 != *(v20 + 8))
    {
      goto LABEL_119;
    }

    v33 = v32;
    if (v68)
    {
      crc = crc32(crc, *(v20 + 32), v32);
      v33 = *(v20 + 8);
    }

    if (v69)
    {
      v34 = *(v20 + 32);
      CNCRCUpdate();
      v33 = *(v20 + 8);
    }

    v18 += v33;
    v35 = *(v70 + 104);
    if (v35)
    {
      v35(v70, *(a1 + 3), v18);
      if (*(v70 + 168))
      {
LABEL_133:
        v14 = 2;
        goto LABEL_129;
      }
    }

LABEL_97:
    v14 = 0;
LABEL_102:
    ++v17;
    v19 = v14;
    if (v17 >= a1[12])
    {
      goto LABEL_129;
    }
  }

  if (*(v20 + 16) < 1)
  {
LABEL_95:
    v48 = *(v70 + 104);
    if (v48)
    {
      v48(v70, *(a1 + 3), v18);
      if (*(v70 + 168))
      {
        goto LABEL_133;
      }
    }

    goto LABEL_97;
  }

  v45 = 0;
  v46 = *(v20 + 8);
  while (1)
  {
    v47 = BOMFileWrite(v21, v72, v46);
    if (v47 != *(v20 + 8))
    {
      break;
    }

    v46 = v47;
    if (v68)
    {
      crc = crc32(crc, v72, v47);
      v46 = *(v20 + 8);
    }

    if (v69)
    {
      CNCRCUpdate();
      v46 = *(v20 + 8);
    }

    v18 += v46;
    if (++v45 >= *(v20 + 16))
    {
      goto LABEL_95;
    }
  }

LABEL_119:
  v63 = __error();
  v36 = v70;
LABEL_120:
  v59 = *(v36 + 72);
  if (!v59)
  {
    goto LABEL_124;
  }

  v60 = *v63;
  v62 = v36;
  v61 = v66;
LABEL_122:
  v64 = v59(v62, v61, v60);
  if (v64 != 1)
  {
    if (v64)
    {
      goto LABEL_126;
    }

    goto LABEL_124;
  }

  v64 = 0;
LABEL_126:
  if (*(v36 + 168))
  {
    v14 = 2;
  }

  else
  {
    v14 = v64;
  }

LABEL_129:
  free(v72);
  v8 = v68;
  LODWORD(v11) = crc;
LABEL_130:
  if (v8)
  {
    *v8 = v11;
  }

  return v14;
}

uint64_t _checkCopyFileError(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
LABEL_4:
    LODWORD(result) = 1;
    goto LABEL_6;
  }

  LODWORD(result) = v2(a1);
  if (result != 1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  LODWORD(result) = 0;
LABEL_6:
  if (*(a1 + 168))
  {
    return 2;
  }

  else
  {
    return result;
  }
}

uint64_t _checkCopyFileConflictError(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

BOOL _ignore_readdir_entry(uint64_t a1)
{
  v2 = *(a1 + 18);
  if (v2 == 2)
  {
    if (*(a1 + 21) != 46)
    {
      return 0;
    }

    v3 = *(a1 + 22);
  }

  else
  {
    if (v2 != 1)
    {
      return v2 >= 4 && (!strncmp(".nfs", (a1 + 21), 4uLL) || v2 >= 0xB && !strncmp(".afpDeleted", (a1 + 21), 0xBuLL));
    }

    v3 = *(a1 + 21);
  }

  return v3 == 46;
}

BOOL _sanitizePath(char *cStr, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a2 + 1;
  do
  {
    v8 = cStr[v3];
    v4 |= cStr[v3] < 0;
    if (v8 == 47)
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }

    if (v8 == 47)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5;
    }

    if (!cStr[v3])
    {
      v9 = 0;
      v10 = 1;
    }

    if (v8 == 47)
    {
      v11 = 0;
    }

    else
    {
      v11 = 3;
    }

    if (v6 != 2)
    {
      v9 = v11;
      v10 = v5;
    }

    if (v8 == 47)
    {
      v12 = 0;
    }

    else
    {
      v12 = 3;
    }

    if (v8 == 46)
    {
      v12 = 1;
    }

    if (v8 == 47)
    {
      v13 = 0;
    }

    else
    {
      v13 = 3;
    }

    if (v8 == 46)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13;
    }

    if (!v6)
    {
      v14 = v12;
    }

    v15 = v6 <= 1;
    if (v6 <= 1)
    {
      v6 = v14;
    }

    else
    {
      v6 = v9;
    }

    if (!v15)
    {
      v5 = v10;
    }

    ++v3;
  }

  while (v7 != v3);
  if (((v4 | v5) & 1) == 0)
  {
    return 0;
  }

  v16 = 134217984;
  v17 = *MEMORY[0x277CBECE8];
  v18 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  if (v18 || (SystemEncoding = CFStringGetSystemEncoding(), (v18 = CFStringCreateWithCString(v17, cStr, SystemEncoding)) != 0))
  {
    v20 = v18;
    if (v5)
    {
LABEL_38:
      v34 = v16;
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v17, v20, @"/");
      alloc = v17;
      MutableCopy = CFArrayCreateMutableCopy(v17, 0, ArrayBySeparatingStrings);
      CFRelease(v20);
      CFRelease(ArrayBySeparatingStrings);
      Count = CFArrayGetCount(MutableCopy);
      if (Count >= 1)
      {
        v24 = Count;
        for (i = 0; i != v24; ++i)
        {
          v26 = CFArrayGetCount(MutableCopy);
          if (v26 >= 1)
          {
            v27 = v26;
            v28 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v28);
              if (CFEqual(ValueAtIndex, @".."))
              {
                break;
              }

              if (v28 && (CFEqual(ValueAtIndex, @".") || CFEqual(ValueAtIndex, &stru_2853D77A0)))
              {
                goto LABEL_51;
              }

              if (v27 == ++v28)
              {
                goto LABEL_52;
              }
            }

            CFArrayRemoveValueAtIndex(MutableCopy, v28);
            if (v27 != 1)
            {
              if (v28)
              {
                --v28;
LABEL_51:
                CFArrayRemoveValueAtIndex(MutableCopy, v28);
                continue;
              }
            }
          }

LABEL_52:
          ;
        }
      }

      v20 = CFStringCreateByCombiningStrings(alloc, MutableCopy, @"/");
      CFRelease(MutableCopy);
      v16 = v34;
    }

LABEL_54:
    CString = CFStringGetCString(v20, cStr, 1024, v16);
    CFRelease(v20);
    return CString == 0;
  }

  v32 = CFStringCreateWithCString(v17, cStr, 0x600u);
  if (v32)
  {
    v20 = v32;
    v16 = 3071;
    if (v5)
    {
      goto LABEL_38;
    }

    goto LABEL_54;
  }

  return 1;
}

char *_parse_arch_list(uint64_t a1, CFArrayRef theArray, const __CFDictionary *a3, _DWORD *a4, void **a5)
{
  v62 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(theArray);
  v11 = Count;
  if (!Count)
  {
    v49 = *(a1 + 56);
    if (v49)
    {
      strcpy(__str, "archs array is empty");
      v49(a1, __str);
    }

    goto LABEL_54;
  }

  *a4 = Count;
  v12 = (Count << 32) + 0x100000000;
  v13 = BOM_malloczero(v12 >> 27);
  if (!v13)
  {
    goto LABEL_55;
  }

  v14 = BOM_malloczero(v12 >> 29);
  *a5 = v14;
  if (!v14)
  {
    free(v13);
    goto LABEL_54;
  }

  if (v11 < 1)
  {
    goto LABEL_55;
  }

  v56 = a1;
  v15 = 0;
  v59 = v11 & 0x7FFFFFFF;
  v60 = a5;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
    if (!ValueAtIndex || (v17 = ValueAtIndex, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v17)))
    {
      v52 = v56;
      if (*(v56 + 56))
      {
        snprintf(__str, 0x800uLL, "can't read arch #%d from archs list");
LABEL_65:
        (*(v52 + 56))(v52, __str);
      }

LABEL_66:
      free(*v60);
      free(v13);
      v13 = 0;
      *a4 = 0;
      goto LABEL_55;
    }

    UTF8String = BOMCFStringGetUTF8String(v17);
    if (!UTF8String)
    {
      v52 = v56;
      if (*(v56 + 56))
      {
        snprintf(__str, 0x800uLL, "can't convert arch #%d from archs listinto UTF8 encoded C string");
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    v20 = UTF8String;
    v21 = BOMGetArchInfoFromName(UTF8String);
    if (!v21 || (v22 = *(v21 + 3), (v23 = BOMGetArchInfoFromCpuType(*(v21 + 2), -1)) == 0))
    {
      if (*(v56 + 56))
      {
        snprintf(__str, 0x800uLL, "can't get arch info for '%s'", v20);
        (*(v56 + 56))(v56, __str);
      }

      free(v20);
      goto LABEL_66;
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    v26 = v25 == 16777228 && v22 == 0;
    if (v26)
    {
      v27 = 16777228;
    }

    else
    {
      v27 = *(v23 + 2);
    }

    v28 = !v26;
    if (v26)
    {
      v29 = v22;
    }

    else
    {
      v29 = -1;
    }

    if (v25 == 16777223 && v22 == 3)
    {
      v27 = 16777223;
      v28 = 0;
      v29 = v22;
    }

    v31 = v22 == v24;
    v32 = v22 == v24 ? v27 : *(v23 + 2);
    v33 = v31 ? v28 : 0;
    v34 = v31 ? v29 : v22;
    v35 = &v13[32 * v15];
    *v35 = v32;
    v35[4] = v33;
    *(v35 + 2) = v34;
    *(v35 + 2) = 0;
    *(v35 + 6) = 0;
    *(*v60 + v15) = v20;
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, v17);
      if (Value)
      {
        v37 = Value;
        v38 = CFArrayGetTypeID();
        if (v38 == CFGetTypeID(v37))
        {
          v39 = CFArrayGetCount(v37);
          v40 = v39;
          if (v39)
          {
            break;
          }
        }
      }
    }

LABEL_49:
    if (++v15 == v59)
    {
      goto LABEL_55;
    }
  }

  v58 = BOM_malloczero((4 * v39 + 4) & 0x3FFFFFFFCLL);
  if (!v58)
  {
LABEL_54:
    v13 = 0;
    goto LABEL_55;
  }

  v54 = v40;
  v55 = a4;
  v41 = 0;
  v57 = 4 * v40;
  while (1)
  {
    v42 = CFArrayGetValueAtIndex(v37, v15);
    if (!v42 || (v43 = v42, v44 = CFStringGetTypeID(), v44 != CFGetTypeID(v43)))
    {
      v53 = v56;
      if (!*(v56 + 56))
      {
        goto LABEL_73;
      }

      snprintf(__str, 0x800uLL, "can't read fallback arch #%d from fallback archs list");
LABEL_69:
      (*(v53 + 56))(v53, __str);
      goto LABEL_73;
    }

    v45 = BOMCFStringGetUTF8String(v43);
    if (!v45)
    {
      v53 = v56;
      if (!*(v56 + 56))
      {
        goto LABEL_73;
      }

      snprintf(__str, 0x800uLL, "can't convert fallback arch #%d from fallback archs listinto UTF8 encoded C string");
      goto LABEL_69;
    }

    v46 = v45;
    v47 = BOMGetArchInfoFromName(v45);
    if (!v47)
    {
      break;
    }

    v48 = v47;
    free(v46);
    *&v58[v41] = *(v48 + 3);
    v41 += 4;
    if (v57 == v41)
    {
      *(v35 + 2) = v58;
      a4 = v55;
      *(v35 + 6) = v54;
      goto LABEL_49;
    }
  }

  if (*(v56 + 56))
  {
    snprintf(__str, 0x800uLL, "can't get arch info for '%s'", v46);
    (*(v56 + 56))(v56, __str);
  }

  free(v46);
LABEL_73:
  free(v58);
  free(v20);
  free(*v60);
  free(v13);
  v13 = 0;
  *v55 = 0;
LABEL_55:
  v50 = *MEMORY[0x277D85DE8];
  return v13;
}

_DWORD *_BOMFreeListAllocate(const __CFDictionary *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1 && (Value = CFDictionaryGetValue(a1, @"Implementation")) != 0)
  {
    v2 = Value;
    v3 = CFGetTypeID(Value);
    if (v3 == CFStringGetTypeID())
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"dense";
  }

  if (CFEqual(v5, @"dense"))
  {
    v6 = *MEMORY[0x277D85DE8];

    return _BOMFreeListAllocateDense();
  }

  else
  {
    if (!CFEqual(v5, @"dense+trace"))
    {
      _BOMFreeListAllocate_cold_4();
    }

    v8 = BOM_malloc(0x48uLL);
    if (!v8)
    {
      _BOMFreeListAllocate_cold_3();
    }

    v9 = v8;
    v8[2] = _densetrace_initialize;
    v8[3] = _densetrace_serialize;
    v8[4] = _densetrace_deallocate;
    v8[7] = _densetrace_clear;
    v8[5] = _densetrace_addFreeRange;
    v8[6] = _densetrace_allocateRange;
    v8[8] = _densetrace_print;
    v10 = getenv("TMPDIR");
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = "/tmp";
    }

    v12 = getpid();
    v13 = _BOMFreeListAllocateDenseTrace_objnumber++;
    snprintf(__str, 0x400uLL, "%s/bomfreelist.trace.%d.%d.txt", v11, v12, v13);
    v14 = fopen(__str, "w");
    if (!v14)
    {
      _BOMFreeListAllocate_cold_2();
    }

    v15 = v14;
    v16 = BOM_malloc(0x18uLL);
    if (!v16)
    {
      _BOMFreeListAllocate_cold_1();
    }

    v17 = v16;
    *v16 = _BOMFreeListAllocateDense();
    *(v17 + 2) = 1;
    v17[2] = v15;
    *v9 = v17;
    *(v9 + 2) = 0;
    v18 = *MEMORY[0x277D85DE8];
    return v9;
  }
}

_DWORD *_BOMFreeListAllocateDense()
{
  v0 = BOM_malloc(0x48uLL);
  v1 = v0;
  if (v0)
  {
    v0[2] = _dense_initialize;
    v0[3] = _dense_serialize;
    v0[4] = _dense_deallocate;
    v0[7] = _dense_clear;
    v0[5] = _dense_addFreeRange;
    v0[6] = _dense_allocateRange;
    v0[8] = _dense_print;
    v2 = BOM_malloc(0x18uLL);
    if (v2)
    {
      v3 = v2;
      v4 = BOM_calloc(0x20uLL, 8uLL);
      *v3 = v4;
      if (v4)
      {
        v3[1] = 0;
        *(v3 + 4) = 32;
        *v1 = v3;
        v1[2] = 0;
        return v1;
      }

      free(v1);
      v5 = v3;
    }

    else
    {
      v5 = v1;
    }

    free(v5);
    return 0;
  }

  return v1;
}

uint64_t _dense_initialize(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  if ((a3 & 7) == 0 && (a3 >> 3) >= 1)
  {
    v5 = result;
    v6 = (a3 >> 3) & 0x7FFFFFFF;
    v7 = (a2 + 4);
    do
    {
      v8 = *(v7 - 1);
      v9 = bswap32(v8);
      v10 = bswap32(*v7);
      if (a4)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }

      if (a4)
      {
        v12 = v10;
      }

      else
      {
        v12 = *v7;
      }

      result = (*(v5 + 40))(v5, v11, v12);
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

char *_dense_serialize(uint64_t **a1, int a2, size_t *a3)
{
  v4 = *a1;
  v5 = 8 * *(a1 + 2);
  *a3 = v5;
  result = BOM_malloc(v5);
  if (result)
  {
    v7 = *(v4 + 4);
    if (v7 < 1)
    {
      v14 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *v4;
      v11 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 0), 0x1FuLL));
      do
      {
        v12 = *(v10 + 8 * v8);
        if (v12)
        {
          v13 = &result[8 * v9];
          do
          {
            *v13++ = vbsl_s8(v11, v12[1], vrev32_s8(v12[1]));
            v12 = *v12;
            ++v9;
          }

          while (v12);
          v7 = *(v4 + 4);
        }

        ++v8;
      }

      while (v8 < v7);
      v14 = v9;
    }

    v15 = v4[1];
    if (v15)
    {
      v16 = &result[8 * v14];
      v17 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 0), 0x1FuLL));
      do
      {
        *v16++ = vbsl_s8(v17, v15[1], vrev32_s8(v15[1]));
        v15 = *v15;
      }

      while (v15);
    }
  }

  return result;
}

void _dense_deallocate(uint64_t a1)
{
  v2 = *a1;
  (*(a1 + 56))();
  free(*v2);
  free(v2);
  *a1 = 0;
}

void *_dense_clear(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*v1 + 8 * i);
      *(*v1 + 8 * i) = 0;
      if (v4)
      {
        do
        {
          v5 = *v4;
          free(v4);
          v4 = v5;
        }

        while (v5);
        v2 = *(v1 + 16);
      }
    }
  }

  result = *(v1 + 8);
  *(v1 + 8) = 0;
  if (result)
  {
    do
    {
      v7 = *result;
      free(result);
      result = v7;
    }

    while (v7);
  }

  return result;
}

_DWORD *_dense_addFreeRange(_DWORD *result, int a2, unint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = *result;
    if (a3 < 0x10000)
    {
      v8 = *(v6 + 16);
      if (v8 <= a3)
      {
        v9 = a3 + 1;
        v10 = BOM_realloc(*v6, (8 * (a3 + 1)));
        *v6 = v10;
        if (v8 <= a3)
        {
          bzero(&v10[8 * *(v6 + 16)], 8 * (v9 - v8));
        }

        *(v6 + 16) = v9;
        v6 = *v5;
      }

      v11 = *(*v6 + 8 * a3);
      result = BOM_malloc(0x10uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v11;
      *(*v6 + 8 * a3) = result;
    }

    else
    {
      v7 = *(v6 + 8);
      result = BOM_malloc(0x10uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v7;
      *(v6 + 8) = result;
    }

    ++v5[2];
  }

  return result;
}

uint64_t _dense_allocateRange(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5 > a2)
  {
    v6 = *(*v4 + 8 * a2);
    if (v6)
    {
      v7 = v6[2];
      v8 = *v6;
      free(v6);
      *(*v4 + 8 * a2) = v8;
      --*(a1 + 8);
      return v7;
    }
  }

  LODWORD(v9) = 0;
  v10 = a2 + 1;
  while (1)
  {
    v11 = v10 + v9;
    if (v10 + v9 >= v5)
    {
      break;
    }

    v12 = *(*v4 + 8 * v11);
    v9 = (v9 + 1);
    if (v12)
    {
      v7 = v12[2];
      v13 = *v12;
      free(v12);
      *(*v4 + 8 * v11) = v13;
      goto LABEL_19;
    }
  }

  v16 = v4[1];
  v15 = v4 + 1;
  v14 = v16;
  if (!v16)
  {
    return 0;
  }

  v17 = *(v14 + 3);
  if (v17 < a2)
  {
    while (1)
    {
      v18 = v14;
      v14 = *v14;
      if (!v14)
      {
        return 0;
      }

      v17 = *(v14 + 3);
      if (v17 >= a2)
      {
        goto LABEL_15;
      }
    }
  }

  v18 = 0;
LABEL_15:
  v19 = *v14;
  v7 = *(v14 + 2);
  v9 = (v17 - a2);
  free(v14);
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  *v20 = v19;
LABEL_19:
  --*(a1 + 8);
  (*(a1 + 40))(a1, (v7 + a2), v9);
  return v7;
}

uint64_t _dense_print(uint64_t result, FILE *__stream, int a3)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*v5 + 8 * i);
      if (v8)
      {
        v9 = 0;
        do
        {
          ++v9;
          v8 = *v8;
        }

        while (v8);
        if (v9 == 1)
        {
          v10 = "y";
        }

        else
        {
          v10 = "ies";
        }

        result = fprintf(__stream, "Size %d: %d entr%s\n", i, v9, v10);
        v6 = *(v5 + 16);
      }
    }
  }

  v11 = *(v5 + 8);
  if (v11)
  {
    if (a3)
    {
      fwrite("Large sizes:\n\t", 0xEuLL, 1uLL, __stream);
    }

    v12 = 1;
    if (!a3)
    {
      goto LABEL_17;
    }

    while (1)
    {
      fprintf(__stream, "%d ", *(v11 + 3));
      v11 = *v11;
      if (!v11)
      {
        break;
      }

      while (1)
      {
        ++v12;
        if (a3)
        {
          break;
        }

LABEL_17:
        v11 = *v11;
        if (!v11)
        {
          v13 = "ies";
          if (v12 == 1)
          {
            v13 = "y";
          }

          return fprintf(__stream, "Large sizes: %d entr%s\n", v12, v13);
        }
      }
    }

    return fputc(10, __stream);
  }

  return result;
}

uint64_t _densetrace_initialize(_DWORD *a1)
{
  v2 = *a1;
  result = (*(**a1 + 16))();
  a1[2] = *(*v2 + 8);
  return result;
}

uint64_t _densetrace_serialize(_DWORD *a1)
{
  v2 = *a1;
  result = (*(**a1 + 24))();
  a1[2] = *(*v2 + 8);
  return result;
}

void _densetrace_deallocate(uint64_t *a1)
{
  v2 = *a1;
  (*(**a1 + 32))();
  free(*v2);
  fclose(*(v2 + 16));
  free(v2);
  *a1 = 0;
}

uint64_t _densetrace_clear(_DWORD *a1)
{
  v2 = *a1;
  result = (*(**a1 + 56))();
  a1[2] = *(*v2 + 8);
  return result;
}

uint64_t _densetrace_addFreeRange(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 8))
  {
    fprintf(v4[2], "Add\t\t%#zx\n", a3);
  }

  result = (*&(*v4)->_lbfsize)();
  a1[2] = (*v4)->_r;
  return result;
}

uint64_t _densetrace_allocateRange(_DWORD *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*a1 + 8))
  {
    fprintf(v3[2], "Remove\t\t%#zx\n", a2);
  }

  result = ((*v3)->_cookie)();
  a1[2] = (*v3)->_r;
  return result;
}

uint64_t _densetrace_print(_DWORD *a1)
{
  v2 = *a1;
  result = (*(**a1 + 64))();
  a1[2] = *(*v2 + 8);
  return result;
}

void **BOMFilesystemInfoCreate(int a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 100;
  *v15 = 0x200000001;
  if (sysctl(v15, 2u, __str, &v14, 0, 0))
  {
    fwrite("Could not determine kernel version\n", 0x23uLL, 1uLL, *MEMORY[0x277D85DF8]);
LABEL_3:
    v2 = -1;
    goto LABEL_10;
  }

  __endptr = 0;
  v3 = strtol(__str, &__endptr, 0);
  v4 = *__endptr;
  if (v4 != 46 && v4 != 0)
  {
    goto LABEL_3;
  }

  v2 = v3;
LABEL_10:
  v6 = BOM_calloc(0x328uLL, 1uLL);
  v7 = v6;
  if (v6)
  {
    if (v2 == -1)
    {
      v8 = 7;
    }

    else
    {
      v8 = v2;
    }

    *(v6 + 2) = v8;
    *(v6 + 3) = a1;
    if (pthread_mutex_init((v6 + 16), 0))
    {
      free(v7);
      v7 = 0;
    }

    else
    {
      for (i = 0; i != 91; i += 13)
      {
        v10 = &v7[i];
        v7[i + 12] = 0;
        __strlcpy_chk();
        *(v10 + 13) = 0u;
        *(v10 + 15) = 0u;
        *(v10 + 17) = 0u;
        *(v10 + 19) = 0u;
        *(v10 + 21) = 0u;
      }

      *v7 = BomSys_default();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

void BOMFilesystemInfoDestroy(uint64_t a1)
{
  pthread_mutex_destroy((a1 + 16));

  free(a1);
}

uint64_t BOMFilesystemInfoQuery(uint64_t a1, _BYTE *a2, _DWORD *a3, int a4, int a5)
{
  v51 = *MEMORY[0x277D85DE8];
  if (a3 == &DEVICE_ARCHIVE)
  {
    v10 = &archive;
  }

  else if (a3 && (v8 = a1 + 104 * (*a3 % 7), *(v8 + 96)) && (v9 = v8 + 80, *(v9 + 20) == *a3))
  {
    v10 = (v9 + 24);
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    memset(v22, 0, sizeof(v22));
    v21 = 0;
    if (!a2 || _recursive_statfs(a2, v22, &v21, *a1))
    {
      goto LABEL_43;
    }

    if (DWORD2(v23) == 7562856)
    {
      v10 = &hfs7;
    }

    else if (DWORD2(v23) == 1718642273 && WORD6(v23) == 115)
    {
      v10 = &afp;
    }

    else if ((BYTE1(v23) & 0x10) != 0)
    {
      v10 = &flatlocal;
    }

    else
    {
      v10 = &flatnetwork;
    }

    v12 = v21;
    v13 = a1 + 104 * (v21 % 7);
    *(v13 + 96) = 1;
    *(v13 + 100) = v12;
    __strlcpy_chk();
    *(v13 + 120) = v10[1];
    *(v13 + 136) = v10[2];
    *(v13 + 152) = v10[3];
    *(v13 + 168) = v10[4];
    *(v13 + 104) = *v10;
  }

  result = 0xFFFFFFFFLL;
  if (a4 <= 1819173228)
  {
    if (a4 == 1633905696)
    {
      v15 = v10 + 3;
      v16 = 60;
      v17 = 56;
      v18 = 52;
    }

    else
    {
      if (a4 != 1718511215)
      {
        goto LABEL_44;
      }

      v15 = v10 + 1;
      v16 = 28;
      v17 = 24;
      v18 = 20;
    }
  }

  else
  {
    switch(a4)
    {
      case 1819173229:
        v15 = v10 + 4;
        v16 = 76;
        v17 = 72;
        v18 = 68;
        break;
      case 1920168547:
        v16 = 12;
        v17 = 8;
        v18 = 4;
        v15 = v10;
        break;
      case 2020897906:
        v15 = v10 + 2;
        v16 = 44;
        v17 = 40;
        v18 = 36;
        break;
      default:
        goto LABEL_44;
    }
  }

  if (*v15 <= 1u)
  {
    v19 = 1;
  }

  else
  {
    v19 = *v15;
  }

  if (a4 != 1819173229 && *(a1 + 12) != 0)
  {
    result = v19;
  }

  else
  {
    result = *v15;
  }

  if (a5 > 1919905651)
  {
    if (a5 == 1919905652)
    {
      result = *(v10 + v16);
      goto LABEL_44;
    }

    if (a5 != 1936749172)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (a5 != 1634756896)
    {
      if (a5 == 1853126245)
      {
        result = *(v10 + v18);
        goto LABEL_44;
      }

LABEL_43:
      result = 0xFFFFFFFFLL;
      goto LABEL_44;
    }

    if (a4 != 1819173229 && *(a1 + 12) != 0)
    {
      result = 1633968748;
    }

    else
    {
      result = *(v10 + v17);
    }
  }

LABEL_44:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _recursive_statfs(_BYTE *a1, void *a2, _DWORD *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(__src, 0, 512);
  bzero(v16, 0x3FEuLL);
  *__s = 12078;
  if (*a1 == 47)
  {
    __strlcpy_chk();
  }

  else
  {
    __strlcat_chk();
  }

  v8 = (*(a4 + 104))(*(a4 + 8), __s, __src);
  if (v8)
  {
    v9 = v8;
    if (*__error() != 2)
    {
      goto LABEL_15;
    }

    v10 = strrchr(__s, 47);
    if (!v10)
    {
      goto LABEL_15;
    }

    while (1)
    {
      if (v10 == __s)
      {
        __strlcpy_chk();
      }

      else
      {
        *v10 = 0;
      }

      v11 = (*(a4 + 104))(*(a4 + 8), __s, __src);
      if (!v11)
      {
        break;
      }

      v9 = v11;
      v10 = strrchr(__s, 47);
      if (!v10)
      {
        goto LABEL_15;
      }
    }
  }

  memset(v14, 0, sizeof(v14));
  memcpy(a2, __src, 0x878uLL);
  v9 = (*(a4 + 80))(*(a4 + 8), __s, v14);
  if (!v9)
  {
    *a3 = v14[0];
  }

LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t BOMArchFlagForHeader(int *a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2 >= 8)
  {
    v4 = *a1;
    v5 = *a1 == -889275714 || v4 == -1095041334;
    if (!v5 || ((v6 = bswap32(a1[1]), v8 = v6 > 0x2A, v7 = 20 * v6 + 8, !v8) ? (v8 = v7 > a2) : (v8 = 1), v8))
    {
      if (a2 >= 0x1C)
      {
        result = 1;
        if (v4 != -822415874 && v4 != -17958194)
        {
          v10 = v4 == -17958193 || v4 == -805638658;
          return a2 >= 0x20 && v10;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t BOMArchFlagForFileWithSys(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v2 = BomSys_default();
  }

  v4 = (*(v2 + 2))(*(v2 + 1), a1, 0, 0);
  if (v4 == -1 || (v5 = v4, v6 = (*(v2 + 6))(*(v2 + 1), v4, v9, 32), (*(v2 + 4))(*(v2 + 1), v5), v6 == -1))
  {
    result = 0;
  }

  else
  {
    result = BOMArchFlagForHeader(v9, v6);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _fat_header_big_to_host(unsigned int *a1, unint64_t a2)
{
  if (a2 < 8)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = bswap32(v2);
  *a1 = bswap32(*a1);
  a1[1] = v3;
  if (20 * v3 + 8 > a2)
  {
    return 0;
  }

  if (v2)
  {
    v5 = a1 + 6;
    do
    {
      *(v5 - 1) = vrev32q_s8(*(v5 - 1));
      *v5 = bswap32(*v5);
      v5 += 5;
      --v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t _fat_header_host_to_big(int8x8_t *a1, unint64_t a2)
{
  if (a2 < 8)
  {
    return 0;
  }

  v2 = HIDWORD(*a1);
  *a1 = vrev32_s8(*a1);
  if (20 * v2 + 8 > a2)
  {
    return 0;
  }

  if (v2)
  {
    v4 = &a1[3];
    do
    {
      *(v4 - 1) = vrev32q_s8(*(v4 - 1));
      *v4 = bswap32(*v4);
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

char **BOMGetArchInfoFromName(char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  v2 = &BOMArchInfoTable;
  v3 = "hppa";
  while (strcmp(v3, __s2))
  {
    v4 = v2[4];
    v2 += 4;
    v3 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return v2;
}