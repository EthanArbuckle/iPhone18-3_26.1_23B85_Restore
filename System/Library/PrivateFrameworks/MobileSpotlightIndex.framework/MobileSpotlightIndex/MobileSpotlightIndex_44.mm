void rehashPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  Size = directoryStorePageGetSize(a2);
  v29 = 0;
  if (*(a2 + 6) != a4)
  {
    v23 = __si_assert_copy_extra(0);
    v24 = v23;
    v25 = "";
    if (v23)
    {
      v25 = v23;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 459, "getNum16(page->depth)==(unsigned)depth", v25);
    free(v24);
    if (__valid_fs(-1))
    {
      v26 = 2989;
    }

    else
    {
      v26 = 3072;
    }

    *v26 = -559038737;
    abort();
  }

  v9 = Size;
  v10 = a2 + 8;
  bzero((a2 + 8 + 16 * a3), 16 * (Size - a3));
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v28[-2 * a3 - 1];
  bzero(v12, 16 * a3);
  if (a3)
  {
    v13 = 0;
    v14 = 8;
    do
    {
      v15 = a2 + v14;
      v16 = *(a2 + v14);
      if (v16)
      {
        if (v16 != 1)
        {
          *&v12[2 * v13++] = *v15;
        }

        *v15 = 0;
        *(v15 + 8) = 0;
      }

      v14 += 16;
      --a3;
    }

    while (a3);
    for (*a2 = 0; v13; --v13)
    {
      v17 = *v12;
      v28[0] = 0;
      v18 = *(a2 + 2);
      v27 = v17;
      v19 = v17;
      Hash = getHash(v17, v9, v18, a4, 10, v28);
      v29 = Hash;
      if (*(v10 + 16 * Hash))
      {
        directoryStorePageFindItemOffset(*(a1 + 216), a2, v19, &v29, a4);
        v21 = v29;
        if (*(v10 + 16 * v29))
        {
          shiftEntries(a2, v29, v9);
          v21 = v29;
        }
      }

      else
      {
        v21 = Hash;
      }

      *(v10 + 16 * v21) = v27;
      *a2 += 16;
      v12 += 2;
    }
  }

  else
  {
    *a2 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void insertDirectoryFT(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, unint64_t a5, uint64_t a6, unint64_t a7, _BYTE *a8, uint64_t a9)
{
  v54 = a4;
  if (a6 <= 1)
  {
    v33 = __si_assert_copy_extra(0);
LABEL_41:
    __message_assert("%s:%u: failed assertion '%s' %s ");
LABEL_42:
    free(v33);
    if (__valid_fs(-1))
    {
      v42 = 2989;
    }

    else
    {
      v42 = 3072;
    }

    *v42 = -559038737;
    abort();
  }

  v53 = 0;
  v16 = *(a3 + 1);
  if (v16)
  {
    *a3 = &_directoryStoreGetPageInner(a2, v16, &v53)[8 * *(a3 + 4) + 4];
  }

  v45 = *a3;
  *&v46 = *(a3 + 2);
  v17 = directoryStoreEnsurePage(a2, &v45, 0, 1, a8, &v53, 0, a9);
  if (a6 != a5)
  {
    v34 = __si_assert_copy_extra(0);
    v35 = v34;
    v36 = "";
    if (v34)
    {
      v36 = v34;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1248, "getStoreOID(newDirectory.fileId)==fileid", v36);
LABEL_36:
    free(v35);
    if (__valid_fs(-1))
    {
      v41 = 2989;
    }

    else
    {
      v41 = 3072;
    }

    *v41 = -559038737;
    abort();
  }

  v18 = v17;
  if (*a8 != 1)
  {
    v22 = v17;
    if (v17 > 0x3FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    if (!directoryStoreTreeFindItemOffset(a2, v17, a5, &v45, &v54, 0, 1))
    {
      PageInner = _directoryStoreGetPageInner(a2, *(&v51 + 1), &v53);
      if (v53)
      {
        v21 = PageInner;
        v22 = *(&v51 + 1);
        goto LABEL_16;
      }
    }

    goto LABEL_40;
  }

  if (v17 < 0x4000000000000000)
  {
    ItemOffset = directoryStoreTreeFindItemOffset(a2, v17, a5, a9, &v54, 0, 1);
    v20 = _directoryStoreGetPageInner(a2, *(a9 + 104), &v53);
    if (v53)
    {
      v21 = v20;
      v22 = *(a9 + 104);
      goto LABEL_15;
    }

LABEL_40:
    v33 = __si_assert_copy_extra(0);
    goto LABEL_41;
  }

  v24 = _directoryStoreGetPageInner(a2, v17, &v53);
  if (!v53)
  {
    goto LABEL_40;
  }

  v21 = v24;
  ItemOffset = directoryStorePageFindItemOffset(*(a2 + 216), v24, a5, &v54, 0);
  v22 = v18;
LABEL_15:
  if (ItemOffset)
  {
    v39 = __si_assert_copy_extra(0);
    v35 = v39;
    v40 = "";
    if (v39)
    {
      v40 = v39;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1268, "elem==0", v40);
    goto LABEL_36;
  }

LABEL_16:
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_17:
  v25 = _directoryStoreGetPageInner(a2, v18, &v53);
  if (!v53)
  {
    v37 = __si_assert_copy_extra(0);
    v35 = v37;
    v38 = "";
    if (v37)
    {
      v38 = v37;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1281, "flat", v38);
    goto LABEL_36;
  }

  v21 = v25;
LABEL_19:
  v26 = v21 + 4;
  v27 = v54;
  if (*&v21[8 * v54 + 4] >= 2uLL)
  {
    Size = directoryStorePageGetSize(v21);
    shiftEntries(v21, v27, Size);
    v27 = v54;
  }

  v29 = &v26[8 * v27];
  *v29 = a5;
  v29[1] = a7;
  *v21 += 16;
  v30 = directoryStorePageGetSize(v21);
  v31 = *v21;
  if ((64 << *(v21 + 2)) - 8 < v31)
  {
    v33 = __si_assert_copy_extra(0);
    v43 = *v21;
    v44 = ((64 << *(v21 + 2)) - 8);
    __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d");
    goto LABEL_42;
  }

  if (5 * (v31 >> 4) >= 4 * v30)
  {
    goto LABEL_40;
  }

  dirtyStoragePage(a2, v21);
  v32 = v54;
  *a1 = &v26[8 * v54];
  *(a1 + 8) = v22;
  *(a1 + 16) = v32;
}

uint64_t directoryStoreMoveDirectory(uint64_t result, int a2, unint64_t *a3, int a4, uint64_t a5)
{
  if (result)
  {
    v9 = result;
    v10 = (result + 4424);
    v11 = setCrashStateTarget(3);
    *v9 = 1;
    if (a2)
    {
      if (a3[a2 - 1] == *v10)
      {
        v12 = -3;
      }

      else
      {
        v12 = -2;
      }

      v13 = v12 + a2;
      if (a4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = -2;
      if (a4)
      {
LABEL_7:
        v14 = ~(*(a5 + 8 * a4 - 8) == *v10) + a4;
        v15 = *v10;
        goto LABEL_10;
      }
    }

    v15 = *v10;
    v14 = -1;
LABEL_10:
    if (v15 != 2)
    {
      v49 = __si_assert_copy_extra(0);
      v50 = v49;
      v51 = "";
      if (v49)
      {
        v51 = v49;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1991, "getStoreOID(root->fileId)==2", v51);
      goto LABEL_61;
    }

    v81 = 0;
    v80 = 1;
    if (!storageResolvePtr(v9 + 8, 0, 1, 1))
    {
LABEL_54:
      result = setCrashStateTarget(v11);
      if (v80)
      {
        return result;
      }

      result = directoryStoreValidate(v9 + 8, v10);
      if (*v10 == 2)
      {
        return result;
      }

      v53 = __si_assert_copy_extra(0);
      __message_assert("%s:%u: failed assertion '%s' %s ");
LABEL_66:
      free(v53);
      if (__valid_fs(-1))
      {
        v54 = 2989;
      }

      else
      {
        v54 = 3072;
      }

      *v54 = -559038737;
      abort();
    }

    v16 = OSAtomicIncrement32(&exceptionSequenceNum);
    v79 = 0;
    v78 = 0;
    v17 = *(v9 + 224);
    if (v17)
    {
      v18 = *(v17 + 44);
    }

    else
    {
      v18 = -1;
    }

    v19 = setThreadIdAndInfo(v18, sStorageExceptionCallbacks, v9 + 8, 1, v16);
    v79 = __PAIR64__(v19, HIDWORD(v19));
    v78 = __PAIR64__(v20, v21);
    v22 = threadData[9 * v19 + 1] + 320 * HIDWORD(v19);
    v23 = *(v22 + 312);
    v24 = *(v22 + 224);
    if (v24)
    {
      v24(*(v22 + 288));
    }

    v77 = v79;
    v76 = v78;
    if (_setjmp(v22))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v22 + 312) = v23;
      CIOnThreadCleanUpReset(v76);
      dropThreadId(HIDWORD(v77), 1, v16);
      CICleanUpReset(HIDWORD(v77), HIDWORD(v76));
      goto LABEL_54;
    }

    directoryStoreValidate(v9 + 8, v10);
    *&buf[8] = 0;
    *&v83 = 0;
    v63[0] = 0;
    v65 = 0uLL;
    *&v66 = 0;
    *buf = v10;
    directoryStoreGetDirectoryWithPath(&v65, v9 + 8, buf, v13, (a3 + 1), 0, 0);
    if (!v65)
    {
      v33 = 0;
      v27 = 0;
      goto LABEL_31;
    }

    v25 = *(v65 + 8);
    if (v25 >= 1)
    {
      v26 = *(v65 + 8);
      if (!(v25 >> 62))
      {
        v27 = 0;
        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        *buf = 0u;
        LODWORD(v74) = 0;
        ItemOffset = directoryStoreTreeFindItemOffset(v9 + 8, v26, *a3, buf, &v74, 0, 0);
        if (ItemOffset)
        {
          v29 = *ItemOffset;
          v60 = ItemOffset[1];
          *ItemOffset = 0;
          ItemOffset[1] = 0;
          PageInner = _directoryStoreGetPageInner(v9 + 8, *(&v88 + 1), v63);
          *PageInner -= 16;
          v31 = v74;
          Size = directoryStorePageGetSize(PageInner);
          shiftEntriesForDelete(PageInner, v31, Size, v88);
          if (v63[0])
          {
            v27 = v60;
            dirtyStoragePage(v9 + 8, PageInner);
            v33 = v29;
            goto LABEL_31;
          }

          v55 = __si_assert_copy_extra(0);
          v50 = v55;
          v56 = "";
          if (v55)
          {
            v56 = v55;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 1888, "flat", v56);
LABEL_61:
          free(v50);
          if (__valid_fs(-1))
          {
            v52 = 2989;
          }

          else
          {
            v52 = 3072;
          }

          *v52 = -559038737;
          abort();
        }

        v33 = 0;
LABEL_31:
        directoryStoreValidate(v9 + 8, v10);
        if (!v33)
        {
LABEL_51:
          v80 = 0;
          v47 = threadData[9 * HIDWORD(v77) + 1] + 320 * v77;
          *(v47 + 312) = v23;
          v48 = *(v47 + 232);
          if (v48)
          {
            v48(*(v47 + 288));
          }

          dropThreadId(HIDWORD(v77), 0, v16);
          goto LABEL_54;
        }

        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        *buf = 0u;
        v74 = 0uLL;
        v75 = 0;
        *&v66 = 0;
        v65 = v10;
        directoryStoreGetDirectoryWithPath(&v74, v9 + 8, &v65, v14, a5, 1, buf);
        if (*(&v74 + 1))
        {
          v39 = _directoryStoreGetPageInner(v9 + 8, *(&v74 + 1), &v81);
          if (v39)
          {
            *&v74 = &v39[8 * v75 + 4];
            v40 = 0;
          }

          else
          {
            v40 = 1;
          }
        }

        else
        {
          v40 = 1;
        }

        v73 = 0;
        v41 = *(v74 + 8);
        if (v41 < 1)
        {
          v64 = 0;
          v45 = 0;
LABEL_50:
          v72 = 0;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          v61 = v74;
          v62 = v75;
          insertDirectoryFT(v63, v9 + 8, &v61, v45, v33, v33, v27, &v64, &v65);
          goto LABEL_51;
        }

        v42 = _directoryStoreGetPageInner(v9 + 8, v41, &v81);
        if (v81)
        {
          v43 = 0;
          v44 = directoryStorePageFindItemOffset(*(v9 + 224), v42, v33, &v73, 0);
          if (!v44)
          {
LABEL_46:
            if ((v40 & 1) == 0)
            {
              v46 = _directoryStoreGetPageInner(v9 + 8, *(&v74 + 1), &v81);
              *&v74 = &v46[8 * v75 + 4];
            }

            v64 = 0;
            if (v43)
            {
              goto LABEL_51;
            }

            v45 = v73;
            goto LABEL_50;
          }

          if (*v44 == v33)
          {
            v43 = 1;
            goto LABEL_46;
          }
        }

        else
        {
          v72 = 0;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          v44 = directoryStoreTreeFindItemOffset(v9 + 8, *(v74 + 8), v33, &v65, &v73, 0, 0);
          if (!v44 || *v44 == v33)
          {
            v43 = v44 != 0;
            goto LABEL_46;
          }
        }

        v57 = v44;
        v53 = __si_assert_copy_extra(0);
        v58 = *v57;
        __message_assert("%s:%u: failed assertion '%s' %s %lld != %lld");
        goto LABEL_66;
      }

      v34 = _directoryStoreGetPageInner(v9 + 8, v26, v63);
      *buf = 0;
      v35 = directoryStorePageFindItemOffset(*(v9 + 224), v34, *a3, buf, 0);
      if (v35)
      {
        v36 = v35[1];
        v59 = *v35;
        *v35 = xmmword_1C2BFA340;
        *v34 -= 16;
        v37 = *buf;
        v38 = directoryStorePageGetSize(v34);
        shiftEntriesForDelete(v34, v37, v38, 0);
        dirtyStoragePage(v9 + 8, v34);
        v27 = v36;
        v33 = v59;
        goto LABEL_31;
      }
    }

    v27 = 0;
    v33 = 0;
    goto LABEL_31;
  }

  return result;
}

uint64_t directoryStoreMergeUpdateSet(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = setCrashStateTarget(3);
  if (storageResolvePtr(a1 + 8, 0, 1, 1))
  {
    v7 = OSAtomicIncrement32(&exceptionSequenceNum);
    v8 = *(a1 + 224);
    if (v8)
    {
      v9 = *(v8 + 44);
    }

    else
    {
      v9 = -1;
    }

    v10 = setThreadIdAndInfo(v9, sStorageExceptionCallbacks, a1 + 8, 1, v7);
    v30 = HIDWORD(v10);
    v31 = v10;
    v29 = __PAIR64__(v11, v12);
    v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
    v14 = *(v13 + 312);
    v15 = *(v13 + 224);
    if (v15)
    {
      v15(*(v13 + 288));
    }

    v28 = v31;
    v27 = v30;
    v26 = v29;
    if (_setjmp(v13))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
      }

      *(v13 + 312) = v14;
      CIOnThreadCleanUpReset(v26);
      dropThreadId(v28, 1, v7);
      CICleanUpReset(v28, HIDWORD(v26));
    }

    else
    {
      *a1 = 1;
      v16 = *(a1 + 4424);
      if (!v16)
      {
        v16 = 2;
        *(a1 + 4424) = 2;
      }

      if (*a2 != v16)
      {
        v20 = __si_assert_copy_extra(0);
        v21 = v20;
        v22 = "";
        if (v20)
        {
          v22 = v20;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2306, "rootDirectory->fileid == getStoreOID(root.directory->fileId)", v22);
        free(v21);
        if (__valid_fs(-1))
        {
          v23 = 2989;
        }

        else
        {
          v23 = 3072;
        }

        *v23 = -559038737;
        abort();
      }

      v25 = 0;
      buf = (a1 + 4424);
      mergeOne(a1 + 8, &buf, a2, a3);
      v17 = threadData[9 * v28 + 1] + 320 * v27;
      *(v17 + 312) = v14;
      v18 = *(v17 + 232);
      if (v18)
      {
        v18(*(v17 + 288));
      }

      dropThreadId(v28, 0, v7);
    }
  }

  return setCrashStateTarget(v6);
}

uint64_t mergeOne(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v48 = 0;
  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = &_directoryStoreGetPageInner(a1, v8, &v48)[8 * *(a2 + 4) + 4];
    *a2 = v9;
  }

  else
  {
    v9 = *a2;
  }

  directoryStoreValidate(a1, v9);
  v10 = *(a2 + 1);
  if (*(a3 + 8))
  {
    if (v10)
    {
      v11 = &_directoryStoreGetPageInner(a1, v10, &v48)[8 * *(a2 + 4) + 4];
      *a2 = v11;
    }

    else
    {
      v11 = *a2;
    }

    directoryStoreValidate(a1, v11);
    v12 = *(a2 + 1);
    if (v12)
    {
      *a2 = &_directoryStoreGetPageInner(a1, v12, &v48)[8 * *(a2 + 4) + 4];
    }

    v47 = 0;
    v13 = **(a3 + 8);
    v37 = *a2;
    *&v38 = *(a2 + 2);
    directoryStoreEnsurePage(a1, &v37, v13, 0, &v47, &v47 + 1, 0, 0);
    v14 = *(a2 + 1);
    if (v14)
    {
      *a2 = &_directoryStoreGetPageInner(a1, v14, &v47 + 1)[8 * *(a2 + 4) + 4];
    }

    v46 = 0;
    v45 = 0uLL;
    v15 = *(a3 + 8);
    if (*(v15 + 8))
    {
      v16 = 0;
      v17 = 16;
      do
      {
        if (*(v15 + v17) >= 2)
        {
          v18 = *(a2 + 1);
          if (v18)
          {
            *a2 = &_directoryStoreGetPageInner(a1, v18, &v47 + 1)[8 * *(a2 + 4) + 4];
            v15 = *(a3 + 8);
          }

          v44 = 0;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          v35 = *a2;
          v36 = *(a2 + 2);
          directoryStoreGetDirectoryWithPath(&v45, a1, &v35, 0, v15 + v17, 1, &v37);
          v35 = v45;
          v36 = v46;
          mergeOne(a1, &v35, v15 + v17, a4);
          v15 = *(a3 + 8);
        }

        ++v16;
        v17 += 32;
      }

      while (v16 < *(v15 + 8));
    }

    v10 = *(a2 + 1);
  }

  if (v10)
  {
    v19 = &_directoryStoreGetPageInner(a1, v10, &v48)[8 * *(a2 + 4) + 4];
    *a2 = v19;
  }

  else
  {
    v19 = *a2;
  }

  directoryStoreValidate(a1, v19);
  v20 = *(a2 + 1);
  if (v20)
  {
    *a2 = &_directoryStoreGetPageInner(a1, v20, &v48)[8 * *(a2 + 4) + 4];
  }

  if (*(a3 + 24))
  {
    v21 = *(a4 + 16);
    v22 = *(a4 + 8) + 1;
    if (v22 >= v21)
    {
      if (!v21)
      {
        v21 = 1024;
        *(a4 + 16) = 1024;
      }

      if (v22 >= v21)
      {
        do
        {
          v23 = v22 >= 2 * v21;
          v21 *= 2;
        }

        while (v23);
        *(a4 + 16) = v21;
      }

      *a4 = malloc_type_realloc(*a4, 24 * v21, 0x10200409F4E64B8uLL);
    }

    v24 = *a2;
    v25 = *(*a2 + 8);
    if ((v25 & 0x8000000000000000) == 0)
    {
      if (v25)
      {
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        v45 = 0uLL;
        v46 = 0;
        v35 = *a2;
        v36 = *(a2 + 2);
        directoryStoreGetDirectoryWithPath(&v45, a1, &v35, 0, a3, 1, &v37);
        v26 = v45;
        v25 = *(v45 + 8);
        if ((v25 & 0x8000000000000000) == 0)
        {
          if (v25)
          {
            v32 = __si_assert_copy_extra(0);
            v33 = v32;
            if (v32)
            {
              v34 = v32;
            }

            else
            {
              v34 = "";
            }

            __message_assert("%s:%u: Unexpected code path %s ", "FileTree.c", 2249, v34);
            free(v33);
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          v25 = (*(a4 + 24) + 1);
          *(a4 + 24) = v25;
          *(v26 + 8) = v25 | 0x8000000000000000;
        }
      }

      else
      {
        v25 = (*(a4 + 24) + 1);
        *(a4 + 24) = v25;
        *(v24 + 1) = v25 | 0x8000000000000000;
      }
    }

    v27 = *a4;
    v28 = *(a4 + 8);
    v27[6 * v28] = v25;
    *&v27[6 * v28 + 2] = a3 + 16;
    *(a4 + 8) = v28 + 1;
  }

  v29 = *(a2 + 1);
  if (v29)
  {
    v30 = &_directoryStoreGetPageInner(a1, v29, &v48)[8 * *(a2 + 4) + 4];
    *a2 = v30;
  }

  else
  {
    v30 = *a2;
  }

  return directoryStoreValidate(a1, v30);
}

void freeForwardDirectoryStore(void *a1)
{
  storageClose((a1 + 1));
  v2 = a1[550];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t dirStoreInit(uint64_t a1, _DWORD *a2, int a3, char a4, void *aBlock)
{
  v79 = *MEMORY[0x1E69E9840];
  v68 = 0;
  if (!a3)
  {
    bzero(v78, 0x400uLL);
    v14 = fd_pread(a2, v78, 0x400uLL, 64);
    if (v14 == 1024)
    {
      v61 = v78 + 8;
      v68 = storageHeaderRestore(a1 + 8, &v61);
      if (v68 == 1)
      {
        v15 = storageInit(a1 + 8, 0x10000, 0x40uLL, a2, 0, 1, a4, 102, aBlock);
      }

      else
      {
        v15 = 0;
      }

      v68 = v15;
      if (v15)
      {
        v22 = v61;
        v23 = 0;
        v24 = 0;
        do
        {
          v25 = *v22++;
          v26 = v24;
          v27 = ((v25 & 0x7F) << v24) | v23;
          v28 = v22;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v23 = v27;
        }

        while (v26 != 63);
        *(a1 + 4432) = v27;
        v29 = 0;
        v30 = 0;
        do
        {
          v31 = v30;
          v32 = ((*v28 & 0x7F) << v30) | v29;
          if ((*v28 & 0x80) == 0)
          {
            break;
          }

          ++v28;
          v30 += 7;
          v29 = v32;
        }

        while (v31 != 63);
        *(a1 + 4424) = v32;
        v33 = *MEMORY[0x1E695E480];
        *(a1 + 4384) = xmmword_1C2BFA3A0;
        Mutable = CFBitVectorCreateMutable(v33, 0x2000);
        *(a1 + 4400) = Mutable;
        CFBitVectorSetCount(Mutable, 0x2000);
        if (*(a1 + 4400))
        {
          goto LABEL_42;
        }

        goto LABEL_21;
      }

      bzero(v77, 0x400uLL);
      v17 = *__error();
      v38 = _SILogForLogForCategory(6);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
LABEL_25:
        *__error() = v17;
        goto LABEL_42;
      }

      v51 = fd_realpath(a2, v77);
      *buf = 136315650;
      v70 = "dirStoreInit";
      v71 = 1024;
      v72 = 2368;
      v73 = 2080;
      v74 = v51;
      v19 = "%s:%d: init storage failed %s";
      v20 = v38;
      v21 = 28;
    }

    else
    {
      v16 = v14;
      bzero(v77, 0x400uLL);
      v17 = *__error();
      v18 = _SILogForLogForCategory(6);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136315906;
      v70 = "dirStoreInit";
      v71 = 1024;
      v72 = 2377;
      v73 = 2080;
      v74 = fd_realpath(a2, v77);
      v75 = 2048;
      v76 = v16;
      v19 = "%s:%d: init storage failed %s; could not read header got %ld bytes";
      v20 = v18;
      v21 = 38;
    }

    _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    goto LABEL_25;
  }

  v68 = storageInit(a1 + 8, 0x10000, 0x40uLL, a2, 1, 1, a4, 102, aBlock);
  v9 = *MEMORY[0x1E695E480];
  *(a1 + 4384) = xmmword_1C2BFA3A0;
  v10 = CFBitVectorCreateMutable(v9, 0x2000);
  *(a1 + 4400) = v10;
  CFBitVectorSetCount(v10, 0x2000);
  if (!*(a1 + 4400))
  {
LABEL_21:
    v35 = __si_assert_copy_extra(0);
    v36 = v35;
    v37 = "";
    if (v35)
    {
      v37 = v35;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 47, "bv->_cfbv", v37);
    goto LABEL_50;
  }

  if (v68 != 1)
  {
    goto LABEL_42;
  }

  v68 = 0;
  if (!storageResolvePtr(a1 + 8, 0, 1, 1))
  {
    goto LABEL_42;
  }

  v11 = OSAtomicIncrement32(&exceptionSequenceNum);
  v12 = *(a1 + 224);
  if (v12)
  {
    v13 = *(v12 + 44);
  }

  else
  {
    v13 = -1;
  }

  v39 = setThreadIdAndInfo(v13, sStorageExceptionCallbacks, a1 + 8, 1, v11);
  *buf = HIDWORD(v39);
  v77[0] = v39;
  LODWORD(v61) = v40;
  v67 = v41;
  v42 = threadData[9 * v39 + 1] + 320 * HIDWORD(v39);
  v43 = *(v42 + 312);
  v44 = *(v42 + 224);
  if (v44)
  {
    v44(*(v42 + 288));
  }

  v66 = v77[0];
  v65 = *buf;
  v64 = v61;
  v63 = v67;
  if (_setjmp(v42))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v78[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v78, 2u);
    }

    *(v42 + 312) = v43;
    CIOnThreadCleanUpReset(v63);
    dropThreadId(v66, 1, v11);
    CICleanUpReset(v66, v64);
    goto LABEL_42;
  }

  memset(v78, 0, 192);
  v62 = 0;
  v45 = storageAllocOffset(a1 + 8, 0x400u, v78, &v62);
  if (v62)
  {
    dirtyStorageOffsets(a1 + 8, v78, v62);
  }

  if (v68 == 1)
  {
    v55 = __si_assert_copy_extra(0);
    v56 = v55;
    v57 = "";
    if (v55)
    {
      v57 = v55;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2340, "!result", v57);
    free(v56);
    if (__valid_fs(-1))
    {
      v58 = 2989;
    }

    else
    {
      v58 = 3072;
    }

    *v58 = -559038737;
    abort();
  }

  if (v45)
  {
    if (v45 == 64)
    {
      v46 = storageResolvePtr(a1 + 8, 0x40uLL, 1024, 1);
      bzero(v46, 0x400uLL);
      *(v46 + 2) = 4;
      dirtyStoragePage(a1 + 8, v46);
      *(v46 + 4) = 0;
      goto LABEL_39;
    }

    v59 = __si_assert_copy_extra(0);
    v36 = v59;
    v60 = "";
    if (v59)
    {
      v60 = v59;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2342, "realOffset==(64)", v60);
LABEL_50:
    free(v36);
    if (__valid_fs(-1))
    {
      v54 = 2989;
    }

    else
    {
      v54 = 3072;
    }

    *v54 = -559038737;
    abort();
  }

