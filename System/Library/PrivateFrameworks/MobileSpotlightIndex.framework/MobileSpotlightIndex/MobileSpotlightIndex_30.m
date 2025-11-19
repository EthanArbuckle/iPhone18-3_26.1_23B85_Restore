void si_initialIndexingEnded(uint64_t a1, int a2)
{
  if (!a2)
  {
    v4 = *a1;
    if (**(*a1 + 1392))
    {
      si_sync_ctx_create_with_defer_fd(*a1, 0);
      *(v5 + 64) = *(a1 + 64);
      *(v5 + 56) = 9719;
      *(a1 + 64) = 0;
      syncIndex(v5, 0);
      v6 = db_shrink_cache(v4[149]);
      if (v6)
      {
        si_makeUnavailable(v4, v6, 0, 4, "Failure in db_shrink_cache at si_initialIndexingEnded");
      }

      else
      {
        v7 = *(a1 + 80);
        if (gSISystemOnBattery == 1 && (v8 = v4[295]) != 0 && (v9 = *(v8 + 80)) != 0)
        {
          v10 = *(v8 + 144);
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 0x40000000;
          v11[2] = __si_initialIndexingEnded_block_invoke;
          v11[3] = &__block_descriptor_tmp_893;
          v12 = v7;
          v9(v10, 0, @"InitialIndexingEnded", v11);
        }

        else
        {
          setupAndIssueMerge(v4, v7, 0, 0, 0);
        }
      }
    }
  }

  si_sync_ctx_free(a1, a2 != 0);
}

void __si_initialIndexingEnded_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    setupAndIssueMerge(a2, *(a1 + 32), a3, a4, a5);
  }
}

void setupAndIssueMerge(void *a1, int a2, void *a3, uint64_t a4, NSObject *a5)
{
  v9 = a1[174];
  v10 = a1[173];
  v11 = *(v9 + 2);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *v9;
    do
    {
      while (*(*(v15 + 8 * v12) + 40) != a2)
      {
        if (v14)
        {
          goto LABEL_11;
        }

        if (++v12 >= v11)
        {
          goto LABEL_13;
        }
      }

      if (!v14)
      {
        v14 = *(v15 + 8 * v12);
      }

      ++v13;
      ++v12;
    }

    while (v12 < v11);
    if (!v14)
    {
      goto LABEL_13;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_25;
  }

  v13 = 0;
LABEL_13:
  v17 = *(v10 + 2);
  if (v17)
  {
    v16 = 0;
    v14 = 0;
    v18 = *v10;
    do
    {
      if (*(*v18 + 40) == a2)
      {
        if (!v14)
        {
          v14 = *v18;
        }

        ++v13;
        v16 = 1;
      }

      else if (v14)
      {
        break;
      }

      ++v18;
      --v17;
    }

    while (v17);
    if (v11 >= 2 && (v16 & 1) != 0)
    {
      setupAndIssueMerge(a1, 1, a3, a4, a5);
    }

    if (v14)
    {
LABEL_25:
      v19 = malloc_type_calloc(1uLL, 0x460uLL, 0x1070040C187FD8AuLL);
      *v19 = a1;
      if ((v16 & 1) != 0 && v13 == 1)
      {
        v20 = a1[173];
        v21 = *(v14 + 56);
        if (!v21)
        {
          goto LABEL_35;
        }

        v22 = *(v20 + 8);
        if (!v22)
        {
          goto LABEL_35;
        }

        v23 = 0;
        while (*(*(*v20 + 8 * v23) + 56) != v21)
        {
          if (v22 == ++v23)
          {
            goto LABEL_35;
          }
        }

        if ((v23 + 1) >= 2)
        {
          v13 = count_IndexSet(a1[173], v23 - 1, *(v14 + 52));
          v24 = v23 - v13;
        }

        else
        {
LABEL_35:
          v24 = 0;
          v13 = 1;
        }

        v14 = *(*v20 + 8 * v24);
      }

      if (v16)
      {
        v25 = v13;
      }

      else
      {
        v25 = -1;
      }

      *(v19 + 2) = *(v14 + 56);
      *(v19 + 3) = v25;
      v19[16] = v16;
      *(v19 + 1041) = 0;
      *(v19 + 131) = "void setupAndIssueMerge(SIRef, uint32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)";
      *(v19 + 274) = 5;
      v19[1100] = 0;
      __strlcpy_chk();
      v26 = v19 + 1064;
      si_power_info_init((v19 + 1064), a3, a4, a5);
      if (!*(v19 + 136) && !*v26)
      {
        v28 = a1[295];
        if (v28)
        {
          v29 = *(v28 + 64);
          if (v29)
          {
            *v26 = v29(*(v28 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9688, "void setupAndIssueMerge(SIRef, uint32_t, _Bool, xpc_activity_t, _Bool *, dispatch_group_t)");
          }
        }
      }

      v27 = a1[133];

      si_enqueue_work(v27, si_mergeIndex, v19);
    }
  }
}

void si_mergeIndex(uint64_t a1, int a2)
{
  v158 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (PLShouldLogRegisteredEvent())
    {
      v4 = CFDictionaryCreate(0, 0, 0, 0, 0, 0);
      Mutable = CFStringCreateMutable(0, 200);
      CFStringAppend(Mutable, @"com.apple.searchd.merge");
      if (*a1)
      {
        v6 = *(*a1 + 60);
        if (v6)
        {
          if (v6 == 1)
          {
            v7 = "cs_priority";
          }

          else if (v6 == 3)
          {
            v7 = "cs_mail";
          }

          else
          {
            v8 = (v6 & 1) != 0 ? 2 : (v6 >> 1) - 1;
            v7 = v8 >= 7 ? "cs_default" : off_1E8196C28[v8];
          }

          v9 = CFStringCreateWithCString(0, v7, 0x8000100u);
          if (v9)
          {
            v10 = v9;
            CFStringAppend(Mutable, @".");
            CFStringAppend(Mutable, v10);
            CFRelease(v10);
          }
        }
      }

      v11 = *(a1 + 1048);
      if (v11)
      {
        v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
        if (v12)
        {
          v13 = v12;
          CFStringAppend(Mutable, @".");
          CFStringAppend(Mutable, v13);
          CFRelease(v13);
        }
      }

      *keys = @"processName";
      *&keys[8] = Mutable;
      *values = @"searchd";
      *&values[8] = v4;
      v14 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      PLLogRegisteredEvent();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      CFRelease(v14);
    }

    v15 = *a1;
    v16 = *a1;
    if (!*(a1 + 1104))
    {
      *(a1 + 1104) = time(0);
    }

    disableProcMon();
    v139 = 0;
    if (!fd_setDir(*(v16 + 32), &v139))
    {
      goto LABEL_168;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v18 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(v16 + 1192), 0x40000000, add_explicit + 1);
    v137 = HIDWORD(v18);
    v138 = v18;
    v135 = v20;
    v136 = v19;
    v21 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
    *(v21 + 216) = 0;
    v22 = *(v21 + 312);
    v23 = *(v21 + 224);
    v24 = v21;
    if (v23)
    {
      v23(*(v21 + 288));
    }

    if (_setjmp(v24))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *keys = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", keys, 2u);
      }

      v24[78] = v22;
      CIOnThreadCleanUpReset(v135);
      dropThreadId(v138, 1, add_explicit + 1);
      CICleanUpReset(v138, v136);
LABEL_165:
      v119 = a1;
      v120 = v139;
      MEMORY[0x1C6921200](v139);
      if ((v120 & 0x80000000) == 0)
      {
        close(v120);
      }

      a1 = v119;
LABEL_168:
      enableProcMon();
      goto LABEL_169;
    }

    v25 = (a1 + 1064);
    if (!*(a1 + 1088) && !*v25)
    {
      v54 = *(v16 + 2360);
      if (v54)
      {
        v55 = *(v54 + 64);
        if (v55)
        {
          *v25 = v55(*(v54 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9414, "void si_mergeIndex(void *, Boolean)");
        }
      }
    }

    if (!*(a1 + 8) && ((*(a1 + 1042) & 1) != 0 || (*(a1 + 16) & 1) == 0))
    {
      v26 = *(v16 + 1392);
      if (*(v26 + 16) != -1)
      {
        for (i = (v15 + 1392); ; v26 = *i)
        {
          v28 = ContentIndexListClone(v26);
          *(v28 + 4) = -1;
          if (si_swapIndexSet(v16, v26, v28, i, v29, v30, v31, v32))
          {
            break;
          }

          ContentIndexListFree(v28);
        }

        _CIDisableUpdates(*(*v28 + 8 * (*(v28 + 2) - 1)));
      }
    }

    v33 = *__error();
    v34 = _SILogForLogForCategory(0);
    v35 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v34, v35))
    {
      if (*(a1 + 1042))
      {
        v36 = "Full";
      }

      else
      {
        v36 = "Partial";
      }

      v37 = "Normal";
      v38 = si_merge_reason_names[*(a1 + 1096)];
      v39 = *(a1 + 1043);
      if (*(a1 + 1041))
      {
        v37 = "Vacuum";
      }

      *keys = 136315906;
      *&keys[4] = v36;
      v40 = "Forced";
      *&keys[12] = 2080;
      *&keys[14] = v37;
      v148 = 2080;
      v149 = v38;
      if (!v39)
      {
        v40 = "Voluntary";
      }

      v150 = 2080;
      v151 = v40;
      _os_log_impl(&dword_1C278D000, v34, v35, "Attempt to merge (%s/%s/%s/%s)", keys, 0x2Au);
    }

    *__error() = v33;
    if (*(a1 + 1042) == 1)
    {
      *(a1 + 12) = -1;
      if ((transfer_live_indexes(v16) & 1) == 0)
      {
        v51 = *__error();
        v52 = _SILogForLogForCategory(0);
        v53 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v52, v53))
        {
          *keys = 0;
          _os_log_impl(&dword_1C278D000, v52, v53, "Failed to transfer live indexes", keys, 2u);
        }

        *__error() = v51;
        goto LABEL_159;
      }
    }

    v41 = *a1;
    if (*(a1 + 16))
    {
      v42 = 1384;
    }

    else
    {
      v42 = 1392;
    }

    v43 = *(v41 + v42);
    v44 = v43;
    *keys = v16;
    __checkIndexSetDocIdOrder(v16, v43);
    v45 = *(a1 + 12);
    if (v45 == -1)
    {
      v49 = 0;
      v50 = *(v44 + 2);
      *(a1 + 12) = v50;
      v45 = v50;
    }

    else
    {
      v46 = *(a1 + 8);
      if (v46 && (v47 = *(v44 + 2), v47))
      {
        v48 = 0;
        while (*(*(*v44 + 8 * v48) + 56) != v46)
        {
          if (v47 == ++v48)
          {
            goto LABEL_64;
          }
        }

        v49 = v48;
      }

      else
      {
LABEL_64:
        v49 = 0;
      }
    }

    if (!v45 || v49 + v45 > *(v44 + 2))
    {
      v56 = v44;
      v57 = *__error();
      v58 = _SILogForLogForCategory(0);
      v59 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v58, v59))
      {
        v60 = si_merge_reason_names[*(a1 + 1096)];
        v61 = *(a1 + 1043);
        if (*(a1 + 1042))
        {
          v62 = "Full";
        }

        else
        {
          v62 = "Partial";
        }

        v63 = *(a1 + 12);
        v64 = *(a1 + 1041) == 0;
        v65 = *(v56 + 2);
        *keys = 136316674;
        *&keys[4] = v62;
        if (v64)
        {
          v66 = "Normal";
        }

        else
        {
          v66 = "Vacuum";
        }

        *&keys[12] = 2080;
        *&keys[14] = v66;
        v67 = "Forced";
        v148 = 2080;
        v149 = v60;
        if (!v61)
        {
          v67 = "Voluntary";
        }

        v150 = 2080;
        v151 = v67;
        v152 = 1024;
        v153 = v63;
        v154 = 1024;
        v155 = v63 + v49 <= v65;
        v156 = 2080;
        v157 = "";
        _os_log_impl(&dword_1C278D000, v58, v59, "Skipped merge (%s/%s/%s/%s/%d/%d)%s", keys, 0x40u);
      }

      *__error() = v57;
      goto LABEL_159;
    }

    v132 = v41;
    v133 = v42;
    v134 = v44;
    v68 = ContentIndexListClone(v44);
    bzero(keys, 0x400uLL);
    v69 = fcntl(*(v16 + 32), 50, keys);
    v70 = 0;
    if (keys[0])
    {
      v71 = v69 < 0;
    }

    else
    {
      v71 = 1;
    }

    if (!v71)
    {
      v70 = keys;
    }

    v131 = v70;
    v72 = *__error();
    v73 = _SILogForLogForCategory(0);
    v74 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v73, v74))
    {
      if (*(a1 + 1042))
      {
        v75 = "Full";
      }

      else
      {
        v75 = "Partial";
      }

      v64 = *(a1 + 1041) == 0;
      v76 = si_merge_reason_names[*(a1 + 1096)];
      v77 = *(a1 + 1043);
      v78 = *(a1 + 12);
      *values = 136316162;
      *&values[4] = v75;
      if (v64)
      {
        v79 = "Normal";
      }

      else
      {
        v79 = "Vacuum";
      }

      *&values[12] = 2080;
      *&values[14] = v79;
      v80 = "Forced";
      v141 = 2080;
      if (!v77)
      {
        v80 = "Voluntary";
      }

      v142 = v76;
      v143 = 2080;
      v144 = v80;
      v145 = 1024;
      v146 = v78;
      _os_log_impl(&dword_1C278D000, v73, v74, "Merging (%s/%s/%s/%s/%d)", values, 0x30u);
    }

    *__error() = v72;
    v81 = v68;
    v82 = *(a1 + 12);
    if (*(v68 + 2) == v82 && (*(a1 + 16) & 1) == 0)
    {
      *(v68 + 4) = -1;
    }

    v83 = *(v68 + 4);
    v84 = v132;
    if (v49 <= v83 && v83 < (v82 + v49))
    {
      if (v49 >= v83)
      {
        *(a1 + 12) = v82 - 1;
        ++v49;
      }

      else
      {
        *(a1 + 12) = v83 + ~v49;
      }
    }

    v85 = v49;
    if (CompactIndexes(v16, a1, v49, v81) && (*(a1 + 1041) != 1 || *(v16 + 1152) || (v87 = *(a1 + 12), (v87 + v49) <= *(v81 + 8)) && (SetupDeferQueue(v16, v81, v49, v87) || (v105 = *(v81 + 8) + ~v49, *(a1 + 12) = v105, SetupDeferQueue(v16, v81, v49, v105)))))
    {
      v86 = CompactIndexes(v16, a1, v49, v81);
    }

    else
    {
      v86 = 0;
    }

    if ((*(a1 + 1041) & 1) == 0 && *(v16 + 1152))
    {
      handleDeferQueue(v16);
    }

    if (!v86)
    {
      goto LABEL_156;
    }

    v88 = *(a1 + 12);
    if (v88 < 2)
    {
      goto LABEL_156;
    }

    v89 = *(a1 + 12);
    v90 = *(v81 + 16);
    if (v90 == -1)
    {
      LODWORD(v94) = *(a1 + 16);
      v95 = *(a1 + 12);
      if (v94 != 1)
      {
        goto LABEL_148;
      }

      v96 = *(v81 + 8);
      if (v85 >= v96)
      {
        *(a1 + 12) = 0;
        goto LABEL_156;
      }

      if (v88 + v85 >= v96)
      {
        v97 = v96 + ~v85;
        *(a1 + 12) = v97;
        if (v97 < 1)
        {
LABEL_156:
          free(*v81);
          free(v81);
          if (*(v16 + 1152))
          {
            handleDeferQueue(v16);
            if (*(v16 + 1152))
            {
              v127 = __si_assert_copy_extra_661(-1);
              v128 = v127;
              v129 = "";
              if (v127)
              {
                v129 = v127;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 9568, "!ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v129);
              free(v128);
              if (__valid_fs(-1))
              {
                v130 = 2989;
              }

              else
              {
                v130 = 3072;
              }

              *v130 = -559038737;
              abort();
            }
          }

          goto LABEL_158;
        }
      }

      v98 = 0;
      v99 = v81;
      do
      {
        v100 = v98;
        _CIDisableUpdates(*(*v99 + 8 * (v85 + v98)));
        v98 = v100 + 1;
        v94 = *(a1 + 12);
      }

      while (v100 + 1 < v94);
      v81 = v99;
      v84 = v132;
    }

    else
    {
      if (v85 == v90)
      {
        *(a1 + 12) = 0;
        v89 = 0;
      }

      v91 = v89;
      if (v85 < v90)
      {
        v92 = v89 + v85;
        v93 = v90;
        if (v92 > v90)
        {
LABEL_126:
          LODWORD(v94) = v93 - v85;
          *(a1 + 12) = v93 - v85;
          goto LABEL_146;
        }
      }

      if (v85 <= v90)
      {
        LODWORD(v94) = v91;
      }

      else
      {
        LODWORD(v94) = v91;
        if (v85 < v91)
        {
          v101 = v85;
          while (1)
          {
            v102 = v101;
            v103 = *(*v81 + 8 * v101);
            v104 = atomic_load((v103 + 36));
            if ((v104 & 3) == 0 && (*(v103 + 15203) & 1) == 0)
            {
              break;
            }

            v101 = v102 + 1;
            if (v102 + 1 >= *(a1 + 12))
            {
              LODWORD(v94) = *(a1 + 12);
              goto LABEL_146;
            }
          }

          v93 = v102;
          goto LABEL_126;
        }
      }
    }

LABEL_146:
    if (v94 >= 2)
    {
      v106 = v94;
      LOBYTE(v94) = *(a1 + 16);
      v95 = v106;
LABEL_148:
      v107 = MergeIndexes(v16, *(a1 + 8), v85, v95, (v84 + v133), v134, v81, v131, (a1 + 17), *(a1 + 1041), v94 & 1, a1 + 1064);
      if (v107)
      {
        v108 = *(v84 + v133);
        if (*(a1 + 8) && (v109 = *(v107 + 56)) != 0 && (v110 = *(v108 + 8), v110))
        {
          v111 = v107;
          v112 = 0;
          while (*(*(*v108 + 8 * v112) + 56) != v109)
          {
            if (v110 == ++v112)
            {
              goto LABEL_155;
            }
          }

          *values = v16;
          __checkIndexSetDocIdOrder(v16, v108);
          if (v112)
          {
            v126 = count_IndexSet(v108, v112, *(v111 + 52));
            if (v126 >= 5 && v126 < *(a1 + 12))
            {
              *(a1 + 8) = *(*(*v108 + 8 * (v112 - v126 + 1)) + 56);
              *(a1 + 12) = v126;
              *(a1 + 1041) = 0;
              *(a1 + 1048) = "void si_mergeIndex(void *, Boolean)";
              si_enqueue_work(*(v16 + 1064), si_mergeIndex, a1);
              a1 = 0;
LABEL_159:
              if (*(v16 + 1152) && *(a1 + 1041) == 1)
              {
                handleDeferQueue(v16);
              }

              v117 = threadData[9 * v138 + 1] + 320 * v137;
              *(v117 + 312) = v22;
              v118 = *(v117 + 232);
              if (v118)
              {
                v118(*(v117 + 288));
              }

              dropThreadId(v138, 0, add_explicit + 1);
              goto LABEL_165;
            }
          }
        }

        else
        {
LABEL_155:
          *values = v16;
          __checkIndexSetDocIdOrder(v16, v108);
        }
      }

      else
      {
        if (*(a1 + 1041) == 1)
        {
          handleDeferQueue(v16);
        }

        if (*(v16 + 1152))
        {
          v122 = __si_assert_copy_extra_661(-1);
          v123 = v122;
          v124 = "";
          if (v122)
          {
            v124 = v122;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 9561, "!ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v124);
          free(v123);
          if (__valid_fs(-1))
          {
            v125 = 2989;
          }

          else
          {
            v125 = 3072;
          }

          *v125 = -559038737;
          abort();
        }
      }

LABEL_158:
      v113 = *(a1 + 1100);
      v114 = gSISystemInDarkWake;
      v115 = si_merge_reason_names[*(a1 + 1096)];
      v116 = time(0);
      si_message_trace_darkwake(v113, v16, "DarkMerge", v114, v115, "Index merge in dark wake", v116 - *(a1 + 1104));
      goto LABEL_159;
    }

    goto LABEL_156;
  }

LABEL_169:
  si_merge_ctx_free(a1, a2 != 0);
  v121 = *MEMORY[0x1E69E9840];
}

uint64_t disableProcMon()
{
  getpid();
  pthread_mutex_lock(&sProcMonLock);
  if (!sDisableProcMon && proc_get_cpumon_params())
  {
    v0 = *__error();
    v1 = _SILogForLogForCategory(0);
    v2 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v1, v2))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v1, v2, "Failed to get cpumon_params", buf, 2u);
    }

    *__error() = v0;
  }

  if (proc_set_cpumon_params())
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    v5 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v4, (gSILogLevels[0] < 3)))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C278D000, v4, v5, "*warn* Failed to set cpumon_params", v7, 2u);
    }

    *__error() = v3;
  }

  ++sDisableProcMon;
  return pthread_mutex_unlock(&sProcMonLock);
}

uint64_t transfer_live_indexes(uint64_t a1)
{
  v122[11] = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "transfer_live_indexes begin\n", &buf, 2u);
  }

  v4 = 0;
  *__error() = v2;
  memset(v122, 0, 80);
  do
  {
    v122[v4] = _si_scheduler_suspend(*(a1 + v4 * 8 + 864), "SpotlightIndex.c", 7614);
    ++v4;
  }

  while (v4 != 10);
  v5 = *(a1 + 1392);
  v6 = *(a1 + 1384);
  v7 = ContentIndexListClone(v6);
  v8 = ContentIndexListClone(v5);
  v9 = v8;
  v10 = *(v8 + 2);
  v11 = *(*v7 + 8 * (*(v7 + 2) - 1));
  v83 = v5;
  if (*(v7 + 2) == 1)
  {
LABEL_11:
    v15 = 1;
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v13 = *(*v7 + 8 * v12);
      if (!v13)
      {
        break;
      }

      v14 = atomic_load((v13 + 36));
      if ((v14 & 3) == 0 && (*(v13 + 15203) & 1) == 0)
      {
        break;
      }

      if (++v12 >= (*(v7 + 2) - 1))
      {
        goto LABEL_11;
      }
    }

    v15 = 0;
  }

  v16 = *(v8 + 4);
  if (*(a1 + 2072))
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 & 0xFFFFFFBF | ((*(a1 + 828) & 1) << 6);
  if (*(a1 + 2073))
  {
    v19 = 1024;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 6584);
  v21 = (v18 | v19 | (v20 >> 13) & 0x800) ^ 0x50;
  v22 = v21 | 0x1000;
  if (!*(a1 + 6944))
  {
    v22 = v21;
  }

  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 0x40000000;
  v87[2] = __transfer_live_indexes_block_invoke;
  v87[3] = &__block_descriptor_tmp_855;
  v87[4] = a1;
  if (v15 && v16 == -1)
  {
    v82 = v6;
    v23 = ~(v20 >> 7) & 0x8000;
    v24 = *(a1 + 32);
    LODWORD(v25) = *(v11 + 68);
    v25 = v25 >= 2 ? v25 : 0;
    v26 = *(v11 + 80);
    v27 = v26 + v25;
    v28 = *(v11 + 40);
    v29 = *(a1 + 1284);
    v30 = *(a1 + 1192);
    if (v30)
    {
      v31 = v22;
      v79 = v26 + v25;
      v80 = v11;
      v32 = *(v11 + 40);
      v33 = *(a1 + 1284);
      vector_store = db_get_vector_store(v30);
      v29 = v33;
      v28 = v32;
      v27 = v79;
      v11 = v80;
      v22 = v31;
      v35 = vector_store;
    }

    else
    {
      v35 = 0;
    }

    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 0x40000000;
    v86[2] = __transfer_live_indexes_block_invoke_2;
    v86[3] = &__block_descriptor_tmp_859;
    v86[4] = a1;
    New = ContentIndexCreateNew(v24, @"tmp.", v27 + 1025, v28, v22 | v23, 1, v29, v35, v86, v87, *(a1 + 60));
    if (New)
    {
      v37 = New;
      v38 = atomic_load((v11 + 36));
      if ((v38 & 3) == 0 && (*(v11 + 15203) & 1) == 0)
      {
        _CIDisableUpdates(v11);
      }

      v85 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __transfer_live_indexes_block_invoke_3;
      aBlock[3] = &__block_descriptor_tmp_860;
      aBlock[4] = a1;
      aBlock[5] = v37;
      ContentIndexSetDirtyCallback(v37, aBlock);
      *(v37 + 15201) = 4;
      *&v93 = 0;
      v91 = 0u;
      v92 = 0u;
      buf = 0u;
      v90 = 0u;
      ContentIndexSyncIndex(v37, &buf, &v85);
      *(v82 + 16) = -1;
      if (*(v9 + 16) != -1)
      {
        v71 = __si_assert_copy_extra_661(-1);
        v68 = v71;
        v72 = "";
        if (v71)
        {
          v72 = v71;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 7666, "indexSet2->currentIndex==~0", v72);
        goto LABEL_66;
      }

      v39 = *(v7 + 2);
      v40 = *(v9 + 8);
      v41 = *(v9 + 12);
      if (v41 >= v40 + v39)
      {
        v42 = *v9;
      }

      else
      {
        do
        {
          v41 *= 2;
        }

        while (v41 < v40 + v39);
        *(v9 + 12) = v41;
        v42 = malloc_type_realloc(*v9, 8 * v41, 0x2004093837F09uLL);
        *v9 = v42;
        v40 = *(v9 + 8);
        v39 = *(v7 + 2);
      }

      memcpy(&v42[8 * v40], *v7, 8 * v39);
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
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
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      *&buf = 0x6D6F76650A00;
      DWORD2(buf) = 1;
      HIDWORD(buf) = *(v7 + 2) - v10 + *(v9 + 8);
      DWORD1(v90) = v10;
      __strlcpy_chk();
      v44 = *(v9 + 8) + *(v7 + 2);
      *(v9 + 8) = v44;
      if (v10 < v44)
      {
        v45 = v10;
        do
        {
          v46 = *(*v9 + 8 * v45);
          v47 = atomic_load((v46 + 36));
          if ((v47 & 3) == 0 && (*(v46 + 15203) & 1) == 0)
          {
            _CIDisableUpdates(*(*v9 + 8 * v45));
          }

          ++v45;
        }

        while (v45 < *(v9 + 8));
      }

      *(v9 + 16) = -1;
      *(v7 + 2) = 1;
      v81 = v37;
      **v7 = v37;
      *(v7 + 4) = 0;
      si_clone_index_metadata_to_inflight(a1);
      v48 = si_openat_protected(*(a1 + 32), "tmp.movePlan", 1538, 3);
      pwrite(v48, &buf, 0x210uLL, 0);
      fcntl(v48, 85);
      if (v10 < *(v9 + 8))
      {
        v49 = 0;
        while (1)
        {
          DWORD2(v90) = v49;
          pwrite(v48, &buf, 0x210uLL, 0);
          fcntl(v48, 85);
          memset(__str, 0, 255);
          snprintf(__str, 0xFFuLL, "%u.", v10);
          ContentIndexChangePrefix(*(*v9 + 8 * v10));
          v50 = *(*v9 + 8 * v10);
          v51 = atomic_load((v50 + 36));
          if ((v51 & 3) == 0 && (*(v50 + 15203) & 1) == 0)
          {
            break;
          }

          ++v10;
          ++v49;
          if (v10 >= *(v9 + 8))
          {
            goto LABEL_50;
          }
        }

        v67 = __si_assert_copy_extra_661(-1);
        v68 = v67;
        v69 = "";
        if (v67)
        {
          v69 = v67;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 7713, "!ContentIndexWritable(indexSet2->index[i])", v69);
LABEL_66:
        free(v68);
        if (__valid_fs(-1))
        {
          v70 = 2989;
        }

        else
        {
          v70 = 3072;
        }

        *v70 = -559038737;
        abort();
      }

LABEL_50:
      HIDWORD(v90) = 1;
      pwrite(v48, &buf, 0x210uLL, 0);
      fcntl(v48, 85);
      ContentIndexChangePrefix(v81);
      v52 = v83;
      v53 = v83;
      atomic_compare_exchange_strong((a1 + 1392), &v53, v9);
      if (v53 == v52)
      {
        si_cleanup(a1, v83);
        atomic_fetch_add_explicit((a1 + 1400), 1u, memory_order_relaxed);
        _si_log_indexes(a1);
        if (si_swapIndexSet(a1, v82, v7, (a1 + 1384), v54, v55, v56, v57))
        {
          v58 = *(*(a1 + 1392) + 8);
          *(a1 + 1240) = v58;
          *(a1 + 1248) = v58;
          v59 = *(*(a1 + 1384) + 8);
          *(a1 + 1244) = v59;
          *(a1 + 1252) = v59;
          _CIMetaInfoSync(a1 + 1200, gTerminating == 0);
          unlinkat(*(a1 + 32), "tmp.movePlan", 2048);
          close(v48);
          v43 = 1;
          *(a1 + 2437) = 1;
          _CreateDeferQueue(a1, *(a1 + 1392), 0, *(*(a1 + 1392) + 8));
          goto LABEL_53;
        }

        v73 = __si_assert_copy_extra_661(-1);
        v74 = v73;
        v75 = "";
        if (v73)
        {
          v75 = v73;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 7726, "si_swapIndexSet(ref,oldIndexSet1,indexSet1,&ref->liveSet,1, 1)", v75);
      }

      else
      {
        v77 = __si_assert_copy_extra_661(-1);
        v74 = v77;
        v78 = "";
        if (v77)
        {
          v78 = v77;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 7722, "si_swapIndexSet(ref,oldIndexSet2,indexSet2,&ref->syncSet,0, 0)", v78);
      }

      free(v74);
      if (__valid_fs(-1))
      {
        v76 = 2989;
      }

      else
      {
        v76 = 3072;
      }

      *v76 = -559038737;
      abort();
    }
  }

  free(*v7);
  free(v7);
  free(*v9);
  free(v9);
  v43 = 0;
