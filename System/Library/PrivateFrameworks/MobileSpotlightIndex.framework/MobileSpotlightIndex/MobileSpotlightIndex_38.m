uint64_t bt_syncTrie(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 4576))
  {
    v3 = *(a1 + 8);
    v4 = 1028 * (*(a1 + 144) + 1);
    if (_gSystemStatusBool == 1)
    {
      pthread_mutex_lock(&_gSystemStatusLock);
      if (_gSystemStatusBool == 1)
      {
        do
        {
          pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
        }

        while ((_gSystemStatusBool & 1) != 0);
      }

      pthread_mutex_unlock(&_gSystemStatusLock);
    }

    msync(v3, v4, 16);
    v5 = *(a1 + 4576);
    if (_gSystemStatusBool == 1)
    {
      pthread_mutex_lock(&_gSystemStatusLock);
      if (_gSystemStatusBool == 1)
      {
        do
        {
          pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
        }

        while ((_gSystemStatusBool & 1) != 0);
      }

      pthread_mutex_unlock(&_gSystemStatusLock);
    }

    *v23 = 0;
    v6 = _fd_acquire_fd(v5, v23);
    if (v6 != -1)
    {
      v7 = v6;
      prot_fsync(v6, 0);
      _fd_release_fd(v5, v7, 0, *v23);
    }
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 40);
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  msync(v8, v9, 16);
  v10 = *(a1 + 112);
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  *v23 = 0;
  v11 = _fd_acquire_fd(v10, v23);
  if (v11 != -1)
  {
    v12 = v11;
    prot_fsync(v11, 0);
    _fd_release_fd(v10, v12, 0, *v23);
  }

  result = storageSyncPages(a1 + 160, a1 + 4536, 0x20000uLL);
  if (!result)
  {
    v14 = result;
    v15 = *(a1 + 376);
    if (v15)
    {
      if (_gSystemStatusBool == 1)
      {
        pthread_mutex_lock(&_gSystemStatusLock);
        if (_gSystemStatusBool == 1)
        {
          do
          {
            pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
          }

          while ((_gSystemStatusBool & 1) != 0);
        }

        pthread_mutex_unlock(&_gSystemStatusLock);
      }

      *v23 = 0;
      v16 = _fd_acquire_fd(v15, v23);
      if (v16 != -1)
      {
        v17 = v16;
        prot_fsync(v16, 0);
        _fd_release_fd(v15, v17, 0, *v23);
      }
    }

    v18 = *__error();
    v19 = _SILogForLogForCategory(10);
    v20 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = CFAbsoluteTimeGetCurrent() - Current;
      *v23 = 134217984;
      *&v23[4] = v21;
      _os_log_impl(&dword_1C278D000, v19, v20, "syncTrie took %f seconds", v23, 0xCu);
    }

    *__error() = v18;
    result = v14;
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bt_freeTrie(uint64_t a1)
{
  fd_release(*(a1 + 4576));
  *(a1 + 4576) = 0;
  v2 = *(a1 + 8);
  if (v2 + 1 >= 2)
  {
    munmap(v2, 1028 * *(a1 + 148));
    *(a1 + 8) = 0;
  }

  closeMF(a1 + 16);
  storageClose(a1 + 160);
  v3 = *(a1 + 4552);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 4552) = 0;
  }

  *(a1 + 4536) = 0u;

  return db_rwlock_destroy((a1 + 4600));
}

uint64_t insertFromBurst(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v143 = a7;
  if (!a3)
  {
    return a7;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  if (!HIDWORD(a7))
  {
    if (a7 << 6 < a1[49])
    {
      if (appendStringFlat(a1, a2, a7, a4, a3, a5, a6, &v143))
      {
        if (!*(a2 + 4))
        {
          v143 = burst2(a1, a2, v143);
          if (!*(a2 + 4))
          {
            v43 = *__error();
            v44 = _SILogForLogForCategory(10);
            v45 = 2 * (dword_1EBF46AF4 < 4);
            if (os_log_type_enabled(v44, v45))
            {
              *buf = 0;
              _os_log_impl(&dword_1C278D000, v44, v45, "Re-burst!", buf, 2u);
            }

            *__error() = v43;
            return insertFromBurst(a1, a2, a3, a4, a5, a6, v143);
          }
        }
      }

      return v143;
    }

    v121 = __si_assert_copy_extra_2708(0);
    v122 = v121;
    v123 = "";
    if (v121)
    {
      v123 = v121;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 939, "flatStoreGetOffset(ptr) < storageGetCount(&t->flatStore)", v123);
    goto LABEL_164;
  }

  if (HIDWORD(a7) != 1)
  {
    if (HIDWORD(a7) != 3)
    {
      v134 = __si_assert_copy_extra_2708(0);
      v135 = v134;
      if (v134)
      {
        v136 = v134;
      }

      else
      {
        v136 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 951, v136);
      free(v135);
      goto LABEL_165;
    }

    if (a4)
    {
      v144 = 0;
      v13 = a7;
      v14 = *(a1[1] + 1028 * a7 + 4 * *a3 + 4);
      LODWORD(v15) = v14 >> 1;
      v16 = v14 >> 3;
      v17 = (v14 & 7) << 32;
      if ((v14 & 3) == 1)
      {
        v17 = 0x100000000;
        v16 = v14 >> 2;
      }

      v18 = (v14 & 1) == 0;
      if (v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v15 = v15;
      }

      else
      {
        v15 = v16;
      }

      if (v15)
      {
        v20 = insertFromBurst(a1, a2, a3 + 1, (a4 - 1), a5, a6, v19 | v15);
        v144 = v20;
        v21 = a1[1] + 1028 * v13 + 4 * *a3;
        v24 = *(v21 + 4);
        v22 = (v21 + 4);
        v23 = v24;
        v25 = HIDWORD(v20);
        v26 = v24 >> 1;
        v27 = v24 >> 3;
        v28 = v24 & 7;
        v29 = v24 >> 2;
        if ((v24 & 3) == 1)
        {
          v28 = 1;
          v27 = v29;
        }

        v30 = (v23 & 1) == 0;
        if (v23)
        {
          v31 = v28;
        }

        else
        {
          v31 = 0;
        }

        if (!v30)
        {
          v26 = v27;
        }

        if (v26 == v20 && v31 == HIDWORD(v20))
        {
          return v143;
        }

        v33 = (4 * v20) | 1;
        if (v25 != 1)
        {
          v33 = HIDWORD(v20) | (8 * v20);
        }

        if (v25)
        {
          v34 = v33;
        }

        else
        {
          v34 = 2 * v20;
        }

        if ((v34 & 3) == 1)
        {
          v35 = 2;
        }

        else
        {
          v35 = 3;
        }

        if ((v34 & 1) == 0)
        {
          v35 = 1;
        }

        if (v34 >> v35 == v20)
        {
          *v22 = v34;
          return v143;
        }

        v132 = __si_assert_copy_extra_2708(0);
        v122 = v132;
        v133 = "";
        if (v132)
        {
          v133 = v132;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v133);
LABEL_164:
        free(v122);
        if (!__valid_fs(-1))
        {
          v124 = 3072;
LABEL_167:
          *v124 = -559038737;
          abort();
        }

LABEL_165:
        v124 = 2989;
        goto LABEL_167;
      }

      if (*a2)
      {
        v61 = flatStoreNewBlockForCompact((a1 + 20), *(a2 + 2148));
        *(a2 + 2148) = v61;
        v144 = v61;
        if (v61)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v61 = trieNewFlatStoreBlock(a1, a4 - 1);
        v144 = v61;
        if (v61)
        {
LABEL_68:
          appendStringFlat(a1, a2, v61, a4 - 1, a3 + 1, a5, a6, &v144);
          if (!*(a2 + 4))
          {
            goto LABEL_126;
          }

          goto LABEL_146;
        }
      }

      v101 = __error();
      v102 = *v101;
      *(a2 + 4) = *v101;
      if (!v102)
      {
LABEL_126:
        v103 = a1[1] + 1028 * v13 + 4 * *a3;
        *(v103 + 4) = ptrD(v144);
        return v143;
      }

LABEL_146:
      LODWORD(v144) = 0;
      return v144;
    }

    v51 = a7;
    v52 = (a1[1] + 1028 * a7);
    if (!*v52)
    {
      if (*a2 != 1)
      {
        *v52 = a5;
        return a7;
      }

      v54 = flatStoreNewBlockForCompact((a1 + 20), *(a2 + 2148));
      *(a2 + 2148) = v54;
      if (v54)
      {
        *buf = 0u;
        v141 = a5;
        v142 = a6;
        v55 = storageResolvePtr((a1 + 20), v54 << 6, 8, 1);
        v56 = storageResolvePtr((a1 + 20), v54 << 6, 64 << *(v55 + 2), 1);
        *(a2 + 1084) = 0u;
        *v56 = FlatStorePageEntryWrite2(v56, buf, (a2 + 1084));
        *(a1[1] + 1028 * v51) = 0;
        if ((v54 & 0x80000000) == 0)
        {
          *(a1[1] + 1028 * v51) = 2 * v54;
          *(a2 + 36) = 0;
          *(a2 + 24) = 0;
          return a7;
        }

        goto LABEL_174;
      }

      goto LABEL_108;
    }

    v128 = __si_assert_copy_extra_2708(0);
    v126 = v128;
    v129 = "";
    if (v128)
    {
      v129 = v128;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 725, "getNum(t->baseFat[s].termInfo.termId.ptr)==0", v129);
    goto LABEL_177;
  }

  v36 = a7;
  v37 = mgetBase(a1, a7);
  if (!a4)
  {
    if (!*v37)
    {
      if (*a2 != 1)
      {
        *v37 = a5;
        return a7;
      }

      v46 = v37;
      v47 = flatStoreNewBlockForCompact((a1 + 20), *(a2 + 2148));
      *(a2 + 2148) = v47;
      if (v47)
      {
        *buf = 0u;
        v141 = a5;
        v142 = a6;
        v48 = storageResolvePtr((a1 + 20), v47 << 6, 8, 1);
        v49 = storageResolvePtr((a1 + 20), v47 << 6, 64 << *(v48 + 2), 1);
        *(a2 + 1084) = 0u;
        *v49 = FlatStorePageEntryWrite2(v49, buf, (a2 + 1084));
        *v46 = 0;
        if ((v47 & 0x80000000) == 0)
        {
          *v46 = 2 * v47;
          *(a2 + 36) = 0;
          *(a2 + 24) = 0;
          return a7;
        }

LABEL_174:
        v130 = __si_assert_copy_extra_2708(0);
        v126 = v130;
        v131 = "";
        if (v130)
        {
          v131 = v130;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v131);
        goto LABEL_177;
      }

LABEL_108:
      *(a2 + 4) = *__error();
      return 0;
    }

    v125 = __si_assert_copy_extra_2708(0);
    v126 = v125;
    v127 = "";
    if (v125)
    {
      v127 = v125;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 785, "getNum(b->termInfo.termId.ptr)==0", v127);
LABEL_177:
    free(v126);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v38 = *a3;
  v39 = (v37 + 4);
  if ((*(v37 + 4 + ((v38 >> 3) & 0x1C)) >> v38))
  {
    v40 = 0;
    v41 = v38 >> 6;
    if ((v38 >> 6) > 1)
    {
      if (v41 != 2)
      {
        v62 = vcnt_s8(*(v37 + 20));
        v62.i16[0] = vaddlv_u8(v62);
        v40 = v62.u32[0];
      }

      v63 = vcnt_s8(*(v37 + 12));
      v63.i16[0] = vaddlv_u8(v63);
      v40 += v63.u32[0];
    }

    else
    {
      v42 = v38 >> 6;
      if (!v41)
      {
LABEL_74:
        v65 = vcnt_s8((*&v39[v41] & ~(-1 << v38)));
        v65.i16[0] = vaddlv_u8(v65);
        v66 = v65.u32[0] + v42;
        v67 = *(v37 + 4 * v66 + 38);
        LODWORD(v68) = v67 >> 1;
        v69 = v67 >> 3;
        v70 = (v67 & 7) << 32;
        if ((v67 & 3) == 1)
        {
          v70 = 0x100000000;
          v69 = v67 >> 2;
        }

        v71 = (v67 & 1) == 0;
        if (v67)
        {
          v72 = v70;
        }

        else
        {
          v72 = 0;
        }

        if (v71)
        {
          v68 = v68;
        }

        else
        {
          v68 = v69;
        }

        v73 = insertFromBurst(a1, a2, a3 + 1, (a4 - 1), a5, a6, v72 | v68);
        if (!v73)
        {
          return v143;
        }

        v74 = mgetBase(a1, v36) + 38;
        v75 = *(v74 + 4 * v66);
        v76 = v75 >> 1;
        v77 = v75 >> 3;
        v78 = (v75 & 7) << 32;
        if ((v75 & 3) == 1)
        {
          v78 = 0x100000000;
          v77 = v75 >> 2;
        }

        v79 = (v75 & 1) == 0;
        if (v75)
        {
          v80 = v78;
        }

        else
        {
          v80 = 0;
        }

        if (!v79)
        {
          v76 = v77;
        }

        v81 = (v80 ^ v73) >> 32;
        if (v76 == v73 && v81 == 0)
        {
          return v143;
        }

        v83 = HIDWORD(v73) | (8 * v73);
        if (HIDWORD(v73) == 1)
        {
          v83 = (4 * v73) | 1;
        }

        if (HIDWORD(v73))
        {
          v84 = v83;
        }

        else
        {
          v84 = 2 * v73;
        }

        if ((v84 & 3) == 1)
        {
          v85 = 2;
        }

        else
        {
          v85 = 3;
        }

        if ((v84 & 1) == 0)
        {
          v85 = 1;
        }

        if (v84 >> v85 == v73)
        {
          *(v74 + 4 * v66) = v84;
          return v143;
        }

        goto LABEL_174;
      }
    }

    v64 = vcnt_s8(*v39);
    v64.i16[0] = vaddlv_u8(v64);
    v42 = v64.u32[0] + v40;
    goto LABEL_74;
  }

  v57 = *(v37 + 36);
  HIDWORD(v59) = v57 - 4;
  LODWORD(v59) = v57 - 4;
  v58 = v59 >> 2;
  if (v58 <= 2)
  {
    if (v58)
    {
      if (v58 != 1)
      {
        goto LABEL_137;
      }

      v60 = 16;
    }

    else
    {
      v60 = 8;
    }

LABEL_129:
    v138 = v60;
    v104 = (4 * v60 + 41) & 0x1E8;
    v105 = mmalloc(v104, (a1 + 2), *(a2 + 2160), *(a2 + 2168));
    if (v105)
    {
      v106 = v105;
      v137 = v57;
      v107 = v105 >> 2;
      v108 = mgetBase(a1, v105 >> 2);
      *v108 = 0u;
      *(v108 + 16) = 0u;
      if (v104 != 40)
      {
        *(v108 + 32) = 0uLL;
        *(v108 + 48) = 0uLL;
        if (v104 != 72)
        {
          *(v108 + 64) = 0uLL;
          *(v108 + 80) = 0uLL;
          if (v104 != 104)
          {
            *(v108 + 96) = 0uLL;
            *(v108 + 112) = 0uLL;
            if (v104 != 136)
            {
              *(v108 + 128) = 0uLL;
              *(v108 + 144) = 0uLL;
            }
          }
        }
      }

      *(v108 + v104 - 8) = 0;
      *(v108 + 37) = v138;
      LODWORD(v143) = v107;
      if (v107)
      {
        v109 = mgetBase(a1, (v106 >> 2));
        v110 = mgetBase(a1, v36);
        memcpy(v109, v110, 4 * v137 + 38);
        v109[37] = v138;
        mfree(4 * (a7 & 0x3FFFFFFF), (4 * v137 + 41) & 0x7FC, a1 + 2);
        v37 = v109;
        LODWORD(v38) = *a3;
LABEL_137:
        v111 = v37;
        v112 = set_follows(v37, v38);
        if (*a2)
        {
          v113 = flatStoreNewBlockForCompact((a1 + 20), *(a2 + 2148));
          *(a2 + 2148) = v113;
        }

        else
        {
          v113 = trieNewFlatStoreBlock(a1, a4 - 1);
        }

        v144 = v113;
        if (v113)
        {
          appendStringFlat(a1, a2, v113, a4 - 1, a3 + 1, a5, a6, &v144);
          v114 = *(a2 + 4);
        }

        else
        {
          v115 = __error();
          v114 = *v115;
          *(a2 + 4) = *v115;
        }

        if (!v114)
        {
          *(v111 + 4 * v112 + 38) = ptrD(v144);
          return v143;
        }

        goto LABEL_146;
      }
    }

    else
    {
      LODWORD(v143) = 0;
    }

    goto LABEL_140;
  }

  if (v58 == 3)
  {
    v60 = 32;
    goto LABEL_129;
  }

  if (v58 != 7)
  {
    goto LABEL_137;
  }

  v86 = v37;
  v87 = newbaseFat(a1, *(a2 + 2160), *(a2 + 2168));
  v143 = v87 | 0x300000000;
  if (!v87)
  {
LABEL_140:
    *(a2 + 4) = *__error();
    return v143;
  }

  v88 = 0;
  v89 = v86;
  v90 = v86 + 38;
  v91 = v87;
  v92 = 1028 * v87 + 4;
  do
  {
    if (((v39->i32[v88 >> 5] >> v88) & 1) == 0)
    {
      v93 = a1[1];
      *(v93 + v92 + 4 * v88) = 0;
      goto LABEL_114;
    }

    v94 = 0;
    v95 = v88 >> 6;
    if (v88 >> 6 > 1)
    {
      if (v95 != 2)
      {
        v97 = vcnt_s8(*(v89 + 20));
        v97.i16[0] = vaddlv_u8(v97);
        v94 = v97.u32[0];
      }

      v98 = vcnt_s8(*(v89 + 12));
      v98.i16[0] = vaddlv_u8(v98);
      v94 += v98.u32[0];
    }

    else
    {
      v96 = v95;
      if (!v95)
      {
        goto LABEL_123;
      }
    }

    v99 = vcnt_s8(*v39);
    v99.i16[0] = vaddlv_u8(v99);
    v96 = v99.u32[0] + v94;
LABEL_123:
    v100 = vcnt_s8((*&v39[v95] & ~(-1 << v88)));
    v100.i16[0] = vaddlv_u8(v100);
    v93 = a1[1];
    *(v93 + v92 + 4 * v88) = *(v90 + 4 * (v100.u32[0] + v96));
LABEL_114:
    ++v88;
  }

  while (v88 != 256);
  *(v93 + 1028 * v87) = *v89;
  if (*a2)
  {
    v117 = flatStoreNewBlockForCompact((a1 + 20), *(a2 + 2148));
    *(a2 + 2148) = v117;
  }

  else
  {
    v117 = trieNewFlatStoreBlock(a1, a4 - 1);
  }

  *buf = v117;
  if (v117)
  {
    appendStringFlat(a1, a2, v117, a4 - 1, a3 + 1, a5, a6, buf);
    v118 = *(a2 + 4);
  }

  else
  {
    v119 = __error();
    v118 = *v119;
    *(a2 + 4) = *v119;
  }

  if (v118)
  {
    *buf = 0;
    return *buf;
  }

  else
  {
    v120 = a1[1] + 1028 * v91 + 4 * *a3;
    *(v120 + 4) = ptrD(*buf);
    mfree(4 * (a7 & 0x3FFFFFFF), (4 * v57 + 41) & 0x7FC, a1 + 2);
    return v143;
  }
}

uint64_t FlatStorePageEntryWrite2(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v6 = *a2;
  if (*a2 > 0x7F)
  {
    if (v6 >> 14)
    {
      if (v6 >> 21)
      {
        if (v6 >> 28)
        {
          *(a1 + 8) = -16;
          *(a1 + 9) = v6;
          v7 = 5;
        }

        else
        {
          *(a1 + 8) = HIBYTE(v6) | 0xE0;
          *(a1 + 9) = BYTE2(v6);
          *(a1 + 10) = BYTE1(v6);
          *(a1 + 11) = v6;
          v7 = 4;
        }
      }

      else
      {
        *(a1 + 8) = BYTE2(v6) | 0xC0;
        *(a1 + 9) = BYTE1(v6);
        *(a1 + 10) = v6;
        v7 = 3;
      }
    }

    else
    {
      *(a1 + 8) = BYTE1(v6) | 0x80;
      *(a1 + 9) = v6;
      v7 = 2;
    }
  }

  else
  {
    *v5 = v6;
    v7 = 1;
  }

  v8 = a2[1];
  if (v8 <= 0x7F)
  {
    v9 = v7 + 1;
    v5[v7] = v8;
    if (!*a2)
    {
      goto LABEL_26;
    }

LABEL_23:
    v14 = 0;
    do
    {
      *(v9 + a1 + 8 + v14) = *(*(a2 + 1) + v14);
      ++v14;
    }

    while (v14 < *a2);
    v9 += v14;
    goto LABEL_26;
  }

  if (v8 >> 14)
  {
    if (v8 >> 21)
    {
      if (v8 >> 28)
      {
        v13 = &v5[v7];
        *v13 = -16;
        *(v13 + 1) = v8;
        v9 = v7 + 5;
        if (!*a2)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      v12 = &v5[v7];
      *v12 = HIBYTE(v8) | 0xE0;
      v12[1] = BYTE2(v8);
      v12[2] = BYTE1(v8);
      v9 = v7 + 4;
      v12[3] = v8;
      if (*a2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = &v5[v7];
      *v11 = BYTE2(v8) | 0xC0;
      v11[1] = BYTE1(v8);
      v9 = v7 + 3;
      v11[2] = v8;
      if (*a2)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v10 = &v5[v7];
    *v10 = BYTE1(v8) | 0x80;
    v9 = v7 + 2;
    v10[1] = v8;
    if (*a2)
    {
      goto LABEL_23;
    }
  }

LABEL_26:
  v15 = *(a2 + 2);
  v16 = *a3;
  *a3 = v15;
  v17 = ldb_writeSmallVInt64(a1 + 8, v9, v15 - v16);
  v18 = *(a2 + 3);
  if (v18)
  {
    v19 = a3[1];
    a3[1] = v18;
    v20 = v18 - v19;
  }

  else
  {
    v20 = 0;
  }

  return ldb_writeSmallVInt64(v5, v17, v20);
}

uint64_t trieNewFlatStoreBlock(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v3 = 64;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 < a2 + 23);
  memset(v16, 0, sizeof(v16));
  v5 = storageAllocOffset(a1 + 160, v4, v16, &v15);
  if (v5)
  {
    v6 = v5;
    v7 = storageResolvePtr(a1 + 160, v5, v4, 1);
    *v7 = 0;
    *(v7 + 2) = __clz(__rbit32(v4 >> 6));
    v8 = (v6 >> 6);
  }

  else
  {
    v8 = 0;
  }

  v9 = v15;
  if (v15 >= 1)
  {
    v10 = v16;
    do
    {
      v12 = *v10++;
      v11 = v12;
      bit_vector_set_4242((a1 + 4536), (v12 >> 17));
      if ((v12 >> 17) != (v12 + 8) >> 17)
      {
        bit_vector_set_4242((a1 + 4536), (v11 >> 17) + 1);
      }

      --v9;
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ptrD(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1) | (8 * a1);
  if (HIDWORD(a1) == 1)
  {
    v2 = (4 * a1) | 1;
  }

  if (HIDWORD(a1))
  {
    result = v2;
  }

  else
  {
    result = (2 * a1);
  }

  if ((result & 3) == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if ((result & 1) == 0)
  {
    v4 = 1;
  }

  if (result >> v4 != v1)
  {
    v5 = __si_assert_copy_extra_2708(0);
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

uint64_t newbaseFat(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = *(a1 + 148);
  result = (*(a1 + 144) + 1);
  if (result >= v7)
  {
    v15[5] = v3;
    v15[6] = v4;
    v9 = result;
    v15[0] = 0;
    v10 = a1;
    v11 = expandUnsafeMapNew((a1 + 8), *(a1 + 4576), v7, 0x404uLL, v15, a2, a3);
    if (v11)
    {
      v12 = v11;
      v13 = __error();
      result = 0;
      *v13 = v12;
    }

    else
    {
      v14 = v15[0];
      *(v10 + 144) = v9;
      *(v10 + 148) = v14;
      return v9;
    }
  }

  else
  {
    *(a1 + 144) = result;
  }

  return result;
}

unint64_t set_follows(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = *(a1 + 36);
  v4 = (a1 + 4);
  *(a1 + 4 + 4 * (a2 >> 5)) |= 1 << a2;
  v5 = a2 >> 6;
  if (a2 >> 6 > 1)
  {
    if (v5 != 2)
    {
      v7 = vcnt_s8(*(a1 + 20));
      v7.i16[0] = vaddlv_u8(v7);
      v2 = v7.i32[0];
    }

    v8 = vcnt_s8(*(a1 + 12));
    v8.i16[0] = vaddlv_u8(v8);
    v2 += v8.i32[0];
    goto LABEL_7;
  }

  v6 = a2 >> 6;
  if (v5)
  {
LABEL_7:
    v9 = vcnt_s8(*v4);
    v9.i16[0] = vaddlv_u8(v9);
    v6 = v2 + v9.i32[0];
  }

  v10 = vcnt_s8((*&v4[v5] & ~(-1 << a2)));
  v10.i16[0] = vaddlv_u8(v10);
  v11 = (v6 + v10.i32[0]);
  if (v11 >= v3)
  {
    goto LABEL_16;
  }

  v12 = v3 - v11;
  if (v3 - v11 < 8)
  {
    v13 = v3;
    goto LABEL_15;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFF8;
  v15 = (a1 + 4 * v3 + 22);
  v16 = v12 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v17 = *(v15 - 1);
    *(v15 + 4) = *v15;
    *(v15 - 12) = v17;
    v15 -= 2;
    v16 -= 8;
  }

  while (v16);
  if (v12 != v14)
  {
    v13 = v3 - v14;
    do
    {
LABEL_15:
      *(a1 + 4 * v13 + 38) = *(a1 + 4 * v13 + 34);
      --v13;
    }

    while (v13 > v11);
  }

LABEL_16:
  v18 = v3 + 1;
  *(a1 + 36) = v18;
  if (*(a1 + 37) < v18)
  {
    if ((__native_fs() & 1) == 0)
    {
      v24 = __si_assert_copy_extra_2708(0);
      v25 = v24;
      v26 = "";
      if (v24)
      {
        v26 = v24;
      }

      si_analytics_log_2752("%s:%u: failed assertion '%s' %s %d < %d", "BurstTrie.c", 140, "t->size>=t->count", v26, *(a1 + 37), *(a1 + 36));
      free(v25);
      MEMORY[0xB00] = -559038737;
      abort();
    }

    if (*(a1 + 37) < *(a1 + 36))
    {
      v21 = __si_assert_copy_extra_2708(0);
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s %d < %d", "BurstTrie.c", 140, "t->size>=t->count", v23, *(a1 + 37), *(a1 + 36));
      free(v22);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  return v11;
}

unint64_t burst2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 4))
  {
    v3 = 0;
    v4 = a3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = mmalloc(0x38u, a1 + 16, *(a2 + 2160), *(a2 + 2168));
    if (v8 && (v9 = v8, v10 = mgetBase(a1, v8 >> 2), *(v10 + 16) = 0u, *(v10 + 32) = 0u, *v10 = 0u, *(v10 + 48) = 0, *(v10 + 37) = 4, (v9 & 0x3FFFFFFFCLL) != 0))
    {
      if (HIDWORD(a3))
      {
        v16 = __si_assert_copy_extra_2708(0);
        v17 = v16;
        v18 = "";
        if (v16)
        {
          v18 = v16;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 3420, "oldPtr.kind == FLAT", v18);
        free(v17);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v11 = a2;
      v12 = (a2 + 1084);
      v19 = *v12;
      v13 = burstFlat(a1, v11, a3, (v9 >> 2) | 0x100000000);
      v4 = v13 & 0xFFFFFFFF00000000;
      *v12 = v19;
      v3 = v13;
    }

    else
    {
      v14 = __error();
      v3 = 0;
      *(a2 + 4) = *v14;
      v4 = 0x100000000;
    }
  }

  return v4 | v3;
}

void si_analytics_log_2752(char *a1, ...)
{
  va_start(va, a1);
  v7 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  va_copy(&string[1], va);
  vasprintf(string, a1, va);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v1 = xpc_string_create(string[0]);
  values = v1;
  v2 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v2);
  xpc_release(v1);
  free(string[0]);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t bt_getOffset(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v5 = *a1 >> 3;
  v6 = *a1 & 7;
  if ((*a1 & 3) == 1)
  {
    v6 = 1;
    v5 = *a1 >> 2;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (*a1)
  {
    v8 = v5;
  }

  else
  {
    v8 = *a1 >> 1;
  }

  if (v8)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v13 = 0;
    v14 = a2 - 1;
    while (v7 != 1)
    {
      if (v7 != 3)
      {
        if (v7)
        {
          v38 = __si_assert_copy_extra_2708(0);
          v39 = v38;
          if (v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 1003, v40);
          free(v39);
          goto LABEL_52;
        }

LABEL_46:
        v7 = 0;
        *a4 = v13;
        v10 = v8;
        return v10 | (v7 << 32);
      }

      if (v8 > *(a1 + 144))
      {
        v34 = __si_assert_copy_extra_2708(*(a1 + 4576));
        v35 = v34;
        v36 = "";
        if (v34)
        {
          v36 = v34;
        }

        __message_assert("%s:%u: failed assertion '%s' %s s: %d, c: %d", "BurstTrie.c", 966, "ptr.next<=getNum(t->baseFatCount)", v36, v8, *(a1 + 144));
        free(v35);
        if (__valid_fsp(*(a1 + 4576)))
        {
LABEL_52:
          v37 = 2989;
        }

        else
        {
          v37 = 3072;
        }

        *v37 = -559038737;
        abort();
      }

      v17 = *(*(a1 + 8) + 1028 * v8 + 4 * *(a3 + v13) + 4);
      v18 = v17 >> 1;
      v19 = v17 >> 3;
      v20 = v17 & 7;
      if ((v17 & 3) == 1)
      {
        v20 = 1;
        v19 = v17 >> 2;
      }

      v21 = (v17 & 1) == 0;
      if (v17)
      {
        v7 = v20;
      }

      else
      {
        v7 = 0;
      }

      if (v21)
      {
        v8 = v18;
      }

      else
      {
        v8 = v19;
      }

LABEL_18:
      v15 = v13++;
      if (v8)
      {
        v16 = v14 == v15;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        goto LABEL_15;
      }
    }

    v22 = mgetBase(a1, v8);
    v23 = *(a3 + v13);
    v24 = (v22 + 4);
    if (((*(v22 + 4 + ((v23 >> 3) & 0x1C)) >> v23) & 1) == 0)
    {
      v10 = 0;
      v7 = 1;
      return v10 | (v7 << 32);
    }

    v25 = 0;
    v26 = v23 >> 6;
    if ((v23 >> 6) > 1)
    {
      if (v26 != 2)
      {
        v28 = vcnt_s8(*(v22 + 20));
        v28.i16[0] = vaddlv_u8(v28);
        v25 = v28.u32[0];
      }

      v29 = vcnt_s8(*(v22 + 12));
      v29.i16[0] = vaddlv_u8(v29);
      v25 += v29.u32[0];
    }

    else
    {
      v27 = v23 >> 6;
      if (!v26)
      {
LABEL_41:
        v31 = vcnt_s8((*&v24[v26] & ~(-1 << v23)));
        v31.i16[0] = vaddlv_u8(v31);
        v32 = *(v22 + 4 * (v31.u32[0] + v27) + 38);
        if (v32)
        {
          if ((*(v22 + 4 * (v31.u32[0] + v27) + 38) & 3) == 1)
          {
            v8 = v32 >> 2;
            v7 = 1;
          }

          else
          {
            v8 = v32 >> 3;
            v7 = v32 & 7;
          }
        }

        else
        {
          v7 = 0;
          v8 = v32 >> 1;
        }

        goto LABEL_18;
      }
    }

    v30 = vcnt_s8(*v24);
    v30.i16[0] = vaddlv_u8(v30);
    v27 = v30.u32[0] + v25;
    goto LABEL_41;
  }

  LODWORD(v13) = 0;
LABEL_15:
  if (!v7)
  {
    goto LABEL_46;
  }

  v10 = 0;
  return v10 | (v7 << 32);
}

uint64_t bt_shadowTrie(uint64_t a1, const char *a2, int a3, int *a4)
{
  v5 = a3;
  v147 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 4588) & 1) == 0 && !a3)
  {
    result = 0;
    goto LABEL_107;
  }

  *valuePtr = *(a1 + 152);
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds)
  {
    v10 = CFSetContainsValue(registeredCloneFds, v9);
    pthread_mutex_unlock(&registeredFdsLock);
    CFRelease(v9);
    if (v10)
    {
      bzero(valuePtr, 0x400uLL);
      bzero(__str, 0x400uLL);
      Current = CFAbsoluteTimeGetCurrent();
      snprintf(valuePtr, 0x400uLL, "%s%s", a2, "indexCompactDirectory");
      snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
      v12 = copyFileFallback(*(a1 + 152), valuePtr, *(a1 + 152), __str, a4, 1, 1);
      v13 = *__error();
      if (v12)
      {
        v14 = _SILogForLogForCategory(10);
        v15 = 2 * (dword_1EBF46AF4 < 4);
        if (os_log_type_enabled(v14, v15))
        {
          v16 = CFAbsoluteTimeGetCurrent() - Current;
          *buf = 134217984;
          *&buf[4] = v16;
          _os_log_impl(&dword_1C278D000, v14, v15, "shadowIndexCompactDirectory took %f seconds", buf, 0xCu);
        }

        *__error() = v13;
        v17 = CFAbsoluteTimeGetCurrent();
        snprintf(valuePtr, 0x400uLL, "%s%s", a2, "indexDirectory");
        snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexDirectory");
        v18 = copyFileFallback(*(a1 + 152), valuePtr, *(a1 + 152), __str, a4, 1, 1);
        v19 = *__error();
        if (v18)
        {
          v20 = _SILogForLogForCategory(10);
          v21 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v20, v21))
          {
            v22 = CFAbsoluteTimeGetCurrent() - v17;
            *buf = 134217984;
            *&buf[4] = v22;
            _os_log_impl(&dword_1C278D000, v20, v21, "shadowIndexDirectory took %f seconds", buf, 0xCu);
          }

          *__error() = v19;
          CFAbsoluteTimeGetCurrent();
          snprintf(valuePtr, 0x400uLL, "%s%s", a2, "indexArrays");
          snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexArrays");
          if (copyFileFallback(*(a1 + 152), valuePtr, *(a1 + 152), __str, a4, 1, 1))
          {
            v23 = *(a1 + 4536);
            if (v23 >= 1)
            {
              for (i = 0; i != v23; ++i)
              {
                bit_vector_set_2766((a1 + 4536), i, 0);
              }
            }

LABEL_16:
            result = 0;
            *(a1 + 4588) = 0;
            goto LABEL_107;
          }

          if (*__error() == 1)
          {
            bzero(v109, 0x400uLL);
            CFAbsoluteTimeGetCurrent();
            goto LABEL_61;
          }

          v44 = *__error();
          v45 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "bt_shadowTrie";
            v111 = 1024;
            v112 = 1742;
            v113 = 2080;
            *v114 = valuePtr;
            *&v114[8] = 2080;
            *&v114[10] = __str;
            goto LABEL_69;
          }

LABEL_70:
          *__error() = v44;
          result = 0xFFFFFFFFLL;
          goto LABEL_107;
        }

        if (v19 == 1)
        {
          bzero(v109, 0x400uLL);
          CFAbsoluteTimeGetCurrent();
          goto LABEL_35;
        }

        v44 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        *buf = 136315906;
        *&buf[4] = "bt_shadowTrie";
        v111 = 1024;
        v112 = 1727;
        v113 = 2080;
        *v114 = valuePtr;
        *&v114[8] = 2080;
        *&v114[10] = __str;
LABEL_69:
        _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: copyFile error, src: %s, dst: %s", buf, 0x26u);
        goto LABEL_70;
      }

      if (v13 != 1)
      {
        v44 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        *buf = 136315906;
        *&buf[4] = "bt_shadowTrie";
        v111 = 1024;
        v112 = 1713;
        v113 = 2080;
        *v114 = valuePtr;
        *&v114[8] = 2080;
        *&v114[10] = __str;
        goto LABEL_69;
      }
    }
  }

  else
  {
    pthread_mutex_unlock(&registeredFdsLock);
    CFRelease(v9);
  }

  bzero(v109, 0x400uLL);
  v25 = CFAbsoluteTimeGetCurrent();
  snprintf(v109, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
  v26 = fd_create_protected(*(a1 + 152), v109, 1538, 0);
  if (!v26)
  {
    v40 = *__error();
    v41 = *__error();
    v42 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315906;
      *&valuePtr[4] = "bt_shadowTrie";
      v141 = 1024;
      v142 = 1767;
      v143 = 1024;
      v144 = v40;
      v145 = 2080;
      v146 = v109;
      goto LABEL_88;
    }

LABEL_40:
    v27 = 0;
    goto LABEL_42;
  }

  v27 = v26;
  *valuePtr = 0;
  v28 = _fd_acquire_fd(v26, valuePtr);
  if (v28 != -1)
  {
    *(v27 + 56) |= 1u;
    v29 = v28;
    fcntl(v28, 48, 1);
    fcntl(v29, 76, *(v27 + 56) & 1);
    _fd_release_fd(v27, v29, 0, *valuePtr);
  }

  if (__THREAD_SLOT_KEY)
  {
    v30 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v30)
    {
LABEL_164:
      makeThreadId();
      v30 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_25;
    }
  }

  else
  {
    makeThreadId();
    v30 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v30)
    {
      goto LABEL_164;
    }
  }

  if (v30 >= 0x801)
  {
    goto LABEL_164;
  }

LABEL_25:
  v31 = v30 - 1;
  v32 = CICleanUpPush(v30 - 1, fd_release, v27);
  v33 = fd_pwrite(v27, *(a1 + 16), *(a1 + 32), 0);
  CICleanUpClearItem(v31, v32);
  CICleanUpPop(v31);
  if (v33 == -1)
  {
    v40 = *__error();
    v41 = *__error();
    v43 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *valuePtr = 136315906;
    *&valuePtr[4] = "bt_shadowTrie";
    v141 = 1024;
    v142 = 1780;
    v143 = 1024;
    v144 = v40;
    v145 = 2080;
    v146 = v109;
    goto LABEL_90;
  }

  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  *valuePtr = 0;
  v34 = _fd_acquire_fd(v27, valuePtr);
  if (v34 != -1)
  {
    v35 = v34;
    prot_fsync(v34, 0);
    _fd_release_fd(v27, v35, 0, *valuePtr);
  }

  fd_release(v27);
  v36 = *__error();
  v37 = _SILogForLogForCategory(10);
  v38 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v37, v38))
  {
    v39 = CFAbsoluteTimeGetCurrent() - v25;
    *valuePtr = 134217984;
    *&valuePtr[4] = v39;
    _os_log_impl(&dword_1C278D000, v37, v38, "shadowIndexCompactDirectory took %f seconds", valuePtr, 0xCu);
  }

  *__error() = v36;
