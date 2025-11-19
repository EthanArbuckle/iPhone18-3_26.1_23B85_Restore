uint64_t BOMCopierSetUserData(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

uint64_t BOMCopierUserData(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t BOMCopierSetFatalErrorHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

uint64_t BOMCopierSetFatalFileErrorHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

uint64_t BOMCopierSetFileErrorHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

uint64_t BOMCopierSetFileConflictErrorHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 80) = a2;
  }

  return result;
}

uint64_t BOMCopierSetCopyFileStartedHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

uint64_t BOMCopierSetCopyFileFinishedHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

uint64_t BOMCopierSetCopyFileUpdateHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 104) = a2;
  }

  return result;
}

uint64_t BOMCopierSetCountFilesUpdateHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

uint64_t BOMCopierSetPKZipPasswordRequester(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 128) = a2;
  }

  return result;
}

uint64_t BOMCopierGetArchiveFileDescriptor(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 12712);
  if (v1 == 2)
  {
    v4 = *(a1 + 12752);
    if (v4)
    {
      File = BOMPKZipGetFile(v4);
      goto LABEL_8;
    }

    return 0xFFFFFFFFLL;
  }

  if (v1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 12728);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  File = BOMCPIOGetFile(v2);
LABEL_8:

  return BOMFileGetFileDescriptor(File);
}

size_t _extractFileAndPath(char *a1, char *a2)
{
  v4 = strrchr(a1, 47);
  if (v4)
  {
    *v4 = 0;
    result = strlcpy(a2, v4 + 1, 0x400uLL);
    if (*a1)
    {
      return result;
    }

    v6 = 47;
  }

  else
  {
    result = strlcpy(a2, a1, 0x400uLL);
    v6 = 46;
  }

  *a1 = v6;
  return result;
}

uint64_t _initializeAFSCData(uint64_t a1)
{
  result = __strlcpy_chk();
  if (!*(a1 + 195))
  {
    goto LABEL_7;
  }

  if (*(a1 + 12712) || (result = VolumeSupportsCompression(), (result & 1) == 0))
  {
    *(a1 + 195) = 0;
    goto LABEL_7;
  }

  if (!*(a1 + 195))
  {
LABEL_7:
    if (!*(a1 + 12848))
    {
      return result;
    }
  }

  if (*(a1 + 12716) == 3 && (result = VolumeSupportsCompression(), result))
  {
    if (*(a1 + 12848))
    {
      if (!*(a1 + 12864))
      {
        v3 = *(a1 + 12856);
        result = CreateStreamCompressorQueueWithOptions();
        *(a1 + 12864) = result;
      }
    }
  }

  else
  {
    *(a1 + 195) = 0;
    *(a1 + 12848) = 0;
  }

  return result;
}

void _applyIndexBomOwnershipForTargetArchive(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *(a1 + 152);
  if (v3)
  {
    FSObjectAtPath = BOMBomGetFSObjectAtPath(v3, a2);
    if (FSObjectAtPath)
    {
      v6 = FSObjectAtPath;
      *(a3 + 16) = BOMFSObjectUserID(FSObjectAtPath);
      *(a3 + 20) = BOMFSObjectGroupID(v6);

      BOMFSObjectFree(v6);
    }
  }
}

uint64_t _copyFromDirToDir(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4, _BYTE *a5, uint64_t a6, unsigned int a7)
{
  v85 = *MEMORY[0x277D85DE8];
  v82 = 0;
  v80 = 0;
  memset(v84, 0, 512);
  memset(v79, 0, sizeof(v79));
  memset(&v78[2], 0, 112);
  *a3 = 47;
  *a5 = 47;
  a3[1] = 0;
  v13 = a3 + 1;
  memset(v78, 0, 32);
  a5[1] = 0;
  v14 = a5 + 1;
  if (*(a1 + 192) == 1)
  {
    if (*(a1 + 232) == *a2)
    {
      goto LABEL_11;
    }

    memset(&v83, 0, 512);
    if (!statfs((a1 + 248), &v83))
    {
      *(a1 + 210) = (v83.f_flags & 8) == 0;
      goto LABEL_11;
    }

    v15 = __error();
    v16 = *(a1 + 64);
    if (v16)
    {
      v16(a1, a1 + 248, *v15);
    }

LABEL_9:
    v17 = 0;
    goto LABEL_113;
  }

  if (!*(a1 + 192) && *(a1 + 232) != *a2)
  {
    goto LABEL_9;
  }

LABEL_11:
  v18 = (*(*(a1 + 12832) + 272))(*(*(a1 + 12832) + 8), a1 + 248);
  if (!v18)
  {
    *a5 = 0;
    *a3 = 0;
    v62 = *__error();
    v17 = _checkCopyFileError(a1);
    goto LABEL_113;
  }

  v19 = v18;
  v76 = a7;
  v20 = a6 - 1;
  v21 = a4 - 1;
  v81 = 0;
  __size = a6 - 1;
  if (a6 - 1 >= (a4 - 1))
  {
    v20 = a4 - 1;
  }

  v72 = a3;
  v73 = v20;
  v22 = (*(*(a1 + 12832) + 296))(*(*(a1 + 12832) + 8), v18, v84, &v80);
  v23 = 0;
  v17 = 0;
  v24 = v22 == 0;
  v77 = 0;
  if (!v22)
  {
    v25 = v80;
    if (v80)
    {
      v23 = 0;
      v71 = 0;
      v77 = 0;
      v17 = 0;
      v75 = 0;
      while (1)
      {
        v81 = 0;
        if (_ignore_readdir_entry(v25))
        {
          goto LABEL_43;
        }

        if (*(a1 + 168))
        {
          goto LABEL_105;
        }

        if (strlcpy(v13, (v80 + 21), v21) >= v21)
        {
          goto LABEL_40;
        }

        v26 = *(a1 + 152);
        if (v26)
        {
          v75 = BOMBomPathIDForKey(v26, v76, (v80 + 21));
          if (!v75)
          {
            v75 = 0;
            goto LABEL_43;
          }
        }

        v27 = *(a1 + 160);
        v28 = v27 && BOMBomFSObjectExistsAtPath(v27, *(a1 + 2296));
        if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 248, v79))
        {
          break;
        }

        if (*(a1 + 12746) && *(a1 + 12716) == 4)
        {
          _applyIndexBomOwnershipForTargetArchive(a1, *(a1 + 2296), v79);
        }

        if (*(v80 + 18) > 0xF9u)
        {
          v69 = v28;
          v83.f_bfree = 0;
          *&v83.f_bsize = xmmword_241C78E98;
          v32 = BOM_malloczero(0x30CuLL);
          if ((*(*(a1 + 12832) + 120))(*(*(a1 + 12832) + 8), a1 + 248, &v83, v32, 780, 1))
          {
            free(v32);
            v33 = *__error();
            v17 = _checkCopyFileError(a1);
            if (v17 > 1)
            {
              goto LABEL_105;
            }

            goto LABEL_43;
          }

          if (v73 < v32[2])
          {
            free(v32);
LABEL_40:
            v30 = a1;
LABEL_41:
            if (_checkCopyFileError(v30))
            {
              goto LABEL_105;
            }

            v17 = 0;
            goto LABEL_43;
          }

          v67 = v32[1];
          v68 = v32[2];
          strlcpy(v14, v32 + v67 + 4, __size);
          strlcpy(v13, v32 + v67 + 4, v21);
          free(v32);
          v31 = v68 - 1;
          v28 = v69;
        }

        else
        {
          if (strlcpy(v14, (v80 + 21), __size) >= __size)
          {
            goto LABEL_40;
          }

          v31 = *(v80 + 18);
        }

        v35 = _checkForDestinationConflict(a1, (a1 + 3328), v79, v78, &v82, &v81);
        if (v81 == 1)
        {
          if (v35 == 1)
          {
            v17 = v35;
          }

          else if (v35)
          {
LABEL_105:
            v17 = 2;
            goto LABEL_106;
          }
        }

        else
        {
          v36 = WORD2(v79[0]) & 0xF000;
          if (v28)
          {
            if (v36 != 0x4000)
            {
              goto LABEL_43;
            }

LABEL_66:
            HIDWORD(v47) = v36 - 0x2000;
            LODWORD(v47) = v36 - 0x2000;
            v46 = v47 >> 13;
            if (v46 <= 1)
            {
              if (!v46)
              {
                goto LABEL_74;
              }

              if (v46 != 1)
              {
                goto LABEL_43;
              }

              v48 = _copyDir(a1, v79, v78, v31, v82, v13, v21, v14, __size, v75, v28);
            }

            else
            {
              if (v46 != 2)
              {
                if (v46 == 4)
                {
                  v48 = _copyLink(a1, v79, v78, v82);
                }

                else
                {
                  if (v46 != 3)
                  {
                    goto LABEL_43;
                  }

                  v48 = _copyFile(a1, v79, v78, v82, *(a1 + 136), &v81, 0);
                }

                goto LABEL_76;
              }

LABEL_74:
              v48 = _copyDevice(a1, v79);
            }

LABEL_76:
            if (v48 == 1)
            {
              v17 = 1;
            }

            else if (v48 == 2)
            {
              v17 = v48;
              goto LABEL_106;
            }

            goto LABEL_43;
          }

          if (v36 != 0x8000)
          {
            goto LABEL_66;
          }

          if (*(a1 + 12716) != 3)
          {
            v36 = 0x8000;
            goto LABEL_66;
          }

          if (!BOMAppleDoubleIsADFile((a1 + 248)))
          {
            v36 = WORD2(v79[0]) & 0xF000;
            goto LABEL_66;
          }

          v43 = v71;
          if (v71)
          {
            if (v71 == v23)
            {
              v44 = BOM_realloc(v77, 32 * v23);
              v43 = 2 * v23;
              v45 = v44;
            }

            else
            {
              v45 = v77;
            }
          }

          else
          {
            v45 = BOM_malloc(0x40uLL);
            v43 = 4;
          }

          v71 = v43;
          if (!v45)
          {
            BOMCopierNotifyFatalError(a1, "Could not allocate space for Apple Double files.", v37, v38, v39, v40, v41, v42, v66);
            v17 = 2;
            goto LABEL_111;
          }

          v49 = BOM_malloc(v31 + 1);
          if (!v49)
          {
            BOMCopierNotifyFatalError(a1, "Could not allocate space for Apple Double filename.", v50, v51, v52, v53, v54, v55, v66);
LABEL_100:
            v17 = 2;
            if (!v23)
            {
LABEL_110:
              free(v45);
              goto LABEL_111;
            }

LABEL_108:
            v63 = v45;
            do
            {
              free(*v63);
              *v63 = 0;
              v63 += 2;
              --v23;
            }

            while (v23);
            goto LABEL_110;
          }

          v56 = v31;
          v57 = v49;
          v70 = v56;
          strlcpy(v49, v13, v56 + 1);
          v77 = v45;
          v58 = &v45[16 * v23];
          *v58 = v57;
          v58[1] = v70;
          ++v23;
        }

LABEL_43:
        v24 = (*(*(a1 + 12832) + 296))(*(*(a1 + 12832) + 8), v19, v84, &v80) == 0;
        v25 = v80;
        if (!v24 || v80 == 0)
        {
          goto LABEL_85;
        }
      }

      v29 = *__error();
      v30 = a1;
      goto LABEL_41;
    }
  }

