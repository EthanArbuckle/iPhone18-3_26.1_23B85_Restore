void ContentIndexResetDirStore(uint64_t a1)
{
  indexMarkDirty(a1);
  v2 = *(a1 + 4928);
  if (v2)
  {
    v3 = _Block_copy(*(v2 + 33));
    v4 = *(v2 + 28);
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 8, 1u, memory_order_relaxed);
    }

    fd_zero_truncate(v4);
    storageClose((v2 + 8));
    v5 = *(v2 + 550);
    if (v5)
    {
      CFRelease(v5);
    }

    bzero(v2, 0x1168uLL);
    if (dirStoreInit(v2, v4, 1, 0, v3))
    {
      v6 = *__error();
      v7 = _SILogForLogForCategory(0);
      v8 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v7, v8))
      {
        *v9 = 0;
        _os_log_impl(&dword_1C278D000, v7, v8, "forwardStoreReset", v9, 2u);
      }

      *__error() = v6;
      *(v2 + 554) = 0;
      *(v2 + 553) = 2;
      flushForwardStore(v2, 0);
      *v2 = 1;
      _Block_release(v3);
    }

    else
    {
      _Block_release(v3);
      freeForwardDirectoryStore(v2);
      *(a1 + 4928) = 0;
    }
  }
}

uint64_t ContentIndexMergeIndexes(uint64_t **a1, signed int a2, const char *a3, uint64_t *a4, __int128 *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = a5[2];
  v27 = a5[3];
  v28 = a5[4];
  v24 = *a5;
  v25 = a5[1];
  if (a2 < 9)
  {
    v15 = a5[3];
    v33 = a5[2];
    v34 = v15;
    v35 = a5[4];
    v16 = a5[1];
    *__dst = *a5;
    v32 = v16;
    v17 = _ContentIndexMergeIndexes(a1, a2, a3, a4, __dst);
  }

  else
  {
    memset(v30, 0, sizeof(v30));
    if (a2 < 1)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v23 = a4;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (a2 + 7) >> 3;
      v12 = v11;
      do
      {
        if (a2 >= v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = a2;
        }

        v29 = 0;
        asprintf(&v29, "%s_%d.", a3, v9);
        v14 = &a1[v10];
        v10 += v11;
        v33 = v26;
        v34 = v27;
        v35 = v28;
        *__dst = v24;
        v32 = v25;
        *(v30 + v9) = ContentIndexMergeIndexes(v14, (v13 + v8), v29, 0, __dst);
        free(v29);
        ++v9;
        v12 += v11;
        v8 -= v11;
      }

      while (v10 < a2);
      a4 = v23;
    }

    v33 = v26;
    v34 = v27;
    v35 = v28;
    *__dst = v24;
    v32 = v25;
    v17 = _ContentIndexMergeIndexes(v30, v9, a3, a4, __dst);
    if (v9)
    {
      v18 = v9;
      v19 = v30;
      do
      {
        v20 = *v19++;
        strncpy(__dst, (v20 + 15208), 0xFFuLL);
        index_DeleteIndex(v20, *(v20 + 64), __dst, 1);
        --v18;
      }

      while (v18);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t ContentIndexChangePrefix(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v170 = *MEMORY[0x1E69E9840];
  v5 = (v1 + 15208);
  if (!strcmp((v1 + 15208), v2))
  {
    v12 = 1;
    goto LABEL_256;
  }

  if (*v5 - 48 <= 9 && *v3 == 108)
  {
    v142 = __si_assert_copy_extra_3233(0, *(v4 + 64));
    v143 = v142;
    v144 = "";
    if (v142)
    {
      v144 = v142;
    }

    __message_assert("%s:%u: failed assertion '%s' %s invalid rename %s %s", "JHContentIndex.c", 6540, "newPrefix[0]!='l'", v144, v5, v3);
    free(v143);
    v145 = *(v4 + 64);
    goto LABEL_260;
  }

  v6 = *__error();
  v7 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v4 + 64);
    v9 = *(v4 + 56);
    buf[0].st_dev = 67109890;
    *&buf[0].st_mode = v8;
    LOWORD(buf[0].st_ino) = 1024;
    *(&buf[0].st_ino + 2) = v9;
    HIWORD(buf[0].st_ino) = 2080;
    *&buf[0].st_uid = v5;
    LOWORD(buf[0].st_rdev) = 2080;
    *(&buf[0].st_rdev + 2) = v3;
    _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %d %s to %s", buf, 0x22u);
  }

  *__error() = v6;
  if (*v5 && (v10 = atomic_load((v4 + 36)), bt_changePrefix(v4 + 96, v5, v3, (v10 & 2) == 0)))
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v4 + 64);
      v16 = *(v4 + 56);
      buf[0].st_dev = 67109890;
      *&buf[0].st_mode = v15;
      LOWORD(buf[0].st_ino) = 1024;
      *(&buf[0].st_ino + 2) = v16;
      HIWORD(buf[0].st_ino) = 2080;
      *&buf[0].st_uid = v5;
      LOWORD(buf[0].st_rdev) = 2080;
      *(&buf[0].st_rdev + 2) = v3;
      _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %d %s to %s failed at trie", buf, 0x22u);
    }

    v12 = 0;
    *__error() = v13;
    v11 = 1;
  }

  v17 = *(v4 + 64);
  memset(buf, 0, 144);
  if (!fstat(v17, buf))
  {
    v18 = open(".", 4);
    if (MEMORY[0x1C6921200](v17))
    {
      goto LABEL_254;
    }

    bzero(&__from, 0x400uLL);
    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "%s%s", v3, "indexHead");
    if (v12)
    {
      v19 = fd_rename(*(v4 + 14480), __str) == 0;
    }

    else
    {
      v19 = 0;
    }

    v20 = v11;
    if (((v11 | v19) & 1) == 0)
    {
      v21 = *__error();
      v22 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(v4 + 64);
        v24 = *(v4 + 56);
        buf[0].st_dev = 67109890;
        *&buf[0].st_mode = v23;
        LOWORD(buf[0].st_ino) = 1024;
        *(&buf[0].st_ino + 2) = v24;
        HIWORD(buf[0].st_ino) = 2080;
        *&buf[0].st_uid = v5;
        LOWORD(buf[0].st_rdev) = 2080;
        *(&buf[0].st_rdev + 2) = v3;
        _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %d %s to %s failed at head", buf, 0x22u);
      }

      *__error() = v21;
      v20 = 1;
    }

    v162 = v3;
    snprintf(&__from, 0x400uLL, "%s%s", v5, "shadowIndexHead");
    snprintf(__str, 0x400uLL, "%s%s", v3, "shadowIndexHead");
    rename(&__from, __str, v25);
    snprintf(&__from, 0x400uLL, "%s%s", v5, "indexId");
    snprintf(__str, 0x400uLL, "%s%s", v3, "indexId");
    if (v19)
    {
      rename(&__from, __str, v26);
      if (v27)
      {
        LODWORD(v28) = *__error() == 2;
      }

      else
      {
        LODWORD(v28) = 1;
      }
    }

    else
    {
      LODWORD(v28) = 0;
    }

    if (*(v4 + 14448))
    {
      snprintf(__str, 0x400uLL, "%s%s", v3, "indexIds");
      if (v28)
      {
        LODWORD(v28) = fd_rename(*(v4 + 14448), __str) == 0;
      }
    }

    if (*(v4 + 14456))
    {
      snprintf(__str, 0x400uLL, "%s%s", v3, "indexBigDates");
      if (v28)
      {
        LODWORD(v28) = fd_rename(*(v4 + 14456), __str) == 0;
      }

      snprintf(&__from, 0x400uLL, "%s%s", v5, "indexDates");
      unlink(&__from);
    }

    if (((v20 | v28) & 1) == 0)
    {
      v29 = *__error();
      v30 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(v4 + 64);
        v32 = *(v4 + 56);
        buf[0].st_dev = 67109890;
        *&buf[0].st_mode = v31;
        LOWORD(buf[0].st_ino) = 1024;
        *(&buf[0].st_ino + 2) = v32;
        HIWORD(buf[0].st_ino) = 2080;
        *&buf[0].st_uid = v5;
        LOWORD(buf[0].st_rdev) = 2080;
        *(&buf[0].st_rdev + 2) = v3;
        _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %d %s to %s failed at dates", buf, 0x22u);
      }

      *__error() = v29;
      v20 = 1;
    }

    if (*(v4 + 14464))
    {
      snprintf(__str, 0x400uLL, "%s%s", v3, "indexScores");
      if (v28)
      {
        LODWORD(v28) = fd_rename(*(v4 + 14464), __str) == 0;
      }

      if (((v20 | v28) & 1) == 0)
      {
        v33 = *__error();
        v34 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(v4 + 64);
          v36 = *(v4 + 56);
          buf[0].st_dev = 67109890;
          *&buf[0].st_mode = v35;
          LOWORD(buf[0].st_ino) = 1024;
          *(&buf[0].st_ino + 2) = v36;
          HIWORD(buf[0].st_ino) = 2080;
          *&buf[0].st_uid = v5;
          LOWORD(buf[0].st_rdev) = 2080;
          *(&buf[0].st_rdev + 2) = v3;
          _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %d %s to %s failed at scores", buf, 0x22u);
        }

        LODWORD(v28) = 0;
        *__error() = v33;
        v20 = 1;
      }
    }

    if (*(v4 + 14472))
    {
      snprintf(__str, 0x400uLL, "%s%s", v3, "indexGroups");
      if (v28)
      {
        LODWORD(v28) = fd_rename(*(v4 + 14472), __str) == 0;
      }

      if (((v20 | v28) & 1) == 0)
      {
        v37 = *__error();
        v38 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = *(v4 + 64);
          v40 = *(v4 + 56);
          buf[0].st_dev = 67109890;
          *&buf[0].st_mode = v39;
          LOWORD(buf[0].st_ino) = 1024;
          *(&buf[0].st_ino + 2) = v40;
          HIWORD(buf[0].st_ino) = 2080;
          *&buf[0].st_uid = v5;
          LOWORD(buf[0].st_rdev) = 2080;
          *(&buf[0].st_rdev + 2) = v3;
          _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %d %s to %s failed at group", buf, 0x22u);
        }

        LODWORD(v28) = 0;
        *__error() = v37;
        v20 = 1;
      }
    }

    if (*(v4 + 14488))
    {
      snprintf(__str, 0x400uLL, "%s%s", v3, "topK.v2.mdplistc");
      if (v28)
      {
        LODWORD(v28) = fd_rename(*(v4 + 14488), __str) == 0;
      }

      if (((v20 | v28) & 1) == 0)
      {
        v47 = *__error();
        v48 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = *(v4 + 64);
          v50 = *(v4 + 56);
          buf[0].st_dev = 67109890;
          *&buf[0].st_mode = v49;
          LOWORD(buf[0].st_ino) = 1024;
          *(&buf[0].st_ino + 2) = v50;
          HIWORD(buf[0].st_ino) = 2080;
          *&buf[0].st_uid = v5;
          LOWORD(buf[0].st_rdev) = 2080;
          *(&buf[0].st_rdev + 2) = v3;
          v51 = "### change index prefix [%d] %d %s to %s failed at topK";
LABEL_74:
          _os_log_impl(&dword_1C278D000, v48, OS_LOG_TYPE_DEFAULT, v51, buf, 0x22u);
        }

LABEL_75:
        LODWORD(v28) = 0;
        *__error() = v47;
        v20 = 1;
LABEL_76:
        v160 = v28;
        v54 = *(v4 + 4912);
        if (v54)
        {
          v158 = (v54 + 8);
          v55 = *__error();
          v56 = _SILogForLogForCategory(16);
          v159 = v54;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = (v54 + 128);
            if (*(v54 + 151) < 0)
            {
              v57 = *v57;
            }

            IVFVectorIndex_s::name(__p, v158);
            if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v58 = __p;
            }

            else
            {
              v58 = __p[0].__r_.__value_.__r.__words[0];
            }

            buf[0].st_dev = 136315906;
            *&buf[0].st_mode = v57;
            WORD2(buf[0].st_ino) = 2048;
            *(&buf[0].st_ino + 6) = v54 + 8;
            HIWORD(buf[0].st_gid) = 2080;
            *&buf[0].st_rdev = v58;
            LOWORD(buf[0].st_atimespec.tv_sec) = 2080;
            *(&buf[0].st_atimespec.tv_sec + 2) = v3;
            _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "[%s] changePrefix %p %s -> %s", buf, 0x2Au);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }
          }

          *__error() = v55;
          v59 = (v54 + 80);
          if (*(v54 + 103) < 0)
          {
            v59 = *(v54 + 80);
          }

          IVFVectorIndex_s::unlink(v59, v3, 0);
          v161 = (v54 + 80);
          v60 = (v54 + 80);
          if (*(v54 + 103) < 0)
          {
            v60 = v161->__pn_.__r_.__value_.__r.__words[0];
          }

          v157 = v20;
          v154 = v18;
          v155 = v4;
          v156 = v5;
          IVFVectorIndex_s::unlink(v60, v3, 1);
          v61 = *(v54 + 152);
          v163 = (v54 + 160);
          if (v61 != (v54 + 160))
          {
            while (1)
            {
              v62 = v61[5];
              v63 = *(v62 + 20);
              v65 = *(v62 + 8);
              v64 = *(v62 + 12);
              if (v64 == 512)
              {
                v66 = 1;
              }

              else
              {
                v66 = 3;
              }

              if (v64 == 768)
              {
                v66 = 2;
              }

              v67 = v64 == 256 ? 0 : v66;
              v68 = *(v62 + 16);
              v69 = v68 == 2 ? 1 : 3;
              v70 = v68 == 4 ? 0 : v69;
              v71 = *(v62 + 22);
              memset(__p, 0, 24);
              v72 = strlen(v3);
              if (v72 > 0x7FFFFFFFFFFFFFF7)
              {
                break;
              }

              v73 = v72;
              if (v72 >= 0x17)
              {
                operator new();
              }

              *(&__dst.__r_.__value_.__s + 23) = v72;
              if (v72)
              {
                memcpy(&__dst, v3, v72);
              }

              __dst.__r_.__value_.__s.__data_[v73] = 0;
              IVFIndexName(buf, v65, v63, v67, v70, v71);
              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__r_.__value_.__r.__words[0];
              }

              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __dst.__r_.__value_.__l.__size_;
              }

              v76 = std::string::insert(buf, 0, p_dst, size);
              v77 = v76->__r_.__value_.__r.__words[2];
              *&__p[0].__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
              __p[0].__r_.__value_.__r.__words[2] = v77;
              v76->__r_.__value_.__l.__size_ = 0;
              v76->__r_.__value_.__r.__words[2] = 0;
              v76->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(buf[0].st_gid) < 0)
              {
                operator delete(*&buf[0].st_dev);
              }

              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }

              if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v78 = __p;
              }

              else
              {
                v78 = __p[0].__r_.__value_.__r.__words[0];
              }

              (*(*v62 + 200))(v62, v78);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              v79 = v61[1];
              if (v79)
              {
                do
                {
                  v80 = v79;
                  v79 = *v79;
                }

                while (v79);
              }

              else
              {
                do
                {
                  v80 = v61[2];
                  v81 = *v80 == v61;
                  v61 = v80;
                }

                while (!v81);
              }

              v61 = v80;
              if (v80 == v163)
              {
                goto LABEL_131;
              }
            }

LABEL_273:
            std::vector<long long>::__throw_length_error[abi:nn200100]();
          }

LABEL_131:
          v82 = (v159 + 104);
          v83 = (v159 + 104);
          if (*(v159 + 127) < 0)
          {
            v83 = *v82;
          }

          v84 = strlen(v83);
          if (v84 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_273;
          }

          v85 = v84;
          if (v84 >= 0x17)
          {
            operator new();
          }

          *(&__p[0].__r_.__value_.__s + 23) = v84;
          if (v84)
          {
            memmove(__p, v83, v84);
          }

          v20 = v157;
          __p[0].__r_.__value_.__s.__data_[v85] = 0;
          *&buf[0].st_dev = MEMORY[0x1E69E9820];
          buf[0].st_ino = 0x40000000;
          *&buf[0].st_uid = ___ZN16IVFVectorIndex_s12changePrefixEPKc_block_invoke;
          *&buf[0].st_rdev = &__block_descriptor_tmp_157_8256;
          buf[0].st_atimespec.tv_sec = v158;
          buf[0].st_atimespec.tv_nsec = v3;
          IVFVectorIndex_s::enumerateIndexes(v161);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          memset(&__dst, 0, sizeof(__dst));
          if (*(v159 + 127) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *(v159 + 104), *(v159 + 112));
          }

          else
          {
            *&__p[0].__r_.__value_.__l.__data_ = *v82;
            __p[0].__r_.__value_.__r.__words[2] = *(v159 + 120);
          }

          IVFVectorIndex_s::metaFilename(&__dst, v161, &__p[0].__r_.__value_.__l.__data_);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          MEMORY[0x1C691FAE0](v82, v3);
          memset(&v164, 0, sizeof(v164));
          if (*(v159 + 127) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *(v159 + 104), *(v159 + 112));
          }

          else
          {
            *&__p[0].__r_.__value_.__l.__data_ = *v82;
            __p[0].__r_.__value_.__r.__words[2] = *(v159 + 120);
          }

          v4 = v155;
          v5 = v156;
          v18 = v154;
          IVFVectorIndex_s::metaFilename(&v164, v161, &__p[0].__r_.__value_.__l.__data_);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v87 = &__dst;
          }

          else
          {
            v87 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((v164.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v88 = &v164;
          }

          else
          {
            v88 = v164.__r_.__value_.__r.__words[0];
          }

          IVFVectorIndex_s::rename(*v158, v87, v88, v86);
          if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v164.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        snprintf(&__from, 0x400uLL, "%s%s", v5, "shadowIndexGroups");
        snprintf(__str, 0x400uLL, "%s%s", v3, "shadowIndexGroups");
        if (v160)
        {
          rename(&__from, __str, v89);
          v91 = v90 == 0;
        }

        else
        {
          v91 = 0;
        }

        if (((v20 | v91) & 1) == 0)
        {
          v92 = *__error();
          v93 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(v4 + 64);
            v95 = *(v4 + 56);
            buf[0].st_dev = 67109890;
            *&buf[0].st_mode = v94;
            LOWORD(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 2) = v95;
            HIWORD(buf[0].st_ino) = 2080;
            *&buf[0].st_uid = v5;
            LOWORD(buf[0].st_rdev) = 2080;
            *(&buf[0].st_rdev + 2) = v3;
            _os_log_impl(&dword_1C278D000, v93, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %d %s to %s failed at group shadows", buf, 0x22u);
          }

          *__error() = v92;
          v20 = 1;
        }

        snprintf(&__from, 0x400uLL, "%s%s", v5, "indexUpdates");
        snprintf(__str, 0x400uLL, "%s%s", v3, "indexUpdates");
        rename(&__from, __str, v96);
        v98 = !v91;
        if (!v97 || !v91)
        {
          if (v97)
          {
            v98 = 1;
          }

          if (v98)
          {
            goto LABEL_181;
          }
        }

        else if (*__error() != 2)
        {
          goto LABEL_181;
        }

        if (*(v4 + 9432))
        {
          snprintf(__str, 0x400uLL, "%s%s", v3, "indexPostings");
          v99 = fd_rename(*(v4 + 9432), __str);
          if (v99)
          {
            v100 = v20;
          }

          else
          {
            v100 = 1;
          }

          if ((v100 & 1) == 0)
          {
            v104 = *__error();
            v105 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              v109 = *(v4 + 64);
              v110 = *(v4 + 56);
              buf[0].st_dev = 67109890;
              *&buf[0].st_mode = v109;
              LOWORD(buf[0].st_ino) = 1024;
              *(&buf[0].st_ino + 2) = v110;
              HIWORD(buf[0].st_ino) = 2080;
              *&buf[0].st_uid = v5;
              LOWORD(buf[0].st_rdev) = 2080;
              *(&buf[0].st_rdev + 2) = v3;
              v108 = "### change index prefix [%d] %d %s to %s failed at postings";
              goto LABEL_191;
            }

LABEL_192:
            v101 = 0;
            *__error() = v104;
            v20 = 1;
            goto LABEL_194;
          }

          if (v99)
          {
LABEL_181:
            v101 = 0;
            goto LABEL_194;
          }
        }

        if (*(v4 + 14152))
        {
          snprintf(__str, 0x400uLL, "%s%s", v3, "indexPositions");
          v102 = fd_rename(*(v4 + 14152), __str);
          v101 = v102 == 0;
          if (v102)
          {
            v103 = v20;
          }

          else
          {
            v103 = 1;
          }

          if ((v103 & 1) == 0)
          {
            v104 = *__error();
            v105 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              v106 = *(v4 + 64);
              v107 = *(v4 + 56);
              buf[0].st_dev = 67109890;
              *&buf[0].st_mode = v106;
              LOWORD(buf[0].st_ino) = 1024;
              *(&buf[0].st_ino + 2) = v107;
              HIWORD(buf[0].st_ino) = 2080;
              *&buf[0].st_uid = v5;
              LOWORD(buf[0].st_rdev) = 2080;
              *(&buf[0].st_rdev + 2) = v3;
              v108 = "### change index prefix [%d] %d %s to %s failed at positions";
LABEL_191:
              _os_log_impl(&dword_1C278D000, v105, OS_LOG_TYPE_DEFAULT, v108, buf, 0x22u);
              goto LABEL_192;
            }

            goto LABEL_192;
          }
        }

        else
        {
          v101 = 1;
        }