LABEL_35:
  if (*a4 == 1 || *a4 == -1 && (v5 & 1) != 0)
  {
    result = 89;
    goto LABEL_107;
  }

  v46 = CFAbsoluteTimeGetCurrent();
  snprintf(v109, 0x400uLL, "%s%s", a2, "shadowIndexDirectory");
  v47 = fd_create_protected(*(a1 + 152), v109, 1538, 0);
  if (!v47)
  {
    v40 = *__error();
    v41 = *__error();
    v42 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315906;
      *&valuePtr[4] = "bt_shadowTrie";
      v141 = 1024;
      v142 = 1803;
      v143 = 1024;
      v144 = v40;
      v145 = 2080;
      v146 = v109;
LABEL_88:
      _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", valuePtr, 0x22u);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v27 = v47;
  *valuePtr = 0;
  v48 = _fd_acquire_fd(v47, valuePtr);
  if (v48 != -1)
  {
    *(v27 + 56) |= 1u;
    v49 = v48;
    fcntl(v48, 48, 1);
    fcntl(v49, 76, *(v27 + 56) & 1);
    _fd_release_fd(v27, v49, 0, *valuePtr);
  }

  if (__THREAD_SLOT_KEY)
  {
    v50 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v50)
    {
      goto LABEL_54;
    }
  }

  else
  {
    makeThreadId();
    v50 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v50)
    {
LABEL_54:
      if (v50 < 0x801)
      {
        goto LABEL_55;
      }
    }
  }

  makeThreadId();
  v50 = pthread_getspecific(__THREAD_SLOT_KEY);
LABEL_55:
  v51 = v50 - 1;
  v52 = CICleanUpPush(v50 - 1, fd_release, v27);
  v53 = fd_pwrite(v27, *(a1 + 8), 1028 * (*(a1 + 144) + 1), 0);
  CICleanUpClearItem(v51, v52);
  CICleanUpPop(v51);
  if (v53 != -1)
  {
    fd_sync(v27, 0);
    fd_release(v27);
    v54 = *__error();
    v55 = _SILogForLogForCategory(10);
    v56 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = CFAbsoluteTimeGetCurrent() - v46;
      *valuePtr = 134217984;
      *&valuePtr[4] = v57;
      _os_log_impl(&dword_1C278D000, v55, v56, "shadowIndexDirectory took %f seconds", valuePtr, 0xCu);
    }

    *__error() = v54;
LABEL_61:
    v139 = 0u;
    v138 = 0u;
    v137 = 0u;
    v136 = 0u;
    v135 = 0u;
    v134 = 0u;
    v133 = 0u;
    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    *__str = 0u;
    bzero(valuePtr, 0x400uLL);
    v107 = 0;
    v108 = 0;
    v58 = CFAbsoluteTimeGetCurrent();
    snprintf(valuePtr, 0x400uLL, "%s%s", a2, "shadowIndexArrays");
    v59 = fd_create_protected(*(a1 + 152), valuePtr, 514, 0);
    *buf = 0;
    v60 = _fd_acquire_fd(v59, buf);
    if (v60 == -1)
    {
      if (!v59)
      {
        v72 = *__error();
        v73 = *__error();
        v76 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "shadowFlatStore";
          v111 = 1024;
          v112 = 1562;
          v113 = 1024;
          *v114 = v72;
          *&v114[4] = 2080;
          *&v114[6] = valuePtr;
          _os_log_error_impl(&dword_1C278D000, v76, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
        }

        v64 = 0;
        goto LABEL_101;
      }
    }

    else
    {
      *(v59 + 28) |= 1u;
      v61 = v60;
      fcntl(v60, 48, 1);
      fcntl(v61, 76, v59[7] & 1);
      _fd_release_fd(v59, v61, 0, *buf);
    }

    v62 = (*(a1 + 392) + 0x1FFFF) >> 17;
    if ((v5 & 1) == 0 && v62 >= *(a1 + 4536))
    {
      v62 = *(a1 + 4536);
    }

    v63 = malloc_type_malloc(0x20000uLL, 0x3C1CF393uLL);
    if (!v63)
    {
      v101 = __si_assert_copy_extra_2708(0);
      v102 = v101;
      v103 = "";
      if (v101)
      {
        v103 = v101;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1576, "readBuffer", v103);
      free(v102);
      if (__valid_fs(-1))
      {
        v104 = 2989;
      }

      else
      {
        v104 = 3072;
      }

      *v104 = -559038737;
      abort();
    }

    v64 = v63;
    v65 = *(a1 + 392);
    v66 = *(a1 + 376);
    if (v65 >> 17)
    {
      v67 = _fd_acquire_fd(v66, &v107);
      if (v67 != -1)
      {
        v68 = v67;
        v69 = _fd_acquire_fd(v59, &v108);
        if (v69 != -1)
        {
          v106 = v69;
          if (v62 < 1)
          {
LABEL_156:
            _fd_release_fd(*(a1 + 376), v68, 0, v107);
            _fd_release_fd(v59, v106, 0, v108);
            goto LABEL_157;
          }

          __fd = v68;
          v70 = 0;
          if (v5)
          {
            v71 = 0;
            while (v70 != 100)
            {
LABEL_110:
              *&__str[4 * v70++] = v71;
              if (++v71 == v62)
              {
                goto LABEL_141;
              }
            }

            v80 = 0;
            while (*a4 != 1 && *a4 != -1)
            {
              v81 = *&__str[v80];
              if (prot_pread(__fd, v64, 0x20000uLL, v81 << 17) == -1)
              {
                goto LABEL_135;
              }

              if (*a4 == 1 || *a4 == -1)
              {
                break;
              }

              if (prot_pwrite_guarded(v106, &v108, v64, 0x20000uLL, v81 << 17) == -1)
              {
                goto LABEL_138;
              }

              bit_vector_set_2766((a1 + 4536), v81, 0);
              v80 += 4;
              if (v80 == 400)
              {
                v70 = 0;
                v68 = __fd;
                goto LABEL_110;
              }
            }

LABEL_134:
            v72 = 89;
            LODWORD(v68) = __fd;
            v77 = v106;
            goto LABEL_104;
          }

          for (j = 0; j != v62; ++j)
          {
            if (v70 == 100)
            {
              v83 = 0;
              while (*a4 != 1)
              {
                v84 = *a4;
                v85 = *&__str[v83];
                if (prot_pread(__fd, v64, 0x20000uLL, v85 << 17) == -1)
                {
LABEL_135:
                  v72 = *__error();
                  v73 = *__error();
                  v87 = _SILogForLogForCategory(0);
                  v77 = v106;
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "shadowFlatStore";
                    v111 = 1024;
                    v112 = 1612;
                    v113 = 1024;
                    *v114 = v72;
                    _os_log_error_impl(&dword_1C278D000, v87, OS_LOG_TYPE_ERROR, "%s:%d: read err: %d", buf, 0x18u);
                  }

                  LODWORD(v68) = __fd;
                  goto LABEL_103;
                }

                if (*a4 == 1)
                {
                  goto LABEL_134;
                }

                v86 = *a4;
                if (prot_pwrite_guarded(v106, &v108, v64, 0x20000uLL, v85 << 17) == -1)
                {
LABEL_138:
                  v72 = *__error();
                  v73 = *__error();
                  v88 = _SILogForLogForCategory(0);
                  LODWORD(v68) = __fd;
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "shadowFlatStore";
                    v111 = 1024;
                    v112 = 1621;
                    v113 = 1024;
                    *v114 = v72;
                    _os_log_error_impl(&dword_1C278D000, v88, OS_LOG_TYPE_ERROR, "%s:%d: pwrite err: %d", buf, 0x18u);
                  }

                  goto LABEL_140;
                }

                bit_vector_set_2766((a1 + 4536), v85, 0);
                v83 += 4;
                if (v83 == 400)
                {
                  v70 = 0;
                  v68 = __fd;
                  goto LABEL_131;
                }
              }

              goto LABEL_134;
            }

LABEL_131:
            if (*(a1 + 4536) > j && CFBitVectorGetBitAtIndex(*(a1 + 4552), j))
            {
              *&__str[4 * v70++] = j;
            }
          }

LABEL_141:
          if (!v70)
          {
            goto LABEL_156;
          }

          v89 = v70;
          v90 = __str;
          if (v5)
          {
            while (*a4 != 1 && *a4 != -1)
            {
              v91 = *v90;
              if (prot_pread(v68, v64, 0x20000uLL, v91 << 17) == -1)
              {
                goto LABEL_166;
              }

              if (*a4 == 1 || *a4 == -1)
              {
                break;
              }

              if (prot_pwrite_guarded(v106, &v108, v64, 0x20000uLL, v91 << 17) == -1)
              {
                goto LABEL_170;
              }

              bit_vector_set_2766((a1 + 4536), v91, 0);
              v90 += 4;
              if (!--v89)
              {
                goto LABEL_156;
              }
            }

LABEL_165:
            v72 = 89;
            v77 = v106;
            goto LABEL_104;
          }

          while (1)
          {
            if (*a4 == 1)
            {
              goto LABEL_165;
            }

            v92 = *a4;
            v93 = *v90;
            if (prot_pread(v68, v64, 0x20000uLL, v93 << 17) == -1)
            {
              break;
            }

            if (*a4 == 1)
            {
              goto LABEL_165;
            }

            v94 = *a4;
            if (prot_pwrite_guarded(v106, &v108, v64, 0x20000uLL, v93 << 17) == -1)
            {
LABEL_170:
              v72 = *__error();
              v73 = *__error();
              v99 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_171;
              }

              *buf = 136315650;
              *&buf[4] = "shadowFlatStore";
              v111 = 1024;
              v112 = 1659;
              v113 = 1024;
              *v114 = v72;
              v100 = "%s:%d: pwrite err: %d";
              goto LABEL_179;
            }

            bit_vector_set_2766((a1 + 4536), v93, 0);
            v90 += 4;
            if (!--v89)
            {
              goto LABEL_156;
            }
          }

LABEL_166:
          v72 = *__error();
          v73 = *__error();
          v99 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
LABEL_171:
            LODWORD(v68) = __fd;
            goto LABEL_140;
          }

          *buf = 136315650;
          *&buf[4] = "shadowFlatStore";
          v111 = 1024;
          v112 = 1650;
          v113 = 1024;
          *v114 = v72;
          v100 = "%s:%d: pread err: %d";
LABEL_179:
          _os_log_error_impl(&dword_1C278D000, v99, OS_LOG_TYPE_ERROR, v100, buf, 0x18u);
          LODWORD(v68) = __fd;
LABEL_140:
          v77 = v106;
LABEL_103:
          *__error() = v73;
LABEL_104:
          free(v64);
          _fd_release_fd(*(a1 + 376), v68, 0, v107);
          _fd_release_fd(v59, v77, 0, v108);
          fd_release(v59);
          if (v72)
          {
            result = v72;
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }

          goto LABEL_107;
        }

        v72 = *__error();
        v73 = *__error();
        v79 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "shadowFlatStore";
          v111 = 1024;
          v112 = 1599;
          v113 = 1024;
          *v114 = v72;
          _os_log_error_impl(&dword_1C278D000, v79, OS_LOG_TYPE_ERROR, "%s:%d: fd_open err: %d", buf, 0x18u);
        }

LABEL_102:
        v77 = -1;
        goto LABEL_103;
      }

      v72 = *__error();
      v73 = *__error();
      v74 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "shadowFlatStore";
        v111 = 1024;
        v112 = 1593;
        v113 = 1024;
        *v114 = v72;
        v75 = "%s:%d: fd_open err: %d";
        goto LABEL_100;
      }
    }

    else
    {
      if (fd_pread(v66, v64, v65, 0) != -1)
      {
        if (fd_pwrite(v59, v64, *(a1 + 392), 0) != -1)
        {
          bit_vector_set_2766((a1 + 4536), 0, 0);
LABEL_157:
          free(v64);
          fd_truncate(v59, *(a1 + 384));
          fd_sync(v59, 0);
          fd_release(v59);
          v95 = *__error();
          v96 = _SILogForLogForCategory(10);
          v97 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v96, v97))
          {
            v98 = CFAbsoluteTimeGetCurrent() - v58;
            *buf = 134217984;
            *&buf[4] = v98;
            _os_log_impl(&dword_1C278D000, v96, v97, "shadowIndexArrays took %f seconds", buf, 0xCu);
          }

          *__error() = v95;
          if (*a4 != 1 && (*a4 != -1 || (v5 & 1) == 0))
          {
            goto LABEL_16;
          }

          v59 = 0;
          v64 = 0;
          LODWORD(v68) = -1;
          v72 = 89;
          v77 = -1;
          goto LABEL_104;
        }

        v72 = *__error();
        v73 = *__error();
        v74 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_101;
        }

        *buf = 136315650;
        *&buf[4] = "shadowFlatStore";
        v111 = 1024;
        v112 = 1585;
        v113 = 1024;
        *v114 = v72;
        v75 = "%s:%d: pwrite err: %d";
        goto LABEL_100;
      }

      v72 = *__error();
      v73 = *__error();
      v74 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "shadowFlatStore";
        v111 = 1024;
        v112 = 1580;
        v113 = 1024;
        *v114 = v72;
        v75 = "%s:%d: read err: %d";
LABEL_100:
        _os_log_error_impl(&dword_1C278D000, v74, OS_LOG_TYPE_ERROR, v75, buf, 0x18u);
      }
    }

LABEL_101:
    LODWORD(v68) = -1;
    goto LABEL_102;
  }

  v40 = *__error();
  v41 = *__error();
  v43 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *valuePtr = 136315906;
    *&valuePtr[4] = "bt_shadowTrie";
    v141 = 1024;
    v142 = 1816;
    v143 = 1024;
    v144 = v40;
    v145 = 2080;
    v146 = v109;
LABEL_90:
    _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, "%s:%d: write err: %d, %s", valuePtr, 0x22u);
  }