LABEL_85:
  (*(*(a1 + 12832) + 280))(*(*(a1 + 12832) + 8), v19);
  if (!v24)
  {
    v17 = _checkCopyFileError(a1);
    goto LABEL_104;
  }

  if (v17)
  {
LABEL_104:
    v19 = 0;
LABEL_106:
    v45 = v77;
    if (!v77)
    {
      goto LABEL_111;
    }

LABEL_107:
    if (!v23)
    {
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  v45 = v77;
  if (v77 && v23)
  {
    v59 = v77;
    for (i = v23; i; --i)
    {
      v81 = 0;
      if (*v59)
      {
        if (*(a1 + 168))
        {
          goto LABEL_99;
        }

        if ((v59[1] + 1) > v73 || (strlcpy(v14, *v59, __size), strncpy(v13, *v59, v21), (*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 248, v79)))
        {
          v61 = *__error();
          if (_checkCopyFileError(a1))
          {
            goto LABEL_99;
          }
        }

        else if (_checkForDestinationConflict(a1, (a1 + 3328), v79, v78, &v82, &v81) != 1 && _copyFile(a1, v79, v78, v82, *(a1 + 136), &v81, 0) == 2)
        {
LABEL_99:
          v19 = 0;
          goto LABEL_100;
        }
      }

      v59 += 2;
    }
  }

  v19 = 0;
  v17 = 0;
  *a5 = 0;
  *v72 = 0;
  if (v77)
  {
    goto LABEL_107;
  }

LABEL_111:
  if (v19)
  {
    (*(*(a1 + 12832) + 280))(*(*(a1 + 12832) + 8), v19);
  }

LABEL_113:
  v64 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t _copyFromFileToDir(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, _BYTE *a5, uint64_t a6, unsigned int a7, int a8)
{
  v27 = 0;
  v26 = 0;
  *a3 = 47;
  *a5 = 47;
  v15 = a5 + 1;
  if (strlcpy(a3 + 1, (a1 + 2304), a4 - 1) >= a4 - 1)
  {
    return 1;
  }

  v16 = *(a1 + 152);
  if (v16)
  {
    if (!BOMBomPathIDForKey(v16, a7, (a1 + 2304)))
    {
      return 1;
    }
  }

  v17 = *(a1 + 160);
  if (v17)
  {
    if (BOMBomFSObjectExistsAtPath(v17, *(a1 + 2296)))
    {
      return 1;
    }
  }

  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 248, v25))
  {
LABEL_7:
    v18 = *__error();
    return _checkCopyFileError(a1);
  }

  v20 = a6 - 1;
  if (*(a1 + 12746) && *(a1 + 12716) == 4)
  {
    _applyIndexBomOwnershipForTargetArchive(a1, *(a1 + 2296), v25);
  }

  v21 = (*(a1 + 6400) ? a1 + 6400 : a1 + 2304);
  if (strlcpy(v15, v21, v20) >= v20)
  {
    return 1;
  }

  if (a8)
  {
    result = _checkForDestinationConflict(a1, (a1 + 3328), v25, v24, &v27, &v26);
    if (v26 == 1)
    {
      return result;
    }
  }

  else
  {
    v27 = 0;
    result = 1;
  }

  HIDWORD(v23) = (WORD2(v25[0]) & 0xF000) - 0x2000;
  LODWORD(v23) = HIDWORD(v23);
  v22 = v23 >> 13;
  if (v22 > 2)
  {
    if (v22 == 4)
    {
      result = _copyLink(a1, v25, v24, v27);
    }

    else if (v22 == 3)
    {
      result = _copyFile(a1, v25, v24, v27, *(a1 + 136), &v26, 0);
    }
  }

  else if (!v22 || v22 == 2)
  {
    result = _copyDevice(a1, v25);
  }

  if (!result)
  {
    *a5 = 0;
    *a3 = 0;
    *(a1 + 2304) = 0;
    if (a8 || *(a1 + 12716) != 3)
    {
      return 0;
    }

    else
    {
      result = set_timestamps_0((a1 + 3328), (a2 + 32), (a2 + 48));
      if (result)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t _copyExtendedAttributes(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  v10 = *(a1 + 12716);
  if (v10 != 3)
  {
    if (*(a1 + 11616))
    {
      v11 = (a1 + 10592);
    }

    else
    {
      v11 = *(a1 + 2296);
    }

    strncpy((a1 + 7424), v11, 0x400uLL);
  }

  if (a5)
  {
    if (v10 == 3 && *a5 == 2)
    {
      return 0;
    }
  }

  if ((*(a3 + 116) & 0x40000020) == 0x20 && *(a1 + 195))
  {
    if (*(a1 + 196))
    {
      v13 = 1;
    }

    else
    {
      v13 = 33;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = (*(*(a1 + 12832) + 144))(*(*(a1 + 12832) + 8), a2, 0, 0, v13);
  if (v14 != -1)
  {
    v15 = v14;
    if (!v14)
    {
      if (a5)
      {
        v16 = 0;
        *a5 = 1;
        return v16;
      }

      return 0;
    }

    v18 = BOM_malloc(v14);
    if (v18)
    {
      v19 = v18;
      v20 = (*(*(a1 + 12832) + 144))(*(*(a1 + 12832) + 8), a2, v18, v15, v13);
      if (v20 != -1)
      {
        if (v20 < 1)
        {
          v21 = 0;
LABEL_52:
          v16 = 0;
          if (a5)
          {
            *a5 = 0;
          }

          if (v21)
          {
LABEL_57:
            free(v21);
          }

LABEL_58:
          free(v19);
          return v16;
        }

        v21 = 0;
        v22 = &v19[v20];
        v23 = 3328;
        if (a4)
        {
          v23 = 7424;
        }

        v37 = v19;
        v38 = v23;
        v24 = v19;
        v36 = &v19[v20];
        while (1)
        {
          if (!strcmp(v24, "com.apple.FinderInfo") || !strcmp(v24, "com.apple.ResourceFork"))
          {
            if (!*(a1 + 169))
            {
              goto LABEL_46;
            }
          }

          else if (!*(a1 + 170))
          {
            goto LABEL_46;
          }

          v25 = (*(*(a1 + 12832) + 128))(*(*(a1 + 12832) + 8), a2, v24, 0, 0, 0, v13);
          if (v25 == -1)
          {
            v34 = *__error();
            v16 = _checkCopyFileError(a1);
            if (v21)
            {
              goto LABEL_57;
            }

            goto LABEL_58;
          }

          v26 = v25;
          if (!v21)
          {
            v21 = BOM_malloc(0x800000uLL);
            if (!v21)
            {
              v35 = *__error();
              v16 = _checkCopyFileError(a1);
              goto LABEL_58;
            }
          }

          if (v26)
          {
            v27 = 0;
            v28 = 0;
            while (1)
            {
              v29 = (v26 - v28) >= 0x800000 ? 0x800000 : v26 - v28;
              v30 = (*(*(a1 + 12832) + 128))(*(*(a1 + 12832) + 8), a2, v24, v21, v29, v27, v13);
              if (v30 == -1)
              {
                break;
              }

              v31 = v30;
              if ((*(*(a1 + 12832) + 136))(*(*(a1 + 12832) + 8), a1 + v38, v24, v21, v30, v27, 1) == -1)
              {
                break;
              }

              v28 += v31;
              v27 = (v27 + v31);
              if (v28 == v26)
              {
                v22 = v36;
                v19 = v37;
                goto LABEL_46;
              }
            }

            v33 = *__error();
            v16 = _checkCopyFileError(a1);
            v19 = v37;
            goto LABEL_57;
          }

LABEL_46:
          v24 += strlen(v24) + 1;
          if (v24 >= v22)
          {
            goto LABEL_52;
          }
        }
      }
    }
  }

  v32 = *__error();

  return _checkCopyFileError(a1);
}

uint64_t _copyACLs(uint64_t a1, char *path_p, int a3, int a4, _DWORD *a5)
{
  v23 = 0;
  entry_p = 0;
  acl_p = 0;
  if (*(a1 + 12716) != 3)
  {
    return 0;
  }

  flagset_d = 0;
  if (a4)
  {
    link_np = acl_get_link_np(path_p, ACL_TYPE_EXTENDED);
    if (link_np)
    {
      v10 = link_np;
      v11 = acl_get_link_np((a1 + 3328), ACL_TYPE_EXTENDED);
      goto LABEL_8;
    }

LABEL_26:
    if (*__error() == 2)
    {
      v12 = 0;
      if (a5)
      {
        *a5 = 0;
      }
    }

    else
    {
      v18 = *__error();
      v12 = _checkCopyFileError(a1);
    }

    goto LABEL_36;
  }

  file = acl_get_file(path_p, ACL_TYPE_EXTENDED);
  if (!file)
  {
    goto LABEL_26;
  }

  v10 = file;
  v11 = acl_get_file((a1 + 3328), ACL_TYPE_EXTENDED);
LABEL_8:
  acl_p = v11;
  if (!v11)
  {
    if (*__error() != 2 && *__error() != 63)
    {
      goto LABEL_34;
    }

    acl_p = acl_init(4);
  }

  v14 = v10;
  v15 = 0;
  while (!acl_get_entry(v14, v15, &entry_p))
  {
    acl_get_flagset_np(entry_p, &flagset_d);
    if (!acl_get_flag_np(flagset_d, ACL_ENTRY_INHERITED) && (acl_create_entry(&acl_p, &v23) == -1 || acl_copy_entry(v23, entry_p) == -1))
    {
      goto LABEL_34;
    }

    if (entry_p)
    {
      v15 = -1;
    }

    else
    {
      v15 = 0;
    }

    v14 = v10;
  }

  if (a3)
  {
    v16 = (a1 + 7424);
  }

  else
  {
    v16 = (a1 + 3328);
  }

  if (a4)
  {
    v17 = acl_set_link_np(v16, ACL_TYPE_EXTENDED, acl_p);
  }

  else
  {
    v17 = acl_set_file(v16, ACL_TYPE_EXTENDED, acl_p);
  }

  if (v17 != -1)
  {
    v12 = 0;
    if (a5)
    {
      *a5 = 0;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = *__error();
  v12 = _checkCopyFileError(a1);
LABEL_35:
  acl_free(v10);
LABEL_36:
  if (acl_p)
  {
    acl_free(acl_p);
  }

  return v12;
}

uint64_t _checkForDestinationConflict(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _DWORD *a6)
{
  *a5 = 0;
  *a6 = 0;
  if (*(a1 + 12820))
  {
    v12 = dirname_r(a2, (a1 + 9472));
    if (!v12 || !(*(*(a1 + 12832) + 160))(*(*(a1 + 12832) + 8), v12, a1 + 8448) && *__error() != 2)
    {
      goto LABEL_31;
    }

    v13 = strlen((a1 + 4352));
    if (strncmp((a1 + 4352), (a1 + 8448), v13))
    {
      *a6 = 1;
      v14 = a1;
LABEL_33:

      return _checkCopyFileError(v14);
    }
  }

  if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a2, a4))
  {
LABEL_8:
    if (*__error() == 2 || *__error() == 63)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

  v16 = 1;
  while (1)
  {
    v17 = *(a4 + 4);
    v18 = v17 & 0xF000;
    if ((*(a3 + 4) & 0xF000) != 0x4000)
    {
      if (v18 != 0x4000)
      {
        goto LABEL_37;
      }

LABEL_21:
      if ((v16 & 1) == 0 || (BOMFSObjectTypeForMode(v17), BOMFSObjectTypeForMode(*(a3 + 4)), _checkCopyFileConflictError(a1) != 3))
      {
        *a6 = 1;
        goto LABEL_32;
      }

      goto LABEL_23;
    }

    if (v18 == 0x4000)
    {
      goto LABEL_37;
    }

    if (v18 != 40960)
    {
      goto LABEL_21;
    }

    v19 = *(a1 + 12816);
    if (v19 != 2)
    {
      break;
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_38;
    }

    BOMFSObjectTypeForMode(v17);
    BOMFSObjectTypeForMode(*(a3 + 4));
    if (_checkCopyFileConflictError(a1) != 3)
    {
      goto LABEL_38;
    }

LABEL_23:
    v20 = (*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a2, a4);
    v16 = 0;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  if (v19 == 1)
  {
    if ((*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8), a2, a4))
    {
      goto LABEL_31;
    }

    if ((*(a4 + 4) & 0xF000) == 0x4000)
    {
LABEL_37:
      *a5 = 1;
      return 0;
    }

LABEL_38:
    *a6 = 1;
    v14 = a1;
    goto LABEL_33;
  }

  if (v19)
  {
    return 0;
  }

  if ((*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 3328))
  {
LABEL_31:
    *a6 = 1;
    v21 = *__error();
LABEL_32:
    v14 = a1;
    goto LABEL_33;
  }

LABEL_10:
  *a5 = 0;
  return 0;
}

uint64_t _copyFile(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, _DWORD *a5, int *a6, int a7)
{
  v72[0] = a4;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v11 = (a1 + 11616);
  v68 = 0uLL;
  v67 = 0uLL;
  if (*(a1 + 12712))
  {
LABEL_2:
    v12 = 0;
    v13 = 0;
    v14 = (a2 + 116);
    v59 = (*(a2 + 116) & 0x40000020) == 32;
    v15 = *(a2 + 96);
    goto LABEL_3;
  }

  if (BOMAppleDoubleIsADFile((a1 + 248)))
  {
    if (*(a1 + 169))
    {
      goto LABEL_21;
    }

    goto LABEL_2;
  }

  v14 = (a2 + 116);
  v59 = (*(a2 + 116) & 0x40000020) == 32;
  if ((*(a2 + 116) & 0x40000020) == 0x20)
  {
    if (*(a1 + 195))
    {
      v31 = 33;
    }

    else
    {
      v31 = 1;
    }
  }

  else
  {
    v31 = 1;
  }

  v32 = *(a2 + 96);
  v33 = (*(*(a1 + 12832) + 128))(*(*(a1 + 12832) + 8), a1 + 248, "com.apple.ResourceFork", 0, 0, 0, v31);
  if (v33 == -1)
  {
    if (*__error() != 2 && *__error() != 93 && *__error() != 45)
    {
      v39 = __error();
      v33 = 0;
      v13 = *v39;
      goto LABEL_45;
    }

    v33 = 0;
  }

  v13 = 0;
LABEL_45:
  v15 = v33 + v32;
  v12 = 1;
LABEL_3:
  if (*(a1 + 12712))
  {
    v16 = a1 + 248;
  }

  else
  {
    v16 = *(a1 + 2296);
  }

  v17 = BOMFSObjectTypeForMode(*(a2 + 4));
  *v11 = 0;
  v11[1025] = 0;
  v18 = *(a1 + 88);
  v61 = v16;
  v60 = v17;
  if (v18)
  {
    v19 = v16;
    v20 = v15;
    v21 = v18(a1, v19, v17, v15);
  }

  else
  {
    v20 = v15;
    v21 = 0;
  }

  if (*(a1 + 168))
  {
    v22 = 2;
  }

  else
  {
    v22 = v21;
  }

  if (v22 == 1)
  {
LABEL_21:
    *a6 = 1;
    v25 = *(a1 + 12712);
    if (v25 == 2)
    {
      File = BOMPKZipGetFile(*(a1 + 12752));
      v28 = File;
      if (v11[1153] && BOMFileSetCompression(File, 1, 1, *(a1 + 12792)))
      {
        v29 = *__error();
        _checkCopyFileError(a1);
        v22 = 2;
        goto LABEL_139;
      }

      if (*(a1 + 12776))
      {
        BOMFileSetPartialRead(v28, 1);
      }

      v26 = _skipPKZipFile();
    }

    else
    {
      if (v25 != 1)
      {
        goto LABEL_138;
      }

      v26 = _skipCPIOFile(a1, a2);
    }

    v22 = 2 * (v26 != 0);
    goto LABEL_139;
  }

  if (v22 != 2)
  {
    if (v13)
    {
      v23 = a1;
LABEL_19:
      v24 = _checkCopyFileError(v23);
LABEL_20:
      v22 = v24;
      goto LABEL_139;
    }

    if (*v11)
    {
      LODWORD(v64[0]) = 0;
      v30 = (a1 + 10592);
      v24 = _checkForDestinationConflict(a1, (a1 + 10592), a2, a3, v72, v64);
      if (LODWORD(v64[0]) == 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = (a1 + 3328);
    }

    v58 = v30;
    if (v11[1025] && !*(a1 + 12712))
    {
      v34 = (a1 + 11617);
      if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 11617, a2) == -1)
      {
LABEL_85:
        v42 = *__error();
        v23 = a1;
        goto LABEL_19;
      }

      if ((*(a2 + 4) & 0xF000) != 0x8000)
      {
        v23 = a1;
        goto LABEL_19;
      }
    }

    else
    {
      v34 = (a1 + 248);
    }

    if (*(a1 + 12716) == 3)
    {
      v57 = *v14;
    }

    else
    {
      v57 = 0;
    }

    *(a1 + 196) = 1;
    v35 = a5;
    v36 = a6;
    v37 = _copyDataFork(a1, v34, a2, a3, v72[0], v35, a6, a7);
    if (v37)
    {
      v22 = v37;
      if (*(a1 + 12716) != 3)
      {
        goto LABEL_139;
      }

LABEL_55:
      (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 7424);
      goto LABEL_139;
    }

    if (*a6)
    {
      v71 = *a6;
    }

    else
    {
      if (*(a1 + 12716) == 3)
      {
        if (v11[1232] || (v38 = *(a1 + 195), *(a1 + 195)))
        {
          v69 = AFSCLockFilePath();
          if (!v69)
          {
LABEL_89:
            v44 = *__error();
            (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 7424);
LABEL_90:
            v23 = a1;
            goto LABEL_19;
          }

          v38 = *a6;
        }
      }

      else
      {
        v38 = 0;
      }

      v71 = v38;
      if (v38)
      {
        v40 = 0;
      }

      else
      {
        v40 = v12;
      }

      if (v40 == 1)
      {
        if (*(a1 + 12716) == 3)
        {
          if (*(a1 + 170) || *(a1 + 169))
          {
            v22 = _copyExtendedAttributes(a1, v34, a2, 1, &v71);
          }

          else
          {
            v22 = 0;
          }

          if (*(a1 + 171) && !v22)
          {
            v22 = _copyACLs(a1, v34, 1, 0, &v71);
          }

          if (v22)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v24 = _copyAppleDoubleToArchive(a1, v34, a2, &v71);
          if (v24)
          {
            goto LABEL_20;
          }
        }
      }
    }

    v41 = *(a1 + 216);
    if (v41 && setxattr((a1 + 7424), "com.apple.provenance", v41, *(a1 + 224), 0, 1))
    {
      goto LABEL_85;
    }

    v43 = v20;
    if (!*a6 && *(a1 + 12716) == 3)
    {
      if (_chPerms(a1, (a1 + 7424), a2, &v70, 1))
      {
        goto LABEL_89;
      }

      v45 = *(a2 + 32);
      v67 = *(a2 + 48);
      v68 = v45;
      if (set_timestamps_0((a1 + 7424), &v68, &v67))
      {
        if (*__error() != 13 && *__error() != 1)
        {
          goto LABEL_89;
        }

        *__error() = 0;
      }

      if (*(a1 + 12712) && *(a1 + 12716) == 3 && *(a1 + 169) && BOMAppleDoubleIsADFile(v58))
      {
        __strlcpy_chk();
        __strlcat_chk();
        if ((*(*(a1 + 12832) + 264))(*(*(a1 + 12832) + 8), a1 + 7424, a1 + 8448))
        {
          goto LABEL_89;
        }

        v36 = a6;
        if (v61 == a1 + 248)
        {
          __strlcat_chk();
        }
      }

      else if (!v11[1207] && (a7 & 1) == 0 && (*(*(a1 + 12832) + 264))(*(*(a1 + 12832) + 8), a1 + 7424, v58))
      {
        goto LABEL_89;
      }

      if (v57)
      {
        if (*(a1 + 10496))
        {
          v46 = v57 & 0xC000FFFF;
        }

        else
        {
          v46 = v57;
        }

        if (v59 && (!*(a1 + 195) || *(a1 + 196)))
        {
          v46 = v46 & 0xFFFFFFDF;
        }

        if (v46)
        {
          v47 = *v14;
          v65 = 0u;
          v66 = 0u;
          memset(v64, 0, sizeof(v64));
          if (!(*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8), v58, v64))
          {
            v47 = DWORD1(v65);
            if ((DWORD1(v65) & 0x40000020) == 0x20)
            {
              v48 = v46 | 0x20;
            }

            else
            {
              v48 = v46;
            }

            if (v11[1232])
            {
              v49 = v48;
            }

            else
            {
              v49 = v46;
            }

            if ((~v49 & 0x40000020) != 0)
            {
              v46 = v49;
            }

            else
            {
              v46 = v49 & 0xBFFFFFDF;
            }
          }

          if (change_flags_0(a1, v58, v47, v46) || set_timestamps_0(v58, &v68, &v67))
          {
            v50 = *__error();
            goto LABEL_90;
          }

          v43 = v20;
        }
      }

      if (*(a1 + 197))
      {
        FSObjectAtPath = BOMBomGetFSObjectAtPath(*(a1 + 152), *(a1 + 2296));
        v52 = v43;
        v53 = BOMFSObjectChecksum(FSObjectAtPath);
        BOMFSObjectFree(FSObjectAtPath);
        v54 = v53 == *(a1 + 200);
        v43 = v52;
        if (!v54)
        {
          if (*(a1 + 56))
          {
            goto LABEL_90;
          }
        }
      }
    }

    if (*(a1 + 12712) == 2 && *(a1 + 12776))
    {
      v43 = *(a2 + 96);
    }

    v55 = *(a1 + 96);
    if (v55)
    {
      v55(a1, v61, v60, v43, *v36);
    }

LABEL_138:
    v22 = 0;
  }

LABEL_139:
  _unlockAFSCFileLock(&v69);
  return v22;
}

uint64_t _copyDir(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char *a8, size_t a9, unsigned int a10, unsigned __int8 a11)
{
  v17 = a11;
  v71 = a5;
  v70 = 0;
  v69 = 0uLL;
  v68 = 0uLL;
  if (!*(a1 + 12712) && *a2 == *(a1 + 236) && *(a2 + 8) == *(a1 + 240))
  {
    return 0;
  }

  v18 = (a1 + 11616);
  v19 = BOMFSObjectTypeForMode(*(a2 + 4));
  v20 = *(a1 + 2296);
  *v18 = 0;
  *(a1 + 12641) = 0;
  v21 = *(a1 + 88);
  v22 = v21 ? v21(a1, v20, v19, 0) : 0;
  v23 = *(a1 + 168) ? 2 : v22;
  if (v23 == 1)
  {
    return 0;
  }

  if (v23 == 2)
  {
    return 2;
  }

  v61 = a6;
  v62 = a4;
  if (*v18)
  {
    LODWORD(v67) = 0;
    v25 = (a1 + 10592);
    v24 = _checkForDestinationConflict(a1, (a1 + 10592), a2, a3, &v71, &v67);
    if (v67 == 1)
    {
      return v24;
    }
  }

  else
  {
    v24 = 0;
    v25 = (a1 + 3328);
  }

  if (!*(a1 + 12641) || *(a1 + 12712))
  {
    v60 = a9;
    v26 = v25;
    path_p = (a1 + 248);
    goto LABEL_20;
  }

  if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 11617, a2) == -1)
  {
    v31 = *__error();
    v32 = a1;
  }

  else
  {
    path_p = (a1 + 11617);
    if ((*(a2 + 4) & 0xF000) == 0x4000)
    {
      v60 = a9;
      v26 = v25;
      v19 = v19;
LABEL_20:
      v59 = a8;
      if (*(a1 + 12712) || *(a1 + 12716) != 3 || (*(a2 + 118) & 1) == 0)
      {
LABEL_25:
        v28 = *(a1 + 12716);
        if (v28 == 3)
        {
          if (v71)
          {
            v29 = v17;
            if (v17 || !*(a1 + 12822))
            {
              goto LABEL_45;
            }
          }

          else
          {
            v29 = v17;
            if (v17)
            {
              goto LABEL_45;
            }
          }

          if (!_makeDestDir(a1, v26, 1, a2, &v70))
          {
LABEL_45:
            v34 = v70;
            v35 = v70 != 0;
            if (v70)
            {
              v55 = *(a2 + 4);
              v36 = strdup(v26);
            }

            else
            {
              v55 = 0;
              v36 = v26;
            }

            v57 = v71;
            v56 = v71 | v29;
            if (v56)
            {
              v37 = v35;
            }

            else
            {
              v38 = *(a2 + 32);
              v68 = *(a2 + 48);
              v69 = v38;
              if (!v34)
              {
                v39 = strdup(v36);
                v37 = 1;
LABEL_53:
                v40 = *(a1 + 12712);
                if (v40 == 2)
                {
                  if (!*(a1 + 12776))
                  {
                    goto LABEL_89;
                  }

                  if (*(a1 + 12769))
                  {
                    File = BOMPKZipGetFile(*(a1 + 12752));
                    BOMFileSetPartialRead(File, 1);
                    v42 = BOMPKZipGetFile(*(a1 + 12752));
                    if (BOMFileSetCompression(v42, 1, 1, *(a1 + 12792)))
                    {
                      goto LABEL_103;
                    }

                    v54 = v37;
                    v43 = BOMPKZipGetFile(*(a1 + 12752));
                      ;
                    }

                    v44 = BOMPKZipGetFile(*(a1 + 12752));
                    if (BOMFileSetCompression(v44, 0, 1, *(a1 + 12792)))
                    {
                      v45 = *__error();
                      v24 = _checkCopyFileError(a1);
                      if ((v54 & 1) == 0)
                      {
                        return v24;
                      }

LABEL_104:
                      free(v39);
                      return v24;
                    }

                    v48 = BOMPKZipGetFile(*(a1 + 12752));
                    BOMFileSetPartialRead(v48, 0);
                    v37 = v54;
                  }

                  v66 = 0;
                  v49 = BOMPKZipGetFile(*(a1 + 12752));
                  if (BOMFileRead(v49, &v66, 4uLL) != 4)
                  {
                    goto LABEL_103;
                  }

                  if (v66 != 134695760)
                  {
                    goto LABEL_103;
                  }

                  v65 = 0;
                  v67 = 0;
                  v64 = 0;
                  if (BOMPKZipReadDataDescriptor(*(a1 + 12752), *(a1 + 12812), &v65, &v67, &v64))
                  {
                    goto LABEL_103;
                  }

                  v40 = *(a1 + 12712);
                }

                if (v40 <= 1)
                {
                  if (v40)
                  {
                    if (v40 != 1)
                    {
                      goto LABEL_92;
                    }

                    v50 = _copyFromCPIO(a1, a2, a3, v59, v60, v57);
                  }

                  else
                  {
                    v50 = _copyFromDirToDir(a1, a2, v61 + v62, a7 - v62, &v59[v62], v60 - v62, a10);
                  }

                  goto LABEL_91;
                }

                if (v40 != 2)
                {
                  if (v40 == 3)
                  {
                    v24 = 2;
                    if ((v37 & 1) == 0)
                    {
                      return v24;
                    }

                    goto LABEL_104;
                  }

LABEL_92:
                  if (v24)
                  {
                    goto LABEL_93;
                  }

                  if (v56 || *(a1 + 12712))
                  {
                    goto LABEL_97;
                  }

                  if (*(a1 + 12716) == 3)
                  {
                    if (!*(a1 + 170) && !*(a1 + 169) || (v53 = _copyExtendedAttributes(a1, path_p, a2, 0, 0), !v53))
                    {
                      if (!*(a1 + 171))
                      {
                        goto LABEL_97;
                      }

                      v53 = _copyACLs(a1, path_p, 0, 0, 0);
                      if (!v53)
                      {
                        goto LABEL_97;
                      }
                    }
                  }

                  else
                  {
                    v53 = _copyAppleDoubleToArchive(a1, path_p, a2, 0);
                    if (!v53)
                    {
LABEL_97:
                      if (v70)
                      {
                        if ((*(*(a1 + 12832) + 200))(*(*(a1 + 12832) + 8), v39, v55) == -1)
                        {
                          goto LABEL_103;
                        }

                        v57 = v71;
                      }

                      if (*(a1 + 12716) != 3 || v57 | v29 || !set_timestamps_0(v39, &v69, &v68))
                      {
                        if (!*(a1 + 12712))
                        {
                          v52 = *(a1 + 96);
                          if (v52)
                          {
                            v52(a1, *(a1 + 2296), v19, 0, 0);
                            v24 = 0;
                            if ((v37 & 1) == 0)
                            {
                              return v24;
                            }

                            goto LABEL_104;
                          }
                        }

                        v24 = 0;
                        goto LABEL_93;
                      }

LABEL_103:
                      v51 = *__error();
                      v24 = _checkCopyFileError(a1);
                      if ((v37 & 1) == 0)
                      {
                        return v24;
                      }

                      goto LABEL_104;
                    }
                  }

                  v24 = v53;
LABEL_93:
                  if (!v37)
                  {
                    return v24;
                  }

                  goto LABEL_104;
                }

LABEL_89:
                v50 = _copyFromPKZip(a1, a2, a3, v59, v60);
LABEL_91:
                v24 = v50;
                goto LABEL_92;
              }

              v37 = 1;
            }

            v39 = v36;
            goto LABEL_53;
          }
        }

        else
        {
          v29 = v17;
          v30 = v26;
          if (!*v18)
          {
            v30 = *(a1 + 2296);
          }

          strncpy((a1 + 7424), v30, 0x400uLL);
          if (v17)
          {
            goto LABEL_45;
          }

          if (v28 == 4)
          {
            if (!BOMCPIOWriteDirectory(*(a1 + 12736), (a1 + 7424), a2))
            {
              goto LABEL_45;
            }
          }

          else if (!BOMPKZipWriteLocalHeader(*(a1 + 12760), (a1 + 7424), a2, 0, 0))
          {
            goto LABEL_45;
          }
        }

LABEL_44:
        v33 = *__error();
        return _checkCopyFileError(a1);
      }

      v27 = BOM_malloc(0x400uLL);
      v67 = 0;
      if (BOMHardLinkTableGetPathAndData(*a1, *a2, *(a2 + 8), v27, &v67))
      {
        BOMHardLinkTableSetPathAndData(*a1, *a2, *(a2 + 8), v26, (a2 + 96), 8uLL);
        free(v27);
        goto LABEL_25;
      }

      if (v71 && (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), v26))
      {
        free(v27);
        goto LABEL_44;
      }

      v47 = (*(*(a1 + 12832) + 240))(*(*(a1 + 12832) + 8), v27, v26);
      free(v27);
      if (v47)
      {
        v17 = a11;
        if (*__error() != 18)
        {
          goto LABEL_44;
        }

        goto LABEL_25;
      }

      return 0;
    }

    v32 = a1;
  }

  return _checkCopyFileError(v32);
}

uint64_t _copyLink(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = (a1 + 11616);
  v47 = a4;
  v46 = 0;
  v8 = BOMFSObjectTypeForMode(*(a2 + 4));
  if (*(a1 + 12712))
  {
    v9 = (a1 + 248);
  }

  else
  {
    v9 = *(a1 + 2296);
  }

  *v7 = 0;
  v7[1025] = 0;
  v10 = *(a1 + 88);
  if (v10)
  {
    v11 = v10(a1, v9, v8, 0);
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 168))
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 1)
  {
    v12 = 0;
LABEL_16:
    if (*(a1 + 12712) == 1)
    {
      if (_skipCPIOFile(a1, a2))
      {
        return 2;
      }

      else
      {
        return v12;
      }
    }

    return v12;
  }

  if (v12 == 2)
  {
    return v12;
  }

  if (*v7)
  {
    v45 = 0;
    v13 = (a1 + 10592);
    v14 = _checkForDestinationConflict(a1, (a1 + 10592), a2, a3, &v47, &v45);
    if (v45 == 1)
    {
LABEL_14:
      v12 = v14;
      goto LABEL_16;
    }
  }

  else
  {
    v13 = (a1 + 3328);
  }

  if (v7[1025] && !*(a1 + 12712))
  {
    v16 = (a1 + 11617);
    if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 11617, a2) == -1)
    {
      goto LABEL_83;
    }

    if ((*(a2 + 4) & 0xF000) != 0xA000)
    {
      v19 = a1;
      goto LABEL_84;
    }
  }

  else
  {
    v16 = (a1 + 248);
  }

  v17 = 0;
  v18 = *(a1 + 12712);
  if (v18 <= 1)
  {
    if (!v18)
    {
      v17 = (*(*(a1 + 12832) + 256))(*(*(a1 + 12832) + 8), v16, *(a1 + 8), *(a1 + 16));
      if (v17 == -1)
      {
        goto LABEL_83;
      }

LABEL_37:
      *(*(a1 + 8) + v17) = 0;
      v20 = *(a1 + 12716);
      switch(v20)
      {
        case 5:
          v29 = crc32(0, 0, 0);
          if (*v7)
          {
            v30 = v13;
          }

          else
          {
            v30 = v9;
          }

          strncpy((a1 + 7424), v30, 0x400uLL);
          v31 = crc32(v29, *(a1 + 8), v17);
          if (BOMPKZipWriteLocalHeader(*(a1 + 12760), (a1 + 7424), a2, v31, v17))
          {
            goto LABEL_83;
          }

          File = BOMPKZipGetFile(*(a1 + 12760));
          if (BOMFileWrite(File, *(a1 + 8), v17) != v17)
          {
            goto LABEL_83;
          }

          break;
        case 4:
          if (*v7)
          {
            v28 = v13;
          }

          else
          {
            v28 = v9;
          }

          strncpy((a1 + 7424), v28, 0x400uLL);
          if (BOMCPIOWriteSymlink(*(a1 + 12736), (a1 + 7424), a2, *(a1 + 8)))
          {
            goto LABEL_83;
          }

          break;
        case 3:
          if (!*(a1 + 173) || !v47 || (*(a3 + 4) & 0xF000) != 0xA000)
          {
            goto LABEL_46;
          }

          v21 = (*(*(a1 + 12832) + 256))(*(*(a1 + 12832) + 8), v13, a1 + 8448, 1024);
          if (v21 == -1)
          {
            goto LABEL_83;
          }

          *(a1 + 8448 + v21) = 0;
          if (v17 != v21 || strcmp(*(a1 + 8), (a1 + 8448)))
          {
LABEL_46:
            _parentPath(v13, (a1 + 7424), 0x400uLL);
            __strlcat_chk();
            if (!(*(*(a1 + 12832) + 336))(*(*(a1 + 12832) + 8), a1 + 7424) || (*(*(a1 + 12832) + 248))(*(*(a1 + 12832) + 8), *(a1 + 8), a1 + 7424))
            {
              goto LABEL_83;
            }

            if (*(a1 + 12712) == 1)
            {
              v22 = _chPerms(a1, (a1 + 7424), a2, &v46, 1);
              v23 = *(a1 + 12832);
              v24 = *(v23 + 224);
              v25 = *(v23 + 8);
              if (v22)
              {
                v24(v25, a1 + 7424);
                v26 = *__error();
                v27 = a1;
                return _checkCopyFileError(v27);
              }

              if (!v24(v25, v13) || *__error() == 2 || *__error() == 63)
              {
                v38 = BOM_malloc(0x18uLL);
                if (!v38)
                {
                  goto LABEL_99;
                }

                v39 = v38;
                v40 = strlen(v13);
                v41 = strlen((a1 + 7424));
                v44 = strlen(v9);
                *v39 = BOM_malloc(v40 + 1);
                v39[1] = BOM_malloc(v41 + 1);
                v42 = BOM_malloc(v44 + 1);
                v39[2] = v42;
                if (!*v39 || !v39[1] || !v42)
                {
LABEL_99:
                  v27 = a1;
                  return _checkCopyFileError(v27);
                }

                memcpy(*v39, v13, v40 + 1);
                memcpy(v39[1], (a1 + 7424), v41 + 1);
                memcpy(v39[2], v9, v44 + 1);
                BOMStackPush(*(a1 + 40), v39);
                v33 = 1;
LABEL_64:
                if (!*(a1 + 12712))
                {
                  if (*(a1 + 12716) == 3)
                  {
                    if (*(a1 + 170) || *(a1 + 169))
                    {
                      v14 = _copyExtendedAttributes(a1, v16, a2, 0, 0);
                      if (v14)
                      {
                        goto LABEL_14;
                      }
                    }

                    if (*(a1 + 171))
                    {
                      v14 = _copyACLs(a1, v16, 0, 1, 0);
                      if (v14)
                      {
                        goto LABEL_14;
                      }
                    }
                  }

                  else
                  {
                    v14 = _copyAppleDoubleToArchive(a1, v16, a2, 0);
                    if (v14)
                    {
                      goto LABEL_14;
                    }
                  }
                }

                if ((v33 & 1) == 0)
                {
                  v34 = *(a1 + 96);
                  if (v34)
                  {
                    v34(a1, v9, v8, 0, 0);
                  }
                }

                return 0;
              }

LABEL_98:
              v43 = *__error();
              v27 = a1;
              return _checkCopyFileError(v27);
            }

            if ((*(*(a1 + 12832) + 264))(*(*(a1 + 12832) + 8), a1 + 7424, v13))
            {
LABEL_83:
              v37 = *__error();
              v19 = a1;
              goto LABEL_84;
            }

            if (_chPerms(a1, v13, a2, &v46, 1))
            {
              (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), v13);
              goto LABEL_98;
            }
          }

          break;
      }

      v33 = 0;
      goto LABEL_64;
    }

    if (v18 != 1)
    {
      goto LABEL_37;
    }

    v17 = *(a2 + 96);
    if (v17 >= 1025)
    {
      v14 = _checkCopyFileError(a1);
      goto LABEL_14;
    }

    v35 = BOMCPIORead(*(a1 + 12728), *(a1 + 8), *(a2 + 96));
LABEL_71:
    if (v35 != v17)
    {
      goto LABEL_83;
    }

    goto LABEL_37;
  }

  if (v18 != 2)
  {
    if (v18 != 3)
    {
      goto LABEL_37;
    }

    return 2;
  }

  v17 = *(a2 + 96);
  if (v17 < 1025)
  {
    v36 = BOMPKZipGetFile(*(a1 + 12752));
    v35 = BOMFileRead(v36, *(a1 + 8), v17);
    goto LABEL_71;
  }

  v19 = a1;
LABEL_84:

  return _checkCopyFileError(v19);
}

uint64_t _copyDevice(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 11616);
  v5 = BOMFSObjectTypeForMode(*(a2 + 4));
  if (*(a1 + 12712))
  {
    v6 = a1 + 248;
  }

  else
  {
    v6 = *(a1 + 2296);
  }

  *v4 = 0;
  v4[1025] = 0;
  v7 = *(a1 + 88);
  if (v7)
  {
    v8 = v7(a1, v6, v5, 0);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 168))
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if (v9 == 1)
  {
    return 0;
  }

  if (v9 == 2)
  {
    return 2;
  }

  memset(v18, 0, sizeof(v18));
  if (!*v4)
  {
    v11 = (a1 + 3328);
    goto LABEL_17;
  }

  v16 = 0;
  v11 = (a1 + 10592);
  result = _checkForDestinationConflict(a1, (a1 + 10592), a2, v18, &v17, &v16);
  if (v16 != 1)
  {
LABEL_17:
    if (v4[1025] && !*(a1 + 12712))
    {
      if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 11617, a2) == -1)
      {
        goto LABEL_34;
      }

      if ((*(a2 + 4) & 0xB000 | 0x4000) != 0x6000)
      {
        v14 = a1;
        return _checkCopyFileError(v14);
      }
    }

    v12 = *(a1 + 12716);
    if (v12 != 4)
    {
      if (v12 == 3)
      {
        _parentPath(v11, (a1 + 7424), 0x400uLL);
        __strlcat_chk();
        if (!(*(*(a1 + 12832) + 336))(*(*(a1 + 12832) + 8), a1 + 7424) || (*(*(a1 + 12832) + 176))(*(*(a1 + 12832) + 8), a1 + 7424, *(a2 + 4), *(a2 + 24)) || (*(*(a1 + 12832) + 192))(*(*(a1 + 12832) + 8), a1 + 7424, *(a2 + 16), *(a2 + 20)) || set_timestamps_0((a1 + 7424), (a2 + 32), (a2 + 48)) || (*(*(a1 + 12832) + 264))(*(*(a1 + 12832) + 8), a1 + 7424, a1 + 3328))
        {
          goto LABEL_34;
        }
      }

      goto LABEL_28;
    }

    __strlcpy_chk();
    if (!BOMCPIOWriteDevice(*(a1 + 12736), (a1 + 7424), a2))
    {
LABEL_28:
      v13 = *(a1 + 96);
      if (v13)
      {
        v13(a1, v6, v5, 0, 0);
      }

      return 0;
    }