LABEL_194:
        v111 = atomic_load((v4 + 36));
        if ((v111 & 4) != 0)
        {
          v113 = v20;
          v114 = *(v4 + 64);
          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%s%s", v3, "indexTermIds");
          if (unlinkat(v114, buf, 2048) && *__error() == 22)
          {
            unlinkat(v114, buf, 0);
          }

          snprintf(buf, 0x400uLL, "%s%s", v5, "indexTermIds");
          if (unlinkat(v114, buf, 2048) && *__error() == 22)
          {
            unlinkat(v114, buf, 0);
          }

          v115 = *(v4 + 64);
          bzero(buf, 0x400uLL);
          snprintf(buf, 0x400uLL, "%s%s", v3, "indexPositionTable");
          if (unlinkat(v115, buf, 2048) && *__error() == 22)
          {
            unlinkat(v115, buf, 0);
          }

          snprintf(buf, 0x400uLL, "%s%s", v5, "indexPositionTable");
          if (unlinkat(v115, buf, 2048) && *__error() == 22)
          {
            unlinkat(v115, buf, 0);
          }

          v20 = v113;
        }

        else
        {
          snprintf(__str, 0x400uLL, "%s%s", v3, "indexTermIds");
          v112 = v101 && fd_rename(*(v4 + 5200), __str) == 0;
          if (((v112 | v20) & 1) == 0)
          {
            v116 = *__error();
            v117 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
            {
              v118 = *(v4 + 64);
              v119 = *(v4 + 56);
              buf[0].st_dev = 67109890;
              *&buf[0].st_mode = v118;
              LOWORD(buf[0].st_ino) = 1024;
              *(&buf[0].st_ino + 2) = v119;
              HIWORD(buf[0].st_ino) = 2080;
              *&buf[0].st_uid = v5;
              LOWORD(buf[0].st_rdev) = 2080;
              *(&buf[0].st_rdev + 2) = v3;
              _os_log_impl(&dword_1C278D000, v117, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %d %s to %s failed at termIds", buf, 0x22u);
            }

            *__error() = v116;
            v20 = 1;
          }

          snprintf(__str, 0x400uLL, "%s%s", v3, "indexPositionTable");
          v101 = v112 && fd_rename(*(v4 + 9920), __str) == 0;
          if (((v101 | v20) & 1) == 0)
          {
            v120 = *__error();
            v121 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
            {
              v122 = *(v4 + 64);
              v123 = *(v4 + 56);
              buf[0].st_dev = 67109890;
              *&buf[0].st_mode = v122;
              LOWORD(buf[0].st_ino) = 1024;
              *(&buf[0].st_ino + 2) = v123;
              HIWORD(buf[0].st_ino) = 2080;
              *&buf[0].st_uid = v5;
              LOWORD(buf[0].st_rdev) = 2080;
              *(&buf[0].st_rdev + 2) = v3;
              _os_log_impl(&dword_1C278D000, v121, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %d %s to %s failed at termIds (positions)", buf, 0x22u);
            }

            v101 = 0;
            *__error() = v120;
            v20 = 1;
          }
        }

        v124 = atomic_load((v4 + 36));
        if ((v124 & 2) == 0)
        {
          snprintf(&__from, 0x400uLL, "%s%s", v5, "shadowIndexTermIds");
          snprintf(__str, 0x400uLL, "%s%s", v3, "shadowIndexTermIds");
          if (v101)
          {
            rename(&__from, __str, v125);
            v127 = v126 == 0;
          }

          else
          {
            v127 = 0;
          }

          if (((v127 | v20) & 1) == 0)
          {
            v130 = *__error();
            v131 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
            {
              v132 = *(v4 + 64);
              v133 = *(v4 + 56);
              buf[0].st_dev = 67109890;
              *&buf[0].st_mode = v132;
              LOWORD(buf[0].st_ino) = 1024;
              *(&buf[0].st_ino + 2) = v133;
              HIWORD(buf[0].st_ino) = 2080;
              *&buf[0].st_uid = v5;
              LOWORD(buf[0].st_rdev) = 2080;
              *(&buf[0].st_rdev + 2) = v3;
              _os_log_impl(&dword_1C278D000, v131, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %d %s to %s failed at termIds shadow", buf, 0x22u);
            }

            *__error() = v130;
            LOBYTE(v20) = 1;
          }

          snprintf(&__from, 0x400uLL, "%s%s", v5, "shadowIndexPositionTable");
          snprintf(__str, 0x400uLL, "%s%s", v3, "shadowIndexPositionTable");
          if (v127)
          {
            rename(&__from, __str, v134);
            if ((v135 == 0) | v20 & 1)
            {
              if (!v135)
              {
LABEL_238:
                __strlcpy_chk();
                v12 = 1;
LABEL_253:
                MEMORY[0x1C6921200](v18);
LABEL_254:
                if ((v18 & 0x80000000) == 0)
                {
                  close(v18);
                }

                goto LABEL_256;
              }

LABEL_249:
              v12 = 0;
              goto LABEL_253;
            }
          }

          else if (v20)
          {
            goto LABEL_249;
          }

          v136 = *__error();
          v137 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            v138 = *(v4 + 64);
            v139 = *(v4 + 56);
            buf[0].st_dev = 67109890;
            *&buf[0].st_mode = v138;
            LOWORD(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 2) = v139;
            HIWORD(buf[0].st_ino) = 2080;
            *&buf[0].st_uid = v5;
            LOWORD(buf[0].st_rdev) = 2080;
            *(&buf[0].st_rdev + 2) = v3;
            _os_log_impl(&dword_1C278D000, v137, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %d %s to %s failed at termIds positions", buf, 0x22u);
          }

          v12 = 0;
          *__error() = v136;
          goto LABEL_253;
        }

        v128 = *(v4 + 64);
        bzero(buf, 0x400uLL);
        snprintf(buf, 0x400uLL, "%s%s", v3, "shadowIndexTermIds");
        if (unlinkat(v128, buf, 2048) && *__error() == 22)
        {
          unlinkat(v128, buf, 0);
        }

        snprintf(buf, 0x400uLL, "%s%s", v5, "shadowIndexTermIds");
        if (unlinkat(v128, buf, 2048) && *__error() == 22)
        {
          unlinkat(v128, buf, 0);
        }

        v129 = *(v4 + 64);
        bzero(buf, 0x400uLL);
        snprintf(buf, 0x400uLL, "%s%s", v162, "shadowIndexPositionTable");
        if (unlinkat(v129, buf, 2048) && *__error() == 22)
        {
          unlinkat(v129, buf, 0);
        }

        snprintf(buf, 0x400uLL, "%s%s", v5, "shadowIndexPositionTable");
        if (unlinkat(v129, buf, 2048) && *__error() == 22)
        {
          unlinkat(v129, buf, 0);
        }

        if (v101)
        {
          goto LABEL_238;
        }

        goto LABEL_249;
      }
    }

    v41 = *(v4 + 4928);
    if (!v41)
    {
      goto LABEL_76;
    }

    if (!v28 || (bzero(buf, 0x400uLL), snprintf(buf, 0x400uLL, "%s%s", v3, "directoryStoreFile"), bzero(__p, 0x400uLL), v42 = fd_name(*(v41 + 224), __p, 0x400uLL), (v28 = v42) == 0))
    {
LABEL_71:
      if ((v20 | v28))
      {
        goto LABEL_76;
      }

      v47 = *__error();
      v48 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v52 = *(v4 + 64);
        v53 = *(v4 + 56);
        buf[0].st_dev = 67109890;
        *&buf[0].st_mode = v52;
        LOWORD(buf[0].st_ino) = 1024;
        *(&buf[0].st_ino + 2) = v53;
        HIWORD(buf[0].st_ino) = 2080;
        *&buf[0].st_uid = v5;
        LOWORD(buf[0].st_rdev) = 2080;
        *(&buf[0].st_rdev + 2) = v3;
        v51 = "### change index prefix [%d] %d %s to %s failed at directory index";
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    if (!*v42)
    {
      LODWORD(v28) = 0;
      goto LABEL_71;
    }

    v43 = v20;
    strlcat(v42, ".shadow", 0x400uLL);
    sibling_protected = fd_create_sibling_protected(*(v41 + 224), v28, 0, 0);
    v45 = fd_rename(*(v41 + 224), buf);
    LODWORD(v28) = v45 == 0;
    if (!sibling_protected)
    {
LABEL_70:
      v20 = v43;
      goto LABEL_71;
    }

    v46 = v45;
    if (strstr(buf, ".shadow.shadow"))
    {
      v147 = __si_assert_copy_extra(0);
      v148 = v147;
      v149 = "";
      if (v147)
      {
        v149 = v147;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3259, "0==strstr(path, .shadow.shadow)", v149);
      free(v148);
      if (__valid_fs(-1))
      {
        v150 = 2989;
      }

      else
      {
        v150 = 3072;
      }

      *v150 = -559038737;
      abort();
    }

    snprintf(buf, 0x400uLL, "%s%s", v3, "directoryStoreFile.shadow");
    if (v46)
    {
      LODWORD(v28) = 0;
    }

    else
    {
      LODWORD(v28) = fd_rename(sibling_protected, buf) == 0;
    }

    if (!strstr(buf, ".shadow.shadow"))
    {
      fd_release(sibling_protected);
      goto LABEL_70;
    }

    v151 = __si_assert_copy_extra(0);
    v152 = v151;
    v153 = "";
    if (v151)
    {
      v153 = v151;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3265, "0==strstr(path, .shadow.shadow)", v153);
    free(v152);
    v145 = -1;
LABEL_260:
    if (__valid_fs(v145))
    {
      v146 = 2989;
    }

    else
    {
      v146 = 3072;
    }

    *v146 = -559038737;
    abort();
  }

LABEL_256:
  v140 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t ContentIndexCompleteChangePrefix(int a1, char *__s1, char *__s2)
{
  v53 = *MEMORY[0x1E69E9840];
  result = strcmp(__s1, __s2);
  if (result)
  {
    if (*__s1 - 48 <= 9 && *__s2 == 108)
    {
      v31 = __si_assert_copy_extra_3233(0, a1);
      v32 = v31;
      v33 = "";
      if (v31)
      {
        v33 = v31;
      }

      __message_assert("%s:%u: failed assertion '%s' %s invalid rename %s %s", "JHContentIndex.c", 6487, "newPrefix[0]!='l'", v33, __s1, __s2);
      free(v32);
      if (__valid_fs(a1))
      {
        v34 = 2989;
      }

      else
      {
        v34 = 3072;
      }

      *v34 = -559038737;
      abort();
    }

    v7 = *__error();
    v8 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *&buf[4] = a1;
      *&buf[8] = 2080;
      *&buf[10] = __s1;
      *&buf[18] = 2080;
      *&buf[20] = __s2;
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "### change index prefix [%d] %s to %s", buf, 0x1Cu);
    }

    *__error() = v7;
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexDirectory");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexDirectory");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexCompactDirectory");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexCompactDirectory");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexArrays");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexArrays");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "shadowIndexDirectory");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "shadowIndexDirectory");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "shadowIndexCompactDirectory");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "shadowIndexCompactDirectory");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "shadowIndexArrays");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "shadowIndexArrays");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexHead");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexHead");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "shadowIndexHead");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "shadowIndexHead");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexId");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexId");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexIds");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexIds");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexBigDates");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexBigDates");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexScores");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexScores");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexGroups");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexGroups");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "topK.v2.mdplistc");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "topK.v2.mdplistc");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "directoryStoreFile");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "directoryStoreFile");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "directoryStoreFile.shadow");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "directoryStoreFile.shadow");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    if (__s1 && __s2)
    {
      memset(&v42, 0, sizeof(v42));
      std::string::append[abi:nn200100]<char const*,0>(&v42, ".", "");
      *&__ec.__val_ = 0;
      __ec.__cat_ = std::system_category();
      memset(buf, 0, 24);
      std::string::append[abi:nn200100]<char const*,0>(buf, ".", "");
      std::__fs::filesystem::__status(buf, &__ec);
      v9 = __str.__r_.__value_.__s.__data_[0];
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v9 == 2)
      {
        v10 = strlen(__s1);
        if (v10 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_75;
        }

        v11 = v10;
        if (v10 >= 0x17)
        {
          operator new();
        }

        *(&__str.__r_.__value_.__s + 23) = v10;
        if (v10)
        {
          memcpy(&__str, __s1, v10);
        }

        __str.__r_.__value_.__s.__data_[v11] = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZN16IVFVectorIndex_s20completeChangePrefixEiPKcS1_S1__block_invoke;
        *&buf[24] = &__block_descriptor_tmp_155;
        *&buf[32] = __s2;
        LODWORD(v48) = a1;
        IVFVectorIndex_s::enumerateIndexes(&v42);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v16 = strlen(__s1);
        if (v16 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_75;
        }

        v17 = v16;
        if (v16 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v16;
        if (v16)
        {
          memcpy(&__dst, __s1, v16);
        }

        __dst.__r_.__value_.__s.__data_[v17] = 0;
        __str.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
        __str.__r_.__value_.__l.__size_ = 0x40000000;
        __str.__r_.__value_.__r.__words[2] = ___ZN16IVFVectorIndex_s20completeChangePrefixEiPKcS1_S1__block_invoke_2;
        v44 = &__block_descriptor_tmp_156_8253;
        v45 = __s2;
        v46 = a1;
        IVFVectorIndex_s::enumerateIndexes(&v42);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        memset(&__dst, 0, sizeof(__dst));
        v18 = strlen(__s1);
        if (v18 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_75;
        }

        v19 = v18;
        if (v18 >= 0x17)
        {
          operator new();
        }

        v39 = v18;
        if (v18)
        {
          memcpy(&__p, __s1, v18);
        }

        *(&__p + v19) = 0;
        IVFVectorIndex_s::metaFilename(&__dst, &v42, &__p);
        if (v39 < 0)
        {
          operator delete(__p);
        }

        memset(&v37, 0, sizeof(v37));
        v20 = strlen(__s2);
        if (v20 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_75:
          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        v21 = v20;
        if (v20 >= 0x17)
        {
          operator new();
        }

        v36 = v20;
        if (v20)
        {
          memcpy(&v35, __s2, v20);
        }

        *(&v35 + v21) = 0;
        IVFVectorIndex_s::metaFilename(&v37, &v42, &v35);
        if (v36 < 0)
        {
          operator delete(v35);
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        v23 = SHIBYTE(v37.__r_.__value_.__r.__words[2]);
        v24 = v37.__r_.__value_.__r.__words[0];
        v25 = fd_create_protected(a1, p_dst, 0, 0);
        if (v25)
        {
          v26 = v25;
          if (v23 >= 0)
          {
            v27 = &v37;
          }

          else
          {
            v27 = v24;
          }

          fd_rename(v25, v27);
          fd_release(v26);
          LOBYTE(v23) = *(&v37.__r_.__value_.__s + 23);
        }

        if ((v23 & 0x80) != 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v14 = *__error();
        v15 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          val = __ec.__val_;
          std::error_code::message(&__str, &__ec);
          v30 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
          *buf = 136316674;
          *&buf[4] = "completeChangePrefix";
          *&buf[12] = 1024;
          *&buf[14] = 4786;
          *&buf[18] = 2080;
          *&buf[20] = ".";
          *&buf[28] = 2080;
          *&buf[30] = __s1;
          *&buf[38] = 2080;
          v48 = __s2;
          v49 = 1024;
          v50 = val;
          v51 = 2080;
          v52 = v30;
          _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: IVFVectorIndex::completeChangePrefix %s oldPrefix %s newPrefix %s is_directory failed %d %s", buf, 0x40u);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        *__error() = v14;
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v12 = *__error();
      v13 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "completeChangePrefix";
        *&buf[12] = 1024;
        *&buf[14] = 4780;
        *&buf[18] = 2048;
        *&buf[20] = ".";
        *&buf[28] = 2048;
        *&buf[30] = __s1;
        *&buf[38] = 2048;
        v48 = __s2;
        _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: IVFVectorIndex::completeChangePrefix called with null path (%p), oldPrefix (%p), or newPrefix (%p)", buf, 0x30u);
      }

      *__error() = v12;
    }

    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "shadowIndexGroups");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "shadowIndexGroups");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexUpdates");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexUpdates");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexPostings");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexPostings");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexTermIds");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexTermIds");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "shadowIndexTermIds");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "shadowIndexTermIds");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexPositions");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexPositions");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "indexPositionTable");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "indexPositionTable");
    renameatx_np(a1, buf, a1, &__str, 0x10u);
    bzero(buf, 0x400uLL);
    bzero(&__str, 0x400uLL);
    snprintf(&__str, 0x400uLL, "%s%s", __s2, "shadowIndexPositionTable");
    snprintf(buf, 0x400uLL, "%s%s", __s1, "shadowIndexPositionTable");
    result = renameatx_np(a1, buf, a1, &__str, 0x10u);
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

int *ContentIndexSetEmergency(int *result, int a2)
{
  v2 = a2;
  v3 = result;
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(result + 44);
  if (a2)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(10);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v7)
      {
        v10 = 136315394;
        v11 = "_CISetEmergency";
        v12 = 1024;
        v13 = 84;
        v8 = "%s:%d: Reaffirming index emergency state to true";
LABEL_12:
        _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, v8, &v10, 0x12u);
        goto LABEL_9;
      }
    }

    else if (v7)
    {
      v10 = 136315394;
      v11 = "_CISetEmergency";
      v12 = 1024;
      v13 = 82;
      v8 = "%s:%d: Setting index emergency state";
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (*(result + 44))
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "_CISetEmergency";
      v12 = 1024;
      v13 = 83;
      v8 = "%s:%d: Clearing index emergency state";
      goto LABEL_12;
    }