LABEL_42:
  *__error() = v41;
  fd_release(v27);
  if (v40)
  {
    result = v40;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_107:
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

void bit_vector_set_2766(CFIndex *a1, CFIndex a2, CFBit a3)
{
  if (a2 < 0)
  {
    v5 = __si_assert_copy_extra_2708(0);
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 142, "bitIndex >= 0", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v3 = a1[1];
  if (v3 <= a2)
  {
    if (v3)
    {
      v8 = a1[1];
    }

    else
    {
      v8 = 32;
    }

    while (1)
    {
      v8 *= 2;
      if (v8 > a2)
      {
        break;
      }

      if (v8 <= v3)
      {
        v9 = __si_assert_copy_extra_2708(0);
        v10 = v9;
        v11 = "";
        if (v9)
        {
          v11 = v9;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v11);
        goto LABEL_20;
      }
    }

    v13 = a2;
    v14 = a3;
    v15 = a1;
    v16 = a1[2];
    v17 = *MEMORY[0x1E695E480];
    if (v16)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v17, v8, v16);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v17, v8);
    }

    v19 = MutableCopy;
    if (!MutableCopy)
    {
      v20 = __si_assert_copy_extra_2708(0);
      v10 = v20;
      v21 = "";
      if (v20)
      {
        v21 = v20;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v21);
LABEL_20:
      free(v10);
      if (__valid_fs(-1))
      {
        v12 = 2989;
      }

      else
      {
        v12 = 3072;
      }

      *v12 = -559038737;
      abort();
    }

    CFBitVectorSetCount(MutableCopy, v8);
    a1 = v15;
    if (v15[2])
    {
      CFRelease(v15[2]);
      a1 = v15;
    }

    a1[1] = v8;
    a1[2] = v19;
    a3 = v14;
    a2 = v13;
  }

  if (*a1 <= a2)
  {
    *a1 = a2 + 1;
  }

  v4 = a1[2];

  CFBitVectorSetBitAtIndex(v4, a2, a3);
}

uint64_t bt_mergeTerm(unsigned int a1, void *__s2, int **a3)
{
  v3 = a3 + 1;
  v4 = *a3;
  v5 = **a3;
  v6 = v5 >> 3;
  v7 = (v5 & 7) << 32;
  if ((v5 & 3) == 1)
  {
    v7 = 0x100000000;
    v6 = v5 >> 2;
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5 >> 1;
  }

  if (*(a3 + 3))
  {
    return 0;
  }

  v20[0] = 0;
  v20[1] = 0;
  ++currentCount;
  v13 = *(a3 + 11);
  if (v13 && a1 > v13 && !memcmp(a3 + 6, __s2, *(a3 + 11)))
  {
    v18 = *(a3 + 8);
    v19 = *(a3 + 36);
    if ((mergeEntryFlat(v4) & 1) == 0)
    {
      return LODWORD(v20[0]);
    }

    if (*(a3 + 3))
    {
      return 0;
    }

    if (*(a3 + 11))
    {
      v14 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    a3[4] = 0;
    a3[5] = 0;
  }

  *(a3 + 1092) = 0u;
  v14 = 1;
LABEL_15:
  bt_mergeEntry(v4, v3, v8 | v9, v20, __s2, a1);
  if (*(a3 + 3))
  {
    return 0;
  }

  v16 = v14 ^ 1;
  if (*(a3 + 10))
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0 && *(a3 + 8))
  {
    v17 = *(a3 + 11);
    if (v17)
    {
      *(a3 + 11) = a1 - v17;
      __strncpy_chk();
      *(a3 + *(a3 + 11) + 48) = 0;
    }
  }

  return LODWORD(v20[0]);
}