LABEL_34:
    v15 = *__error();
    v14 = a1;
    return _checkCopyFileError(v14);
  }

  return result;
}

void *_unlockAFSCFileLock(void *result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      result = AFSCUnlockFile();
      if (result)
      {
        return fprintf(*MEMORY[0x277D85DF8], "Could not unlock AFSC file: %d\n", result);
      }
    }
  }

  return result;
}

uint64_t _skipCPIOFile(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12728);
  v4 = *(a2 + 96);
  if (BOMCPIOSeek() != -1)
  {
    return 0;
  }

  v6 = __error();
  v7 = strerror(*v6);
  BOMCopierNotifyFatalError(a1, "cpio seek error: %s", v8, v9, v10, v11, v12, v13, v7);
  return 2;
}

uint64_t _skipPKZipFile()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v44 = *MEMORY[0x277D85DE8];
  v4 = v0 + 12288;
  File = BOMPKZipGetFile(*(v0 + 12752));
  v6 = File;
  if (!*(v3 + 12776))
  {
    goto LABEL_22;
  }

  BOMFileSetPartialRead(File, 1);
  if (!*(v4 + 481) || !BOMFileSetCompression(v6, 1, 1, *(v3 + 12792)))
  {
    while (!BOMFileEndOfCompressionStream(v6))
    {
      if ((BOMFileRead(v6, v43, 0x20000uLL) & 0x8000000000000000) != 0)
      {
        v16 = __error();
        v37 = strerror(*v16);
        v14 = "pkzip read seek error: %s";
        goto LABEL_11;
      }
    }

    if (*(v4 + 481) && BOMFileSetCompression(v6, 0, 1, *(v3 + 12792)))
    {
      v15 = __error();
      v37 = strerror(*v15);
      v14 = "pkzip set compression (0,1) error: %s";
      goto LABEL_11;
    }

    BOMFileSetPartialRead(v6, 0);
    v42 = 0;
    if (BOMFileRead(v6, &v42, 4uLL) == 4)
    {
      if (v42 == 134695760)
      {
        v41 = 0;
        v39 = 0;
        v40 = 0;
        if (BOMPKZipReadDataDescriptor(*(v3 + 12752), *(v4 + 524), &v41, &v40, &v39))
        {
          v19 = __error();
          v37 = strerror(*v19);
          v14 = "Could not read pkzip data descriptor: %s";
          goto LABEL_11;
        }

        *(v2 + 96) = v39;
        v28 = BOMPKZipGetFile(*(v3 + 12752));
        BOMFileSetPartialRead(v28, 1);
LABEL_22:
        if (*(v4 + 481))
        {
          v29 = BOMPKZipGetFile(*(v3 + 12752));
          if (BOMFileSetCompression(v29, 0, 1, *(v3 + 12792)))
          {
            goto LABEL_12;
          }
        }

        if (*(v3 + 12776))
        {
          result = 0;
          goto LABEL_13;
        }

        v30 = *(v3 + 12752);
        NumLocalHeaders = BOMPKZipGetNumLocalHeaders(v30);
        result = BOMPKZipGetFileCompressedSize(v30, NumLocalHeaders - 1);
        if (!result)
        {
          goto LABEL_13;
        }

        v32 = result;
        while (1)
        {
          v33 = v32 >= 0x20000 ? 0x20000 : v32;
          v34 = BOMFileRead(v6, v43, v33);
          if ((v34 & 0x8000000000000000) != 0)
          {
            break;
          }

          v35 = v34;
          result = 0;
          v32 -= v35;
          if (!v32)
          {
            goto LABEL_13;
          }
        }

        v36 = __error();
        v37 = strerror(*v36);
        v14 = "pkzip seek error: %s";
        goto LABEL_11;
      }

      v20 = "pkzip spanning doesn't match: %s";
    }

    else
    {
      v20 = "pkzip read span error: %s";
    }

    v21 = __error();
    v38 = strerror(*v21);
    BOMCopierNotifyFatalError(v3, v20, v22, v23, v24, v25, v26, v27, v38);
    goto LABEL_12;
  }

  v7 = __error();
  v37 = strerror(*v7);
  v14 = "pkzip set compression (1,1) error: %s";
LABEL_11:
  BOMCopierNotifyFatalError(v3, v14, v8, v9, v10, v11, v12, v13, v37);
LABEL_12:
  result = 2;
LABEL_13:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _copyDataFork(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, int *a7, int a8)
{
  v297 = *MEMORY[0x277D85DE8];
  v294 = 0;
  v295 = 0;
  v292 = 0;
  v293 = 0;
  v290 = 0;
  v291 = 0;
  v273 = *(a1 + 197);
  if (a6)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(a1 + 173) != 0;
  }

  v272 = *(a1 + 12716);
  if (v272 == 5)
  {
    HIDWORD(v291) = crc32(0, 0, 0);
  }

  v15 = (a1 + 11616);
  if (*(a1 + 12712))
  {
    v16 = (a1 + 248);
  }

  else
  {
    v16 = *(a1 + 2296);
  }

  v286 = a3;
  v270 = a4;
  v274 = v16;
  if (*(a1 + 12716) != 3)
  {
    if (*v15)
    {
      v24 = (a1 + 10592);
    }

    else
    {
      v24 = v16;
    }

    strncpy((a1 + 7424), v24, 0x400uLL);
    goto LABEL_33;
  }

  v17 = 10592;
  if (!*v15)
  {
    v17 = 3328;
  }

  if (*(a1 + 12823) || (a8 & 1) != 0)
  {
    strncpy((a1 + 7424), (a1 + v17), 0x400uLL);
    goto LABEL_22;
  }

  _parentPath((a1 + v17), (a1 + 7424), 0x400uLL);
  __strlcat_chk();
  if ((*(*(a1 + 12832) + 336))(*(*(a1 + 12832) + 8), a1 + 7424))
  {
    if (*(a1 + 12716) != 3)
    {
      goto LABEL_33;
    }

LABEL_22:
    if (*(a3 + 6) < 2u)
    {
LABEL_33:
      if (*(a1 + 204) == 1)
      {
        v28 = strdup((a1 + 3328));
        if (!v28)
        {
          v37 = __error();
          strerror(*v37);
          BOMCopierNotifyFatalError(a1, "Could not duplicate %s: %s", v38, v39, v40, v41, v42, v43, a1);
LABEL_74:
          v74 = *__error();
          v52 = _checkCopyFileError(a1);
          goto LABEL_75;
        }

        v29 = v28;
        if (!dirname_r((a1 + 3328), v28))
        {
          v44 = __error();
          strerror(*v44);
          BOMCopierNotifyFatalError(a1, "Could not dirname %s: %s", v45, v46, v47, v48, v49, v50, a1);
          goto LABEL_40;
        }

        memset(&v296, 0, sizeof(v296));
        if (stat(v29, &v296))
        {
          v30 = __error();
          strerror(*v30);
          BOMCopierNotifyFatalError(a1, "Could not stat %s: %s", v31, v32, v33, v34, v35, v36, v29);
LABEL_40:
          free(v29);
          goto LABEL_74;
        }

        free(v29);
        if (*a3 == v296.st_dev)
        {
          if (!copyfile(a2, (a1 + 3328), 0, 0x200000Fu))
          {
            v53 = 0;
            v54 = 0;
            v277 = 0;
            v278 = 0;
            v55 = 0;
            v56 = 0;
            v100 = 0;
            v269 = 0;
            v280 = 0;
            v276 = 0;
            v267 = 0;
            v52 = 0;
            v101 = 2;
LABEL_131:
            *a7 = v101;
            goto LABEL_161;
          }

          if (*__error() != 45)
          {
            v105 = __error();
            strerror(*v105);
            BOMCopierNotifyFatalError(a1, "Could not clone %s to %s: %s", v106, v107, v108, v109, v110, v111, a2);
            goto LABEL_74;
          }
        }
      }

      v51 = *(a1 + 12712);
      if (v51 > 1)
      {
        if (v51 == 2)
        {
          File = BOMPKZipGetFile(*(a1 + 12752));
          v295 = File;
          if (*(a1 + 12796))
          {
            if (*(a1 + 12800))
            {
              v282 = a8;
              v52 = 0;
            }

            else
            {
              v97 = *(a1 + 128);
              if (!v97)
              {
                v116 = "No password was provided and the client did not provide a callback for retrieving the PKZip encryption key";
                goto LABEL_143;
              }

              v52 = v97(a1, a1 + 248, a1 + 12800);
              if (v52 == 2)
              {
LABEL_75:
                v53 = 0;
                v54 = 0;
                v277 = 0;
                v55 = 0;
                goto LABEL_76;
              }

              v282 = a8;
              File = v295;
            }

            if (BOMFileRead(File, &v296, 0xCuLL) != 12)
            {
              goto LABEL_74;
            }

            while (1)
            {
              v63 = BOMFileSetKeys(v295, *(a1 + 12800));
              for (i = 0; i != 12; ++i)
              {
                v65 = *(&v296.st_dev + i);
                v66 = decrypt_byte(v63) ^ v65;
                update_keys(v63, v66);
              }

              if (*(a1 + 12811) == v66)
              {
                break;
              }

              free(*(a1 + 12800));
              *(a1 + 12800) = 0;
              v73 = *(a1 + 128);
              if (!v73)
              {
                BOMCopierNotifyFatalError(a1, "The password appears to be invalid and the client did not provide a callback for retrieving a new PKZip encryption key", v67, v68, v69, v70, v71, v72, v261);
LABEL_142:
                v116 = "The password provided for the encrypted PKZip archive appears to be invalid";
LABEL_143:
                BOMCopierNotifyFatalError(a1, v116, v18, v19, v20, v21, v22, v23, v261);
                v52 = 2;
                goto LABEL_75;
              }

              v52 = v73(a1, a1 + 248, a1 + 12800);
              if (v52 == 2)
              {
                goto LABEL_142;
              }
            }

            v117 = v295;
            v118 = *(a1 + 12752);
            NumLocalHeaders = BOMPKZipGetNumLocalHeaders(v118);
            FileCompressedSize = BOMPKZipGetFileCompressedSize(v118, NumLocalHeaders - 1);
            BOMFileSetEncryptedRemainder(v117, FileCompressedSize - 12);
            a3 = v286;
            a8 = v282;
          }

          else
          {
            v52 = 0;
          }

          if (*(a1 + 12769))
          {
            if (BOMFileSetCompression(v295, 1, 1, *(a1 + 12792)))
            {
              goto LABEL_74;
            }

            *(a3 + 96) = -1;
          }

          if (*(a1 + 12776))
          {
            BOMFileSetPartialRead(v295, 1);
            if (!*(a1 + 12769))
            {
              v102 = *(a1 + 12752);
              v103 = BOMPKZipGetNumLocalHeaders(v102);
              FileUncompressedSize = BOMPKZipGetFileUncompressedSize(v102, v103 - 1);
              *(a3 + 96) = FileUncompressedSize;
              if (!FileUncompressedSize)
              {
                BOMFileSetDataDescriptor(v295, 1);
                *(a3 + 96) = -1;
              }
            }
          }

LABEL_53:
          v54 = *(a3 + 96);
          if (!v14)
          {
            v267 = 0;
            v276 = 0;
            v55 = 0;
            HIDWORD(v293) = 0;
            goto LABEL_61;
          }

          v281 = a8;
          v57 = *(a1 + 16);
          if (v54 == -1)
          {
            v86 = 0;
            v55 = 0;
            do
            {
              v87 = BOMFileRead(v295, (*(a1 + 8) + v86), v57 - v86);
              if ((v87 & 0x8000000000000000) != 0)
              {
                v99 = *__error();
                v52 = _checkCopyFileError(a1);
                v53 = 0;
                v277 = 0;
                v278 = 0;
                v56 = 0;
                v280 = 0;
                __src = 0;
                v269 = 0;
                v276 = 0;
                v267 = 0;
                v54 = -1;
                goto LABEL_261;
              }

              v86 += v87;
              v55 += v87;
            }

            while (v86 < v57 && !BOMFileEndOfCompressionStream(v295));
          }

          else
          {
            if (v54 >= v57)
            {
              v58 = *(a1 + 16);
            }

            else
            {
              v58 = v54;
            }

            v55 = BOMFileRead(v295, *(a1 + 8), v58);
            if (v55 < 0)
            {
              v59 = *__error();
              v52 = _checkCopyFileError(a1);
              v53 = 0;
              v277 = 0;
              v278 = 0;
              v55 = 0;
              v56 = 0;
              v280 = 0;
              __src = 0;
              v269 = 0;
              v276 = 0;
              v267 = 0;
              LOBYTE(v14) = 1;
              goto LABEL_261;
            }
          }

          v88 = BOMArchFlagForHeader(*(a1 + 8), v55);
          if (v88 != 1)
          {
            if (v88 != 2)
            {
              v89 = 0;
              v92 = 0;
              v276 = 0;
              v267 = 0;
              goto LABEL_129;
            }

            __srca = *(a1 + 8);
            v89 = bswap32(__srca[1]);
            v90 = (20 * v89 + 8);
            v91 = BOM_malloc(v90);
            v56 = v91;
            if (v91)
            {
              v279 = v91 + 8;
              memmove(v91, __srca, v90);
              v276 = v56;
              _fat_header_big_to_host(v56, v90);
              v92 = v279;
              v267 = 1;
LABEL_129:
              if (_determine_thin_type_and_archs(v92, v89, a6, &v292, &v293, &v293 + 1, 0))
              {
                v53 = 0;
                v277 = 0;
                v278 = 0;
                v56 = 0;
                v100 = 0;
                v269 = 0;
                v280 = 0;
                v52 = 0;
                v101 = 1;
                goto LABEL_131;
              }

              if (HIDWORD(v293))
              {
                v60 = (20 * v293 + 8);
                v112 = BOM_malloc(v60);
                a8 = v281;
                if (!v112)
                {
                  v280 = 0;
                  __src = v60;
                  v53 = 0;
                  v277 = 0;
                  v278 = 0;
                  v56 = 0;
                  v269 = 0;
                  goto LABEL_261;
                }

                v113 = (v112 + 2);
                *v112 = -889275714;
                v114 = v293;
                v278 = v112;
                v112[1] = v293;
                _sortFatArchsByOffset(v292, v114);
                if (HIDWORD(v293) == 1)
                {
                  v115 = 0;
                }

                else
                {
                  v115 = v60;
                }

                _createNewFatArchArray(v292, v293, v113, v115);
                v61 = 0;
                v269 = v113;
                v56 = (*(v113 + 20 * v293 - 8) + *(v113 + 20 * v293 - 12));
LABEL_79:
                __src = v60;
                if (*(a1 + 12716) != 4 || (v61 & *(a1 + 12996)) != 1)
                {
                  v85 = 0;
                  v280 = 0;
                  v53 = v61;
                  goto LABEL_170;
                }

                if (*(a1 + 12997) != 1)
                {
                  v85 = 0;
                  v280 = 0;
                  v53 = 1;
                  goto LABEL_170;
                }

                if (!*(a1 + 13000))
                {
                  BOMCopierNotifyFatalError(a1, "Previous split file path is NULL", v18, v19, v20, v21, v22, v23, v261);
                  v277 = 0;
                  v280 = 0;
                  v53 = 1;
                  goto LABEL_261;
                }

                v75 = BOM_malloc(0xFFuLL);
                if (v75)
                {
                  v76 = v75;
                  if (basename_r(*(a1 + 13000), v75))
                  {
                    v283 = a8;
                    v77 = BOM_malloc(0x400uLL);
                    if (v77)
                    {
                      v78 = v77;
                      if (dirname_r(*(a1 + 13000), v77))
                      {
                        __s = 0;
                        asprintf(&__s, "%s/._%s", v78, v76);
                        if (__s)
                        {
                          v79 = *(v286 + 112);
                          *&v296.st_size = *(v286 + 96);
                          *&v296.st_blksize = v79;
                          *v296.st_qspare = *(v286 + 128);
                          v80 = *(v286 + 16);
                          *&v296.st_dev = *v286;
                          *&v296.st_uid = v80;
                          v81 = *(v286 + 48);
                          v296.st_atimespec = *(v286 + 32);
                          v296.st_mtimespec = v81;
                          v82 = *(v286 + 80);
                          v296.st_ctimespec = *(v286 + 64);
                          v296.st_birthtimespec = v82;
                          v296.st_mode = -32348;
                          v296.st_size = 164;
                          if (!BOMCPIOWriteHeader(*(a1 + 12736), __s, &v296))
                          {
                            v83 = BOMCPIOGetFile(*(a1 + 12736));
                            if (BOMFileWrite(v83, inject_apple_double_bytes_0, 164) == 164)
                            {
                              free(__s);
                              free(v76);
                              free(v78);
                              v84 = 0;
LABEL_157:
                              a8 = v283;
                              goto LABEL_158;
                            }
                          }

                          v151 = *__error();
                          v52 = _checkCopyFileError(a1);
                        }

                        else
                        {
                          v152 = __error();
                          v153 = strerror(*v152);
                          BOMCopierNotifyFatalError(a1, "Could not construct insert entry path: %s\n", v154, v155, v156, v157, v158, v159, v153);
                          v52 = 2;
                        }

                        v84 = 5;
                        goto LABEL_157;
                      }

                      v143 = *(a1 + 13000);
                      v144 = __error();
                      strerror(*v144);
                      BOMCopierNotifyFatalError(a1, "Could not get dirname of %s: %s\n", v145, v146, v147, v148, v149, v150, v143);
                    }

                    else
                    {
                      v136 = __error();
                      v263 = strerror(*v136);
                      BOMCopierNotifyFatalError(a1, "Could not allocate parent path buffer: %s\n", v137, v138, v139, v140, v141, v142, v263);
                    }

                    v52 = 2;
                    v84 = 5;
                    a8 = v283;
LABEL_158:
                    v53 = 1;
                    if (v84 != 5)
                    {
                      v280 = 0;
                      v85 = 0;
                      goto LABEL_170;
                    }

                    v277 = 0;
                    v280 = 0;
                    while (1)
                    {
LABEL_261:
                      while (1)
                      {
                        v212 = v53 & 1;
                        while (1)
                        {
                          if (v294 && *(a1 + 12716) == 3)
                          {
                            if (BOMFileClose(v294))
                            {
                              v213 = v52 == 0;
                            }

                            else
                            {
                              v213 = 0;
                            }

                            if (v213)
                            {
                              v214 = *__error();
                              v52 = _checkCopyFileError(a1);
                            }

                            v294 = 0;
                          }

                          if (!v52 && v212)
                          {
                            if (v14)
                            {
                              LOBYTE(v14) = 0;
                            }

                            if (v54 > v55)
                            {
                              break;
                            }
                          }

                          *(a1 + 12997) = v212;
                          if (!v212 || (*(a1 + 12996) & 1) == 0)
                          {
                            goto LABEL_283;
                          }

                          v215 = *(a1 + 13000);
                          if (v215)
                          {
                            free(v215);
                            *(a1 + 13000) = 0;
                          }

                          v216 = strdup((a1 + 7424));
                          *(a1 + 13000) = v216;
                          if (v216)
                          {
LABEL_283:
                            BOMFileSetDataDescriptor(v295, 0);
                            if (v295)
                            {
                              v219 = v276;
                              if (!*(a1 + 12712))
                              {
                                v220 = BOMFileClose(v295);
                                if (!v52 && v220)
                                {
                                  v221 = *__error();
                                  v52 = _checkCopyFileError(a1);
                                }

                                v295 = 0;
                              }
                            }

                            else
                            {
                              v219 = v276;
                            }

                            if (v219)
                            {
                              free(v219);
                            }

                            if (v292)
                            {
                              free(v292);
                            }

                            if (v278)
                            {
                              free(v278);
                            }

                            if (v280)
                            {
                              free(v280);
                            }

                            v222 = *MEMORY[0x277D85DE8];
                            return v52;
                          }

                          v217 = __error();
                          v218 = *(a1 + 64);
                          v52 = 2;
                          if (v218)
                          {
                            v218(a1, a1 + 8448, *v217);
                          }
                        }

                        v52 = 0;
                        if (v56 >= v54 - v55)
                        {
                          v56 = v54 - v55;
                        }

                        v53 = 1;
                        a8 = 1;
                        v85 = v277;
LABEL_170:
                        v162 = *(a1 + 12716);
                        v277 = v85;
                        v268 = v53;
                        if (v162 != 3)
                        {
                          break;
                        }

                        v163 = 16 * (*(a1 + 12814) == 0);
                        if (a5)
                        {
                          v164 = *(a1 + 12823) == 0;
                        }

                        else
                        {
                          v164 = 1;
                        }

                        if (v164)
                        {
                          v165 = 1;
                        }

                        else
                        {
                          v165 = a8;
                        }

                        if ((v165 & 1) != 0 || !(*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 7424))
                        {
                          if (a8)
                          {
                            v168 = 521;
                          }

                          else
                          {
                            v168 = 2561;
                          }

                          if (BOMFileOpenWithSys(&v294, a1 + 7424, v168, 384, v163, *(a1 + 12832)))
                          {
                            if (*__error() != 2 || !*(a1 + 12712) || _mkdirs_parent(a1) || (!a8 ? (v169 = 1537) : (v169 = 521), BOMFileOpenWithSys(&v294, a1 + 7424, v169, 384, v163, *(a1 + 12832)) || (v170 = *(v286 + 96), v170 >= 1) && BOMFilePreallocate(v294, v170)))
                            {
LABEL_205:
                              v173 = *__error();
                              v52 = _checkCopyFileError(a1);
                              v100 = __src;
LABEL_206:
                              v53 = v268;
                              goto LABEL_161;
                            }
                          }

                          if (*(a1 + 207) == 1 || *(a1 + 208) == 1 || *(a1 + 211) == 1)
                          {
                            FileDescriptor = BOMFileGetFileDescriptor(v294);
                            v85 = v277;
                            if (FileDescriptor == -1)
                            {
                              goto LABEL_218;
                            }

                            v172 = FileDescriptor;
                            if (*(a1 + 211) == 1 && fcntl(FileDescriptor, 64, *(a1 + 212)))
                            {
                              goto LABEL_205;
                            }

                            v100 = __src;
                            if (*(a1 + 207) == 1 && fcntl(v172, 68, 1) || *(a1 + 208) == 1 && fcntl(v172, 76, 1))
                            {
                              v176 = *__error();
                              v52 = _checkCopyFileError(a1);
                              goto LABEL_206;
                            }
                          }

                          v85 = v277;
LABEL_218:
                          v277 = v85;
                          if (!HIDWORD(v293))
                          {
                            v204 = BOM_calloc(0xA8uLL, 1uLL);
                            if (!v204)
                            {
                              goto LABEL_260;
                            }

                            v178 = v204;
                            *v204 = a1;
                            v205 = v294;
                            v204[1] = v295;
                            v204[2] = v205;
                            v204[3] = v274;
                            v204[4] = v54;
                            v204[5] = v56;
                            if (v14)
                            {
                              v206 = 1;
                              *(v204 + 14) = 1;
                              v204[8] = v55;
                              *(v204 + 18) = 1;
                              v204[10] = 0;
                              v204[11] = *(a1 + 8);
                              v204[12] = 0;
                              v204[13] = 0;
                              v207 = v55;
                              v203 = v273;
                              if (v268)
                              {
                                *(v204 + 28) = 2;
                                v204[15] = v56 - v55;
                                *(v204 + 32) = 1;
                                v204[17] = v55;
                                v204[18] = 0;
                                v204[19] = v55;
                                v204[20] = 0;
                                v55 = v56;
                                v206 = 2;
LABEL_245:
                                *(v204 + 12) = v206;
                                goto LABEL_246;
                              }
                            }

                            else
                            {
                              v207 = 0;
                              v206 = 0;
                              v203 = v273;
                              if (v268)
                              {
                                *(v204 + 14) = 2;
                                v204[8] = v56;
                                v206 = 1;
                                *(v204 + 18) = 1;
                                v204[10] = v55;
                                v204[11] = 0;
                                v204[12] = v55;
                                v204[13] = 0;
                                v55 += v56;
                                goto LABEL_245;
                              }
                            }

                            if (v56 == -1 || v56 > v55)
                            {
                              v208 = &v204[7 * v206 + 7];
                              *v208 = 3;
                              *(v208 + 8) = 0;
                              *(v208 + 16) = 1;
                              *(v208 + 24) = v55;
                              *(v208 + 32) = 0;
                              *(v208 + 40) = v207;
                              *(v208 + 48) = 0;
                              ++v206;
                            }

                            goto LABEL_245;
                          }

                          v177 = BOM_calloc(168 * v293 + 168, 1uLL);
                          if (!v177)
                          {
                            goto LABEL_260;
                          }

                          v178 = v177;
                          v179 = 0;
                          v180 = 0;
                          *v177 = a1;
                          v181 = v294;
                          v177[1] = v295;
                          v177[2] = v181;
                          v177[3] = v274;
                          v177[4] = v54;
                          v266 = v56;
                          v177[5] = v56;
                          v182 = v177 + 7;
                          if (HIDWORD(v293) == 2)
                          {
                            v180 = __src;
                            v183 = BOM_malloc(__src);
                            if (!v183)
                            {
                              v280 = 0;
                              v56 = v266;
                              goto LABEL_260;
                            }

                            v184 = v183;
                            memmove(v183, v278, __src);
                            _fat_header_host_to_big(v184, __src);
                            v179 = 1;
                            *(v178 + 56) = 1;
                            *(v178 + 64) = __src;
                            *(v178 + 72) = 1;
                            *(v178 + 80) = 0;
                            *(v178 + 88) = v184;
                            v280 = v184;
                            *(v178 + 96) = 0;
                            *(v178 + 104) = 0;
                          }

                          if (v293 >= 1)
                          {
                            v185 = 0;
                            v186 = (v269 + 8);
                            while (1)
                            {
                              v187 = *(v292 + v185);
                              v189 = *v186;
                              v186 += 5;
                              v188 = v189;
                              v190 = v189 - v180;
                              if (v189 <= v180)
                              {
                                v188 = v180;
                              }

                              else
                              {
                                v191 = &v182[7 * v179];
                                *v191 = 0;
                                v191[1] = v190;
                                *(v191 + 4) = 1;
                                v191[3] = 0;
                                v191[4] = 0;
                                v191[5] = v180;
                                v191[6] = 0;
                                ++v179;
                              }

                              v192 = *(v187 + 8);
                              v193 = *(v187 + 12);
                              v194 = v55 - v192;
                              if (v55 <= v192)
                              {
                                break;
                              }

                              v195 = (v193 + v192);
                              v196 = v195 > v55;
                              v197 = v195 - v55;
                              if (!v196)
                              {
                                v200 = &v182[7 * v179];
                                v201 = 1;
                                *v200 = 1;
                                v200[1] = v193;
                                *(v200 + 4) = 1;
                                v200[3] = 0;
                                v200[4] = *(a1 + 8) + v192;
LABEL_233:
                                v200[5] = v188;
                                v200[6] = 0;
                                v180 = v188 + v193;
                                goto LABEL_234;
                              }

                              v198 = &v182[7 * v179];
                              *v198 = 1;
                              v198[1] = v194;
                              *(v198 + 4) = 1;
                              v198[3] = 0;
                              v198[4] = *(a1 + 8) + v192;
                              v198[5] = v188;
                              v198[6] = 0;
                              v199 = v194 + v188;
                              v201 = 2;
                              *(v198 + 14) = 2;
                              v198[8] = v197;
                              *(v198 + 18) = 1;
                              v198[10] = v55;
                              v198[11] = 0;
                              v198[12] = v199;
                              v198[13] = 0;
                              v180 = v197 + v199;
LABEL_234:
                              v179 += v201;
                              if (++v185 >= v293)
                              {
                                goto LABEL_235;
                              }
                            }

                            v200 = &v182[7 * v179];
                            *v200 = 2;
                            v200[1] = v193;
                            v201 = 1;
                            *(v200 + 4) = 1;
                            v200[3] = v192;
                            v200[4] = 0;
                            goto LABEL_233;
                          }

LABEL_235:
                          v202 = &v182[7 * v179];
                          *v202 = 4;
                          v202[1] = 0;
                          *(v202 + 4) = 1;
                          v202[3] = v54;
                          v202[4] = 0;
                          v202[5] = 0;
                          v202[6] = 0;
                          *(v178 + 48) = v179 + 1;
                          v203 = v273;
                          v56 = v266;
LABEL_246:
                          _normalizeBomCopySpecification(v178, 0x1000u, *(a1 + 16), &v290);
                          if ((*(v286 + 116) & 0x40000020) == 0x20 && *(a1 + 195) && *(v290 + 4) == *(v290 + 5))
                          {
                            *(a1 + 196) = 0;
                          }

                          else
                          {
                            v209 = *(a1 + 12864);
                            BOMFileSetAFSCCompression(v294);
                            if (v272 == 5)
                            {
                              v210 = &v291 + 1;
                            }

                            else
                            {
                              v210 = 0;
                            }

                            if (v203)
                            {
                              v211 = &v291;
                            }

                            else
                            {
                              v211 = 0;
                            }

                            v52 = _executeBomCopySpecification(v290, 0x1000u, *(a1 + 16), v210, v211, v55);
                          }

                          if (v203)
                          {
                            *(a1 + 200) = v291;
                          }

                          free(v178);
                          free(v290);
                          v290 = 0;
                          if (!v52)
                          {
                            if (a5)
                            {
                              if (*(a1 + 173))
                              {
                                if (*(a1 + 12716) == 3 && !*a7 && (v267 || (v234 = *(a1 + 184)) != 0 && BOMPatternMatch(v234, *(a1 + 2296))))
                                {
                                  if (*(a1 + 12936))
                                  {
                                    v232 = *(a1 + 10576);
                                    if (__ROR8__(0x8F5C28F5C28F5C29 * v232, 1) <= 0x51EB851EB851EB8uLL)
                                    {
                                      v248 = *(a1 + 10584);
                                      if (v248)
                                      {
                                        free(v248);
                                      }

                                      *&v296.st_dev = 0;
                                      v296.st_ino = 0;
                                      uuid_generate_random(&v296);
                                      v249 = malloc_type_malloc(0x25uLL, 0x23F37419uLL);
                                      uuid_unparse(&v296, v249);
                                      v250 = malloc_type_malloc(0x400uLL, 0xF03DE4A2uLL);
                                      *(a1 + 10584) = v250;
                                      snprintf(v250, 0x400uLL, "%s/%.2s/%.2s/%.2s/%s", *(a1 + 12936), v249, v249 + 2, v249 + 4, v249);
                                      free(v249);
                                      if (_mkdirs(a1, *(a1 + 10584)))
                                      {
                                        v251 = *(a1 + 10584);
                                        v252 = __error();
                                        v253 = *(a1 + 64);
                                        if (v253)
                                        {
                                          v253(a1, v251, *v252);
                                        }

                                        v52 = 0;
                                        goto LABEL_260;
                                      }

                                      v232 = *(a1 + 10576);
                                    }

                                    v233 = *(a1 + 10584);
                                    *(a1 + 10576) = v232 + 1;
                                    snprintf((a1 + 8448), 0x400uLL, "%s/%lu");
                                  }

                                  else
                                  {
                                    ++*(a1 + 10576);
                                    v265 = *(a1 + 10568);
                                    snprintf((a1 + 8448), 0x400uLL, "%s.dittoKeptBinary.%d.%lu");
                                  }

                                  v235 = *(a1 + 12832);
                                  v236 = *(v235 + 8);
                                  if ((*(v270 + 4) & 0xF000) == 0x8000)
                                  {
                                    v237 = (*(v235 + 240))(v236, a1 + 3328, a1 + 8448);
                                  }

                                  else
                                  {
                                    v237 = (*(v235 + 264))(v236, a1 + 3328, a1 + 8448);
                                  }

                                  if (v237)
                                  {
                                    v238 = __error();
                                    v227 = *(a1 + 64);
                                    v52 = 2;
                                    if (!v227)
                                    {
                                      goto LABEL_260;
                                    }

                                    v228 = *v238;
                                    v230 = a1;
                                    v229 = a1 + 8448;
                                    goto LABEL_339;
                                  }

                                  v239 = *(a1 + 176);
                                  if (v239)
                                  {
                                    v240 = strlen((a1 + 8448));
                                    if (BOMFileWrite(v239, (a1 + 8448), v240) != v240)
                                    {
                                      v254 = __error();
                                      strerror(*v254);
                                      BOMCopierNotifyFatalError(a1, "can't write %s to keepBinariesList: %s", v255, v256, v257, v258, v259, v260, a1);
                                      goto LABEL_352;
                                    }

                                    if (BOMFileWrite(*(a1 + 176), "\n", 1) != 1)
                                    {
                                      v241 = __error();
                                      v264 = strerror(*v241);
                                      BOMCopierNotifyFatalError(a1, "can't write to keepBinariesList: %s", v242, v243, v244, v245, v246, v247, v264);
LABEL_352:
                                      v52 = 2;
                                      goto LABEL_260;
                                    }
                                  }
                                }
                              }
                            }

                            v52 = 0;
                            if (*(a1 + 12712) != 2)
                            {
                              goto LABEL_356;
                            }

                            if (*(a1 + 12769) && BOMFileSetCompression(v295, 0, 1, *(a1 + 12792)))
                            {
LABEL_324:
                              v231 = *__error();
                              v52 = _checkCopyFileError(a1);
                              goto LABEL_260;
                            }

                            BOMFileClearEncrypted(v295);
                            v52 = 0;
                            if (!*(a1 + 12776))
                            {
                              goto LABEL_356;
                            }

                            BOMFileSetPartialRead(v295, 0);
                            BOMFileSetDataDescriptor(v295, 0);
                            v288 = 0;
                            if (BOMFileRead(v295, &v288, 4uLL) == 4 && v288 == 134695760 && (v287 = 0, *&v296.st_dev = 0, __s = 0, !BOMPKZipReadDataDescriptor(*(a1 + 12752), *(a1 + 12812), &v287, &v296, &__s)))
                            {
                              v224 = 0;
                              v52 = 0;
                              *(v286 + 96) = __s;
                            }

                            else
                            {
                              v223 = *__error();
                              v52 = _checkCopyFileError(a1);
                              v224 = 5;
                            }

                            if (v224 != 5)
                            {
LABEL_356:
                              if (*(a1 + 12716) == 5 && *(v286 + 96))
                              {
                                if (BOMFileSetCompression(v294, 0, 0, *(a1 + 12792)))
                                {
                                  goto LABEL_324;
                                }

                                v225 = BOMFileOffset(v294) - v277;
                                v296.st_dev = 134695760;
                                v277 = v225;
                                if (BOMFileWrite(v294, &v296, 4) != 4)
                                {
                                  goto LABEL_324;
                                }

                                if (BOMPKZipWriteDataDescriptor(*(a1 + 12760), HIDWORD(v291), v225, *(v286 + 96)))
                                {
                                  v226 = __error();
                                  v227 = *(a1 + 64);
                                  v52 = 2;
                                  if (v227)
                                  {
                                    v228 = *v226;
                                    v229 = a1 + 8448;
                                    v230 = a1;
LABEL_339:
                                    v227(v230, v229, v228);
                                  }
                                }
                              }
                            }
                          }

LABEL_260:
                          v53 = v268;
                        }

                        else
                        {
                          v166 = *__error();
                          v52 = _checkCopyFileError(a1);
                          v100 = __src;
LABEL_161:
                          __src = v100;
                          v160 = *(a1 + 12712);
                          switch(v160)
                          {
                            case 3:
                              v52 = 2;
                              break;
                            case 2:
                              *(v286 + 96) = 0;
                              v161 = _skipPKZipFile();
                              goto LABEL_166;
                            case 1:
                              *(v286 + 96) -= v55;
                              v161 = _skipCPIOFile(a1, v286);
LABEL_166:
                              if (v161)
                              {
                                v52 = 2;
                              }

                              else
                              {
                                v52 = v52;
                              }

                              break;
                          }
                        }
                      }

                      if (v56 == -1)
                      {
                        v167 = 0;
                      }

                      else
                      {
                        v167 = v56;
                      }

                      *(v286 + 96) = v167;
                      if (v162 == 4)
                      {
                        if (!BOMCPIOWriteHeader(*(a1 + 12736), (a1 + 7424), v286))
                        {
                          v294 = BOMCPIOGetFile(*(a1 + 12736));
                          goto LABEL_218;
                        }
                      }

                      else if (!BOMPKZipWriteLocalHeader(*(a1 + 12760), (a1 + 7424), v286, 0, 0))
                      {
                        v175 = BOMPKZipGetFile(*(a1 + 12760));
                        v294 = v175;
                        if (v56 < 1)
                        {
                          goto LABEL_218;
                        }

                        if (!BOMFileSetCompression(v175, 1, 0, *(a1 + 12792)))
                        {
                          v85 = BOMFileOffset(v294);
                          goto LABEL_218;
                        }
                      }

                      v174 = *__error();
                      v52 = _checkCopyFileError(a1);
                    }
                  }

                  v128 = *(a1 + 13000);
                  v129 = __error();
                  strerror(*v129);
                  BOMCopierNotifyFatalError(a1, "Could not get basename of %s: %s\n", v130, v131, v132, v133, v134, v135, v128);
                }

                else
                {
                  v121 = __error();
                  v262 = strerror(*v121);
                  BOMCopierNotifyFatalError(a1, "Could not allocate last path component buffer: %s\n", v122, v123, v124, v125, v126, v127, v262);
                }

                v52 = 2;
                v84 = 5;
                goto LABEL_158;
              }

              a8 = v281;
LABEL_61:
              if (v54 >> 33 && *(a1 + 12824))
              {
                v60 = 0;
                v269 = 0;
                v278 = 0;
                v61 = 1;
                v56 = 0x40000000;
              }

              else
              {
                v61 = 0;
                v60 = 0;
                v269 = 0;
                v278 = 0;
                v56 = v54;
              }

              goto LABEL_79;
            }

            v53 = 0;
            v277 = 0;
LABEL_77:
            v280 = 0;
            __src = 0;
            v269 = 0;
            v278 = 0;
            v276 = 0;
            v267 = 0;
            goto LABEL_261;
          }

          v93 = *(a1 + 8);
          v94 = BOM_malloc(0x1CuLL);
          if (v94)
          {
            *v94 = 0x1CAFEBABELL;
            v92 = &v94[1];
            v95 = 0;
            v96 = *v93;
            if (*v93 > -17958195)
            {
              if (v96 == -17958193 || v96 == -17958194)
              {
                v95 = *(v93 + 4);
              }
            }

            else if (v96 == -822415874 || v96 == -805638658)
            {
              v95 = vrev32_s8(*(v93 + 4));
            }

            v94[1] = v95;
            v94[2].i32[1] = v54;
            v94[3].i32[0] = 0;
            v89 = 1;
            v267 = 1;
            v94[2].i32[0] = 0;
            v276 = v94;
            goto LABEL_129;
          }

          v53 = 0;
          v277 = 0;
LABEL_76:
          v56 = 0;
          goto LABEL_77;
        }

        if (v51 == 3)
        {
          v53 = 0;
          v54 = 0;
          v277 = 0;
          v278 = 0;
          v55 = 0;
          v56 = 0;
          v280 = 0;
          __src = 0;
          v269 = 0;
          v276 = 0;
          v267 = 0;
          v52 = 0;
          goto LABEL_261;
        }
      }

      else
      {
        if (v51)
        {
          v52 = 0;
          if (v51 == 1)
          {
            v52 = 0;
            v295 = BOMCPIOGetFile(*(a1 + 12728));
          }

          goto LABEL_53;
        }

        if (BOMFileOpenWithSys(&v295, a2, 0, 0, 16 * (*(a1 + 12813) == 0), *(a1 + 12832)))
        {
          goto LABEL_74;
        }
      }

      v52 = 0;
      goto LABEL_53;
    }

    __s = 0;
    if (BOMHardLinkTableGetPathAndData(*a1, *a3, *(a3 + 8), &v296, &__s))
    {
      BOMHardLinkTableSetPathAndData(*a1, *a3, *(a3 + 8), (a1 + 3328), (a3 + 96), 8uLL);
      goto LABEL_33;
    }

    if (*__s != *(a3 + 96))
    {
      goto LABEL_33;
    }

    if (!a5 || !(*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 3328))
    {
      if (!(*(*(a1 + 12832) + 240))(*(*(a1 + 12832) + 8), &v296, a1 + 3328))
      {
        v52 = 0;
        *a7 = 2;
        goto LABEL_145;
      }

      if (*__error() == 18)
      {
        goto LABEL_33;
      }
    }

    v98 = *__error();
    v52 = _checkCopyFileError(a1);
LABEL_145:
    v53 = 0;
    v54 = 0;
    v277 = 0;
    v278 = 0;
    v55 = 0;
    v56 = 0;
    v100 = 0;
    v269 = 0;
    v280 = 0;
    v276 = 0;
    v267 = 0;
    goto LABEL_161;
  }

  v25 = *__error();
  v26 = *MEMORY[0x277D85DE8];

  return _checkCopyFileError(a1);
}