LABEL_53:
  for (i = 117; i != 108; --i)
  {
    si_scheduler_resume(*(a1 + i * 8), v86[i], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7744);
  }

  if (v43)
  {
    si_sync_ctx_create_with_defer_fd(a1, 0);
    v62 = v61;
    *(v61 + 96) = 1;
    if ((*(*v61 + 2437) & 1) == 0 && (*(*v61 + 2072) & 1) == 0)
    {
      attachJournal(v61);
    }

    syncIndex(v62, 0);
  }

  si_scheduler_resume(*(a1 + 864), v122[0], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7758);
  v63 = *__error();
  v64 = _SILogForLogForCategory(6);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "transfer_live_indexes end\n", &buf, 2u);
  }

  *__error() = v63;
  v65 = *MEMORY[0x1E69E9840];
  return v43;
}

uint64_t CompactIndexes(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (*(a1 + 6587))
  {
    return 1;
  }

  pthread_mutex_lock(&mergeMutex);
  *(a1 + 2434) = 257;
  pthread_mutex_unlock(&mergeMutex);
  v8 = ContentIndexListClone(a4);
  v9 = (v8 + 1);
  if (a2)
  {
    v9 = (a2 + 12);
  }

  v10 = *v9;
  if (v10 < 1)
  {
    v12 = 0;
    goto LABEL_26;
  }

  v24 = (a2 + 12);
  v11 = 0;
  v12 = 0;
  v13 = *MEMORY[0x1E695E480];
  v14 = 8 * a3;
  while (1)
  {
    v15 = *(*v8 + 8 * v11 + v14);
    v16 = atomic_load((v15 + 36));
    if ((v16 & 4) != 0)
    {
      goto LABEL_18;
    }

    v17 = atomic_load((v15 + 36));
    if ((v17 & 2) != 0)
    {
      if (a2)
      {
        goto LABEL_16;
      }

LABEL_14:
      v18 = atomic_load((v15 + 36));
      if ((v18 & 2) == 0 && (*(v15 + 15203) & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (a2)
    {
      break;
    }

    if (*(v15 + 15203))
    {
      goto LABEL_14;
    }

LABEL_18:
    ++v11;
    v12 = 1;
    if (v10 == v11)
    {
      goto LABEL_26;
    }
  }

  if ((*(v15 + 15203) & 1) == 0)
  {
    *(a2 + 1041) = 0;
    *(a2 + 12) = v11;
    goto LABEL_26;
  }

LABEL_16:
  values = *(v15 + 56);
  v19 = CFSetCreate(v13, &values, 1, 0);
  setUpOverlay(a1, v19);
  CFRelease(v19);
  v25 = 0;
  v20 = (*(a1 + 6584) >> 4) & 1;
  *&v27 = si_compact_lock;
  *(&v27 + 1) = si_compact_unlock;
  v28 = si_compact_should_cancel;
  v29 = a1;
  v21 = _CICompact(v15, &v27, v20, &v25);
  si_scheduler_voluntary_gc_inline(*(a1 + 944));
  mergeOverlay(a1, 0);
  if (!a2 || !v21)
  {
    goto LABEL_18;
  }

  if (v25 == 1)
  {
    *v24 = 0;
    si_recycleForBadIndex(a1, v15, "compact err");
  }

  else
  {
    *v24 = v11;
  }

  *(a2 + 1041) = 0;
LABEL_26:
  ContentIndexListFree(v8);
  pthread_mutex_lock(&mergeMutex);
  v22 = v12 & (*(a1 + 2428) == 0);
  *(a1 + 2434) = 0;
  pthread_cond_broadcast(&mergeCond);
  pthread_mutex_unlock(&mergeMutex);
  return v22;
}

BOOL SetupDeferQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a4 && a4 + a3 <= *(a2 + 8))
  {
    v30 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 7330);
    *(a1 + 2437) = 1;
    atomic_fetch_add((a1 + 1452), 1u);
    v29 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add((a1 + 1452), 0xFFFFFFFF);
    v8 = _si_scheduler_suspend(*(a1 + 880), "SpotlightIndex.c", 7337);
    v9 = _si_scheduler_suspend(*(a1 + 928), "SpotlightIndex.c", 7338);
    v10 = _si_scheduler_suspend(*(a1 + 936), "SpotlightIndex.c", 7339);
    v11 = *__error();
    v12 = _SILogForLogForCategory(0);
    v13 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(a2 + 8);
      *buf = 67109632;
      *&buf[4] = v14;
      *&buf[8] = 1024;
      *&buf[10] = a3;
      *&buf[14] = 1024;
      *&buf[16] = a4;
      _os_log_impl(&dword_1C278D000, v12, v13, "size:%d start:%d count:%d", buf, 0x14u);
    }

    *__error() = v11;
    _CreateDeferQueue(a1, a2, a3, a4);
    v15 = new_live_index(a1, 1, 0);
    si_scheduler_resume(*(a1 + 936), v10, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7346);
    si_scheduler_resume(*(a1 + 928), v9, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7347);
    si_scheduler_resume(*(a1 + 880), v8, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7348);
    si_scheduler_resume(*(a1 + 872), v29, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7349);
    si_scheduler_resume(*(a1 + 864), v30, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7350);
    if (v15)
    {
      v16 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 7355);
      si_sync_ctx_create_with_defer_fd(a1, 0);
      v18 = v17;
      *(v17 + 96) = 1;
      if ((*(*v17 + 2437) & 1) == 0 && (*(*v17 + 2072) & 1) == 0)
      {
        attachJournal(v17);
      }

      syncIndex(v18, 0);
      si_scheduler_resume(*(a1 + 864), v16, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7366);
      if ((*(a1 + 6587) & 1) != 0 || (v19 = atomic_load((v15 + 36)), (v19 & 4) != 0))
      {
        v23 = 1;
        goto LABEL_19;
      }

      values = *(v15 + 56);
      v20 = CFSetCreate(*MEMORY[0x1E695E480], &values, 1, 0);
      setUpOverlay(a1, v20);
      CFRelease(v20);
      v31 = 0;
      v21 = (*(a1 + 6584) >> 4) & 1;
      *buf = si_compact_lock;
      *&buf[8] = si_compact_unlock;
      *&buf[16] = si_compact_should_cancel;
      v34 = a1;
      v22 = _CICompact(v15, buf, v21, &v31);
      v23 = v22 == 0;
      if (!v22 || (v31 & 1) == 0)
      {
        mergeOverlay(a1, 0);
        goto LABEL_19;
      }

      si_recycleForBadIndex(a1, v15, "compact err");
    }

    v23 = 0;
  }

  else
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a2 + 8);
      *buf = 136316162;
      *&buf[4] = "SetupDeferQueue";
      *&buf[12] = 1024;
      *&buf[14] = 7325;
      *&buf[18] = 1024;
      *&buf[20] = v28;
      LOWORD(v34) = 1024;
      *(&v34 + 2) = a3;
      HIWORD(v34) = 1024;
      v35 = a4;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: invalid range - size:%d start:%d count:%d", buf, 0x24u);
    }

    v23 = 0;
    *__error() = v24;
  }

LABEL_19:
  v26 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t handleDeferQueue(uint64_t a1)
{
  pthread_mutex_lock((a1 + 1320));
  v2 = *(a1 + 1152);
  v3 = *(a1 + 872);
  if (v3)
  {
    atomic_fetch_add((v3 + 96), 1u);
  }

  *(a1 + 1152) = 0;
  *(a1 + 2437) = 0;
  *(a1 + 1304) = 0u;
  DeferJournalFd = getDeferJournalFd(a1, 1);
  dispatch_resume(*(v2 + 16));
  v5 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
  *v5 = v2;
  v5[1] = v3;
  v5[2] = DeferJournalFd;
  v5[3] = a1;
  v6 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  *v6 = 0;
  v6[1] = v2;
  v7 = *(a1 + 1176);
  if (v7)
  {
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    v8 = (a1 + 1176);
  }

  *v8 = v6;
  si_enqueue_barrier(v2, si_deferqueue_cleanup, v5);

  return pthread_mutex_unlock((a1 + 1320));
}

uint64_t MergeIndexes(uint64_t a1, int a2, int a3, unsigned int a4, __int128 **a5, __int128 *a6, void *a7, uint64_t a8, char *a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12)
{
  LODWORD(v15) = a4;
  LODWORD(v16) = a3;
  v59 = *MEMORY[0x1E69E9840];
  v19 = a4;
  v20 = 1;
LABEL_2:
  v53 = v20;
  v55 = v19;
  v21 = 0;
  v22 = 0;
  v23 = *a5;
  while (a6 != v23)
  {
    ContentIndexListFree(a7);
    a7 = ContentIndexListClone(v23);
    v24 = *a5;
    if (v23 == *a5)
    {
      a6 = v23;
      break;
    }

    v25 = 0;
    a6 = v23;
LABEL_20:
    v23 = v24;
    if (a6 == v24)
    {
      v29 = v25 + v15;
      if (v22 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v22;
      }

      v54 = v30;
      v31 = v29 - v30 + v16;
      v32 = *(*(*a7 + 8 * v31) + 56);
      v33 = a10 ^ 1;
      if (v29 <= v22)
      {
        v33 = 1;
      }

      v34 = *(*(*a7 + 8 * v31) + 56);
      if ((v33 & 1) == 0)
      {
        v51 = *__error();
        log = _SILogForLogForCategory(0);
        type = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(log, type))
        {
          *buf = 67109376;
          *&buf[4] = v29;
          v57 = 1024;
          v58 = v54;
          _os_log_impl(&dword_1C278D000, log, type, "mergeCount:%d != count:%d", buf, 0xEu);
        }

        *__error() = v51;
        v34 = *(*(*a7 + 8 * v31) + 56);
      }

      v35 = a10;
      if (v29 > v22)
      {
        v35 = 0;
      }

      v36 = OuterMerge(a1, v34, v54, a5, a6, a7, a8, a9, v35, a11, a12);
      v37 = v36;
      if (!v36)
      {
        goto LABEL_57;
      }

      if (v32 == a2)
      {
        a2 = *(v36 + 56);
      }

      a6 = *a5;
      v38 = *(*a5 + 2);
      if (a2)
      {
        if (!v38)
        {
          LODWORD(v16) = 0;
          a2 = *(v36 + 56);
LABEL_49:
          v15 = v29 - (v54 - 1);
          if (v16 + v15 > v38)
          {
            v43 = __si_assert_copy_extra_661(-1);
            v44 = v43;
            v45 = "";
            if (v43)
            {
              v45 = v43;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 9011, "start+count <= oldIndexSet->indexCount", v45);
LABEL_65:
            free(v44);
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

          if (v38 + v54 - 1 < v21)
          {
            v46 = __si_assert_copy_extra_661(-1);
            v44 = v46;
            v47 = "";
            if (v46)
            {
              v47 = v46;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 9012, "oldIndexSet->indexCount+(mergeCount-1) >= preCount", v47);
            goto LABEL_65;
          }

          *buf = a1;
          __checkIndexSetDocIdOrder(a1, a6);
          if (v15 < 2)
          {
            v42 = *a5;
            *buf = a1;
            __checkIndexSetDocIdOrder(a1, v42);
            goto LABEL_57;
          }

          a7 = ContentIndexListClone(a6);
          v39 = *a5;
          *buf = a1;
          __checkIndexSetDocIdOrder(a1, v39);
          v20 = 0;
          v19 = v15;
          if (v55 <= v15)
          {
            goto LABEL_57;
          }

          goto LABEL_2;
        }

        v16 = 0;
        while (*(*(*a6 + 8 * v16) + 56) != a2)
        {
          if (v38 == ++v16)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
LABEL_40:
        LODWORD(v16) = 0;
      }

      if (v16 >= v38)
      {
        LODWORD(v16) = 0;
        a2 = *(v36 + 56);
        if (a2)
        {
          if (v38)
          {
            v16 = 0;
            while (*(*(*a6 + 8 * v16) + 56) != a2)
            {
              if (v38 == ++v16)
              {
                LODWORD(v16) = 0;
                goto LABEL_49;
              }
            }
          }
        }
      }

      goto LABEL_49;
    }
  }

  if (!a2 || *(*(*a7 + 8 * v16) + 56) == a2)
  {
LABEL_15:
    v21 = *(a7 + 2);
    v27 = v16 + v15;
    if (v16 + v15 > v21)
    {
      goto LABEL_54;
    }

    v28 = count_IndexSet(a7, v27 - 1, *(*(*a7 + 8 * (v27 - 1)) + 52));
    v22 = count_IndexSet(a7, v27 - 2, *(*(*a7 + 8 * (v27 - 2)) + 52)) + v28;
    *buf = a1;
    __checkIndexSetDocIdOrder(a1, a7);
    if (v28)
    {
      v25 = 0;
    }

    else
    {
      v25 = -1;
    }

    v24 = *a5;
    goto LABEL_20;
  }

  v26 = *(a7 + 2);
  if (!v26)
  {
LABEL_13:
    LODWORD(v16) = 0;
    goto LABEL_15;
  }

  v16 = 0;
  while (*(*(*a7 + 8 * v16) + 56) != a2)
  {
    if (v26 == ++v16)
    {
      goto LABEL_13;
    }
  }

  if (v26 >= v16)
  {
    goto LABEL_15;
  }

LABEL_54:
  if (v53)
  {
    ContentIndexListFree(a7);
  }

  v37 = 0;
LABEL_57:
  v40 = *MEMORY[0x1E69E9840];
  return v37;
}

int *si_message_trace_darkwake(int *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    if (gSILogLevels[0] >= 5)
    {
      v17 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136316162;
        v20 = a3;
        v21 = 1024;
        v22 = a4;
        v23 = 2080;
        v24 = a5;
        v25 = 2080;
        v26 = a6;
        v27 = 2048;
        v28 = a7;
        _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "Not tracing com.apple.spotlight.mds.index-darkwake %s %d %s %s %ld", &v19, 0x30u);
      }

      result = __error();
      *result = v17;
    }

    goto LABEL_8;
  }

  if (!a2 || (v12 = *(a2 + 2360), (v13 = *(v12 + 88)) == 0))
  {
LABEL_8:
    v16 = *MEMORY[0x1E69E9840];
    return result;
  }

  v14 = *(v12 + 144);
  v15 = *MEMORY[0x1E69E9840];

  return v13(v14, "com.apple.spotlight.mds.index-darkwake");
}

uint64_t enableProcMon()
{
  getpid();
  pthread_mutex_lock(&sProcMonLock);
  if (sDisableProcMon == 1 && proc_set_cpumon_params() && proc_set_cpumon_defaults())
  {
    v0 = *__error();
    v1 = _SILogForLogForCategory(0);
    v2 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v1, (gSILogLevels[0] < 3)))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C278D000, v1, v2, "*warn* Failed to reset cpumon_params", v4, 2u);
    }

    *__error() = v0;
  }

  --sDisableProcMon;
  return pthread_mutex_unlock(&sProcMonLock);
}

void si_merge_ctx_free(uint64_t a1, char a2)
{
  if (a1)
  {
    v4 = *(a1 + 1056);
    if (v4)
    {
      dispatch_resume(v4);
      dispatch_release(*(a1 + 1056));
      *(a1 + 1056) = 0;
    }

    si_power_info_cleanup(a1 + 1064, *a1, a2);
    v5 = *(a1 + 1112);
    if (v5)
    {
      dispatch_group_leave(*(a1 + 1112));
      dispatch_release(v5);
    }

    free(a1);
  }
}

uint64_t OuterMerge(uint64_t a1, int a2, unsigned int a3, __int128 **a4, uint64_t a5, uint64_t *a6, uint64_t a7, char *a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11)
{
  v94 = *MEMORY[0x1E69E9840];
  v14 = *__error();
  v15 = _SILogForLogForCategory(0);
  v16 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = "false";
    if (a10)
    {
      v17 = "true";
    }

    v18 = "";
    buf.f_bsize = 67109634;
    buf.f_iosize = a3;
    *(&buf.f_blocks + 2) = v17;
    LOWORD(buf.f_blocks) = 2080;
    if (a9)
    {
      v18 = "vacuum";
    }

    WORD1(buf.f_bfree) = 2080;
    *(&buf.f_bfree + 4) = v18;
    _os_log_impl(&dword_1C278D000, v15, v16, "Outer Merge - count:%d live:%s %s", &buf, 0x1Cu);
  }

  *__error() = v14;
  if (!a2)
  {
    v21 = 0;
    v20 = a1;
    if (!a9)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v19 = *(a5 + 8);
  v20 = a1;
  if (v19)
  {
    v21 = 0;
    while (*(*(*a5 + 8 * v21) + 56) != a2)
    {
      if (v19 == ++v21)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v21 = 0;
  }

  if (a9)
  {
LABEL_16:
    if (!*(v20 + 1152))
    {
      v77 = __si_assert_copy_extra_661(-1);
      v78 = v77;
      v79 = "";
      if (v77)
      {
        v79 = v77;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8800, "ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v79);
      free(v78);
      if (__valid_fs(-1))
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
  }

LABEL_17:
  *&buf.f_bsize = v20;
  __checkIndexSetDocIdOrder(v20, a6);
  if (a3)
  {
    v22 = 0;
    v23 = *(v20 + 6584) & 1 | 2;
    v24 = a5;
    v25 = (*a5 + 8 * v21);
    v26 = a3;
    do
    {
      v27 = *v25++;
      v22 += ContentIndexCalculateSize(v27, v23);
      --v26;
    }

    while (v26);
  }

  else
  {
    v24 = a5;
    v22 = 0;
  }

  bzero(&buf, 0x878uLL);
  v28 = a1;
  if (fstatfs(*(a1 + 32), &buf))
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v76 = *__error();
      *v90 = 136315650;
      *&v90[4] = "OuterMerge";
      *&v90[12] = 1024;
      *v91 = 8820;
      *&v91[4] = 1024;
      *&v91[6] = v76;
      _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: error (%d) getting free space", v90, 0x18u);
    }

    *__error() = v29;
    ContentIndexListFree(a6);
LABEL_26:
    v31 = 0;
    goto LABEL_93;
  }

  v32 = 0x6400000 / buf.f_bsize;
  if (2 * (buf.f_blocks / 0x64) < v32)
  {
    v32 = 2 * (buf.f_blocks / 0x64);
  }

  v33 = 5 * (buf.f_blocks / 0x64);
  if (v33 >= 0x20000000 / buf.f_bsize)
  {
    v33 = 0x20000000 / buf.f_bsize;
  }

  if ((*(a1 + 6584) & 1) == 0)
  {
    v33 = v32;
  }

  v34 = v33 * buf.f_bsize;
  v35 = buf.f_bfree * buf.f_bsize;
  if (v35 < v34)
  {
    v36 = *__error();
    v37 = _SILogForLogForCategory(0);
    v38 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v37, (gSILogLevels[0] < 3)))
    {
      *v90 = 134218496;
      *&v90[4] = v22;
      *&v90[12] = 2048;
      *v91 = v35;
      *&v91[8] = 2048;
      v92 = v34;
      _os_log_impl(&dword_1C278D000, v37, v38, "*warn* Merge canceled - low disk space (%lld %lld %lld)", v90, 0x20u);
    }

    v31 = 0;
    *__error() = v36;
    goto LABEL_93;
  }

  if (a3 > 8 || a3 >= 2 && v35 < v34 + v22)
  {
    v39 = *__error();
    v40 = _SILogForLogForCategory(0);
    v41 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v40, v41))
    {
      *v90 = 134218240;
      *&v90[4] = v22;
      *&v90[12] = 2048;
      *v91 = v35;
      _os_log_impl(&dword_1C278D000, v40, v41, "used:%lld, free:%lld", v90, 0x16u);
    }

    v42 = (a3 + 1) >> 1;
    v43 = 0;
    v44 = 0;
    *__error() = v39;
    LODWORD(v45) = v21;
    v28 = a1;
    v46 = a3;
    while (1)
    {
      v44 += v42;
      v47 = v46 - v44;
      v48 = v47 + v45;
      if ((v47 + v45) >= v45)
      {
        v47 = 0;
      }

      if (v48 <= v45)
      {
        v49 = v45;
      }

      else
      {
        v49 = v48;
      }

      BYTE1(v84) = a10;
      LOBYTE(v84) = 0;
      v50 = OuterMerge(v28, *(*(*a6 + 8 * v49) + 56), v47 + v42, a4, v24, a6, a7, a8, v84, a11);
      if (!v50)
      {
        v58 = *__error();
        v59 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *v90 = 136315394;
          *&v90[4] = "OuterMerge";
          *&v90[12] = 1024;
          *v91 = 8886;
          v60 = "%s:%d: Merging failed";
          v61 = v59;
          v62 = 18;
          goto LABEL_103;
        }

        goto LABEL_92;
      }

      v51 = v50;
      if (v45 >= v48 && a2 != 0)
      {
        a2 = *(v50 + 56);
      }

      v24 = *a4;
      v53 = ContentIndexListClone(*a4);
      a6 = v53;
      v54 = *(v53 + 2);
      if (!a2)
      {
        break;
      }

      if (v54)
      {
        v45 = 0;
        while (*(*(*v53 + 8 * v45) + 56) != a2)
        {
          if (v54 == ++v45)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_60;
      }

      v45 = 0;
      if (*(v51 + 56))
      {
        a2 = *(v51 + 56);
      }

      else
      {
        a2 = 0;
      }

LABEL_70:
      if (v45 != v21 && gSILogLevels[0] >= 5)
      {
        v55 = *__error();
        v56 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = *(a6 + 2);
          *v90 = 67109632;
          *&v90[4] = v21;
          *&v90[8] = 1024;
          *&v90[10] = v45;
          *v91 = 1024;
          *&v91[2] = v57;
          _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "cindex was added during merge, old start %d new start: %d cindex count:%d", v90, 0x14u);
        }

        *__error() = v55;
      }

      v28 = a1;
      *v90 = a1;
      __checkIndexSetDocIdOrder(a1, a6);
      ++v43;
      v46 = a3;
      if (a3 <= v44)
      {
        goto LABEL_80;
      }
    }

LABEL_59:
    v45 = 0;
LABEL_60:
    if (v45 >= v54)
    {
      a2 = *(v51 + 56);
      if (a2 && v54)
      {
        v45 = 0;
        while (*(*(*v53 + 8 * v45) + 56) != a2)
        {
          if (v54 == ++v45)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
LABEL_66:
        v45 = 0;
      }
    }

    goto LABEL_70;
  }

  v45 = v21;
  v43 = a3;