unint64_t bt_mergeEntry(unint64_t a1, _DWORD *a2, unint64_t a3, _DWORD *a4, unsigned __int8 *a5, int a6)
{
  if (!HIDWORD(a3))
  {
    v11 = __si_assert_copy_extra_2708(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1513, "ptr.kind", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v6 = a3;
  if (HIDWORD(a3) == 1)
  {
    if (a3)
    {
      v9 = mergeEntry(a1, a2, a3, a5, a6, a4, a3);
      v6 = v9;
      if (HIDWORD(v9))
      {
        v7 = v9 & 0xFFFFFFFF00000000;
        return v6 | v7;
      }

      if (a2[1])
      {
        v7 = 0;
        return v6 | v7;
      }

      v17 = __si_assert_copy_extra_2708(0);
      v15 = v17;
      v18 = "";
      if (v17)
      {
        v18 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1535, "ptr.kind || ms->err", v18);
    }

    else
    {
      v14 = __si_assert_copy_extra_2708(0);
      v15 = v14;
      v16 = "";
      if (v14)
      {
        v16 = v14;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1527, "ptr.next", v16);
    }

    free(v15);
    if (!__valid_fs(-1))
    {
      v19 = 3072;
LABEL_25:
      *v19 = -559038737;
      abort();
    }

LABEL_23:
    v19 = 2989;
    goto LABEL_25;
  }

  if (HIDWORD(a3) != 3)
  {
    v20 = __si_assert_copy_extra_2708(0);
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 1532, v22);
    free(v21);
    goto LABEL_23;
  }

  mergeEntryFat(a1, a2, a3, a5, a6, a4);
  v7 = 0x300000000;
  return v6 | v7;
}

unint64_t mergeEntryFat(unint64_t result, uint64_t a2, unsigned int a3, unsigned __int8 *a4, int a5, _DWORD *a6)
{
  v7 = result;
  v91 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v10 = *(result + 8) + 1028 * a3 + 4 * *a4;
    v13 = *(v10 + 4);
    v11 = (v10 + 4);
    v12 = v13;
    v14 = v13 >> 1;
    v15 = v13 >> 3;
    v16 = (v13 & 7) << 32;
    v17 = v13 >> 2;
    if ((v13 & 3) == 1)
    {
      v16 = 0x100000000;
      v15 = v17;
    }

    v18 = (v12 & 1) == 0;
    if (v12)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v14;
    }

    else
    {
      v20 = v15;
    }

    v21 = v19 | v20;
    if (!v20)
    {
      if (*a2)
      {
        v25 = flatStoreNewBlockForCompact(result + 160, *(a2 + 2148));
        v87 = v25;
        *(a2 + 2148) = v25;
      }

      else
      {
        memset(v90, 0, sizeof(v90));
        v66 = 64;
        v89 = 0;
        do
        {
          v67 = v66;
          v66 *= 2;
        }

        while (v67 < a5 + 22);
        v68 = storageAllocOffset(result + 160, v67, v90, &v89);
        if (v68)
        {
          v69 = v68;
          v70 = storageResolvePtr(v7 + 160, v68, v67, 1);
          *v70 = 0;
          v71 = __clz(__rbit32(v67 >> 6));
          if (!v67)
          {
            v71 = -1;
          }

          *(v70 + 2) = v71;
          v25 = (v69 >> 6);
        }

        else
        {
          v25 = 0;
        }

        v72 = v89;
        if (v89 >= 1)
        {
          v73 = v90;
          do
          {
            v75 = *v73++;
            v74 = v75;
            bit_vector_set_4242((v7 + 4536), (v75 >> 17));
            if ((v75 >> 17) != (v75 + 8) >> 17)
            {
              bit_vector_set_4242((v7 + 4536), (v74 >> 17) + 1);
            }

            --v72;
          }

          while (v72);
        }

        v87 = v25;
      }

      if (!v25)
      {
        result = __error();
        *(a2 + 4) = *result;
        goto LABEL_19;
      }

      result = mergeEntryFlat(v7);
      if (result)
      {
        if (*(a2 + 4))
        {
          goto LABEL_19;
        }

        v76 = __si_assert_copy_extra_2708(0);
        v77 = v76;
        v78 = "";
        if (v76)
        {
          v78 = v76;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1115, "ms->err", v78);
      }

      else
      {
        v79 = HIDWORD(v87) | (8 * v87);
        if (HIDWORD(v87) == 1)
        {
          v79 = (4 * v87) | 1;
        }

        if (HIDWORD(v87))
        {
          v80 = v79;
        }

        else
        {
          v80 = 2 * v87;
        }

        if ((v80 & 3) == 1)
        {
          v81 = 2;
        }

        else
        {
          v81 = 3;
        }

        if ((v80 & 1) == 0)
        {
          v81 = 1;
        }

        if (v80 >> v81 == v87)
        {
          *(*(v7 + 8) + 1028 * a3 + 4 * *a4 + 4) = v80;
          goto LABEL_19;
        }

        v82 = __si_assert_copy_extra_2708(0);
        v77 = v82;
        v83 = "";
        if (v82)
        {
          v83 = v82;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v83);
      }

      free(v77);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v22 = HIDWORD(v19);
    if (v22)
    {
      if (v22 != 1)
      {
        if (v22 == 3)
        {
          result = mergeEntryFat(result, a2);
          goto LABEL_19;
        }

        v84 = __si_assert_copy_extra_2708(0);
        v85 = v84;
        if (v84)
        {
          v86 = v84;
        }

        else
        {
          v86 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 1097, v86);
        free(v85);
        goto LABEL_48;
      }

      result = mergeEntry(result, a2, v20, a4 + 1, a5 - 1, a6, v21);
      if (!*(a2 + 4))
      {
        v26 = HIDWORD(result);
        v27 = *(v7 + 8) + 1028 * a3 + 4 * *a4;
        v30 = *(v27 + 4);
        v28 = (v27 + 4);
        v29 = v30;
        v31 = v30 >> 1;
        v32 = v30 >> 3;
        v33 = v30 & 7;
        v34 = v30 >> 2;
        if ((v30 & 3) == 1)
        {
          v33 = 1;
          v32 = v34;
        }

        v35 = (v29 & 1) == 0;
        if (v29)
        {
          v36 = v33;
        }

        else
        {
          v36 = 0;
        }

        if (!v35)
        {
          v31 = v32;
        }

        if (v31 != result || v36 != HIDWORD(result))
        {
          v38 = (4 * result) | 1;
          if (v26 != 1)
          {
            v38 = HIDWORD(result) | (8 * result);
          }

          if (v26)
          {
            v39 = v38;
          }

          else
          {
            v39 = 2 * result;
          }

          if ((v39 & 3) == 1)
          {
            v40 = 2;
          }

          else
          {
            v40 = 3;
          }

          if ((v39 & 1) == 0)
          {
            v40 = 1;
          }

          if (v39 >> v40 != result)
          {
            goto LABEL_45;
          }

          goto LABEL_83;
        }
      }
    }

    else
    {
      v45 = *v11;
      LODWORD(v46) = v45 >> 1;
      v47 = v45 >> 3;
      v48 = (v45 & 7) << 32;
      if ((v45 & 3) == 1)
      {
        v48 = 0x100000000;
        v47 = v45 >> 2;
      }

      v49 = (v45 & 1) == 0;
      if (v45)
      {
        v50 = v48;
      }

      else
      {
        v50 = 0;
      }

      if (v49)
      {
        v46 = v46;
      }

      else
      {
        v46 = v47;
      }

      v88 = v50 | v46;
      v51 = (a5 - 1);
      v52 = *(a2 + 24);
      result = mergeEntryFlat(result);
      if (result)
      {
        if (*(a2 + 4))
        {
          goto LABEL_19;
        }

        result = burst2(v7, a2, v88);
        if (*(a2 + 4))
        {
          goto LABEL_19;
        }

        result = bt_mergeEntry(v7, a2, result, a6, a4 + 1, v51);
        v88 = result;
        if (*(a2 + 4))
        {
          goto LABEL_19;
        }

        v54 = *(v7 + 8) + 1028 * a3 + 4 * *a4;
        result = ptrD(result);
        *(v54 + 4) = result;
      }

      v55 = *(v7 + 8) + 1028 * a3 + 4 * *a4;
      v57 = *(v55 + 4);
      v28 = (v55 + 4);
      v56 = v57;
      v58 = v57 >> 1;
      v59 = v57 >> 3;
      v60 = v57 & 7;
      v61 = v57 >> 2;
      if ((v57 & 3) == 1)
      {
        v60 = 1;
        v59 = v61;
      }

      v62 = (v56 & 1) == 0;
      if (v56)
      {
        v63 = v60;
      }

      else
      {
        v63 = 0;
      }

      if (!v62)
      {
        v58 = v59;
      }

      if (v88 != v58 || HIDWORD(v88) != v63)
      {
        v39 = (4 * v88) | 1;
        if (HIDWORD(v88) != 1)
        {
          v39 = HIDWORD(v88) | (8 * v88);
        }

        if (!HIDWORD(v88))
        {
          v39 = 2 * v88;
        }

        if ((v39 & 3) == 1)
        {
          v65 = 2;
        }

        else
        {
          v65 = 3;
        }

        if ((v39 & 1) == 0)
        {
          v65 = 1;
        }

        if (v39 >> v65 != v88)
        {
LABEL_45:
          v41 = __si_assert_copy_extra_2708(0);
          v42 = v41;
          v43 = "";
          if (v41)
          {
            v43 = v41;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v43);
          free(v42);
          if (!__valid_fs(-1))
          {
            v44 = 3072;
LABEL_123:
            *v44 = -559038737;
            abort();
          }

LABEL_48:
          v44 = 2989;
          goto LABEL_123;
        }

LABEL_83:
        *v28 = v39;
      }
    }
  }

  else
  {
    v23 = (*(result + 8) + 1028 * a3);
    if (!*v23)
    {
      *v23 = *(a2 + 8);
      if (!*a2)
      {
        ++*(a2 + 8);
      }
    }

    *a6 = *(*(result + 8) + 1028 * a3);
  }

LABEL_19:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t mergeEntry(uint64_t a1, _DWORD *a2, unsigned int a3, unsigned __int8 *a4, int a5, _DWORD *a6, unint64_t a7)
{
  v14 = a3;
  v15 = mgetBase(a1, a3);
  if (!a5)
  {
    v21 = *v15;
    if (!*v15)
    {
      v21 = a2[2];
      *v15 = v21;
      if (!*a2)
      {
        a2[2] = v21 + 1;
      }
    }

    *a6 = v21;
    return a7;
  }

  v16 = *a4;
  if (!*a4)
  {
    v62 = __si_assert_copy_extra_2708(0);
    v63 = v62;
    v64 = "";
    if (v62)
    {
      v64 = v62;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1402, "*string", v64);
    goto LABEL_95;
  }

  v17 = (v15 + 4);
  if (((*(v15 + 4 + ((v16 >> 3) & 0x1C)) >> v16) & 1) == 0)
  {

    return _mergeEntryNoFollows(a1, a2, a3, a4, a5, a6, a7);
  }

  v18 = 0;
  v19 = v16 >> 6;
  if ((v16 >> 6) > 1)
  {
    if (v19 != 2)
    {
      v23 = vcnt_s8(*(v15 + 20));
      v23.i16[0] = vaddlv_u8(v23);
      v18 = v23.u32[0];
    }

    v24 = vcnt_s8(*(v15 + 12));
    v24.i16[0] = vaddlv_u8(v24);
    v18 += v24.u32[0];
    goto LABEL_19;
  }

  v20 = v16 >> 6;
  if (v19)
  {
LABEL_19:
    v25 = vcnt_s8(*v17);
    v25.i16[0] = vaddlv_u8(v25);
    v20 = v25.u32[0] + v18;
  }

  v26 = vcnt_s8((*&v17[v19] & ~(-1 << v16)));
  v26.i16[0] = vaddlv_u8(v26);
  v27 = v26.u32[0] + v20;
  v28 = v15 + 38;
  v29 = *(v15 + 38 + 4 * v27);
  if ((v29 & 1) == 0)
  {
    v74 = v29 >> 1;
    goto LABEL_22;
  }

  if ((*(v15 + 38 + 4 * v27) & 3) == 1)
  {
LABEL_46:
    result = mergeEntry(a1, a2);
    if (a2[1])
    {
      return result;
    }

    v41 = HIDWORD(result);
    v42 = result;
    v43 = mgetBase(a1, v14) + 38;
    v44 = *(v43 + 4 * v27);
    v45 = v44 >> 1;
    v46 = v44 >> 3;
    v47 = v44 & 7;
    if ((v44 & 3) == 1)
    {
      v47 = 1;
      v46 = v44 >> 2;
    }

    v48 = (v44 & 1) == 0;
    if (v44)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0;
    }

    if (!v48)
    {
      v45 = v46;
    }

    if (v45 == v42 && v49 == v41)
    {
      return a7;
    }

    v51 = (4 * v42) | 1;
    if (v41 != 1)
    {
      v51 = v41 | (8 * v42);
    }

    if (!v41)
    {
      v51 = 2 * v42;
    }

    if ((v51 & 3) == 1)
    {
      v52 = 2;
    }

    else
    {
      v52 = 3;
    }

    if ((v51 & 1) == 0)
    {
      v52 = 1;
    }

    if (v51 >> v52 == v42)
    {
      *(v43 + 4 * v27) = v51;
      return a7;
    }

    v69 = __si_assert_copy_extra_2708(0);
    v63 = v69;
    v70 = "";
    if (v69)
    {
      v70 = v69;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v70);
LABEL_95:
    free(v63);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v74 = (*(v15 + 38 + 4 * v27) >> 3) | ((*(v15 + 38 + 4 * v27) & 7) << 32);
  v40 = *(v15 + 38 + 4 * v27) & 7;
  if (v40)
  {
    if (v40 != 1)
    {
      if (v40 != 3)
      {
        v71 = __si_assert_copy_extra_2708(0);
        v72 = v71;
        if (v71)
        {
          v73 = v71;
        }

        else
        {
          v73 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 1486, v73);
        free(v72);
        goto LABEL_101;
      }

      mergeEntryFat(a1, a2);
      return a7;
    }

    goto LABEL_46;
  }

LABEL_22:
  v30 = (a5 - 1);
  v31 = a2[6];
  if (!mergeEntryFlat(a1))
  {
    v32 = *(v28 + 4 * v27);
    v33 = v32 >> 1;
    v34 = v32 >> 3;
    v35 = v32 & 7;
    if ((v32 & 3) == 1)
    {
      v35 = 1;
      v34 = v32 >> 2;
    }

    v36 = (v32 & 1) == 0;
    if (v32)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    if (!v36)
    {
      v33 = v34;
    }

    if (v74 == v33 && HIDWORD(v74) == v37)
    {
      return a7;
    }

    if (HIDWORD(v74))
    {
      v39 = HIDWORD(v74) | (8 * v74);
      if (HIDWORD(v74) == 1)
      {
        v39 = (4 * v74) | 1;
      }
    }

    else
    {
      v39 = 2 * v74;
    }

    if ((v39 & 3) == 1)
    {
      v53 = 2;
    }

    else
    {
      v53 = 3;
    }

    if ((v39 & 1) == 0)
    {
      v53 = 1;
    }

    if (v39 >> v53 == v74)
    {
      *(v28 + 4 * v27) = v39;
      return a7;
    }

    v65 = __si_assert_copy_extra_2708(0);
    v66 = v65;
    v67 = "";
    if (v65)
    {
      v67 = v65;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v67);
    free(v66);
    if (!__valid_fs(-1))
    {
      v68 = 3072;
LABEL_103:
      *v68 = -559038737;
      abort();
    }

LABEL_101:
    v68 = 2989;
    goto LABEL_103;
  }

  result = v74;
  if (!a2[1])
  {
    result = burst2(a1, a2, v74);
    if (!a2[1])
    {
      result = HIDWORD(result) == 1 ? mergeEntry(a1, a2) : bt_mergeEntry(a1, a2, result, a6, a4 + 1, v30);
      v75 = result;
      if (!a2[1])
      {
        v54 = mgetBase(a1, v14) + 38;
        v55 = *(v54 + 4 * v27);
        v56 = v55 >> 1;
        v57 = v55 >> 3;
        v58 = v55 & 7;
        if ((v55 & 3) == 1)
        {
          v58 = 1;
          v57 = v55 >> 2;
        }

        v59 = (v55 & 1) == 0;
        if (v55)
        {
          v60 = v58;
        }

        else
        {
          v60 = 0;
        }

        if (!v59)
        {
          v56 = v57;
        }

        if (v75 != v56 || HIDWORD(v75) != v60)
        {
          *(v54 + 4 * v27) = ptrD(v75);
        }

        return a7;
      }
    }
  }

  return result;
}

unint64_t _mergeEntryNoFollows(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, int a5, uint64_t a6, unint64_t a7)
{
  v7 = a7;
  v112 = *MEMORY[0x1E69E9840];
  v12 = HIDWORD(a7);
  v13 = mgetBase(a1, a3);
  v14 = *(v13 + 36);
  v15 = &v98 + 1;
  v16 = (a2 + 4);
  if (*(v13 + 37) != v14)
  {
    goto LABEL_23;
  }

  HIDWORD(v18) = v14 - 4;
  LODWORD(v18) = v14 - 4;
  v17 = v18 >> 2;
  if (v17 <= 2)
  {
    if (!v17)
    {
      v19 = 8;
      goto LABEL_59;
    }

    if (v17 == 1)
    {
      v19 = 16;
LABEL_59:
      if (v7 != a3)
      {
        v86 = __si_assert_copy_extra_2708(0);
        v48 = v86;
        v87 = "";
        if (v86)
        {
          v87 = v86;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1264, "old==s", v87);
        goto LABEL_111;
      }

      v94 = a4;
      v53 = (4 * v19 + 41) & 0x1E8;
      v54 = mmalloc((4 * v19 + 41) & 0x1E8, a1 + 16, *(a2 + 2160), *(a2 + 2168));
      if (!v54)
      {
        goto LABEL_70;
      }

      v55 = v54;
      v56 = v54 >> 2;
      v57 = mgetBase(a1, v54 >> 2);
      *v57 = 0u;
      *(v57 + 16) = 0u;
      if (v53 != 40)
      {
        *(v57 + 32) = 0uLL;
        *(v57 + 48) = 0uLL;
        if (v53 != 72)
        {
          *(v57 + 64) = 0uLL;
          *(v57 + 80) = 0uLL;
          if (v53 != 104)
          {
            *(v57 + 96) = 0uLL;
            *(v57 + 112) = 0uLL;
            if (v53 != 136)
            {
              *(v57 + 128) = 0uLL;
              *(v57 + 144) = 0uLL;
            }
          }
        }
      }

      *(v57 + v53 - 8) = 0;
      *(v57 + 37) = v19;
      if (!v56)
      {
LABEL_70:
        *(a2 + 4) = *__error();
        LODWORD(v98) = 0;
        goto LABEL_100;
      }

      v58 = mgetBase(a1, (v55 >> 2));
      v59 = mgetBase(a1, v7);
      memcpy(v58, v59, 4 * v14 + 38);
      v58[37] = v19;
      v60 = 4 * v7;
      v61 = (4 * v14 + 41) & 0x7FC;
      v62 = *(a1 + 24);
      v63 = v61 >= v62;
      v64 = v61 - v62;
      a4 = v94;
      if (v64 != 0 && v63)
      {
        v68 = ((v64 ^ (v64 - 1)) <= v64 - 1) - __clz(v64) + 28;
      }

      else
      {
        v68 = 0;
      }

      v16 = (a2 + 4);
      v33 = v56;
      if (v60 + (8 << v68) == *(a1 + 32))
      {
        *(a1 + 32) = v60;
      }

      else
      {
        v69 = *(a1 + 16);
        if (*(a1 + 128) < v68)
        {
          *(a1 + 128) = v68;
        }

        v70 = a1 + 4 * v68;
        *(v69 + v60) = *(v70 + 48);
        *(v70 + 48) = 4 * v7;
      }

      goto LABEL_24;
    }

LABEL_23:
    v33 = v7;
LABEL_24:
    v34 = mgetBase(a1, v33);
    v93 = set_follows(v34, *a4);
    v98 = 0;
    v96 = v12;
    if (*a2)
    {
      v35 = flatStoreNewBlockForCompact(a1 + 160, *(a2 + 2148));
      v98 = v35;
      *(a2 + 2148) = v35;
      if (!v35)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v92 = v33;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v36 = 64;
      v99 = 0;
      do
      {
        v37 = v36;
        v36 *= 2;
      }

      while (v37 < a5 + 22);
      v95 = v16;
      v38 = storageAllocOffset(a1 + 160, v37, &v100, &v99);
      if (v38)
      {
        v39 = v38;
        v40 = storageResolvePtr(a1 + 160, v38, v37, 1);
        *v40 = 0;
        v41 = __clz(__rbit32(v37 >> 6));
        if (!v37)
        {
          v41 = -1;
        }

        *(v40 + 2) = v41;
        v42 = (v39 >> 6);
      }

      else
      {
        v42 = 0;
      }

      v43 = v99;
      if (v99 >= 1)
      {
        v44 = &v100;
        do
        {
          v46 = *v44++;
          v45 = v46;
          bit_vector_set_4242((a1 + 4536), (v46 >> 17));
          if ((v46 >> 17) != (v46 + 8) >> 17)
          {
            bit_vector_set_4242((a1 + 4536), (v45 >> 17) + 1);
          }

          --v43;
        }

        while (v43);
      }

      v98 = v42;
      v33 = v92;
      v15 = &v98 + 1;
      v16 = v95;
      if (!v42)
      {
        goto LABEL_99;
      }
    }

    if (mergeEntryFlat(a1))
    {
      if (*v16)
      {
        goto LABEL_101;
      }

      v47 = __si_assert_copy_extra_2708(0);
      v48 = v47;
      v49 = "";
      if (v47)
      {
        v49 = v47;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1362, "ms->err", v49);
    }

    else
    {
      v50 = HIDWORD(v98) | (8 * v98);
      if (HIDWORD(v98) == 1)
      {
        v50 = (4 * v98) | 1;
      }

      if (HIDWORD(v98))
      {
        v51 = v50;
      }

      else
      {
        v51 = 2 * v98;
      }

      if ((v51 & 3) == 1)
      {
        v52 = 2;
      }

      else
      {
        v52 = 3;
      }

      if ((v51 & 1) == 0)
      {
        v52 = 1;
      }

      if (v51 >> v52 == v98)
      {
        *(v34 + 38 + 4 * v93) = v51;
        LODWORD(v98) = v33;
        LODWORD(v12) = v96;
        goto LABEL_100;
      }

      v88 = __si_assert_copy_extra_2708(0);
      v48 = v88;
      v89 = "";
      if (v88)
      {
        v89 = v88;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v89);
    }

    goto LABEL_111;
  }

  if (v17 == 3)
  {
    v19 = 32;
    goto LABEL_59;
  }

  if (v17 != 7)
  {
    goto LABEL_23;
  }

  if (v7 != a3)
  {
    v90 = __si_assert_copy_extra_2708(0);
    v48 = v90;
    v91 = "";
    if (v90)
    {
      v91 = v90;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1285, "old==s", v91);
    goto LABEL_111;
  }

  v20 = *(a1 + 148);
  v21 = *(a1 + 144) + 1;
  if (v21 >= v20)
  {
    v71 = v13;
    v72 = *(a2 + 2168);
    v73 = *(a2 + 2160);
    *&v100 = 0;
    v74 = expandUnsafeMapNew((a1 + 8), *(a1 + 4576), v20, 0x404uLL, &v100, v73, v72);
    if (v74)
    {
      v21 = 0;
      *__error() = v74;
    }

    else
    {
      v83 = v100;
      *(a1 + 144) = v21;
      *(a1 + 148) = v83;
    }

    v13 = v71;
    if (v21)
    {
      goto LABEL_11;
    }

LABEL_94:
    *v16 = *__error();
    LODWORD(v98) = 0;
    LODWORD(v12) = 3;
    goto LABEL_100;
  }

  *(a1 + 144) = v21;
  if (!v21)
  {
    goto LABEL_94;
  }

LABEL_11:
  v22 = 0;
  v23 = (v13 + 4);
  v24 = 1028 * v21 + 4;
  do
  {
    if (((v23->i32[v22 >> 5] >> v22) & 1) == 0)
    {
      v25 = *(a1 + 8);
      *(v25 + v24 + 4 * v22) = 0;
      goto LABEL_13;
    }

    v26 = 0;
    v27 = v22 >> 6;
    if (v22 >> 6 > 1)
    {
      if (v27 != 2)
      {
        v29 = vcnt_s8(*(v13 + 20));
        v29.i16[0] = vaddlv_u8(v29);
        v26 = v29.u32[0];
      }

      v30 = vcnt_s8(*(v13 + 12));
      v30.i16[0] = vaddlv_u8(v30);
      v26 += v30.u32[0];
    }

    else
    {
      v28 = v27;
      if (!v27)
      {
        goto LABEL_22;
      }
    }

    v31 = vcnt_s8(*v23);
    v31.i16[0] = vaddlv_u8(v31);
    v28 = v31.u32[0] + v26;
LABEL_22:
    v32 = vcnt_s8((*&v23[v27] & ~(-1 << v22)));
    v32.i16[0] = vaddlv_u8(v32);
    v25 = *(a1 + 8);
    *(v25 + v24 + 4 * v22) = *(v13 + 38 + 4 * (v32.u32[0] + v28));
LABEL_13:
    ++v22;
  }

  while (v22 != 256);
  *(v25 + 1028 * v21) = *v13;
  v98 = 0;
  if (!*a2)
  {
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v75 = 64;
    v99 = 0;
    do
    {
      v76 = v75;
      v75 *= 2;
    }

    while (v76 < a5 + 22);
    v77 = storageAllocOffset(a1 + 160, v76, &v100, &v99);
    if (v77)
    {
      v78 = v77;
      v79 = storageResolvePtr(a1 + 160, v77, v76, 1);
      *v79 = 0;
      v80 = __clz(__rbit32(v76 >> 6));
      if (!v76)
      {
        v80 = -1;
      }

      *(v79 + 2) = v80;
      v81 = (v78 >> 6);
    }

    else
    {
      v81 = 0;
    }

    v16 = (a2 + 4);
    if (v99)
    {
      dirtyStorageOffsets(a1 + 160, &v100, v99);
    }

    v98 = v81;
    if (!v81)
    {
      goto LABEL_99;
    }

LABEL_73:
    if ((mergeEntryFlat(a1) & 1) == 0)
    {
      v82 = *(a1 + 8) + 1028 * v21 + 4 * *a4;
      *(v82 + 4) = ptrD(v98);
      mfree(4 * (v7 & 0x3FFFFFFF), (4 * v14 + 41) & 0x7FC, (a1 + 16));
      LODWORD(v98) = v21;
      LODWORD(v12) = 3;
      v15 = &v98 + 1;
      goto LABEL_100;
    }

    if (*v16)
    {
      goto LABEL_101;
    }

    v66 = __si_assert_copy_extra_2708(0);
    v48 = v66;
    v67 = "";
    if (v66)
    {
      v67 = v66;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1326, "ms->err", v67);
LABEL_111:
    free(v48);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v65 = flatStoreNewBlockForCompact(a1 + 160, *(a2 + 2148));
  v98 = v65;
  *(a2 + 2148) = v65;
  if (v65)
  {
    goto LABEL_73;
  }

LABEL_99:
  LODWORD(v12) = *__error();
  v15 = v16;
LABEL_100:
  *v15 = v12;
LABEL_101:
  result = v98;
  v85 = *MEMORY[0x1E69E9840];
  return result;
}

void _qsort_termids(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  v5 = 0;
  *v4 = 0;
  v4[1] = 0;
  v6 = a1 + 28;
  v7 = 1;
  do
  {
    if (a2 > v5)
    {
      if (v7 <= 128)
      {
        v10 = 128;
      }

      else
      {
        v10 = v7;
      }

      while (1)
      {
        v11 = a2 - v5;
        if (a2 - v5 <= 16)
        {
          break;
        }

        v12 = v11 + 1;
        v13 = (a1 + 24 * v5);
        v14 = &v13[6 * ((v11 + 1) >> 1)];
        v15 = (a1 + 24 * a2);
        if (v11 < 0x400)
        {
          v29 = &v13[6 * ((v11 + 1) >> 1)];
          v30 = (a1 + 24 * a2);
          v20 = (a1 + 24 * v5);
        }

        else
        {
          v16 = v12 >> 3;
          v17 = &v13[6 * (v12 >> 3)];
          v18 = *v13;
          v19 = *v17;
          v20 = (a1 + 24 * v5);
          if (*v17 != *v13)
          {
            v20 = &v13[12 * v16];
            v21 = *v20;
            if (*v20 >= v18)
            {
              v22 = &v13[12 * v16];
            }

            else
            {
              v22 = (a1 + 24 * v5);
            }

            if (v21 > v19)
            {
              v22 = &v13[6 * (v12 >> 3)];
            }

            if (v21 >= v18)
            {
              v23 = (a1 + 24 * v5);
            }

            else
            {
              v23 = &v13[12 * v16];
            }

            if (v21 >= v19)
            {
              v17 = v23;
            }

            if (v19 >= v18)
            {
              v17 = v22;
            }

            if (v18 != v21 && v19 != v21)
            {
              v20 = v17;
            }
          }

          v25 = v14[-6 * v16];
          v26 = *v14;
          if (*v14 == v25)
          {
            v29 = &v14[-6 * v16];
          }

          else
          {
            v27 = v14[6 * v16];
            v28 = v25 == v27 || v26 == v27;
            v29 = &v14[6 * v16];
            if (!v28)
            {
              v29 = &v13[6 * ((v11 + 1) >> 1)];
              if (v26 >= v25)
              {
                if (v27 <= v26)
                {
                  if (v27 >= v25)
                  {
                    v29 = &v14[6 * v16];
                  }

                  else
                  {
                    v29 = &v14[-6 * v16];
                  }
                }
              }

              else if (v27 >= v26)
              {
                if (v27 >= v25)
                {
                  v29 = &v14[-6 * v16];
                }

                else
                {
                  v29 = &v14[6 * v16];
                }
              }
            }
          }

          v31 = -v16;
          v30 = &v15[-12 * v16];
          v32 = &v15[6 * v31];
          v33 = *v30;
          v34 = *v32;
          if (*v32 != *v30)
          {
            v35 = *v15;
            if (*v15 >= v33)
            {
              v36 = (a1 + 24 * a2);
            }

            else
            {
              v36 = v30;
            }

            if (v35 > v34)
            {
              v36 = v32;
            }

            if (v35 < v33)
            {
              v30 = (a1 + 24 * a2);
            }

            if (v35 < v34)
            {
              v30 = v32;
            }

            if (v34 >= v33)
            {
              v30 = v36;
            }

            if (v33 == v35 || v34 == v35)
            {
              v30 = (a1 + 24 * a2);
            }
          }
        }

        v38 = *v20;
        v39 = *v29;
        if (*v29 == *v20)
        {
          v29 = v20;
        }

        else
        {
          v40 = *v30;
          if (v38 == *v30 || v39 == v40)
          {
            v29 = v30;
          }

          else if (v39 >= v38)
          {
            if (v40 <= v39)
            {
              if (v40 >= v38)
              {
                v29 = v30;
              }

              else
              {
                v29 = v20;
              }
            }
          }

          else if (v40 >= v39)
          {
            if (v40 >= v38)
            {
              v29 = v20;
            }

            else
            {
              v29 = v30;
            }
          }
        }

        v42 = *v29;
        v75 = *(v29 + 1);
        v77 = v29[5];
        v43 = *(v15 + 2);
        *v29 = *v15;
        *(v29 + 2) = v43;
        *v15 = v42;
        *(v15 + 1) = v75;
        v15[5] = v77;
        v44 = *v13;
        v71 = *(v13 + 1);
        v73 = v13[5];
        v45 = (v6 + 24 * v5);
        v46 = v5;
        do
        {
          v69 = v71;
          v70 = v73;
          v47 = *(v45 - 1);
          v71 = *v45;
          v73 = *(v45 + 4);
          if (v42 <= v44)
          {
            v48 = (a1 + 24 * v46);
            v49 = *v48;
            *(v45 - 12) = *(v48 + 2);
            *(v45 - 28) = v49;
            *v48 = v44;
            *(v48 + 4) = v69;
            *(v48 + 5) = v70;
            ++v46;
          }

          v45 = (v45 + 24);
          v44 = v47;
          --v11;
        }

        while (v11);
        v50 = (a1 + 24 * v46);
        v51 = *(v50 + 2);
        v52 = *v50;
        v53 = *(v15 + 2);
        *v50 = *v15;
        *(v50 + 2) = v53;
        *v15 = v52;
        *(v15 + 2) = v51;
        if (v46 < v5)
        {
          v65 = __si_assert_copy_extra_2708(0);
          v66 = v65;
          v67 = "";
          if (v65)
          {
            v67 = v65;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1990, "q>=left", v67);
          free(v66);
          if (__valid_fs(-1))
          {
            v68 = 2989;
          }

          else
          {
            v68 = 3072;
          }

          *v68 = -559038737;
          abort();
        }

        if (v7 == v10)
        {
          v8 = v4;
          heapsort_b((a1 + 24 * v5), v12, 0x18uLL, &__block_literal_global_2831);
          v4 = v8;
          v7 = v10;
          goto LABEL_3;
        }

        v54 = &v4[2 * v7];
        if (v46 - v5 <= a2 - v46)
        {
          *v54 = v5;
          v54[1] = v46 - 1;
          v5 = v46;
        }

        else
        {
          *v54 = v46;
          v54[1] = a2;
          a2 = v46 - 1;
        }

        ++v7;
        if (a2 <= v5)
        {
          goto LABEL_3;
        }
      }

      v55 = v6 + 24 * v5;
      v56 = v5;
      do
      {
        v58 = v56++;
        v59 = (a1 + 24 * v58);
        v76 = *(v59 + 7);
        v78 = v59[11];
        v60 = *v59;
        v72 = *(v59 + 1);
        v61 = v59[6];
        v74 = v59[5];
        v62 = v56;
        if (v61 > v60)
        {
          v63 = v55;
          do
          {
            v62 = v58;
            *(v63 - 4) = v60;
            *v63 = v72;
            *(v63 + 16) = v74;
            if (v58 <= v5)
            {
              break;
            }

            v60 = *(v63 - 52);
            v72 = *(v63 - 48);
            v74 = *(v63 - 32);
            --v58;
            v63 -= 24;
          }

          while (v61 > v60);
        }

        v57 = a1 + 24 * v62;
        *v57 = v61;
        *(v57 + 4) = v76;
        *(v57 + 20) = v78;
        v55 += 24;
      }

      while (v56 != a2);
    }

LABEL_3:
    --v7;
    v9 = &v4[2 * v7];
    v5 = *v9;
    a2 = v9[1];
  }

  while (v7);
  v64 = *MEMORY[0x1E69E9840];

  free(v4);
}

uint64_t mergeFlushPositions(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, unint64_t a5, int a6)
{
  v154 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v6 = a5;
    v8 = a3;
    v135 = a3[1];
    v131 = *a3;
    Current = CFAbsoluteTimeGetCurrent();
    v11 = *a4;
    if (*a4 <= a4[6 * v6 - 6])
    {
      v11 = a4[6 * v6 - 6];
    }

    v12 = *(v8 + 1114);
    v13 = v11 >= v12;
    v14 = v11 - v12;
    if (!v13 || (result = termIdStoreAllocBulk((v8 + 5), v14 + 1), !result))
    {
      v152 = 0;
      v150 = 0u;
      v151 = 0u;
      PayloadWriteBufferInit(&v150, v8);
      v16 = v8[1];
      v147 = 0;
      v148 = xmmword_1C2BFA3C0;
      v149 = malloc_type_malloc(0x8000uLL, 0xAFD51C2BuLL);
      if (!v149)
      {
        v118 = __si_assert_copy_extra_332();
        v103 = v118;
        v119 = "";
        if (v118)
        {
          v119 = v118;
        }

        __message_assert(v118, "CIPositionRun.c", 11, "run->buffer", v119);
LABEL_164:
        free(v103);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      if (!v152)
      {
        v17 = 0;
        v136 = 0;
        v18 = 0;
        v130 = a4 + 6;
        v132 = a4;
        v133 = v6;
        v134 = v8;
        while (1)
        {
          v19 = &a4[6 * v18];
          v20 = *(v19 + 1);
          if ((*v20 & 1) != 0 || (v21 = *(v20 + 12)) == 0)
          {
            ++v18;
            v37 = 1;
            if (v18 >= v6)
            {
              goto LABEL_129;
            }

            goto LABEL_124;
          }

          v22 = atomic_load((a1 + 248));
          if (v21 >= v22)
          {
            goto LABEL_129;
          }

          v23 = *(*(v19 + 1) + 12);
          v24 = atomic_load((a1 + 248));
          if (v23 >= v24)
          {
            if (__valid_fs(-1))
            {
              v113 = __si_assert_copy_extra_2708(0);
              v114 = *(*(v19 + 1) + 12);
              atomic_load((a1 + 248));
              si_analytics_log_2752("%s:%u: failed assertion '%s' %s termId: %d next_term_id: %d");
              goto LABEL_158;
            }

LABEL_159:
            v112 = 3072;
LABEL_160:
            *v112 = -559038737;
            abort();
          }

          v141 = v17;
          v142 = v16;
          v25 = *(a1 + 240);
          v26 = *(*(v19 + 1) + 12);
          v143 = *v19;
          v138 = 8 * v143;
          v27 = v18;
          v28 = storageResolvePtr((v8 + 5), 8 * v143, 8, 1);
          v29 = v27;
          v30 = *v28;
          LODWORD(v147) = 0;
          v146 = 0;
          v31 = v27 + 1;
          if (v31 >= v6)
          {
            v33 = a2;
            v34 = v143;
            v36 = v136;
          }

          else
          {
            v32 = &v130[6 * v29];
            v33 = a2;
            v34 = v143;
            while (1)
            {
              v35 = *(v32 + 1);
              if ((*v35 & 1) == 0)
              {
                if (*(v35 + 12))
                {
                  break;
                }
              }

              ++v31;
              v32 += 6;
              if (v6 == v31)
              {
                v36 = v143;
                v31 = v6;
                goto LABEL_28;
              }
            }

            v36 = *v32;
          }

          if (v31 == v6)
          {
            v36 = v34;
            goto LABEL_28;
          }

          if (v34 <= v36)
          {
            if (!__valid_fs(-1))
            {
              goto LABEL_159;
            }

            v113 = __si_assert_copy_extra_2708(0);
            si_analytics_log_2752("%s:%u: failed assertion '%s' %s termId: %d prevTermId: %d j: %ld count: %ld", "BurstTrie.c");
LABEL_158:
            free(v113);
            v112 = 2816;
            goto LABEL_160;
          }

LABEL_28:
          v136 = v36;
          v137 = v31;
          v38 = v34 - v36;
          v39 = v149;
          if (v38 <= 0x7F)
          {
            *v149 = v38;
            v40 = 1;
            v41 = 1;
            if (!v30)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

          if (!(v38 >> 14))
          {
            *v149 = BYTE1(v38) | 0x80;
            v39[1] = v38;
            v40 = 2;
            v41 = 2;
            if (!v30)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

          if (!(v38 >> 21))
          {
            break;
          }

          if (!(v38 >> 28))
          {
            *v149 = HIBYTE(v38) | 0xE0;
            v39[1] = BYTE2(v38);
            v39[2] = BYTE1(v38);
            v39[3] = v38;
            v40 = 4;
            v41 = 4;
            if (!v30)
            {
              goto LABEL_42;
            }

LABEL_41:
            v41 = ldb_writeSmallVInt64(v39, v40, (2 * v30) | 1);
            goto LABEL_42;
          }

          *v149 = -16;
          *(v39 + 1) = v38;
          v40 = 5;
          v41 = 5;
          if (v30)
          {
            goto LABEL_41;
          }

LABEL_42:
          v140 = v40;
          v42 = v25 + 32 * v26;
          v43 = ldb_writeSmallVInt64(v39, v41, 2 * *(v42 + 16));
          *(&v148 + 1) = v43;
          if (!*v42 && !*(v42 + 4))
          {
            if (*(v42 + 16))
            {
              v120 = v43 + 1;
              v121 = v148;
              while (v120 >= v121)
              {
                v121 *= 2;
                v39 = malloc_type_realloc(v39, v121, 0x100004077774924uLL);
                if (!v39)
                {
                  v122 = __si_assert_copy_extra_2708(0);
                  v103 = v122;
                  v123 = "";
                  if (v122)
                  {
                    v123 = v122;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s ", "CIPositionRun.h", 75, "run->buffer", v123);
                  goto LABEL_164;
                }
              }

              v124 = v146;
              v125 = __si_assert_copy_extra_2708(0);
              v103 = v125;
              v126 = "";
              if (v125)
              {
                v126 = v125;
              }

              if (!v124)
              {
                __message_assert("%s:%u: failed assertion '%s' %s ", "CIPositionRun.h", 77, "bytes[0]!=0", v126);
                goto LABEL_164;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "CIPositionRun.h", 78, "len == 0 || bytes[len-1]==0", v126);
            }

            else
            {
              v127 = __si_assert_copy_extra_2708(0);
              v103 = v127;
              v128 = "";
              if (v127)
              {
                v128 = v127;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 2083, "node->offset", v128);
            }

LABEL_148:
            free(v103);
            if (!__valid_fs(-1))
            {
              goto LABEL_159;
            }

            v112 = 2989;
            goto LABEL_160;
          }

          v44 = atomic_load((a1 + 268));
          v139 = v44;
          if (*(v42 + 8))
          {
            v45 = a6;
            v46 = CIPositionNodeFinalizeDocument(a1 + 240);
LABEL_47:
            v47 = 0;
            v48 = 0;
            while (1)
            {
              v49 = (*(a1 + 256) + 8 * v46);
              v51 = v49 + 1;
              v50 = *v49;
              if (v45)
              {
                v52 = *v51;
                if (*v51 < 0)
                {
                  if (v52 > 0xBF)
                  {
                    if (v52 > 0xDF)
                    {
                      if (v52 > 0xEF)
                      {
                        v52 = *(v49 + 5);
                        v53 = 5;
                      }

                      else
                      {
                        v52 = ((v52 & 0xF) << 24) | (*(v49 + 5) << 16) | (*(v49 + 6) << 8) | *(v49 + 7);
                        v53 = 4;
                      }
                    }

                    else
                    {
                      v52 = ((v52 & 0x1F) << 16) | (*(v49 + 5) << 8) | *(v49 + 6);
                      v53 = 3;
                    }
                  }

                  else
                  {
                    v53 = 2;
                    v52 = *(v49 + 5) | ((v52 & 0x3F) << 8);
                  }
                }

                else
                {
                  v53 = 1;
                }

                if (v48 - 1 < v52)
                {
                  v103 = __si_assert_copy_extra(0);
                  __message_assert("%s:%u: failed assertion '%s' %s [round-%d] docId:%d newDocID:%d posStart:%p next:%d", "CIPayloadData.c", 587);
                  goto LABEL_148;
                }

                if (!v52)
                {
                  v103 = __si_assert_copy_extra(0);
                  __message_assert("%s:%u: failed assertion '%s' %s [round-%d] unexpected zero newDocID. docId:%d posStart:%p  next:%d", "CIPayloadData.c");
                  goto LABEL_148;
                }

                if (v33 && *v33 > v52 && CFBitVectorGetBitAtIndex(*(v33 + 16), v52))
                {
                  *&buf[8] = 0;
                  *buf = 0;
                  v54 = v48 - v52;
                  if (!v48)
                  {
                    v54 = v52;
                  }

                  if (v54 > 0x7F)
                  {
                    if (v54 >> 14)
                    {
                      if (v54 >> 21)
                      {
                        if (v54 >> 28)
                        {
                          buf[0] = -16;
                          *&buf[1] = v54;
                          v55 = 5;
                        }

                        else
                        {
                          buf[0] = HIBYTE(v54) | 0xE0;
                          buf[1] = BYTE2(v54);
                          buf[2] = BYTE1(v54);
                          buf[3] = v54;
                          v55 = 4;
                        }
                      }

                      else
                      {
                        buf[0] = BYTE2(v54) | 0xC0;
                        buf[1] = BYTE1(v54);
                        buf[2] = v54;
                        v55 = 3;
                      }
                    }

                    else
                    {
                      buf[0] = BYTE1(v54) | 0x80;
                      buf[1] = v54;
                      v55 = 2;
                    }
                  }

                  else
                  {
                    buf[0] = v54;
                    v55 = 1;
                  }

                  *(buf | v55) = 1;
                  ci_position_run_add_bytes(&v147, (v55 + 2), buf);
                }

                else
                {
                  if (v48)
                  {
                    v56 = v48 - v52;
                  }

                  else
                  {
                    v56 = v52;
                  }

                  v57 = v148;
                  v58 = *(&v148 + 1) + 5;
                  if (*(&v148 + 1) + 5 >= v148)
                  {
                    *&v148 = 2 * v148;
                    v59 = malloc_type_realloc(v149, 2 * v57, 0x100004077774924uLL);
                    v149 = v59;
                    if (!v59)
                    {
                      goto LABEL_145;
                    }
                  }

                  else
                  {
                    v59 = v149;
                  }

                  if (v56 > 0x7F)
                  {
                    if (v56 >> 14)
                    {
                      if (v56 >> 21)
                      {
                        if (v56 >> 28)
                        {
                          v63 = &v59[*(&v57 + 1)];
                          *v63 = -16;
                          *(v63 + 1) = v56;
                        }

                        else
                        {
                          v62 = &v59[*(&v57 + 1)];
                          *v62 = HIBYTE(v56) | 0xE0;
                          v62[1] = BYTE2(v56);
                          v62[2] = BYTE1(v56);
                          v58 = *(&v57 + 1) + 4;
                          v62[3] = v56;
                        }
                      }

                      else
                      {
                        v61 = &v59[*(&v57 + 1)];
                        *v61 = BYTE2(v56) | 0xC0;
                        v61[1] = BYTE1(v56);
                        v58 = *(&v57 + 1) + 3;
                        v61[2] = v56;
                      }
                    }

                    else
                    {
                      v60 = &v59[*(&v57 + 1)];
                      *v60 = BYTE1(v56) | 0x80;
                      v58 = *(&v57 + 1) + 2;
                      v60[1] = v56;
                    }
                  }

                  else
                  {
                    v58 = *(&v57 + 1) + 1;
                    v59[*(&v57 + 1)] = v56;
                  }

                  *(&v148 + 1) = v58;
                  ci_position_run_add_bytes(&v147, (v50 - v53), &v51[v53]);
                  v45 = a6;
                  v33 = a2;
                }
              }

              else
              {
                ci_position_run_add_bytes(&v147, v50, v51);
                v52 = v48;
              }

              v64 = &v51[v50];
              v65 = *(a1 + 256);
              v66 = (a1 + 268);
              v67 = atomic_load((a1 + 268));
              if (&v51[v50] >= v65 + 8 * v67)
              {
                v103 = __si_assert_copy_extra(0);
                v104 = *(a1 + 256);
                v105 = *v64;
                atomic_load(v66);
                v129 = *(a1 + 272);
                __message_assert("%s:%u: failed assertion '%s' %s base:%p ptr:%p value:%d info next:%d size:%d next:%d len:%d docId(%d):%d ", "CIPayloadData.c", 615, "posStart < (uint8_t*)(positions->info_store+positions->_info_next.infoptr)");
                goto LABEL_148;
              }

              v68 = *v64;
              v69 = atomic_load(v66);
              if (v68 >= v69)
              {
                v106 = __si_assert_copy_extra(0);
                v107 = v106;
                v108 = "";
                if (v106)
                {
                  v108 = v106;
                }

                v109 = *(a1 + 256);
                v110 = *v64;
                v111 = atomic_load((a1 + 268));
                __message_assert("%s:%u: failed assertion '%s' %s base:%p ptr:%p value:%d info next:%d size:%d next:%d len:%d docId(%d):%d ", "CIPayloadData.c", 617, "*(PositionInfoRef*)posStart < positions->_info_next.infoptr", v108, v109, &v51[v50], v110, v111, *(a1 + 272), v46, v50, v45, v52);
                free(v107);
                if (__valid_fs(-1))
                {
                  MEMORY[0xBAD] = -559038737;
                  abort();
                }

                MEMORY[0xC00] = -559038737;
                abort();
              }

              v46 = *v64;
              v70 = atomic_load((a1 + 268));
              if (v46 >= v70)
              {
LABEL_145:
                v103 = __si_assert_copy_extra(0);
                __message_assert("%s:%u: failed assertion '%s' %s ");
                goto LABEL_148;
              }

              ++v47;
              v48 = v52;
              if (!v46)
              {
                goto LABEL_98;
              }
            }
          }

          v46 = *(v42 + 4);
          v45 = a6;
          if (v46)
          {
            goto LABEL_47;
          }

LABEL_98:
          atomic_store(v139, (a1 + 268));
          v71 = *(&v148 + 1);
          v72 = *(&v148 + 1) + 21;
          v8 = v134;
          v73 = v134[1];
          if (*(&v148 + 1) + 21 <= (v73 - *v134) || v152)
          {
            v75 = *(&v151 + 1);
            v17 = v141 + 1;
            v6 = v133;
            v16 = v142;
            goto LABEL_118;
          }

          if (v141 && (PayloadWritePulseHeader(&v150, v134, v142 - v73, v143), v152))
          {
            v74 = 1;
          }

          else
          {
            v76 = growPayloadData(v134);
            v152 = v76;
            v74 = v76 != 0;
          }

          v6 = v133;
          v16 = v134[1];
          v77 = v16 - *v134;
          v78 = *(&v150 + 1);
          v75 = v77;
          if (v77 >= *(&v150 + 1))
          {
            v75 = *(&v150 + 1);
          }

          *&v151 = v75;
          *(&v151 + 1) = v75;
          v17 = 1;
          if (v72 > v77)
          {
            v73 = v16;
            if (v74)
            {
              goto LABEL_118;
            }

            do
            {
              v79 = growPayloadData(v134);
              v16 = v134[1];
              v75 = v16 - *v134;
            }

            while (v72 > v75 && v79 == 0);
            if (v75 >= v78)
            {
              v75 = v78;
            }

            else
            {
              v75 = v75;
            }

            *&v151 = v75;
            *(&v151 + 1) = v75;
            v152 = v79;
            v17 = 1;
          }

          v73 = v16;
LABEL_118:
          if (v75 < 2)
          {
            _PayloadWriteData(&v150, v134, &v146, 1);
            v81 = *(&v151 + 1);
          }

          else
          {
            v134[1] = v73 - 1;
            v81 = v75 - 1;
            *(&v151 + 1) = v81;
            *(v150 + v81) = v146;
          }

          v82 = v149;
          v83 = v81 <= v71;
          v84 = v81 - v71;
          if (v83)
          {
            _PayloadWriteData(&v150, v134, v149, v71);
          }

          else
          {
            v134[1] -= v71;
            *(&v151 + 1) = v84;
            memcpy((v150 + v84), v82, v71);
          }

          v85 = v134[1] + v140;
          a4 = v132;
          if (v85 >> 62)
          {
            v115 = __si_assert_copy_extra_2708(0);
            v103 = v115;
            v116 = "";
            if (v115)
            {
              v116 = v115;
            }

            __message_assert("%s:%u: failed assertion '%s' %s write invalid offset %llu", "TermIdStore.h", 97, "offset <= OFFSET_VALUE_MASK", v116, v85);
            goto LABEL_164;
          }

          bit_vector_set_2766(v134 + 558, v138 / *MEMORY[0x1E69E9AC8], 1u);
          *storageResolvePtr((v134 + 5), v138, 8, 1) = v85;
          v37 = v152 == 0;
          v18 = v137;
          if (v137 >= v6)
          {
LABEL_129:
            if (v17)
            {
              PayloadWritePulseHeader(&v150, v8, v16 - v8[1], v136);
            }

            goto LABEL_131;
          }

LABEL_124:
          if (!v37)
          {
            goto LABEL_129;
          }
        }

        *v149 = BYTE2(v38) | 0xC0;
        v39[1] = BYTE1(v38);
        v39[2] = v38;
        v40 = 3;
        v41 = 3;
        if (!v30)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

LABEL_131:
      free(v150);
      free(v149);
      v86 = *__error();
      v87 = _SILogForLogForCategory(10);
      v88 = 2 * (dword_1EBF46AF4 < 4);
      if (os_log_type_enabled(v87, v88))
      {
        v89 = CFAbsoluteTimeGetCurrent() - Current;
        *buf = 134217984;
        *&buf[4] = v89;
        _os_log_impl(&dword_1C278D000, v87, v88, "flush positions %f", buf, 0xCu);
      }

      *__error() = v86;
      *buf = 0;
      v90 = _fd_acquire_fd(v8[561], buf);
      v91 = v8[1];
      v92 = MEMORY[0x1E69E9AB8];
      v93 = v135 - v91;
      if (v135 > v91)
      {
        goto LABEL_137;
      }

      v94 = *v8;
      if (*v8 != v131)
      {
        v95 = v131 & ~*MEMORY[0x1E69E9AB8];
        v96 = v94 - v95;
        v97 = mmap(0, v94 - v95, 1, 1025, v90, v95);
        sync_invalidate_mapping(v97, v96);
        munmap(v97, v96);
        v91 = v8[1];
      }

      v98 = v8[3];
      v93 = v98 - v91;
      if (v98 != v91)
      {
LABEL_137:
        v99 = v91 & ~*v92;
        v100 = v91 - v99;
        v101 = mmap(0, v91 - v99 + v93, 1, 1025, v90, v99);
        sync_invalidate_mapping(v101, v100 + v93);
        munmap(v101, v100 + v93);
      }

      fsync(v90);
      _fd_release_fd(v8[561], v90, 0, *buf);
      result = v152;
    }
  }

  else
  {
    result = 0;
  }

  v102 = *MEMORY[0x1E69E9840];
  return result;
}

int *_PayloadWriteData(int *result, void *a2, char *a3, int64_t a4)
{
  v5 = result;
  v6 = &a3[a4];
  if (a4)
  {
    v7 = a4;
    do
    {
      if (*(v5 + 4))
      {
        break;
      }

      v9 = *(v5 + 3);
      if (v7 >= v9)
      {
        v10 = *(v5 + 3);
      }

      else
      {
        v10 = v7;
      }

      a2[1] -= v10;
      v11 = v9 - v10;
      *(v5 + 3) = v11;
      v6 -= v10;
      result = memcpy((*v5 + v11), v6, v10);
      if (!*(v5 + 3))
      {
        result = PayloadWriteBufferWrite(v5, a2);
      }

      v7 -= v10;
    }

    while (v7);
  }

  if (v6 != a3 && !*(v5 + 4))
  {
    v12 = __si_assert_copy_extra_2708(0);
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "JHPayload.h", 146, "src == ptr || wb->err", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

uint64_t ___qsort_termids_block_invoke(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a3 > *a2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t mergeRangeCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (HIDWORD(v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 << 6;
  }

  if ((v2 - 0x100000000) > 0xFFFFFFFF00000000)
  {
    if (v4)
    {
      if (v2 << 6 > v4)
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = 1;
    if (!v4)
    {
      if (*a1 > *a2)
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

void TrieMergeCleanup(uint64_t *a1)
{
  if (*(a1 + 49) == 1)
  {
    v2 = *a1;
    pthread_mutex_lock((*a1 + 4600));
    *(v2 + 4804) = 0;
    v3 = *(v2 + 4776);
    *(v2 + 4776) = 0u;
    v4 = *(v2 + 4796) != 0;
    *(v2 + 4812) = 0;
    db_rwlock_wakeup(v2 + 4600, v4, 0);
    pthread_mutex_unlock((v2 + 4600));
    if (v3)
    {
      pthread_override_qos_class_end_np(v3);
    }
  }

  if (*(a1 + 48) == 1)
  {
    v5 = a1[1];
    pthread_mutex_lock((v5 + 304));
    v6 = *(v5 + 500) - 1;
    *(v5 + 500) = v6;
    if (!v6)
    {
      db_rwlock_wakeup(v5 + 304, 0, 0);
    }

    pthread_mutex_unlock((v5 + 304));
  }

  free(a1[2]);
  free(a1[3]);
  free(a1[4]);
  free(a1[5]);

  free(a1);
}

void __trie_resolve_fuzzy_transition_block_invoke(uint64_t a1, unint64_t a2, char *a3, int a4)
{
  v5 = a1 + 64;
  v6 = *(a1 + 32);
  *(v6 + 1272) = v5;
  findAddFlatBucket(v6, a2, *(a1 + 48), *(a1 + 56), a3, a4);
  *(*(a1 + 32) + 1272) = 0;
}

void __trie_resolve_fuzzy_transition_block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, const void *a4, int a5)
{
  v10 = (*(a1 + 48) + a5);
  v11 = malloc_type_zone_malloc(queryZone, (v10 + 1), 0xA4971684uLL);
  if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    LOWORD(v17) = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", &v17, 2u);
  }

  memcpy(v11, *(a1 + 40), *(a1 + 48));
  memcpy(&v11[*(a1 + 48)], a4, a5);
  v11[v10] = 0;
  if (a3)
  {
    v12 = la_new_state_from_state_with_char_at_index(*(*(a1 + 88) + 1264), *(a1 + 56), *(a1 + 64), (*(a3 + 16) + *(a1 + 64)));
    *&v17 = v12;
    *(&v17 + 1) = v13;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = *(a1 + 72);
    v12 = v17;
    if (!v17)
    {
LABEL_10:
      free(v11);
      return;
    }
  }

  if (!HIDWORD(a2))
  {
    v14 = *(a1 + 88);
    *(v14 + 1272) = &v17;
    findAddFlatBucket(v14, a2, v11, v10, 0, 0);
    *(*(a1 + 88) + 1272) = 0;
    goto LABEL_10;
  }

  v15 = *(a1 + 96);
  v16 = *(&v17 + 1);

  trie_level_list_insert_with_state(v15, a2, v11, v10, v12, v16);
}

uint64_t _trie_resolve_sub_trie(uint64_t result, unint64_t a2, char **a3, uint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (!a2)
  {
    return result;
  }

  if (a3 && *(a3 + 18))
  {
    v13 = result;
    if (*(a3 + 16) != 255)
    {
      v14 = a2;
      v15 = a6;
      result = (*(a8 + 16))(a8);
      a6 = v15;
      a2 = v14;
    }

    v16 = HIDWORD(a2);
    if (!HIDWORD(a2))
    {
      v17 = *(a7 + 16);

      return v17();
    }

    v19 = *(a3 + 18);
    if (a6)
    {
      if (!*(a3 + 18) || (**a3 & 0x80000000) == 0)
      {
        v20 = 0;
        v21 = 0;
        while (1)
        {
          if (v16 == 1)
          {
            result = mgetBase(v13, v8);
            v23 = (result + 4);
            if ((*(result + 4 + 4 * (v20 >> 5)) >> v20))
            {
              if (v20 >= 0x40)
              {
                v26 = vcnt_s8(*v23);
                v26.i16[0] = vaddlv_u8(v26);
                v24 = v26.u32[0];
              }

              else
              {
                v24 = 0;
              }

              v27 = vcnt_s8((*&v23[v20 >> 6] & ~(-1 << v20)));
              v27.i16[0] = vaddlv_u8(v27);
              v22 = *(result + 38 + 4 * (v27.u32[0] + v24));
              goto LABEL_28;
            }
          }

          else if (v16 == 3)
          {
            v22 = *(*(v13 + 8) + 1028 * v8 + 4 + 4 * v20);
LABEL_28:
            v28 = v22 >> 1;
            v29 = v22 >> 3;
            v30 = (v22 & 7) << 32;
            if ((v22 & 3) == 1)
            {
              v30 = 0x100000000;
              v29 = v22 >> 2;
            }

            v31 = (v22 & 1) == 0;
            if (v22)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }

            if (!v31)
            {
              v28 = v29;
            }

            v25 = v32 | v28;
            goto LABEL_36;
          }

          v25 = 0;
LABEL_36:
          *(a4 + a5) = tcmr[v20];
          if (v21 < *(a3 + 18) && v20 == (*a3)[v21])
          {
            if (v25)
            {
              result = _trie_resolve_sub_trie(v13, v25, *&a3[1][8 * v21], a4, (a5 + 1), 1, a7, a8);
            }

            ++v21;
          }

          else if (v25)
          {
            result = (*(a8 + 16))(a8, v25, 0, a4, (a5 + 1));
          }

          if (++v20 == 128)
          {
            return result;
          }
        }
      }
    }

    else if (!*(a3 + 18))
    {
      return result;
    }

    v33 = 0;
    while (1)
    {
      v36 = (*a3)[v33];
      if (v16 != 1)
      {
        if (v16 != 3)
        {
          goto LABEL_46;
        }

        v37 = *(*(v13 + 8) + 1028 * v8 + 4 * v36 + 4);
        v38 = v37 >> 3;
        v39 = (v37 & 7) << 32;
        if ((v37 & 3) == 1)
        {
          v38 = v37 >> 2;
          v39 = 0x100000000;
        }

        v31 = (*(*(v13 + 8) + 1028 * v8 + 4 * v36 + 4) & 1) == 0;
        v35 = (v37 & 1) != 0 ? v38 : v37 >> 1;
        v34 = (*(*(v13 + 8) + 1028 * v8 + 4 * v36 + 4) & 1) != 0 ? v39 : 0;
        if (!v35)
        {
          goto LABEL_46;
        }

LABEL_45:
        *(a4 + a5) = tcmr[v36];
        result = _trie_resolve_sub_trie(v13, v34 | v35, *&a3[1][8 * v33], a4, (a5 + 1), 0, a7, a8);
        goto LABEL_46;
      }

      result = mgetBase(v13, v8);
      v40 = (result + 4);
      if (((*(result + 4 + ((v36 >> 3) & 0x1C)) >> v36) & 1) == 0)
      {
        goto LABEL_46;
      }

      v41 = 0;
      v42 = v36 >> 6;
      if ((v36 >> 6) > 1)
      {
        break;
      }

      v43 = v36 >> 6;
      if (v42)
      {
        goto LABEL_66;
      }

LABEL_67:
      v47 = vcnt_s8((*&v40[v42] & ~(-1 << v36)));
      v47.i16[0] = vaddlv_u8(v47);
      v48 = *(result + 38 + 4 * (v47.u32[0] + v43));
      if (v48)
      {
        if ((v48 & 3) == 1)
        {
          v35 = v48 >> 2;
          v34 = 0x100000000;
          if (!(v48 >> 2))
          {
            goto LABEL_46;
          }
        }

        else
        {
          v35 = v48 >> 3;
          v34 = (v48 & 7) << 32;
          if (!(v48 >> 3))
          {
            goto LABEL_46;
          }
        }

        goto LABEL_45;
      }

      v34 = 0;
      v35 = v48 >> 1;
      if (v48 >> 1)
      {
        goto LABEL_45;
      }

LABEL_46:
      if (++v33 >= *(a3 + 18))
      {
        return result;
      }
    }

    if (v42 != 2)
    {
      v44 = vcnt_s8(*(result + 20));
      v44.i16[0] = vaddlv_u8(v44);
      v41 = v44.u32[0];
    }

    v45 = vcnt_s8(*(result + 12));
    v45.i16[0] = vaddlv_u8(v45);
    v41 += v45.u32[0];
LABEL_66:
    v46 = vcnt_s8(*v40);
    v46.i16[0] = vaddlv_u8(v46);
    v43 = v46.u32[0] + v41;
    goto LABEL_67;
  }

  v18 = *(a8 + 16);

  return v18(a8);
}

void _trie_resolve_combining(uint64_t a1, unint64_t *a2, int *a3)
{
  v138 = 204;
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = HIDWORD(*a2);
  if (v8 == 3)
  {
    v13 = *(*(v6 + 8) + 1028 * v7 + 136);
    v14 = v13 >> 1;
    v15 = v13 >> 3;
    v16 = v13 & 7;
    if ((v13 & 3) == 1)
    {
      v16 = 1;
      v15 = v13 >> 2;
    }

    v17 = (v13 & 1) == 0;
    if (v13)
    {
      v12 = v16;
    }

    else
    {
      v12 = 0;
    }

    if (!v17)
    {
      v14 = v15;
    }

    if (v14)
    {
LABEL_15:
      if (v12)
      {
        v18 = 128;
        do
        {
          BYTE1(v138) = v18;
          v19 = *(a2 + 1);
          v135 = *a2;
          v136 = v19;
          v137 = a2[4];
          trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
          v20 = v18++ >= 0xBF;
        }

        while (!v20);
      }

      else
      {
        v21 = *(a2 + 1);
        v135 = *a2;
        v136 = v21;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 1, a3);
      }
    }
  }

  else if (v8 == 1)
  {
    v9 = mgetBase(v6, v7);
    if ((*(v9 + 8) & 2) != 0)
    {
      v10 = vcnt_s8((*(v9 + 4) & 0x1FFFFFFFFLL));
      v10.i16[0] = vaddlv_u8(v10);
      v11 = *(v9 + 4 * v10.u32[0] + 38);
      if (v11)
      {
        if ((*(v9 + 4 * v10.u32[0] + 38) & 3) == 1)
        {
          if (!(v11 >> 2))
          {
            goto LABEL_21;
          }

          v12 = 1;
        }

        else
        {
          if (!(v11 >> 3))
          {
            goto LABEL_21;
          }

          v12 = *(v9 + 4 * v10.u32[0] + 38) & 7;
        }
      }

      else
      {
        if (!(v11 >> 1))
        {
          goto LABEL_21;
        }

        v12 = 0;
      }

      goto LABEL_15;
    }
  }

LABEL_21:
  LOBYTE(v138) = -51;
  v22 = *(a1 + 8);
  v23 = *a2;
  v24 = HIDWORD(*a2);
  if (v24 == 3)
  {
    v29 = *(*(v22 + 8) + 1028 * v23 + 140);
    v30 = v29 >> 1;
    v31 = v29 >> 3;
    v32 = v29 & 7;
    if ((v29 & 3) == 1)
    {
      v32 = 1;
      v31 = v29 >> 2;
    }

    v33 = (v29 & 1) == 0;
    if (v29)
    {
      v28 = v32;
    }

    else
    {
      v28 = 0;
    }

    if (!v33)
    {
      v30 = v31;
    }

    if (v30)
    {
LABEL_35:
      if (v28)
      {
        v34 = 128;
        do
        {
          BYTE1(v138) = v34;
          v35 = *(a2 + 1);
          v135 = *a2;
          v136 = v35;
          v137 = a2[4];
          trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
          v20 = v34++ >= 0xDF;
        }

        while (!v20);
      }

      else
      {
        v36 = *(a2 + 1);
        v135 = *a2;
        v136 = v36;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 1, a3);
      }
    }
  }

  else if (v24 == 1)
  {
    v25 = mgetBase(v22, v23);
    if ((*(v25 + 8) & 4) != 0)
    {
      v26 = vcnt_s8((*(v25 + 4) & 0x3FFFFFFFFLL));
      v26.i16[0] = vaddlv_u8(v26);
      v27 = *(v25 + 4 * v26.u32[0] + 38);
      if (v27)
      {
        if ((*(v25 + 4 * v26.u32[0] + 38) & 3) == 1)
        {
          if (!(v27 >> 2))
          {
            goto LABEL_41;
          }

          v28 = 1;
        }

        else
        {
          if (!(v27 >> 3))
          {
            goto LABEL_41;
          }

          v28 = *(v25 + 4 * v26.u32[0] + 38) & 7;
        }
      }

      else
      {
        if (!(v27 >> 1))
        {
          goto LABEL_41;
        }

        v28 = 0;
      }

      goto LABEL_35;
    }
  }

LABEL_41:
  LOBYTE(v138) = 45;
  v37 = *(a2 + 1);
  v135 = *a2;
  v136 = v37;
  v137 = a2[4];
  trie_resolve_sub_string(a1, &v135, &v138, 1, a3);
  LOWORD(v138) = -32542;
  BYTE2(v138) = -112;
  v38 = *(a2 + 1);
  v135 = *a2;
  v136 = v38;
  v137 = a2[4];
  trie_resolve_sub_string(a1, &v135, &v138, 3, a3);
  LOBYTE(v138) = -42;
  v39 = *(a1 + 8);
  v40 = *a2;
  v41 = HIDWORD(*a2);
  if (v41 == 3)
  {
    v49 = *(*(v39 + 8) + 1028 * v40 + 860);
    v50 = v49 >> 1;
    v51 = v49 >> 3;
    v52 = v49 & 7;
    if ((v49 & 3) == 1)
    {
      v52 = 1;
      v51 = v49 >> 2;
    }

    v53 = (v49 & 1) == 0;
    if (v49)
    {
      v48 = v52;
    }

    else
    {
      v48 = 0;
    }

    if (!v53)
    {
      v50 = v51;
    }

    if (v50)
    {
LABEL_55:
      if (v48)
      {
        v54 = 145;
        do
        {
          BYTE1(v138) = v54;
          v55 = *(a2 + 1);
          v135 = *a2;
          v136 = v55;
          v137 = a2[4];
          trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
          v20 = v54++ >= 0xBF;
        }

        while (!v20);
      }

      else
      {
        v56 = *(a2 + 1);
        v135 = *a2;
        v136 = v56;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 1, a3);
      }
    }
  }

  else if (v41 == 1)
  {
    v42 = mgetBase(v39, v40);
    if ((*(v42 + 30) & 0x40) != 0)
    {
      v43 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v42 + 12))))));
      v44 = vcnt_s8(*(v42 + 4));
      v44.i16[0] = vaddlv_u8(v44);
      v45 = v44.u32[0] + *&v43;
      v43.i32[0] = *(v42 + 28) & 0x3FFFFF;
      v46 = vcnt_s8(v43);
      v46.i16[0] = vaddlv_u8(v46);
      v47 = *(v42 + 4 * (v46.u32[0] + v45) + 38);
      if (v47)
      {
        if ((v47 & 3) == 1)
        {
          if (!(v47 >> 2))
          {
            goto LABEL_61;
          }

          v48 = 1;
        }

        else
        {
          if (!(v47 >> 3))
          {
            goto LABEL_61;
          }

          v48 = v47 & 7;
        }
      }

      else
      {
        if (!(v47 >> 1))
        {
          goto LABEL_61;
        }

        v48 = 0;
      }

      goto LABEL_55;
    }
  }

LABEL_61:
  LOBYTE(v138) = -41;
  v57 = *(a1 + 8);
  v58 = *a2;
  v59 = HIDWORD(*a2);
  if (v59 != 3)
  {
    if (v59 != 1)
    {
      goto LABEL_79;
    }

    v60 = mgetBase(v57, v58);
    if ((*(v60 + 30) & 0x80) == 0)
    {
      goto LABEL_79;
    }

    v61 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v60 + 12))))));
    v62 = vcnt_s8(*(v60 + 4));
    v62.i16[0] = vaddlv_u8(v62);
    v63 = v62.u32[0] + *&v61;
    v61.i32[0] = *(v60 + 28) & 0x7FFFFF;
    v64 = vcnt_s8(v61);
    v64.i16[0] = vaddlv_u8(v64);
    v65 = *(v60 + 4 * (v64.u32[0] + v63) + 38);
    if (v65)
    {
      if ((v65 & 3) == 1)
      {
        if (!(v65 >> 2))
        {
          goto LABEL_79;
        }

        v66 = 1;
      }

      else
      {
        if (!(v65 >> 3))
        {
          goto LABEL_79;
        }

        v66 = v65 & 7;
      }
    }

    else
    {
      if (!(v65 >> 1))
      {
        goto LABEL_79;
      }

      v66 = 0;
    }

    goto LABEL_75;
  }

  v67 = *(*(v57 + 8) + 1028 * v58 + 864);
  v68 = v67 >> 1;
  v69 = v67 >> 3;
  v70 = v67 & 7;
  if ((v67 & 3) == 1)
  {
    v70 = 1;
    v69 = v67 >> 2;
  }

  v71 = (v67 & 1) == 0;
  if (v67)
  {
    v66 = v70;
  }

  else
  {
    v66 = 0;
  }

  if (!v71)
  {
    v68 = v69;
  }

  if (v68)
  {
LABEL_75:
    if (v66)
    {
      BYTE1(v138) = 0x80;
      v72 = *(a2 + 1);
      v135 = *a2;
      v136 = v72;
      v137 = a2[4];
      trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
      BYTE1(v138) = -127;
      v73 = *(a2 + 1);
      v135 = *a2;
      v136 = v73;
      v137 = a2[4];
      trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
      BYTE1(v138) = -126;
      v74 = *(a2 + 1);
      v135 = *a2;
      v136 = v74;
      v137 = a2[4];
      trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
      BYTE1(v138) = -125;
      v75 = *(a2 + 1);
      v135 = *a2;
      v136 = v75;
      v137 = a2[4];
      trie_resolve_sub_string(a1, &v135, &v138, 2, a3);
      BYTE1(v138) = -124;
      v76 = *(a2 + 1);
      v135 = *a2;
      v136 = v76;
      v137 = a2[4];
      v77 = a1;
      v78 = 2;
    }

    else
    {
      v79 = *(a2 + 1);
      v135 = *a2;
      v136 = v79;
      v137 = a2[4];
      v77 = a1;
      v78 = 1;
    }

    trie_resolve_sub_string(v77, &v135, &v138, v78, a3);
  }

