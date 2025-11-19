uint64_t readDataForOneDocument(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, int a6, int64x2_t a7)
{
  v155 = *MEMORY[0x1E69E9840];
  if (*(a3 + 66))
  {
    i = a2 ^ 1u;
    goto LABEL_152;
  }

  *(a1 + 40) = (a5 & 0x40) == 0;
  if (*(a1 + 64) <= 0x3FFuLL)
  {
    *(a1 + 64) = 1024;
    v36 = a6;
    v37 = malloc_type_realloc(*(a1 + 56), 0x1000uLL, 0x100004052888210uLL);
    a6 = v36;
    *(a1 + 56) = v37;
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    v38 = __si_assert_copy_extra_7645(0, -1);
    v31 = v38;
    v39 = "";
    if (v38)
    {
      v39 = v38;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 3625, "readBuffer", v39);
    goto LABEL_197;
  }

  v14 = *(a3 + 216);
  v15 = *(a1 + 72);
  *(a1 + 32) = v15;
  a7.i64[0] = 0xFFFFFFFFLL;
  *(a1 + 80) = 0xFFFFFFFFLL;
  if (v15 && *(*(a1 + 56) + 4 * v15 - 4))
  {
    v90 = __si_assert_copy_extra_7645(0, -1);
    v31 = v90;
    v91 = "";
    if (v90)
    {
      v91 = v90;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1119, "buffer->ints[buffer->intCount-1]==0", v91);
    goto LABEL_197;
  }

  v16 = *(a3 + 8);
  v144 = v16;
  if (v16 - 65532 > 0xFFFFFFFFFFFEFFFELL || *(a3 + 32) != 0)
  {
    if ((a5 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_58:
    v20 = v16;
    if ((a5 & 0x40) == 0)
    {
      goto LABEL_59;
    }

    v45 = a6;
    v46 = readCompactPosition(a3, &v144);
    v47 = v46;
    if (a2)
    {
      if (v46 != -1)
      {
        while (1)
        {
          v48 = readCompactPosition(a3, &v144);
          if (v48 == -1)
          {
            break;
          }

          i = v48;
          if (!v48)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_151;
    }

    if (v46 != -1)
    {
      if (_addToWPCBuffer(a1, v46, 3732))
      {
        if (v47)
        {
          LODWORD(i) = 0;
        }

        else
        {
          LODWORD(i) = -1;
        }

        while (1)
        {
          v49 = readCompactPosition(a3, &v144);
          if (v49 == -1)
          {
            goto LABEL_151;
          }

          v50 = v49;
          if (!_addToWPCBuffer(a1, v49, 3752))
          {
            break;
          }

          i = (i + 1);
          if (!v50)
          {
            goto LABEL_123;
          }
        }
      }

LABEL_149:
      if ((v45 & 0x80000000) == 0)
      {
        touch_crash_state(v45);
      }
    }

LABEL_151:
    i = 0xFFFFFFFFLL;
    goto LABEL_152;
  }

  v40 = a6;
  if (slideBuffer(&v144, a3) == -1)
  {
    goto LABEL_151;
  }

  v16 = v144;
  a6 = v40;
  if ((a5 & 4) != 0)
  {
    goto LABEL_58;
  }

LABEL_13:
  if ((a5 & 0x40) != 0)
  {
    v92 = __si_assert_copy_extra_7645(0, -1);
    v31 = v92;
    v93 = "";
    if (v92)
    {
      v93 = v92;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 3642, "!hasCompressedPositions", v93);
    goto LABEL_197;
  }

  v18 = *(a3 + 48);
  if (v18)
  {
    v19 = v16;
    if (*(v13 + v16))
    {
      if ((a5 & 8) == 0)
      {
LABEL_17:
        v20 = v19;
        goto LABEL_59;
      }
    }

    else
    {
      v24 = a6;
      v25 = *(a3 + 40);
      if (resetReadPosContext(v18, a3, 0) == -1)
      {
        goto LABEL_151;
      }

      *(a3 + 40) = v25;
      v13 = *(a3 + 24);
      v19 = *(a3 + 8);
      v144 = v19;
      a6 = v24;
      if ((a5 & 8) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v19 = v16;
    if ((a5 & 8) == 0)
    {
      goto LABEL_17;
    }
  }

  v20 = v19 + 1;
  v21 = v13 + v19;
  v22 = *(v13 + v19);
  if (*(v13 + v19) < 0)
  {
    if (v22 > 0xBF)
    {
      if (v22 > 0xDF)
      {
        if (v22 > 0xEF)
        {
          v22 = *(v13 + v20);
          v20 = v19 + 5;
        }

        else
        {
          v22 = ((v22 & 0xF) << 24) | (*(v13 + v20) << 16) | (*(v21 + 2) << 8) | *(v21 + 3);
          v20 = v19 + 4;
        }
      }

      else
      {
        v22 = ((v22 & 0x1F) << 16) | (*(v13 + v20) << 8) | *(v21 + 2);
        v20 = v19 + 3;
      }
    }

    else
    {
      v23 = *(v13 + v20) | ((v22 & 0x3F) << 8);
      v20 = v19 + 2;
      v22 = v23;
    }
  }

  v144 = v20;
  if (!v22)
  {
    v27 = __si_assert_copy_extra_7645(*a3, -1);
    v28 = v27;
    v29 = "";
    if (v27)
    {
      v29 = v27;
    }

    si_analytics_log_2752("%s:%u: failure log '%s' %s Unexpected 0 delta at %ld/%ld", "CIMerging.c", 3662, "docIdDelta", v29, v16, v20);
    free(v28);
    goto LABEL_151;
  }

  v26 = *(a3 + 56);
  if (v26)
  {
    if (v26 > v22 && v26 - v22 == a4)
    {
      *(a3 + 56) = a4;
      goto LABEL_40;
    }
  }

  else
  {
    *(a3 + 56) = v22;
    v26 = v22;
  }

  if (v26 != a4)
  {
    if ((*(a3 + 65) & 1) == 0)
    {
      v33 = *__error();
      v34 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a3 + 56);
        *buf = 136316162;
        *v148 = "readDataForOneDocument";
        *&v148[8] = 1024;
        *&v148[10] = 3675;
        v149 = 1024;
        v150 = a4;
        v151 = 1024;
        v152 = v35;
        v153 = 1024;
        v154 = v22;
        _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: missing positions for doc:%d %d %d", buf, 0x24u);
      }

      *__error() = v33;
      *(a3 + 65) = 1;
    }

    if ((a2 & 1) != 0 || _addToWPCBuffer(a1, 1u, 3680) && _addToWPCBuffer(a1, 0, 3681))
    {
      i = 0;
      --v144;
      goto LABEL_123;
    }

    goto LABEL_151;
  }

LABEL_40:
  if (!a4)
  {
    v30 = __si_assert_copy_extra_7645(0, -1);
    v31 = v30;
    v32 = "";
    if (v30)
    {
      v32 = v30;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 3687, "context->docId", v32);
    goto LABEL_197;
  }

LABEL_59:
  v41 = v20 + 1;
  v42 = v13 + v20;
  v43 = *(v13 + v20);
  if (*(v13 + v20) < 0)
  {
    if (v43 > 0xBF)
    {
      if (v43 > 0xDF)
      {
        if (v43 > 0xEF)
        {
          v43 = *(v13 + v41);
          v41 = v20 + 5;
        }

        else
        {
          v43 = ((v43 & 0xF) << 24) | (*(v13 + v41) << 16) | (*(v42 + 2) << 8) | *(v42 + 3);
          v41 = v20 + 4;
        }
      }

      else
      {
        v43 = ((v43 & 0x1F) << 16) | (*(v13 + v41) << 8) | *(v42 + 2);
        v41 = v20 + 3;
      }
    }

    else
    {
      v44 = *(v13 + v41) | ((v43 & 0x3F) << 8);
      v41 = v20 + 2;
      v43 = v44;
    }
  }

  v144 = v41;
  if ((a2 & 1) == 0 && v43)
  {
    v45 = a6;
    if (!_addToWPCBuffer(a1, v43, 3779))
    {
      if ((v45 & 0x80000000) == 0)
      {
        v79 = time(0);
        write_out_crash_state(0, 0, 0, v79, v45, 0, 0);
      }

      goto LABEL_151;
    }

    v51 = -1;
    v52 = &bucketMagnitudes;
    do
    {
      v53 = *v52++;
      ++v51;
    }

    while (v53 < v43);
    ++*(v14 + 8 * v51 + 120);
    for (i = 1; ; i = (i + 1))
    {
      v54 = v144;
      if (v144 - 65532 <= 0xFFFFFFFFFFFEFFFELL && *(a3 + 32) == 0)
      {
        if (slideBuffer(&v144, a3) == -1)
        {
          goto LABEL_151;
        }

        v54 = v144;
      }

      v56 = v54 + 1;
      v57 = v13 + v54;
      v58 = *(v13 + v54);
      if (*(v13 + v54) < 0)
      {
        if (v58 > 0xBF)
        {
          if (v58 > 0xDF)
          {
            if (v58 > 0xEF)
            {
              v58 = *(v13 + v56);
              v56 = v54 + 5;
            }

            else
            {
              v58 = ((v58 & 0xF) << 24) | (*(v13 + v56) << 16) | (*(v57 + 2) << 8) | *(v57 + 3);
              v56 = v54 + 4;
            }
          }

          else
          {
            v58 = ((v58 & 0x1F) << 16) | (*(v13 + v56) << 8) | *(v57 + 2);
            v56 = v54 + 3;
          }
        }

        else
        {
          v59 = *(v13 + v56) | ((v58 & 0x3F) << 8);
          v56 = v54 + 2;
          v58 = v59;
        }
      }

      v144 = v56;
      if (!v58)
      {
        break;
      }

      v60 = -1;
      v61 = &bucketMagnitudes;
      do
      {
        v62 = *v61++;
        ++v60;
      }

      while (v62 < v58);
      ++*(v14 + 8 * v60);
      if (!_addToWPCBuffer(a1, v58, 3807))
      {
        goto LABEL_151;
      }
    }

    if (_addToWPCBuffer(a1, 0, 3814))
    {
      v80 = -1;
      v81 = &bucketMagnitudes;
      do
      {
        v82 = *v81++;
        ++v80;
      }

      while (v82 < i);
      ++*(v14 + 8 * v80 + 240);
      goto LABEL_123;
    }

    goto LABEL_149;
  }

  do
  {
    v63 = v41 - 65532 <= 0xFFFFFFFFFFFEFFFELL && *(a3 + 32) == 0;
    v64 = v41;
    if (v63)
    {
      if (slideBuffer(&v144, a3) == -1)
      {
        goto LABEL_151;
      }

      v64 = v144;
    }

    v41 = v64 + 1;
    v65 = v13 + v64;
    v66 = *(v13 + v64);
    if (*(v13 + v64) < 0)
    {
      if (v66 > 0xBF)
      {
        if (v66 > 0xDF)
        {
          if (v66 > 0xEF)
          {
            v66 = *(v13 + v41);
            v41 = v64 + 5;
          }

          else
          {
            v66 = ((v66 & 0xF) << 24) | (*(v13 + v41) << 16) | (*(v65 + 2) << 8) | *(v65 + 3);
            v41 = v64 + 4;
          }
        }

        else
        {
          v66 = ((v66 & 0x1F) << 16) | (*(v13 + v41) << 8) | *(v65 + 2);
          v41 = v64 + 3;
        }
      }

      else
      {
        v67 = *(v13 + v41) | ((v66 & 0x3F) << 8);
        v41 = v64 + 2;
        v66 = v67;
      }
    }

    v144 = v41;
  }

  while (v66);
  i = 0;
LABEL_123:
  if ((*(a3 + 32) - 1) < *(a3 + 8))
  {
    v94 = __si_assert_copy_extra_7645(0, -1);
    v95 = v94;
    v96 = "";
    if (v94)
    {
      v96 = v94;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 3825, "context->innerOffset < context->readBuffer.mappedSize || context->readBuffer.mappedSize==0", v96);
LABEL_205:
    free(v95);
    if (__valid_fs(-1))
    {
      v120 = 2989;
    }

    else
    {
      v120 = 3072;
    }

    *v120 = -559038737;
    abort();
  }

  *(a3 + 8) = v144;
  v68 = *(a1 + 72);
  if (v68 && *(*(a1 + 56) + 4 * v68 - 4))
  {
    v115 = __si_assert_copy_extra_7645(0, -1);
    v31 = v115;
    v116 = "";
    if (v115)
    {
      v116 = v115;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1128, "buffer->intCount==0 ||buffer->ints[buffer->intCount-1]==0", v116);
LABEL_197:
    v114 = v31;
    goto LABEL_198;
  }

  if ((*(a1 + 80) - 1) <= 0xFFFFFFFD)
  {
    v97 = __si_assert_copy_extra_7645(0, -1);
    v95 = v97;
    v98 = "";
    if (v97)
    {
      v98 = v97;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1129, "buffer->lastPosition == (uint32_t)-1 || buffer->lastPosition == 0", v98);
    goto LABEL_205;
  }

  if ((a5 & 0x40) != 0)
  {
    goto LABEL_157;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v118 = __si_assert_copy_extra_7645(0, -1);
    v95 = v118;
    v119 = "";
    if (v118)
    {
      v119 = v118;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1131, "ctx->flip", v119);
    goto LABEL_205;
  }

  if (v68 < 3)
  {
    goto LABEL_152;
  }

  v69 = *(a1 + 32);
  if (v68 <= v69)
  {
    goto LABEL_157;
  }

  v70 = *(a1 + 56);
  v71 = *(v70 + 4 * v69);
  if (v71 >> 27)
  {
    v121 = __si_assert_copy_extra_7645(0, -1);
    v95 = v121;
    v122 = "";
    if (v121)
    {
      v122 = v121;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1138, "first < 1<<27", v122);
    goto LABEL_205;
  }

  v72 = v68 - 2;
  if (v68 - 2 > v69)
  {
    v73 = v69 + 1;
    if (v69 + 1 < v72)
    {
      v74 = *(v70 + 4 * v72);
      if (v74 > v71)
      {
        si_analytics_log_2752("Unexpected offsets f:%d, l:%d h:%d, li:%ld hi:%ld, ds:%ld, ic:%ld, is:%ld", v71, *(v70 + 4 * v73), v74, v69 + 1, v68 - 2, v69, *(a1 + 72), *(a1 + 64));
        v70 = *(a1 + 56);
        v72 = v68 - 3;
      }
    }

    if (v73 < v72)
    {
      while (1)
      {
        v75 = *(v70 + 4 * v73);
        *(v70 + 4 * v73) = *(v70 + 4 * v72);
        *(v70 + 4 * v72) = v75;
        v76 = *(v70 + 4 * v73);
        if (v76 >> 27)
        {
          break;
        }

        if (v75 >> 27)
        {
          v103 = __si_assert_copy_extra_7645(0, -1);
          v104 = v103;
          v105 = "";
          if (v103)
          {
            v105 = v103;
          }

          v106 = *(a1 + 56);
          v137 = *(a1 + 72);
          v141 = *(a1 + 64);
          v133 = *(a1 + 32);
          v129 = *(v106 + 4 * v72);
          v124 = *(v106 + 4 * v73);
          __message_assert("%s:%u: failed assertion '%s' %s Unexpected offsets f:%d, l:%d h:%d, li:%ld hi:%ld, ds:%ld, ic:%ld, is:%ld", "CIMerging.c", 1165, "buffer->ints[highIndex] < (1<<27)", v105, v71);
LABEL_186:
          free(v104);
          if (__valid_fs(-1))
          {
            v110 = 2989;
          }

          else
          {
            v110 = 3072;
          }

          *v110 = -559038737;
          abort();
        }

        v77 = v76 + v75;
        v78 = v71 - v77;
        if (v71 <= v77)
        {
          v107 = __si_assert_copy_extra_7645(0, -1);
          v104 = v107;
          v108 = "";
          if (v107)
          {
            v108 = v107;
          }

          v109 = *(a1 + 56);
          v138 = *(a1 + 72);
          v142 = *(a1 + 64);
          v134 = *(a1 + 32);
          v130 = *(v109 + 4 * v72);
          v125 = *(v109 + 4 * v73);
          __message_assert("%s:%u: failed assertion '%s' %s Unexpected offsets f:%d, l:%d h:%d, li:%ld hi:%ld, ds:%ld, ic:%ld, is:%ld", "CIMerging.c", 1169, "firstOffset > buffer->ints[lowIndex] + buffer->ints[highIndex]", v108, v71);
          goto LABEL_186;
        }

        if (v78 >> 27)
        {
          v111 = __si_assert_copy_extra_7645(0, -1);
          v100 = v111;
          v112 = "";
          if (v111)
          {
            v112 = v111;
          }

          v113 = *(a1 + 56);
          v139 = *(a1 + 72);
          v143 = *(a1 + 64);
          v135 = *(a1 + 32);
          v131 = *(v113 + 4 * v72);
          v126 = *(v113 + 4 * v73);
          __message_assert("%s:%u: failed assertion '%s' %s Unexpected computed offset f:%d, l:%d h:%d, li:%ld hi:%ld, ds:%ld, ic:%ld, is:%ld", "CIMerging.c", 1174, "firstOffset < (1<<27)", v112, v78);
          goto LABEL_193;
        }

        ++v73;
        --v72;
        v71 = v71 - v77;
        if (v73 >= v72)
        {
          goto LABEL_154;
        }
      }

      v99 = __si_assert_copy_extra_7645(0, -1);
      v100 = v99;
      v101 = "";
      if (v99)
      {
        v101 = v99;
      }

      v102 = *(a1 + 56);
      v136 = *(a1 + 72);
      v140 = *(a1 + 64);
      v132 = *(a1 + 32);
      v128 = *(v102 + 4 * v72);
      v123 = *(v102 + 4 * v73);
      __message_assert("%s:%u: failed assertion '%s' %s Unexpected offsets f:%d, l:%d h:%d, li:%ld hi:%ld, ds:%ld, ic:%ld, is:%ld", "CIMerging.c", 1164, "buffer->ints[lowIndex] < (1<<27)", v101, v71);
LABEL_193:
      v114 = v100;
LABEL_198:
      free(v114);
      if (__valid_fs(-1))
      {
        v117 = 2989;
      }

      else
      {
        v117 = 3072;
      }

      *v117 = -559038737;
      abort();
    }

    LODWORD(v78) = v71;
LABEL_154:
    if (v73 == v72)
    {
      LODWORD(v78) = v78 - *(v70 + 4 * v72);
      if (v78 >> 27)
      {
        v104 = __si_assert_copy_extra_7645(0, -1);
        v127 = *(*(a1 + 56) + 4 * v72);
        __message_assert("%s:%u: failed assertion '%s' %s Unexpected first offset %d, %d, %ld");
        goto LABEL_186;
      }
    }

    *(v70 + 4 * *(a1 + 32)) = v78;
    v68 = *(a1 + 72);
  }

LABEL_157:
  if (v68 >= 0x1C)
  {
    v85 = *(a1 + 56);
    v145 = v68;
    v146 = v85;
    while (1)
    {
      v86 = v146;
      Packing = findPacking(v68, v146, a7);
      if (Packing >= 16)
      {
        break;
      }

      *buf = packOneWord(&v145, &v146, Packing);
      writeWindowWriteBytes(a1, buf, 4uLL);
      v68 = v145;
      if (v145 <= 27)
      {
        goto LABEL_164;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v88 = *v86;
      v89 = *(a1 + 72) - v68;
      *buf = 67109376;
      *v148 = v88;
      *&v148[4] = 2048;
      *&v148[6] = v89;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "No packing found for %u at index %lu", buf, 0x12u);
    }

LABEL_164:
    memmove(*(a1 + 56), (*(a1 + 56) + 4 * *(a1 + 72) - 4 * v68), 4 * v68);
    *(a1 + 72) = v68;
  }

LABEL_152:
  v83 = *MEMORY[0x1E69E9840];
  return i;
}

unint64_t termIdStoreSetNext(uint64_t a1, unsigned int a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v9 = __si_assert_copy_extra_7645(0, -1);
    v10 = v9;
    v11 = "";
    if (v9)
    {
      v11 = v9;
    }

    __message_assert("%s:%u: failed assertion '%s' %s write invalid offset %llu", "TermIdStore.h", 97, "offset <= OFFSET_VALUE_MASK", v11, a3);
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

  v5 = 8 * a2;
  v6 = v5 / *MEMORY[0x1E69E9AC8];
  v7 = *(a1 + 4432);
  if (v7 <= v6)
  {
    if (v7)
    {
      v13 = *(a1 + 4432);
    }

    else
    {
      v13 = 32;
    }

    while (1)
    {
      v13 *= 2;
      if (v13 > v6)
      {
        break;
      }

      if (v13 <= v7)
      {
        v14 = __si_assert_copy_extra_7645(0, -1);
        v15 = v14;
        v16 = "";
        if (v14)
        {
          v16 = v14;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v16);
        goto LABEL_18;
      }
    }

    v18 = *(a1 + 4440);
    v19 = *MEMORY[0x1E695E480];
    if (v18)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v19, v13, v18);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v19, v13);
    }

    v21 = MutableCopy;
    if (!MutableCopy)
    {
      v23 = __si_assert_copy_extra_7645(0, -1);
      v15 = v23;
      v24 = "";
      if (v23)
      {
        v24 = v23;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v24);
LABEL_18:
      free(v15);
      if (__valid_fs(-1))
      {
        v17 = 2989;
      }

      else
      {
        v17 = 3072;
      }

      *v17 = -559038737;
      abort();
    }

    CFBitVectorSetCount(MutableCopy, v13);
    v22 = *(a1 + 4440);
    if (v22)
    {
      CFRelease(v22);
    }

    *(a1 + 4440) = v21;
    *(a1 + 4432) = v13;
  }

  if (*(a1 + 4424) <= v6)
  {
    *(a1 + 4424) = v6 + 1;
  }

  CFBitVectorSetBitAtIndex(*(a1 + 4440), v6, 1u);
  *storageResolvePtr(a1, v5, 8, 1) = a3;
  return a3;
}

void finishTermForWPCBuffer(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 24))
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      v13 = *(a1 + 56);
      v14 = v2;
      v3 = malloc_type_malloc(4 * v2 + 4, 0x100004052888210uLL);
      v5 = 0;
      v6 = v2;
      while (1)
      {
        v7 = v13;
        Packing = findPacking(v6, v13, v4);
        if (Packing >= 0x10)
        {
          break;
        }

        v9 = packOneWord(&v14, &v13, Packing);
        v10 = v5 + 1;
        *&v3[4 * v5] = v9;
        v6 = v14;
        ++v5;
        if (v14 <= 0)
        {
          goto LABEL_10;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v12 = *v7;
        *buf = 67109376;
        v16 = v12;
        v17 = 2048;
        v18 = v2 - v6;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "No packing found for %u at index %lu", buf, 0x12u);
      }

      v10 = v5;
LABEL_10:
      writeWindowWriteBytes(a1, v3, 4 * v10);
      free(v3);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void destroyWPCOccurenceCountMap(const void **a1)
{
  v2 = *a1;
  if (!v2)
  {
    v3 = __si_assert_copy_extra_7645(0, -1);
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1041, "* occurrenceCountMap != ((void*)0)", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      v6 = 2989;
    }

    else
    {
      v6 = 3072;
    }

    *v6 = -559038737;
    abort();
  }

  CFRelease(v2);
  *a1 = 0;
}

char *writeWindowFinalize(uint64_t a1)
{
  result = *(a1 + 8);
  if (result != -1)
  {
    sync_invalidate_mapping(result, *(*a1 + 8) - *(a1 + 16));
    result = munmap(*(a1 + 8), 0x100000uLL);
    *(a1 + 8) = -1;
  }

  return result;
}

void finalizeReadBuffer(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (v2)
    {
      munmap(v2, v3);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    free(v2);
  }

  *a1 = -1;
}

uint64_t __mergeIndexData_block_invoke_22(uint64_t a1, uint64_t a2, int a3)
{
  v117 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    goto LABEL_24;
  }

  v3 = a2;
  v5 = 0;
  v6 = a3;
  v7 = a2;
  v8 = a3;
  do
  {
    v9 = *v7;
    v7 += 8;
    if (v9)
    {
      ++v5;
    }

    --v8;
  }

  while (v8);
  if (!v5)
  {
LABEL_24:
    v22 = 0;
    goto LABEL_108;
  }

  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 52);
  if (v12 == 1)
  {
    v23 = *(*(*(a1 + 40) + 8) + 24);
    v24 = v23 + 1;
    if (*(a1 + 152) <= v23 + 1)
    {
      _os_feature_enabled_impl();
      si_analytics_log_2752("Bad term id (path) encountered during merge ve:%d");
      goto LABEL_66;
    }

    if (v23 >= *(*(*(a1 + 72) + 8) + 24))
    {
      while (1)
      {
        v25 = *v3;
        v3 += 8;
        if (v25)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_82;
        }
      }

      v45 = *storageResolvePtr(*(a1 + 112) + 4984, 8 * (v23 + 1), 8, 1);
      if (v45)
      {
        v22 = directoryStoreMakePathWithPostingsOffset(*(*(a1 + 112) + 4928), (v10 >> 3) & 0xFFFFFFF, v11, v45, *(a1 + 120)) ^ 1;
        *(*(*(a1 + 40) + 8) + 24) = v24;
        goto LABEL_108;
      }

      *(*(*(a1 + 40) + 8) + 24) = v24;
LABEL_82:
      v22 = directoryStoreMakePathWithPostingsOffset(*(*(a1 + 112) + 4928), (v10 >> 3) & 0xFFFFFFF, v11, 0, *(a1 + 120)) ^ 1;
      goto LABEL_108;
    }

    v90 = __si_assert_copy_extra_7645(0, -1);
    v91 = v90;
    v92 = "";
    if (v90)
    {
      v92 = v90;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 3081, "lastId>=lastStringId", v92);