LABEL_80:
  if (a9 && !*(v28 + 1152))
  {
    v81 = __si_assert_copy_extra_661(-1);
    v74 = v81;
    v82 = "";
    if (v81)
    {
      v82 = v81;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8895, "ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v82);
    goto LABEL_113;
  }

  v63 = *(*a6 + 8 * v45);
  v64 = atomic_load((v63 + 36));
  if (((v64 & 3) != 0 || *(v63 + 15203) == 1) && v45 != *(a6 + 4))
  {
    v31 = InnerMerge(v28, v45, v43, a4, v24, a6, a7, a8, a9, a10, a11);
    if (!v31)
    {
      goto LABEL_93;
    }

    if (!*(v28 + 2428))
    {
      v72 = *a4;
      *v90 = v28;
      __checkIndexSetDocIdOrder(v28, v72);
    }

    if (!a9 || !*(v28 + 1152))
    {
      goto LABEL_93;
    }

    v73 = __si_assert_copy_extra_661(-1);
    v74 = v73;
    v75 = "";
    if (v73)
    {
      v75 = v73;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8909, "!ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v75);
LABEL_113:
    free(v74);
    if (__valid_fs(-1))
    {
      v83 = 2989;
    }

    else
    {
      v83 = 3072;
    }

    *v83 = -559038737;
    abort();
  }

  v65 = *(*a6 + 8 * v45);
  v66 = atomic_load((v65 + 36));
  if ((v66 & 3) == 0 && (*(v65 + 15203) & 1) == 0)
  {
    v67 = *__error();
    v68 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *v90 = 136315650;
      *&v90[4] = "OuterMerge";
      *&v90[12] = 1024;
      *v91 = 8912;
      *&v91[4] = 1024;
      *&v91[6] = v45;
      _os_log_error_impl(&dword_1C278D000, v68, OS_LOG_TYPE_ERROR, "%s:%d: Failed to merge; index at %d is writable", v90, 0x18u);
    }

    *__error() = v67;
  }

  if (v45 != *(a6 + 4))
  {
    goto LABEL_26;
  }

  v58 = *__error();
  v69 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    *v90 = 136315650;
    *&v90[4] = "OuterMerge";
    *&v90[12] = 1024;
    *v91 = 8914;
    *&v91[4] = 1024;
    *&v91[6] = v45;
    v60 = "%s:%d: Failed to merge; index at %d is current";
    v61 = v69;
    v62 = 24;
LABEL_103:
    _os_log_error_impl(&dword_1C278D000, v61, OS_LOG_TYPE_ERROR, v60, v90, v62);
  }

LABEL_92:
  v31 = 0;
  *__error() = v58;
LABEL_93:
  v70 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t InnerMerge(uint64_t a1, uint64_t a2, unsigned int a3, atomic_ullong *a4, void *a5, uint64_t *a6, uint64_t a7, char *a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11)
{
  v113 = a7;
  v114 = a8;
  v118 = a5;
  v115 = a4;
  v117 = a10;
  v140 = *MEMORY[0x1E69E9840];
  v121 = 0;
  v122 = 0;
  ++*(a1 + 2392);
  asprintf(&v121, "tmp.merge.%ld.", v104);
  *&v139.f_bsize = a1;
  __checkIndexSetDocIdOrder(a1, a6);
  v15 = *__error();
  v16 = _SILogForLogForCategory(0);
  v17 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = "false";
    if (v117)
    {
      v18 = "true";
    }

    v19 = "";
    v139.f_bsize = 67109634;
    v139.f_iosize = a3;
    *(&v139.f_blocks + 2) = v18;
    LOWORD(v139.f_blocks) = 2080;
    if (a9)
    {
      v19 = "vacuum";
    }

    WORD1(v139.f_bfree) = 2080;
    *(&v139.f_bfree + 4) = v19;
    _os_log_impl(&dword_1C278D000, v16, v17, "Inner Merge - count:%d live:%s %s", &v139, 0x1Cu);
  }

  v116 = a9;
  *__error() = v15;
  v20 = 0;
  if (a3)
  {
    v21 = *(a1 + 6584) & 1 | 2;
    v22 = (*v118 + 8 * a2);
    v23 = a3;
    do
    {
      v24 = *v22++;
      v20 += ContentIndexCalculateSize(v24, v21);
      --v23;
    }

    while (v23);
  }

  bzero(&v139, 0x878uLL);
  if (fstatfs(*(a1 + 32), &v139))
  {
    v25 = *__error();
    v26 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v42 = *__error();
      LODWORD(v132[0]) = 136315650;
      *(v132 + 4) = "InnerMerge";
      WORD6(v132[0]) = 1024;
      *(v132 + 14) = 8635;
      WORD1(v132[1]) = 1024;
      DWORD1(v132[1]) = v42;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: error (%d) getting free space", v132, 0x18u);
    }

    *__error() = v25;
    ContentIndexListFree(a6);
    v27 = 0;
    goto LABEL_28;
  }

  v28 = v139.f_blocks / 0x64;
  v29 = 0x6400000 / v139.f_bsize;
  if (2 * (v139.f_blocks / 0x64) < v29)
  {
    v29 = 2 * v28;
  }

  v30 = 5 * v28;
  if (v30 >= 0x20000000 / v139.f_bsize)
  {
    v30 = 0x20000000 / v139.f_bsize;
  }

  if ((*(a1 + 6584) & 1) == 0)
  {
    v30 = v29;
  }

  v31 = v30 * v139.f_bsize;
  v32 = v139.f_bfree * v139.f_bsize;
  if (v32 < v31 || v20 > v32 && v20 - v32 < v31 || v32 > v20 && v32 - v20 < v31)
  {
    v33 = *__error();
    v34 = _SILogForLogForCategory(0);
    v35 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v34, (gSILogLevels[0] < 3)))
    {
      LODWORD(v132[0]) = 134218496;
      *(v132 + 4) = v20;
      WORD6(v132[0]) = 2048;
      *(v132 + 14) = v32;
      WORD3(v132[1]) = 2048;
      *(&v132[1] + 1) = v31;
      _os_log_impl(&dword_1C278D000, v34, v35, "*warn* Merge canceled - low disk space (%lld %lld %lld)", v132, 0x20u);
    }

    v27 = 0;
    *__error() = v33;
    goto LABEL_28;
  }

  v38 = a2;
  if (*(*(a1 + 2360) + 96))
  {
    v39 = "merge";
    *&v132[0] = 0;
    v40 = v116;
    if (v116)
    {
      v39 = "vacuum";
    }

    if (v117)
    {
      v41 = "live";
    }

    else
    {
      v41 = "sync";
    }

    asprintf(v132, "com.apple.spotlightindex.%s.%s.%d", v39, v41, 64 - __clz(v20));
    v112 = (*(*(a1 + 2360) + 96))(*(*(a1 + 2360) + 144), *&v132[0]);
    free(*&v132[0]);
  }

  else
  {
    v112 = 0;
    v40 = v116;
  }

  pthread_mutex_lock(&mergeMutex);
  *(a1 + 2434) = 257;
  pthread_mutex_unlock(&mergeMutex);
  v43 = *a6 + 8 * a2;
  v44 = *(v43 + 8 * a3 - 8);
  LODWORD(v45) = *(v44 + 68);
  v46 = *(v44 + 80);
  if (v45 >= 2)
  {
    v45 = v45;
  }

  else
  {
    v45 = 0;
  }

  v47 = v46 + v45 - *(*v43 + 80);
  if (a3)
  {
    v48 = 0;
    v49 = 0;
    v50 = *a6 + 8 * a2;
    do
    {
      if (v48)
      {
        v52 = *(v50 - 8);
        v51 = *v50;
        LODWORD(v53) = *(v52 + 68);
        v54 = *(v52 + 80);
        if (v53 >= 2)
        {
          v53 = v53;
        }

        else
        {
          v53 = 0;
        }

        v49 = *(*v50 + 80) + v49 - v54 - v53;
      }

      else
      {
        v51 = *v43;
      }

      v55 = atomic_load((v51 + 16));
      v49 += v55;
      --v48;
      v50 += 8;
    }

    while (-a3 != v48);
  }

  else
  {
    v49 = 0;
  }

  if (v47 <= 0xE38E38E || (v27 = 0, v40) && v47 - v49 <= 0xCCCCCCB)
  {
    v110 = a3;
    v111 = a2;
    v56 = malloc_type_malloc(0x38uLL, 0x102004034DBE25AuLL);
    field_id_limit = db_get_field_id_limit(*(a1 + 1192));
    *(v56 + 8) = 0u;
    v58 = v56 + 8;
    *(v56 + 24) = 0u;
    *(v56 + 40) = 0u;
    *v56 = a1;
    v59 = (field_id_limit + 1);
    bit_vector_init(v56 + 1, v59);
    v109 = v56;
    v60 = v56 + 32;
    bit_vector_init(v60, v59);
    v61 = *(a1 + 1192);
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 0x40000000;
    v128 = __si_merge_term_filter_ctx_init_block_invoke;
    v129 = &__block_descriptor_tmp_802;
    v130 = v58;
    v131 = v60;
    memset(v132, 0, sizeof(v132));
    v62 = db_copy_field_ids_with_buffer(v61, "_kMDItemExternalID", v132, 8uLL);
    if (v62)
    {
      v63 = v62;
      if (*v62)
      {
        v64 = v62 + 1;
        do
        {
          (v128)(v127);
        }

        while (*v64++);
      }

      v40 = v116;
      if (v63 != v132)
      {
        free(v63);
      }
    }

    bit_vector_set(v58, *(a1 + 2040));
    bit_vector_set(v58, *(a1 + 2044));
    bit_vector_set(v58, *(a1 + 2048));
    if (gDefaultSchema)
    {
      v125 = 0uLL;
      v126 = 0;
      v132[0] = xmmword_1E8190DD8;
      *&v132[1] = 0;
      _MDPlistContainerGetPlistObjectAtKeyArray();
      *&v132[0] = MEMORY[0x1E69E9820];
      *(&v132[0] + 1) = 0x40000000;
      *&v132[1] = __si_merge_term_filter_ctx_init_block_invoke_2;
      *(&v132[1] + 1) = &__block_descriptor_tmp_808;
      v133 = a1;
      v134 = v58;
      v135 = v60;
      v123 = v125;
      v124 = v126;
      _MDPlistDictionaryIterate();
    }

    v108 = v58;
    id_for_field = db_get_id_for_field(*(a1 + 1192), "_kMDItemPhotoEmbedding");
    v106 = id_for_field;
    v107 = v105;
    v67 = *(a1 + 32);
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 0x40000000;
    v120[2] = __InnerMerge_block_invoke;
    v120[3] = &__block_descriptor_tmp_796;
    v120[4] = a1;
    v68 = v110;
    MEMORY[0x1EEE9AC00](id_for_field);
    v70 = &v105[-((v69 + 15) & 0xFFFFFFFF0)];
    bzero(v70, v69);
    v71 = v68;
    v38 = v111;
    if (a3)
    {
      v72 = *a6;
      v73 = a2;
      v74 = v70;
      v75 = v71;
      do
      {
        *v74++ = *(*(v72 + 8 * v73++) + 56);
        --v75;
      }

      while (v75);
    }

    v76 = CFSetCreate(*MEMORY[0x1E695E480], v70, v71, 0);
    setUpOverlay(a1, v76);
    CFRelease(v76);
    v77 = (*a6 + 8 * v38);
    if (v40)
    {
      v78 = &v122;
    }

    else
    {
      v78 = 0;
    }

    *&v132[0] = si_merge_lock;
    *(&v132[0] + 1) = si_merge_unlock;
    *&v132[1] = si_compact_should_cancel;
    *(&v132[1] + 1) = si_message_trace_lifecycle;
    v133 = a1;
    v134 = v67;
    v79 = v109;
    v135 = si_merge_term_filter;
    v136 = v109;
    v137 = v120;
    v138 = v106;
    v27 = ContentIndexMergeIndexes(v77, a3, v121, v78, v132);
    si_scheduler_voluntary_gc_inline(*(a1 + 944));
    v80 = v79[3];
    if (v80)
    {
      CFRelease(v80);
      v79[3] = 0;
    }

    v81 = v108;
    *v108 = 0;
    v81[1] = 0;
    v82 = v79[6];
    if (v82)
    {
      CFRelease(v82);
    }

    free(v79);
    if (v27)
    {
      SIActivityJournalMergeIndices((a1 + 2192), a2, a3, v117);
    }
  }

  v83 = *(*(*a6 + 8 * v38) + 56);
  free(v121);
  if (!v27)
  {
    v93 = *__error();
    v94 = _SILogForLogForCategory(10);
    v95 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v94, v95))
    {
      LODWORD(v132[0]) = 136315138;
      *(v132 + 4) = v113;
      _os_log_impl(&dword_1C278D000, v94, v95, "CIMergeIndex failure at %s", v132, 0xCu);
    }

    *__error() = v93;
    free(*a6);
    free(a6);
    goto LABEL_95;
  }

  if (v122)
  {
    SetupRemapping(a1, v122);
  }

  if (v40 && !*(a1 + 1152))
  {
    v98 = __si_assert_copy_extra_661(-1);
    v99 = v98;
    v100 = "";
    if (v98)
    {
      v100 = v98;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8720, "ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v100);
LABEL_106:
    free(v99);
    if (__valid_fs(-1))
    {
      v103 = 2989;
    }

    else
    {
      v103 = 3072;
    }

    *v103 = -559038737;
    abort();
  }

  v84 = v115;
  inserted = InsertMergedIndex(a1, v83, a2, a3, v27, v115, v118, a6, v114, v122, v40, v117);
  v86 = *__error();
  v87 = _SILogForLogForCategory(10);
  v88 = v87;
  if ((inserted & 1) == 0)
  {
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v132[0]) = 136315650;
      *(v132 + 4) = "InnerMerge";
      WORD6(v132[0]) = 1024;
      *(v132 + 14) = 8724;
      WORD1(v132[1]) = 2080;
      *(&v132[1] + 4) = v113;
      _os_log_error_impl(&dword_1C278D000, v88, OS_LOG_TYPE_ERROR, "%s:%d: InsertMergedIndex failed at %s", v132, 0x1Cu);
    }

    *__error() = v86;
    free(*a6);
    free(a6);
    ContentIndexDeleteIndex(v27, 1);
LABEL_95:
    pthread_mutex_lock(&mergeMutex);
    *(a1 + 2434) = 0;
    if (*(a1 + 2428))
    {
      pthread_cond_broadcast(&mergeCond);
    }

    pthread_mutex_unlock(&mergeMutex);
    mergeOverlay(a1, 0);
    v27 = 0;
    v92 = 0;
    goto LABEL_98;
  }

  v89 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v87, v89))
  {
    LODWORD(v132[0]) = 136315138;
    *(v132 + 4) = v113;
    _os_log_impl(&dword_1C278D000, v88, v89, "InsertMergedIndex success at %s", v132, 0xCu);
  }

  *__error() = v86;
  v119[0] = MEMORY[0x1E69E9820];
  v119[1] = 0x40000000;
  v119[2] = __InnerMerge_block_invoke_797;
  v119[3] = &__block_descriptor_tmp_799;
  v119[4] = a1;
  v119[5] = v27;
  dispatch_apply(2uLL, 0, v119);
  v90 = *v84;
  *&v132[0] = a1;
  __checkIndexSetDocIdOrder(a1, v90);
  if (v116 && *(a1 + 1152))
  {
    v101 = __si_assert_copy_extra_661(-1);
    v99 = v101;
    v102 = "";
    if (v101)
    {
      v102 = v101;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8748, "!ref->workqueues.queues[SI_DEFER_QUEUE_IDX]", v102);
    goto LABEL_106;
  }

  if (v122)
  {
    v91 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
    *v91 = a1;
    v91[1] = v27;
    v91[2] = v122;
    v91[3] = a11;
    si_remapForIndex(v91, 0);
  }

  pthread_mutex_lock(&mergeMutex);
  *(a1 + 2434) = 0;
  if (*(a1 + 2428))
  {
    pthread_cond_broadcast(&mergeCond);
  }

  pthread_mutex_unlock(&mergeMutex);
  v92 = 1;
LABEL_98:
  v96 = *(a1 + 2360);
  v97 = *(v96 + 104);
  if (v97)
  {
    v97(*(v96 + 144), v112, v92);
  }

LABEL_28:
  v36 = *MEMORY[0x1E69E9840];
  return v27;
}

void bit_vector_init(void *a1, CFIndex capacity)
{
  if (!a1)
  {
    v9 = __si_assert_copy_extra_661(-1);
    v10 = v9;
    v11 = "";
    if (v9)
    {
      v11 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 41, "bv", v11);
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

  *a1 = 0;
  a1[1] = capacity;
  if (capacity)
  {
    Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], capacity);
    a1[2] = Mutable;
    CFBitVectorSetCount(Mutable, capacity);
    if (!a1[2])
    {
      v5 = __si_assert_copy_extra_661(-1);
      v6 = v5;
      v7 = "";
      if (v5)
      {
        v7 = v5;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 47, "bv->_cfbv", v7);
      free(v6);
      if (__valid_fs(-1))
      {
        v8 = 2989;
      }

      else
      {
        v8 = 3072;
      }

      *v8 = -559038737;
      abort();
    }
  }

  else
  {
    a1[2] = 0;
  }
}

void __si_merge_term_filter_ctx_init_block_invoke(uint64_t a1, CFIndex idx)
{
  v3 = idx;
  bit_vector_set(*(a1 + 32), idx);
  v4 = *(a1 + 40);

  bit_vector_set(v4, v3);
}

void bit_vector_set(void *a1, CFIndex idx)
{
  v4 = a1[1];
  if (v4 <= idx)
  {
    if (v4)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = 32;
    }

    while (1)
    {
      v6 *= 2;
      if (v6 > idx)
      {
        break;
      }

      if (v6 <= v4)
      {
        v7 = __si_assert_copy_extra_661(-1);
        v8 = v7;
        v9 = "";
        if (v7)
        {
          v9 = v7;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v9);
        free(v8);
        if (__valid_fs(-1))
        {
          v10 = 2989;
        }

        else
        {
          v10 = 3072;
        }

        *v10 = -559038737;
        abort();
      }
    }

    v11 = a1[2];
    v12 = *MEMORY[0x1E695E480];
    if (v11)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v12, v6, v11);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v12, v6);
    }

    v14 = MutableCopy;
    if (!MutableCopy)
    {
      v16 = __si_assert_copy_extra_661(-1);
      v17 = v16;
      v18 = "";
      if (v16)
      {
        v18 = v16;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v18);
      free(v17);
      if (__valid_fs(-1))
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

    CFBitVectorSetCount(MutableCopy, v6);
    v15 = a1[2];
    if (v15)
    {
      CFRelease(v15);
    }

    a1[1] = v6;
    a1[2] = v14;
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v5 = a1[2];

  CFBitVectorSetBitAtIndex(v5, idx, 1u);
}

{
  if (idx < 0)
  {
    v6 = __si_assert_copy_extra_332();
    __message_assert_336(v6, v7, v8, v9, v10, v11, v12, v13, "bit_vector.h");
    free(v6);
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

  v4 = a1[1];
  if (v4 <= idx)
  {
    if (v4)
    {
      v15 = a1[1];
    }

    else
    {
      v15 = 32;
    }

    while (1)
    {
      v15 *= 2;
      if (v15 > idx)
      {
        break;
      }

      if (v15 <= v4)
      {
        goto LABEL_15;
      }
    }

    v25 = a1[2];
    v26 = *MEMORY[0x1E695E480];
    if (v25)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v26, v15, v25);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v26, v15);
    }

    v28 = MutableCopy;
    if (!MutableCopy)
    {
LABEL_15:
      v16 = __si_assert_copy_extra_332();
      __message_assert_336(v16, v17, v18, v19, v20, v21, v22, v23, "bit_vector.h");
      free(v16);
      if (__valid_fs(-1))
      {
        v24 = 2989;
      }

      else
      {
        v24 = 3072;
      }

      *v24 = -559038737;
      abort();
    }

    CFBitVectorSetCount(MutableCopy, v15);
    v29 = a1[2];
    if (v29)
    {
      CFRelease(v29);
    }

    a1[1] = v15;
    a1[2] = v28;
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v5 = a1[2];

  CFBitVectorSetBitAtIndex(v5, idx, 1u);
}