LABEL_79:
  LOWORD(v138) = -32029;
  v80 = *(a1 + 8);
  v81 = *a2;
  v82 = HIDWORD(*a2);
  if (v82 == 3)
  {
    v89 = *(*(v80 + 8) + 1028 * v81 + 912);
    v90 = v89 & 7;
    v91 = v89 >> 2;
    if ((v89 & 3) == 1)
    {
      v90 = 1;
    }

    else
    {
      v91 = v89 >> 3;
    }

    if (v89)
    {
      v88 = v90;
    }

    else
    {
      v88 = 0;
    }

    if (v89)
    {
      v87 = v91;
    }

    else
    {
      v87 = v89 >> 1;
    }

    if (!v87)
    {
      goto LABEL_150;
    }
  }

  else
  {
    if (v82 != 1)
    {
      goto LABEL_150;
    }

    v83 = mgetBase(*(a1 + 8), v81);
    if ((*(v83 + 32) & 8) == 0)
    {
      goto LABEL_150;
    }

    v84 = vcnt_s8(*(v83 + 4));
    v84.i16[0] = vaddlv_u8(v84);
    v85 = vcnt_s8((*(v83 + 28) & 0x7FFFFFFFFLL));
    v85.i16[0] = vaddlv_u8(v85);
    v86 = *(v83 + 4 * (v85.u32[0] + v84.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v83 + 12))))))) + 38);
    if (v86)
    {
      if ((v86 & 3) == 1)
      {
        v87 = v86 >> 2;
        if (!(v86 >> 2))
        {
          goto LABEL_150;
        }

        v88 = 1;
      }

      else
      {
        v87 = v86 >> 3;
        if (!(v86 >> 3))
        {
          goto LABEL_150;
        }

        v88 = v86 & 7;
      }
    }

    else
    {
      v87 = v86 >> 1;
      if (!(v86 >> 1))
      {
        goto LABEL_150;
      }

      v88 = 0;
    }
  }

  if (!v88)
  {
    v102 = 1;
    goto LABEL_148;
  }

  if (v88 != 1)
  {
    if (v88 != 3)
    {
      goto LABEL_150;
    }

    v92 = *(*(v80 + 8) + 1028 * v87 + 524);
    if (v92)
    {
      if ((v92 & 3) == 1)
      {
        if (!(v92 >> 2))
        {
          goto LABEL_150;
        }

        v93 = 1;
      }

      else
      {
        if (!(v92 >> 3))
        {
          goto LABEL_150;
        }

        v93 = v92 & 7;
      }
    }

    else
    {
      if (!(v92 >> 1))
      {
        goto LABEL_150;
      }

      v93 = 0;
    }

    goto LABEL_145;
  }

  v94 = mgetBase(v80, v87);
  if ((*(v94 + 20) & 4) != 0)
  {
    v95.i32[0] = *(v94 + 20) & 3;
    v96 = vcnt_s8(v95);
    v96.i16[0] = vaddlv_u8(v96);
    v97 = *(v94 + 4 * (v96.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v94 + 4))))))) + 38);
    v98 = v97 >> 1;
    v99 = v97 >> 2;
    if ((v97 & 3) == 1)
    {
      v100 = 1;
    }

    else
    {
      v100 = v97 & 7;
    }

    if ((v97 & 3) != 1)
    {
      v99 = v97 >> 3;
    }

    v101 = (v97 & 1) == 0;
    if (v97)
    {
      v93 = v100;
    }

    else
    {
      v93 = 0;
    }

    if (!v101)
    {
      v98 = v99;
    }

    if (v98)
    {
LABEL_145:
      if (v93)
      {
        BYTE2(v138) = -103;
        v103 = *(a2 + 1);
        v135 = *a2;
        v136 = v103;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 3, a3);
        BYTE2(v138) = -102;
        v104 = *(a2 + 1);
        v135 = *a2;
        v136 = v104;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 3, a3);
        BYTE2(v138) = -101;
        v105 = *(a2 + 1);
        v135 = *a2;
        v136 = v105;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 3, a3);
        BYTE2(v138) = -100;
        v106 = *(a2 + 1);
        v135 = *a2;
        v136 = v106;
        v137 = a2[4];
        v107 = a1;
        v102 = 3;
LABEL_149:
        trie_resolve_sub_string(v107, &v135, &v138, v102, a3);
        goto LABEL_150;
      }

      v102 = 2;