LABEL_9:
    result = __error();
    *result = v5;
  }

  *(v3 + 44) = v2;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ContentIndexRecoverVectorIds(uint64_t a1, int a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v62 = 0;
  if (*(a1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v7 = setThreadIdAndInfo(*(a1 + 64), sIndexExceptionCallbacks, a1, 0x20000000, add_explicit + 1);
    v61 = v7;
    v8 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
    v59 = v9;
    v60 = HIDWORD(v7);
    v58 = v10;
    *(v8 + 216) = 0;
    v11 = *(v8 + 312);
    v12 = *(v8 + 224);
    if (v12)
    {
      v12(*(v8 + 288));
    }

    if (_setjmp(v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v8 + 312) = v11;
      if ((~*(v8 + 212) & 0xA0000000) == 0)
      {
        v13 = *(v8 + 288);
        if (v13)
        {
          _CIMakeInvalid(v13);
        }
      }

      CIOnThreadCleanUpReset(v58);
      dropThreadId(v61, 1, add_explicit + 1);
      CICleanUpReset(v61, v59);
    }

    else
    {
      v14 = *(a1 + 4912);
      if (v14)
      {
        v15 = __THREAD_SLOT_KEY;
        if (!__THREAD_SLOT_KEY)
        {
          makeThreadId();
          v15 = __THREAD_SLOT_KEY;
        }

        v16 = pthread_getspecific(v15);
        if (!v16 || (v17 = v16, v16 >= 0x801))
        {
          makeThreadId();
          v17 = pthread_getspecific(__THREAD_SLOT_KEY);
        }

        v18 = 0;
        v56 = v11;
        v57 = add_explicit;
        if (v17 && v17 <= 0x800)
        {
          v19 = &threadData[9 * v17];
          v18 = *(v19 - 11);
          *(v19 - 11) = 1;
        }

        v54 = v18;
        v20 = *__error();
        v21 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = (v14 + 128);
          if (*(v14 + 151) < 0)
          {
            v22 = *v22;
          }

          v23 = v22;
          IVFVectorIndex_s::name(&__p, v14 + 8);
          p_p = __p.__r_.__value_.__r.__words[0];
          v25 = "non-";
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          *buf = 136315650;
          *&buf[4] = v23;
          v65 = 2080;
          if (a2)
          {
            v25 = "";
          }

          v66 = p_p;
          v67 = 2080;
          v68 = v25;
          _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "[%s] recoverIds from %s %spurgeable", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        *__error() = v20;
        v53 = v14;
        v26 = *(v14 + 152);
        v55 = v14;
        v27 = (v14 + 160);
        if (v26 != (v14 + 160))
        {
          v28 = 2;
          v52 = (v14 + 128);
          v51 = a2;
          do
          {
            v29 = v26[5];
            if (v29[22] == a2)
            {
              v30 = 0;
              v31 = *(v29 + 3);
              v32 = *(v29 + 4);
              v33 = 3;
              if (v31 == 512)
              {
                v33 = 1;
              }

              if (v31 == 768)
              {
                v33 = v28;
              }

              if (v31 == 256)
              {
                v34 = 0;
              }

              else
              {
                v34 = v33;
              }

              v35 = 3;
              if (v32 == 2)
              {
                v35 = 1;
              }

              if (v32 != 4)
              {
                v30 = v35;
              }

              if (*(a3 + 24 * v34 + 8 * v30))
              {
                v36 = *__error();
                v37 = _SILogForLogForCategory(16);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = v28;
                  v39 = v52;
                  if (*(v53 + 151) < 0)
                  {
                    v39 = *v52;
                  }

                  (*(*v29 + 312))(buf, v29, v55 + 104);
                  if (v67 >= 0)
                  {
                    v40 = buf;
                  }

                  else
                  {
                    v40 = *buf;
                  }

                  LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
                  *(__p.__r_.__value_.__r.__words + 4) = v39;
                  WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
                  *(&__p.__r_.__value_.__r.__words[1] + 6) = v40;
                  _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "[%s] updateVectorStorageOffsets %s", &__p, 0x16u);
                  if (SHIBYTE(v67) < 0)
                  {
                    operator delete(*buf);
                  }

                  v28 = v38;
                  a2 = v51;
                }

                *__error() = v36;
                (*(*v29 + 304))(v29, 0);
              }
            }

            v41 = v26[1];
            if (v41)
            {
              do
              {
                v42 = v41;
                v41 = *v41;
              }

              while (v41);
            }

            else
            {
              do
              {
                v43 = v26;
                v26 = v26[2];
                v42 = v26;
              }

              while (*v26 != v43);
            }

            v26 = v42;
          }

          while (v42 != v27);
        }

        v44 = __THREAD_SLOT_KEY;
        if (!__THREAD_SLOT_KEY)
        {
          makeThreadId();
          v44 = __THREAD_SLOT_KEY;
        }

        v45 = pthread_getspecific(v44);
        v11 = v56;
        add_explicit = v57;
        if (v45 && (v46 = v45, v45 < 0x801) || (makeThreadId(), (v46 = pthread_getspecific(__THREAD_SLOT_KEY)) != 0))
        {
          if (v46 <= 0x800)
          {
            *(&threadData[9 * v46 - 5] - 1) = v54;
          }
        }
      }

      v62 = 1;
      v47 = threadData[9 * v61 + 1] + 320 * v60;
      *(v47 + 312) = v11;
      v48 = *(v47 + 232);
      if (v48)
      {
        v48(*(v47 + 288));
      }

      dropThreadId(v61, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

  result = v62;
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ContentIndexGetDataForId(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  *&v49[13] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 4912);
  if (!v5)
  {
    v14 = 0;
    goto LABEL_32;
  }

  v10 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v10 = __THREAD_SLOT_KEY;
  }

  v11 = pthread_getspecific(v10);
  if (!v11 || v11 >= 0x801)
  {
    makeThreadId();
    v11 = pthread_getspecific(__THREAD_SLOT_KEY);
  }

  v12 = 0;
  if (v11 && v11 <= 0x800)
  {
    v13 = &threadData[9 * v11];
    v12 = *(v13 - 11);
    *(v13 - 11) = 1;
  }

  *a4 = (a2 >> 2) & 3;
  *(a4 + 1) = a2 & 3;
  *(a4 + 2) = a3;
  v39 = 0;
  v40 = 0;
  IVFVectorIndex_s::getVectorIndex(&v39, v5 + 8, a2 >> 36, a3, a2 & 3, (a2 >> 2) & 3, a3 >> 31);
  if (v39)
  {
    v14 = (*(*v39 + 296))(v39, a2 >> 4, a5);
    if (v14)
    {
      goto LABEL_23;
    }

    v15 = *__error();
    v16 = _SILogForLogForCategory(16);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v17 = (v5 + 128);
    if (*(v5 + 151) < 0)
    {
      v17 = *v17;
    }

    v36 = v17;
    indexFileName(&__p, v5 + 104, a2 >> 36, a3, a2 & 3, (a2 >> 2) & 3, a3 >> 31);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136316674;
    *&buf[4] = "getDataForId";
    v42 = 1024;
    v43 = 4552;
    v44 = 2080;
    v45 = v36;
    v46 = 1024;
    *v47 = a2 >> 4;
    *&v47[4] = 2048;
    *&v47[6] = a2 >> 4;
    v48 = 1024;
    *v49 = a3;
    v49[2] = 2080;
    *&v49[3] = p_p;
    _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: [%s] vector for offset=%u data_id=%llx meta=%x not exist. %s", buf, 0x3Cu);
    goto LABEL_53;
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v27 = (v5 + 128);
    if (*(v5 + 151) < 0)
    {
      v27 = *v27;
    }

    v37 = v27;
    IVFIndexName(buf, a2 >> 36, a3, a2 & 3, (a2 >> 2) & 3, a3 >> 31);
    v28 = *(v5 + 127);
    if (v28 >= 0)
    {
      v29 = (v5 + 104);
    }

    else
    {
      v29 = *(v5 + 104);
    }

    if (v28 >= 0)
    {
      v30 = *(v5 + 127);
    }

    else
    {
      v30 = *(v5 + 112);
    }

    v31 = std::string::insert(buf, 0, v29, v30);
    v32 = v31->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    if (SBYTE3(v45) < 0)
    {
      operator delete(*buf);
    }

    v33 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v33 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136316418;
    *&buf[4] = "getDataForId";
    v42 = 1024;
    v43 = 4540;
    v44 = 2080;
    v45 = v37;
    v46 = 2048;
    *v47 = a2 >> 4;
    *&v47[8] = 1024;
    *&v47[10] = a3;
    v48 = 2080;
    *v49 = v33;
    _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: [%s] vector index for data_id=%llx meta=%x not exist. %s", buf, 0x36u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *__error() = v19;
  if ((a3 & 0x80000000) == 0)
  {
    v15 = *__error();
    v21 = _SILogForLogForCategory(16);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
LABEL_21:
      v14 = 0;
      *__error() = v15;
      goto LABEL_23;
    }

    v34 = (v5 + 128);
    if (*(v5 + 151) < 0)
    {
      v34 = *v34;
    }

    indexFileName(&__p, v5 + 104, a2 >> 36, a3, a2 & 3, (a2 >> 2) & 3, 0);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &__p;
    }

    else
    {
      v35 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "getDataForId";
    v42 = 1024;
    v43 = 4542;
    v44 = 2080;
    v45 = v34;
    v46 = 2080;
    *v47 = v35;
    _os_log_fault_impl(&dword_1C278D000, v21, OS_LOG_TYPE_FAULT, "%s:%d: [%s] Missing %s is not purgeable", buf, 0x26u);
LABEL_53:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_21;
  }

  v14 = 0;
LABEL_23:
  v22 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v23 = __THREAD_SLOT_KEY;
  }

  v24 = pthread_getspecific(v23);
  if (v24 && v24 < 0x801 || (makeThreadId(), (v24 = pthread_getspecific(__THREAD_SLOT_KEY)) != 0))
  {
    if (v24 <= 0x800)
    {
      *(&threadData[9 * v24 - 5] - 1) = v12;
    }
  }

LABEL_32:
  v25 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __ContentIndexListDumpVectorIndex_block_invoke(void *a1, uint64_t a2)
{
  v2 = *(a2 + 4912);
  if (v2)
  {
    v3 = a1[7];
    theString = a1[6];
    v62 = a1;
    v74 = 0;
    v72 = 0u;
    memset(v73, 0, sizeof(v73));
    v71 = 0u;
    *__p = 0u;
    memset(v69, 0, sizeof(v69));
    v67 = 0u;
    v68 = 0u;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v67);
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 0x40000000;
    v64 = __vectorIndexDiagnoseDump_block_invoke;
    v65 = &__block_descriptor_tmp_12_8292;
    v66 = v3;
    v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v68, "---- IVFVectorIndex ", 20);
    v5 = *(v2 + 151);
    v59 = v2 + 128;
    if (v5 >= 0)
    {
      v6 = v2 + 128;
    }

    else
    {
      v6 = *(v2 + 128);
    }

    if (v5 >= 0)
    {
      v7 = *(v2 + 151);
    }

    else
    {
      v7 = *(v2 + 136);
    }

    v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, v6, v7);
    v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, " ", 1);
    v60 = v2;
    v12 = *(v2 + 104);
    v11 = v2 + 104;
    v10 = v12;
    v13 = *(v11 + 23);
    if (v13 >= 0)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v13 >= 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = *(v11 + 8);
    }

    v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v14, v15);
    v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, "(", 1);
    v18 = MEMORY[0x1C691FC90](v17, *(v11 + 76));
    v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, ")", 1);
    v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, " ----", 5);
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v21 = std::locale::use_facet(&__dst, MEMORY[0x1E69E5318]);
    (v21->__vftable[2].~facet_0)(v21, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
    v22 = *(v11 + 48);
    if (v22 == (v11 + 56))
    {
      v24 = 0;
      v23 = 0;
    }

    else
    {
      LODWORD(v23) = 0;
      LODWORD(v24) = 0;
      do
      {
        v25 = v22[5];
        v76 = 0;
        v77 = 0;
        __dst.__locale_ = 0;
        v26 = v64(v63, v25[2]);
        v27 = strlen(v26);
        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        v28 = v27;
        if (v27 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v77) = v27;
        if (v27)
        {
          memmove(&__dst, v26, v27);
        }

        *(&__dst.__locale_ + v28) = 0;
        v29 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v68, "property: ", 10);
        if (v77 >= 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__locale_;
        }

        if (v77 >= 0)
        {
          v31 = HIBYTE(v77);
        }

        else
        {
          v31 = v76;
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, p_dst, v31);
        std::ios_base::getloc((&v69[-1] + *(v68 - 24)));
        v32 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
        (v32->__vftable[2].~facet_0)(v32, 10);
        std::locale::~locale(&v78);
        std::ostream::put();
        std::ostream::flush();
        v33 = (*(*v25 + 320))(v25, v11, &v68, 0);
        if (SHIBYTE(v77) < 0)
        {
          operator delete(__dst.__locale_);
        }

        v34 = v22[1];
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = v22[2];
            v36 = *v35 == v22;
            v22 = v35;
          }

          while (!v36);
        }

        v23 = (v33 + v23);
        v24 = (v24 + 1);
        v22 = v35;
      }

      while (v35 != (v11 + 56));
    }

    v37 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v68, "---- IVFVectorIndex ", 20);
    v38 = *(v60 + 151);
    if (v38 >= 0)
    {
      v39 = v59;
    }

    else
    {
      v39 = *(v60 + 128);
    }

    if (v38 >= 0)
    {
      v40 = *(v60 + 151);
    }

    else
    {
      v40 = *(v60 + 136);
    }

    v41 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, v39, v40);
    v42 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, " ", 1);
    v43 = *(v60 + 127);
    if (v43 >= 0)
    {
      v44 = v11;
    }

    else
    {
      v44 = *(v60 + 104);
    }

    if (v43 >= 0)
    {
      v45 = *(v60 + 127);
    }

    else
    {
      v45 = *(v60 + 112);
    }

    v46 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v42, v44, v45);
    v47 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, "(", 1);
    v48 = MEMORY[0x1C691FC90](v47, *(v60 + 180));
    v49 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, ")", 1);
    v50 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v49, " has ", 5);
    v51 = MEMORY[0x1C691FC90](v50, v23);
    v52 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v51, " vectors in ", 12);
    v53 = MEMORY[0x1C691FC90](v52, v24);
    v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, " indexes ----", 13);
    std::ios_base::getloc((v54 + *(*v54 - 24)));
    v55 = std::locale::use_facet(&__dst, MEMORY[0x1E69E5318]);
    (v55->__vftable[2].~facet_0)(v55, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
    std::stringbuf::str();
    if (v77 >= 0)
    {
      locale = &__dst;
    }

    else
    {
      locale = __dst.__locale_;
    }

    CFStringAppendCString(theString, locale, 0x8000100u);
    if (SHIBYTE(v77) < 0)
    {
      operator delete(__dst.__locale_);
    }

    *&v67 = *MEMORY[0x1E69E54D8];
    v57 = *(MEMORY[0x1E69E54D8] + 72);
    *(&v67 + *(v67 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    *&v68 = v57;
    *(&v68 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v71) < 0)
    {
      operator delete(__p[1]);
    }

    *(&v68 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v69);
    std::iostream::~basic_iostream();
    MEMORY[0x1C691FE80](v73);
    a1 = v62;
  }

  else
  {
    LODWORD(v23) = 0;
  }

  *(*(a1[4] + 8) + 24) += v23;
  ++*(*(a1[5] + 8) + 24);
  return 1;
}

uint64_t __ContentIndexVectorIndexStorageSize_block_invoke(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 4912);
  if (v2)
  {
    v3 = *(v2 + 152);
    v21 = a1;
    v4 = 0;
    if (v3 != (v2 + 160))
    {
      v5 = *(a1 + 40);
      do
      {
        v6 = v3[5];
        if (!v5 || v6[22] == 1)
        {
          v7 = (*(*v6 + 280))(v3[5]);
          v8 = *__error();
          v9 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = (v2 + 128);
            if (*(v2 + 151) < 0)
            {
              v10 = *(v2 + 128);
            }

            (*(*v6 + 312))(&__p, v6, v2 + 104);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            v24 = v10;
            v25 = 2080;
            v26 = p_p;
            v27 = 2048;
            v28 = v7;
            _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "[%s] storageSize of %s: %zu", buf, 0x20u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          *__error() = v8;
          v4 += v7;
        }

        v12 = v3[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v3[2];
            v14 = *v13 == v3;
            v3 = v13;
          }

          while (!v14);
        }

        v3 = v13;
      }

      while (v13 != (v2 + 160));
    }

    v15 = *__error();
    v16 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = (v2 + 128);
      if (*(v2 + 151) < 0)
      {
        v17 = *v17;
      }

      IVFVectorIndex_s::name(&__p, v2 + 8);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &__p;
      }

      else
      {
        v18 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v24 = v17;
      v25 = 2080;
      v26 = v18;
      v27 = 2048;
      v28 = v4;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "[%s] storageSize of %s total: %zu", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *__error() = v15;
    a1 = v21;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) += v4;
  v19 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __ContentIndexPurgeVectorIndex_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 4912);
  if (v3)
  {
    v4 = *(a1 + 40);
    std::mutex::lock((v3 + 16));
    v59 = v2;
    if (*(v3 + 13) == 1)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = (v3 + 128);
        if (*(v3 + 151) < 0)
        {
          v7 = *v7;
        }

        *buf = 136315138;
        *&buf[4] = v7;
        _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "[%s] purge abort during merging", buf, 0xCu);
      }

      v8 = 0;
      *__error() = v5;
      goto LABEL_110;
    }

    v9 = *(v3 + 152);
    if (v9 == (v3 + 160))
    {
      v8 = 0;
      goto LABEL_110;
    }

    v8 = 0;
    while (1)
    {
      v10 = v9[5];
      if (((v10[22] | v4) & 1) == 0)
      {
        v22 = v9[1];
        if (v22)
        {
          do
          {
            v19 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v9;
            v9 = v9[2];
          }

          while (*v9 != v23);
          v19 = v9;
        }

        goto LABEL_107;
      }

      v11 = (*(*v10 + 280))(v9[5]);
      v12 = *__error();
      v13 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v3 + 128;
        if (*(v3 + 151) < 0)
        {
          v14 = *(v3 + 128);
        }

        (*(*v10 + 312))(buf, v10, v3 + 104);
        v15 = buf;
        if (v61 < 0)
        {
          v15 = *buf;
        }

        *v62 = 136315394;
        v63 = v14;
        v64 = 2080;
        v65 = v15;
        _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "[%s] purge %s", v62, 0x16u);
        if (v61 < 0)
        {
          operator delete(*buf);
        }
      }

      *__error() = v12;
      (*(*v10 + 168))(v10);
      v16 = v9[1];
      v17 = v16;
      v18 = v9;
      if (v16)
      {
        do
        {
          v19 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v19 = v18[2];
          v45 = *v19 == v18;
          v18 = v19;
        }

        while (!v45);
      }

      if (*(v3 + 152) == v9)
      {
        *(v3 + 152) = v19;
      }

      v20 = *(v3 + 160);
      --*(v3 + 168);
      if (*v9)
      {
        if (!v16)
        {
          v16 = *v9;
          v21 = v9;
LABEL_39:
          v25 = 0;
          v24 = v21[2];
          v16[2] = v24;
          goto LABEL_40;
        }

        do
        {
          v21 = v16;
          v16 = *v16;
        }

        while (v16);
        v16 = v21[1];
        if (v16)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v21 = v9;
        if (v16)
        {
          goto LABEL_39;
        }
      }

      v24 = v21[2];
      v25 = 1;
LABEL_40:
      v26 = *v24;
      if (*v24 == v21)
      {
        *v24 = v16;
        if (v21 == v20)
        {
          v26 = 0;
          v20 = v16;
        }

        else
        {
          v26 = v24[1];
        }
      }

      else
      {
        v24[1] = v16;
      }

      v27 = *(v21 + 24);
      if (v21 != v9)
      {
        v28 = v9[2];
        v21[2] = v28;
        v28[*v28 != v9] = v21;
        v29 = *v9;
        *v21 = *v9;
        v29[2] = v21;
        v30 = v9[1];
        v21[1] = v30;
        if (v30)
        {
          v30[2] = v21;
        }

        *(v21 + 24) = *(v9 + 24);
        if (v20 == v9)
        {
          v20 = v21;
        }
      }

      if (!v20 || !v27)
      {
        goto LABEL_103;
      }

      if (!v25)
      {
        *(v16 + 24) = 1;
        goto LABEL_103;
      }

      while (1)
      {
        v31 = v26[2];
        v32 = *v31;
        v33 = *(v26 + 24);
        if (*v31 == v26)
        {
          break;
        }

        if ((v26[3] & 1) == 0)
        {
          *(v26 + 24) = 1;
          *(v31 + 24) = 0;
          v34 = v31[1];
          v35 = *v34;
          v31[1] = *v34;
          if (v35)
          {
            *(v35 + 16) = v31;
          }

          v36 = v31[2];
          v34[2] = v36;
          v36[*v36 != v31] = v34;
          *v34 = v31;
          v31[2] = v34;
          if (v20 == *v26)
          {
            v20 = v26;
          }

          v26 = *(*v26 + 8);
        }

        v37 = *v26;
        if (*v26 && *(v37 + 24) != 1)
        {
          v38 = v26[1];
          if (v38 && (v38[3] & 1) == 0)
          {
LABEL_89:
            v37 = v26;
          }

          else
          {
            *(v37 + 24) = 1;
            *(v26 + 24) = 0;
            v46 = v37[1];
            *v26 = v46;
            if (v46)
            {
              *(v46 + 16) = v26;
            }

            v47 = v26[2];
            v37[2] = v47;
            v47[*v47 != v26] = v37;
            v37[1] = v26;
            v26[2] = v37;
            v38 = v26;
          }

          v48 = v37[2];
          *(v37 + 24) = *(v48 + 24);
          *(v48 + 24) = 1;
          *(v38 + 24) = 1;
          v49 = *(v48 + 8);
          v50 = *v49;
          *(v48 + 8) = *v49;
          if (v50)
          {
            *(v50 + 16) = v48;
          }

          v51 = *(v48 + 16);
          v49[2] = v51;
          v51[*v51 != v48] = v49;
          *v49 = v48;
          goto LABEL_102;
        }

        v38 = v26[1];
        if (v38 && *(v38 + 24) != 1)
        {
          goto LABEL_89;
        }

        *(v26 + 24) = 0;
        v39 = v26[2];
        if (v39 == v20 || (v39[3] & 1) == 0)
        {
          goto LABEL_83;
        }

LABEL_81:
        v26 = *(v39[2] + (*v39[2] == v39));
      }

      if ((v26[3] & 1) == 0)
      {
        *(v26 + 24) = 1;
        *(v31 + 24) = 0;
        v40 = v32[1];
        *v31 = v40;
        if (v40)
        {
          v40[2] = v31;
        }

        v41 = v31[2];
        v32[2] = v41;
        v41[*v41 != v31] = v32;
        v32[1] = v31;
        v31[2] = v32;
        v42 = v26[1];
        if (v20 == v42)
        {
          v20 = v26;
        }

        v26 = *v42;
      }

      v43 = *v26;
      if (*v26 && *(v43 + 24) != 1)
      {
        goto LABEL_98;
      }

      v44 = v26[1];
      if (!v44 || *(v44 + 24) == 1)
      {
        *(v26 + 24) = 0;
        v39 = v26[2];
        v45 = *(v39 + 24) != 1 || v39 == v20;
        if (v45)
        {
LABEL_83:
          *(v39 + 24) = 1;
          goto LABEL_103;
        }

        goto LABEL_81;
      }

      if (v43 && (v43[3] & 1) == 0)
      {
LABEL_98:
        v44 = v26;
        goto LABEL_99;
      }

      *(v44 + 24) = 1;
      *(v26 + 24) = 0;
      v52 = *v44;
      v26[1] = *v44;
      if (v52)
      {
        *(v52 + 16) = v26;
      }

      v53 = v26[2];
      v44[2] = v53;
      v53[*v53 != v26] = v44;
      *v44 = v26;
      v26[2] = v44;
      v43 = v26;