uint64_t _copyAppleDoubleToArchive(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  if (*(a1 + 12716) == 3 || ((v8 = a1 + 11616, v9 = *(a1 + 2296), *(a1 + 11616)) ? (v10 = (a1 + 10592)) : (v10 = *(a1 + 2296)), (strncpy((a1 + 7424), v10, 0x400uLL), BOMAppleDoublePathToADPath((a1 + 7424), (a1 + 5376)), !*(a1 + 170)) && !*(a1 + 169) ? (v11 = 4980736) : (v11 = 4980740), !*(a1 + 171) ? (v12 = v11) : (v12 = v11 + 1), ((*(*(a1 + 12832) + 344))(*(*(a1 + 12832) + 8), a2, 0, 0, v12 | 0x10000) & v12) == 0))
  {
LABEL_24:
    v16 = 0;
    if (a4)
    {
      *a4 = 1;
    }

    goto LABEL_26;
  }

  if (!issetugid())
  {
    getenv("TMPDIR");
  }

  if (__strlcpy_chk() < 0x400 && __strlcat_chk() < 0x400)
  {
    if (!(*(*(a1 + 12832) + 336))(*(*(a1 + 12832) + 8), a1 + 7424))
    {
      goto LABEL_28;
    }

    if ((*(*(a1 + 12832) + 344))(*(*(a1 + 12832) + 8), a2, a1 + 7424, 0, v12))
    {
      if (*__error() == 1 && *(a1 + 12840))
      {
        goto LABEL_24;
      }

LABEL_28:
      v18 = *__error();
      v19 = *MEMORY[0x277D85DE8];
      v14 = a1;
      goto LABEL_17;
    }

    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    memset(v37, 0, sizeof(v37));
    if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 7424, v37))
    {
      v20 = *__error();
LABEL_31:
      v16 = _checkCopyFileError(a1);
      (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 7424);
LABEL_26:
      v17 = *MEMORY[0x277D85DE8];
      return v16;
    }

    v21 = v38;
    v22 = *(v8 + 1197) == 0;
    v36 = 0;
    if (BOMFileOpenWithSys(&v36, a1 + 7424, 0, 0, 16 * v22, *(a1 + 12832)) && *__error() != 2)
    {
      v25 = *__error();
      goto LABEL_31;
    }

    (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 7424);
    *(a3 + 96) = v21;
    *(a3 + 4) = *(a3 + 4) & 0x1B6 | 0x8000;
    v23 = *(a1 + 12716);
    if (v23 == 5)
    {
      if (*(v8 + 1152))
      {
        snprintf(__str, 0x400uLL, "./%s/%s", "__MACOSX", (a1 + 5378));
        _parentPath(__str, v41, 0x400uLL);
        if (_insertQuarantinePath(*(a1 + 12760), v41, 1))
        {
          goto LABEL_67;
        }

        __strlcpy_chk();
      }

      if (BOMPKZipWriteLocalHeader(*(a1 + 12760), (a1 + 5376), a3, 0, 0))
      {
        goto LABEL_67;
      }

      File = BOMPKZipGetFile(*(a1 + 12760));
      if (BOMFileSetCompression(File, 1, 0, *(a1 + 12792)))
      {
        goto LABEL_67;
      }

      v35 = BOMFileOffset(File);
      if (v21)
      {
LABEL_40:
        v27 = 0;
        v28 = 0;
        while (!*(a1 + 168))
        {
          if (v21 - v27 >= 0x20000)
          {
            v29 = 0x20000;
          }

          else
          {
            v29 = v21 - v27;
          }

          if (BOMFileRead(v36, *(a1 + 8), v29) != v29 || BOMFileWrite(File, *(a1 + 8), v29) != v29)
          {
            goto LABEL_67;
          }

          v27 += v29;
          if (a4)
          {
            v30 = *(a1 + 104);
            if (v30)
            {
              v30(a1, v9, *(a3 + 96) + v27);
            }
          }

          if (*(a1 + 12716) == 5)
          {
            v28 = crc32(v28, *(a1 + 8), v29);
          }

          if (v27 >= v21)
          {
            goto LABEL_61;
          }
        }

        BOMFileClose(v36);
        goto LABEL_72;
      }
    }

    else
    {
      if (v23 != 4)
      {
        BOMFileClose(v36);
        v24 = a1;
LABEL_68:
        v16 = _checkCopyFileError(v24);
        goto LABEL_26;
      }

      if (BOMCPIOWriteHeader(*(a1 + 12736), (a1 + 5376), a3))
      {
        goto LABEL_67;
      }

      File = BOMCPIOGetFile(*(a1 + 12736));
      v35 = 0;
      if (v21)
      {
        goto LABEL_40;
      }
    }

    v28 = 0;
LABEL_61:
    if (*(a1 + 12716) != 5)
    {
      goto LABEL_69;
    }

    if (!BOMFileSetCompression(File, 0, 0, *(a1 + 12792)))
    {
      v31 = BOMFileOffset(File);
      *__str = 134695760;
      if (BOMFileWrite(File, __str, 4) == 4)
      {
        if (BOMPKZipWriteDataDescriptor(*(a1 + 12760), v28, v31 - v35, *(a3 + 96)))
        {
          BOMFileClose(v36);
          v32 = __error();
          v33 = *(a1 + 64);
          if (v33)
          {
            v33(a1, a1 + 8448, *v32);
          }

LABEL_72:
          v16 = 2;
          goto LABEL_26;
        }

LABEL_69:
        BOMFileClose(v36);
        v16 = 0;
        if (a4)
        {
          *a4 = 0;
        }

        goto LABEL_26;
      }
    }

LABEL_67:
    BOMFileClose(v36);
    v34 = *__error();
    v24 = a1;
    goto LABEL_68;
  }

  v13 = *MEMORY[0x277D85DE8];
  v14 = a1;
LABEL_17:

  return _checkCopyFileError(v14);
}

uint64_t change_flags_0(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v10 = -1;
  if (!fsctl(a2, 0xC00C4114uLL, v9, 0))
  {
    v8 = v9[0] == v10;
    return !v8;
  }

  if (*__error() != 25 && *__error() != 45)
  {
    return 1;
  }

  result = (*(*(a1 + 12832) + 208))(*(*(a1 + 12832) + 8), a2, a4);
  if (result)
  {
    v8 = *__error() == 45;
    return !v8;
  }

  return result;
}

void *_parentPath(char *a1, void *a2, size_t a3)
{
  v6 = strrchr(a1, 47);
  if (v6)
  {
    v7 = v6 - a1;
    result = memcpy(a2, a1, v6 - a1);
    *(a2 + v7) = 0;
  }

  else
  {

    return strlcpy(a2, ".", a3);
  }

  return result;
}