LABEL_148:
      v108 = *(a2 + 1);
      v135 = *a2;
      v136 = v108;
      v137 = a2[4];
      v107 = a1;
      goto LABEL_149;
    }
  }

LABEL_150:
  LOWORD(v138) = -16657;
  v109 = *(a1 + 8);
  v110 = *a2;
  v111 = HIDWORD(*a2);
  if (v111 == 3)
  {
    v118 = *(*(v109 + 8) + 1028 * v110 + 960);
    v119 = v118 & 7;
    v120 = v118 >> 2;
    if ((v118 & 3) == 1)
    {
      v119 = 1;
    }

    else
    {
      v120 = v118 >> 3;
    }

    if (v118)
    {
      v117 = v119;
    }

    else
    {
      v117 = 0;
    }

    if (v118)
    {
      v116 = v120;
    }

    else
    {
      v116 = v118 >> 1;
    }

    if (!v116)
    {
      return;
    }
  }

  else
  {
    if (v111 != 1)
    {
      return;
    }

    v112 = mgetBase(*(a1 + 8), v110);
    if ((*(v112 + 33) & 0x80) == 0)
    {
      return;
    }

    v113 = vcnt_s8(*(v112 + 4));
    v113.i16[0] = vaddlv_u8(v113);
    v114 = vcnt_s8((*(v112 + 28) & 0x7FFFFFFFFFFFLL));
    v114.i16[0] = vaddlv_u8(v114);
    v115 = *(v112 + 4 * (v114.u32[0] + v113.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v112 + 12))))))) + 38);
    if (v115)
    {
      if ((v115 & 3) == 1)
      {
        v116 = v115 >> 2;
        if (!(v115 >> 2))
        {
          return;
        }

        v117 = 1;
      }

      else
      {
        v116 = v115 >> 3;
        if (!(v115 >> 3))
        {
          return;
        }

        v117 = v115 & 7;
      }
    }

    else
    {
      v116 = v115 >> 1;
      if (!(v115 >> 1))
      {
        return;
      }

      v117 = 0;
    }
  }

  if (!v117)
  {
    v130 = 1;
    goto LABEL_199;
  }

  if (v117 != 1)
  {
    if (v117 != 3)
    {
      return;
    }

    v121 = *(*(v109 + 8) + 1028 * v116 + 764);
    if (v121)
    {
      if ((v121 & 3) == 1)
      {
        if (!(v121 >> 2))
        {
          return;
        }

        v122 = 1;
      }

      else
      {
        if (!(v121 >> 3))
        {
          return;
        }

        v122 = v121 & 7;
      }
    }

    else
    {
      if (!(v121 >> 1))
      {
        return;
      }

      v122 = 0;
    }

    goto LABEL_196;
  }

  v123 = mgetBase(v109, v116);
  if ((*(v123 + 27) & 0x40) != 0)
  {
    v124 = vcnt_s8((*(v123 + 20) & 0x3FFFFFFFFFFFFFFFLL));
    v124.i16[0] = vaddlv_u8(v124);
    v125 = *(v123 + 4 * (v124.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v123 + 4))))))) + 38);
    v126 = v125 >> 1;
    v127 = v125 >> 2;
    if ((v125 & 3) == 1)
    {
      v128 = 1;
    }

    else
    {
      v128 = v125 & 7;
    }

    if ((v125 & 3) != 1)
    {
      v127 = v125 >> 3;
    }

    v129 = (v125 & 1) == 0;
    v122 = (v125 & 1) != 0 ? v128 : 0;
    if (!v129)
    {
      v126 = v127;
    }

    if (v126)
    {
LABEL_196:
      if (v122)
      {
        BYTE2(v138) = -98;
        v131 = *(a2 + 1);
        v135 = *a2;
        v136 = v131;
        v137 = a2[4];
        trie_resolve_sub_string(a1, &v135, &v138, 3, a3);
        BYTE2(v138) = -97;
        v132 = *(a2 + 1);
        v135 = *a2;
        v136 = v132;
        v137 = a2[4];
        v133 = a1;
        v130 = 3;
LABEL_200:
        trie_resolve_sub_string(v133, &v135, &v138, v130, a3);
        return;
      }

      v130 = 2;
LABEL_199:
      v134 = *(a2 + 1);
      v135 = *a2;
      v136 = v134;
      v137 = a2[4];
      v133 = a1;
      goto LABEL_200;
    }
  }
}

void _trie_resolve_sub_string_ignore_diacritics(uint64_t a1, __int128 *a2, unsigned __int8 *a3, int a4, int *a5, char *a6, int a7)
{
  if (!a4)
  {
    return;
  }

  v10 = 0;
  v11 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*a3 >> 4];
  v12 = *(a1 + 8);
  v13 = HIDWORD(*a2);
  v14 = *a2;
  while (1)
  {
    if (v13 == 3)
    {
      v21 = *(*(v12 + 8) + 1028 * v14 + 4 * *(&tcm + a3[v10]) + 4);
      if (v21)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    if (v13 != 1)
    {
      break;
    }

    v15 = mgetBase(v12, v14);
    v16 = *(&tcm + a3[v10]);
    v17 = (v15 + 4);
    if (((*(v15 + 4 + ((v16 >> 3) & 0x1C)) >> v16) & 1) == 0)
    {
      return;
    }

    v18 = 0;
    v19 = v16 >> 6;
    if ((v16 >> 6) > 1)
    {
      if (v19 != 2)
      {
        v22 = vcnt_s8(*(v15 + 20));
        v22.i16[0] = vaddlv_u8(v22);
        v18 = v22.u32[0];
      }

      v23 = vcnt_s8(*(v15 + 12));
      v23.i16[0] = vaddlv_u8(v23);
      v18 += v23.u32[0];
LABEL_16:
      v24 = vcnt_s8(*v17);
      v24.i16[0] = vaddlv_u8(v24);
      v20 = v24.u32[0] + v18;
      goto LABEL_17;
    }

    v20 = v16 >> 6;
    if (v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v25 = vcnt_s8((*&v17[v19] & ~(-1 << v16)));
    v25.i16[0] = vaddlv_u8(v25);
    v21 = *(v15 + 38 + 4 * (v25.u32[0] + v20));
    if (v21)
    {
LABEL_18:
      if ((v21 & 3) == 1)
      {
        v14 = v21 >> 2;
        if (!(v21 >> 2))
        {
          return;
        }

        v13 = 1;
      }

      else
      {
        v14 = v21 >> 3;
        if (!(v21 >> 3))
        {
          return;
        }

        v13 = v21 & 7;
      }

      goto LABEL_3;
    }

LABEL_11:
    v14 = v21 >> 1;
    if (!(v21 >> 1))
    {
      return;
    }

    v13 = 0;
LABEL_3:
    if (v11 == ++v10)
    {
      LODWORD(v10) = v11;
      if (v11)
      {
        goto LABEL_28;
      }

      return;
    }
  }

  if (v13)
  {
    return;
  }

  if (!v14)
  {
    return;
  }

  v13 = 0;
  if (!v10)
  {
    return;
  }

LABEL_28:
  v26 = v14;
  memcpy(&a6[a7], a3, v10);
  v27 = v10 + a7;
  if (!v13)
  {
    v31 = a1;
    v32 = *(a2 + 1);
    v33 = *(a2 + 4);
    v34 = v27;
    v35 = v26;
    v36 = a6;
    goto LABEL_38;
  }

  if (v10 != v11)
  {
    return;
  }

  if (a4 == v11)
  {
    v28 = *(a2 + 4) + v27;
    if (v28 <= 4094)
    {
      v29 = malloc_type_zone_malloc(queryZone, v28 + 1, 0xA4971684uLL);
      if (!v29)
      {
        _log_fault_for_malloc_failure();
      }

      memcpy(v29, *(a2 + 1), *(a2 + 4));
      memcpy(&v29[*(a2 + 4)], a6, v27);
      v29[*(a2 + 4) + v27] = 0;
      v30 = *(a2 + 4) + v27;

      trie_level_list_insert_with_state(a5, v26 | (v13 << 32), v29, v30, 0, 0);
    }

    return;
  }

  *a2 = v26 | (v13 << 32);
  v37 = a2[1];
  v272 = *a2;
  v273 = v37;
  v274 = *(a2 + 4);
  _trie_resolve_sub_string_ignore_diacritics(a1, &v272, &a3[v11]);
  v38 = &a6[v27];
  a6[v27] = -52;
  v39 = *(a1 + 8);
  v261 = v27;
  v263 = &a6[v27];
  if (v13 == 3)
  {
    v40 = v26;
    v47 = *(*(v39 + 8) + 1028 * v26 + 136);
    v48 = v47 >> 3;
    v49 = v47 & 7;
    if ((v47 & 3) == 1)
    {
      v49 = 1;
      v48 = v47 >> 2;
    }

    if (v47)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    if (v47)
    {
      v51 = v48;
    }

    else
    {
      v51 = v47 >> 1;
    }

    if (!v51)
    {
      *v38 = -51;
      v52 = a1;
      v53 = *(a1 + 8);
      goto LABEL_118;
    }

    goto LABEL_70;
  }

  v40 = v26;
  if (v13 != 1)
  {
    goto LABEL_111;
  }

  v41 = mgetBase(v39, v26);
  v42 = *(&tcm + *v38);
  v43 = (v41 + 4);
  if (((*(v41 + 4 + ((v42 >> 3) & 0x1C)) >> v42) & 1) == 0)
  {
    goto LABEL_109;
  }

  v44 = 0;
  v45 = v42 >> 6;
  if ((v42 >> 6) > 1)
  {
    if (v45 != 2)
    {
      v54 = vcnt_s8(*(v41 + 20));
      v54.i16[0] = vaddlv_u8(v54);
      v44 = v54.u32[0];
    }

    v55 = vcnt_s8(*(v41 + 12));
    v55.i16[0] = vaddlv_u8(v55);
    v44 += v55.u32[0];
    goto LABEL_60;
  }

  v46 = v42 >> 6;
  if (v45)
  {
LABEL_60:
    v56 = vcnt_s8(*v43);
    v56.i16[0] = vaddlv_u8(v56);
    v46 = v56.u32[0] + v44;
  }

  v57 = vcnt_s8((*&v43[v45] & ~(-1 << v42)));
  v57.i16[0] = vaddlv_u8(v57);
  v58 = *(v41 + 38 + 4 * (v57.u32[0] + v46));
  if ((v58 & 1) == 0)
  {
    v51 = v58 >> 1;
    if (v58 >> 1)
    {
      v50 = 0;
      goto LABEL_69;
    }

LABEL_109:
    *v38 = -51;
    v52 = a1;
    v53 = *(a1 + 8);
    v40 = v26;
LABEL_113:
    v79 = mgetBase(v53, v40);
    v80 = *(&tcm + *v38);
    v81 = (v79 + 4);
    LODWORD(v27) = v261;
    if (((*(v79 + 4 + ((v80 >> 3) & 0x1C)) >> v80) & 1) == 0)
    {
      goto LABEL_179;
    }

    v82 = 0;
    v83 = v80 >> 6;
    if ((v80 >> 6) > 1)
    {
      if (v83 != 2)
      {
        v91 = vcnt_s8(*(v79 + 20));
        v91.i16[0] = vaddlv_u8(v91);
        v82 = v91.u32[0];
      }

      v92 = vcnt_s8(*(v79 + 12));
      v92.i16[0] = vaddlv_u8(v92);
      v82 += v92.u32[0];
    }

    else
    {
      v84 = v80 >> 6;
      if (!v83)
      {
LABEL_132:
        v94 = vcnt_s8((*&v81[v83] & ~(-1 << v80)));
        v94.i16[0] = vaddlv_u8(v94);
        v95 = *(v79 + 38 + 4 * (v94.u32[0] + v84));
        if ((v95 & 1) == 0)
        {
          v89 = v95 >> 1;
          if (v95 >> 1)
          {
            v88 = 0;
            goto LABEL_140;
          }

LABEL_179:
          *v38 = 45;
          v90 = *(v52 + 8);
          v40 = v26;
LABEL_195:
          v125 = mgetBase(v90, v40);
          v126 = *(&tcm + *v38);
          v127 = (v125 + 4);
          v121 = a6;
          if (((*(v125 + 4 + ((v126 >> 3) & 0x1C)) >> v126) & 1) == 0)
          {
            goto LABEL_214;
          }

          v128 = 0;
          v129 = v126 >> 6;
          if ((v126 >> 6) > 1)
          {
            if (v129 != 2)
            {
              v131 = vcnt_s8(*(v125 + 20));
              v131.i16[0] = vaddlv_u8(v131);
              v128 = v131.u32[0];
            }

            v132 = vcnt_s8(*(v125 + 12));
            v132.i16[0] = vaddlv_u8(v132);
            v128 += v132.u32[0];
          }

          else
          {
            v130 = v126 >> 6;
            if (!v129)
            {
LABEL_204:
              v134 = vcnt_s8((*&v127[v129] & ~(-1 << v126)));
              v134.i16[0] = vaddlv_u8(v134);
              v135 = *(v125 + 38 + 4 * (v134.u32[0] + v130));
              if ((v135 & 1) == 0)
              {
                v120 = v135 >> 1;
                if (v135 >> 1)
                {
                  v119 = 0;
                  goto LABEL_212;
                }

LABEL_214:
                *v38 = -30;
                v122 = v27 + 1;
                v267 = &a6[v122];
                *&a6[v122] = -28544;
                v264 = v27 + 2;
                v123 = *(v52 + 8);
                v124 = (v123 + 8);
                v40 = v26;
LABEL_219:
                v137 = mgetBase(v123, v40);
                v138 = *(&tcm + *v38);
                v139 = (v137 + 4);
                if (((*(v137 + 4 + ((v138 >> 3) & 0x1C)) >> v138) & 1) == 0)
                {
                  goto LABEL_252;
                }

                v140 = 0;
                v141 = v138 >> 6;
                if ((v138 >> 6) > 1)
                {
                  if (v141 != 2)
                  {
                    v150 = vcnt_s8(*(v137 + 20));
                    v150.i16[0] = vaddlv_u8(v150);
                    v140 = v150.u32[0];
                  }

                  v151 = vcnt_s8(*(v137 + 12));
                  v151.i16[0] = vaddlv_u8(v151);
                  v140 += v151.u32[0];
                }

                else
                {
                  v142 = v138 >> 6;
                  if (!v141)
                  {
LABEL_238:
                    v153 = vcnt_s8((*&v139[v141] & ~(-1 << v138)));
                    v153.i16[0] = vaddlv_u8(v153);
                    v154 = *(v137 + 38 + 4 * (v153.u32[0] + v142));
                    if ((v154 & 1) == 0)
                    {
                      v147 = v154 >> 1;
                      if (v154 >> 1)
                      {
                        v146 = 0;
                        goto LABEL_246;
                      }

LABEL_252:
                      *v38 = -42;
                      v148 = a1;
                      v149 = *(a1 + 8);
                      v40 = v26;
LABEL_318:
                      v187 = mgetBase(v149, v40);
                      v188 = *(&tcm + *v38);
                      v189 = (v187 + 4);
                      if (((*(v187 + 4 + ((v188 >> 3) & 0x1C)) >> v188) & 1) == 0)
                      {
                        goto LABEL_383;
                      }

                      v190 = 0;
                      v191 = v188 >> 6;
                      if ((v188 >> 6) > 1)
                      {
                        if (v191 != 2)
                        {
                          v199 = vcnt_s8(*(v187 + 20));
                          v199.i16[0] = vaddlv_u8(v199);
                          v190 = v199.u32[0];
                        }

                        v200 = vcnt_s8(*(v187 + 12));
                        v200.i16[0] = vaddlv_u8(v200);
                        v190 += v200.u32[0];
                      }

                      else
                      {
                        v192 = v188 >> 6;
                        if (!v191)
                        {
LABEL_336:
                          v202 = vcnt_s8((*&v189[v191] & ~(-1 << v188)));
                          v202.i16[0] = vaddlv_u8(v202);
                          v203 = *(v187 + 38 + 4 * (v202.u32[0] + v192));
                          if ((v203 & 1) == 0)
                          {
                            v197 = v203 >> 1;
                            if (v203 >> 1)
                            {
                              v196 = 0;
                              goto LABEL_344;
                            }

LABEL_383:
                            *v38 = -41;
                            v198 = *(v148 + 8);
                            v40 = v26;
LABEL_388:
                            v224 = mgetBase(v198, v40);
                            v225 = *(&tcm + *v38);
                            v226 = (v224 + 4);
                            if (((*(v224 + 4 + ((v225 >> 3) & 0x1C)) >> v225) & 1) == 0)
                            {
                              return;
                            }

                            v227 = 0;
                            v228 = v225 >> 6;
                            if ((v225 >> 6) > 1)
                            {
                              if (v228 != 2)
                              {
                                v235 = vcnt_s8(*(v224 + 20));
                                v235.i16[0] = vaddlv_u8(v235);
                                v227 = v235.u32[0];
                              }

                              v236 = vcnt_s8(*(v224 + 12));
                              v236.i16[0] = vaddlv_u8(v236);
                              v227 += v236.u32[0];
                            }

                            else
                            {
                              v229 = v225 >> 6;
                              if (!v228)
                              {
                                goto LABEL_406;
                              }
                            }

                            v237 = vcnt_s8(*v226);
                            v237.i16[0] = vaddlv_u8(v237);
                            v229 = v237.u32[0] + v227;
LABEL_406:
                            v238 = vcnt_s8((*&v226[v228] & ~(-1 << v225)));
                            v238.i16[0] = vaddlv_u8(v238);
                            v239 = *(v224 + 38 + 4 * (v238.u32[0] + v229));
                            if (v239)
                            {
                              if ((v239 & 3) == 1)
                              {
                                v234 = v239 >> 2;
                                if (!(v239 >> 2))
                                {
                                  return;
                                }

                                v233 = 1;
                              }

                              else
                              {
                                v234 = v239 >> 3;
                                if (!(v239 >> 3))
                                {
                                  return;
                                }

                                v233 = v239 & 7;
                              }
                            }

                            else
                            {
                              v234 = v239 >> 1;
                              if (!(v239 >> 1))
                              {
                                return;
                              }

                              v233 = 0;
                            }

LABEL_414:
                            if (v233)
                            {
                              v240 = 0x80u;
                              while (1)
                              {
                                *v267 = v240;
                                v241 = *(a1 + 8);
                                if (v233 != 3)
                                {
                                  break;
                                }

                                v249 = *(*(v241 + 8) + 1028 * v234 + 4 * *(&tcm + v240) + 4);
                                v250 = v249 >> 3;
                                v251 = v249 & 7;
                                if ((v249 & 3) == 1)
                                {
                                  v251 = 1;
                                  v250 = v249 >> 2;
                                }

                                if (v249)
                                {
                                  v233 = v251;
                                }

                                else
                                {
                                  v233 = 0;
                                }

                                if (v249)
                                {
                                  v252 = v250;
                                }

                                else
                                {
                                  v252 = v249 >> 1;
                                }

                                v248 = a6;
                                if (v252)
                                {
LABEL_447:
                                  if (v233)
                                  {
                                    *a2 = v252 | (v233 << 32);
                                    v260 = a2[1];
                                    v272 = *a2;
                                    v273 = v260;
                                    v274 = *(a2 + 4);
                                    _trie_resolve_sub_string_ignore_diacritics(a1, &v272, &a3[v11]);
                                  }

                                  else
                                  {
                                    findAddFlatBucket(a1, v252, *(a2 + 1), *(a2 + 4), v248, v264);
                                  }

                                  v234 = v252;
                                  goto LABEL_417;
                                }

                                v233 = 3;
LABEL_417:
                                if (++v240 == 133)
                                {
                                  return;
                                }
                              }

                              if (v233 != 1)
                              {
                                goto LABEL_417;
                              }

                              v242 = mgetBase(v241, v234);
                              v243 = *(&tcm + v38[1]);
                              v244 = (v242 + 4);
                              if (((*(v242 + 4 + ((v243 >> 3) & 0x1C)) >> v243) & 1) == 0)
                              {
LABEL_416:
                                v233 = 1;
                                goto LABEL_417;
                              }

                              v245 = 0;
                              v246 = v243 >> 6;
                              if ((v243 >> 6) > 1)
                              {
                                v248 = a6;
                                if (v246 != 2)
                                {
                                  v253 = vcnt_s8(*(v242 + 20));
                                  v253.i16[0] = vaddlv_u8(v253);
                                  v245 = v253.u32[0];
                                }

                                v254 = vcnt_s8(*(v242 + 12));
                                v254.i16[0] = vaddlv_u8(v254);
                                v245 += v254.u32[0];
                              }

                              else
                              {
                                v247 = v243 >> 6;
                                v248 = a6;
                                if (!v246)
                                {
LABEL_438:
                                  v256 = vcnt_s8((*&v244[v246] & ~(-1 << v243)));
                                  v256.i16[0] = vaddlv_u8(v256);
                                  v257 = *(v242 + 38 + 4 * (v256.u32[0] + v247));
                                  v258 = v257 >> 3;
                                  v259 = v257 & 7;
                                  if ((v257 & 3) == 1)
                                  {
                                    v259 = 1;
                                    v258 = v257 >> 2;
                                  }

                                  if (v257)
                                  {
                                    v233 = v259;
                                  }

                                  else
                                  {
                                    v233 = 0;
                                  }

                                  if (v257)
                                  {
                                    v252 = v258;
                                  }

                                  else
                                  {
                                    v252 = v257 >> 1;
                                  }

                                  if (v252)
                                  {
                                    goto LABEL_447;
                                  }

                                  goto LABEL_416;
                                }
                              }

                              v255 = vcnt_s8(*v244);
                              v255.i16[0] = vaddlv_u8(v255);
                              v247 = v255.u32[0] + v245;
                              goto LABEL_438;
                            }

                            v31 = a1;
                            v32 = *(a2 + 1);
                            v33 = *(a2 + 4);
                            v35 = v234;
                            v36 = a6;
                            v34 = v122;
LABEL_38:

                            findAddFlatBucket(v31, v35, v32, v33, v36, v34);
                            return;
                          }

                          if ((v203 & 3) == 1)
                          {
                            v197 = v203 >> 2;
                            if (!(v203 >> 2))
                            {
                              goto LABEL_383;
                            }

                            v196 = 1;
                          }

                          else
                          {
                            v197 = v203 >> 3;
                            if (!(v203 >> 3))
                            {
                              goto LABEL_383;
                            }

                            v196 = v203 & 7;
                          }

LABEL_344:
                          v40 = v26;
                          goto LABEL_345;
                        }
                      }

                      v201 = vcnt_s8(*v189);
                      v201.i16[0] = vaddlv_u8(v201);
                      v192 = v201.u32[0] + v190;
                      goto LABEL_336;
                    }

                    if ((*(v137 + 38 + 4 * (v153.u32[0] + v142)) & 3) == 1)
                    {
                      v147 = v154 >> 2;
                      if (!(v154 >> 2))
                      {
                        goto LABEL_252;
                      }

                      v146 = 1;
                    }

                    else
                    {
                      v147 = v154 >> 3;
                      if (!(v154 >> 3))
                      {
                        goto LABEL_252;
                      }

                      v146 = *(v137 + 38 + 4 * (v153.u32[0] + v142)) & 7;
                    }

LABEL_246:
                    v40 = v26;
                    goto LABEL_247;
                  }
                }

                v152 = vcnt_s8(*v139);
                v152.i16[0] = vaddlv_u8(v152);
                v142 = v152.u32[0] + v140;
                goto LABEL_238;
              }

              if ((*(v125 + 38 + 4 * (v134.u32[0] + v130)) & 3) == 1)
              {
                v120 = v135 >> 2;
                if (!(v135 >> 2))
                {
                  goto LABEL_214;
                }

                v119 = 1;
              }

              else
              {
                v120 = v135 >> 3;
                if (!(v135 >> 3))
                {
                  goto LABEL_214;
                }

                v119 = v135 & 7;
              }

              goto LABEL_212;
            }
          }

          v133 = vcnt_s8(*v127);
          v133.i16[0] = vaddlv_u8(v133);
          v130 = v133.u32[0] + v128;
          goto LABEL_204;
        }

        if ((v95 & 3) == 1)
        {
          v89 = v95 >> 2;
          if (!(v95 >> 2))
          {
            goto LABEL_179;
          }

          v88 = 1;
        }

        else
        {
          v89 = v95 >> 3;
          if (!(v95 >> 3))
          {
            goto LABEL_179;
          }

          v88 = v95 & 7;
        }

LABEL_140:
        v40 = v26;
LABEL_141:
        if (v88)
        {
          v266 = v27 + 2;
          v96 = 0x80u;
          while (1)
          {
            v38[1] = v96;
            v102 = *(v52 + 8);
            if (v88 != 3)
            {
              break;
            }

            v97 = *(*(v102 + 8) + 1028 * v89 + 4 * *(&tcm + v96) + 4);
            v98 = v97 >> 3;
            v99 = v97 & 7;
            if ((v97 & 3) == 1)
            {
              v99 = 1;
              v98 = v97 >> 2;
            }

            if (v97)
            {
              v88 = v99;
            }

            else
            {
              v88 = 0;
            }

            if (v97)
            {
              v100 = v98;
            }

            else
            {
              v100 = v97 >> 1;
            }

            if (v100)
            {
LABEL_152:
              if (v88)
              {
                *a2 = v100 | (v88 << 32);
                v101 = a2[1];
                v272 = *a2;
                v273 = v101;
                v274 = *(a2 + 4);
                _trie_resolve_sub_string_ignore_diacritics(a1, &v272, &a3[v11]);
              }

              else
              {
                findAddFlatBucket(a1, v100, *(a2 + 1), *(a2 + 4), a6, v266);
              }

              v89 = v100;
              v52 = a1;
              v40 = v26;
              v38 = v263;
              goto LABEL_155;
            }

            v88 = 3;
            v52 = a1;
LABEL_155:
            if (++v96 == 224)
            {
              goto LABEL_181;
            }
          }

          if (v88 != 1)
          {
            goto LABEL_155;
          }

          v103 = mgetBase(v102, v89);
          v104 = *(&tcm + v38[1]);
          v105 = (v103 + 4);
          if (((*(v103 + 4 + ((v104 >> 3) & 0x1C)) >> v104) & 1) == 0)
          {
            v88 = 1;
            v40 = v26;
            goto LABEL_155;
          }

          v106 = 0;
          v107 = v104 >> 6;
          v40 = v26;
          if ((v104 >> 6) > 1)
          {
            if (v107 != 2)
            {
              v109 = vcnt_s8(*(v103 + 20));
              v109.i16[0] = vaddlv_u8(v109);
              v106 = v109.u32[0];
            }

            v110 = vcnt_s8(*(v103 + 12));
            v110.i16[0] = vaddlv_u8(v110);
            v106 += v110.u32[0];
          }

          else
          {
            v108 = v104 >> 6;
            if (!v107)
            {
              goto LABEL_169;
            }
          }

          v111 = vcnt_s8(*v105);
          v111.i16[0] = vaddlv_u8(v111);
          v108 = v111.u32[0] + v106;
LABEL_169:
          v112 = vcnt_s8((*&v105[v107] & ~(-1 << v104)));
          v112.i16[0] = vaddlv_u8(v112);
          v113 = *(v103 + 38 + 4 * (v112.u32[0] + v108));
          v114 = v113 >> 3;
          v115 = v113 & 7;
          if ((v113 & 3) == 1)
          {
            v115 = 1;
            v114 = v113 >> 2;
          }

          if (v113)
          {
            v88 = v115;
          }

          else
          {
            v88 = 0;
          }

          if (v113)
          {
            v100 = v114;
          }

          else
          {
            v100 = v113 >> 1;
          }

          if (v100)
          {
            goto LABEL_152;
          }

          v88 = 1;
          v52 = a1;
          goto LABEL_155;
        }

        findAddFlatBucket(v52, v89, *(a2 + 1), *(a2 + 4), a6, v27 + 1);
        v40 = v26;
        goto LABEL_181;
      }
    }

    v93 = vcnt_s8(*v81);
    v93.i16[0] = vaddlv_u8(v93);
    v84 = v93.u32[0] + v82;
    goto LABEL_132;
  }

  if ((v58 & 3) == 1)
  {
    v51 = v58 >> 2;
    if (!(v58 >> 2))
    {
      goto LABEL_109;
    }

    v50 = 1;
  }

  else
  {
    v51 = v58 >> 3;
    if (!(v58 >> 3))
    {
      goto LABEL_109;
    }

    v50 = v58 & 7;
  }

LABEL_69:
  v40 = v26;
LABEL_70:
  if (v50)
  {
    v265 = v27 + 2;
    v59 = 0x80u;
    while (1)
    {
      v38[1] = v59;
      v65 = *(a1 + 8);
      if (v50 == 3)
      {
        break;
      }

      if (v50 != 1)
      {
        goto LABEL_85;
      }

      v66 = mgetBase(v65, v51);
      v67 = *(&tcm + v38[1]);
      v68 = (v66 + 4);
      if ((*(v66 + 4 + ((v67 >> 3) & 0x1C)) >> v67))
      {
        v69 = 0;
        v70 = v67 >> 6;
        v40 = v26;
        if ((v67 >> 6) > 1)
        {
          if (v70 != 2)
          {
            v72 = vcnt_s8(*(v66 + 20));
            v72.i16[0] = vaddlv_u8(v72);
            v69 = v72.u32[0];
          }

          v73 = vcnt_s8(*(v66 + 12));
          v73.i16[0] = vaddlv_u8(v73);
          v69 += v73.u32[0];
        }

        else
        {
          v71 = v67 >> 6;
          if (!v70)
          {
            goto LABEL_99;
          }
        }

        v74 = vcnt_s8(*v68);
        v74.i16[0] = vaddlv_u8(v74);
        v71 = v74.u32[0] + v69;
LABEL_99:
        v75 = vcnt_s8((*&v68[v70] & ~(-1 << v67)));
        v75.i16[0] = vaddlv_u8(v75);
        v76 = *(v66 + 38 + 4 * (v75.u32[0] + v71));
        v77 = v76 >> 3;
        v78 = v76 & 7;
        if ((v76 & 3) == 1)
        {
          v78 = 1;
          v77 = v76 >> 2;
        }

        if (v76)
        {
          v50 = v78;
        }

        else
        {
          v50 = 0;
        }

        if (v76)
        {
          v63 = v77;
        }

        else
        {
          v63 = v76 >> 1;
        }

        if (!v63)
        {
          v50 = 1;
          goto LABEL_85;
        }

LABEL_81:
        if (v50)
        {
          *a2 = v63 | (v50 << 32);
          v64 = a2[1];
          v272 = *a2;
          v273 = v64;
          v274 = *(a2 + 4);
          _trie_resolve_sub_string_ignore_diacritics(a1, &v272, &a3[v11]);
        }

        else
        {
          findAddFlatBucket(a1, v63, *(a2 + 1), *(a2 + 4), a6, v265);
        }

        v51 = v63;
        goto LABEL_84;
      }

      v50 = 1;
LABEL_84:
      v40 = v26;
LABEL_85:
      if (++v59 == 192)
      {
        goto LABEL_111;
      }
    }

    v60 = *(*(v65 + 8) + 1028 * v51 + 4 * *(&tcm + v59) + 4);
    v61 = v60 >> 3;
    v62 = v60 & 7;
    if ((v60 & 3) == 1)
    {
      v62 = 1;
      v61 = v60 >> 2;
    }

    if (v60)
    {
      v50 = v62;
    }

    else
    {
      v50 = 0;
    }

    if (v60)
    {
      v63 = v61;
    }

    else
    {
      v63 = v60 >> 1;
    }

    if (!v63)
    {
      v50 = 3;
      goto LABEL_85;
    }

    goto LABEL_81;
  }

  findAddFlatBucket(a1, v51, *(a2 + 1), *(a2 + 4), a6, v27 + 1);
  v40 = v26;
LABEL_111:
  *v38 = -51;
  v52 = a1;
  v53 = *(a1 + 8);
  if (v13 == 3)
  {
    LODWORD(v27) = v261;
LABEL_118:
    v85 = *(*(v53 + 8) + 1028 * v40 + 140);
    v86 = v85 >> 3;
    v87 = v85 & 7;
    if ((v85 & 3) == 1)
    {
      v87 = 1;
      v86 = v85 >> 2;
    }

    if (v85)
    {
      v88 = v87;
    }

    else
    {
      v88 = 0;
    }

    if (v85)
    {
      v89 = v86;
    }

    else
    {
      v89 = v85 >> 1;
    }

    if (!v89)
    {
      *v38 = 45;
      v90 = *(v52 + 8);
      goto LABEL_183;
    }

    goto LABEL_141;
  }

  if (v13 == 1)
  {
    goto LABEL_113;
  }

LABEL_181:
  *v38 = 45;
  v90 = *(v52 + 8);
  if (v13 == 1)
  {
    LODWORD(v27) = v261;
    goto LABEL_195;
  }

  LODWORD(v27) = v261;
  if (v13 != 3)
  {
    LODWORD(v122) = v261 + 1;
    v121 = a6;
    goto LABEL_217;
  }

LABEL_183:
  v116 = *(*(v90 + 8) + 1028 * v40 + 144);
  v117 = v116 & 7;
  v118 = v116 >> 2;
  if ((v116 & 3) == 1)
  {
    v117 = 1;
  }

  else
  {
    v118 = v116 >> 3;
  }

  if (v116)
  {
    v119 = v117;
  }

  else
  {
    v119 = 0;
  }

  if (v116)
  {
    v120 = v118;
  }

  else
  {
    v120 = v116 >> 1;
  }

  v121 = a6;
  if (v120)
  {
LABEL_212:
    LODWORD(v122) = v27 + 1;
    if (v119)
    {
      *a2 = v120 | (v119 << 32);
      v136 = a2[1];
      v272 = *a2;
      v273 = v136;
      v274 = *(a2 + 4);
      _trie_resolve_sub_string_ignore_diacritics(v52, &v272, &a3[v11]);
    }

    else
    {
      findAddFlatBucket(v52, v120, *(a2 + 1), *(a2 + 4), v121, v122);
    }

    v40 = v26;
LABEL_217:
    *v38 = -30;
    v122 = v122;
    v267 = &v121[v122];
    *v267 = 0x80;
    v264 = v27 + 2;
    v121[v264] = -112;
    v123 = *(v52 + 8);
    v124 = (v123 + 8);
    if (v13 != 3)
    {
      if (v13 == 1)
      {
        goto LABEL_219;
      }

      goto LABEL_316;
    }

    goto LABEL_223;
  }

  *v38 = -30;
  v122 = v27 + 1;
  v267 = &a6[v122];
  *&a6[v122] = -28544;
  v264 = v27 + 2;
  v123 = *(v52 + 8);
  v124 = (v123 + 8);
LABEL_223:
  v143 = *(*(v123 + 8) + 1028 * v40 + 908);
  v144 = v143 & 7;
  v145 = v143 >> 2;
  if ((v143 & 3) == 1)
  {
    v144 = 1;
  }

  else
  {
    v145 = v143 >> 3;
  }

  if (v143)
  {
    v146 = v144;
  }

  else
  {
    v146 = 0;
  }

  if (v143)
  {
    v147 = v145;
  }

  else
  {
    v147 = v143 >> 1;
  }

  if (!v147)
  {
    *v38 = -42;
    v148 = a1;
    v149 = *(a1 + 8);
    goto LABEL_322;
  }

LABEL_247:
  if (v146 != 1)
  {
    if (v146 != 3)
    {
      goto LABEL_284;
    }

    v155 = *(*v124 + 1028 * v147 + 4 * *(&tcm + v38[1]) + 4);
    if (v155)
    {
      if ((*(*v124 + 1028 * v147 + 4 * *(&tcm + v38[1]) + 4) & 3) == 1)
      {
        v147 = v155 >> 2;
        if (!(v155 >> 2))
        {
          goto LABEL_316;
        }

        v146 = 1;
      }

      else
      {
        v147 = v155 >> 3;
        if (!(v155 >> 3))
        {
          goto LABEL_316;
        }

        v146 = v155 & 7;
      }
    }

    else
    {
      v147 = v155 >> 1;
      if (!(v155 >> 1))
      {
        goto LABEL_316;
      }

      v146 = 0;
    }

    goto LABEL_279;
  }

  v156 = mgetBase(v123, v147);
  v157 = *(&tcm + v38[1]);
  v158 = (v156 + 4);
  if (((*(v156 + 4 + ((v157 >> 3) & 0x1C)) >> v157) & 1) == 0)
  {
    goto LABEL_315;
  }

  v159 = 0;
  v160 = v157 >> 6;
  v40 = v26;
  if ((v157 >> 6) > 1)
  {
    if (v160 != 2)
    {
      v162 = vcnt_s8(*(v156 + 20));
      v162.i16[0] = vaddlv_u8(v162);
      v159 = v162.u32[0];
    }

    v163 = vcnt_s8(*(v156 + 12));
    v163.i16[0] = vaddlv_u8(v163);
    v159 += v163.u32[0];
    goto LABEL_263;
  }

  v161 = v157 >> 6;
  if (v160)
  {
LABEL_263:
    v164 = vcnt_s8(*v158);
    v164.i16[0] = vaddlv_u8(v164);
    v161 = v164.u32[0] + v159;
  }

  v165 = vcnt_s8((*&v158[v160] & ~(-1 << v157)));
  v165.i16[0] = vaddlv_u8(v165);
  v166 = *(v156 + 38 + 4 * (v165.u32[0] + v161));
  v167 = v166 >> 3;
  if ((v166 & 3) == 1)
  {
    v168 = 1;
  }

  else
  {
    v168 = v166 & 7;
  }

  if ((v166 & 3) == 1)
  {
    v167 = v166 >> 2;
  }

  if (v166)
  {
    v146 = v168;
  }

  else
  {
    v146 = 0;
  }

  if (v166)
  {
    v147 = v167;
  }

  else
  {
    v147 = v166 >> 1;
  }

  if (!v147)
  {
    goto LABEL_316;
  }

LABEL_279:
  if (v146 != 1)
  {
    if (v146 == 3)
    {
      v169 = *(*v124 + 1028 * v147 + 4 * *(&tcm + v38[2]) + 4);
      v170 = a1;
      if (v169)
      {
        if ((*(*v124 + 1028 * v147 + 4 * *(&tcm + v38[2]) + 4) & 3) == 1)
        {
          v147 = v169 >> 2;
          if (!(v169 >> 2))
          {
            goto LABEL_316;
          }

          v171 = 1;
        }

        else
        {
          v147 = v169 >> 3;
          if (!(v169 >> 3))
          {
            goto LABEL_316;
          }

          v171 = v169 & 7;
        }
      }

      else
      {
        v147 = v169 >> 1;
        if (!(v169 >> 1))
        {
          goto LABEL_316;
        }

        v171 = 0;
      }

LABEL_312:
      if (v171)
      {
        *a2 = v147 | (v171 << 32);
        v186 = a2[1];
        v272 = *a2;
        v273 = v186;
        v274 = *(a2 + 4);
        _trie_resolve_sub_string_ignore_diacritics(v170, &v272, &a3[v11]);
        goto LABEL_315;
      }

LABEL_314:
      findAddFlatBucket(v170, v147, *(a2 + 1), *(a2 + 4), v121, v122);
      goto LABEL_315;
    }

LABEL_284:
    v170 = a1;
    if (v146)
    {
      goto LABEL_316;
    }

    goto LABEL_314;
  }

  v172 = mgetBase(v123, v147);
  v173 = *(&tcm + v38[2]);
  v174 = (v172 + 4);
  if (((*(v172 + 4 + ((v173 >> 3) & 0x1C)) >> v173) & 1) == 0)
  {
LABEL_315:
    v40 = v26;
    goto LABEL_316;
  }

  v175 = 0;
  v176 = v172 + 38;
  v177 = v173 >> 6;
  v40 = v26;
  if ((v173 >> 6) > 1)
  {
    if (v177 != 2)
    {
      v179 = vcnt_s8(*(v172 + 20));
      v179.i16[0] = vaddlv_u8(v179);
      v175 = v179.u32[0];
    }

    v180 = vcnt_s8(*(v172 + 12));
    v180.i16[0] = vaddlv_u8(v180);
    v175 += v180.u32[0];
    v170 = a1;
    goto LABEL_296;
  }

  v178 = v173 >> 6;
  v170 = a1;
  if (v177)
  {
LABEL_296:
    v181 = vcnt_s8(*v174);
    v181.i16[0] = vaddlv_u8(v181);
    v178 = v181.u32[0] + v175;
  }

  v182 = vcnt_s8((*&v174[v177] & ~(-1 << v173)));
  v182.i16[0] = vaddlv_u8(v182);
  v183 = *(v176 + 4 * (v182.u32[0] + v178));
  v184 = v183 >> 3;
  if ((v183 & 3) == 1)
  {
    v185 = 1;
  }

  else
  {
    v185 = v183 & 7;
  }

  if ((v183 & 3) == 1)
  {
    v184 = v183 >> 2;
  }

  if (v183)
  {
    v171 = v185;
  }

  else
  {
    v171 = 0;
  }

  if (v183)
  {
    v147 = v184;
  }

  else
  {
    v147 = v183 >> 1;
  }

  if (v147)
  {
    goto LABEL_312;
  }

LABEL_316:
  *v38 = -42;
  v148 = a1;
  v149 = *(a1 + 8);
  if (v13 != 3)
  {
    if (v13 != 1)
    {
      goto LABEL_386;
    }

    goto LABEL_318;
  }

LABEL_322:
  v193 = *(*(v149 + 8) + 1028 * v40 + 860);
  v194 = v193 >> 3;
  v195 = v193 & 7;
  if ((v193 & 3) == 1)
  {
    v195 = 1;
    v194 = v193 >> 2;
  }

  if (v193)
  {
    v196 = v195;
  }

  else
  {
    v196 = 0;
  }

  if (v193)
  {
    v197 = v194;
  }

  else
  {
    v197 = v193 >> 1;
  }

  if (!v197)
  {
    *v38 = -41;
    v198 = *(v148 + 8);
    goto LABEL_392;
  }

LABEL_345:
  if (v196)
  {
    v262 = v122;
    v204 = 0x91u;
    while (1)
    {
      *v267 = v204;
      v210 = *(v148 + 8);
      if (v196 != 3)
      {
        break;
      }

      v205 = *(*(v210 + 8) + 1028 * v197 + 4 * *(&tcm + v204) + 4);
      v206 = v205 >> 3;
      v207 = v205 & 7;
      if ((v205 & 3) == 1)
      {
        v207 = 1;
        v206 = v205 >> 2;
      }

      if (v205)
      {
        v196 = v207;
      }

      else
      {
        v196 = 0;
      }

      if (v205)
      {
        v208 = v206;
      }

      else
      {
        v208 = v205 >> 1;
      }

      if (v208)
      {
LABEL_356:
        if (v196)
        {
          *a2 = v208 | (v196 << 32);
          v209 = a2[1];
          v272 = *a2;
          v273 = v209;
          v274 = *(a2 + 4);
          _trie_resolve_sub_string_ignore_diacritics(a1, &v272, &a3[v11]);
        }

        else
        {
          findAddFlatBucket(a1, v208, *(a2 + 1), *(a2 + 4), a6, v264);
        }

        v197 = v208;
        v148 = a1;
        v40 = v26;
        v38 = v263;
        goto LABEL_359;
      }

      v196 = 3;
      v148 = a1;
LABEL_359:
      if (++v204 == 192)
      {
        v122 = v262;
        goto LABEL_386;
      }
    }

    if (v196 != 1)
    {
      goto LABEL_359;
    }

    v211 = mgetBase(v210, v197);
    v212 = *(&tcm + v38[1]);
    v213 = (v211 + 4);
    if (((*(v211 + 4 + ((v212 >> 3) & 0x1C)) >> v212) & 1) == 0)
    {
      v196 = 1;
      v40 = v26;
      goto LABEL_359;
    }

    v214 = 0;
    v215 = v212 >> 6;
    v40 = v26;
    if ((v212 >> 6) > 1)
    {
      if (v215 != 2)
      {
        v217 = vcnt_s8(*(v211 + 20));
        v217.i16[0] = vaddlv_u8(v217);
        v214 = v217.u32[0];
      }

      v218 = vcnt_s8(*(v211 + 12));
      v218.i16[0] = vaddlv_u8(v218);
      v214 += v218.u32[0];
    }

    else
    {
      v216 = v212 >> 6;
      if (!v215)
      {
        goto LABEL_373;
      }
    }

    v219 = vcnt_s8(*v213);
    v219.i16[0] = vaddlv_u8(v219);
    v216 = v219.u32[0] + v214;
LABEL_373:
    v220 = vcnt_s8((*&v213[v215] & ~(-1 << v212)));
    v220.i16[0] = vaddlv_u8(v220);
    v221 = *(v211 + 38 + 4 * (v220.u32[0] + v216));
    v222 = v221 >> 3;
    v223 = v221 & 7;
    if ((v221 & 3) == 1)
    {
      v223 = 1;
      v222 = v221 >> 2;
    }

    if (v221)
    {
      v196 = v223;
    }

    else
    {
      v196 = 0;
    }

    if (v221)
    {
      v208 = v222;
    }

    else
    {
      v208 = v221 >> 1;
    }

    if (v208)
    {
      goto LABEL_356;
    }

    v196 = 1;
    v148 = a1;
    goto LABEL_359;
  }

  findAddFlatBucket(v148, v197, *(a2 + 1), *(a2 + 4), a6, v122);
  v40 = v26;
LABEL_386:
  *v38 = -41;
  v198 = *(v148 + 8);
  if (v13 != 3)
  {
    if (v13 != 1)
    {
      return;
    }

    goto LABEL_388;
  }

LABEL_392:
  v230 = *(*(v198 + 8) + 1028 * v40 + 864);
  v231 = v230 >> 3;
  v232 = v230 & 7;
  if ((v230 & 3) == 1)
  {
    v232 = 1;
    v231 = v230 >> 2;
  }

  if (v230)
  {
    v233 = v232;
  }

  else
  {
    v233 = 0;
  }

  if (v230)
  {
    v234 = v231;
  }

  else
  {
    v234 = v230 >> 1;
  }

  if (v234)
  {
    goto LABEL_414;
  }
}

double oq_force_meta(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    if (*(a1 + 32))
    {
      v3 = __si_assert_copy_extra_2708(0);
      v4 = v3;
      v5 = "";
      if (v3)
      {
        v5 = v3;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 457, "queue->just_offsets.count == 0", v5);
      free(v4);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    free(*(a1 + 16));
    *a1 = 1;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 44) = 0u;
    *(a1 + 64) = 0xFFFFFFFFLL;
    *(a1 + 8) = 0;
  }

  return result;
}