LABEL_39:
  v68 = 1;
  v47 = threadData[9 * v66 + 1] + 320 * v65;
  *(v47 + 312) = v43;
  v48 = *(v47 + 232);
  if (v48)
  {
    v48(*(v47 + 288));
  }

  dropThreadId(v66, 0, v11);
LABEL_42:
  *(a1 + 4408) = 1;
  if (v68 == 1 && !*(a1 + 224))
  {
    v52 = __si_assert_copy_extra(0);
    v36 = v52;
    v53 = "";
    if (v52)
    {
      v53 = v52;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2382, "storageFdPtr(&dirStore->store)!=0", v53);
    goto LABEL_50;
  }

  result = v68;
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t flushForwardStore(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 240) == *(result + 248))
  {
    *result = 0;
  }

  else if (*result)
  {
    v4 = setCrashStateTarget(3);
    if (storageResolvePtr((v2 + 1), 0, 1, 1))
    {
      v5 = OSAtomicIncrement32(&exceptionSequenceNum);
      v6 = v2[28];
      if (v6)
      {
        v7 = *(v6 + 44);
      }

      else
      {
        v7 = -1;
      }

      v8 = setThreadIdAndInfo(v7, sStorageExceptionCallbacks, (v2 + 1), 1, v5);
      v24 = HIDWORD(v8);
      v25 = v8;
      v23 = __PAIR64__(v9, v10);
      v11 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
      v12 = *(v11 + 312);
      v13 = *(v11 + 224);
      if (v13)
      {
        v13(*(v11 + 288));
      }

      v22 = v25;
      v21 = v24;
      v20 = v23;
      if (_setjmp(v11))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(v19) = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v19, 2u);
        }

        *(v11 + 312) = v12;
        CIOnThreadCleanUpReset(v20);
        dropThreadId(v22, 1, v5);
        CICleanUpReset(v22, HIDWORD(v20));
      }

      else
      {
        *storageResolvePtr((v2 + 1), 0, 8, 1) = a2;
        v14 = storageResolvePtr((v2 + 1), 0x40uLL, 1024, 1);
        v19 = v14 + 8;
        storageHeaderStore((v2 + 1), &v19);
        v15 = v19;
        v16 = writeVInt64(v19, 0, v2[554]);
        writeVInt64(v15, v16, v2[553]);
        dirtyStoragePage((v2 + 1), v14);
        storageSyncPages((v2 + 1), (v2 + 548), 0x20000uLL);
        v17 = threadData[9 * v22 + 1] + 320 * v21;
        *(v17 + 312) = v12;
        v18 = *(v17 + 232);
        if (v18)
        {
          v18(*(v17 + 288));
        }

        dropThreadId(v22, 0, v5);
      }
    }

    return setCrashStateTarget(v4);
  }

  return result;
}

void bit_vector_init_4656(uint64_t a1)
{
  if (!a1)
  {
    v4 = __si_assert_copy_extra(0);
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 41, "bv", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      v7 = 2989;
    }

    else
    {
      v7 = 3072;
    }

    *v7 = -559038737;
    abort();
  }

  v2 = *MEMORY[0x1E695E480];
  *a1 = xmmword_1C2BFA3A0;
  Mutable = CFBitVectorCreateMutable(v2, 0x2000);
  *(a1 + 16) = Mutable;
  CFBitVectorSetCount(Mutable, 0x2000);
  if (!*(a1 + 16))
  {
    v8 = __si_assert_copy_extra(0);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 47, "bv->_cfbv", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }
}

void *createForwardStore(int a1, const char *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x1168uLL, 0x10A0040377E5B1DuLL);
  bzero(v15, 0x400uLL);
  __sprintf_chk(v15, 0, 0x400uLL, "%s%s", a2, "directoryStoreFile");
  v7 = fd_create_protected(a1, v15, 1538, 3u);
  if (dirStoreInit(v6, v7, 1, 0, a3))
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    v10 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 136315138;
      v14 = v15;
      _os_log_impl(&dword_1C278D000, v9, v10, "createForwardStore:%s", buf, 0xCu);
    }

    *__error() = v8;
    v6[554] = 0;
    v6[553] = 2;
    flushForwardStore(v6, 0);
    *v6 = 1;
  }

  else
  {
    freeForwardDirectoryStore(v6);
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t recoverForwardStore(uint64_t a1, const char *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(v14, 0x400uLL);
  __sprintf_chk(v14, 0, 0x400uLL, "%s%s", a2, "directoryStoreFile");
  bzero(v13, 0x400uLL);
  __sprintf_chk(v13, 0, 0x400uLL, "%s%s", a2, "directoryStoreFile.shadow");
  v6 = *__error();
  v7 = _SILogForLogForCategory(0);
  v8 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 136315138;
    v12 = v14;
    _os_log_impl(&dword_1C278D000, v7, v8, "recoverForwardStore:%s", buf, 0xCu);
  }

  *__error() = v6;
  result = copyFileFallback(a1, v13, a1, v14, a3, 1, 1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *openForwardStore(int a1, const char *a2, int a3, int a4, int a5, void *a6)
{
  v171 = *MEMORY[0x1E69E9840];
  v159 = malloc_type_calloc(1uLL, 0x1168uLL, 0x10A0040377E5B1DuLL);
  bzero(v168, 0x400uLL);
  v11 = "directoryStoreFile";
  if (a5)
  {
    v11 = "directoryStoreFile.shadow";
  }

  v12 = a5 | a4;
  v13 = a5 | a4;
  __sprintf_chk(v168, 0, 0x400uLL, "%s%s", a2, v11);
  v14 = *__error();
  v15 = _SILogForLogForCategory(0);
  v16 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 136315138;
    *&buf[4] = v168;
    _os_log_impl(&dword_1C278D000, v15, v16, "openForwardStore:%s", buf, 0xCu);
  }

  *__error() = v14;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = 2;
  }

  v18 = fd_create_protected(a1, v168, v17, 3u);
  v19 = v159;
  if (dirStoreInit(v159, v18, 0, v13, a6))
  {
    v20 = v159;
    if ((v13 & 1) == 0)
    {
      v166 = 0;
      if (storageResolvePtr((v159 + 1), 0, 1, 1))
      {
        v21 = OSAtomicIncrement32(&exceptionSequenceNum);
        *buf = 0;
        v170[0] = 0;
        LODWORD(v167) = 0;
        v165 = 0;
        v22 = v159[28];
        if (v22)
        {
          v23 = *(v22 + 44);
        }

        else
        {
          v23 = -1;
        }

        v27 = setThreadIdAndInfo(v23, sStorageExceptionCallbacks, (v159 + 1), 1, v21);
        v170[0] = HIDWORD(v27);
        *buf = v27;
        LODWORD(v167) = v28;
        v165 = v29;
        v30 = threadData[9 * v27 + 1] + 320 * HIDWORD(v27);
        v31 = *(v30 + 312);
        v32 = *(v30 + 224);
        if (v32)
        {
          v32(*(v30 + 288));
        }

        v164 = *buf;
        v163 = v170[0];
        v162 = v167;
        v161 = v165;
        if (_setjmp(v30))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v160 = 0;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v160, 2u);
          }

          *(v30 + 312) = v31;
          CIOnThreadCleanUpReset(v161);
          dropThreadId(v164, 1, v21);
          CICleanUpReset(v164, v162);
        }

        else
        {
          for (i = 0; i != 24; ++i)
          {
            freeListVerify((v159 + 1), i);
          }

          v166 = 1;
          v34 = threadData[9 * v164 + 1] + 320 * v163;
          *(v34 + 312) = v31;
          v35 = *(v34 + 232);
          if (v35)
          {
            v35(*(v34 + 288));
          }

          dropThreadId(v164, 0, v21);
        }
      }

      if ((v166 & 1) == 0)
      {
        v24 = *__error();
        v25 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "openForwardStore";
          *&buf[12] = 1024;
          *&buf[14] = 2511;
          goto LABEL_43;
        }

        goto LABEL_14;
      }
    }

    v159[553] = 2;
    if (a3)
    {
      v36 = v159[554];
      v37 = v36;
      for (j = 2; j != 26; ++j)
      {
        if (!freeListVerify((v159 + 1), j - 2))
        {
          v159[j] = 0;
        }
      }

      if (*(v159 + 1102) && v36 > 0)
      {
        if ((v36 & 0x3FFFFFFFFFFFFFFFuLL) >= v159[30])
        {
          goto LABEL_169;
        }

        v39 = malloc_type_zone_malloc(queryZone, 0x300uLL, 0xA4971684uLL);
        if (!v39)
        {
          _log_fault_for_malloc_failure();
        }

        memset(buf, 0, 24);
        pqinit_offset_ptr(buf);
        v40 = v36 & 0x3F;
        v41 = *&buf[16];
        if (*&buf[16] + 2 >= *&buf[8])
        {
          v43 = 4;
          if (*&buf[8] >= 4)
          {
            v43 = 2 * *&buf[8];
          }

          *&buf[8] = v43;
          v44 = 16 * v43;
          if (*buf)
          {
            v45 = malloc_type_zone_realloc(queryZone, *buf, v44 + 32, 0xA1A7ADA0uLL);
          }

          else
          {
            v45 = malloc_type_zone_malloc(queryZone, v44 + 32, 0x566E289CuLL);
          }

          v46 = v45;
          if (!v45)
          {
            _log_fault_for_malloc_failure();
          }

          *buf = v46;
          *v46 = 0;
          v46[1] = 0;
          v42 = v46;
        }

        else
        {
          v42 = *buf;
        }

        *&buf[16] = v41 + 1;
        v47 = &v42[2 * v41];
        *v47 = v37;
        v47[1] = 0;
        if (v41 >= 2)
        {
          v48 = v41;
          do
          {
            v49 = v48;
            v50 = &v42[2 * v48];
            v51 = &v42[2 * (v49 >> 1)];
            if ((*v50 & 0x3FFFFFFFFFFFFFFFuLL) > (*v51 & 0x3FFFFFFFFFFFFFFFuLL))
            {
              break;
            }

            *v170 = *v50;
            *v50 = *v51;
            *v51 = *v170;
            v48 = v49 >> 1;
          }

          while (v49 > 3);
        }

        if (v40)
        {
          free(*buf);
          free(v39);
          goto LABEL_169;
        }

        v52 = *&buf[16];
        v53 = 32;
        v54 = 0;
        v55 = v39;
        while (1)
        {
          v56 = v55;
          v57 = v54;
          if (v52 == 1)
          {
            v58 = 0;
            v52 = 1;
            goto LABEL_77;
          }

          v59 = *buf;
          v58 = *(*buf + 16);
          v60 = *(*buf + 16 * v52 - 16);
          v61 = *&buf[8] >> 1;
          v62 = *(*buf + 16 * v52 - 16);
          *(*buf + 16) = v60;
          *&buf[16] = v52 - 1;
          v63 = v62 & 0x3FFFFFFFFFFFFFFFLL;
          v64 = 3;
          v65 = 2;
          v66 = 1;
          while (1)
          {
            v67 = v64;
            v68 = *(v59 + 16 * v65);
            if (v64 >= v52)
            {
              v69 = xmmword_1C2BFA360;
              if (v65 >= v52)
              {
                goto LABEL_76;
              }
            }

            else
            {
              v69 = *(v59 + 16 * v64);
            }

            v70 = v68.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
            v71 = v69.i64[0] & 0x3FFFFFFFFFFFFFFFLL;
            if ((v68.i64[0] & 0x3FFFFFFFFFFFFFFFuLL) < v63)
            {
              _CF = v71 >= v70;
              v72 = v71 < v70;
              if (_CF)
              {
                v67 = v65;
              }

              v73 = vdup_n_s32(v72);
              v74.i64[0] = v73.u32[0];
              v74.i64[1] = v73.u32[1];
              v75 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v74, 0x3FuLL)), v69, v68);
              goto LABEL_69;
            }

            v75 = v69;
            if (v71 >= v63)
            {
              break;
            }

LABEL_69:
            _X15 = v59 + 32 * v67;
            __asm { PRFM            #1, [X15] }

            if (v67 != v66)
            {
              v65 = 2 * v67;
              v64 = (2 * v67) | 1;
              *(v59 + 16 * v67) = v60;
              *(v59 + 16 * v66) = v75;
              v66 = v67;
              if (v67 < v61)
              {
                continue;
              }
            }

            goto LABEL_76;
          }

          _X8 = v59 + 32 * v66;
          __asm { PRFM            #1, [X8] }

LABEL_76:
          --v52;
LABEL_77:
          v83 = (v58 & 0x3F) == 0;
          LOBYTE(v167) = 0;
          v158 = v58;
          PageInner = _directoryStoreGetPageInner((v20 + 1), v58, &v167);
          v85 = PageInner;
          if (v167 == 1)
          {
            Size = directoryStorePageGetSize(PageInner);
            v87 = *buf;
            v88 = *&buf[8];
            if (Size)
            {
              v89 = 0;
              v90 = v85 + 4;
              v91 = v53;
              v92 = v57;
              v93 = v56;
              v94 = 0;
              v95 = v52;
              v96 = *&buf[8];
              v97 = *buf;
              v153 = v90;
              v154 = Size;
              do
              {
                v98 = v96;
                v99 = v92;
                v100 = v91;
                v101 = &v90[8 * v89];
                if (*v101 >= 2 && *(v159 + 1102))
                {
                  v102 = v101[1];
                  if (v102 < 0)
                  {
                    v108 = v102 & 0x7FFFFFFFFFFFFFFFLL;
                    v109 = v93;
                    if (v92 >= 1)
                    {
                      do
                      {
                        v110 = *v109;
                        v109 += 3;
                        LOBYTE(v83) = v83 & (v110 != v108);
                        --v92;
                      }

                      while (v92);
                    }

                    if (v99 >= v100)
                    {
                      if (v100)
                      {
                        v100 *= 2;
                      }

                      else
                      {
                        v100 = 4;
                      }

                      v111 = (v93 ? malloc_type_zone_realloc(queryZone, v93, 24 * v100, 0xA1A7ADA0uLL) : malloc_type_zone_malloc(queryZone, 24 * v100, 0x566E289CuLL));
                      v93 = v111;
                      v90 = v153;
                      Size = v154;
                      if (!v111)
                      {
                        _log_fault_for_malloc_failure();
                        v90 = v153;
                        Size = v154;
                      }
                    }

                    v117 = &v93[3 * v99];
                    *v117 = v108;
                    v117[1] = v158;
                    v117[2] = v89;
                    ++v99;
                  }

                  else if (v102)
                  {
                    v103 = v102;
                    _CF = (v102 & 0x3F) != 0 || (v102 & 0x3FFFFFFFFFFFFFFFuLL) >= v159[30];
                    v105 = !_CF;
                    if (v95 + 2 >= v96)
                    {
                      if (v96 >= 4)
                      {
                        v98 = 2 * v96;
                      }

                      else
                      {
                        v98 = 4;
                      }

                      v106 = 16 * v98;
                      if (v97)
                      {
                        v107 = malloc_type_zone_realloc(queryZone, v97, v106 + 32, 0xA1A7ADA0uLL);
                      }

                      else
                      {
                        v107 = malloc_type_zone_malloc(queryZone, v106 + 32, 0x566E289CuLL);
                      }

                      v97 = v107;
                      v90 = v153;
                      Size = v154;
                      if (!v107)
                      {
                        _log_fault_for_malloc_failure();
                        v90 = v153;
                        Size = v154;
                      }

                      *v97 = 0;
                      v97[1] = 0;
                    }

                    LOBYTE(v83) = v83 & v105;
                    v112 = v95 + 1;
                    v113 = &v97[2 * v95];
                    *v113 = v103;
                    v113[1] = 0;
                    if (v95 >= 2)
                    {
                      do
                      {
                        v114 = v95;
                        v115 = &v97[2 * v95];
                        v95 = v95 >> 1;
                        v116 = &v97[2 * v95];
                        if ((*v115 & 0x3FFFFFFFFFFFFFFFuLL) > (*v116 & 0x3FFFFFFFFFFFFFFFuLL))
                        {
                          break;
                        }

                        *v170 = *v115;
                        *v115 = *v116;
                        *v116 = *v170;
                      }

                      while (v114 > 3);
                    }

                    v95 = v112;
                  }
                }

                v96 = v98;
                v92 = v99;
                v53 = v100;
                v91 = v100;
                v57 = v92;
                v118 = v93;
                LOBYTE(v87) = v83;
                v89 = ++v94;
                v52 = v95;
                v88 = v96;
                v119 = v97;
              }

              while (Size > v94);
              goto LABEL_145;
            }

LABEL_144:
            v118 = v56;
            v119 = v87;
            LOBYTE(v87) = v83;
            goto LABEL_145;
          }

          v120 = directoryTreePageGetSize(*PageInner, *(PageInner + 2));
          v87 = *buf;
          v88 = *&buf[8];
          if (!v120)
          {
            goto LABEL_144;
          }

          v155 = v57;
          v156 = v56;
          v121 = v85 + 4;
          v122 = 0;
          v123 = v83;
          v124 = 0;
          v125 = v52;
          v126 = *&buf[8];
          v127 = *buf;
          do
          {
            v128 = v124;
            v129 = *&v121[4 * v122];
            if (v129)
            {
              v131 = (v129 & 0x3F) == 0 && (v129 & 0x3FFFFFFFFFFFFFFFuLL) < v19[30];
              if (v125 + 2 >= v126)
              {
                if (v126 >= 4)
                {
                  v134 = 2 * v126;
                }

                else
                {
                  v134 = 4;
                }

                v135 = 16 * v134;
                if (v127)
                {
                  v136 = malloc_type_zone_realloc(queryZone, v127, v135 + 32, 0xA1A7ADA0uLL);
                }

                else
                {
                  v136 = malloc_type_zone_malloc(queryZone, v135 + 32, 0x566E289CuLL);
                }

                v137 = v136;
                if (!v136)
                {
                  _log_fault_for_malloc_failure();
                }

                *v137 = 0;
                v137[1] = 0;
                v132 = v137;
                v88 = v134;
                v19 = v159;
              }

              else
              {
                v132 = v127;
                v88 = v126;
              }

              v87 = (v123 & v131);
              v133 = v125 + 1;
              v138 = &v132[2 * v125];
              *v138 = v129;
              v138[1] = 0;
              if (v125 >= 2)
              {
                do
                {
                  v139 = &v132[2 * v125];
                  v140 = &v132[2 * (v125 >> 1)];
                  if ((*v139 & 0x3FFFFFFFFFFFFFFFuLL) > (*v140 & 0x3FFFFFFFFFFFFFFFuLL))
                  {
                    break;
                  }

                  v141 = v125;
                  *v170 = *v139;
                  *v139 = *v140;
                  *v140 = *v170;
                  v125 = v125 >> 1;
                }

                while (v141 > 3);
              }
            }

            else
            {
              v132 = v127;
              v88 = v126;
              v133 = v125;
              v87 = v123;
            }

            v122 = (v128 + 1);
            v123 = v87;
            v124 = v128 + 1;
            v125 = v133;
            v126 = v88;
            v127 = v132;
          }

          while (v120 > v122);
          v57 = v155;
          v118 = v156;
          v52 = v133;
          v119 = v132;
LABEL_145:
          v142 = v87;
          *&buf[8] = v88;
          *&buf[16] = v52;
          *buf = v119;
          v20 = v159;
          v19 = v159;
          if (v52 != 1)
          {
            v54 = v57;
            v55 = v118;
            if (v87)
            {
              continue;
            }
          }

          free(v119);
          if (v57 >= 2)
          {
            if (qos_class_self() >= 0x12 && v57 > 2047)
            {
              v143 = OSAtomicDequeue(&qsort_cached_allocations_4560, 0);
              if (!v143)
              {
                v143 = malloc_type_malloc(0x40uLL, 0x102004053A8A26AuLL);
              }

              v144 = dispatch_group_create();
              v143[3] = v144;
              v143[4] = 0;
              v143[1] = 0;
              v143[2] = v57 - 1;
              *v143 = v118;
              v145 = thread_count_4561;
              if (!thread_count_4561)
              {
                *v170 = 0x1900000006;
                v167 = 4;
                sysctl(v170, 2u, &thread_count_4561, &v167, 0, 0);
                v145 = thread_count_4561;
              }

              *(v143 + 14) = v145;
              v143[5] = sqrt(v57) / 2;
              if (!v145)
              {
                *v170 = 0x1900000006;
                v167 = 4;
                sysctl(v170, 2u, &thread_count_4561, &v167, 0, 0);
                v145 = thread_count_4561;
              }

              v146 = v57 / (2 * v145);
              if (v146 <= 0x8000)
              {
                v146 = 0x8000;
              }

              else if (!v145)
              {
                *v170 = 0x1900000006;
                v167 = 4;
                sysctl(v170, 2u, &thread_count_4561, &v167, 0, 0);
                v146 = v57 / (2 * thread_count_4561);
              }

              v143[6] = v146;
              if (v143[5] <= 2047)
              {
                v143[5] = 2048;
              }

              _qsort_big_offset_triple(v143);
              dispatch_group_wait(v144, 0xFFFFFFFFFFFFFFFFLL);
              dispatch_release(v144);
            }

            else
            {
              _qsort_offset_triple(v118, 0, v57 - 1);
            }

            v147 = v57 - 1;
            v148 = v118;
            v149 = v142;
            do
            {
              v150 = *v148;
              v151 = v148[3];
              v148 += 3;
              v149 &= v151 != v150;
              v142 = v149;
              --v147;
            }

            while (v147);
          }

          free(v118);
          if (v142)
          {
            break;
          }

LABEL_169:
          v24 = *__error();
          v25 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "openForwardStore";
            *&buf[12] = 1024;
            *&buf[14] = 2526;
LABEL_43:
            _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: Failed to open dir store", buf, 0x12u);
          }

          goto LABEL_14;
        }
      }
    }

    result = v19;
  }

  else
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "openForwardStore";
      *&buf[12] = 1024;
      *&buf[14] = 2483;
      goto LABEL_43;
    }

LABEL_14:
    *__error() = v24;
    freeForwardDirectoryStore(v19);
    result = 0;
  }

  v152 = *MEMORY[0x1E69E9840];
  return result;
}

void shadowForwardStore(uint64_t a1, int a2, _DWORD *a3)
{
  v4 = a2;
  v92 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) != 0 || a2)
  {
    memset(v91, 0, 255);
    memset(v90, 0, 255);
    v6 = fd_name(*(a1 + 224), v91, 0xFFuLL);
    if (v6)
    {
      v7 = v6;
      __strlcpy_chk();
      strlcat(v7, ".shadow", 0xFFuLL);
      v8 = *(a1 + 224);
      if (v8)
      {
        v9 = *(v8 + 44);
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }

      if (isRegisteredForCloning(v9) && (copyFileFallback(v9, v90, v9, v7, a3, 0, 1) & 1) != 0)
      {
        bit_vector_set_bits_4698((a1 + 4384), 0, *(a1 + 4384));
        goto LABEL_70;
      }

      v12 = *(a1 + 240);
      directoryStoreValidate(a1 + 8, a1 + 4424);
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      memset(v66, 0, sizeof(v66));
      v56 = 0;
      v57 = 0;
      sibling_protected = fd_create_sibling_protected(*(a1 + 224), v7, 514, 0);
      fd_no_cache(sibling_protected);
      if (!sibling_protected)
      {
        v19 = *__error();
        v20 = *__error();
        v21 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v59 = "shadowForwardStore";
          v60 = 1024;
          v61 = 2607;
          v62 = 1024;
          v63 = v19;
          v64 = 2080;
          v65 = v7;
          _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
        }

        v16 = 0;
        goto LABEL_66;
      }

      v14 = (v12 + 0x1FFFF) >> 17;
      if ((v4 & 1) == 0 && v14 >= *(a1 + 4384))
      {
        v14 = *(a1 + 4384);
      }

      v15 = malloc_type_malloc(0x20000uLL, 0x47A6DE18uLL);
      if (!v15)
      {
        v46 = __si_assert_copy_extra(0);
        v47 = v46;
        v48 = "";
        if (v46)
        {
          v48 = v46;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2617, "readBuffer", v48);
        free(v47);
        if (__valid_fs(-1))
        {
          v49 = 2989;
        }

        else
        {
          v49 = 3072;
        }

        *v49 = -559038737;
        abort();
      }

      v16 = v15;
      v17 = *(a1 + 240);
      v18 = *(a1 + 224);
      if (v17 >> 17)
      {
        v22 = _fd_acquire_fd(v18, &v56);
        if (v22 != -1)
        {
          LODWORD(v23) = v22;
          v24 = _fd_acquire_fd(sibling_protected, &v57);
          if (v24 != -1)
          {
            v55 = v24;
            if (v14 < 1)
            {
LABEL_57:
              _fd_release_fd(*(a1 + 224), v23, 0, v56);
              _fd_release_fd(sibling_protected, v55, 0, v57);
              goto LABEL_58;
            }

            __fd = v23;
            v25 = 0;
            v26 = 0;
            while (v26 != 100)
            {
LABEL_41:
              if ((v4 & 1) != 0 || *(a1 + 4384) > v25 && CFBitVectorGetBitAtIndex(*(a1 + 4400), v25))
              {
                *&v66[4 * v26++] = v25;
              }

              if (++v25 == v14)
              {
                v23 = __fd;
                if (v26)
                {
                  v29 = v26;
                  v30 = v66;
                  while (1)
                  {
                    if (*a3 == 1 || *a3 == -1 && (v4 & 1) != 0)
                    {
                      goto LABEL_74;
                    }

                    v31 = v23;
                    v32 = *v30;
                    if (prot_pread(v31, v16, 0x20000uLL, v32 << 17) == -1)
                    {
                      break;
                    }

                    v33 = v55;
                    if (*a3 == 1 || *a3 == -1 && (v4 & 1) != 0)
                    {
                      LODWORD(v23) = __fd;
                      goto LABEL_69;
                    }

                    if (prot_pwrite_guarded(v55, &v57, v16, 0x20000uLL, v32 << 17) == -1)
                    {
                      v53 = *__error();
                      v20 = *__error();
                      v51 = _SILogForLogForCategory(0);
                      if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_89;
                      }

                      *buf = 136315650;
                      v59 = "shadowForwardStore";
                      v60 = 1024;
                      v61 = 2699;
                      v62 = 1024;
                      v63 = v53;
                      v52 = "%s:%d: pwrite err: %d";
                      goto LABEL_93;
                    }

                    bit_vector_internal_touch_for_set_4691((a1 + 4384), v32);
                    CFBitVectorSetBitAtIndex(*(a1 + 4400), v32, 0);
                    v30 += 4;
                    --v29;
                    v23 = __fd;
                    if (!v29)
                    {
                      goto LABEL_57;
                    }
                  }

                  v50 = *__error();
                  v20 = *__error();
                  v51 = _SILogForLogForCategory(0);
                  if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
LABEL_89:
                    LODWORD(v23) = __fd;
                    goto LABEL_80;
                  }

                  *buf = 136315650;
                  v59 = "shadowForwardStore";
                  v60 = 1024;
                  v61 = 2690;
                  v62 = 1024;
                  v63 = v50;
                  v52 = "%s:%d: pread err: %d";
LABEL_93:
                  _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, v52, buf, 0x18u);
                  goto LABEL_89;
                }

                goto LABEL_57;
              }
            }

            v27 = 0;
            while (*a3 != 1 && (*a3 != -1 || (v4 & 1) == 0))
            {
              v28 = *&v66[v27];
              if (prot_pread(__fd, v16, 0x20000uLL, v28 << 17) == -1)
              {
                v42 = *__error();
                v20 = *__error();
                v43 = _SILogForLogForCategory(0);
                v33 = v55;
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v59 = "shadowForwardStore";
                  v60 = 1024;
                  v61 = 2653;
                  v62 = 1024;
                  v63 = v42;
                  _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, "%s:%d: read err: %d", buf, 0x18u);
                }

                LODWORD(v23) = __fd;
                goto LABEL_68;
              }

              if (*a3 == 1 || *a3 == -1 && (v4 & 1) != 0)
              {
                break;
              }

              if (prot_pwrite_guarded(v55, &v57, v16, 0x20000uLL, v28 << 17) == -1)
              {
                v44 = *__error();
                v20 = *__error();
                v45 = _SILogForLogForCategory(0);
                LODWORD(v23) = __fd;
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v59 = "shadowForwardStore";
                  v60 = 1024;
                  v61 = 2662;
                  v62 = 1024;
                  v63 = v44;
                  _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: pwrite err: %d", buf, 0x18u);
                }