uint64_t _insertQuarantinePath(uint64_t a1, char *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  if (BOMPKZipLookupQuarantinePath(a1, a2, &v17))
  {
    goto LABEL_2;
  }

  if (v17)
  {
    result = 0;
    goto LABEL_5;
  }

  _parentPath(a2, v18, 0x401uLL);
  if (v18[0] != 46)
  {
    if (_insertQuarantinePath(a1, v18, a3))
    {
      goto LABEL_2;
    }
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  WORD2(v8) = 16893;
  LODWORD(v9) = geteuid();
  DWORD1(v9) = getegid();
  *&v10 = time(0);
  *&v11 = time(0);
  *&v12 = time(0);
  *&v14 = 748;
  if (BOMPKZipWriteLocalHeader(a1, a2, &v8, 0, 0))
  {
LABEL_2:
    result = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_15:
    if (BOMPKZipStoreQuarantinePath(a1, a2))
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _copyFromCPIO(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, size_t a5, int a6)
{
  v83 = 0;
  v9 = (a1 + 248);
  v10 = strlen((a1 + 248));
  v11 = BOM_malloc(v10 + 2);
  if (!v11)
  {
    return 2;
  }

  v12 = v11;
  memmove(v11, v9, v10);
  v81 = v12;
  if (v10)
  {
    v13 = v10 + 1;
    v12[v10] = 47;
    v12[v10 + 1] = 0;
  }

  else
  {
    v13 = 0;
  }

  v73 = 0;
  v74 = 0;
  v15 = 0;
  v16 = 0;
  v76 = 0;
  v75 = 1;
  v17 = v13;
  v78 = v13;
  while (1)
  {
    v84 = 0;
    v18 = v81;
    if (*(a1 + 12721) == 1)
    {
      *__error() = 0;
      __strlcpy_chk();
      v19 = BOMCPIOReadHeader(*(a1 + 12728), v9, a2);
      if (v19)
      {
        break;
      }
    }

    v26 = v9;
    if (*v9 == 46)
    {
      if (*(a1 + 249) == 47)
      {
        v26 = (a1 + 249);
      }

      else
      {
        v26 = v9;
      }
    }

    if (strlcpy(a4, v26, a5) >= a5)
    {
      v58 = *(a1 + 64);
      if (v58)
      {
        v58(a1, v26, 63);
      }

      goto LABEL_119;
    }

    if ((!a6 || *(a1 + 12822)) && *v26 == 46 && (!v26[1] || v26[1] == 47 && !v26[2]))
    {
      if (_chPerms(a1, (a1 + 3328), a2, &v83, 1))
      {
        v27 = __error();
        v28 = *(a1 + 64);
        if (v28)
        {
          v28(a1, a1 + 3328, *v27);
        }
      }

      LOWORD(v76) = *(a2 + 4);
    }

    if (strncmp(v9, v81, v17))
    {
      *(a1 + 12721) = 0;
      v81[(v17 - 1)] = 0;
      v57 = *(a1 + 96);
      v56 = v74;
      if (v57)
      {
        goto LABEL_92;
      }

      goto LABEL_93;
    }

    v35 = 1;
    *(a1 + 12721) = 1;
    if (*(a1 + 169) && *(a1 + 12716) == 3 && (*(a2 + 4) & 0xF000) == 0x8000)
    {
      v35 = BOMAppleDoubleIsADFile(v9) == 0;
    }

    if (!*(a1 + 12824) || (*(a2 + 4) & 0xF000) != 0x8000)
    {
      goto LABEL_40;
    }

    v36 = strcmp((a1 + 7424), v9);
    if (v36)
    {
      v37 = 0;
    }

    else
    {
      v37 = v16;
    }

    if (*(a2 + 96) == 0x40000000 && !v37)
    {
      v38 = 0;
      v16 = 1;
      goto LABEL_41;
    }

    if ((v37 == 2 || v37 == 1) && !v36)
    {
      v16 = 2;
      v38 = 1;
    }

    else
    {
LABEL_40:
      v38 = 0;
      v16 = 0;
    }

LABEL_41:
    if (*(a1 + 12716) == 3 && (v39 = _checkForDestinationConflict(a1, (a1 + 3328), a2, a3, &v83 + 1, &v84), v84 == 1))
    {
      v48 = v39;
      if (v39 > 1 || _skipCPIOFile(a1, a2))
      {
        goto LABEL_119;
      }

      v49 = HIDWORD(v76);
      if (v48 == 1)
      {
        v49 = 1;
      }

      HIDWORD(v76) = v49;
      v17 = v78;
    }

    else
    {
      v40 = *(a1 + 152);
      if (v40)
      {
        FSObjectAtPath = BOMBomGetFSObjectAtPath(v40, v9);
        if (!FSObjectAtPath)
        {
          goto LABEL_49;
        }

        BOMFSObjectFree(FSObjectAtPath);
      }

      v42 = *(a1 + 160);
      if (!v42)
      {
        v44 = *(a2 + 4);
        goto LABEL_53;
      }

      v43 = BOMBomFSObjectExistsAtPath(v42, *(a1 + 2296));
      v44 = *(a2 + 4);
      if (!v43 || (v44 & 0xF000) == 0x4000)
      {
LABEL_53:
        HIDWORD(v46) = (v44 & 0xF000) - 0x2000;
        LODWORD(v46) = HIDWORD(v46);
        v45 = v46 >> 13;
        if (v45 <= 1)
        {
          if (!v45)
          {
LABEL_61:
            v47 = _copyDevice(a1, a2);
            goto LABEL_68;
          }

          if (v45 == 1)
          {
            v72 = a5;
            v47 = _copyDir(a1, a2, a3, 0, HIBYTE(v83), 0, 0, a4);
            goto LABEL_68;
          }
        }

        else
        {
          switch(v45)
          {
            case 2:
              goto LABEL_61;
            case 4:
              v47 = _copyLink(a1, a2, a3, SHIBYTE(v83));
LABEL_68:
              if (v47 == 1)
              {
                HIDWORD(v76) = 1;
              }

              else if (v47 == 2)
              {
                goto LABEL_119;
              }

              break;
            case 3:
              v47 = _copyFile(a1, a2, a3, HIBYTE(v83), *(a1 + 136), &v84, v38);
              goto LABEL_68;
          }
        }

        v17 = v78;
        if (!v35 && (v84 & 0xFFFFFFFD) == 0)
        {
          v50 = v73;
          if (v73)
          {
            if (v73 == v15)
            {
              v51 = BOM_realloc(v74, 32 * v73);
              v50 = 2 * v73;
            }

            else
            {
              v51 = v74;
            }
          }

          else
          {
            v51 = BOM_malloc(0x40uLL);
            v50 = 4;
          }

          if (!v51)
          {
            BOMCopierNotifyFatalError(a1, "Could not allocate space for Apple Double files.", v29, v30, v31, v32, v33, v34, v72);
            v18 = v81;
            goto LABEL_115;
          }

          v73 = v50;
          v74 = v51;
          if (*(a1 + 11616))
          {
            v52 = 10592;
          }

          else
          {
            v52 = 3328;
          }

          v53 = strlen((a1 + v52));
          v54 = malloc_type_malloc(v53 + 1, 0x998EE93FuLL);
          strlcpy(v54, (a1 + v52), v53 + 1);
          v55 = &v74[16 * v15];
          *v55 = v54;
          v55[1] = v53;
          v17 = v78;
          ++v15;
          --v75;
        }
      }

      else
      {
LABEL_49:
        if (_skipCPIOFile(a1, a2))
        {
          goto LABEL_119;
        }

        v84 = 1;
        v17 = v78;
      }
    }
  }

  if (v19 == 3)
  {
    v68 = "bad file format";
  }

  else
  {
    if (v19 == 4)
    {
      v56 = v74;
      if (v17 >= 2)
      {
        v81[(v17 - 1)] = 0;
        v57 = *(a1 + 96);
        if (v57)
        {
LABEL_92:
          v57(a1, v81, 2, 0, 0);
        }
      }

LABEL_93:
      if (v56)
      {
        v82 = 0;
        if (v15)
        {
          v59 = 0;
          do
          {
            v60 = &v56[16 * v59];
            if (*v60)
            {
              __strlcpy_chk();
              __strlcat_chk();
              BOMAppleDoubleADPathToPath(*v60, (a1 + 7424));
              HIDWORD(v76) = _mergeAppleDouble(a1, &v82);
              if (!v82)
              {
                (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 1272);
              }

              v61 = v59 + 1;
              if (v59 + 1 < v15)
              {
                v62 = v75 + v59;
                v63 = &v56[16 * v59 + 16];
                do
                {
                  v64 = *v63;
                  if (*v63 && *(v60 + 1) == *(v63 + 8) && !strcmp(*v60, *v63))
                  {
                    free(v64);
                    *v63 = 0;
                    *(v63 + 8) = 0;
                  }

                  v63 += 16;
                }

                while (!__CFADD__(v62++, 1));
              }

              free(*v60);
              *v60 = 0;
              *(v60 + 1) = 0;
              v59 = v61;
            }

            else
            {
              ++v59;
            }
          }

          while (v59 != v15);
        }

        free(v56);
        v18 = v81;
      }

      *a4 = 0;
      if (v83)
      {
        if ((*(*(a1 + 12832) + 200))(*(*(a1 + 12832) + 8), a1 + 3328, v76))
        {
          v66 = __error();
          v67 = *(a1 + 64);
          if (v67)
          {
            v67(a1, a1 + 3328, *v66);
          }
        }
      }

LABEL_115:
      v14 = HIDWORD(v76);
      goto LABEL_125;
    }

    v69 = __error();
    LOBYTE(v68) = strerror(*v69);
  }

  BOMCopierNotifyFatalError(a1, "cpio read error: %s", v20, v21, v22, v23, v24, v25, v68);
LABEL_119:
  if (v74)
  {
    if (v15)
    {
      v70 = v74;
      do
      {
        free(*v70);
        *v70 = 0;
        v70 += 2;
        --v15;
      }

      while (v15);
    }

    free(v74);
  }

  v14 = 2;
  v18 = v81;
LABEL_125:
  free(v18);
  return v14;
}

uint64_t _copyFromPKZip(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, size_t a5)
{
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v10 = (a1 + 248);
  v11 = strlen((a1 + 248));
  v12 = BOM_malloc(v11 + 2);
  if (!v12)
  {
    return 2;
  }

  v13 = v12;
  v14 = v11;
  memmove(v12, v10, v11);
  if (v11)
  {
    ++v11;
    v13[v14] = 47;
    v13[v11] = 0;
  }

  if (BOMPKZipReadNextSignature(*(a1 + 12752), (a1 + 12772)))
  {
    v21 = "Couldn't read PKZip signature";
LABEL_6:
    BOMCopierNotifyFatalError(a1, v21, v15, v16, v17, v18, v19, v20, v84);
    v22 = 2;
    goto LABEL_7;
  }

  v24 = (a1 + 12288);
  v25 = *(a1 + 12772);
  if (v25 == 2)
  {
    v22 = 0;
    *(a1 + 12721) = 0;
    goto LABEL_7;
  }

  if (v25 != 1)
  {
    v21 = "Incorrect pkzip signature";
    goto LABEL_6;
  }

  v91 = a3;
  v92 = 0;
  v86 = 0;
  v26 = 0;
  v27 = v11;
  v22 = 0;
  v85 = v27;
  __n = v27;
  __dst = a4;
  v89 = (a1 + 7424);
  v90 = (a1 + 249);
  while (1)
  {
    v99 = 0;
    if (!v24[433])
    {
      goto LABEL_19;
    }

    if (BOMPKZipReadLocalHeader(*(a1 + 12752), v10, a2, &v98, &v97, (a1 + 12796), (a1 + 12776), (a1 + 12808), (a1 + 12812)))
    {
      v70 = "Couldn't read pkzip local header";
      goto LABEL_113;
    }

    v34 = v97;
    if (v97)
    {
      if (v97 == 8)
      {
        v34 = 1;
        goto LABEL_18;
      }

      v70 = "Unknown compression type";
LABEL_113:
      BOMCopierNotifyFatalError(a1, v70, v28, v29, v30, v31, v32, v33, v84);
      goto LABEL_114;
    }

LABEL_18:
    v24[481] = v34;
    if (!*(a1 + 12776) && !*(a2 + 96))
    {
      v44 = v98;
      if (v98 >= 1)
      {
        v45 = 0;
        while (1)
        {
          v46 = v44 - v45;
          v47 = v46 >= 1024 ? 1024 : v46;
          File = BOMPKZipGetFile(*(a1 + 12752));
          if (BOMFileRead(File, _copyFromPKZip_junk, v47) != v47)
          {
            break;
          }

          v45 += v47;
          v44 = v98;
          if (v45 == v98)
          {
            v98 = 0;
            v24[481] = 0;
            goto LABEL_19;
          }
        }

        v70 = "Couldn't extract junk data";
        goto LABEL_113;
      }
    }

LABEL_19:
    v35 = v10;
    if (*v10 == 46)
    {
      if (*v90 == 47)
      {
        v35 = (a1 + 249);
      }

      else
      {
        v35 = v10;
      }
    }

    if (strlcpy(__dst, v35, a5) >= a5)
    {
      v71 = *(a1 + 64);
      if (v71)
      {
        v71(a1, v35, 63);
      }

LABEL_114:
      v22 = 2;
LABEL_115:
      if (!v92)
      {
        goto LABEL_7;
      }

      if (v26)
      {
        v82 = v92;
        do
        {
          free(*v82);
          *v82 = 0;
          v82[1] = 0;
          v82 += 2;
          --v26;
        }

        while (v26);
      }

      v74 = v92;
LABEL_120:
      free(v74);
      goto LABEL_7;
    }

    if (strncmp(v10, v13, __n))
    {
      break;
    }

    v24[433] = 1;
    if ((*(a2 + 4) & 0xF000) == 0x8000 && BOMAppleDoubleIsADFile(v10) && *(a1 + 169))
    {
      if (*(a1 + 12716) != 3)
      {
        goto LABEL_59;
      }

      if (v24[480])
      {
        v42 = *v10;
        if (v42 == 46 && *v90 == 47)
        {
          v43 = 2;
        }

        else
        {
          v43 = v42 == 47;
        }

        if (!strncmp("__MACOSX", &v10[v43], 8uLL))
        {
          _parentPath(v10, v89, 0x400uLL);
          if (_insertQuarantinePath(*(a1 + 12752), v89, 0))
          {
            v83 = *__error();
            _checkCopyFileError(a1);
            goto LABEL_114;
          }
        }
      }

      v49 = v86;
      v87 = v24;
      if (v86)
      {
        if (v86 == v26)
        {
          v50 = BOM_realloc(v92, 32 * v86);
          v49 = 2 * v86;
        }

        else
        {
          v50 = v92;
        }
      }

      else
      {
        v50 = BOM_malloc(0x40uLL);
        v49 = 4;
      }

      if (!v50)
      {
        BOMCopierNotifyFatalError(a1, "Could not allocate space for Apple Double files.", v36, v37, v38, v39, v40, v41, v84);
        goto LABEL_7;
      }

      v86 = v49;
      v51 = strlen((a1 + 3328));
      v52 = malloc_type_malloc(v51 + 1, 0x1BD052CBuLL);
      strlcpy(v52, (a1 + 3328), v51 + 1);
      v92 = v50;
      v53 = &v50[2 * v26];
      *v53 = v52;
      v53[1] = v51;
      ++v26;
      v24 = v87;
    }

    if (*(a1 + 12716) == 3)
    {
      v54 = _checkForDestinationConflict(a1, (a1 + 3328), a2, v91, &v96, &v99);
      if (v99 == 1)
      {
        v55 = v54;
        if (v54 > 1 || _skipPKZipFile())
        {
          goto LABEL_114;
        }

        if (v55 == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v22;
        }

        goto LABEL_78;
      }
    }

LABEL_59:
    v56 = *(a1 + 152);
    if (v56)
    {
      FSObjectAtPath = BOMBomGetFSObjectAtPath(v56, v10);
      if (!FSObjectAtPath)
      {
        goto LABEL_65;
      }

      BOMFSObjectFree(FSObjectAtPath);
    }

    v58 = *(a1 + 160);
    if (v58)
    {
      v59 = BOMBomFSObjectExistsAtPath(v58, *(a1 + 2296));
      v60 = *(a2 + 4);
      if (v59 && (v60 & 0xF000) != 0x4000)
      {
LABEL_65:
        if (_skipPKZipFile())
        {
          goto LABEL_114;
        }

        goto LABEL_78;
      }
    }

    else
    {
      v60 = *(a2 + 4);
    }

    HIDWORD(v62) = (v60 & 0xF000) - 0x2000;
    LODWORD(v62) = HIDWORD(v62);
    v61 = v62 >> 13;
    if (v61 == 1)
    {
      v84 = a5;
      v63 = _copyDir(a1, a2, v91, 0, v96, 0, 0, __dst);
    }

    else
    {
      if (v61 != 3)
      {
        goto LABEL_76;
      }

      v63 = _copyFile(a1, a2, v91, v96, *(a1 + 136), &v99, 0);
    }

    if (v63 == 1)
    {
      v22 = 1;
    }

    else if (v63 == 2)
    {
      v22 = v63;
      goto LABEL_115;
    }

LABEL_76:
    if (v24[433] && BOMPKZipReadNextSignature(*(a1 + 12752), (a1 + 12772)))
    {
      BOMCopierNotifyFatalError(a1, "Couldn't read pkzip signature.", v64, v65, v66, v67, v68, v69, v84);
      goto LABEL_115;
    }

LABEL_78:
    if (*(a1 + 12772) != 1)
    {
      goto LABEL_87;
    }
  }

  v24[433] = 0;
  v13[v85 - 1] = 0;
  v72 = *(a1 + 96);
  if (v72)
  {
    v72(a1, v13, 2, 0, 0);
  }

LABEL_87:
  *__dst = 0;
  v24[433] = 0;
  if (v85 >= 2)
  {
    v13[v85 - 1] = 0;
    v73 = *(a1 + 96);
    if (v73)
    {
      v73(a1, v13, 2, 0, 0);
    }
  }

  v74 = v92;
  if (v92)
  {
    if (v26)
    {
      v88 = v24;
      v75 = 0;
      do
      {
        v76 = &v74[2 * v75];
        if (*v76)
        {
          __strlcpy_chk();
          __strlcat_chk();
          BOMAppleDoubleADPathToPath(*v76, (a1 + 8448));
          if (v88[480] && (v77 = *(a1 + 12780), !strncmp(*(a1 + 12784), (a1 + 8448), v77)))
          {
            __strlcpy_chk();
            strlcpy(v89 + v77 - 8, (a1 + 8448 + v77 + 1), 1024 - (v77 - 8));
          }

          else
          {
            __strlcpy_chk();
          }

          v95 = 0;
          v22 = _mergeAppleDouble(a1, &v95);
          if (!v95)
          {
            (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 1272);
          }

          v78 = v75 + 1;
          if (v75 + 1 < v26)
          {
            v79 = v26 - 1 - v75;
            v80 = &v92[2 * v75 + 2];
            do
            {
              v81 = *v80;
              if (*v80 && *(v76 + 1) == *(v80 + 8) && !strcmp(*v76, *v80))
              {
                free(v81);
                *v80 = 0;
                *(v80 + 8) = 0;
              }

              v80 += 16;
              --v79;
            }

            while (v79);
          }

          free(*v76);
          *v76 = 0;
          *(v76 + 1) = 0;
          v75 = v78;
          v74 = v92;
        }

        else
        {
          ++v75;
        }
      }

      while (v75 != v26);
    }

    goto LABEL_120;
  }

LABEL_7:
  free(v13);
  return v22;
}

uint64_t _mergeAppleDouble(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 169) || *(a1 + 170) || *(a1 + 171))
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    memset(v20, 0, sizeof(v20));
    if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 1272, v20))
    {
      v4 = *__error();
      return _checkCopyFileError(a1);
    }

    if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 7424, v20))
    {
      *__error() = 0;
      v5 = 0;
      if (a2)
      {
        *a2 = 0;
      }

      return v5;
    }

    v18 = v22;
    v19 = v21;
    v17 = 0;
    if (!*(a1 + 12848) && !*(a1 + 195) || (v17 = AFSCLockFilePath()) != 0)
    {
      if (*(a1 + 170) || *(a1 + 169))
      {
        v7 = 9175044;
      }

      else
      {
        v7 = 9175040;
      }

      if (*(a1 + 171))
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = v7;
      }

      if (copyfile((a1 + 1272), (a1 + 7424), 0, v8) < 0)
      {
        if (*__error() == 45)
        {
          *a2 = 0;
        }

        goto LABEL_29;
      }

      file = acl_get_file((a1 + 7424), ACL_TYPE_EXTENDED);
      if (file)
      {
        v10 = file;
        v11 = acl_init(0);
        if (!v11 || (v12 = v11, v13 = acl_set_file((a1 + 7424), ACL_TYPE_EXTENDED, v11), free(v12), v13) || (v14 = acl_set_file((a1 + 7424), ACL_TYPE_EXTENDED, v10), acl_free(v10), v14))
        {
LABEL_29:
          v15 = *__error();
LABEL_35:
          v5 = _checkCopyFileError(a1);
LABEL_36:
          _unlockAFSCFileLock(&v17);
          return v5;
        }
      }

      if (!set_timestamps_0((a1 + 7424), &v19, &v18) || *__error() == 13)
      {
        v5 = 0;
        if (a2)
        {
          *a2 = 0;
        }

        goto LABEL_36;
      }
    }

    v16 = *__error();
    goto LABEL_35;
  }

  v5 = 0;
  if (a2)
  {
    *a2 = 1;
  }

  return v5;
}

uint64_t _enforceDestinationLocation(uint64_t a1, char *a2)
{
  memset(&v14, 0, sizeof(v14));
  if (lstat(a2, &v14))
  {
    if (*__error() == 2)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if ((v14.st_mode & 0xF000) == 0xA000)
  {
    memset(&v13, 0, sizeof(v13));
    if (stat(a2, &v13))
    {
LABEL_6:
      v10 = __error();
      v11 = *(a1 + 64);
      if (v11)
      {
        v11(a1, a2, *v10);
      }

      return 0xFFFFFFFFLL;
    }

    if (v14.st_dev != v13.st_dev)
    {
      BOMCopierNotifyFatalError(a1, "%s exists on a different device from its target", v4, v5, v6, v7, v8, v9, a2);
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t _resolveDestinationPath(uint64_t a1, char *a2, char *a3)
{
  bzero(a3, 0x400uLL);
  if (*a2 != 47 && !getcwd(a3, 0x400uLL))
  {
    v39 = __error();
    v49 = strerror(*v39);
    v38 = "Could not get current working directory: %s\n";
    goto LABEL_18;
  }

  v6 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (!v6)
  {
    v38 = "Could not allocate unresolved prefix\n";
LABEL_18:
    BOMCopierNotifyFatalError(a1, v38, v7, v8, v9, v10, v11, v12, v49);
    return 0xFFFFFFFFLL;
  }

  v13 = v6;
  v14 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (v14)
  {
    v21 = v14;
    while (1)
    {
      v22 = strchr(a2, 47);
      v29 = v22;
      if (v22)
      {
        v30 = v22 - a2;
        if ((v22 - a2) >= 0x400)
        {
          BOMCopierNotifyFatalError(a1, "Unresolved path component too large: %ld\n", v23, v24, v25, v26, v27, v28, v22 - a2);
          goto LABEL_28;
        }

        strncpy(v13, a2, 0x400uLL);
        v13[v30] = 0;
        if (snprintf(v21, 0x400uLL, "%s/%s", a3, v13) >= 0x400)
        {
          goto LABEL_27;
        }

        a2 = v29 + 1;
      }

      else
      {
        if (snprintf(v21, 0x400uLL, "%s/%s", a3, a2) >= 0x400)
        {
LABEL_27:
          BOMCopierNotifyFatalError(a1, "Could not construct path to resolve: %s %s %ld\n", v31, v32, v33, v34, v35, v36, a3);
          goto LABEL_28;
        }

        a2 = 0;
      }

      if (!(*(*(a1 + 12832) + 160))(*(*(a1 + 12832) + 8), v21, a3))
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_14;
      }
    }

    if (*__error() == 2)
    {
      if (!a2)
      {
LABEL_14:
        free(v21);
        free(v13);
        return 0;
      }

      v40 = strlen(a3);
      if (v40 + strlen(a2) + 2 <= 0x3FF)
      {
        *&a3[strlen(a3)] = 47;
        strncat(a3, a2, 0x400uLL);
        goto LABEL_14;
      }

      BOMCopierNotifyFatalError(a1, "Concatenated path too large: %s %s %ld\n", v41, v42, v43, v44, v45, v46, a3);
    }

    else
    {
      v47 = __error();
      v48 = *(a1 + 64);
      if (v48)
      {
        v48(a1, v21, *v47);
      }
    }

LABEL_28:
    free(v21);
  }

  else
  {
    BOMCopierNotifyFatalError(a1, "Could not allocate path to resolve\n", v15, v16, v17, v18, v19, v20, v49);
  }

  free(v13);
  return 0xFFFFFFFFLL;
}

uint64_t _restoreSymlinks(uint64_t a1, int a2)
{
  v4 = 0;
  while (!BOMStackIsEmpty(*(a1 + 40)))
  {
    v5 = BOMStackPop(*(a1 + 40));
    if ((*(*(a1 + 12832) + 264))(*(*(a1 + 12832) + 8), v5[1], *v5))
    {
      v6 = *v5;
      v7 = __error();
      v8 = *(a1 + 64);
      if (v8)
      {
        v8(a1, v6, *v7);
      }

      if (!a2)
      {
        free(*v5);
        free(v5[1]);
        free(v5[2]);
        free(v5);
        return 1;
      }

      v4 = 1;
    }

    else
    {
      v9 = *(a1 + 96);
      if (v9)
      {
        v9(a1, v5[2], 3, 0, 0);
      }
    }

    free(*v5);
    free(v5[1]);
    free(v5[2]);
    free(v5);
  }

  return v4;
}

uint64_t BOMCopierPrepareMatchContext(const __CFDictionary *a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v37 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 42, "BOMCopierPrepareMatchContext", "match_context is NULL");
    goto LABEL_48;
  }

  TypeID = CFArrayGetTypeID();
  if (!a1)
  {
    goto LABEL_42;
  }

  v7 = TypeID;
  Value = CFDictionaryGetValue(a1, @"archs");
  v9 = Value;
  if (Value && CFGetTypeID(Value) != v7)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 61, "BOMCopierPrepareMatchContext", "kBOMCopierOptionArchitectureArrayKey is not a CFArrayRef");
    goto LABEL_47;
  }

  v10 = CFDictionaryGetTypeID();
  v11 = CFDictionaryGetValue(a1, @"fallbackForSubtype");
  v12 = v11;
  if (v11 && CFGetTypeID(v11) != v10)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 75, "BOMCopierPrepareMatchContext", "kBOMCopierOptionArchitectureFallbackKey is not a CFDictionaryRef");
    goto LABEL_47;
  }

  if (!v9)
  {
LABEL_42:
    v15 = 0;
    LODWORD(Count) = 0;
LABEL_43:
    v37 = 0;
    *a2 = Count;
    *(a2 + 8) = v15;
    goto LABEL_48;
  }

  Count = CFArrayGetCount(v9);
  v14 = malloc_type_calloc(Count, 0x20uLL, 0x101004001FB615FuLL);
  if (!v14)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 92, "BOMCopierPrepareMatchContext", "Could not allocate bom_cpu_type_list");
    goto LABEL_47;
  }

  v15 = v14;
  v42 = v7;
  v44 = CFStringGetTypeID();
  if (Count < 1)
  {
    goto LABEL_43;
  }

  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v16);
    if (!ValueAtIndex)
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 105, "BOMCopierPrepareMatchContext", "Could not retrieve item %d from architecture list");
LABEL_59:
      v40 = v15;
      goto LABEL_60;
    }

    v18 = ValueAtIndex;
    if (v44 != CFGetTypeID(ValueAtIndex))
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 112, "BOMCopierPrepareMatchContext", "Item %d from architecture list is not a CFString");
      goto LABEL_59;
    }

    if (!CFStringGetCString(v18, buffer, 255, 0x8000100u))
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 120, "BOMCopierPrepareMatchContext", "Item %d from architecture list could not converted to a UTF8 string");
      goto LABEL_59;
    }

    v19 = BOMGetArchInfoFromName(buffer);
    if (!v19)
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 128, "BOMCopierPrepareMatchContext", "Could not resolve architecture info for %s");
      goto LABEL_59;
    }

    v20 = v19;
    v21 = BOMGetArchInfoFromCpuType(*(v19 + 2), -1);
    if (!v21)
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 136, "BOMCopierPrepareMatchContext", "Could not resolve family architecture info for %s");
      goto LABEL_59;
    }

    v22 = *(v20 + 3);
    v23 = *(v21 + 2);
    v24 = v22 == *(v21 + 3);
    v26 = v22 != 3 || v23 != 16777223;
    if (v22)
    {
      v27 = 0;
    }

    else
    {
      v27 = v23 == 16777228;
    }

    if (v27)
    {
      v26 = 0;
    }

    v28 = v15 + 32 * v16;
    *v28 = v23;
    v29 = v24 && v26;
    *(v28 + 4) = v29;
    if (v29)
    {
      v22 = -1;
    }

    *(v28 + 8) = v22;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    if (!v12)
    {
      goto LABEL_39;
    }

    v30 = CFDictionaryGetValue(v12, v18);
    if (!v30)
    {
      goto LABEL_39;
    }

    v31 = v30;
    if (v42 != CFGetTypeID(v30))
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 172, "BOMCopierPrepareMatchContext", "Corresponding fallback entry for item %d from architecture list is not a CFArray");
      goto LABEL_59;
    }

    v41 = v15;
    v32 = CFArrayGetCount(v31);
    if (v32 >= 1)
    {
      break;
    }

LABEL_38:
    v15 = v41;