_DWORD *___bt_findBulk_block_invoke(_DWORD *result, uint64_t *a2)
{
  v2 = *(result + 4);
  v3 = *(v2 + 1176);
  if (v3 < result[10])
  {
    v5 = result;
    v6 = v3 + 1;
    *(v2 + 1176) = v3 + 1;
    v7 = (8 * **(*(v2 + 40) + 8 * v3)) & 0x7FFFFFFC0;
    if (v6 >= result[10])
    {
      LODWORD(v9) = 0x10000;
    }

    else
    {
      v8 = 0;
      v9 = 0x10000;
      do
      {
        v10 = (8 * **(*(v2 + 40) + 8 * v6)) & 0x7FFFFFFC0;
        if (v10 <= v7 + v9)
        {
          v9 = v10 - v7 + 0x10000;
        }

        else
        {
          v11 = *a2;
          v12 = v7 >> *(*a2 + 264);
          if (v12 < *(*a2 + 248) && (v13 = *(v11 + 8 * v12 + 272)) != 0 && (v14 = v13[2], v14 <= v7) && (v15 = v9 + v7, v13[3] >= v15) && *(v11 + 224) >= v15)
          {
            madvise((v13[1] + v7 - v14), v9, 3);
          }

          else
          {
            v22 = v7;
            v23 = v9;
            fd_read_advise(*(v11 + 216), &v22);
          }

          v8 += v9;
          v2 = *(v5 + 4);
          v9 = 0x10000;
          v7 = v10;
        }

        v6 = *(v2 + 1176) + 1;
        *(v2 + 1176) = v6;
      }

      while (v6 < v5[10] && v8 < 0x70000);
    }

    v16 = *a2;
    v17 = v7 >> *(*a2 + 264);
    if (v17 < *(*a2 + 248) && (v18 = *(v16 + 8 * v17 + 272)) != 0 && (v19 = v18[2], v19 <= v7) && (v20 = v7 + v9, v18[3] >= v20) && *(v16 + 224) >= v20)
    {
      v21 = (v18[1] + v7 - v19);

      return madvise(v21, v9, 3);
    }

    else
    {
      v22 = v7;
      v23 = v9;
      return fd_read_advise(*(v16 + 216), &v22);
    }
  }

  return result;
}

void ___bt_findBulk_block_invoke_81(uint64_t a1, const char *a2)
{
  v303 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 56) + 8 * a2) >= *(a1 + 112) || (*(*(*(a1 + 48) + 8) + 24) & 1) != 0)
  {
    goto LABEL_338;
  }

  makeThreadId();
  v4 = *(a1 + 72);
  v279 = a1;
  v259 = *(a1 + 64);
  v260 = a2;
  v5 = (v259 + 1296 * a2);
  memcpy(v5, v4, 0x510uLL);
  if (v5[145])
  {
    v6 = *(v5 + 288);
    if (v6 >> 14)
    {
      v7 = 0;
    }

    else
    {
      v7 = 8 * v6 > *MEMORY[0x1E69E9AC8];
    }

    if (v7)
    {
      ++sTotal;
    }

    v8 = malloc_type_zone_calloc(queryZone, v6, 8uLL, 0x5BAF1CEAuLL);
    if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    v5[145] = v8;
    if (*(v5 + 288))
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = 0;
      do
      {
        v12 = malloc_type_zone_malloc(queryZone, 0x48uLL, 0xA4971684uLL);
        if (!v12 && os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, v9, OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        }

        *&v5[145][8 * v10] = v12;
        v11 = *&v5[145][8 * v10];
        *v11 = 0;
        *(v11 + 44) = 0u;
        *(v11 + 16) = 0u;
        *(v11 + 32) = 0u;
        *(v11 + 64) = 0xFFFFFFFFLL;
        *(v11 + 8) = 0;
        ++v10;
      }

      while (v10 < *(v5 + 288));
    }
  }

  if (v5[146])
  {
    v13 = *(v5 + 288);
    if (!(v13 >> 14) && 8 * v13 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal;
    }

    v14 = malloc_type_zone_calloc(queryZone, v13, 8uLL, 0x5BAF1CEAuLL);
    if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    v5[146] = v14;
    v15 = *(v5 + 288);
    if (v15)
    {
      v16 = 0;
      do
      {
        v19 = v15;
        if (*(v4[146] + 8 * v16))
        {
          if (*MEMORY[0x1E69E9AC8] <= 0x47uLL)
          {
            ++sTotal;
          }

          v17 = malloc_type_zone_calloc(queryZone, 1uLL, 0x48uLL, 0x5BAF1CEAuLL);
          if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          }

          *&v5[146][8 * v16] = v17;
          v18 = *&v5[146][8 * v16];
          *v18 = 0;
          *(v18 + 44) = 0u;
          *(v18 + 16) = 0u;
          *(v18 + 32) = 0u;
          *(v18 + 64) = 0xFFFFFFFFLL;
          *(v18 + 8) = 0;
          v19 = *(v5 + 288);
        }

        ++v16;
        v15 = v19;
      }

      while (v16 < v19);
    }
  }

  v288 = 0;
  v20 = malloc_type_zone_malloc(queryZone, 0x18uLL, 0xA4971684uLL);
  v21 = a1;
  if (v20)
  {
    storage_reader_init(*(a1 + 80) + 160, v20);
    v22 = v260;
  }

  else
  {
    v22 = v260;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    storage_reader_init(*(a1 + 80) + 160, 0);
  }

  v23 = *(*(a1 + 56) + 8 * v22);
  v24 = v279[12];
  v25 = *(v279[11] + 8 * v22);
  if (v24)
  {
    if (*(v24 + 8) != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      }

      goto LABEL_325;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v27 = *(v24 + 64);
    v28 = v24;
    v29 = add_explicit;
  }

  else
  {
    v29 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v27 = -1;
    v28 = 0;
  }

  v30 = v29;
  v31 = setThreadIdAndInfo(v27, sIndexExceptionCallbacks, v28, 0x20000000, v29 + 1);
  v287 = v31;
  v32 = threadData[9 * v31 + 1] + 320 * HIDWORD(v31);
  v285 = v33;
  v286 = HIDWORD(v31);
  v284 = v34;
  *(v32 + 216) = 0;
  v35 = *(v32 + 312);
  v36 = *(v32 + 224);
  if (v36)
  {
    v36(*(v32 + 288));
  }

  if (!_setjmp(v32))
  {
    v273 = v23;
    v275 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v44 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v275 + 1);
    v283 = v45;
    v282 = v46;
    v47 = threadData[9 * v44 + 1] + 320 * HIDWORD(v44);
    v274 = *(v47 + 312);
    v48 = *(v47 + 224);
    if (v48)
    {
      v48(*(v47 + 288));
    }

    if (_setjmp(v47))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v47 + 312) = v274;
      if (__THREAD_SLOT_KEY)
      {
        v49 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v49)
        {
          goto LABEL_352;
        }
      }

      else
      {
        makeThreadId();
        v49 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v49)
        {
          goto LABEL_352;
        }
      }

      v50 = v49;
      if (v49 < 0x801)
      {
LABEL_70:
        v51 = &threadData[9 * v50];
        v53 = *(v51 - 4);
        v52 = (v51 - 2);
        if (v53 > v282)
        {
          v54 = v50 - 1;
          do
          {
            CIOnThreadCleanUpPop(v54);
          }

          while (*v52 > v282);
        }

        dropThreadId(v44, 1, v275 + 1);
        CICleanUpReset(v44, v283);
LABEL_322:
        v234 = threadData[9 * v287 + 1] + 320 * v286;
        *(v234 + 312) = v35;
        v235 = *(v234 + 232);
        if (v235)
        {
          v235(*(v234 + 288));
        }

        dropThreadId(v287, 0, v30 + 1);
        goto LABEL_325;
      }