LABEL_80:
                v33 = v55;
                goto LABEL_68;
              }

              bit_vector_internal_touch_for_set_4691((a1 + 4384), v28);
              CFBitVectorSetBitAtIndex(*(a1 + 4400), v28, 0);
              v27 += 4;
              if (v27 == 400)
              {
                v26 = 0;
                goto LABEL_41;
              }
            }

            LODWORD(v23) = __fd;
LABEL_74:
            v33 = v55;
LABEL_69:
            free(v16);
            _fd_release_fd(*(a1 + 224), v23, 0, v56);
            _fd_release_fd(sibling_protected, v33, 0, v57);
            fd_release(sibling_protected);
            goto LABEL_70;
          }

          v40 = *__error();
          v20 = *__error();
          v41 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v59 = "shadowForwardStore";
            v60 = 1024;
            v61 = 2640;
            v62 = 1024;
            v63 = v40;
            _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, "%s:%d: fd_open err: %d", buf, 0x18u);
          }

LABEL_67:
          v33 = -1;
LABEL_68:
          *__error() = v20;
          goto LABEL_69;
        }

        v37 = *__error();
        v20 = *__error();
        v35 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v59 = "shadowForwardStore";
          v60 = 1024;
          v61 = 2634;
          v62 = 1024;
          v63 = v37;
          v36 = "%s:%d: fd_open err: %d";
          goto LABEL_65;
        }
      }

      else
      {
        if (fd_pread(v18, v16, v17, 0) != -1)
        {
          if (fd_pwrite(sibling_protected, v16, *(a1 + 240), 0) != -1)
          {
            bit_vector_internal_touch_for_set_4691((a1 + 4384), 0);
            CFBitVectorSetBitAtIndex(*(a1 + 4400), 0, 0);
LABEL_58:
            fd_release(sibling_protected);
            free(v16);
            goto LABEL_70;
          }

          v38 = *__error();
          v20 = *__error();
          v35 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          *buf = 136315650;
          v59 = "shadowForwardStore";
          v60 = 1024;
          v61 = 2626;
          v62 = 1024;
          v63 = v38;
          v36 = "%s:%d: pwrite err: %d";
          goto LABEL_65;
        }

        v34 = *__error();
        v20 = *__error();
        v35 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v59 = "shadowForwardStore";
          v60 = 1024;
          v61 = 2621;
          v62 = 1024;
          v63 = v34;
          v36 = "%s:%d: read err: %d";
LABEL_65:
          _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x18u);
        }
      }

LABEL_66:
      LODWORD(v23) = -1;
      goto LABEL_67;
    }

    v10 = *__error();
    v11 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v66 = 136315394;
      *&v66[4] = "shadowForwardStore";
      *&v66[12] = 1024;
      *&v66[14] = 2572;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: no path for shadow", v66, 0x12u);
    }

    *__error() = v10;
  }

LABEL_70:
  v39 = *MEMORY[0x1E69E9840];
}

void bit_vector_internal_touch_for_set_4691(CFIndex *a1, CFIndex a2)
{
  v4 = a1[1];
  if (v4 <= a2)
  {
    if (v4)
    {
      v5 = a1[1];
    }

    else
    {
      v5 = 32;
    }

    while (1)
    {
      v5 *= 2;
      if (v5 > a2)
      {
        break;
      }

      if (v5 <= v4)
      {
        v6 = __si_assert_copy_extra(0);
        v7 = v6;
        v8 = "";
        if (v6)
        {
          v8 = v6;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v8);
        free(v7);
        if (__valid_fs(-1))
        {
          v9 = 2989;
        }

        else
        {
          v9 = 3072;
        }

        *v9 = -559038737;
        abort();
      }
    }

    v10 = a1[2];
    v11 = *MEMORY[0x1E695E480];
    if (v10)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v11, v5, v10);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v11, v5);
    }

    v13 = MutableCopy;
    if (!MutableCopy)
    {
      v15 = __si_assert_copy_extra(0);
      v16 = v15;
      v17 = "";
      if (v15)
      {
        v17 = v15;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v17);
      free(v16);
      if (__valid_fs(-1))
      {
        v18 = 2989;
      }

      else
      {
        v18 = 3072;
      }

      *v18 = -559038737;
      abort();
    }

    CFBitVectorSetCount(MutableCopy, v5);
    v14 = a1[2];
    if (v14)
    {
      CFRelease(v14);
    }

    a1[1] = v5;
    a1[2] = v13;
  }

  if (*a1 <= a2)
  {
    *a1 = a2 + 1;
  }
}

void bit_vector_set_bits_4698(CFIndex *a1, CFIndex a2, CFIndex a3)
{
  if (a2 < 0)
  {
    v8 = __si_assert_copy_extra(0);
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 164, "range.location >= 0", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  if (a3 >= 1)
  {
    bit_vector_internal_touch_for_set_4691(a1, a3 + a2 - 1);
    v6 = a1[2];
    v7.location = a2;
    v7.length = a3;

    CFBitVectorSetBits(v6, v7, 0);
  }
}

uint64_t directoryStoreMakePathWithPostingsOffset(uint64_t a1, int a2, void *a3, unint64_t a4, uint64_t a5)
{
  v66 = 0;
  v10 = setCrashStateTarget(3);
  if (!storageResolvePtr(a1 + 8, 0, 1, 1))
  {
    goto LABEL_38;
  }

  v11 = OSAtomicIncrement32(&exceptionSequenceNum);
  v65 = 0;
  v64 = 0;
  v12 = *(a1 + 224);
  if (v12)
  {
    v13 = *(v12 + 44);
  }

  else
  {
    v13 = -1;
  }

  v14 = setThreadIdAndInfo(v13, sStorageExceptionCallbacks, a1 + 8, 1, v11);
  v65 = __PAIR64__(v14, HIDWORD(v14));
  v64 = __PAIR64__(v15, v16);
  v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
  v18 = *(v17 + 312);
  v19 = *(v17 + 224);
  if (v19)
  {
    v19(*(v17 + 288));
  }

  v63 = v65;
  v62 = v64;
  if (_setjmp(v17))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v17 + 312) = v18;
    CIOnThreadCleanUpReset(v62);
    dropThreadId(HIDWORD(v63), 1, v11);
    CICleanUpReset(HIDWORD(v63), HIDWORD(v62));
    goto LABEL_38;
  }

  *a1 = 1;
  if (a4 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v35 = __si_assert_copy_extra(0);
    v27 = v35;
    v36 = "";
    if (v35)
    {
      v36 = v35;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2763, "postings<9223372036854775807", v36);
    goto LABEL_45;
  }

  v20 = (a1 + 4424);
  if (*(a1 + 4424) != 2)
  {
    v37 = __si_assert_copy_extra(0);
    v27 = v37;
    v38 = "";
    if (v37)
    {
      v38 = v37;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2765, "getStoreOID(root.directory->fileId)==2", v38);
    goto LABEL_45;
  }

  if (a2)
  {
    v21 = a2 - (a3[a2 - 1] == 2);
    if (v21 < 2)
    {
      v23 = 0;
      a2 -= a3[a2 - 1] == 2;
    }

    else
    {
      v22 = a3[1];
      v23 = *a3 == v22;
      if (*a3 == v22)
      {
        ++a3;
        a2 = v21 - 1;
      }

      else
      {
        a2 -= a3[a2 - 1] == 2;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  directoryStoreValidate(a1 + 8, a1 + 4424);
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *buf = 0u;
  v52 = 0uLL;
  v53 = 0;
  v51 = 0;
  v50 = v20;
  directoryStoreGetDirectoryWithPath(&v52, a1 + 8, &v50, a2 - 1, a3, 1, buf);
  v24 = v52;
  if (!a4)
  {
    if (v52)
    {
      goto LABEL_33;
    }

    v29 = __si_assert_copy_extra(0);
    v27 = v29;
    v30 = "";
    if (v29)
    {
      v30 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2849, "target.directory", v30);
LABEL_45:
    free(v27);
    if (__valid_fs(-1))
    {
      v39 = 2989;
    }

    else
    {
      v39 = 3072;
    }

    *v39 = -559038737;
    abort();
  }

  v25 = *(v52 + 8);
  if (v23)
  {
    if (v25)
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      *buf = 0u;
      v48 = v52;
      v49 = v53;
      directoryStoreGetDirectoryWithPath(&v50, a1 + 8, &v48, 0, a3, 1, buf);
      v52 = v50;
      v24 = v50;
      v53 = v51;
      if (*(v50 + 8))
      {
        v26 = __si_assert_copy_extra(0);
        v27 = v26;
        v28 = "";
        if (v26)
        {
          v28 = v26;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2842, "!target.directory->childPage.offset", v28);
        goto LABEL_45;
      }
    }
  }

  else if (v25)
  {
    v45 = __si_assert_copy_extra(0);
    v41 = v45;
    v46 = "";
    if (v45)
    {
      v46 = v45;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2844, "!target.directory->childPage.offset", v46);
LABEL_58:
    free(v41);
    if (__valid_fs(-1))
    {
      v47 = 2989;
    }

    else
    {
      v47 = 3072;
    }

    *v47 = -559038737;
    abort();
  }

  *(v24 + 8) = a4 | 0x8000000000000000;
LABEL_33:
  directoryStoreValidate(a1 + 8, a1 + 4424);
  if (*v20 != 2)
  {
    v40 = __si_assert_copy_extra(0);
    v41 = v40;
    v42 = "";
    if (v40)
    {
      v42 = v40;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2851, "getStoreOID(root.directory->fileId)==2", v42);
    goto LABEL_58;
  }

  memcpy(a5, a3, 8 * a2);
  *(a5 + 4096) = a2;
  v31 = *buf;
  *(a5 + 4104) = *(&v60 + 1);
  *(a5 + 4112) = v31;
  if (v31 < 0)
  {
    v43 = __si_assert_copy_extra(0);
    v41 = v43;
    v44 = "";
    if (v43)
    {
      v44 = v43;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 2857, "!((refPage.pageOffset[0] & (1ull << 63)) || refPage.pageOffset[0]==0)", v44);
    goto LABEL_58;
  }

  *(a5 + 4120) = v60;
  v66 = 1;
  v32 = threadData[9 * HIDWORD(v63) + 1] + 320 * v63;
  *(v32 + 312) = v18;
  v33 = *(v32 + 232);
  if (v33)
  {
    v33(*(v32 + 288));
  }

  dropThreadId(HIDWORD(v63), 0, v11);
LABEL_38:
  setCrashStateTarget(v10);
  return v66;
}

void dumpDirectoryStore(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v107[1] = *MEMORY[0x1E69E9840];
  bzero(v105, 0x1000uLL);
  v104 = 0;
  bzero(&v102, 0x6038uLL);
  v99 = 0;
  __new = 0;
  v101 = 0;
  storage_reader_init((v8 + 1), &v99);
  v98 = 0;
  v9 = setCrashStateTarget(3);
  if (v101 == 1)
  {
    v10 = OSAtomicIncrement32(&exceptionSequenceNum);
    v11 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, &v99, 0, v10);
    v96 = HIDWORD(v11);
    *buf = v11;
    v94 = v13;
    v95 = v12;
    v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    if (v16)
    {
      v16(*(v14 + 288));
    }

    v93 = *buf;
    v92 = v96;
    v91 = __PAIR64__(v95, v94);
    if (_setjmp(v14))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v90 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v90, 2u);
      }

      *(v14 + 312) = v15;
      CIOnThreadCleanUpReset(v91);
      dropThreadId(v93, 1, v10);
      CICleanUpReset(v93, HIDWORD(v91));
      goto LABEL_88;
    }

    v89 = v10;
    v17 = CICleanUpThreadLoc();
    v87 = threadData[9 * v17 + 4];
    v88 = v17;
    CICleanUpPush(v17, cleanup, &v102);
    v107[0] = 2;
    v20 = v8[554];
    v21 = v8[555];
    v22 = v8[556];
    v23 = v22 - v21 < 0x100000001 && v22 > v21;
    v24 = v22 & 0xFFFFFFFF00000000;
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v86 = v21;
    if ((v20 & 0x8000000000000000) == 0)
    {
      if (v20)
      {
        v26 = v104 + 1;
        if (!(v20 >> 62))
        {
          v27 = v102;
          v28 = &v103[3 * v102];
          *v28 = v26;
          *(v28 + 12) = 0x200000000;
          *(v28 + 4) = 0;
          *(v28 + 20) = 0;
          *(v28 + 28) = 0;
          *(v28 + 36) = 0;
          *(v28 + 11) = 0;
          *(v28 + 3) = v20;
          v29 = v27 + 1;
          v102 = v27 + 1;
          if (v27 == -1)
          {
            goto LABEL_85;
          }

LABEL_29:
          v32 = 24;
          v33 = v29;
          while (1)
          {
            if ((v98 & 1) != 0 || *v5)
            {
              goto LABEL_85;
            }

            v34 = v33 - 1;
            v35 = v103[3 * v33 - 2];
            if (v35 != 2)
            {
              break;
            }

            if (!*v5)
            {
              v42 = v15;
              v43 = v32;
              v90[0] = 0;
              v44 = &v103[3 * v34];
              Page = _directoryStoreReaderGetPage(&v99, *(v44 + 3), v90, v18, v19);
              if (Page)
              {
                if (v90[0] == 1)
                {
                  v81 = __si_assert_copy_extra(0);
                  __message_assert("%s:%u: failed assertion '%s' %s ");
                  goto LABEL_97;
                }

                v46 = Page;
                Size = directoryTreePageGetSize(*Page, *(Page + 2));
                v48 = *(v44 + 1);
                if (Size <= v48)
                {
LABEL_46:
                  v53 = v102 - 1;
LABEL_47:
                  v102 = v53;
                }

                else
                {
                  *(v44 + 1) = v48 + 1;
                  v49 = *v44;
                  v50 = &v46[4 * v48 + 4];
                  v51 = v48 + 2;
                  v52 = Size - v48;
                  while (!*v5)
                  {
                    if (*v50 >= 1)
                    {
                      v71 = *v50;
                      if (!(*v50 >> 62))
                      {
                        v72 = v102;
                        v73 = &v103[3 * v102];
                        *v73 = v49;
                        *(v73 + 4) = 0;
                        *(v73 + 20) = 0;
                        *(v73 + 28) = 0;
                        *(v73 + 36) = 0;
                        *(v73 + 12) = 0x200000000;
                        *(v73 + 11) = 0;
                        *(v73 + 3) = v71;
                        v53 = v72 + 1;
                        goto LABEL_47;
                      }

                      dumpDirectoryStorePage(&v99, v5, v71, v49, &v102, v103, v18, v19);
                      break;
                    }

                    *(v44 + 1) = v51;
                    ++v50;
                    ++v51;
                    if (!--v52)
                    {
                      goto LABEL_46;
                    }
                  }
                }
              }

              v32 = v43;
              v15 = v42;
            }

LABEL_69:
            v33 = v102;
            if (!v102)
            {
              goto LABEL_85;
            }
          }

          if (v35 != 1)
          {
            v83 = __si_assert_copy_extra(0);
            v84 = v83;
            if (v83)
            {
              v85 = v83;
            }

            else
            {
              v85 = "";
            }

            __message_assert("%s:%u: Unexpected code path %s ", "FileTree.c", 3171, v85);
            free(v84);
            goto LABEL_93;
          }

          v36 = &v103[3 * v34];
          v37 = *(v36 + 1);
          v38 = *v36;
          v39 = *v36;
          v40 = *v36;
          if (v37 == *(v36 + 5))
          {
            if (*(v36 + 24) || (v7 & 1) != 0)
            {
              free(*(v36 + 4));
              --v102;
              v62 = 0;
LABEL_68:
              v98 = v62;
              goto LABEL_69;
            }

            *(v36 + 1) = 0;
            *(v36 + 24) = 1;
            v41 = *(v36 + 4);
            v37 = 0;
          }

          else
          {
            if (!*(v36 + 24))
            {
              v63 = *(v36 + 4) + 24 * v37;
              v66 = *(v63 + 8);
              v65 = v63 + 8;
              v64 = v66;
              if (v66 < 2)
              {
                goto LABEL_66;
              }

              v67 = *(v65 + 8);
              v59 = v67;
              v105[511 - v38] = v64;
              if ((v67 & 0x8000000000000000) != 0)
              {
                v74 = v67 & 0x7FFFFFFFFFFFFFFFLL;
                v75 = v67 & 0x7FFFFFFFFFFFFFFFLL;
                if ((v67 & 0x7FFFFFFFFFFFFFFFLL) < v86)
                {
                  if (!v25 || HIDWORD(v74))
                  {
LABEL_106:
                    v79 = __si_assert_copy_extra(0);
                    __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx");
LABEL_92:
                    free(v79);
                    if (__valid_fs(-1))
                    {
LABEL_93:
                      v80 = 2989;
                    }

                    else
                    {
                      v80 = 3072;
                    }

                    *v80 = -559038737;
                    abort();
                  }

                  v75 = v74 | v25;
                }

                if (!v75)
                {
                  goto LABEL_106;
                }

                if (v38 < 1 || v64 == v105[512 - v38])
                {
                  v70 = (*(v3 + 16))(v3, (v40 + 1), &v107[-v38], v75);
                }

                else
                {
                  v105[510 - v38] = v64;
                  v70 = (*(v3 + 16))(v3, (v40 + 2), &v107[-v38 - 1]);
                }

                goto LABEL_67;
              }

              if (!v67)
              {
                goto LABEL_66;
              }

              if ((v7 & 1) == 0)
              {
                v70 = (*(v3 + 16))(v3, (v38 + 1), &v107[-v38], 0);
                goto LABEL_67;
              }

              if (!(v67 >> 62))
              {
                v68 = &v103[3 * v33];
                *v68 = v39 + 1;
                *(v68 + 4) = 0;
                *(v68 + 20) = 0;
                *(v68 + 28) = 0;
                *(v68 + 36) = 0;
                *(v68 + 12) = 0x200000000;
                *(v68 + 11) = 0;
                *(v68 + 3) = v67;
                goto LABEL_56;
              }

              v69 = v5;
              v60 = v38 + 1;
LABEL_65:
              dumpDirectoryStorePage(&v99, v69, v59, v60, &v102, v103, v18, v19);
              goto LABEL_66;
            }

            v41 = *(v36 + 4);
          }

          if (v7)
          {
            v79 = __si_assert_copy_extra(0);
            __message_assert("%s:%u: failed assertion '%s' %s ");
            goto LABEL_92;
          }

          v54 = v41 + v37 * v32;
          v57 = *(v54 + 8);
          v55 = v54 + 8;
          v56 = v57;
          if (v57 < 2)
          {
            goto LABEL_66;
          }

          v58 = *(v55 + 8);
          if (v58 < 1)
          {
            goto LABEL_66;
          }

          v59 = v58;
          v105[511 - v38] = v56;
          v60 = v40 + 1;
          if (!(v58 >> 62))
          {
            v61 = &v103[3 * v33];
            *v61 = v60;
            *(v61 + 4) = 0;
            *(v61 + 20) = 0;
            *(v61 + 28) = 0;
            *(v61 + 36) = 0;
            *(v61 + 12) = 0x200000000;
            *(v61 + 11) = 0;
            *(v61 + 3) = v59;
LABEL_56:
            v102 = v33 + 1;
LABEL_66:
            v70 = 0;
LABEL_67:
            ++*(v36 + 1);
            v62 = v70;
            goto LABEL_68;
          }

          v69 = v5;
          goto LABEL_65;
        }

        dumpDirectoryStorePage(&v99, v5, v20, v26, &v102, v103, v18, v19);
      }

LABEL_28:
      v29 = v102;
      if (!v102)
      {
LABEL_85:
        CICleanUpReset(v88, v87);
        v76 = threadData[9 * v93 + 1] + 320 * v92;
        *(v76 + 312) = v15;
        v77 = *(v76 + 232);
        if (v77)
        {
          v77(*(v76 + 288));
        }

        dropThreadId(v93, 0, v89);
        goto LABEL_88;
      }

      goto LABEL_29;
    }

    v30 = v20 & 0x7FFFFFFFFFFFFFFFLL;
    v31 = v30;
    if (v30 < v21)
    {
      if (HIDWORD(v30) || !v25)
      {
        goto LABEL_105;
      }

      v31 = v25 | v30;
    }

    if (v31)
    {
      v106 = 2;
      (*(v3 + 16))(v3);
      goto LABEL_28;
    }

LABEL_105:
    v81 = __si_assert_copy_extra(0);
    __message_assert("%s:%u: failed assertion '%s' %s invalid posting 0x%llx for 0x%llx");
LABEL_97:
    free(v81);
    if (__valid_fs(-1))
    {
      v82 = 2989;
    }

    else
    {
      v82 = 3072;
    }

    *v82 = -559038737;
    abort();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

LABEL_88:
  setCrashStateTarget(v9);
  if (__new)
  {
    _release_read_window(&availableReaders, __new);
  }

  v78 = *MEMORY[0x1E69E9840];
}

void dumpDirectoryStorePage(uint64_t *a1, _DWORD *a2, unint64_t a3, int a4, _DWORD *a5, uint64_t a6, __n128 a7, __n128 a8)
{
  v34 = 0;
  Page = _directoryStoreReaderGetPage(a1, a3, &v34, a7, a8);
  if (Page)
  {
    if (!v34)
    {
      v27 = __si_assert_copy_extra(0);
      v25 = v27;
      v28 = "";
      if (v27)
      {
        v28 = v27;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3032, "flat", v28);
LABEL_21:
      free(v25);
      if (__valid_fs(-1))
      {
        v29 = 2989;
      }

      else
      {
        v29 = 3072;
      }

      *v29 = -559038737;
      abort();
    }

    if (!*a2)
    {
      v13 = Page;
      v14 = *Page;
      if ((64 << *(Page + 2)) - 8 < v14)
      {
        v30 = __si_assert_copy_extra(0);
        v32 = *v13;
        v33 = ((64 << *(v13 + 2)) - 8);
        __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d");
      }

      else
      {
        Size = directoryStorePageGetSize(Page);
        if (v14 < 0x10)
        {
          return;
        }

        v16 = Size;
        v17 = v14 >> 4;
        v18 = malloc_type_malloc(24 * v17, 0x1000040504FFAC1uLL);
        v19 = 0;
        if (v16)
        {
          v20 = v13 + 4;
          do
          {
            if (*v20)
            {
              v21 = &v18[24 * v19];
              *(v21 + 1) = *v20;
              *v21 = hash64(v21[1]);
              ++v19;
            }

            else if (*(v20 + 1))
            {
              v24 = __si_assert_copy_extra(0);
              v25 = v24;
              v26 = "";
              if (v24)
              {
                v26 = v24;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3010, "page->items[i].childPage.offset==0", v26);
              goto LABEL_21;
            }

            v20 += 8;
            v16 = (v16 - 1);
          }

          while (v16);
        }

        if (v19 == v17)
        {
          qsort_b(v18, v17, 0x18uLL, &__block_literal_global_125_4713);
          v22 = a6 + 48 * *a5;
          *v22 = a4;
          *(v22 + 4) = 0;
          *(v22 + 12) = 0x100000000;
          *(v22 + 20) = 0;
          *(v22 + 44) = 0;
          *(v22 + 36) = 0;
          *(v22 + 28) = 0;
          LODWORD(v22) = *a5;
          v23 = a6 + 48 * *a5;
          *(v23 + 24) = 0;
          *(v23 + 32) = v18;
          *(v23 + 40) = v17;
          *a5 = v22 + 1;
          return;
        }

        v30 = __si_assert_copy_extra(0);
        __message_assert("%s:%u: failed assertion '%s' %s ");
      }

      free(v30);
      if (__valid_fs(-1))
      {
        v31 = 2989;
      }

      else
      {
        v31 = 3072;
      }

      *v31 = -559038737;
      abort();
    }
  }
}

uint64_t __dumpSpecialDirectoryStorePage_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  if (a2[1] < a3[1])
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

void cleanup(unsigned int *a1)
{
  v1 = *a1;
  if (v1)
  {
    v3 = 0;
    v4 = (a1 + 10);
    do
    {
      if (*(v4 - 4) == 1)
      {
        free(*v4);
        v1 = *a1;
      }

      ++v3;
      v4 += 6;
    }

    while (v3 < v1);
  }
}