LABEL_99:
      v48 = v44[2];
      *(v44 + 24) = *(v48 + 24);
      *(v48 + 24) = 1;
      *(v43 + 24) = 1;
      v49 = *v48;
      v54 = *(*v48 + 8);
      *v48 = v54;
      if (v54)
      {
        *(v54 + 16) = v48;
      }

      v55 = *(v48 + 16);
      v49[2] = v55;
      v55[*v55 != v48] = v49;
      v49[1] = v48;
LABEL_102:
      *(v48 + 16) = v49;
LABEL_103:
      v56 = v9[6];
      if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v56->__on_zero_shared)(v56);
        std::__shared_weak_count::__release_weak(v56);
      }

      v8 += v11;
      operator delete(v9);
LABEL_107:
      v9 = v19;
      if (v19 == (v3 + 160))
      {
LABEL_110:
        std::mutex::unlock((v3 + 16));
        v2 = v59;
        goto LABEL_111;
      }
    }
  }

  v8 = 0;
LABEL_111:
  *(*(*(v2 + 32) + 8) + 24) += v8;
  v57 = *MEMORY[0x1E69E9840];
  return 1;
}

void ContentIndexSetDirtyCallback(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 15184);
  if (v4)
  {
    _Block_release(v4);
  }

  *(a1 + 15184) = v3;
}

uint64_t _ContentIndexSetPayloadMaxCount(uint64_t result, int a2, int a3)
{
  v3 = a2 - *(result + 80);
  *(result + 15680) = v3;
  *(result + 15684) = a3;
  v4 = *(result + 68);
  if (v4 > v3 && v4 >= 2)
  {
    v6 = *(result + 15203);
    v7 = __si_assert_copy_extra_332();
    __message_assert_336(v7, v8, v9, v10, v11, v12, v13, v14, "ContentIndex.c");
    free(v7);
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

  return result;
}

char *ContentIndexQueryNodeForLocalizedFields(uint64_t a1, unsigned int *a2, char *a3, unsigned int a4)
{
  v7 = a4;
  v8 = (a4 << 6) | 0x28;
  if (a4 <= 0x7FF && v8 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal_14063;
  }

  v9 = malloc_type_zone_calloc(queryZone, 1uLL, v8, 0x5BAF1CEAuLL);
  if (!v9)
  {
    _log_fault_for_malloc_failure();
  }

  v10 = 0;
  *(v9 + 2) = 0;
  v11 = *(a1 + 4) | 0x400000;
  *(v9 + 12) = *(a1 + 12);
  *v9 = 1;
  *(v9 + 1) = v11;
  *(v9 + 4) = v9 + 40;
  do
  {
    v12 = *(v9 + 4) + v10;
    v13 = *a2;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 100;
    *(v12 + 20) = v13;
    *(v12 + 24) = 8;
    *(v12 + 28) = 0u;
    *(v12 + 44) = 0u;
    *(v12 + 60) = 0;
    v14 = CFNumberCreate(kCIQueryZoneAllocator, kCFNumberSInt32Type, a3);
    *(*(v9 + 4) + v10) = copyLocTermFromNumber(v14, *a2);
    v15 = *a2++;
    v16 = copyLocTermFromNumber(v14, v15);
    v17 = *(v9 + 4) + v10;
    *(v17 + 8) = v16;
    *(v17 + 20) = -1;
    ++*(v9 + 6);
    CFRelease(v14);
    v10 += 64;
    a3 += 4;
    --v7;
  }

  while (v7);
  return v9;
}

_DWORD *ContentIndexQueryNodeForVector(int a1, const void *a2, unsigned int a3, unsigned int a4, int a5, int a6, int a7, float a8)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x67uLL)
  {
    ++sTotal_14063;
  }

  v16 = malloc_type_zone_calloc(queryZone, 1uLL, 0x68uLL, 0x5BAF1CEAuLL);
  if (!v16)
  {
    _log_fault_for_malloc_failure();
  }

  if (a1)
  {
    *v16 = 1;
    v16[6] = 1;
    *(v16 + 4) = v16 + 10;
    if (a3 > 2 || a4 >= 3)
    {
      v17 = -1;
      v18 = -1;
    }

    else
    {
      v17 = (vector_dimension_vec_sizes_15424[a3] * vector_size_elem_sizes_15423[a4]);
      v18 = v17;
    }

    v19 = malloc_type_malloc(v18, 0xE438016AuLL);
    memcpy(v19, a2, v17);
    if (a7)
    {
      v20 = 0x1000000;
    }

    else
    {
      v20 = 0;
    }

    *(v16 + 5) = v19;
    *(v16 + 6) = 0;
    v16[14] = 16;
    v16[15] = a1;
    *(v16 + 4) = 0u;
    *(v16 + 5) = 0u;
    *(v16 + 24) = a8;
    v16[25] = a3 & 3 | (4 * (a4 & 3)) & 0xF | (a5 << 25) | (16 * (a6 & 0xFFFFF)) | v20;
  }

  return v16;
}

BOOL ContentIndexContainsContentByDocId(uint64_t a1, uint64_t a2, const __CFString *a3, int a4, uint64_t a5, unsigned int a6, char a7, uint64_t a8)
{
  _CIQueryNodeForString(a1, a3, 0, a4, a5, a6, 0, 0);
  v13 = v12;
  v14 = _CIMatchesNodeByDocId(a1, v12, a2, a7, a8);
  ContentIndexQueryNodeDispose(v13);
  return v14;
}

uint64_t CIRemappingCreateWithContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!__kCIRemappingTypeID)
  {
    __kCIRemappingTypeID = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 16) = a3;
  *(result + 32) = a2;
  return result;
}

void __CIRemappingFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v2 + 8);
      v6 = *(v5 + v3 + 16);
      if (*(v5 + v3 + 24) == 1)
      {
        if (v6)
        {
          munmap(v6 - 28, 4 * *(v5 + v3 + 8) + 28);
        }
      }

      else
      {
        free(v6);
      }

      ++v4;
      v2 = *(a1 + 16);
      v3 += 32;
    }

    while (v4 < *v2);
  }

  free(*(v2 + 8));
  v7 = *(a1 + 16);

  free(v7);
}

double __CIRemappingInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t CIDecodeRemappingMetadataWithIndex(int a1, unsigned int a2, uint64_t a3)
{
  size[128] = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "remapping%d", a3);
  memset(&v56, 0, sizeof(v56));
  if (fstatat(a1, __str, &v56, 0))
  {
    v6 = 0;
    goto LABEL_69;
  }

  v7 = fd_create_protected(a1, __str, 536872962, 3u);
  v55 = 0;
  v8 = _fd_acquire_fd(v7, &v55);
  if (v8 == -1)
  {
    v6 = 0;
    goto LABEL_68;
  }

  v9 = v8;
  __buf = 0;
  v57 = 0;
  if (prot_pread(v8, &__buf, 4uLL, 0) == 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = -1;
  }

  if (prot_pread(v9, &v57, 8uLL, v10) != 8)
  {
    goto LABEL_66;
  }

  if (__buf != -16777457)
  {
    if (__buf == 268435454)
    {
      v11 = v57;
      LODWORD(size[0]) = 0;
      if (prot_pread(v9, size, 4uLL, v10 + 8) == 4)
      {
        v12 = v10 + 12;
        v13 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
        v14 = malloc_type_calloc(0x20uLL, LODWORD(size[0]), 0x4BCFAB44uLL);
        v15 = size[0];
        *v13 = LODWORD(size[0]);
        v13[1] = v14;
        if (v15)
        {
          v53 = a2;
          v52 = v11;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v18 = v13;
            v19 = v13[1];
            v20 = v19 + v16;
            *(v19 + v16 + 24) = 1;
            v21 = prot_pread(v9, (v19 + v16), 8uLL, v12) == 8 ? v12 + 8 : -1;
            v22 = prot_pread(v9, (v20 + 8), 4uLL, v21);
            v23 = v21 + 4;
            if (v22 != 4 || v23 == -1)
            {
              break;
            }

            v25 = mmap(0, v23 + 4 * *(v20 + 8), 1, 1, v9, 0);
            if (v25 == -1)
            {
              break;
            }

            *(v19 + v16 + 16) = &v25[v23];
            v12 = v23 + 4 * *(v20 + 8);
            if (v12 == -1)
            {
              break;
            }

            ++v17;
            v16 += 32;
            v13 = v18;
            if (v17 >= LODWORD(size[0]))
            {
              v11 = v52;
              a2 = v53;
              goto LABEL_63;
            }
          }

          v42 = v18;
          a2 = v53;
          if (v17)
          {
            v43 = 0;
            v44 = v42[1];
            do
            {
              v45 = *(v44 + v43 + 16);
              if (v45)
              {
                munmap((v45 - 28), 4 * *(v44 + v43 + 8) + 28);
                v44 = v42[1];
              }

              *(v44 + v43 + 16) = 0;
              v43 += 32;
              --v17;
            }

            while (v17);
          }

          v46 = v42;
          goto LABEL_61;
        }

        goto LABEL_63;
      }

LABEL_50:
      v13 = 0;
      v12 = -1;
      goto LABEL_63;
    }

LABEL_66:
    v6 = 0;
    goto LABEL_67;
  }

  v11 = bswap64(v57);
  v59[0] = 0;
  if (prot_pread(v9, v59, 4uLL, v10 + 8) != 4)
  {
    goto LABEL_50;
  }

  v12 = v10 + 12;
  v59[0] = bswap32(v59[0]);
  v13 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
  v26 = malloc_type_calloc(0x20uLL, v59[0], 0x2A73DFA3uLL);
  v27 = v59[0];
  *v13 = v59[0];
  v13[1] = v26;
  if (!v27)
  {
    goto LABEL_63;
  }

  v52 = v11;
  v28 = 0;
  v54 = v13;
  while (1)
  {
    v29 = v13[1] + 32 * v28;
    *(v29 + 24) = 1;
    if (prot_pread(v9, v29, 8uLL, v12) == 8)
    {
      v30 = v12 + 8;
      *v29 = bswap64(*v29);
    }

    else
    {
      v30 = -1;
    }

    if (prot_pread(v9, (v29 + 8), 4uLL, v30) != 4)
    {
      break;
    }

    v31 = v30 + 4;
    *(v29 + 8) = bswap32(*(v29 + 8));
    if (v30 == -5)
    {
      break;
    }

    bzero(size, 0x400uLL);
    snprintf(size, 0x400uLL, "tmp.remapping%d", a3);
    v32 = fd_create_protected(a1, size, 536872450, 3u);
    *&v59[1] = 0;
    v33 = _fd_acquire_fd(v32, &v59[1]);
    if (v33 == -1)
    {
      v12 = -1;
      goto LABEL_45;
    }

    v34 = v33;
    if (fd_truncate(v32, 4 * *(v29 + 8)) != -1)
    {
      v35 = mmap(0, 4 * *(v29 + 8), 3, 2, v34, 0);
      *(v29 + 16) = v35;
      if (v35 != -1)
      {
        v36 = prot_pread(v9, v35, 4 * *(v29 + 8), v31);
        v37 = *(v29 + 8);
        if (v36 == 4 * v37)
        {
          if (v37)
          {
            v38 = 0;
            v39 = *(v29 + 16);
            do
            {
              *(v39 + 4 * v38) = bswap32(*(v39 + 4 * v38));
              ++v38;
              v40 = *(v29 + 8);
            }

            while (v38 < v40);
            v41 = 4 * v40;
          }

          else
          {
            v41 = 0;
          }

          v12 = v41 + v31;
          goto LABEL_44;
        }

        munmap(*(v29 + 16), 4 * v37);
      }
    }

    v12 = -1;
LABEL_44:
    _fd_release_fd(v32, v34, 0, *&v59[1]);
LABEL_45:
    _fd_unlink_with_origin(v32, 0);
    fd_release(v32);
    v13 = v54;
    if (v12 == -1)
    {
      break;
    }

    if (++v28 >= v59[0])
    {
      goto LABEL_62;
    }
  }

  if (v28)
  {
    v47 = 0;
    v48 = v13[1];
    do
    {
      munmap(*(v48 + v47 + 16), 4 * *(v48 + v47 + 8));
      v48 = v13[1];
      *(v48 + v47 + 16) = 0;
      v47 += 32;
      --v28;
    }

    while (v28);
  }

  v46 = v13;
LABEL_61:
  free(v46);
  v13 = 0;
  v12 = -1;
LABEL_62:
  v11 = v52;
LABEL_63:
  if (v12 == -1)
  {
    goto LABEL_66;
  }

  v49 = CIRemappingCreateWithContext(*MEMORY[0x1E695E480], v11, v13);
  v6 = v49;
  if (v49)
  {
    *(v49 + 40) = a3;
    *(v49 + 24) = a2;
  }

LABEL_67:
  _fd_release_fd(v7, v9, 0, v55);
LABEL_68:
  fd_release(v7);
LABEL_69:
  v50 = *MEMORY[0x1E69E9840];
  return v6;
}