void __si_merge_term_filter_ctx_init_block_invoke_2(uint64_t a1, char *a2, uint64_t a3, __int128 *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0uLL;
  v26 = 0;
  v27 = *a4;
  *&v28 = *(a4 + 2);
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    v27 = v25;
    *&v28 = v26;
    if (_MDPlistGetPlistObjectType() != 225)
    {
      goto LABEL_18;
    }

    v27 = v25;
    *&v28 = v26;
    if (!_MDPlistBooleanGetValue())
    {
      goto LABEL_18;
    }

    v7 = *(*(a1 + 32) + 1192);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v22 = __si_merge_term_filter_ctx_init_block_invoke_3;
    v23 = &__block_descriptor_tmp_805;
    v24 = *(a1 + 40);
    v27 = 0u;
    v28 = 0u;
    v8 = db_copy_field_ids_with_buffer(v7, a2, &v27, 8uLL);
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = v8;
    if (*v8)
    {
      v10 = v8 + 1;
      do
      {
        (v22)(v21);
      }

      while (*v10++);
    }
  }

  else
  {
    v27 = *a4;
    *&v28 = *(a4 + 2);
    if (!_MDPlistDictionaryGetPlistObjectForKey())
    {
      goto LABEL_18;
    }

    v27 = v25;
    *&v28 = v26;
    if (_MDPlistGetPlistObjectType() != 225)
    {
      goto LABEL_18;
    }

    v27 = v25;
    *&v28 = v26;
    if (!_MDPlistBooleanGetValue())
    {
      goto LABEL_18;
    }

    v12 = *(*(a1 + 32) + 1192);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v18 = __si_merge_term_filter_ctx_init_block_invoke_4;
    v19 = &__block_descriptor_tmp_806;
    v20 = *(a1 + 40);
    v27 = 0u;
    v28 = 0u;
    v13 = db_copy_field_ids_with_buffer(v12, a2, &v27, 8uLL);
    if (!v13)
    {
      goto LABEL_18;
    }

    v9 = v13;
    if (*v13)
    {
      v14 = v13 + 1;
      do
      {
        (v18)(v17);
      }

      while (*v14++);
    }
  }

  if (v9 != &v27)
  {
    free(v9);
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t setUpOverlay(uint64_t result, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(result + 6624))
  {
    v3 = result;
    v4 = (result + 1452);
    atomic_fetch_add((result + 1452), 1u);
    v5 = _si_scheduler_suspend(*(result + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add(v4, 0xFFFFFFFF);
    v6 = _si_scheduler_suspend(v3[108], "SpotlightIndex.c", 9129);
    v7 = malloc_type_calloc(1uLL, 0x1D8uLL, 0x103004099AB8BE7uLL);
    atomic_store(1u, v7);
    *(v7 + 26) = 2;
    memset(&v11, 0, sizeof(v11));
    pthread_rwlockattr_init(&v11);
    pthread_rwlock_init((v7 + 240), &v11);
    pthread_rwlock_init((v7 + 8), &v11);
    pthread_rwlockattr_destroy(&v11);
    v3[829] = v7;
    v3[830] = CFRetain(a2);
    si_scheduler_resume(v3[109], v5, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9132);
    v8 = v3[108];
    v9 = *MEMORY[0x1E69E9840];

    return si_scheduler_resume(v8, v6, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9133);
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t SetupRemapping(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0;
  result = fd_setDir(*(a1 + 32), &v26);
  if (result)
  {
    bzero(__str, 0x400uLL);
    v5 = 51;
    while (1)
    {
      v6 = *(a1 + 2384);
      *(a2 + 40) = v6;
      *(a1 + 2384) = v6 + 1;
      snprintf(__str, 0x400uLL, "remapping%ld", v6);
      v7 = fd_create_protected(*(a1 + 32), __str, 536873474, 3u);
      v25 = 0;
      v8 = _fd_acquire_fd(v7, &v25);
      if (v8 != -1)
      {
        break;
      }

      fd_release(v7);
      if (!--v5)
      {
        v9 = *__error();
        v10 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v31 = 136315650;
          *&v31[4] = "SetupRemapping";
          *&v31[12] = 1024;
          *&v31[14] = 7424;
          *&v31[18] = 2080;
          *&v31[20] = __str;
          _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: open remp failed: %s", v31, 0x1Cu);
        }

        *__error() = v9;
        goto LABEL_16;
      }
    }

    v11 = v8;
    v12 = **(a2 + 16);
    v27 = 268435454;
    v28 = v12;
    prot_pwrite_guarded(v8, &v25, &v27, 4uLL, 0);
    prot_pwrite_guarded(v11, &v25, a2 + 32, 8uLL, 4);
    prot_pwrite_guarded(v11, &v25, &v28, 4uLL, 12);
    if (v28)
    {
      v13 = 0;
      v14 = 0;
      v15 = 16;
      do
      {
        v16 = (*(*(a2 + 16) + 8) + v13);
        v17 = v16[1];
        *v31 = *v16;
        *&v31[16] = v17;
        prot_pwrite_guarded(v11, &v25, v31, 8uLL, v15);
        prot_pwrite_guarded(v11, &v25, &v31[8], 4uLL, v15 + 8);
        v18 = v15 + 12;
        v19 = prot_pwrite_guarded(v11, &v25, *&v31[16], 4 * *&v31[8], v18);
        if (v19 != 4 * *&v31[8])
        {
          v20 = *__error();
          v21 = _SILogForLogForCategory(0);
          v22 = gSILogLevels[0] < 3;
          if (os_log_type_enabled(v21, (gSILogLevels[0] < 3)))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v21, v22, "*warn* Failed writing remapping data. Will cause index corruption if remapping fails.", buf, 2u);
          }

          *__error() = v20;
          v19 = 4 * *&v31[8];
        }

        v15 = v19 + v18;
        ++v14;
        v13 += 32;
      }

      while (v14 < v28);
    }

    _fd_release_fd(v7, v11, 0, v25);
    fd_release(v7);
LABEL_16:
    v23 = v26;
    result = MEMORY[0x1C6921200](v26);
    if ((v23 & 0x80000000) == 0)
    {
      result = close(v23);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t InsertMergedIndex(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, atomic_ullong *a6, atomic_ullong a7, void *a8, char *a9, const void *a10, char a11, char a12)
{
  v107 = *MEMORY[0x1E69E9840];
  bzero(v100, 0x208uLL);
  __buf = 0x6D6F76650A00;
  v100[4] = a12;
  v101 = a3;
  v102 = a4;
  v19 = *(a8 + 2) - a3;
  v103 = a4 + a3;
  v104 = v19;
  strncpy(v106, (a5 + 15208), 0xFFuLL);
  if (!v106[0])
  {
    goto LABEL_31;
  }

  v88 = a6;
  v92 = a5;
  pthread_mutex_lock(&mergeMutex);
  *(a1 + 2435) = 0;
  if (*(a1 + 2428))
  {
    pthread_cond_broadcast(&mergeCond);
  }

  pthread_mutex_unlock(&mergeMutex);
  atomic_fetch_add((a1 + 1452), 1u);
  v91 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 2139);
  atomic_fetch_add((a1 + 1452), 0xFFFFFFFF);
  pthread_mutex_lock(&mergeMutex);
  *(a1 + 2435) = 1;
  pthread_mutex_unlock(&mergeMutex);
  v20 = *__error();
  v21 = _SILogForLogForCategory(0);
  v22 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(a1 + 1384);
    v24 = *(v23 + 8);
    LODWORD(v23) = *(v23 + 16);
    *buf = 134218496;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v24;
    *&buf[18] = 1024;
    *&buf[20] = v23;
    _os_log_impl(&dword_1C278D000, v21, v22, "InsertMergedIndex %p live count %d current %d", buf, 0x18u);
  }

  *__error() = v20;
  v25 = a4;
  v26 = v92;
  if (!_CIMergeDeletes(v92, a10, (*a8 + 8 * a3), a4))
  {
    mergeOverlay(a1, 0);
    v35 = *(a1 + 872);
    v36 = v91;
    v37 = 8085;
LABEL_30:
    si_scheduler_resume(v35, v36, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", v37);
LABEL_31:
    result = 0;
    goto LABEL_32;
  }

  v87 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 8090);
  if (_os_feature_enabled_impl())
  {
    v27 = *(a1 + 1392);
    v28 = *(a1 + 1384);
    if (v27)
    {
      if (*(v27 + 8))
      {
        v29 = 0;
        do
        {
          __InsertMergedIndex_block_invoke(*(*v27 + 8 * v29++));
        }

        while (v29 < *(v27 + 8));
      }

      v26 = v92;
    }

    if (v28 && *(v28 + 8))
    {
      v30 = 0;
      do
      {
        __InsertMergedIndex_block_invoke(*(*v28 + 8 * v30++));
      }

      while (v30 < *(v28 + 8));
    }
  }

  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  memset(buf, 0, sizeof(buf));
  v94 = 0;
  ContentIndexSyncIndex(v26, buf, &v94);
  if ((*(v26 + 8) & 1) == 0)
  {
    mergeOverlay(a1, 0);
    si_scheduler_resume(*(a1 + 872), v91, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8110);
    v35 = *(a1 + 864);
    v36 = v87;
    v37 = 8111;
    goto LABEL_30;
  }

  v31 = 0;
  v96 = 0u;
  v97 = 0u;
  memset(buf, 0, sizeof(buf));
  do
  {
    *&buf[v31] = _si_scheduler_suspend(*(a1 + v31 + 880), "SpotlightIndex.c", 8118);
    v31 += 8;
  }

  while (v31 != 64);
  v32 = *v88;
  if (*v88 == a7)
  {
    v32 = a7;
    v34 = a3;
  }

  else
  {
    free(*a8);
    free(a8);
    a8 = ContentIndexListClone(v32);
    if (a2 && (v33 = *(v32 + 8), v33))
    {
      a3 = 0;
      while (*(*(*v32 + 8 * a3) + 56) != a2)
      {
        if (v33 == ++a3)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      a3 = 0;
    }

    v34 = a3;
  }

  if (*(*(*v32 + 8 * v34) + 56) != a2)
  {
    si_scheduler_resume(*(a1 + 872), v91, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8137);
    si_scheduler_resume(*(a1 + 864), v87, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8138);
    v48 = 0;
    v49 = a1 + 880;
    do
    {
      si_scheduler_resume(*(v49 + v48), *&buf[v48], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8141);
      v48 += 8;
    }

    while (v48 != 64);
    goto LABEL_31;
  }

  v40 = ContentIndexListClone(0);
  if (a10)
  {
    Mutable = *(a1 + 2368);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *(a1 + 2368) = Mutable;
    }

    CFArrayAppendValue(Mutable, a10);
  }

  v90 = v32;
  if (a4)
  {
    v42 = a3;
    do
    {
      ContentIndexListAppend(v40, *(*a8 + 8 * v42));
      *(*a8 + 8 * v42++) = 0;
      --v25;
    }

    while (v25);
  }

  *(*a8 + 8 * v34) = v92;
  v43 = *(a8 + 2);
  if (a3 + a4 < v43)
  {
    v44 = a3 + 1;
    v45 = a3 + a4;
    do
    {
      *(*a8 + 8 * v44++) = *(*a8 + 8 * v45++);
    }

    while (v43 != v45);
  }

  if (a12)
  {
    v46 = (a8 + 2);
    v47 = *(a8 + 4);
  }

  else
  {
    v47 = *(*(a1 + 1392) + 16);
    v46 = (a8 + 2);
    if (v47 == -1)
    {
      *v46 = -1;
    }

    else
    {
      v47 = *v46;
    }

    if (v47 == a3 + a4 - 1)
    {
      *(a8 + 4) = -1;
      *(a8 + 2) = v43 - a4 + 1;
LABEL_63:
      v52 = *(a1 + 1384);
      goto LABEL_64;
    }
  }

  if (v47 != -1 && v47 > a3)
  {
    *v46 = v47 - a4 + 1;
  }

  *(a8 + 2) = v43 - a4 + 1;
  if ((a12 & 1) == 0)
  {
    goto LABEL_63;
  }

  v51 = *(a1 + 1392);
LABEL_64:
  si_clone_index_metadata_to_inflight(a1);
  create_scan_touch_file(*(a1 + 32), 0);
  v53 = si_openat_protected(*(a1 + 32), "tmp.movePlan", 1538, 3);
  pwrite(v53, &__buf, 0x210uLL, 0);
  v54 = v53;
  fcntl(v53, 85);
  v55 = 0;
  while (1)
  {
    v56 = v55;
    v57 = *(v40 + 2);
    if (v55 >= v57)
    {
      break;
    }

    v58 = perform_victim_rename(v55, v40);
    v55 = v56 + 1;
    if ((v58 & 1) == 0)
    {
      if (*(v40 + 2))
      {
        v59 = 0;
        do
        {
          ContentIndexDeleteIndex(*(*v40 + 8 * v59++), 0);
        }

        while (v59 < *(v40 + 2));
      }

      break;
    }
  }

  v60 = a4 >= 2;
  v61 = v54;
  if (v60)
  {
    v105 = 1;
    pwrite(v54, &__buf, 0x210uLL, 0);
    fcntl(v54, 85);
    v62 = (a3 + 1);
    v63 = *(a8 + 2);
    if (v62 < v63)
    {
      LOBYTE(v64) = 1;
      do
      {
        while ((v64 & 1) == 0)
        {
          LOBYTE(v64) = 0;
          v62 = (v62 + 1);
          if (v62 >= v63)
          {
            goto LABEL_106;
          }
        }

        v64 = perform_renumber_rename(v62, a8, &__buf, v61, a9);
        v63 = *(a8 + 2);
        v62 = (v62 + 1);
      }

      while (v62 < v63);
      if (!v64)
      {
        goto LABEL_106;
      }
    }
  }

  v105 = 2;
  pwrite(v61, &__buf, 0x210uLL, 0);
  fcntl(v61, 85);
  if (!rename_new_index(v92, a9, a3))
  {
LABEL_106:
    if ((v61 & 0x80000000) == 0)
    {
      close(v61);
    }

    si_makeUnavailable(a1, 22, 0, 25, "Failure renaming index");
    goto LABEL_31;
  }

  v105 = 3;
  pwrite(v61, &__buf, 0x210uLL, 0);
  fcntl(v61, 85);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __InsertMergedIndex_block_invoke_3;
  aBlock[3] = &__block_descriptor_tmp_829;
  aBlock[4] = a1;
  aBlock[5] = v92;
  ContentIndexSetDirtyCallback(v92, aBlock);
  *(v92 + 15201) = 4;
  if (!si_swapIndexSet(a1, v90, a8, v88, v65, v66, v67, v68))
  {
    v83 = __si_assert_copy_extra_661(-1);
    v84 = v83;
    v85 = "";
    if (v83)
    {
      v85 = v83;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8261, "si_swapIndexSet(ref, oldIndexSet, indexSet, indexSetPtr,1, live)", v85);
    free(v84);
    if (__valid_fs(-1))
    {
      v86 = 2989;
    }

    else
    {
      v86 = 3072;
    }

    *v86 = -559038737;
    abort();
  }

  ++*(a1 + 1400);
  v69 = *(*(a1 + 1392) + 8);
  if (*(a1 + 1240) > v69)
  {
    *(a1 + 1240) = v69;
  }

  if (*(a1 + 1248) > v69)
  {
    *(a1 + 1248) = v69;
  }

  v70 = *(*(a1 + 1384) + 8);
  if (*(a1 + 1244) > v70)
  {
    *(a1 + 1244) = v70;
  }

  if (*(a1 + 1252) > v70)
  {
    *(a1 + 1252) = v70;
  }

  _CIMetaInfoSync(a1 + 1200, gTerminating == 0);
  si_set_obj_state(a1, v92);
  LODWORD(v71) = *(v40 + 2);
  if (v56 < v57)
  {
    goto LABEL_93;
  }

  if (v71)
  {
    v72 = 0;
    do
    {
      ContentIndexDeleteIndex(*(*v40 + 8 * v72++), 0);
      v71 = *(v40 + 2);
    }

    while (v72 < v71);
LABEL_93:
    if (v71)
    {
      v73 = 0;
      do
      {
        v74 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
        v74[1] = a1;
        *v74 = *(*v40 + 8 * v73);
        v75 = *(a1 + 1104);
        v76 = qos_class_self();
        si_enqueue_work_with_qos(v75, v76, si_freeIndex0, v74);
        ++v73;
      }

      while (v73 < *(v40 + 2));
    }
  }

  free(*v40);
  free(v40);
  if (a11)
  {
    handleDeferQueue(a1);
  }

  if (a10)
  {
    si_sync_ctx_create_with_defer_fd(a1, 0);
    v78 = v77;
    *(v77 + 96) = 1;
    if ((*(*v77 + 2437) & 1) == 0 && (*(*v77 + 2072) & 1) == 0)
    {
      attachJournal(v77);
    }

    syncIndex(v78, 0);
  }

  v79 = &v97 + 1;
  v80 = 117;
  do
  {
    v81 = *v79--;
    si_scheduler_resume(*(a1 + 8 * v80), v81, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8321);
    v82 = v80 - 108;
    --v80;
  }

  while (v82 > 2);
  si_scheduler_resume(*(a1 + 864), v87, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8324);
  mergeOverlay(a1, v92);
  scan_lost_ids(a1, 0);
  si_scheduler_resume(*(a1 + 872), v91, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8330);
  unlinkat(*(a1 + 32), "tmp.spotlight.state.transition", 2048);
  unlinkat(*(a1 + 32), "tmp.movePlan", 2048);
  close(v61);
  result = 1;
LABEL_32:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

void mergeOverlay(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 6632);
  if (v2)
  {
    v5 = (a1 + 6632);
    v6 = *(a1 + 6640);
    v7 = *(a1 + 1384);
    v8 = *(a1 + 1392);
    v9 = (a1 + 1452);
    atomic_fetch_add((a1 + 1452), 1u);
    v10 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add(v9, 0xFFFFFFFF);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __mergeOverlay_block_invoke;
    v17[3] = &__block_descriptor_tmp_303;
    v17[4] = a2;
    v17[5] = v8;
    v17[6] = v6;
    v17[7] = v7;
    directoryOverlayProcessPaths(v2, v17);
    v11 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 9171);
    *v5 = 0;
    v5[1] = 0;
    si_scheduler_resume(*(a1 + 872), v10, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9175);
    si_scheduler_resume(*(a1 + 864), v11, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 9176);
    v12 = *(*(a1 + 864) + 160);
    v13 = *(*(a1 + 928) + 160);
    v14 = *(*(a1 + 936) + 160);
    v15 = *(*(a1 + 880) + 160);
    dispatch_retain(v13);
    dispatch_retain(v12);
    dispatch_retain(v15);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __mergeOverlay_block_invoke_2;
    v16[3] = &__block_descriptor_tmp_308;
    v16[4] = v13;
    v16[5] = v15;
    v16[6] = v12;
    v16[7] = v2;
    v16[8] = v6;
    dispatch_barrier_async(v14, v16);
  }
}

void __InnerMerge_block_invoke_797(uint64_t a1, uint64_t a2)
{
  makeThreadId();
  if (a2 == 1)
  {
    v5 = *(a1 + 40);

    index_optimize_disk_space(v5);
  }

  else if (!a2)
  {
    v4 = *(a1 + 32);

    recalculateTopK(v4);
  }
}

void si_remapForIndex(uint64_t a1, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = *a1;
    v4 = os_transaction_create();
    v34 = 0;
    if (fd_setDir(*(v3 + 32), &v34))
    {
      v33 = 0;
      while (1)
      {
        v5 = ContentIndexRemappingNextDocId(*(a1 + 16), &v33);
        if (!v5)
        {
          break;
        }

        v6 = v5;
        si_scheduler_voluntary_gc_inline(*(v3 + 944));
        si_suspend_if_bad_time(v3, *(a1 + 24));
        v7 = v33;
        if (v6 == v33)
        {
          *(*(a1 + 16) + 24) = v6 + 1;
        }

        else
        {
          v8 = _CIGetOIDForDocId(*(a1 + 8), v6, 0);
          v32 = 0;
          if (**(v3 + 6592))
          {
            v17 = *__error();
            v18 = _SILogForLogForCategory(0);
            v19 = 2 * (gSILogLevels[0] < 4);
            if (os_log_type_enabled(v18, v19))
            {
              *buf = 0;
              _os_log_impl(&dword_1C278D000, v18, v19, "remapping canceled", buf, 2u);
            }

            *__error() = v17;
            goto LABEL_31;
          }

          if (db_get_obj(*(v3 + 1192), v8, &v32, 0))
          {
            *(*(a1 + 16) + 24) = v7 + 1;
          }

          else
          {
            v9 = v32;
            if (*(v32 + 4) == v7)
            {
              v10 = *(a1 + 16);
              v31[0] = v7 + 1;
              v31[1] = v10;
              *(v32 + 4) = v6;
              v11 = *(v3 + 1192);
              if (*v11 != 1685287992)
              {
                v25 = *__error();
                v26 = _SILogForLogForCategory(4);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  v27 = *v11;
                  *buf = 136315650;
                  v36 = "db_update_obj_callback";
                  v37 = 1024;
                  v38 = 323;
                  v39 = 1024;
                  v40 = v27;
                  _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
                }

                *__error() = v25;
                v28 = __si_assert_copy_extra_332();
                v29 = v28;
                if (v28)
                {
                  v30 = v28;
                }

                else
                {
                  v30 = "";
                }

                __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 323, v30);
                free(v29);
                MEMORY[0xBAD] = -559038737;
                abort();
              }

              updated = db2_update_obj_callback(*(v3 + 1192), v9, 0, remap_update_callback, v31);
              if (updated && dword_1EBF46AE8 >= 5)
              {
                v13 = updated;
                v14 = *__error();
                v15 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  LODWORD(v36) = v13;
                  _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Updating item for remap failed with error %d", buf, 8u);
                }

                *__error() = v14;
              }

              v9 = v32;
            }

            else
            {
              *(*(a1 + 16) + 24) = v7 + 1;
            }

            free(v9);
          }
        }
      }

      if (!**(v3 + 6592))
      {
        db_perform_callback(*(v3 + 1192), si_removeRemapping, a1);
        v16 = db_shrink_cache(*(v3 + 1192));
        if (v16)
        {
          si_makeUnavailable(v3, v16, 0, 3, "Failure in db_shrink_cache at si_remapForIndex");
        }

        else
        {
          si_sync_ctx_create_with_defer_fd(v3, 0);
          v21 = v20;
          *(v20 + 96) = 1;
          if ((*(*a1 + 2072) & 1) == 0)
          {
            attachJournal(v20);
          }

          *(v21 + 40) = si_os_release_routine;
          os_retain(v4);
          *(v21 + 48) = v4;
          v22 = *a1;
          if (*(*a1 + 2072) == 1)
          {
            flushGraphCache();
            v22 = *a1;
          }

          si_enqueue_work(*(v22 + 1040), syncIndex, v21);
        }
      }

LABEL_31:
      v23 = v34;
      MEMORY[0x1C6921200](v34);
      if ((v23 & 0x80000000) == 0)
      {
        close(v23);
      }
    }

    os_release(v4);
  }

  CFRelease(*(a1 + 16));
  free(a1);
  v24 = *MEMORY[0x1E69E9840];
}

void _si_mobile_journal_finalize(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80))
  {
    if (!a2 || (*(a1 + 109) & 1) != 0 || !*(a1 + 56) || !*(a1 + 64) || !*(a1 + 72) || *(a1 + 40) < 1)
    {
LABEL_16:
      fd_release(*(a1 + 80));
      goto LABEL_17;
    }

    message = _si_mobile_journal_create_message(a1, 2u);
    memset(&v24, 0, sizeof(v24));
    fd_stat(*(a1 + 80), &v24);
    xpc_dictionary_set_uint64(message, "toc_s", v24.st_size);
    v4 = si_xpc_send_client_msg(message, &__block_literal_global_1070);
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      LOWORD(v16) = 0;
      v8 = "### skg journal_complete message sent";
    }

    else
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      LOWORD(v16) = 0;
      v8 = "### skg journal_complete NOT sent";
    }

    _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, v8, &v16, 2u);
LABEL_14:
    *__error() = v5;
    if (message)
    {
      CFRelease(message);
    }

    goto LABEL_16;
  }

LABEL_17:
  if (*(a1 + 24))
  {
    v29 = 0u;
    memset(v30, 0, sizeof(v30));
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(&v24, 0, sizeof(v24));
    v9 = *__error();
    v10 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v13 = fd_name(*(a1 + 8), &v24, 0xFFuLL);
      v16 = 134218754;
      v17 = a1;
      v18 = 2048;
      v19 = v12;
      v20 = 2048;
      v21 = v11;
      v22 = 2080;
      v23 = v13;
      _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Finalizing journal %p %p %lx %s", &v16, 0x2Au);
    }

    *__error() = v9;
    fd_guarded_munmap(*(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  fd_release(*(a1 + 8));
  free(*(a1 + 48));
  v14 = *(a1 + 112);
  if (v14)
  {
    free(v14);
  }

  free(a1);
  v15 = *MEMORY[0x1E69E9840];
}

int *___si_mobile_journal_notify_complete_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "### skg journal_complete result %lld", &v8, 0xCu);
  }

  result = __error();
  *result = v4;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void playBackMobileJournal(uint64_t *a1, int a2)
{
  v204 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (a2)
  {
    goto LABEL_232;
  }

  v4 = *a1;
  v5 = *a1;
  v6 = fd_lseek(*(v3 + 8), 0, 2);
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    v9 = *(v3 + 24);
    if (v9)
    {
      v10 = *(v3 + 16);
      if (v10 != -1)
      {
        if (v9 == v7 && *(v3 + 32) == 0)
        {
          v12 = 1;
          goto LABEL_14;
        }

        munmap(v10, v9);
      }

      *(v3 + 24) = v8;
      *(v3 + 32) = 0;
      v12 = 1;
      *(v3 + 16) = fd_mmap(*(v3 + 8));
    }

    else
    {
      v12 = 0;
      *(v3 + 24) = v6;
      *(v3 + 32) = 0;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_14:
  v180 = *(v5 + 2136);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v14 = v12;
  v15 = setThreadIdAndInfo(-1, sJournalExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
  v194 = __PAIR64__(v15, HIDWORD(v15));
  v193 = __PAIR64__(v16, v17);
  v18 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
  *(v18 + 216) = 0;
  v19 = *(v18 + 312);
  v20 = *(v18 + 224);
  if (v20)
  {
    v20(*(v18 + 288));
  }

  v192 = v194;
  v191 = v193;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v18 + 312) = v19;
    CIOnThreadCleanUpReset(v191);
    dropThreadId(HIDWORD(v192), 1, add_explicit + 1);
    CICleanUpReset(HIDWORD(v192), HIDWORD(v191));
    goto LABEL_228;
  }

  v186 = v19;
  if (!v8)
  {
    goto LABEL_225;
  }

  if ((v14 & 1) == 0)
  {
    si_mobile_journal_map_activate(v3);
  }

  v179 = *(v3 + 16);
  if (v179 == -1)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_219;
  }

  if (v7 < 0xC)
  {
    v21 = 0;
    v22 = -1;
    v23 = 0;
    goto LABEL_218;
  }

  v27 = 0;
  v28 = -1;
  alloc = *MEMORY[0x1E695E480];
  v29 = 0;
  v30 = 0;
  v188 = add_explicit;
  v187 = v5;
  v184 = v8;
  v189 = v4;
  v185 = v14;
  v164 = v7;
  while (1)
  {
    v177 = v30;
    v23 = v29;
    v182 = v27;
    v31 = v28;
    if (*(v5 + 2433) == 1)
    {
      v147 = *__error();
      v148 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_203;
      }

LABEL_204:
      *__error() = v147;
      v21 = v182;
      v22 = v31;
      goto LABEL_218;
    }

    v32 = *(v5 + 872);
    if (v32)
    {
      si_scheduler_voluntary_gc_inline(*(v5 + 872));
      if ((*(v32 + 120) || *(v32 + 144)) && *(v32 + 136) == 1 && (*(v32 + 67) & 1) == 0)
      {
        quick_check_suspension(v32);
      }
    }

    if (*(v5 + 2433) == 1)
    {
      v147 = *__error();
      v148 = _SILogForLogForCategory(4);
      v14 = v185;
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_203:
        _os_log_impl(&dword_1C278D000, v148, OS_LOG_TYPE_DEFAULT, "Interrupting indexing; process quitting", buf, 2u);
      }

      goto LABEL_204;
    }

    if ((~v182 & 0xFFF) != 0)
    {
      v33 = v23;
    }

    else
    {
      v33 = v23;
      if (v23 != v182)
      {
        v35 = si_sync_ctx_create_with_defer_fd(v5, 0);
        v36 = *(v34 + 88);
        if (v36 <= v31 + 1)
        {
          v36 = v31 + 1;
        }

        *(v34 + 88) = v36;
        si_sync_index_delayed2(v35);
        v33 = v182;
      }
    }

    v37 = v33;
    v38 = v179 + v177;
    v39 = v179 + v177;
    v40 = *(v179 + v177);
    v190 = 0;
    HIDWORD(v42) = v40 + 264306963;
    LODWORD(v42) = v40 + 264306963;
    v41 = v42 >> 20;
    v183 = v31;
    v181 = v33;
    if (v41 > 1)
    {
      break;
    }

    if (!v41)
    {
      v58 = v2_readVInt64(v38 + 12, &v190);
      v59 = 1;
LABEL_89:
      v91 = *(v39 + 4);
      if (v91 > 0xFFFFFFF3 || (v92 = v91 + 12, v93 = v177 + v91 + 12, v7 < v93))
      {
        v151 = *__error();
        v152 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_211;
        }

        *buf = 136316418;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5031;
        *&buf[18] = 2048;
        *&buf[20] = 4030594797;
        *&buf[28] = 2048;
        *&buf[30] = v91;
        v196 = 2048;
        v197 = v177;
        v198 = 2048;
        v199 = v184;
        goto LABEL_237;
      }

      v168 = v59;
      v94 = *(v39 + 4);
      if (v91 > v190 && (_MDPlistGetRootPlistObjectFromBytesWithError(), memset(buf, 0, 24), _MDPlistArrayGetCount()) && (memset(buf, 0, 24), _MDPlistArrayGetPlistObjectAtIndex(), (v95 = _MDPlistContainerCopyObject()) != 0))
      {
        v96 = v95;
        v97 = 0;
      }

      else
      {
        v98 = *__error();
        v99 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "playBackMobileJournal";
          *&buf[12] = 1024;
          *&buf[14] = 5055;
          *&buf[18] = 2048;
          *&buf[20] = 4030594797;
          *&buf[28] = 2048;
          *&buf[30] = v94;
          v196 = 2048;
          v197 = v177;
          v198 = 2048;
          v199 = v184;
          _os_log_error_impl(&dword_1C278D000, v99, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
        }

        v96 = 0;
        *__error() = v98;
        v97 = 1;
      }

      v100 = v58 != 0;
      if (v183)
      {
        v101 = v58 != 0;
      }

      else
      {
        v101 = 0;
      }

      if (v58 >= v183)
      {
        v101 = 0;
      }

      if (v58 > v180)
      {
        v100 = 0;
      }

      if (v101 || v100)
      {
        v105 = v182;
        v104 = v183;
      }

      else
      {
        *buf = si_mobile_set_attr_ctx_create(v187, v96);
        *(*buf + 80) |= 0x10u;
        atomic_fetch_add(v3, 1u);
        v102 = *buf;
        *(*buf + 8) = v3;
        *(v102 + 16) = v177;
        *(v102 + 24) = v92;
        *(v102 + 32) = v168;
        *(v102 + 64) = CFAbsoluteTimeGetCurrent();
        v103 = si_backtrace_routine_resolve(*v102, *(v102 + 72), setCSAttributes1, v102, buf);
        (v103)(*buf, 0);
        if (v183 <= v58)
        {
          v104 = v58;
        }

        else
        {
          v104 = v183;
        }

        v105 = v182 + 1;
      }

      add_explicit = v188;
      v4 = v189;
      if ((v97 & 1) == 0)
      {
        CFRelease(v96);
      }

      v106 = v93;
      v21 = v105;
      v107 = v104;
      goto LABEL_158;
    }

    v57 = -263323923;
    if (v41 != 1)
    {
      goto LABEL_57;
    }

LABEL_68:
    v72 = v57;
    v73 = v2_readVInt64(v38 + 36, &v190);
    v74 = 1;
    v40 = v72;