void compactForwardDirectoryStore(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  bzero(v11, 0x1020uLL);
  v9 = *v5;
  v10 = v5[1];
  dumpDirectoryStore(v8);
  if (!*v3)
  {
    flushForwardStore(v7, 0);
  }
}

uint64_t __compactForwardDirectoryStore_block_invoke(uint64_t a1, int a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = uint32_map_get(v7, a4);
      a4 = *storageResolvePtr(*(a1 + 40), 8 * v8, 8, 1);
    }
  }

  if (!directoryStoreMakePathWithPostingsOffset(*(a1 + 48), a2, a3, a4, *(a1 + 56)) || **(a1 + 64))
  {
    return 1;
  }

  v11 = *(a1 + 88);
  v10 = *(a1 + 96);

  return v11(v10);
}

void subvertForwardDirectoryStore(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v18, 0, 255);
  v4 = fd_name(a1[28], v18, 0xFFuLL);
  memset(v17, 0, 255);
  v5 = fd_name(a1[28], v17, 0xFFuLL);
  v6 = v5;
  if (v5)
  {
    strlcat(v5, ".shadow", 0xFFuLL);
    sibling_protected = fd_create_sibling_protected(a1[28], v6, 0, 0);
    if (sibling_protected)
    {
      v8 = sibling_protected;
      _fd_unlink_with_origin(sibling_protected, 0);
      fd_release(v8);
    }
  }

  _fd_unlink_with_origin(a1[28], 0);
  freeForwardDirectoryStore(a1);
  if (strstr(v6, ".shadow.shadow"))
  {
    v12 = __si_assert_copy_extra(0);
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3225, "0==strstr(shadowpathPtr, .shadow.shadow)", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      v15 = 2989;
    }

    else
    {
      v15 = 3072;
    }

    *v15 = -559038737;
    abort();
  }

  memset(v16, 0, 255);
  v9 = fd_name(*(a2 + 224), v16, 0xFFuLL);
  strlcat(v9, ".shadow", 0xFFuLL);
  v10 = fd_create_sibling_protected(*(a2 + 224), v9, 0, 0);
  fd_rename(*(a2 + 224), v4);
  if (v10)
  {
    fd_rename(v10, v6);
    fd_release(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t unlinkDirectoryStore(const char *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", a1, "directoryStoreFile");
  result = unlink(__str);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unlinkDirectoryStoreShadow(const char *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s.shadow", a1, "directoryStoreFile");
  result = unlink(__str);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t directoryStoreGetParent(uint64_t a1, unint64_t a2)
{
  v4 = setCrashStateTarget(2);
  db_read_lock(a1 + 4424);
  v27 = 0;
  __new = 0;
  v29 = 0;
  storage_reader_init(a1, &v27);
  if (v29 != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_10;
  }

  v5 = OSAtomicIncrement32(&exceptionSequenceNum);
  v6 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, &v27, 0, v5);
  v25 = HIDWORD(v6);
  *buf = v6;
  v24 = __PAIR64__(v7, v8);
  v9 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v10 = *(v9 + 312);
  v11 = *(v9 + 224);
  if (v11)
  {
    v11(*(v9 + 288));
  }

  v23 = *buf;
  v22 = v25;
  v21 = v24;
  if (_setjmp(v9))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v20, 2u);
    }

    *(v9 + 312) = v10;
    CIOnThreadCleanUpReset(v21);
    dropThreadId(v23, 1, v5);
    CICleanUpReset(v23, HIDWORD(v21));
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  ItemOffset = directoryStoreReaderTreeFindItemOffset(&v27, 1088, a2, 0, v12, v13);
  if (ItemOffset)
  {
    v17 = *(ItemOffset + 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = threadData[9 * v23 + 1] + 320 * v22;
  *(v18 + 312) = v10;
  v19 = *(v18 + 232);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  dropThreadId(v23, 0, v5);
  v14 = v17;
LABEL_11:
  db_read_unlock(a1 + 4424);
  if (__new)
  {
    _release_read_window(&availableReaders, __new);
    __new = 0;
  }

  setCrashStateTarget(v4);
  return v14;
}

uint64_t directoryStoreGetPath(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = setCrashStateTarget(2);
  db_read_lock(a1 + 4424);
  v32 = 0;
  __new = 0;
  v34 = 0;
  storage_reader_init(a1, &v32);
  if (v34 != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v16 = 0;
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v7 = OSAtomicIncrement32(&exceptionSequenceNum);
  v8 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, &v32, 0, v7);
  v30 = HIDWORD(v8);
  *buf = v8;
  v29 = __PAIR64__(v9, v10);
  v11 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  v28 = *buf;
  v27 = v30;
  v26 = v29;
  if (_setjmp(v11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v25, 2u);
    }

    *(v11 + 312) = v12;
    CIOnThreadCleanUpReset(v26);
    dropThreadId(v28, 1, v7);
    CICleanUpReset(v28, HIDWORD(v26));
LABEL_10:
    v16 = 0;
    goto LABEL_21;
  }

  if (a2 == 2)
  {
    v16 = 0;
  }

  else
  {
    v17 = 0;
    v18 = a2;
    do
    {
      v19 = v17;
      ItemOffset = directoryStoreReaderTreeFindItemOffset(&v32, 1088, v18, 0, v14, v15);
      if (!ItemOffset)
      {
        break;
      }

      v21 = *(ItemOffset + 1);
      if (!v21)
      {
        break;
      }

      v18 = *(ItemOffset + 1);
      v17 = v19 + 1;
      *(a3 + 8 * v19++) = v21;
    }

    while (v21 != 2);
    v16 = v19;
  }

  v22 = threadData[9 * v28 + 1] + 320 * v27;
  *(v22 + 312) = v12;
  v23 = *(v22 + 232);
  if (v23)
  {
    v23(*(v22 + 288));
  }

  dropThreadId(v28, 0, v7);
LABEL_21:
  db_read_unlock(a1 + 4424);
  if (__new)
  {
    _release_read_window(&availableReaders, __new);
    __new = 0;
  }

  setCrashStateTarget(v6);
  return v16;
}

uint64_t directoryStoreWriterGetParent(uint64_t a1, unint64_t a2)
{
  v4 = setCrashStateTarget(2);
  _db_write_lock(a1 + 4424);
  v5 = 0;
  if (storageResolvePtr(a1, 0, 1, 1))
  {
    v6 = OSAtomicIncrement32(&exceptionSequenceNum);
    v7 = *(a1 + 216);
    if (v7)
    {
      v8 = *(v7 + 44);
    }

    else
    {
      v8 = -1;
    }

    v9 = setThreadIdAndInfo(v8, sStorageExceptionCallbacks, a1, 1, v6);
    v24 = HIDWORD(v9);
    v25 = v9;
    v23 = __PAIR64__(v10, v11);
    v12 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
    v13 = *(v12 + 312);
    v14 = *(v12 + 224);
    if (v14)
    {
      v14(*(v12 + 288));
    }

    v22 = v25;
    v21 = v24;
    v20 = v23;
    if (_setjmp(v12))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19[0] = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v19, 2u);
      }

      *(v12 + 312) = v13;
      CIOnThreadCleanUpReset(v20);
      dropThreadId(v22, 1, v6);
      CICleanUpReset(v22, HIDWORD(v20));
      v5 = 0;
    }

    else
    {
      Parent = _directoryStoreGetParent(a1, a2);
      v16 = threadData[9 * v22 + 1] + 320 * v21;
      *(v16 + 312) = v13;
      v17 = *(v16 + 232);
      if (v17)
      {
        v17(*(v16 + 288));
      }

      dropThreadId(v22, 0, v6);
      v5 = Parent;
    }
  }

  db_write_unlock(a1 + 4424);
  setCrashStateTarget(v4);
  return v5;
}

uint64_t _directoryStoreGetParent(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  ItemOffset = directoryStoreTreeFindItemOffset(a1, 0x440uLL, a2, v10, 0, 0, 0);
  if (ItemOffset)
  {
    result = ItemOffset[1];
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = dword_1EBF46AE4 < 5;
    }

    if (!v4)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v14 = *(&v11 + 1);
        v7 = "leafPageOffset: %llx";
LABEL_13:
        _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (dword_1EBF46AE4 >= 5)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v14 = *(&v11 + 1);
        v7 = "_directoryStoreGetParent failed. leafPageOffset: %llx";
        goto LABEL_13;
      }

LABEL_14:
      v9 = __error();
      result = 0;
      *v9 = v5;
      goto LABEL_10;
    }

    result = 0;
  }

LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t dirtyStore(uint64_t a1)
{
  if (*(a1 + 4416))
  {
    v2 = *(a1 + 4640);
    if (v2)
    {
      (*(v2 + 16))();
    }

    v3 = storageResolvePtr(a1, 0x40uLL, 1024, 1);
    *(v3 + 4) = 0;
    dirtyStoragePage(a1, v3);
    v4 = *MEMORY[0x1E69E9AB8];
    fd_system_status_stall_if_busy();
    msync((v3 & ~v4), 0x1000uLL, 16);
    result = fd_sync(*(a1 + 216), 1);
    *(a1 + 4416) = 0;
  }

  else
  {
    if (*(a1 + 232) <= 0x43FuLL)
    {
      storageAllocOffsetFromEnd(a1, *(a1 + 224) + 960);
    }

    result = storageResolvePtr(a1, 0x40uLL, 1024, 1);
    *(result + 4) = 0;
  }

  return result;
}

uint64_t directoryStoreSetParentForMove(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v45 = 0;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v6 = setCrashStateTarget(2);
  if (!a3)
  {
    v33 = __si_assert_copy_extra(*(a1 + 216));
    v34 = v33;
    v35 = "";
    if (v33)
    {
      v35 = v33;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3492, "parent", v35);
    free(v34);
    if (__valid_fsp(*(a1 + 216)))
    {
      v36 = 2989;
    }

    else
    {
      v36 = 3072;
    }

    *v36 = -559038737;
    abort();
  }

  v7 = v6;
  _db_write_lock(a1 + 4424);
  if (storageResolvePtr(a1, 0, 1, 1))
  {
    v8 = OSAtomicIncrement32(&exceptionSequenceNum);
    v9 = *(a1 + 216);
    if (v9)
    {
      v10 = *(v9 + 44);
    }

    else
    {
      v10 = -1;
    }

    v11 = setThreadIdAndInfo(v10, sStorageExceptionCallbacks, a1, 1, v8);
    v41 = HIDWORD(v11);
    v42 = v11;
    v39 = v13;
    v40 = v12;
    v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    if (v16)
    {
      v16(*(v14 + 288));
    }

    if (_setjmp(v14))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v14 + 312) = v15;
      CIOnThreadCleanUpReset(v39);
      dropThreadId(v42, 1, v8);
      CICleanUpReset(v42, v40);
    }

    else
    {
      if (dword_1EBF46AE4 >= 5)
      {
        v37 = *__error();
        v38 = _SILogForLogForCategory(6);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v48 = a2;
          v49 = 2048;
          v50 = a3;
          _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "Move %llx/%llx", buf, 0x16u);
        }

        *__error() = v37;
      }

      dirtyStore(a1);
      ItemOffset = directoryStoreTreeFindItemOffset(a1, 0x440uLL, a2, v43, &v46, 0, 1);
      PageInner = _directoryStoreGetPageInner(a1, *(&v44 + 1), buf);
      v19 = PageInner;
      v20 = PageInner;
      if (ItemOffset)
      {
        if (*ItemOffset != a2 || (v21 = v46, &PageInner[8 * v46 + 4] != ItemOffset))
        {
          v22 = __si_assert_copy_extra(*(a1 + 216));
          v23 = v22;
          v24 = "";
          if (v22)
          {
            v24 = v22;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3513, "(getStoreOID(element->fileId)==item && &page->items[slot]==element)", v24);
          free(v23);
          if (__valid_fsp(*(a1 + 216)))
          {
            v25 = 2989;
          }

          else
          {
            v25 = 3072;
          }

          *v25 = -559038737;
          abort();
        }
      }

      else
      {
        v26 = v46;
        if (*&PageInner[8 * v46 + 4] >= 2uLL)
        {
          Size = directoryStorePageGetSize(PageInner);
          shiftEntries(v20, v26, Size);
          v26 = v46;
        }

        *v20 += 16;
        v21 = v26;
      }

      v28 = &v19[8 * v21];
      *(v28 + 1) = a2;
      *(v28 + 2) = a3;
      dirtyStoragePage(a1, v20);
      v29 = threadData[9 * v42 + 1] + 320 * v41;
      *(v29 + 312) = v15;
      v30 = *(v29 + 232);
      if (v30)
      {
        v30(*(v29 + 288));
      }

      dropThreadId(v42, 0, v8);
    }
  }

  db_write_unlock(a1 + 4424);
  result = setCrashStateTarget(v7);
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _directoryStoreSetParent(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v31 = 0;
  v30 = 0u;
  memset(v29, 0, sizeof(v29));
  if (!a3)
  {
    v17 = __si_assert_copy_extra(*(a1 + 216));
    v10 = v17;
    v18 = "";
    if (v17)
    {
      v18 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3541, "parent", v18);
LABEL_18:
    free(v10);
    if (__valid_fsp(*(a1 + 216)))
    {
      v19 = 2989;
    }

    else
    {
      v19 = 3072;
    }

    *v19 = -559038737;
    abort();
  }

  if (a2 == a3)
  {
    v20 = __si_assert_copy_extra(*(a1 + 216));
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3542, "item!=parent", v22);
    free(v21);
    if (!__valid_fsp(*(a1 + 216)))
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  dirtyStore(a1);
  if (dword_1EBF46AE4 >= 5)
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v34 = a2;
      v35 = 2048;
      v36 = a3;
      _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, "Set %llx/%llx", buf, 0x16u);
    }

    *__error() = v24;
  }

  ItemOffset = directoryStoreTreeFindItemOffset(a1, 0x440uLL, a2, v29, &v32, 0, 1);
  PageInner = _directoryStoreGetPageInner(a1, *(&v30 + 1), buf);
  v8 = PageInner;
  if (ItemOffset)
  {
    if (*ItemOffset != a2 || ItemOffset[1] != a3)
    {
      v9 = __si_assert_copy_extra(*(a1 + 216));
      v10 = v9;
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3549, "(element==0 || (getStoreOID(element->fileId)==item && getOffset(element->childPage) == (offset_t)parent))", v11);
      goto LABEL_18;
    }
  }

  else
  {
    v12 = v32;
    if (*&PageInner[8 * v32 + 4] >= 2uLL)
    {
      Size = directoryStorePageGetSize(PageInner);
      shiftEntries(v8, v12, Size);
    }

    *v8 += 16;
  }

  v14 = &v8[8 * v32];
  *(v14 + 1) = a2;
  *(v14 + 2) = a3;
  dirtyStoragePage(a1, v8);
  result = _directoryStoreGetParent(a1, a2);
  if (result != a3)
  {
    v26 = __si_assert_copy_extra(0);
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3567, "parent == _directoryStoreGetParent(store, item)", v28);
    free(v27);
    if (!__valid_fs(-1))
    {
LABEL_30:
      v23 = 3072;
LABEL_31:
      *v23 = -559038737;
      abort();
    }

LABEL_23:
    v23 = 2989;
    goto LABEL_31;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t directoryStoreEnsurePath(uint64_t a1, unint64_t a2, uint64_t *a3, int a4, uint64_t a5, BOOL *a6, void *a7, _DWORD *a8)
{
  v109 = *MEMORY[0x1E69E9840];
  v16 = setCrashStateTarget(2);
  *a6 = 0;
  if (!a2)
  {
    result = 0;
    goto LABEL_75;
  }

  v17 = v16;
  _db_write_lock(a1 + 4424);
  LODWORD(v18) = 0;
  v100 = 0;
  if (!storageResolvePtr(a1, 0, 1, 1))
  {
    v23 = 0;
    goto LABEL_70;
  }

  v86 = a7;
  v19 = OSAtomicIncrement32(&exceptionSequenceNum);
  v20 = *(a1 + 216);
  v84 = a4;
  if (v20)
  {
    v21 = *(v20 + 44);
  }

  else
  {
    v21 = -1;
  }

  v24 = setThreadIdAndInfo(v21, sStorageExceptionCallbacks, a1, 1, v19);
  v98 = HIDWORD(v24);
  v99 = v24;
  v96 = v26;
  v97 = v25;
  v18 = threadData[9 * v24 + 1] + 320 * HIDWORD(v24);
  v27 = *(v18 + 312);
  v28 = *(v18 + 224);
  if (v28)
  {
    v28(*(v18 + 288));
  }

  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v18 + 312) = v27;
    CIOnThreadCleanUpReset(v96);
    dropThreadId(v99, 1, v19);
    CICleanUpReset(v99, v97);
    v23 = 0;
    LODWORD(v18) = 0;
    goto LABEL_70;
  }

  v88 = v27;
  dirtyStore(a1);
  v29 = OSAtomicIncrement32(&exceptionSequenceNum);
  v30 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v29);
  v94 = HIDWORD(v30);
  v95 = v30;
  v92 = v32;
  v93 = v31;
  v33 = threadData[9 * v30 + 1] + 320 * HIDWORD(v30);
  v85 = *(v33 + 312);
  v34 = *(v33 + 224);
  if (v34)
  {
    v34(*(v33 + 288));
  }

  v89 = v19;
  if (_setjmp(v33))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v33 + 312) = v85;
    CIOnThreadCleanUpReset(v92);
    dropThreadId(v95, 1, v29);
    CICleanUpReset(v95, v93);
    v23 = 0;
    LODWORD(v18) = 0;
    v35 = v88;
    goto LABEL_67;
  }

  v87 = v29;
  v90 = v17;
  v91 = a8;
  v18 = 0;
  v36 = -1;
  v37 = a2;
  while (1)
  {
    v23 = v37 != 2;
    if (v37 == 2)
    {
      if (v36 != -1)
      {
        v44 = v36;
        v45 = v18;
LABEL_48:
        if (v44 < 1)
        {
          v52 = a2;
LABEL_55:
          v57 = &a3[v44];
          if (v45 && v44 == v45)
          {
            v58 = *(v57 - 1);
            v59 = v44;
            if (v58 != 2)
            {
              _directoryStoreSetParent(a1, v58, 2);
              v59 = v44 + 1;
              *v57 = 2;
            }
          }

          else
          {
            v59 = v45;
            if (!v45 && !v44 && v52 != 2)
            {
              _directoryStoreSetParent(a1, v52, 2);
              *a3 = 2;
              v42 = 1;
              goto LABEL_63;
            }
          }

          if (v44)
          {
            *v86 = *(v57 - 1);
          }

          v42 = v59;
          goto LABEL_63;
        }

        dirtyStore(a1);
        v49 = v44;
        v50 = a3;
        v51 = a2;
        while (1)
        {
          v52 = v51;
          v53 = v50;
          _directoryStoreSetParent(a1, v51, *v50);
          v54 = v53;
          v17 = v90;
          v56 = *v54;
          v50 = v54 + 1;
          v55 = v56;
          if (v56 == 2)
          {
            goto LABEL_55;
          }

          if (v55 == a2)
          {
            break;
          }

          v52 = v55;
          v51 = v55;
          if (!--v49)
          {
            goto LABEL_55;
          }
        }

        v80 = __si_assert_copy_extra(*(a1 + 216));
        v68 = v80;
        v81 = "";
        if (v80)
        {
          v81 = v80;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3643, "item!=inItem", v81);
LABEL_92:
        free(v68);
        if (__valid_fsp(*(a1 + 216)))
        {
          v82 = 2989;
        }

        else
        {
          v82 = 3072;
        }

        *v82 = -559038737;
        abort();
      }

      if (v18)
      {
        if (a3[v18 - 1] == 2)
        {
          v44 = v18;
          v45 = v18;
          goto LABEL_48;
        }

        v48 = v18;
      }

      else
      {
        v48 = 0;
      }

      a3[v48] = 2;
      v45 = v18 + 1;
      v44 = v18 + 1;
      goto LABEL_48;
    }

    Parent = _directoryStoreGetParent(a1, v37);
    if (Parent)
    {
      if (v18 < 0x200)
      {
        if (v37 != Parent)
        {
          a3[v18] = Parent;
          if (v36 == -1)
          {
            v39 = v18;
          }

          else
          {
            v39 = v36;
          }

          v40 = Parent;
          goto LABEL_33;
        }

        v43 = v37;
        v42 = v18;
LABEL_39:
        v46 = *__error();
        v47 = _SILogForLogForCategory(6);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v66 = *a3;
          *buf = 136315906;
          v102 = "directoryStoreEnsurePath";
          v103 = 1024;
          v104 = 3658;
          v105 = 2048;
          v106 = v43;
          v107 = 2048;
          v108 = v66;
          _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: Move would loop in reverse directory store, skipping %lld to %lld", buf, 0x26u);
        }

        *__error() = v46;
LABEL_63:
        v60 = v85;
        v100 = 1;
        LODWORD(v18) = v42;
        a8 = v91;
        goto LABEL_64;
      }

      v67 = __si_assert_copy_extra(*(a1 + 216));
      v68 = v67;
      v69 = "";
      if (v67)
      {
        v69 = v67;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3614, "depth<512", v69);
      goto LABEL_92;
    }

    if (v18 >= v84)
    {
      v70 = __si_assert_copy_extra(*(a1 + 216));
      __message_assert("%s:%u: failed assertion '%s' %s %d, %d, %d, %llx", "FileTree.c");
      goto LABEL_84;
    }

    v40 = a3[v18];
    if (v37 == v40)
    {
      v70 = __si_assert_copy_extra(*(a1 + 216));
      v83 = a3[v18];
      __message_assert("%s:%u: failed assertion '%s' %s %d, %d, %d, %llx, %llx", "FileTree.c", 3606);
LABEL_84:
      free(v70);
      if (__valid_fsp(*(a1 + 216)))
      {
        v71 = 2989;
      }

      else
      {
        v71 = 3072;
      }

      *v71 = -559038737;
      abort();
    }

    if (v36 != -1)
    {
      break;
    }

    v39 = -1;
LABEL_33:
    v41 = v18 + 1;
    if (v40 != a2)
    {
      ++v18;
      v36 = v39;
      v37 = v40;
      if (v40 != a5)
      {
        continue;
      }
    }

    v42 = v41;
    v43 = v40;
    goto LABEL_39;
  }

  v72 = __si_assert_copy_extra(*(a1 + 216));
  si_analytics_log_4767(v72, v73, v74, v75, v76, v77, v78, v79, "FileTree.c");
  free(v72);
  v23 = 0;
  a8 = v91;
  v60 = v85;
LABEL_64:
  *a6 = v23;
  v61 = threadData[9 * v95 + 1] + 320 * v94;
  *(v61 + 312) = v60;
  v62 = *(v61 + 232);
  v35 = v88;
  if (v62)
  {
    v62(*(v61 + 288));
  }

  dropThreadId(v95, 0, v87);
LABEL_67:
  v63 = threadData[9 * v99 + 1] + 320 * v98;
  *(v63 + 312) = v35;
  v64 = *(v63 + 232);
  if (v64)
  {
    v64(*(v63 + 288));
  }

  dropThreadId(v99, 0, v89);
LABEL_70:
  db_write_unlock(a1 + 4424);
  *a8 = v18;
  setCrashStateTarget(v17);
  if (v23)
  {
    result = 0xFFFFFFFFLL;
  }

  else if (v100)
  {
    result = v18;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_75:
  v65 = *MEMORY[0x1E69E9840];
  return result;
}

void si_analytics_log_4767(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v15 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  string[1] = &a9;
  vasprintf(string, "%s:%u: failure log '%s' %s %d, %d, %d", &a9);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v9 = xpc_string_create(string[0]);
  values = v9;
  v10 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v10);
  xpc_release(v9);
  free(string[0]);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t directoryStoreWriterGetPath(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = setCrashStateTarget(2);
  _db_write_lock(a1 + 4424);
  if (!storageResolvePtr(a1, 0, 1, 1))
  {
LABEL_11:
    v16 = 0;
    goto LABEL_21;
  }

  v7 = OSAtomicIncrement32(&exceptionSequenceNum);
  v8 = *(a1 + 216);
  if (v8)
  {
    v9 = *(v8 + 44);
  }

  else
  {
    v9 = -1;
  }

  v10 = setThreadIdAndInfo(v9, sStorageExceptionCallbacks, a1, 1, v7);
  v30 = HIDWORD(v10);
  v31 = v10;
  v29 = __PAIR64__(v11, v12);
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v28 = v31;
  v27 = v30;
  v26 = v29;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v25, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v26);
    dropThreadId(v28, 1, v7);
    CICleanUpReset(v28, HIDWORD(v26));
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    v17 = 0;
  }

  else
  {
    v18 = 0;
    v19 = a2;
    do
    {
      v20 = v18;
      Parent = _directoryStoreGetParent(a1, v19);
      if (!Parent)
      {
        break;
      }

      v19 = Parent;
      v18 = v20 + 1;
      *(a3 + 8 * v20++) = Parent;
    }

    while (Parent != 2);
    v17 = v20;
  }

  v22 = threadData[9 * v28 + 1] + 320 * v27;
  *(v22 + 312) = v14;
  v23 = *(v22 + 232);
  if (v23)
  {
    v23(*(v22 + 288));
  }

  dropThreadId(v28, 0, v7);
  v16 = v17;
LABEL_21:
  db_write_unlock(a1 + 4424);
  setCrashStateTarget(v6);
  return v16;
}

