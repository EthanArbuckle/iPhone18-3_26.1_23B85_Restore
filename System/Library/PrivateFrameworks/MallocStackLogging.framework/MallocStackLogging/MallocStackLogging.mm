uint64_t required_allocation_size(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  result = 0;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  if (v6 < 0xFFFFFFFFFFFFFFF8 && v6 + 8 < 0xFFFFFFFFFFFFFFF8)
  {
    v9 = (*(*(a1 + 96) + 8))(a1, v6);
    if (v9 < v6)
    {
      return 0;
    }

    v10 = v9;
    v11 = (*(*(a1 + 96) + 8))(a1, v6 + 8);
    if (v11 < v10)
    {
      return 0;
    }

    v12 = v11;
    if (v11 > v10)
    {
      v13 = (*(*(a1 + 96) + 8))(a1, v6 + 16);
      if (v13 < v12)
      {
        return 0;
      }

      v12 = v13;
    }

    *a3 = v10;
    *a4 = v12;
    return 1;
  }

  return result;
}

void add_stack_to_ptr(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  invalid = msl_payload_get_invalid();
  if (__malloc_stack_logging_is_reentered())
  {
    goto LABEL_2;
  }

  v11 = (*(a1 + 16))(a1, a2);
  if (v11 > a5)
  {
    a5 = v11;
    a4 = v11;
  }

  if (max_lite_mallocs)
  {
    v12 = atomic_load(&add_stack_to_ptr_num_mallocs);
    if (v12 > max_lite_mallocs)
    {
      malloc_printf("PROC_LIMIT_WARN mode: Too many allocations have been tracked by lite stack logging. Disabling stack logging.\n");
LABEL_17:
      msl_turn_off_stack_logging();
      goto LABEL_2;
    }
  }

  if (stack_logging_lite_enabled == 1)
  {
    __prepare_to_log_stacks_unlocked(1);
    if (max_lite_mallocs)
    {
      atomic_fetch_add(&add_stack_to_ptr_num_mallocs, 1uLL);
    }

    v13 = global_uniquing_table();
    if (v13)
    {
      v14 = v13;
      v15 = a3 <= 1 ? 1 : a3;
      v16 = v15 + 8 < a5;
      v19 = 0;
      v17 = uniquing_table_stack_retain(v13, 2, 0, &v19);
      v18 = uniquing_table_node_count(v14) <= 0x400000;
      invalid = msl_payload_create(v19, v18, v16);
      if (!v17)
      {
        malloc_printf("MallocStackLogging: stack id is invalid. Turning off stack logging\n");
        goto LABEL_17;
      }
    }
  }

LABEL_2:
  msl_payload_set_in_lite_zone_ptr(a2, a3, a4, a5, invalid);
}

uint64_t uniquing_table_stack_retain(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  if (!a1)
  {
    return 0;
  }

  v15 = 0;
  hash_cache = msl_get_hash_cache(a3, &v15);
  v9 = v15;
  v10 = hash_cache[1026];
  thread_stack_pcs();
  v11 = hash_cache[1026];
  if (*(v11 + 4096) <= (a2 + 2))
  {
    *a4 = -1;
LABEL_9:
    v13 = 0;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_5;
  }

  *(v11 + 4100) = a2 + 2;
  v12 = uniquing_table_stack_retain_internal(a1, hash_cache, v9 | a3);
  *a4 = v12;
  if (v12 == -1)
  {
    goto LABEL_9;
  }

  v13 = 1;
  if (v9)
  {
LABEL_5:
    __malloc_unlock_stack_logging();
  }

  return v13;
}

uint64_t stack_logging_lite_malloc(uint64_t a1, unint64_t a2)
{
  if (stack_logging_lite_enabled != 1 || (v3 = *(a1 + 200), (malloc_get_thread_options() & 4) != 0))
  {
    v6 = *(lite_helper_zone + 24);

    return v6();
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (!required_allocation_size(v3, a2, &v9, &v8))
    {
      return 0;
    }

    v4 = v8;
    v5 = (*(v3 + 24))(v3, v8);
    if (v5)
    {
      add_stack_to_ptr(v3, v5, a2, v9, v4);
    }

    return v5;
  }
}