LABEL_352:
      makeThreadId();
      v50 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_70;
    }

    if (v20 && *(v20 + 16) != 1)
    {
      v67 = v275;
      v68 = v274;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      }

      goto LABEL_319;
    }

    v272 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v55 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, v20, 0, v272 + 1);
    v281 = v56;
    v280 = v57;
    v58 = threadData[9 * v55 + 1] + 320 * HIDWORD(v55);
    v59 = *(v58 + 312);
    v60 = *(v58 + 224);
    if (v60)
    {
      v60(*(v58 + 288));
    }

    if (_setjmp(v58))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v58 + 312) = v59;
      if (__THREAD_SLOT_KEY)
      {
        v61 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v61)
        {
          goto LABEL_354;
        }
      }

      else
      {
        makeThreadId();
        v61 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v61)
        {
          goto LABEL_354;
        }
      }

      v62 = v61;
      if (v61 < 0x801)
      {
LABEL_84:
        v63 = &threadData[9 * v62];
        v65 = *(v63 - 4);
        v64 = (v63 - 2);
        if (v65 > v280)
        {
          v66 = v62 - 1;
          do
          {
            CIOnThreadCleanUpPop(v66);
          }

          while (*v64 > v280);
        }

        dropThreadId(v55, 1, v272 + 1);
        CICleanUpReset(v55, v281);
LABEL_318:
        v67 = v275;
        v68 = v274;
LABEL_319:
        v232 = threadData[9 * v44 + 1] + 320 * HIDWORD(v44);
        *(v232 + 312) = v68;
        v233 = *(v232 + 232);
        if (v233)
        {
          v233(*(v232 + 288));
        }

        dropThreadId(v44, 0, v67 + 1);
        goto LABEL_322;
      }

LABEL_354:
      makeThreadId();
      v62 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_84;
    }

    v271 = v59;
    v278 = v20;
    if (dword_1EBF46AD0 >= 5)
    {
      v250 = *__error();
      v251 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
      {
        v252 = *(v279[7] + 8 * v260);
        v253 = *(v279[11] + 8 * v260);
        *buf = 134218496;
        v299 = v260;
        *v300 = 2048;
        *&v300[2] = v252;
        *&v300[10] = 2048;
        *&v301 = v253;
        _os_log_impl(&dword_1C278D000, v251, OS_LOG_TYPE_DEFAULT, "Applier %lu starting at %lu ending at %lu", buf, 0x20u);
      }

      *__error() = v250;
      v21 = v279;
    }

    v69 = (v25 - v273);
    v70 = v273;
    if (v25 == v273)
    {
LABEL_315:
      v288 = 1;
      v230 = threadData[9 * v55 + 1] + 320 * HIDWORD(v55);
      *(v230 + 312) = v271;
      v231 = *(v230 + 232);
      if (v231)
      {
        v231(*(v230 + 288));
      }

      dropThreadId(v55, 0, v272 + 1);
      goto LABEL_318;
    }

    v71 = 0;
    __dst = v5 + 11;
    v268 = v5 + 89;
    v266 = v5 + 91;
    v267 = v5 + 90;
    v277 = v30;
    v276 = v35;
    v270 = (v25 - v273);
    while (1)
    {
      v72 = *v21[13];
      if ((v72 & 1) == 0)
      {
        break;
      }

LABEL_307:
      v227 = v21[5];
      if (v227)
      {
        (*(v227 + 16))(v227, v20);
      }

      if (++v71 >= v69 || (v72 & 1) != 0)
      {
        goto LABEL_315;
      }
    }

    v265 = *v21[13];
    v73 = *(v21 + 29);
    v264 = v71;
    v74 = &v71[v70];
    v75 = *&v5[5][8 * &v71[v70]];
    v76 = v21[4];
    v77 = v75[1];
    v78 = 3;
    if ((*v75 & 3) == 0)
    {
      v78 = 2;
    }

    v79 = v75[1];
    memcpy(__dst, &v75[v78], v77);
    v268[v77] = 0;
    v82 = *&v5[5][8 * v74];
    v83 = *v82 >> 3;
    if (dword_1EBF46AD0 >= 5)
    {
      v228 = *__error();
      v229 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218754;
        v299 = v264;
        *v300 = 1024;
        *&v300[2] = v83;
        *&v300[6] = 1024;
        *&v300[8] = v77;
        LOWORD(v301) = 2080;
        *(&v301 + 2) = v5 + 11;
        _os_log_impl(&dword_1C278D000, v229, OS_LOG_TYPE_DEFAULT, "bucket[%ld] %x %d %s\n", buf, 0x22u);
      }

      *__error() = v228;
      v84 = *&v5[5][8 * v74];
      v85 = *v84;
    }

    else
    {
      v84 = *&v5[5][8 * v74];
      v85 = *v82;
    }

    v20 = v278;
    v114 = (v85 & 3) == 0;
    v86 = 12;
    if (v114)
    {
      v86 = 8;
    }

    v87 = v84 + v84[1] + v86 + 1;
    if (*(v5 + 1289) == 1 && v73)
    {
      v88 = -1;
      v89 = 0;
      v90 = 0;
      do
      {
        v91 = &v5[143][v90];
        if ((v91[16] & 4) == 0 && **v91 == 42)
        {
          if (v88 == -1)
          {
            if (((*(v87 + (v89 >> 3)) >> (v89 & 7)) & 1) == 0)
            {
              break;
            }

            v88 = v89;
          }

          else
          {
            *(v87 + (v89 >> 3)) |= 1 << (v89 & 7);
          }
        }

        ++v89;
        v90 += 64;
      }

      while (v73 != v89);
    }

    v263 = v87;
    ptr = storage_reader_get_ptr(*v278, v278[1], v83 << 6, 8, v80, v81);
    if (ptr == -1 || (v95 = storage_reader_get_ptr(*v278, v278[1], v83 << 6, 64 << *(ptr + 2), v93, v94), v95 + 1 <= 1))
    {
      v96 = *__error();
      v97 = _SILogForLogForCategory(0);
      v35 = v276;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v299 = "match_function";
        *v300 = 1024;
        *&v300[2] = 3688;
        _os_log_error_impl(&dword_1C278D000, v97, OS_LOG_TYPE_ERROR, "%s:%d: can't resolve flat store page", buf, 0x12u);
      }

      *__error() = v96;
      v30 = v277;
      goto LABEL_306;
    }

    v262 = v83 << 6;
    v301 = 0uLL;
    *buf = *(v5 + 12);
    v299 = 0;
    memset(v300, 0, sizeof(v300));
    v99 = *v95;
    v98 = v99;
    *&v301 = v95 + 4;
    v302 = v99;
    v100 = v263;
    if (v99)
    {
      v261 = v76;
      v101 = 0;
      v102 = 0;
      v103 = 0;
      while (1)
      {
        v107 = v102;
        v108 = v301;
        v109 = v103 + 1;
        v110 = v301 + v103;
        v111 = *(v301 + v103);
        if (*(v301 + v103) < 0)
        {
          if (v111 > 0xBF)
          {
            if (v111 > 0xDF)
            {
              if (v111 > 0xEF)
              {
                v112 = *(v301 + v109);
                v113 = v103 + 5;
              }

              else
              {
                v112 = ((v111 & 0xF) << 24) | (*(v301 + v109) << 16) | (*(v110 + 2) << 8) | *(v110 + 3);
                v113 = v103 + 4;
              }
            }

            else
            {
              v112 = ((v111 & 0x1F) << 16) | (*(v301 + v109) << 8) | *(v110 + 2);
              v113 = v103 + 3;
            }
          }

          else
          {
            v113 = v103 + 2;
            v112 = *(v301 + v109) | ((v111 & 0x3F) << 8);
          }
        }

        else
        {
          v112 = *(v301 + v103);
          v113 = v103 + 1;
        }

        if (v112)
        {
          v114 = 1;
        }

        else
        {
          v114 = v113 == 1;
        }

        if (!v114)
        {
          v246 = __si_assert_copy_extra_2708(0);
          v247 = v246;
          v248 = "";
          if (v246)
          {
            v248 = v246;
          }

          __message_assert("%s:%u: failed assertion '%s' %s %d, %ld", "FlatStore.h", 424, "entry->len > 0 || iter->pageCursor == v2_vInt32Size(0)", v248, 0, v113);
          v245 = v247;
          goto LABEL_347;
        }

        v115 = v113 + 1;
        v116 = v301 + v113;
        v117 = *(v301 + v113);
        if (*(v301 + v113) < 0)
        {
          if (v117 > 0xBF)
          {
            if (v117 > 0xDF)
            {
              if (v117 > 0xEF)
              {
                v118 = *(v301 + v115);
                v119 = v113 + 5;
              }

              else
              {
                v118 = ((v117 & 0xF) << 24) | (*(v301 + v115) << 16) | (*(v116 + 2) << 8) | *(v116 + 3);
                v119 = v113 + 4;
              }
            }

            else
            {
              v118 = ((v117 & 0x1F) << 16) | (*(v301 + v115) << 8) | *(v116 + 2);
              v119 = v113 + 3;
            }
          }

          else
          {
            v119 = v113 + 2;
            v118 = *(v301 + v115) | ((v117 & 0x3F) << 8);
          }
        }

        else
        {
          v118 = *(v301 + v113);
          v119 = v113 + 1;
        }

        v120 = v112;
        v121 = v119 + v112;
        *(&v301 + 1) = v121;
        if (v121 > v98)
        {
          break;
        }

        if (*buf)
        {
          v257 = v301;
          v122 = v299;
          v299 = v2_readVInt64_2873(v301, &v301 + 1) + v122;
          v102 = HIDWORD(v299);
          v123 = v299;
          VInt64_2873 = v2_readVInt64_2873(v301, &v301 + 1);
          if (VInt64_2873)
          {
            *v300 += VInt64_2873;
            v125 = v123;
            v101 = *v300;
          }

          else
          {
            v125 = v123;
            v101 = 0;
          }

          v100 = v263;
          v108 = v257;
        }

        else
        {
          v126 = v121 + 1;
          v127 = v301 + v121;
          v128 = *(v301 + v121);
          if (*(v301 + v121) < 0)
          {
            if (v128 > 0xBF)
            {
              if (v128 > 0xDF)
              {
                if (v128 > 0xEF)
                {
                  v129 = *(v301 + v126);
                  v126 = v121 + 5;
                }

                else
                {
                  v129 = ((v128 & 0xF) << 24) | (*(v301 + v126) << 16) | (*(v127 + 2) << 8) | *(v127 + 3);
                  v126 = v121 + 4;
                }
              }

              else
              {
                v129 = ((v128 & 0x1F) << 16) | (*(v301 + v126) << 8) | *(v127 + 2);
                v126 = v121 + 3;
              }
            }

            else
            {
              v129 = *(v301 + v126) | ((v128 & 0x3F) << 8);
              v126 = v121 + 2;
            }
          }

          else
          {
            v129 = *(v301 + v121);
          }

          *(&v301 + 1) = v126;
          v125 = v129;
          v102 = v107;
        }

        if (*(&v301 + 1) > v302)
        {
          v242 = __si_assert_copy_extra_2708(0);
          v243 = v242;
          v244 = "";
          if (v242)
          {
            v244 = v242;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "FlatStore.h", 463, "iter->pageCursor <= iter->pageEnd", v244);
          v245 = v243;
LABEL_347:
          free(v245);
          if (__valid_fs(-1))
          {
            v249 = 2989;
          }

          else
          {
            v249 = 3072;
          }

          *v249 = -559038737;
          abort();
        }

        v130 = v112 + v77 + v118;
        if (v130 > 0x413)
        {
          v105 = v302;
          v106 = *(&v301 + 1);
          goto LABEL_301;
        }

        if (v112)
        {
          v131 = (v108 + v119);
          v132 = v5 + v77 + v118 + 88;
          do
          {
            v133 = *v131++;
            *v132++ = tcmr[v133];
            --v120;
          }

          while (v120);
        }

        __dst[v130] = 0;
        *(v5 + 285) = v130;
        if (v261)
        {
          v104 = (*(v261 + 16))();
          v100 = v263;
          if (!v104)
          {
            goto LABEL_305;
          }
        }

        else if (*(v5 + 288))
        {
          v134 = 0;
          v258 = v125 | (v102 << 32);
          while (1)
          {
            if (((*(v100 + (v134 >> 3)) >> (v134 & 7)) & 1) == 0)
            {
              goto LABEL_167;
            }

            v135 = &v5[143][64 * v134];
            v5[155] = v135;
            v136 = v5[145];
            if (v136)
            {
              v136 = *&v136[8 * v134];
            }

            v5[156] = v136;
            v137 = v5[146];
            if (v137)
            {
              v137 = *&v137[8 * v134];
            }

            v5[157] = v137;
            ++*(v5 + 320);
            v138 = *(v135 + 4);
            if (v138 & 0x610) != 0 || (**v5)
            {
              goto LABEL_167;
            }

            if ((v138 & 4) != 0)
            {
              break;
            }

            if ((v138 & 0x8000) == 0 && **v135 == 42 && !(*v135)[1])
            {
              v199 = termFieldMatch(*(v135 + 5), __dst, *(v5 + 285), *(v135 + 4));
              v100 = v263;
              if (!v199)
              {
                goto LABEL_167;
              }

              goto LABEL_255;
            }

            v139 = v135[5];
            if (!v135[4])
            {
              if (v139)
              {
LABEL_266:
                if (*__dst != 1)
                {
                  v208 = termPropertyID(__dst, *(v5 + 285));
                  v207 = 0;
                  v206 = v208;
                  goto LABEL_278;
                }

                v204 = *v268;
                if (v204 == 2)
                {
                  v205 = *v267;
                  if ((*v267 & 0x80000000) == 0)
                  {
                    v206 = *v267;
                    v207 = 3;
                    goto LABEL_278;
                  }

                  v209 = *v266;
                  if ((*v266 & 0x80000000) == 0)
                  {
                    v210 = v205 & 0x7F | (v209 << 7);
                    v211 = 4;
                    goto LABEL_277;
                  }

                  v217 = *(v5 + 92);
                  if ((*(v5 + 92) & 0x80000000) == 0)
                  {
                    v206 = ((v209 & 0x7F) << 7) | (v217 << 14) | v205 & 0x7F;
                    v207 = 5;
                    goto LABEL_278;
                  }

                  v219 = *(v5 + 93);
                  if ((*(v5 + 93) & 0x80000000) == 0)
                  {
                    v220 = ((v217 & 0x7F) << 14) | (v219 << 21) | ((v209 & 0x7F) << 7) | v205 & 0x7F;
                    v207 = 6;
                    goto LABEL_293;
                  }

                  v222 = *(v5 + 94);
                  if (v222 < 0)
                  {
                    goto LABEL_358;
                  }

                  v223 = ((v219 & 0x7F) << 21) | (v222 << 28) | ((v217 & 0x7F) << 14) | ((v209 & 0x7F) << 7) | v205 & 0x7F;
                  v207 = 7;
LABEL_298:
                  v206 = v223;
                }

                else
                {
                  if ((v204 & 0x80) == 0)
                  {
                    v206 = *v268;
                    v207 = 2;
                    goto LABEL_278;
                  }

                  v212 = *v267;
                  if (*v267 < 0)
                  {
                    v218 = *v266;
                    if (*v266 < 0)
                    {
                      v221 = *(v5 + 92);
                      if (*(v5 + 92) < 0)
                      {
                        v224 = *(v5 + 93);
                        if (v224 < 0)
                        {
LABEL_358:
                          v254 = __si_assert_copy_extra_2708(0);
                          v255 = v254;
                          v256 = "";
                          if (v254)
                          {
                            v256 = v254;
                          }

                          __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v256);
                          free(v255);
                          if (__valid_fs(-1))
                          {
                            MEMORY[0xBAD] = -559038737;
                            abort();
                          }

                          MEMORY[0xC00] = -559038737;
                          abort();
                        }

                        v223 = ((v221 & 0x7F) << 21) | (v224 << 28) | ((v218 & 0x7F) << 14) | ((v212 & 0x7F) << 7) | v204 & 0x7F;
                        v207 = 6;
                        goto LABEL_298;
                      }

                      v220 = ((v218 & 0x7F) << 14) | (v221 << 21) | ((v212 & 0x7F) << 7) | v204 & 0x7F;
                      v207 = 5;
LABEL_293:
                      v206 = v220;
                    }

                    else
                    {
                      v206 = ((v212 & 0x7F) << 7) | (v218 << 14) | v204 & 0x7F;
                      v207 = 4;
                    }
                  }

                  else
                  {
                    v210 = v204 & 0x7F | (v212 << 7);
                    v211 = 3;
LABEL_277:
                    v213 = v211;
                    v206 = v210;
                    v207 = v213;
                  }
                }

LABEL_278:
                v100 = v263;
                if (*(v135 + 5) == v206)
                {
                  v214 = *(v5 + 285) - v207;
                  while (v214 >= 1)
                  {
                    v215 = __dst[v207 - 1 + v214];
                    if (v215 > 5)
                    {
                      v216 = *(v5[155] + 5);
                      TermIDsContextMatchPatternsReg = __findTermIDsContextMatchPatternsRegExMatch();
                      goto LABEL_183;
                    }

                    --v214;
                    if ((v215 & 5) != 1)
                    {
                      goto LABEL_167;
                    }
                  }
                }

                goto LABEL_167;
              }

              v152 = *(v5 + 285);
              if (*(v135 + 5) == 1)
              {
                v153 = termPropertyID(__dst, v152);
                v100 = v263;
                if (v153 != 1)
                {
                  goto LABEL_167;
                }

                v152 = *(v5 + 285);
              }

              v154 = *v135;
              v155 = *v135;
              v156 = *(v135 + 6);
              v157 = **v135;
              if (v157 > 4)
              {
                if (v157 == 42)
                {
                  v190 = termPropertyID(__dst, v152);
                  v100 = v263;
                  v166 = (v5 + 11);
                  if (v190 == 2)
                  {
                    goto LABEL_167;
                  }
                }

                else
                {
                  v166 = (v5 + 11);
                }
              }

              else
              {
                if (v157 != *__dst)
                {
                  goto LABEL_167;
                }

                v158 = (v154 + 1);
                v159 = *(v154 + 1);
                if (v159 != *v268)
                {
                  goto LABEL_167;
                }

                v160 = v159;
                v161 = v158;
                v162 = v5 + 90;
                if (v159 == 2)
                {
                  v165 = v155[2];
                  v164 = v155 + 2;
                  v163 = v165;
                  if (v165 != *v267)
                  {
                    goto LABEL_167;
                  }

                  v160 = v163;
                  v161 = v164;
                  v162 = v5 + 91;
                }

                v155 = v161 + 1;
                if (v160 < 0)
                {
                  v201 = *v155;
                  if (v201 != *v162)
                  {
                    goto LABEL_167;
                  }

                  v155 = v161 + 2;
                  if (v201 < 0)
                  {
                    v202 = *v155;
                    if (v202 != v162[1])
                    {
                      goto LABEL_167;
                    }

                    if (v202 < 0)
                    {
                      v203 = v161[3];
                      if (v203 < 0 || v162[2] != v203)
                      {
                        goto LABEL_167;
                      }

                      v166 = v162 + 3;
                      v155 = v161 + 4;
                    }

                    else
                    {
                      v166 = v162 + 2;
                      v155 = v161 + 3;
                    }
                  }

                  else
                  {
                    v166 = v162 + 1;
                  }
                }

                else
                {
                  v166 = v162;
                }
              }

              v200 = matche(v155, v166, v156, 0, 0);
              v100 = v263;
              if (!v200)
              {
                goto LABEL_167;
              }

              goto LABEL_255;
            }

            if (v139)
            {
              goto LABEL_266;
            }

            v140 = termFieldMatch(*(v135 + 5), __dst, *(v5 + 285), *(v135 + 4));
            v100 = v263;
            if (v140)
            {
              *v289 = 0;
              TermIDsContextMatchPatternsReg = icu_search_match();
LABEL_183:
              v100 = v263;
              if (TermIDsContextMatchPatternsReg)
              {
                v142 = 1;
LABEL_166:
                findHandleMatch(v5, v258, v101, __dst, *(v5 + 285), v142);
                v100 = v263;
              }
            }

LABEL_167:
            if (++v134 >= *(v5 + 288))
            {
              goto LABEL_118;
            }
          }

          v143 = *__dst;
          if ((v143 - 2) > 2 || v143 != **v135)
          {
            goto LABEL_167;
          }

          v144 = *v135 + 1;
          if ((v138 & 0x20) != 0)
          {
            v167 = (v259 + 1296 * v260 + 89);
            do
            {
              v169 = *v167++;
              v168 = v169;
              v171 = *v144++;
              v170 = v171;
              if (v168)
              {
                v172 = v168 == v170;
              }

              else
              {
                v172 = 0;
              }
            }

            while (v172);
            v173 = v170 != 0;
            v174 = v168 < v170;
            if (v168)
            {
              v175 = v174;
            }

            else
            {
              v175 = v173;
            }

            if (v175)
            {
              goto LABEL_167;
            }
          }

          else
          {
            v145 = (v259 + 1296 * v260 + 89);
            do
            {
              v147 = *v145++;
              v146 = v147;
              v149 = *v144++;
              v148 = v149;
              if (v146)
              {
                v150 = v146 == v148;
              }

              else
              {
                v150 = 0;
              }
            }

            while (v150);
            if (v146)
            {
              v151 = v146 >= v148;
            }

            else
            {
              v151 = 0;
            }

            if (!v151)
            {
              goto LABEL_167;
            }
          }

          v176 = *__dst;
          v177 = v135[1];
          v178 = *v177;
          v179 = v143 == 0;
          v180 = v143 != v178 || v143 == 0;
          if ((v138 & 0x40) != 0)
          {
            if (!v180)
            {
              v191 = v177 + 1;
              v192 = (v259 + 1296 * v260 + 89);
              do
              {
                v194 = *v192++;
                v193 = v194;
                v195 = v194 == 0;
                v197 = *v191++;
                v196 = v197;
                if (v193)
                {
                  v198 = v193 == v196;
                }

                else
                {
                  v198 = 0;
                }
              }

              while (v198);
              v178 = v196;
              v176 = v193;
              LOBYTE(v179) = v195;
            }

            if (v176 >= v178 && !v179)
            {
              goto LABEL_167;
            }
          }

          else
          {
            if (!v180)
            {
              v181 = v177 + 1;
              v182 = (v259 + 1296 * v260 + 89);
              do
              {
                v184 = *v182++;
                v183 = v184;
                v185 = v184 == 0;
                v187 = *v181++;
                v186 = v187;
                if (v183)
                {
                  v188 = v183 == v186;
                }

                else
                {
                  v188 = 0;
                }
              }

              while (v188);
              v178 = v186;
              v176 = v183;
              v179 = v185;
            }

            if (v178)
            {
              v189 = -1;
            }

            else
            {
              v189 = 0;
            }

            if (!v179)
            {
              v189 = (v176 < v178) << 31;
            }

            if ((v189 & 0x80000000) == 0)
            {
              goto LABEL_167;
            }
          }

LABEL_255:
          if ((v138 & 0x8000) != 0)
          {
            goto LABEL_167;
          }

          v142 = 0;
          goto LABEL_166;
        }

LABEL_118:
        v103 = *(&v301 + 1);
        v98 = v302;
        v105 = v302;
        v106 = *(&v301 + 1);
        if (*(&v301 + 1) >= v302)
        {
          goto LABEL_301;
        }
      }

      v105 = v98;
      v106 = v121;
LABEL_301:
      if (v106 != v105)
      {
        v225 = *__error();
        v226 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v226, OS_LOG_TYPE_ERROR))
        {
          *v289 = 136316162;
          *&v289[4] = "match_function";
          v290 = 1024;
          v291 = 3726;
          v292 = 2048;
          v293 = v262;
          v294 = 2048;
          v295 = v106;
          v296 = 2048;
          v297 = v105;
          _os_log_error_impl(&dword_1C278D000, v226, OS_LOG_TYPE_ERROR, "%s:%d: invalid flat store page (0x%llx). cursor(%ld) != end(%ld)", v289, 0x30u);
        }

        *__error() = v225;
      }
    }

LABEL_305:
    v20 = v278;
    v21 = v279;
    v30 = v277;
    v35 = v276;
LABEL_306:
    v70 = v273;
    v69 = v270;
    v72 = v265;
    v71 = v264;
    goto LABEL_307;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v32 + 312) = v35;
  if ((~*(v32 + 212) & 0xA0000000) == 0)
  {
    v37 = *(v32 + 288);
    if (v37)
    {
      _CIMakeInvalid(v37);
    }
  }

  if (__THREAD_SLOT_KEY)
  {
    v38 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v38)
    {
LABEL_343:
      makeThreadId();
      v39 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_56;
    }
  }

  else
  {
    makeThreadId();
    v38 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v38)
    {
      goto LABEL_343;
    }
  }

  v39 = v38;
  if (v38 >= 0x801)
  {
    goto LABEL_343;
  }

LABEL_56:
  v40 = &threadData[9 * v39];
  v42 = *(v40 - 4);
  v41 = (v40 - 2);
  if (v42 > v284)
  {
    v43 = v39 - 1;
    do
    {
      CIOnThreadCleanUpPop(v43);
    }

    while (*v41 > v284);
  }

  dropThreadId(v287, 1, v30 + 1);
  CICleanUpReset(v287, v285);
LABEL_325:
  v236 = *(v20 + 1);
  if (v236 && atomic_fetch_add(v236 + 2, 0xFFFFFFFF) == 1)
  {
    for (i = 73; i != 585; ++i)
    {
      v238 = *&v236[2 * i];
      if (v238)
      {
        v239 = *&v236[2 * i];
        if (atomic_fetch_add(v238, 0xFFFFFFFF) == 1)
        {
          if ((*(v239 + 8) + 1) >= 2)
          {
            v240 = v239;
            munmap(*(v239 + 8), *(v239 + 24) - *(v239 + 16));
            v239 = v240;
          }

          free(v239);
        }

        *&v236[2 * i] = 0;
      }
    }

    OSAtomicEnqueue(&availableReaders, v236, 0);
  }

  free(v20);
  if ((v288 & 1) == 0)
  {
    *(*(v21[6] + 8) + 24) = 1;
  }

LABEL_338:
  v241 = *MEMORY[0x1E69E9840];
}