LABEL_39:
    if (++v16 == Count)
    {
      goto LABEL_43;
    }
  }

  v33 = v32;
  v34 = 0;
  v43 = malloc_type_calloc(v32, 4uLL, 0x100004052888210uLL);
  *(v28 + 16) = v43;
  *(v28 + 24) = v33;
  while (1)
  {
    v35 = CFArrayGetValueAtIndex(v31, v34);
    if (!v35)
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 193, "BOMCopierPrepareMatchContext", "Could not retrieve item %d from fallback list");
      goto LABEL_52;
    }

    v36 = v35;
    if (v44 != CFGetTypeID(v35))
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 201, "BOMCopierPrepareMatchContext", "Item %d from fallback list is not a CFString");
      goto LABEL_52;
    }

    if (!CFStringGetCString(v36, __s2, 255, 0x8000100u))
    {
      break;
    }

    v43[v34++] = *(BOMGetArchInfoFromName(__s2) + 3);
    if (v33 == v34)
    {
      goto LABEL_38;
    }
  }

  BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 210, "BOMCopierPrepareMatchContext", "Item %d from fallback list could not converted to a UTF8 string");
LABEL_52:
  free(v43);
  v40 = v41;
LABEL_60:
  free(v40);
LABEL_47:
  v37 = 1;
LABEL_48:
  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t BOMCopierReleaseMatchContext(unsigned int *a1, void *a2)
{
  if (a1)
  {
    v3 = *a1;
    v4 = *(a1 + 1);
    if (v3)
    {
      v5 = v4 + 2;
      do
      {
        if (*v5)
        {
          free(*v5);
        }

        v5 += 4;
        --v3;
      }

      while (v3);
    }

    else if (!v4)
    {
LABEL_11:
      v6 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      return v6;
    }

    free(v4);
    goto LABEL_11;
  }

  v6 = 22;
  BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 250, "BOMCopierReleaseMatchContext", "match_context is NULL");
  return v6;
}

uint64_t BOMCopierMatchBinary(uint64_t a1, unsigned int *a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      a2[4] = 2;
      *(a2 + 5) = 0;
      *(a2 + 7) = 0;
      *(a2 + 5) = 0;
      ArchCount = BOMCopierSourceEntryGetArchCount(a1);
      v9 = ArchCount;
      v48 = malloc_type_calloc(ArchCount, 0x28uLL, 0x1000040DFF313CCuLL);
      if (!v48)
      {
        v31 = *__error();
        v32 = __error();
        v33 = strerror(*v32);
        BOMCopierErrorCapture(a3, v31, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 323, "BOMCopierMatchBinary", "Could not allocate empty match record list: %s", v33);
        return 1;
      }

      Size = BOMCopierSourceEntryGetSize(a1);
      v10 = *a2;
      v47 = *a2 == 0;
      if (*a2)
      {
        v11 = 0;
      }

      else
      {
        v11 = ArchCount;
      }

      if (v10)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      v44 = v12;
      v46 = ArchCount;
      if (ArchCount)
      {
        v13 = 0;
        v14 = v10 == 0;
        if (v6)
        {
          v15 = v10 == 0;
        }

        else
        {
          v15 = 1;
        }

        while (1)
        {
          memset(v49, 0, sizeof(v49));
          if (BOMCopierSourceEntryGetArchRecord(a1, v13, v49, a3))
          {
            break;
          }

          v16 = &v48[40 * v13];
          *v16 = v14;
          v17 = v49[0];
          v18 = DWORD1(v49[0]);
          *(v16 + 1) = v49[0];
          *(v16 + 2) = v18;
          *(v16 + 1) = *(v49 + 8);
          *(v16 + 4) = *(&v49[1] + 1);
          if (v15)
          {
LABEL_21:
            if (!v47 && v6)
            {
              for (i = 0; i < v6; ++i)
              {
                v22 = (v7 + 32 * i);
                if ((v22[1] & 1) != 0 || (v24 = v22[6], !v24))
                {
                  v23 = 0;
                }

                else
                {
                  v25 = 0;
                  v23 = 0;
                  v26 = *v22;
                  v27 = 4 * v24;
                  do
                  {
                    if (v17 == v26 && v18 == *(*(v22 + 2) + v25))
                    {
                      v23 = 1;
                      *v16 = 1;
                      ++v11;
                    }

                    v25 += 4;
                  }

                  while (v27 != v25);
                }

                if (v23)
                {
                  break;
                }
              }
            }
          }

          else
          {
            v19 = 0;
            v20 = v7 + 4;
            while (v17 != *(v20 - 4) || (*v20 & 1) == 0 && ((*(v20 + 4) ^ v18) & 0xFFFFFF) != 0)
            {
              ++v19;
              v20 += 32;
              if (v19 >= v6)
              {
                goto LABEL_21;
              }
            }

            *v16 = 1;
            ++v11;
          }

          if (++v13 == v9)
          {
            goto LABEL_39;
          }
        }

        v36 = __error();
        BOMCopierErrorCapture(a3, *v36, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 347, "BOMCopierMatchBinary", "Could not get arch record for index %d", MEMORY[0x277D85E38]);
        free(v48);
        return 1;
      }

LABEL_39:
      if (v11 == v46)
      {
        v29 = 1;
        v30 = Size;
      }

      else if (v11)
      {
        if (v11 == 1)
        {
          v30 = Size;
          if (!v46)
          {
            v29 = 3;
LABEL_66:
            v28 = 0;
            a2[4] = v29;
            a2[5] = v46;
            *(a2 + 3) = v48;
            a2[8] = v11;
            *(a2 + 5) = v30;
            return v28;
          }

          v34 = (v48 + 24);
          v35 = v9;
          do
          {
            if (*(v34 - 24) == 1)
            {
              *(v34 - 1) = 0;
              v30 = *v34;
            }

            v34 += 5;
            --v35;
          }

          while (v35);
          v29 = 3;
        }

        else
        {
          v30 = Size;
          v29 = v44;
          if (v11 < v46)
          {
            BinaryType = BOMCopierSourceEntryGetBinaryType(a1);
            v38 = 20;
            if (BinaryType == 4)
            {
              v38 = 32;
            }

            v30 = v38 * v11 + 8;
            v39 = v48 + 32;
            v40 = v9;
            do
            {
              if (*(v39 - 32) == 1)
              {
                v41 = (v30 + (1 << *v39) - 1) & -(1 << *v39);
                *(v39 - 2) = v41;
                v30 = v41 + *(v39 - 1);
              }

              v39 += 10;
              --v40;
            }

            while (v40);
            v29 = 4;
          }
        }
      }

      else
      {
        v30 = 0;
        v29 = 2;
      }

      if (v46)
      {
        v42 = v48 + 16;
        do
        {
          if ((*(v42 - 2) & 1) == 0)
          {
            *v42 = -1;
          }

          v42 += 5;
          --v9;
        }

        while (v9);
      }

      goto LABEL_66;
    }

    v28 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 294, "BOMCopierMatchBinary", "match_context is NULL");
  }

  else
  {
    v28 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 288, "BOMCopierMatchBinary", "source_entry is NULL");
  }

  return v28;
}

uint64_t BOMFSOArchInfoInitialize()
{
  v0 = MEMORY[0x28223BE20]();
  v34 = *MEMORY[0x277D85DE8];
  if (*(v1 + 96) >= 4096)
  {
    v2 = 4096;
  }

  else
  {
    v2 = *(v1 + 96);
  }

  if (*v0 != 1)
  {
    goto LABEL_41;
  }

  v3 = v0;
  v4 = *(v0 + 24);
  if (v4)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v26 = *(v0 + 16);
    if (v26 == -1)
    {
      goto LABEL_51;
    }

    if (*(v0 + 144))
    {
      snprintf(__str, 0x401uLL, "%s/%s", *(v0 + 144), *(v0 + 72));
      v26 = *(v3 + 16);
    }

    if ((*(*(v3 + 160) + 64))(*(*(v3 + 160) + 8), v26, 0, 0) < 0)
    {
      goto LABEL_41;
    }

    v4 = v33;
    if ((*(*(v3 + 160) + 48))(*(*(v3 + 160) + 8), *(v3 + 16), v33, v2) != v2)
    {
LABEL_51:
      result = 1;
      goto LABEL_52;
    }
  }

  if (v2 >= 8)
  {
    v5 = *(v3 + 16);
    if (BOMArchFlagForHeader(v4, v2) == 2)
    {
      v6 = bswap32(*(v4 + 1));
      v7 = 20 * v6 + 8;
      if (v7 <= v2 || v5 != -1 && (*(*(v3 + 160) + 48))(*(*(v3 + 160) + 8), v5, &v4[v2]) == v7 - v2)
      {
        *(v3 + 40) |= 2 << B_ARCHOFFT;
        *(v3 + 104) = v6;
        *(v3 + 112) = BOM_malloc(24 * v6);
        if (v6 >= 1)
        {
          v8 = 0;
          v9 = 24 * v6;
          v10 = (v4 + 20);
          while (1)
          {
            v11 = *(v10 - 3);
            if (*v4 == -889275714)
            {
              v12 = *(v3 + 112) + v8;
              *v12 = v11;
              v13 = *(v10 - 2);
              *(v12 + 4) = v13;
              v14 = *v10;
              *(v12 + 8) = v14;
              v15 = *(v10 - 1);
            }

            else
            {
              v16 = *(v3 + 112) + v8;
              *v16 = bswap32(v11);
              v13 = *(v10 - 2);
              *(v16 + 4) = bswap32(v13);
              v14 = bswap32(*v10);
              *(v16 + 8) = v14;
              v15 = bswap32(*(v10 - 1));
            }

            if ((*(v3 + 40) & B_CKSUMS) == 0)
            {
              goto LABEL_28;
            }

            v17 = v15;
            v18 = v14 + v15;
            if (v18 > *(v3 + 64))
            {
              v19 = *(v3 + 72);
              v20 = BOMGetArchInfoFromCpuType(v11, v13);
              if (v20)
              {
                v21 = *v20;
              }

              else
              {
                v31 = v11;
                v21 = _cpuNameForType_generic;
                snprintf(_cpuNameForType_generic, 0x50uLL, "<cputype %d, subtype %d>", v31, v13);
              }

              v24 = BOMExceptionHandlerMessage("file %s is corrupt: slice for %s extends beyond length of file. (%lu > %lld)\n", v19, v21, v18, *(v3 + 64));
              v25 = __error();
              _BOMExceptionHandlerCall(v24, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/FSObject/BOMFSOArchInfo.c", 470, *v25);
              goto LABEL_28;
            }

            *__str = 0;
            v22 = *(v3 + 24);
            if (v22)
            {
              if (BOMCRC32ForBuffer(v22 + v17, __str, v14))
              {
                goto LABEL_23;
              }
            }

            else
            {
              if ((*(*(v3 + 160) + 64))(*(*(v3 + 160) + 8), v5) == -1)
              {
                v23 = 0;
                goto LABEL_25;
              }

              if (BOMCRC32ForFileDesc(v5, __str, v14))
              {
LABEL_23:
                *__str = 0;
              }
            }

            v23 = *__str;
LABEL_25:
            *(*(v3 + 112) + v8 + 16) = v23;
LABEL_28:
            v8 += 24;
            v10 += 5;
            if (v9 == v8)
            {
              goto LABEL_51;
            }
          }
        }

        goto LABEL_51;
      }
    }

    if (v2 >= 0x1C)
    {
      v28 = *v4;
      if (*v4 != -822415874)
      {
        if (v28 == -17958194)
        {
LABEL_44:
          v29 = *(v4 + 4);
LABEL_50:
          _handleMachO_common(v3, v29.i32[0], v29.i32[1]);
          goto LABEL_51;
        }

        if (v2 < 0x20)
        {
          goto LABEL_41;
        }

        if (v28 != -805638658)
        {
          if (v28 != -17958193)
          {
            goto LABEL_41;
          }

          goto LABEL_44;
        }
      }

      v29 = vrev32_s8(*(v4 + 4));
      goto LABEL_50;
    }
  }

LABEL_41:
  result = 0;
LABEL_52:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void BOMFSOArchInfoRelease(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 112) = 0;
}

uint64_t BOMFSOArchInfoCopy(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 104);
    *(a2 + 104) = v5;
    v6 = BOM_malloc(24 * v5);
    *(a2 + 112) = v6;
    if (v6)
    {
      if (*(a2 + 104))
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *(a2 + 112) + v7;
          v10 = (*(a1 + 112) + v7);
          v11 = *v10;
          *(v9 + 16) = *(v10 + 2);
          *v9 = v11;
          ++v8;
          v7 += 24;
        }

        while (v8 < *(a2 + 104));
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t BOMFSOArchInfoContainsArchitecture(uint64_t a1, int a2)
{
  if ((B_ARCH & *(a1 + 40)) == 0)
  {
    return 0;
  }

  if (!((B_ARCHMASK & *(a1 + 40)) >> B_ARCHOFFT))
  {
    return 0;
  }

  v2 = *(a1 + 104);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 112);
  while (1)
  {
    v4 = *v3;
    v3 += 6;
    if (v4 == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t BOMFSOArchInfoArchCount(_DWORD *a1)
{
  if (*a1 == 1)
  {
    return a1[26];
  }

  else
  {
    return 0;
  }
}

uint64_t BOMFSOArchInfoGetArch(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 104) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 112) + 24 * a2);
  }
}

uint64_t BOMFSOArchInfoGetArchSubtype(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 104) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 112) + 24 * a2 + 4);
  }
}

uint64_t BOMFSOArchInfoGetArchSize(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 104) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 112) + 24 * a2 + 8);
  }
}

uint64_t BOMFSOArchInfoThinKeepingArchs(uint64_t a1, int *a2, unsigned int a3)
{
  if ((B_ARCH & *(a1 + 40)) == 0)
  {
    return 1;
  }

  if ((B_ARCHMASK & *(a1 + 40)) >> B_ARCHOFFT != 2)
  {
    return 0;
  }

  v6 = BOM_malloc(24 * *(a1 + 104));
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (a3)
      {
        v11 = *(a1 + 112) + 24 * v9;
        v12 = a3;
        v13 = a2;
        while (1)
        {
          v14 = *v13++;
          if (*v11 == v14)
          {
            break;
          }

          if (!--v12)
          {
            goto LABEL_12;
          }
        }

        v15 = &v6[24 * v10];
        v16 = *v11;
        *(v15 + 2) = *(v11 + 16);
        *v15 = v16;
        ++v10;
        v8 = *(a1 + 104);
      }

LABEL_12:
      ++v9;
    }

    while (v9 < v8);
  }

  else
  {
    v10 = 0;
  }

  v18 = *(a1 + 112);
  if (v18)
  {
    free(v18);
  }

  *(a1 + 104) = v10;
  *(a1 + 108) = 0;
  *(a1 + 112) = v7;
  result = 0;
  if (v10 == 1)
  {
    *(a1 + 64) = *(v7 + 1);
    *(a1 + 88) = *(v7 + 4);
  }

  return result;
}

uint64_t BOMFSOArchInfoThinKeepingArchsAndSubArchs(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((B_ARCH & *(a1 + 40)) == 0)
  {
    return 1;
  }

  if ((B_ARCHMASK & *(a1 + 40)) >> B_ARCHOFFT != 2)
  {
    return 0;
  }

  v6 = BOM_malloc(24 * *(a1 + 104));
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (a3)
      {
        v11 = *(a1 + 112) + 24 * v9;
        v12 = a3;
        v13 = (a2 + 8);
        while (*v11 != *(v13 - 2) || (*(v13 - 1) & 1) == 0 && ((*v13 ^ *(v11 + 4)) & 0xFFFFFF) != 0)
        {
          v13 += 8;
          if (!--v12)
          {
            goto LABEL_14;
          }
        }

        v14 = &v6[24 * v10];
        v15 = *v11;
        *(v14 + 2) = *(v11 + 16);
        *v14 = v15;
        ++v10;
        v8 = *(a1 + 104);
      }

LABEL_14:
      ++v9;
    }

    while (v9 < v8);
  }

  else
  {
    v10 = 0;
  }

  v17 = *(a1 + 112);
  if (v17)
  {
    free(v17);
  }

  *(a1 + 104) = v10;
  *(a1 + 108) = 0;
  *(a1 + 112) = v7;
  result = 0;
  if (v10 == 1)
  {
    *(a1 + 64) = *(v7 + 1);
    *(a1 + 88) = *(v7 + 4);
  }

  return result;
}

void BOMFSOArchInfoSet(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 112);
    if (v6)
    {
      free(v6);
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 40) &= ~B_ARCH;
    }

    if (a2)
    {
      *(a1 + 104) = a2;
      v7 = BOM_malloc(24 * a2);
      v8 = 0;
      *(a1 + 112) = v7;
      do
      {
        v9 = *(a1 + 112) + v8;
        v10 = *(a3 + v8);
        *(v9 + 16) = *(a3 + v8 + 16);
        *v9 = v10;
        v8 += 24;
      }

      while (24 * a2 != v8);
      if (a2 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      *(a1 + 40) |= B_ARCH | (v11 << B_ARCHOFFT);
    }
  }
}

uint64_t _handleMachO_common(uint64_t a1, int a2, int a3)
{
  *(a1 + 40) |= 1 << B_ARCHOFFT;
  *(a1 + 104) = 1;
  v6 = BOM_malloc(0x18uLL);
  *(a1 + 112) = v6;
  v6[1] = *(a1 + 64);
  *v6 = a2;
  *(v6 + 1) = a3;
  result = BOMFSObjectChecksum(a1);
  *(*(a1 + 112) + 16) = result;
  return result;
}

uint64_t BOMFSObjectArchiveLength(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *(a1 + 40);
  if ((B_STAT & v2) != 0)
  {
    v3 = BOMFSOTypeInfoArchiveLength(a1);
    if (v3 < 0)
    {
      return -1;
    }

    v4 = v3 + 30;
    v2 = *(a1 + 40);
  }

  else
  {
    v4 = 4;
  }

  if ((B_ARCH & v2) == 0)
  {
    goto LABEL_9;
  }

  v5 = BOMFSOArchInfoArchiveLength(a1);
  if (v5 < 0)
  {
    return -1;
  }

  v4 += v5;
  v2 = *(a1 + 40);
LABEL_9:
  if ((B_OPAQUEDATA & v2) != 0)
  {
    v4 += *(a1 + 128) + 4;
  }

  return v4;
}

uint64_t BOMFSObjectArchive(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1 && a2)
  {
    BOMStreamWriteUInt8(a1, *a2);
    BOMStreamWriteUInt8(a1, 1);
    BOMStreamWriteUInt16(a1, *(a2 + 40));
    v5 = *(a2 + 40);
    if ((B_STAT & v5) != 0)
    {
      BOMStreamWriteUInt16(a1, *(a2 + 42));
      BOMStreamWriteUInt32(a1, *(a2 + 44));
      BOMStreamWriteUInt32(a1, *(a2 + 48));
      BOMStreamWriteUInt32(a1, *(a2 + 56));
      BOMStreamWriteUInt32(a1, *(a2 + 64));
      BOMFSOTypeInfoArchive(a1, a2);
      v5 = *(a2 + 40);
    }

    if ((B_ARCH & v5) != 0)
    {
      BOMFSOArchInfoArchive(a1, a2);
      v5 = *(a2 + 40);
    }

    if ((B_OPAQUEDATA & v5) != 0)
    {
      BOMStreamWriteUInt32(a1, *(a2 + 128));
      BOMStreamWriteBuffer(a1, *(a2 + 120), *(a2 + 128));
    }

    return 0;
  }

  return result;
}

_DWORD *BOMFSObjectUnarchive(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  UInt8 = BOMStreamReadUInt8(a1);
  v3 = BOMStreamReadUInt8(a1);
  if ((UInt8 - 6) <= 0xFFFFFFFA)
  {
    fprintf(*MEMORY[0x277D85DF8], "filesystem object has an invalid type: 0x%X\nCannot dearchive.\n");
    return 0;
  }

  if (v3 != 1)
  {
    fprintf(*MEMORY[0x277D85DF8], "filesystem object has an invalid version: 0x%X\nCannot dearchive.\n");
    return 0;
  }

  Sys = BOMStreamGetSys(a1);
  v5 = BOMFSObjectNewWithSys(UInt8, Sys);
  if (v5)
  {
    UInt16 = BOMStreamReadUInt16(a1);
    *(v5 + 20) = UInt16;
    if ((B_STAT & UInt16) != 0)
    {
      *(v5 + 21) = BOMStreamReadUInt16(a1);
      v5[11] = BOMStreamReadUInt32(a1);
      v5[12] = BOMStreamReadUInt32(a1);
      *(v5 + 7) = BOMStreamReadUInt32(a1);
      *(v5 + 8) = BOMStreamReadUInt32(a1);
      UInt16 = *(v5 + 20);
      if ((B_STAT & UInt16) != 0)
      {
        if (BOMFSOTypeInfoUnarchive(a1, v5))
        {
          goto LABEL_19;
        }

        UInt16 = *(v5 + 20);
      }
    }

    if ((B_ARCH & UInt16) != 0)
    {
      if (BOMFSOArchInfoUnarchive(a1, v5))
      {
        goto LABEL_19;
      }

      UInt16 = *(v5 + 20);
    }

    if ((B_OPAQUEDATA & UInt16) != 0)
    {
      UInt32 = BOMStreamReadUInt32(a1);
      *(v5 + 16) = UInt32;
      v8 = BOM_malloc(UInt32);
      *(v5 + 15) = v8;
      if (v8)
      {
        BOMStreamReadBuffer(a1, v8, *(v5 + 16));
        return v5;
      }

LABEL_19:
      BOMFSObjectFree(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t BOMFSObjectTypeForMode(int a1)
{
  if ((a1 - 4096) >> 14 > 2)
  {
    return 0;
  }

  else
  {
    return dword_241C78F18[(a1 - 4096) >> 12];
  }
}

char *BOMNameForFSObjectType(int a1)
{
  if ((a1 - 6) >= 0xFFFFFFFB)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return &gTypeStrings[10 * v1];
}

void *BOMFSObjectNew(int a1)
{
  v2 = BOM_malloczero(0xA8uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v2[20] = BomSys_default();
  }

  return v3;
}

_DWORD *BOMFSObjectNewWithSys(int a1, void *a2)
{
  v4 = BOM_malloczero(0xA8uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    if (!a2)
    {
      a2 = BomSys_default();
    }

    *(v5 + 20) = a2;
  }

  return v5;
}

_DWORD *BOMFSObjectNewFromPathWithSys(char *a1, __int16 a2, unsigned int (**a3)(void, char *, __int128 *))
{
  v3 = a3;
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  if (v3[12](v3[1], a1, &v30))
  {
    return 0;
  }

  v8 = BOMFSObjectTypeForMode(WORD2(v30));
  if (v8 == 5)
  {
    return 0;
  }

  if (!v8)
  {
    fprintf(*MEMORY[0x277D85DF8], "file '%s' is an unknown file type\n", a1);
    return 0;
  }

  v6 = BOMFSObjectNewWithSys(v8, v3);
  if (!v6)
  {
    return v6;
  }

  v9 = strlen(a1);
  v10 = BOM_malloc(v9 + 1);
  *(v6 + 9) = v10;
  if (!v10)
  {
LABEL_24:
    v20 = *(v6 + 10);
    if (v20)
    {
      free(v20);
    }

    free(v6);
    return 0;
  }

  memmove(v10, a1, v9 + 1);
  v11 = strrchr(a1, 47);
  v12 = a1;
  if (v11)
  {
    if (v11[1])
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11;
    }
  }

  v13 = strlen(v12);
  v14 = BOM_malloc(v13 + 1);
  *(v6 + 10) = v14;
  if (!v14)
  {
    v19 = *(v6 + 9);
    if (v19)
    {
      free(v19);
    }

    goto LABEL_24;
  }

  memmove(v14, v12, v13 + 1);
  *(v6 + 20) = a2;
  v15 = a2 & 1;
  if (a2)
  {
    *(v6 + 21) = WORD2(v30);
    *(v6 + 11) = v31;
    *(v6 + 7) = v33;
    *(v6 + 8) = v36;
  }

  if ((a2 & 0xFFF) != 0 && *v6 == 1)
  {
    v16 = v3[23](v3[1], a1, 4);
    v17 = v3[1];
    if (v16 == -1)
    {
      v3[25](v17, a1, (WORD2(v30) & 0xFFF | 0x124u));
      v18 = (v3[2])(v3[1], a1, 0, 0);
      v3[25](v3[1], a1, (WORD2(v30) & 0xFFF));
    }

    else
    {
      v18 = (v3[2])(v17, a1, 0, 0);
    }

    if (v18 == -1)
    {
      BOMFSObjectFree(v6);
      return 0;
    }

    v6[4] = v18;
    *(v6 + 3) = 0;
    *(v6 + 4) = 0;
    a2 = *(v6 + 20);
    v15 = a2 & 1;
  }

  if (v15)
  {
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v21 = v30;
    v22 = v31;
    BOMFSOTypeInfoInitialize(v6, &v21);
    a2 = *(v6 + 20);
  }

  if ((a2 & 4) != 0)
  {
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v21 = v30;
    v22 = v31;
    BOMFSOArchInfoInitialize();
  }

  if (*v6 == 1 && (v6[10] & 0xFFF) != 0)
  {
    (v3[4])(v3[1], v6[4]);
    *(v6 + 3) = 0;
    *(v6 + 4) = 0;
  }

  return v6;
}

void BOMFSObjectFree(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 80);
    if (v3)
    {
      free(v3);
    }

    BOMFSOTypeInfoRelease(a1);
    BOMFSOArchInfoRelease(a1);
    v4 = *(a1 + 120);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 144);
    if (v5 && *(a1 + 152))
    {
      free(v5);
    }

    free(a1);
  }
}