uint64_t reverseDirStoreInit(uint64_t a1, atomic_uint *a2, int a3, char a4, void *aBlock)
{
  v57 = *MEMORY[0x1E69E9840];
  v47 = 0;
  if (a3)
  {
    v47 = storageInit(a1, 0x10000, 0x40uLL, a2, 1, 1, a4, 102, aBlock);
    if (v47 == 1)
    {
      v47 = 0;
      if (storageResolvePtr(a1, 0, 1, 1))
      {
        v9 = OSAtomicIncrement32(&exceptionSequenceNum);
        v10 = *(a1 + 216);
        if (v10)
        {
          v11 = *(v10 + 44);
        }

        else
        {
          v11 = -1;
        }

        v24 = setThreadIdAndInfo(v11, sStorageExceptionCallbacks, a1, 1, v9);
        *buf = HIDWORD(v24);
        LODWORD(v54[0]) = v24;
        LODWORD(v40) = v25;
        v46 = v26;
        v27 = threadData[9 * v24 + 1] + 320 * HIDWORD(v24);
        v28 = *(v27 + 312);
        v29 = *(v27 + 224);
        if (v29)
        {
          v29(*(v27 + 288));
        }

        v45 = v54[0];
        v44 = *buf;
        v43 = v40;
        v42 = v46;
        if (_setjmp(v27))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(v56[0]) = 0;
            _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v56, 2u);
          }

          *(v27 + 312) = v28;
          CIOnThreadCleanUpReset(v42);
          dropThreadId(v45, 1, v9);
          CICleanUpReset(v45, v43);
        }

        else
        {
          memset(v56, 0, 192);
          v41 = 0;
          v30 = storageAllocOffset(a1, 0x400u, v56, &v41);
          if (v41)
          {
            dirtyStorageOffsets(a1, v56, v41);
          }

          if (v30)
          {
            v31 = storageResolvePtr(a1, v30, 1024, 1);
            bzero(v31, 0x400uLL);
            v31[2] = 4;
          }

          if (directoryStoreNewTreePage(a1, 0, 3730, 0) != 1088)
          {
            v36 = __si_assert_copy_extra(*(a1 + 216));
            v37 = v36;
            v38 = "";
            if (v36)
            {
              v38 = v36;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3731, "getOffset(addr) == REVERSE_MAP_ROOT_OFFSET", v38);
            free(v37);
            if (__valid_fsp(*(a1 + 216)))
            {
              v39 = 2989;
            }

            else
            {
              v39 = 3072;
            }

            *v39 = -559038737;
            abort();
          }

          v47 = 1;
          v32 = threadData[9 * v45 + 1] + 320 * v44;
          *(v32 + 312) = v28;
          v33 = *(v32 + 232);
          if (v33)
          {
            v33(*(v32 + 288));
          }

          dropThreadId(v45, 0, v9);
        }
      }
    }
  }

  else
  {
    bzero(v56, 0x400uLL);
    v40 = v56;
    if (fd_pread(a2, v56, 0x400uLL, 72) == 1024)
    {
      v47 = storageHeaderRestore(a1, &v40);
      if (v47 == 1)
      {
        v47 = storageInit(a1, 0x10000, 0x40uLL, a2, 0, 1, a4, 102, aBlock);
      }

      else
      {
        v55 = 0;
        v12 = v56;
        v13.i64[0] = 0xA0A0A0A0A0A0A0A0;
        v13.i64[1] = 0xA0A0A0A0A0A0A0A0;
        v14.i64[0] = 0x3030303030303030;
        v14.i64[1] = 0x3030303030303030;
        v15.i64[0] = 0x3737373737373737;
        v15.i64[1] = 0x3737373737373737;
        v16.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v16.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        memset(v54, 0, sizeof(v54));
        v17.i64[0] = 0xA0A0A0A0A0A0A0ALL;
        v17.i64[1] = 0xA0A0A0A0A0A0A0ALL;
        for (i = 0; i != 8; i += 2)
        {
          v19 = *v12++;
          v20 = &v54[i];
          v58.val[0] = vbslq_s8(vcgtq_u8(v13, v19), vsraq_n_u8(v14, v19, 4uLL), vsraq_n_u8(v15, v19, 4uLL));
          v21 = vandq_s8(v19, v16);
          v58.val[1] = vbslq_s8(vcgtq_u8(v17, v21), vorrq_s8(v21, v14), vaddq_s8(v21, v15));
          vst2q_s8(v20, v58);
        }

        v22 = *__error();
        v23 = _SILogForLogForCategory(6);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v49 = "reverseDirStoreInit";
          v50 = 1024;
          v51 = 3751;
          v52 = 2080;
          v53 = v54;
          _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: init reverse failed %s", buf, 0x1Cu);
        }

        *__error() = v22;
        fd_release(a2);
      }
    }
  }

  result = v47;
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void _reverseStoreIterate(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    _db_write_lock(a1 + 4424);
    v27 = 0;
    __new = 0;
    v29 = 0;
    storage_reader_init(a1, &v27);
    if (v29 == 1)
    {
      v4 = OSAtomicIncrement32(&exceptionSequenceNum);
      v5 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, &v27, 0, v4);
      v25 = HIDWORD(v5);
      *buf = v5;
      v24 = __PAIR64__(v6, v7);
      v8 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
      v9 = *(v8 + 312);
      v10 = *(v8 + 224);
      if (v10)
      {
        v10(*(v8 + 288));
      }

      v23 = *buf;
      v22 = v25;
      v21 = v24;
      if (_setjmp(v8))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v20, 2u);
        }

        *(v8 + 312) = v9;
        CIOnThreadCleanUpReset(v21);
        dropThreadId(v23, 1, v4);
        CICleanUpReset(v23, HIDWORD(v21));
      }

      else
      {
        v20[0] = 0;
        Page = _directoryStoreReaderGetPage(&v27, 0x440uLL, v20, v11, v12);
        if (Page)
        {
          if (v20[0])
          {
            v16 = __si_assert_copy_extra(*(a1 + 216));
            v17 = v16;
            v18 = "";
            if (v16)
            {
              v18 = v16;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3976, "(!page)", v18);
            free(v17);
            if (__valid_fsp(*(a1 + 216)))
            {
              v19 = 2989;
            }

            else
            {
              v19 = 3072;
            }

            *v19 = -559038737;
            abort();
          }

          _reverseStoreIterateTreePage(a1, &v27, Page, 0x440, 0, a2);
        }

        v14 = threadData[9 * v23 + 1] + 320 * v22;
        *(v14 + 312) = v9;
        v15 = *(v14 + 232);
        if (v15)
        {
          v15(*(v14 + 288));
        }

        dropThreadId(v23, 0, v4);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    db_write_unlock(a1 + 4424);
    if (__new)
    {
      _release_read_window(&availableReaders, __new);
    }
  }
}

uint64_t _reverseStoreIterateTreePage(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned __int16 *a4, int a5, uint64_t a6)
{
  *(&v72[2] + 6) = *MEMORY[0x1E69E9840];
  if (a3)
  {
    Size = directoryTreePageGetSize(*a3, *(a3 + 2));
    v15 = a3[3];
    v63 = Size;
    if (dword_1EBF46AE4 >= 5)
    {
      v51 = a1;
      v52 = a3[2];
      v53 = *__error();
      v54 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219008;
        v68 = a3;
        v69 = 1024;
        *v70 = a5;
        *&v70[4] = 1024;
        *&v70[6] = v15;
        v71 = 1024;
        LODWORD(v72[0]) = v52;
        WORD2(v72[0]) = 1024;
        *(v72 + 6) = v63;
        _os_log_impl(&dword_1C278D000, v54, OS_LOG_TYPE_DEFAULT, "Tree page:%p level: %d depth: %d origin: %d size: %d", buf, 0x24u);
      }

      *__error() = v53;
      a1 = v51;
      Size = v63;
    }

    if (v15 != a5)
    {
      v16 = a2;
      v17 = *__error();
      v18 = _SILogForLogForCategory(6);
      v19 = dword_1EBF46AE4 < 3;
      if (os_log_type_enabled(v18, (dword_1EBF46AE4 < 3)))
      {
        *buf = 134218496;
        v68 = a4;
        v69 = 1024;
        *v70 = v15;
        *&v70[4] = 1024;
        *&v70[6] = a5;
        _os_log_impl(&dword_1C278D000, v18, v19, "*warn* Flat page: 0x%8.8llx depth: %d exected: %d", buf, 0x18u);
      }

      *__error() = v17;
      a2 = v16;
      Size = v63;
    }

    if (Size)
    {
      v55 = v15;
      v20 = 0;
      v56 = a3;
      v21 = a3 + 4;
      v22 = (a5 + 1);
      v13.n128_u64[0] = 134218496;
      v62 = a3 + 4;
      v64 = v22;
      v60 = a2;
      v61 = a1;
      do
      {
        v23 = *&v21[4 * v20];
        if (v23)
        {
          if (dword_1EBF46AE4 >= 5)
          {
            v38 = *__error();
            v39 = _SILogForLogForCategory(6);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218752;
              v68 = v56;
              v69 = 1024;
              *v70 = v55;
              *&v70[4] = 1024;
              *&v70[6] = v20;
              v71 = 2048;
              v72[0] = v23;
              _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "page:%p depth: %d idx: %d offset: 0x%8.8llx", buf, 0x22u);
            }

            *__error() = v38;
            v22 = v64;
          }

          v65 = 0;
          Page = _directoryStoreReaderGetPage(a2, v23, &v65, v13, v14);
          v25 = Page;
          if (v65)
          {
            v66 = 0;
            if (Page)
            {
              v26 = directoryStorePageGetSize(Page);
              v27 = *v25;
              if ((64 << *(v25 + 2)) - 8 < v27)
              {
                v44 = __si_assert_copy_extra(0);
                v45 = v44;
                v46 = "";
                if (v44)
                {
                  v46 = v44;
                }

                __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 287, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v46, *v25, (64 << *(v25 + 2)) - 8);
                free(v45);
                if (__valid_fs(-1))
                {
                  goto LABEL_53;
                }

LABEL_57:
                v47 = 3072;
LABEL_58:
                *v47 = -559038737;
                abort();
              }

              v28 = v26;
              v29 = v25[3];
              if (dword_1EBF46AE4 >= 5)
              {
                v59 = v25[2];
                v40 = *__error();
                v41 = _SILogForLogForCategory(6);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134219008;
                  v68 = v25;
                  v69 = 1024;
                  *v70 = v64;
                  *&v70[4] = 1024;
                  *&v70[6] = v29;
                  v71 = 1024;
                  LODWORD(v72[0]) = v59;
                  WORD2(v72[0]) = 1024;
                  *(v72 + 6) = v28;
                  _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "Flat page:%p level: %d depth: %d origin: %d size: %d", buf, 0x24u);
                }

                *__error() = v40;
                v21 = v62;
                v22 = v64;
              }

              if (v22 != v29)
              {
                v57 = *__error();
                v30 = _SILogForLogForCategory(6);
                v31 = dword_1EBF46AE4 < 3;
                if (os_log_type_enabled(v30, (dword_1EBF46AE4 < 3)))
                {
                  *buf = 134218496;
                  v68 = v23;
                  v69 = 1024;
                  *v70 = v29;
                  *&v70[4] = 1024;
                  *&v70[6] = v64;
                  _os_log_impl(&dword_1C278D000, v30, v31, "*warn* Flat page: 0x%8.8llx depth: %d exected: %d", buf, 0x18u);
                }

                *__error() = v57;
                v21 = v62;
                v22 = v64;
              }

              if (v28)
              {
                v32 = v27 >> 4;
                v33 = (v25 + 8);
                v34 = 1;
                Size = v63;
                do
                {
                  v35 = *(v33 - 1);
                  if (v35)
                  {
                    v36 = *v33;
                    if (dword_1EBF46AE4 >= 5)
                    {
                      v58 = *__error();
                      v37 = _SILogForLogForCategory(6);
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218240;
                        v68 = v35;
                        v69 = 2048;
                        *v70 = v36;
                        _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "oid: %lld parent: %lld", buf, 0x16u);
                      }

                      *__error() = v58;
                      Size = v63;
                    }

                    --v32;
                    if (a6)
                    {
                      (*(a6 + 16))(a6, v35, v36, &v66);
                    }
                  }

                  if (v34 >= v28)
                  {
                    break;
                  }

                  v33 += 2;
                  ++v34;
                }

                while ((v66 & 1) == 0);
                v21 = v62;
                v22 = v64;
                if ((v66 & 1) == 0 && v32)
                {
LABEL_54:
                  v48 = __si_assert_copy_extra(*(v61 + 216));
                  v49 = v48;
                  v50 = "";
                  if (v48)
                  {
                    v50 = v48;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3839, "itemCount == 0", v50);
                  free(v49);
                  if (!__valid_fsp(*(v61 + 216)))
                  {
                    goto LABEL_57;
                  }

LABEL_53:
                  v47 = 2989;
                  goto LABEL_58;
                }

                a2 = v60;
                a1 = v61;
                if (v66)
                {
LABEL_49:
                  result = 1;
                  goto LABEL_48;
                }
              }

              else
              {
                Size = v63;
                if (v27 > 0xF)
                {
                  goto LABEL_54;
                }

                a2 = v60;
                a1 = v61;
              }
            }
          }

          else if (_reverseStoreIterateTreePage(a1, a2, Page, v23, v22, a6))
          {
            goto LABEL_49;
          }
        }

        ++v20;
      }

      while (v20 != Size);
    }
  }

  result = 0;
LABEL_48:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t flushReverseStore(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = setCrashStateTarget(2);
  v3 = *(a1 + 4416);
  v5 = v3 == -1073623027 || v3 == -804450864 || v3 == 2;
  if (v5 || *(a1 + 232) == *(a1 + 240))
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(6);
    v8 = 2 * (dword_1EBF46AE4 < 4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(a1 + 4416);
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&dword_1C278D000, v7, v8, "skip flushReverseStore; %x", buf, 8u);
    }

    v10 = 0;
    *__error() = v6;
  }

  else
  {
    if (!storageResolvePtr(a1, 0, 1, 1))
    {
LABEL_24:
      v10 = 0;
      goto LABEL_12;
    }

    v13 = OSAtomicIncrement32(&exceptionSequenceNum);
    v14 = *(a1 + 216);
    if (v14)
    {
      v15 = *(v14 + 44);
    }

    else
    {
      v15 = -1;
    }

    v16 = setThreadIdAndInfo(v15, sStorageExceptionCallbacks, a1, 1, v13);
    v34 = HIDWORD(v16);
    v35 = v16;
    v33 = __PAIR64__(v17, v18);
    v19 = threadData[9 * v16 + 1] + 320 * HIDWORD(v16);
    v20 = *(v19 + 312);
    v21 = *(v19 + 224);
    if (v21)
    {
      v21(*(v19 + 288));
    }

    v32 = v35;
    v31 = v34;
    v30 = v33;
    if (_setjmp(v19))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v19 + 312) = v20;
      CIOnThreadCleanUpReset(v30);
      dropThreadId(v32, 1, v13);
      CICleanUpReset(v32, HIDWORD(v30));
      goto LABEL_24;
    }

    dirtyStore(a1);
    v22 = storageResolvePtr(a1, 0x40uLL, 1024, 1);
    *buf = v22 + 8;
    storageHeaderStore(a1, buf);
    dirtyStoragePage(a1, v22);
    v23 = storageSyncPages(a1, a1 + 4376, 0x20000uLL);
    v24 = *__error();
    v25 = _SILogForLogForCategory(6);
    v26 = 2 * (dword_1EBF46AE4 < 4);
    if (os_log_type_enabled(v25, v26))
    {
      v29[0] = 0;
      _os_log_impl(&dword_1C278D000, v25, v26, "completed flushReverseStore", v29, 2u);
    }

    *__error() = v24;
    v27 = threadData[9 * v32 + 1] + 320 * v31;
    *(v27 + 312) = v20;
    v28 = *(v27 + 232);
    if (v28)
    {
      v28(*(v27 + 288));
    }

    dropThreadId(v32, 0, v13);
    v10 = v23;
  }

LABEL_12:
  setCrashStateTarget(v2);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t commitSyncReverseStore(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = setCrashStateTarget(2);
  if (*(a1 + 4416) == -1073623027)
  {
    v5 = 0;
    goto LABEL_26;
  }

  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = -804450864;
  }

  *(a1 + 4416) = v6;
  if (!storageResolvePtr(a1, 0, 1, 1))
  {
LABEL_16:
    v5 = 14;
    goto LABEL_26;
  }

  v7 = OSAtomicIncrement32(&exceptionSequenceNum);
  v8 = *(a1 + 216);
  if (v8)
  {
    v9 = *(v8 + 44);
  }

  else
  {
    v9 = -1;
  }

  v10 = setThreadIdAndInfo(v9, sStorageExceptionCallbacks, a1, 1, v7);
  v28 = HIDWORD(v10);
  v29 = v10;
  v26 = v12;
  v27 = v11;
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v26);
    dropThreadId(v29, 1, v7);
    CICleanUpReset(v29, v27);
    goto LABEL_16;
  }

  if (*(a1 + 232) <= 0x43FuLL)
  {
    storageAllocOffsetFromEnd(a1, *(a1 + 224) + 960);
  }

  v16 = storageResolvePtr(a1, 0x40uLL, 1024, 1);
  *(v16 + 4) = *(a1 + 4416);
  v17 = *MEMORY[0x1E69E9AB8];
  fd_system_status_stall_if_busy();
  v18 = msync((v16 & ~v17), 0x1000uLL, 16);
  if (v18 == -1)
  {
    v18 = *__error();
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(6);
  v21 = 2 * (dword_1EBF46AE4 < 4);
  if (os_log_type_enabled(v20, v21))
  {
    *buf = 67109120;
    v31 = v18;
    _os_log_impl(&dword_1C278D000, v20, v21, "completed commitSyncReverseStore: %d", buf, 8u);
  }

  *__error() = v19;
  v22 = threadData[9 * v29 + 1] + 320 * v28;
  *(v22 + 312) = v14;
  v23 = *(v22 + 232);
  if (v23)
  {
    v23(*(v22 + 288));
  }

  dropThreadId(v29, 0, v7);
  v5 = v18;
LABEL_26:
  setCrashStateTarget(v4);
  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t shadowReverseStore(uint64_t a1, char a2, _DWORD *a3)
{
  v110 = *MEMORY[0x1E69E9840];
  v6 = setCrashStateTarget(2);
  if (!storageResolvePtr(a1, 0, 1, 1))
  {
LABEL_11:
    v16 = 0;
LABEL_12:
    v17 = *__error();
    v18 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v102 = "shadowReverseStore";
      v103 = 1024;
      v104 = 4218;
      v105 = 1024;
      v106 = v16;
      _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: shadowReverseStore fail. metadata = %d", buf, 0x18u);
    }

    *__error() = v17;
    result = 104;
    goto LABEL_15;
  }

  v7 = OSAtomicIncrement32(&exceptionSequenceNum);
  *buf = 0;
  v100 = 0;
  v99 = 0;
  v8 = *(a1 + 216);
  if (v8)
  {
    v9 = *(v8 + 44);
  }

  else
  {
    v9 = -1;
  }

  v10 = setThreadIdAndInfo(v9, sStorageExceptionCallbacks, a1, 1, v7);
  *buf = v10;
  v99 = v12;
  v100 = __PAIR64__(HIDWORD(v10), v11);
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v98 = *buf;
  v97 = HIDWORD(v100);
  v96 = __PAIR64__(v100, v99);
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v95 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v95, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v96);
    dropThreadId(v98, 1, v7);
    CICleanUpReset(v98, HIDWORD(v96));
    goto LABEL_11;
  }

  v21 = *(storageResolvePtr(a1, 0x40uLL, 1024, 1) + 4);
  v22 = threadData[9 * v98 + 1] + 320 * v97;
  *(v22 + 312) = v14;
  v23 = *(v22 + 232);
  if (v23)
  {
    v23(*(v22 + 288));
  }

  dropThreadId(v98, 0, v7);
  if (!*(a1 + 4416) || !v21)
  {
    v16 = v21;
    goto LABEL_12;
  }

  if (v21 != -804450864)
  {
    if (v21 == 2)
    {
      v77 = __si_assert_copy_extra(*(a1 + 216));
      v78 = v77;
      v79 = "";
      if (v77)
      {
        v79 = v77;
      }

      __message_assert("%s:%u: failed assertion '%s' %s invalid state", "FileTree.c", 4224, "metadata != kIndexShutDownStateFastFlush", v79);
      free(v78);
      if (__valid_fsp(*(a1 + 216)))
      {
        v80 = 2989;
      }

      else
      {
        v80 = 3072;
      }

      *v80 = -559038737;
      abort();
    }

    v24 = *__error();
    v25 = _SILogForLogForCategory(6);
    v26 = 2 * (dword_1EBF46AE4 < 4);
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_25;
    }

    *buf = 67109120;
    LODWORD(v102) = v21;
    v27 = "shadowReverseStore: %d";
    v28 = v25;
    v29 = v26;
    v30 = 8;
    goto LABEL_24;
  }

  v31 = *(a1 + 216);
  if (v31)
  {
    v32 = *(v31 + 44);
  }

  else
  {
    v32 = 0xFFFFFFFFLL;
  }

  if (isRegisteredForCloning(v32))
  {
    if (copyFileFallback(v32, "reverseDirectoryStore", v32, "reverseDirectoryStore.shadow", a3, 0, 1))
    {
      bit_vector_set_bits_4698((a1 + 4376), 0, *(a1 + 4376));
      v24 = *__error();
      v33 = _SILogForLogForCategory(6);
      v34 = 2 * (dword_1EBF46AE4 < 4);
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v27 = "Completed shadowReverseStore";
      v28 = v33;
      v29 = v34;
      v30 = 2;
LABEL_24:
      _os_log_impl(&dword_1C278D000, v28, v29, v27, buf, v30);
LABEL_25:
      *__error() = v24;
LABEL_26:
      result = 0;
      goto LABEL_15;
    }

    v35 = *__error();
    v36 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v102 = "shadowReverseStore";
      v103 = 1024;
      v104 = 4241;
      _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: copyFile error, src: reverseDirectoryStore, dst: reverseDirectoryStore.shadow", buf, 0x12u);
    }

    *__error() = v35;
  }

  v37 = *(a1 + 232);
  v38 = v6;
  memset(v109, 0, sizeof(v109));
  v93 = 0;
  v94 = 0;
  sibling_protected = fd_create_sibling_protected(*(a1 + 216), "reverseDirectoryStore.shadow", 514, 0);
  fd_no_cache(sibling_protected);
  if (!sibling_protected)
  {
    v45 = *__error();
    v46 = *__error();
    v47 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v102 = "shadowReverseStore";
      v103 = 1024;
      v104 = 4265;
      v105 = 1024;
      v106 = v45;
      v107 = 2080;
      v108 = "reverseDirectoryStore.shadow";
      _os_log_error_impl(&dword_1C278D000, v47, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
    }

    v48 = 0;
    v49 = -1;
    v50 = v46;
    goto LABEL_97;
  }

  v40 = (v37 + 0x1FFFF) >> 17;
  if ((a2 & 1) == 0 && v40 >= *(a1 + 4376))
  {
    v40 = *(a1 + 4376);
  }

  v41 = malloc_type_malloc(0x20000uLL, 0x51B4EE50uLL);
  if (!v41)
  {
    v81 = __si_assert_copy_extra(0);
    v82 = v81;
    v83 = "";
    if (v81)
    {
      v83 = v81;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 4275, "readBuffer", v83);
    free(v82);
    if (__valid_fs(-1))
    {
      v84 = 2989;
    }

    else
    {
      v84 = 3072;
    }

    *v84 = -559038737;
    abort();
  }

  v42 = v41;
  v43 = *(a1 + 232);
  v44 = *(a1 + 216);
  if (!(v43 >> 17))
  {
    if (fd_pread(v44, v42, v43, 0) != -1)
    {
      if (fd_pwrite(sibling_protected, v42, *(a1 + 232), 0) != -1)
      {
        bit_vector_internal_touch_for_set_4691((a1 + 4376), 0);
        CFBitVectorSetBitAtIndex(*(a1 + 4392), 0, 0);
        goto LABEL_84;
      }

      v45 = *__error();
      v66 = *__error();
      v67 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_96;
      }

      *buf = 136315650;
      v102 = "shadowReverseStore";
      v103 = 1024;
      v104 = 4284;
      v105 = 1024;
      v106 = v45;
      v68 = "%s:%d: pwrite err: %d";
      goto LABEL_95;
    }

    v45 = *__error();
    v66 = *__error();
    v67 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v102 = "shadowReverseStore";
      v103 = 1024;
      v104 = 4279;
      v105 = 1024;
      v106 = v45;
      v68 = "%s:%d: read err: %d";
LABEL_95:
      _os_log_error_impl(&dword_1C278D000, v67, OS_LOG_TYPE_ERROR, v68, buf, 0x18u);
      goto LABEL_96;
    }

    goto LABEL_96;
  }

  v51 = _fd_acquire_fd(v44, &v93);
  if (v51 == -1)
  {
    v45 = *__error();
    v66 = *__error();
    v67 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v102 = "shadowReverseStore";
      v103 = 1024;
      v104 = 4292;
      v105 = 1024;
      v106 = v45;
      v68 = "%s:%d: fd_open err: %d";
      goto LABEL_95;
    }

LABEL_96:
    v49 = -1;
    v50 = v66;
    v48 = v42;
LABEL_97:
    v69 = -1;
LABEL_98:
    *__error() = v50;
    goto LABEL_99;
  }

  __fd = v51;
  v52 = _fd_acquire_fd(sibling_protected, &v94);
  if (v52 == -1)
  {
    v45 = *__error();
    v72 = *__error();
    v73 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v102 = "shadowReverseStore";
      v103 = 1024;
      v104 = 4298;
      v105 = 1024;
      v106 = v45;
      _os_log_error_impl(&dword_1C278D000, v73, OS_LOG_TYPE_ERROR, "%s:%d: fd_open err: %d", buf, 0x18u);
    }

    v69 = -1;
    v50 = v72;
    v48 = v42;
    v49 = __fd;
    goto LABEL_98;
  }

  v92 = sibling_protected;
  v90 = v52;
  if (v40 < 1)
  {
    goto LABEL_83;
  }

  v53 = 0;
  v54 = 0;
  do
  {
    v55 = v54;
    if (v54 == 100)
    {
      v56 = 0;
      while (1)
      {
        if (*a3 == 1 || *a3 == -1 && (a2 & 1) != 0)
        {
          goto LABEL_107;
        }

        v57 = *(v109 + v56);
        if (prot_pread(__fd, v42, 0x20000uLL, v57 << 17) == -1)
        {
          break;
        }

        if (*a3 == 1 || *a3 == -1 && (a2 & 1) != 0)
        {
          goto LABEL_107;
        }

        if (prot_pwrite_guarded(v90, &v94, v42, 0x20000uLL, v57 << 17) == -1)
        {
          v45 = *__error();
          v74 = *__error();
          v75 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_111;
          }

          *buf = 136315650;
          v102 = "shadowReverseStore";
          v103 = 1024;
          v104 = 4320;
          v105 = 1024;
          v106 = v45;
          v76 = "%s:%d: pwrite err: %d";
          goto LABEL_119;
        }

        bit_vector_internal_touch_for_set_4691((a1 + 4376), v57);
        CFBitVectorSetBitAtIndex(*(a1 + 4392), v57, 0);
        v56 += 4;
        if (v56 == 400)
        {
          v55 = 0;
          goto LABEL_66;
        }
      }

      v45 = *__error();
      v74 = *__error();
      v75 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
LABEL_111:
        v50 = v74;
        v48 = v42;
        v69 = v90;
        v49 = __fd;
        sibling_protected = v92;
        goto LABEL_98;
      }

      *buf = 136315650;
      v102 = "shadowReverseStore";
      v103 = 1024;
      v104 = 4311;
      v105 = 1024;
      v106 = v45;
      v76 = "%s:%d: read err: %d";