unint64_t ContentIndexRemappingNextDocId(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v7 = setThreadIdAndInfo(-1, sDocIDRemappingContextExceptionCallbacks, v4, 0, add_explicit + 1);
  v9 = v8;
  v10 = v7;
  v11 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
  v12 = *(v11 + 312);
  v13 = *(v11 + 224);
  if (v13)
  {
    v13(*(v11 + 288));
  }

  if (_setjmp(v11))
  {
    *(v11 + 312) = v12;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    CIOnThreadCleanUpReset(HIDWORD(v9));
    dropThreadId(v10, 1, add_explicit + 1);
    CICleanUpReset(v10, v9);
    return 0;
  }

  else
  {
    v15 = *v4;
    if (*v4 < 1)
    {
      v36 = 0;
    }

    else
    {
      v16 = v4[1];
      v17 = 0;
      v18 = 0;
      v19 = v5;
      while (1)
      {
        v20 = v19;
        v21 = (v16 + 32 * v18);
        v22 = *(v21 + 2);
        v17 += v22;
        v23 = *v21;
        if (*v21 >= v20)
        {
          v20 = v23 + 1;
        }

        if (v23 < v20 && v23 + v22 > v20)
        {
          v26 = v20 + 1;
          v27 = v21[2] + 4 * v20;
          v28 = v26;
          while (1)
          {
            v29 = v27;
            v20 = v28 - 1;
            *a2 = v28 - 1;
            v30 = *v21;
            v31 = *(v29 - 4 * *v21);
            if (v31)
            {
              break;
            }

            v32 = v29 + 4;
            v33 = v28 + 1;
            v34 = v30 <= v20 && v30 + v22 > v28;
            v27 = v32;
            ++v28;
            if (!v34)
            {
              v35 = v33 - 1;
              v25 = 0;
              goto LABEL_26;
            }
          }

          if (v17 <= v31)
          {
            v39 = __si_assert_copy_extra_332();
            __message_assert_336(v39, v40, v41, v42, v43, v44, v45, v46, "ContentIndexCommon.c");
            free(v39);
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

          v25 = a1[4] + v31;
        }

        else
        {
          v25 = 0;
        }

        v35 = v20;
LABEL_26:
        if (v15 <= ++v18)
        {
          break;
        }

        v19 = v35;
        v36 = v25;
        if (v25)
        {
          goto LABEL_31;
        }
      }

      v36 = v25;
    }

LABEL_31:
    v37 = v36;
    *(v11 + 312) = v12;
    v38 = *(v11 + 232);
    if (v38)
    {
      v38(*(v11 + 288));
    }

    dropThreadId(v10, 0, add_explicit + 1);
    return v37;
  }
}

void _qsort_big_oid_t(void *a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v37 = *(a1 + 6);
  v38 = *a1;
  v6 = *(a1 + 14);
  v36 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations_11823, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v8 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v10 = getSize_memSize_11825;
      if (!getSize_memSize_11825)
      {
        v43 = 0u;
        v44 = 0u;
        *host_info_out = 0u;
        v11 = MEMORY[0x1C6920B70]();
        host_info_outCnt = 12;
        v12 = host_info(v11, 1, host_info_out, &host_info_outCnt);
        if (v12)
        {
          mach_error("flushsize", v12);
          exit(1);
        }

        v10 = *(&v44 + 1);
        getSize_memSize_11825 = *(&v44 + 1);
      }

      v13 = 3 * v10;
      v14 = (v13 * 0xCCCCCCCCCCCCCCCDLL) >> 64;
      v15 = v3;
      if (8 * v8 > v13 / 5)
      {
        v15 = dispatch_group_create();
      }

      if (v8 <= v37 || 8 * v8 >= v14 >> 2)
      {
        v18 = _partition_oid_t(v38, v1, v2);
      }

      else
      {
        v16 = qos_class_self();
        global_queue = dispatch_get_global_queue(v16, 2uLL);
        v18 = _big_partition_oid_t(v38, v1, v2, global_queue, v6);
      }

      v19 = v18;
      v20 = v18 - v1;
      if (v18 < v1)
      {
        v32 = __si_assert_copy_extra_332();
        v33 = v32;
        v34 = "";
        if (v32)
        {
          v34 = v32;
        }

        __message_assert(v32, "qsort_oids.c", 24, "q>=left", v34, v40);
        free(v33);
        if (__valid_fs(-1))
        {
          v35 = 2989;
        }

        else
        {
          v35 = 3072;
        }

        *v35 = -559038737;
        abort();
      }

      v21 = OSAtomicDequeue(&qsort_cached_allocations_11823, 0);
      if (!v21)
      {
        v21 = malloc_type_malloc(0x40uLL, 0x10300409C00947AuLL);
      }

      *(v21 + 4) = i;
      *(v21 + 5) = v5;
      *(v21 + 6) = v37;
      v22 = v2 - v19;
      if (v20 <= v2 - v19)
      {
        v23 = v19 - 1;
      }

      else
      {
        v22 = v19 - 1 - v1;
        v23 = v2;
      }

      if (v20 > v2 - v19)
      {
        v24 = v19;
      }

      else
      {
        v24 = v1;
      }

      if (v20 > v2 - v19)
      {
        v2 = v19 - 1;
      }

      else
      {
        v1 = v19;
      }

      *v21 = v38;
      *(v21 + 1) = v24;
      v25 = (((v22 + 1) / (v23 - v24 + 1)) * v6);
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      if (v6 >= v25)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v21[14] = v6 - v27;
      v21[15] = v36;
      *(v21 + 2) = v23;
      *(v21 + 3) = v15;
      if (v15 == v3)
      {
        if (v6 >= v25)
        {
          v6 = v26;
        }

        v30 = qos_class_self();
        v31 = dispatch_get_global_queue(v30, 2uLL);
        dispatch_group_async_f(v15, v31, v21, _qsort_big_oid_t);
      }

      else
      {
        v21[14] = v6;
        _qsort_big_oid_t(v21);
        dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v15);
        v28 = qos_class_self();
        v29 = dispatch_get_global_queue(v28, 2uLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        v40[0] = ___qsort_big_oid_t_block_invoke;
        v40[1] = &__block_descriptor_tmp_8_11832;
        v40[2] = v21;
        dispatch_async(v29, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_oid_t(v38, v1, v2);
  }
}

uint64_t _big_partition_oid_t(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v7 = a3 - a2;
  v8 = a3 - a2 + 1;
  v9 = (a1 + 8 * a2);
  v10 = &v9[(v8 + (v8 >> 63)) >> 1];
  v11 = (a1 + 8 * a3);
  if (v7 < 64)
  {
    v26 = &v9[(v8 + (v8 >> 63)) >> 1];
    v16 = v9;
  }

  else
  {
    v12 = v8 >> 3;
    v13 = &v9[v8 >> 3];
    v14 = *v9;
    v15 = *v13;
    v16 = v9;
    if (*v9 != *v13)
    {
      v16 = &v9[2 * v12];
      v17 = *v16;
      if (v14 >= *v16)
      {
        v18 = &v9[2 * v12];
      }

      else
      {
        v18 = v9;
      }

      if (v15 > v17)
      {
        v18 = &v9[v8 >> 3];
      }

      if (v14 >= v17)
      {
        v19 = v9;
      }

      else
      {
        v19 = &v9[2 * v12];
      }

      if (v15 >= v17)
      {
        v13 = v19;
      }

      if (v14 >= v15)
      {
        v13 = v18;
      }

      if (v17 != v14 && v17 != v15)
      {
        v16 = v13;
      }
    }

    v21 = 2 * v12;
    v22 = -v12;
    v23 = &v10[-v12];
    v24 = *v23;
    v25 = *v10;
    if (*v23 == *v10)
    {
      v26 = &v10[-v12];
    }

    else
    {
      v26 = &v10[v12];
      v27 = *v26;
      if (*v26 != v24 && v27 != v25)
      {
        if (v24 >= v27)
        {
          v29 = v26;
        }

        else
        {
          v29 = v23;
        }

        if (v25 > v27)
        {
          v29 = &v9[(v8 + (v8 >> 63)) >> 1];
        }

        if (v24 >= v27)
        {
          v26 = v23;
        }

        if (v25 < v27)
        {
          v26 = &v9[(v8 + (v8 >> 63)) >> 1];
        }

        if (v24 >= v25)
        {
          v26 = v29;
        }
      }
    }

    v30 = &v11[-v21];
    v31 = &v11[v22];
    v32 = *v30;
    v33 = *v31;
    if (*v30 == *v31)
    {
      v11 = v30;
    }

    else
    {
      v34 = *v11;
      if (v32 >= *v11)
      {
        v35 = v11;
      }

      else
      {
        v35 = v30;
      }

      if (v33 > v34)
      {
        v35 = v31;
      }

      if (v32 < v34)
      {
        v30 = v11;
      }

      if (v33 < v34)
      {
        v30 = v31;
      }

      if (v32 >= v33)
      {
        v30 = v35;
      }

      if (v34 == v33)
      {
        v30 = v11;
      }

      if (v34 != v32)
      {
        v11 = v30;
      }
    }
  }

  v36 = *v16;
  v37 = *v26;
  if (*v16 == *v26)
  {
    v26 = v16;
  }

  else
  {
    v38 = *v11;
    if (*v11 == v36 || v38 == v37)
    {
      v26 = v11;
    }

    else if (v36 >= v37)
    {
      if (v37 <= v38)
      {
        if (v36 >= v38)
        {
          v26 = v11;
        }

        else
        {
          v26 = v16;
        }
      }
    }

    else if (v37 >= v38)
    {
      if (v36 >= v38)
      {
        v26 = v16;
      }

      else
      {
        v26 = v11;
      }
    }
  }

  return parallel_partition_oid_t(v9, v8, *v26, a4, a5) + a2;
}

void ___qsort_big_oid_t_block_invoke(uint64_t a1)
{
  madvise((**(a1 + 32) + 8 * *(*(a1 + 32) + 8)), 8 * (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)), 4);
  v2 = *(a1 + 32);

  OSAtomicEnqueue(&qsort_cached_allocations_11823, v2, 0);
}

uint64_t parallel_partition_oid_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v5 = a5;
  v18[1] = v18;
  context[9] = *MEMORY[0x1E69E9840];
  context[6] = a1;
  v10 = 8 * a5;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v18 - v11;
  bzero(v18 - v11, v10);
  v13 = (a2 / 0x4000) << 13;
  context[1] = v13;
  context[2] = a2;
  context[4] = 0;
  context[5] = 0;
  v14 = a2 - v13;
  context[7] = a3;
  context[8] = v12;
  if (v5 >= 1)
  {
    memset(v12, 255, v10);
  }

  v15 = v13 + 0x2000;
  if (v14 > v13 + 0x2000)
  {
    v15 = a2 - ((a2 / 0x4000) << 13);
  }

  context[3] = v14 + ((v15 - v14 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (8 * a2 >= (4 * *MEMORY[0x1E69E9AC8]))
  {
    madvise(a1, 8 * a2, 3);
  }

  if (a2 / 0x4000 < v5)
  {
    v5 = a2 / 0x4000;
  }

  dispatch_apply_f(v5, a4, context, partition_phase_oid_t);
  result = sequential_fixup_oid_t(context, a2, v5);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sequential_fixup_oid_t(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp_11839);
  v49 = 0;
  v50 = 0;
  v7 = *(a1 + 64);
  v8 = a3 - 1;
  v9 = 0;
  if (a3 < 1)
  {
    goto LABEL_90;
  }

  while (*(v7 + 8 * v9) == -1)
  {
    if (v6 == ++v9)
    {
      v9 = v6;
      break;
    }
  }

  if (a3 == 1)
  {
    v8 = 0;
  }

  else
  {
LABEL_90:
    do
    {
      if (*(v7 + 8 * v8) != -1)
      {
        break;
      }

      --v8;
    }

    while (v8);
  }

  while (v9 < v8)
  {
    v10 = neutralize_oid_t(*(a1 + 48) + 8 * *(v7 + 8 * v9), *(a1 + 48) + 8 * *(v7 + 8 * v8), *(a1 + 56), &v49, &v50);
    v7 = *(a1 + 64);
    if ((v10 & 1) == 0)
    {
      v11 = *(v7 + 8 * v9);
      if ((v11 & 0x8000000000000000) == 0 && v11 < *(a1 + 32))
      {
        *(v7 + 8 * v9) = -1;
        *(a1 + 32) += 0x2000;
      }

      ++v9;
      v49 = 0;
      if ((v10 - 1) > 1)
      {
        continue;
      }
    }

    v12 = *(v7 + 8 * v8);
    v13 = v12 >= a2 || v12 < a2 - *(a1 + 40);
    if (!v13)
    {
      *(v7 + 8 * v8) = -1;
      *(a1 + 40) += 0x2000;
    }

    --v8;
    v50 = 0;
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = malloc_type_malloc(0x10000uLL, 0x100004000313F17uLL);
  if (a3 < 1)
  {
    v34 = *a1;
    v33 = *(a1 + 16) - 1;
  }

  else
  {
    v17 = 0;
    v18 = ~v14 + a2;
    v19 = a3;
    v20 = *(a1 + 64);
    v21 = 8 * a3;
    do
    {
      v22 = v20[v17];
      if (v22 != -1 && v18 <= v22)
      {
        break;
      }

      if (v22 != -1)
      {
        if (v15 <= v22)
        {
          break;
        }

        v24 = *(a1 + 32);
        if (v24 > v22)
        {
          v25 = 0;
          do
          {
            if (v20[v25 / 8] == v24)
            {
              v24 += 0x2000;
              *(a1 + 32) = v24;
            }

            v25 += 8;
          }

          while (v21 != v25);
          if (v24 >= *a1)
          {
            break;
          }

          memcpy(v16, (*(a1 + 48) + 8 * v20[v17]), 0x10000uLL);
          memcpy((*(a1 + 48) + 8 * *(*(a1 + 64) + 8 * v17)), (*(a1 + 48) + 8 * *(a1 + 32)), 0x10000uLL);
          memcpy((*(a1 + 48) + 8 * *(a1 + 32)), v16, 0x10000uLL);
          v26 = *(a1 + 32);
          v20 = *(a1 + 64);
          v20[v17] = v26;
          *(a1 + 32) = v26 + 0x2000;
        }
      }

      ++v17;
    }

    while (v17 != v19);
    v27 = v19;
    do
    {
      v28 = v27 - 1;
      v29 = v20[v27 - 1];
      if (v15 > v29)
      {
        break;
      }

      if (v29 != -1)
      {
        if (v18 > v29)
        {
          break;
        }

        v30 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v30;
        v31 = v19 - 1;
        do
        {
          if (v20[v31] == a2 - v30)
          {
            v30 += 0x2000;
            *(a1 + 40) = v30;
          }

          v32 = v31-- + 1;
        }

        while (v32 > 1);
        if ((a2 - v30) < *(a1 + 16))
        {
          break;
        }

        memcpy(v16, (*(a1 + 48) + 8 * v20[v28]), 0x10000uLL);
        memcpy((*(a1 + 48) + 8 * *(*(a1 + 64) + 8 * v28)), (*(a1 + 48) + 8 * (a2 - *(a1 + 40))), 0x10000uLL);
        memcpy((*(a1 + 48) + 8 * (a2 - *(a1 + 40))), v16, 0x10000uLL);
        v20 = *(a1 + 64);
        v20[v28] = a2 - *(a1 + 40);
      }

      v13 = v27-- <= 1;
    }

    while (!v13);
    v33 = *(a1 + 16) - 1;
    v34 = *a1;
    do
    {
      v36 = *v20++;
      v35 = v36;
      if (v36 != -1)
      {
        if (v35 < v34)
        {
          v34 = v35;
        }

        v37 = v35 + 0x2000;
        v38 = v35 + 0x1FFF;
        if (v37 > v33)
        {
          v33 = v38;
        }

        if (v33 >= a2)
        {
          v45 = __si_assert_copy_extra_332();
          v46 = v45;
          v47 = "";
          if (v45)
          {
            v47 = v45;
          }

          __message_assert(v45, "qsort_oids.c", 24, "right < count", v47, v49, v50);
          free(v46);
          if (__valid_fs(-1))
          {
            v48 = 2989;
          }

          else
          {
            v48 = 3072;
          }

          *v48 = -559038737;
          abort();
        }
      }

      --v19;
    }

    while (v19);
  }

  free(v16);
  v39 = *(a1 + 48);
  if (v34 >= v33)
  {
    v40 = v34;
  }

  else
  {
    v40 = v34;
    do
    {
      v41 = *(a1 + 56);
      while (1)
      {
        v42 = *(v39 + 8 * v40);
        if (v42 >= v41)
        {
          break;
        }

        if (++v40 >= v33)
        {
          if (v33 <= v34 + 1)
          {
            v40 = v34 + 1;
          }

          else
          {
            v40 = v33;
          }

          goto LABEL_79;
        }
      }

      if (v40 < v33)
      {
        while (1)
        {
          v43 = *(v39 + 8 * v33);
          if (v43 <= v41)
          {
            break;
          }

          if (v40 >= --v33)
          {
            goto LABEL_79;
          }
        }

        *(v39 + 8 * v33) = v42;
        *(v39 + 8 * v40++) = v43;
        --v33;
      }

      v34 = v40;
    }

    while (v40 < v33);
  }

LABEL_79:
  if (*(v39 + 8 * v40) >= *(a1 + 56))
  {
    return v40;
  }

  else
  {
    return v40 + 1;
  }
}

uint64_t neutralize_oid_t(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a4;
  v6 = *a5;
  while (1)
  {
    if (v5 < 0x2000)
    {
      while (*(a1 + 8 * v5) <= a3)
      {
        if (++v5 == 0x2000)
        {
          v7 = 0x2000;
          goto LABEL_7;
        }
      }
    }

    v7 = v5;
LABEL_7:
    if (v6 < 0x2000)
    {
      while (*(a2 + 8 * v6) >= a3)
      {
        if (++v6 == 0x2000)
        {
          v5 = v7;
          goto LABEL_15;
        }
      }
    }

    v8 = v6;
    if (v7 == 0x2000 || v6 == 0x2000)
    {
      break;
    }

    v9 = *(a2 + 8 * v6);
    *(a2 + 8 * v8) = *(a1 + 8 * v7);
    *(a1 + 8 * v7) = v9;
    v5 = v7 + 1;
    v6 = v8 + 1;
    if (v7 > 8190 || v8 >= 0x1FFF)
    {
      goto LABEL_15;
    }
  }

  v5 = v7;
LABEL_15:
  *a4 = v5;
  *a5 = v6;
  if (v6 == 0x2000 && v5 == 0x2000)
  {
    return 2;
  }

  else
  {
    return v5 != 0x2000;
  }
}

uint64_t index_comp_11839(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

atomic_ullong *partition_phase_oid_t(atomic_ullong *result, uint64_t a2)
{
  v3 = result;
  v4 = result[6];
  v5 = result[1];
  if (*result >= v5)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v5)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v7 = result[3];
  if (result[2] <= v7)
  {
LABEL_8:
    v10 = 0;
    if (add_explicit == -1)
    {
      v9 = -1;
      v11 = 0;
      goto LABEL_32;
    }

    v11 = 0;
    goto LABEL_33;
  }

  v8 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
  v9 = v8 - 0x2000;
  if ((v8 - 0x2000) < v7)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  v17 = 0;
  v18 = 0;
  if (v8 == 0x1FFF || add_explicit == -1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_31;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    result = neutralize_oid_t(v4 + 8 * add_explicit, v4 + 8 * v9, v3[7], &v18, &v17);
    if (result)
    {
LABEL_23:
      v16 = v3[3];
      if (v3[2] > v16)
      {
        v9 = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v9 >= v16)
        {
LABEL_27:
          v17 = 0;
          ++v13;
          continue;
        }

        atomic_fetch_add_explicit(v3 + 2, 0x2000uLL, memory_order_relaxed);
      }

      v9 = -1;
      goto LABEL_27;
    }

    v15 = v3[1];
    if (*v3 < v15)
    {
      add_explicit = atomic_fetch_add_explicit(v3, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v15)
      {
        goto LABEL_22;
      }

      atomic_fetch_add_explicit(v3, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_22:
    v18 = 0;
    ++v14;
    if ((result - 1) <= 1)
    {
      goto LABEL_23;
    }
  }

  while (v9 != -1 && add_explicit != -1);
  v11 = v14 << 13;
  v10 = v13 << 13;
LABEL_31:
  if (add_explicit == -1)
  {
LABEL_32:
    add_explicit = v9;
  }

LABEL_33:
  *(v3[8] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(v3 + 4, v11, memory_order_relaxed);
  atomic_fetch_add_explicit(v3 + 5, v10, memory_order_relaxed);
  return result;
}

uint64_t ___qsort_oid_t_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t termIDStoreInit(int8x16_t *a1, uint64_t a2, int a3, char a4, int a5, void *a6)
{
  if (!a1[277].i64[0])
  {
    v12 = *MEMORY[0x1E69E9AC8];
    v13 = 0x40000000uLL / *MEMORY[0x1E69E9AC8];
    a1[277].i64[0] = v13;
    a1[276].i64[1] = 0;
    if (v12 <= 0x40000000)
    {
      Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], v13);
      a1[277].i64[1] = Mutable;
      CFBitVectorSetCount(Mutable, v13);
      if (!a1[277].i64[1])
      {
        v25 = __si_assert_copy_extra(0);
        v20 = v25;
        v26 = "";
        if (v25)
        {
          v26 = v25;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 47, "bv->_cfbv", v26);
LABEL_21:
        free(v20);
        if (__valid_fs(-1))
        {
          v27 = 2989;
        }

        else
        {
          v27 = 3072;
        }

        *v27 = -559038737;
        abort();
      }
    }

    else
    {
      a1[277].i64[1] = 0;
    }
  }

  bzero(a1, 0x1140uLL);
  if (!a3)
  {
    v22 = vshll_n_u32(*a1[276].i8, 3uLL);
    a1[14] = vextq_s8(v22, v22, 8uLL);
    result = storageInit(a1, 0x2000, 8uLL, a2, 0, 0, a4, a5, a6);
    if (!result)
    {
      return result;
    }

    return 1;
  }

  result = storageInit(a1, 0x2000, 8uLL, a2, 1, 0, a4, a5, a6);
  if (!result)
  {
    return result;
  }

  v16 = a1[14].u64[1];
  v17 = a1[14].i64[0] >> 3;
  a1[276].i32[1] = v17;
  v18 = v16 >> 3;
  a1[276].i32[0] = v18;
  if (!v18)
  {
    v23 = __si_assert_copy_extra(0);
    v20 = v23;
    v24 = "";
    if (v23)
    {
      v24 = v23;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermIdStore.c", 37, "getNum(ts->termIdCount)", v24);
    goto LABEL_21;
  }

  if (v17 < v18)
  {
    v19 = __si_assert_copy_extra(0);
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermIdStore.c", 38, "getNum(ts->termIdSize) >= getNum(ts->termIdCount)", v21);
    goto LABEL_21;
  }

  return 1;
}

double termIdStoreDestroy(uint64_t a1)
{
  storageClose(a1);
  v2 = *(a1 + 4440);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 4440) = 0;
  }

  result = 0.0;
  *(a1 + 4424) = 0u;
  return result;
}

uint64_t termIdStoreAllocBulk(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 4416);
  v5 = *(a1 + 232);
  v6 = a2;
  do
  {
    if (!storageAllocOffsetFromEnd(a1, 8u))
    {
      *(a1 + 232) = v5;
      v9 = *__error();
      if (v9)
      {
        return v9;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    --v6;
  }

  while (v6);
  v7 = (v4 + a2);
  if (v7 != *(a1 + 232) >> 3)
  {
    v10 = __si_assert_copy_extra(*(a1 + 216));
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s tid:%d, ct:%d, fr:%llx", "TermIdStore.c", 73, "termID+count == ts->store._windows._freeRegion / sizeof(disk_TermData)", v12, v4, a2, *(a1 + 232));
    free(v11);
    if (__valid_fsp(*(a1 + 216)))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  result = 0;
  *(a1 + 4416) = v7;
  return result;
}

uint64_t termIdStoreHeaderStore(uint64_t result, _BYTE **a2)
{
  v2 = *(result + 4416);
  if (*(result + 232) != 8 * v2)
  {
    v9 = __si_assert_copy_extra(0);
    v10 = v9;
    v11 = "";
    if (v9)
    {
      v11 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermIdStore.c", 81, "ts->store._windows._freeRegion == ((offset_t)getNum(ts->termIdCount)) * sizeof(disk_TermData)", v11);
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

  v3 = *(result + 224) >> 3;
  *(result + 4420) = v3;
  if (v2 > v3)
  {
    v13 = __si_assert_copy_extra(0);
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermIdStore.c", 83, "getNum(ts->termIdSize) >= getNum(ts->termIdCount)", v15);
    free(v14);
    if (__valid_fs(-1))
    {
      v16 = 2989;
    }

    else
    {
      v16 = 3072;
    }

    *v16 = -559038737;
    abort();
  }

  v4 = *a2;
  if (v2 >> 28)
  {
    *v4 = v2 | 0x80;
    v4[1] = (v2 >> 7) | 0x80;
    v4[2] = (v2 >> 14) | 0x80;
    v4[3] = (v2 >> 21) | 0x80;
    v4[4] = v2 >> 28;
    v5 = 5;
  }

  else if (v2 >= 0x200000)
  {
    *v4 = v2 | 0x80;
    v4[1] = (v2 >> 7) | 0x80;
    v4[2] = (v2 >> 14) | 0x80;
    v4[3] = v2 >> 21;
    v5 = 4;
  }

  else if (v2 >= 0x4000)
  {
    *v4 = v2 | 0x80;
    v4[1] = (v2 >> 7) | 0x80;
    v4[2] = v2 >> 14;
    v5 = 3;
  }

  else if (v2 >= 0x80)
  {
    *v4 = v2 | 0x80;
    v4[1] = v2 >> 7;
    v5 = 2;
  }

  else
  {
    *v4 = v2;
    v5 = 1;
  }

  v6 = &(*a2)[v5];
  *a2 = v6;
  v7 = *(result + 4420);
  if (v7 >> 28)
  {
    *v6 = v7 | 0x80;
    v6[1] = (v7 >> 7) | 0x80;
    v6[2] = (v7 >> 14) | 0x80;
    v6[3] = (v7 >> 21) | 0x80;
    v6[4] = v7 >> 28;
    v8 = 5;
  }

  else if (v7 >= 0x200000)
  {
    *v6 = v7 | 0x80;
    v6[1] = (v7 >> 7) | 0x80;
    v6[2] = (v7 >> 14) | 0x80;
    v6[3] = v7 >> 21;
    v8 = 4;
  }

  else if (v7 >= 0x4000)
  {
    *v6 = v7 | 0x80;
    v6[1] = (v7 >> 7) | 0x80;
    v6[2] = v7 >> 14;
    v8 = 3;
  }

  else if (v7 >= 0x80)
  {
    *v6 = v7 | 0x80;
    v6[1] = v7 >> 7;
    v8 = 2;
  }

  else
  {
    *v6 = v7;
    v8 = 1;
  }

  *a2 += v8;
  return result;
}

uint64_t restoreVInt32_12670(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((**a1 & 0x80000000) == 0)
  {
    v3 = 1;
    goto LABEL_10;
  }

  v4 = v1[1];
  if ((v1[1] & 0x80000000) == 0)
  {
    v2 = v2 & 0x7F | (v4 << 7);
    v3 = 2;
    goto LABEL_10;
  }

  v5 = v1[2];
  if ((v1[2] & 0x80000000) == 0)
  {
    v6 = ((v4 & 0x7F) << 7) | (v5 << 14) | (v2 & 0x7F);
    v3 = 3;
LABEL_9:
    v2 = v6;
    goto LABEL_10;
  }

  v7 = v1[3];
  if ((v1[3] & 0x80000000) == 0)
  {
    v6 = ((v5 & 0x7F) << 14) | (v7 << 21) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
    v3 = 4;
    goto LABEL_9;
  }

  v9 = v1[4];
  if (v9 < 0)
  {
    v11 = __si_assert_copy_extra(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      v14 = 2989;
    }

    else
    {
      v14 = 3072;
    }

    *v14 = -559038737;
    abort();
  }

  v10 = ((v7 & 0x7F) << 21) | (v9 << 28) | ((v5 & 0x7F) << 14) | ((v4 & 0x7F) << 7) | (v2 & 0x7F);
  v3 = 5;
  v2 = v10;
LABEL_10:
  *a1 = &v1[v3];
  return v2;
}

uint64_t termIdStoreShadow(uint64_t a1, uint64_t a2, char a3, _DWORD *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 4416);
  v9 = *MEMORY[0x1E69E9AC8];
  v10 = malloc_type_malloc(*MEMORY[0x1E69E9AC8], 0xD70B8824uLL);
  if (!v10)
  {
    v38 = __si_assert_copy_extra(0);
    v39 = v38;
    v40 = "";
    if (v38)
    {
      v40 = v38;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "TermIdStore.c", 109, "readBuffer", v40);
    free(v39);
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

  v11 = v10;
  v12 = *(a1 + 4416);
  v13 = *(a1 + 216);
  v54 = 0;
  v50 = v13;
  v14 = _fd_acquire_fd(v13, &v54);
  v53 = 0;
  v51 = a2;
  v15 = _fd_acquire_fd(a2, &v53);
  v16 = v15;
  __fd = v14;
  if (v14 == -1 || v15 == -1)
  {
    v19 = *__error();
    if (v19)
    {
      v18 = v19;
    }

    else
    {
      v18 = 0xFFFFFFFFLL;
    }

    goto LABEL_50;
  }

  v17 = v9 + (8 * v8) - 1;
  if (v9 > v17)
  {
LABEL_5:
    if (prot_fsync(v16, 0))
    {
      v18 = *__error();
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_50;
  }

  v20 = 0;
  v21 = 0;
  v22 = 8 * v12;
  allocator = *MEMORY[0x1E695E480];
  v49 = v17 / v9;
  while ((a3 & 1) == 0 && (*(a1 + 4424) <= v20 || !CFBitVectorGetBitAtIndex(*(a1 + 4440), v20)))
  {
LABEL_29:
    v20 = ++v21;
    if (v49 <= v21)
    {
      goto LABEL_5;
    }
  }

  v23 = *MEMORY[0x1E69E9AC8] * v20;
  if (v23 + *MEMORY[0x1E69E9AC8] <= v22)
  {
    v24 = *MEMORY[0x1E69E9AC8];
  }

  else
  {
    v24 = v22 - v23;
  }

  if (*a4 == 1 || *a4 == -1 && (a3 & 1) != 0)
  {
LABEL_44:
    v18 = 89;
    goto LABEL_50;
  }

  if (prot_pread(__fd, v11, v24, *MEMORY[0x1E69E9AC8] * v20) == -1)
  {
    v31 = *__error();
    v32 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    v33 = *__error();
    *buf = 136315650;
    v56 = "termIdStoreShadow";
    v57 = 1024;
    v58 = 137;
    v59 = 1024;
    v60 = v33;
    v34 = "%s:%d: pread err: %d";
    goto LABEL_52;
  }

  if (*a4 == 1 || *a4 == -1 && (a3 & 1) != 0)
  {
    goto LABEL_44;
  }

  if (prot_pwrite_guarded(v16, &v53, v11, v24, v23) != -1)
  {
    v25 = *(a1 + 4432);
    if (v25 <= v20)
    {
      if (v25)
      {
        v26 = *(a1 + 4432);
      }

      else
      {
        v26 = 32;
      }

      while (1)
      {
        v26 *= 2;
        if (v26 > v20)
        {
          break;
        }

        if (v26 <= v25)
        {
          v42 = __si_assert_copy_extra(0);
          v43 = v42;
          v44 = "";
          if (v42)
          {
            v44 = v42;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v44);
          goto LABEL_62;
        }
      }

      v27 = *(a1 + 4440);
      if (v27)
      {
        MutableCopy = CFBitVectorCreateMutableCopy(allocator, v26, v27);
      }

      else
      {
        MutableCopy = CFBitVectorCreateMutable(allocator, v26);
      }

      v29 = MutableCopy;
      if (!MutableCopy)
      {
        v46 = __si_assert_copy_extra(0);
        v43 = v46;
        v47 = "";
        if (v46)
        {
          v47 = v46;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v47);
LABEL_62:
        free(v43);
        if (__valid_fs(-1))
        {
          v45 = 2989;
        }

        else
        {
          v45 = 3072;
        }

        *v45 = -559038737;
        abort();
      }

      CFBitVectorSetCount(MutableCopy, v26);
      v30 = *(a1 + 4440);
      if (v30)
      {
        CFRelease(v30);
      }

      *(a1 + 4440) = v29;
      *(a1 + 4432) = v26;
    }

    if (*(a1 + 4424) <= v20)
    {
      *(a1 + 4424) = v20 + 1;
    }

    CFBitVectorSetBitAtIndex(*(a1 + 4440), v20, 0);
    goto LABEL_29;
  }

  v31 = *__error();
  v32 = _SILogForLogForCategory(0);
  if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_49;
  }

  v37 = *__error();
  *buf = 136315650;
  v56 = "termIdStoreShadow";
  v57 = 1024;
  v58 = 166;
  v59 = 1024;
  v60 = v37;
  v34 = "%s:%d: pwrite err: %d";
LABEL_52:
  _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, v34, buf, 0x18u);
LABEL_49:
  *__error() = v31;
  v18 = *__error();
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_50:
  _fd_release_fd(v51, v16, 0, v53);
  _fd_release_fd(v50, __fd, 0, v54);
  free(v11);
  v35 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t _TermTrieWalkFatWithOptions(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = result;
  if (a6)
  {
    result = (*(a6 + 16))(a6, result, 1);
  }

  if (a5 && *v13)
  {
    result = (*(a5 + 16))(a5);
  }

  for (i = 1; i != 257; ++i)
  {
    v15 = v13[i];
    if ((v13[i] & 3) > 1)
    {
      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v15 & 3) == 2)
      {
        result = _TermTrieWalkCompactWithOptions(v16, (a2 + 1), a3, a4, a5, a6, a7);
      }

      else
      {
        result = _TermTrieWalkListWithOptions(v16, a3, a4, a5, a6, a7);
      }
    }

    else if ((v15 & 3) != 0)
    {
      result = _TermTrieWalkFatWithOptions(v15 & 0xFFFFFFFFFFFFFFFCLL, (a2 + 1), a3, a4, a5, a6, a7);
    }

    else if (v15)
    {
      v18 = __si_assert_copy_extra_332();
      v19 = v18;
      v20 = "";
      if (v18)
      {
        v20 = v18;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.c", 744, "level->follows[i]==0", v20);
      free(v19);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  if (a7)
  {
    v17 = *(a7 + 16);

    return v17(a7, v13, 1);
  }

  return result;
}

uint64_t posreadunlock(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_unlock(a1);
  if (result)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    v4 = "";
    if (v2)
    {
      v4 = v2;
    }

    __message_assert(v2, "poslock.c", 21, "result==0", v4);
    free(v3);
    if (__valid_fs(-1))
    {
      v5 = 2989;
    }

    else
    {
      v5 = 3072;
    }

    *v5 = -559038737;
    abort();
  }

  return result;
}

void si_init_indexing_zone()
{
  if (si_init_indexing_zone_indexOnce != -1)
  {
    dispatch_once(&si_init_indexing_zone_indexOnce, &__block_literal_global_12772);
  }
}

void __si_init_indexing_zone_block_invoke()
{
  zone = malloc_create_zone(0x10000uLL, 0);
  indexingZone = zone;

  malloc_set_zone_name(zone, "SIIndexingMallocZone");
}

int *updateItemRecentSpotlightEngagementData(int *a1, uint64_t *a2, const char *a3, int a4, double a5)
{
  updateItemRecentEngagementData(a1, a2, a3, a4, "_kMDItemRecentSpotlightEngagementQueries", "_kMDItemRecentSpotlightEngagementDates", "_kMDItemRecentSpotlightEngagementRenderPositions", 1, a5);

  return updateItemRecentEngagementData(a1, a2, a3, a4, "_kMDItemRecentSpotlightEngagementQueriesNonUnique", "_kMDItemRecentSpotlightEngagementDatesNonUnique", "_kMDItemRecentSpotlightEngagementRenderPositionsNonUnique", 0, a5);
}

int *updateItemRecentEngagementData(int *a1, uint64_t *a2, const char *a3, int a4, char *a5, char *a6, char *a7, int a8, double a9)
{
  __s = a6;
  v12 = a4;
  v16 = a1;
  v122[11] = *MEMORY[0x1E69E9840];
  v102 = a9;
  v101 = a4;
  db_validate_obj(a1);
  v17 = *a2;
  if (!**a2)
  {
    goto LABEL_70;
  }

  if (a3)
  {
    v90 = a7;
    v92 = strlen(a3);
    v99 = 0;
    v100 = 0;
    memset(v122, 0, 80);
    v121 = 0;
    memset(v120, 0, sizeof(v120));
    v91 = a3;
    if (db_get_field(v16, v17, a5, &v99, &v100))
    {
      v18 = 0;
      v19 = -1;
      v20 = __s;
LABEL_5:
      v21 = v92;
      goto LABEL_13;
    }

    v21 = v92;
    if (*v99 == 11 && (*(v99 + 2) & 0x20) != 0)
    {
      v70 = *(v99 + 8);
      if (v70)
      {
        v88 = a5;
        v89 = a2;
        v87 = v16;
        v18 = 0;
        v71 = v100;
        v72 = &v100[v70];
        v19 = -1;
        do
        {
          v73 = v18;
          v122[v18] = v71;
          v74 = strlen(v71);
          v75 = v74;
          if (a8 && v74 == v92 && !strcmp(v71, v91))
          {
            v19 = v18;
          }

          v120[v18] = v75;
          v71 += (v75 + 1);
          ++v18;
        }

        while (v71 < v72 && v73 < 9);
        v20 = __s;
        if (v71 >= v72)
        {
          v16 = v87;
          a5 = v88;
          a2 = v89;
        }

        else
        {
          v16 = v87;
          a5 = v88;
          a2 = v89;
          db_delete_field(v87, v89, v88);
          v18 = 0;
          v99 = 0;
          v100 = 0;
        }

        goto LABEL_5;
      }

      v18 = 0;
    }

    else
    {
      db_delete_field(v16, a2, a5);
      v18 = 0;
      v99 = 0;
      v100 = 0;
    }

    v19 = -1;
    v20 = __s;
LABEL_13:
    v97 = 0;
    v98 = 0;
    memset(v119, 0, sizeof(v119));
    if (!db_get_field(v16, *a2, v20, &v97, &v98))
    {
      if (*v97 == 12 && (*(v97 + 2) & 0x20) != 0 && (v24 = *(v97 + 8), v18 == v24 >> 3))
      {
        memcpy(v119, v98, v24);
      }

      else
      {
        db_delete_field(v16, a2, v20);
        v97 = 0;
        v98 = 0;
        if (v99)
        {
          db_delete_field(v16, a2, a5);
          v18 = 0;
          v99 = 0;
          v100 = 0;
        }
      }
    }

    v95 = 0;
    v96 = 0;
    v118 = 0;
    memset(v117, 0, sizeof(v117));
    v25 = v90;
    if (!db_get_field(v16, *a2, v90, &v95, &v96))
    {
      if (*v95 == 6 && (*(v95 + 2) & 0x20) != 0 && (v26 = *(v95 + 8), v18 == v26 >> 2))
      {
        memcpy(v117, v96, v26);
      }

      else
      {
        db_delete_field(v16, a2, v90);
        v95 = 0;
        v96 = 0;
        if (v99)
        {
          db_delete_field(v16, a2, a5);
          v18 = 0;
          v99 = 0;
          v100 = 0;
        }

        if (v97)
        {
          db_delete_field(v16, a2, v20);
          v97 = 0;
          v98 = 0;
        }
      }
    }

    v94 = 0;
    if (v21 > 2)
    {
      v29 = *v91;
      v85 = v91[v21 - 1];
      v27 = asprintf(&v94, "%c..%c");
    }

    else
    {
      v27 = asprintf(&v94, "%s");
    }

    if (v19 == -1 && v18 >= 0xA)
    {
      if (v18 < 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        for (i = 1; i != v18; ++i)
        {
          v28.n128_u64[0] = v119[i];
          if (v28.n128_f64[0] < *&v119[v19])
          {
            v19 = i;
          }
        }

        if (v19 == -1)
        {
          goto LABEL_42;
        }
      }

      LODWORD(v87) = v12;
      v88 = a5;
      v89 = a2;
      v86[1] = v86;
      v37 = v21;
      v38 = v120[v19];
      v39 = *(v99 + 8) - v38 + v37;
      MEMORY[0x1EEE9AC00](v27);
      v41 = v86 - v40;
      bzero(v86 - v40, v39);
      v42 = v122[v19];
      v43 = (v42 + v38 + 1);
      v44 = v100 + *(v99 + 8) - v43;
      v45 = (v42 - v100);
      if (v45)
      {
        memcpy(v41, v100, (v42 - v100));
      }

      v46 = &v41[v45];
      v47 = v92;
      memcpy(v46, v91, (v92 + 1));
      if (v44)
      {
        memcpy(&v46[v47 + 1], v43, v44);
      }

      v84 = v39;
      a5 = v88;
      a2 = v89;
      v49 = db_add_field(v16, v89, 5u, v88, 0, 0x20u, 11, v41, v48, v84);
      v12 = v87;
      if (v49)
      {
        v50 = *__error();
        v51 = _SILogForLogForCategory(7);
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
        v20 = __s;
        v25 = v90;
        if (v52)
        {
          v103 = 136315650;
          v104 = "updateItemRecentEngagementData";
          v105 = 1024;
          v106 = 206;
          v107 = 2080;
          v108 = *&a5;
          _os_log_error_impl(&dword_1C278D000, v51, OS_LOG_TYPE_ERROR, "%s:%d: Failed adding recent engagement queries to %s", &v103, 0x1Cu);
        }

        *__error() = v50;
        a2 = v89;
LABEL_67:
        db_delete_field(v16, a2, a5);
        db_delete_field(v16, a2, v20);
        v62 = v16;
        v63 = a2;
        v64 = v25;
        goto LABEL_68;
      }

      v20 = __s;
      v25 = v90;
    }

    else if (v19 == -1)
    {
LABEL_42:
      v31 = a5;
      if (v18)
      {
        v32 = 2;
      }

      else
      {
        v32 = 1;
      }

      v33 = v31;
      if (db_add_field(v16, a2, v32, v31, 0, 0x20u, 11, v91, v28, v21 + 1))
      {
        v35 = *__error();
        v36 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v103 = 136315650;
          v104 = "updateItemRecentEngagementData";
          v105 = 1024;
          v106 = 156;
          v107 = 2080;
          v108 = *&v33;
          _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: Failed adding recent engagement queries to %s", &v103, 0x1Cu);
        }

        *__error() = v35;
        goto LABEL_69;
      }

      if (db_add_field(v16, a2, v32, v20, 0, 0x20u, 12, &v102, v34, 8))
      {
        v67 = a2;
        v68 = *__error();
        v69 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v103 = 136315650;
          v104 = "updateItemRecentEngagementData";
          v105 = 1024;
          v106 = 166;
          v107 = 2080;
          v108 = *&v20;
          _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: Failed adding recent engagement dates to %s", &v103, 0x1Cu);
        }

        *__error() = v68;
        v62 = v16;
        v63 = v67;
        v64 = v33;
      }

      else
      {
        v78 = v16;
        v79 = db_add_field(v16, a2, v32, v90, 0, 0x20u, 6, &v101, v66, 4);
        v80 = *__error();
        v81 = _SILogForLogForCategory(7);
        v82 = v81;
        if (!v79)
        {
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            v83 = **a2;
            v103 = 136316418;
            v104 = v94;
            v105 = 1024;
            v106 = v92;
            v107 = 2048;
            v108 = v102;
            v109 = 1024;
            v110 = v101;
            v111 = 2080;
            v112 = v33;
            v113 = 2048;
            v114 = v83;
            _os_log_impl(&dword_1C278D000, v82, OS_LOG_TYPE_DEFAULT, "[Engagement Data] Added query %s (%d chars), engagement time: %f, render pos: %u to %s/Dates/Positions for oid: %lld", &v103, 0x36u);
          }

          *__error() = v80;
          v16 = v78;
          goto LABEL_69;
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v103 = 136315650;
          v104 = "updateItemRecentEngagementData";
          v105 = 1024;
          v106 = 177;
          v107 = 2080;
          v108 = *&v90;
          _os_log_error_impl(&dword_1C278D000, v82, OS_LOG_TYPE_ERROR, "%s:%d: Failed adding recent engagement render positions to %s", &v103, 0x1Cu);
        }

        *__error() = v80;
        v16 = v78;
        db_delete_field(v78, a2, v33);
        v62 = v78;
        v63 = a2;
        v64 = v20;
      }

LABEL_68:
      db_delete_field(v62, v63, v64);
LABEL_69:
      free(v94);
LABEL_70:
      result = db_validate_obj(v16);
      v65 = *MEMORY[0x1E69E9840];
      return result;
    }

    *&v119[v19] = a9;
    if (db_add_field(v16, a2, 5u, v20, 0, 0x20u, 12, v119, v28, 8 * v18))
    {
      v54 = a2;
      v55 = *__error();
      v56 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v103 = 136315650;
        v104 = "updateItemRecentEngagementData";
        v105 = 1024;
        v106 = 219;
        v107 = 2080;
        v108 = *&v20;
        _os_log_error_impl(&dword_1C278D000, v56, OS_LOG_TYPE_ERROR, "%s:%d: Failed replace recent engagement dates to %s", &v103, 0x1Cu);
      }

      *__error() = v55;
      a2 = v54;
    }

    else
    {
      v117[v19] = v12;
      v57 = db_add_field(v16, a2, 5u, v25, 0, 0x20u, 6, v117, v53, 4 * v18);
      v58 = *__error();
      v59 = _SILogForLogForCategory(7);
      v60 = v12;
      v61 = v59;
      if (!v57)
      {
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v77 = **a2;
          v103 = 136316674;
          v104 = v94;
          v105 = 1024;
          v106 = v92;
          v107 = 2048;
          v108 = a9;
          v109 = 1024;
          v110 = v60;
          v111 = 2048;
          v112 = v19;
          v113 = 2080;
          v114 = a5;
          v115 = 2048;
          v116 = v77;
          _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, "[Engagement Data] Inserted query %s (%d chars), engagement time: %f, render pos: %u into position %ld of %s/Dates/Positions for oid: %lld", &v103, 0x40u);
        }

        *__error() = v58;
        goto LABEL_69;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v103 = 136315650;
        v104 = "updateItemRecentEngagementData";
        v105 = 1024;
        v106 = 231;
        v107 = 2080;
        v108 = *&v90;
        _os_log_error_impl(&dword_1C278D000, v61, OS_LOG_TYPE_ERROR, "%s:%d: Failed replace recent engagement render positions to %s", &v103, 0x1Cu);
      }

      *__error() = v58;
      v25 = v90;
    }

    goto LABEL_67;
  }

  db_delete_field(v16, a2, a5);
  db_delete_field(v16, a2, __s);
  db_delete_field(v16, a2, a7);
  v22 = *MEMORY[0x1E69E9840];

  return db_validate_obj(v16);
}