uint64_t global_uniquing_table()
{
  if (pre_write_buffers)
  {
    return *(pre_write_buffers + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t __prepare_to_log_stacks_unlocked(int a1)
{
  if (pre_write_buffers)
  {
    return 1;
  }

  __malloc_lock_stack_logging();
  v3 = __prepare_to_log_stacks(a1);
  __malloc_unlock_stack_logging();
  return v3;
}

uint64_t stack_logging_lite_size(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(a1 + 200) + 16))();
  if (v3)
  {
    return v3 - msl_payload_get_size_info((v3 + a2 - 8), (v3 + a2 - 16), 0, 0) - 8;
  }

  v5 = *(lite_helper_zone + 16);

  return v5();
}

uint64_t uniquing_table_stack_retain_internal(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  v148 = *(*(a2 + 8208) + 4100);
  v5 = uniquing_table_retain(a1);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v5;
  v9 = *(v3 + 8208);
  v10 = *(v9 + 4096);
  v11 = *(a1 + 60);
  if ((v11 & 4) == 0)
  {
    v25 = 0xFFFFFFFFLL;
LABEL_19:
    v154 = v3 + 8224;
    v145 = a1 + 72;
    v146 = v3;
    v144 = a1;
    v147 = v11;
    while (1)
    {
      v29 = *(v8 + 8);
      v28 = *(v8 + 12);
      v30 = *(v3 + 8208);
      v155 = *(v30 + 4096);
      v158 = v30;
      v31 = *(v30 + 4100);
      v32 = *v8;
      if ((v11 & 4) == 0 && v25 != -1)
      {
        uniquing_table_stack_retain_internal_cold_16();
      }

      if (v25 != -1)
      {
        _X0 = 0;
        _X1 = 0;
        __asm { CASP            X0, X1, X0, X1, [X11] }

        uniquing_table_stack_retain_internal_cold_3();
      }

      if ((v11 & 4) != 0)
      {
        v38 = *(v3 + 10272);
      }

      else
      {
        v38 = 0xFFFFFFFFLL;
      }

      v160 = v8;
      v149 = v10;
      if (v31 >= v10)
      {
        v46 = v25;
        v43 = v10;
        v41 = v25;
        v40 = v10;
      }

      else
      {
        v39 = v28 - v29;
        v156 = (v28 - v29 - 1);
        v40 = v10;
        v41 = v25;
        v42 = v25;
        v153 = v39 / ((2 * *(v8 + 16)) | 1u);
        while (2)
        {
          v43 = (v10 - 1);
          v44 = *(v8 + 16);
          if (v44)
          {
            v161 = v41;
            v159 = v40;
            _X2 = *(v158 + 8 * v43);
            v46 = *(v8 + 8) + (((16 * v42) ^ (_X2 >> 2)) % v156);
            if (2 * (v43 <= v31) <= 1)
            {
              v47 = 1;
            }

            else
            {
              v47 = 2 * (v43 <= v31);
            }

            _ZF = v42 == -1 || v38 == v42;
            v49 = _ZF;
            v157 = v49;
LABEL_40:
            _X4 = 0;
            _X5 = 0;
            v52 = 0;
            v53 = v44--;
            __asm { CASP            X4, X5, X4, X5, [X8] }

            v55 = 0;
            _X7 = 0;
            do
            {
              v57 = v55;
              v58 = v55 == 0;
              if (v57)
              {
                if (v42 != -1 && v52)
                {
                  v59 = (v32 + 16 * v42);
                  v61 = *v59;
                  _X13 = v59[1];
                  do
                  {
                    v62 = v59[1];
                    _X24 = v61;
                    __asm { CASP            X12, X13, X24, X25, [X30] }

                    _ZF = _X12 == v61;
                    v61 = _X12;
                  }

                  while (!_ZF);
                  if (!HIDWORD(_X13))
                  {
                    uniquing_table_stack_retain_internal_cold_4();
                  }
                }

                v66 = _X4 != _X2 || _X7 != v42;
                if (v43 > v31 || v66)
                {
                  if (!v66)
                  {
                    goto LABEL_97;
                  }

                  v46 = v46 + v44 * v153 + 1;
                  v8 = v160;
                  v70 = *(v160 + 12);
                  _CF = v46 >= v70;
                  v71 = v46 - v70;
                  if (_CF)
                  {
                    v46 = (v71 + *(v160 + 8));
                  }

                  if (!v44)
                  {
                    v46 = v42;
                    v43 = v10;
                    v40 = v159;
                    v41 = v161;
                    goto LABEL_113;
                  }

                  goto LABEL_40;
                }

                v52 = v58;
                if ((v57 & 0x80000000) != 0)
                {
                  v72 = 4294967293;
                  goto LABEL_74;
                }
              }

              else if (((v157 | v52) & 1) == 0)
              {
                _X22 = 0;
                _X23 = 0;
                __asm { CASP            X22, X23, X22, X23, [X12] }

                goto LABEL_101;
              }

              _X3 = v42 | ((v57 + v47) << 32);
              _X5 = _X7 | (v57 << 32);
              _X7 = _X5;
              __asm { CASP            X6, X7, X2, X3, [X8] }

              _ZF = _X6 == _X4;
              v55 = HIDWORD(_X5);
              _X4 = _X6;
            }

            while (!_ZF);
            if (v57)
            {
              v72 = 4294967293;
            }

            else
            {
              v72 = v47;
            }

            switch(v72)
            {
              case 0xFFFFFFFE:
LABEL_101:
                v41 = v161;
                if (v161 != -1)
                {
                  _X2 = 0;
                  _X3 = 0;
                  __asm { CASP            X2, X3, X2, X3, [X8] }

                  uniquing_table_stack_retain_internal_cold_3();
                }

                v46 = 0xFFFFFFFFLL;
                v40 = v159;
                v43 = v159;
                v8 = v160;
                break;
              case 0:
LABEL_97:
                v73 = v38;
                v8 = v160;
                v40 = v159;
                v41 = v161;
LABEL_98:
                *(v154 + 4 * (v155 - v10)) = v46;
                v38 = v73;
                break;
              case 0xFFFFFFFF:
                v46 = v42;
                v43 = v10;
                v90 = v53 < 1;
                v8 = v160;
                v40 = v159;
                v41 = v161;
                if (!v90)
                {
                  uniquing_table_stack_retain_internal_cold_5();
                }

                goto LABEL_113;
              default:
LABEL_74:
                v41 = v161;
                v8 = v160;
                if (v42 == v161)
                {
                  v73 = v46;
                  v41 = v46;
                  v40 = (v10 - 1);
                  if (v72 != 4294967293)
                  {
                    v73 = v46;
                    v41 = v46;
                    v40 = (v10 - 1);
                    if (v38 != v42)
                    {
                      uniquing_table_node_release_internal(v160, v38, _X2, _X3, _X4, _X5, _X6, _X7);
                      v8 = v160;
                      v73 = v46;
                      v41 = v46;
                      v40 = (v10 - 1);
                    }
                  }

                  goto LABEL_98;
                }

                _X3 = v42;
                if (v158 + 8 * v10 < v158 + 8 * v155 && v42 != -1)
                {
                  _X2 = 0;
                  _X3 = 0;
                  __asm { CASP            X2, X3, X2, X3, [X12] }
                }

                if (v72 == 4294967293)
                {
                  v76 = 2 * (v43 <= v31);
                }

                else
                {
                  v76 = v72;
                }

                if (v46 == -1)
                {
                  goto LABEL_96;
                }

                v77 = (v32 + 16 * v46);
                v78 = *v77;
                _X5 = v77[1];
                do
                {
                  _X3 = v77[1];
                  _X6 = v78;
                  __asm { CASP            X4, X5, X6, X7, [X13] }

                  _ZF = _X4 == v78;
                  v78 = _X4;
                }

                while (!_ZF);
                if (HIDWORD(_X5) < v76)
                {
                  uniquing_table_stack_retain_internal_cold_4();
                }

                v81 = v72 != 4294967293 && HIDWORD(_X5) == v76;
                v82 = !v81;
                if ((v82 | v157))
                {
LABEL_96:
                  v46 = v161;
                  v40 = v159;
                  v43 = v159;
                }

                else
                {
                  v86 = (v32 + 16 * v42);
                  v87 = *v86;
                  _X5 = v86[1];
                  v40 = v159;
                  do
                  {
                    _X3 = v86[1];
                    _X6 = v87;
                    __asm { CASP            X4, X5, X6, X7, [X8] }

                    _ZF = _X4 == v87;
                    v87 = _X4;
                  }

                  while (!_ZF);
                  v46 = v161;
                  v43 = v159;
                  if (!HIDWORD(_X5))
                  {
                    uniquing_table_stack_retain_internal_cold_4();
                  }
                }

                break;
            }

            v10 = v43;
            v42 = v46;
            if (v43 > v31)
            {
              continue;
            }
          }

          else
          {
            v46 = v42;
            v43 = v10;
          }

          break;
        }
      }

LABEL_113:
      v11 = v147;
      if ((v147 & 4) != 0)
      {
        v3 = v146;
        *(v146 + 10272) = v38;
        v91 = v144;
        if (v43 > v31)
        {
          v25 = v41;
          v10 = v40;
          goto LABEL_126;
        }
      }

      else
      {
        v3 = v146;
        v91 = v144;
        v25 = v25;
        v10 = v149;
        if (v38 != -1)
        {
          v92 = (v32 + 16 * v38);
          v93 = *v92;
          _X3 = v92[1];
          do
          {
            v95 = v92[1];
            _X4 = v93;
            __asm { CASP            X2, X3, X4, X5, [X8] }

            _ZF = _X2 == v93;
            v93 = _X2;
          }

          while (!_ZF);
          if (!HIDWORD(_X3))
          {
            uniquing_table_stack_retain_internal_cold_4();
          }
        }

        if (v43 > v31)
        {
          if (*(*(v146 + 8208) + 4096) != v149)
          {
            uniquing_table_stack_retain_internal_cold_12();
          }

          goto LABEL_126;
        }
      }

      if (v46 != v41)
      {
        uniquing_table_stack_retain_internal_cold_10();
      }

      v25 = v46;
      v10 = v43;
      if (v43 != v40)
      {
        uniquing_table_stack_retain_internal_cold_11();
      }

LABEL_126:
      if (v10 <= v148)
      {
        uniquing_table_release(v8, a3);
        if (v25 == -1)
        {
          uniquing_table_stack_retain_internal_cold_13();
        }

        *(v3 + 8208) = vextq_s8(*(v3 + 8208), *(v3 + 8208), 8uLL);
        return v25;
      }

      if (!a3)
      {
        __malloc_lock_stack_logging();
        v8 = v160;
      }

      v98 = atomic_load((v91 + 1672));
      v99 = v145 + 160 * v98;
      v100 = v8;
      uniquing_table_release(v8, 1);
      if (v100 == v99)
      {
        v107 = atomic_load((v91 + 1672));
        if (v107 >= 10)
        {
          uniquing_table_stack_retain_internal_cold_15();
        }

        if ((v107 & 0x80000000) != 0)
        {
          uniquing_table_stack_retain_internal_cold_14();
        }

        if (v107 != 9)
        {
          v150 = v10;
          v151 = v25;
          v108 = v145 + 160 * v107;
          v109 = *(v108 + 24);
          v111 = *(v108 + 12);
          v110 = *(v108 + 16);
          v112 = *v108;
          v113 = v107 + 1;
          v114 = v145 + 160 * (v107 + 1);
          v115 = *(v114 + 24);
          pages_no_footprint = sld_allocate_pages_no_footprint(v115);
          __pattern4 = pages_no_footprint;
          if (pages_no_footprint)
          {
            v123 = pages_no_footprint;
            *max_protection = 0;
            if (mach_vm_remap(*MEMORY[0x1E69E9A60], &__pattern4, v109, 0, 0x4000, *MEMORY[0x1E69E9A60], v112, 0, &max_protection[1], max_protection, 1u))
            {
              msl_printf(3, "uniquing_table_expand(): mach_vm_remap failed\n", v124, v125, v126, v127, v128, v129, cur_protection);
              sld_deallocate_pages(v123, v115);
              goto LABEL_139;
            }

            v130 = (v115 >> 4) & 0xFFFFFFFFFFFFFFELL;
            *v114 = v123;
            *(v114 + 8) = v111;
            *(v114 + 12) = v130;
            *(v114 + 16) = v110 + 3;
            atomic_fetch_add((v114 + 152), 1u);
            v131 = v144;
            *(v144 + 32) = v123;
            *(v144 + 16) = v115;
            *v144 = v115 / *MEMORY[0x1E69E9AC8];
            *(v144 + 8) = v130;
            atomic_store(v113, (v144 + 1672));
            uniquing_table_release(v108, 1);
            v8 = uniquing_table_retain(v131);
          }

          else
          {
            msl_printf(3, "failed to expand uniquing table\n", v117, v118, v119, v120, v121, v122, cur_protection);
LABEL_139:
            v8 = 0;
          }

          v3 = v146;
          v11 = v147;
          v25 = v151;
          v10 = v150;
          goto LABEL_142;
        }

        msl_printf(3, "no more space in uniquing table\n", v101, v102, v103, v104, v105, v106, cur_protection);
        v8 = 0;
      }

      else
      {
        v8 = uniquing_table_retain(v91);
      }

LABEL_142:
      if (!a3)
      {
        v132 = v8;
        __malloc_unlock_stack_logging();
        v8 = v132;
      }

      if (!v8)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  v12 = *(a1 + 1676);
  if (*(v3 + 10276) == v12)
  {
    if (*(v3 + 10272) == -1)
    {
      goto LABEL_17;
    }

    v13 = *(v3 + 8216);
    v14 = *(v13 + 4096);
    v15 = v14 - *(v13 + 4100);
    if (v15 >= v10 - *(v9 + 4100))
    {
      v15 = v10 - *(v9 + 4100);
    }

    if (v15 < 1)
    {
      goto LABEL_17;
    }

    v16 = (v15 + 1);
    v17 = ~v15;
    v18 = (v9 + 8 * v10 - 8);
    v19 = (v13 + 8 * v14 - 8);
    v20 = 1;
    while (1)
    {
      v22 = *v19--;
      v21 = v22;
      v23 = *v18--;
      if (v21 != v23)
      {
        break;
      }

      if (v16 == ++v20)
      {
        goto LABEL_14;
      }
    }

    v17 = -v20;
    LODWORD(v16) = v20;
LABEL_14:
    v10 = (v10 + v17 + 1);
    _CF = v16 >= 2;
    v27 = v16 - 2;
    if (_CF)
    {
      v25 = *(v3 + 4 * v27 + 8224);
    }

    else
    {
LABEL_17:
      v25 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v24 = v5;
    bzero(*(v3 + 8216), 0x1008uLL);
    v25 = 0xFFFFFFFFLL;
    LODWORD(__pattern4) = -1;
    memset_pattern4((v3 + 8224), &__pattern4, 0x800uLL);
    v8 = v24;
    *(v3 + 10272) = -1;
    *(v3 + 10276) = v12;
    v10 = *(*(v3 + 8208) + 4096);
  }

  if (v10 > v148)
  {
    goto LABEL_19;
  }

  if (*(v8 + 12) <= v25)
  {
    uniquing_table_stack_retain_internal_cold_1();
  }

  v133 = (*v8 + 16 * v25);
  v135 = *v133;
  _X1 = v133[1];
  do
  {
    _X4 = v135;
    __asm { CASP            X0, X1, X4, X5, [X8] }

    _ZF = _X0 == v135;
    v135 = _X0;
  }

  while (!_ZF);
  if (!HIDWORD(_X1))
  {
    uniquing_table_stack_retain_internal_cold_2();
  }

  if ((_X1 & 0x8000000000000000) != 0)
  {
    v139 = *v133;
    do
    {
      _X2 = v139;
      _X5 = v133[1];
      __asm { CASP            X4, X5, X2, X3, [X8] }

      _ZF = _X4 == v139;
      v139 = _X4;
    }

    while (!_ZF);
  }

  uniquing_table_release(v8, a3);
  return v25;
}

uint64_t uniquing_table_retain(uint64_t a1)
{
  v1 = *(a1 + 1672);
  while ((v1 & 0x80000000) == 0)
  {
    v2 = a1 + 72 + 160 * v1;
    v3 = *(v2 + 152);
    if (v3)
    {
      do
      {
        v4 = v3;
        atomic_compare_exchange_strong((v2 + 152), &v4, v3 + 1);
        v5 = v4 == v3;
        v3 = v4;
      }

      while (!v5 && v4);
      if (v4)
      {
        return v2;
      }
    }

    v5 = *(a1 + 1672) == v1;
    v1 = *(a1 + 1672);
    if (v5)
    {
      uniquing_table_retain_cold_1();
    }
  }

  return 0;
}

void uniquing_table_release(uint64_t a1, int a2)
{
  add = atomic_fetch_add((a1 + 152), 0xFFFFFFFF);
  if (!add)
  {
    uniquing_table_release_cold_2();
  }

  if (add == 1)
  {
    if (!a2)
    {
      __malloc_lock_stack_logging();
    }

    if (atomic_load((a1 + 152)))
    {
      uniquing_table_release_cold_1();
    }

    sld_deallocate_pages(*a1, *(a1 + 24));
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (!a2)
    {

      __malloc_unlock_stack_logging();
    }
  }
}

void *msl_get_hash_cache(int a1, _DWORD *a2)
{
  if (!dword_1EB422A6C)
  {
    return 0;
  }

  v4 = pthread_getspecific(qword_1EB422A60);
  if (v4 <= 0x2828)
  {
    is_exiting_np = pthread_self_is_exiting_np();
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = is_exiting_np == 0;
    }

    if (v6)
    {
      pthread_setspecific(qword_1EB422A60, 1);
      pages_no_footprint = sld_allocate_pages_no_footprint(0x2828uLL);
      if (!pages_no_footprint)
      {
        msl_get_hash_cache_cold_1();
      }

      v4 = pages_no_footprint;
      bzero(pages_no_footprint, 0x2828uLL);
      v4[1026] = v4;
      v4[1027] = v4 + 513;
      pthread_setspecific(qword_1EB422A60, v4);
    }

    else
    {
      if (!a1)
      {
        __malloc_lock_stack_logging();
        *a2 = 1;
      }

      return &global_stack_uniquing_state;
    }
  }

  return v4;
}

uint64_t msl_payload_create(uint64_t a1, int a2, char a3)
{
  if (a1 == -1)
  {
    return -1;
  }

  v6 = *&mach_to_ns_factor * (mach_continuous_approximate_time() - malloc_stack_logging_start_timestamp);
  if (a2 && (v7 = (v6 / 1000.0), !(v7 >> 39)))
  {
    v14 = 8 * v7;
    v15 = v14 & 0x3FFFFFFFF00;
    v11 = v14 & 0xFD | (2 * (a3 & 1)) | 1;
    v12 = v15 | (a1 << 42);
  }

  else
  {
    v8 = (v6 / 1000000.0);
    if (v8 >= 0x7FFFFFFF)
    {
      v8 = 0x7FFFFFFFLL;
    }

    v9 = 8 * v8;
    v10 = v9 & 0x3FFFFFF00;
    v11 = v9 & 0xFD | (2 * (a3 & 1));
    v12 = v10 | (a1 << 34);
  }

  return v12 | v11;
}

void msl_payload_set_in_lite_zone_ptr(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  v6 = a1 + a4;
  *(a1 + a4 - 8) = a5;
  if (v5 + 8 > a4)
  {
    msl_payload_set_in_lite_zone_ptr_cold_2();
  }

  v7 = a4 - v5;
  if (a4 - v5 - 8 < 8)
  {
    if (a4 - v5 == 8)
    {
      v8 = 0;
    }

    else
    {
      if (a4 != a3)
      {
        msl_payload_set_in_lite_zone_ptr_cold_1();
      }

      *(v6 - 9) = 2 * (a4 - a2);
      v8 = v7 - 9;
    }
  }

  else
  {
    *(v6 - 16) = a3 - a2;
    *(v6 - 12) = (a3 - a2) >> 32;
    *(v6 - 10) = a4 - a3;
    *(v6 - 9) = ((a4 - a3) >> 7) | 1;
    v8 = v7 - 16;
  }

  v9 = (v5 + a1);

  bzero(v9, v8);
}

mach_vm_address_t msl_tsd_destroy(mach_vm_address_t result)
{
  if (result)
  {
    return sld_deallocate_pages(result, 0x2828uLL);
  }

  return result;
}

void __disk_stack_logging_log_stack(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (stack_logging_enable_logging)
  {
    v9 = stack_logging_postponed == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return;
  }

  v14 = (a6 + 1);
  while (1)
  {
    v15 = a4;
    if ((malloc_get_thread_options() & 4) != 0)
    {
      return;
    }

    v22 = stack_logging_mode & 0xFFFFFFFE;
    v23 = a1 & 0x30;
    if ((a1 & 0x30) == 0 && v22 == 4)
    {
      return;
    }

    if ((~a1 & 6) != 0)
    {
      break;
    }

    if (!a3)
    {
      a1 &= ~4u;
      a3 = a5;
      goto LABEL_20;
    }

    if (a5)
    {
      __disk_stack_logging_log_stack(4, a2, a3, 0, 0, v14);
      if (stack_logging_enable_logging)
      {
        a4 = 0;
        v14 = (v14 + 1);
        a1 = 2;
        a3 = v15;
        if (!stack_logging_postponed)
        {
          continue;
        }
      }
    }

    return;
  }

  if ((a1 & 0x24) != 0)
  {
    if (!a3)
    {
      return;
    }

    goto LABEL_20;
  }

  if ((a1 & 0x12) != 0)
  {
    v15 = a3;
    a3 = a5;
    if ((a5 + 1) < 2)
    {
      return;
    }

LABEL_20:
    if (v23 && *MEMORY[0x1E69E9A60] != a2 || __malloc_stack_logging_is_reentered())
    {
      return;
    }

    if ((a1 & 2) != 0)
    {
      reap_orphaned_log_files_once();
    }

    __malloc_lock_stack_logging();
    if (v22 == 4 && (a1 & 0x20) != 0)
    {
      if (pre_write_buffers)
      {
        v36 = *(pre_write_buffers + 24);
        if (v36)
        {
          radix_tree_delete(&v36, a3 & -*MEMORY[0x1E69E9AC8], ((v15 + a3 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) - (a3 & -*MEMORY[0x1E69E9AC8]));
          v24 = v36;
          v25 = pre_write_buffers;
          *(pre_write_buffers + 24) = v36;
          if (v24)
          {
            v24 = radix_tree_size(v24);
            v25 = pre_write_buffers;
          }

          *(v25 + 32) = v24;
          goto LABEL_41;
        }
      }
    }

    if (!stack_logging_enable_logging || stack_logging_postponed)
    {
LABEL_41:
      __malloc_unlock_stack_logging();
      return;
    }

    if ((a1 & 4) != 0 && last_logged_malloc_address && (last_logged_malloc_address ^ a3 & 0xF0FFFFFFFFFFFFFFLL) == 0x5555)
    {
      *(pre_write_buffers + 52) -= 32;
      last_logged_malloc_address = 0;
      goto LABEL_41;
    }

    invalid = msl_payload_get_invalid();
    if (pre_write_buffers && (v27 = *(pre_write_buffers + 16)) != 0)
    {
      LODWORD(v36) = 0;
      v28 = uniquing_table_stack_retain(v27, v14, 1, &v36) != 0;
      v29 = uniquing_table_node_count(v27) <= 0x400000;
      invalid = msl_payload_create(v36, v29, 0);
    }

    else
    {
      v28 = 1;
    }

    if (msl_payload_is_invalid(invalid))
    {
      goto LABEL_50;
    }

    if (v22 == 4 && (a1 & 0x10) != 0)
    {
      if (!pre_write_buffers)
      {
        goto LABEL_50;
      }

      v36 = *(pre_write_buffers + 24);
      if (!v36)
      {
        v30 = radix_tree_create();
        v36 = v30;
        v31 = pre_write_buffers;
        *(pre_write_buffers + 24) = v30;
        if (!v30)
        {
LABEL_60:
          *(v31 + 32) = v30;
          goto LABEL_50;
        }

        *(pre_write_buffers + 32) = radix_tree_size(v30);
      }

      radix_tree_insert(&v36, a3 & -*MEMORY[0x1E69E9AC8], ((v15 + a3 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) - (a3 & -*MEMORY[0x1E69E9AC8]), invalid);
      v30 = v36;
      v31 = pre_write_buffers;
      *(pre_write_buffers + 24) = v36;
      if (v30)
      {
        v30 = radix_tree_size(v30);
        v31 = pre_write_buffers;
      }

      goto LABEL_60;
    }

    v32 = a3 & 0xF0FFFFFFFFFFFFFFLL ^ 0x5555;
    __src[0] = v15;
    __src[1] = v32;
    __src[2] = invalid;
    __src[3] = a1 & 0xFF0000B7;
    if ((a1 & 0x12) != 0)
    {
      if (!logging_use_compaction)
      {
LABEL_66:
        v33 = pre_write_buffers;
        v34 = *(pre_write_buffers + 52);
        if (v34 >> 5 >= 0x1FD)
        {
          if (!flush_data())
          {
            goto LABEL_50;
          }

          v33 = pre_write_buffers;
          v34 = *(pre_write_buffers + 52);
        }

        memcpy((v33 + v34 + 64), __src, 0x20uLL);
        *(pre_write_buffers + 52) += 32;
LABEL_50:
        __malloc_unlock_stack_logging();
        if (!v28)
        {
          msl_turn_off_stack_logging();
        }

        return;
      }
    }

    else
    {
      v32 = 0;
    }

    last_logged_malloc_address = v32;
    goto LABEL_66;
  }

  msl_printf(3, "Invalid stack logging event", v16, v17, v18, v19, v20, v21, a9);
}

pthread_t __malloc_lock_stack_logging()
{
  os_unfair_lock_lock_with_options();
  result = pthread_self();
  thread_doing_logging = result;
  return result;
}

void __malloc_unlock_stack_logging()
{
  thread_doing_logging = 0;
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v1 = v0;
  atomic_compare_exchange_strong_explicit(&stack_logging_lock, &v1, 0, memory_order_release, memory_order_relaxed);
  if (v1 != v0)
  {
    os_unfair_lock_unlock(&stack_logging_lock);
  }
}

void uniquing_table_stack_release(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    if (a2 == -1)
    {

      msl_printf(3, "attempting to release an invalid index\n", a3, a4, a5, a6, a7, a8, a9);
    }

    else
    {
      v10 = a3;
      v11 = uniquing_table_retain(a1);
      if (v11)
      {
        v18 = v11;
        uniquing_table_node_release_internal(v11, a2, v12, v13, v14, v15, v16, v17);

        uniquing_table_release(v18, v10);
      }
    }
  }
}

uint64_t stack_logging_lite_free(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 200);
  v4 = (*(v3 + 16))(v3);
  if (v4)
  {
    v5 = msl_payload_from_lite_zone_ptr_internal(a2, v4);
    uniquing_table_index = msl_payload_get_uniquing_table_index(v5);
    if (uniquing_table_index != -1)
    {
      v7 = global_uniquing_table();
      if (v7)
      {
        uniquing_table_stack_release(v7, uniquing_table_index, 0, v8, v9, v10, v11, v12, v16);
      }
    }

    v13 = *(v3 + 48);
    v14 = v3;
  }

  else
  {
    v14 = lite_helper_zone;
    v13 = *(lite_helper_zone + 48);
  }

  return v13(v14, a2);
}

uint64_t uniquing_table_node_release_internal(uint64_t result, uint64_t a2, uint64_t _X2, uint64_t _X3, uint64_t a5, uint64_t a6, uint64_t _X6, uint64_t a8)
{
  if (a2 != -1)
  {
    v8 = 0;
    v9 = 0xFFFFFFFFLL;
    v10 = a2;
    while (1)
    {
      if (v10 == v9)
      {
        return uniquing_table_node_release_internal_cold_4(result, a2, _X2, _X3, a5, a6, _X6, a8, vars0);
      }

      if (v8 == 512)
      {
        return uniquing_table_node_release_internal_cold_3(result, a2, _X2, _X3, a5, a6, _X6, a8);
      }

      v9 = v10;
      if (v10 >= *(result + 12))
      {
        return uniquing_table_node_release_internal_cold_1(result, a2, _X2, _X3, a5, a6, _X6, a8, vars0);
      }

      v11 = (*result + 16 * v10);
      a5 = *v11;
      _X3 = v11[1];
      do
      {
        a6 = v11[1];
        a8 = _X3 - 0x100000000;
        _X6 = a5;
        __asm { CASP            X2, X3, X6, X7, [X12] }

        _ZF = _X2 == a5;
        a5 = _X2;
      }

      while (!_ZF);
      if (HIDWORD(_X3) != 1)
      {
        break;
      }

      v10 = _X3;
      ++v8;
      if (_X3 == -1)
      {
        return result;
      }
    }

    if (!HIDWORD(_X3))
    {
      uniquing_table_node_release_internal_cold_2();
    }
  }

  return result;
}

uint64_t stack_logging_lite_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (stack_logging_lite_enabled != 1 || (v5 = *(a1 + 200), (malloc_get_thread_options() & 4) != 0))
  {
    v7 = *(lite_helper_zone + 32);

    return v7();
  }

  else
  {
    if (is_mul_ok(a2, a3))
    {
      v9 = a2 * a3;
      v11 = 0;
      v12 = 0;
      if (required_allocation_size(v5, v9, &v12, &v11))
      {
        v10 = v11;
        v6 = (*(v5 + 32))(v5, 1, v11);
        if (v6)
        {
          add_stack_to_ptr(v5, v6, v9, v12, v10);
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v6 = 0;
      *__error() = 12;
    }

    return v6;
  }
}

uint64_t stack_logging_lite_memalign(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (stack_logging_lite_enabled != 1 || (v5 = *(a1 + 200), (malloc_get_thread_options() & 4) != 0))
  {
    v8 = *(lite_helper_zone + 112);

    return v8();
  }

  else
  {
    v10 = 0;
    v11 = 0;
    if (!required_allocation_size(v5, a3, &v11, &v10))
    {
      return 0;
    }

    v6 = v10;
    v7 = (*(v5 + 112))(v5, a2, v10);
    if (v7)
    {
      add_stack_to_ptr(v5, v7, a3, v11, v6);
    }

    return v7;
  }
}

uint64_t reap_orphaned_log_files_in_hierarchy(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  _platform_strlcpy();
  result = _platform_strlen();
  if ((result - 1023) >= 0xFFFFFFFFFFFFFC02)
  {
    v8 = result;
    result = opendir(v34);
    if (result)
    {
      v9 = result;
      if (v34[v8 - 1] != 47)
      {
        v34[v8] = 47;
      }

      if (a2)
      {
        for (i = 0; ; ++i)
        {
          v11 = a2[i];
          if (!a2[i] || v11 == 47)
          {
            break;
          }
        }

        if (*a2 == 60)
        {
          v12 = 0;
        }

        else
        {
          v12 = i;
        }

        v13 = &a2[i];
        if (v11)
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = 0;
        }

        v15 = readdir(result);
        if (v15)
        {
          v16 = v15;
          do
          {
            if (v16->d_type == 4)
            {
              v18 = v16->d_name[0];
              d_name = v16->d_name;
              if (v18 != 46 && (!v12 || !MEMORY[0x1AC594C70](d_name, a2, v12)))
              {
                _platform_strlcpy();
                reap_orphaned_log_files_in_hierarchy(v34, v14, a3, a4);
              }
            }

            v16 = readdir(v9);
          }

          while (v16);
        }
      }

      else
      {
        if (__stack_log_file_path__)
        {
          v32 = strrchr(__stack_log_file_path__, 47) + 1;
        }

        else
        {
          v32 = 0;
        }

        v19 = getpid();
        v20 = _platform_strlen();
        for (j = readdir(v9); j; j = readdir(v9))
        {
          if ((j->d_type | 2) == 0xA)
          {
            v22 = j->d_name;
            if (!MEMORY[0x1AC594C70](j->d_name, "stack-logs.", v20))
            {
              v23 = strtol(&v22[v20], 0, 10);
              v24 = v23;
              if (a4 && v23 == a3)
              {
                _platform_strlcpy();
                open_log_file_at_path(v34, a4);
              }

              else
              {
                v33 = 648;
                *v35 = 0xE00000001;
                v36 = 1;
                v37 = v23;
                sysctl(v35, 4u, v38, &v33, 0, 0);
                if (v33 != 648 || v24 == v19 && v32 && MEMORY[0x1AC594C30](v22, v32))
                {
                  _platform_strlcpy();
                  if (!delete_logging_file(v34))
                  {
                    if (v24 == v19)
                    {
                      msl_printf(5, "stack logs deleted from %s\n", v25, v26, v27, v28, v29, v30, v34);
                    }

                    else
                    {
                      msl_printf(5, "process %ld no longer exists, stack logs deleted from %s\n", v25, v26, v27, v28, v29, v30, v24);
                    }
                  }
                }
              }
            }
          }
        }
      }

      result = closedir(v9);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t msl_payload_get_size_info(void *a1, unsigned int *a2, unint64_t *a3, uint64_t *a4)
{
  if (a1 && a2 && ((*a1 + 1) >= 2 ? (v4 = (*a1 & 2) == 0, *a1) : (v4 = 1), !v4))
  {
    v7 = *(a2 + 7);
    if (v7)
    {
      v8 = *a2 | (*(a2 + 2) << 32);
      if (a3)
      {
        *a3 = v8;
      }

      if (!a4)
      {
        return 8;
      }

      v9 = *(a2 + 7) >> 1;
      if (*(a2 + 6) | ((v9 & 0x7F) << 8))
      {
        v10 = 1;
      }

      else
      {
        v10 = v8 >= 8;
      }

      v5 = 0x8000;
      if (v10)
      {
        v5 = *(a2 + 6) | ((v9 & 0x7F) << 8);
      }

      result = 8;
      goto LABEL_11;
    }

    if (a3)
    {
      *a3 = v7 >> 1;
    }

    result = 1;
    if (a4)
    {
      v5 = 0;
LABEL_11:
      *a4 = v5;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 8;
    }

    v5 = 0;
    result = 0;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t radix_tree_delete(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v5 = a3 + a2;
    if (__CFADD__(a3, a2))
    {
      return 0;
    }

    while (1)
    {
      v10 = 0u;
      v11 = 0u;
      radix_tree_lookup_interval(*a1, a2, a3, &v10);
      v8 = v11;
      if (v11 == -1)
      {
        break;
      }

      v9 = v10;
      if ((radix_tree_delete_recursive(*a1, v10, *a1 + 20, 0) & 1) == 0)
      {
        radix_tree_delete_cold_1();
      }

      if (a2 > v9)
      {
        result = radix_tree_insert(a1, v9, a2 - v9, v8);
        if (!result)
        {
          return result;
        }
      }

      if (*(&v10 + 1) + v9 > v5 && (radix_tree_insert(a1, v5, *(&v10 + 1) + v9 - v5, v8) & 1) == 0)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t radix_tree_insert(mach_vm_address_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (__CFADD__(a2, a3))
  {
    radix_tree_panic("MallocStackLogging INTERNAL ERROR: interval wraps around the end of the address space: %llx, size=%llx\n", a2, a3);
    goto LABEL_10;
  }

  v4 = a4;
  if ((a3 >> *(*a1 + 8)) << *(*a1 + 8) != a3)
  {
LABEL_10:
    radix_tree_panic("MallocStackLogging INTERNAL ERROR: cannot represent value:%llx or size:%llx (key is %llx)\n", v4, a3, a2);
    goto LABEL_11;
  }

  if ((a2 & 0xFFF) != 0)
  {
LABEL_11:
    v9 = radix_tree_panic("MallocStackLogging INTERNAL ERROR: cannot represent key: %llx\n", a2);
    return radix_tree_lookup_interval(v9);
  }

  result = radix_tree_delete(a1, a2, a3);
  if (result)
  {

    return radix_tree_insert_recursive(a1, a2, a3, v4, 0, 0);
  }

  return result;
}

uint64_t radix_tree_lookup_interval@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  result = radix_tree_lookup_recursive(a1, a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, (a1 + 20), 0, a4);
  if (*(a4 + 16) != -1)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    v8 = *(a4 + 8);
    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = *a4;
    if (a2 < *a4 || a2 - *a4 >= v8)
    {
      v10 = a3 + a2 - 1;
      v11 = v10 >= v9;
      v12 = v10 - v9;
      if ((!v11 || v12 >= v8) && (v9 < a2 || v9 - a2 >= a3))
      {
        v13 = v9 + v8 - 1;
        v11 = v13 >= a2;
        v14 = v13 - a2;
        if (!v11 || v14 >= a3)
        {
LABEL_15:
          radix_tree_lookup_interval_cold_1();
        }
      }
    }
  }

  return result;
}

uint64_t radix_tree_lookup_recursive@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unsigned int *a6@<X5>, int a7@<W6>, unint64_t *a8@<X8>)
{
  if (!a6)
  {
    radix_tree_lookup_recursive_cold_11();
  }

  v8 = a5;
  if (!a5)
  {
    goto LABEL_92;
  }

  v9 = a3;
  if (!a3)
  {
    goto LABEL_92;
  }

  v13 = a2;
  v16 = a4 - a2;
  if (a4 < a2 || a3 <= v16)
  {
    v17 = a5 + a4 - 1;
    v37 = v17 >= a2;
    v18 = v17 - a2;
    if ((!v37 || v18 >= a3) && (a2 < a4 || a2 - a4 >= a5))
    {
      v19 = a3 + a2 - 1;
      v37 = v19 >= a4;
      v20 = v19 - a4;
      if (!v37 || v20 >= a5)
      {
LABEL_92:
        radix_tree_lookup_recursive_cold_10();
      }
    }
  }

  if (a7 >= 52)
  {
    radix_tree_lookup_recursive_cold_9();
  }

  result = fixnode(a6);
  if (result)
  {
    radix_tree_lookup_recursive_cold_8();
  }

  if (v13 < a4)
  {
    v22 = v9 == v16;
    v23 = v9 > v16;
    v9 -= v16;
    if (!v23)
    {
      *a8 = 0;
      a8[1] = 0;
      a8[2] = -1;
      a8[3] = a4;
      return result;
    }

    if (v22)
    {
LABEL_95:
      radix_tree_lookup_recursive_cold_7();
    }

    v13 = a4;
  }

  if (a4 < v13 || a4 - v13 >= v9)
  {
    v24 = v8 + a4 - 1;
    v37 = v24 >= v13;
    v25 = v24 - v13;
    if ((!v37 || v25 >= v9) && (v13 < a4 || v13 - a4 >= v8))
    {
      v26 = v9 + v13 - 1;
      v37 = v26 >= a4;
      v27 = v26 - a4;
      if (!v37 || v27 >= v8)
      {
        goto LABEL_95;
      }
    }
  }

  v49 = v9 + v13 - 1;
  v28 = a1 + 20;
  v29 = a6 + 5;
  v30 = -2;
  while (1)
  {
    v31 = *(v29 - 1);
    if ((v31 & 0x7C000000) == 0)
    {
      goto LABEL_80;
    }

    v32 = ~(-1 << (v31 >> 26));
    if ((v31 & 0x3FFFFFF) > v32)
    {
      radix_tree_lookup_recursive_cold_6();
    }

    v33 = ((v31 >> 26) & 0x1F) + a7;
    if (((v32 << -(((v31 >> 26) & 0x1F) + a7)) & a4) != 0)
    {
      radix_tree_lookup_recursive_cold_1();
    }

    v34 = ((v31 & 0x3FFFFFF) << (64 - v33)) | a4;
    if (v34 - a4 >= v8 || ((v35 = a4 - v34 + v8, v36 = a4 + v8 - 1, v36 >= a4) ? (v37 = v8 - 1 >= v8) : (v37 = 1), v37))
    {
      radix_tree_lookup_recursive_cold_2();
    }

    if (!v35)
    {
      goto LABEL_80;
    }

    v38 = v34 < v13 || v34 - v13 >= v9;
    v39 = !v38;
    if (v38)
    {
      v37 = v36 >= v13;
      v40 = v36 - v13;
      v41 = !v37 || v40 >= v9;
      if (v41 && (v13 < v34 || v13 - v34 >= v35) && (v49 < v34 || v49 - v34 >= v35))
      {
        goto LABEL_80;
      }
    }

    if ((v31 & 0x80000000) == 0)
    {
      *a8 = 0u;
      *(a8 + 1) = 0u;
      if (*(a1 + 12) >= *v29)
      {
        v42 = v28 + 12 * *v29;
      }

      result = radix_tree_lookup_recursive(a1, v13, v9);
      if (a8[2] != -1)
      {
        return result;
      }

      v43 = a8[3];
      v37 = v43 >= a4;
      v44 = v43 - a4;
      if (v37)
      {
        v8 = v44;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_80;
    }

    if (*(a1 + 12) < *v29)
    {
      radix_tree_lookup_recursive_cold_5();
    }

    if (v33 != 52)
    {
      radix_tree_lookup_recursive_cold_3();
    }

    v45 = v28 + 12 * *v29;
    v46 = *(v45 + 8) << *(a1 + 8);
    if (v46 > v35)
    {
      radix_tree_lookup_recursive_cold_4();
    }

    if (v46)
    {
      if (v39)
      {
        break;
      }

      v47 = v34 - 1 + v46;
      v37 = v47 >= v13;
      v48 = v47 - v13;
      if (v37 && v48 < v9)
      {
        break;
      }

      if (v13 >= v34 && v13 - v34 < v46 || v49 >= v34 && v49 - v34 < v46)
      {
        break;
      }
    }

    if (v34 >= a4)
    {
      v8 = v34 - a4;
    }

    else
    {
      v8 = 0;
    }

LABEL_80:
    v29 -= 3;
    v37 = __CFADD__(v30++, 1);
    if (v37)
    {
      *a8 = 0;
      a8[1] = 0;
      a8[2] = -1;
      a8[3] = v8 + a4;
      return result;
    }
  }

  *a8 = v34;
  a8[1] = v46;
  a8[2] = *v45;
  a8[3] = 0;
  return result;
}

uint64_t fixnode(unsigned int *a1)
{
  v1 = *a1;
  v2 = (*a1 >> 26) & 0x1F;
  if (!v2 || (v3 = *(a1 + 6), (v4 = (v3 >> 26) & 0x1F) == 0))
  {
    if ((v1 & 0x7C000000) == 0 && (*(a1 + 9) & 0x7C) != 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if ((v3 & 0x3FFFFFF) << (26 - v4) >= (v1 & 0x3FFFFFF) << (26 - v2))
  {
    return 0;
  }

LABEL_8:
  v6 = *(a1 + 2);
  v7 = *a1;
  *a1 = *(a1 + 6);
  *(a1 + 2) = *(a1 + 5);
  *(a1 + 6) = v7;
  *(a1 + 5) = v6;
  return 1;
}

uint64_t msl_payload_get_uniquing_table_index(unint64_t a1)
{
  v1 = 42;
  if ((a1 & 1) == 0)
  {
    v1 = 34;
  }

  v2 = a1 >> v1;
  if (a1 - 1 >= 0xFFFFFFFFFFFFFFFELL)
  {
    return -1;
  }

  else
  {
    return v2;
  }
}

uint64_t radix_tree_insert_recursive(mach_vm_address_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned __int16 a5, int a6)
{
  v8 = a1;
LABEL_2:
  while (2)
  {
    if (a6 >= 52)
    {
      radix_tree_insert_recursive_cold_4();
    }

    v9 = a5;
    if (*(*v8 + 12) < a5)
    {
      radix_tree_insert_recursive_cold_3();
    }

    v10 = v8;
    v11 = 0;
    v12 = *v8 + 12 * a5 + 20;
    v13 = 1;
    while (1)
    {
      v14 = v13;
      v15 = (v12 + 6 * v11);
      v16 = *v15;
      v17 = v16 & 0x7C000000;
      if ((v16 & 0x7C000000) == 0)
      {
        break;
      }

      v18 = 0;
      v19 = v16 & 0x3FFFFFF;
      v20 = (v16 >> 26) & 0x1F;
      v21 = -a6;
      while (v19 != ((a2 >> (v21 - v20)) & ~(-1 << (v20 + v18))))
      {
        v22 = v20 + v18;
        v19 >>= 1;
        --v18;
        v17 -= 0x4000000;
        LOBYTE(v21) = v21 + 1;
        if (v22 == 1)
        {
          goto LABEL_11;
        }
      }

      if (v20 + v18)
      {
        if (v18)
        {
          v47 = a6;
          result = radix_tree_allocate_node(v10);
          if (!result)
          {
            return result;
          }

          a5 = result;
          v48 = v47 + ((v16 >> 26) & 0x1F) + v18;
          v31 = *(*a1 + 12);
          v32 = *a1 + 20;
          if (v31 >= v9)
          {
            v33 = (v32 + 12 * v9);
          }

          else
          {
            v33 = 0;
          }

          v34 = v33 + 6 * v11;
          v35 = v32 + 12 * a5;
          if (v31 < a5)
          {
            v35 = 0;
          }

          v36 = (*v34 - v17) & 0x7C000000;
          v37 = *v35 & 0x83FFFFFF | v36;
          *v35 = v37;
          v38 = *v34 & 0x80000000;
          *v35 = v38 | v37 & 0x7FFFFFFF;
          *(v35 + 4) = *(v34 + 2);
          *v35 = v36 & 0xFC000000 | *v34 & ~(-1 << (((*v34 >> 26) & 0x1F) - ((v16 >> 26) & 0x1F) - v18)) & 0x3FFFFFF | v38;
          *v34 = ((*v34 & 0x3FFFFFFu) >> (((*v34 >> 26) & 0x1F) - ((v16 >> 26) & 0x1F) - v18)) + v17;
          *(v34 + 2) = a5;
          fixnode(v33);
          v8 = a1;
          a6 = v48;
        }

        else
        {
          if ((v16 & 0x80000000) != 0)
          {
            radix_tree_insert_recursive_cold_1();
          }

          a5 = *(v15 + 2);
          a6 += v20;
          v8 = v10;
        }

        goto LABEL_2;
      }

LABEL_11:
      v13 = 0;
      v11 = 1;
      if ((v14 & 1) == 0)
      {
        radix_tree_panic("MallocStackLogging INTERNAL ERROR: at least one edge must prefix-match or be unused\n");
        goto LABEL_44;
      }
    }

    v8 = v10;
    v23 = a6;
    node = radix_tree_allocate_node(v10);
    v25 = v23;
    a5 = node;
    if (v23 < 26)
    {
      if (!node)
      {
        return 0;
      }

      if (*(*v8 + 12) >= v9)
      {
        v26 = (*v8 + 12 * v9 + 20);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26 + 6 * v11;
      *(v27 + 2) = node;
      v28 = v23 + 26;
      *v27 = (a2 >> (38 - v25)) & 0x3FFFFFF | 0x68000000;
      if (*(*v8 + 12) >= node)
      {
        v29 = (*v8 + 12 * node + 20);
      }

      else
      {
        v29 = 0;
      }

      bzero(v29, 0xCuLL);
      fixnode(v26);
      a6 = v28;
      continue;
    }

    break;
  }

  if (node)
  {
    if (*(*v8 + 12) >= v9)
    {
      v39 = (*v8 + 12 * v9 + 20);
    }

    else
    {
      v39 = 0;
    }

    v40 = v39 + 6 * v11;
    *(v40 + 2) = a5;
    *v40 = (a2 >> 12) & ~(-1 << (52 - v23)) & 0x3FFFFFF | ((52 - v23) << 26) | 0x80000000;
    v41 = *v8 + 12 * a5 + 20;
    if (*(*v8 + 12) < a5)
    {
      v41 = 0;
    }

    *v41 = a4;
    v42 = *v8;
    v43 = a3 >> *(*v8 + 8);
    *(v41 + 8) = v43;
    if (v43 << *(v42 + 8) == a3)
    {
      fixnode(v39);
      return 1;
    }

LABEL_44:
    radix_tree_insert_recursive_cold_2();
  }

  return 0;
}

uint64_t radix_tree_allocate_node(mach_vm_address_t *a1)
{
  v2 = *a1;
  if (!*(v2 + 16))
  {
    v3 = radix_tree_size(v2);
    v4 = v3 <= 0x60000 ? 2 * v3 : 786432;
    if (v4 > v3)
    {
      v5 = v3;
      pages_no_footprint = sld_allocate_pages_no_footprint(v4);
      if (pages_no_footprint)
      {
        v7 = pages_no_footprint;
        v8 = MEMORY[0x1E69E9A60];
        if (mach_vm_copy(*MEMORY[0x1E69E9A60], *a1, v5, pages_no_footprint))
        {
          mach_vm_deallocate(*v8, v7, v4);
        }

        else
        {
          v9 = *(*a1 + 12);
          mach_vm_deallocate(*v8, *a1, v5);
          *a1 = v7;
          *(v7 + 12) = ((v4 & 0x1FFFFC) - 20) / 0xC;
          *(v7 + 16) = v9;
          *(v7 + 12 * v9 + 22) = 0;
          *(*a1 + 12 * v9 + 20) = v9 + 1;
        }
      }
    }
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  if (!v11)
  {
    return v11;
  }

  v12 = *(v10 + 12);
  if (v12 < v11)
  {
    radix_tree_allocate_node_cold_1();
  }

  v13 = (v10 + 20 + 12 * v11);
  v14 = *v13;
  *(v10 + 16) = v14;
  if (!v14 || (v13[2] & 1) != 0)
  {
LABEL_19:
    bzero(v13, 0xCuLL);
    return v11;
  }

  if (v12 >= v14)
  {
    if (v14 + 1 < v12)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *(v10 + 20 + 12 * v14) = v15;
    goto LABEL_19;
  }

  v17 = radix_tree_panic("radix tree is corrupt, next_free=%d num_nodes=%d\n", v14, v12);
  return radix_tree_size(v17);
}

uint64_t radix_tree_size(uint64_t a1)
{
  v1 = 3 * *(a1 + 12);
  result = (12 * *(a1 + 12) + 16403) & 0x1FC000;
  if ((result - 4 * v1 - 32) <= 0xFFFFFFFFFFFFFFF3)
  {
    radix_tree_size_cold_1();
  }

  return result;
}

uint64_t radix_tree_delete_recursive(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 52)
  {
    radix_tree_delete_recursive_cold_3();
  }

  if (!a3)
  {
    radix_tree_delete_recursive_cold_2();
  }

  v5 = a1;
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = (a3 + 6 * v6);
    v10 = *v9;
    v11 = *v9 & 0x3FFFFFF;
    if ((*v9 & 0x7C000000) != 0 && ((a2 >> (-a4 - ((v10 >> 26) & 0x1F))) & ~(-1 << (v10 >> 26))) == v11)
    {
      break;
    }

    v7 = 0;
    v13 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      return v13 & v11;
    }
  }

  v14 = *(v9 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    v15 = *(v9 + 2);
    goto LABEL_17;
  }

  *(a1 + 12);
  if (!radix_tree_delete_recursive(a1))
  {
    v11 = 0;
    v13 = 1;
    return v13 & v11;
  }

  v15 = *(v9 + 2);
  if (*(v5 + 12) < v15)
  {
    radix_tree_delete_recursive_cold_1();
  }

  v16 = v5 + 20 + 12 * *(v9 + 2);
  if ((*(v16 + 3) & 0x7C) == 0 && (*(v16 + 9) & 0x7C) == 0)
  {
    a1 = v5;
LABEL_17:
    radix_tree_free_node(a1, v15);
    v17 = (a3 + 6);
    if (v8)
    {
      *a3 = *v17;
      *(a3 + 4) = *(a3 + 10);
    }

    *v17 &= 0x83FFFFFF;
  }

  v13 = 1;
  v11 = 1;
  return v13 & v11;
}

uint64_t radix_tree_free_node(uint64_t result, int a2)
{
  if (*(result + 12) < a2)
  {
    radix_tree_free_node_cold_1();
  }

  v2 = result + 12 * a2;
  *(v2 + 20) = *(result + 16);
  *(v2 + 22) = 1;
  *(result + 16) = a2;
  return result;
}

uint64_t radix_tree_panic(char *__format, ...)
{
  va_start(va, __format);
  va_copy(v4, va);
  vsnprintf(__str, 0x100uLL, __format, va);
  v1 = abort_with_reason();
  return radix_tree_init(v1);
}

uint64_t radix_tree_init(uint64_t a1, uint64_t a2)
{
  strcpy(a1, "radixv3");
  if (a2 <= 20)
  {
    radix_tree_init_cold_2();
  }

  *(a1 + 12) = (a2 - 20) / 0xCu;
  if (((a2 - 20) / 0xCu) <= 2u)
  {
    radix_tree_init_cold_1();
  }

  *(a1 + 16) = 1;
  bzero((a1 + 20), 0xCuLL);
  bzero((a1 + 32), 0xCuLL);
  *(a1 + 32) = 2;
  *(a1 + 8) = 12;
  return a1;
}

vm_address_t radix_tree_create()
{
  result = sld_allocate_pages_no_footprint(0x4000uLL);
  if (result)
  {
    return radix_tree_init(result, 0x4000);
  }

  return result;
}

uint64_t radix_tree_destroy(mach_vm_address_t a1)
{
  v2 = radix_tree_size(a1);
  result = mach_vm_deallocate(*MEMORY[0x1E69E9A60], a1, v2);
  if (result)
  {
    radix_tree_destroy_cold_1();
  }

  return result;
}

uint64_t radix_tree_count_recursive(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = a1 + 20;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (a2 + 6 * v4);
    v10 = *v9;
    if ((*v9 & 0x7C000000) != 0)
    {
      v11 = *(v9 + 2);
      if (*(a1 + 12) >= v11)
      {
        v12 = v6 + 12 * v11;
      }

      else
      {
        v12 = 0;
      }

      if (v10 < 0)
      {
        v13 = *(v12 + 8) << *(a1 + 8);
      }

      else
      {
        v13 = radix_tree_count_recursive(a1, v12);
      }

      v5 += v13;
    }

    v7 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  return v5;
}

uint64_t uniquing_table_unwind_stack_remote(uint64_t result, unsigned int a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = a5 >= 0x200 ? 512 : a5;
    if (a5)
    {
      v10 = 0;
      v11 = *(result + 60);
      v12 = -1;
      while (1)
      {
        if (a2 == -1 || *(result + 8) <= a2)
        {
          goto LABEL_25;
        }

        if (a2 == v12)
        {
          break;
        }

        v13 = *(result + 44);
        if (!v13)
        {
          goto LABEL_24;
        }

        if (*v13 < a2)
        {
          v14 = 0;
          while (1)
          {
            v13 = *(v13 + 24);
            if (!v13)
            {
              break;
            }

            v14 += *v13;
            if (*v13 + v14 >= a2)
            {
              goto LABEL_17;
            }
          }

LABEL_24:
          result = msl_printf(3, "failed to read table node\n", a3, a4, a5, a6, a7, a8, v19);
LABEL_25:
          LODWORD(v9) = v10;
          goto LABEL_28;
        }

        v14 = 0;
LABEL_17:
        v15 = *(v13 + 16);
        if (!v15)
        {
          goto LABEL_24;
        }

        v16 = (v15 + 16 * (a2 - v14));
        if ((v11 & 2) != 0)
        {
          if (!(*(v16 + 10) | (*(v16 + 7) << 32)))
          {
            goto LABEL_25;
          }

          v17 = *v16 | (*(v16 + 2) << 32);
          v18 = 6;
        }

        else
        {
          atomic_load(v16 + 3);
          v17 = *v16;
          v18 = 8;
        }

        *(a3 + 8 * v10) = v17;
        v12 = a2;
        a2 = *(v16 + v18);
        if (++v10 == v9)
        {
          goto LABEL_28;
        }
      }

      result = msl_printf(3, "circular parent reference in uniquing_table_stack_unwind: parent == prev_parent\n", a3, a4, a5, a6, a7, a8, v19);
    }
  }

  LODWORD(v9) = 0;
LABEL_28:
  *a4 = v9;
  return result;
}

unint64_t *uniquing_table_clone_from_task(vm_map_read_t a1, mach_vm_address_t a2)
{
  data = 0;
  dataCnt = 0;
  v3 = (*MEMORY[0x1E69E9AC8] + 67) & -*MEMORY[0x1E69E9AC8];
  v4 = mach_vm_read(a1, a2, v3, &data, &dataCnt);
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x1E69E9848];
    v7 = mach_error_string(v4);
    fprintf(v6, "error while attempting to mach_vm_read remote stack uniquing table (%d): %s\n", v5, v7);
    return 0;
  }

  else
  {
    if (v3 == dataCnt)
    {
      v9 = malloc_type_malloc(0x44uLL, 0x10200402DA45A13uLL);
      v8 = v9;
      if (v9)
      {
        v10 = *data;
        v11 = *(data + 16);
        v12 = *(data + 48);
        *(v9 + 2) = *(data + 32);
        *(v9 + 3) = v12;
        *v9 = v10;
        *(v9 + 1) = v11;
        *(v9 + 44) = 0;
        v13 = (v9 + 44);
        *(v9 + 16) = 1;
        v14 = v9[2];
        if (v14)
        {
          v15 = v9[4];
          do
          {
            v27 = 0;
            v26 = 0;
            if (v14 >= 0x80000000)
            {
              v16 = 0x80000000;
            }

            else
            {
              v16 = v14;
            }

            while (1)
            {
              v17 = mach_vm_read(a1, v15, v16, &v27, &v26);
              if (!v17)
              {
                break;
              }

              v18 = v16 > 0x200001;
              v16 >>= 1;
              if (!v18)
              {
                v22 = v17;
                v23 = *MEMORY[0x1E69E9848];
                v24 = mach_error_string(v17);
                fprintf(v23, "error while attempting to mach_vm_read remote stack uniquing table contents (%d): %s\n", v22, v24);
                free_uniquing_table_chunks(v8);
                free(v8);
                goto LABEL_15;
              }
            }

            v19 = malloc_type_malloc(0x20uLL, 0x102004078DD3916uLL);
            *v13 = v19;
            v20 = v26;
            *v19 = v26 >> 4;
            v21 = v27;
            v19[1] = v20;
            v19[2] = v21;
            v19[3] = 0;
            v15 += v20;
            v13 = v19 + 3;
            v14 -= v20;
          }

          while (v14);
        }
      }
    }

    else
    {
LABEL_15:
      v8 = 0;
    }

    mach_vm_deallocate(*MEMORY[0x1E69E9A60], data, dataCnt);
  }

  return v8;
}

void free_uniquing_table_chunks(uint64_t a1)
{
  v1 = *(a1 + 44);
  if (v1)
  {
    v2 = MEMORY[0x1E69E9A60];
    do
    {
      mach_vm_deallocate(*v2, v1[2], v1[1]);
      v3 = v1[3];
      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

mach_vm_size_t *uniquing_table_chunk_from_slots(mach_vm_address_t a1, unsigned int a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x102004078DD3916uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a2;
    v6 = 16 * a2;
    v4[1] = v6;
    v4[3] = 0;
    address = 0;
    v7 = MEMORY[0x1E69E9A60];
    if (mach_vm_allocate(*MEMORY[0x1E69E9A60], &address, v6, 167772161) || mach_vm_copy(*v7, a1, v5[1], address))
    {
      free(v5);
      return 0;
    }

    else
    {
      v5[2] = address;
    }
  }

  return v5;
}

uint64_t uniquing_table_remote_retain(uint64_t result)
{
  if (!result)
  {
    uniquing_table_remote_retain_cold_2();
  }

  v1 = *(result + 64);
  if (!v1)
  {
    uniquing_table_remote_retain_cold_1();
  }

  *(result + 64) = v1 + 1;
  return result;
}

void uniquing_table_remote_release(_DWORD *a1)
{
  if (a1)
  {
    v2 = a1[16];
    if (!v2)
    {
      uniquing_table_remote_release_cold_1();
    }

    v3 = v2 - 1;
    a1[16] = v3;
    if (!v3)
    {
      free_uniquing_table_chunks(a1);

      free(a1);
    }
  }
}

uint64_t uniquing_table_remote_enumerate_chunks(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (!a2)
    {
      uniquing_table_remote_enumerate_chunks_cold_1();
    }

    for (i = *(result + 44); i; i = *(i + 3))
    {
      result = (*(a2 + 16))(a2, *(i + 2), *i);
    }
  }

  return result;
}

uint64_t uniquing_table_create(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < a1)
  {
    return 0;
  }

  v8 = MEMORY[0x1E69E9AC8];
  v9 = 16 * a1 / *MEMORY[0x1E69E9AC8] * *MEMORY[0x1E69E9AC8] <= 0x100000 ? 0x100000 : 16 * a1 / *MEMORY[0x1E69E9AC8] * *MEMORY[0x1E69E9AC8];
  v10 = 16 * a2 / *MEMORY[0x1E69E9AC8] * *MEMORY[0x1E69E9AC8];
  if (v9 > v10)
  {
    return 0;
  }

  if (dword_1EB422A68)
  {
    v13 = 0;
    goto LABEL_11;
  }

  bzero(&global_stack_uniquing_state, 0x2828uLL);
  qword_1EB422248 = &global_stack_uniquing_state;
  qword_1EB422250 = &global_stack_uniquing_state + 4104;
  dword_1EB422A68 = 1;
  v13 = pthread_key_create(&global_stack_uniquing_state + 1285, msl_tsd_destroy);
  if (v13)
  {
LABEL_11:
    if (!dword_1EB422A6C)
    {
      msl_printf(3, "pthread_key_create failed with error %d; MSL can't proceed with TSD.", a3, a4, a5, a6, a7, a8, v13);
    }

    goto LABEL_14;
  }

  dword_1EB422A6C = 1;
LABEL_14:
  pages_no_footprint = sld_allocate_pages_no_footprint((*v8 + 1679) & -*v8);
  v11 = pages_no_footprint;
  if (pages_no_footprint)
  {
    bzero(pages_no_footprint, 0x690uLL);
    v15 = 0;
    v16 = 96;
    do
    {
      *(v11 + v16) = v9;
      v17 = 4 * v9;
      if (4 * v9 <= v9)
      {
        break;
      }

      if (v15 > 8)
      {
        break;
      }

      ++v15;
      v16 += 160;
      v9 *= 4;
    }

    while (v17 <= v10);
    uniquing_table_initialize(v11);
  }

  return v11;
}

vm_address_t uniquing_table_initialize(uint64_t a1)
{
  v2 = *(a1 + 96);
  result = sld_allocate_pages_no_footprint(v2);
  v4 = (v2 >> 4) & 0xFFFFFFFFFFFFFFELL;
  *(a1 + 72) = result;
  *(a1 + 84) = v4;
  *(a1 + 88) = 19;
  *(a1 + 80) = 0;
  atomic_fetch_add((a1 + 224), 1u);
  *(a1 + 16) = v2;
  *(a1 + 60) = *(a1 + 60) & 0xF9 | 4;
  *(a1 + 52) = *(a1 + 1536);
  v5 = MEMORY[0x1E69E9AC8];
  *(a1 + 32) = result;
  *a1 = v2 / *v5;
  *(a1 + 8) = v4;
  *(a1 + 1676) = atomic_fetch_add_explicit(uniquing_table_initialize_process_wide_generation, 1u, memory_order_relaxed) + 1;
  atomic_store(0, (a1 + 1672));
  return result;
}

uint64_t uniquing_table_is_husk(uint64_t result)
{
  if (result)
  {
    v1 = atomic_load((result + 1672));
    return v1 >> 31;
  }

  return result;
}

uint64_t uniquing_table_destroy_husk_exclusive(mach_vm_address_t a1)
{
  if (!a1 || (v2 = atomic_load((a1 + 1672)), (v2 & 0x80000000) == 0))
  {
    uniquing_table_destroy_husk_exclusive_cold_1();
  }

  return sld_deallocate_pages(a1, 0x690uLL);
}

void uniquing_table_deinitialize(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a2)
    {
      __malloc_lock_stack_logging();
    }

    v10 = atomic_load((a1 + 1672));
    if ((v10 & 0x80000000) != 0)
    {
      msl_printf(3, "redundant attempt to de-initialize the uniquing table.\n", a3, a4, a5, a6, a7, a8, v11);
      if (a2)
      {
        return;
      }
    }

    else
    {
      atomic_store(0xFFFFFFFF, (a1 + 1672));
      uniquing_table_release(a1 + 160 * v10 + 72, 1);
      if (a2)
      {
        return;
      }
    }

    __malloc_unlock_stack_logging();
  }
}

uint64_t msl_get_lite_wrapped_zone()
{
  if (active_lite_zone)
  {
    return *(active_lite_zone + 200);
  }

  else
  {
    return 0;
  }
}

vm_address_t create_and_insert_lite_zone(_BYTE *a1)
{
  *a1 = 0;
  if (active_lite_zone)
  {
    create_and_insert_lite_zone_cold_1();
  }

  v2 = *MEMORY[0x1E69E9AC8] + 207;
  v3 = -*MEMORY[0x1E69E9AC8];
  result = sld_allocate_pages_no_footprint(v2 & v3);
  if (result)
  {
    v5 = result;
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = stack_logging_lite_size;
    *(result + 24) = stack_logging_lite_malloc;
    *(result + 32) = stack_logging_lite_calloc;
    *(result + 40) = stack_logging_lite_valloc;
    *(result + 48) = stack_logging_lite_free;
    *(result + 56) = stack_logging_lite_realloc;
    *(result + 64) = stack_logging_lite_destroy;
    *(result + 72) = "MallocStackLoggingLiteZone_Wrapper";
    *(result + 80) = stack_logging_lite_batch_malloc;
    *(result + 88) = stack_logging_lite_batch_free;
    *(result + 96) = stack_logging_lite_zone_introspect;
    *(result + 104) = 15;
    *(result + 112) = stack_logging_lite_memalign;
    *(result + 120) = stack_logging_lite_free_definite_size;
    *(result + 128) = stack_logging_lite_pressure_relief;
    *(result + 136) = stack_logging_lite_claimed_address;
    *(result + 144) = 0;
    *(result + 152) = stack_logging_lite_malloc_with_options;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 160) = 0u;
    zone = malloc_create_zone(0, 0x400u);
    malloc_zone_unregister(zone);
    v5[1].free = zone;
    active_lite_zone = v5;
    v7 = off_1EB422B20();
    lite_helper_zone = v7;
    if (zone->version >= 0xF && zone[1].reserved1 && (reserved1 = zone[1].reserved1, *(v7 + 104) >= 0xFu) && *(v7 + 152))
    {
      v9 = *(v7 + 152);
    }

    else
    {
      v5[1].reserved1 = 0;
    }

    mprotect(v5, v2 & v3, 1);
    malloc_zone_register(v5);
    malloc_zone_register(zone);
    malloc_set_zone_name(v5, "MallocStackLoggingLiteZone_Wrapper");
    malloc_set_zone_name(zone, "MallocStackLoggingLiteZone");
    result = off_1EB422B18(v5);
    *a1 = 1;
  }

  return result;
}

uint64_t stack_logging_lite_valloc(uint64_t a1, unint64_t a2)
{
  if (stack_logging_lite_enabled != 1 || (v3 = *(a1 + 200), (malloc_get_thread_options() & 4) != 0))
  {
    v6 = *(lite_helper_zone + 40);

    return v6();
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (!required_allocation_size(v3, a2, &v9, &v8))
    {
      return 0;
    }

    v4 = v8;
    v5 = (*(v3 + 40))(v3, v8);
    if (v5)
    {
      add_stack_to_ptr(v3, v5, a2, v9, v4);
    }

    return v5;
  }
}

uint64_t stack_logging_lite_realloc(uint64_t a1, char *a2, unint64_t a3)
{
  v6 = *(a1 + 200);
  v7 = (*(v6 + 16))(v6);
  v8 = v7;
  if (stack_logging_lite_enabled)
  {
    v9 = malloc_get_thread_options() & 4;
    v10 = v9 == 0;
    v11 = v8 != 0;
    if (v8)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v32 = 0;
      v33 = 0;
      v13 = 0;
      if (required_allocation_size(v6, a3, &v33, &v32))
      {
        v30 = 0;
        v31 = 0;
        msl_payload_get_size_info(&a2[v8 - 8], &a2[v8 - 16], &v31, &v30);
        v14 = *&a2[v8 - 8];
        v15 = v32;
        v13 = (*(v6 + 56))(v6, a2, v32);
        if (v13)
        {
          uniquing_table_index = msl_payload_get_uniquing_table_index(v14);
          if (uniquing_table_index != -1)
          {
            v17 = global_uniquing_table();
            if (v17)
            {
              uniquing_table_stack_release(v17, uniquing_table_index, 0, v18, v19, v20, v21, v22, v30);
            }
          }

          if (v13 == a2)
          {
            v29 = (*(v6 + 16))(v6, v13);
            v23 = v33;
            if (v29 == v8)
            {
              if (v33 <= v8 - v30)
              {
                v23 = v8 - v30;
              }

              v15 = v8;
            }
          }

          else
          {
            v23 = v33;
          }

          add_stack_to_ptr(v6, v13, a3, v23, v15);
        }
      }

      return v13;
    }
  }

  else
  {
    v10 = 0;
    v11 = v7 != 0;
  }

  if (v11 || v10)
  {
    v13 = stack_logging_lite_malloc(a1, a3);
    if (v13)
    {
      v26 = malloc_size(a2);
      v27 = malloc_size(v13);
      if (v26 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      memcpy(v13, a2, v28);
    }

    stack_logging_lite_free(a1, a2);
    return v13;
  }

  v24 = *(lite_helper_zone + 56);

  return v24();
}

uint64_t stack_logging_lite_destroy(mach_vm_address_t a1)
{
  if (!active_lite_zone)
  {
    stack_logging_lite_destroy_cold_2();
  }

  malloc_destroy_zone(*(a1 + 200));
  result = mach_vm_deallocate(*MEMORY[0x1E69E9A60], a1, (*MEMORY[0x1E69E9AC8] + 207) & -*MEMORY[0x1E69E9AC8]);
  if (result)
  {
    stack_logging_lite_destroy_cold_1();
  }

  active_lite_zone = 0;
  return result;
}

uint64_t stack_logging_lite_batch_malloc(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (stack_logging_lite_enabled != 1 || (v7 = *(a1 + 200), (malloc_get_thread_options() & 4) != 0))
  {
    v14 = *(lite_helper_zone + 80);

    return v14();
  }

  else
  {
    v16 = 0;
    v17 = 0;
    if (!required_allocation_size(v7, a2, &v17, &v16))
    {
      return 0;
    }

    v8 = v16;
    v9 = (*(v7 + 80))(v7, v16, a3, a4);
    v10 = v9;
    if (v9)
    {
      v11 = v17;
      v12 = v9;
      do
      {
        v13 = *a3++;
        add_stack_to_ptr(v7, v13, a2, v11, v8);
        --v12;
      }

      while (v12);
    }

    return v10;
  }
}

uint64_t stack_logging_lite_batch_free(uint64_t result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = *(result + 200);
    v5 = a3;
    do
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = (*(v4 + 16))(v4, *a2);
        if (v7)
        {
          v8 = msl_payload_from_lite_zone_ptr_internal(v6, v7);
          uniquing_table_index = msl_payload_get_uniquing_table_index(v8);
          if (uniquing_table_index != -1)
          {
            v10 = global_uniquing_table();
            if (v10)
            {
              uniquing_table_stack_release(v10, uniquing_table_index, 0, v11, v12, v13, v14, v15, v16);
            }
          }

          result = (*(v4 + 48))(v4, v6);
        }

        else
        {
          result = (*(lite_helper_zone + 48))(lite_helper_zone, v6);
        }
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t stack_logging_lite_malloc_with_options(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (stack_logging_lite_enabled != 1 || (v7 = *(a1 + 200), (malloc_get_thread_options() & 4) != 0))
  {
    v10 = *(lite_helper_zone + 152);

    return v10();
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (!required_allocation_size(v7, a3, &v13, &v12))
    {
      return 0;
    }

    v8 = v12;
    v9 = (*(v7 + 152))(v7, a2, v12, a4);
    if (v9)
    {
      add_stack_to_ptr(v7, v9, a3, v13, v8);
    }

    return v9;
  }
}

uint64_t msl_lite_block_size()
{
  if (active_lite_zone)
  {
    return (*(*(active_lite_zone + 200) + 16))();
  }

  else
  {
    return 0;
  }
}

double stack_logging_lite_introspect_statistics(uint64_t a1, _OWORD *a2)
{
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

double stack_logging_lite_introspect_task_statistics(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

uint64_t msl_printf_allowStdErr(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = _simple_salloc();
  if (result)
  {
    v8 = result;
    getprogname();
    getpid();
    _simple_sprintf();
    _simple_vsprintf();
    if (a2 && (debug_mode & 1) == 0)
    {
      _simple_put();
    }

    if (!*MEMORY[0x1E69E9B30])
    {
      _simple_string();
      _simple_asl_log();
    }

    return MEMORY[0x1EEE73F08](v8);
  }

  else if (a2 && (debug_mode & 1) == 0)
  {
    getprogname();
    getpid();
    _simple_dprintf();

    return MEMORY[0x1EEE73F20](2, a3, a4);
  }

  return result;
}

uint64_t is_debuggability_unrestrained()
{
  getpid();
  v0 = *MEMORY[0x1E69E9BD0];
  if (!sandbox_check())
  {
    *task_info_outCnt = 0;
    *task_info_out = 0;
    *&task_info_out[2] = task_info_outCnt;
    if (!syscall(381, "AMFI", 90, task_info_out) && (task_info_outCnt[0] & 0x100) != 0)
    {
      return 1;
    }
  }

  v12 = 0;
  getpid();
  *&v1 = -1;
  *(&v1 + 1) = -1;
  *task_info_out = v1;
  v14 = v1;
  task_info_outCnt[0] = 8;
  if (!task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, task_info_outCnt) && !csops_audittoken() && (v12 & 4) != 0)
  {
    return 1;
  }

  result = os_variant_allows_internal_security_policies();
  if (!result)
  {
    return result;
  }

  getpid();
  v10 = 381;
  if (sandbox_check() || (*task_info_out = 0, v10 = "AMFI", syscall(381)))
  {
    task_info_outCnt[0] = 0;
    *task_info_out = 4;
    if (sysctlbyname("security.codesigning.config", task_info_outCnt, task_info_out, 0, 0))
    {
      msl_printf(5, "Unable to retrieve boot-args. Recommend checking sandbox violations\n", v3, v4, v5, v6, v7, v8, v10);
      return 0;
    }

    v9 = task_info_outCnt[0];
  }

  else
  {
    v9 = task_info_out[0];
  }

  return v9 & 1;
}

BOOL msl_get_writable_log_dir(_BOOL8 result, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    bzero(v23, 0x400uLL);
    if (msl_log_dir)
    {
      if (realpath_DARWIN_EXTSN(&msl_log_dir, v23))
      {
        if (access(v23, 2) == -1)
        {
          msl_printf(3, "MallocStackLoggingDirectory env var set to unwritable path '%s'\n", v10, v11, v12, v13, v14, v15, v23);
        }

        else
        {
          if (!sandbox_query_approval_policy_for_path())
          {
LABEL_14:
            result = _platform_strlcpy() < a2;
            goto LABEL_16;
          }

          msl_printf(3, "MallocStackLoggingDirectory env var set to a sandbox-protected path '%s' (required: '%s')\n", v16, v17, v18, v19, v20, v21, v23);
        }
      }

      else
      {
        msl_printf(3, "MallocStackLoggingDirectory env var set to unresolvable path '%s'\n", v4, v5, v6, v7, v8, v9, &msl_log_dir);
      }
    }

    if ((!realpath_DARWIN_EXTSN("/tmp/", v23) || access(v23, 2) == -1) && (!tmp_dir || !realpath_DARWIN_EXTSN(&tmp_dir, v23) || access(v23, 2) == -1))
    {
      result = 0;
      *v3 = 0;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_16:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t msl_set_flags_from_environment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  msl_cache_environment(a1);
  stack_logging_enable_logging = 0;
  stack_logging_dontcompact = 0;
  v9 = _simple_getenv();
  if (!v9)
  {
    result = _simple_getenv();
    if (!result)
    {
      return result;
    }

    v9 = result;
    stack_logging_dontcompact = 1;
  }

  result = MEMORY[0x1AC594C70](v9, "0", 1);
  if (result)
  {
    result = MEMORY[0x1AC594C70](v9, "N", 1);
    if (result)
    {
      result = MEMORY[0x1AC594C30](v9, "full");
      if (result)
      {
        result = MEMORY[0x1AC594C30](v9, "lite");
        if (result)
        {
          result = MEMORY[0x1AC594C30](v9, "malloc");
          if (result)
          {
            result = MEMORY[0x1AC594C30](v9, "vm");
            if (result)
            {
              result = MEMORY[0x1AC594C30](v9, "vmlite");
              if (result)
              {
                if (!stack_logging_dontcompact)
                {
                  stack_logging_mode = 4;
                  return result;
                }

                stack_logging_mode = 1;
                goto LABEL_24;
              }

              v17 = 0;
              v18 = 5;
            }

            else
            {
              v17 = 0;
              v18 = 3;
            }
          }

          else
          {
            v18 = 2;
            v17 = 1;
          }
        }

        else
        {
          v17 = 0;
          v18 = 4;
        }
      }

      else
      {
        v17 = 1;
        v18 = 1;
      }

      stack_logging_mode = v18;
      if (stack_logging_dontcompact)
      {
        v19 = v17 == 0;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
LABEL_24:

        return msl_printf(5, "stack logging compaction turned off; size of log files on disk can increase rapidly\n", v11, v12, v13, v14, v15, v16, a9);
      }
    }
  }

  return result;
}

uint64_t msl_cache_environment(uint64_t a1)
{
  if (!is_debuggability_unrestrained())
  {
    msl_printf(5, "process is not in a debuggable environment; unsetting MallocStackLoggingDirectory environment variable\n", v2, v3, v4, v5, v6, v7, v15);
    unsetenv("MallocStackLoggingDirectory");
    goto LABEL_30;
  }

  if (a1)
  {
    v8 = _simple_getenv();
  }

  else
  {
    v8 = getenv("MallocStackLoggingDirectory");
  }

  if (v8 && _platform_strlcpy() >= 0x400)
  {
    msl_log_dir = 0;
  }

  if (a1)
  {
    v9 = _simple_getenv();
  }

  else
  {
    v9 = getenv("TMPDIR");
  }

  if (v9 && _platform_strlcpy() >= 0x400)
  {
    tmp_dir = 0;
  }

  if (a1)
  {
    v10 = _simple_getenv();
  }

  else
  {
    v10 = getenv("MallocStackLoggingNoReaping");
  }

  v11 = v10;
  if (v10 && strcasecmp(v10, "no") && MEMORY[0x1AC594C30](v11, "0"))
  {
    msl_should_reap = 1;
  }

  debug_mode = 1;
  if (a1)
  {
    v12 = _simple_getenv();
  }

  else
  {
    v12 = getenv("MallocDebugReport");
  }

  v13 = v12;
  if (v12)
  {
    if (!MEMORY[0x1AC594C30](v12, "stderr"))
    {
      goto LABEL_29;
    }

    if (!MEMORY[0x1AC594C30](v13, "crash"))
    {
      goto LABEL_30;
    }

    if (!MEMORY[0x1AC594C30](v13, "none"))
    {
      debug_mode = 1;
    }

    else
    {
LABEL_29:
      debug_mode = 0;
    }
  }

LABEL_30:
  if (isatty(2))
  {
    debug_mode = 0;
  }

  return initialize_no_footprint_for_debug_flag();
}

uint64_t msl_initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  stack_logging_finished_init = 1;
  stack_logging_postponed = 0;
  result = stack_logging_mode;
  if (stack_logging_mode)
  {
    if ((stack_logging_mode & 0xFFFFFFFE) == 4)
    {
      result = create_lite_zone_if_has_default_zone0(stack_logging_mode, a2, a3, a4, a5, a6, a7, a8);
      if (!result)
      {
        return result;
      }

      result = stack_logging_mode;
    }

    return enable_stack_logging_for_mode_and_prepare_to_log_stacks(result);
  }

  return result;
}

uint64_t create_lite_zone_if_has_default_zone0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!malloc_msl_lite_hooks)
  {
    v9 = "malloc_msl_lite_hooks not initialized so can't turn on lite mode.\n";
LABEL_8:
    msl_printf(3, v9, a3, a4, a5, a6, a7, a8, v11);
    v8 = 0;
    return v8 & 1;
  }

  if (!malloc_msl_lite_hooks())
  {
    v9 = "zone[0] is not the normal default zone so can't turn on lite mode.\n";
    goto LABEL_8;
  }

  if (lite_zone_created_predicate != -1)
  {
    _os_once();
  }

  v8 = 1;
  return v8 & 1;
}

BOOL enable_stack_logging_for_mode_and_prepare_to_log_stacks(uint64_t a1)
{
  v2 = global_uniquing_table();
  if (uniquing_table_is_husk(v2))
  {
    return 0;
  }

  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v10 = "recording VM allocation (but not malloc) stacks to disk using standard recorder";
        v11 = 3;
        goto LABEL_13;
      case 4:
        v10 = "recording malloc (and VM allocation) stacks using lite mode";
        v11 = 4;
        goto LABEL_13;
      case 5:
        v10 = "recording VM allocation (but not malloc) stacks using lite mode";
        v11 = 5;
LABEL_13:
        v12 = 0;
LABEL_15:
        v13 = 1;
        goto LABEL_16;
    }

LABEL_19:
    msl_printf(3, "invalid mode %d cannot be enabled\n", v3, v4, v5, v6, v7, v8, a1);
    return 0;
  }

  if (a1 == 1)
  {
    v10 = "recording malloc and VM allocation stacks to disk using standard recorder";
    v11 = 1;
    v12 = 1;
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    goto LABEL_19;
  }

  v10 = "recording malloc (but not VM allocation) stacks to disk using standard recorder";
  v11 = 2;
  v12 = 1;
  v13 = 0;
LABEL_16:

  return enable_stack_logging_for_mode_and_prepare_to_log_stacks_helper(v11, v12, v13, v10);
}

void *msl_copy_msl_lite_hooks(void *__src, unint64_t a2)
{
  if (a2 >= 0x18)
  {
    v2 = 24;
  }

  else
  {
    v2 = a2;
  }

  return memcpy(&malloc_msl_lite_hooks, __src, v2);
}

BOOL msl_turn_on_stack_logging(uint64_t a1)
{
  v2 = malloc_register_stack_logger();
  if (stack_logging_enable_logging)
  {
    msl_printf(5, "malloc stack logging already enabled.\n", v4, v5, v6, v7, v8, v9, v18);
    return 0;
  }

  if ((a1 & 0xFFFFFFFE) == 4 && !create_lite_zone_if_has_default_zone0(v2, v3, v4, v5, v6, v7, v8, v9))
  {
    return 0;
  }

  __malloc_lock_stack_logging();
  if (stack_logging_enable_logging)
  {
    msl_printf(5, "malloc stack logging already enabled.\n", v11, v12, v13, v14, v15, v16, v18);
    v10 = 0;
  }

  else
  {
    msl_cache_environment(0);
    v10 = enable_stack_logging_for_mode_and_prepare_to_log_stacks(a1);
  }

  __malloc_unlock_stack_logging();
  return v10;
}

void msl_turn_off_stack_logging()
{
  __malloc_lock_stack_logging();
  if (!stack_logging_enable_logging)
  {
    msl_printf(3, "can't turn off malloc stack logging because it was not enabled.\n", v0, v1, v2, v3, v4, v5, v7);
    goto LABEL_16;
  }

  if (stack_logging_mode <= 2)
  {
    if (stack_logging_mode == 1)
    {
      v6 = "turning off stack logging (had been recording malloc and VM allocation stacks to disk using standard recorder)\n";
      goto LABEL_14;
    }

    if (stack_logging_mode == 2)
    {
      v6 = "turning off stack logging (had been recording malloc stacks to disk using standard recorder)\n";
      goto LABEL_14;
    }

LABEL_19:
    msl_printf(3, "invalid stack_logging_mode %d in turn_off_stack_logging\n", v0, v1, v2, v3, v4, v5, stack_logging_mode);
    goto LABEL_15;
  }

  if (stack_logging_mode == 3)
  {
    v6 = "turning off stack logging (had been recording VM allocation stacks to disk using standard recorder)\n";
    goto LABEL_14;
  }

  if (stack_logging_mode == 4)
  {
    v6 = "turning off stack logging (had been recording malloc and VM allocation stacks using lite mode)\n";
    goto LABEL_14;
  }

  if (stack_logging_mode != 5)
  {
    goto LABEL_19;
  }

  v6 = "turning off stack logging (had been recording VM allocation stacks using lite mode)\n";
LABEL_14:
  msl_printf(5, v6, v0, v1, v2, v3, v4, v5, v7);
LABEL_15:
  *MEMORY[0x1E69E9B48] = 0;
  *MEMORY[0x1E69E99E8] = 0;
  stack_logging_enable_logging = 0;
  disable_stack_logging_lite();
LABEL_16:

  __malloc_unlock_stack_logging();
}

uint64_t msl_set_mode_for_pid(unsigned int a1, unsigned int a2)
{
  if (a1 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1AACA5488[a1];
  }

  v22[3] = v2;
  v22[4] = v3;
  v22[0] = v4 | a2;
  v11 = sysctlbyname("kern.memorystatus_vm_pressure_send", 0, 0, v22, 8uLL);
  if (v11)
  {
    v12 = __error();
    v21 = strerror(*v12);
    msl_printf(3, "send_msl_command - sysctl: kern.memorystatus_vm_pressure_send failed %s", v13, v14, v15, v16, v17, v18, v21);
  }

  else
  {
    msl_printf(5, "send_msl_command - success!", v5, v6, v7, v8, v9, v10, v20);
  }

  return v11;
}

void msl_handle_memory_event(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (a1 & 0xF0000000) == 0 || (a1 & 0xFFFFFFF) != 0 || (warn_mode_entered & 1) != 0 || (warn_mode_disable_retries & 1) != 0 || (warn_mode_entered)
  {
    goto LABEL_27;
  }

  if (a1 < 0)
  {
    msl_turn_off_stack_logging();
  }

  else if ((a1 & 0x40000000) != 0)
  {
    if ((~a1 & 0x30000000) != 0)
    {
      if ((a1 & 0x20000000) == 0 || msl_type_enabled_at_runtime != 5 && msl_type_enabled_at_runtime)
      {
        goto LABEL_27;
      }

      msl_type_enabled_at_runtime = 5;
      v9 = 5;
      goto LABEL_26;
    }

    if ((msl_type_enabled_at_runtime & 0xFFFFFFFB) == 0)
    {
      msl_type_enabled_at_runtime = 4;
      v9 = 4;
      goto LABEL_26;
    }
  }

  else if (a1 == 805306368)
  {
    if (msl_type_enabled_at_runtime <= 1)
    {
      msl_type_enabled_at_runtime = 1;
      v9 = 1;
LABEL_26:
      msl_turn_on_stack_logging(v9);
    }
  }

  else
  {
    if ((a1 & 0x10000000) == 0)
    {
      if ((a1 & 0x20000000) == 0 || msl_type_enabled_at_runtime != 3 && msl_type_enabled_at_runtime)
      {
        goto LABEL_27;
      }

      msl_type_enabled_at_runtime = 3;
      v9 = 3;
      goto LABEL_26;
    }

    if ((msl_type_enabled_at_runtime & 0xFFFFFFFD) == 0)
    {
      msl_type_enabled_at_runtime = 2;
      v9 = 2;
      goto LABEL_26;
    }
  }

LABEL_27:
  if ((v8 & 0x34) != 0)
  {
    if ((v8 & 0x24) != 0 && (warn_mode_disable_retries & 1) == 0)
    {
      warn_mode_disable_retries = 1;
      if (warn_mode_entered == 1)
      {
        msl_printf(3, "msl_handle_memory_pressure_event: stopping stack-logging\n", a3, a4, a5, a6, a7, a8, *&v17.st_dev);
        msl_turn_off_stack_logging();
        __malloc_lock_stack_logging();
        __delete_and_unlink_uniquing_table_while_locked();
        __malloc_unlock_stack_logging();
        warn_mode_entered = 0;
      }
    }

    if ((v8 & 0x10) != 0 && (v8 & 4) == 0 && (warn_mode_entered & 1) == 0 && (warn_mode_disable_retries & 1) == 0)
    {
      if (is_eligible_for_lite_mode_mre_handling_needs_check == 1)
      {
        if (!is_eligible_for_lite_mode_mre_handling_is_eligible)
        {
          return;
        }

        goto LABEL_45;
      }

      memset(&v17, 0, sizeof(v17));
      has_internal_diagnostics = stat("/var/db/disableLiteModeMemoryResourceExceptionHandling", &v17);
      if (has_internal_diagnostics)
      {
        if (stat("/var/db/enableLiteModeMemoryResourceExceptionHandling", &v17))
        {
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
        }

        else
        {
          has_internal_diagnostics = 1;
        }
      }

      is_eligible_for_lite_mode_mre_handling_is_eligible = has_internal_diagnostics;
      is_eligible_for_lite_mode_mre_handling_needs_check = 1;
      if (has_internal_diagnostics)
      {
LABEL_45:
        if (getenv("MallocEnableMSLAtLimitWarning"))
        {
          msl_printf(3, "msl_handle_memory_pressure_event: approaching memory limit. Starting stack-logging.\n", v11, v12, v13, v14, v15, v16, *&v17.st_dev);
          if (msl_turn_on_stack_logging(4))
          {
            max_lite_mallocs = 500000;
            warn_mode_entered = 1;
          }
        }
      }
    }
  }
}

BOOL enable_stack_logging_for_mode_and_prepare_to_log_stacks_helper(int a1, int a2, int a3, uint64_t a4)
{
  v14 = __prepare_to_log_stacks((a1 & 0xFFFFFFFE) == 4);
  if (v14)
  {
    if (a2)
    {
      *MEMORY[0x1E69E9B48] = __disk_stack_logging_log_stack;
    }

    if (a3)
    {
      *MEMORY[0x1E69E99E8] = __disk_stack_logging_log_stack;
    }

    stack_logging_mode = a1;
    stack_logging_enable_logging = 1;
    if (a1 == 4)
    {
      enable_stack_logging_lite();
    }

    msl_printf(5, "%s\n", v8, v9, v10, v11, v12, v13, a4);
    set_malloc_stack_logging_start_timestamp();
  }

  return v14 != 0;
}

void __delete_and_unlink_uniquing_table_while_locked()
{
  if (pre_write_buffers)
  {
    v0 = *(pre_write_buffers + 16);
    if (v0)
    {
      if (!uniquing_table_is_husk(*(pre_write_buffers + 16)))
      {
        uniquing_table_deinitialize(v0, 1, v1, v2, v3, v4, v5, v6);
      }
    }
  }

  *MEMORY[0x1E69E9B28] = 0;
}

uint64_t __prepare_to_log_stacks(int a1)
{
  if (pre_write_buffers)
  {
    return 1;
  }

  last_logged_malloc_address = 0;
  if (stack_logging_dontcompact)
  {
    v3 = 0;
  }

  else
  {
    v3 = logging_use_compaction;
  }

  logging_use_compaction = v3;
  pages_no_footprint = sld_allocate_pages_no_footprint(0x4000uLL);
  pre_write_buffers = pages_no_footprint;
  if (!pages_no_footprint)
  {
    v21 = "error creating VM region for stack logging output buffers\n";
LABEL_13:
    msl_printf(3, v21, v5, v6, v7, v8, v9, v10, v36);
    msl_printf(3, "stack logging disabled due to previous errors.\n", v22, v23, v24, v25, v26, v27, v37);
    stack_logging_enable_logging = 0;
    *MEMORY[0x1E69E9B48] = 0;
    *MEMORY[0x1E69E99E8] = 0;
    disable_stack_logging_lite();
    return 0;
  }

  strcpy(pages_no_footprint, "mslshm1");
  v11 = pre_write_buffers;
  *(pre_write_buffers + 8) = 0;
  *(v11 + 52) = 0;
  *(v11 + 56) = *(v11 + 56) & 0xFC | a1 & 1 | 2;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  v12 = uniquing_table_create(0x10000u, 0x40000000u, v5, v6, v7, v8, v9, v10);
  if (!v12)
  {
    v21 = "error while allocating stack uniquing table\n";
    goto LABEL_13;
  }

  v13 = v12;
  if (a1 || create_log_file())
  {
    v20 = pre_write_buffers;
    *(pre_write_buffers + 16) = v13;
    *MEMORY[0x1E69E9B28] = v20;
    return 1;
  }

  uniquing_table_deinitialize(v13, 1, v14, v15, v16, v17, v18, v19);
  uniquing_table_destroy_husk_exclusive(v13);
  v28 = munmap(pre_write_buffers, 0x4000uLL);
  pre_write_buffers = 0;
  if (!stack_logging_postponed)
  {
    disable_stack_logging(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  return 0;
}

void disable_stack_logging(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  msl_printf(3, "stack logging disabled due to previous errors.\n", a3, a4, a5, a6, a7, a8, vars0);
  stack_logging_enable_logging = 0;
  *MEMORY[0x1E69E9B48] = 0;
  *MEMORY[0x1E69E99E8] = 0;

  disable_stack_logging_lite();
}

uint64_t create_log_file()
{
  v60 = *MEMORY[0x1E69E9840];
  v0 = getpid();
  pages_no_footprint = __stack_log_file_path__;
  if (!__stack_log_file_path__)
  {
    pages_no_footprint = sld_allocate_pages_no_footprint((*MEMORY[0x1E69E9AC8] + 1023) & -*MEMORY[0x1E69E9AC8]);
    __stack_log_file_path__ = pages_no_footprint;
    if (!pages_no_footprint)
    {
      v28 = "unable to allocate memory for stack log file path\n";
      goto LABEL_26;
    }
  }

  if (!msl_get_writable_log_dir(pages_no_footprint, 0x400uLL))
  {
    if (stack_logging_finished_init)
    {
      if (confstr(65537, pages_no_footprint, 0x400uLL) - 1024 >= 0xFFFFFFFFFFFFFC01)
      {
        goto LABEL_6;
      }
    }

    else
    {
      msl_printf(6, "stack logging postponed until after initialization.\n", v8, v9, v10, v11, v12, v13, v57);
      stack_logging_postponed = 1;
    }

    *pages_no_footprint = 0;
    if (stack_logging_postponed)
    {
LABEL_27:
      v27 = 0;
      goto LABEL_28;
    }

    v28 = "No writeable tmp dir\n";
LABEL_26:
    msl_printf(3, v28, v2, v3, v4, v5, v6, v7, v57);
    goto LABEL_27;
  }

LABEL_6:
  v14 = _platform_strlen();
  if (v14 >= 0x400)
  {
    create_log_file_cold_1();
  }

  if ((v14 && *(__stack_log_file_path__ + v14 - 1) == 47 || _platform_strlcat() == v14 + 1) && _platform_strlcat() <= 0x3FF && append_int(__stack_log_file_path__, v0, 0xAu) && _platform_strlcat() <= 0x3FF && append_int(__stack_log_file_path__, pre_write_buffers, 0x10u) && _platform_strlcat() <= 0x3FF && _platform_strlcat() <= 0x3FF)
  {
    v21 = __stack_log_file_path__;
    v22 = _platform_strlen();
    v23 = 0;
    v24 = v22 << 32;
      ;
    }

    if (v23 - 1 > 1023)
    {
      v26 = 63;
LABEL_32:
      v40 = __error();
      v41 = 0;
      *v40 = v26;
LABEL_33:
      index_file_descriptor = v41;
      msl_printf(5, "stack logs being written to %s\n", v34, v35, v36, v37, v38, v39, __stack_log_file_path__);
      v27 = __stack_log_file_path__;
      *(pre_write_buffers + 40) = __stack_log_file_path__;
      *(pre_write_buffers + 48) = _platform_strlen();
      goto LABEL_28;
    }

    v31 = &v21[v23 - v22];
    v32 = (v31 - 2);
    if (v31 - 2 < v21 || (v33 = (v31 - 1), _platform_strchr()))
    {
      v26 = 22;
      goto LABEL_32;
    }

    getentropy(buffer, 0x10uLL);
    v42 = 0;
    do
    {
      if (*v32 != 88 || v42 > 0xE)
      {
        break;
      }

      v44 = buffer[v42++];
      *v32-- = my_mkstemps_padchar[(v44 - 62 * ((133 * (v44 >> 1)) >> 12))];
    }

    while (v32 >= v21);
    memcpy(__dst, v32 + 1, &v21[-(v24 >> 32)] - v32 + v23 - 2);
    v41 = open(v21, 553650690, 384);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    while (2)
    {
      v45 = __error();
      if (v33 != v32 + 1 && *v45 == 17)
      {
        v52 = __dst;
        v53 = v32 + 1;
        while (1)
        {
          v54 = *v53;
          v55 = _platform_strchr();
          if (!v55)
          {
            *__error() = 5;
            goto LABEL_54;
          }

          v56 = *(v55 + 1);
          if (!*(v55 + 1))
          {
            v56 = 48;
          }

          *v53 = v56;
          if (v56 != *v52)
          {
            break;
          }

          ++v53;
          ++v52;
          if (v33 == v53)
          {
            goto LABEL_54;
          }
        }

        v41 = open(v21, 553650690, 384);
        if (v41 < 0)
        {
          continue;
        }

        goto LABEL_33;
      }

      break;
    }

LABEL_54:
    index_file_descriptor = -1;
    msl_printf(3, "unable to create stack logs at %s\n", v46, v47, v48, v49, v50, v51, __stack_log_file_path__);
  }

  else
  {
    msl_printf(3, "unable to construct valid stack logging path\n", v15, v16, v17, v18, v19, v20, v57);
  }

  v27 = 0;
  *__stack_log_file_path__ = 0;
LABEL_28:
  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

void reap_orphaned_log_files_once()
{
  if ((reap_orphaned_log_files_once_orphaned_log_files & 1) == 0)
  {
    __swp(&reap_orphaned_log_files_once_orphaned_log_files, &reap_orphaned_log_files_once_orphaned_log_files);
    if ((&reap_orphaned_log_files_once_orphaned_log_files & 1) == 0)
    {
      v0 = getpid();
      get_remote_env_var(v0, "MallocStackLoggingDontDeleteStackLogFile", v3);
      if (v3[0] != 49)
      {
        atexit(delete_log_files);
      }

      v1 = getprogname();
      if (!v1 || (v2 = v1, MEMORY[0x1AC594C30](v1, "sandboxd")) && MEMORY[0x1AC594C30](v2, "taskgated"))
      {
        if (msl_should_reap_old_logs())
        {
          reap_orphaned_log_files(v0, 0);
        }
      }
    }
  }
}

uint64_t get_remote_env_var(int a1, uint64_t a2, _BYTE *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *v22 = 0x800000001;
  v19 = 8;
  v20 = 0;
  result = sysctl(v22, 2u, &v20, &v19, 0, 0);
  if (!result)
  {
    v6 = MEMORY[0x1E69E9AC8];
    result = sld_allocate_pages((v20 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]);
    if (result)
    {
      v7 = result;
      v21 = v20;
      *v23 = 0x3100000001;
      v24 = a1;
      if (!sysctl(v23, 3u, result, &v21, 0, 0))
      {
        v8 = v21;
        v9 = v7 + v21;
        *(v7 + v21 - 1) = 0;
        v10 = v7 + 1;
        if ((*v7 & 0x80000000) == 0 && v10 < v9)
        {
          v11 = 0;
          do
          {
            do
            {
              if (!*v10)
              {
                break;
              }

              ++v10;
            }

            while (v10 < v9);
            if (v10 < v9)
            {
              v12 = v7 + v8 - v10;
              while (!*v10)
              {
                ++v10;
                if (!--v12)
                {
                  v10 = v7 + v8;
                  break;
                }
              }
            }

            if (v11 >= *v7)
            {
              break;
            }

            ++v11;
          }

          while (v10 < v9);
        }

        v13 = _platform_strlen();
        v14 = &v10[v13];
        if (&v10[v13 + 1] < v9)
        {
          v15 = v13;
          v16 = v7 + v8;
          while (*v10)
          {
            if (!MEMORY[0x1AC594C70](v10, a2, v15) && *v14 == 61)
            {
              _platform_strlcpy();
              break;
            }

            if (v10 < v9)
            {
              v17 = v16 - v10;
              while (*v10)
              {
                ++v10;
                if (!--v17)
                {
                  v10 = v16;
                  break;
                }
              }
            }

            v14 = &(++v10)[v15];
            if (&v10[v15 + 1] >= v9)
            {
              break;
            }
          }
        }
      }

      result = sld_deallocate_pages(v7, (v20 + *v6 - 1) & -*v6);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t delete_log_files()
{
  result = __stack_log_file_path__;
  if (__stack_log_file_path__ && *__stack_log_file_path__)
  {
    if (delete_logging_file(__stack_log_file_path__))
    {
      return msl_printf(5, "unable to delete stack logs from %s\n", v1, v2, v3, v4, v5, v6, __stack_log_file_path__);
    }

    else
    {
      result = msl_printf(5, "stack logs deleted from %s\n", v1, v2, v3, v4, v5, v6, __stack_log_file_path__);
      *__stack_log_file_path__ = 0;
    }
  }

  return result;
}

uint64_t reap_orphaned_log_files(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  reap_orphaned_log_files_in_hierarchy("/tmp/", 0, a1, a2);
  v4 = v9;
  get_raw_log_dirs(a1, v9, v10);
  v5 = 1;
  do
  {
    v6 = v5;
    if (*v4 && MEMORY[0x1AC594C30](v4, "/tmp/"))
    {
      reap_orphaned_log_files_in_hierarchy(v4, 0, a1, a2);
    }

    v5 = 0;
    v4 = v10;
  }

  while ((v6 & 1) != 0);
  result = reap_orphaned_log_files_in_hierarchy("/private/var/mobile/Containers/Data/Application", "<application-UUID>/tmp", a1, a2);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t flush_data()
{
  v40 = *MEMORY[0x1E69E9840];
  if (index_file_descriptor == -1)
  {
    result = create_log_file();
    if (!result)
    {
      goto LABEL_25;
    }
  }

  v1 = pre_write_buffers;
  v2 = *(pre_write_buffers + 52);
  if (!v2)
  {
    v20 = 0;
LABEL_24:
    *(v1 + 8) += v20;
    *(v1 + 52) = 0;
    result = 1;
    goto LABEL_25;
  }

  v3 = (pre_write_buffers + 64);
  while (1)
  {
    v4 = index_file_descriptor;
    v5 = write(index_file_descriptor, v3, v2);
    if (v5 != -1)
    {
      goto LABEL_19;
    }

    if (*__error() != 9)
    {
      goto LABEL_22;
    }

    if (index_file_descriptor != v4)
    {
      break;
    }

    v12 = __stack_log_file_path__;
    v19 = open(__stack_log_file_path__, 553648137);
    if (v19 < 3)
    {
      v39 = 0;
      v38 = 0;
      do
      {
        if (v19 == -1)
        {
          msl_printf(3, "unable to re-open stack logging file %s\n", v13, v14, v15, v16, v17, v18, v12);
          delete_log_files();
          goto LABEL_22;
        }

        *(&v38 + v19) = 1;
        v19 = dup(v19);
      }

      while (v19 < 3);
      if (v38)
      {
        close(0);
      }

      if (HIDWORD(v38))
      {
        close(1);
      }

      if (v39)
      {
        close(2);
      }
    }

    index_file_descriptor = v19;
    v5 = write(v19, v3, v2);
    if (v5 == -1)
    {
      goto LABEL_22;
    }

LABEL_19:
    v3 += v5;
    v2 -= v5;
    if (!v2)
    {
      v1 = pre_write_buffers;
      v20 = *(pre_write_buffers + 52);
      goto LABEL_24;
    }
  }

  msl_printf(3, "Unknown file descriptor; expecting stack logging index file\n", v6, v7, v8, v9, v10, v11, v36);
LABEL_22:
  v21 = __stack_log_file_path__;
  v22 = __error();
  strerror(*v22);
  msl_printf(3, "Unable to write to stack logging file %s (%s)\n", v23, v24, v25, v26, v27, v28, v21);
  msl_printf(3, "stack logging disabled due to previous errors.\n", v29, v30, v31, v32, v33, v34, v37);
  stack_logging_enable_logging = 0;
  *MEMORY[0x1E69E9B48] = 0;
  *MEMORY[0x1E69E99E8] = 0;
  disable_stack_logging_lite();
  result = 0;
LABEL_25:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void msl_fork_child()
{
  msl_lock_init();
  msl_turn_off_stack_logging();
  __malloc_lock_stack_logging();
  if (__stack_log_file_path__)
  {
    sld_deallocate_pages(__stack_log_file_path__, (*MEMORY[0x1E69E9AC8] + 1023) & -*MEMORY[0x1E69E9AC8]);
    __stack_log_file_path__ = 0;
  }

  if (index_file_descriptor != -1)
  {
    close(index_file_descriptor);
    index_file_descriptor = -1;
  }

  v0 = pre_write_buffers;
  if (pre_write_buffers)
  {
    if (!*(pre_write_buffers + 24) || (radix_tree_destroy(*(pre_write_buffers + 24)), (v0 = pre_write_buffers) != 0))
    {
      if (*(v0 + 16))
      {
        __delete_and_unlink_uniquing_table_while_locked();
        v0 = pre_write_buffers;
      }
    }

    sld_deallocate_pages(v0, 0x4000uLL);
    pre_write_buffers = 0;
  }

  __malloc_unlock_stack_logging();
}

uint64_t msl_start_reading(mach_port_name_t a1, mach_vm_address_t a2, _DWORD *a3)
{
  v5 = retain_file_streams_for_task_with_error(a1, a2, &v11);
  if (!v5)
  {
    return 5;
  }

  v6 = v5;
  updated = update_cache_for_file_streams();
  if (updated)
  {
    v8 = updated;
    release_file_streams_for_task(a1);
  }

  else
  {
    v9 = v6[5];
    if (v9)
    {
      LODWORD(v9) = *(v9 + 56) & 1;
    }

    v8 = 0;
    *a3 = v9;
  }

  return v8;
}

uint64_t update_cache_for_file_streams()
{
  v0 = MEMORY[0x1EEE9AC00]();
  __ptr[512] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  if (!v1)
  {
    v1 = malloc_type_calloc(1uLL, 0x4048uLL, 0x1020040901AD395uLL);
    *(v0 + 32) = v1;
    v1[4] = 17;
    *(v1 + 2053) = 0;
    *v1 = 0x40000;
    *(v1 + 1) = 0x4000;
    *(v1 + 3) = malloc_type_calloc(0x4000uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    v7 = *(v0 + 40);
    if (v7)
    {
      v8 = *(v7 + 24);
      if (v8)
      {
        v9 = map_shared_memory_from_task(*v0, v8, *(v7 + 32));
        *(v1 + 2056) = v9;
        if (!v9)
        {
          v45 = *(v0 + 4);
          msl_printf(3, "warning: unable to map vm_stackid table from %llx in target process %d; no VM stack backtraces will be available.\n", v10, v11, v12, v13, v14, v15, *(*(v0 + 40) + 24));
        }
      }
    }
  }

  v2 = *(v0 + 4);
  v3 = getpid();
  suspend_token = 0;
  if (v2 != v3)
  {
    task_suspend2(*v0, &suspend_token);
  }

  memset(&v49, 0, sizeof(v49));
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = fileno(v4);
    fstat(v5, &v49);
    st_size = v49.st_size;
  }

  else
  {
    st_size = 0;
  }

  v16 = *(v0 + 8);
  if (v16)
  {
    v17 = 32;
  }

  else
  {
    v17 = 24;
  }

  v18 = *(v1 + 2053);
  v19 = st_size - v18;
  v20 = *(v0 + 40);
  if (v17 <= st_size - v18)
  {
    if (v20)
    {
      v22 = 0;
      v23 = v18 + v1[21];
      *(v1 + 2053) = v23;
      v19 = st_size - v23;
      v21 = 1;
      goto LABEL_20;
    }

LABEL_19:
    v22 = 0;
    v21 = 0;
    goto LABEL_20;
  }

  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = 0;
  v22 = v1[21] / v17;
LABEL_20:
  if (v17 <= v19 || v21 || !v20)
  {
    if (!v20)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = *(v20 + 52) != v1[21];
  }

  if ((*(v20 + 56) & 1) == 0)
  {
LABEL_26:
    if (v21)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (*(v1 + 2054) == 0 || v21)
  {
LABEL_27:
    memcpy(v1 + 8, v20, 0x4000uLL);
    if (*(*(v0 + 40) + 16))
    {
      msl_uniquing_table_release(*(v1 + 2054));
      *(v1 + 2054) = uniquing_table_clone_from_task(*v0, *(*(v0 + 40) + 16));
      v24 = 1;
    }

    else
    {
      v24 = 1;
      fwrite("Uniquing table deleted in remote task. This could be the result of memory pressure\n", 0x53uLL, 1uLL, *MEMORY[0x1E69E9848]);
    }

    goto LABEL_32;
  }

LABEL_30:
  v24 = 0;
LABEL_32:
  if (v2 != v3)
  {
    task_resume2(suspend_token);
  }

  if (v24)
  {
    if (!*(v1 + 2054))
    {
      result = 5;
      goto LABEL_69;
    }
  }

  else if (v17 > v19)
  {
    goto LABEL_68;
  }

  if (v17 > v19)
  {
    goto LABEL_59;
  }

  if (v16)
  {
    v26 = 128;
  }

  else
  {
    v26 = 170;
  }

  v47 = *(v0 + 16);
  if (fseeko(v47, *(v1 + 2053), 0))
  {
    fwrite("error while attempting to cache information from remote stack index file. (update_cache_for_file_streams)\n", 0x6AuLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  v27 = 0;
  v28 = *(v1 + 2053);
  v48 = v19 / v17;
  for (i = v0; ; v0 = i)
  {
    if (v48 - v27 < v26)
    {
      v26 = v48 - v27;
    }

    v29 = fread(__ptr, v17, v26, v47);
    v30 = v29;
    if (!*(v0 + 8))
    {
      break;
    }

    if (!v29)
    {
      goto LABEL_56;
    }

    v31 = 0;
    v32 = 1;
    do
    {
      insert_node(v1, __ptr[4 * v31 + 1] & 0xF0FFFFFFFFFFFFFFLL ^ 0x5555, v28);
      ++v27;
      v28 += v17;
      v31 = v32;
      v33 = v30 > v32++;
    }

    while (v33);
LABEL_55:
    ;
  }

  if (v29)
  {
    v34 = 0;
    v35 = 1;
    do
    {
      insert_node(v1, HIDWORD(__ptr[3 * v34]) ^ 0x5555, v28);
      ++v27;
      v28 += v17;
      v34 = v35;
      v33 = v30 > v35++;
    }

    while (v33);
    goto LABEL_55;
  }

LABEL_56:
  if (v48 > v27)
  {
    fwrite("insufficient data in remote stack index file; expected more records.\n", 0x45uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  *(v1 + 2053) += v27 * v17;
LABEL_59:
  if (v24)
  {
    v36 = *(v1 + 5);
    v37 = v1[21] / v17;
    if (*(v0 + 8))
    {
      if (v22 < v37)
      {
        v38 = v22;
        v39 = v36 + v17 * v22;
        v40 = 32 * v22 + 104;
        do
        {
          insert_node(v1, *(v1 + v40) & 0xF0FFFFFFFFFFFFFFLL ^ 0x5555, v39);
          ++v38;
          v39 += v17;
          v40 += 32;
        }

        while (v38 < v37);
      }
    }

    else if (v22 < v37)
    {
      v41 = v22;
      v42 = v36 + v17 * v22;
      v43 = 24 * v22 + 100;
      do
      {
        insert_node(v1, *(v1 + v43) ^ 0x5555, v42);
        ++v41;
        v42 += v17;
        v43 += 24;
      }

      while (v41 < v37);
    }
  }

LABEL_68:
  result = 0;
LABEL_69:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

void release_file_streams_for_task(int a1)
{
  os_unfair_lock_lock_with_options();
  v2 = remote_fds_count;
  if (remote_fds_count)
  {
    v3 = remote_fds;
    while (1)
    {
      v4 = *v3;
      if (*v3)
      {
        if (*v4 == a1)
        {
          break;
        }
      }

      ++v3;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    --v4[3];
  }

LABEL_8:
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v6 = v5;
  atomic_compare_exchange_strong_explicit(&remote_fd_list_lock, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {

    os_unfair_lock_unlock(&remote_fd_list_lock);
  }
}

uint64_t msl_stop_reading(int a1)
{
  release_file_streams_for_task(a1);
  os_unfair_lock_lock_with_options();
  v2 = remote_fds_count;
  if (!remote_fds_count)
  {
    goto LABEL_6;
  }

  v3 = remote_fds;
  while (1)
  {
    v4 = *v3;
    if (*v3)
    {
      if (*v4 == a1)
      {
        break;
      }
    }

    ++v3;
    if (!--v2)
    {
      goto LABEL_6;
    }
  }

  if (v4[3] <= 0)
  {
    free_file_streams(v4);
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = 5;
LABEL_7:
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v7 = v6;
  atomic_compare_exchange_strong_explicit(&remote_fd_list_lock, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {
    os_unfair_lock_unlock(&remote_fd_list_lock);
  }

  return v5;
}

void free_file_streams(void *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    fclose(v2);
  }

  v3 = *(a1 + 5);
  if (v3)
  {
    munmap(v3, 0x4000uLL);
  }

  v4 = *(a1 + 4);
  if (v4)
  {
    free(*(v4 + 24));
    msl_uniquing_table_release(*(*(a1 + 4) + 16432));
    free(*(a1 + 4));
  }

  bzero(a1, 0x30uLL);
}

BOOL msl_payload_version_from_task(mach_port_name_t a1)
{
  v2 = retain_file_streams_for_task_with_error(a1, 0, 0);
  if (v2)
  {
    release_file_streams_for_task(a1);
  }

  return v2 != 0;
}

uint64_t msl_coldest_frame_is_threadid(mach_port_name_t a1)
{
  v2 = retain_file_streams_for_task_with_error(a1, 0, 0);
  if (!v2)
  {
    return 1;
  }

  v3 = v2[5];
  if (v3)
  {
    v4 = (*(v3 + 56) & 3) == 0;
  }

  else
  {
    v4 = 1;
  }

  release_file_streams_for_task(a1);
  return v4;
}

uint64_t msl_payload_for_malloc_address_in_task(mach_port_name_t a1, unint64_t a2)
{
  v4 = retain_file_streams_for_task_with_error(a1, 0, 0);
  if (v4)
  {
    v5 = msl_payload_for_malloc_address_in_task_helper(v4, a2);
    release_file_streams_for_task(a1);
    return v5;
  }

  else
  {

    return msl_payload_get_invalid();
  }
}

uint64_t msl_payload_for_malloc_address_in_task_helper(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (update_cache_for_file_streams())
  {
LABEL_2:
    v4 = *MEMORY[0x1E69E9840];

    return msl_payload_get_invalid();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    v8 = (a2 >> 2) % (v7 - 1);
    v9 = *(v6 + 16);
    v10 = 1;
    v11 = *(v6 + 24);
    while (1)
    {
      v12 = *(v11 + 16 * v8);
      if (v12 == a2)
      {
        break;
      }

      if (v12)
      {
        v13 = v8 + v7 / ((2 * v9) | 1) * v10;
        v14 = v13 >= v7 ? v7 : 0;
        v8 = v13 - v14;
        if (v10++ <= v9)
        {
          continue;
        }
      }

      goto LABEL_2;
    }

    v16 = *(v11 + 16 * v8 + 8);
    invalid = msl_payload_get_invalid();
    v18 = *(a1 + 32);
    if (v16 >= *(v18 + 16424))
    {
      if (*(a1 + 40))
      {
        v21 = v18 + v16 - *(v18 + 40);
        if (*(a1 + 8))
        {
          invalid = *(v21 + 112);
        }

        else
        {
          invalid = *(v21 + 104);
        }
      }
    }

    else
    {
      if (*(a1 + 8))
      {
        v19 = 32;
      }

      else
      {
        v19 = 24;
      }

      fseeko(*(a1 + 16), v16, 0);
      if (fread(__ptr, v19, 1uLL, *(a1 + 16)))
      {
        v20 = 16;
        if (!*(a1 + 8))
        {
          v20 = 8;
        }

        invalid = *&__ptr[v20];
      }
    }

    v22 = *MEMORY[0x1E69E9840];
    return invalid;
  }
}

uint64_t msl_get_frames_for_address(mach_port_name_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v10 = retain_file_streams_for_task_with_error(a1, 0, &v16);
  if (!v10)
  {
    return 5;
  }

  v11 = v10;
  v12 = msl_payload_for_malloc_address_in_task_helper(v10, a2);
  if (msl_payload_is_invalid(v12))
  {
    frames_from_task_helper = 5;
  }

  else
  {
    uniquing_table_index = msl_payload_get_uniquing_table_index(v12);
    frames_from_task_helper = msl_uniquing_table_get_frames_from_task_helper(v11, uniquing_table_index, a3, a4, a5, 0);
  }

  release_file_streams_for_task(a1);
  return frames_from_task_helper;
}

uint64_t msl_uniquing_table_get_frames_from_task_helper(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, BOOL *a6)
{
  if (a2 > 0xFFFFFFFE)
  {
    return 5;
  }

  v11 = a2;
  result = update_cache_for_file_streams();
  if (!result)
  {
    uniquing_table_unwind_stack_remote(*(*(a1 + 32) + 16432), v11, a3, a5, a4, v13, v14, v15);
    if (a6)
    {
      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = (*(v16 + 56) & 3) == 0;
      }

      else
      {
        v17 = 1;
      }

      *a6 = v17;
    }

    if (*a5)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t msl_copy_disk_stack_logs(mach_port_name_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = retain_file_streams_for_task_with_error(a1, 0, &v21);
  if (!v4)
  {
    return 5;
  }

  v5 = v4;
  v6 = v4[2];
  if (v6)
  {
    v7 = malloc_type_malloc(0x100000uLL, 0xB5AAD70BuLL);
    updated = update_cache_for_file_streams();
    if (updated)
    {
LABEL_4:
      v9 = updated;
      if (v7)
      {
LABEL_30:
        free(v7);
      }
    }

    else
    {
      v20 = v3;
      v10 = *(v5 + 2);
      fseeko(v6, 0, 0);
      if (v10)
      {
        v11 = 32;
      }

      else
      {
        v11 = 24;
      }

      if (v10)
      {
        v12 = 0x8000;
      }

      else
      {
        v12 = 43690;
      }

      v13 = *&v5[4][108]._r / v11;
      while (1)
      {
        v14 = v12 >= v13 ? v13 : v12;
        v15 = fread(v7, v11, v14, v6);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = (*(a2 + 16))(a2, v7, v15 * v11);
        if (v17)
        {
          v9 = v17;
          goto LABEL_29;
        }

        v13 -= v16;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      if (ferror(v6))
      {
        v9 = 5;
        goto LABEL_29;
      }

LABEL_24:
      if (!v5[5])
      {
        v9 = 0;
LABEL_29:
        v3 = v20;
        if (!v7)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v18 = v5[4];
      v3 = v20;
      if (HIDWORD(v18->_write))
      {
        updated = (*(a2 + 16))(a2, &v18->_ub._size);
        goto LABEL_4;
      }

      v9 = 0;
      if (v7)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v9 = 5;
  }

LABEL_31:
  release_file_streams_for_task(v3);
  return v9;
}

uint64_t msl_disk_stack_logs_enumerate_from_buffer(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    if (a2 >= 0x20)
    {
      v5 = a2 >> 5;
      v6 = (a1 + 16);
      do
      {
        v7 = *(v6 - 2);
        v8 = *(v6 - 1) & 0xF0FFFFFFFFFFFFFFLL ^ 0x5555;
        v9 = *v6;
        v10 = *(a4 + 16);
        v18 = *(v6 + 2);
        v19 = 0;
        v20 = v9;
        v21 = v7;
        v22 = v8;
        v10(a4, &v18);
        v6 += 4;
        --v5;
      }

      while (v5);
    }
  }

  else if (a2 >= 0x18)
  {
    v11 = a2 / 0x18;
    v12 = (a1 + 8);
    do
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1) ^ 0x5555;
      v15 = *v12;
      v16 = *(a4 + 16);
      v18 = *(v12 + 2);
      v19 = 0;
      v20 = v15;
      v21 = v13;
      v22 = v14;
      v16(a4, &v18);
      v12 += 3;
      --v11;
    }

    while (v11);
  }

  return 0;
}

uint64_t msl_disk_stack_logs_enumerate_from_task(mach_port_name_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __msl_disk_stack_logs_enumerate_from_task_block_invoke;
  v5[3] = &__block_descriptor_tmp;
  v5[4] = a3;
  v5[5] = a4;
  return msl_disk_stack_logs_enumerate_from_task_with_block(a1, a2, v5);
}

uint64_t msl_disk_stack_logs_enumerate_from_task_with_block(mach_port_name_t a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = retain_file_streams_for_task_with_error(a1, 0, __ptr);
  if (v6)
  {
    v7 = v6;
    updated = update_cache_for_file_streams();
    if (!updated)
    {
      v10 = 0;
      if (*(v7 + 2))
      {
        v11 = 32;
      }

      else
      {
        v11 = 24;
      }

      v12 = 64;
      if (!*(v7 + 2))
      {
        v12 = 85;
      }

      __nitems = v12;
      v41 = 1;
      v13 = __ptr;
      __size = v11;
      __stream = *(v7 + 2);
      v42 = *(*(v7 + 4) + 16424) / v11;
      v38 = v7;
      while (1)
      {
        v14 = __nitems;
        if (__nitems >= v42)
        {
          v14 = v42;
        }

        __nitems = v14;
        if (v14)
        {
          if (!__stream)
          {
            goto LABEL_37;
          }

          fseeko(__stream, v10, 0);
          v15 = fread(__ptr, __size, __nitems, __stream);
          v16 = ftello(__stream);
          if (v16 < 0)
          {
            goto LABEL_37;
          }

          v10 = v16;
          v42 -= v15;
          if (!v15)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (!*(v7 + 5))
          {
            goto LABEL_37;
          }

          v17 = *(v7 + 4);
          v18 = *(v17 + 40) + *(v17 + 84);
          v19 = v18 > v10;
          v20 = v18 - v10;
          if (!v19)
          {
            goto LABEL_37;
          }

          v41 = 0;
          v13 = (v17 + 96);
          v21 = 16320;
          if (v20 < 0x3FC0)
          {
            v21 = v20;
          }

          v15 = v21 / __size;
          v10 += v21 / __size * __size;
          if (!(v21 / __size))
          {
LABEL_37:
            release_file_streams_for_task(a1);
            v9 = 0;
            goto LABEL_38;
          }
        }

        if (*(v7 + 2))
        {
          v22 = 0;
          v23 = 1;
          do
          {
            v24 = &v13[8 * v22];
            v25 = *(v24 + 1);
            if (!a2 || (v25 ^ a2 & 0xF0FFFFFFFFFFFFFFLL) == 0x5555)
            {
              v26 = *v24;
              v27 = *(v24 + 2);
              v28 = *(a3 + 16);
              v44 = v24[6];
              v45 = 0;
              v46 = v27;
              v47 = v26;
              v48 = v25 & 0xF0FFFFFFFFFFFFFFLL ^ 0x5555;
              v28(a3, &v44);
            }

            v22 = v23;
            v19 = v15 > v23++;
          }

          while (v19);
        }

        else
        {
          v29 = 0;
          v30 = 1;
          do
          {
            v31 = v13[6 * v29 + 1];
            if (!a2 || (v31 ^ a2) == 0x5555)
            {
              v32 = &v13[6 * v29];
              v33 = *v32;
              v34 = *(v32 + 1);
              v35 = *(a3 + 16);
              v44 = v32[4];
              v45 = 0;
              v46 = v34;
              v47 = v33;
              v48 = v31 ^ 0x5555;
              v35(a3, &v44);
            }

            v29 = v30;
            v19 = v15 > v30++;
          }

          while (v19);
        }

        v7 = v38;
        if ((v41 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    v9 = updated;
    release_file_streams_for_task(a1);
  }

  else
  {
    v9 = 5;
  }

LABEL_38:
  v36 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __msl_disk_stack_logs_enumerate_from_task_block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return v3(v6, v2);
}

uint64_t msl_payload_for_vm_region_in_task(mach_port_name_t a1, unint64_t a2)
{
  v4 = retain_file_streams_for_task_with_error(a1, 0, &v10);
  if (!v4)
  {
    return msl_payload_get_invalid();
  }

  v5 = v4;
  if (update_cache_for_file_streams())
  {
    release_file_streams_for_task(a1);
    return msl_payload_get_invalid();
  }

  invalid = msl_payload_get_invalid();
  v7 = v5[4];
  if (v7)
  {
    v8 = *(v7 + 16448);
    if (v8)
    {
      invalid = radix_tree_lookup(v8, a2);
    }
  }

  release_file_streams_for_task(a1);
  return invalid;
}

uint64_t msl_uniquing_table_get_frames_from_task(mach_port_name_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, BOOL *a6)
{
  if (a2 > 0xFFFFFFFE)
  {
    return 5;
  }

  v12 = retain_file_streams_for_task_with_error(a1, 0, &v15);
  if (!v12)
  {
    return 5;
  }

  frames_from_task_helper = msl_uniquing_table_get_frames_from_task_helper(v12, a2, a3, a4, a5, a6);
  release_file_streams_for_task(a1);
  return frames_from_task_helper;
}

uint64_t msl_get_frames_for_stackid(mach_port_name_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, BOOL *a6)
{
  v12 = retain_file_streams_for_task_with_error(a1, 0, &v17);
  if (!v12)
  {
    return 5;
  }

  v13 = v12;
  uniquing_table_index = msl_payload_get_uniquing_table_index(a2);
  frames_from_task_helper = msl_uniquing_table_get_frames_from_task_helper(v13, uniquing_table_index, a3, a4, a5, a6);
  release_file_streams_for_task(a1);
  return frames_from_task_helper;
}

uint64_t msl_uniquing_table_read_stack(uint64_t a1, unint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v10 = 5;
  if (!msl_payload_is_invalid(a2))
  {
    uniquing_table_index = msl_payload_get_uniquing_table_index(a2);
    uniquing_table_unwind_stack_remote(a1, uniquing_table_index, a3, a4, a5, v12, v13, v14);
    if (*a4)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return v10;
}

void *msl_uniquing_table_copy_from_task(mach_port_name_t a1)
{
  v2 = retain_file_streams_for_task_with_error(a1, 0, 0);
  if (v2)
  {
    if (update_cache_for_file_streams())
    {
      v2 = 0;
    }

    else
    {
      v3 = v2[4];
      v2 = *(v3 + 16432);
      if (v2)
      {
        *(v3 + 16432) = 0;
      }
    }

    release_file_streams_for_task(a1);
  }

  return v2;
}

uint64_t append_int(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (_platform_strlen() < a3)
  {
    return 0;
  }

  v6 = _platform_strlen();
  LODWORD(v7) = 0;
  v8 = a2;
  do
  {
    v7 = (v7 + 1);
    v9 = v8 >= a3;
    v8 /= a3;
  }

  while (v9);
  v10 = v6 + v7;
  if (v10 > 0x3FF)
  {
    return 0;
  }

  *(a1 + v10) = 0;
  if (v7)
  {
    v11 = (v6 + a1 + v7 - 1);
    do
    {
      *v11-- = a0123456789abcd[a2 % a3];
      a2 /= a3;
      --v7;
    }

    while (v7);
  }

  return 1;
}

uint64_t delete_logging_file(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*result && (memset(&v2, 0, sizeof(v2)), unlink(result)) && !stat(v1, &v2))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *get_raw_log_dirs(int a1, _BYTE *a2, _BYTE *a3)
{
  if (getpid() == a1)
  {
    if (msl_get_tmp_dir())
    {
      _platform_strlcpy();
    }

    else
    {
      *a2 = 0;
    }

    result = msl_get_log_dir();
    if (result)
    {

      return _platform_strlcpy();
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    get_remote_env_var(a1, "TMPDIR", a2);

    return get_remote_env_var(a1, "MallocStackLoggingDirectory", a3);
  }

  return result;
}

FILE *open_log_file_at_path(char *a1, uint64_t a2)
{
  v4 = fopen(a1, "re");
  if (v4)
  {
    if (strrchr(a1, 47) && _platform_strchr() && (v5 = _platform_strchr()) != 0)
    {
      v6 = strtoll((v5 + 1), 0, 16);
      *(a2 + 16) = v4;
      *(a2 + 24) = v6;
    }

    else
    {
      fclose(v4);
      return 0;
    }
  }

  return v4;
}

void *retain_file_streams_for_task_with_error(mach_port_name_t a1, mach_vm_address_t a2, int *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = 0;
    v7 = 5;
    goto LABEL_54;
  }

  x = 0;
  v6 = pid_for_task(a1, &x);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    goto LABEL_54;
  }

  os_unfair_lock_lock_with_options();
  v9 = remote_fds_count;
  if (remote_fds_count)
  {
    v10 = remote_fds;
    v11 = remote_fds_count;
    do
    {
      v8 = *v10;
      if (*v10 && *v8 == a1)
      {
        v7 = 0;
        ++*(v8 + 3);
        goto LABEL_52;
      }

      ++v10;
      --v11;
    }

    while (v11);
    v12 = remote_fds;
    v13 = remote_fds_count;
    do
    {
      v8 = *v12;
      if (*v12 && !*(v8 + 3))
      {
        free_file_streams(*v12);
        goto LABEL_28;
      }

      ++v12;
      --v13;
    }

    while (v13);
    v14 = remote_fds_count;
    v15 = remote_fds;
    while (*v15)
    {
      v15 += 8;
      if (!--v14)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (remote_fds_count)
    {
      v16 = (2 * remote_fds_count);
    }

    else
    {
      v16 = 1;
    }

    v17 = malloc_type_realloc(remote_fds, 8 * v16, 0xD5C9A31AuLL);
    if (!v17)
    {
      v8 = 0;
LABEL_26:
      v7 = 5;
      goto LABEL_52;
    }

    remote_fds = v17;
    remote_fds_count = v16;
    v15 = &v17[8 * v9];
    bzero(v15, 8 * (v16 - v9));
  }

  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040EE5BEA7CuLL);
  *v15 = v8;
  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_28:
  v18 = x;
  *v8 = a1;
  *(v8 + 1) = v18;
  if (a2)
  {
    v7 = map_shared_memory(v8, a2);
    if (v7 == 257)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v7 = 0;
  }

  v19 = *(v8 + 5);
  if (v19)
  {
    if (!*(v19 + 40))
    {
      goto LABEL_44;
    }

    v20 = (*(v19 + 48) + 1);
    v21 = malloc_type_malloc(v20, 0x2011E514uLL);
    outsize = 0;
    mach_vm_read_overwrite(*v8, *(*(v8 + 5) + 40), v20, v21, &outsize);
    if (outsize == v20)
    {
      open_log_file_at_path(v21, v8);
    }

    free(v21);
    if (*(v8 + 5))
    {
      goto LABEL_44;
    }
  }

  if (!*(v8 + 2))
  {
    open_log_file(x, v8);
    if (*(v8 + 5))
    {
LABEL_44:
      *v65 = 0xE00000001;
      v66 = 1;
      v67 = x;
      memset(v34, 0, sizeof(v34));
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v31 = 648;
      v24 = sysctl(v65, 4u, v34, &v31, 0, 0);
      if (v31)
      {
        v25 = v24 == 0;
      }

      else
      {
        v25 = 0;
      }

      v26 = v35 & 4;
      if (!v25)
      {
        v26 = 0;
      }

      *(v8 + 2) = v26;
      *(v8 + 3) = 1;
      goto LABEL_52;
    }
  }

  v22 = *(v8 + 3);
  if (!v22)
  {
LABEL_50:
    free_file_streams(v8);
    v8 = 0;
    if (!v7)
    {
      v7 = 5;
    }

    goto LABEL_52;
  }

  v23 = map_shared_memory(v8, v22);
  if (v23 != 257)
  {
    v7 = v23;
    if (*(v8 + 5))
    {
      goto LABEL_44;
    }

    goto LABEL_50;
  }

LABEL_40:
  free_file_streams(v8);
  v8 = 0;
  v7 = 257;
LABEL_52:
  v27 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v28 = v27;
  atomic_compare_exchange_strong_explicit(&remote_fd_list_lock, &v28, 0, memory_order_release, memory_order_relaxed);
  if (v28 != v27)
  {
    os_unfair_lock_unlock(&remote_fd_list_lock);
  }

LABEL_54:
  if (a3)
  {
    *a3 = v7;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t map_shared_memory(uint64_t a1, mach_vm_address_t a2)
{
  v4 = map_shared_memory_from_task(*a1, a2, 0x4000uLL);
  *(a1 + 40) = v4;
  if (v4)
  {
    result = _platform_memcmp();
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 40);
    v7 = 0x4000;
  }

  else
  {
    v7 = 8;
    v6 = map_shared_memory_from_task(*a1, a2, 8uLL);
    *(a1 + 40) = v6;
    if (!v6)
    {
      v14 = *(a1 + 4);
      msl_printf(3, "warning: unable to map shared memory from %llx in target process %d; no stack backtraces will be available.\n", v8, v9, v10, v11, v12, v13, a2);
      return 5;
    }
  }

  munmap(v6, v7);
  *(a1 + 40) = 0;
  return 257;
}

uint64_t open_log_file(uint64_t result, uint64_t a2)
{
  v3 = result;
  v10 = *MEMORY[0x1E69E9840];
  if ((open_log_file_already_reaped & 1) == 0)
  {
    result = reap_orphaned_log_files(result, a2);
    open_log_file_already_reaped = 1;
  }

  if (!*(a2 + 16))
  {
    result = open_log_file_from_directory(v3, "/tmp/", a2);
    if (!result)
    {
      v4 = v8;
      result = get_raw_log_dirs(v3, v8, v9);
      v5 = 1;
      do
      {
        v6 = v5;
        if (*v4)
        {
          result = open_log_file_from_directory(v3, v4, a2);
        }

        v5 = 0;
        v4 = v9;
      }

      while ((v6 & 1) != 0);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

mach_vm_address_t map_shared_memory_from_task(vm_map_read_t src_task, mach_vm_address_t src_address, mach_vm_size_t a3)
{
  target_address = 0;
  v4 = 1;
  cur_protection = 0;
  if (mach_vm_remap_new(*MEMORY[0x1E69E9A60], &target_address, a3, 0, 33, src_task, src_address, 0, &cur_protection, &v4, 2u))
  {
    return 0;
  }

  else
  {
    return target_address;
  }
}

FILE *open_log_file_from_directory(int a1, char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = opendir(a2);
  if (v6)
  {
    v7 = v6;
    snprintf(__str, 0x400uLL, "%s%d.", "stack-logs.", a1);
    v8 = _platform_strlen();
    while (1)
    {
      v9 = readdir(v7);
      if (!v9)
      {
        break;
      }

      d_name = v9->d_name;
      if (!MEMORY[0x1AC594C70](v9->d_name, __str, v8))
      {
        snprintf(v14, 0x400uLL, "%s/%s", a2, d_name);
        v11 = open_log_file_at_path(v14, a3);
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_8:
    closedir(v7);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void insert_node(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 8);
  v31 = a2 >> 2;
  v5 = (a2 >> 2) % (v4 - 1);
  v6 = *(a1 + 24);
  v7 = v6[2 * v5];
  if (v7)
  {
    v8 = v7 == a2;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    LODWORD(v10) = 0;
    v11 = *(a1 + 16);
    v12 = MEMORY[0x1E69E9848];
    v13 = v4 / ((2 * v11) | 1);
    do
    {
      v10 = (v10 + 1);
      v14 = v5 + v13 * v10;
      if (v14 >= v4)
      {
        v15 = v4;
      }

      else
      {
        v15 = 0;
      }

      if (v10 <= v11)
      {
        v5 = v14 - v15;
      }

      else
      {
        *a1 *= 4;
        *(a1 + 8) = 4 * v4;
        *(a1 + 16) = v11 + 3;
        *(a1 + 24) = malloc_type_calloc(4 * v4, 0x10uLL, 0x1000040451B5BE8uLL);
        if (v4)
        {
          for (i = 0; i != v4; ++i)
          {
            v17 = &v6[2 * i];
            v18 = *v17;
            if (*v17)
            {
              LODWORD(v19) = 0;
              v20 = *(a1 + 8);
              v21 = (v18 >> 2) % (v20 - 1);
              v22 = *(a1 + 16);
              v23 = *(a1 + 24);
              while (1)
              {
                v24 = *(v23 + 16 * v21);
                if (v24 == v18)
                {
                  fwrite("impossible collision! two address==address lists! (transfer_node)\n", 0x42uLL, 1uLL, *v12);
                  goto LABEL_23;
                }

                if (!v24)
                {
                  break;
                }

                v19 = (v19 + 1);
                v25 = v21 + v20 / ((2 * v22) | 1) * v19;
                if (v25 >= v20)
                {
                  v26 = *(a1 + 8);
                }

                else
                {
                  v26 = 0;
                }

                v21 = v25 - v26;
                if (v19 > v22)
                {
                  goto LABEL_23;
                }
              }

              *(v23 + 16 * v21) = *v17;
LABEL_23:
              if (v19 > *(a1 + 16))
              {
                fprintf(*v12, "reporting bad hash function! disk stack logging reader %lu bit. (transfer_node)\n", 64);
              }
            }
          }
        }

        free(v6);
        LODWORD(v10) = 0;
        v4 = *(a1 + 8);
        v5 = v31 % (v4 - 1);
        v11 = *(a1 + 16);
        v6 = *(a1 + 24);
        v13 = v4 / ((2 * v11) | 1);
      }

      v27 = v6[2 * v5];
      if (v27)
      {
        v28 = v27 == a2;
      }

      else
      {
        v28 = 1;
      }
    }

    while (!v28);
  }

  v29 = &v6[2 * v5];
  *v29 = a2;
  v29[1] = a3;
}

uint64_t initialize_no_footprint_for_debug_flag()
{
  v17 = 1;
  if (sysctlbyname("vm.task_no_footprint_for_debug", 0, 0, &v17, 4uLL))
  {
    v6 = __error();
    v7 = strerror(*v6);
    v16 = *__error();
    return msl_printf(3, "could not tag MSL-related memory as no_footprint, so those pages will be included in process footprint - %s (%d)\n", v8, v9, v10, v11, v12, v13, v7);
  }

  else
  {
    result = msl_printf_nostderr(5, "enabled tagging MSL-related memory as no_footprint, so those pages will not be included in process footprint\n", v0, v1, v2, v3, v4, v5, v15);
    enabled_no_footprint = 1;
  }

  return result;
}

vm_address_t sld_allocate_pages_no_footprint(memory_object_size_t a1)
{
  address = 0;
  object_handle = 0;
  if (enabled_no_footprint != 1)
  {
    v4 = a1;
    return sld_allocate_pages(v4);
  }

  size = a1;
  v2 = MEMORY[0x1E69E9A60];
  memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x1E69E9A60], &size, 0, 139267, &object_handle, 0);
  if (memory_entry_64 || ((v4 = size, size >= a1) ? (v5 = object_handle - 1 >= 0xFFFFFFFE) : (v5 = 1), v5))
  {
    if ((atomic_exchange(&sld_allocate_pages_no_footprint_alreadyLoggedOnce, 1u) & 1) == 0)
    {
      v6 = mach_error_string(memory_entry_64);
      msl_printf(3, "allocate_pages(): unable to retrieve memory object: %s (%d)\n", v7, v8, v9, v10, v11, v12, v6);
    }

    v4 = a1;
  }

  else
  {
    v14 = mach_memory_entry_ownership(object_handle, *v2, 1, 2);
    if (v14)
    {
      if ((atomic_exchange(&sld_allocate_pages_no_footprint_alreadyLoggedOnce_4, 1u) & 1) == 0)
      {
        v15 = mach_error_string(v14);
        msl_printf(3, "allocate_pages(): unable to hide memory from phys_footprint: %s (%d)\n", v16, v17, v18, v19, v20, v21, v15);
      }
    }

    else
    {
      v22 = vm_map(*v2, &address, v4, 0, 167772161, object_handle, 0, 0, 3, 3, 1u);
      if (v22)
      {
        if ((atomic_exchange(&sld_allocate_pages_no_footprint_alreadyLoggedOnce_6, 1u) & 1) == 0)
        {
          v23 = mach_error_string(v22);
          msl_printf(3, "allocate_pages(): unable to map memory that was hidden from phys_footprint: %s (%d)\n", v24, v25, v26, v27, v28, v29, v23);
        }

        address = 0;
      }
    }
  }

  if (object_handle)
  {
    mach_port_deallocate(*v2, object_handle);
  }

  result = address;
  if (!address)
  {
    return sld_allocate_pages(v4);
  }

  return result;
}

mach_vm_address_t sld_allocate_pages(mach_vm_size_t size)
{
  address = 0;
  v1 = mach_vm_allocate(*MEMORY[0x1E69E9A60], &address, size, 167772161);
  if (!v1)
  {
    return address;
  }

  v2 = mach_error_string(v1);
  msl_printf(3, "allocate_pages(): failed to map memory: %s (%d)\n", v3, v4, v5, v6, v7, v8, v2);
  return 0;
}

void set_malloc_stack_logging_start_timestamp()
{
  if (!malloc_stack_logging_start_timestamp)
  {
    malloc_stack_logging_start_timestamp = mach_continuous_approximate_time();
    v0 = mach_timebase_info(&set_malloc_stack_logging_start_timestamp_mach_time_info);
    v1 = 1.0;
    if (!v0 && dword_1EB422ADC)
    {
      LODWORD(v1) = set_malloc_stack_logging_start_timestamp_mach_time_info;
      v1 = *&v1 / dword_1EB422ADC;
      if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000 || (*&v1 - 1) < 0xFFFFFFFFFFFFFLL || *&v1 == 0x7FF0000000000000 || *&v1 == 0)
      {
        v1 = 1.0;
      }
    }

    mach_to_ns_factor = *&v1;
  }
}

uint64_t msl_payload_get_allocation_timestamp(unint64_t a1)
{
  v1 = 1000000 * ((a1 >> 3) & 0x7FFFFFFF);
  if (a1)
  {
    v1 = 1000 * ((a1 >> 3) & 0x7FFFFFFFFFLL);
  }

  if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t msl_payload_create_from_index(uint64_t a1)
{
  v1 = a1 << 34;
  if (a1 == 0xFFFFFFFFLL)
  {
    v1 = -1;
  }

  if (a1 == -1)
  {
    return -1;
  }

  else
  {
    return v1;
  }
}

uint64_t msl_payload_from_lite_zone_ptr(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return *(a2 + a1 - 8);
  }

  result = -1;
  if (a1 && a2 >= 8 && !__CFADD__(a1, a2))
  {
    v5 = *(a2 + a1 - 8);
    v6 = v5 == -1 || v5 == 0xFFFFFFFFLL;
    v7 = v5 << 34;
    if (v6)
    {
      return -1;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t msl_uniquing_table_enumerate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __msl_uniquing_table_enumerate_block_invoke;
  v4[3] = &unk_1E79479C8;
  v5 = (v2 >> 1) & 1;
  v4[4] = a2;
  return uniquing_table_remote_enumerate_chunks(a1, v4);
}

uint64_t __msl_uniquing_table_enumerate_block_invoke(uint64_t result, unsigned int *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    while (*(v4 + 40))
    {
      if (*a2 | (*(a2 + 2) << 32))
      {
        goto LABEL_5;
      }

LABEL_6:
      a2 += 4;
      if (!--v5)
      {
        return result;
      }
    }

    if (!*a2)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = (*(*(v4 + 32) + 16))();
    goto LABEL_6;
  }

  return result;
}

uint64_t msl_uniquing_table_get_frames_from_table(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 5;
  if (a2 <= 0xFFFFFFFE)
  {
    uniquing_table_unwind_stack_remote(a1, a2, a3, a5, a4, a6, a7, a8);
    if (*a5)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return v8;
}

uint64_t msl_uniquing_table_sizeof(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0x4000;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __msl_uniquing_table_sizeof_block_invoke;
  v3[3] = &unk_1E79479F0;
  v3[4] = &v4;
  uniquing_table_remote_enumerate_chunks(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

mach_vm_address_t msl_uniquing_table_serialize(uint64_t a1, mach_vm_size_t *a2)
{
  v4 = msl_uniquing_table_sizeof(a1);
  *a2 = v4;
  address = 0;
  if (mach_vm_allocate(*MEMORY[0x1E69E9A60], &address, v4, 1))
  {
    v5 = 0;
    *a2 = 0;
  }

  else
  {
    v5 = address;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2000000000;
    *address = *"MslUniquingTable";
    *(v5 + 16) = *a1;
    v7 = *(a1 + 32);
    v6 = *(a1 + 48);
    v8 = *(a1 + 16);
    *(v5 + 80) = *(a1 + 64);
    *(v5 + 48) = v7;
    *(v5 + 64) = v6;
    *(v5 + 32) = v8;
    v15[3] = v5 + 0x4000;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __msl_uniquing_table_serialize_block_invoke;
    v10[3] = &unk_1E7947A18;
    v10[4] = &v11;
    v10[5] = v15;
    uniquing_table_remote_enumerate_chunks(a1, v10);
    if (v12[3] != *(a1 + 8))
    {
      msl_uniquing_table_serialize_cold_1();
    }

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(v15, 8);
  }

  return v5;
}

void *__msl_uniquing_table_serialize_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  *(*(*(a1 + 32) + 8) + 24) += a3;
  v5 = 16 * a3;
  result = mach_vm_copy(*MEMORY[0x1E69E9A60], a2, v5, *(*(*(a1 + 40) + 8) + 24));
  if (result)
  {
    result = memcpy(*(*(*(a1 + 40) + 8) + 24), a2, v5);
  }

  *(*(*(a1 + 40) + 8) + 24) += v5;
  return result;
}

char *msl_uniquing_table_copy_from_serialized(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x54 || strncmp(a1, "MslUniquingTable", 0x10uLL))
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x44uLL, 0x10200402DA45A13uLL);
  *v4 = *(a1 + 16);
  v6 = *(a1 + 48);
  v5 = *(a1 + 64);
  v7 = *(a1 + 32);
  *(v4 + 16) = *(a1 + 80);
  *(v4 + 2) = v6;
  *(v4 + 3) = v5;
  *(v4 + 1) = v7;
  v8 = *(v4 + 1);
  if (16 * v8 + 0x4000 < a2 || (v9 = uniquing_table_chunk_from_slots(a1 + 0x4000, v8), (*(v4 + 44) = v9) == 0))
  {
    free(v4);
    return 0;
  }

  *(v4 + 16) = 1;
  return v4;
}

BOOL msl_stack_logging_locked()
{
  v0 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&stack_logging_lock, &v0, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  v2 = v0 == 0;
  if (!v0)
  {
    v3 = *(StatusReg + 24);
    v4 = v3;
    atomic_compare_exchange_strong_explicit(&stack_logging_lock, &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      os_unfair_lock_unlock(&stack_logging_lock);
    }
  }

  return !v2;
}