LABEL_119:
      _os_log_error_impl(&dword_1C278D000, v75, OS_LOG_TYPE_ERROR, v76, buf, 0x18u);
      goto LABEL_111;
    }

LABEL_66:
    if ((a2 & 1) != 0 || *(a1 + 4376) > v53 && CFBitVectorGetBitAtIndex(*(a1 + 4392), v53))
    {
      *(v109 + v55) = v53;
      v58 = (v55 + 1);
    }

    else
    {
      v58 = v55;
    }

    ++v53;
    v54 = v58;
  }

  while (v53 != v40);
  if (!v58)
  {
LABEL_83:
    prot_fsync(v90, 0);
    _fd_release_fd(*(a1 + 216), __fd, 0, v93);
    sibling_protected = v92;
    _fd_release_fd(v92, v90, 0, v94);
LABEL_84:
    v111.length = *(a1 + 4376);
    v111.location = 0;
    FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(*(a1 + 4392), v111, 1u);
    if (FirstIndexOfBit != -1 && FirstIndexOfBit < *(a1 + 232) >> 17)
    {
      v85 = FirstIndexOfBit;
      v86 = __si_assert_copy_extra(*(a1 + 216));
      v87 = v86;
      v88 = "";
      if (v86)
      {
        v88 = v86;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Expected bitmap to be clean for index in state %x. Dirty bit at index %lx", "FileTree.c", 4393, "dirtyBitIx == kCFNotFound || dirtyBitIx >= (CFIndex)(storageGetCount(&store->storage)/STORAGE_SHADOWPAGESIZE)", v88, -804450864, v85);
      free(v87);
      if (__valid_fsp(*(a1 + 216)))
      {
        v89 = 2989;
      }

      else
      {
        v89 = 3072;
      }

      *v89 = -559038737;
      abort();
    }

    fd_release(sibling_protected);
    free(v42);
    v63 = *__error();
    v64 = _SILogForLogForCategory(6);
    v65 = 2 * (dword_1EBF46AE4 < 4);
    if (os_log_type_enabled(v64, v65))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v64, v65, "Completed shadowReverseStore", buf, 2u);
    }

    *__error() = v63;
    setCrashStateTarget(v38);
    goto LABEL_26;
  }

  v59 = v58;
  v60 = v109;
  while (*a3 != 1 && (*a3 != -1 || (a2 & 1) == 0))
  {
    v61 = *v60;
    if (prot_pread(__fd, v42, 0x20000uLL, v61 << 17) == -1)
    {
      v45 = *__error();
      v74 = *__error();
      v75 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_111;
      }

      *buf = 136315650;
      v102 = "shadowReverseStore";
      v103 = 1024;
      v104 = 4348;
      v105 = 1024;
      v106 = v45;
      v76 = "%s:%d: pread err: %d";
      goto LABEL_119;
    }

    if (*a3 == 1 || *a3 == -1 && (a2 & 1) != 0)
    {
      break;
    }

    if (prot_pwrite_guarded(v90, &v94, v42, 0x20000uLL, v61 << 17) == -1)
    {
      v45 = *__error();
      v74 = *__error();
      v75 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_111;
      }

      *buf = 136315650;
      v102 = "shadowReverseStore";
      v103 = 1024;
      v104 = 4357;
      v105 = 1024;
      v106 = v45;
      v76 = "%s:%d: pwrite err: %d";
      goto LABEL_119;
    }

    bit_vector_set_4833((a1 + 4376), v61);
    ++v60;
    if (!--v59)
    {
      goto LABEL_83;
    }
  }

LABEL_107:
  v45 = 89;
  v48 = v42;
  v69 = v90;
  v49 = __fd;
  sibling_protected = v92;
LABEL_99:
  v70 = *__error();
  v71 = _SILogForLogForCategory(6);
  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v102 = "shadowReverseStore";
    v103 = 1024;
    v104 = 4406;
    _os_log_error_impl(&dword_1C278D000, v71, OS_LOG_TYPE_ERROR, "%s:%d: Failed shadowReverseStore", buf, 0x12u);
  }

  *__error() = v70;
  free(v48);
  _fd_release_fd(*(a1 + 216), v49, 0, v93);
  _fd_release_fd(sibling_protected, v69, 0, v94);
  fd_release(sibling_protected);
  setCrashStateTarget(v38);
  if (v45)
  {
    result = v45;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_15:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void bit_vector_set_4833(CFIndex *a1, CFIndex a2)
{
  bit_vector_internal_touch_for_set_4691(a1, a2);
  v4 = a1[2];

  CFBitVectorSetBitAtIndex(v4, a2, 0);
}

uint64_t commitShadowReverseStore(uint64_t a1)
{
  v2 = setCrashStateTarget(2);
  if (!storageResolvePtr(a1, 0, 1, 1))
  {
LABEL_11:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  v3 = OSAtomicIncrement32(&exceptionSequenceNum);
  v4 = *(a1 + 216);
  if (v4)
  {
    v5 = *(v4 + 44);
  }

  else
  {
    v5 = -1;
  }

  v6 = setThreadIdAndInfo(v5, sStorageExceptionCallbacks, a1, 1, v3);
  v28 = HIDWORD(v6);
  v29 = v6;
  v27 = __PAIR64__(v7, v8);
  v9 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v10 = *(v9 + 312);
  v11 = *(v9 + 224);
  if (v11)
  {
    v11(*(v9 + 288));
  }

  v26 = v29;
  v25 = v28;
  v24 = v27;
  if (_setjmp(v9))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v23, 2u);
    }

    *(v9 + 312) = v10;
    CIOnThreadCleanUpReset(v24);
    dropThreadId(v26, 1, v3);
    CICleanUpReset(v26, HIDWORD(v24));
    goto LABEL_11;
  }

  v13 = storageResolvePtr(a1, 0x40uLL, 1024, 1);
  if (v13)
  {
    v14 = v13;
    *(v13 + 4) = -1073623027;
    v15 = *MEMORY[0x1E69E9AB8];
    fd_system_status_stall_if_busy();
    v16 = msync((v14 & ~v15), 0x1000uLL, 16);
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  *(a1 + 4416) = -1073623027;
  v17 = *__error();
  v18 = _SILogForLogForCategory(6);
  v19 = 2 * (dword_1EBF46AE4 < 4);
  if (os_log_type_enabled(v18, v19))
  {
    *v23 = 0;
    _os_log_impl(&dword_1C278D000, v18, v19, "Completed commitShadowReverseStore", v23, 2u);
  }

  *__error() = v17;
  v20 = threadData[9 * v26 + 1] + 320 * v25;
  *(v20 + 312) = v10;
  v21 = *(v20 + 232);
  if (v21)
  {
    v21(*(v20 + 288));
  }

  dropThreadId(v26, 0, v3);
  v12 = v16;
LABEL_20:
  setCrashStateTarget(v2);
  return v12;
}

void freeReverseDirStore(uint64_t a1)
{
  v2 = (a1 + 4376);
  v3 = *(a1 + 4392);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 4392) = 0;
  }

  *v2 = 0;
  v2[1] = 0;
  db_rwlock_destroy((a1 + 4424));
  storageClose(a1);
  v4 = *(a1 + 4640);
  if (v4)
  {
    _Block_release(v4);
  }

  free(a1);
}

char *createReverseStore(int a1, const char *a2, void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x1228uLL, 0x10A0040394FE5FDuLL);
  *(v6 + 579) = 0;
  *(v6 + 4424) = 0u;
  *(v6 + 4440) = 0u;
  *(v6 + 4456) = 0u;
  *(v6 + 4472) = 0u;
  *(v6 + 4488) = 0u;
  *(v6 + 4504) = 0u;
  *(v6 + 4520) = 0u;
  *(v6 + 4536) = 0u;
  *(v6 + 4552) = 0u;
  *(v6 + 4568) = 0u;
  *(v6 + 4584) = 0u;
  *(v6 + 4600) = 0u;
  *(v6 + 4616) = 0u;
  pthread_mutex_init((v6 + 4424), 0);
  v9 = 0;
  asprintf(&v9, "%sreverseDirectoryStore", a2);
  v7 = fd_create_protected(a1, v9, 1538, 0);
  free(v9);
  if (reverseDirStoreInit(v6, v7, 1, 0, a3))
  {
    dirtyStore(v6);
  }

  else
  {
    freeReverseDirStore(v6);
    return 0;
  }

  return v6;
}

char *openReverseStore(int a1, int a2, int a3, int a4, _DWORD *a5, uint64_t a6, void *a7)
{
  v14 = setCrashStateTarget(2);
  if (a2 > 10)
  {
    return 0;
  }

  v15 = v14;
  if (!a3 || (a4 & 1) != 0)
  {
    if ((a3 & a4) != 0)
    {
      v20 = "reverseDirectoryStore.shadow";
    }

    else
    {
      v20 = "reverseDirectoryStore";
    }
  }

  else
  {
    v45 = a6;
    v16 = v14;
    v17 = *__error();
    v18 = _SILogForLogForCategory(0);
    v19 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v18, v19, "Recovering reverse store on open", buf, 2u);
    }

    *__error() = v17;
    v20 = "reverseDirectoryStore";
    v15 = v16;
    a6 = v45;
    if ((recoverReverseStore(a1, "reverseDirectoryStore.shadow", "reverseDirectoryStore", a5, 1) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (a4)
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  v22 = fd_create_protected(a1, v20, v21, 0);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = malloc_type_calloc(1uLL, 0x1228uLL, 0x10A0040394FE5FDuLL);
  *(v24 + 1104) = -1073623027;
  *(v24 + 579) = 0;
  *(v24 + 4424) = 0u;
  *(v24 + 4440) = 0u;
  *(v24 + 4456) = 0u;
  *(v24 + 4472) = 0u;
  *(v24 + 4488) = 0u;
  *(v24 + 4504) = 0u;
  *(v24 + 4520) = 0u;
  *(v24 + 4536) = 0u;
  *(v24 + 4552) = 0u;
  *(v24 + 4568) = 0u;
  *(v24 + 4584) = 0u;
  *(v24 + 4600) = 0u;
  *(v24 + 4616) = 0u;
  pthread_mutex_init((v24 + 4424), 0);
  if (!reverseDirStoreInit(v24, v23, 0, a4, a7))
  {
    freeReverseDirStore(v24);
    v26 = *__error();
    v27 = _SILogForLogForCategory(6);
    v28 = 2 * (dword_1EBF46AE4 < 4);
    if (!os_log_type_enabled(v27, v28))
    {
LABEL_21:
      *__error() = v26;
LABEL_22:
      setCrashStateTarget(v15);
      return 0;
    }

    *v46 = 0;
    v29 = "Failed open for reverse store";
    v30 = v46;
LABEL_20:
    _os_log_impl(&dword_1C278D000, v27, v28, v29, v30, 2u);
    goto LABEL_21;
  }

  state = get_state(v24);
  *(v24 + 1104) = state;
  if (*(v24 + 29) <= 0x447uLL)
  {
LABEL_17:
    freeReverseDirStore(v24);
    return 0;
  }

  if (!a6 || state != 2 || (a3 & 1) != 0 || (a4 & 1) != 0)
  {
    if (state == -804450864 && (a4 & 1) == 0)
    {
      v33 = a5;
      v34 = *__error();
      v35 = _SILogForLogForCategory(0);
      v36 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v35, v36))
      {
        *v49 = 0;
        _os_log_impl(&dword_1C278D000, v35, v36, "Shadowing reverse store on open", v49, 2u);
      }

      *__error() = v34;
      if (shadowReverseStore(v24, 1, v33))
      {
        goto LABEL_17;
      }

      fd_sync(*(v24 + 27), 1);
      if (commitShadowReverseStore(v24))
      {
        goto LABEL_17;
      }

      fd_sync(*(v24 + 27), 1);
    }

    bit_vector_init_4656((v24 + 4376));
  }

  else
  {
    v32 = *(a6 + 16);
    *(v24 + 4376) = *a6;
    *(v24 + 549) = v32;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *a6 = 0;
    dirtyStore(v24);
  }

  v37 = get_state(v24);
  *(v24 + 1104) = v37;
  if (a2)
  {
    if (_reverseStoreValidate(v24))
    {
      freeReverseDirStore(v24);
      v26 = *__error();
      v27 = _SILogForLogForCategory(6);
      v28 = 2 * (dword_1EBF46AE4 < 4);
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_21;
      }

      v48 = 0;
      v29 = "Opened corrupt reverse store";
      v30 = &v48;
      goto LABEL_20;
    }

    v37 = *(v24 + 1104);
  }

  if (v37 == -804450864 && (a4 & 1) == 0)
  {
    v41 = __si_assert_copy_extra(*(v24 + 27));
    v42 = v41;
    v43 = "";
    if (v41)
    {
      v43 = v41;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 4635, "(store->state != kIndexShutDownStateNeedsShadow || readOnly)", v43);
    free(v42);
    if (__valid_fsp(*(v24 + 27)))
    {
      v44 = 2989;
    }

    else
    {
      v44 = 3072;
    }

    *v44 = -559038737;
    abort();
  }

  v38 = *__error();
  v39 = _SILogForLogForCategory(6);
  v40 = 2 * (dword_1EBF46AE4 < 4);
  if (os_log_type_enabled(v39, v40))
  {
    *v47 = 0;
    _os_log_impl(&dword_1C278D000, v39, v40, "Successfully opened from reverse store", v47, 2u);
  }

  *__error() = v38;
  setCrashStateTarget(v15);
  return v24;
}

uint64_t recoverReverseStore(int a1, const char *a2, const char *a3, _DWORD *a4, int a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = *__error();
  v11 = _SILogForLogForCategory(0);
  v12 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v11, v12, "recoverReverseStore", buf, 2u);
  }

  *__error() = v10;
  if ((_copyFile(a1, a2, a1, a3, a4, 1088) & 1) == 0)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      v26 = __error();
      result = 0;
      *v26 = v22;
      goto LABEL_16;
    }

    *buf = 136315650;
    v38 = "recoverReverseStore";
    v39 = 1024;
    v40 = 4502;
    v41 = 2080;
    v42 = a2;
    v24 = "%s:%d: Copy file failed for %s";
    v25 = buf;
LABEL_25:
    _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, v24, v25, 0x1Cu);
    goto LABEL_15;
  }

  v13 = fd_create_protected(a1, a2, 0, 0);
  bzero(buf, 0x440uLL);
  v14 = fd_pread(v13, buf, 0x440uLL, 0);
  fd_release(v13);
  if (v14 != 1088)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(6);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *v33 = 136315650;
    v34 = "recoverReverseStore";
    v35 = 1024;
    *v36 = 4514;
    *&v36[4] = 2080;
    *&v36[6] = a2;
    v24 = "%s:%d: Failed to read reverse store file %s";
    v25 = v33;
    goto LABEL_25;
  }

  v15 = fd_create_protected(a1, a3, 2, 0);
  v32 = 0;
  v16 = _fd_acquire_fd(v15, &v32);
  prot_fsync(v16, 1);
  v17 = v43;
  v43 = 0;
  if (prot_pwrite_guarded(v16, &v32, buf, 0x440uLL, 0) != 1088)
  {
    v28 = *__error();
    v29 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v33 = 136315650;
      v34 = "recoverReverseStore";
      v35 = 1024;
      *v36 = 4529;
      *&v36[4] = 2080;
      *&v36[6] = a3;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: Failed to write reverse store header %s", v33, 0x1Cu);
    }

    *__error() = v28;
    goto LABEL_20;
  }

  prot_fsync(v16, 1);
  if (a5 && v17 != -1073623027 && v17 != -804450864)
  {
    v30 = *__error();
    v31 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *v33 = 136315650;
      v34 = "recoverReverseStore";
      v35 = 1024;
      *v36 = 4541;
      *&v36[4] = 1024;
      *&v36[6] = v17;
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: Unexpected state in shadow header %x", v33, 0x18u);
    }

    *__error() = v30;
LABEL_20:
    _fd_release_fd(v15, v16, 0, v32);
    fd_release(v15);
    result = 0;
    goto LABEL_16;
  }

  v43 = -1073623027;
  prot_pwrite_guarded(v16, &v32, buf, 0x440uLL, 0);
  _fd_release_fd(v15, v16, 0, v32);
  fd_release(v15);
  v18 = *__error();
  v19 = _SILogForLogForCategory(6);
  v20 = 2 * (dword_1EBF46AE4 < 4);
  if (os_log_type_enabled(v19, v20))
  {
    *v33 = 136315650;
    v34 = a2;
    v35 = 2080;
    *v36 = a3;
    *&v36[8] = 1024;
    *&v36[10] = v17;
    _os_log_impl(&dword_1C278D000, v19, v20, "Successfully recovered from %s to %s with state %x", v33, 0x1Cu);
  }

  *__error() = v18;
  result = 1;
LABEL_16:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_state(uint64_t a1)
{
  v21 = -559038737;
  if (storageResolvePtr(a1, 0, 1, 1))
  {
    v2 = OSAtomicIncrement32(&exceptionSequenceNum);
    v3 = *(a1 + 216);
    if (v3)
    {
      v4 = *(v3 + 44);
    }

    else
    {
      v4 = -1;
    }

    v5 = setThreadIdAndInfo(v4, sStorageExceptionCallbacks, a1, 1, v2);
    v19 = HIDWORD(v5);
    v20 = v5;
    v18 = __PAIR64__(v6, v7);
    v8 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v9 = *(v8 + 312);
    v10 = *(v8 + 224);
    if (v10)
    {
      v10(*(v8 + 288));
    }

    v17 = v20;
    v16 = v19;
    v15 = v18;
    if (_setjmp(v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v14, 2u);
      }

      *(v8 + 312) = v9;
      CIOnThreadCleanUpReset(v15);
      dropThreadId(v17, 1, v2);
      CICleanUpReset(v17, HIDWORD(v15));
    }

    else
    {
      if (*(a1 + 232) < 0x440uLL)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(storageResolvePtr(a1, 0x40uLL, 1024, 1) + 4);
      }

      v11 = threadData[9 * v17 + 1] + 320 * v16;
      *(v11 + 312) = v9;
      v12 = *(v11 + 232);
      if (v12)
      {
        v12(*(v11 + 288));
      }

      dropThreadId(v17, 0, v2);
    }
  }

  return v21;
}

uint64_t _reverseStoreValidate(uint64_t a1)
{
  if (!a1)
  {
    v10 = 0;
    return v10 & 1;
  }

  _db_write_lock(a1 + 4424);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  storage_reader_init(a1, &v46);
  v45 = 1;
  v2 = OSAtomicIncrement32(&exceptionSequenceNum);
  v3 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v2);
  v43 = HIDWORD(v3);
  v44 = v3;
  v42 = __PAIR64__(v4, v5);
  v6 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v7 = *(v6 + 312);
  v8 = *(v6 + 224);
  if (v8)
  {
    v8(*(v6 + 288));
  }

  v41 = v44;
  v40 = v43;
  v39 = v42;
  if (!_setjmp(v6))
  {
    if (v48 == 1)
    {
      v11 = OSAtomicIncrement32(&exceptionSequenceNum);
      v12 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, &v46, 0, v11);
      v37 = HIDWORD(v12);
      *buf = v12;
      v36 = __PAIR64__(v13, v14);
      v15 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
      v16 = *(v15 + 312);
      v17 = *(v15 + 224);
      if (v17)
      {
        v17(*(v15 + 288));
      }

      v35 = *buf;
      v34 = v37;
      v33 = v36;
      if (!_setjmp(v15))
      {
        v20 = 0;
        v32[0] = 0;
        Page = _directoryStoreReaderGetPage(&v46, 0x440uLL, v32, v18, v19);
        if (Page)
        {
          if (v32[0])
          {
            v28 = __si_assert_copy_extra(*(a1 + 216));
            v29 = v28;
            v30 = "";
            if (v28)
            {
              v30 = v28;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3999, "(!page)", v30);
            free(v29);
            if (__valid_fsp(*(a1 + 216)))
            {
              v31 = 2989;
            }

            else
            {
              v31 = 3072;
            }

            *v31 = -559038737;
            abort();
          }

          v20 = _reverseStoreValidateTreePage(&v46, Page, 0x440, 0);
        }

        v22 = threadData[9 * v35 + 1] + 320 * v34;
        *(v22 + 312) = v16;
        v23 = *(v22 + 232);
        if (v23)
        {
          v23(*(v22 + 288));
        }

        dropThreadId(v35, 0, v11);
        v9 = v20;
        goto LABEL_25;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v32, 2u);
      }

      *(v15 + 312) = v16;
      CIOnThreadCleanUpReset(v33);
      dropThreadId(v35, 1, v11);
      CICleanUpReset(v35, HIDWORD(v33));
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
LABEL_25:
      v45 = 0;
      v24 = threadData[9 * v41 + 1] + 320 * v40;
      *(v24 + 312) = v7;
      v25 = *(v24 + 232);
      if (v25)
      {
        v25(*(v24 + 288));
      }

      dropThreadId(v41, 0, v2);
      goto LABEL_28;
    }

    v9 = 0;
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v6 + 312) = v7;
  CIOnThreadCleanUpReset(v39);
  dropThreadId(v41, 1, v2);
  CICleanUpReset(v41, HIDWORD(v39));
  v9 = 0;
LABEL_28:
  v26 = v9 | v45;
  db_write_unlock(a1 + 4424);
  if (v47)
  {
    _release_read_window(&availableReaders, v47);
  }

  v10 = v26;
  return v10 & 1;
}

BOOL _reverseStoreValidateTreePage(uint64_t *a1, unsigned __int16 *a2, unsigned __int16 *a3, int a4)
{
  *(&v59[2] + 6) = *MEMORY[0x1E69E9840];
  Size = directoryTreePageGetSize(*a2, *(a2 + 2));
  v47 = a2;
  v10 = a2[3];
  if (dword_1EBF46AE4 >= 5)
  {
    v43 = a2[2];
    v44 = *__error();
    v45 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219008;
      v55 = v47;
      v56 = 1024;
      *v57 = a4;
      *&v57[4] = 1024;
      *&v57[6] = v10;
      v58 = 1024;
      LODWORD(v59[0]) = v43;
      WORD2(v59[0]) = 1024;
      *(v59 + 6) = Size;
      _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "Tree page:%p level: %d depth: %d origin: %d size: %d", buf, 0x24u);
    }

    *__error() = v44;
  }

  if (v10 != a4)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(6);
    v13 = dword_1EBF46AE4 < 3;
    if (os_log_type_enabled(v12, (dword_1EBF46AE4 < 3)))
    {
      *buf = 134218496;
      v55 = a3;
      v56 = 1024;
      *v57 = v10;
      *&v57[4] = 1024;
      *&v57[6] = a4;
      _os_log_impl(&dword_1C278D000, v12, v13, "*warn* Flat page: 0x%8.8llx depth: %d exected: %d", buf, 0x18u);
    }

    *__error() = v11;
  }

  v14 = Size;
  if (Size)
  {
    v46 = v10;
    v15 = 0;
    v16 = v47 + 4;
    v52 = a4 + 1;
    v17 = 1;
    v8.n128_u64[0] = 134218496;
    v48 = a1;
    do
    {
      v18 = *&v16[4 * v15];
      if (v18)
      {
        if (dword_1EBF46AE4 >= 5)
        {
          v33 = *__error();
          v34 = _SILogForLogForCategory(6);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218752;
            v55 = v47;
            v56 = 1024;
            *v57 = v46;
            *&v57[4] = 1024;
            *&v57[6] = v15;
            v58 = 2048;
            v59[0] = v18;
            _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "page:%p depth: %d idx: %d offset: 0x%8.8llx", buf, 0x22u);
          }

          *__error() = v33;
        }

        v53 = 0;
        Page = _directoryStoreReaderGetPage(a1, v18, &v53, v8, v9);
        if (!Page)
        {
          goto LABEL_39;
        }

        v20 = Page;
        if (v53)
        {
          v21 = directoryStorePageGetSize(Page);
          v22 = *v20;
          if ((64 << *(v20 + 2)) - 8 < v22)
          {
            v39 = __si_assert_copy_extra(0);
            v40 = v39;
            v41 = "";
            if (v39)
            {
              v41 = v39;
            }

            __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 287, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v41, *v20, (64 << *(v20 + 2)) - 8);
            free(v40);
            if (__valid_fs(-1))
            {
              v42 = 2989;
            }

            else
            {
              v42 = 3072;
            }

            *v42 = -559038737;
            abort();
          }

          v23 = v21;
          v24 = v20[3];
          if (dword_1EBF46AE4 >= 5)
          {
            v50 = v20[2];
            v35 = *__error();
            v36 = _SILogForLogForCategory(6);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134219008;
              v55 = v20;
              v56 = 1024;
              *v57 = v52;
              *&v57[4] = 1024;
              *&v57[6] = v24;
              v58 = 1024;
              LODWORD(v59[0]) = v50;
              WORD2(v59[0]) = 1024;
              *(v59 + 6) = v23;
              _os_log_impl(&dword_1C278D000, v36, OS_LOG_TYPE_DEFAULT, "Flat page:%p level: %d depth: %d origin: %d size: %d", buf, 0x24u);
            }

            *__error() = v35;
            a1 = v48;
            v14 = Size;
          }

          if (v52 != v24)
          {
            v49 = *__error();
            v25 = _SILogForLogForCategory(6);
            v26 = dword_1EBF46AE4 < 3;
            if (os_log_type_enabled(v25, (dword_1EBF46AE4 < 3)))
            {
              *buf = 134218496;
              v55 = v18;
              v56 = 1024;
              *v57 = v24;
              *&v57[4] = 1024;
              *&v57[6] = v52;
              _os_log_impl(&dword_1C278D000, v25, v26, "*warn* Flat page: 0x%8.8llx depth: %d exected: %d", buf, 0x18u);
            }

            *__error() = v49;
            a1 = v48;
            v14 = Size;
          }

          v27 = v22 >> 4;
          if (v23)
          {
            v28 = (v20 + 8);
            do
            {
              v29 = *(v28 - 1);
              if (v29)
              {
                --v27;
                if (dword_1EBF46AE4 >= 5)
                {
                  v30 = *v28;
                  v31 = *__error();
                  v32 = _SILogForLogForCategory(6);
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218240;
                    v55 = v29;
                    v56 = 2048;
                    *v57 = v30;
                    _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "oid: %lld parent: %lld", buf, 0x16u);
                  }

                  *__error() = v31;
                  a1 = v48;
                  v14 = Size;
                }
              }

              v28 += 2;
              v23 = (v23 - 1);
            }

            while (v23);
          }

          v16 = v47 + 4;
          if (v27)
          {
            goto LABEL_39;
          }
        }

        else if (_reverseStoreValidateTreePage(a1, Page, v18, v52))
        {
          goto LABEL_39;
        }
      }

      v17 = ++v15 < v14;
    }

    while (v15 != v14);
  }

  v17 = 0;