LABEL_69:
    v75 = v40;
    v76 = *(v39 + 4);
    v77 = v76 + 12;
    if ((v76 + 12) < 0x24 || v164 < v177 + v77)
    {
      v149 = *__error();
      v150 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5087;
        *&buf[18] = 2048;
        *&buf[20] = v75;
        *&buf[28] = 2048;
        *&buf[30] = v76;
        v196 = 2048;
        v197 = v177;
        v198 = 2048;
        v199 = v184;
        _os_log_error_impl(&dword_1C278D000, v150, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
      }

      *__error() = v149;
      v21 = v182;
      v22 = v183;
      v23 = v181;
      v4 = v189;
      goto LABEL_212;
    }

    v169 = v40;
    v176 = v177 + v77;
    v78 = v76 - 24 - v190;
    if (v76 - 24 <= v190)
    {
      goto LABEL_118;
    }

    v79 = *(v39 + 12) & 0x3FF;
    v80 = v38 + v190;
    v81 = strnlen((v80 + 36), v76 - 24 - v190);
    v82 = v81;
    if (v81 == v78 || v81 + 1 != v79)
    {
      v108 = *__error();
      v109 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316930;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5103;
        *&buf[18] = 2048;
        *&buf[20] = v169;
        *&buf[28] = 2048;
        *&buf[30] = v76;
        v196 = 2048;
        v197 = v177;
        v198 = 2048;
        v199 = v184;
        v200 = 2048;
        v201 = v82;
        v202 = 2048;
        v203 = v79;
        _os_log_error_impl(&dword_1C278D000, v109, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
      }

      *__error() = v108;
LABEL_118:
      v110 = *__error();
      v111 = _SILogForLogForCategory(0);
      v4 = v189;
      v5 = v187;
      v14 = v185;
      v8 = v184;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5110;
        *&buf[18] = 2048;
        *&buf[20] = v169;
        *&buf[28] = 2048;
        *&buf[30] = v76;
        v196 = 2048;
        v197 = v177;
        v198 = 2048;
        v199 = v184;
        _os_log_error_impl(&dword_1C278D000, v111, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
      }

      *__error() = v110;
      v106 = v176;
      v21 = v182;
      v107 = v183;
      add_explicit = v188;
      goto LABEL_121;
    }

    v83 = CFStringCreateWithCString(alloc, (v80 + 36), 0x8000100u);
    if (!v83)
    {
      goto LABEL_118;
    }

    v84 = v83;
    v85 = v73 != 0;
    if (v183)
    {
      v86 = v73 != 0;
    }

    else
    {
      v86 = 0;
    }

    if (v73 >= v183)
    {
      v86 = 0;
    }

    if (v73 > v180)
    {
      v85 = 0;
    }

    if (v86 || v85)
    {
      if (gSILogLevels[0] >= 5)
      {
        v145 = *__error();
        v146 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          *&buf[4] = v73;
          *&buf[12] = 2048;
          *&buf[14] = v183;
          *&buf[22] = 2048;
          *&buf[24] = v180;
          _os_log_impl(&dword_1C278D000, v146, OS_LOG_TYPE_DEFAULT, "Playback skipping sn: %lld mrsn: %lld csn: %lld", buf, 0x20u);
        }

        *__error() = v145;
      }

      v90 = v182;
      v89 = v183;
      v4 = v189;
      add_explicit = v188;
      v5 = v187;
    }

    else
    {
      v5 = v187;
      *buf = si_mobile_set_attr_ctx_create(v187, v83);
      *(*buf + 80) |= 0x10u;
      atomic_fetch_add(v3, 1u);
      v87 = *buf;
      *(*buf + 8) = v3;
      *(v87 + 16) = v177;
      *(v87 + 24) = (v76 + 12);
      *(v87 + 32) = v74;
      *(v87 + 64) = CFAbsoluteTimeGetCurrent();
      v88 = si_backtrace_routine_resolve(*v87, *(v87 + 72), setCSAttributes2, v87, buf);
      (v88)(*buf, 0);
      if (v183 <= v73)
      {
        v89 = v73;
      }

      else
      {
        v89 = v183;
      }

      v90 = v182 + 1;
      v4 = v189;
      add_explicit = v188;
    }

    v118 = v89;
    v119 = v90;
    CFRelease(v84);
    v106 = v176;
    v21 = v119;
    v107 = v118;
    v14 = v185;
    v8 = v184;
LABEL_121:
    v7 = v164;
LABEL_193:
    v28 = v107;
    v27 = v21;
    v30 = v106;
    v144 = v106 + 12;
    v22 = v107;
    v23 = v181;
    v29 = v181;
    if (v144 > v7)
    {
      goto LABEL_218;
    }
  }

  switch(v41)
  {
    case 2:
      v60 = v2_readVInt64(v38 + 18, &v190);
      v61 = 1;
LABEL_60:
      v62 = *(v39 + 4);
      v63 = (v62 + 12);
      if (v63 < 0x12 || v7 < v177 + v63)
      {
        v151 = *__error();
        v152 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_211;
        }

        *buf = 136316418;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5144;
        *&buf[18] = 2048;
        *&buf[20] = 4033806061;
        *&buf[28] = 2048;
        *&buf[30] = v62;
        v196 = 2048;
        v197 = v177;
        v198 = 2048;
        v199 = v184;
LABEL_237:
        _os_log_error_impl(&dword_1C278D000, v152, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
LABEL_211:
        *__error() = v151;
        v21 = v182;
        v22 = v183;
        v23 = v181;
LABEL_212:
        add_explicit = v188;
LABEL_216:
        v5 = v187;
        goto LABEL_217;
      }

      v64 = v177 + v63;
      v65 = *(v39 + 12);
      v66 = v62 - 6 - v190;
      v170 = v61;
      if (v62 - 6 <= v190)
      {
        v71 = 0;
      }

      else
      {
        if (!*(v39 + 12))
        {
          v115 = 0;
          v116 = 1;
          if (v60)
          {
            v117 = v183;
            if (v183 && v60 < v183)
            {
              v106 = v177 + v63;
              v21 = v182;
LABEL_149:
              v107 = v117;
LABEL_157:
              add_explicit = v188;
              goto LABEL_158;
            }
          }

          else
          {
            v117 = v183;
          }

          goto LABEL_151;
        }

        v165 = *(v39 + 12);
        v67 = *(v39 + 12);
        v68 = v38 + v190;
        v69 = strnlen((v38 + v190 + 18), v62 - 6 - v190);
        v70 = v69;
        if (v69 == v66 || v69 + 1 != v67)
        {
          v120 = v67;
          v121 = *__error();
          v122 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316930;
            *&buf[4] = "playBackMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5160;
            *&buf[18] = 2048;
            *&buf[20] = 4033806061;
            *&buf[28] = 2048;
            *&buf[30] = v62;
            v196 = 2048;
            v197 = v177;
            v198 = 2048;
            v199 = v184;
            v200 = 2048;
            v201 = v70;
            v202 = 2048;
            v203 = v120;
            _os_log_error_impl(&dword_1C278D000, v122, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
          }

          *__error() = v121;
          v71 = 0;
        }

        else
        {
          v71 = CFStringCreateWithCString(alloc, (v68 + 18), 0x8000100u);
        }

        v4 = v189;
        v64 = v177 + v63;
        v65 = v165;
      }

      add_explicit = v188;
      v117 = v183;
      if (!v71 && v65)
      {
        v106 = v64;
        v21 = v182;
        v107 = v183;
LABEL_158:
        v5 = v187;
LABEL_192:
        v14 = v185;
        v8 = v184;
        goto LABEL_193;
      }

      if (v60 && v183 && v60 < v183)
      {
        v171 = v64;
        v115 = v71;
        v123 = v183;
        v124 = v182;
        if (!v71)
        {
          v106 = v64;
          v21 = v182;
          goto LABEL_149;
        }

LABEL_156:
        v127 = v124;
        v128 = v123;
        CFRelease(v115);
        v106 = v171;
        v21 = v127;
        v107 = v128;
        goto LABEL_157;
      }

      v115 = v71;
      v116 = v71 == 0;
LABEL_151:
      v171 = v64;
      v125 = v116;
      v126 = si_mobile_delete_attr_ctx_create(v187, v115, 0);
      *(v126 + 10) |= 0x10u;
      atomic_fetch_add(v3, 1u);
      v126[1] = v3;
      v126[2] = v177;
      v126[3] = v63;
      *(v126 + 32) = v170;
      *(v126 + 6) = CFAbsoluteTimeGetCurrent();
      deleteCSAttributes(v126, 0);
      if (v117 <= v60)
      {
        v107 = v60;
      }

      else
      {
        v107 = v117;
      }

      v123 = v107;
      v124 = v182 + 1;
      if (v125)
      {
        v106 = v171;
        v21 = v182 + 1;
        goto LABEL_157;
      }

      goto LABEL_156;
    case 4:
      v57 = -262275347;
      goto LABEL_68;
    case 5:
      v43 = v2_readVInt64(v38 + 24, &v190);
      goto LABEL_47;
  }

LABEL_57:
  if (v40 == -264372499)
  {
    v58 = 0;
    v59 = 0;
    goto LABEL_89;
  }

  if ((v40 & 0xFFEFFFFF) == 0xF04DFEED)
  {
    v73 = 0;
    v74 = 0;
    goto LABEL_69;
  }

  v43 = 0;
  if (v40 == -259064083)
  {
LABEL_47:
    v44 = *(v39 + 4);
    v45 = v44 + 12;
    if ((v44 + 12) < 0x12 || v45 < 0x18 || (v46 = v177 + v45, v7 < v46))
    {
      v153 = *__error();
      v154 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "playBackMobileJournal";
        *&buf[12] = 1024;
        *&buf[14] = 5196;
        *&buf[18] = 2048;
        *&buf[20] = 4035903213;
        *&buf[28] = 2048;
        *&buf[30] = v44;
        v196 = 2048;
        v197 = v177;
        v198 = 2048;
        v199 = v8;
        _os_log_error_impl(&dword_1C278D000, v154, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld", buf, 0x3Au);
      }

      *__error() = v153;
      v21 = v182;
      v22 = v31;
      v23 = v181;
      goto LABEL_216;
    }

    v47 = v43;
    v48 = v44 - 12;
    v49 = *(v39 + 16);
    v50 = *(v39 + 16);
    v51 = *(v39 + 18);
    v52 = *(v39 + 18);
    v53 = v190;
    if (v190 >= v44 - 12)
    {
      v112 = 0;
      v113 = 0;
      v114 = v183;
    }

    else
    {
      v172 = v50;
      v173 = v52;
      v174 = v43;
      v175 = v46;
      v166 = v49;
      v167 = v51;
      if (v50)
      {
        v54 = v48 - v190 - v51;
        v55 = strnlen((v38 + v190 + 24), v54);
        if (v55 == v54 || v55 + 1 != v166)
        {
          v163 = v55;
          v129 = *__error();
          v130 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316930;
            *&buf[4] = "playBackMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5214;
            *&buf[18] = 2048;
            *&buf[20] = 4035903213;
            *&buf[28] = 2048;
            *&buf[30] = v44;
            v196 = 2048;
            v197 = v177;
            v198 = 2048;
            v199 = v184;
            v200 = 2048;
            v201 = v163;
            v202 = 2048;
            v203 = v166;
            _os_log_error_impl(&dword_1C278D000, v130, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
          }

          *__error() = v129;
          v56 = 0;
        }

        else
        {
          v56 = CFStringCreateWithCString(alloc, (v38 + v53 + 24), 0x8000100u);
        }

        add_explicit = v188;
        v47 = v174;
        v46 = v175;
        v52 = v173;
      }

      else
      {
        v56 = 0;
      }

      if (v52)
      {
        v131 = v48 - (v53 + v166);
        v132 = v38 + v53 + v166;
        v133 = strnlen((v132 + 24), v131);
        v134 = v133;
        if (v133 == v131 || v133 + 1 != v167)
        {
          v135 = *__error();
          v136 = _SILogForLogForCategory(0);
          v114 = v183;
          if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316930;
            *&buf[4] = "playBackMobileJournal";
            *&buf[12] = 1024;
            *&buf[14] = 5224;
            *&buf[18] = 2048;
            *&buf[20] = 4035903213;
            *&buf[28] = 2048;
            *&buf[30] = v44;
            v196 = 2048;
            v197 = v177;
            v198 = 2048;
            v199 = v184;
            v200 = 2048;
            v201 = v134;
            v202 = 2048;
            v203 = v167;
            _os_log_error_impl(&dword_1C278D000, v136, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x4Eu);
          }

          v112 = 0;
          *__error() = v135;
          v113 = v56;
          add_explicit = v188;
        }

        else
        {
          v112 = CFStringCreateWithCString(alloc, (v132 + 24), 0x8000100u);
          v113 = v56;
          add_explicit = v188;
          v114 = v183;
        }

        v47 = v174;
        v46 = v175;
        v52 = v173;
      }

      else
      {
        v112 = 0;
        v113 = v56;
        v114 = v183;
      }

      v50 = v172;
    }

    v5 = v187;
    if (v113 || !v50)
    {
      if (!v112 && v52 || v47 && v114 && v47 < v114)
      {
        v139 = v182;
        v140 = v114;
      }

      else
      {
        if (v114 <= v47)
        {
          v140 = v47;
        }

        else
        {
          v140 = v114;
        }

        v139 = v182 + 1;
      }

      if (v113)
      {
        v141 = v46;
        CFRelease(v113);
        v46 = v141;
      }

      v137 = v140;
      v138 = v139;
    }

    else
    {
      v137 = v114;
      v138 = v182;
    }

    v142 = v137;
    v143 = v46;
    if (v112)
    {
      CFRelease(v112);
    }

    v106 = v143;
    v21 = v138;
    v107 = v142;
    goto LABEL_192;
  }

  if (v40 == -261161235)
  {
    v60 = 0;
    v61 = 0;
    goto LABEL_60;
  }

  v21 = v182;
  v22 = v31;
  v23 = v37;
LABEL_217:
  v14 = v185;
LABEL_218:
  v26 = v23;
  v24 = v21;
  v25 = v22 + 1;
LABEL_219:
  if ((v14 & 1) == 0)
  {
    si_mobile_journal_map_deactivate(v3);
  }

  if (v24 != v26)
  {
    v156 = si_sync_ctx_create_with_defer_fd(v5, 0);
    v157 = *(v155 + 88);
    if (v157 <= v25)
    {
      v157 = v25;
    }

    *(v155 + 88) = v157;
    si_sync_index_delayed2(v156);
  }

LABEL_225:
  v158 = threadData[9 * HIDWORD(v192) + 1] + 320 * v192;
  *(v158 + 312) = v186;
  v159 = *(v158 + 232);
  if (v159)
  {
    v159(*(v158 + 288));
  }

  dropThreadId(HIDWORD(v192), 0, add_explicit + 1);
LABEL_228:
  if (atomic_fetch_add((v4 + 6888), 0xFFFFFFFF) == 1)
  {
    v160 = *__error();
    v161 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v161, OS_LOG_TYPE_DEFAULT, "Playback finished.", buf, 2u);
    }

    *__error() = v160;
  }

LABEL_232:
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    _si_mobile_journal_finalize(v3, 1);
  }

  free(a1);
  v162 = *MEMORY[0x1E69E9840];
}

int *si_mobile_journal_map_activate(int *result)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(result + 3))
  {
    v1 = result;
    if (*(result + 2) == -1)
    {
      *(result + 2) = fd_guarded_mmap(*(result + 1));
      memset(v17, 0, 255);
      v2 = *__error();
      v3 = _SILogForLogForCategory(4);
      v4 = 2 * (dword_1EBF46ADC < 4);
      if (os_log_type_enabled(v3, v4))
      {
        v6 = v1[2];
        v5 = v1[3];
        v7 = fd_name(v1[1], v17, 0xFFuLL);
        v9 = 134218754;
        v10 = v1;
        v11 = 2048;
        v12 = v6;
        v13 = 2048;
        v14 = v5;
        v15 = 2080;
        v16 = v7;
        _os_log_impl(&dword_1C278D000, v3, v4, "Activated journal %p %p %lx %s", &v9, 0x2Au);
      }

      result = __error();
      *result = v2;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void si_mobile_journal_map_deactivate(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(v17, 0, 255);
  v2 = *__error();
  v3 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[2];
    v4 = a1[3];
    v6 = fd_name(a1[1], v17, 0xFFuLL);
    v9 = 134218754;
    v10 = a1;
    v11 = 2048;
    v12 = v5;
    v13 = 2048;
    v14 = v4;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "Deactivating journal %p %p %lx %s", &v9, 0x2Au);
  }

  *__error() = v2;
  v7 = a1[2];
  if (v7 != -1)
  {
    fd_guarded_munmap(a1[1], v7, a1[3]);
  }

  a1[2] = -1;
  a1[3] = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void logDeleteEventInCoreAnalyticsWithBundleId(const __CFString *a1, int64_t a2, int64_t a3, int64_t a4)
{
  v4 = dictionaryFromIndexingEvent(a1, a2, a3, a4);
  analytics_send_event();

  xpc_release(v4);
}

void si_finish_text_store_deletions(uint64_t a1)
{
  os_unfair_lock_lock(&text_store_docs_lock);
  v2 = *(a1 + 6936);
  if (v2)
  {
    *(a1 + 6936) = 0;
    os_unfair_lock_unlock(&text_store_docs_lock);
    si_text_store_bulk_delete(a1, *v2, *(v2 + 8));
    free(*v2);

    free(v2);
  }

  else
  {

    os_unfair_lock_unlock(&text_store_docs_lock);
  }
}

uint64_t si_zombifyItem(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v27 = *MEMORY[0x1E69E9840];
  bzero(v24, 0x1000uLL);
  _SIStackAllocatorCreate(v24, 4096, indexingZone);
  if (!v24[3])
  {
    v24[1] = (v24[0] + 55) & 0xFFFFFFFFFFFFFFF0;
  }

  Mutable = _MDPlistContainerCreateMutable();
  _MDPlistContainerBeginContainer();
  _MDPlistContainerBeginArray();
  _MDPlistContainerBeginDictionary();
  v22 = 0;
  v23 = 0;
  db_get_field(*(v10 + 1192), v7, "_kMDItemExternalID", &v23, &v22);
  _MDPlistContainerAddCString();
  _MDPlistContainerAddCString();
  _MDPlistContainerAddCString();
  CFAbsoluteTimeGetCurrent();
  _MDPlistContainerAddDateValue();
  _MDPlistContainerAddCString();
  _MDPlistContainerAddBooleanValue();
  _MDPlistContainerEndDictionary();
  _MDPlistContainerAddNullValue();
  _MDPlistContainerEndArray();
  _MDPlistContainerEndContainer();
  v20 = 0uLL;
  v21 = 0;
  _MDPlistGetRootPlistObjectFromPlist();
  if (gSILogLevels[0] >= 5)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = v9;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "Zombifying oid %lld", buf, 0xCu);
    }

    *__error() = v15;
  }

  _MDPlistArrayGetPlistObjectAtIndex();
  v18 = 0;
  v17 = 0u;
  v12 = (processOneCS)(v10, -1, v5, 0, 0, buf, &v17, 0, 0, 0, v3, 0, 0, &v19);
  CFRelease(Mutable);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void si_enqueue_text_store_doc_for_deletion(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&text_store_docs_lock);
  v4 = *(a1 + 6936);
  if (!v4)
  {
    v4 = malloc_type_calloc(0x18uLL, 1uLL, 0xECB51A32uLL);
    *(a1 + 6936) = v4;
  }

  v5 = v4[1];
  v6 = *v4;
  if (v5 != v4[2])
  {
    goto LABEL_9;
  }

  v7 = 2 * v5;
  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  v9 = reallocf(*v4, 8 * v8);
  *v4 = v9;
  if (v9)
  {
    v6 = v9;
    v4[2] = v8;
    v5 = v4[1];
LABEL_9:
    v4[1] = (v5 + 1);
    v6[v5] = a2;
    if (v5 == 0x7FFF)
    {
      si_text_store_bulk_delete(a1, v6, 0x8000);
      free(v4);
      *(a1 + 6936) = 0;
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v11 = 136315138;
    v12 = "si_enqueue_text_store_doc_for_deletion";
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation failure in %s", &v11, 0xCu);
  }

LABEL_13:
  os_unfair_lock_unlock(&text_store_docs_lock);
  v10 = *MEMORY[0x1E69E9840];
}

void cleanupRelatedItemWithBundle(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = strchr(a1, 58);
  if (!v12)
  {
    goto LABEL_24;
  }

  *v12 = 0;
  v13 = v12 + 1;
  v14 = v12 - a1;
  v15 = a2 - (v12 - a1);
  v31 = 0;
  if (dword_1EBF46ADC >= 5)
  {
    v30 = *__error();
    v27 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v33 = a1;
      v34 = 2080;
      v35 = a1;
      v36 = 2080;
      v37 = v13;
      _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "Deleting related item for %s (%s , %s)", buf, 0x20u);
    }

    *__error() = v30;
  }

  if (_si_get_object_for_identifier_createParentDBO(a5, v15 - 1, v13, v14 + 1, a1, 0, 0, 0, &v31, 0, 0))
  {
    if (dword_1EBF46ADC >= 5)
    {
      v16 = *__error();
      v17 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v33 = a1;
        v34 = 2080;
        v35 = a1;
        v36 = 2080;
        v37 = v13;
        _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "Failed to find related item for %s (%s , %s)", buf, 0x20u);
      }

      *__error() = v16;
    }

    goto LABEL_24;
  }

  v18 = v15 - 2;
  if (dword_1EBF46ADC >= 5)
  {
    v28 = *__error();
    v29 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v33 = a1;
      v34 = 2080;
      v35 = a1;
      v36 = 2080;
      v37 = v13;
      v38 = 2048;
      v39 = v31;
      _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, "Found related item for %s (%s , %s), oid: %lld", buf, 0x2Au);
    }

    *__error() = v28;
  }

  buf[0] = 0;
  _si_delete_attributes_inner(a5, v31, 0, a3, a4, a6, buf);
  si_finish_text_store_deletions(a5);
  if (buf[0] == 1)
  {
    notify_post("com.apple.spotlight.SyndicatedContentDeleted");
  }

  v19 = *MEMORY[0x1E695E480];
  v20 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v13, v18, 0x8000100u, 0);
  v21 = CFStringCreateWithBytes(v19, a1, v14, 0x8000100u, 0);
  v22 = v21;
  if (v20)
  {
    v23 = v21 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *(a5 + 2360);
    v25 = *(v24 + 112);
    if (v25 && *(a5 + 2072) == 1)
    {
      v25(*(v24 + 144), 0, v21, v20, 0);
    }

    goto LABEL_21;
  }

  if (v20)
  {
LABEL_21:
    CFRelease(v20);
  }

  if (v22)
  {
    CFRelease(v22);
  }

LABEL_24:
  v26 = *MEMORY[0x1E69E9840];
}

BOOL objectCanHaveTextCache(int *a1, uint64_t a2, char a3)
{
  if (db_corespotlight_store(a1))
  {
    result = objectHasContent(a1, a2);
    if (!result)
    {
      return result;
    }

    v17 = 0;
    v18 = 0;
    id_for_string = db_get_id_for_string(a1, "public.image");
    v8 = db_get_id_for_string(a1, "com.adobe.pdf");
    v9 = db_get_id_for_string(a1, "com.apple.localized-pdf-bundle");
    if (db_get_field(a1, a2, "kMDItemContentTypeTree", &v18, &v17) != 2 && (*(v18 + 2) & 0x10) != 0)
    {
      v10 = *(v18 + 8);
      if (v10 >= 4)
      {
        if ((a3 & 1) == 0)
        {
          v11 = v10 >> 2;
          v12 = v17;
          while (1)
          {
            v13 = *v12++;
            v14 = v13 & 0x7FFFFFFF;
            v15 = (v13 & 0x7FFFFFFF) == id_for_string || v14 == v8;
            if (v15 || v14 == v9)
            {
              break;
            }

            if (!--v11)
            {
              return 0;
            }
          }
        }

        return 1;
      }
    }
  }

  else if ((*(a2 + 40) & 0x20) == 0 && objectHasContent(a1, a2) && db_get_field(a1, a2, "_kMDItemTextEncodingHint", 0, 0) == 2)
  {
    return 1;
  }

  return 0;
}