void *___ZL44getkQPQueryParserOptionU2EnabledKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQueryParserOptionU2EnabledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQueryParserOptionU2EnabledKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL22QueryParserLibraryCorePPc_block_invoke_12841(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  QueryParserLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t isValidTokenInfo(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = getkQPQUOutputTokenRangeKey();
    result = CFDictionaryContainsKey(v1, v2);
    if (result)
    {
      v3 = getkQPQUOutputTokenArgIdsKey();
      result = CFDictionaryContainsKey(v1, v3);
      if (result)
      {
        v4 = getkQPQUOutputTokenArgScoresKey();
        result = CFDictionaryContainsKey(v1, v4);
        if (result)
        {
          v8 = 0;
          v9 = &v8;
          v10 = 0x2020000000;
          v5 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
          v11 = getkQPQUOutputTokenKeySymbolLoc(void)::ptr;
          if (!getkQPQUOutputTokenKeySymbolLoc(void)::ptr)
          {
            ParserLibrary = QueryParserLibrary();
            v9[3] = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
            getkQPQUOutputTokenKeySymbolLoc(void)::ptr = v9[3];
            v5 = v9[3];
          }

          _Block_object_dispose(&v8, 8);
          if (v5)
          {
            return CFDictionaryContainsKey(v1, *v5) != 0;
          }

          else
          {
            v7 = [MEMORY[0x1E696AAA8] currentHandler];
            result = [v7 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenKey()") description:{@"PRQUUtils.mm", 17, @"%s", dlerror()}];
            __break(1u);
          }
        }
      }
    }
  }

  return result;
}

void sub_1C2B7AA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPQUOutputTokenRangeKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
    getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenRangeKey()") description:{@"PRQUUtils.mm", 23, @"%s", dlerror()}];
  __break(1u);
  return result;
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
    getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenRangeKey()") description:{@"PRQueryPhotosProcessor.mm", 30, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B7ABD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2B7AD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkQPQUOutputTokenArgScoresKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgScoresKey");
    getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgScoresKey()") description:{@"PRQUUtils.mm", 24, @"%s", dlerror()}];
  __break(1u);
  return result;
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenArgScoresKey");
    getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenArgScoresKey()") description:{@"PRQueryPhotosProcessor.mm", 27, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B7AE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL31getkQPQUOutputTokenKeySymbolLocv_block_invoke_12851(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkQPQUOutputTokenArgScoresKeySymbolLocv_block_invoke_12855(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenArgScoresKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenArgScoresKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL37getkQPQUOutputTokenArgIdsKeySymbolLocv_block_invoke_12859(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenArgIdsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenArgIdsKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkQPQUOutputTokenRangeKeySymbolLocv_block_invoke_12863(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenRangeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenRangeKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const void *getTokensInfoFromQueryUnderstanding(const __CFDictionary *a1)
{
  if (!a1 || !CFDictionaryGetCount(a1))
  {
    return 0;
  }

  v2 = getkQPQUOutputTokenInfoKey();

  return CFDictionaryGetValue(a1, v2);
}

uint64_t getkQPQUOutputTokenInfoKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPQUOutputTokenInfoKeySymbolLoc(void)::ptr;
  v7 = getkQPQUOutputTokenInfoKeySymbolLoc(void)::ptr;
  if (!getkQPQUOutputTokenInfoKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPQUOutputTokenInfoKey");
    getkQPQUOutputTokenInfoKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQUOutputTokenInfoKey()") description:{@"PRQUUtils.mm", 22, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B7B134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL35getkQPQUOutputTokenInfoKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPQUOutputTokenInfoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPQUOutputTokenInfoKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const __CFDictionary *isValidQueryUnderstanding(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    v2 = getkQPQUOutputTokenInfoKey();
    result = CFDictionaryContainsKey(v1, v2);
    if (result)
    {
      return (CFDictionaryContainsKey(v1, @"attributedParse") != 0);
    }
  }

  return result;
}

uint64_t getRuleBasedQPParseFromQueryUnderstanding(const __CFDictionary *a1)
{
  if (!a1 || !CFDictionaryContainsKey(a1, @"attributedParses"))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"attributedParses");

  return [Value objectAtIndexedSubscript:0];
}

uint64_t populateU2LabelsAndDescriptions(int *a1, void *a2, const __CFDictionary *a3, void *a4)
{
  v74 = 0;
  v75 = &v74;
  v76 = 0x3052000000;
  v77 = __Block_byref_object_copy__12883;
  v78 = __Block_byref_object_dispose__12884;
  v79 = 0;
  v8 = getkQPQUOutputTokenArgIdsKey();
  Value = CFDictionaryGetValue(a3, v8);
  v10 = getkQPQUOutputTokenArgScoresKey();
  v11 = CFDictionaryGetValue(a3, v10);
  v12 = [Value count];
  v13 = v12;
  if (v12)
  {
    v14 = 0;
    while (1)
    {
      [objc_msgSend(v11 objectAtIndexedSubscript:{v14), "floatValue"}];
      v16 = v15;
      v17 = [objc_msgSend(Value objectAtIndexedSubscript:{v14), "intValue"}];
      v73 = v17;
      if (!v14)
      {
        *a1 = v17;
        if (!v17)
        {
          break;
        }
      }

      if (v16 >= 0.2 && (v17 || !v14 && v16 >= 0.5))
      {
        v80 = &v73;
        *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, v17) + 5) = v16;
        if (v75[5])
        {
          goto LABEL_64;
        }

        v18 = getkQPQUOutputTokenRangeKey();
        v20 = [CFDictionaryGetValue(a3 v18)];
        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = v19;
          if (v20 + v19 <= [a4 length])
          {
            switch(v73)
            {
              case 1:
                v22 = v68;
                v68[0] = MEMORY[0x1E69E9820];
                v68[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_5;
                goto LABEL_60;
              case 2:
                v22 = v71;
                v71[0] = MEMORY[0x1E69E9820];
                v71[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_2;
                goto LABEL_60;
              case 3:
                v22 = v70;
                v70[0] = MEMORY[0x1E69E9820];
                v70[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_3;
                goto LABEL_60;
              case 4:
                v22 = v69;
                v69[0] = MEMORY[0x1E69E9820];
                v69[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_4;
                goto LABEL_60;
              case 8:
                v22 = v72;
                v72[0] = MEMORY[0x1E69E9820];
                v72[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke;
                goto LABEL_60;
              case 9:
                v22 = v67;
                v67[0] = MEMORY[0x1E69E9820];
                v67[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_6;
                goto LABEL_60;
              case 16:
                v22 = v59;
                v59[0] = MEMORY[0x1E69E9820];
                v59[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_14;
                goto LABEL_60;
              case 17:
                v22 = v58;
                v58[0] = MEMORY[0x1E69E9820];
                v58[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_15;
                goto LABEL_60;
              case 18:
                v22 = v65;
                v65[0] = MEMORY[0x1E69E9820];
                v65[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_8;
                goto LABEL_60;
              case 19:
                v22 = v64;
                v64[0] = MEMORY[0x1E69E9820];
                v64[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_9;
                goto LABEL_60;
              case 20:
                v22 = v63;
                v63[0] = MEMORY[0x1E69E9820];
                v63[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_10;
                goto LABEL_60;
              case 21:
                v22 = v66;
                v66[0] = MEMORY[0x1E69E9820];
                v66[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_7;
                goto LABEL_60;
              case 22:
                v22 = v55;
                v55[0] = MEMORY[0x1E69E9820];
                v55[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_18;
                goto LABEL_60;
              case 23:
                v22 = v56;
                v56[0] = MEMORY[0x1E69E9820];
                v56[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_17;
                goto LABEL_60;
              case 24:
                v22 = v60;
                v60[0] = MEMORY[0x1E69E9820];
                v60[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_13;
                goto LABEL_60;
              case 26:
                v22 = v26;
                v26[0] = MEMORY[0x1E69E9820];
                v26[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_47;
                goto LABEL_60;
              case 27:
                v22 = v28;
                v28[0] = MEMORY[0x1E69E9820];
                v28[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_45;
                goto LABEL_60;
              case 28:
                v22 = v62;
                v62[0] = MEMORY[0x1E69E9820];
                v62[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_11;
                goto LABEL_60;
              case 29:
                v22 = v61;
                v61[0] = MEMORY[0x1E69E9820];
                v61[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_12;
                goto LABEL_60;
              case 31:
                v22 = v27;
                v27[0] = MEMORY[0x1E69E9820];
                v27[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_46;
                goto LABEL_60;
              case 32:
                v22 = v54;
                v54[0] = MEMORY[0x1E69E9820];
                v54[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_19;
                goto LABEL_60;
              case 33:
                v22 = v29;
                v29[0] = MEMORY[0x1E69E9820];
                v29[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_44;
                goto LABEL_60;
              case 34:
                v22 = v30;
                v30[0] = MEMORY[0x1E69E9820];
                v30[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_43;
                goto LABEL_60;
              case 35:
                v22 = v53;
                v53[0] = MEMORY[0x1E69E9820];
                v53[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_20;
                goto LABEL_60;
              case 36:
                v22 = v52;
                v52[0] = MEMORY[0x1E69E9820];
                v52[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_21;
                goto LABEL_60;
              case 37:
                v22 = v51;
                v51[0] = MEMORY[0x1E69E9820];
                v51[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_22;
                goto LABEL_60;
              case 38:
                v22 = v50;
                v50[0] = MEMORY[0x1E69E9820];
                v50[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_23;
                goto LABEL_60;
              case 43:
                v22 = v49;
                v49[0] = MEMORY[0x1E69E9820];
                v49[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_24;
                goto LABEL_60;
              case 44:
                v22 = v57;
                v57[0] = MEMORY[0x1E69E9820];
                v57[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_16;
                goto LABEL_60;
              case 49:
                v22 = v33;
                v33[0] = MEMORY[0x1E69E9820];
                v33[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_40;
                goto LABEL_60;
              case 51:
                v22 = v32;
                v32[0] = MEMORY[0x1E69E9820];
                v32[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_41;
                goto LABEL_60;
              case 52:
                v22 = v31;
                v31[0] = MEMORY[0x1E69E9820];
                v31[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_42;
                goto LABEL_60;
              case 53:
                v22 = v48;
                v48[0] = MEMORY[0x1E69E9820];
                v48[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_25;
                goto LABEL_60;
              case 54:
                v22 = v47;
                v47[0] = MEMORY[0x1E69E9820];
                v47[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_26;
                goto LABEL_60;
              case 55:
                v22 = v46;
                v46[0] = MEMORY[0x1E69E9820];
                v46[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_27;
                goto LABEL_60;
              case 56:
                v22 = v45;
                v45[0] = MEMORY[0x1E69E9820];
                v45[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_28;
                goto LABEL_60;
              case 57:
                v22 = v44;
                v44[0] = MEMORY[0x1E69E9820];
                v44[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_29;
                goto LABEL_60;
              case 58:
                v22 = v43;
                v43[0] = MEMORY[0x1E69E9820];
                v43[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_30;
                goto LABEL_60;
              case 59:
                v22 = v42;
                v42[0] = MEMORY[0x1E69E9820];
                v42[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_31;
                goto LABEL_60;
              case 60:
                v22 = v41;
                v41[0] = MEMORY[0x1E69E9820];
                v41[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_32;
                goto LABEL_60;
              case 61:
                v22 = v40;
                v40[0] = MEMORY[0x1E69E9820];
                v40[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_33;
                goto LABEL_60;
              case 62:
                v22 = v39;
                v39[0] = MEMORY[0x1E69E9820];
                v39[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_34;
                goto LABEL_60;
              case 64:
                v22 = v38;
                v38[0] = MEMORY[0x1E69E9820];
                v38[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_35;
                goto LABEL_60;
              case 65:
                v22 = v37;
                v37[0] = MEMORY[0x1E69E9820];
                v37[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_36;
                goto LABEL_60;
              case 66:
                v22 = v36;
                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_37;
                goto LABEL_60;
              case 67:
                v22 = v35;
                v35[0] = MEMORY[0x1E69E9820];
                v35[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_38;
                goto LABEL_60;
              case 68:
                v22 = v34;
                v34[0] = MEMORY[0x1E69E9820];
                v34[1] = 3221225472;
                v23 = ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_39;
LABEL_60:
                v22[2] = v23;
                v22[3] = &unk_1E8197768;
                v22[4] = &v74;
                [a4 enumerateAttributesInRange:v20 options:v21 usingBlock:0];
                break;
              default:
                break;
            }
          }
        }
      }

      if (v13 == ++v14)
      {
        goto LABEL_64;
      }
    }

    v80 = &ARG_UNSPECIFIED_ID;
    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, 0) + 5) = v16;
  }

LABEL_64:
  v24 = v75[5];
  _Block_object_dispose(&v74, 8);
  return v24;
}

uint64_t ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (a2 && result)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v9 = getkQPParseAttributeDateKeySymbolLoc(void)::ptr;
    v18 = getkQPParseAttributeDateKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeDateKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v16[3] = dlsym(ParserLibrary, "kQPParseAttributeDateKey");
      getkQPParseAttributeDateKeySymbolLoc(void)::ptr = v16[3];
      v9 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (v9)
    {
      result = CFDictionaryContainsKey(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        result = CFDictionaryContainsKey(a2, v11);
        if (result)
        {
          v12 = getkQPParseAttributeDescriptionKey();
          v13 = CFDictionaryGetValue(a2, v12);
          *(*(*(a1 + 32) + 8) + 40) = v13;
          result = v13;
          *a5 = 1;
        }
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v14 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDateKey()") description:{@"PRQUUtils.mm", 40, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7C35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v9 = getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr;
    v27 = getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = ___ZL46getkQPParseAttributeGroundedPersonKeySymbolLocv_block_invoke_12987;
      v23 = &unk_1E8199698;
      ParserLibrary = QueryParserLibrary();
      v25[3] = dlsym(ParserLibrary, "kQPParseAttributeGroundedPersonKey");
      getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr = v25[3];
      v9 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (v9)
    {
      if (CFDictionaryGetValue(a2, *v9))
      {
        goto LABEL_14;
      }

      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v11 = getkQPParseAttributePersonKeySymbolLoc(void)::ptr;
      v27 = getkQPParseAttributePersonKeySymbolLoc(void)::ptr;
      if (!getkQPParseAttributePersonKeySymbolLoc(void)::ptr)
      {
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = ___ZL38getkQPParseAttributePersonKeySymbolLocv_block_invoke;
        v23 = &unk_1E8199698;
        v12 = QueryParserLibrary();
        v25[3] = dlsym(v12, "kQPParseAttributePersonKey");
        getkQPParseAttributePersonKeySymbolLoc(void)::ptr = v25[3];
        v11 = v25[3];
      }

      _Block_object_dispose(&v24, 8);
      if (!v11)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        result = [v18 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributePersonKey()") description:{@"PRQUUtils.mm", 29, @"%s", dlerror(), v20, v21, v22, v23}];
        goto LABEL_19;
      }

      if (CFDictionaryGetValue(a2, *v11))
      {
LABEL_14:
        v15 = getkQPParseAttributeDescriptionKey();
        v16 = CFDictionaryGetValue(a2, v15);
        *(*(*(a1 + 32) + 8) + 40) = v16;
        result = v16;
        *a5 = 1;
        return result;
      }

      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v13 = getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr;
      v27 = getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr;
      if (!getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr)
      {
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = ___ZL44getkQPParseAttributeTaggedPersonKeySymbolLocv_block_invoke_12992;
        v23 = &unk_1E8199698;
        v14 = QueryParserLibrary();
        v25[3] = dlsym(v14, "kQPParseAttributeTaggedPersonKey");
        getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr = v25[3];
        v13 = v25[3];
      }

      _Block_object_dispose(&v24, 8);
      if (v13)
      {
        result = CFDictionaryGetValue(a2, *v13);
        if (!result)
        {
          return result;
        }

        goto LABEL_14;
      }

      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v19 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTaggedPersonKey()") description:{@"PRQUUtils.mm", 30, @"%s", dlerror(), v20, v21, v22, v23}];
    }

    else
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v17 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeGroundedPersonKey()") description:{@"PRQUUtils.mm", 26, @"%s", dlerror(), v20, v21, v22, v23}];
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1C2B7C718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeSenderKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeSenderKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeSenderKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeSenderKey");
      getkQPParseAttributeSenderKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSenderKey()") description:{@"PRQUUtils.mm", 27, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7C8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeRecipientKey");
      getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRecipientKey()") description:{@"PRQUUtils.mm", 28, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7CA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v9 = getkQPParseAttributeMediaKeySymbolLoc(void)::ptr;
    v18 = getkQPParseAttributeMediaKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeMediaKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v16[3] = dlsym(ParserLibrary, "kQPParseAttributeMediaKey");
      getkQPParseAttributeMediaKeySymbolLoc(void)::ptr = v16[3];
      v9 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (v9)
    {
      if (CFDictionaryGetValue(a2, *v9) || (v11 = getkQPParseAttributeKindKey(), (result = CFDictionaryGetValue(a2, v11)) != 0))
      {
        v12 = getkQPParseAttributeDescriptionKey();
        v13 = CFDictionaryGetValue(a2, v12);
        *(*(*(a1 + 32) + 8) + 40) = v13;
        result = v13;
        *a5 = 1;
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v14 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeMediaKey()") description:{@"PRQUUtils.mm", 44, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7CC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v9 = getkQPParseAttributeKindKey();
    result = CFDictionaryGetValue(a2, v9);
    if (result)
    {
      v10 = getkQPParseAttributeDescriptionKey();
      v11 = CFDictionaryGetValue(a2, v10);
      *(*(*(a1 + 32) + 8) + 40) = v11;
      result = v11;
      *a5 = 1;
    }
  }

  return result;
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_7(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeFavoritedKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeFavoritedKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeFavoritedKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeFavoritedKey");
      getkQPParseAttributeFavoritedKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFavoritedKey()") description:{@"PRQUUtils.mm", 43, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7CE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeAttachmentKey");
      getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeAttachmentKey()") description:{@"PRQUUtils.mm", 38, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7CFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_9(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v9 = getkQPParseAttributeAttachmentKindKey();
    result = CFDictionaryGetValue(a2, v9);
    if (result)
    {
      v10 = getkQPParseAttributeDescriptionKey();
      v11 = CFDictionaryGetValue(a2, v10);
      *(*(*(a1 + 32) + 8) + 40) = v11;
      result = v11;
      *a5 = 1;
    }
  }

  return result;
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v9 = getkQPParseAttributeAttachmentKindKey();
    result = CFDictionaryGetValue(a2, v9);
    if (result)
    {
      v10 = getkQPParseAttributeDescriptionKey();
      v11 = CFDictionaryGetValue(a2, v10);
      *(*(*(a1 + 32) + 8) + 40) = v11;
      result = v11;
      *a5 = 1;
    }
  }

  return result;
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_11(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeReadKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeReadKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeReadKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeReadKey");
      getkQPParseAttributeReadKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeReadKey()") description:{@"PRQUUtils.mm", 34, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7D280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_12(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeUnreadKey");
      getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeUnreadKey()") description:{@"PRQUUtils.mm", 35, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7D424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_13(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeRepliedKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeRepliedKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeRepliedKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeRepliedKey");
      getkQPParseAttributeRepliedKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRepliedKey()") description:{@"PRQUUtils.mm", 33, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7D5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeFlaggedKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeFlaggedKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeFlaggedKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeFlaggedKey");
      getkQPParseAttributeFlaggedKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlaggedKey()") description:{@"PRQUUtils.mm", 31, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7D76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_15(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeTaggedKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeTaggedKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeTaggedKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeTaggedKey");
      getkQPParseAttributeTaggedKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTaggedKey()") description:{@"PRQUUtils.mm", 46, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7D910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_16(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeFlagColorKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeFlagColorKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeFlagColorKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeFlagColorKey");
      getkQPParseAttributeFlagColorKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlagColorKey()") description:{@"PRQUUtils.mm", 32, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7DAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_17(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeReceivedKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeReceivedKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeReceivedKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeReceivedKey");
      getkQPParseAttributeReceivedKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeReceivedKey()") description:{@"PRQUUtils.mm", 36, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7DC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeSentKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeSentKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeSentKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeSentKey");
      getkQPParseAttributeSentKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSentKey()") description:{@"PRQUUtils.mm", 37, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7DDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_19(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeCreatedActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeCreatedActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeCreatedActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeCreatedActionKey");
      getkQPParseAttributeCreatedActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeCreatedActionKey()") description:{@"PRQUUtils.mm", 52, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7DFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeModifiedActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeModifiedActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeModifiedActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeModifiedActionKey");
      getkQPParseAttributeModifiedActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeModifiedActionKey()") description:{@"PRQUUtils.mm", 51, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7E144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_21(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeSharedKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeSharedKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeSharedKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeSharedKey");
      getkQPParseAttributeSharedKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeSharedKey()") description:{@"PRQUUtils.mm", 48, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7E2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_22(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (!result)
  {
    return result;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v9 = getkQPParseAttributeTransportActionKeySymbolLoc(void)::ptr;
  v31 = getkQPParseAttributeTransportActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTransportActionKeySymbolLoc(void)::ptr)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = ___ZL47getkQPParseAttributeTransportActionKeySymbolLocv_block_invoke;
    v27 = &unk_1E8199698;
    ParserLibrary = QueryParserLibrary();
    v29[3] = dlsym(ParserLibrary, "kQPParseAttributeTransportActionKey");
    getkQPParseAttributeTransportActionKeySymbolLoc(void)::ptr = v29[3];
    v9 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v9)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v20 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTransportActionKey()") description:{@"PRQUUtils.mm", 49, @"%s", dlerror(), v24, v25, v26, v27}];
LABEL_25:
    __break(1u);
    return result;
  }

  if (CFDictionaryGetValue(a2, *v9))
  {
LABEL_19:
    v18 = getkQPParseAttributeDescriptionKey();
    v19 = CFDictionaryGetValue(a2, v18);
    *(*(*(a1 + 32) + 8) + 40) = v19;
    result = v19;
    *a5 = 1;
    return result;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v11 = getkQPParseAttributeAirdropActionKeySymbolLoc(void)::ptr;
  v31 = getkQPParseAttributeAirdropActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeAirdropActionKeySymbolLoc(void)::ptr)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = ___ZL45getkQPParseAttributeAirdropActionKeySymbolLocv_block_invoke;
    v27 = &unk_1E8199698;
    v12 = QueryParserLibrary();
    v29[3] = dlsym(v12, "kQPParseAttributeAirdropActionKey");
    getkQPParseAttributeAirdropActionKeySymbolLoc(void)::ptr = v29[3];
    v11 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v11)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v21 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeAirdropActionKey()") description:{@"PRQUUtils.mm", 75, @"%s", dlerror(), v24, v25, v26, v27}];
    goto LABEL_25;
  }

  if (CFDictionaryGetValue(a2, *v11))
  {
    goto LABEL_19;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v13 = getkQPParseAttributeFacebookActionKeySymbolLoc(void)::ptr;
  v31 = getkQPParseAttributeFacebookActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFacebookActionKeySymbolLoc(void)::ptr)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = ___ZL46getkQPParseAttributeFacebookActionKeySymbolLocv_block_invoke;
    v27 = &unk_1E8199698;
    v14 = QueryParserLibrary();
    v29[3] = dlsym(v14, "kQPParseAttributeFacebookActionKey");
    getkQPParseAttributeFacebookActionKeySymbolLoc(void)::ptr = v29[3];
    v13 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v13)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v22 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFacebookActionKey()") description:{@"PRQUUtils.mm", 76, @"%s", dlerror(), v24, v25, v26, v27}];
    goto LABEL_25;
  }

  if (CFDictionaryGetValue(a2, *v13))
  {
    goto LABEL_19;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v15 = getkQPParseAttributeTwitterActionKeySymbolLoc(void)::ptr;
  v31 = getkQPParseAttributeTwitterActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeTwitterActionKeySymbolLoc(void)::ptr)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = ___ZL45getkQPParseAttributeTwitterActionKeySymbolLocv_block_invoke;
    v27 = &unk_1E8199698;
    v16 = QueryParserLibrary();
    v29[3] = dlsym(v16, "kQPParseAttributeTwitterActionKey");
    getkQPParseAttributeTwitterActionKeySymbolLoc(void)::ptr = v29[3];
    v15 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v15)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v23 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTwitterActionKey()") description:{@"PRQUUtils.mm", 77, @"%s", dlerror(), v24, v25, v26, v27}];
    goto LABEL_25;
  }

  if (CFDictionaryGetValue(a2, *v15))
  {
    goto LABEL_19;
  }

  v17 = getkQPParseAttributeDownloadedActionKey();
  result = CFDictionaryGetValue(a2, v17);
  if (result)
  {
    goto LABEL_19;
  }

  return result;
}

void sub_1C2B7E7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_23(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributePrintedActionKey");
      getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributePrintedActionKey()") description:{@"PRQUUtils.mm", 50, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7E970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeTagColorKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeTagColorKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeTagColorKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeTagColorKey");
      getkQPParseAttributeTagColorKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeTagColorKey()") description:{@"PRQUUtils.mm", 47, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7EB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_25(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeFlightLocationKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeFlightLocationKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeFlightLocationKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeFlightLocationKey");
      getkQPParseAttributeFlightLocationKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlightLocationKey()") description:{@"PRQUUtils.mm", 58, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7ECB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_26(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v9 = getkQPParseAttributeFlightArrivalLocationKey();
    result = CFDictionaryGetValue(a2, v9);
    if (result)
    {
      v10 = getkQPParseAttributeDescriptionKey();
      v11 = CFDictionaryGetValue(a2, v10);
      *(*(*(a1 + 32) + 8) + 40) = v11;
      result = v11;
      *a5 = 1;
    }
  }

  return result;
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_27(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v9 = getkQPParseAttributeFlightArrivalLocationKey();
    result = CFDictionaryGetValue(a2, v9);
    if (result)
    {
      v10 = getkQPParseAttributeDescriptionKey();
      v11 = CFDictionaryGetValue(a2, v10);
      *(*(*(a1 + 32) + 8) + 40) = v11;
      result = v11;
      *a5 = 1;
    }
  }

  return result;
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v9 = getkQPParseAttributeFlightDepartureLocationKey();
    result = CFDictionaryGetValue(a2, v9);
    if (result)
    {
      v10 = getkQPParseAttributeDescriptionKey();
      v11 = CFDictionaryGetValue(a2, v10);
      *(*(*(a1 + 32) + 8) + 40) = v11;
      result = v11;
      *a5 = 1;
    }
  }

  return result;
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_29(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v9 = getkQPParseAttributeFlightDepartureLocationKey();
    result = CFDictionaryGetValue(a2, v9);
    if (result)
    {
      v10 = getkQPParseAttributeDescriptionKey();
      v11 = CFDictionaryGetValue(a2, v10);
      *(*(*(a1 + 32) + 8) + 40) = v11;
      result = v11;
      *a5 = 1;
    }
  }

  return result;
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeFlightActionKey");
      getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlightActionKey()") description:{@"PRQUUtils.mm", 54, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7F04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_31(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v9 = getkQPParseAttributeFlightCarrierKey();
    result = CFDictionaryGetValue(a2, v9);
    if (result)
    {
      v10 = getkQPParseAttributeDescriptionKey();
      v11 = CFDictionaryGetValue(a2, v10);
      *(*(*(a1 + 32) + 8) + 40) = v11;
      result = v11;
      *a5 = 1;
    }
  }

  return result;
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_32(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v9 = getkQPParseAttributeFlightCarrierKey();
    result = CFDictionaryGetValue(a2, v9);
    if (result)
    {
      v10 = getkQPParseAttributeDescriptionKey();
      v11 = CFDictionaryGetValue(a2, v10);
      *(*(*(a1 + 32) + 8) + 40) = v11;
      result = v11;
      *a5 = 1;
    }
  }

  return result;
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_33(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v9 = getkQPParseAttributeFlightDepartureLocationKey();
    result = CFDictionaryGetValue(a2, v9);
    if (result)
    {
      v10 = getkQPParseAttributeDescriptionKey();
      v11 = CFDictionaryGetValue(a2, v10);
      *(*(*(a1 + 32) + 8) + 40) = v11;
      result = v11;
      *a5 = 1;
    }
  }

  return result;
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v9 = getkQPParseAttributeFlightArrivalLocationKey();
    result = CFDictionaryGetValue(a2, v9);
    if (result)
    {
      v10 = getkQPParseAttributeDescriptionKey();
      v11 = CFDictionaryGetValue(a2, v10);
      *(*(*(a1 + 32) + 8) + 40) = v11;
      result = v11;
      *a5 = 1;
    }
  }

  return result;
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_35(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeHotelActionKey");
      getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeHotelActionKey()") description:{@"PRQUUtils.mm", 59, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7F3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_36(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeHotelProviderKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeHotelProviderKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeHotelProviderKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeHotelProviderKey");
      getkQPParseAttributeHotelProviderKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeHotelProviderKey()") description:{@"PRQUUtils.mm", 61, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7F584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_37(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeHotelNameKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeHotelNameKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeHotelNameKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeHotelNameKey");
      getkQPParseAttributeHotelNameKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeHotelNameKey()") description:{@"PRQUUtils.mm", 60, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeRestaurantActionKey");
      getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRestaurantActionKey()") description:{@"PRQUUtils.mm", 63, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7F8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_39(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeRestaurantNameKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeRestaurantNameKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeRestaurantNameKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeRestaurantNameKey");
      getkQPParseAttributeRestaurantNameKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeRestaurantNameKey()") description:{@"PRQUUtils.mm", 64, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeReadingListActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeReadingListActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeReadingListActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeReadingListActionKey");
      getkQPParseAttributeReadingListActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeReadingListActionKey()") description:{@"PRQUUtils.mm", 74, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7FC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_41(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeEarliestActionKey");
      getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeEarliestActionKey()") description:{@"PRQUUtils.mm", 81, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7FDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_42(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeLatestActionKey");
      getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeLatestActionKey()") description:{@"PRQUUtils.mm", 82, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B7FF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_43(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeCompletedActionKey");
      getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeCompletedActionKey()") description:{@"PRQUUtils.mm", 83, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B80100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeDueActionKey");
      getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDueActionKey()") description:{@"PRQUUtils.mm", 84, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B802A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_45(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeDraftActionKey");
      getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDraftActionKey()") description:{@"PRQUUtils.mm", 85, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B80448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_46(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeJunkActionKey");
      getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeJunkActionKey()") description:{@"PRQUUtils.mm", 86, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B805EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___Z31populateU2LabelsAndDescriptionsPiRNSt3__113unordered_mapIifNS0_4hashIiEENS0_8equal_toIiEENS0_9allocatorINS0_4pairIKifEEEEEEPK14__CFDictionaryP18NSAttributedString_block_invoke_47(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr;
    v17 = getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr;
    if (!getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v15[3] = dlsym(ParserLibrary, "kQPParseAttributeArchiveActionKey");
      getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      result = CFDictionaryGetValue(a2, *v9);
      if (result)
      {
        v11 = getkQPParseAttributeDescriptionKey();
        v12 = CFDictionaryGetValue(a2, v11);
        *(*(*(a1 + 32) + 8) + 40) = v12;
        result = v12;
        *a5 = 1;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      result = [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeArchiveActionKey()") description:{@"PRQUUtils.mm", 87, @"%s", dlerror()}];
      __break(1u);
    }
  }

  return result;
}

void sub_1C2B80790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL45getkQPParseAttributeArchiveActionKeySymbolLocv_block_invoke_12886(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeArchiveActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeArchiveActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeDescriptionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeDescriptionKey");
    getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDescriptionKey()") description:{@"PRQUUtils.mm", 25, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B80924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL43getkQPParseAttributeDescriptionKeySymbolLocv_block_invoke_12890(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDescriptionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeJunkActionKeySymbolLocv_block_invoke_12894(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeJunkActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeJunkActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeDraftActionKeySymbolLocv_block_invoke_12898(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDraftActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDraftActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeDueActionKeySymbolLocv_block_invoke_12902(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDueActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDueActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeCompletedActionKeySymbolLocv_block_invoke_12906(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeCompletedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeCompletedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeLatestActionKeySymbolLocv_block_invoke_12910(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeLatestActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeLatestActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeEarliestActionKeySymbolLocv_block_invoke_12914(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeEarliestActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeEarliestActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkQPParseAttributeReadingListActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeReadingListActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeReadingListActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeRestaurantNameKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRestaurantNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRestaurantNameKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkQPParseAttributeRestaurantActionKeySymbolLocv_block_invoke_12920(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRestaurantActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRestaurantActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeHotelNameKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeHotelNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeHotelNameKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeHotelProviderKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeHotelProviderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeHotelProviderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getkQPParseAttributeHotelActionKeySymbolLocv_block_invoke_12926(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeHotelActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeHotelActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeFlightArrivalLocationKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeFlightArrivalLocationKey");
    getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlightArrivalLocationKey()") description:{@"PRQUUtils.mm", 55, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B80E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL53getkQPParseAttributeFlightArrivalLocationKeySymbolLocv_block_invoke_12930(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlightArrivalLocationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlightArrivalLocationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeFlightDepartureLocationKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeFlightDepartureLocationKey");
    getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlightDepartureLocationKey()") description:{@"PRQUUtils.mm", 56, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B8100C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL55getkQPParseAttributeFlightDepartureLocationKeySymbolLocv_block_invoke_12934(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlightDepartureLocationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlightDepartureLocationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeFlightCarrierKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeFlightCarrierKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeFlightCarrierKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeFlightCarrierKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeFlightCarrierKey");
    getkQPParseAttributeFlightCarrierKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeFlightCarrierKey()") description:{@"PRQUUtils.mm", 57, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B811A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL45getkQPParseAttributeFlightCarrierKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlightCarrierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlightCarrierKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeFlightActionKeySymbolLocv_block_invoke_12939(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlightActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlightActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeFlightLocationKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlightLocationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlightLocationKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkQPParseAttributeTagColorKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTagColorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTagColorKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributePrintedActionKeySymbolLocv_block_invoke_12945(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributePrintedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributePrintedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkQPParseAttributeTransportActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTransportActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTransportActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeAirdropActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeAirdropActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeAirdropActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeFacebookActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFacebookActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFacebookActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeTwitterActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTwitterActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTwitterActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeDownloadedActionKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeDownloadedActionKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeDownloadedActionKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeDownloadedActionKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeDownloadedActionKey");
    getkQPParseAttributeDownloadedActionKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeDownloadedActionKey()") description:{@"PRQUUtils.mm", 78, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B815B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL48getkQPParseAttributeDownloadedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDownloadedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDownloadedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL38getkQPParseAttributeSharedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSharedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSharedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeModifiedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeModifiedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeModifiedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getkQPParseAttributeCreatedActionKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeCreatedActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeCreatedActionKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkQPParseAttributeSentKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSentKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkQPParseAttributeReceivedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeReceivedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeReceivedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeFlagColorKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlagColorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlagColorKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL38getkQPParseAttributeTaggedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTaggedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTaggedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkQPParseAttributeFlaggedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFlaggedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFlaggedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkQPParseAttributeRepliedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRepliedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRepliedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL38getkQPParseAttributeUnreadKeySymbolLocv_block_invoke_12963(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeUnreadKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeUnreadKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkQPParseAttributeReadKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeReadKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeReadKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeAttachmentKindKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeAttachmentKindKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeAttachmentKindKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeAttachmentKindKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeAttachmentKindKey");
    getkQPParseAttributeAttachmentKindKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeAttachmentKindKey()") description:{@"PRQUUtils.mm", 39, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B81AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL46getkQPParseAttributeAttachmentKindKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeAttachmentKindKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeAttachmentKindKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkQPParseAttributeAttachmentKeySymbolLocv_block_invoke_12969(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeAttachmentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeAttachmentKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeFavoritedKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeFavoritedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeFavoritedKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkQPParseAttributeKindKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkQPParseAttributeKindKeySymbolLoc(void)::ptr;
  v7 = getkQPParseAttributeKindKeySymbolLoc(void)::ptr;
  if (!getkQPParseAttributeKindKeySymbolLoc(void)::ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v5[3] = dlsym(ParserLibrary, "kQPParseAttributeKindKey");
    getkQPParseAttributeKindKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v3 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPParseAttributeKindKey()") description:{@"PRQUUtils.mm", 45, @"%s", dlerror()}];
  __break(1u);
  return result;
}

void sub_1C2B81CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL36getkQPParseAttributeKindKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeKindKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeKindKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL37getkQPParseAttributeMediaKeySymbolLocv_block_invoke_12975(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeMediaKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeMediaKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL41getkQPParseAttributeRecipientKeySymbolLocv_block_invoke_12979(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeRecipientKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeRecipientKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL38getkQPParseAttributeSenderKeySymbolLocv_block_invoke_12983(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeSenderKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeSenderKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkQPParseAttributeGroundedPersonKeySymbolLocv_block_invoke_12987(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeGroundedPersonKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeGroundedPersonKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL38getkQPParseAttributePersonKeySymbolLocv_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributePersonKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributePersonKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getkQPParseAttributeTaggedPersonKeySymbolLocv_block_invoke_12992(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeTaggedPersonKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeTaggedPersonKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkQPParseAttributeDateKeySymbolLocv_block_invoke_12996(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseAttributeDateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseAttributeDateKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL isKeywordArgId(int a1)
{
  {
    KeywordArgs(void)::_keywordArgs = 0u;
    *algn_1EBF485F0 = 0u;
    dword_1EBF48600 = 1065353216;
  }

  if (KeywordArgs(void)::onceToken != -1)
  {
    dispatch_once(&KeywordArgs(void)::onceToken, &__block_literal_global_69);
  }

  return std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&KeywordArgs(void)::_keywordArgs, a1) != 0;
}

void ___ZL11KeywordArgsv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1[4] = xmmword_1C2C00190;
  v1[5] = unk_1C2C001A0;
  v1[6] = xmmword_1C2C001B0;
  v1[0] = xmmword_1C2C00150;
  v1[1] = unk_1C2C00160;
  v1[2] = xmmword_1C2C00170;
  v1[3] = unk_1C2C00180;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&KeywordArgs(void)::_keywordArgs, v1, &v2);
  v0 = *MEMORY[0x1E69E9840];
}

void *std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::find<std::string>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = *(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 1);
  if (!*(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 1))
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(*(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 1))
    {
      v9 = v4 % *(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 1);
    }
  }

  else
  {
    v9 = (*(&SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 1) - 1) & v4;
  }

  v10 = *(SpotlightU2AttributesToArgIDs(void)::_spotlightU2AttributesToArgIDs + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= v5)
          {
            v12 %= v5;
          }
        }

        else
        {
          v12 &= v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void ___ZL29SpotlightU2AttributesToArgIDsv_block_invoke()
{
  v65 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(__p, "default");
  *&v61 = __p;
  v0 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v0 + 5, 0, 0, 0);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 2;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemContactKeywords");
  *&v61 = __p;
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v1 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 2;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosPeopleNames");
  *&v61 = __p;
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v2 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 2;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthorAddresses");
  *&v61 = __p;
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v3 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x200000004;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipientAddresses");
  *&v61 = __p;
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v4 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x200000003;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthors");
  *&v61 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v5 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 3;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUserSharedReceivedSender");
  *&v61 = __p;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v6 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x200000003;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAuthorEmailAddresses");
  *&v61 = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v7 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 3;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUserSharedReceivedSenderHandle");
  *&v61 = __p;
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v8 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x200000004;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipients");
  *&v61 = __p;
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v9 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x200000004;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPrimaryRecipients");
  *&v61 = __p;
  v10 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v10 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 4;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUserSharedReceivedRecipient");
  *&v61 = __p;
  v11 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v11 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 4;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUserSharedSentRecipient");
  *&v61 = __p;
  v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v12 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x200000004;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemRecipientEmailAddresses");
  *&v61 = __p;
  v13 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v13 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x200000004;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPrimaryRecipientEmailAddresses");
  *&v61 = __p;
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v14 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 4;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUserSharedReceivedRecipientHandle");
  *&v61 = __p;
  v15 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v15 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  v61 = xmmword_1C2C001C0;
  v62 = 9;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemContentTypeTree");
  __src = __p;
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v16 + 5, &v61, v63, 5uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 16;
  std::string::basic_string[abi:nn200100]<0>(__p, "com_apple_mail_flagged");
  *&v61 = __p;
  v17 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v17 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  *&v61 = 0x2B00000010;
  DWORD2(v61) = 17;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUserTags");
  __src = __p;
  v18 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v18 + 5, &v61, &v61 + 12, 3uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 36;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemIsShared");
  *&v61 = __p;
  v19 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v19 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 36;
  std::string::basic_string[abi:nn200100]<0>(__p, "_ICItemIsShared");
  *&v61 = __p;
  v20 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v20 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 36;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemSharedItemCurrentUserRole");
  *&v61 = __p;
  v21 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v21 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x2500000024;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUserSharedSentTransport");
  *&v61 = __p;
  v22 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v22 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 36;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUserSharedReceivedTransport");
  *&v61 = __p;
  v23 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v23 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 44;
  std::string::basic_string[abi:nn200100]<0>(__p, "com_apple_mail_flagColor");
  *&v61 = __p;
  v24 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v24 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 24;
  std::string::basic_string[abi:nn200100]<0>(__p, "com_apple_mail_repliedTo");
  *&v61 = __p;
  v25 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v25 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x1D0000001CLL;
  std::string::basic_string[abi:nn200100]<0>(__p, "com_apple_mail_read");
  *&v61 = __p;
  v26 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v26 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  v61 = xmmword_1C2C001E8;
  v62 = 26;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemMailboxes");
  __src = __p;
  v27 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v27 + 5, &v61, v63, 5uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemContentCreationDate");
  *&v61 = __p;
  v28 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v28 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemContentModificationDate");
  *&v61 = __p;
  v29 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v29 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "com_apple_mail_dateReceived");
  *&v61 = __p;
  v30 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v30 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "com_apple_mail_dateSent");
  *&v61 = __p;
  v31 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v31 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "com_apple_mail_dateLastViewed");
  *&v61 = __p;
  v32 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v32 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEndDate");
  *&v61 = __p;
  v33 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v33 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  *&v61 = 0x3300000008;
  DWORD2(v61) = 52;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemStartDate");
  __src = __p;
  v34 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v34 + 5, &v61, &v61 + 12, 3uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemLastUsedDate");
  *&v61 = __p;
  v35 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v35 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUsedDates");
  *&v61 = __p;
  v36 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v36 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDownloadDate");
  *&v61 = __p;
  v37 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v37 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUserPrintedDate");
  *&v61 = __p;
  v38 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v38 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUserSharedReceivedDate");
  *&v61 = __p;
  v39 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v39 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 8;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemUserSharedSentDate");
  *&v61 = __p;
  v40 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v40 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  *&v61 = 0x400000003ALL;
  DWORD2(v61) = 67;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEventType");
  __src = __p;
  v41 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v41 + 5, &v61, &v61 + 12, 3uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  v61 = xmmword_1C2BFA660;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEventFlightArrivalAirportName");
  __src = __p;
  v42 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v42 + 5, &v61, &v62, 4uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  v61 = xmmword_1C2BFA660;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEventFlightArrivalAirportCode");
  __src = __p;
  v43 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v43 + 5, &v61, &v62, 4uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  v61 = xmmword_1C2BFA660;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEventFlightArrivalAirportLocality");
  __src = __p;
  v44 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v44 + 5, &v61, &v62, 4uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  v61 = xmmword_1C2BFA670;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEventFlightDepartureAirportName");
  __src = __p;
  v45 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v45 + 5, &v61, &v62, 4uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  v61 = xmmword_1C2BFA670;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEventFlightDepartureAirportCode");
  __src = __p;
  v46 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v46 + 5, &v61, &v62, 4uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  v61 = xmmword_1C2BFA670;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEventFlightDepartureAirportLocality");
  __src = __p;
  v47 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v47 + 5, &v61, &v62, 4uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x3C0000003BLL;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEventFlightCarrier");
  *&v61 = __p;
  v48 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v48 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 66;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEventHotelReservationForName");
  *&v61 = __p;
  v49 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v49 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 65;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEventHotelProvider");
  *&v61 = __p;
  v50 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v50 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 68;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemEventRestaurantReservationForName");
  *&v61 = __p;
  v51 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v51 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x800000021;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemDueDate");
  *&v61 = __p;
  v52 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v52 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  __src = 0x800000022;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemCompletionDate");
  *&v61 = __p;
  v53 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v53 + 5, &__src, &v65, 2uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 31;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemIsLikelyJunk");
  *&v61 = __p;
  v54 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v54 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 17;
  std::string::basic_string[abi:nn200100]<0>(__p, "_ICItemHasICItemHasTags");
  *&v61 = __p;
  v55 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v55 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(__src) = 17;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemHashtags");
  *&v61 = __p;
  v56 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v56 + 5, &__src, &__src + 4, 1uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  *&v61 = 0x1400000012;
  DWORD2(v61) = 19;
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAttachmentTypes");
  __src = __p;
  v57 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p);
  std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(v57 + 5, &v61, &v61 + 12, 3uLL);
  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  v58 = *MEMORY[0x1E69E9840];
}