LABEL_39:
  v37 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t reverseStoreNeedsRecover(int a1)
{
  v1 = fd_create_protected(a1, "reverseDirectoryStore", 0, 0);
  v3 = 0;
  if (fd_pread(v1, &v3, 4uLL, 68) != 4)
  {
    v3 = 0;
  }

  fd_release(v1);
  return v3;
}

uint64_t reverseStoreUpdateState(uint64_t a1, int a2, _BYTE *a3)
{
  v6 = 0;
  v26 = *MEMORY[0x1E69E9840];
  v15 = 0;
  *a3 = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      updated = _reverseStoreUpdateState(a1, -804450864);
      if (updated)
      {
        v6 = updated;
        v7 = 4741;
        goto LABEL_14;
      }

      if ((!isRegisteredForCloning(a1) || (copyFileFallback(a1, "reverseDirectoryStore", a1, "reverseDirectoryStore.shadow", &v15, 0, 1) & 1) == 0) && !recoverReverseStore(a1, "reverseDirectoryStore", "reverseDirectoryStore.shadow", &v15, 0))
      {
        v7 = 4751;
        v6 = 0xFFFFFFFFLL;
        goto LABEL_14;
      }

      v6 = _reverseStoreUpdateState(a1, -1073623027);
      if (v6)
      {
        v7 = 4757;
        goto LABEL_14;
      }
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_17;
      }

      v6 = _reverseStoreUpdateState(a1, -1073623027);
      if (v6)
      {
        v7 = 4765;
        goto LABEL_14;
      }
    }

    goto LABEL_29;
  }

  if (a2 == 1)
  {
    v8 = _reverseStoreUpdateState(a1, 0);
    if (v8)
    {
      v6 = v8;
      v7 = 4707;
      goto LABEL_14;
    }

    if ((!isRegisteredForCloning(a1) || (copyFileFallback(a1, "reverseDirectoryStore.shadow", a1, "reverseDirectoryStore", &v15, 0, 1) & 1) == 0) && (recoverReverseStore(a1, "reverseDirectoryStore.shadow", "reverseDirectoryStore", &v15, 1) & 1) == 0)
    {
      v14 = *__error();
      if (v14)
      {
        v6 = v14;
      }

      else
      {
        v6 = 0xFFFFFFFFLL;
      }

      v7 = 4717;
      goto LABEL_14;
    }

    v6 = _reverseStoreUpdateState(a1, -1073623027);
    if (v6)
    {
      v7 = 4724;
      goto LABEL_14;
    }

LABEL_29:
    *a3 = 4;
    goto LABEL_17;
  }

  if (a2 != 2)
  {
    goto LABEL_17;
  }

  v6 = _reverseStoreUpdateState(a1, 2);
  if (!v6)
  {
    *a3 = 2;
    goto LABEL_17;
  }

  v7 = 4732;
LABEL_14:
  v10 = *__error();
  v11 = _SILogForLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v17 = "reverseStoreUpdateState";
    v18 = 1024;
    v19 = 4776;
    v20 = 1024;
    v21 = a2;
    v22 = 1024;
    v23 = v6;
    v24 = 1024;
    v25 = v7;
    _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: update state (%d) failed err:%d at %d", buf, 0x24u);
  }

  *__error() = v10;
LABEL_17:
  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _reverseStoreUpdateState(int a1, int a2)
{
  v3 = fd_create_protected(a1, "reverseDirectoryStore", 2, 0);
  v4 = v3;
  if (v3 && (v8 = 0, fd_pread(v3, &v8, 4uLL, 68) == 4) && (v8 == a2 || (v8 = a2, fd_pwrite(v4, &v8, 4uLL, 68) == 4)))
  {
    v5 = 0;
  }

  else
  {
    v6 = *__error();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0xFFFFFFFFLL;
    }
  }

  fd_release(v4);
  return v5;
}

uint64_t reverseStoreRestoreDirtyBitmap(int a1, uint64_t a2)
{
  v43 = 0u;
  *__buf = 0u;
  v41 = 0u;
  *__offseta = 0u;
  v3 = fd_create_protected(a1, "reverseStore.updates", 0, 0);
  if (!store_stream_init(&v41, v3, 0))
  {
    v8 = 0;
    goto LABEL_24;
  }

  v4 = v43;
  v40 = v3;
  if (v43 - *(&v43 + 1) < 6uLL)
  {
    v37 = 0;
    v6 = 0;
    __dst = 0;
    while (store_stream_read_bytes(&v41, &__dst) == 1)
    {
      v6 |= (__dst & 0x7F) << v37;
      v37 += 7;
      if ((__dst & 0x80) == 0)
      {
        goto LABEL_40;
      }
    }

    v6 = 0;
LABEL_40:
    v7 = *(&v43 + 1);
    v4 = v43;
    goto LABEL_13;
  }

  v5 = *(&v43 + 1) + 1;
  v6 = *(__buf[0] + *(&v43 + 1));
  if (*(__buf[0] + *(&v43 + 1)) < 0)
  {
    v7 = *(&v43 + 1) + 2;
    v9 = *(__buf[0] + v5);
    v10 = *(__buf[0] + v5);
    if (v9 < 0)
    {
      v11 = *(&v43 + 1) + 3;
      v12 = *(__buf[0] + v7);
      if (*(__buf[0] + v7) < 0)
      {
        v7 = *(&v43 + 1) + 4;
        v14 = *(__buf[0] + v11);
        v15 = *(__buf[0] + v11);
        if (v14 < 0)
        {
          v30 = *(__buf[0] + v7);
          if (v30 < 0)
          {
            v7 = *(&v43 + 1) + 5;
            v6 = ((v15 & 0x7F) << 21) | (v30 << 28) | ((v12 & 0x7F) << 14) | ((v10 & 0x7F) << 7) | v6 & 0x7F;
          }

          else
          {
            v6 = 0;
            LODWORD(__offseta[0]) = 22;
            v7 = *(&v43 + 1) + 5;
          }

          goto LABEL_13;
        }

        v13 = ((v12 & 0x7F) << 14) | (v15 << 21) | ((v10 & 0x7F) << 7) | v6 & 0x7F;
      }

      else
      {
        v13 = ((v10 & 0x7F) << 7) | (v12 << 14) | v6 & 0x7F;
        v7 = *(&v43 + 1) + 3;
      }

      v6 = v13;
    }

    else
    {
      v6 = v6 & 0x7F | (v10 << 7);
    }
  }

  else
  {
    v7 = *(&v43 + 1) + 1;
  }

LABEL_13:
  v16 = v6;
  v17 = v6 + 7;
  v18 = v17 >> 3;
  v8 = malloc_type_malloc(v17 >> 3, 0xAEF3C7D2uLL);
  bit_vector_init_4656(a2);
  if (v7 + (v17 >> 3) > v4)
  {
    v39 = 0;
    __fd = v41;
    v22 = v17 >> 3;
    v21 = v8;
    v20 = __buf[0];
    v31 = __offseta[1];
    while (1)
    {
      v23 = v4 - v7;
      if (v4 != v7)
      {
        v32 = &v20[v7];
        v33 = v4 - v7;
        v34 = v31;
        memcpy(v21, v32, v33);
        v31 = v34;
      }

      v35 = v31;
      v36 = prot_pread(__fd, v20, v4, v31);
      if (v36 == -1)
      {
        *&v43 = v4;
        *(&v43 + 1) = v4;
        __offseta[1] = v35;
        v23 = 0;
        LODWORD(__offseta[0]) = *__error();
        goto LABEL_43;
      }

      v31 = v35 + v36;
      if (!v36)
      {
        break;
      }

      v7 = 0;
      v21 += v23;
      v22 -= v23;
      v39 += v23;
      v4 = v36;
      if (v22 <= v36)
      {
        v7 = 0;
        __offseta[1] = v31;
        *&v43 = v36;
        v19 = v39;
        goto LABEL_15;
      }
    }

    v43 = 0uLL;
    __offseta[1] = v35;
LABEL_43:
    v19 = v39;
  }

  else
  {
    v19 = 0;
    v20 = __buf[0];
    v21 = v8;
    v22 = v17 >> 3;
LABEL_15:
    memcpy(v21, &v20[v7], v22);
    *(&v43 + 1) = v7 + v22;
    v23 = v22;
  }

  if (v23 + v19 == v18 && (v24 = CFBitVectorCreate(0, v8, v16)) != 0)
  {
    v25 = v24;
    if (v16)
    {
      for (i = 0; i != v16; ++i)
      {
        v27 = CFBitVectorGetBitAtIndex(v25, i) != 0;
        bit_vector_internal_touch_for_set_4691(a2, i);
        CFBitVectorSetBitAtIndex(*(a2 + 16), i, v27);
      }
    }

    CFRelease(v25);
  }

  else
  {
    LODWORD(__offseta[0]) = -1;
  }

  v3 = v40;
LABEL_24:
  v28 = LODWORD(__offseta[0]);
  free(v8);
  store_stream_destroy(&v41);
  fd_release(v3);
  return v28;
}

uint64_t reverseStoreStoreDirtyBitmap(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = *(a1 + 4376);
  v4 = v2 + 7;
  v3 = v2 < -7;
  v5 = v2 + 14;
  if (!v3)
  {
    v5 = v4;
  }

  v6 = v5 >> 3;
  v7 = malloc_type_malloc(v5 >> 3, 0xA2CB6193uLL);
  if (!v7)
  {
    v25 = __si_assert_copy_extra(0);
    v26 = v25;
    v27 = "";
    if (v25)
    {
      v27 = v25;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 4851, "bits", v27);
    free(v26);
    if (__valid_fs(-1))
    {
      v28 = 2989;
    }

    else
    {
      v28 = 3072;
    }

    *v28 = -559038737;
    abort();
  }

  v8 = v7;
  sibling_protected = fd_create_sibling_protected(*(a1 + 216), "reverseStore.updates", 1538, 0);
  if (store_stream_init(&v30, sibling_protected, 1))
  {
    v10 = *(a1 + 4376);
    v11 = *(&v32 + 1);
    if (v32 - *(&v32 + 1) < 6uLL)
    {
      memset(__src, 0, sizeof(__src));
      if (v10 >> 28)
      {
        LOBYTE(__src[0]) = v10 | 0x80;
        BYTE1(__src[0]) = (v10 >> 7) | 0x80;
        BYTE2(__src[0]) = (v10 >> 14) | 0x80;
        BYTE3(__src[0]) = (v10 >> 21) | 0x80;
        BYTE4(__src[0]) = v10 >> 28;
        v29 = 5;
      }

      else if (v10 >= 0x200000)
      {
        LOBYTE(__src[0]) = v10 | 0x80;
        BYTE1(__src[0]) = (v10 >> 7) | 0x80;
        BYTE2(__src[0]) = (v10 >> 14) | 0x80;
        BYTE3(__src[0]) = v10 >> 21;
        v29 = 4;
      }

      else if (v10 >= 0x4000)
      {
        LOBYTE(__src[0]) = v10 | 0x80;
        BYTE1(__src[0]) = (v10 >> 7) | 0x80;
        BYTE2(__src[0]) = v10 >> 14;
        v29 = 3;
      }

      else if (v10 >= 0x80)
      {
        LOBYTE(__src[0]) = v10 | 0x80;
        BYTE1(__src[0]) = v10 >> 7;
        v29 = 2;
      }

      else
      {
        LOBYTE(__src[0]) = v10;
        v29 = 1;
      }

      store_stream_write_bytes(&v30, __src, v29);
    }

    else
    {
      if (v10 >> 28)
      {
        v15 = (v33 + *(&v32 + 1));
        *v15 = v10 | 0x80;
        v15[1] = (v10 >> 7) | 0x80;
        v15[2] = (v10 >> 14) | 0x80;
        v15[3] = (v10 >> 21) | 0x80;
        v13 = v11 + 5;
        v15[4] = v10 >> 28;
      }

      else if (v10 >= 0x200000)
      {
        v16 = (v33 + *(&v32 + 1));
        *v16 = v10 | 0x80;
        v16[1] = (v10 >> 7) | 0x80;
        v16[2] = (v10 >> 14) | 0x80;
        v13 = v11 + 4;
        v16[3] = v10 >> 21;
      }

      else
      {
        v12 = (v33 + *(&v32 + 1));
        if (v10 >= 0x4000)
        {
          *v12 = v10 | 0x80;
          v12[1] = (v10 >> 7) | 0x80;
          v13 = v11 + 3;
          v12[2] = v10 >> 14;
        }

        else if (v10 >= 0x80)
        {
          *v12 = v10 | 0x80;
          v13 = v11 + 2;
          v12[1] = v10 >> 7;
        }

        else
        {
          v13 = *(&v32 + 1) + 1;
          *v12 = v10;
        }
      }

      *(&v32 + 1) = v13;
    }

    v17.length = *(a1 + 4376);
    if (v17.length)
    {
      v17.location = 0;
      CFBitVectorGetBits(*(a1 + 4392), v17, v8);
    }

    v18 = *(&v32 + 1);
    v19 = v32;
    v20 = *(&v32 + 1) + v6;
    v21 = v8;
    while (v20 >= v19)
    {
      v22 = v19 - v18;
      memcpy((v33 + v18), v21, v19 - v18);
      *(&v32 + 1) += v22;
      if (store_stream_flush(&v30, 0))
      {
        goto LABEL_24;
      }

      v21 += v22;
      v6 -= v22;
      v18 = *(&v32 + 1);
      v19 = v32;
      v20 = *(&v32 + 1) + v6;
    }

    memcpy((v33 + v18), v21, v6);
    *(&v32 + 1) += v6;
LABEL_24:
    store_stream_flush(&v30, 0);
    v14 = v31;
    store_stream_destroy(&v30);
  }

  else
  {
    v14 = v31;
  }

  fd_release(sibling_protected);
  free(v8);
  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

void si_perform_livequeries_directory_updates(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v49 = v1;
  v3 = v2;
  v67[128] = *MEMORY[0x1E69E9840];
  bzero(values, 0x2000uLL);
  pthread_mutex_lock((v3 + 1712));
  Count = CFSetGetCount(*(v3 + 1776));
  v5 = Count;
  if (Count >= 1024)
  {
    v6 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFSetGetValues(*(v3 + 1776), v6);
  }

  else if (!Count || (v6 = values, CFSetGetValues(*(v3 + 1776), values), v5 < 1))
  {
    pthread_mutex_unlock((v3 + 1712));
    goto LABEL_70;
  }

  v7 = 0;
  do
  {
    atomic_fetch_add(v6[v7++], 1u);
  }

  while (v5 != v7);
  v50 = v3;
  pthread_mutex_unlock((v3 + 1712));
  v8 = 0;
  alloc = *MEMORY[0x1E695E480];
  v44 = v5;
  do
  {
    v9 = v6[v8];
    v10 = *(v9 + 1);
    v11 = *(v9 + 5);
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2000000000;
    v57 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2000000000;
    v55 = 0;
    scope_node = si_query_get_scope_node(v50, v10, 0);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 0x40000000;
    v51[2] = __si_query_evaluate_move_block_invoke;
    v51[3] = &unk_1E8196398;
    v51[6] = v50;
    v51[7] = v49;
    v51[4] = &v52;
    v51[5] = v56;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 0x40000000;
    v67[2] = __db_query_tree_apply_block_block_invoke;
    v67[3] = &unk_1E8198ED0;
    v67[4] = v51;
    db_query_tree_apply_block_with_meta(scope_node, v67, 0);
    if (*(v53 + 24) != 1)
    {
      goto LABEL_15;
    }

    v13 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A004060519A17uLL);
    atomic_store(1u, v13);
    atomic_fetch_add(v11, 1u);
    *(v13 + 10) = v11;
    *(v13 + 3) = *(v11 + 48);
    *(v13 + 1) = 0;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    *(v13 + 26) = 1;
    *(v13 + 99) = *(v11 + 99);
    *(v13 + 96) = *(v11 + 96);
    v14 = *(v11 + 88);
    if (v14)
    {
      CFRetain(*(v11 + 88));
    }

    *(v13 + 11) = v14;
    bzero(v67, 0x400uLL);
    v15 = *(v50 + 1416);
    if (*(v15 + 240))
    {
      goto LABEL_13;
    }

    v16 = (*(v15 + 40))(v15, *v49, v67, 0, 0, 0, 0, -1);
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = CFStringCreateWithFileSystemRepresentation(alloc, v16);
    v18 = v10[24];
    cf1 = v17;
    if (!v18)
    {
      Mutable = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
      v5 = v44;
LABEL_58:
      CFArrayAppendValue(Mutable, v17);
      v21 = Mutable;
      goto LABEL_59;
    }

    v19 = CFArrayGetCount(v18);
    v46 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
    if (!v19)
    {
      v5 = v44;
      Mutable = v46;
      goto LABEL_58;
    }

    if (v19 < 1)
    {
      v5 = v44;
      v21 = v46;
      goto LABEL_59;
    }

    theArray = v18;
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = v19;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
      v24 = CFGetTypeID(ValueAtIndex);
      if (v24 == CFStringGetTypeID())
      {
        v25 = v21;
        v26 = ValueAtIndex;
LABEL_24:
        ProcessPathForScope(v25, v26, cf1);
        goto LABEL_31;
      }

      v27 = CFGetTypeID(ValueAtIndex);
      if (v27 != CFArrayGetTypeID())
      {
        goto LABEL_31;
      }

      v28 = CFArrayGetCount(ValueAtIndex);
      if (v28)
      {
        v26 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        if (v28 == 1)
        {
          v25 = v21;
          goto LABEL_24;
        }

        v29 = v26;
        if (CFEqual(cf1, v26))
        {
          goto LABEL_30;
        }

        if (CFStringHasPrefix(v29, cf1))
        {
          Length = CFStringGetLength(cf1);
          if (CFStringGetCharacterAtIndex(v29, Length) != 47)
          {
            goto LABEL_50;
          }

LABEL_30:
          v21 = v46;
          CFArrayAppendValue(v46, ValueAtIndex);
LABEL_31:
          LODWORD(v28) = 0;
          goto LABEL_32;
        }

        if (!CFStringHasPrefix(cf1, v29) || (v31 = CFStringGetLength(v29), CFStringGetCharacterAtIndex(cf1, v31) != 47))
        {
LABEL_50:
          LODWORD(v28) = 0;
          v21 = v46;
          goto LABEL_32;
        }

        v41 = CFArrayCreateMutable(alloc, v28, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(v41, cf1);
        if (v28 < 2)
        {
LABEL_51:
          v21 = v46;
          v35 = v41;
          CFArrayAppendValue(v46, v41);
          LODWORD(v28) = 0;
        }

        else
        {
          v32 = 1;
          while (1)
          {
            v42 = v32;
            prefix = CFArrayGetValueAtIndex(ValueAtIndex, v32);
            if (CFEqual(cf1, v29))
            {
              break;
            }

            if (CFStringHasPrefix(cf1, prefix))
            {
              v33 = CFStringGetLength(prefix);
              if (CFStringGetCharacterAtIndex(cf1, v33) == 47)
              {
                break;
              }
            }

            else if (CFStringHasPrefix(prefix, cf1))
            {
              v34 = CFStringGetLength(cf1);
              if (CFStringGetCharacterAtIndex(prefix, v34) == 47)
              {
                CFArrayAppendValue(v41, prefix);
              }
            }

            v32 = v42 + 1;
            if (v28 == v42 + 1)
            {
              goto LABEL_51;
            }
          }

          LODWORD(v28) = 1;
          v21 = v46;
          v35 = v41;
        }

        CFRelease(v35);
      }

LABEL_32:
      v19 = v22;
      ++v20;
    }

    while (v20 < v22 && !v28);
    v5 = v44;
    if (v28)
    {
LABEL_60:
      CFRelease(v21);
      v21 = 0;
      goto LABEL_61;
    }

LABEL_59:
    if (!CFArrayGetCount(v21))
    {
      goto LABEL_60;
    }

LABEL_61:
    if (dword_1EBF46AD0 >= 5)
    {
      v37 = *__error();
      v38 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v10[24];
        v59 = 136315906;
        v60 = "adds";
        v61 = 2112;
        v62 = cf1;
        v63 = 2112;
        v64 = v39;
        v65 = 2112;
        v66 = v21;
        _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "check (%s) %@ old:%@ new:%@", &v59, 0x2Au);
      }

      *__error() = v37;
      v5 = v44;
    }

    CFRelease(cf1);
    if (v21)
    {
      atomic_fetch_add_explicit(v13 + 16, 1u, memory_order_relaxed);
      _queryGoCracked(v10, v50, v21, v13);
      CFRelease(v21);
      si_querypipe_remove_process(v13, v10, 0, 0);
    }

LABEL_13:
    if (v13 != v11)
    {
      si_querypipe_release(v13);
    }

LABEL_15:
    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(v56, 8);
    si_livequery_release(v6[v8++]);
  }

  while (v8 != v5);
  if (v6 != values)
  {
    free(v6);
  }

LABEL_70:
  v40 = *MEMORY[0x1E69E9840];
}