uint64_t BOMFSObjectENewFromPathWithSys(char *a1, __int128 *a2, int a3, __int16 a4, void *a5)
{
  v10 = BOMFSObjectTypeForMode(*(a2 + 2));
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (!a5)
  {
    a5 = BomSys_default();
  }

  v12 = BOMFSObjectNewWithSys(v11, a5);
  v13 = v12;
  if (v12)
  {
    v12[4] = -1;
    v14 = strlen(a1);
    v15 = BOM_malloc(v14 + 1);
    *(v13 + 72) = v15;
    if (!v15)
    {
      goto LABEL_18;
    }

    memmove(v15, a1, v14 + 1);
    v16 = strrchr(a1, 47);
    v17 = a1;
    if (v16)
    {
      if (v16[1])
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = v16;
      }
    }

    v18 = strlen(v17);
    v19 = BOM_malloc(v18 + 1);
    *(v13 + 80) = v19;
    if (v19)
    {
      memmove(v19, v17, v18 + 1);
      *(v13 + 40) = a4;
      v20 = a4 & 1;
      if (a4)
      {
        *(v13 + 42) = *(a2 + 2);
        *(v13 + 44) = *(a2 + 2);
        *(v13 + 56) = *(a2 + 6);
        *(v13 + 64) = *(a2 + 12);
      }

      if ((a4 & 0xFFF) == 0 || *v13 != 1)
      {
        goto LABEL_29;
      }

      if (a3 != -1)
      {
        *(v13 + 16) = a3;
LABEL_28:
        *(v13 + 24) = 0;
        *(v13 + 32) = 0;
LABEL_29:
        if (v20)
        {
          v25 = a2[7];
          v39 = a2[6];
          v40 = v25;
          v41 = a2[8];
          v26 = a2[3];
          v35 = a2[2];
          v36 = v26;
          v27 = a2[5];
          v37 = a2[4];
          v38 = v27;
          v28 = a2[1];
          v33 = *a2;
          v34 = v28;
          BOMFSOTypeInfoInitialize(v13, &v33);
          a4 = *(v13 + 40);
        }

        if ((a4 & 4) != 0)
        {
          v29 = a2[7];
          v39 = a2[6];
          v40 = v29;
          v41 = a2[8];
          v30 = a2[3];
          v35 = a2[2];
          v36 = v30;
          v31 = a2[5];
          v37 = a2[4];
          v38 = v31;
          v32 = a2[1];
          v33 = *a2;
          v34 = v32;
          BOMFSOArchInfoInitialize();
        }

        if (*v13 == 1 && (*(v13 + 40) & 0xFFF) != 0)
        {
          *(v13 + 24) = 0;
          *(v13 + 32) = 0;
          if (a3 == -1)
          {
            (*(a5 + 4))(*(a5 + 1), *(v13 + 16));
            *(v13 + 16) = -1;
          }
        }

        return v13;
      }

      v22 = (*(a5 + 23))(*(a5 + 1), a1, 4);
      v23 = *(a5 + 1);
      if (v22 == -1)
      {
        (*(a5 + 25))(v23, a1, *(a2 + 2) & 0xFFF | 0x124u);
        *(v13 + 16) = (*(a5 + 2))(*(a5 + 1), a1, 0, 0);
        (*(a5 + 25))(*(a5 + 1), a1, *(a2 + 2) & 0xFFF);
        v24 = *(v13 + 16);
      }

      else
      {
        v24 = (*(a5 + 2))(v23, a1, 0, 0);
        *(v13 + 16) = v24;
      }

      if (v24 != -1)
      {
        a4 = *(v13 + 40);
        v20 = a4 & 1;
        goto LABEL_28;
      }
    }

    else
    {
LABEL_18:
      if (a3 == -1 && *(v13 + 16) != -1)
      {
        (*(a5 + 4))(*(a5 + 1));
      }
    }

    BOMFSObjectFree(v13);
    return 0;
  }

  return v13;
}

void *BOMFSObjectCopy(uint64_t a1)
{
  v2 = BOMFSObjectNewWithSys(*a1, *(a1 + 160));
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v4 = *(a1 + 32);
  v5 = *a1;
  *(v2 + 1) = *(a1 + 16);
  *(v2 + 2) = v4;
  *v2 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 96);
  *(v2 + 5) = *(a1 + 80);
  *(v2 + 6) = v8;
  *(v2 + 3) = v6;
  *(v2 + 4) = v7;
  v9 = *(a1 + 112);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  *(v2 + 20) = *(a1 + 160);
  *(v2 + 8) = v10;
  *(v2 + 9) = v11;
  *(v2 + 7) = v9;
  v2[4] = 0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = strlen(v12);
    v14 = BOM_malloc(v13 + 1);
    v3[9] = v14;
    if (!v14)
    {
      goto LABEL_16;
    }

    strlcpy(v14, *(a1 + 72), v13 + 1);
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = strlen(v15);
    v17 = BOM_malloc(v16 + 1);
    v3[10] = v17;
    if (!v17)
    {
      goto LABEL_16;
    }

    strlcpy(v17, *(a1 + 80), v16 + 1);
  }

  if (BOMFSOArchInfoCopy(a1, v3) || BOMFSOTypeInfoCopy(a1, v3))
  {
    return 0;
  }

  if (*(a1 + 120))
  {
    v18 = BOM_malloc(*(a1 + 128));
    v3[15] = v18;
    if (v18)
    {
      memmove(v18, *(a1 + 120), *(a1 + 128));
      goto LABEL_13;
    }

LABEL_16:
    v22 = v3[9];
    if (v22)
    {
      free(v22);
    }

    v23 = v3[10];
    if (v23)
    {
      free(v23);
    }

    v24 = v3[15];
    if (v24)
    {
      free(v24);
    }

    v25 = v3[18];
    if (v25)
    {
      free(v25);
    }

    free(v3);
    return 0;
  }

LABEL_13:
  v19 = *(a1 + 144);
  if (v19)
  {
    v20 = strlen(v19);
    v21 = BOM_malloc(v20 + 1);
    v3[18] = v21;
    if (v21)
    {
      strlcpy(v21, *(a1 + 144), v20 + 1);
      *(a1 + 152) = 1;
      return v3;
    }

    goto LABEL_16;
  }

  return v3;
}

_DWORD *BOMFSObjectNewFromPathDeferredWithSys(uint64_t a1, char *a2, __int16 a3, const char *a4, int a5, void *a6)
{
  v12 = BOMFSObjectTypeForMode(*(a1 + 4));
  v13 = BOMFSObjectNewWithSys(v12, a6);
  if (v13)
  {
    v14 = strlen(a2);
    v15 = BOM_malloc(v14 + 1);
    *(v13 + 9) = v15;
    if (v15)
    {
      memmove(v15, a2, v14 + 1);
      v16 = strrchr(a2, 47);
      v17 = a2;
      if (v16)
      {
        if (v16[1])
        {
          v17 = v16 + 1;
        }

        else
        {
          v17 = v16;
        }
      }

      v18 = strlen(v17);
      v19 = BOM_malloc(v18 + 1);
      *(v13 + 10) = v19;
      if (v19)
      {
        memmove(v19, v17, v18 + 1);
        *(v13 + 20) = a3;
        if (a5)
        {
          v20 = strlen(a4);
          v21 = BOM_malloc(v20 + 1);
          *(v13 + 18) = v21;
          memmove(v21, a4, v20 + 1);
          *(v13 + 152) = 1;
          if ((a3 & 1) == 0)
          {
LABEL_10:
            *(v13 + 68) = 0;
            return v13;
          }
        }

        else
        {
          *(v13 + 18) = a4;
          if ((a3 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v13 + 21) = *(a1 + 4);
        *(v13 + 11) = *(a1 + 16);
        v24 = *(a1 + 96);
        *(v13 + 7) = *(a1 + 48);
        *(v13 + 8) = v24;
        BOMFSOTypeInfoInitializeDeferred(v13, a1, a2, 1u);
        *(v13 + 68) = 1;
        return v13;
      }

      v22 = *(v13 + 9);
      if (v22)
      {
        free(v22);
      }
    }

    v23 = *(v13 + 10);
    if (v23)
    {
      free(v23);
    }

    free(v13);
    return 0;
  }

  return v13;
}

_DWORD *BOMFSObjectNewFromPathStringWithSys(const __CFString *a1, __int16 a2, unsigned int (**a3)(void, char *, __int128 *))
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v7 = 0;
LABEL_5:
    v9 = BOMFSObjectNewFromPathWithSys(CStringPtr, a2, a3);
    goto LABEL_6;
  }

  v7 = BOM_malloc(0x2800uLL);
  CString = CFStringGetCString(a1, v7, 10240, 0x8000100u);
  v9 = 0;
  if (v7)
  {
    v10 = CString;
    CStringPtr = v7;
    if (v10)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  if (v7)
  {
    free(v7);
  }

  return v9;
}

uint64_t BOMFSObjectPathName(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t BOMFSObjectShortName(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

CFStringRef BOMFSObjectPathNameString(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithCString(*MEMORY[0x277CBECE8], result[2].info, 0x8000100u);
  }

  return result;
}

CFStringRef BOMFSObjectShortNameString(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithCString(*MEMORY[0x277CBECE8], result[2].data, 0x8000100u);
  }

  return result;
}

uint64_t BOMFSObjectMode(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144))
    {
      if ((*(result + 136) & 1) == 0)
      {
        _loadStatInfo(result);
      }
    }

    return *(v1 + 42);
  }

  return result;
}

uint64_t _loadStatInfo(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 136))
  {
    result = 0;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    v2 = *(a1 + 144);
    snprintf(__str, 0x401uLL, "%s/%s", v2, *(a1 + 72));
    if ((*(*(a1 + 160) + 96))(*(*(a1 + 160) + 8), __str, &v6))
    {
      fprintf(*MEMORY[0x277D85DF8], "stat error for '%s'\n", __str);
      result = 1;
    }

    else
    {
      *(a1 + 42) = WORD2(v6);
      *(a1 + 44) = v7;
      v4 = v12;
      *(a1 + 56) = v9;
      *(a1 + 64) = v4;
      BOMFSOTypeInfoInitializeDeferred(a1, &v6, __str, 1u);
      result = 0;
      *(a1 + 136) |= 1u;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMFSObjectUserID(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144))
    {
      if ((*(result + 136) & 1) == 0)
      {
        _loadStatInfo(result);
      }
    }

    return *(v1 + 44);
  }

  return result;
}

uint64_t BOMFSObjectGroupID(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144))
    {
      if ((*(result + 136) & 1) == 0)
      {
        _loadStatInfo(result);
      }
    }

    return *(v1 + 48);
  }

  return result;
}

uint64_t BOMFSObjectModTime(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144))
    {
      if ((*(result + 136) & 1) == 0)
      {
        _loadStatInfo(result);
      }
    }

    return *(v1 + 56);
  }

  return result;
}

uint64_t BOMFSObjectSize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144))
    {
      if ((*(result + 136) & 1) == 0)
      {
        _loadStatInfo(result);
      }
    }

    return *(v1 + 64);
  }

  return result;
}

uint64_t BOMFSObjectPathID(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t BOMFSObjectSetPathID(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 4) = a2;
  }

  return result;
}

uint64_t BOMFSObjectParentPathID(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t BOMFSObjectSetParentPathID(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

void BOMFSObjectSetPathName(uint64_t a1, char *__s, int a3)
{
  if (a1)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      free(v6);
    }

    if (__s && a3)
    {
      v7 = strlen(__s);
      v8 = BOM_malloc(v7 + 1);
      *(a1 + 72) = v8;

      memmove(v8, __s, v7 + 1);
    }

    else
    {
      *(a1 + 72) = __s;
    }
  }
}

void BOMFSObjectSetShortName(uint64_t a1, char *__s, int a3)
{
  if (a1)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      free(v6);
    }

    if (__s && a3)
    {
      v7 = strlen(__s);
      v8 = BOM_malloc(v7 + 1);
      *(a1 + 80) = v8;

      memmove(v8, __s, v7 + 1);
    }

    else
    {
      *(a1 + 80) = __s;
    }
  }
}

uint64_t BOMFSObjectSetFlags(uint64_t result, __int16 a2)
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

uint64_t BOMFSObjectSetMode(uint64_t result, __int16 a2)
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 42) = a2;
  }

  return result;
}

uint64_t BOMFSObjectSetUserID(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 44) = a2;
  }

  return result;
}

uint64_t BOMFSObjectSetGroupID(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 48) = a2;
  }

  return result;
}

uint64_t BOMFSObjectSetModTime(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 56) = a2;
  }

  return result;
}

uint64_t BOMFSObjectSetSize(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 64) = a2;
  }

  return result;
}

uint64_t BOMFSObjectOpaqueData(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t BOMFSObjectOpaqueDataSize(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t BOMFSObjectSetOpaqueData(uint64_t a1, const void *a2, size_t a3, int a4)
{
  if (!a1)
  {
    return 1;
  }

  v9 = (a1 + 120);
  v8 = *(a1 + 120);
  if (v8)
  {
    free(v8);
  }

  v10 = *(a1 + 40);
  if (a2 && a3)
  {
    *(a1 + 40) = v10 | 0x10;
    *(a1 + 128) = a3;
    if (a4)
    {
      v11 = BOM_malloc(a3);
      *v9 = v11;
      if (v11)
      {
        memmove(v11, a2, a3);
        return 0;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      result = 0;
      *v9 = a2;
    }
  }

  else
  {
    result = 0;
    *(a1 + 40) = v10 & 0xFFEF;
    *v9 = 0;
    v9[1] = 0;
  }

  return result;
}

uint64_t BOMFSObjectBlockID(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t BOMFSObjectSetBlockID(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      *(result + 12) = a2;
    }
  }

  return result;
}

uint64_t BOMFSObjectSetVisitOrder(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 156) = a2;
  }

  return result;
}

uint64_t BOMFSObjectChecksum(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144) && (*(result + 136) & 2) == 0)
    {
      _loadCksumInfo(result);
    }

    return BOMFSOTypeInfoChecksum(v1);
  }

  return result;
}

uint64_t _loadCksumInfo(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(result + 136) & 2) != 0)
  {
    goto LABEL_13;
  }

  v1 = result;
  result = _loadStatInfo(result);
  if (result)
  {
    goto LABEL_13;
  }

  if (*v1 != 1 || (*(v1 + 40) & 2) == 0)
  {
    goto LABEL_10;
  }

  v2 = *(v1 + 144);
  snprintf(__str, 0x401uLL, "%s/%s", v2, *(v1 + 72));
  v3 = (*(*(v1 + 160) + 184))(*(*(v1 + 160) + 8), __str, 4);
  v4 = *(v1 + 160);
  v5 = *(v4 + 8);
  if (v3 == -1)
  {
    (*(v4 + 200))(v5, __str, *(v1 + 42) & 0xFFF | 0x124u);
    v6 = (*(*(v1 + 160) + 16))(*(*(v1 + 160) + 8), __str, 0, 0);
    result = (*(*(v1 + 160) + 200))(*(*(v1 + 160) + 8), __str, *(v1 + 42) & 0xFFF);
  }

  else
  {
    result = (*(v4 + 16))(v5, __str, 0, 0);
    v6 = result;
  }

  if (v6 != -1)
  {
    *(v1 + 16) = v6;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
LABEL_10:
    result = BOMFSOTypeInfoInitializeDeferred(v1, 0, __str, 2u);
    *(v1 + 136) |= 2u;
    if (*v1 == 1 && (*(v1 + 40) & 2) != 0)
    {
      result = (*(*(v1 + 160) + 32))(*(*(v1 + 160) + 8), *(v1 + 16));
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = 0;
    }
  }

LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMFSObjectSymlinkTarget(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144) && (*(result + 136) & 1) == 0)
    {
      _loadStatInfo(result);
    }

    return BOMFSOTypeInfoSymlinkTarget(v1);
  }

  return result;
}

CFStringRef BOMFSObjectSymlinkTargetString(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    if (result[4].data && (result[4].info & 1) == 0)
    {
      _loadStatInfo(result);
    }

    return BOMFSOTypeInfoSymlinkTargetString(v1);
  }

  return result;
}

_DWORD *BOMFSObjectSetSymlinkTarget(_DWORD *result, char *__s, int a3)
{
  if (result)
  {
    *(result + 20) |= 1u;
    return BOMFSOTypeInfoSetSymlinkTarget(result, __s, a3);
  }

  return result;
}

uint64_t BOMFSObjectDeviceID(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 144) && (*(a1 + 136) & 1) == 0)
  {
    _loadStatInfo(a1);
  }

  return BOMFSOTypeInfoDeviceID(a1);
}

_DWORD *BOMFSObjectSetChecksum(_DWORD *result, int a2)
{
  if (result)
  {
    return BOMFSOTypeInfoSetChecksum(result, a2);
  }

  return result;
}

_DWORD *BOMFSObjectSetDeviceID(_DWORD *result, int a2)
{
  if (result)
  {
    *(result + 20) |= 1u;
    return BOMFSOTypeInfoSetDeviceID(result, a2);
  }

  return result;
}

const char *BOMFSObjectSummary(const char *result, int a2, int a3, int a4)
{
  if (result)
  {
    v7 = result;
    if (*(result + 18))
    {
      _loadCksumInfo(result);
      _loadArchInfo(v7);
    }

    return BOMFSOTypeInfoSummary(v7, a2, a3, a4);
  }

  return result;
}

uint64_t _loadArchInfo(uint64_t result)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(result + 136) & 4) != 0)
  {
    goto LABEL_14;
  }

  v1 = result;
  result = _loadStatInfo(result);
  if (result)
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 144);
  snprintf(__str, 0x401uLL, "%s/%s", v2, *(v1 + 72));
  if (*v1 == 1 && (*(v1 + 40) & 4) != 0)
  {
    v3 = (*(*(v1 + 160) + 184))(*(*(v1 + 160) + 8), __str, 4);
    v4 = *(v1 + 160);
    v5 = *(v4 + 8);
    if (v3 == -1)
    {
      (*(v4 + 200))(v5, __str, *(v1 + 42) & 0xFFF | 0x124u);
      v6 = (*(*(v1 + 160) + 16))(*(*(v1 + 160) + 8), __str, 0, 0);
      result = (*(*(v1 + 160) + 200))(*(*(v1 + 160) + 8), __str, *(v1 + 42) & 0xFFF);
    }

    else
    {
      result = (*(v4 + 16))(v5, __str, 0, 0);
      v6 = result;
    }

    if (v6 == -1)
    {
      goto LABEL_14;
    }

    *(v1 + 16) = v6;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  v8 = *(v1 + 64);
  result = BOMFSOArchInfoInitialize();
  if (*v1 == 1 && (*(v1 + 40) & 4) != 0)
  {
    result = (*(*(v1 + 160) + 32))(*(*(v1 + 160) + 8), *(v1 + 16));
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  *(v1 + 136) |= 4u;
LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMFSObjectSummaryWithFormat(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  if (*(a1 + 144))
  {
    _loadCksumInfo(a1);
    _loadArchInfo(a1);
  }

  return BOMFSOTypeInfoSummaryWithFormat(a1, a2, a3);
}

const char *BOMFSObjectParseSummary(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = BomSys_default();

    return BOMFSOTypeInfoParseSummaryWithSys(v1, v2);
  }

  return result;
}

const char *BOMFSObjectParseSummaryWithSys(const char *result, void *a2)
{
  if (result)
  {
    v2 = result;
    if (!a2)
    {
      a2 = BomSys_default();
    }

    return BOMFSOTypeInfoParseSummaryWithSys(v2, a2);
  }

  return result;
}

uint64_t BOMFSObjectIsBinaryObject(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144) && (*(result + 136) & 4) == 0)
    {
      _loadArchInfo(result);
    }

    if (*v1 == 1)
    {
      v2 = *(v1 + 40);
      if (v2 > 0xFFF)
      {
        return (v2 >> 2) & 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BOMFSObjectContainsArchitecture(uint64_t a1, int a2)
{
  if (*(a1 + 144) && (*(a1 + 136) & 4) == 0)
  {
    _loadArchInfo(a1);
  }

  return BOMFSOArchInfoContainsArchitecture(a1, a2);
}

uint64_t BOMFSObjectArchCount(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144) && (*(result + 136) & 4) == 0)
    {
      _loadArchInfo(result);
    }

    return BOMFSOArchInfoArchCount(v1);
  }

  return result;
}

uint64_t BOMFSObjectGetArch(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 144) && (*(result + 136) & 4) == 0)
    {
      _loadArchInfo(result);
    }

    return BOMFSOArchInfoGetArch(v3, a2);
  }

  return result;
}

uint64_t BOMFSObjectGetArchSubtype(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 144) && (*(result + 136) & 4) == 0)
    {
      _loadArchInfo(result);
    }

    return BOMFSOArchInfoGetArchSubtype(v3, a2);
  }

  return result;
}

uint64_t BOMFSObjectGetArchSize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 144) && (*(result + 136) & 4) == 0)
    {
      _loadArchInfo(result);
    }

    return BOMFSOArchInfoGetArchSize(v3, a2);
  }

  return result;
}

uint64_t BOMFSObjectThinKeepingArchs(uint64_t a1, int *a2, unsigned int a3)
{
  result = 1;
  if (a1 && a2)
  {
    if (a3)
    {
      if (*(a1 + 144) && (*(a1 + 136) & 4) == 0)
      {
        _loadArchInfo(a1);
      }

      return BOMFSOArchInfoThinKeepingArchs(a1, a2, a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BOMFSObjectThinKeepingArchsAndSubArchs(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 1;
  if (a1 && a2)
  {
    if (a3)
    {
      if (*(a1 + 144) && (*(a1 + 136) & 4) == 0)
      {
        _loadArchInfo(a1);
      }

      return BOMFSOArchInfoThinKeepingArchsAndSubArchs(a1, a2, a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void BOMFSObjectSetArchInfo(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    BOMFSOArchInfoSet(a1, a2, a3);
  }
}

unsigned __int8 *BOMFSObjectTypeFromRawData(unsigned __int8 *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

void capture_error(void *a1, uint64_t a2, int a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v23 = 0;
  if (a1 && !*a1)
  {
    v24 = 0;
    v14 = malloc_type_calloc(1uLL, 0x30uLL, 0x105004057D267B0uLL);
    if (v14)
    {
      v15 = v14;
      v24 = &a9;
      if (vasprintf(&v23, a5, &a9) < 0)
      {
        v20 = *MEMORY[0x277D85DF8];
        v21 = __error();
        v22 = strerror(*v21);
        fprintf(v20, "Could not create error message: %s\n", v22);
      }

      else
      {
        v16 = v23;
        if (v23)
        {
          *v15 = a2;
          v15[2] = a3;
          *(v15 + 2) = "Oct 10 2025";
          *(v15 + 3) = a4;
          *(v15 + 4) = v16;
          v15[10] = *__error();
          *a1 = v15;
          return;
        }

        fwrite("Error message is NULL\n", 0x16uLL, 1uLL, *MEMORY[0x277D85DF8]);
      }

      free(v15);
    }

    else
    {
      v17 = *MEMORY[0x277D85DF8];
      v18 = __error();
      v19 = strerror(*v18);
      fprintf(v17, "Could not allocate error state: %s\n", v19);
    }
  }
}

void release_error(void *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      free(v2);
    }

    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;

    free(a1);
  }
}

char *BOMCopierSourceEntryTypeString(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return 0;
  }

  else
  {
    return off_278D13578[a1];
  }
}

_DWORD *BOMCopierSourceEntryNew(int a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x150uLL, 0x1030040944BAE5BuLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = a1;
    if (once != -1)
    {
      BOMCopierSourceEntryNew_cold_1();
    }

    v6 = global_groupID;
    v5[21] = global_userID;
    v5[22] = v6;
    *(v5 + 46) = -32348;
    v13.tv_sec = 0;
    *&v13.tv_usec = 0;
    gettimeofday(&v13, 0);
    tv_sec = v13.tv_sec;
    v8 = 1000 * v13.tv_usec;
    *(v5 + 13) = v13.tv_sec;
    *(v5 + 14) = v8;
    *(v5 + 15) = tv_sec;
    *(v5 + 16) = v8;
    *(v5 + 17) = tv_sec;
    *(v5 + 18) = v8;
    v5[81] = -1;
  }

  else
  {
    v9 = *__error();
    v10 = __error();
    v11 = strerror(*v10);
    BOMCopierErrorCapture(a2, v9, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 514, "BOMCopierSourceEntryNew", "Could not allocate %ld bytes for BOMCopierSourceEntry: %s", 336, v11);
  }

  return v5;
}

uint64_t __BOMCopierSourceEntryNew_block_invoke()
{
  global_userID = geteuid();
  result = getegid();
  global_groupID = result;
  return result;
}

uint64_t BOMCopierSourceEntryNewFromPath(char *a1, char a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 557, "BOMCopierSourceEntryNewFromPath", "Invalid path");
    goto LABEL_5;
  }

  memset(&v26, 0, sizeof(v26));
  if (lstat(a1, &v26))
  {
    v6 = *__error();
    v7 = __error();
    strerror(*v7);
    BOMCopierErrorCapture(a3, v6, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 572, "BOMCopierSourceEntryNewFromPath", "Could not stat %s: %s");
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v11 = mode_to_source_entry_type(v26.st_mode);
  v12 = BOMCopierSourceEntryNew(v11, a3);
  v8 = v12;
  if (!v12)
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 581, "BOMCopierSourceEntryNewFromPath", "Could not create BOMCopierSourceEntry for type %d", v11);
    goto LABEL_6;
  }

  *v12 = 1;
  v13 = resolve_path(a1, v11 == 9, a3);
  *(v8 + 16) = v13;
  if (!v13)
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 593, "BOMCopierSourceEntryNewFromPath", "Could not resolve %s");
    goto LABEL_29;
  }

  v14 = v13;
  v15 = strdup(a1);
  *(v8 + 24) = v15;
  if (!v15)
  {
    v20 = *__error();
    v21 = __error();
    strerror(*v21);
    BOMCopierErrorCapture(a3, v20, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 602, "BOMCopierSourceEntryNewFromPath", "Could not duplicate path %s: %s");
    goto LABEL_29;
  }

  if (v11 == 9)
  {
    bzero(__s1, 0x400uLL);
    v16 = readlink(v14, __s1, 0x400uLL);
    if (v16 == -1)
    {
      if (*__error() != 13)
      {
        v23 = *__error();
        v24 = *(v8 + 16);
        v25 = __error();
        strerror(*v25);
        BOMCopierErrorCapture(a3, v23, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 620, "BOMCopierSourceEntryNewFromPath", "Could not readlink %s: %s\n");
        goto LABEL_29;
      }
    }

    else if (v16 >= 1)
    {
      __s1[v16] = 0;
      v17 = strdup(__s1);
      *(v8 + 48) = v17;
      if (!v17)
      {
        v18 = *__error();
        v19 = __error();
        strerror(*v19);
        BOMCopierErrorCapture(a3, v18, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 633, "BOMCopierSourceEntryNewFromPath", "Could not duplicate %s: %s\n");
LABEL_29:
        BOMCopierSourceEntryFree(v8);
        goto LABEL_5;
      }
    }
  }

  *(v8 + 84) = *&v26.st_uid;
  st_mtimespec = v26.st_mtimespec;
  *(v8 + 104) = v26.st_atimespec;
  *(v8 + 64) = v26.st_dev;
  *(v8 + 72) = v26.st_ino;
  *(v8 + 80) = v26.st_nlink;
  *(v8 + 92) = v26.st_mode;
  *(v8 + 96) = v26.st_size;
  *(v8 + 120) = st_mtimespec;
  *(v8 + 136) = v26.st_ctimespec;
  *(v8 + 152) = v26.st_flags;
  if ((a2 & 2) != 0 && v11 == 8 && parse_regular_file(v8, a3))
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 672, "BOMCopierSourceEntryNewFromPath", "Could not parse the regular file");
    goto LABEL_29;
  }

  if (capture_extended_attributes(v8, a2, a3))
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 686, "BOMCopierSourceEntryNewFromPath", "Could not capture extended attributes");
    goto LABEL_29;
  }

  if ((a2 & 0x20) != 0 && capture_acl(v8, a3))
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 700, "BOMCopierSourceEntryNewFromPath", "Could not capture access control list");
    goto LABEL_29;
  }