LABEL_165:
    free(v91);
    if (__valid_fs(-1))
    {
      v95 = 2989;
    }

    else
    {
      v95 = 3072;
    }

    *v95 = -559038737;
    abort();
  }

  if (!v12)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v13 = (*(*(*(a1 + 40) + 8) + 24) + 1);
    if (*(a1 + 152) <= v13)
    {
      _os_feature_enabled_impl();
      si_analytics_log_2752("Bad term id encountered during merge ve:%d");
      goto LABEL_66;
    }

    v14 = *(a1 + 88);
    v15 = *(*(*(a1 + 48) + 8) + 24);
    Value = CFDictionaryGetValue(*(a1 + 96), (*(*(*(a1 + 40) + 8) + 24) + 1));
    if (!Value)
    {
      goto LABEL_102;
    }

    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 0x40000000;
    v110 = __realizeTerm_block_invoke;
    v111 = &__block_descriptor_tmp_90;
    v17 = v10 & 0x7FFFFFFF;
    v112 = v14;
    v113 = v15;
    v115 = v13;
    v114 = Value;
    if ((v10 & 0x7FFFFFFF) > 0x413)
    {
LABEL_102:
      *(*(a1 + 104) + 16) = *storageResolvePtr(*(a1 + 112) + 4984, 8 * v13, 8, 1);
      *(*(a1 + 104) + 24) = *storageResolvePtr(*(a1 + 112) + 9704, 8 * v13, 8, 1);
      if (!*storageResolvePtr(*(a1 + 112) + 4984, 8 * v13, 8, 1) || bt_mergeTerm(v10, v11, *(a1 + 104)))
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          v59 = v13 & -*MEMORY[0x1E69E9AC8];
          v60 = *(*(*(a1 + 56) + 8) + 24);
          v61 = *(a1 + 112);
          storageInvalidate(v61 + 4984, 8 * v60, 8 * (v59 - v60));
          v62 = *(*(*(a1 + 56) + 8) + 24);
          v63 = *(a1 + 112);
          storageInvalidate(v63 + 9704, 8 * v62, 8 * (v59 - v62));
          *(*(*(a1 + 56) + 8) + 24) = v59;
          if (*(*(a1 + 112) + 488) > 0x10000uLL)
          {
            v64 = (*(*(a1 + 112) + 488) - 0x10000) & ~*MEMORY[0x1E69E9AB8];
            v65 = *(*(*(a1 + 64) + 8) + 24);
            storageInvalidate(*(a1 + 112) + 256, v65, v64 - v65);
            *(*(*(a1 + 64) + 8) + 24) = v64;
          }
        }

        v22 = 0;
        *(*(*(a1 + 40) + 8) + 24) = v13;
        goto LABEL_108;
      }

LABEL_66:
      v22 = 1;
      goto LABEL_108;
    }

    bzero(buf, 0x415uLL);
    if (!v17)
    {
      goto LABEL_67;
    }

    for (i = 0; i != v17; ++i)
    {
      buf[i] = tcmr[*(v11 + i)];
    }

    buf[v17] = 0;
    if (v17 == 1 || buf[0] - 1 > 3)
    {
LABEL_67:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_68;
    }

    if (buf[0] > 2u)
    {
      if (buf[0] == 3)
      {
        v20 = 32;
      }

      else
      {
        v20 = 64;
      }
    }

    else
    {
      if (buf[0] == 1)
      {
        v19 = 1;
        if (buf[1] == 2)
        {
          v19 = 2;
        }

        v20 = 4 * (buf[1] == 2);
        if (buf[(v17 - 1)] == 1 && buf[(v17 - 2)] == 1)
        {
          v21 = 1;
          goto LABEL_68;
        }

        v71 = v19;
        goto LABEL_122;
      }

      v20 = 16;
    }

    v71 = 1;
LABEL_122:
    v72 = v71 + 1;
    v21 = buf[v71];
    if (buf[v71] < 0)
    {
      v19 = v71 + 2;
      v73 = buf[v72];
      v74 = buf[v72];
      if (v73 < 0)
      {
        v75 = v71 + 3;
        v76 = buf[v19];
        v77 = v76;
        if (v76 < 0)
        {
          v19 = v71 | 4;
          v79 = buf[v75];
          v80 = buf[v75];
          if (v79 < 0)
          {
            v89 = buf[v19];
            if (v89 < 0)
            {
              v96 = __si_assert_copy_extra_332();
              __message_assert_409(v96, v97, v98, v99, v100, v101, v102, v103, "VIntUtils.h");
              free(v96);
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

            v19 = v71 + 5;
            v81 = ((v80 & 0x7F) << 21) | (v89 << 28) | ((v77 & 0x7F) << 14);
          }

          else
          {
            v81 = ((v77 & 0x7F) << 14) | (v80 << 21);
          }

          v78 = v81 & 0xFFFFC000 | ((v74 & 0x7F) << 7) | v21 & 0x7F;
        }

        else
        {
          v78 = ((v74 & 0x7F) << 7) | (v76 << 14) | (v21 & 0x7F);
          v19 = v75;
        }

        v21 = v78;
      }

      else
      {
        v21 = v21 & 0x7F | (v74 << 7);
      }
    }

    else
    {
      v19 = v71 + 1;
    }

LABEL_68:
    v46 = &buf[v19];
    v47 = &buf[v17 - 1];
    v48 = *v47;
    if (v48 == 3)
    {
      v49 = v20 | 2;
    }

    else
    {
      v49 = v20;
    }

    if (v48 <= 5)
    {
      if (v47 <= v46)
      {
        if (v48 == 1)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v50 = v17 - v19;
        v51 = 1;
        v52 = &buf[v17 - 1];
        while (1)
        {
          v53 = *--v52;
          if (v53 > 5)
          {
            break;
          }

          ++v51;
          v47 = v52;
          if (v52 <= v46)
          {
            v47 = &buf[v19];
            goto LABEL_97;
          }
        }

        v50 = v51;
LABEL_97:
        if (*v47 == 1)
        {
          if (v50 != 1)
          {
            if (v21 || (v68 = v50 - 3, v50 < 3) || v47[2] != 5)
            {
              v70 = v47;
            }

            else
            {
              v69 = v47[1];
              if (v69 > 3)
              {
                if (v69 == 4)
                {
                  v49 = v49 | 0x200;
                }

                else if (v69 == 5)
                {
                  v49 = v49 | 0x400;
                }
              }

              else if (v69 == 2)
              {
                v49 = v49 | 0x80;
              }

              else if (v69 == 3)
              {
                v49 = v49 | 0x100;
              }

              v70 = v47 + 3;
              v50 = v68;
            }

            if (v50 >= 2)
            {
              v82 = v70[1];
              v83 = v82 - 4;
              if (v21 <= 1)
              {
                v84 = 1;
              }

              else
              {
                v84 = v21;
              }

              v85 = v49 | 8;
              if (v82 != 2)
              {
                v85 = v49;
              }

              v86 = v82 == 1;
              if (v82 == 1)
              {
                v87 = v49;
              }

              else
              {
                v87 = v85;
              }

              if (v86)
              {
                v88 = v84;
              }

              else
              {
                v88 = v21;
              }

              if (v83 >= 2)
              {
                v49 = v87;
              }

              else
              {
                v49 = v49 | 1;
              }

              if (v83 >= 2)
              {
                v21 = v88;
              }

              else
              {
                v21 = v84;
              }
            }

            goto LABEL_100;
          }

LABEL_99:
          v49 = v49 | 1;
LABEL_100:
          *v47 = 0;
          v110(v109, v46, v47 - v46, v21, v49);
          goto LABEL_102;
        }
      }
    }

    __realizeTerm_block_invoke(v109, v46, v17 - v19, v21, v49);
    goto LABEL_102;
  }

  v26 = *(a2 + 16);
  v108 = *(a2 + 24);
  v22 = 0;
  v106 = *(a2 + 32);
  v107 = *(a2 + 36);
  v27 = *(a2 + 40);
  v28 = *(a2 + 44);
  v105 = *(a2 + 48);
  v29 = *(a2 + 50);
  if (v12 > 4 || !*(*(a1 + 112) + 4912))
  {
    goto LABEL_108;
  }

  v30 = setCrashStateTarget(1);
  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    v31 = _SILogForLogForCategory(0);
    v32 = *(a1 + 128);
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v33 = v31;
      if (os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C278D000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v32, "vectorIndexInsertForMerge", "Start", buf, 2u);
      }
    }

    v34 = *MEMORY[0x1E695E480];
    v35 = SIUINT32SetCreate();
    if (*(a1 + 136) >= 1)
    {
      v36 = 0;
      do
      {
        SIValueSet<unsigned int>::SIValueSetInsert(v35 + 4, *(*(*(a1 + 144) + 8 * v36++) + 56));
      }

      while (v36 < *(a1 + 136));
    }

    vectorIndexStartMerge(*(*(a1 + 112) + 4912), v35);
    CFRelease(v35);
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  v37 = *(*(*(a1 + 40) + 8) + 24);
  if (v37 < *(*(*(a1 + 72) + 8) + 24))
  {
    v93 = __si_assert_copy_extra_7645(0, -1);
    v91 = v93;
    v94 = "";
    if (v93)
    {
      v94 = v93;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 3144, "lastId>=lastStringId", v94);
    goto LABEL_165;
  }

  if (*(a1 + 152) <= v37 + 1)
  {
    _os_feature_enabled_impl();
    si_analytics_log_2752("Bad term id encountered during merge wk: %d ve:%d");
    goto LABEL_66;
  }

  if (v12 == 2)
  {
    v38 = 2;
  }

  else
  {
    v38 = v12 == 3;
  }

  v39 = v26 & 0x7FFFFFFF;
  v40 = v3 + 2;
  while (1)
  {
    if ((*v40 & 0x80000000) != 0)
    {
      if (v38 == 1)
      {
        v41 = v39 >> 1;
      }

      else
      {
        v41 = v26 & 0x7FFFFFFF;
        if (!v38)
        {
          v41 = v39 >> 2;
        }
      }

      v42 = v41 == 512;
      if (v41 == 768)
      {
        v42 = 2;
      }

      if (v41 == 256)
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

      vectorIndexInsertForMerge(*(*(a1 + 112) + 4912), v106, v105, v29 & 1, v107, v108, v43, v38, 3.4028e38, 0, -1);
      goto LABEL_59;
    }

    if (*(v40 - 2))
    {
      break;
    }

LABEL_59:
    v40 += 16;
    if (!--v6)
    {
      v22 = 0;
      v44 = v30;
      goto LABEL_95;
    }
  }

  v54 = *(*(*(a1 + 40) + 8) + 24) + 1;
  v55 = storageResolvePtr(*(a1 + 112) + 4984, 8 * v54, 8, 1);
  if (*v55)
  {
    if (v38 == 1)
    {
      v39 >>= 1;
      v56 = v27;
      v44 = v30;
    }

    else
    {
      v56 = v27;
      v44 = v30;
      if (!v38)
      {
        v39 >>= 2;
      }
    }

    if (v39 == 768)
    {
      v57 = 2;
    }

    else
    {
      v57 = v39 == 512;
    }

    if (v39 == 256)
    {
      v58 = 0;
    }

    else
    {
      v58 = v57;
    }

    v22 = vectorIndexInsertForMerge(*(*(a1 + 112) + 4912), v106, v105, v29 & 1, v107, v108, v58, v38, v28, *v55, v56) ^ 1;
  }

  else
  {
    v22 = 0;
    v44 = v30;
  }

  *(*(*(a1 + 40) + 8) + 24) = v54;
LABEL_95:
  setCrashStateTarget(v44);
LABEL_108:
  v66 = *MEMORY[0x1E69E9840];
  return v22;
}

void emitTopKTerms(uint64_t a1, const __CFDictionary *a2)
{
  if (*(a1 + 45) == 1)
  {
    v34[11] = v2;
    v34[12] = v3;
    v34[0] = 0;
    if (asprintf(v34, "%s%s", (a1 + 15208), "topK.v2.mdplistc") >= 1)
    {
      v6 = fd_create_protected(*(a1 + 64), v34[0], 1538, 0);
      if (v6)
      {
        v7 = v6;
        v8 = *MEMORY[0x1E695E480];
        Mutable = _MDPlistContainerCreateMutable();
        _MDPlistContainerBeginContainer();
        _MDPlistContainerBeginDictionary();
        CFDictionaryApplyFunction(a2, emitTerms_7725, Mutable);
        _MDPlistContainerEndDictionary();
        _MDPlistContainerEndContainer();
        Length = _MDPlistContainerGetLength();
        Bytes = _MDPlistContainerGetBytes();
        fd_pwrite(v7, Bytes, Length, 0);
        fd_sync(v7, 0);
        v12 = fd_create_protected(*(a1 + 64), v34[0], 0, 0);
        *(a1 + 14488) = v12;
        if (v12)
        {
          CFRelease(Mutable);
          v13 = fd_mmap(*(a1 + 14488));
          if (v13 != -1)
          {
            v14 = v13;
            v33[0] = v13;
            v33[1] = Length;
            v33[2] = 0;
            v32[0] = 1;
            v32[1] = v33;
            add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
            v16 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v32, 0, add_explicit + 1);
            v30 = HIDWORD(v16);
            v31 = v16;
            v29 = __PAIR64__(v17, v18);
            v19 = threadData[9 * v16 + 1] + 320 * HIDWORD(v16);
            *(v19 + 216) = 0;
            v20 = *(v19 + 312);
            v21 = *(v19 + 224);
            v22 = v19;
            if (v21)
            {
              v21(*(v19 + 288));
            }

            v28 = v31;
            v27 = v30;
            v26 = v29;
            if (_setjmp(v22))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
              }

              v22[78] = v20;
              CIOnThreadCleanUpReset(v26);
              dropThreadId(v28, 1, add_explicit + 1);
              CICleanUpReset(v28, HIDWORD(v26));
            }

            else
            {
              *(a1 + 14496) = _MDPlistContainerCreateWithBytes();
              v23 = threadData[9 * v28 + 1] + 320 * v27;
              *(v23 + 312) = v20;
              v24 = *(v23 + 232);
              if (v24)
              {
                v24(*(v23 + 288));
              }

              dropThreadId(v28, 0, add_explicit + 1);
            }

            if (!*(a1 + 14496))
            {
              munmap(v14, Length);
            }
          }
        }

        else
        {
          _fd_unlink_with_origin(v7, 0);
        }

        fd_release(v7);
      }
    }

    free(v34[0]);
  }
}

void pqDisposeApplier_7720(uint64_t a1, void **a2)
{
  free(*a2);

  free(a2);
}

void emitTerms_7725(uint64_t a1, CFTypeRef cf, void *a3)
{
  v5 = CFRetain(cf);
  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a1);
  _MDPlistContainerAddObject();
  _MDPlistContainerBeginDictionary();
  CFDictionaryApplyFunction(v5, emitTerm, a3);
  _MDPlistContainerEndDictionary();
  CFRelease(v5);

  CFRelease(v6);
}

void emitTerm(const void *a1)
{
  v1 = CFRetain(a1);
  _MDPlistContainerAddObject();
  _MDPlistContainerAddInt32Value();

  CFRelease(v1);
}

void __realizeTerm_block_invoke(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((a3 - 46) >= 0xFFFFFFFFFFFFFFD3 && (a5 & 0x47F) == 0)
  {
    v7 = *a2;
    if ((v7 & 0x80000000) != 0)
    {
      v8 = v7 >> 4;
      v9 = utf8_byte_length(unsigned char)::utf8_len_table[v8];
      v10 = ~v8;
      v11 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v9] & v7;
      if ((v10 & 0xC) != 0)
      {
        v7 &= utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v9];
      }

      else
      {
        if (v9 <= 2)
        {
          v9 = 2;
        }

        else
        {
          v9 = v9;
        }

        v12 = v9 - 1;
        v13 = a2 + 1;
        do
        {
          v14 = *v13++;
          v7 = v14 & 0x3F | (v11 << 6);
          v11 = v7;
          --v12;
        }

        while (v12);
      }
    }

    if (!u_ispunct(v7))
    {
      v27 = 0;
      v28 = 0;
      memset(v29, 0, sizeof(v29));
      *pErrorCode = 0;
      v16 = strFromUTF8();
      if (v16)
      {
        if (v7 >= 0xE00 && ((v7 & 0xFFFFFF80) == 0xE00 || v7 - 65376 < 0x50 || (v7 & 0xFFFFFF00) == 0x1100 || (v7 - 11904) >> 7 <= 0x196))
        {
          *dest = 0;
          v25 = 0;
          memset(v26, 0, sizeof(v26));
          v17 = u_strToLower(dest, 15, v16, pErrorCode[0], 0, &pErrorCode[1]);
          if (pErrorCode[1] == U_ZERO_ERROR)
          {
            v18 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], dest, v17);
            if (v18)
            {
              v19 = v18;
              v20 = *(a1 + 32);
              v21 = v18;
              v22 = 0;
              LODWORD(v22) = *(a1 + 56);
              CFSetApplyFunction(*(a1 + 48), bundleIndexApplier, &v20);
              CFRelease(v19);
            }
          }
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void bundleIndexApplier(unsigned int a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = CFRetain(*(a2 + 16));
  v6 = CFRetain(*a2);
  v7 = CFRetain(*(a2 + 8));
  v8 = a1;
  Value = CFDictionaryGetValue(v6, a1);
  v10 = CFDictionaryGetValue(Value, v4);
  v11 = v10;
  if (!v10)
  {
    v18 = __si_assert_copy_extra_7645(0, -1);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1724, "count > 0", v20);
    free(v19);
    if (__valid_fs(-1))
    {
      v21 = 2989;
    }

    else
    {
      v21 = 3072;
    }

    *v21 = -559038737;
    abort();
  }

  if (!CFDictionaryContainsKey(v7, a1))
  {
    v12 = 50;
    if (a1 == 679607404)
    {
      v12 = 0;
    }

    if (a1 == 856881155)
    {
      v13 = 10000;
    }

    else
    {
      v13 = v12;
    }

    if (a1 == 716189596)
    {
      v14 = 10000;
    }

    else
    {
      v14 = v13;
    }

    if (a1 == 510259174)
    {
      v15 = 10000;
    }

    else
    {
      v15 = v14;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v15, MEMORY[0x1E695E9D8], 0);
    CFDictionaryAddValue(v7, v8, Mutable);
    CFRelease(Mutable);
  }

  v17 = CFDictionaryGetValue(v7, v8);
  CFDictionarySetValue(v17, v5, v11);
  CFRelease(v5);
  CFRelease(v6);

  CFRelease(v7);
}

void popTermIdCountPairsApplier(unsigned int a1, uint64_t *a2, CFTypeRef *a3)
{
  v6 = CFRetain(*a3);
  v7 = CFRetain(a3[1]);
  v8 = a1;
  v9 = CFDictionaryContainsKey(v6, a1);
  v10 = MEMORY[0x1E695E480];
  if (!v9)
  {
    v11 = 50;
    if (a1 == 679607404)
    {
      v11 = 0;
    }

    if (a1 == 856881155)
    {
      v12 = 10000;
    }

    else
    {
      v12 = v11;
    }

    if (a1 == 716189596)
    {
      v13 = 10000;
    }

    else
    {
      v13 = v12;
    }

    if (a1 == 510259174)
    {
      v14 = 10000;
    }

    else
    {
      v14 = v13;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v14, 0, 0);
    CFDictionaryAddValue(v6, v8, Mutable);
    CFRelease(Mutable);
  }

  Value = CFDictionaryGetValue(v6, v8);
  v17 = *(a2 + 4);
  v18 = v17 - 1;
  if (v17 != 1)
  {
    v19 = Value;
    v20 = 0;
    v21 = *v10;
    do
    {
      v22 = a2[2];
      if (v22 == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(*a2 + 8);
        v27 = *(*a2 + 8 * v22 - 8);
        *(*a2 + 8) = v27;
        v28 = a2[2];
        v29 = a2[1] >> 1;
        a2[2] = v28 - 1;
        v30 = HIDWORD(v27);
        v31 = 1;
        v32 = 2;
        v33 = 3;
        do
        {
          v34 = *a2;
          v35 = *(*a2 + 8 * v32);
          if (v33 >= v28)
          {
            if (v32 >= v28)
            {
              break;
            }

            v36 = 0xFFFFFFFF00000000;
          }

          else
          {
            v36 = *(v34 + 8 * v33);
          }

          v37 = HIDWORD(v36);
          if (HIDWORD(v35) >= v30)
          {
            v38 = HIDWORD(v27);
          }

          else
          {
            v38 = HIDWORD(v35);
          }

          if (HIDWORD(v35) >= v30)
          {
            v32 = v31;
          }

          if (v37 >= v38)
          {
            v39 = v32;
          }

          else
          {
            v39 = v33;
          }

          _X13 = v34 + 16 * v39;
          __asm { PRFM            #1, [X13] }

          if (v39 == v31)
          {
            break;
          }

          v32 = 2 * v39;
          v46 = HIDWORD(v35) >= v30 ? v27 : v35;
          v47 = v37 >= v38 ? v46 : v36;
          *(v34 + 8 * v39) = v27;
          v33 = v32 | 1;
          *(*a2 + 8 * v31) = v47;
          v31 = v39;
        }

        while (v39 < v29);
      }

      v24 = v23;
      if (CFDictionaryContainsKey(v19, v23))
      {
        v48 = __si_assert_copy_extra_7645(0, -1);
        v49 = v48;
        v50 = "";
        if (v48)
        {
          v50 = v48;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1696, "!CFDictionaryContainsKey(submap, (void*)(uintptr_t)pair.termId)", v50);
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

      CFDictionarySetValue(v19, v23, HIDWORD(v23));
      if (!CFDictionaryContainsKey(v7, v23))
      {
        v25 = CFSetCreateMutable(v21, 0, 0);
        CFDictionaryAddValue(v7, v24, v25);
        CFRelease(v25);
      }

      v26 = CFDictionaryGetValue(v7, v24);
      CFSetAddValue(v26, v8);
      ++v20;
    }

    while (v20 != v18);
  }

  CFRelease(v6);

  CFRelease(v7);
}

uint64_t findPacking(unint64_t a1, uint64_t a2, int64x2_t a3)
{
  v7 = *a2;
  if (*a2)
  {
    result = packingStart[__clz(v7)];
  }

  else
  {
    result = 0;
  }

  v9 = xmmword_1C2BF9400;
  v10 = xmmword_1C2BF9410;
  v11 = xmmword_1C2BF9420;
  v12 = xmmword_1C2BF9430;
  v13 = xmmword_1C2BF9440;
  v14 = xmmword_1C2BF9450;
  v15 = xmmword_1C2BF9460;
  v16 = xmmword_1C2BF7A50;
  do
  {
    if (result > 9)
    {
      if (result > 12)
      {
        switch(result)
        {
          case 0xD:
            if (a1 >= 3 && v7 <= 0x3FF && (*(a2 + 8) | *(a2 + 4)) < 0x200)
            {
              return 13;
            }

            break;
          case 0xE:
            if (a1 >= 2 && (*(a2 + 4) | v7) < 0x4000)
            {
              return 14;
            }

            break;
          case 0xF:
            if (!(v7 >> 27))
            {
              return 15;
            }

            break;
          default:
LABEL_69:
            v20 = packingCount_13804[result];
            if (v20 <= a1)
            {
              v22 = v20 <= 1 ? 1 : packingCount_13804[result];
              v23 = (v22 + 15) & 0x1F0;
              v24 = vdupq_n_s64(v22 - 1);
              v21 = (&packingSize + 4 * result);
              v25 = vld1q_dup_f32(v21);
              v26 = (a2 + 32);
              v27.i64[0] = 0x101010101010101;
              v27.i64[1] = 0x101010101010101;
              v53 = v16;
              v28 = v15;
              v29 = v14;
              v30 = v13;
              v31 = v12;
              v32 = v11;
              v33 = v10;
              v34 = v9;
              do
              {
                v35 = v27;
                v36 = vcgeq_u64(v24, v16);
                v37 = vmovn_s64(v36);
                *v27.i8 = vuzp1_s8(vuzp1_s16(v37, *a3.i8), *a3.i8);
                if (v27.i8[0])
                {
                  v27.i32[0] = *(v26 - 8);
                }

                if (vuzp1_s8(vuzp1_s16(v37, *&a3), *&a3).i8[1])
                {
                  v27.i32[1] = *(v26 - 7);
                }

                v38 = vcgeq_u64(v24, v15);
                if (vuzp1_s8(vuzp1_s16(*&a3, vmovn_s64(*&v38)), *&a3).i8[2])
                {
                  v27.i64[1] = *(v26 - 3);
                }

                v39 = vcgeq_u64(v24, v14);
                v40 = vmovn_s64(v39);
                *v3.i8 = vuzp1_s8(*a3.i8, vuzp1_s16(v40, *a3.i8));
                if (v3.i8[4])
                {
                  v3.i32[0] = *(v26 - 4);
                }

                if (vuzp1_s8(*&a3, vuzp1_s16(v40, *&a3)).i8[5])
                {
                  v3.i32[1] = *(v26 - 3);
                }

                v41 = vcgeq_u64(v24, v13);
                if (vuzp1_s8(*&a3, vuzp1_s16(*&a3, vmovn_s64(*&v41))).i8[6])
                {
                  v3.i32[2] = *(v26 - 2);
                  v3.i32[3] = *(v26 - 1);
                }

                v42 = vcgeq_u64(v24, v12);
                v43 = vmovn_s64(v42);
                *v4.i8 = vuzp1_s8(vuzp1_s16(v43, *a3.i8), *a3.i8);
                if (v4.i8[0])
                {
                  v4.i32[0] = *v26;
                }

                if (vuzp1_s8(vuzp1_s16(v43, *&a3), *&a3).i8[1])
                {
                  v4.i32[1] = v26[1];
                }

                v44 = vcgeq_u64(v24, v11);
                if (vuzp1_s8(vuzp1_s16(*&a3, vmovn_s64(*&v44)), *&a3).i8[2])
                {
                  v4.i32[2] = v26[2];
                  v4.i32[3] = v26[3];
                }

                v45 = vcgeq_u64(v24, v10);
                v46 = vmovn_s64(v45);
                *v5.i8 = vuzp1_s8(*a3.i8, vuzp1_s16(v46, *a3.i8));
                if (v5.i8[4])
                {
                  v5.i32[0] = v26[4];
                }

                if (vuzp1_s8(*&a3, vuzp1_s16(v46, *&a3)).i8[5])
                {
                  v5.i32[1] = v26[5];
                }

                v47 = vcgeq_u64(v24, v9);
                v48 = vmovn_s64(v47);
                v49 = vuzp1_s16(*a3.i8, v48);
                v50 = vuzp1_s8(v49, v49);
                if (v50.i8[6])
                {
                  v5.i32[2] = v26[6];
                }

                v51 = vuzp1_s16(v50, v48);
                if (vuzp1_s8(v51, v51).i8[7])
                {
                  v5.i32[3] = v26[7];
                }

                v52 = vuzp1q_s16(vcgtq_u32(v25, v27), vcgtq_u32(v25, v3));
                v3 = vcgtq_u32(v25, v5);
                v27 = vandq_s8(v35, vuzp1q_s8(v52, vuzp1q_s16(vcgtq_u32(v25, v4), v3)));
                a3 = vdupq_n_s64(0x10uLL);
                v14 = vaddq_s64(v14, a3);
                v15 = vaddq_s64(v15, a3);
                v16 = vaddq_s64(v16, a3);
                v13 = vaddq_s64(v13, a3);
                v12 = vaddq_s64(v12, a3);
                v11 = vaddq_s64(v11, a3);
                v10 = vaddq_s64(v10, a3);
                v9 = vaddq_s64(v9, a3);
                v26 += 16;
                v23 -= 16;
              }

              while (v23);
              a3 = vcltzq_s8(vshlq_n_s8(vbslq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(v36, v38), vuzp1q_s32(v39, v41)), vuzp1q_s16(vuzp1q_s32(v42, v44), vuzp1q_s32(v45, v47))), v27, v35), 7uLL));
              a3.i8[0] = vminvq_u8(a3);
              v9 = v34;
              v10 = v33;
              v11 = v32;
              v12 = v31;
              v13 = v30;
              v14 = v29;
              v15 = v28;
              v16 = v53;
              if (a3.i8[0])
              {
                return result;
              }
            }

            break;
        }
      }

      else if (result == 10)
      {
        if (a1 >= 3 && !(*(a2 + 4) >> 14) && (*(a2 + 8) | v7) < 0x80)
        {
          return 10;
        }
      }

      else if (result == 11)
      {
        if (a1 >= 3 && !(v7 >> 14) && (*(a2 + 8) | *(a2 + 4)) < 0x80)
        {
          return 11;
        }
      }

      else if (a1 >= 3 && !((*(a2 + 4) | v7) >> 14) && !*(a2 + 8))
      {
        return 12;
      }
    }

    else if (result > 6)
    {
      if (result == 7)
      {
        if (a1 >= 4 && !((*(a2 + 8) | v7) >> 14) && (*(a2 + 12) | *(a2 + 4)) == 0)
        {
          return 7;
        }
      }

      else if (result == 8)
      {
        if (a1 >= 4 && (*(a2 + 4) | *(a2 + 8)) <= 0x7F && !*(a2 + 12) && v7 < 0x4000)
        {
          return 8;
        }
      }

      else if (a1 >= 3 && (*(a2 + 4) | v7) <= 0x7F && *(a2 + 8) < 0x4000u)
      {
        return 9;
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          if (a1 >= 9 && v7 <= 0xF)
          {
            v17 = vorrq_s8(*(a2 + 4), *(a2 + 20));
            *v17.i8 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
            if ((v17.i32[0] | v17.i32[1]) < 8)
            {
              return 2;
            }
          }

          break;
        case 4:
          if (a1 >= 6 && (*(a2 + 4) | *(a2 + 8) | *(a2 + 12) | v7) <= 0x1F && (*(a2 + 20) | *(a2 + 16)) < 0x10)
          {
            return 4;
          }

          break;
        case 5:
          if (a1 >= 5 && (*(a2 + 4) | *(a2 + 8) | v7) <= 0x3F && (*(a2 + 16) | *(a2 + 12)) < 0x20)
          {
            return 5;
          }

          break;
        default:
          goto LABEL_69;
      }
    }

    ++result;
  }

  while (result != 16);
  return 16;
}