void si_perform_livequeries_bulk_updates(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v26 = v3;
  v5 = v4;
  v113 = *MEMORY[0x1E69E9840];
  bzero(values, 0x2000uLL);
  pthread_mutex_lock((v5 + 1712));
  Count = CFSetGetCount(*(v5 + 1776));
  v7 = Count;
  if (Count >= 1024)
  {
    v8 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFSetGetValues(*(v5 + 1776), v8);
  }

  else
  {
    if (!Count)
    {
      v9 = 0;
      v8 = values;
      goto LABEL_10;
    }

    v8 = values;
    CFSetGetValues(*(v5 + 1776), values);
    if (v7 < 1)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  v10 = 0;
  v9 = 1;
  do
  {
    atomic_fetch_add(v8[v10++], 1u);
  }

  while (v7 != v10);
LABEL_10:
  pthread_mutex_unlock((v5 + 1712));
  if (v2)
  {
    atomic_fetch_add((v5 + 1452), 1u);
    v21 = _si_scheduler_suspend(*(v5 + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add((v5 + 1452), 0xFFFFFFFF);
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = 0;
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  v11 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = v8;
  v24 = v7;
  do
  {
    v12 = v8[v11];
    v29 = v12[5];
    v13 = *(v29 + 88);
    if (v13)
    {
      v28 = *(v13 + 120);
    }

    else
    {
      v28 = 0;
    }

    v14 = v12[1];
    v15 = *(v14 + 144);
    v34 = v22;
    *&v35 = 0x40000000;
    *(&v35 + 1) = __query_once_block_invoke;
    *&v36 = &__block_descriptor_tmp_518;
    *(&v36 + 1) = v14;
    v25 = v11;
    if (v15 != -1)
    {
      dispatch_once((v14 + 144), &v34);
    }

    v16 = *(v14 + 136);
    if (v16 >= 1)
    {
      v17 = *(v14 + 128);
      v27 = v17;
      do
      {
        if (*(*v17 + 4))
        {
          bzero(v38, 0x4D0uLL);
          v30 = *(v5 + 2072);
          v18 = *(v5 + 6587) & 1;
          v35 = 0u;
          v36 = 0u;
          v37 = 0;
          memset(&v38[8], 0, 41);
          memset(&v38[56], 0, 60);
          memset(&v38[128], 0, 64);
          v34 = &unk_1F4282348;
          v39 = -1;
          v44 = 0;
          v40 = 0u;
          v41 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 0x40000000;
          v32[2] = ___ZN11SISearchCtxC2Ev_block_invoke;
          v32[3] = &__block_descriptor_tmp_6;
          v32[4] = &v34;
          v42 = md_deadline_once_create();
          v43 = dispatch_time(0, 500000000);
          v34 = &unk_1F427CAD8;
          v48 = 10;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0;
          v65 = 0u;
          v66 = 0u;
          memset(v67, 0, 22);
          v67[22] = v30;
          v67[23] = v18;
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v80 = 0;
          v81 = 0;
          v107 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          memset(v79, 0, sizeof(v79));
          v103 = 0;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v82 = 0u;
          v104 = 0;
          v105 = 0;
          v106 = 0;
          v31 = 0;
          v32[0] = 0;
          si_query_copy_grouping(v14, v32, &v31);
          SISearchCtx_METADATA::vinitContext(&v34, v14, v5, *v27, v27[1], *(v14 + 176), *(v14 + 200), v28, v20, v29, *(v14 + 16), v32[0], v31, *(v14 + 697));
          LOBYTE(v64) = 1;
          LODWORD(v65) = *(v26 + 56);
          SISearchCtx::executeSearchContext(&v34, 1);
          SISearchCtx_METADATA::~SISearchCtx_METADATA(&v34);
        }

        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v8 = v23;
    si_livequery_release(v23[v25]);
    v11 = v25 + 1;
  }

  while (v25 + 1 != v24);
LABEL_26:
  if (v2)
  {
    si_scheduler_resume(*(v5 + 872), v21, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SILiveQuerySupport.c", 326);
  }

  if (v8 != values)
  {
    free(v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __si_perform_livequeries_updates_block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) != 4)
  {
    goto LABEL_18;
  }

  v3 = **(a2 + 16);
  if (!v3)
  {
    goto LABEL_18;
  }

  v5 = *v3;
  if (v5 == 42)
  {
    if (v3[1])
    {
      goto LABEL_5;
    }

LABEL_15:
    v13 = a1[4];
    v14 = a1[5];
    v15 = *(a1[6] + 16);
    v16 = 0x40000000;
LABEL_17:
    update_lq_field_info(v13, v14, v15, v16);
    goto LABEL_18;
  }

  if (42 == v5)
  {
    goto LABEL_15;
  }

LABEL_5:
  v6 = strcmp("kMDItemTextContent", v3);
  v7 = a1[4];
  if (!v6)
  {
    v14 = a1[5];
    v15 = *(a1[6] + 16);
    v13 = a1[4];
    v16 = 0;
    goto LABEL_17;
  }

  if (*(v7 + 2072) != 1 || strcmp("_kMDItemBundleID", v3))
  {
    v8 = *(v7 + 1192);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v20 = __si_perform_livequeries_updates_block_invoke_2;
    v21 = &__block_descriptor_tmp_4907;
    v22 = v7;
    v23 = *(a1 + 5);
    memset(v24, 0, sizeof(v24));
    v9 = db_copy_field_ids_with_buffer(v8, v3, v24, 8uLL);
    if (v9)
    {
      v10 = v9;
      if (*v9)
      {
        v11 = v9 + 1;
        do
        {
          (v20)(v19);
        }

        while (*v11++);
      }

      if (v10 != v24)
      {
        free(v10);
      }
    }
  }

LABEL_18:
  v17 = *MEMORY[0x1E69E9840];
  return a2;
}

void update_lq_field_info(unsigned int *a1, CFSetRef theSet, __CFArray *a3, void *value)
{
  if (!CFSetContainsValue(theSet, value))
  {
    CFSetAddValue(theSet, value);
    if (value)
    {
      CFArrayAppendValue(a3, value);
      if (a1[510] == value || a1[511] == value || a1[512] == value)
      {
        v8 = a1[509];
        if (!CFSetContainsValue(theSet, v8))
        {
          CFSetAddValue(theSet, v8);

          CFArrayAppendValue(a3, v8);
        }
      }
    }

    else
    {

      CFArrayInsertValueAtIndex(a3, 0, 0);
    }
  }
}

void si_perform_livequeries_deletions(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  values[1024] = *MEMORY[0x1E69E9840];
  bzero(values, 0x2000uLL);
  pthread_mutex_lock((v4 + 1712));
  Count = CFSetGetCount(*(v4 + 1776));
  v6 = Count;
  if (Count >= 1024)
  {
    v7 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFSetGetValues(*(v4 + 1776), v7);
  }

  else if (!Count || (v7 = values, CFSetGetValues(*(v4 + 1776), values), v6 < 1))
  {
    pthread_mutex_unlock((v4 + 1712));
    goto LABEL_30;
  }

  v8 = 0;
  do
  {
    atomic_fetch_add(v7[v8++], 1u);
  }

  while (v6 != v8);
  pthread_mutex_unlock((v4 + 1712));
  v9 = 0;
  v10 = *MEMORY[0x1E695E480];
  do
  {
    v11 = v7[v9];
    v12 = v11[5];
    do
    {
      v13 = v12;
      v12 = *(v12 + 80);
    }

    while (v12);
    v14 = *(v13 + 40);
    if (RLEOIDArrayContainsOid(v14, v3))
    {
      v15 = v11[5];
      do
      {
        v16 = v15;
        v15 = *(v15 + 80);
      }

      while (v15);
      v17 = *(v16 + 8);
      v18 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
      if (dword_1EBF46AD4 >= 5)
      {
        v26 = *__error();
        v22 = _SILogForLogForCategory(2);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "Passing up deletion", buf, 2u);
        }

        *__error() = v26;
      }

      v18[1] = *(v11[5] + 48);
      *(v18 + 1) = si_querypipe_copy_jobid(v11[5]);
      *(v18 + 5) = 0;
      *v18 = 7;
      v19 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
      RLEOIDArrayRemoveOid(v14, v3);
      *v19 = 0;
      v20 = v11[5];
      do
      {
        v21 = v20;
        v20 = *(v20 + 80);
      }

      while (v20);
      *v19 = (*(*(v21 + 8) + 80) << 32) | 0xDE10001;
      v19[1] = v3;
      *(v18 + 4) = _MDStoreOIDArrayCreateMutableWithOids();
      _MDStoreOIDArraySetShouldUseMalloc();
      *(v18 + 14) = 3;
      if (!si_resultqueue_enqueue(v17, v18))
      {
        if (dword_1EBF46AD4 >= 5)
        {
          v23 = *__error();
          v24 = _SILogForLogForCategory(2);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "Attempt to append to queue failed. Releasing result batch", buf, 2u);
          }

          *__error() = v23;
        }

        SIResultBatchFree(v18);
      }
    }

    si_livequery_release(v7[v9++]);
  }

  while (v9 != v6);
  if (v7 != values)
  {
    free(v7);
  }

LABEL_30:
  v25 = *MEMORY[0x1E69E9840];
}

void si_perform_livequeries_reassignments(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v76 = v3;
  v5 = v4;
  v7 = v6;
  v135 = *MEMORY[0x1E69E9840];
  bzero(v127, 0x2000uLL);
  pthread_mutex_lock((v7 + 1712));
  Count = CFSetGetCount(*(v7 + 1776));
  v9 = Count;
  if (Count >= 1024)
  {
    v10 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFSetGetValues(*(v7 + 1776), v10);
  }

  else
  {
    if (!Count)
    {
      v11 = 0;
      v10 = v127;
      goto LABEL_10;
    }

    v10 = v127;
    CFSetGetValues(*(v7 + 1776), v127);
    if (v9 < 1)
    {
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = 0;
  v11 = 1;
  do
  {
    atomic_fetch_add(v10[v12++], 1u);
  }

  while (v9 != v12);
LABEL_10:
  pthread_mutex_unlock((v7 + 1712));
  bzero(&v125, 0x1000uLL);
  v80 = 0;
  v81 = 0;
  if (v2)
  {
    v13 = *(v7 + 6624);
    if (v13)
    {
      v125 = v2[3];
      Path = directoryStoreGetPath(v13, v125, &v126);
      v81 = Path + 1;
      if (Path == -1)
      {
        v15 = 0;
      }

      else
      {
        v15 = &v125;
      }

      v80 = v15;
    }
  }

  if (v11)
  {
    v16 = 0;
    allocator = *MEMORY[0x1E695E480];
    v93 = v7;
    v75 = v9;
    v79 = v10;
    v73 = v5;
    v74 = v2;
    while (1)
    {
      v17 = v10[v16];
      v18 = v17[5];
      do
      {
        v19 = v18;
        v18 = *(v18 + 80);
      }

      while (v18);
      v20 = *(v19 + 40);
      if (!RLEOIDArrayContainsOid(v20, v5))
      {
        goto LABEL_99;
      }

      v88 = v16;
      v21 = v17[5];
      do
      {
        v22 = v21;
        v21 = *(v21 + 80);
      }

      while (v21);
      v89 = *(v22 + 8);
      v23 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
      if (dword_1EBF46AD4 >= 5)
      {
        v64 = *__error();
        v65 = _SILogForLogForCategory(2);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v65, OS_LOG_TYPE_DEFAULT, "Passing up deletion", buf, 2u);
        }

        *__error() = v64;
        v9 = v75;
      }

      v23[1] = *(v17[5] + 48);
      *(v23 + 1) = si_querypipe_copy_jobid(v17[5]);
      *(v23 + 5) = 0;
      *v23 = 7;
      v24 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
      RLEOIDArrayRemoveOid(v20, v5);
      *v24 = 0;
      v25 = v17[5];
      do
      {
        v26 = v25;
        v25 = *(v25 + 80);
      }

      while (v25);
      *v24 = (*(*(v26 + 8) + 80) << 32) | 0xDE10001;
      v24[1] = v5;
      *(v23 + 4) = _MDStoreOIDArrayCreateMutableWithOids();
      _MDStoreOIDArraySetShouldUseMalloc();
      *(v23 + 14) = 3;
      v27 = v89;
      pthread_mutex_lock((*v89 + 8));
      ++v89[21];
      pthread_mutex_unlock((*v89 + 8));
      if (!si_resultqueue_enqueue(v89, v23))
      {
        if (dword_1EBF46AD4 >= 5)
        {
          v70 = *__error();
          v71 = _SILogForLogForCategory(2);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "Attempt to append to queue failed. Releasing result batch", buf, 2u);
          }

          *__error() = v70;
          v9 = v75;
        }

        SIResultBatchFree(v23);
      }

      v28 = v17[1];
      v29 = *(v28 + 576);
      if (!v29)
      {
        goto LABEL_32;
      }

      pthread_rwlock_wrlock((v29 + 16));
      if (RLEOIDArrayContainsOid(v29, v5))
      {
        break;
      }

      pthread_rwlock_unlock((v29 + 16));
      v16 = v88;
LABEL_98:
      si_resultqueue_start(v27);
LABEL_99:
      si_livequery_release(v10[v16++]);
      if (v16 == v9)
      {
        goto LABEL_110;
      }
    }

    RLEOIDArrayRemoveOid(v29, v5);
    pthread_rwlock_wrlock((v29 + 16));
    SIValueSet<unsigned long long>::SIValueSetInsert((v29 + 216), v76);
    pthread_rwlock_unlock((v29 + 16));
    pthread_rwlock_unlock((v29 + 16));
    v28 = v17[1];
LABEL_32:
    v30 = v17[5];
    v31 = *(v28 + 144);
    *buf = MEMORY[0x1E69E9820];
    v106 = 0x40000000;
    v107 = __query_once_block_invoke;
    v108 = &__block_descriptor_tmp_518;
    v109 = v28;
    if (v31 != -1)
    {
      dispatch_once((v28 + 144), buf);
    }

    if (!*(v28 + 104))
    {
      v32 = *(v28 + 72);
    }

    v90 = v30;
    v33 = *(v30 + 88);
    v123 = 0;
    v118 = v7;
    v119 = 0;
    v121 = 0;
    v120 = v33;
    v117 = &unk_1F427AF00;
    v122 = v81;
    v124 = v80;
    v114 = v2;
    v115 = 0;
    v116 = 0;
    v84 = v33;
    if (v33)
    {
      v34 = *(v33 + 120);
    }

    else
    {
      v34 = 0;
    }

    v82 = *(v28 + 256);
    v83 = *(v28 + 248);
    v35 = *(v28 + 60) ^ 1;
    v86 = v28;
    v36 = *(v28 + 61);
    if ((v35 & 1) == 0)
    {
      db_eval_obj_with_options(*(v7 + 1192));
    }

    Mutable = CFDictionaryCreateMutable(allocator, 0, 0, MEMORY[0x1E695E9E8]);
    bzero(buf, 0x11E0uLL);
    v85 = Mutable;
    v38 = Mutable;
    v39 = v86;
    PartialQueryResults::PartialQueryResults(buf, *(v86 + 16), *(v86 + 24), 0, 0, v38, *(v86 + 152), 0, *(v86 + 360), 0, 0, 0, 0, 1u);
    if (*(v86 + 152) > 3)
    {
      if (v110)
      {
        PartialQueryResults::attributeVector(buf);
        v48 = v110;
      }

      else
      {
        v48 = 0;
      }

      v10 = v79;
      collectAttributesFromDBO(v7, v2, v48, buf, v34);
      si_querypipe_addcoalescedresults(v90, buf, *(v7 + 1192), 1);
      v16 = v88;
    }

    else
    {
      v40 = v90;
      do
      {
        v41 = v40;
        v40 = *(v40 + 80);
      }

      while (v40);
      v42 = RLEOIDArrayContainsOid(*(v41 + 40), *v2);
      v104 = 0;
      v77 = v42;
      LOBYTE(v43) = 1;
      *&cf[1] = 0u;
      if (v42)
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }

      v101 = 0;
      v100 = 0;
      v97 = 0;
      v98 = v7;
      v99 = v84;
      v102 = 0uLL;
      memset(cf, 0, sizeof(cf));
      if (v7)
      {
        v43 = *(v7 + 6586) >> 7;
      }

      LOBYTE(v104) = v43;
      v96 = &unk_1F42826A0;
      v101 = v2;
      LODWORD(v97) = 4;
      v78 = v44;
      if (v36)
      {
        v45 = 0;
        v46 = 0;
        v47 = -1;
      }

      else
      {
        v92 = *(v86 + 288);
        if (v92 < 1)
        {
          v45 = 0;
          v46 = 0;
        }

        else
        {
          v49 = 0;
          v45 = 0;
          v46 = 0;
          v50 = 0;
          v91 = *(v86 + 264);
          do
          {
            v51 = (v91 + 24 * v49);
            v52 = v51[1];
            if (v52 < 1)
            {
              v54 = 0;
              v55 = 0;
            }

            else
            {
              v53 = 0;
              v54 = 0;
              v55 = 0;
              do
              {
                if (*(*v51 + 8 * v53))
                {
                  v56 = db_eval_obj_with_options(*(v93 + 1192)) != 0;
                  v57 = __CFADD__(v54, v56);
                  v54 += v56;
                  if (v57)
                  {
                    ++v55;
                  }
                }

                ++v53;
                v52 = v51[1];
              }

              while (v52 > v53);
            }

            v58 = (v55 << v50) | (v54 >> 1 >> ~v50);
            if ((v50 & 0x40) != 0)
            {
              v58 = v54 << v50;
              v59 = 0;
            }

            else
            {
              v59 = v54 << v50;
            }

            v46 |= v58;
            v45 |= v59;
            v50 += v52;
            ++v49;
          }

          while (v92 > v49);
        }

        v39 = v86;
        v47 = *(v86 + 360);
        v5 = v73;
        v2 = v74;
        v27 = v89;
      }

      v60 = v90;
      v10 = v79;
      do
      {
        v61 = v60;
        v60 = *(v60 + 80);
      }

      while (v60);
      if (v77)
      {
        v62 = 3213;
      }

      else
      {
        v62 = 2781;
      }

      v63 = PartialQueryResults::start(buf, *(*(v61 + 8) + 80), v62, 2uLL, 0);
      LODWORD(v97) = v97 | 8;
      *v128 = v45;
      *&v128[8] = v46;
      *&v128[16] = 0u;
      v129 = 0u;
      v130 = v47;
      v131 = 0;
      v133 = 0;
      v132 = 0;
      v134 = 0;
      memset(v94, 0, sizeof(v94));
      v95 = 0;
      v7 = v93;
      writeDBOToPlistBytes(v93, v63, buf, v34, &v96, v84, v83, v82, 0, v128, 0, 0, v94, 0, 0, 0, v39, 0);
      if (v112)
      {
        _MDPlistBytesEndArray();
        _MDPlistBytesEndPlist();
      }

      v9 = v75;
      v16 = v88;
      if (v111)
      {
        _MDStoreOIDArrayEndBulkAdd();
        _MDStoreOIDArrayEndSequence();
        v113 = 0;
      }

      if (v101 == v2)
      {
        v101 = 0;
      }

      si_querypipe_addresults(v90, buf, v78, 0, v39);
      if (dword_1EBF46AD4 >= 5)
      {
        v66 = *__error();
        v67 = _SILogForLogForCategory(2);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v68 = *v2;
          v69 = *(v39 + 8);
          *v128 = 134218242;
          *&v128[4] = v68;
          *&v128[12] = 2112;
          *&v128[14] = v69;
          _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "True live query: (%lld) %@", v128, 0x16u);
        }

        *__error() = v66;
        v16 = v88;
      }

      v96 = &unk_1F42826A0;
      if (BYTE2(v104) && v101)
      {
        free(v101);
      }

      v96 = &unk_1F4282660;
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (cf[2])
      {
        free(cf[2]);
        cf[2] = 0;
      }

      if (cf[1])
      {
        CFRelease(cf[1]);
        cf[1] = 0;
      }

      if (BYTE1(v104) == 1)
      {
        free(v102);
      }
    }

    CFRelease(v85);
    PartialQueryResults::~PartialQueryResults(buf);
    v117 = &unk_1F427AF00;
    if (v123)
    {
      (*(*v123 + 8))(v123);
    }

    goto LABEL_98;
  }

LABEL_110:
  if (v10 != v127)
  {
    free(v10);
  }

  v72 = *MEMORY[0x1E69E9840];
}

uint64_t si_remove_livequery(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((a1 + 1712));
  CFSetRemoveValue(*(a1 + 1776), a2);

  return pthread_mutex_unlock((a1 + 1712));
}

uint64_t si_dump_livequeries(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 1712));
  v2 = *(a1 + 1776);
  if (v2)
  {
    Count = CFSetGetCount(v2);
    if (Count)
    {
      v4 = Count;
      v19[1] = v19;
      MEMORY[0x1EEE9AC00](Count);
      v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v6, v5);
      CFSetGetValues(*(a1 + 1776), v6);
      if (v4 >= 1)
      {
        v8 = 0;
        *&v7 = 67110914;
        v20 = v7;
        do
        {
          v9 = *&v6[8 * v8];
          v10 = *__error();
          v11 = _SILogForLogForCategory(2);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 32);
            v13 = atomic_load(v9);
            v14 = *(v9 + 40);
            v15 = *(v9 + 8);
            v16 = *(v15 + 8);
            *buf = v20;
            v22 = v12;
            v23 = 1024;
            v24 = v8;
            v25 = 1024;
            v26 = v4;
            v27 = 2048;
            v28 = v9;
            v29 = 1024;
            v30 = v13;
            v31 = 2048;
            v32 = v14;
            v33 = 2048;
            v34 = v15;
            v35 = 2112;
            v36 = v16;
            _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "### indexFd: %d live_query[%d,%d]: %p rc: %d pipe: %p q: %p %@", buf, 0x42u);
          }

          *__error() = v10;
          ++v8;
        }

        while (v4 != v8);
      }
    }
  }

  result = pthread_mutex_unlock((a1 + 1712));
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t siquerynode_compare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 != v3)
  {
    return (v2 - v3);
  }

  v4 = a1;
  while (1)
  {
    v5 = *v4;
    result = (*v4 - *a2);
    if (*v4 != *a2)
    {
      return result;
    }

    if (v5 != 2)
    {
      break;
    }

    v4 = *(v4 + 24);
    a2 = *(a2 + 24);
    v2 = *(v4 + 4);
    v3 = *(a2 + 4);
    if (v2 != v3)
    {
      return (v2 - v3);
    }
  }

  if (v5 < 2)
  {
    v7 = *(v4 + 24);
    v8 = *(a2 + 24);
    if (v7 != v8)
    {
      return (v7 - v8);
    }

    if (v7 >= 1)
    {
      v9 = *(v4 + 32);
      v10 = *(a2 + 32);
      do
      {
        result = siquerynode_compare(*v9, *v10);
        if (result)
        {
          break;
        }

        ++v10;
        ++v9;
        --v7;
      }

      while (v7);
      return result;
    }

    return 0;
  }

  if (v5 != 3)
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = *(v11 + 48);
  v13 = *(a2 + 24);
  v14 = *(v13 + 48);
  result = (v12 - v14);
  if (v12 != v14)
  {
    return result;
  }

  v15 = *(v11 + 56);
  v16 = *(v13 + 56);
  result = (v15 - v16);
  if (v15 != v16)
  {
    return result;
  }

  if (v12 != 4)
  {
    return 0;
  }

  v17 = *(v11 + 16);
  v18 = *(v17 + 24);
  v19 = *(v13 + 16);
  v20 = *(v19 + 24);
  result = (v18 - v20);
  if (v18 != v20)
  {
    return result;
  }

  v21 = *(v17 + 40);
  v22 = *(v19 + 40);
  result = (v21 - v22);
  if (v21 != v22)
  {
    return result;
  }

  result = strcmp(*v17, *v19);
  if (result)
  {
    return result;
  }

  if ((v18 - 11) < 2)
  {
    v23 = 0;
    v24 = 8 * (v21 & ~(v21 >> 31));
    while (v24 != v23)
    {
      result = strcmp(*(*(v17 + 168) + v23), *(*(v19 + 168) + v23));
      v23 += 8;
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v18 != 15)
  {
    return strcmp(*(v17 + 72), *(v19 + 72));
  }

  v25 = *(v17 + 60);
  v26 = v25 & 3;
  result = (*(v17 + 60) & 3) - (*(v19 + 60) & 3u);
  if ((*(v17 + 60) & 3) == (*(v19 + 60) & 3))
  {
    v27 = (v25 >> 2) & 3;
    v28 = (*(v19 + 60) >> 2) & 3;
    result = (v27 - v28);
    if (v27 == v28)
    {
      v29 = *(v17 + 64);
      v30 = *(v19 + 64);
      if (v29 == v30)
      {
        result = *(v17 + 296);
        if (!result)
        {
          return result;
        }

        v32 = *(v19 + 296);
        if (!v32)
        {
          return 0;
        }

        v33 = -1;
        if (v26 != 3 && v27 != 3)
        {
          v33 = (vector_dimension_vec_sizes_15424[v26] * vector_size_elem_sizes_15423[v27]);
        }

        return memcmp(result, v32, v33) == 0;
      }

      else
      {
        if (v29 >= v30)
        {
          v31 = 0;
        }

        else
        {
          v31 = -1;
        }

        if (v29 > v30)
        {
          return 1;
        }

        else
        {
          return v31;
        }
      }
    }
  }

  return result;
}

void *si_querynode_add(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  v4 = MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= 0x27uLL)
  {
    ++sTotal_4940;
  }

  v5 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
  if (!v5)
  {
    _log_fault_for_malloc_failure();
  }

  *v5 = 0;
  v5[3] = 2;
  if (*v4 <= 0xFuLL)
  {
    ++sTotal_4940;
  }

  v6 = malloc_type_zone_calloc(queryZone, 1uLL, 0x10uLL, 0x5BAF1CEAuLL);
  if (!v6)
  {
    _log_fault_for_malloc_failure();
  }

  v5[4] = v6;
  *v6 = a1;
  *(v5[4] + 8) = a2;
  return v5;
}

void *si_querynode_join(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  v4 = MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= 0x27uLL)
  {
    ++sTotal_4940;
  }

  v5 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
  if (!v5)
  {
    _log_fault_for_malloc_failure();
  }

  *v5 = 1;
  v5[3] = 2;
  if (*v4 <= 0xFuLL)
  {
    ++sTotal_4940;
  }

  v6 = malloc_type_zone_calloc(queryZone, 1uLL, 0x10uLL, 0x5BAF1CEAuLL);
  if (!v6)
  {
    _log_fault_for_malloc_failure();
  }

  v5[4] = v6;
  *v6 = a1;
  *(v5[4] + 8) = a2;
  return v5;
}

void translateSDBQuery(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_query_tree_apply_block_block_invoke;
  v3[3] = &unk_1E8198ED0;
  v3[4] = &__block_literal_global_33_4954;
  db_query_tree_apply_block_with_meta(a1, v3, &__block_literal_global_37_4955);
  if (a1)
  {
    if (v2)
    {
      *(v2 + 16) = *(a1 + 56) & 1;
    }
  }
}

void __initCharSets_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
  v4.location = 3584;
  v4.length = 128;
  CFCharacterSetAddCharactersInRange(Mutable, v4);
  _infixChars = CFCharacterSetCreateCopy(v0, Mutable);
  CFRelease(Mutable);
  v2 = CFCharacterSetCreateMutable(v0);
  v5.location = 11904;
  v5.length = 52096;
  CFCharacterSetAddCharactersInRange(v2, v5);
  v6.location = 65376;
  v6.length = 80;
  CFCharacterSetAddCharactersInRange(v2, v6);
  _cjkChars = CFCharacterSetCreateCopy(v0, v2);

  CFRelease(v2);
}

uint64_t rewriteForFSPostCheckInPlace(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    v4 = 0;
LABEL_13:
    v8 = v2;
    goto LABEL_14;
  }

  v4 = *(v3 + 48);
  if ((*(v3 + 24) - 11) > 1)
  {
    goto LABEL_13;
  }

  v5 = *v3;
  if (strncmp(*v3, "kMDItemFS", 9uLL))
  {
    if (strncmp(v5, "_kMDItemFS", 0xAuLL))
    {
      goto LABEL_13;
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __db_query_tree_apply_block_block_invoke;
  v17[3] = &unk_1E8198ED0;
  v17[4] = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v2, v17, &__block_literal_global_25_15416);
  v7 = v6;
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal_4940;
  }

  v8 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!v8)
  {
    _log_fault_for_malloc_failure();
  }

  *v8 = v7;
  v8[1] = v2;
  v9 = *(v7 + 16);
  v10 = *(v9 + 24);
  if (v10 == 11)
  {
    *(v8 + 24) = 2;
    *(v9 + 24) = 8;
    v11 = v2[2];
    v12 = 7;
  }

  else
  {
    if (v10 != 12)
    {
      v11 = v2[2];
      goto LABEL_25;
    }

    *(v8 + 24) = 1;
    *(v9 + 24) = 3;
    v11 = v2[2];
    v12 = 4;
  }

  *(v11 + 24) = v12;
LABEL_25:
  *(v9 + 72) = **(v9 + 168);
  *(v11 + 72) = *(*(v11 + 168) + 8);
  free(*(*(v9 + 168) + 8));
  **(*(v7 + 16) + 168) = 0;
  *(*(*(v7 + 16) + 168) + 8) = 0;
  free(**(v2[2] + 168));
  **(v2[2] + 168) = 0;
  *(*(v2[2] + 168) + 8) = 0;
  *(v2[2] + 40) = 0;
  *(*(v7 + 16) + 40) = 0;
LABEL_14:
  *a1 = v8;
  v13 = v4;
  if (*v8)
  {
    v13 = rewriteForFSPostCheckInPlace(v8);
  }

  v15 = v8[1];
  v14 = (v8 + 1);
  if (v15)
  {
    v4 = rewriteForFSPostCheckInPlace(v14);
  }

  if (v13 >= v4)
  {
    return v4;
  }

  else
  {
    return v13;
  }
}

uint64_t keycompare_4999(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t *a5)
{
  v5 = *a3;
  v6 = *a5;
  if (a2 == 8)
  {
    v7 = v5 >= v6;
    v8 = v5 > v6;
    if (v5 == v6)
    {
      v9 = -1;
    }

    else
    {
      v9 = (v5 > v6) - (v5 < v6);
    }

    v10 = v8;
    v11 = !v7;
    v12 = v10 - v11;
    if (a4 == 8)
    {
      return v12;
    }

    else
    {
      return v9;
    }
  }

  else if (a4 == 8)
  {
    if (v5 == v6)
    {
      return 1;
    }

    else
    {
      return (v5 > v6) - (v5 < v6);
    }
  }

  else
  {
    v14 = v5 >= v6;
    if (v5 == v6)
    {
      return strcmp(a3 + 14, a5 + 14);
    }

    else
    {
      v15 = v5 > v6;
      v16 = !v14;
      return (v15 - v16);
    }
  }
}

void release_persistent_id_64_store(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  if (*(a1 + 32) > 0x7FFFFFFFFFFFFFFEuLL)
  {
    if (!_sqlite_insert(a1, &master_fid_rec_4983, master_fid_rec_size_4985, (a1 + 32), 8, 0))
    {
      goto LABEL_7;
    }

    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *v2;
      v10 = 136315650;
      v11 = "release_persistent_id_64_store";
      v12 = 1024;
      v13 = 298;
      v14 = 2048;
      v15 = v9;
      v6 = "%s:%d: psid-release: Failed to update the master fid! (0x%llx)\n";
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *v2;
      v10 = 136315650;
      v11 = "release_persistent_id_64_store";
      v12 = 1024;
      v13 = 285;
      v14 = 2048;
      v15 = v5;
      v6 = "%s:%d: release_psid_64_store: danger! master_fid %lld looks bad.\n";
LABEL_13:
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, v6, &v10, 0x1Cu);
    }
  }

  *__error() = v3;
LABEL_7:
  v7 = *(a1 + 16);
  if (v7)
  {
    sqlite3BtreeCloseCursor(v7);
  }

  if (*a1)
  {
    sqlite3BtreeClose(*a1);
  }

  free(a1);
  v8 = *MEMORY[0x1E69E9840];
}