uint64_t getDeleteJournalFd(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  result = *(a1 + 2336);
  if (!result)
  {
    v3 = *(a1 + 32);
    if (v3 == -1)
    {
      v11 = __si_assert_copy_extra_661(-1);
      v12 = v11;
      v13 = "";
      if (v11)
      {
        v13 = v11;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 4200, "indexFd != -1", v13);
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

    v4 = *(a1 + 2352);
    if (v4 == 0x7FFFFFFF)
    {
LABEL_7:
      v6 = __si_assert_copy_extra_661(-1);
      v7 = v6;
      v8 = "";
      if (v6)
      {
        v8 = v6;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 4205, "syncCount < 2147483647", v8);
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

    while (1)
    {
      v28 = 0u;
      memset(v29, 0, sizeof(v29));
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__str = 0u;
      snprintf(__str, 0xFFuLL, "%s%d", "skg_deleteAttr.", v4);
      v5 = fd_create_protected(v3, __str, 536873482, 3u);
      if (v5)
      {
        ++*(a1 + 2352);
        *(a1 + 2336) = v5;
        SIActivityJournalNewJournal((a1 + 2192), v5);
        _fd_acquire_fd(*(a1 + 2336), __str);
        result = *(a1 + 2336);
        goto LABEL_13;
      }

      if (*__error() != 17)
      {
        break;
      }

      v4 = *(a1 + 2352) + 1;
      *(a1 + 2352) = v4;
      if (v4 == 0x7FFFFFFF)
      {
        goto LABEL_7;
      }
    }

    result = 0;
  }

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void derivedAttributesCheck(const __CFDictionary *a1, __CFDictionary **a2, __CFDictionary **a3, int a4, _BYTE *a5, int *a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  if (initSIAttributes_once[0] != -1)
  {
    dispatch_once(initSIAttributes_once, &__block_literal_global_1475);
  }

  context = a1;
  v15 = *MEMORY[0x1E695E480];
  v16 = MEMORY[0x1E695E9F8];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v32 = Mutable;
  v18 = CFSetCreateMutable(v15, 0, v16);
  theSet = v18;
  v34 = 0;
  CFDictionaryApplyFunction(a1, gatherAttributesToAdd, &context);
  CFSetApplyFunction(theSet, addAttrIfNotPresent, &context);
  if (a8 && v32 && CFSetGetCount(v32))
  {
    v28 = a4;
    v29 = a8;
    if (v34)
    {
      v19 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a3 = v19;
      v20 = v34;
      if (v34)
      {
        v21 = v19;
        v22 = 0;
        do
        {
          if ((v20 & 2) != 0 && v22 <= 9)
          {
            addFieldValueToDict(v21, off_1E81929E8[v22], a6, a7, off_1E8192998[v22]);
          }

          ++v22;
          v23 = v20 > 1;
          v20 >>= 1;
        }

        while (v23);
      }
    }

    if (CFSetContainsValue(v32, @"kMDItemTextContent"))
    {
      addFieldValueToDict(*a3, @"_kMDItemDerivedIsMeTextContentMatch", a6, a7, "_kMDItemDerivedIsMeTextContentMatch");
      addFieldValueToDict(*a3, @"_kMDItemDerivedIsMeRankingOCRTextContentMatch", a6, a7, "_kMDItemDerivedIsMeRankingOCRTextContentMatch");
      addFieldValueToDict(*a3, @"_kMDItemDerivedIsMeRankingTextContentMatch", a6, a7, "_kMDItemDerivedIsMeRankingTextContentMatch");
      CFSetRemoveValue(v32, @"kMDItemTextContent");
    }

    v24 = *a2;
    a8 = v29;
    a4 = v28;
    if (!*a2)
    {
      v24 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a2 = v24;
    }

    addAttributeValuesToDict(a6, &v35, v32, v24);
  }

  if (a8)
  {
    if (a4)
    {
      v25 = copyValueForField(a6, a7, "kMDItemPhotosMediaTypes");
      if (v25)
      {
        v26 = v25;
        v27 = CFGetTypeID(v25);
        if (v27 == CFArrayGetTypeID() && CFArrayGetCount(v26))
        {
          *a5 = 1;
        }

        CFRelease(v26);
      }
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void si_removeRelatedItem(uint64_t a1, uint64_t *a2, CFStringRef theString, const __CFString *a4, uint64_t a5, const char *a6)
{
  v71 = *MEMORY[0x1E69E9840];
  if (!a2 || !*a2)
  {
    v48 = __si_assert_copy_extra_661(-1);
    v49 = v48;
    v50 = "";
    if (v48)
    {
      v50 = v48;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 28376, "dbop && *dbop", v50);
LABEL_48:
    free(v49);
    if (__valid_fs(-1))
    {
      v51 = 2989;
    }

    else
    {
      v51 = 3072;
    }

    *v51 = -559038737;
    abort();
  }

  memset(v70, 0, sizeof(v70));
  v61 = 0;
  v60 = 0;
  if (a5)
  {
    v11 = *MEMORY[0x1E695E480];
    Length = CFStringGetLength(theString);
    v13 = CFStringGetLength(a4);
    MutableCopy = CFStringCreateMutableCopy(v11, Length + v13 + 1, theString);
    CFStringAppend(MutableCopy, @":");
    CFStringAppend(MutableCopy, a4);
    v15 = fasterUTF8String(a4, &v60, v70, 256, &v61);
    CFRelease(MutableCopy);
    v16 = "_kMDItemRelatedObjectsWithBundle";
  }

  else
  {
    v15 = fasterUTF8String(a4, &v60, v70, 256, &v61);
    v16 = "_kMDItemRelatedObjects";
  }

  v17 = v60;
  __s1 = 0;
  v59 = 0;
  field = db_get_field(*(a1 + 1192), *a2, v16, &v59, &__s1);
  if (field)
  {
    v19 = field;
    if (field == 2)
    {
      goto LABEL_12;
    }

    v20 = a6;
    v21 = theString;
    v22 = *__error();
    v23 = _SILogForLogForCategory(4);
    v24 = dword_1EBF46ADC < 3;
    if (!os_log_type_enabled(v23, (dword_1EBF46ADC < 3)))
    {
      goto LABEL_11;
    }

    *buf = 138413058;
    v63 = v20;
    v64 = 2112;
    v65 = v21;
    v66 = 2112;
    v67 = a4;
    v68 = 1024;
    LODWORD(v69) = v19;
    v25 = "*warn* Failed to fetch the dbo for relatedIdentifier:%@, bundleID:%@, identifier:%@, rc:%d";
    v26 = v23;
    v27 = v24;
    v28 = 38;
    goto LABEL_10;
  }

  v30 = *(v59 + 2);
  if ((v30 & 0x90) != 0)
  {
    v52 = __si_assert_copy_extra_661(-1);
    v49 = v52;
    v53 = "";
    if (v52)
    {
      v53 = v52;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 28410, "(fieldFlags & (DB_FIELD_UNIQUED_VALS|DB_FIELD_LOCALIZED_STR)) == 0", v53);
    goto LABEL_48;
  }

  v56 = theString;
  v57 = a1;
  v55 = a6;
  v31 = *(v59 + 8);
  v32 = __s1;
  if ((v30 & 0x20) == 0)
  {
    v33 = strnlen(__s1, *(v59 + 8));
    if (v33 + 1 < v31)
    {
      v34 = v33 + 1;
    }

    else
    {
      v34 = v31;
    }

    if (v17 != v34 || memcmp(v32, v15, v17))
    {
      goto LABEL_12;
    }

LABEL_37:
    v41 = v57;
    db_delete_field(*(v57 + 1192), a2, v16);
    goto LABEL_38;
  }

  if (!v31)
  {
    goto LABEL_12;
  }

  v35 = &__s1[v31];
  v36 = __s1;
  while (1)
  {
    v37 = v35 - v36;
    v38 = strnlen(v36, v35 - v36);
    if (v38 + 1 < v35 - v36)
    {
      v37 = v38 + 1;
    }

    if (!v37)
    {
      v44 = __si_assert_copy_extra_661(-1);
      v45 = v44;
      v46 = "";
      if (v44)
      {
        v46 = v44;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 28421, "size", v46);
      free(v45);
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

    if (v17 == v37 && !memcmp(v36, v15, v17))
    {
      break;
    }

    v36 += v37;
    if (v36 >= v35)
    {
      goto LABEL_12;
    }
  }

  if (v17 >= v31)
  {
    goto LABEL_37;
  }

  if (v31 >= v17)
  {
    v39 = v31 - v17;
  }

  else
  {
    v39 = 0;
  }

  v54 = v39;
  v40 = malloc_type_malloc(v39, 0xE5B23743uLL);
  memcpy(v40, v32, v36 - v32);
  memcpy(&v40[v36 - v32], &v36[v17], v35 - &v36[v17]);
  v41 = v57;
  db_add_field(*(v57 + 1192), a2, 1u, v16, 0, 0x2120u, 11, v40, v42, v54);
  free(v40);
LABEL_38:
  db_update_obj(*(v41 + 1192), *a2, 3);
  if (dword_1EBF46ADC >= 5)
  {
    v22 = *__error();
    v43 = _SILogForLogForCategory(4);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315906;
    v63 = "_kMDItemRelatedObjects";
    v64 = 2112;
    v65 = v55;
    v66 = 2112;
    v67 = v56;
    v68 = 2112;
    v69 = a4;
    v25 = "Updated %s field for relatedIdentifier:%@, bundleID:%@, identifier:%@";
    v26 = v43;
    v27 = OS_LOG_TYPE_DEFAULT;
    v28 = 42;
LABEL_10:
    _os_log_impl(&dword_1C278D000, v26, v27, v25, buf, v28);
LABEL_11:
    *__error() = v22;
  }

LABEL_12:
  if (v61 == 1)
  {
    free(v15);
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t SISetProperty(uint64_t result, const void *a2, const void *a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 1192))
    {
      if (CFEqual(@"database.shutdowntime", a2))
      {
        si_scheduler_boost_and_forget(*(v3 + 864));
        si_scheduler_boost_and_forget(*(v3 + 944));
      }

      return si_set_property(v3, a2, a3, 0, 0);
    }
  }

  return result;
}

void _SIConsistencyCheck(uint64_t a1)
{
  if (a1 && *(a1 + 1192))
  {
    v2 = *(a1 + 1064);
    if (v2)
    {
      si_enqueue_work_with_qos(v2, 9, si_consistencyCheck, a1);
    }
  }
}

void __processOneCS_block_invoke_1444(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  if (a3 == 4)
  {
    v5 = 0;
    v6 = *MEMORY[0x1E695E480];
    do
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      if (valuePtr)
      {
        *(*(*(a1 + 32) + 8) + 24) |= 1 << *(*(*(a1 + 40) + 8) + 24);
        v8 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
        CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 24), v8);
        CFRelease(v8);
      }

      v9 = *(a1 + 40);
      if (*(a1 + 80) == 1 && ((*(a1 + 64) >> *(*(v9 + 8) + 24)) & 1) != 0)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        v9 = *(a1 + 40);
      }

      ++*(*(v9 + 8) + 24);
      ++v5;
    }

    while (v5 != 4);
  }

  else if (*(a1 + 80) == 1)
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = 4;
    do
    {
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 24);
      if (((1 << v13) & *(a1 + 64)) != 0)
      {
        *(*(*(a1 + 32) + 8) + 24) |= 1 << v13;
        valuePtr = 0;
        v14 = *(a1 + 72);
        v15 = *(*(a1 + 56) + 8);
        v16 = *(v15 + 24);
        *(v15 + 24) = v16 + 1;
        v17 = CFArrayGetValueAtIndex(v14, v16);
        CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr);
        v18 = CFNumberCreate(v10, kCFNumberSInt64Type, &valuePtr);
        CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 24), v18);
        CFRelease(v18);
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 24);
      }

      *(v12 + 24) = v13 + 1;
      --v11;
    }

    while (v11);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) += 4;
  }
}

CFMutableStringRef safeCFStringCopy(const __CFString *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Length = CFStringGetLength(a1);

  return CFStringCreateMutableCopy(v2, Length, a1);
}

void si_consistencyCheck(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = *(a1 + 2368);
    if (v3 && CFArrayGetCount(v3))
    {
      v4 = *(a1 + 1064);

      si_enqueue_work_with_qos(v4, 9, _si_consistencyCheckAfterCompact, a1);
    }

    else
    {

      _si_consistencyCheck(a1);
    }
  }
}

void _si_consistencyCheck(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  bzero(v34, 0x400uLL);
  v2 = fcntl(*(a1 + 32), 50, v34);
  if (v34[0])
  {
    v3 = v2 < 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v34;
  }

  v22 = 0;
  v23 = 0;
  v20 = a1;
  v21 = 0;
  v19 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 18136);
  v5 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 18137);
  v6 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 18138);
  atomic_fetch_add((a1 + 1452), 1u);
  v7 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 2139);
  atomic_fetch_add((a1 + 1452), 0xFFFFFFFF);
  v8 = *__error();
  v9 = _SILogForLogForCategory(7);
  v10 = dword_1EBF46AE8 < 3;
  if (os_log_type_enabled(v9, (dword_1EBF46AE8 < 3)))
  {
    *buf = 136315138;
    v25 = v4;
    _os_log_impl(&dword_1C278D000, v9, v10, "*warn* Starting internal consistency check for %s", buf, 0xCu);
  }

  *__error() = v8;
  *buf = 0;
  v11 = 0;
  if (fd_setDir(*(a1 + 32), buf))
  {
    disableProcMon();
    v12 = db_apply(*(a1 + 1192), check_consistency, &v20);
    enableProcMon();
    v13 = *buf;
    MEMORY[0x1C6921200](*buf);
    if ((v13 & 0x80000000) == 0)
    {
      close(v13);
    }

    v11 = v12 == 0;
  }

  v14 = *__error();
  v15 = _SILogForLogForCategory(7);
  v16 = dword_1EBF46AE8 < 3;
  if (os_log_type_enabled(v15, (dword_1EBF46AE8 < 3)))
  {
    *buf = 136316162;
    v25 = v4;
    v26 = 1024;
    v27 = v21;
    v28 = 1024;
    v29 = HIDWORD(v22);
    v30 = 1024;
    v31 = v22 + HIDWORD(v21);
    v32 = 1024;
    v33 = v23;
    _os_log_impl(&dword_1C278D000, v15, v16, "*warn* Finished internal consistency check for %s. Checks: %d Missing:%d Inconsistent:%d Missing deletes:%d", buf, 0x24u);
  }

  *__error() = v14;
  si_scheduler_resume(*(a1 + 864), v6, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18153);
  si_scheduler_resume(*(a1 + 872), v7, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18154);
  si_scheduler_resume(*(a1 + 872), v5, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18155);
  si_scheduler_resume(*(a1 + 864), v19, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 18156);
  if (v11)
  {
    SISetProperty(a1, @"kSIRepairedIndex", *MEMORY[0x1E695E4D0]);
    v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], sysVersionCStr, 0x8000100u);
    SISetProperty(a1, @"kSIConsistencyCheck", v17);
    CFRelease(v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t check_consistency(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = db_corespotlight_store(a1);
  ++*(a3 + 8);
  if (*(v5 + 2432))
  {
    v7 = 0;
    goto LABEL_5;
  }

  v8 = a2[4];
  if (v8 + 1 < 2)
  {
LABEL_4:
    v7 = 1;
    goto LABEL_5;
  }

  v11 = v6;
  bzero(v56, 0x400uLL);
  v12 = si_indexForDocId(v5, v8);
  if (v12)
  {
    v13 = _CIGetOIDForDocId(v12, v8, 0);
    if (v13 == *a2)
    {
      goto LABEL_4;
    }

    v14 = v13;
    if (v13)
    {
      if ((v11 & 1) == 0)
      {
        v15 = (*(*(v5 + 1416) + 40))();
        if (v15)
        {
          v16 = v15;
          v17 = *__error();
          v18 = _SILogForLogForCategory(7);
          v19 = 2 * (dword_1EBF46AE8 < 4);
          if (os_log_type_enabled(v18, v19))
          {
            v20 = *a2;
            v21 = a2[4];
            v48 = 134218754;
            v49 = v20;
            v50 = 2048;
            v51 = v14;
            v52 = 2048;
            v53 = v21;
            v54 = 2080;
            v55 = v16;
            _os_log_impl(&dword_1C278D000, v18, v19, "Index/sdb inconsistency for (sdb)oid %lld; index has oid %lld. doc id: %lld. path: %s", &v48, 0x2Au);
          }

          *__error() = v17;
          v22 = *a2;
          v7 = 1;
          (*(*(v5 + 2360) + 16))(*(*(v5 + 2360) + 144), v22, 1, 0);
          ++*(a3 + 12);
          goto LABEL_5;
        }
      }

      ++*(a3 + 24);
      if (dword_1EBF46AE8 < 5)
      {
LABEL_23:
        _SIDeleteAttributes(v5, *a2);
        goto LABEL_4;
      }

      v32 = *__error();
      v33 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *a2;
        v48 = 134217984;
        v49 = v44;
        v35 = "delete attributes consistancy 2 oid: %lld";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if ((v11 & 1) != 0 || (v36 = (*(*(v5 + 1416) + 40))()) == 0)
    {
      if (dword_1EBF46AE8 >= 5)
      {
        v45 = *__error();
        v46 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = *a2;
          v48 = 134217984;
          v49 = v47;
          _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "delete attributes consistancy oid: %lld", &v48, 0xCu);
        }

        *__error() = v45;
      }

      _SIDeleteAttributes(v5, *a2);
      ++*(a3 + 24);
      goto LABEL_4;
    }

    v37 = v36;
    v38 = *__error();
    v39 = _SILogForLogForCategory(7);
    v40 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = *a2;
      v42 = a2[4];
      v48 = 134218754;
      v49 = v41;
      v50 = 2048;
      v51 = 0;
      v52 = 2048;
      v53 = v42;
      v54 = 2080;
      v55 = v37;
      _os_log_impl(&dword_1C278D000, v39, v40, "Index/sdb inconsistency for (sdb)oid %lld; index has oid %lld. doc id: %lld. path: %s", &v48, 0x2Au);
    }

    *__error() = v38;
    ++*(a3 + 20);
    v43 = *a2;
    v7 = 1;
    (*(*(v5 + 2360) + 16))(*(*(v5 + 2360) + 144), v43, 1, 0);
  }

  else
  {
    if ((v11 & 1) != 0 || (v23 = *a2, (v24 = (*(*(v5 + 1416) + 40))()) == 0))
    {
      ++*(a3 + 24);
      if (dword_1EBF46AE8 < 5)
      {
        goto LABEL_23;
      }

      v32 = *__error();
      v33 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *a2;
        v48 = 134217984;
        v49 = v34;
        v35 = "delete attributes consistancy 3 oid: %lld";
LABEL_33:
        _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, v35, &v48, 0xCu);
      }

LABEL_34:
      *__error() = v32;
      goto LABEL_23;
    }

    v25 = v24;
    v26 = *__error();
    v27 = _SILogForLogForCategory(7);
    v28 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *a2;
      v30 = a2[4];
      v48 = 134218498;
      v49 = v29;
      v50 = 2048;
      v51 = v30;
      v52 = 2080;
      v53 = v25;
      _os_log_impl(&dword_1C278D000, v27, v28, "Index/sdb inconsistency; wrong doc id for oid %lld; has %lld. path:%s", &v48, 0x20u);
    }

    *__error() = v26;
    v31 = *a2;
    v7 = 1;
    (*(*(v5 + 2360) + 16))(*(*(v5 + 2360) + 144), v31, 1, 0);
    ++*(a3 + 16);
  }

LABEL_5:
  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

void _SIDeleteAttributes(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a1 + 1048))
  {
    v4 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040BFFD03D2uLL);
    v4[3] = a2;
    *v4 = a1;
    *(v4 + 12) = 0;
    v5 = *(a1 + 1048);

    si_enqueue_barrier(v5, si_delete_attributes, v4);
  }
}

void si_delete_attributes(uint64_t *a1, int a2)
{
  if (!a2)
  {
    v3 = *a1;
    v11 = 0;
    if (fd_setDir(*(v3 + 32), &v11))
    {
      v10 = 0;
      if (*(v3 + 2072))
      {
        v4 = &v10;
      }

      else
      {
        v4 = 0;
      }

      v5 = a1[3];
      if (*(a1 + 12))
      {
        v6 = *(v3 + 288);
        if (!v6)
        {
          os_unfair_lock_lock((v3 + 280));
          if (!*(v3 + 288))
          {
            v7 = *(v3 + 296);
            if (v7)
            {
              *(v3 + 288) = v7;
              *(v3 + 296) = 0;
            }

            else
            {
              Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
              __dmb(0xBu);
              *(v3 + 288) = Mutable;
            }
          }

          os_unfair_lock_unlock((v3 + 280));
          v6 = *(v3 + 288);
        }

        _si_delete_attributes_inner(v3, v5, 0, 0, 0, v6, v4);
        si_finish_text_store_deletions(v3);
        si_indexDeleteDeferredItemsIfReady(v3);
      }

      else
      {
        _si_delete_attributes_inner(v3, a1[3], 0, 0, 0, 0, v4);
        si_finish_text_store_deletions(v3);
      }

      if (v10 == 1)
      {
        notify_post("com.apple.spotlight.SyndicatedContentDeleted");
      }

      v9 = v11;
      MEMORY[0x1C6921200](v11);
      if ((v9 & 0x80000000) == 0)
      {
        close(v9);
      }
    }
  }

  free(a1);
}

void _si_consistencyCheckAfterCompact(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
LABEL_2:
    v2 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = *(a1 + 2368);
  if (v4 && CFArrayGetCount(v4))
  {
    bzero(v15, 0x400uLL);
    v5 = fcntl(*(a1 + 32), 50, v15);
    v6 = v15[0];
    v7 = *__error();
    v8 = _SILogForLogForCategory(7);
    v9 = dword_1EBF46AE8 < 3;
    if (os_log_type_enabled(v8, (dword_1EBF46AE8 < 3)))
    {
      if (v6)
      {
        v10 = v5 < 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      *buf = 136315138;
      v14 = v11;
      _os_log_impl(&dword_1C278D000, v8, v9, "*warn* Skipping consistency check for %s", buf, 0xCu);
    }

    *__error() = v7;
    goto LABEL_2;
  }

  v12 = *MEMORY[0x1E69E9840];

  _si_consistencyCheck(a1);
}

CFStringRef CopyUserTag(const __CFString *a1)
{
  v2 = CFStringFind(a1, @"\n", 0);
  if (v2.length)
  {
    v4.length = v2.location;
    v3 = *MEMORY[0x1E695E480];
    v4.location = 0;

    return CFStringCreateWithSubstring(v3, a1, v4);
  }

  else
  {
    if (a1)
    {
      CFRetain(a1);
    }

    return a1;
  }
}

void __postPreprocess_block_invoke_2(uint64_t a1, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6.length = CFArrayGetCount(a2);
    v6.location = 0;

    CFArrayAppendArray(v5, a2, v6);
  }

  else
  {
    v7 = CFStringGetTypeID();
    if (v7 == CFGetTypeID(a2))
    {
      v8 = *(*(*(a1 + 32) + 8) + 24);

      CFArrayAppendValue(v8, a2);
    }
  }
}

CFArrayRef __postPreprocess_block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  v3[0] = @"MDSystemFile";
  result = CFArrayCreate(v0, v3, 1, MEMORY[0x1E695E9C0]);
  postPreprocess_arrSystemFile = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mePreprocessAlias(uint64_t result)
{
  if (*(result + 26))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *(result + 16);
  v4 = *result;
  v5 = *(result + 24);
  v6 = *(*result + 288);
  if (v3 != CFStringGetTypeID())
  {
    result = CFArrayGetTypeID();
    if (v3 != result)
    {
      return result;
    }

    result = CFArrayGetCount(v2);
    if (result < 1)
    {
      return result;
    }

    v7 = result;
    v8 = 0;
    while (1)
    {
      result = CFArrayGetValueAtIndex(v2, v8);
      if (result)
      {
        v9 = result;
        v10 = CFGetTypeID(result);
        result = CFStringGetTypeID();
        if (v10 == result)
        {
          result = _icu_search_match_with_ctx(v9, v6);
          if (result)
          {
            break;
          }
        }
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v12 = *MEMORY[0x1E695E4D0];
        v13 = 9;
        goto LABEL_37;
      }

      if (v5 == 2)
      {
        v12 = *MEMORY[0x1E695E4D0];
        v13 = 10;
        goto LABEL_37;
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v12 = *MEMORY[0x1E695E4D0];
          v4[11] = *MEMORY[0x1E695E4D0];
          if (*(v1 + 25))
          {
            v13 = 12;
            goto LABEL_37;
          }

          break;
        case 6:
          v12 = *MEMORY[0x1E695E4D0];
          v13 = 15;
          goto LABEL_37;
        case 7:
          v12 = *MEMORY[0x1E695E4D0];
          v13 = 17;
LABEL_37:
          v4[v13] = v12;
          break;
      }
    }

    *(v1 + 26) = 1;
    return result;
  }

  result = _icu_search_match_with_ctx(v2, v6);
  if (result)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v4[9] = *MEMORY[0x1E695E4D0];
      }

      else if (v5 == 2)
      {
        v4[10] = *MEMORY[0x1E695E4D0];
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          v11 = *MEMORY[0x1E695E4D0];
          v4[11] = *MEMORY[0x1E695E4D0];
          if (*(v1 + 25) == 1)
          {
            v4[12] = v11;
          }

          break;
        case 6:
          v4[15] = *MEMORY[0x1E695E4D0];
          break;
        case 7:
          v4[17] = *MEMORY[0x1E695E4D0];
          break;
      }
    }
  }

  return result;
}