LABEL_6:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mode_to_source_entry_type(int a1)
{
  if ((a1 - 4096) >> 13 > 6)
  {
    return 0;
  }

  else
  {
    return dword_241C78F48[(a1 - 4096) >> 12];
  }
}

char *resolve_path(char *a1, char a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (dirname_r(a1, v24) != v24)
    {
      v5 = *__error();
      v6 = __error();
      strerror(*v6);
      BOMCopierErrorCapture(a3, v5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5386, "resolve_path", "Could not dirname %s: %s\n");
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    v10 = realpath_DARWIN_EXTSN(v24, 0);
    if (!v10)
    {
      v15 = *__error();
      v16 = *__error();
      v17 = __error();
      strerror(*v17);
      BOMCopierErrorCapture(a3, v15, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5393, "resolve_path", "Could not realpath %s %d: %s\n", v24);
      goto LABEL_13;
    }

    v11 = v10;
    if (basename_r(a1, v23) != v23)
    {
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      BOMCopierErrorCapture(a3, v12, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5400, "resolve_path", "Could not basename %s: %s\n", a1, v14);
      free(v11);
      goto LABEL_13;
    }

    v22 = 0;
    v18 = asprintf(&v22, "%s/%s", v11, v23);
    free(v11);
    if (v18 < 0 || (result = v22) == 0)
    {
      v19 = *__error();
      v20 = __error();
      strerror(*v20);
      BOMCopierErrorCapture(a3, v19, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5413, "resolve_path", "Could not construct resolved path from %s + %s: %s\n", v24);
      goto LABEL_13;
    }
  }

  else
  {
    result = realpath_DARWIN_EXTSN(a1, 0);
    if (!result)
    {
      v8 = *__error();
      v9 = __error();
      strerror(*v9);
      BOMCopierErrorCapture(a3, v8, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5372, "resolve_path", "Could not realpath %s: %s\n");
      goto LABEL_13;
    }
  }

LABEL_14:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMCopierSourceEntryFree(unsigned int *a1)
{
  if (!a1)
  {
    BOMCopierErrorCapture(0, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1739, "BOMCopierSourceEntryFree", "Invalid source_entry");
    return 1;
  }

  v2 = a1[81];
  if (v2 != -1)
  {
    close(v2);
  }

  if (*(a1 + 320) == 1)
  {
    if (!*(a1 + 2))
    {
      v6 = 1;
      fwrite("Could not get actual path", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
      return v6;
    }

    v3 = a1[1];
    if (v3 - 8 >= 3)
    {
      if (v3 == 6 && rmdir(*(a1 + 2)))
      {
        v7 = *MEMORY[0x277D85DF8];
        v8 = __error();
        strerror(*v8);
        fprintf(v7, "Could not rmdir %s: %s");
        return 1;
      }
    }

    else if (unlink(*(a1 + 2)))
    {
      v4 = *MEMORY[0x277D85DF8];
      v5 = __error();
      strerror(*v5);
      fprintf(v4, "Could not unlink %s: %s");
      return 1;
    }
  }

  v9 = *(a1 + 5);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a1 + 4);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 3);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 2);
  if (v12)
  {
    free(v12);
  }

  v13 = *(a1 + 6);
  if (v13)
  {
    free(v13);
  }

  v14 = *(a1 + 7);
  if (v14)
  {
    free(v14);
  }

  v15 = *(a1 + 25);
  if (v15)
  {
    free(v15);
  }

  v16 = *(a1 + 21);
  if (v16)
  {
    free(v16);
  }

  v17 = *(a1 + 30);
  if (v17)
  {
    free(v17);
  }

  if (a1[52])
  {
    v18 = 0;
    v19 = 0;
    do
    {
      free(*(*(a1 + 27) + v18));
      v20 = *(*(a1 + 27) + v18 + 16);
      if (v20)
      {
        free(v20);
      }

      ++v19;
      v18 += 24;
    }

    while (v19 < a1[52]);
  }

  v21 = *(a1 + 27);
  if (v21)
  {
    free(v21);
  }

  v22 = *(a1 + 28);
  if (v22)
  {
    free(v22);
  }

  v23 = *(a1 + 39);
  if (v23)
  {
    free(v23);
  }

  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  free(a1);
  return 0;
}

uint64_t parse_regular_file(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (*(a1 + 156))
    {
      v4 = 1;
      v5 = 4096;
      goto LABEL_10;
    }
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  Size = BOMCopierSourceEntryGetSize(a1);
  if (Size >= 0x1000)
  {
    v5 = 4096;
  }

  else
  {
    v5 = Size;
  }

  if (!Size)
  {
    return 0;
  }

  v4 = 0;
LABEL_10:
  v7 = malloc_type_malloc(0x1000uLL, 0xA8685CB7uLL);
  if (!v7)
  {
    v12 = *__error();
    v13 = __error();
    v14 = strerror(*v13);
    BOMCopierErrorCapture(a2, v12, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4014, "parse_regular_file", "Could not allocate %lld bytes for parse buffer: %s", 4096, v14);
    return 1;
  }

  v8 = v7;
  v9 = BOMCopierSourceEntryRead(a1, v7, v5, a2);
  v10 = v9;
  if (v4)
  {
    if (!v9)
    {
      free(v8);
      return 0;
    }

    if (v9 == -1)
    {
      BOMCopierSourceEntryGetPath(a1);
      v11 = 1;
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4029, "parse_regular_file", "Could not read %lu bytes from %s");
LABEL_24:
      free(v8);
      return v11;
    }
  }

  else if (v9 != v5)
  {
    BOMCopierSourceEntryGetPath(a1);
    v11 = 1;
    BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4045, "parse_regular_file", "Could not read %lu bytes from %s");
    goto LABEL_24;
  }

  *(a1 + 160) = 4096;
  *(a1 + 168) = v8;
  *(a1 + 176) = v9;
  if (v9 < 0x1C)
  {
    return 0;
  }

  v11 = 0;
  v15 = *v8;
  if (*v8 <= -822415875)
  {
    v16 = 3;
    if (v15 > -889275715)
    {
      if (v15 != -889275714)
      {
        v17 = -889275713;
        goto LABEL_33;
      }
    }

    else if (v15 != -1095041334)
    {
      v17 = -1078264118;
LABEL_33:
      if (v15 != v17)
      {
        return v11;
      }

      v16 = 4;
    }

    v21 = *v8;
    count = *v8;
    if ((v15 & 0xFEFFFFFF) == 0xBEBAFECA)
    {
      v22 = BOMHostByteOrder();
      BOMSwapFatHeader(&count, v22);
      LODWORD(v23) = HIDWORD(count);
    }

    else
    {
      v23 = HIDWORD(v21);
    }

    v27 = v23;
    v28 = malloc_type_calloc(v23, 0x20uLL, 0x1000040E0EAB150uLL);
    if (!v28)
    {
      v31 = *__error();
      v32 = __error();
      v33 = strerror(*v32);
      BOMCopierErrorCapture(a2, v31, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4245, "parse_regular_file", "Could not allocate BOMCopierArchRecord: %s", v33);
      v11 = 1;
      goto LABEL_24;
    }

    v25 = v28;
    if (v15 == -1078264118 || v15 == -889275713)
    {
      v30 = 32;
    }

    else
    {
      v30 = 20;
    }

    if (v10 < v30 * (v23 + 1) + 8)
    {
      v11 = 0;
      v8 = v28;
      goto LABEL_24;
    }

    v46 = v16;
    if (v23)
    {
      v34 = v8 + 8;
      v35 = v28;
      do
      {
        if (v15 == -889275714 || v15 == -1095041334)
        {
          memset(v48, 0, 20);
          __memcpy_chk();
          if (v15 == -1095041334)
          {
            v37 = BOMHostByteOrder();
            BOMSwapFatArch(v48, 1u, v37);
          }

          *v35 = v48[0].i64[0];
          *&v38 = v48[0].u32[2];
          *(&v38 + 1) = v48[0].u32[3];
          *(v35 + 1) = v38;
          v39 = v48[1].u32[0];
        }

        else
        {
          memset(v48, 0, sizeof(v48));
          __memcpy_chk();
          if (v15 == -1078264118)
          {
            v40 = BOMHostByteOrder();
            BOMSwapFatArch64(v48, 1u, v40);
          }

          *v35 = v48[0].i64[0];
          *(v35 + 1) = *(v48 + 8);
          v39 = v48[1].u32[2];
        }

        v35[3] = v39;
        v34 = (v34 + v30);
        v35 += 4;
        --v27;
      }

      while (v27);
    }

    v19 = v46;
LABEL_77:
    v11 = 0;
    *(a1 + 192) = v19;
    *(a1 + 196) = v23;
    *(a1 + 200) = v25;
    return v11;
  }

  v19 = 1;
  if (v15 > -17958195)
  {
    if (v15 != -17958194)
    {
      v20 = -17958193;
LABEL_39:
      if (v15 != v20)
      {
        return v11;
      }

      if (v9 >= 0x20)
      {
        v19 = 2;
        goto LABEL_42;
      }

      return 0;
    }
  }

  else if (v15 != -822415874)
  {
    v20 = -805638658;
    goto LABEL_39;
  }

LABEL_42:
  v24 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  if (v24)
  {
    v25 = v24;
    if (v15 == -17958194 || v15 == -822415874)
    {
      v48[0] = *v8;
      *(v48 + 12) = *(v8 + 12);
      if (v15 == -822415874)
      {
        v26 = BOMHostByteOrder();
        BOMSwapMachHeader(v48, v26);
      }
    }

    else
    {
      v44 = *(v8 + 1);
      v48[0] = *v8;
      v48[1] = v44;
      if (v15 == -805638658)
      {
        v45 = BOMHostByteOrder();
        BOMSwapMachHeader64(v48, v45);
      }
    }

    *v25 = *(v48[0].i64 + 4);
    v25[1] = 0;
    v25[2] = *(a1 + 96);
    v25[3] = 0;
    LODWORD(v23) = 1;
    goto LABEL_77;
  }

  v41 = *__error();
  v42 = __error();
  v43 = strerror(*v42);
  BOMCopierErrorCapture(a2, v41, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4159, "parse_regular_file", "Could not allocate BOMCopierArchRecord: %s", v43);
  free(v8);
  return 1;
}

ssize_t capture_extended_attributes(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 0x1C) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v6 = 0;
  }

  if ((a2 & 0x10) != 0)
  {
    v8 = 33;
  }

  else
  {
    v8 = 1;
  }

  result = listxattr(v6, 0, 0, v8);
  if (result)
  {
    v9 = result;
    if (result == -1)
    {
      if (*__error() == 1 || *__error() == 45 || *__error() == 13)
      {
        return 0;
      }

      v10 = *__error();
      v11 = __error();
      strerror(*v11);
      BOMCopierErrorCapture(a3, v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4419, "capture_extended_attributes", "Could not listxattr %s: %s");
      return 1;
    }

    v12 = malloc_type_malloc(result, 0xDBEC89DBuLL);
    if (v12)
    {
      v13 = v12;
      if (listxattr(v6, v12, v9, v8) == v9)
      {
        LODWORD(v14) = 0;
        v15 = &v13[v9];
        v16 = v13;
        do
        {
          v14 = (v14 + 1);
          v16 += strlen(v16) + 1;
        }

        while (v16 < v15);
        __base = malloc_type_calloc(v14, 0x18uLL, 0x10100406AB5462FuLL);
        if (__base)
        {
          v17 = 0;
          v18 = v13;
          v19 = 0;
          v36 = v18;
          while (1)
          {
            if ((a2 & 4) != 0)
            {
              if ((a2 & 8) != 0)
              {
                goto LABEL_30;
              }

              if (string_compare(v18, "com.apple.FinderInfo"))
              {
                v20 = string_compare(v18, "com.apple.ResourceFork") != 0;
                if ((a2 & 0x10) == 0)
                {
                  goto LABEL_35;
                }

                goto LABEL_31;
              }
            }

            else if ((a2 & 8) != 0)
            {
              if (string_compare(v18, "com.apple.FinderInfo"))
              {
                v20 = string_compare(v18, "com.apple.ResourceFork") == 0;
                if ((a2 & 0x10) == 0)
                {
                  goto LABEL_35;
                }

                goto LABEL_31;
              }

LABEL_30:
              v20 = 1;
              if ((a2 & 0x10) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_31;
            }

            v20 = 0;
            if ((a2 & 0x10) == 0)
            {
LABEL_35:
              if (v20)
              {
                goto LABEL_36;
              }

              goto LABEL_38;
            }

LABEL_31:
            if (!string_compare(v18, "com.apple.decmpfs") || string_compare(v18, "com.apple.ResourceFork") == 0 || v20)
            {
LABEL_36:
              v21 = strdup(v18);
              __base[3 * v19] = v21;
              if (!v21)
              {
                v32 = *__error();
                v33 = __error();
                strerror(*v33);
                BOMCopierErrorCapture(a3, v32, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4559, "capture_extended_attributes", "Could not duplicate %s: %s");
LABEL_53:
                free(__base);
                v31 = v36;
                goto LABEL_54;
              }

              ++v17;
              ++v19;
            }

LABEL_38:
            v18 += strlen(v18) + 1;
            if (v18 >= v15)
            {
              if (v17)
              {
                v22 = v17;
                v23 = __base + 1;
                v24 = v17;
                while (1)
                {
                  v25 = getxattr(v6, *(v23 - 1), 0, 0, 0, v8);
                  if (v25 == -1)
                  {
                    break;
                  }

                  *v23 = v25;
                  v23 += 3;
                  if (!--v24)
                  {
                    goto LABEL_50;
                  }
                }

                v34 = *__error();
                v35 = __error();
                strerror(*v35);
                BOMCopierErrorCapture(a3, v34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4592, "capture_extended_attributes", "Could not getxattr size for %s: %s");
                goto LABEL_53;
              }

              v22 = 0;
LABEL_50:
              qsort(__base, v22, 0x18uLL, xattr_compare);
              *(a1 + 208) = v17;
              *(a1 + 216) = __base;
              free(v36);
              return 0;
            }
          }
        }

        v29 = *__error();
        v30 = __error();
        strerror(*v30);
        BOMCopierErrorCapture(a3, v29, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4478, "capture_extended_attributes", "Could not allocate extended attribute list: %s");
      }

      else
      {
        v28 = *__error();
        BOMCopierErrorCapture(a3, v28, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4444, "capture_extended_attributes", "%ld does not match %ld\n");
      }

      v31 = v13;
LABEL_54:
      free(v31);
    }

    else
    {
      v26 = *__error();
      v27 = __error();
      strerror(*v27);
      BOMCopierErrorCapture(a3, v26, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4437, "capture_extended_attributes", "Could not allocate %ld bytes for name buffer: %s\n");
    }

    return 1;
  }

  return result;
}

uint64_t capture_acl(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v4 = 0;
  }

  if (*(a1 + 4) == 9)
  {
    link_np = acl_get_link_np(v4, ACL_TYPE_EXTENDED);
  }

  else
  {
    link_np = acl_get_file(v4, ACL_TYPE_EXTENDED);
  }

  v6 = link_np;
  if (link_np)
  {
    len_p = 0;
    v7 = acl_to_text(link_np, &len_p);
    if (v7)
    {
      v8 = v7;
      acl_free(v6);
      result = 0;
      v10 = len_p;
      *(a1 + 224) = v8;
      *(a1 + 232) = v10;
      return result;
    }

    v11 = *__error();
    v12 = __error();
    strerror(*v12);
    BOMCopierErrorCapture(a2, v11, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4692, "capture_acl", "Could not convert ACL to text for %s: %s");
  }

  else
  {
    if (*__error() == 2)
    {
      return 0;
    }

    v13 = *__error();
    v14 = __error();
    strerror(*v14);
    BOMCopierErrorCapture(a2, v13, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4676, "capture_acl", "Could not retrieve ACL for %s: %s");
  }

  return 1;
}

_DWORD *BOMCopierSourceEntryNewFromResourceFork(const char *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = realpath_DARWIN_EXTSN(a1, 0);
    if (v4)
    {
      v5 = v4;
      v31 = 0;
      if (asprintf(&v31, "%s%s", v4, "/..namedfork/rsrc") < 0)
      {
        v14 = *__error();
        v15 = __error();
        v16 = strerror(*v15);
        BOMCopierErrorCapture(a2, v14, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 753, "BOMCopierSourceEntryNewFromResourceFork", "Could not constructed resolved rsrc path: %s", v16);
        free(v5);
      }

      else
      {
        free(v5);
        memset(&v30, 0, sizeof(v30));
        if (lstat(v31, &v30))
        {
          v6 = *__error();
          v7 = __error();
          strerror(*v7);
          BOMCopierErrorCapture(a2, v6, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 764, "BOMCopierSourceEntryNewFromResourceFork", "Could not stat %s: %s");
        }

        else
        {
          v17 = BOMCopierSourceEntryNew(8, a2);
          v11 = v17;
          if (!v17)
          {
            BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 771, "BOMCopierSourceEntryNewFromResourceFork", "Could not create BOMCopierSourceEntry for regular file");
            goto LABEL_9;
          }

          *v17 = 2;
          *(v17 + 2) = v31;
          if (asprintf(v17 + 3, "%s%s", a1, "/..namedfork/rsrc") == -1 || !*(v11 + 3))
          {
            v20 = *__error();
            v21 = __error();
            strerror(*v21);
            BOMCopierErrorCapture(a2, v20, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 785, "BOMCopierSourceEntryNewFromResourceFork", "Could not constructed entry rsrc path: %s");
          }

          else if (__s1 == dirname_r(a1, __s1))
          {
            v22 = strdup(__s1);
            *(v11 + 4) = v22;
            if (v22)
            {
              if (v32 == basename_r(a1, v32))
              {
                if (asprintf(v11 + 5, "%s%s", v32, "/..namedfork/rsrc") != -1 && *(v11 + 5))
                {
                  *(v11 + 21) = *&v30.st_uid;
                  st_mtimespec = v30.st_mtimespec;
                  *(v11 + 26) = v30.st_atimespec;
                  v11[16] = v30.st_dev;
                  *(v11 + 9) = v30.st_ino;
                  *(v11 + 40) = v30.st_nlink;
                  *(v11 + 46) = v30.st_mode;
                  *(v11 + 12) = v30.st_size;
                  *(v11 + 30) = st_mtimespec;
                  *(v11 + 34) = v30.st_ctimespec;
                  v11[38] = v30.st_flags;
                  goto LABEL_9;
                }

                v28 = *__error();
                v29 = __error();
                strerror(*v29);
                BOMCopierErrorCapture(a2, v28, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 813, "BOMCopierSourceEntryNewFromResourceFork", "Could not constructed entry rsrc name: %s");
              }

              else
              {
                v23 = *__error();
                v24 = __error();
                strerror(*v24);
                BOMCopierErrorCapture(a2, v23, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 806, "BOMCopierSourceEntryNewFromResourceFork", "Could not basename_r %s: %s");
              }
            }

            else
            {
              v25 = *__error();
              v26 = __error();
              strerror(*v26);
              BOMCopierErrorCapture(a2, v25, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 799, "BOMCopierSourceEntryNewFromResourceFork", "Could not duplicate %s: %s");
            }
          }

          else
          {
            v18 = *__error();
            v19 = __error();
            strerror(*v19);
            BOMCopierErrorCapture(a2, v18, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 792, "BOMCopierSourceEntryNewFromResourceFork", "Could not dirname_r %s: %s");
          }
        }
      }
    }

    else
    {
      v8 = *__error();
      v9 = *__error();
      v10 = __error();
      strerror(*v10);
      BOMCopierErrorCapture(a2, v8, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 745, "BOMCopierSourceEntryNewFromResourceFork", "Could not realpath %s %d: %s\n", a1);
    }
  }

  else
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 732, "BOMCopierSourceEntryNewFromResourceFork", "Invalid path");
  }

  v11 = 0;
LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t BOMCopierSourceEntryNewFromFTSENT(uint64_t a1, char a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 850, "BOMCopierSourceEntryNewFromFTSENT", "Invalid filesystem_entry");
LABEL_49:
    v9 = 0;
    goto LABEL_50;
  }

  v6 = *(a1 + 88);
  if (v6 <= 4)
  {
    if (*(a1 + 88) > 2u)
    {
      if (v6 == 3)
      {
        v7 = mode_to_source_entry_type(*(*(a1 + 96) + 4));
        goto LABEL_25;
      }

      if (v6 == 4)
      {
        v7 = 2;
        goto LABEL_25;
      }
    }

    else
    {
      if (v6 == 1)
      {
        v7 = 6;
        goto LABEL_25;
      }

      if (v6 == 2)
      {
        v7 = 1;
        goto LABEL_25;
      }
    }
  }

  else if (*(a1 + 88) <= 7u)
  {
    if (v6 == 5)
    {
      v7 = 3;
      goto LABEL_25;
    }

    if (v6 == 6)
    {
      v7 = 13;
      goto LABEL_25;
    }
  }

  else
  {
    switch(v6)
    {
      case 8u:
        v7 = 8;
        goto LABEL_25;
      case 0xCu:
        v7 = 9;
        goto LABEL_25;
      case 0xEu:
        v7 = 11;
        goto LABEL_25;
    }
  }

  v7 = 0;
LABEL_25:
  v8 = BOMCopierSourceEntryNew(v7, a3);
  v9 = v8;
  if (v8)
  {
    *v8 = 3;
    v10 = copy_string(*(a1 + 48), *(a1 + 64));
    *(v9 + 16) = v10;
    if (!v10)
    {
      v23 = *(a1 + 48);
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 877, "BOMCopierSourceEntryNewFromFTSENT", "Could not duplicate %s");
      goto LABEL_48;
    }

    v11 = copy_string(*(a1 + 48), *(a1 + 64));
    *(v9 + 24) = v11;
    if (!v11)
    {
      v15 = *(a1 + 48);
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 886, "BOMCopierSourceEntryNewFromFTSENT", "Could not duplicate %s");
      goto LABEL_48;
    }

    if (v7 == 9)
    {
      bzero(v24, 0x400uLL);
      v12 = readlink(*(a1 + 40), v24, 0x400uLL);
      if (v12 == -1)
      {
        v16 = *__error();
        v17 = *(v9 + 16);
        v18 = __error();
        strerror(*v18);
        BOMCopierErrorCapture(a3, v16, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 899, "BOMCopierSourceEntryNewFromFTSENT", "Could not readlink %s: %s\n");
        goto LABEL_48;
      }

      v24[v12] = 0;
      v13 = copy_string(v24, v12);
      *(v9 + 48) = v13;
      if (!v13)
      {
        v20 = __error();
        strerror(*v20);
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 909, "BOMCopierSourceEntryNewFromFTSENT", "Could not duplicate %s: %s\n");
        goto LABEL_48;
      }
    }

    v14 = *(a1 + 96);
    *(v9 + 64) = *v14;
    *(v9 + 72) = *(v14 + 8);
    *(v9 + 80) = *(v14 + 6);
    *(v9 + 92) = *(v14 + 4);
    *(v9 + 84) = *(v14 + 16);
    *(v9 + 96) = *(v14 + 96);
    *(v9 + 104) = *(v14 + 32);
    *(v9 + 120) = *(v14 + 48);
    *(v9 + 136) = *(v14 + 64);
    *(v9 + 152) = *(v14 + 116);
    if ((a2 & 1) != 0 && v7 == 8)
    {
      *(v9 + 321) = 1;
    }

    if ((a2 & 2) != 0 && v7 == 8 && parse_regular_file(v9, a3))
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 961, "BOMCopierSourceEntryNewFromFTSENT", "Could not parse the regular file");
LABEL_48:
      BOMCopierSourceEntryFree(v9);
      goto LABEL_49;
    }

    if (capture_extended_attributes(v9, a2, a3))
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 975, "BOMCopierSourceEntryNewFromFTSENT", "Could not capture extended attributes");
      goto LABEL_48;
    }

    if ((a2 & 0x20) != 0)
    {
      v19 = capture_acl(v9, a3);
      if (v19)
      {
        BOMCopierErrorCapture(a3, v19, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 989, "BOMCopierSourceEntryNewFromFTSENT", "Could not capture access control list");
        goto LABEL_48;
      }
    }
  }

  else
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 865, "BOMCopierSourceEntryNewFromFTSENT", "Could not create BOMCopierSourceEntry from %d", v7);
  }

LABEL_50:
  v21 = *MEMORY[0x277D85DE8];
  return v9;
}