uint64_t packOneWord(uint64_t *a1, uint64_t *a2, int a3)
{
  v3 = *a2;
  v4 = *a2;
  switch(a3)
  {
    case 0:
      v5 = *a1;
      if (*a1 <= 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = *v4 != 0;
        if (v5 != 1)
        {
          v6 |= 2 * (*(v4 + 4) != 0);
          if (v5 != 2)
          {
            v6 |= 4 * (*(v4 + 8) != 0);
            if (v5 != 3)
            {
              v6 |= 8 * (*(v4 + 12) != 0);
              if (v5 != 4)
              {
                v6 |= 16 * (*(v4 + 16) != 0);
                if (v5 != 5)
                {
                  v6 |= 32 * (*(v4 + 20) != 0);
                  if (v5 != 6)
                  {
                    v6 |= (*(v4 + 24) != 0) << 6;
                    if (v5 != 7)
                    {
                      v6 |= (*(v4 + 28) != 0) << 7;
                      if (v5 != 8)
                      {
                        v6 |= (*(v4 + 32) != 0) << 8;
                        if (v5 != 9)
                        {
                          v6 |= (*(v4 + 36) != 0) << 9;
                          if (v5 != 10)
                          {
                            v6 |= (*(v4 + 40) != 0) << 10;
                            if (v5 != 11)
                            {
                              v6 |= (*(v4 + 44) != 0) << 11;
                              if (v5 != 12)
                              {
                                v6 |= (*(v4 + 48) != 0) << 12;
                                if (v5 != 13)
                                {
                                  v6 |= (*(v4 + 52) != 0) << 13;
                                  if (v5 != 14)
                                  {
                                    v6 |= (*(v4 + 56) != 0) << 14;
                                    if (v5 != 15)
                                    {
                                      v6 |= (*(v4 + 60) != 0) << 15;
                                      if (v5 != 16)
                                      {
                                        v6 |= (*(v4 + 64) != 0) << 16;
                                        if (v5 != 17)
                                        {
                                          v6 |= (*(v4 + 68) != 0) << 17;
                                          if (v5 != 18)
                                          {
                                            v6 |= (*(v4 + 72) != 0) << 18;
                                            if (v5 != 19)
                                            {
                                              v6 |= (*(v4 + 76) != 0) << 19;
                                              if (v5 != 20)
                                              {
                                                v6 |= (*(v4 + 80) != 0) << 20;
                                                if (v5 != 21)
                                                {
                                                  v6 |= (*(v4 + 84) != 0) << 21;
                                                  if (v5 != 22)
                                                  {
                                                    v6 |= (*(v4 + 88) != 0) << 22;
                                                    if (v5 != 23)
                                                    {
                                                      v6 |= (*(v4 + 92) != 0) << 23;
                                                      if (v5 != 24)
                                                      {
                                                        v6 |= (*(v4 + 96) != 0) << 24;
                                                        if (v5 != 25)
                                                        {
                                                          v6 |= (*(v4 + 100) != 0) << 25;
                                                          if (v5 != 26)
                                                          {
                                                            v6 |= (*(v4 + 104) != 0) << 26;
                                                            if (v5 != 27)
                                                            {
                                                              v6 |= (*(v4 + 108) != 0) << 27;
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      *a1 = v5 - 28;
      v4 = v3 + 112;
      goto LABEL_94;
    case 1:
      v18 = *a1;
      if (*a1 < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = *v4;
        if (*a1 != 1)
        {
          v6 |= 4 * *(v4 + 4);
          if (v18 != 2)
          {
            v6 |= 16 * *(v4 + 8);
            if (v18 != 3)
            {
              v6 |= *(v4 + 12) << 6;
              if (v18 != 4)
              {
                v6 |= *(v4 + 16) << 8;
                if (v18 != 5)
                {
                  v6 |= *(v4 + 20) << 10;
                  if (v18 != 6)
                  {
                    v6 |= *(v4 + 24) << 12;
                    if (v18 != 7)
                    {
                      v6 |= *(v4 + 28) << 14;
                      if (v18 != 8)
                      {
                        v6 |= *(v4 + 32) << 16;
                        if (v18 != 9)
                        {
                          v6 |= *(v4 + 36) << 18;
                          if (v18 != 10)
                          {
                            v6 |= *(v4 + 40) << 20;
                            if (v18 != 11)
                            {
                              v6 |= *(v4 + 44) << 22;
                              if (v18 != 12)
                              {
                                v6 |= *(v4 + 48) << 24;
                                if (v18 != 13)
                                {
                                  v6 |= *(v4 + 52) << 26;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v9 = v18 - 14;
      v10 = 56;
      goto LABEL_92;
    case 2:
      v13 = vorrq_s8(vshlq_u32(*(v4 + 4), xmmword_1C2BFA480), vshlq_u32(*(v4 + 20), xmmword_1C2BFA470));
      *v13.i8 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
      v6 = v13.i32[0] | *v4 | v13.i32[1];
      v9 = *a1 - 9;
      v10 = 36;
      goto LABEL_92;
    case 3:
      v17 = *a1;
      if (*a1 < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = *v4;
        if (*a1 != 1)
        {
          v6 |= 16 * *(v4 + 4);
          if (v17 != 2)
          {
            v6 |= *(v4 + 8) << 8;
            if (v17 != 3)
            {
              v6 |= *(v4 + 12) << 12;
              if (v17 != 4)
              {
                v6 |= *(v4 + 16) << 16;
                if (v17 != 5)
                {
                  v6 |= *(v4 + 20) << 20;
                  if (v17 != 6)
                  {
                    v6 |= *(v4 + 24) << 24;
                  }
                }
              }
            }
          }
        }
      }

      v9 = v17 - 7;
      v10 = 28;
      goto LABEL_92;
    case 4:
      v8 = vshlq_u32(*(v4 + 4), xmmword_1C2BFA460);
      *v8.i8 = vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
      v6 = v8.i32[0] | v8.i32[1] | (*(v4 + 20) << 24) | *v4;
      v9 = *a1 - 6;
      v10 = 24;
      goto LABEL_92;
    case 5:
      v19 = vshlq_u32(*(v4 + 4), xmmword_1C2BFA450);
      *v19.i8 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
      v6 = v19.i32[0] | *v4 | v19.i32[1];
      v9 = *a1 - 5;
      v10 = 20;
      goto LABEL_92;
    case 6:
      v20 = *a1;
      if (*a1 < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = *v4;
        if (*a1 != 1)
        {
          v6 |= *(v4 + 4) << 7;
          if (v20 != 2)
          {
            v6 |= *(v4 + 8) << 14;
            if (v20 != 3)
            {
              v6 |= *(v4 + 12) << 21;
            }
          }
        }
      }

      v9 = v20 - 4;
      goto LABEL_91;
    case 7:
      v6 = *v4 | (*(v4 + 8) << 14);
      goto LABEL_78;
    case 8:
      v6 = *v4 | (*(v4 + 4) << 14) | (*(v4 + 8) << 21);
LABEL_78:
      v9 = *a1 - 4;
LABEL_91:
      v10 = 16;
      goto LABEL_92;
    case 9:
      v11 = *v4 | (*(v4 + 4) << 7);
      v12 = *(v4 + 8);
      goto LABEL_38;
    case 10:
      v7 = *v4 | (*(v4 + 4) << 7);
      goto LABEL_75;
    case 11:
      v7 = *v4 | (*(v4 + 4) << 14);
LABEL_75:
      v6 = v7 | (*(v4 + 8) << 21);
      goto LABEL_76;
    case 12:
      v11 = *v4;
      v12 = *(v4 + 4);
LABEL_38:
      v6 = v11 | (v12 << 14);
      goto LABEL_76;
    case 13:
      v6 = *v4 | (*(v4 + 4) << 10) | (*(v4 + 8) << 19);
LABEL_76:
      v9 = *a1 - 3;
      v10 = 12;
      goto LABEL_92;
    case 14:
      if (*a1 < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = *v4;
        if (*a1 != 1)
        {
          v6 |= *(v4 + 4) << 14;
        }
      }

      v9 = *a1 - 2;
      goto LABEL_82;
    case 15:
      v14 = *v4;
      v4 += 4;
      v6 = v14;
      v15 = (*a1)--;
      v16 = v15 < 2;
      v9 = v15 - 2;
      if (v16 || *v4)
      {
        goto LABEL_93;
      }

      v6 |= 0x8000000u;
LABEL_82:
      v10 = 8;
LABEL_92:
      *a1 = v9;
      v4 = v3 + v10;
LABEL_93:
      if (v6 >> 28)
      {
        v22 = __si_assert_copy_extra_7645(0, -1);
        v23 = v22;
        v24 = "";
        if (v22)
        {
          v24 = v22;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "disk_utils.h", 1027, "word>>28 == 0", v24);
        free(v23);
        if (__valid_fs(-1))
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

LABEL_94:
      result = v6 | (a3 << 28);
      *a2 = v4;
      return result;
    default:
      v6 = 0;
      goto LABEL_94;
  }
}

char **writeWindowWriteBytes(char **result, char *__src, size_t __n)
{
  if (!*(result + 6))
  {
    v5 = result;
    v6 = *(*result + 1) - result[2];
    if (v6 + __n > 0x100000)
    {
      v7 = 0x100000 - v6;
      result = memcpy(&result[1][v6], __src, 0x100000 - v6);
      *(*v5 + 1) += v7;
      v8 = __n - v7;
      if (__n != v7)
      {
        v9 = &__src[v7];
        do
        {
          sync_invalidate_mapping(v5[1], 0x100000);
          munmap(v5[1], 0x100000uLL);
          v10 = (v5[2] + 0x100000);
          v5[1] = -1;
          v5[2] = v10;
          while (1)
          {
            v11 = *v5;
            v12 = *(*v5 + 3);
            if ((v5[2] + 0x100000) < v12)
            {
              break;
            }

            if (v12 >> 30)
            {
              v13 = v12 + 0x40000000;
            }

            else
            {
              v13 = 2 * v12;
            }

            *(v11 + 3) = v13;
            if (fd_truncate(*(v11 + 561), v13) == -1)
            {
              goto LABEL_20;
            }
          }

          v14 = fd_mmap(*(v11 + 561));
          v5[1] = v14;
          if (v14 == -1)
          {
LABEL_20:
            result = __error();
            *(v5 + 6) = *result;
            return result;
          }

          madvise(v14, 0x100000uLL, 2);
          v15 = *(*v5 + 1) - v5[2];
          if (v8 >= 0x100000)
          {
            v16 = 0x100000 - v15;
          }

          else
          {
            v16 = v8;
          }

          result = memcpy(&v5[1][v15], v9, v16);
          v9 += v16;
          *(*v5 + 1) += v16;
          v8 -= v16;
        }

        while (v8);
      }
    }

    else
    {
      result = memcpy(&result[1][v6], __src, __n);
      *(*v5 + 1) += __n;
    }
  }

  return result;
}

void __push_termid_counts_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 679607404)
  {
    v5 = 0;
  }

  else
  {
    v5 = 50;
  }

  if (a2 == 856881155)
  {
    v6 = 10000;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 716189596)
  {
    v7 = 10000;
  }

  else
  {
    v7 = v6;
  }

  if (a2 == 510259174)
  {
    v8 = 10000;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a1 + 40);
  v10 = CFRetain(*(a1 + 32));
  v11 = v10;
  if (a3 && v8)
  {
    if (!CFDictionaryContainsKey(v10, a2))
    {
      v12 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
      v12[1] = v8;
      v12[2] = 1;
      v13 = malloc_type_zone_malloc(queryZone, 8 * v8 + 16, 0xA4971684uLL);
      if (!v13)
      {
        _log_fault_for_malloc_failure();
      }

      *v12 = v13;
      *v13 = 0;
      CFDictionaryAddValue(v11, a2, v12);
    }

    Value = CFDictionaryGetValue(v11, a2);
    v15 = Value[2];
    if ((v15 - 1) > v8)
    {
      v61 = __si_assert_copy_extra_7645(0, -1);
      v62 = v61;
      v63 = "";
      if (v61)
      {
        v63 = v61;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1647, "queueCount <= maxTermCount", v63);
      free(v62);
      if (__valid_fs(-1))
      {
        v64 = 2989;
      }

      else
      {
        v64 = 3072;
      }

      *v64 = -559038737;
      abort();
    }

    v16 = Value;
    if (v15 <= v8)
    {
      v19 = v9 | (a3 << 32);
      v20 = Value[1];
      v21 = Value[2];
      if ((v15 + 2) >= v20)
      {
        v22 = 2 * v20;
        if (v20 < 4)
        {
          v22 = 4;
        }

        Value[1] = v22;
        v23 = 8 * v22;
        if (*Value)
        {
          v24 = malloc_type_zone_realloc(queryZone, *Value, v23 + 16, 0xA1A7ADA0uLL);
        }

        else
        {
          v24 = malloc_type_zone_malloc(queryZone, v23 + 16, 0x566E289CuLL);
        }

        v55 = v24;
        if (!v24)
        {
          _log_fault_for_malloc_failure();
        }

        *v16 = v55;
        *v55 = 0;
        v21 = v16[2];
      }

      v16[2] = v21 + 1;
      *(*v16 + 8 * v15) = v19;
      if (v15 >= 2)
      {
        do
        {
          v56 = *(*v16 + 8 * v15);
          v57 = *(*v16 + 8 * (v15 >> 1));
          if (HIDWORD(v56) > HIDWORD(v57))
          {
            break;
          }

          *(*v16 + 8 * v15) = v57;
          *(*v16 + 8 * (v15 >> 1)) = v56;
          v51 = v15 > 3;
          v15 >>= 1;
        }

        while (v51);
      }
    }

    else
    {
      v17 = *Value;
      if (*Value)
      {
        v18 = v17[3];
      }

      else
      {
        v18 = 0;
      }

      if (v18 < a3)
      {
        v25 = *&v17[2 * v15 - 2];
        *(v17 + 1) = v25;
        v26 = Value[2];
        v27 = Value[1] >> 1;
        Value[2] = v26 - 1;
        v28 = HIDWORD(v25);
        v29 = 3;
        v30 = 2;
        v31 = 1;
        while (1)
        {
          v32 = *v16;
          v33 = *(*v16 + 8 * v30);
          if (v29 >= v26)
          {
            if (v30 >= v26)
            {
              break;
            }

            v34 = 0xFFFFFFFF00000000;
          }

          else
          {
            v34 = v32[v29];
          }

          v35 = HIDWORD(v34);
          if (HIDWORD(v33) >= v28)
          {
            v36 = HIDWORD(v25);
          }

          else
          {
            v36 = HIDWORD(v33);
          }

          if (HIDWORD(v33) >= v28)
          {
            v30 = v31;
          }

          v37 = v35 >= v36 ? v30 : v29;
          _X13 = &v32[2 * v37];
          __asm { PRFM            #1, [X13] }

          if (v37 == v31)
          {
            break;
          }

          v30 = 2 * v37;
          if (HIDWORD(v33) >= v28)
          {
            v44 = v25;
          }

          else
          {
            v44 = v33;
          }

          if (v35 >= v36)
          {
            v45 = v44;
          }

          else
          {
            v45 = v34;
          }

          v32[v37] = v25;
          v29 = v30 | 1;
          *(*v16 + 8 * v31) = v45;
          v31 = v37;
          if (v37 >= v27)
          {
            v32 = *v16;
            break;
          }
        }

        v46 = v9 | (a3 << 32);
        v47 = v16[1];
        v48 = v16[2];
        if ((v48 + 2) >= v47)
        {
          v50 = 2 * v47;
          v51 = v47 < 4;
          v52 = 4;
          if (!v51)
          {
            v52 = v50;
          }

          v16[1] = v52;
          v53 = 8 * v52;
          if (v32)
          {
            v54 = malloc_type_zone_realloc(queryZone, v32, v53 + 16, 0xA1A7ADA0uLL);
          }

          else
          {
            v54 = malloc_type_zone_malloc(queryZone, v53 + 16, 0x566E289CuLL);
          }

          v58 = v54;
          if (!v54)
          {
            _log_fault_for_malloc_failure();
          }

          *v16 = v58;
          *v58 = 0;
          v49 = v16[2];
          v32 = *v16;
        }

        else
        {
          v49 = v16[2];
        }

        v16[2] = v49 + 1;
        v32[v48] = v46;
        if (v48 >= 2)
        {
          do
          {
            v59 = *(*v16 + 8 * v48);
            v60 = *(*v16 + 8 * (v48 >> 1));
            if (HIDWORD(v59) > HIDWORD(v60))
            {
              break;
            }

            *(*v16 + 8 * v48) = v60;
            *(*v16 + 8 * (v48 >> 1)) = v59;
            v51 = v48 > 3;
            v48 >>= 1;
          }

          while (v51);
        }
      }
    }
  }

  CFRelease(v11);
}

uint64_t slideBuffer(unint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = v5 + *a1;
  *(a2 + 16) = v6 & 0x3FFFFFFFFFFFF000;
  v7 = fd_pread(*a2, v4, 0x10000uLL, v6 & 0x3FFFFFFFFFFFF000);
  if (v7 != -1)
  {
    if (v7 != 0x10000)
    {
      *(*(a2 + 24) + v7) = 0;
    }

    v8 = *(a2 + 16);
    v9 = v6 >= v8;
    v10 = v6 - v8;
    if (!v9)
    {
      v12 = __si_assert_copy_extra_7645(0, -1);
      v13 = v12;
      v14 = "";
      if (v12)
      {
        v14 = v12;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 901, "next >= context->last_offset", v14);
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

    *a1 = v10;
  }

  if (v7 == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

BOOL _addToWPCBuffer(uint64_t a1, unsigned int a2, int a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    v6 = *(a1 + 84);
    if (v6 - 1 < a2)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
      if (result)
      {
        v8 = *(a1 + 16);
        v9 = *(a1 + 72);
        *buf = 67110144;
        v27 = a2;
        v28 = 1024;
        *v29 = v6;
        *&v29[4] = 2048;
        *&v29[6] = v8;
        v30 = 2048;
        v31 = v9;
        v32 = 1024;
        v33 = a3;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "Attempted to add past beginning of flipped WPC buffer; position: %x, lastInput: %x, offset: %lld, intCount: %ld, line: %d";
        v12 = 40;
LABEL_14:
        _os_log_fault_impl(&dword_1C278D000, v10, OS_LOG_TYPE_FAULT, v11, buf, v12);
        result = 0;
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v13 = v6 - a2;
    }

    else
    {
      v14 = *(a1 + 72);
      v13 = a2;
      if (v14)
      {
        v13 = a2;
        if (*(*(a1 + 56) + 4 * v14 - 4))
        {
          v24 = __si_assert_copy_extra_7645(0, -1);
          v21 = v24;
          v25 = "";
          if (v24)
          {
            v25 = v24;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1085, "buffer->ints[buffer->intCount-1]==0", v25);
          goto LABEL_23;
        }
      }
    }

    *(a1 + 84) = v13;
  }

  if (!a2)
  {
    if (*(a1 + 80))
    {
      goto LABEL_16;
    }

    v20 = __si_assert_copy_extra_7645(0, -1);
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 1094, "position != 0 || buffer->lastPosition != 0", v22);
LABEL_23:
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

  if (!(a2 >> 27))
  {
LABEL_16:
    v17 = *(a1 + 64);
    v16 = *(a1 + 72);
    v18 = *(a1 + 56);
    if (v17 <= v16)
    {
      *(a1 + 64) = 2 * v17;
      v18 = malloc_type_realloc(v18, 8 * v17, 0x100004052888210uLL);
      *(a1 + 56) = v18;
      v16 = *(a1 + 72);
    }

    *(a1 + 72) = v16 + 1;
    *(v18 + v16) = a2;
    *(a1 + 44) = a3;
    result = 1;
    goto LABEL_19;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
  if (result)
  {
    v15 = *(a1 + 72);
    *buf = 67109632;
    v27 = a2;
    v28 = 2048;
    *v29 = v15;
    *&v29[8] = 1024;
    *&v29[10] = a3;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "Impossibly large position added (%x) at %ld from %d";
    v12 = 24;
    goto LABEL_14;
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t readCompactPosition(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 184);
  if (v3)
  {
    if (v3 >= 0x1D)
    {
      v21 = __si_assert_copy_extra_7645(0, -1);
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 3563, "context->readAheadAvailable <= 28", v23);
      free(v22);
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

    *(a1 + 212) = *(a1 + 208);
    v4 = *(a1 + 192);
    *(a1 + 184) = v3 - 1;
    *(a1 + 192) = v4 + 1;
    result = *(a1 + 4 * v4 + 68);
  }

  else
  {
    v29 = *a2;
    v7 = v29;
    if ((v29 & 3) != 0)
    {
      v25 = __si_assert_copy_extra_7645(0, -1);
      v26 = v25;
      v27 = "";
      if (v25)
      {
        v27 = v25;
      }

      __message_assert("%s:%u: failed assertion '%s' %s offset %lu @0x%p", "CIMerging.c", 3574, "(offset & 0x3) == 0", v27, v29, a2);
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

    if (v29 - 65533 <= 0xFFFFFFFFFFFEFFFELL && *(a1 + 32) == 0)
    {
      if (slideBuffer(&v29, a1) == -1)
      {
        return 0xFFFFFFFFLL;
      }

      v7 = v29;
    }

    v9 = *(*(a1 + 24) + v7);
    *(a1 + 200) = *(a1 + 204);
    *(a1 + 204) = v9;
    v10 = packingCount_13804[v9 >> 28];
    switch(v9 >> 28)
    {
      case 1uLL:
        result = v9 & 3;
        *(a1 + 68) = result;
        v19 = vdupq_n_s32(v9);
        v20.i64[0] = 0x300000003;
        v20.i64[1] = 0x300000003;
        *(a1 + 72) = vandq_s8(vshlq_u32(v19, xmmword_1C2BFA500), v20);
        *(a1 + 88) = vandq_s8(vshlq_u32(v19, xmmword_1C2BFA510), v20);
        *(a1 + 104) = vandq_s8(vshlq_u32(v19, xmmword_1C2BFA520), v20);
        *(a1 + 120) = (v9 >> 26) & 3;
        break;
      case 2uLL:
        result = v9 & 0xF;
        v15 = vdupq_n_s32(v9);
        *(a1 + 68) = result;
        v16.i64[0] = 0x700000007;
        v16.i64[1] = 0x700000007;
        *(a1 + 72) = vandq_s8(vshlq_u32(v15, xmmword_1C2BFA4E0), v16);
        *(a1 + 88) = vandq_s8(vshlq_u32(v15, xmmword_1C2BFA4F0), v16);
        break;
      case 3uLL:
        result = v9 & 0xF;
        *(a1 + 68) = result;
        v17 = vdupq_n_s32(v9);
        v18.i64[0] = 0xF0000000FLL;
        v18.i64[1] = 0xF0000000FLL;
        *(a1 + 72) = vandq_s8(vshlq_u32(v17, xmmword_1C2BFA4D0), v18);
        *(a1 + 88) = vand_s8(vshl_u32(*v17.i8, 0xFFFFFFE8FFFFFFECLL), 0xF0000000FLL);
        break;
      case 4uLL:
        result = v9 & 0x1F;
        *(a1 + 68) = result;
        *(a1 + 72) = vandq_s8(vshlq_u32(vdupq_n_s32(v9), xmmword_1C2BFA4B0), xmmword_1C2BFA4C0);
        *(a1 + 88) = BYTE3(v9) & 0xF;
        break;
      case 5uLL:
        result = v9 & 0x3F;
        *(a1 + 68) = result;
        *(a1 + 72) = vandq_s8(vshlq_u32(vdupq_n_s32(v9), xmmword_1C2BFA490), xmmword_1C2BFA4A0);
        break;
      case 6uLL:
        result = v9 & 0x7F;
        *(a1 + 68) = result;
        *(a1 + 72) = vand_s8(vshl_u32(vdup_n_s32(v9), 0xFFFFFFF2FFFFFFF9), 0x7F0000007FLL);
        *(a1 + 80) = (v9 >> 21) & 0x7F;
        break;
      case 7uLL:
        result = v9 & 0x3FFF;
        *(a1 + 68) = result;
        *(a1 + 76) = (v9 >> 14) & 0x3FFF;
        break;
      case 8uLL:
        result = v9 & 0x3FFF;
        *(a1 + 68) = result;
        *(a1 + 72) = vand_s8(vshl_u32(vdup_n_s32(v9), 0xFFFFFFEBFFFFFFF2), 0x7F0000007FLL);
        *(a1 + 80) = 0;
        break;
      case 9uLL:
        result = v9 & 0x7F;
        *(a1 + 68) = result;
        v13 = vshl_u32(vdup_n_s32(v9), 0xFFFFFFF2FFFFFFF9);
        v14 = 0x3FFF0000007FLL;
        goto LABEL_29;
      case 0xAuLL:
        result = v9 & 0x7F;
        *(a1 + 68) = result;
        v13 = vshl_u32(vdup_n_s32(v9), 0xFFFFFFEBFFFFFFF9);
        v14 = 0x7F00003FFFLL;
        goto LABEL_29;
      case 0xBuLL:
        result = v9 & 0x3FFF;
        *(a1 + 68) = result;
        v13 = vshl_u32(vdup_n_s32(v9), 0xFFFFFFEBFFFFFFF2);
        v14 = 0x7F0000007FLL;
        goto LABEL_29;
      case 0xCuLL:
        result = v9 & 0x3FFF;
        *(a1 + 68) = result;
        *(a1 + 72) = (v9 >> 14) & 0x3FFF;
        break;
      case 0xDuLL:
        result = v9 & 0x3FF;
        *(a1 + 68) = result;
        v13 = vshl_u32(vdup_n_s32(v9), 0xFFFFFFEDFFFFFFF6);
        v14 = 0x100000001;
LABEL_29:
        *(a1 + 72) = vand_s8(v13, v14);
        break;
      case 0xEuLL:
        result = v9 & 0x3FFF;
        *(a1 + 68) = result;
        *(a1 + 72) = (v9 >> 14) & 0x3FFF;
        break;
      case 0xFuLL:
        result = v9 & 0x7FFFFFF;
        *(a1 + 68) = result;
        if ((v9 & 0x8000000) != 0)
        {
          *(a1 + 72) = 0;
          ++v10;
        }

        break;
      default:
        result = v9 & 1;
        *(a1 + 68) = result;
        v11 = vdupq_n_s32(v9);
        v12.i64[0] = 0x100000001;
        v12.i64[1] = 0x100000001;
        *(a1 + 72) = vandq_s8(vshlq_u32(v11, xmmword_1C2BFA530), v12);
        *(a1 + 88) = vandq_s8(vshlq_u32(v11, xmmword_1C2BFA540), v12);
        *(a1 + 104) = vandq_s8(vshlq_u32(v11, xmmword_1C2BFA550), v12);
        *(a1 + 120) = vandq_s8(vshlq_u32(v11, xmmword_1C2BFA560), v12);
        *(a1 + 136) = vandq_s8(vshlq_u32(v11, xmmword_1C2BFA570), v12);
        *(a1 + 152) = vandq_s8(vshlq_u32(v11, xmmword_1C2BFA580), v12);
        *(a1 + 168) = *&vshl_u32(*v11.i8, 0xFFFFFFE6FFFFFFE7) & 0xFFFFFF81FFFFFF81;
        *(a1 + 176) = (v9 >> 27) & 1;
        break;
    }

    *(a1 + 184) = v10 - 1;
    *(a1 + 192) = 1;
    *a2 = v7 + 4;
    *(a1 + 212) = *(a1 + 208);
  }

  *(a1 + 208) = result;
  return result;
}

uint64_t checkChangeHolderIntegrity(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(result + 24);
    if (v2 <= 0)
    {
      v3 = __si_assert_copy_extra_7645(0, -1);
      v4 = v3;
      v5 = "";
      if (v3)
      {
        v5 = v3;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 4162, "changes->hole>0", v5);
      free(v4);
      if (__valid_fs(-1))
      {
        v6 = 2989;
      }

      else
      {
        v6 = 3072;
      }

      *v6 = -559038737;
      abort();
    }

    if (v2 > v1)
    {
      v7 = __si_assert_copy_extra_7645(0, -1);
      v8 = v7;
      v9 = "";
      if (v7)
      {
        v9 = v7;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 4163, "changes->hole<=changes->count", v9);
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

  return result;
}

BOOL _excReadBufferPosContextMatch(uint64_t *a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v3 = (a1[1] + 32);
    v4 = 1;
    v5 = *a1;
    v6 = 1;
    while (1)
    {
      v7 = *(v3 - 1);
      if (v7 <= a2 && v7 + *v3 > a2)
      {
        break;
      }

      v6 = v4++ < *a1;
      v3 += 28;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = *__error();
    v9 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "_excReadBufferPosContextMatch";
      v14 = 1024;
      v15 = 1570;
      v16 = 2048;
      v17 = a2;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: Caught exception  on merge positions %p", &v12, 0x1Cu);
    }

    *__error() = v8;
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL _excReadBufferMatch(uint64_t *a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v3 = (a1[1] + 8);
    v4 = 1;
    v5 = *a1;
    v6 = 1;
    while (1)
    {
      v7 = *(v3 - 1);
      if (v7 <= a2 && v7 + *v3 > a2)
      {
        break;
      }

      v6 = v4++ < *a1;
      v3 += 2;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = *__error();
    v9 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "_excReadBufferMatch";
      v14 = 1024;
      v15 = 1542;
      v16 = 2048;
      v17 = a2;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: Caught exception  on merge postings %p", &v12, 0x1Cu);
    }

    *__error() = v8;
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t getItem(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v7 = (a2 + 245760);
  pthread_mutex_lock((a2 + 245784));
  v9 = *v7;
  v8 = v7[1];
  while (1)
  {
    if (v9 == v8)
    {
      do
      {
        v10 = v8;
        if (v7[3])
        {
          break;
        }

        v10 = v8;
        if (*a5)
        {
          break;
        }

        *v7 = 0;
        v7[2] = 0;
        pthread_cond_signal((a2 + 245848));
        v29.tv_sec = 0;
        v29.tv_nsec = 0;
        v28.tv_sec = 0;
        *&v28.tv_usec = 0;
        gettimeofday(&v28, 0);
        v29.tv_sec = v28.tv_sec;
        v29.tv_nsec = 1000 * v28.tv_usec + 500000000;
        if (v28.tv_usec >= 500000)
        {
          v29.tv_sec = v28.tv_sec + 1;
          v29.tv_nsec = 1000 * v28.tv_usec - 500000000;
        }

        pthread_cond_timedwait((a2 + 245896), (a2 + 245784), &v29);
        v8 = *v7;
        v10 = v7[1];
      }

      while (v8 == v10);
    }

    else
    {
      v10 = v8;
      v8 = v9;
    }

    v9 = v8;
    v8 = v10;
    if (v7[4])
    {
      v24 = fd_create_protected(*(a3 + 64), "indexState", 0, 3u);
      _fd_unlink_with_origin(v24, 0);
      fd_release(v24);
      if (v7[4])
      {
        v21 = __si_assert_copy_extra_7645(0, *(a3 + 64));
        v22 = v21;
        v23 = "";
        if (v21)
        {
          v23 = v21;
        }

        __message_assert("%s:%u: failed assertion '%s' %s corrupt ro index need to rebuild %s", "CIMerging.c", 566, "!buffers->badIndex", v23, (a3 + 15208));
        free(v22);
        v19 = *(a3 + 64);
LABEL_26:
        if (__valid_fs(v19))
        {
          v20 = 2989;
        }

        else
        {
          v20 = 3072;
        }

        *v20 = -559038737;
        abort();
      }

      v9 = *v7;
      v8 = v7[1];
    }

    if (v9 < v8)
    {
      break;
    }

    if (v7[3] || *a5)
    {
      result = pthread_mutex_unlock((a2 + 245784));
      *a1 = -1;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }
  }

  v12 = a2 + 56 * (v9 & 0x7FF);
  v13 = *(v12 + 16);
  *a1 = *v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = *(v12 + 32);
  *(a1 + 48) = *(v12 + 48);
  v14 = *(a1 + 16) & 0x7FFFFFFF;
  memcpy(a4, *(a1 + 24), v14);
  *(a1 + 24) = a4;
  ++*v7;
  if (!*(a1 + 52))
  {
    *(a4 + v14) = 0;
    if (strlen(a4) > v14)
    {
      v15 = __si_assert_copy_extra_7645(0, *(a3 + 64));
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = "";
      }

      v18 = strlen(a4);
      __message_assert("%s:%u: failed assertion '%s' %s Expected %ld to be leq %u", "CIMerging.c", 583, "strlen((char*)strbuf) <= workItem.termLen", v17, v18, v14);
      free(v16);
      v19 = *(a3 + 64);
      goto LABEL_26;
    }
  }

  return pthread_mutex_unlock((a2 + 245784));
}

uint64_t TermItem_compare(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a2 == -1)
  {
    if (v2 == -1)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  if (v2 == -1)
  {
    return 1;
  }

  v4 = a1;
  v5 = *(a2 + 52);
  v6 = *(a1 + 52) - v5;
  if (v6)
  {
    return v6;
  }

  if (v5 > 1)
  {
    if (v5 == 2 || v5 == 3 || v5 == 4)
    {
      v7 = *(a1 + 16);
      v8 = *(a2 + 16);
      if (v7 < 0)
      {
        if ((v8 & 0x80000000) == 0)
        {
          return -1;
        }
      }

      else if (v8 < 0)
      {
        return 1;
      }

      v28 = (v7 & 0x7FFFFFFF) - (v8 & 0x7FFFFFFF);
      if (v28)
      {
        return v28;
      }

      result = TermItem_IVF_compare(a1, a2);
      if (!result)
      {
        return *(a2 + 56) - *(v4 + 56);
      }

      return result;
    }

LABEL_54:
    v36 = __si_assert_copy_extra_7645(0, -1);
    v37 = v36;
    v38 = "";
    if (v36)
    {
      v38 = v36;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIMerging.c", 196, "0", v38);
    free(v37);
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

  if (v5)
  {
    if (v5 == 1)
    {
      v10 = *(a1 + 16);
      v11 = (v10 >> 3) & 0xFFFFFFF;
      v12 = *(a2 + 16);
      v13 = (v12 >> 3) & 0xFFFFFFF;
      v14 = v11 - v13;
      if (v11 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      if (v15)
      {
        v41 = v11 - v13;
        v16 = (*(a2 + 24) + 8 * ((v12 >> 3) & 0xFFFFFFF) - 8);
        v17 = (*(a1 + 24) + 8 * ((v10 >> 3) & 0xFFFFFFF) - 8);
        v18 = 1;
        v19 = v15;
        v20 = 1;
        do
        {
          v22 = *v17--;
          v21 = v22;
          v24 = *v16--;
          v23 = v24;
          if (v21 != v24)
          {
            v25 = hash64(v21);
            v26 = hash64(v23);
            if (v25 > v26)
            {
              break;
            }

            if (v21 < v23 || v25 < v26)
            {
              v35 = -1;
              goto LABEL_48;
            }

            if (v21 > v23)
            {
              break;
            }
          }

          v20 = v18++ < v15;
          --v19;
        }

        while (v19);
        v35 = 1;
LABEL_48:
        v4 = a1;
        if (v20)
        {
          v14 = v35;
        }

        else
        {
          v14 = v41;
        }
      }

      if (v14)
      {
        return v14;
      }

      return *(a2 + 56) - *(v4 + 56);
    }

    goto LABEL_54;
  }

  v29 = *(a1 + 24);
  v30 = *(v4 + 16) & 0x7FFFFFFF;
  v31 = *(a2 + 24);
  v32 = *(a2 + 16);
  v33 = v32 & 0x7FFFFFFF;
  if (v30 >= (v32 & 0x7FFFFFFFu))
  {
    v34 = v33;
  }

  else
  {
    v34 = v30;
  }

  LODWORD(result) = strncmp(v29, v31, v34);
  if (result)
  {
    result = result;
  }

  else
  {
    result = v30 - v33;
  }

  if (!result)
  {
    result = v30 - v33;
    if (v30 == v33)
    {
      return *(a2 + 56) - *(v4 + 56);
    }
  }

  return result;
}

uint64_t TermItem_IVF_compare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 < v3)
  {
    return -1;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *(a1 + 48);
  v6 = *(a2 + 48);
  if (v5 < v6)
  {
    return -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  if ((*(a1 + 50) & 1) == 0)
  {
    if ((*(a2 + 50) & 1) == 0)
    {
      goto LABEL_11;
    }

    return -1;
  }

  if (!*(a2 + 50))
  {
    return 1;
  }

LABEL_11:
  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (v7 < v8)
  {
    return -1;
  }

  if (v7 > v8)
  {
    return 1;
  }

  v9 = *(a1 + 36);
  v10 = *(a2 + 36);
  if (v9 < v10)
  {
    return -1;
  }

  if (v9 > v10)
  {
    return 1;
  }

  return memcmp(*(a1 + 24), *(a2 + 24), *(a1 + 16) & 0x7FFFFFFF);
}

uint64_t mergeIndexDataTrampoline(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v55 = *MEMORY[0x1E69E9840];
  makeThreadId();
  pthread_set_qos_class_self_np(5u, -15);
  v2 = *v1;
  if (*(*v1 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v4 = *(v1 + 6);
    if (v4 == -1)
    {
      v4 = *(v2 + 64);
    }

    v5 = setThreadIdAndInfo(v4, sIndexExceptionCallbacks, v2, 0x20000000, add_explicit + 1);
    v52 = HIDWORD(v5);
    v53 = v5;
    v51 = __PAIR64__(v6, v7);
    v8 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    *(v8 + 216) = 1;
    v9 = *(v8 + 312);
    v10 = *(v8 + 224);
    v11 = v8;
    if (v10)
    {
      v10(*(v8 + 288));
    }

    v50 = v53;
    v49 = v52;
    v48 = v51;
    if (_setjmp(v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v11 + 312) = v9;
      if ((~*(v11 + 212) & 0xA0000000) == 0)
      {
        v12 = *(v11 + 288);
        if (v12)
        {
          _CIMakeInvalid(v12);
        }
      }

      CIOnThreadCleanUpReset(v48);
      dropThreadId(v50, 1, add_explicit + 1);
      CICleanUpReset(v50, HIDWORD(v48));
    }

    else
    {
      v47 = 0;
      v13 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v14 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v13 + 1);
      v45 = HIDWORD(v14);
      v46 = v14;
      v44 = __PAIR64__(v15, v16);
      v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
      v18 = *(v17 + 312);
      v19 = *(v17 + 224);
      if (v19)
      {
        v19(*(v17 + 288));
      }

      v43 = v46;
      v42 = v45;
      v41 = v44;
      if (_setjmp(v17))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v17 + 312) = v18;
        CIOnThreadCleanUpReset(v41);
        dropThreadId(v43, 1, v13 + 1);
        CICleanUpReset(v43, HIDWORD(v41));
      }

      else
      {
        v38 = v13;
        v39 = v18;
        v20 = v1[1];
        v21 = atomic_load((*v1 + 36));
        v22 = *v1;
        if ((v21 & 4) != 0)
        {
          v23 = compact_callback;
        }

        else
        {
          v23 = non_compact_callback;
        }

        if ((v21 & 4) != 0)
        {
          v24 = 0;
        }

        else
        {
          v24 = *v1 + 4984;
        }

        v25 = v1[2];
        bzero(buf, 0x5160uLL);
        _bt_dumpTrie(v22 + 96, 1, v25, buf, v23, v20);
        v26 = *(*v1 + 4928);
        if (v26)
        {
          v40[6] = MEMORY[0x1E69E9820];
          v40[7] = 0x40000000;
          v40[8] = __mergeIndexDataTrampoline_block_invoke;
          v40[9] = &__block_descriptor_tmp_51_7823;
          v40[10] = v1;
          v40[11] = v24;
          dumpDirectoryStore(v26);
        }

        if (_os_feature_enabled_impl())
        {
          v27 = *v1;
          v28 = *(*v1 + 4912);
          if (v28)
          {
            v29 = v1[4];
            v30 = *(v1 + 29);
            v40[0] = MEMORY[0x1E69E9820];
            v40[1] = 0x40000000;
            v40[2] = __mergeIndexDataTrampoline_block_invoke_2;
            v40[3] = &__block_descriptor_tmp_56_7824;
            v40[4] = v1;
            v40[5] = v24;
            dumpVectorIndex(v28, v30, (v27 + 15192), v29, v40);
          }
        }

        v47 = 1;
        v31 = threadData[9 * v43 + 1] + 320 * v42;
        *(v31 + 312) = v39;
        v32 = *(v31 + 232);
        if (v32)
        {
          v32(*(v31 + 288));
        }

        dropThreadId(v43, 0, v38 + 1);
      }

      if ((v47 & 1) == 0)
      {
        *(v1[1] + 245776) = 1;
      }

      v33 = threadData[9 * v50 + 1] + 320 * v49;
      *(v33 + 312) = v9;
      v34 = *(v33 + 232);
      if (v34)
      {
        v34(*(v33 + 288));
      }

      dropThreadId(v50, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

  pthread_mutex_lock((v1[1] + 245784));
  v35 = v1[1];
  *(v35 + 245772) = 1;
  pthread_cond_signal((v35 + 245896));
  pthread_mutex_unlock((v1[1] + 245784));
  v36 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL __mergeIndexDataTrampoline_block_invoke(uint64_t a1, int a2, const void *a3, uint64_t a4)
{
  v4 = a4;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  if (v7)
  {
    v4 = *storageResolvePtr(v7, 8 * a4, 8, 1);
  }

  waitForReaderWithPropertyId(v9, a3, 8 * a2, 1, 0, v4, 0, 0, 3.4028e38, 0, 0, -1, 0);
  return **(v9 + 245976) != 0;
}

BOOL __mergeIndexDataTrampoline_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, int a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v10;
  v83 = *MEMORY[0x1E69E9840];
  v29 = *(v10 + 32);
  v28 = *(v10 + 40);
  v30 = *(v29 + 8);
  if (v28)
  {
    v31 = *(v28 + 4416);
    if (v31 <= v11)
    {
      si_analytics_log_2752("Invalid termId from vector index %llu (count:%d)", v11, v31);
      goto LABEL_49;
    }

    v14 = *storageResolvePtr(v28, 8 * v11, 8, 1);
    v29 = *(v27 + 32);
  }

  v32 = a9;
  if (**(v29 + 40) == v26)
  {
    v33 = 0;
    goto LABEL_38;
  }

  v55 = v18;
  v56 = v16;
  v57 = v24;
  v58 = v20;
  v60 = v30;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2000000000;
  v70 = 0;
  v66 = 0;
  v34 = _fd_acquire_fd(*(*v29 + 9432), &v66);
  v35 = *(v27 + 32);
  v36 = *(*v35 + 80);
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 0x40000000;
  v62 = __mergeIndexDataTrampoline_block_invoke_3;
  v63 = &unk_1E8194A68;
  v64 = &v67;
  v65 = v35;
  v37 = malloc_type_malloc(0x20uLL, 0x1080040A9F9A45FuLL);
  *v37 = v34;
  v37[1] = v36;
  v37[2] = 0;
  v54 = v37;
  v37[3] = v61;
  v76 = 0;
  v59 = v14;
  while (1)
  {
    bzero(&__fd, 0x1028uLL);
    __fd = v34;
    v81 = v79;
    __offseta = v14;
    __src = v79;
    file_scanner_read(&__fd);
    vint = file_scanner_read_vint(&__fd);
    if ((vint & 1) == 0)
    {
      break;
    }

    vint32 = file_scanner_read_vint32(&__fd);
    v40 = malloc_type_malloc(vint32, 0x58B77ACCuLL);
    v41 = v40;
    if (v82)
    {
      goto LABEL_23;
    }

    v42 = vint32;
    v43 = v81 - __src;
    if (v81 != __src)
    {
      v42 = vint32 - v43;
      if (vint32 <= v43)
      {
        memcpy(v40, __src, vint32);
        __src = __src + vint32;
        goto LABEL_22;
      }

      memcpy(v40, __src, v81 - __src);
      __src = __src + v43;
    }

    if (pread(__fd, &v41[v43], v42, __offseta) == v42)
    {
      v81 = v79;
      __offseta += v42 + v43;
      __src = v79;
      v82 = 0;
      file_scanner_read(&__fd);
    }

    else
    {
      v44 = *MEMORY[0x1E69E9848];
      v82 = *__error();
      fprintf(v44, "\npread error(%d) offset: 0x%llx\n", v82, __offseta);
    }

LABEL_22:
    if (!v82)
    {
      v71 = 0;
      v72 = 0u;
      v73 = v41;
      v74 = vint32;
      v75 = 0;
      if (v41)
      {
        v45 = vint32 == 0;
      }

      else
      {
        v45 = 1;
      }

      v46 = v45;
      HIDWORD(v75) = v46;
      while (PostingChunkEnumeratorNextDocID(&v72, &v71))
      {
        (v62)(v61);
        if (v76)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_23:
    free(v41);
    if (vint < 2)
    {
      goto LABEL_34;
    }

LABEL_24:
    v14 = vint >> 1;
  }

  if ((file_scanner_read_vint(&__fd) & 1) == 0 && !file_scanner_read_vint32(&__fd))
  {
    file_scanner_read_vint32(&__fd);
  }

  (v62)(v61);
  if (vint >= 2 && (v76 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_34:
  free(v54);
  Current = CFAbsoluteTimeGetCurrent();
  v48 = v68[3];
  v33 = Current - v48 > 31104000.0 || v48 == 0.0;
  _fd_release_fd(*(**(v27 + 32) + 9432), v34, 0, v66);
  _Block_object_dispose(&v67, 8);
  v30 = v60;
  v20 = v58;
  v14 = v59;
  v24 = v57;
  v18 = v55;
  v16 = v56;
  v32 = a9;
LABEL_38:
  v49 = -1;
  if (v18 <= 2 && v16 <= 2)
  {
    v49 = vector_dimension_vec_sizes_15424[v18] * vector_size_elem_sizes_15423[v16];
  }

  if (v16 == 1)
  {
    v50 = 3;
  }

  else
  {
    v50 = 4;
  }

  if (v16 == 2)
  {
    v51 = 2;
  }

  else
  {
    v51 = v50;
  }

  waitForReaderWithPropertyId(v30, v20, v49, v51, v32, v14, 0, v26, v13, v24, v22, a10, v33);
LABEL_49:
  result = **(v30 + 245976) != 0;
  v53 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __mergeIndexDataTrampoline_block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = **(result + 40);
  v5 = a4 - *(v4 + 80);
  v6 = 0.0;
  if (v5 < *(v4 + 68))
  {
    v7 = *(v4 + 14416);
    if (v7)
    {
      LODWORD(v6) = *(v7 + 4 * v5);
      v6 = *&v6;
    }
  }

  v8 = *(*(result + 32) + 8);
  if (*(v8 + 24) < v6)
  {
    *(v8 + 24) = v6;
  }

  return result;
}

uint64_t waitForReaderWithPropertyId(uint64_t a1, const void *a2, unsigned int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, float a9, __int16 a10, int a11, int a12, char a13)
{
  v16 = (a1 + 245760);
  pthread_mutex_lock((a1 + 245784));
  if (((v16[2] & 0x1FFFF) + a3) >> 17)
  {
    v18 = *v16;
    for (i = v16[1]; i > *v16 && !**(v16 + 27); i = v16[1])
    {
      pthread_cond_signal((a1 + 245896));
      v34.tv_sec = 0;
      v34.tv_nsec = 0;
      v33.tv_sec = 0;
      *&v33.tv_usec = 0;
      gettimeofday(&v33, 0);
      v34.tv_sec = v33.tv_sec;
      v34.tv_nsec = 1000 * v33.tv_usec + 500000000;
      if (v33.tv_usec > 499999)
      {
        v34.tv_sec = v33.tv_sec + 1;
        v34.tv_nsec = 1000 * v33.tv_usec - 500000000;
      }

      pthread_cond_timedwait((a1 + 245848), (a1 + 245784), &v34);
      v18 = *v16;
    }
  }

  else
  {
    v18 = *v16;
    i = v16[1];
  }

  v19 = v18 + 2048;
  v20 = *(v16 + 27);
  if (i >= v19)
  {
    if (*v20)
    {
      return pthread_mutex_unlock((a1 + 245784));
    }

    while (1)
    {
      pthread_cond_signal((a1 + 245896));
      v34.tv_sec = 0;
      v34.tv_nsec = 0;
      v33.tv_sec = 0;
      *&v33.tv_usec = 0;
      gettimeofday(&v33, 0);
      v34.tv_sec = v33.tv_sec;
      v34.tv_nsec = 1000 * v33.tv_usec + 500000000;
      if (v33.tv_usec > 499999)
      {
        v34.tv_sec = v33.tv_sec + 1;
        v34.tv_nsec = 1000 * v33.tv_usec - 500000000;
      }

      pthread_cond_timedwait((a1 + 245848), (a1 + 245784), &v34);
      i = v16[1];
      v20 = *(v16 + 27);
      if (i < *v16 + 2048)
      {
        break;
      }

      if (*v20)
      {
        return pthread_mutex_unlock((a1 + 245784));
      }
    }
  }

  if (!*v20)
  {
    v21 = a1 + 56 * (i & 0x7FF);
    *v21 = a6;
    *(v21 + 8) = a7;
    *(v21 + 52) = a4;
    if (a5)
    {
      v22 = 0x80000000;
    }

    else
    {
      v22 = 0;
    }

    *(v21 + 16) = v22 & 0x80000000 | a3 & 0x7FFFFFFF;
    *(v21 + 32) = a8;
    *(v21 + 36) = a11;
    *(v21 + 40) = a12;
    *(v21 + 44) = a9;
    *(v21 + 48) = a10;
    *(v21 + 50) = a13;
    v23 = v16[2];
    v24 = (v23 & 0x1FFFF) + a3;
    if (v24 >= 0x20000)
    {
      v25 = (a1 + 114688);
    }

    else
    {
      v25 = (a1 + 114688 + (*&v23 & 0x1FFFFLL));
    }

    if (v24 >= 0x20000)
    {
      v23 = 0;
    }

    *(v21 + 24) = v25;
    v16[2] = v23 + a3;
    if (a2)
    {
      memcpy(v25, a2, a3);
      i = v16[1];
    }

    v16[1] = i + 1;
  }

  return pthread_mutex_unlock((a1 + 245784));
}

uint64_t compact_callback(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = *(a5 + 245960);
  if (!v10 || (result = v10(*(a5 + 245968), a2, a1), (result & 1) == 0))
  {
    if (!a4 || v9 < 2)
    {
      return waitForReaderWithPropertyId(a5, a2, v9, 0, 0, a3, a4, 0, 3.4028e38, 0, 0, -1, 0);
    }

    if (*a2 > 3u)
    {
      v14 = &a2[v9];
      v15 = v14 - 6;
      if (v9 < 6)
      {
        v15 = a2 + 1;
      }

      v16 = *(v14 - 1);
      if (v16 < 0)
      {
        return waitForReaderWithPropertyId(a5, a2, v9, 0, 0, a3, a4, 0, 3.4028e38, 0, 0, -1, 0);
      }

      v18 = *(v14 - 2);
      v17 = (v14 - 2);
      if (v18 == 1 && v16 == 3)
      {
        --v17;
      }

      if (v17 <= v15)
      {
LABEL_21:
        v20 = *v17;
      }

      else
      {
        while (*v17 < 0)
        {
          if (--v17 <= v15)
          {
            v17 = v15;
            goto LABEL_21;
          }
        }

        v20 = *v17;
      }

      if (v20 != 1)
      {
        return waitForReaderWithPropertyId(a5, a2, v9, 0, 0, a3, a4, 0, 3.4028e38, 0, 0, -1, 0);
      }

      v12 = v17[1];
      if ((v17[1] & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      v21 = v17[2];
      if ((v17[2] & 0x80000000) == 0)
      {
        v12 = v12 & 0x7F | (v21 << 7);
        goto LABEL_41;
      }

      v25 = v17[3];
      if (v17[3] < 0)
      {
        v27 = v17[4];
        if (v17[4] < 0)
        {
          v29 = v17[5];
          if (v29 < 0)
          {
            v34 = __si_assert_copy_extra_7645(0, -1);
            v35 = v34;
            v36 = "";
            if (v34)
            {
              v36 = v34;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v36);
            free(v35);
            if (__valid_fs(-1))
            {
              v37 = 2989;
            }

            else
            {
              v37 = 3072;
            }

            *v37 = -559038737;
            abort();
          }

          v28 = ((v27 & 0x7F) << 21) | (v29 << 28) | ((v25 & 0x7F) << 14);
        }

        else
        {
          v28 = ((v25 & 0x7F) << 14) | (v27 << 21);
        }

        v23 = v28 & 0xFFFFC07F | ((v21 & 0x7F) << 7);
      }

      else
      {
        v23 = ((v21 & 0x7F) << 7) | (v25 << 14);
      }
    }

    else
    {
      v12 = a2[1];
      if ((a2[1] & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      v13 = a2[2];
      if ((a2[2] & 0x80000000) == 0)
      {
        v12 = v12 & 0x7F | (v13 << 7);
        goto LABEL_41;
      }

      v22 = a2[3];
      if (a2[3] < 0)
      {
        v24 = a2[4];
        if (a2[4] < 0)
        {
          v26 = a2[5];
          if (v26 < 0)
          {
            v30 = __si_assert_copy_extra_7645(0, -1);
            v31 = v30;
            v32 = "";
            if (v30)
            {
              v32 = v30;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v32);
            free(v31);
            if (__valid_fs(-1))
            {
              v33 = 2989;
            }

            else
            {
              v33 = 3072;
            }

            *v33 = -559038737;
            abort();
          }

          v12 = ((v24 & 0x7F) << 21) | (v26 << 28) | ((v22 & 0x7F) << 14) | ((v13 & 0x7F) << 7) | v12 & 0x7F;
        }

        else
        {
          v12 = ((v22 & 0x7F) << 14) | (v24 << 21) | ((v13 & 0x7F) << 7) | v12 & 0x7F;
        }

        goto LABEL_41;
      }

      v23 = ((v13 & 0x7F) << 7) | (v22 << 14);
    }

    v12 = v23 & 0xFFFFFF80 | v12 & 0x7F;
LABEL_41:
    if (v12)
    {
      a4 = 0;
    }

    return waitForReaderWithPropertyId(a5, a2, v9, 0, 0, a3, a4, 0, 3.4028e38, 0, 0, -1, 0);
  }

  return result;
}

uint64_t non_compact_callback(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = a5 + 245760;
  v10 = *(a5 + 245960);
  if (!v10 || (result = v10(*(a5 + 245968), a2, a1), (result & 1) == 0))
  {
    v12 = 8 * a3;
    v13 = *storageResolvePtr(*(v9 + 184), v12, 8, 1);
    v14 = storageResolvePtr(*(v9 + 192), v12, 8, 1);
    return waitForReaderWithPropertyId(a5, a2, v8, 0, 0, v13, *v14, 0, 3.4028e38, 0, 0, -1, 0);
  }

  return result;
}

uint64_t db_downgrade_lock(pthread_mutex_t *a1)
{
  pthread_mutex_lock(a1);
  a1[3].__opaque[12] = 1;
  db_rwlock_wakeup(a1, 1, 1);

  return pthread_mutex_unlock(a1);
}

CFTypeRef CopyAppleLanguages()
{
  if (CopyAppleLanguages_once != -1)
  {
    dispatch_once(&CopyAppleLanguages_once, &__block_literal_global_7886);
  }

  result = CopyAppleLanguages_sAppleLanguages;
  if (CopyAppleLanguages_sAppleLanguages)
  {

    return CFRetain(result);
  }

  return result;
}

void __CopyAppleLanguages_block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyAppValue(@"AppleLanguages", *MEMORY[0x1E695E8A8]);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFArrayGetTypeID() && CFArrayGetCount(v1) > 0)
    {
      goto LABEL_21;
    }

    CFRelease(v1);
  }

  v3 = fopen("/var/log/CDIS.custom", "r");
  v4 = MEMORY[0x1E695E480];
  if (!v3)
  {
LABEL_20:
    *values = @"en";
    v1 = CFArrayCreate(*v4, values, 1, MEMORY[0x1E695E9C0]);
    goto LABEL_21;
  }

  v5 = v3;
  memset(v23, 0, sizeof(v23));
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  memset(values, 0, sizeof(values));
  cStr = 0;
  while (fgets(values, 100, v5))
  {
    if (*values == 0x45474155474E414CLL && values[8] == 61)
    {
      sscanf(values, "LANGUAGE=%s\n", &cStr);
      break;
    }
  }

  if (!cStr)
  {
    fclose(v5);
    goto LABEL_20;
  }

  v7 = *v4;
  v8 = CFStringCreateWithCString(*v4, &cStr, 0x600u);
  fclose(v5);
  if (!v8)
  {
    goto LABEL_20;
  }

  CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v7, v8);
  *values = CanonicalLanguageIdentifierFromString;
  CFRelease(v8);
  if (!CanonicalLanguageIdentifierFromString)
  {
    goto LABEL_20;
  }

  v1 = CFArrayCreate(v7, values, 1, MEMORY[0x1E695E9C0]);
  CFRelease(*values);
  if (!v1)
  {
    goto LABEL_20;
  }

LABEL_21:
  CopyAppleLanguages_sAppleLanguages = v1;
  v10 = *MEMORY[0x1E69E9840];
}

void _MDSimpleQuerySetWidcardAttributes(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  if (cf)
  {
    *(a1 + 40) = CFRetain(cf);
  }
}

void *_MDCreateSimpleQueryEvaluatorWithBlock(const __CFString *a1, const void *a2)
{
  EvaluatorWithOptionsAndLanguages = _MDCreateSimpleQueryEvaluatorWithOptionsAndLanguages(a1, 0, 0, 0);
  if (EvaluatorWithOptionsAndLanguages)
  {
    EvaluatorWithOptionsAndLanguages[2] = _Block_copy(a2);
  }

  return EvaluatorWithOptionsAndLanguages;
}

void *_MDCreateSimpleQueryEvaluatorWithOptionsAndLanguages(const __CFString *a1, uint64_t a2, char a3, const __CFArray *a4)
{
  v47[128] = *MEMORY[0x1E69E9840];
  if (query_zone_init_onceToken == -1)
  {
    if (!a1)
    {
      goto LABEL_60;
    }
  }

  else
  {
    dispatch_once(&query_zone_init_onceToken, &__block_literal_global_5335);
    if (!a1)
    {
      goto LABEL_60;
    }
  }

  bzero(v47, 0x400uLL);
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v9 = CStringPtr;
    v10 = v47;
    goto LABEL_5;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v16 = MaximumSizeForEncoding;
  if (MaximumSizeForEncoding < 1024)
  {
    v9 = v47;
  }

  else
  {
    v9 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xBFFE994DuLL);
  }

  if (CFStringGetCString(a1, v9, v16 + 1, 0x8000100u))
  {
    v10 = v9;
    if (!v9)
    {
      goto LABEL_30;
    }

LABEL_5:
    v11 = *v9;
    if ((v11 - 35) > 0x1D || ((1 << (v11 - 35)) & 0x20000003) == 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = v9 + 1;
    }

    query_node_with_ann = db_make_query_node_with_ann(v13, 0);
    if (!query_node_with_ann)
    {
      goto LABEL_30;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (db_sanitize_query_tree(&query_node_with_ann, 0, 1, Current))
    {
      db_dump_query_node_with_prefix(0, 0, 0, query_node_with_ann, "");
      v18 = strlen(v9);
      if (2 * v18)
      {
        v19 = 2 * v18;
      }

      else
      {
        v19 = 64;
      }

      v20 = malloc_good_size(v19);
      v46 = malloc_type_malloc(v20, 0x100004077774924uLL);
      tree = _db_render_query_tree(&query_node_with_ann);
      v22 = v46;
      if (tree)
      {
        db_free_query_node(query_node_with_ann);
        if (v22)
        {
          v23 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v22, 0x8000100u);
          free(v22);
          goto LABEL_31;
        }

LABEL_30:
        v23 = 0;
LABEL_31:
        v9 = v10;
        if (v10 == v47)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      free(v46);
      v24 = query_node_with_ann;
    }

    else
    {
      v24 = query_node_with_ann;
    }

    db_free_query_node(v24);
    goto LABEL_30;
  }

  if (v9 == v47)
  {
LABEL_60:
    v28 = 0;
    goto LABEL_61;
  }

  v23 = 0;
LABEL_32:
  free(v9);
LABEL_33:
  if (!v23)
  {
    goto LABEL_60;
  }

  v25 = CFStringGetLength(v23);
  v26 = CFStringGetMaximumSizeForEncoding(v25, 0x8000100u);
  v27 = malloc_type_malloc(v26 + 1, 0x100004077774924uLL);
  if (CFStringGetCString(v23, v27, v26, 0x8000100u))
  {
    v28 = malloc_type_calloc(0x60uLL, 1uLL, 0x6244E922uLL);
    if (v27)
    {
      v29 = *v27 - 35;
      v30 = v27;
      if (v29 <= 0x1D)
      {
        if (((1 << v29) & 0x20000003) != 0)
        {
          v30 = v27 + 1;
        }

        else
        {
          v30 = v27;
        }
      }

      v31 = db_make_query_node_with_ann(v30, 0);
    }

    else
    {
      v31 = 0;
    }

    *v28 = v31;
    v28[1] = a2;
    v28[4] = v27;
    v28[11] = 0;
    if (a3)
    {
      *(v28 + 80) = 1;
    }

    v32 = a4;
    if (a4 || (v32 = CopyAppleLanguages()) != 0)
    {
      Count = CFArrayGetCount(v32);
      v34 = malloc_type_calloc(Count + 1, 8uLL, 0x10040436913F5uLL);
      if (Count < 1)
      {
        Count = 0;
      }

      else
      {
        v44 = a4;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v32, i);
          v37 = CFStringGetLength(ValueAtIndex);
          v38 = CFStringGetMaximumSizeForEncoding(v37, 0x8000100u);
          v39 = malloc_type_malloc(v38 + 1, 0x100004077774924uLL);
          if (!CFStringGetCString(ValueAtIndex, v39, v38, 0x8000100u))
          {
            *v39 = 0;
          }

          v34[i] = v39;
        }

        a4 = v44;
      }

      v34[Count] = 0;
      v28[3] = v34;
      if (v32 != a4)
      {
        CFRelease(v32);
      }
    }

    else
    {
      v40 = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
      *v40 = 0;
      v28[3] = v40;
    }

    db_optimize_query_tree(v28);
    v41 = *v28;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v47[2] = __db_query_tree_apply_block_block_invoke;
    v47[3] = &unk_1E8198ED0;
    v47[4] = &__block_literal_global_18_7900;
    db_query_tree_apply_block_with_meta(v41, v47, 0);
  }

  else
  {
    free(v27);
    v28 = 0;
  }

  CFRelease(v23);
LABEL_61:
  v42 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t ____walkNodes_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      *(v3 + 32) |= 0x80uLL;
      *(v3 + 8) = __MDSimpleQueryCompareFunction;
      v4 = *v3;
      if (*v3)
      {
        v5 = CopyQueryField_sDict[0];
        if (!CopyQueryField_sDict[0])
        {
          v10 = *byte_1F427D800;
          v6 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &v10, MEMORY[0x1E695E9E8]);
          v7 = 0;
          atomic_compare_exchange_strong(CopyQueryField_sDict, &v7, v6);
          if (v7)
          {
            CFRelease(v6);
          }

          v5 = CopyQueryField_sDict[0];
        }

        Value = CFDictionaryGetValue(v5, v4);
        if (!Value)
        {
          Value = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0x8000100u);
        }

        *(a2 + 32) = Value;
      }
    }
  }

  return a2;
}

uint64_t _field_hash(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  if (v2 >= 0x11)
  {
    v6 = 0;
    v4 = v2;
    do
    {
      v4 = v1[v6++] + 38 * v4;
    }

    while (v6 != 8);
    if (&v1[v2 - 8] < &v1[v2])
    {
      v7 = -8;
      do
      {
        v4 = v1[v2 + v7++] + 38 * v4;
      }

      while (v7);
    }
  }

  else if (v2)
  {
    v3 = &v1[v2];
    v4 = v2;
    do
    {
      v5 = *v1++;
      v4 = v5 + 38 * v4;
    }

    while (v1 < v3);
  }

  else
  {
    v4 = 0;
  }

  return ((v4 << v2) + v4);
}

uint64_t __MDSimpleQueryCompareFunction(uint64_t a1, void *a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a4;
  v11 = *(a5 + 56);
  if (v11 && !CFEqual(v11, *a4) && !CFEqual(v10, @"*"))
  {
    return 1;
  }

  v12 = *(a3 + 24);
  if ((v12 - 11) <= 1)
  {
    CompareFunctionSub = v12 == 12;
    if (*(a3 + 40) == 2)
    {
      v14 = *(a5 + 8);
      if (v14)
      {
        v15 = v14(a5, *a2, v10);
      }

      else
      {
        v30 = *a2;
        v15 = (*(*(a5 + 16) + 16))();
      }

      v29 = v15;
      if (v15)
      {
        v31 = CFGetTypeID(v15);
        if (v31 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(v29);
          if (Count)
          {
            v33 = Count;
            if (a6 && (*(a3 + 35) & 2) != 0)
            {
              if (Count < 1)
              {
                CompareFunctionSub = 0;
              }

              else
              {
                CompareFunctionSub = 0;
                for (i = 0; i != v33; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v29, i);
                  if (RangeMatch(a3, ValueAtIndex, v12 == 12))
                  {
                    CompareFunctionSub = db_eval_obj_qp_array_set_match_at_index(a6, a3, i);
                  }
                }
              }
            }

            else if (Count >= 1)
            {
              v34 = 0;
              while (1)
              {
                v35 = CFArrayGetValueAtIndex(v29, v34);
                v36 = RangeMatch(a3, v35, v12 == 12);
                if (v36 != CompareFunctionSub)
                {
                  break;
                }

                if (v33 == ++v34)
                {
                  goto LABEL_47;
                }
              }

              CompareFunctionSub = v36 ^ 1u;
            }
          }
        }

        else
        {
          CompareFunctionSub = RangeMatch(a3, v29, v12 == 12);
        }

        goto LABEL_47;
      }
    }

    return CompareFunctionSub;
  }

  if (!*(a5 + 56))
  {
    if (*(a5 + 80) == 1)
    {
      v18 = *a3;
    }

    else
    {
      if ((*(a3 + 33) & 4) != 0)
      {
        return 0;
      }

      v18 = *a3;
      if (*a3)
      {
        if (!strcmp(*a3, "kMDItemTextContent") || !strncmp(v18, "_kMDItemOCRContent", 0x12uLL))
        {
          return 0;
        }
      }
    }

    if (*v18 != 42 || v18[1])
    {
      goto LABEL_9;
    }

    v19 = *(a5 + 40);
    if (v19)
    {
      v20 = CFArrayGetCount(v19);
      if (v20 >= 1)
      {
        v21 = v20;
        for (j = 0; j != v21; ++j)
        {
          v23 = CFArrayGetValueAtIndex(*(a5 + 40), j);
          v24 = *(a5 + 8);
          if (v24)
          {
            v25 = v24(a5, *a2, v23);
          }

          else
          {
            v26 = *a2;
            v25 = (*(*(a5 + 16) + 16))();
          }

          v27 = v25;
          CompareFunctionSub = __MDSimpleQueryCompareFunctionSub(a3, v25, a5, a6);
          if (v27)
          {
            CFRelease(v27);
          }

          if (CompareFunctionSub)
          {
            break;
          }
        }

        return CompareFunctionSub;
      }
    }

    return 0;
  }

LABEL_9:
  v16 = *(a5 + 8);
  if (v16)
  {
    v17 = v16(a5, *a2, v10);
  }

  else
  {
    v28 = *a2;
    v17 = (*(*(a5 + 16) + 16))();
  }

  v29 = v17;
  CompareFunctionSub = __MDSimpleQueryCompareFunctionSub(a3, v17, a5, a6);
  if (v29)
  {
LABEL_47:
    CFRelease(v29);
  }

  return CompareFunctionSub;
}

uint64_t RangeMatch(uint64_t a1, CFTypeRef cf, int a3)
{
  valuePtr = 0.0;
  v6 = CFGetTypeID(cf);
  if (v6 != CFNumberGetTypeID())
  {
    v10 = CFGetTypeID(cf);
    if (v10 == CFDateGetTypeID())
    {
      MEMORY[0x1C691E960](cf);
      v7 = strtod(**(a1 + 168), 0);
      v8 = strtod(*(*(a1 + 168) + 8), 0);
      v9 = MEMORY[0x1C691E960](cf);
      goto LABEL_6;
    }

LABEL_10:
    v12 = 0;
    v11 = 1;
    goto LABEL_11;
  }

  v7 = strtod(**(a1 + 168), 0);
  v8 = strtod(*(*(a1 + 168) + 8), 0);
  if (!CFNumberGetValue(cf, kCFNumberDoubleType, &valuePtr))
  {
    goto LABEL_10;
  }

  v9 = valuePtr;
LABEL_6:
  v11 = v9 > v8 || v9 < v7;
  v12 = !v11;
LABEL_11:
  if (a3)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

uint64_t __MDSimpleQueryCompareFunctionSub(uint64_t a1, const __CFString *cf, void *a3, uint64_t a4)
{
  if (!cf)
  {
    return *(a1 + 24) == 5;
  }

  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = (v8 >> 25) & 1;
  }

  else
  {
    v9 = 0;
  }

  if ((v8 & 0x4000000) != 0)
  {
    v10 = *(a1 + 44);
  }

  else
  {
    v10 = -1;
  }

  v11 = CFGetTypeID(cf);
  if (v11 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(cf);
    v13 = Count;
    if (v10 < 0)
    {
      v14 = 1;
    }

    else
    {
      if (v10 < Count)
      {
        v13 = v10 + 1;
        v14 = 1;
        goto LABEL_22;
      }

      v14 = 0;
    }

    if (Count >= 1)
    {
      v10 = 0;
LABEL_22:
      v15 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v10);
        CompareTypeWithQueryPiece = __MDSimpleQueryCompareTypeWithQueryPiece(a3, ValueAtIndex, a1);
        v19 = CompareTypeWithQueryPiece;
        if (!CompareTypeWithQueryPiece)
        {
          v14 = 0;
        }

        if (v9)
        {
          if (CompareTypeWithQueryPiece)
          {
            v15 = db_eval_obj_qp_array_set_match_at_index(a4, a1, v10);
          }
        }

        else if (CompareTypeWithQueryPiece && *(a1 + 24) != 5)
        {
          return CompareTypeWithQueryPiece;
        }

        ++v10;
      }

      while (v13 != v10);
      if (v9)
      {
        return v15;
      }

      goto LABEL_34;
    }

    v15 = 0;
    v19 = 0;
    if ((v9 & 1) == 0)
    {
LABEL_34:
      if (*(a1 + 24) == 5)
      {
        return v14;
      }

      else
      {
        return v19;
      }
    }

    return v15;
  }

  if (v10 > 0)
  {
    return *(a1 + 24) == 5;
  }

  return __MDSimpleQueryCompareTypeWithQueryPiece(a3, cf, a1);
}

uint64_t __MDSimpleQueryCompareTypeWithQueryPiece(void *a1, const __CFString *a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 24);
  if ((v6 - 13) <= 1)
  {
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
    v66 = 0u;
    v67 = 0u;
    LODWORD(v75) = 2048;
    v7 = *a3;
    DWORD2(v66) = 1;
    v65 = v7;
    if (*(a3 + 40) < 1)
    {
      v9 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        *&v81 = *(*(a3 + 168) + 8 * v8);
        v9 = __MDSimpleQueryCompareTypeWithQueryPiece(a1, a2, &v65);
        if (*(&v71 + 1))
        {
          icu_ctx_release();
          *(&v71 + 1) = 0;
        }

        if (v9 >= 1)
        {
          break;
        }

        ++v8;
      }

      while (v8 < *(a3 + 40));
      v6 = *(a3 + 24);
    }

    if (v6 == 13)
    {
      v22 = v9;
    }

    else
    {
      v22 = v9 == 0;
    }

    goto LABEL_103;
  }

  v63[1] = -1;
  v64 = 0.0;
  MEMORY[0x1EEE9AC00](a1);
  bzero(v62, 0x1000uLL);
  v10 = CFGetTypeID(a2);
  if (v10 != CFStringGetTypeID())
  {
    if (MDUnicodeConverterGetTypeID_once != -1)
    {
      dispatch_once(&MDUnicodeConverterGetTypeID_once, &__block_literal_global_14052);
    }

    if (v10 != __kMDUnicodeConverterTypeID)
    {
      if (v10 == CFNumberGetTypeID())
      {
        Type = CFNumberGetType(a2);
        v22 = 0;
        if (Type > kCFNumberDoubleType)
        {
          goto LABEL_103;
        }

        if (((1 << Type) & 0xF9E) != 0)
        {
          CFNumberGetValue(a2, kCFNumberSInt64Type, &v64);
          v32 = 0;
          v33 = 7;
        }

        else
        {
          if (((1 << Type) & 0x3060) == 0)
          {
            goto LABEL_103;
          }

          CFNumberGetValue(a2, kCFNumberDoubleType, &v64);
          v32 = 0;
          v33 = 10;
        }
      }

      else if (v10 == CFDateGetTypeID())
      {
        v64 = MEMORY[0x1C691E960](a2);
        if (!a1[11])
        {
          a1[11] = si_calendar_retain();
        }

        bzero(&v65, 0x400uLL);
        v38 = *(a3 + 72);
        if (*v38 == 36)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (_expandFunctions((v38 + 1), &v65, 0x400uLL, a1[11], &__block_literal_global_4_5387, Current) == 0x10000)
          {
            *(a3 + 264) = strtod(&v65, 0);
            *(a3 + 160) = 4096;
            v33 = 12;
            goto LABEL_60;
          }
        }

        v32 = 0;
        v33 = 12;
      }

      else if (*MEMORY[0x1E695E4D0] == a2)
      {
        v32 = 0;
        v33 = 1;
        LOBYTE(v64) = 1;
      }

      else
      {
        if (*MEMORY[0x1E695E4C0] != a2)
        {
          goto LABEL_98;
        }

        v32 = 0;
        LOBYTE(v64) = 0;
        v33 = 1;
      }

LABEL_50:
      if (convert_value_to_type(v33, a3))
      {
        v22 = 0;
LABEL_100:
        if (v33 == 11 && v62 != *&v64)
        {
          free(*&v64);
        }

        goto LABEL_103;
      }

      if (v32)
      {
        *&v65 = 0;
        v63[0] = 0;
        v37 = a1[3];
        v22 = db_compare_val(11);
        if (v22)
        {
          v42 = a1[6];
          if (v42)
          {
            v43 = 0;
            v44 = v64;
            v45 = (*&v64 + v65);
            *&v65 = 0;
            while (*&v44 < v45)
            {
              v46 = **&v44 >> 4;
              v47 = utf8_byte_length(unsigned char)::utf8_len_table[v46];
              *&v65 = ++v43;
              *&v44 += v47;
              if ((v46 & 0xC) == 8)
              {
                goto LABEL_100;
              }
            }

            v48 = 0;
            v49 = &v45[v63[0]];
            v63[0] = 0;
            while (v45 < v49)
            {
              v50 = *v45 >> 4;
              v51 = utf8_byte_length(unsigned char)::utf8_len_table[v50];
              v63[0] = ++v48;
              v45 += v51;
              if ((v50 & 0xC) == 8)
              {
                goto LABEL_100;
              }
            }

            v42(a1, a1[7], v43, v48, a1[9]);
          }
        }

        goto LABEL_100;
      }

LABEL_60:
      v40 = a1[3];
      v22 = db_compare_val(v33);
      goto LABEL_100;
    }

    if (*(a3 + 24) != 1 || !a1[6])
    {
      *&v65 = 0;
      v34 = MDUnicodeConverterConvert(a2, 0, &v65);
      v35 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], v65, v34);
      if (!v35 || (v36 = v35, v64 = COERCE_DOUBLE(BuildUTF8StringDecomposed(v35, v62)), CFRelease(v36), v64 != 0.0))
      {
LABEL_49:
        v33 = 11;
        v32 = 1;
        goto LABEL_50;
      }

LABEL_47:
      v22 = 0xFFFFFFFFLL;
      goto LABEL_103;
    }

    printf("UNICODE MATCH:%s\n", *(a3 + 72));
    if (!*(a3 + 104))
    {
      v17 = CFStringCreateWithCString(0, *(a3 + 72), 0x8000100u);
      v18 = a1[3];
      if (v18)
      {
        v19 = CFStringCreateWithCString(0, *v18, 0x8000100u);
        v20 = *(a3 + 28);
        v21 = icu_range_search_create();
        if (v19)
        {
          CFRelease(v19);
        }
      }

      else
      {
        v52 = *(a3 + 28);
        v21 = icu_range_search_create();
      }

      CFRelease(v17);
      *(a3 + 104) = v21;
    }

    v65 = 0uLL;
    v63[0] = 0;
    v53 = MDUnicodeConverterConvert(a2, 0, v63);
    v54 = 0;
    v55 = 1;
    if (!v53)
    {
      goto LABEL_98;
    }

    while (1)
    {
      info = a2[1].info;
      icu_range_search_set_uchar_text();
      if (!icu_range_search_next_match())
      {
        goto LABEL_89;
      }

      v57 = *(&v65 + 1) + v65;
      if (!info || v57 < v53)
      {
        break;
      }

LABEL_90:
      v53 = MDUnicodeConverterConvert(a2, 0x100uLL, v63);
      v55 = 0;
      v54 = 256;
      if (!v53)
      {
        goto LABEL_98;
      }
    }

    if (v55 & 1 | (v57 > v54))
    {
      v58 = a1[9];
      (a1[6])(a1, a1[7]);
      goto LABEL_98;
    }

LABEL_89:
    if (!info)
    {
      goto LABEL_98;
    }

    goto LABEL_90;
  }

  v11 = *a3;
  if (strcmp(*a3, "_kMDQueryScope") && strcmp(v11, "_kMDQueryItemInScopeForRankingOnly"))
  {
    if (*(a3 + 24) == 1 && a1[6])
    {
      if (!*(a3 + 104))
      {
        v12 = CFStringCreateWithCString(0, *(a3 + 72), 0x8000100u);
        v13 = a1[3];
        if (v13)
        {
          v14 = CFStringCreateWithCString(0, *v13, 0x8000100u);
          v15 = *(a3 + 28);
          v16 = icu_range_search_create();
          if (v14)
          {
            CFRelease(v14);
          }
        }

        else
        {
          v59 = *(a3 + 28);
          v16 = icu_range_search_create();
        }

        CFRelease(v12);
        *(a3 + 104) = v16;
      }

      icu_range_search_set_text();
      v65 = 0uLL;
        ;
      }

LABEL_98:
      v22 = 0;
      goto LABEL_103;
    }

    v64 = COERCE_DOUBLE(BuildUTF8StringDecomposed(a2, v62));
    if (v64 != 0.0)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v23 = strlen(*(a3 + 72));
  if (v23 >= 2 && (v24 = v23, bzero(&v65, 0x400uLL), CFStringGetCString(a2, &v65, 1024, 0x8000100u)) && (v25 = strrchr(&v65, 47)) != 0)
  {
    v25[1] = 0;
    v26 = *(a3 + 72);
    v27 = v24 - 1;
    v28 = v26[v27];
    if (*v26 == 42)
    {
      v29 = 0;
      v30 = v26 + 1;
      if (v26[1] == 47 && v65 == 47)
      {
        if (v28 == 42)
        {
          v26[v27] = 0;
          v29 = strstr(&v65, v30) != 0;
          *(*(a3 + 72) + v27) = 42;
        }

        else
        {
          v29 = strstr(&v65, v30) != 0;
        }
      }
    }

    else
    {
      if (v28 == 42)
      {
        v41 = strncmp(v26, &v65, v27);
      }

      else
      {
        v41 = strcmp(v26, &v65);
      }

      v29 = v41 == 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v22 = v29 ^ (*(a3 + 24) == 5);
LABEL_103:
  v60 = *MEMORY[0x1E69E9840];
  return v22;
}

_BYTE *BuildUTF8StringDecomposed(const __CFString *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFStringGetTypeID())
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    v7 = CharactersPtr;
    v8 = 0;
    goto LABEL_7;
  }

  v9 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
  if (!v9)
  {
    return 0;
  }

  v7 = v9;
  v17.location = 0;
  v17.length = Length;
  CFStringGetCharacters(a1, v17, v9);
  v8 = v7;
LABEL_7:
  v10 = 6 * Length + 6;
  if (v10 <= 4096)
  {
    v10 = 4096;
    v11 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = malloc_type_malloc(6 * Length + 6, 0x100004077774924uLL);
    if (v11)
    {
LABEL_9:
      v12 = utf8_encodestr(v7, 2 * Length, v11, &v16, v10);
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v11;
      }

      goto LABEL_19;
    }
  }

  v13 = 0;
  v14 = 0;
LABEL_19:
  free(v8);
  if (v13 && v13 != a2)
  {
    free(v13);
  }

  return v14;
}

void _MDSimpleQueryModifyForMatching(void **a1)
{
  if (a1)
  {
    v1 = *a1;
    if (v1)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __db_query_tree_apply_block_block_invoke;
      v2[3] = &unk_1E8198ED0;
      v2[4] = &__block_literal_global_4_7913;
      db_query_tree_apply_block_with_meta(v1, v2, 0);
    }
  }
}

void _MDSimpleQueryDeallocate(void **a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[3];
    v4 = *v3;
    if (*v3)
    {
      v5 = 1;
      do
      {
        free(v4);
        v3 = a1[3];
        v4 = v3[v5++];
      }

      while (v4);
    }

    free(v3);
    v6 = *a1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __db_query_tree_apply_block_block_invoke;
    v9[3] = &unk_1E8198ED0;
    v9[4] = &__block_literal_global_7;
    db_query_tree_apply_block_with_meta(v6, v9, 0);
    v7 = a1[2];
    if (v7)
    {
      _Block_release(v7);
    }

    db_free_query_node(*a1);
    free(a1[4]);
    v8 = a1[11];
    if (v8)
    {
      OSAtomicEnqueue(&s_si_calendar_head, v8, 0);
    }

    free(a1);
  }
}

double _MDSimpleQueryGatherRangesForKeyAndValue(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[6] = a2;
  a1[7] = a3;
  a1[8] = a4;
  a1[9] = a5;
  v6 = a1[1];
  a1[1] = rangeGetValueFunction;
  _MDSimpleQueryObjectMatches(a1, a4);
  a1[1] = v6;
  result = 0.0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  return result;
}

unint64_t _MDSimpleQueryObjectMatches(unint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x10A00404E934A1DuLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = a2;
  if (a1)
  {
    if (*a1)
    {
      v5 = *(a1 + 24);
      a1 = db_eval_obj_with_options(0) != 0;
    }

    else
    {
      a1 = 0;
    }
  }

  free(v4);
  return a1;
}

CFTypeRef rangeGetValueFunction(uint64_t a1, int a2, CFTypeRef cf1)
{
  v3 = *(a1 + 56);
  if (!v3 || v3 != cf1 && !CFEqual(cf1, v3) && (!CFEqual(cf1, @"*") || CFEqual(*(a1 + 56), @"kMDItemTextContent")))
  {
    return 0;
  }

  v6 = *(a1 + 64);

  return CFRetain(v6);
}

void __getCurrentLanguage_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  getCurrentLanguage_lang = "";
  v0 = CopyAppleLanguages();
  if (v0)
  {
    v1 = v0;
    if (CFArrayGetCount(v0) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
      memset(v4, 0, sizeof(v4));
      if (CFStringGetCString(ValueAtIndex, v4, 256, 0x8000100u))
      {
        getCurrentLanguage_lang = strdup(v4);
      }
    }

    CFRelease(v1);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t __getCurrentLocale_block_invoke()
{
  if (getCurrentLanguage_onceToken != -1)
  {
    dispatch_once(&getCurrentLanguage_onceToken, &__block_literal_global_33_7920);
  }

  getCurrentLocale_searchLocale = _icu_locale_create();
  if (getCurrentLanguage_onceToken != -1)
  {
    dispatch_once(&getCurrentLanguage_onceToken, &__block_literal_global_33_7920);
  }

  result = _icu_locale_create();
  getCurrentLocale_nonSearchLocale = result;
  return result;
}

uint64_t _MDStringPrefixOfString(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v30 = *MEMORY[0x1E69E9840];
  if (v1)
  {
    v7 = CFStringGetLength(v1) != 0;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    if (!v2)
    {
LABEL_12:
      v10 = -1;
      goto LABEL_40;
    }
  }

  if (CFStringGetLength(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = CFStringFind(v6, v5, 9uLL);
  if (v9.location == -1 || !v9.length)
  {
    v11 = v29;
    bzero(v29, 0x800uLL);
    Length = CFStringGetLength(v6);
    v13 = Length;
    if (Length < 1025 || (v11 = malloc_type_malloc(8 * Length, 0x10040436913F5uLL)) != 0)
    {
      v31.location = 0;
      v31.length = v13;
      CFStringGetCharacters(v6, v31, v11);
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = v28;
    bzero(v28, 0x800uLL);
    v16 = CFStringGetLength(v5);
    v17 = v16;
    if ((v16 < 1025 || (v15 = malloc_type_malloc(8 * v16, 0x10040436913F5uLL)) != 0) && (v32.location = 0, v32.length = v17, CFStringGetCharacters(v5, v32, v15), v14))
    {
      if (getCurrentLocale_onceToken != -1)
      {
        dispatch_once(&getCurrentLocale_onceToken, &__block_literal_global_37_7924);
      }

      v18 = &getCurrentLocale_searchLocale;
      if ((v4 & 0x10000) != 0)
      {
        v18 = &getCurrentLocale_nonSearchLocale;
      }

      v19 = *v18;
      collation = icu_locale_get_collation();
      v10 = prefixOfString(collation);
      if ((v4 & 0x10000) != 0)
      {
        if (getCurrentLocale_onceToken != -1)
        {
          dispatch_once(&getCurrentLocale_onceToken, &__block_literal_global_37_7924);
        }

        v21 = icu_locale_get_collation();
        v22 = prefixOfString(v21);
        if (v10 <= v22)
        {
          v10 = v22;
        }
      }
    }

    else
    {
      v10 = -1;
    }

    if (v11 != v29)
    {
      free(v11);
    }

    if (v15 != v28)
    {
      free(v15);
    }
  }

  else
  {
    v10 = v9.location + v9.length;
  }

  if (v10 >= 1)
  {
    RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex();
    if (v24)
    {
      v25 = RangeOfCharacterClusterAtIndex == -1;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v10 = RangeOfCharacterClusterAtIndex + v24;
    }
  }

LABEL_40:
  v26 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t prefixOfString(uint64_t a1)
{
  if (!a1 || !usearch_openFromCollator())
  {
    return -1;
  }

  if (usearch_first())
  {
    MatchedLength = -1;
  }

  else
  {
    MatchedLength = usearch_getMatchedLength();
  }

  usearch_close();
  return MatchedLength;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,DocMeta *,false>(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = (a2 - 4);
  v10 = (a2 - 8);
  v11 = (a2 - 12);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v149 = *(a2 - 4);
        v150 = v149 == *v12;
        v151 = v149 < *v12;
        if (v150)
        {
          v151 = *(a2 - 8) > *(v12 + 24);
        }

        if (!v151)
        {
          return;
        }

LABEL_188:
        *v266 = *v12;
        *&v266[16] = *(v12 + 16);
        v159 = *v9;
        *(v12 + 10) = *(a2 - 22);
        *v12 = v159;
        v160 = *v266;
LABEL_189:
        *(a2 - 22) = *&v266[10];
        *v9 = v160;
        return;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,DocMeta *,0>(v12, (v12 + 32), (v12 + 64), a2 - 2, a5);
      return;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,DocMeta *,0>(v12, (v12 + 32), (v12 + 64), (v12 + 96), a5);
      v137 = *(a2 - 4);
      v138 = *(v12 + 96);
      v150 = v137 == v138;
      v139 = v137 < v138;
      if (v150)
      {
        v139 = *(a2 - 8) > *(v12 + 120);
      }

      if (v139)
      {
        *v262 = *(v12 + 96);
        *&v262[16] = *(v12 + 112);
        v140 = *(a2 - 22);
        *(v12 + 96) = *v9;
        *(v12 + 106) = v140;
        *(a2 - 22) = *&v262[10];
        *v9 = *v262;
        v141 = *(v12 + 96);
        v142 = *(v12 + 64);
        v150 = v141 == v142;
        v143 = v141 < v142;
        if (v150)
        {
          v143 = *(v12 + 120) > *(v12 + 88);
        }

        if (v143)
        {
          *v263 = *(v12 + 64);
          *&v263[16] = *(v12 + 80);
          *(v12 + 64) = *(v12 + 96);
          *(v12 + 74) = *(v12 + 106);
          *(v12 + 96) = *v263;
          *(v12 + 106) = *&v263[10];
          v144 = *(v12 + 64);
          v145 = *(v12 + 32);
          v150 = v144 == v145;
          v146 = v144 < v145;
          if (v150)
          {
            v146 = *(v12 + 88) > *(v12 + 56);
          }

          if (v146)
          {
            *v264 = *(v12 + 32);
            *&v264[16] = *(v12 + 48);
            *(v12 + 32) = *(v12 + 64);
            *(v12 + 42) = *(v12 + 74);
            *(v12 + 64) = *v264;
            *(v12 + 74) = *&v264[10];
            v147 = *(v12 + 32);
            v150 = v147 == *v12;
            v148 = v147 < *v12;
            if (v150)
            {
              v148 = *(v12 + 56) > *(v12 + 24);
            }

            if (v148)
            {
              *v265 = *v12;
              *&v265[16] = *(v12 + 16);
              *v12 = *(v12 + 32);
              *(v12 + 10) = *(v12 + 42);
              *(v12 + 32) = *v265;
              *(v12 + 42) = *&v265[10];
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v161 = (v12 + 32);
      v163 = v12 == a2 || v161 == a2;
      if (a4)
      {
        if (!v163)
        {
          v164 = 0;
          v165 = v12;
          do
          {
            v166 = v161;
            v167 = *(v165 + 32);
            v168 = *(v165 + 56);
            v169 = v167 < *v165;
            if (v167 == *v165)
            {
              v169 = v168 > *(v165 + 24);
            }

            if (v169)
            {
              v267 = *(v165 + 40);
              v170 = *(v165 + 57);
              v171 = v164;
              while (1)
              {
                v172 = v12 + v171;
                *(v172 + 32) = *(v12 + v171);
                *(v172 + 42) = *(v12 + v171 + 10);
                if (!v171)
                {
                  break;
                }

                v173 = *(v172 - 32);
                v174 = v168 > *(v172 - 8);
                v150 = v167 == v173;
                v175 = v167 < v173;
                if (!v150)
                {
                  v174 = v175;
                }

                v171 -= 32;
                if (!v174)
                {
                  v176 = v12 + v171 + 32;
                  goto LABEL_212;
                }
              }

              v176 = v12;
LABEL_212:
              *v176 = v167;
              *(v176 + 8) = v267;
              *(v176 + 24) = v168;
              *(v176 + 25) = v170;
            }

            v161 = v166 + 4;
            v164 += 32;
            v165 = v166;
          }

          while (v166 + 4 != a2);
        }
      }

      else if (!v163)
      {
        do
        {
          v222 = v161;
          v223 = *(a1 + 32);
          v224 = *(a1 + 56);
          v225 = v223 < *a1;
          if (v223 == *a1)
          {
            v225 = v224 > *(a1 + 24);
          }

          if (v225)
          {
            v272 = *(a1 + 40);
            v226 = *(a1 + 57);
            v227 = v222;
            do
            {
              *v227 = *(v227 - 32);
              *(v227 + 10) = *(v227 - 22);
              v228 = *(v227 - 64);
              v229 = *(v227 - 40);
              v227 -= 32;
              v230 = v224 > v229;
              v150 = v223 == v228;
              v231 = v223 < v228;
              if (v150)
              {
                v231 = v230;
              }
            }

            while (v231);
            *v227 = v223;
            *(v227 + 8) = v272;
            *(v227 + 24) = v224;
            *(v227 + 25) = v226;
          }

          v161 = (v222 + 32);
          a1 = v222;
        }

        while ((v222 + 32) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v177 = (v13 - 2) >> 1;
        v178 = v177;
        do
        {
          v179 = v178;
          if (v177 >= v178)
          {
            v180 = (2 * v178) | 1;
            v181 = v12 + 32 * v180;
            if (2 * v179 + 2 >= v13)
            {
              v182 = *v181;
            }

            else
            {
              v182 = *(v181 + 32);
              v183 = *(v181 + 24) > *(v181 + 56);
              if (*v181 != v182)
              {
                v183 = *v181 < v182;
              }

              if (v183)
              {
                v181 += 32;
              }

              else
              {
                v182 = *v181;
              }

              if (v183)
              {
                v180 = 2 * v179 + 2;
              }
            }

            v184 = v12 + 32 * v179;
            v185 = *v184;
            v186 = *(v184 + 24);
            v150 = v182 == *v184;
            v187 = v182 < *v184;
            if (v150)
            {
              v187 = *(v181 + 24) > v186;
            }

            if (!v187)
            {
              v268 = *(v184 + 8);
              v188 = *(v184 + 25);
              do
              {
                v189 = v181;
                v190 = *v181;
                *(v184 + 10) = *(v181 + 10);
                *v184 = v190;
                if (v177 < v180)
                {
                  break;
                }

                v191 = (2 * v180) | 1;
                v181 = v12 + 32 * v191;
                v180 = 2 * v180 + 2;
                if (v180 >= v13)
                {
                  v192 = *v181;
                  v180 = v191;
                }

                else
                {
                  v192 = *(v181 + 32);
                  v193 = *(v181 + 24) > *(v181 + 56);
                  if (*v181 != v192)
                  {
                    v193 = *v181 < v192;
                  }

                  if (v193)
                  {
                    v181 += 32;
                  }

                  else
                  {
                    v192 = *v181;
                  }

                  if (!v193)
                  {
                    v180 = v191;
                  }
                }

                v150 = v192 == v185;
                v194 = v192 < v185;
                if (v150)
                {
                  v194 = *(v181 + 24) > v186;
                }

                v184 = v189;
              }

              while (!v194);
              *v189 = v185;
              *(v189 + 8) = v268;
              *(v189 + 24) = v186;
              *(v189 + 25) = v188;
            }
          }

          v178 = v179 - 1;
        }

        while (v179);
        do
        {
          v195 = 0;
          *v269 = *v12;
          *&v269[16] = *(v12 + 16);
          v196 = v12;
          do
          {
            v197 = &v196[2 * v195];
            v198 = (v197 + 2);
            v199 = (2 * v195) | 1;
            v195 = 2 * v195 + 2;
            if (v195 >= v13)
            {
              v195 = v199;
            }

            else
            {
              v201 = *(v197 + 8);
              v200 = v197 + 4;
              v202 = *(v200 - 4);
              v203 = v202 < v201;
              if (v202 == v201)
              {
                v203 = *(v200 - 8) > *(v200 + 24);
              }

              if (v203)
              {
                v198 = v200;
              }

              else
              {
                v195 = v199;
              }
            }

            v204 = *v198;
            *(v196 + 10) = *(v198 + 10);
            *v196 = v204;
            v196 = v198;
          }

          while (v195 <= (v13 - 2) / 2);
          a2 -= 4;
          if (v198 == a2)
          {
            *(v198 + 10) = *&v269[10];
            *v198 = *v269;
          }

          else
          {
            v205 = *a2;
            *(v198 + 10) = *(a2 + 10);
            *v198 = v205;
            *(a2 + 10) = *&v269[10];
            *a2 = *v269;
            v206 = (v198 - v12 + 32) >> 5;
            v207 = v206 < 2;
            v208 = v206 - 2;
            if (!v207)
            {
              v209 = v208 >> 1;
              v210 = v12 + 32 * (v208 >> 1);
              v211 = *v198;
              v212 = *(v198 + 24);
              v213 = *v210 < *v198;
              if (*v210 == *v198)
              {
                v213 = *(v210 + 24) > v212;
              }

              if (v213)
              {
                v238 = *(v198 + 1);
                v214 = *(v198 + 25);
                do
                {
                  v215 = v210;
                  v216 = *v210;
                  *(v198 + 10) = *(v210 + 10);
                  *v198 = v216;
                  if (!v209)
                  {
                    break;
                  }

                  v209 = (v209 - 1) >> 1;
                  v210 = v12 + 32 * v209;
                  v217 = *(v210 + 24) > v212;
                  if (*v210 != v211)
                  {
                    v217 = *v210 < v211;
                  }

                  v198 = v215;
                }

                while (v217);
                *v215 = v211;
                *(v215 + 8) = v238;
                *(v215 + 24) = v212;
                *(v215 + 25) = v214;
              }
            }
          }

          v207 = v13-- <= 2;
        }

        while (!v207);
      }

      return;
    }

    v14 = v12 + 32 * (v13 >> 1);
    v15 = *(a2 - 4);
    v16 = *(a2 - 8);
    if (v13 >= 0x81)
    {
      v17 = *v14;
      v18 = *(v14 + 24);
      v19 = *v14 < *v12;
      if (*v14 == *v12)
      {
        v19 = v18 > *(v12 + 24);
      }

      v20 = v16 > v18;
      v150 = v15 == v17;
      v21 = v15 < v17;
      if (v150)
      {
        v21 = v20;
      }

      if (v19)
      {
        if (v21)
        {
          *v239 = *v12;
          *&v239[16] = *(v12 + 16);
          v22 = *v9;
          *(v12 + 10) = *(a2 - 22);
          *v12 = v22;
          goto LABEL_40;
        }

        *v245 = *v12;
        *&v245[16] = *(v12 + 16);
        v35 = *v14;
        *(v12 + 10) = *(v14 + 10);
        *v12 = v35;
        *(v14 + 10) = *&v245[10];
        *v14 = *v245;
        v36 = *(a2 - 4);
        v150 = v36 == *v14;
        v37 = v36 < *v14;
        if (v150)
        {
          v37 = *(a2 - 8) > *(v14 + 24);
        }

        if (v37)
        {
          *v239 = *v14;
          *&v239[16] = *(v14 + 16);
          v38 = *v9;
          *(v14 + 10) = *(a2 - 22);
          *v14 = v38;
LABEL_40:
          *(a2 - 22) = *&v239[10];
          *v9 = *v239;
        }
      }

      else if (v21)
      {
        *v241 = *v14;
        *&v241[16] = *(v14 + 16);
        v29 = *v9;
        *(v14 + 10) = *(a2 - 22);
        *v14 = v29;
        *(a2 - 22) = *&v241[10];
        *v9 = *v241;
        v30 = *v14 < *v12;
        if (*v14 == *v12)
        {
          v30 = *(v14 + 24) > *(v12 + 24);
        }

        if (v30)
        {
          *v242 = *v12;
          *&v242[16] = *(v12 + 16);
          v31 = *v14;
          *(v12 + 10) = *(v14 + 10);
          *v12 = v31;
          *(v14 + 10) = *&v242[10];
          *v14 = *v242;
        }
      }

      v39 = (v12 + 32);
      v40 = *(v12 + 32);
      v41 = (v14 - 32);
      v42 = *(v14 - 32);
      v43 = *(v14 - 8);
      v44 = v43 > *(v12 + 56);
      v150 = v42 == v40;
      v45 = v42 < v40;
      if (!v150)
      {
        v44 = v45;
      }

      v46 = *(a2 - 8);
      v47 = *(a2 - 40) > v43;
      v150 = v46 == v42;
      v48 = v46 < v42;
      if (v150)
      {
        v48 = v47;
      }

      if (v44)
      {
        if (v48)
        {
          v49 = *v39;
          *v246 = *v39;
          *&v246[16] = *(v12 + 48);
          v50 = *(a2 - 54);
          *v39 = *v10;
          *(v12 + 42) = v50;
          goto LABEL_62;
        }

        *v250 = *v39;
        v60 = *v39;
        *&v250[16] = *(v12 + 48);
        v61 = *(v14 - 22);
        *v39 = *v41;
        *(v12 + 42) = v61;
        *(v14 - 22) = *&v250[10];
        *v41 = v60;
        v62 = *(a2 - 8);
        v150 = v62 == *v41;
        v63 = v62 < *v41;
        if (v150)
        {
          v63 = *(a2 - 40) > *(v14 - 8);
        }

        if (v63)
        {
          *v246 = *v41;
          *&v246[16] = *(v14 - 16);
          v64 = *v10;
          *(v14 - 22) = *(a2 - 54);
          *v41 = v64;
          v49 = *v246;
LABEL_62:
          *(a2 - 54) = *&v246[10];
          *v10 = v49;
        }
      }

      else if (v48)
      {
        *v247 = *v41;
        *&v247[16] = *(v14 - 16);
        v51 = *v10;
        *(v14 - 22) = *(a2 - 54);
        *v41 = v51;
        *(a2 - 54) = *&v247[10];
        *v10 = *v247;
        v52 = *(v12 + 32);
        v53 = *v41 < v52;
        if (*v41 == v52)
        {
          v53 = *(v14 - 8) > *(v12 + 56);
        }

        if (v53)
        {
          *v248 = *v39;
          v54 = *v39;
          *&v248[16] = *(v12 + 48);
          v55 = *(v14 - 22);
          *v39 = *v41;
          *(v12 + 42) = v55;
          *(v14 - 22) = *&v248[10];
          *v41 = v54;
        }
      }

      v65 = (v12 + 64);
      v66 = *(v12 + 64);
      v67 = (v14 + 32);
      v68 = *(v14 + 32);
      v69 = *(v14 + 56);
      v70 = v69 > *(v12 + 88);
      v150 = v68 == v66;
      v71 = v68 < v66;
      if (!v150)
      {
        v70 = v71;
      }

      v72 = *(a2 - 12);
      v73 = *(a2 - 72) > v69;
      v150 = v72 == v68;
      v74 = v72 < v68;
      if (v150)
      {
        v74 = v73;
      }

      if (v70)
      {
        if (v74)
        {
          v75 = *v65;
          *v251 = *v65;
          *&v251[16] = *(v12 + 80);
          v76 = *(a2 - 86);
          *v65 = *v11;
          *(v12 + 74) = v76;
          goto LABEL_79;
        }

        *v254 = *v65;
        v82 = *v65;
        *&v254[16] = *(v12 + 80);
        v83 = *(v14 + 42);
        *v65 = *v67;
        *(v12 + 74) = v83;
        *(v14 + 42) = *&v254[10];
        *v67 = v82;
        v84 = *(a2 - 12);
        v150 = v84 == *v67;
        v85 = v84 < *v67;
        if (v150)
        {
          v85 = *(a2 - 72) > *(v14 + 56);
        }

        if (v85)
        {
          *v251 = *v67;
          *&v251[16] = *(v14 + 48);
          v86 = *v11;
          *(v14 + 42) = *(a2 - 86);
          *v67 = v86;
          v75 = *v251;
LABEL_79:
          *(a2 - 86) = *&v251[10];
          *v11 = v75;
        }
      }

      else if (v74)
      {
        *v252 = *v67;
        *&v252[16] = *(v14 + 48);
        v77 = *v11;
        *(v14 + 42) = *(a2 - 86);
        *v67 = v77;
        *(a2 - 86) = *&v252[10];
        *v11 = *v252;
        v78 = *(v12 + 64);
        v79 = *v67 < v78;
        if (*v67 == v78)
        {
          v79 = *(v14 + 56) > *(v12 + 88);
        }

        if (v79)
        {
          *v253 = *v65;
          v80 = *v65;
          *&v253[16] = *(v12 + 80);
          v81 = *(v14 + 42);
          *v65 = *v67;
          *(v12 + 74) = v81;
          *(v14 + 42) = *&v253[10];
          *v67 = v80;
        }
      }

      v87 = *v14;
      v88 = *(v14 + 24);
      v89 = *v14 < *v41;
      if (*v14 == *v41)
      {
        v89 = v88 > *(v14 - 8);
      }

      v90 = *(v14 + 56) > v88;
      v150 = *v67 == v87;
      v91 = *v67 < v87;
      if (v150)
      {
        v91 = v90;
      }

      if (v89)
      {
        if (v91)
        {
          *v255 = *v41;
          *&v255[16] = *(v14 - 16);
          *v41 = *v67;
          *(v14 - 22) = *(v14 + 42);
          goto LABEL_96;
        }

        *v258 = *v41;
        *&v258[16] = *(v14 - 16);
        *v41 = *v14;
        *(v14 - 22) = *(v14 + 10);
        *(v14 + 10) = *&v258[10];
        *v14 = *v258;
        v93 = *v67 < *v14;
        if (*v67 == *v14)
        {
          v93 = *(v14 + 56) > *(v14 + 24);
        }

        if (v93)
        {
          *v255 = *v14;
          *&v255[16] = *(v14 + 16);
          *v14 = *v67;
          *(v14 + 10) = *(v14 + 42);
LABEL_96:
          *(v14 + 42) = *&v255[10];
          *v67 = *v255;
        }
      }

      else if (v91)
      {
        *v256 = *v14;
        *&v256[16] = *(v14 + 16);
        *v14 = *v67;
        *(v14 + 10) = *(v14 + 42);
        *(v14 + 42) = *&v256[10];
        *v67 = *v256;
        v92 = *v14 < *v41;
        if (*v14 == *v41)
        {
          v92 = *(v14 + 24) > *(v14 - 8);
        }

        if (v92)
        {
          *v257 = *v41;
          *&v257[16] = *(v14 - 16);
          *v41 = *v14;
          *(v14 - 22) = *(v14 + 10);
          *(v14 + 10) = *&v257[10];
          *v14 = *v257;
        }
      }

      *v259 = *v12;
      *&v259[16] = *(v12 + 16);
      v94 = *v14;
      *(v12 + 10) = *(v14 + 10);
      *v12 = v94;
      *(v14 + 10) = *&v259[10];
      *v14 = *v259;
      goto LABEL_98;
    }

    v23 = *v12;
    v24 = *(v12 + 24);
    v25 = *v12 < *v14;
    if (*v12 == *v14)
    {
      v25 = v24 > *(v14 + 24);
    }

    v26 = v16 > v24;
    v150 = v15 == v23;
    v27 = v15 < v23;
    if (v150)
    {
      v27 = v26;
    }

    if (v25)
    {
      if (v27)
      {
        *v240 = *v14;
        *&v240[16] = *(v14 + 16);
        v28 = *v9;
        *(v14 + 10) = *(a2 - 22);
        *v14 = v28;
LABEL_57:
        *(a2 - 22) = *&v240[10];
        *v9 = *v240;
        goto LABEL_98;
      }

      *v249 = *v14;
      *&v249[16] = *(v14 + 16);
      v56 = *v12;
      *(v14 + 10) = *(v12 + 10);
      *v14 = v56;
      *(v12 + 10) = *&v249[10];
      *v12 = *v249;
      v57 = *(a2 - 4);
      v150 = v57 == *v12;
      v58 = v57 < *v12;
      if (v150)
      {
        v58 = *(a2 - 8) > *(v12 + 24);
      }

      if (v58)
      {
        *v240 = *v12;
        *&v240[16] = *(v12 + 16);
        v59 = *v9;
        *(v12 + 10) = *(a2 - 22);
        *v12 = v59;
        goto LABEL_57;
      }
    }

    else if (v27)
    {
      *v243 = *v12;
      *&v243[16] = *(v12 + 16);
      v32 = *v9;
      *(v12 + 10) = *(a2 - 22);
      *v12 = v32;
      *(a2 - 22) = *&v243[10];
      *v9 = *v243;
      v33 = *v12 < *v14;
      if (*v12 == *v14)
      {
        v33 = *(v12 + 24) > *(v14 + 24);
      }

      if (v33)
      {
        *v244 = *v14;
        *&v244[16] = *(v14 + 16);
        v34 = *v12;
        *(v14 + 10) = *(v12 + 10);
        *v14 = v34;
        *(v12 + 10) = *&v244[10];
        *v12 = *v244;
      }
    }

LABEL_98:
    --a3;
    v95 = *v12;
    if (a4)
    {
      v96 = *(v12 + 24);
      goto LABEL_103;
    }

    v97 = *(v12 - 32);
    v96 = *(v12 + 24);
    v150 = v97 == v95;
    v98 = v97 < v95;
    if (v150)
    {
      v98 = *(v12 - 8) > v96;
    }

    if (v98)
    {
LABEL_103:
      v236 = *(v12 + 8);
      v99 = *(v12 + 25);
      v100 = v12;
      do
      {
        v101 = v100;
        v102 = *(v100 + 32);
        v100 += 32;
        v103 = v102 < v95;
        if (v102 == v95)
        {
          v103 = *(v101 + 56) > v96;
        }
      }

      while (v103);
      v104 = a2;
      if (v101 == v12)
      {
        v104 = a2;
        do
        {
          if (v100 >= v104)
          {
            break;
          }

          v107 = *(v104 - 4);
          v104 -= 4;
          v108 = v107 < v95;
          if (v107 == v95)
          {
            v108 = *(v104 + 24) > v96;
          }
        }

        while (!v108);
      }

      else
      {
        do
        {
          v105 = *(v104 - 4);
          v104 -= 4;
          v106 = v105 < v95;
          if (v105 == v95)
          {
            v106 = *(v104 + 24) > v96;
          }
        }

        while (!v106);
      }

      v12 = v100;
      if (v100 < v104)
      {
        v109 = v104;
        do
        {
          *v260 = *v12;
          v110 = *v12;
          *&v260[16] = *(v12 + 16);
          v111 = *(v109 + 10);
          *v12 = *v109;
          *(v12 + 10) = v111;
          *(v109 + 10) = *&v260[10];
          *v109 = v110;
          do
          {
            v112 = *(v12 + 32);
            v12 += 32;
            v113 = v112 < v95;
            if (v112 == v95)
            {
              v113 = *(v12 + 24) > v96;
            }
          }

          while (v113);
          do
          {
            v114 = *(v109 - 32);
            v109 -= 32;
            v115 = v114 < v95;
            if (v114 == v95)
            {
              v115 = *(v109 + 24) > v96;
            }
          }

          while (!v115);
        }

        while (v12 < v109);
      }

      if (v12 - 32 != a1)
      {
        v116 = *(v12 - 32);
        *(a1 + 10) = *(v12 - 22);
        *a1 = v116;
      }

      *(v12 - 32) = v95;
      *(v12 - 24) = v236;
      *(v12 - 8) = v96;
      *(v12 - 7) = v99;
      if (v100 < v104)
      {
        goto LABEL_132;
      }

      v117 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,DocMeta *>(a1, v12 - 32, v236);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,DocMeta *>(v12, a2, v118))
      {
        a2 = (v12 - 32);
        if (!v117)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v117)
      {
LABEL_132:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,DocMeta *,false>(a1, v12 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v237 = *(v12 + 8);
      v119 = *(a2 - 4);
      v150 = v95 == v119;
      v120 = v95 < v119;
      if (v150)
      {
        v120 = v96 > *(a2 - 8);
      }

      if (v120)
      {
        do
        {
          v121 = *(v12 + 32);
          v12 += 32;
          v122 = v95 < v121;
          if (v95 == v121)
          {
            v122 = v96 > *(v12 + 24);
          }
        }

        while (!v122);
      }

      else
      {
        v123 = (v12 + 32);
        do
        {
          v12 = v123;
          if (v123 >= a2)
          {
            break;
          }

          v124 = *v123;
          v125 = v96 > *(v12 + 24);
          v150 = v95 == v124;
          v126 = v95 < v124;
          if (!v150)
          {
            v125 = v126;
          }

          v123 = (v12 + 32);
        }

        while (!v125);
      }

      v127 = a2;
      if (v12 < a2)
      {
        v127 = a2;
        do
        {
          v128 = *(v127 - 4);
          v127 -= 4;
          v129 = v95 < v128;
          if (v95 == v128)
          {
            v129 = v96 > *(v127 + 24);
          }
        }

        while (v129);
      }

      v130 = *(a1 + 25);
      while (v12 < v127)
      {
        *v261 = *v12;
        *&v261[16] = *(v12 + 16);
        v131 = *v127;
        *(v12 + 10) = *(v127 + 10);
        *v12 = v131;
        *(v127 + 10) = *&v261[10];
        *v127 = *v261;
        do
        {
          v132 = *(v12 + 32);
          v12 += 32;
          v133 = v95 < v132;
          if (v95 == v132)
          {
            v133 = v96 > *(v12 + 24);
          }
        }

        while (!v133);
        do
        {
          v134 = *(v127 - 4);
          v127 -= 4;
          v135 = v95 < v134;
          if (v95 == v134)
          {
            v135 = v96 > *(v127 + 24);
          }
        }

        while (v135);
      }

      if (v12 - 32 != a1)
      {
        v136 = *(v12 - 32);
        *(a1 + 10) = *(v12 - 22);
        *a1 = v136;
      }

      a4 = 0;
      *(v12 - 32) = v95;
      a5 = v237;
      *(v12 - 24) = v237;
      *(v12 - 8) = v96;
      *(v12 - 7) = v130;
    }
  }

  v152 = (v12 + 32);
  v153 = *(v12 + 32);
  v154 = *(v12 + 56);
  v155 = v153 < *v12;
  if (v153 == *v12)
  {
    v155 = v154 > *(v12 + 24);
  }

  v156 = *(a2 - 4);
  v157 = *(a2 - 8) > v154;
  v150 = v156 == v153;
  v158 = v156 < v153;
  if (v150)
  {
    v158 = v157;
  }

  if (v155)
  {
    if (v158)
    {
      goto LABEL_188;
    }

    *v273 = *v12;
    *&v273[16] = *(v12 + 16);
    *v12 = *v152;
    *(v12 + 10) = *(v12 + 42);
    *v152 = *v273;
    *(v12 + 42) = *&v273[10];
    v232 = *(a2 - 4);
    v233 = *(v12 + 32);
    v150 = v232 == v233;
    v234 = v232 < v233;
    if (v150)
    {
      v234 = *(a2 - 8) > *(v12 + 56);
    }

    if (v234)
    {
      v160 = *v152;
      *v266 = *v152;
      *&v266[16] = *(v12 + 48);
      v235 = *(a2 - 22);
      *v152 = *v9;
      *(v12 + 42) = v235;
      goto LABEL_189;
    }
  }

  else if (v158)
  {
    *v270 = *v152;
    v218 = *v152;
    *&v270[16] = *(v12 + 48);
    v219 = *(a2 - 22);
    *v152 = *v9;
    *(v12 + 42) = v219;
    *(a2 - 22) = *&v270[10];
    *v9 = v218;
    v220 = *(v12 + 32);
    v150 = v220 == *v12;
    v221 = v220 < *v12;
    if (v150)
    {
      v221 = *(v12 + 56) > *(v12 + 24);
    }

    if (v221)
    {
      *v271 = *v12;
      *&v271[16] = *(v12 + 16);
      *v12 = *v152;
      *(v12 + 10) = *(v12 + 42);
      *v152 = *v271;
      *(v12 + 42) = *&v271[10];
    }
  }
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,DocMeta *,0>(__int128 *a1, uint64_t *a2, __int128 *a3, __int128 *a4, __n128 result)
{
  v5 = *a2;
  v6 = *(a2 + 24);
  v7 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v7 = v6 > *(a1 + 24);
  }

  v8 = *(a3 + 24) > v6;
  v9 = *a3 == v5;
  v10 = *a3 < v5;
  if (v9)
  {
    v10 = v8;
  }

  if (v7)
  {
    if (v10)
    {
      v11 = *a1;
      *v31 = *a1;
      *&v31[16] = a1[1];
      v12 = *(a3 + 10);
      *a1 = *a3;
      *(a1 + 10) = v12;
LABEL_17:
      *a3 = v11;
      result = *&v31[10];
      *(a3 + 10) = *&v31[10];
      goto LABEL_18;
    }

    *v34 = *a1;
    v18 = *a1;
    *&v34[16] = a1[1];
    v19 = *(a2 + 10);
    *a1 = *a2;
    *(a1 + 10) = v19;
    *a2 = v18;
    result = *&v34[10];
    *(a2 + 10) = *&v34[10];
    v20 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v20 = *(a3 + 24) > *(a2 + 24);
    }

    if (v20)
    {
      v11 = *a2;
      *v31 = *a2;
      *&v31[16] = *(a2 + 1);
      v21 = *(a3 + 10);
      *a2 = *a3;
      *(a2 + 10) = v21;
      goto LABEL_17;
    }
  }

  else if (v10)
  {
    *v32 = *a2;
    v13 = *a2;
    *&v32[16] = *(a2 + 1);
    v14 = *(a3 + 10);
    *a2 = *a3;
    *(a2 + 10) = v14;
    *a3 = v13;
    result = *&v32[10];
    *(a3 + 10) = *&v32[10];
    v15 = *a2 < *a1;
    if (*a2 == *a1)
    {
      v15 = *(a2 + 24) > *(a1 + 24);
    }

    if (v15)
    {
      *v33 = *a1;
      v16 = *a1;
      *&v33[16] = a1[1];
      v17 = *(a2 + 10);
      *a1 = *a2;
      *(a1 + 10) = v17;
      *a2 = v16;
      result = *&v33[10];
      *(a2 + 10) = *&v33[10];
    }
  }

LABEL_18:
  v22 = *a4 < *a3;
  if (*a4 == *a3)
  {
    v22 = *(a4 + 24) > *(a3 + 24);
  }

  if (v22)
  {
    *v35 = *a3;
    v23 = *a3;
    *&v35[16] = a3[1];
    v24 = *(a4 + 10);
    *a3 = *a4;
    *(a3 + 10) = v24;
    *a4 = v23;
    result = *&v35[10];
    *(a4 + 10) = *&v35[10];
    v25 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v25 = *(a3 + 24) > *(a2 + 24);
    }

    if (v25)
    {
      *v36 = *a2;
      v26 = *a2;
      *&v36[16] = *(a2 + 1);
      v27 = *(a3 + 10);
      *a2 = *a3;
      *(a2 + 10) = v27;
      *a3 = v26;
      result = *&v36[10];
      *(a3 + 10) = *&v36[10];
      v28 = *a2 < *a1;
      if (*a2 == *a1)
      {
        v28 = *(a2 + 24) > *(a1 + 24);
      }

      if (v28)
      {
        *v37 = *a1;
        v29 = *a1;
        *&v37[16] = a1[1];
        v30 = *(a2 + 10);
        *a1 = *a2;
        *(a1 + 10) = v30;
        *a2 = v29;
        result = *&v37[10];
        *(a2 + 10) = *&v37[10];
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,DocMeta *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = (a2 - a1) >> 5;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v26 = (a1 + 32);
        v27 = *(a1 + 32);
        v28 = (a2 - 32);
        v29 = *(a2 - 32);
        v30 = *(a1 + 56);
        v31 = v27 < *a1;
        if (v27 == *a1)
        {
          v31 = v30 > *(a1 + 24);
        }

        v32 = *(a2 - 8) > v30;
        v8 = v29 == v27;
        v33 = v29 < v27;
        if (v8)
        {
          v33 = v32;
        }

        if (!v31)
        {
          if (v33)
          {
            *v89 = *v26;
            v48 = *v26;
            *&v89[16] = *(a1 + 48);
            v49 = *(a2 - 22);
            *v26 = *v28;
            *(a1 + 42) = v49;
            *v28 = v48;
            *(a2 - 22) = *&v89[10];
            v50 = *(a1 + 32);
            v8 = v50 == *a1;
            v51 = v50 < *a1;
            if (v8)
            {
              v51 = *(a1 + 56) > *(a1 + 24);
            }

            if (v51)
            {
              *v90 = *a1;
              v52 = *a1;
              *&v90[16] = *(a1 + 16);
              *a1 = *v26;
              *(a1 + 10) = *(a1 + 42);
              *v26 = v52;
              *(a1 + 42) = *&v90[10];
            }
          }

          return 1;
        }

        if (v33)
        {
          v34 = *a1;
          *v87 = *a1;
          *&v87[16] = *(a1 + 16);
          v35 = *(a2 - 22);
          *a1 = *v28;
          *(a1 + 10) = v35;
        }

        else
        {
          *v93 = *a1;
          v58 = *a1;
          *&v93[16] = *(a1 + 16);
          *a1 = *v26;
          *(a1 + 10) = *(a1 + 42);
          *v26 = v58;
          *(a1 + 42) = *&v93[10];
          v59 = *(a2 - 32);
          v60 = *(a1 + 32);
          v8 = v59 == v60;
          v61 = v59 < v60;
          if (v8)
          {
            v61 = *(a2 - 8) > *(a1 + 56);
          }

          if (!v61)
          {
            return 1;
          }

          v34 = *v26;
          *v87 = *v26;
          *&v87[16] = *(a1 + 48);
          v62 = *(a2 - 22);
          *v26 = *v28;
          *(a1 + 42) = v62;
        }

        *v28 = v34;
        *(a2 - 22) = *&v87[10];
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,DocMeta *,0>(a1, (a1 + 32), (a1 + 64), (a2 - 32), a3);
        break;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,DocMeta *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), a3);
        v13 = *(a2 - 32);
        v12 = a2 - 32;
        v14 = *(a1 + 96);
        v15 = v13 < v14;
        if (v13 == v14)
        {
          v15 = *(v12 + 24) > *(a1 + 120);
        }

        if (v15)
        {
          *v83 = *(a1 + 96);
          *&v83[16] = *(a1 + 112);
          v16 = *(v12 + 10);
          *(a1 + 96) = *v12;
          *(a1 + 106) = v16;
          *v12 = *v83;
          *(v12 + 10) = *&v83[10];
          v17 = *(a1 + 96);
          v18 = *(a1 + 64);
          v8 = v17 == v18;
          v19 = v17 < v18;
          if (v8)
          {
            v19 = *(a1 + 120) > *(a1 + 88);
          }

          if (v19)
          {
            *v84 = *(a1 + 64);
            *&v84[16] = *(a1 + 80);
            *(a1 + 64) = *(a1 + 96);
            *(a1 + 74) = *(a1 + 106);
            *(a1 + 96) = *v84;
            *(a1 + 106) = *&v84[10];
            v20 = *(a1 + 64);
            v21 = *(a1 + 32);
            v8 = v20 == v21;
            v22 = v20 < v21;
            if (v8)
            {
              v22 = *(a1 + 88) > *(a1 + 56);
            }

            if (v22)
            {
              *v85 = *(a1 + 32);
              *&v85[16] = *(a1 + 48);
              *(a1 + 32) = *(a1 + 64);
              *(a1 + 42) = *(a1 + 74);
              *(a1 + 64) = *v85;
              *(a1 + 74) = *&v85[10];
              v23 = *(a1 + 32);
              v8 = v23 == *a1;
              v24 = v23 < *a1;
              if (v8)
              {
                v24 = *(a1 + 56) > *(a1 + 24);
              }

              if (v24)
              {
                *v86 = *a1;
                v25 = *a1;
                *&v86[16] = *(a1 + 16);
                *a1 = *(a1 + 32);
                *(a1 + 10) = *(a1 + 42);
                *(a1 + 32) = v25;
                *(a1 + 42) = *&v86[10];
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v7 = (a2 - 32);
    v6 = *(a2 - 32);
    v8 = v6 == *a1;
    v9 = v6 < *a1;
    if (v8)
    {
      v9 = *(a2 - 8) > *(a1 + 24);
    }

    if (v9)
    {
      *v82 = *a1;
      v10 = *a1;
      *&v82[16] = *(a1 + 16);
      v11 = *(a2 - 22);
      *a1 = *v7;
      *(a1 + 10) = v11;
      *v7 = v10;
      *(a2 - 22) = *&v82[10];
    }

    return 1;
  }

LABEL_31:
  v36 = a1 + 64;
  v37 = *(a1 + 64);
  v38 = (a1 + 32);
  v39 = *(a1 + 32);
  v40 = *a1;
  v41 = *(a1 + 56);
  v42 = *(a1 + 24);
  v43 = v39 < *a1;
  if (v39 == *a1)
  {
    v43 = v41 > v42;
  }

  v44 = *(a1 + 88);
  v45 = v44 > v41;
  v8 = v37 == v39;
  v46 = v37 < v39;
  if (v8)
  {
    v46 = v45;
  }

  if (v43)
  {
    if (v46)
    {
      v47 = *a1;
      *v88 = *a1;
      *&v88[16] = *(a1 + 16);
      *a1 = *v36;
      *(a1 + 10) = *(a1 + 74);
LABEL_58:
      *v36 = v47;
      *(a1 + 74) = *&v88[10];
      goto LABEL_59;
    }

    *v94 = *a1;
    v63 = *a1;
    *&v94[16] = *(a1 + 16);
    *a1 = *v38;
    *(a1 + 10) = *(a1 + 42);
    *v38 = v63;
    *(a1 + 42) = *&v94[10];
    v64 = *(a1 + 32);
    v8 = v37 == v64;
    v65 = v37 < v64;
    if (v8)
    {
      v65 = v44 > *(a1 + 56);
    }

    if (v65)
    {
      v47 = *v38;
      *v88 = *v38;
      *&v88[16] = *(a1 + 48);
      *v38 = *v36;
      *(a1 + 42) = *(a1 + 74);
      goto LABEL_58;
    }
  }

  else if (v46)
  {
    *v91 = *v38;
    v53 = *v38;
    *&v91[16] = *(a1 + 48);
    *v38 = *v36;
    *(a1 + 42) = *(a1 + 74);
    *v36 = v53;
    *(a1 + 74) = *&v91[10];
    v54 = *(a1 + 32);
    v55 = *(a1 + 56) > v42;
    v8 = v54 == v40;
    v56 = v54 < v40;
    if (v8)
    {
      v56 = v55;
    }

    if (v56)
    {
      *v92 = *a1;
      v57 = *a1;
      *&v92[16] = *(a1 + 16);
      *a1 = *v38;
      *(a1 + 10) = *(a1 + 42);
      *v38 = v57;
      *(a1 + 42) = *&v92[10];
    }
  }

LABEL_59:
  v66 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v67 = 0;
  v68 = 0;
  while (1)
  {
    v69 = *v66;
    v70 = *v36;
    v71 = *(v66 + 24);
    v72 = v71 > *(v36 + 24);
    v8 = *v66 == v70;
    v73 = *v66 < v70;
    if (!v8)
    {
      v72 = v73;
    }

    if (v72)
    {
      v95 = *(v66 + 8);
      v74 = *(v66 + 25);
      v75 = v67;
      while (1)
      {
        v76 = a1 + v75;
        *(v76 + 96) = *(a1 + v75 + 64);
        *(v76 + 106) = *(a1 + v75 + 74);
        if (v75 == -64)
        {
          break;
        }

        v77 = *(v76 + 32);
        v78 = v71 > *(v76 + 56);
        v8 = v69 == v77;
        v79 = v69 < v77;
        if (!v8)
        {
          v78 = v79;
        }

        v75 -= 32;
        if (!v78)
        {
          v80 = a1 + v75 + 96;
          goto LABEL_71;
        }
      }

      v80 = a1;
LABEL_71:
      *v80 = v69;
      *(v80 + 8) = v95;
      *(v80 + 24) = v71;
      *(v80 + 25) = v74;
      if (++v68 == 8)
      {
        return v66 + 32 == a2;
      }
    }

    v36 = v66;
    v67 += 32;
    v66 += 32;
    if (v66 == a2)
    {
      return 1;
    }
  }
}

uint64_t cold_shard_finish_file(uint64_t a1, uint64_t *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  v4 = a2[3];
  v6 = v5;
  if (v5 != v4)
  {
    while (*(v6 + 25) == 1)
    {
      v6 += 4;
      if (v6 == v4)
      {
        goto LABEL_13;
      }
    }

    if (v6 != v4)
    {
      v7 = v6 + 4;
      if (v6 + 4 != v4)
      {
        do
        {
          if (*(v7 + 25) == 1)
          {
            v8 = *v7;
            *(v6 + 10) = *(v7 + 10);
            *v6 = v8;
            v6 += 4;
          }

          v7 += 4;
        }

        while (v7 != v4);
        v5 = a2[2];
        v4 = a2[3];
      }
    }
  }

  if (v6 != v4)
  {
    v4 = v6;
    a2[3] = v6;
  }

LABEL_13:
  v37.iov_base = 0;
  v37.iov_len = 0;
  memset(&v36, 0, sizeof(v36));
  if (v5 == v4)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v40 = 0u;
      v41 = 0u;
      *__s = 0u;
      *__offseta = 0u;
      __p.__r_.__value_.__r.__words[0] = __s;
      v2_writeVInt64(&__p, *v5);
      v2_writeVInt64(&__p, v5[1]);
      v2_writeVInt64(&__p, v5[2]);
      std::string::append(&v36, __s, __p.__r_.__value_.__r.__words[0] - __s);
      v5 += 4;
    }

    while (v5 != v4);
    v9 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      size = v36.__r_.__value_.__l.__size_;
      v10 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_19;
    }
  }

  size = v9;
  v10 = &v36;
LABEL_19:
  v37.iov_base = v10;
  v37.iov_len = size;
  v12 = writevall(a1, &v37, 1);
  if (!v12)
  {
    v13 = ((((a2[3] - a2[2]) >> 1) * 1.44) + 7) >> 3;
    memset(&__p, 0, sizeof(__p));
    std::string::resize(&__p, v13, 0);
    v14 = a2[2];
    for (i = a2[3]; v14 != i; v14 += 4)
    {
      v16 = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = __p.__r_.__value_.__l.__size_;
      }

      v19 = *v14;
      v20 = 8 * v18;
      do
      {
        v21 = ((bloom_filter_hash_moduli[v16] * v19) >> 64) % v20;
        p_p->__r_.__value_.__s.__data_[v21 >> 3] |= 1 << (v21 & 7);
        ++v16;
      }

      while (v16 != 16);
    }

    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = __p.__r_.__value_.__l.__size_;
    }

    v37.iov_base = v23;
    v37.iov_len = v22;
    v12 = writevall(a1, &v37, 1);
    if (!v12)
    {
      v41 = 0u;
      v42 = 0u;
      *__offseta = 0u;
      v40 = 0u;
      *__s = 0u;
      v24 = a2[5];
      v43 = 0;
      *(&v41 + 1) = v24;
      *&v42 = 88;
      v25 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v36.__r_.__value_.__l.__size_;
      }

      v26 = v24 + 88;
      *&v40 = v25;
      *(&v40 + 1) = v24 + 88;
      v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = __p.__r_.__value_.__l.__size_;
      }

      v28 = v25 + v26;
      *__s = v27;
      *&__s[8] = v28;
      v29 = *(a2 + 71);
      if (v29 < 0)
      {
        v29 = a2[7];
      }

      __offseta[0] = v29;
      __offseta[1] = v27 + v28;
      v30 = *a2;
      *&v41 = (a2[3] - a2[2]) >> 5;
      *(&v42 + 1) = v30;
      v43 = 1;
      v37.iov_base = __s;
      v37.iov_len = 88;
      v12 = pwritevall(a1, &v37, 1, 0);
      if (!v12)
      {
        v31 = *(a2 + 71);
        if ((v31 & 0x8000000000000000) != 0)
        {
          v32 = a2[6];
          v31 = a2[7];
        }

        else
        {
          v32 = a2 + 6;
        }

        v37.iov_base = v32;
        v37.iov_len = v31;
        v12 = pwritevall(a1, &v37, 1, __offseta[1]);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v33 = *MEMORY[0x1E69E9840];
  return v12;
}

unint64_t **v2_writeVInt64(unint64_t **result, unint64_t a2)
{
  if (a2 <= 0x7F)
  {
    goto LABEL_21;
  }

  if (!(a2 >> 14))
  {
    v2 = *result;
    *result = (*result + 1);
    *v2 = BYTE1(a2) | 0x80;
LABEL_21:
    v15 = *result;
    *result = (*result + 1);
    *v15 = a2;
    return result;
  }

  if (!(a2 >> 21))
  {
    v3 = *result;
    *result = (*result + 1);
    *v3 = BYTE2(a2) | 0xC0;
LABEL_20:
    v14 = *result;
    *result = (*result + 1);
    *v14 = BYTE1(a2);
    goto LABEL_21;
  }

  if (!(a2 >> 28))
  {
    v4 = *result;
    *result = (*result + 1);
    *v4 = BYTE3(a2) | 0xE0;
LABEL_19:
    v13 = *result;
    *result = (*result + 1);
    *v13 = BYTE2(a2);
    goto LABEL_20;
  }

  if (!(a2 >> 35))
  {
    v5 = *result;
    *result = (*result + 1);
    *v5 = BYTE4(a2) | 0xF0;
LABEL_18:
    v12 = *result;
    *result = (*result + 1);
    *v12 = BYTE3(a2);
    goto LABEL_19;
  }

  if (!(a2 >> 42))
  {
    v6 = *result;
    *result = (*result + 1);
    *v6 = BYTE5(a2) | 0xF8;
LABEL_17:
    v11 = *result;
    *result = (*result + 1);
    *v11 = BYTE4(a2);
    goto LABEL_18;
  }

  if (!(a2 >> 49))
  {
    v7 = *result;
    *result = (*result + 1);
    *v7 = BYTE6(a2) | 0xFC;
LABEL_16:
    v10 = *result;
    *result = (*result + 1);
    *v10 = BYTE5(a2);
    goto LABEL_17;
  }

  v8 = *result;
  *result = (*result + 1);
  if (!HIBYTE(a2))
  {
    *v8 = -2;
    v9 = *result;
    *result = (*result + 1);
    *v9 = BYTE6(a2);
    goto LABEL_16;
  }

  *v8 = -1;
  v16 = *result;
  *v16 = a2;
  *result = v16 + 1;
  return result;
}

uint64_t cold_shard_create_search_context_for_fd(uint64_t a1)
{
  v1 = a1;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v5[0] = &v6;
  v5[1] = 88;
  result = preadvall(a1, v5, 0);
  if (!result)
  {
    file_size = get_file_size(v1);
    if ((file_size & 0x8000000000000000) != 0)
    {
      return 4294967274;
    }

    v4 = file_size;
    if (v10 > file_size || *(&v9 + 1) + v10 > file_size || *(&v8 + 1) > file_size || v8 + *(&v8 + 1) > file_size || *(&v6 + 1) > file_size || v6 + *(&v6 + 1) > file_size || *(&v7 + 1) > file_size)
    {
      return 4294967274;
    }

    else
    {
      result = 4294967274;
      if (*(&v7 + 1) >= 0x58uLL && *(&v6 + 1) >= 0x58uLL && *(&v8 + 1) >= 0x58uLL && v10 >= 0x58 && v7 + *(&v7 + 1) <= v4 && v11 == 1)
      {
        operator new();
      }
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 16);
  k = v7;
  while (1)
  {
    v7 = k;
    v10 = (a2 - k) >> 4;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(k, (k + 16), (a2 - 16));
        case 4:
          result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(k, (k + 16), (k + 32));
          v43 = *v8;
          v44 = *(k + 32);
          if (*v8 >= v44)
          {
            if (v44 < v43)
            {
              return result;
            }

            v46 = *(a2 - 8);
            v45 = *(k + 40);
            if (v46 >= v45)
            {
              return result;
            }
          }

          else
          {
            v45 = *(k + 40);
            v46 = *(a2 - 8);
          }

          *(k + 32) = v43;
          *(a2 - 16) = v44;
          *(k + 40) = v46;
          *(a2 - 8) = v45;
          v47 = *(k + 32);
          v48 = *(k + 16);
          if (v47 >= v48)
          {
            if (v48 < v47)
            {
              return result;
            }

            v50 = *(k + 40);
            v49 = *(k + 24);
            if (v50 >= v49)
            {
              return result;
            }
          }

          else
          {
            v49 = *(k + 24);
            v50 = *(k + 40);
          }

          *(k + 16) = v47;
          *(k + 32) = v48;
          *(k + 24) = v50;
          *(k + 40) = v49;
          v51 = *k;
          if (v47 >= *k)
          {
            if (v51 < v47)
            {
              return result;
            }

            v52 = *(k + 8);
            if (v50 >= v52)
            {
              return result;
            }
          }

          else
          {
            v52 = *(k + 8);
          }

          *k = v47;
          *(k + 16) = v51;
          *(k + 8) = v50;
          *(k + 24) = v52;
          return result;
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(k, k + 16, k + 32, k + 48, (a2 - 16));
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v53 = *v8;
        v54 = *k;
        if (*v8 >= *k)
        {
          if (v54 < v53)
          {
            return result;
          }

          v56 = *(a2 - 8);
          v55 = *(k + 8);
          if (v56 >= v55)
          {
            return result;
          }
        }

        else
        {
          v55 = *(k + 8);
          v56 = *(a2 - 8);
        }

        *k = v53;
        *(a2 - 16) = v54;
        *(k + 8) = v56;
        *(a2 - 8) = v55;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (k == a2)
      {
        return result;
      }

      v72 = (v10 - 2) >> 1;
      v73 = v72;
      while (1)
      {
        v74 = v73;
        if (v72 >= v73)
        {
          v75 = (2 * v73) | 1;
          v76 = k + 16 * v75;
          if (2 * v74 + 2 < v10)
          {
            v77 = *(v76 + 16);
            if (*v76 < v77 || v77 >= *v76 && *(v76 + 8) < *(v76 + 24))
            {
              v76 += 16;
              v75 = 2 * v74 + 2;
            }
          }

          v78 = k + 16 * v74;
          v79 = *v76;
          v80 = *v78;
          if (*v76 >= *v78)
          {
            if (v80 < v79)
            {
              v81 = *(v78 + 8);
              v82 = *(v76 + 8);
LABEL_147:
              *v78 = v79;
              *(v78 + 8) = v82;
              if (v72 >= v75)
              {
                while (1)
                {
                  v84 = 2 * v75;
                  v75 = (2 * v75) | 1;
                  v83 = k + 16 * v75;
                  v85 = v84 + 2;
                  if (v85 < v10)
                  {
                    result = *(v83 + 16);
                    if (*v83 < result || result >= *v83 && (result = *(v83 + 8), result < *(v83 + 24)))
                    {
                      v83 += 16;
                      v75 = v85;
                    }
                  }

                  v86 = *v83;
                  if (*v83 < v80)
                  {
                    break;
                  }

                  if (v80 >= v86)
                  {
                    v87 = *(v83 + 8);
                    if (v87 < v81)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v87 = *(v83 + 8);
                  }

                  *v76 = v86;
                  *(v76 + 8) = v87;
                  v76 = v83;
                  if (v72 < v75)
                  {
                    goto LABEL_149;
                  }
                }
              }

              v83 = v76;
LABEL_149:
              *v83 = v80;
              *(v83 + 8) = v81;
              goto LABEL_150;
            }

            v82 = *(v76 + 8);
            v81 = *(v78 + 8);
            if (v82 >= v81)
            {
              goto LABEL_147;
            }
          }
        }

LABEL_150:
        v73 = v74 - 1;
        if (!v74)
        {
          while (1)
          {
            v90 = 0;
            v91 = *k;
            v92 = *(k + 8);
            v93 = k;
            do
            {
              v94 = v93;
              v95 = v93 + 16 * v90;
              v93 = v95 + 16;
              v96 = 2 * v90;
              v90 = (2 * v90) | 1;
              v97 = v96 + 2;
              if (v97 < v10)
              {
                result = *(v95 + 32);
                v98 = *(v95 + 16);
                if (v98 < result || result >= v98 && (result = *(v95 + 24), result < *(v95 + 40)))
                {
                  v93 = v95 + 32;
                  v90 = v97;
                }
              }

              *v94 = *v93;
              *(v94 + 8) = *(v93 + 8);
            }

            while (v90 <= (v10 - 2) / 2);
            if (v93 == a2 - 16)
            {
              *v93 = v91;
              *(v93 + 8) = v92;
            }

            else
            {
              *v93 = *(a2 - 16);
              *(v93 + 8) = *(a2 - 8);
              *(a2 - 16) = v91;
              *(a2 - 8) = v92;
              v99 = (v93 - k + 16) >> 4;
              v100 = v99 - 2;
              if (v99 >= 2)
              {
                v101 = v100 >> 1;
                v102 = k + 16 * (v100 >> 1);
                v103 = *v102;
                v104 = *v93;
                if (*v102 < *v93)
                {
                  v89 = *(v93 + 8);
                  v88 = *(v102 + 8);
LABEL_177:
                  *v93 = v103;
                  *(v93 + 8) = v88;
                  if (v100 >= 2)
                  {
                    while (1)
                    {
                      v106 = v101 - 1;
                      v101 = (v101 - 1) >> 1;
                      v105 = k + 16 * v101;
                      v107 = *v105;
                      if (*v105 >= v104)
                      {
                        if (v104 < v107)
                        {
                          break;
                        }

                        v108 = *(v105 + 8);
                        if (v108 >= v89)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v108 = *(v105 + 8);
                      }

                      *v102 = v107;
                      *(v102 + 8) = v108;
                      v102 = k + 16 * v101;
                      if (v106 <= 1)
                      {
                        goto LABEL_184;
                      }
                    }
                  }

                  v105 = v102;
LABEL_184:
                  *v105 = v104;
                  *(v105 + 8) = v89;
                  goto LABEL_186;
                }

                if (v104 >= v103)
                {
                  v88 = *(v102 + 8);
                  v89 = *(v93 + 8);
                  if (v88 < v89)
                  {
                    goto LABEL_177;
                  }
                }
              }
            }

LABEL_186:
            a2 -= 16;
            if (v10-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = k + 16 * (v10 >> 1);
    if (v10 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v7 + 16 * (v10 >> 1)), v7, (a2 - 16));
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v7, (v7 + 16 * (v10 >> 1)), (a2 - 16));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v7 + 16), (v12 - 16), (a2 - 32));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v7 + 32), (v7 + 16 + 16 * v11), (a2 - 48));
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v12 - 16), v12, (v7 + 16 + 16 * v11));
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
      LODWORD(v13) = *(v7 + 8);
      *(v7 + 8) = *(v12 + 8);
      *(v12 + 8) = v13;
    }

    --a3;
    v14 = *v7;
    if ((a4 & 1) != 0 || (v15 = *(v7 - 16), v15 < v14))
    {
LABEL_19:
      v17 = *(v7 + 8);
      for (i = v7 + 16; ; i += 16)
      {
        v19 = *i;
        if (*i >= v14 && (v14 < v19 || *(i + 8) >= v17))
        {
          break;
        }
      }

      if (i - 16 == v7)
      {
        j = a2;
        if (i < a2)
        {
          v23 = *v8;
          j = a2 - 16;
          if (*v8 >= v14)
          {
            j = a2 - 16;
            do
            {
              if (v14 >= v23)
              {
                if (*(j + 8) < v17 || i >= j)
                {
                  break;
                }
              }

              else if (i >= j)
              {
                break;
              }

              v25 = *(j - 16);
              j -= 16;
              v23 = v25;
            }

            while (v25 >= v14);
          }
        }
      }

      else
      {
        v20 = *v8;
        for (j = a2 - 16; v20 >= v14 && (v14 < v20 || *(j + 8) >= v17); j -= 16)
        {
          v22 = *(j - 16);
          v20 = v22;
        }
      }

      k = i;
      if (i < j)
      {
        v26 = *j;
        k = i;
        v27 = j;
        do
        {
          *k = v26;
          *v27 = v19;
          v28 = *(k + 8);
          *(k + 8) = *(v27 + 8);
          *(v27 + 8) = v28;
          do
          {
            do
            {
              v29 = *(k + 16);
              k += 16;
              v19 = v29;
            }

            while (v29 < v14);
          }

          while (v14 >= v19 && *(k + 8) < v17);
          do
          {
            v30 = *(v27 - 16);
            v27 -= 16;
            v26 = v30;
          }

          while (v30 >= v14 && (v14 < v26 || *(v27 + 8) >= v17));
        }

        while (k < v27);
      }

      if (k - 16 != v7)
      {
        *v7 = *(k - 16);
        *(v7 + 8) = *(k - 8);
      }

      *(k - 16) = v14;
      *(k - 8) = v17;
      if (i < j)
      {
LABEL_56:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,false>(v7, k - 16, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v31 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(v7, k - 16);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(k, a2);
        if (result)
        {
          a2 = k - 16;
          if (v31)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v31)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      if (v14 < v15)
      {
        v16 = *(v7 + 8);
      }

      else
      {
        v16 = *(v7 + 8);
        if (*(v7 - 8) < v16)
        {
          goto LABEL_19;
        }
      }

      v32 = *v8;
      if (v14 < *v8 || v32 >= v14 && v16 < *(a2 - 8))
      {
        k = v7;
        do
        {
          v34 = *(k + 16);
          k += 16;
          v33 = v34;
        }

        while (v14 >= v34 && (v33 < v14 || v16 >= *(k + 8)));
      }

      else
      {
          ;
        }
      }

      m = a2;
      if (k < a2)
      {
        for (m = a2 - 16; v14 < v32 || v32 >= v14 && v16 < *(m + 8); m -= 16)
        {
          v36 = *(m - 16);
          v32 = v36;
        }
      }

      if (k < m)
      {
        v37 = *k;
        v38 = *m;
        do
        {
          *k = v38;
          *m = v37;
          v39 = *(k + 16);
          k += 16;
          v37 = v39;
          v40 = *(k - 8);
          *(k - 8) = *(m + 8);
          *(m + 8) = v40;
          while (v14 >= v37 && (v37 < v14 || v16 >= *(k + 8)))
          {
            v41 = *(k + 16);
            k += 16;
            v37 = v41;
          }

          do
          {
            do
            {
              v42 = *(m - 16);
              m -= 16;
              v38 = v42;
            }

            while (v14 < v42);
          }

          while (v38 >= v14 && v16 < *(m + 8));
        }

        while (k < m);
      }

      if (k - 16 != v7)
      {
        *v7 = *(k - 16);
        *(v7 + 8) = *(k - 8);
      }

      a4 = 0;
      *(k - 16) = v14;
      *(k - 8) = v16;
    }
  }

  v57 = k + 16;
  v59 = k == a2 || v57 == a2;
  if ((a4 & 1) == 0)
  {
    if (v59)
    {
      return result;
    }

    while (1)
    {
      v110 = v7;
      v7 = v57;
      v111 = *(v110 + 16);
      v112 = *v110;
      if (v111 < *v110)
      {
        break;
      }

      if (v112 >= v111)
      {
        v113 = *(v110 + 24);
        if (v113 < *(v110 + 8))
        {
          goto LABEL_198;
        }
      }

LABEL_204:
      v57 = v7 + 16;
      if (v7 + 16 == a2)
      {
        return result;
      }
    }

    v113 = *(v110 + 24);
    do
    {
      do
      {
LABEL_198:
        v114 = v110;
        v115 = v112;
        v116 = *(v110 - 16);
        v110 -= 16;
        v112 = v116;
        *(v110 + 32) = v115;
        *(v110 + 40) = *(v110 + 24);
      }

      while (v111 < v116);
    }

    while (v112 >= v111 && v113 < *(v114 - 8));
    *v114 = v111;
    *(v114 + 8) = v113;
    goto LABEL_204;
  }

  if (v59)
  {
    return result;
  }

  v60 = 0;
  v61 = k;
  while (2)
  {
    v62 = v61;
    v61 = v57;
    v63 = *(v62 + 16);
    v64 = *v62;
    if (v63 >= *v62)
    {
      if (v64 < v63)
      {
        goto LABEL_133;
      }

      v65 = *(v62 + 24);
      v66 = *(v62 + 8);
      if (v65 >= v66)
      {
        goto LABEL_133;
      }
    }

    else
    {
      v65 = *(v62 + 24);
      v66 = *(v62 + 8);
    }

    *(v62 + 16) = v64;
    *(v61 + 8) = v66;
    v67 = k;
    if (v62 == k)
    {
      goto LABEL_132;
    }

    v68 = v60;
    while (2)
    {
      v69 = *(k + v68 - 16);
      if (v63 < v69)
      {
        v70 = *(k + v68 - 8);
        goto LABEL_126;
      }

      if (v69 >= v63)
      {
        v67 = k + v68;
        v70 = *(k + v68 - 8);
        if (v65 >= v70)
        {
          goto LABEL_132;
        }

LABEL_126:
        v62 -= 16;
        v71 = k + v68;
        *v71 = v69;
        *(v71 + 8) = v70;
        v68 -= 16;
        if (!v68)
        {
          v67 = k;
          goto LABEL_132;
        }

        continue;
      }

      break;
    }

    v67 = v62;
LABEL_132:
    *v67 = v63;
    *(v67 + 8) = v65;
LABEL_133:
    v57 = v61 + 16;
    v60 += 16;
    if (v61 + 16 != a2)
    {
      continue;
    }

    return result;
  }
}