uint64_t mePreprocessNamePrefix(uint64_t result)
{
  if (*(result + 26))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *(result + 16);
  v4 = *result;
  v5 = *(result + 24);
  v6 = *(*result + 280);
  if (v3 != CFStringGetTypeID())
  {
    result = CFArrayGetTypeID();
    if (v3 != result)
    {
      return result;
    }

    result = CFArrayGetCount(v2);
    if (result < 1)
    {
      return result;
    }

    v7 = result;
    v8 = 0;
    while (1)
    {
      result = CFArrayGetValueAtIndex(v2, v8);
      if (result)
      {
        v9 = result;
        v10 = CFGetTypeID(result);
        result = CFStringGetTypeID();
        if (v10 == result)
        {
          result = _icu_search_match_with_ctx(v9, v6);
          if (result)
          {
            break;
          }
        }
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    if (v5 == 1)
    {
      v11 = 72;
    }

    else
    {
      if (v5 != 2)
      {
LABEL_22:
        *(v1 + 26) = 1;
        return result;
      }

      v11 = 80;
    }

    *(v4 + v11) = *MEMORY[0x1E695E4D0];
    goto LABEL_22;
  }

  result = _icu_search_match_with_ctx(v2, v6);
  if (result)
  {
    if (v5 == 2)
    {
      *(v4 + 80) = *MEMORY[0x1E695E4D0];
    }

    else if (v5 == 1)
    {
      *(v4 + 72) = *MEMORY[0x1E695E4D0];
    }
  }

  return result;
}

const __CFDictionary *mePreprocessNameTokenAnd(const __CFDictionary *key, uint64_t a2)
{
  if ((*(a2 + 26) & 1) == 0)
  {
    v3 = key;
    if (key)
    {
      v4 = *a2;
      key = *(*a2 + 264);
      if (key)
      {
        v5 = *(a2 + 8);
        v6 = *(a2 + 16);
        v7 = *(a2 + 24);
        key = CFDictionaryGetValue(key, v3);
        if (key)
        {
          if (v5)
          {
            v8 = *key;
            key = CFStringGetTypeID();
            if (v6 == key)
            {
              key = _icu_search_match_with_ctx(v5, v8);
              if (key)
              {
                if (v7 > 4)
                {
                  switch(v7)
                  {
                    case 5:
                      v4[14] = *MEMORY[0x1E695E4D0];
                      break;
                    case 6:
                      v4[15] = *MEMORY[0x1E695E4D0];
                      break;
                    case 7:
                      v4[17] = *MEMORY[0x1E695E4D0];
                      break;
                  }
                }

                else
                {
                  switch(v7)
                  {
                    case 1:
                      v4[9] = *MEMORY[0x1E695E4D0];
                      break;
                    case 2:
                      v4[10] = *MEMORY[0x1E695E4D0];
                      break;
                    case 3:
                      v9 = *MEMORY[0x1E695E4D0];
                      v4[11] = *MEMORY[0x1E695E4D0];
                      if (*(a2 + 25) == 1)
                      {
                        v4[12] = v9;
                      }

                      break;
                  }
                }
              }

              else
              {
                if ((v7 - 5) <= 2)
                {
                  *(v4 + qword_1C2BFB210[(v7 - 5)]) = *MEMORY[0x1E695E4C0];
                }

                *(a2 + 26) = 1;
              }
            }
          }
        }
      }
    }
  }

  return key;
}

uint64_t mePreprocessNameToken(uint64_t key, uint64_t a2)
{
  if (*(a2 + 26))
  {
    return key;
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *a2;
  v6 = *(a2 + 24);
  key = CFDictionaryGetValue(*(*a2 + 264), key);
  if (!v3)
  {
    return key;
  }

  v7 = *key;
  if (v4 != CFStringGetTypeID())
  {
    key = CFArrayGetTypeID();
    if (v4 != key)
    {
      return key;
    }

    key = CFArrayGetCount(v3);
    if (key < 1)
    {
      return key;
    }

    v9 = key;
    v10 = 0;
    while (1)
    {
      key = CFArrayGetValueAtIndex(v3, v10);
      if (key)
      {
        v11 = key;
        v12 = CFGetTypeID(key);
        key = CFStringGetTypeID();
        if (v12 == key)
        {
          break;
        }
      }

LABEL_27:
      if (++v10 >= v9)
      {
        return key;
      }
    }

    key = _icu_search_match_with_ctx(v11, v7);
    if (key)
    {
      if (v6 <= 7)
      {
        switch(v6)
        {
          case 1:
            goto LABEL_35;
          case 2:
            goto LABEL_36;
          case 3:
            goto LABEL_9;
        }

        goto LABEL_26;
      }

      v13 = v5 + 21;
      if (v6 != 9)
      {
        if (v6 != 10)
        {
          if (v6 == 8)
          {
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v13 = v5 + 20;
      }

      v14 = *(a2 + 40);
      *(a2 + 40) = v14 + 1;
      *v13 |= 1 << v14;
    }

LABEL_26:
    if (*(a2 + 26))
    {
      return key;
    }

    goto LABEL_27;
  }

  key = _icu_search_match_with_ctx(v3, v7);
  if (!key)
  {
    return key;
  }

  if (v6 <= 7)
  {
    switch(v6)
    {
      case 1:
LABEL_35:
        v5[9] = *MEMORY[0x1E695E4D0];
        break;
      case 2:
LABEL_36:
        v5[10] = *MEMORY[0x1E695E4D0];
        break;
      case 3:
LABEL_9:
        v8 = *MEMORY[0x1E695E4D0];
        v5[11] = *MEMORY[0x1E695E4D0];
        if (*(a2 + 25) == 1)
        {
          v5[12] = v8;
        }

        break;
      default:
        return key;
    }

    goto LABEL_39;
  }

  switch(v6)
  {
    case 8:
LABEL_37:
      v16 = *MEMORY[0x1E695E4D0];
      v5[18] = *MEMORY[0x1E695E4D0];
      if (*(a2 + 25) == 1)
      {
        v5[19] = v16;
      }

LABEL_39:
      *(a2 + 26) = 1;
      return key;
    case 9:
      v17 = *(a2 + 40);
      *(a2 + 40) = v17 + 1;
      v5[21] |= 1 << v17;
      break;
    case 10:
      v15 = *(a2 + 40);
      *(a2 + 40) = v15 + 1;
      v5[20] |= 1 << v15;
      break;
  }

  return key;
}

CFSetRef __preProcess_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_1E8192360;
  v2[1] = *off_1E8192370;
  result = CFSetCreate(*MEMORY[0x1E695E480], v2, 4, MEMORY[0x1E695E9F8]);
  preProcess_localizeFieldNames = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID __isAppleInternalInstall_block_invoke()
{
  result = MGCopyAnswer();
  if (result && (v1 = result, v2 = CFGetTypeID(result), result = CFStringGetTypeID(), v2 == result))
  {
    result = CFEqual(v1, @"Internal");
    v3 = result != 0;
  }

  else
  {
    v3 = 0;
  }

  isAppleInternalInstall_isInternalInstall = v3;
  return result;
}

void addFieldValueToDict(__CFDictionary *a1, const void *a2, int *a3, uint64_t a4, char *a5)
{
  v7 = copyValueForField(a3, a4, a5);
  if (v7)
  {
    v8 = v7;
    CFDictionaryAddValue(a1, a2, v7);

    CFRelease(v8);
  }
}

void addAttributeValuesToDict(int *a1, uint64_t *a2, CFSetRef theSet, __CFDictionary *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  Count = CFSetGetCount(theSet);
  MEMORY[0x1EEE9AC00](Count);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  bzero(v10, v9);
  CFSetGetValues(theSet, v10);
  if (Count >= 1)
  {
    do
    {
      v11 = *v10;
      v10 += 8;
      bzero(v14, 0x400uLL);
      CFStringGetLength(v11);
      CFStringGetCString(v11, v14, 1024, 0x8000100u);
      addFieldValueToDict(a4, v11, a1, *a2, v14);
      --Count;
    }

    while (Count);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void *copyValueForField(int *a1, uint64_t a2, char *a3)
{
  *v5 = 0;
  v6 = 0;
  if (db_get_field(a1, a2, a3, v5, &v6))
  {
    return 0;
  }

  if (!*v5)
  {
    return 0;
  }

  result = _decodeSDBField(a1, *v5, (*v5 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480]);
  if (!result)
  {
    return 0;
  }

  return result;
}

void addAttrIfNotPresent(void *value, const __CFDictionary **a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (!CFSetContainsValue(v3, value) && !CFDictionaryContainsKey(v4, value))
  {

    CFSetAddValue(v3, value);
  }
}

CFSetRef __initSIAttributes_block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v23[0] = xmmword_1E8192148;
  v23[1] = *&off_1E8192158;
  v23[2] = xmmword_1E8192168;
  v23[3] = *&off_1E8192178;
  v21[4] = xmmword_1E81921C8;
  v21[5] = *&off_1E81921D8;
  v22 = @"kMDItemAlternateNames";
  v21[0] = xmmword_1E8192188;
  v21[1] = *&off_1E8192198;
  v21[2] = xmmword_1E81921A8;
  v21[3] = *&off_1E81921B8;
  v19[0] = xmmword_1E81921F0;
  v19[1] = *&off_1E8192200;
  v19[2] = xmmword_1E8192210;
  v20 = @"kMDItemUserSharedReceivedSenderHandle";
  v18[2] = xmmword_1E8192248;
  v18[3] = *&off_1E8192258;
  v18[4] = xmmword_1E8192268;
  v18[0] = xmmword_1E8192228;
  v18[1] = *&off_1E8192238;
  v16[0] = xmmword_1E8192278;
  v16[1] = *&off_1E8192288;
  v16[2] = xmmword_1E8192298;
  v17 = @"kMDItemAppEntityTitle";
  v14 = xmmword_1E81922B0;
  v15 = xmmword_1E81922B0;
  v12 = @"kMDItemCardUnderName";
  v13 = @"kMDItemTextContent";
  v11[4] = xmmword_1E8192300;
  v11[5] = *&off_1E8192310;
  v11[6] = xmmword_1E8192320;
  v11[7] = *off_1E8192330;
  v11[0] = xmmword_1E81922C0;
  v11[1] = *&off_1E81922D0;
  v11[2] = xmmword_1E81922E0;
  v11[3] = *&off_1E81922F0;
  v0 = v10;
  v10[0] = 1;
  v10[3] = 10;
  v10[6] = 2;
  v10[9] = 9;
  v10[12] = 3;
  v10[15] = 4;
  v10[18] = 5;
  v10[21] = 6;
  v8 = v23;
  v9 = 8;
  v10[1] = v21;
  v10[2] = 13;
  v10[4] = v19;
  v10[5] = 7;
  v10[7] = v18;
  v10[8] = 10;
  v10[10] = v16;
  v10[11] = 7;
  v10[13] = &v15;
  v10[14] = 2;
  v10[16] = &v14;
  v10[17] = 2;
  v10[19] = &v13;
  v10[20] = 1;
  v10[22] = &v12;
  v10[23] = 1;
  v10[24] = 7;
  v10[25] = v11;
  v10[26] = 16;
  v10[27] = 8;
  sSIAttributesToIncludeAndRolesCount = 1;
  v1 = 0;
  sIncludeAttributesAndRoles = malloc_type_calloc(0xAuLL, 0x10uLL, 0x1060040E5A1EACFuLL);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9F8];
  do
  {
    result = CFSetCreate(v2, *(v0 - 2), *(v0 - 1), v3);
    v5 = sIncludeAttributesAndRoles + v1;
    *v5 = result;
    v6 = *v0;
    v0 += 3;
    *(v5 + 8) = v6;
    v1 += 16;
  }

  while (v1 != 160);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __setCSAttributes2_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(a1 + 32), 0x40000000, add_explicit + 1);
  v55 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v53 = v5;
  v54 = HIDWORD(v3);
  v52 = v6;
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v51 = v55;
  v50 = v54;
  v49 = v53;
  v48 = v52;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v48);
    dropThreadId(v51, 1, add_explicit + 1);
    CICleanUpReset(v51, v49);
  }

  else
  {
    v9 = *(a1 + 84);
    v33 = v7;
    if (v9)
    {
      v10 = 1;
    }

    else if (gCPUCount > 0xF)
    {
      v10 = 16;
    }

    else if (gCPUCount <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = gCPUCount;
    }

    v11 = v10;
    *buf = 0;
    v45 = buf;
    v12 = *(a1 + 80);
    if (v11 >= v12)
    {
      v13 = *(a1 + 80);
    }

    else
    {
      v13 = v11;
    }

    v46 = 0x2000000000;
    v47 = 0;
    v34 = add_explicit;
    if (v13 == 1)
    {
      MEMORY[0x1EEE9AC00](1);
      bzero(v30, 0x1000uLL);
      _SIStackAllocatorCreate(v30, 4096, indexingZone);
      if (*(a1 + 80))
      {
        v15 = 0;
        v16 = 0x1EBF46000uLL;
        *&v14 = 138412546;
        v32 = v14;
        do
        {
          if (!v30[3])
          {
            v30[1] = (v30[0] + 55) & 0xFFFFFFFFFFFFFFF0;
          }

          v42 = 0uLL;
          v43 = 0;
          *v56 = *(a1 + 40);
          *&v56[16] = *(a1 + 56);
          _MDPlistArrayGetPlistObjectAtIndex();
          *v56 = v42;
          *&v56[16] = v43;
          v17 = _MDPlistContainerCopyObject();
          if (v17)
          {
            v18 = v17;
            if (*(v16 + 2780) >= 5)
            {
              v31 = *__error();
              v21 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = *(a1 + 64);
                *v56 = v32;
                *&v56[4] = v22;
                *&v56[12] = 2112;
                *&v56[14] = v18;
                _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "Index delete bundleID:%@, identifier:%@", v56, 0x16u);
              }

              *__error() = v31;
              v16 = 0x1EBF46000;
            }

            *v56 = 0;
            if (!si_get_object_for_identifier_createParentDBO(*(a1 + 72), *(a1 + 64), v18, 0, 0, v56, 0, 0))
            {
              v19 = *(a1 + 72);
              _si_delete_attributes_inner(v19, *v56, *(a1 + 85), 0, 0, 0, v45 + 24);
              v20 = v19;
              v16 = 0x1EBF46000;
              si_finish_text_store_deletions(v20);
            }

            CFRelease(v18);
          }

          ++v15;
        }

        while (v15 < *(a1 + 80));
      }
    }

    else
    {
      v23 = v12;
      *&v42 = 0;
      v24 = *(a1 + 32);
      if (v23)
      {
        v25 = *(*v24 + 32);
      }

      else
      {
        v25 = -1;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __setCSAttributes2_block_invoke_1908;
      block[3] = &unk_1E8192460;
      block[6] = &v42;
      v39 = v25;
      v40 = v23;
      v36 = *(a1 + 40);
      v37 = *(a1 + 56);
      v38 = *(a1 + 64);
      v41 = *(a1 + 85);
      block[5] = v24;
      block[4] = buf;
      dispatch_apply(v13, 0, block);
    }

    if (v45[24] == 1 && CFEqual(*(a1 + 64), @"com.apple.MobileSMS"))
    {
      notify_post("com.apple.spotlight.SyndicatedContentDeleted");
    }

    v26 = threadData[9 * v51 + 1] + 320 * v50;
    *(v26 + 312) = v33;
    v27 = *(v26 + 232);
    v28 = v34;
    if (v27)
    {
      v27(*(v26 + 288));
    }

    dropThreadId(v51, 0, v28 + 1);
    _Block_object_dispose(buf, 8);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __setCSAttributes2_block_invoke_1911(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 136);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __setCSAttributes2_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_1917;
  v17 = *(a1 + 140);
  v16 = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v7 = vextq_s8(v3, v3, 8uLL);
  v8 = v4;
  v9 = *(a1 + 72);
  v18 = *(a1 + 142);
  v10 = *(a1 + 80);
  v5 = *(a1 + 104);
  v11 = *(a1 + 96);
  v12 = v1;
  v13 = v5;
  v14 = *(a1 + 112);
  v15 = *(a1 + 128);
  v19 = *(a1 + 143);
  v20 = *(a1 + 159);
  si_indexingWatchdogPerform(v1, v3.i64[0], v2, 6u, v6);
}

BOOL getCSInfoAtIndex(__int128 *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v11 = *a1;
  v12 = *(a1 + 2);
  _MDPlistArrayGetPlistObjectAtIndex();
  if (_MDPlistGetPlistObjectType() == 246)
  {
    _MDPlistDataGetBytePtr();
    _MDPlistGetRootPlistObjectFromBytes();
  }

  if (_MDPlistGetPlistObjectType() != 240)
  {
    return 0;
  }

  if (_MDPlistArrayGetCount() - 5 < 0xFFFFFFFE)
  {
    return 0;
  }

  _MDPlistArrayGetPlistObjectAtIndex();
  IntValue = _MDPlistNumberGetIntValue();
  if ((IntValue & 2) != 0)
  {
    return 0;
  }

  _MDPlistArrayGetPlistObjectAtIndex();
  v9 = _MDPlistGetPlistObjectType() == 241;
  result = v9;
  if (v9)
  {
    *a3 = 0uLL;
    *(a3 + 16) = 0;
    *a4 = IntValue;
    *(a5 + 16) = 0;
    *a5 = 0uLL;
  }

  return result;
}

BOOL forceProcessCSSerialForNotes(unsigned int a1, uint64_t a2)
{
  if (a1)
  {
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v10 = 0uLL;
      v11 = 0;
      v7 = *a2;
      v8 = *(a2 + 16);
      if (getCSInfoAtIndex(&v7, v4, v12, &v9, &v10))
      {
        v7 = v10;
        v8 = v11;
        if (attrsKeyValueEnabled(&v7))
        {
          break;
        }
      }

      v4 = (v4 + 1);
      v5 = v4 < a1;
      if (a1 == v4)
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t __setCSAttributes2_block_invoke_3()
{
  qos_class_self();
  result = pthread_qos_max_parallelism();
  gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool = result;
  return result;
}

uint64_t __setCSAttributes2_block_invoke_1908(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo(*(a1 + 96), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v54 = v3;
  v4 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v52 = v5;
  v53 = HIDWORD(v3);
  v51 = v6;
  *(v4 + 216) = 0;
  v7 = *(v4 + 312);
  v8 = *(v4 + 224);
  if (v8)
  {
    v8(*(v4 + 288));
  }

  v50 = v54;
  v49 = v53;
  v48 = v52;
  v47 = v51;
  if (_setjmp(v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v4 + 312) = v7;
    CIOnThreadCleanUpReset(v47);
    dropThreadId(v50, 1, add_explicit + 1);
    result = CICleanUpReset(v50, v48);
  }

  else
  {
    v10 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v11 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(a1 + 40), 0x40000000, v10 + 1);
    v46 = v11;
    v44 = v12;
    v45 = HIDWORD(v11);
    v43 = v13;
    v14 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    *(v14 + 216) = 0;
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    if (v16)
    {
      v16(*(v14 + 288));
    }

    v42 = v46;
    v41 = v45;
    v40 = v44;
    v39 = v43;
    v17 = _setjmp(v14);
    if (v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v14 + 312) = v15;
      CIOnThreadCleanUpReset(v39);
      dropThreadId(v42, 1, v10 + 1);
      CICleanUpReset(v42, v40);
    }

    else
    {
      v34 = v15;
      v35 = v10;
      v36 = v7;
      MEMORY[0x1EEE9AC00](v17);
      bzero(v31, 0x1000uLL);
      _SIStackAllocatorCreate(v31, 4096, indexingZone);
      if (atomic_fetch_add_explicit(*(a1 + 48), 1uLL, memory_order_relaxed) < *(a1 + 100))
      {
        v19 = 0x1EBF46000uLL;
        *&v18 = 138412546;
        v33 = v18;
        do
        {
          memset(buf, 0, sizeof(buf));
          v38 = 0;
          *v55 = *(a1 + 56);
          *&v55[16] = *(a1 + 72);
          _MDPlistArrayGetPlistObjectAtIndex();
          if (!v31[3])
          {
            v31[1] = (v31[0] + 55) & 0xFFFFFFFFFFFFFFF0;
          }

          *v55 = *buf;
          *&v55[16] = v38;
          v20 = _MDPlistContainerCopyObject();
          if (v20)
          {
            v21 = v20;
            if (*(v19 + 2780) >= 5)
            {
              v32 = *__error();
              v24 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = *(a1 + 80);
                *v55 = v33;
                *&v55[4] = v25;
                *&v55[12] = 2112;
                *&v55[14] = v21;
                _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "Index delete bundleID:%@, identifier:%@", v55, 0x16u);
              }

              *__error() = v32;
              v19 = 0x1EBF46000;
            }

            *v55 = 0;
            if (!si_get_object_for_identifier_createParentDBO(*(a1 + 88), *(a1 + 80), v21, 0, 0, v55, 0, 0))
            {
              v22 = *(a1 + 88);
              _si_delete_attributes_inner(v22, *v55, *(a1 + 104), 0, 1u, 0, (*(*(a1 + 32) + 8) + 24));
              v23 = v22;
              v19 = 0x1EBF46000;
              si_finish_text_store_deletions(v23);
            }

            CFRelease(v21);
          }
        }

        while (atomic_fetch_add_explicit(*(a1 + 48), 1uLL, memory_order_relaxed) < *(a1 + 100));
      }

      v26 = threadData[9 * v42 + 1] + 320 * v41;
      *(v26 + 312) = v34;
      v27 = *(v26 + 232);
      if (v27)
      {
        v27(*(v26 + 288));
      }

      dropThreadId(v42, 0, v35 + 1);
      v7 = v36;
    }

    v28 = threadData[9 * v50 + 1] + 320 * v49;
    *(v28 + 312) = v7;
    v29 = *(v28 + 232);
    if (v29)
    {
      v29(*(v28 + 288));
    }

    result = dropThreadId(v50, 0, add_explicit + 1);
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getDeferJournalFd(uint64_t a1, int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 2328);
  if (v4 || (a2 & 1) != 0)
  {
LABEL_16:
    if (a2)
    {
      if (*(a1 + 2072) == 1)
      {
        v13 = *(a1 + 2112);
        if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
        {
          _si_mobile_journal_finalize(v13, 1);
        }

        *(a1 + 2112) = 0;
      }

      *(a1 + 2328) = 0;
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5 == -1)
    {
      v16 = __si_assert_copy_extra_661(-1);
      v17 = v16;
      v18 = "";
      if (v16)
      {
        v18 = v16;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 4040, "indexFd != -1", v18);
      free(v17);
      if (__valid_fs(-1))
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

    v6 = *(a1 + 2348);
    if (v6 == 0x7FFFFFFF)
    {
LABEL_11:
      v9 = __si_assert_copy_extra_661(-1);
      v10 = v9;
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 4045, "syncCount < 2147483647", v11);
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

    while (1)
    {
      v33 = 0u;
      memset(v34, 0, sizeof(v34));
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
      v21 = 0u;
      v22 = 0u;
      *__str = 0u;
      snprintf(__str, 0xFFuLL, "%s%d", "deferAttr.", v6);
      if (*(a1 + 60) == 2)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }

      v8 = fd_create_protected(v5, __str, 536873482, v7);
      if (v8)
      {
        ++*(a1 + 2348);
        *(a1 + 2328) = v8;
        SIActivityJournalNewJournal((a1 + 2192), v8);
        _fd_acquire_fd(*(a1 + 2328), __str);
        v4 = *(a1 + 2328);
        goto LABEL_16;
      }

      if (*__error() != 17)
      {
        break;
      }

      v6 = *(a1 + 2348) + 1;
      *(a1 + 2348) = v6;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_11;
      }
    }

    v4 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

void flushGraphCacheApply(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v85 = MEMORY[0x1C691E5E0](*a3, a1);
  }

  else
  {
    v85 = 0;
  }

  v5 = a3[1];
  if (v5)
  {
    v84 = MEMORY[0x1C691E5E0](v5, a1);
  }

  else
  {
    v84 = 0;
  }

  v6 = a3[2];
  if (v6)
  {
    v82 = MEMORY[0x1C691E5E0](v6, a1);
  }

  else
  {
    v82 = 0;
  }

  v7 = a3[3];
  if (v7)
  {
    v81 = MEMORY[0x1C691E5E0](v7, a1);
  }

  else
  {
    v81 = 0;
  }

  v8 = a3[4];
  if (v8)
  {
    v80 = MEMORY[0x1C691E5E0](v8, a1);
  }

  else
  {
    v80 = 0;
  }

  v9 = a3[5];
  if (v9)
  {
    v79 = MEMORY[0x1C691E5E0](v9, a1);
  }

  else
  {
    v79 = 0;
  }

  v10 = a3[6];
  if (v10)
  {
    v78 = MEMORY[0x1C691E5E0](v10, a1);
  }

  else
  {
    v78 = 0;
  }

  v11 = a3[7];
  if (v11)
  {
    v77 = MEMORY[0x1C691E5E0](v11, a1);
  }

  else
  {
    v77 = 0;
  }

  v12 = a3[8];
  if (v12)
  {
    v76 = MEMORY[0x1C691E5E0](v12, a1);
  }

  else
  {
    v76 = 0;
  }

  v13 = a3[9];
  if (v13)
  {
    v75 = MEMORY[0x1C691E5E0](v13, a1);
  }

  else
  {
    v75 = 0;
  }

  v14 = a3[10];
  if (v14)
  {
    v74 = MEMORY[0x1C691E5E0](v14, a1);
  }

  else
  {
    v74 = 0;
  }

  v15 = a3[11];
  if (v15)
  {
    v73 = MEMORY[0x1C691E5E0](v15, a1);
  }

  else
  {
    v73 = 0;
  }

  v16 = a3[12];
  if (v16)
  {
    v72 = MEMORY[0x1C691E5E0](v16, a1);
  }

  else
  {
    v72 = 0;
  }

  v17 = a3[13];
  if (v17)
  {
    v71 = MEMORY[0x1C691E5E0](v17, a1);
  }

  else
  {
    v71 = 0;
  }

  v18 = a3[14];
  if (v18)
  {
    v70 = MEMORY[0x1C691E5E0](v18, a1);
  }

  else
  {
    v70 = 0;
  }

  v19 = a3[15];
  if (v19)
  {
    v69 = MEMORY[0x1C691E5E0](v19, a1);
  }

  else
  {
    v69 = 0;
  }

  v20 = a3[16];
  if (v20)
  {
    v68 = MEMORY[0x1C691E5E0](v20, a1);
  }

  else
  {
    v68 = 0;
  }

  v21 = a3[17];
  if (v21)
  {
    v67 = MEMORY[0x1C691E5E0](v21, a1);
  }

  else
  {
    v67 = 0;
  }

  v22 = a3[18];
  if (v22)
  {
    v66 = MEMORY[0x1C691E5E0](v22, a1);
  }

  else
  {
    v66 = 0;
  }

  v23 = a3[19];
  if (v23)
  {
    v65 = MEMORY[0x1C691E5E0](v23, a1);
  }

  else
  {
    v65 = 0;
  }

  v24 = a3[20];
  if (v24)
  {
    v64 = MEMORY[0x1C691E5E0](v24, a1);
  }

  else
  {
    v64 = 0;
  }

  v25 = a3[21];
  if (v25)
  {
    v63 = MEMORY[0x1C691E5E0](v25, a1);
  }

  else
  {
    v63 = 0;
  }

  v26 = a3[22];
  if (v26)
  {
    v62 = MEMORY[0x1C691E5E0](v26, a1);
  }

  else
  {
    v62 = 0;
  }

  v27 = a3[23];
  if (v27)
  {
    v61 = MEMORY[0x1C691E5E0](v27, a1);
  }

  else
  {
    v61 = 0;
  }

  v28 = a3[24];
  if (v28)
  {
    v60 = MEMORY[0x1C691E5E0](v28, a1);
  }

  else
  {
    v60 = 0;
  }

  v29 = a3[25];
  if (v29)
  {
    v59 = MEMORY[0x1C691E5E0](v29, a1);
  }

  else
  {
    v59 = 0;
  }

  v30 = a3[26];
  if (v30)
  {
    v58 = MEMORY[0x1C691E5E0](v30, a1);
  }

  else
  {
    v58 = 0;
  }

  v31 = a3[27];
  if (v31)
  {
    v57 = MEMORY[0x1C691E5E0](v31, a1);
  }

  else
  {
    v57 = 0;
  }

  v32 = a3[28];
  if (v32)
  {
    v56 = MEMORY[0x1C691E5E0](v32, a1);
  }

  else
  {
    v56 = 0;
  }

  v33 = a3[29];
  if (v33)
  {
    v55 = MEMORY[0x1C691E5E0](v33, a1);
  }

  else
  {
    v55 = 0;
  }

  v34 = a3[30];
  if (v34)
  {
    v54 = MEMORY[0x1C691E5E0](v34, a1);
  }

  else
  {
    v54 = 0;
  }

  v35 = a3[31];
  if (v35)
  {
    v36 = MEMORY[0x1C691E5E0](v35, a1);
  }

  else
  {
    v36 = 0;
  }

  v37 = a3[32];
  if (v37)
  {
    v38 = MEMORY[0x1C691E5E0](v37, a1);
  }

  else
  {
    v38 = 0;
  }

  v39 = a3[33];
  if (v39)
  {
    v40 = MEMORY[0x1C691E5E0](v39, a1);
  }

  else
  {
    v40 = 0;
  }

  v41 = a3[34];
  if (v41)
  {
    v42 = MEMORY[0x1C691E5E0](v41, a1);
  }

  else
  {
    v42 = 0;
  }

  v43 = a3[35];
  if (v43)
  {
    v44 = MEMORY[0x1C691E5E0](v43, a1);
  }

  else
  {
    v44 = 0;
  }

  v45 = a3[36];
  if (v45)
  {
    v46 = MEMORY[0x1C691E5E0](v45, a1);
  }

  else
  {
    v46 = 0;
  }

  v47 = a3[37];
  if (v47)
  {
    v48 = MEMORY[0x1C691E5E0](v47, a1);
  }

  else
  {
    v48 = 0;
  }

  v49 = a3[38];
  if (v49)
  {
    v50 = MEMORY[0x1C691E5E0](v49, a1);
  }

  else
  {
    v50 = 0;
  }

  v51 = a3[39];
  if (v51)
  {
    v51 = MEMORY[0x1C691E5E0](v51, a1);
  }

  *(&v53 + 1) = v71;
  *&v53 = v72;
  *(&v52 + 1) = v75;
  *&v52 = v76;
  si_updateContactInfo(a3[40], a1, v85, v84, v82, v81, v80, v79, v78, v77, v52, v74, v73, v53, v70, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v36, v38, v40, v42, v44, v46, v48, v50, v51, a2);
}

void si_updateContactInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *&v55 = a3;
  *(&v55 + 1) = a4;
  v81 = *MEMORY[0x1E69E9840];
  bzero(v64, 0x800uLL);
  v41 = _SIStackAllocatorCreate(v64, 512, indexingZone);
  if (!v64[3])
  {
    v64[1] = (v64[0] + 55) & 0xFFFFFFFFFFFFFFF0;
  }

  v78 = v55;
  v79 = a5;
  v80 = a6;
  v77[0] = a7;
  v77[1] = a8;
  v77[2] = a9;
  v77[3] = a10;
  if (*(&v55 + 1) | v55 | a5 | a6)
  {
    v42 = &v78;
  }

  else
  {
    v42 = 0;
  }

  v74 = a11;
  v75 = a12;
  v76 = a13;
  v43 = v77;
  if (!(a8 | a7 | a9 | a10))
  {
    v43 = 0;
  }

  v59 = v43;
  v61 = v42;
  v71 = a14;
  v72 = a15;
  v73 = a16;
  if (*(&a11 + 1) | a11 | a12 | a13)
  {
    v44 = &v74;
  }

  else
  {
    v44 = 0;
  }

  v70[0] = a17;
  v70[1] = a18;
  v70[2] = a19;
  v70[3] = a20;
  if (*(&a14 + 1) | a14 | a15 | a16)
  {
    v45 = &v71;
  }

  else
  {
    v45 = 0;
  }

  v69[0] = a21;
  v69[1] = a22;
  v69[2] = a23;
  v69[3] = a24;
  if (a18 | a17 | a19 | a20)
  {
    v46 = v70;
  }

  else
  {
    v46 = 0;
  }

  v68[0] = a25;
  v68[1] = a26;
  v68[2] = a27;
  v68[3] = a28;
  if (a22 | a21 | a23 | a24)
  {
    v47 = v69;
  }

  else
  {
    v47 = 0;
  }

  v67[0] = a29;
  v67[1] = a30;
  v67[2] = a31;
  v67[3] = a32;
  if (a26 | a25 | a27 | a28)
  {
    v48 = v68;
  }

  else
  {
    v48 = 0;
  }

  v66[0] = a33;
  v66[1] = a34;
  v66[2] = a35;
  if (a30 | a29 | a31 | a32)
  {
    v49 = v67;
  }

  else
  {
    v49 = 0;
  }

  v66[3] = a36;
  v65[0] = a37;
  v65[1] = a38;
  if (a34 | a33 | a35 | a36)
  {
    v50 = v66;
  }

  else
  {
    v50 = 0;
  }

  v65[2] = a39;
  v65[3] = a40;
  if (a38 | a37 | a39 | a40)
  {
    v51 = v65;
  }

  else
  {
    v51 = 0;
  }

  v52 = v41;
  Mutable = _MDPlistContainerCreateMutable();
  _MDPlistContainerBeginContainer();
  _MDPlistContainerBeginArray();
  addContactInfoToContainer(Mutable, a2, a41, v61, v59, v44, v45, v46, v47, v48, v49, v50, v51);
  _MDPlistContainerAddNullValue();
  _MDPlistContainerEndArray();
  _MDPlistContainerEndContainer();
  v78 = 0uLL;
  v79 = 0;
  _MDPlistGetRootPlistObjectFromPlist();
  v74 = v78;
  v75 = v79;
  _MDPlistArrayGetPlistObjectAtIndex();
  v71 = v78;
  v72 = v79;
  _MDPlistArrayGetPlistObjectAtIndex();
  processOneCS(a1, -1, @"com.apple.MobileAddressBook", 0, 0x20000, v77, &v74, 0, 0, v52, 0, 0, 0, &v71);
  CFRelease(Mutable);
  v54 = *MEMORY[0x1E69E9840];
}

uint64_t si_removeRemapping(const void **a1)
{
  pthread_mutex_lock(&schlock);
  Mutable = *(*a1 + 297);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *(*a1 + 297) = Mutable;
  }

  CFArrayAppendValue(Mutable, a1[2]);
  pthread_mutex_unlock(&schlock);
  v3 = *(*a1 + 296);
  v6.length = CFArrayGetCount(v3);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v6, a1[2]);
  if (FirstIndexOfValue == -1)
  {
    return 0xFFFFFFFFLL;
  }

  CFArrayRemoveValueAtIndex(*(*a1 + 296), FirstIndexOfValue);
  return 0;
}

void recalculateTopK(uint64_t a1)
{
  if (*(a1 + 2072) == 1)
  {
    v49 = v1;
    v50 = v2;
    if ((*(a1 + 830) & 4) == 0)
    {
      v4 = fd_create_protected(*(a1 + 32), "tmp.topK.v2.mdplistc", 1538, 0);
      if (v4)
      {
        v5 = v4;
        v45 = 0;
        v46 = &v45;
        v47 = 0x2000000000;
        v6 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 500, 0, MEMORY[0x1E695E9E8]);
        v7 = *(a1 + 1392);
        v8 = *(a1 + 1384);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 0x40000000;
        v42 = __recalculateTopK_block_invoke;
        v43 = &unk_1E8191628;
        v44 = &v45;
        if (v7 && *(v7 + 8))
        {
          v9 = 0;
          while ((v42)(v41, *(*v7 + 8 * v9), 0))
          {
            if (++v9 >= *(v7 + 8))
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
LABEL_9:
          if (v8 && *(v8 + 8))
          {
            v10 = 0;
            do
            {
              if (!(v42)(v41, *(*v8 + 8 * v10), 1))
              {
                break;
              }

              ++v10;
            }

            while (v10 < *(v8 + 8));
          }
        }

        v11 = CFDictionaryCreateMutable(v6, 500, 0, 0);
        CFDictionaryApplyFunction(v46[3], heapifyDicts, v11);
        v12 = _MDPlistContainerCreateMutable();
        _MDPlistContainerBeginContainer();
        _MDPlistContainerBeginDictionary();
        CFDictionaryApplyFunction(v11, emitTerms, v12);
        _MDPlistContainerEndDictionary();
        _MDPlistContainerEndContainer();
        Length = _MDPlistContainerGetLength();
        Bytes = _MDPlistContainerGetBytes();
        fd_pwrite(v5, Bytes, Length, 0);
        fd_sync(v5, 0);
        CFRelease(v12);
        v15 = fd_create_protected(*(a1 + 32), "tmp.topK.v2.mdplistc", 0, 0);
        if (!v15)
        {
          _fd_unlink_with_origin(v5, 0);
LABEL_31:
          fd_release(v5);
          CFRelease(v46[3]);
          CFDictionaryApplyFunction(v11, pqDisposeApplier, 0);
          CFRelease(v11);
          _Block_object_dispose(&v45, 8);
          return;
        }

        v16 = v15;
        v17 = fd_mmap(v15);
        if (v17 != -1)
        {
          v18 = v17;
          v40[0] = v17;
          v40[1] = Length;
          v40[2] = 0;
          v39[0] = 1;
          v39[1] = v40;
          add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
          v20 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v39, 0, add_explicit + 1);
          v37 = HIDWORD(v20);
          v38 = v20;
          v36 = __PAIR64__(v21, v22);
          v23 = threadData[9 * v20 + 1] + 320 * HIDWORD(v20);
          *(v23 + 216) = 0;
          v24 = *(v23 + 312);
          v25 = *(v23 + 224);
          v26 = v23;
          if (v25)
          {
            v25(*(v23 + 288));
          }

          v35 = v38;
          v34 = v37;
          v33 = v36;
          if (_setjmp(v26))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v32 = 0;
              _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v32, 2u);
            }

            v26[78] = v24;
            CIOnThreadCleanUpReset(v33);
            dropThreadId(v35, 1, add_explicit + 1);
            CICleanUpReset(v35, HIDWORD(v33));
          }

          else
          {
            v27 = _MDPlistContainerCreateWithBytes();
            v28 = threadData[9 * v35 + 1] + 320 * v34;
            *(v28 + 312) = v24;
            v29 = *(v28 + 232);
            if (v29)
            {
              v29(*(v28 + 288));
            }

            dropThreadId(v35, 0, add_explicit + 1);
            if (v27)
            {
              fd_rename(v5, "topK.v2.mdplistc");
              v30 = _si_scheduler_suspend(*(a1 + 912), "SpotlightIndex.c", 8585);
              v31 = *(a1 + 664);
              *(a1 + 664) = v27;
              if (v31)
              {
                CFRelease(v31);
              }

              si_scheduler_resume(*(a1 + 912), v30, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 8589);
              goto LABEL_30;
            }
          }

          munmap(v18, Length);
        }

LABEL_30:
        fd_release(v16);
        goto LABEL_31;
      }
    }
  }
}

uint64_t __recalculateTopK_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 14496);
  if (v3)
  {
    v4 = CFRetain(v3);
    if (v4)
    {
      v5 = v4;
      v29[0] = _MDPlistContainerGetBytes();
      v29[1] = _MDPlistContainerGetLength();
      v29[2] = 0;
      v28[0] = 1;
      v28[1] = v29;
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v7 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v28, 0, add_explicit + 1);
      v26 = HIDWORD(v7);
      v27 = v7;
      v25 = __PAIR64__(v8, v9);
      v10 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
      *(v10 + 216) = 0;
      v11 = *(v10 + 312);
      v12 = *(v10 + 224);
      v13 = v10;
      if (v12)
      {
        v12(*(v10 + 288));
      }

      v24 = v27;
      v23 = v26;
      v22 = v25;
      if (_setjmp(v13))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v21 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v21, 2u);
        }

        v13[78] = v11;
        CIOnThreadCleanUpReset(v22);
        dropThreadId(v24, 1, add_explicit + 1);
        CICleanUpReset(v24, HIDWORD(v22));
      }

      else
      {
        v14 = *MEMORY[0x1E695E480];
        v15 = _MDPlistContainerCopyRootObject();
        v16 = v15;
        if (v15)
        {
          v17 = CFGetTypeID(v15);
          if (v17 == CFDictionaryGetTypeID())
          {
            CFDictionaryApplyFunction(v16, sumDicts, *(*(*(a1 + 32) + 8) + 24));
          }
        }

        v18 = threadData[9 * v24 + 1] + 320 * v23;
        *(v18 + 312) = v11;
        v19 = *(v18 + 232);
        if (v19)
        {
          v19(*(v18 + 288));
        }

        dropThreadId(v24, 0, add_explicit + 1);
        if (v16)
        {
          CFRelease(v16);
        }
      }

      CFRelease(v5);
    }
  }

  return 1;
}

void pqDisposeApplier(uint64_t a1, void **a2)
{
  free(*a2);

  free(a2);
}

void emitTerms(uint64_t a1, uint64_t *a2)
{
  if (!a1 || !a2)
  {
    v31 = __si_assert_copy_extra_661(-1);
    v32 = v31;
    v33 = "";
    if (v31)
    {
      v33 = v31;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 8465, "k && v", v33);
    free(v32);
    if (__valid_fs(-1))
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

  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a1);
  _MDPlistContainerAddObject();
  _MDPlistContainerBeginDictionary();
  v4 = *(a2 + 4);
  v5 = v4 - 1;
  if (v4 == 1)
  {
    goto LABEL_23;
  }

  v6 = 0;
  do
  {
    v7 = a2[2];
    if (v7 == 1)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v8 = *(*a2 + 16);
    v9 = *(*a2 + 24);
    v10 = *(*a2 + 16 * v7 - 16);
    *(*a2 + 16) = v10;
    v12 = a2[1];
    v11 = a2[2];
    a2[2] = v11 - 1;
    v13 = v12 >> 1;
    v14 = 1;
    v15 = 2;
    v16 = 3;
    while (1)
    {
      v17 = *a2;
      v18 = *(*a2 + 16 * v15);
      if (v16 >= v11)
      {
        v19 = xmmword_1C2BFA330;
        if (v15 >= v11)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v19 = *(v17 + 16 * v16);
      }

      if (v18.i32[2] < DWORD2(v10))
      {
        if (v19.i32[2] >= v18.i32[2])
        {
          v16 = v15;
        }

        v20 = vdup_n_s32(v19.i32[2] < v18.i32[2]);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v21, 0x3FuLL)), v19, v18);
        goto LABEL_16;
      }

      if (v19.i32[2] >= DWORD2(v10))
      {
        break;
      }

LABEL_16:
      _X14 = v17 + 32 * v16;
      __asm { PRFM            #1, [X14] }

      if (v16 != v14)
      {
        v15 = 2 * v16;
        *(v17 + 16 * v16) = v10;
        *(*a2 + 16 * v14) = v19;
        v14 = v16;
        v28 = v16 < v13;
        v16 = (2 * v16) | 1;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    _X8 = v17 + 32 * v14;
    __asm { PRFM            #1, [X8] }

LABEL_7:
    _MDPlistContainerAddObject();
    _MDPlistContainerAddInt32Value();
    CFRelease(v8);
    ++v6;
  }

  while (v6 != v5);
LABEL_23:
  _MDPlistContainerEndDictionary();

  CFRelease(v3);
}

void heapifyDicts(int a1, CFTypeRef cf, const void *a3)
{
  v5 = CFRetain(cf);
  v6 = CFRetain(a3);
  v7 = a1;
  if (!CFDictionaryContainsKey(v6, a1))
  {
    v8 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
    v9 = v8;
    v10 = 10000;
    if (a1 > 716189595)
    {
      if (a1 == 716189596 || a1 == 856881155)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (a1 == 510259174)
      {
LABEL_9:
        v8[1] = v10;
        v8[2] = 1;
        v11 = malloc_type_zone_malloc(queryZone, 16 * v10 + 32, 0xA4971684uLL);
        if (!v11)
        {
          _log_fault_for_malloc_failure();
        }

        *v9 = v11;
        *v11 = 0;
        v11[1] = 0;
        goto LABEL_12;
      }

      if (a1 == 679607404)
      {
        *(v8 + 1) = xmmword_1C2BF7A50;
        *v8 = 0;
LABEL_12:
        CFDictionaryAddValue(v6, v7, v9);
        goto LABEL_13;
      }
    }

    v10 = 50;
    goto LABEL_9;
  }

LABEL_13:
  Value = CFDictionaryGetValue(v6, v7);
  CFDictionaryApplyFunction(v5, heapifyDict, Value);
  CFRelease(v5);

  CFRelease(v6);
}

void heapifyDict(const void *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v5 = CFRetain(a1);
  v6 = a2;
  v7 = *(a3 + 16);
  if (v7 <= 20000)
  {
    v8 = *(a3 + 8);
    v9 = *(a3 + 16);
    if (v7 + 2 >= v8)
    {
      v10 = 2 * v8;
      if (v8 < 4)
      {
        v10 = 4;
      }

      *(a3 + 8) = v10;
      v11 = 16 * v10;
      if (*a3)
      {
        v12 = malloc_type_zone_realloc(queryZone, *a3, v11 + 32, 0xA1A7ADA0uLL);
      }

      else
      {
        v12 = malloc_type_zone_malloc(queryZone, v11 + 32, 0x566E289CuLL);
      }

      v44 = v12;
      if (!v12)
      {
        _log_fault_for_malloc_failure();
      }

      *a3 = v44;
      *v44 = 0;
      v44[1] = 0;
      v9 = *(a3 + 16);
    }

    *(a3 + 16) = v9 + 1;
    v45 = (*a3 + 16 * v7);
    *v45 = v5;
    v45[1] = v6;
    if (v7 >= 2)
    {
      do
      {
        v46 = *a3;
        v47 = v7 >> 1;
        if (*(*a3 + 16 * v7 + 8) > *(*a3 + 16 * (v7 >> 1) + 8))
        {
          break;
        }

        v48 = v46[v7];
        v46[v7] = v46[v47];
        *(*a3 + 16 * v47) = v48;
        v34 = v7 > 3;
        v7 = v7 >> 1;
      }

      while (v34);
    }

    return;
  }

  v13 = *a3;
  if (*a3)
  {
    v14 = v13[1].u32[2];
  }

  else
  {
    v14 = 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_48;
  }

  v15 = v13[1].i64[0];
  v16 = v13[v7 - 1];
  v13[1] = v16;
  v18 = *(a3 + 8);
  v17 = *(a3 + 16);
  *(a3 + 16) = v17 - 1;
  v19 = v18 >> 1;
  v20 = 3;
  v21 = 2;
  v22 = 1;
  while (1)
  {
    v23 = *a3;
    v24 = *(*a3 + 16 * v21);
    if (v20 >= v17)
    {
      v25 = xmmword_1C2BFA330;
      if (v21 >= v17)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v25 = v23[v20];
    }

    if (v24.i32[2] < v16.i32[2])
    {
      if (v25.i32[2] >= v24.i32[2])
      {
        v20 = v21;
      }

      v26 = vdup_n_s32(v25.i32[2] < v24.i32[2]);
      v27.i64[0] = v26.u32[0];
      v27.i64[1] = v26.u32[1];
      v25 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v27, 0x3FuLL)), v25, v24);
      goto LABEL_19;
    }

    if (v25.i32[2] >= v16.i32[2])
    {
      break;
    }

LABEL_19:
    _X13 = &v23[2 * v20];
    __asm { PRFM            #1, [X13] }

    if (v20 == v22)
    {
      goto LABEL_26;
    }

    v21 = 2 * v20;
    v23[v20] = v16;
    *(*a3 + 16 * v22) = v25;
    v22 = v20;
    v34 = v20 < v19;
    v20 = (2 * v20) | 1;
    if (!v34)
    {
      v23 = *a3;
      goto LABEL_26;
    }
  }

  _X8 = &v23[2 * v22];
  __asm { PRFM            #1, [X8] }

LABEL_26:
  v37 = *(a3 + 8);
  v38 = *(a3 + 16);
  if ((v38 + 2) >= v37)
  {
    v40 = 2 * v37;
    v34 = v37 < 4;
    v41 = 4;
    if (!v34)
    {
      v41 = v40;
    }

    *(a3 + 8) = v41;
    v42 = 16 * v41;
    if (v23)
    {
      v43 = malloc_type_zone_realloc(queryZone, v23, v42 + 32, 0xA1A7ADA0uLL);
    }

    else
    {
      v43 = malloc_type_zone_malloc(queryZone, v42 + 32, 0x566E289CuLL);
    }

    v49 = v43;
    if (!v43)
    {
      _log_fault_for_malloc_failure();
    }

    *a3 = v49;
    *v49 = 0;
    v49[1] = 0;
    v39 = *(a3 + 16);
    v23 = *a3;
  }

  else
  {
    v39 = *(a3 + 16);
  }

  *(a3 + 16) = v39 + 1;
  v50 = &v23[v38];
  v50->i64[0] = v5;
  v50->i64[1] = v6;
  if (v38 >= 2)
  {
    do
    {
      v51 = *a3;
      v52 = v38 >> 1;
      if (*(*a3 + 16 * v38 + 8) > *(*a3 + 16 * (v38 >> 1) + 8))
      {
        break;
      }

      v53 = v51[v38];
      v51[v38] = v51[v52];
      *(*a3 + 16 * v52) = v53;
      v34 = v38 > 3;
      v38 >>= 1;
    }

    while (v34);
  }

  v5 = v15;
LABEL_48:

  CFRelease(v5);
}

void sumDicts(const void *a1, const void *a2, CFTypeRef cf)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = CFRetain(cf);
  v6 = CFRetain(a1);
  IntValue = CFStringGetIntValue(v6);
  if (IntValue)
  {
    v8 = IntValue;
    v9 = CFRetain(a2);
    v10 = v9;
    if (v9)
    {
      v11 = CFGetTypeID(v9);
      if (v11 == CFDictionaryGetTypeID())
      {
        v12 = v8;
        if (!CFDictionaryContainsKey(v5, v8))
        {
          v13 = 50;
          if (v8 == 679607404)
          {
            v13 = 0;
          }

          if (v8 == 856881155)
          {
            v14 = 10000;
          }

          else
          {
            v14 = v13;
          }

          if (v8 == 716189596)
          {
            v15 = 10000;
          }

          else
          {
            v15 = v14;
          }

          if (v8 == 510259174)
          {
            v16 = 10000;
          }

          else
          {
            v16 = v15;
          }

          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v16, MEMORY[0x1E695E9D8], 0);
          CFDictionaryAddValue(v5, v12, Mutable);
          CFRelease(Mutable);
        }

        Value = CFDictionaryGetValue(v5, v12);
        CFDictionaryApplyFunction(v10, sumDict, Value);
      }
    }

    CFRelease(v10);
    CFRelease(v5);
    v19 = *MEMORY[0x1E69E9840];

    CFRelease(v6);
  }

  else
  {
    v20 = *__error();
    v21 = _SILogForLogForCategory(0);
    v22 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v21, (gSILogLevels[0] < 3)))
    {
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&dword_1C278D000, v21, v22, "*warn* Skipped deprecated topK bundleIndex %@", &v24, 0xCu);
    }

    *__error() = v20;
    v23 = *MEMORY[0x1E69E9840];
  }
}

void sumDict(const void *a1, const __CFNumber *a2, CFTypeRef cf)
{
  v5 = CFRetain(cf);
  Value = CFDictionaryGetValue(v5, a1);
  valuePtr = 0;
  CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v5, a1, (valuePtr + Value));
  CFRelease(v5);
}

uint64_t __mergeOverlay_block_invoke(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    result = _CIMoveDirectory(result, a2, a3, a4, a5);
  }

  v11 = *(a1 + 40);
  if (*(v11 + 8))
  {
    v12 = 0;
    do
    {
      result = CFSetContainsValue(*(a1 + 48), *(*(*v11 + 8 * v12) + 56));
      if (result)
      {
        result = _CIMoveDirectory(*(**(a1 + 40) + 8 * v12), a2, a3, a4, a5);
      }

      ++v12;
      v11 = *(a1 + 40);
    }

    while (v12 < *(v11 + 8));
  }

  v13 = *(a1 + 56);
  if (*(v13 + 8))
  {
    v14 = 0;
    do
    {
      result = CFSetContainsValue(*(a1 + 48), *(*(*v13 + 8 * v14) + 56));
      if (result)
      {
        result = _CIMoveDirectory(*(**(a1 + 56) + 8 * v14), a2, a3, a4, a5);
      }

      ++v14;
      v13 = *(a1 + 56);
    }

    while (v14 < *(v13 + 8));
  }

  return result;
}

void __mergeOverlay_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __mergeOverlay_block_invoke_3;
  v4[3] = &__block_descriptor_tmp_307;
  v3 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = v3;
  dispatch_barrier_async(v2, v4);
  dispatch_release(*(a1 + 32));
}

void __mergeOverlay_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __mergeOverlay_block_invoke_4;
  block[3] = &__block_descriptor_tmp_306;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  dispatch_barrier_async(v2, block);
  dispatch_release(*(a1 + 32));
}

void __mergeOverlay_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __mergeOverlay_block_invoke_5;
  v3[3] = &__block_descriptor_tmp_305;
  v4 = *(a1 + 40);
  dispatch_barrier_async(v2, v3);
  dispatch_release(*(a1 + 32));
}

void __mergeOverlay_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    pthread_rwlock_destroy((v2 + 240));
    pthread_rwlock_destroy((v2 + 8));
    free(*(v2 + 448));
    freeOverlayDir(v2 + 208);
    v3 = *(v2 + 456);
    if (v3)
    {
      do
      {
        v4 = *v3;
        free(v3);
        v3 = v4;
      }

      while (v4);
    }

    free(v2);
  }

  v5 = *(a1 + 40);

  CFRelease(v5);
}

uint64_t __InsertMergedIndex_block_invoke(uint64_t result)
{
  if (result)
  {
    v1 = atomic_load((result + 36));
    if ((v1 & 3) == 0 && (*(result + 15203) & 1) == 0)
    {
      return _CIFlushCache(result, 1, 0, 0, &__block_literal_global_826);
    }
  }

  return result;
}

ssize_t create_scan_touch_file(uint64_t a1, char a2)
{
  v3 = si_openat_protected(a1, "rescan_needed", 1538, 3);
  __buf = a2;
  result = write(v3, &__buf, 1uLL);
  if ((v3 & 0x80000000) == 0)
  {
    return close(v3);
  }

  return result;
}

uint64_t perform_victim_rename(unsigned int a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "%s.%s", "tmp.victim", (*(*a2 + 8 * a1) + 15208));
  result = ContentIndexChangePrefix(*(*a2 + 8 * a1));
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t perform_renumber_rename(uint64_t a1, void *a2, _DWORD *a3, int a4, char *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__str = 0u;
  v9 = fmtcheck(a5, "%i");
  snprintf(__str, 0xFFuLL, v9, a1);
  a3[8] = a1;
  pwrite(a4, a3, 0x210uLL, 0);
  fcntl(a4, 85);
  result = ContentIndexChangePrefix(*(*a2 + 8 * a1));
  v11 = *MEMORY[0x1E69E9840];
  return result;
}