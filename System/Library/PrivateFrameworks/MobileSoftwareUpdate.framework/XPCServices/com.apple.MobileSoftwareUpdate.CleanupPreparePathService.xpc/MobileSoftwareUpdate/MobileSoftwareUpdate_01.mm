void *checkpoint_history_add(uint64_t a1, int a2, int a3, int a4, int a5, const char *a6, int a7, int a8, const void *a9)
{
  v17 = calloc(1uLL, 0x78uLL);
  if (!v17)
  {
    return v17;
  }

  v145 = 0;
  asprintf(&v145, "%s", a6);
  if (!v145)
  {
    free(v17);
    return 0;
  }

  *(v17 + 2) = a2;
  v17[2] = time(0);
  gettimeofday((v17 + 3), 0);
  *(v17 + 10) = getpid();
  *(v17 + 11) = getppid();
  *(v17 + 12) = a3;
  *(v17 + 13) = a4;
  *(v17 + 14) = a5;
  v17[8] = v145;
  *(v17 + 18) = a7;
  *(v17 + 19) = a8;
  if (a9)
  {
    v17[10] = a9;
    CFRetain(a9);
    a5 = *(v17 + 14);
  }

  *(v17 + 22) = a5 | (*(v17 + 2) << 16) | 0x11000000;
  *v149 = 0x1500000001;
  v146[0] = 0;
  v146[1] = 0;
  v147 = 16;
  if (sysctl(v149, 2u, v146, &v147, 0, 0))
  {
    v25 = -1;
  }

  else
  {
    v25 = v17[2] - v146[0];
  }

  v26 = *(v17 + 2);
  if (v26 <= 0x21)
  {
    if (((1 << v26) & 0x100000090) != 0)
    {
      checkpoint_nvram_store_by_id_try_int(a1, 13, *(v17 + 14) | 0x11070000u, *(v17 + 18), *(v17 + 19), v22, v23, v24);
      v28 = v17[10];
      if (v28)
      {
        Code = CFErrorGetCode(v28);
        Domain = CFErrorGetDomain(v17[10]);
        v31 = checkpoint_cferror_alloc_string(v17[10]);
        checkpoint_nvram_store_by_id_try_int(a1, 15, *(v17 + 22), *(v17 + 18), Code, v32, v33, v34);
        if (Domain)
        {
          bzero(buffer, 0x400uLL);
          CFStringGetCString(Domain, buffer, 1024, 0x8000100u);
          checkpoint_nvram_store_by_id_try(a1, 16, *(v17 + 22), *(v17 + 18), buffer, v35, v36, v37);
        }

        if (v31)
        {
          checkpoint_nvram_store_by_id(a1, 17, *(v17 + 22), v31, v21, v22, v23, v24);
          free(v31);
        }
      }

      goto LABEL_76;
    }

    if (((1 << v26) & 0x200000020) != 0)
    {
      v20 = *(v17 + 18);
      v27 = *(v17 + 14);
      if (v20)
      {
        checkpoint_nvram_store_by_id_try_int(a1, 13, v27 | 0x11070000u, v20, 0, v22, v23, v24);
        goto LABEL_76;
      }

      v47 = a1 + 1512;
      v48 = 368;
      if (!*(a1 + 104))
      {
        v48 = 176;
      }

      v49 = v47 + v48;
      v50 = *(v49 + 8);
      if (v50)
      {
        v51 = v27 | 0x11030000;
        if (*v50 == v51)
        {
          v52 = 0;
          *v50 = 0;
LABEL_41:
          v53 = &v50[v52 + 1];
          v54 = v52 - 7;
          do
          {
            *(v53 - 1) = *v53;
            ++v53;
            v55 = __CFADD__(v54++, 1);
          }

          while (!v55);
LABEL_44:
          v50[7] = 0;
          *(v49 + 4) = 1;
          goto LABEL_53;
        }

        v56 = v50 + 1;
        v57 = -1;
        while (v57 != 6)
        {
          v58 = *v56;
          v56 += 2;
          ++v57;
          if (v58 == v51)
          {
            *(v56 - 1) = 0;
            if (v57 > 5)
            {
              goto LABEL_44;
            }

            v52 = v57 + 1;
            goto LABEL_41;
          }
        }
      }

      v59 = *(a1 + 1504);
      if (!v59)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", v18, v19, v20, v21, v22, v23, v24, "checkpoint_nvram_remove_lost");
        v59 = *(a1 + 1504);
      }

      *(a1 + 1504) = v59 + 1;
LABEL_53:
      v60 = 24;
      if (!*(a1 + 104))
      {
        v60 = 12;
      }

      if ((0x1001100uLL >> v60))
      {
        v61 = v47 + 16 * v60;
        v62 = *(v61 + 8);
        if (v62)
        {
          v63 = *(v17 + 14) | 0x11030000;
          v64 = v62 + 28;
          if (*v62 == v63)
          {
            v65 = 0;
LABEL_66:
            v69 = &v62[4 * v65];
            v70 = v69[1];
            if (v70)
            {
              free(v70);
            }

            *v69 = 0;
            v69[1] = 0;
            if (v65 <= 6)
            {
              v71 = v69 + 2;
              v72 = v65 - 7;
              do
              {
                *(v71 - 1) = *v71;
                ++v71;
                v55 = __CFADD__(v72++, 1);
              }

              while (!v55);
            }

            *v64 = 0;
            v64[1] = 0;
            *(v61 + 4) = 1;
            goto LABEL_76;
          }

          v65 = 0;
          v67 = v62 + 4;
          while (v65 != 7)
          {
            ++v65;
            v68 = *v67;
            v67 += 4;
            if (v68 == v63)
            {
              goto LABEL_66;
            }
          }
        }
      }

      v73 = *(a1 + 1504);
      if (!v73)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", v18, v19, v20, v21, v22, v23, v24, "checkpoint_nvram_remove_lost");
        v73 = *(a1 + 1504);
      }

      *(a1 + 1504) = v73 + 1;
LABEL_76:
      checkpoint_nvram_store_long(a1, 18, v25, v20, v21, v22, v23, v24);
      checkpoint_nvram_store_long(a1, 21, *(v17 + 14), v74, v75, v76, v77, v78);
      goto LABEL_77;
    }

    if (v26 == 6)
    {
      checkpoint_nvram_store_by_id_try(a1, 14, *(v17 + 22), *(v17 + 18), v17[8], v22, v23, v24);
      goto LABEL_77;
    }
  }

  if (v26 == 3)
  {
    if (!*(v17 + 18))
    {
      v38 = *(a1 + 1496) + 1;
      *(a1 + 1496) = v38;
      v39 = *(v17 + 22);
      v40 = 368;
      if (!*(a1 + 104))
      {
        v40 = 176;
      }

      v41 = a1 + v40;
      v42 = *(v41 + 1520);
      if (!v42)
      {
        goto LABEL_59;
      }

      v43 = 0;
      v44 = *(v41 + 1520);
      do
      {
        v45 = *v44;
        v44 += 2;
        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = v42;
        }

        if (v43 > 6)
        {
          break;
        }

        ++v43;
        v42 = v44;
      }

      while (!v46);
      if (v46)
      {
        *v46 = v39;
        v46[1] = v38;
        *(v41 + 1516) = 1;
      }

      else
      {
LABEL_59:
        v66 = *(a1 + 1500);
        if (!v66)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", v18, v39, v20, v21, v22, v23, v24, "checkpoint_nvram_store_lost");
          v66 = *(a1 + 1500);
          v39 = *(v17 + 22);
        }

        *(a1 + 1500) = v66 + 1;
      }

      checkpoint_nvram_store_by_id(a1, 12, v39, v17[8], v21, v22, v23, v24);
    }

    goto LABEL_76;
  }

  if (v26 == 1)
  {
    checkpoint_nvram_store_by_id(a1, 10, *(v17 + 22), v17[8], v21, v22, v23, v24);
  }

LABEL_77:
  *v17 = 0;
  **(a1 + 216) = v17;
  *(a1 + 216) = v17;
  v79 = *(a1 + 224) + 1;
  *(a1 + 224) = v79;
  if (v79 >= 0x201)
  {
    v80 = (a1 + 208);
    do
    {
      v81 = *v80;
      v82 = **v80;
      *v80 = v82;
      if (!v82)
      {
        *(a1 + 216) = v80;
      }

      *(a1 + 224) = v79 - 1;
      v83 = v81[8];
      if (v83)
      {
        free(v83);
        v81[8] = 0;
      }

      v84 = v81[10];
      if (v84)
      {
        CFRelease(v84);
      }

      free(v81);
      v79 = *(a1 + 224);
    }

    while (v79 > 0x200);
  }

  memset(buffer, 0, 56);
  v146[0] = 0;
  gmtime_r(v17 + 2, buffer);
  v85 = *(v17 + 2);
  if (v85 > 0x21)
  {
    v86 = "GENERAL";
  }

  else
  {
    v86 = checkpoint_history_type_name[v85];
  }

  asprintf(v146, "[%02u:%02u:%02u.%04u-GMT]{%u>%u} CHECKPOINT %s", buffer[0].tm_hour, buffer[0].tm_min, buffer[0].tm_sec, *(v17 + 8) / 1000, *(v17 + 11), *(v17 + 10), v86);
  v87 = v146[0];
  *&buffer[0].tm_sec = 0;
  if (*(v17 + 19))
  {
    v138 = *(v17 + 19);
    asprintf(buffer, "(FAILURE:%d) ");
  }

  else
  {
    v94 = *(v17 + 2);
    if (v94 <= 0x1C && ((1 << v94) & 0x18000080) != 0)
    {
      asprintf(buffer, "(SUCCESS) ", v137);
    }

    else
    {
      asprintf(buffer, " ", v137);
    }
  }

  v95 = *&buffer[0].tm_sec;
  if (!v87 || !*&buffer[0].tm_sec)
  {
    goto LABEL_160;
  }

  *&buffer[0].tm_sec = 0;
  if (*(v17 + 14))
  {
    v96 = *(v17 + 2);
    if (v96 == 28 || v96 == 1)
    {
      v139 = *(v17 + 14);
      v141 = v17[8];
      asprintf(buffer, "[0x%04X] %s");
    }

    else
    {
      v119 = *(v17 + 12);
      if (v119 == 1)
      {
        v120 = v17[8];
        asprintf(buffer, "%s");
      }

      else
      {
        if (v119 <= 0x1C)
        {
          v121 = checkpoint_engine_name[v119];
        }

        v142 = *(v17 + 14);
        v143 = v17[8];
        asprintf(buffer, "%s:[0x%04X] %s");
      }
    }

    v97 = *&buffer[0].tm_sec;
  }

  else
  {
    v97 = 0;
  }

  v146[0] = 0;
  v98 = *(v17 + 2);
  if (v98 == 28)
  {
    *&buffer[0].tm_sec = 0;
    if (!*(v17 + 19))
    {
      *(a1 + 1368);
      asprintf(buffer, "... %s");
      goto LABEL_133;
    }

    v101 = checkpoint_nvram_copy_encode_c_string(a1, 9, v88, v89, v90, v91, v92, v93);
    v107 = checkpoint_nvram_copy_string(a1, a1 + 1088, 12, v102, v103, v104, v105, v106);
    v108 = v107;
    v109 = *(a1 + 108);
    if (v109 > 6)
    {
      v110 = "GENERAL";
    }

    else
    {
      v110 = checkpoint_failure_type_name[v109];
    }

    if (v101)
    {
      if (!v107)
      {
        asprintf(buffer, "[%s] %s", v110, v101);
        v122 = v101;
        goto LABEL_132;
      }

      asprintf(buffer, "[%s] %s %s", v110, v107, v101);
      free(v101);
    }

    else
    {
      if (!v107)
      {
        asprintf(buffer, "[%s]");
LABEL_133:
        v100 = *&buffer[0].tm_sec;
        if (v97)
        {
          goto LABEL_115;
        }

LABEL_134:
        if (v100)
        {
          asprintf(v146, "%s:%s %s", v87, v95, v100);
LABEL_137:
          v118 = 1;
          goto LABEL_138;
        }

LABEL_136:
        asprintf(v146, "%s:%s", v87, v95);
        v100 = 0;
        goto LABEL_137;
      }

      asprintf(buffer, "[%s] %s", v110, v107);
    }

    v122 = v108;
LABEL_132:
    free(v122);
    goto LABEL_133;
  }

  if (v98 == 27)
  {
    v99 = checkpoint_nvram_copy_encode_c_string(a1, 13, v88, v89, v90, v91, v92, v93);
    v100 = v99;
    if (*v99 == 123 && v99[1] == 125 && !v99[2])
    {
      free(v99);
      if (!v97)
      {
        goto LABEL_136;
      }

      goto LABEL_117;
    }
  }

  else
  {
    v100 = checkpoint_cferror_alloc_string(v17[10]);
  }

  if (!v97)
  {
    goto LABEL_134;
  }

LABEL_115:
  if (!v100)
  {
LABEL_117:
    asprintf(v146, "%s:%s%s", v87, v95, v97);
    v118 = 0;
    v100 = 0;
    goto LABEL_138;
  }

  asprintf(v146, "%s:%s%s %s", v87, v95, v97, v100);
  v118 = 0;
LABEL_138:
  v123 = v146[0];
  if (v146[0])
  {
    v144 = v118;
    if (*(v17 + 2) == 28)
    {
      if (*(a1 + 88) == 2)
      {
        v124 = 1;
      }

      else
      {
        v124 = 3;
      }
    }

    else
    {
      v124 = 1;
    }

    while (1)
    {
      ramrod_log_msg("%s\n", v111, v112, v113, v114, v115, v116, v117, v123);
      if (*(v17 + 2) == 28)
      {
        ramrod_log_msg("\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n", v125, v126, v127, v128, v129, v130, v131, v140);
      }

      if (v124 < 2)
      {
        break;
      }

      --v124;
      sleep(1u);
    }

    v132 = v146[0];
    v133 = calloc(1uLL, 0x10uLL);
    if (v133)
    {
      v134 = v133;
      v133[1] = v132;
      if (*a1 == 1)
      {
        *v133 = 0;
        **(a1 + 504) = v133;
        *(a1 + 504) = v133;
      }

      else
      {
        pthread_mutex_lock((a1 + 256));
        v135 = *a1;
        *v134 = 0;
        **(a1 + 504) = v134;
        *(a1 + 504) = v134;
        if (v135 != 1)
        {
          pthread_mutex_unlock((a1 + 256));
        }
      }

      *(a1 + 232) = 1;
      v118 = v144;
    }

    else if (v132)
    {
      free(v132);
    }
  }

  if ((v118 & 1) == 0)
  {
    free(v97);
  }

  if (v100)
  {
    free(v100);
  }

LABEL_160:
  if (v87)
  {
    free(v87);
  }

  if (v95)
  {
    free(v95);
  }

  return v17;
}

void checkpoint_nvram_collect(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 4))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_collect");
    return;
  }

  v10 = 0;
  v11 = 0;
  v12 = a2 + 8;
  do
  {
    checkpoint_nvram_collect_var(a1, *a2, v11, (v12 + v10));
    v17 = *a1;
    if ((v11 - 39) <= 3 && v17 == 2)
    {
      if (*(v12 + 8 * v11))
      {
        goto LABEL_13;
      }
    }

    else if (v11 >= 0x2B && v11 != 47 && v17 == 2)
    {
      v18 = *(v12 + 8 * v11);
      if (v18)
      {
        bzero(v24, 0x400uLL);
        checkpoint_get_nvram_value_string(v18, v24);
        checkpoint_nvram_store_string(a1, (v11 - 4), v24, v19, v20, v21, v22, v23);
LABEL_13:
        checkpoint_nvram_delete_var(a1, v11, 0, 0, v13, v14, v15, v16);
      }
    }

    ++v11;
    v10 += 8;
  }

  while (v11 != 48);
  *(a2 + 4) = 1;
}

uint64_t checkpoint_get_outcome_type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = checkpoint_nvram_copy_string(a1, a2, 5, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  do
  {
    if (!strcmp(v9, checkpoint_outcome_names[v10]))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      break;
    }
  }

  while (v10++ < 0x21);
  free(v9);
  return v11;
}

void checkpoint_nvram_store_anomaly(uint64_t a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, a3, va);
  if (v8[0])
  {
    checkpoint_history_add(a1, 30, 1, 0, 260, v8[0], 0, 0, 0);
    checkpoint_nvram_store_by_id(a1, 8, *(a1 + 120), v8[0], v4, v5, v6, v7);
    if (v8[0])
    {
      free(v8[0]);
      v8[0] = 0;
    }
  }

  ++*(a1 + 120);
}

void checkpoint_outcome_progress(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 96);
  v9 = *(&checkpoint_outcome_progress_table + v8);
  if (*(v9 + 4 * a2))
  {
    *(a1 + 92) = v8;
    v12 = *(v9 + 4 * a2);
    *(a1 + 96) = v12;
    if (v12 > 0x21)
    {
      v13 = "unknown";
    }

    else
    {
      v13 = checkpoint_outcome_names[v12];
    }

    checkpoint_nvram_store_string(a1, 5, v13, a4, a5, a6, a7, a8);

    checkpoint_log_progress(a1, a2);
  }
}

void checkpoint_nvram_delete_var(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 0x30)
  {
    v9 = &checkpoint_nvram_map[4 * a2];
    if (a3 || (*(v9 + 6) - 5) < 0xFFFFFFFD)
    {
      bzero(buffer, 0x400uLL);
      if (*(a1 + 88) == 1)
      {
        v10 = v9;
      }

      else
      {
        v10 = (v9 + 1);
      }

      v11 = *v10;
      CFStringGetCString(*v10, buffer, 1024, 0x8000100u);
      checkpoint_nvram_delete_var_raw(v11);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of BOOT-CONTROL NVRAM ID %u\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_delete_var");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of NVRAM ID %u\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_delete_var");
  }
}

char *checkpoint_get_nvram_value_string(const __CFString *a1, char *a2)
{
  if (a1)
  {
    CFStringGetCString(a1, a2, 1024, 0x8000100u);
  }

  else
  {
    bzero(a2, 0x400uLL);
  }

  return a2;
}

void checkpoint_nvram_store_string(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v10 = 0;
      v11 = a1 + 1512;
      goto LABEL_7;
    }

    a2 = LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_12;
  }

  v10 = a2;
  v11 = a1 + 16 * a2 + 1512;
LABEL_7:
  if ((0xFFFC000000FEuLL >> v10))
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      if (*v12)
      {
        free(*v12);
        *v12 = 0;
      }

      checkpoint_nvram_store_set_string(a1 + 1480, v12, a3, a4, a5, a6, a7, a8);
      *(v11 + 4) = 1;
      return;
    }
  }

LABEL_12:
  v13 = *(a1 + 1500);
  if (!v13)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v13 = *(a1 + 1500);
  }

  *(a1 + 1500) = v13 + 1;
}

void checkpoint_access_obtain(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*a1 != 1)
    {
      v9 = (a1 + 2);

      pthread_mutex_lock(v9);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_access_obtain");
  }
}

void checkpoint_access_yield(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*a1 != 1)
    {
      v9 = (a1 + 2);

      pthread_mutex_unlock(v9);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_access_yield");
  }
}

timeval *checkpoint_time_copy_current_time()
{
  v0 = calloc(1uLL, 0x18uLL);
  if (!v0)
  {
    abort();
  }

  v1 = v0;
  v0[1].tv_sec = mach_absolute_time();
  gettimeofday(v1, 0);
  return v1;
}

timeval *checkpoint_closure_context_set_start_time(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 72) = 1;
    free(v2);
  }

  result = checkpoint_time_copy_current_time();
  *(a1 + 56) = result;
  return result;
}

timeval *checkpoint_closure_context_set_end_time(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  result = checkpoint_time_copy_current_time();
  *(a1 + 64) = result;
  return result;
}

void checkpoint_closure_context_set_encountered_async_error(uint64_t a1, int a2, __CFError *a3)
{
  if (a3)
  {
    v6 = checkpoint_chassis_context;
    if (!checkpoint_error_is_cancel_error(a3))
    {
      v13 = *(a1 + 8);
      if (!v13 || (*(v13 + 36) & 3) == 0 || !checkpoint_tolerated_treat_as_success_minimized(v6, v13))
      {
        checkpoint_access_obtain(v6, v13, v7, v8, v9, v10, v11, v12);
        v21 = (v6 + 48);
        v22 = (v6 + 48);
        while (1)
        {
          v22 = *v22;
          if (!v22)
          {
            break;
          }

          if (*(v22 + 32) == *(a1 + 76))
          {
            goto LABEL_12;
          }
        }

        v22 = *v21;
        if (!*v21)
        {
          checkpoint_chassis_set_global_async_error(v6, a2, a3, *(a1 + 8));
          goto LABEL_19;
        }

LABEL_12:
        if (!*(v22 + 144) && !*(v22 + 137))
        {
          checkpoint_engine_set_async_error(v22, a2, a3, *(a1 + 8));
          for (i = *v21; i != v22; i = *i)
          {
            checkpoint_engine_cancel(i);
          }

          checkpoint_engine_cancel(v22);
        }

LABEL_19:

        checkpoint_access_yield(v6, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }
}

__CFError *checkpoint_error_is_cancel_error(__CFError *result)
{
  if (result)
  {
    v1 = result;
    if (CFErrorGetCode(result) == 1)
    {
      Domain = CFErrorGetDomain(v1);
      return (CFEqual(Domain, @"CheckpointEngineErrorDomain") != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t checkpoint_tolerated_treat_as_success_minimized(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 984);
  if (v4)
  {
    v5 = CFStringCompare(v4, @"true", 0) == kCFCompareEqualTo;
  }

  else
  {
    v5 = 0;
  }

  should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
  v7 = *(a1 + 88);
  v8 = (v7 == 1) & (should_do_legacy_restored_internal_behaviors ^ 1 | v5);
  v9 = v7 != 2 || v5;
  if (v9 != 1 || v8 != 0)
  {
    v11 = *(a2 + 36);
    if ((v11 & 3) != 0)
    {
      if ((v11 & 2) == 0)
      {
        return 1;
      }

      v13 = 0;
      v14 = a2 + 40;
      do
      {
        v15 = *(v14 + v13);
        if (!v15)
        {
          break;
        }

        failed_entry = checkpoint_tolerated_get_failed_entry(*(a1 + 2280), v15);
        if (failed_entry && (!*(a1 + 104) || *(failed_entry + 48) == 1 && *(failed_entry + 14)))
        {
          return 1;
        }

        v13 += 4;
      }

      while (v13 != 40);
    }
  }

  return 0;
}

__n128 checkpoint_engine_set_async_error(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (checkpoint_error_is_cancel_error(a3))
  {
    abort();
  }

  v8 = *(a1 + 144);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 144) = 0;
  free(*(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  if (a3)
  {
    if (!a4)
    {
      checkpoint_engine_set_async_error_cold_1();
    }

    *(a1 + 152) = a2;
    *(a1 + 144) = CFRetain(a3);
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 160) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

void *checkpoint_engine_cancel(void *result)
{
  if (!*(result + 137))
  {
    v1 = result;
    v2 = result[2];
    if (*v2)
    {
      v3 = v2 + 24;
      do
      {
        result = *(v3 - 2);
        if (result)
        {
          if (!*(v3 - 8))
          {
            result = [result cancel];
          }
        }

        v4 = *v3;
        v3 += 24;
      }

      while (v4);
    }

    *(v1 + 137) = 1;
  }

  return result;
}

__n128 checkpoint_chassis_set_global_async_error(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (checkpoint_error_is_cancel_error(a3))
  {
    abort();
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 168) = 0;
  free(*(a1 + 184));
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  if (a3)
  {
    if (!a4)
    {
      checkpoint_chassis_set_global_async_error_cold_1();
    }

    CFRetain(a3);
    *(a1 + 176) = a2;
    *(a1 + 168) = a3;
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 184) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

char *checkpoint_cferror_alloc_string(CFErrorRef err)
{
  if (!err)
  {
    return 0;
  }

  v1 = err;
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = CFErrorCopyUserInfo(v1);
    v2 = checkpoint_append_and_free(v2, "[%d]", v5, v6, v7, v8, v9, v10, v3);
    if (!v4)
    {
      break;
    }

    v22 = 0;
    Value = CFDictionaryGetValue(v4, kCFErrorLocalizedRecoverySuggestionKey);
    v12 = checkpoint_cferror_append(v2, "RS", Value, &v22);
    v13 = CFDictionaryGetValue(v4, kCFErrorLocalizedDescriptionKey);
    v14 = checkpoint_cferror_append(v12, "LD", v13, &v22);
    v15 = CFDictionaryGetValue(v4, kCFErrorDescriptionKey);
    v16 = checkpoint_cferror_append(v14, "D", v15, &v22);
    v17 = CFDictionaryGetValue(v4, kCFErrorLocalizedFailureReasonKey);
    v2 = checkpoint_cferror_append(v16, "FR", v17, &v22);
    v1 = CFDictionaryGetValue(v4, kCFErrorUnderlyingErrorKey);
    CFRelease(v4);
    if (!v1)
    {
      break;
    }
  }

  while (v3++ < 0xF);
  v19 = strlen(v2);
  if (v19 >= 0xF3)
  {
    v21 = 0;
    asprintf(&v21, "%s", &v2[v19 - 242]);
    if (v2)
    {
      free(v2);
    }

    return v21;
  }

  return v2;
}

uint64_t checkpoint_closure_context_get_step_desc(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t checkpoint_closure_context_should_retry(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 48);
    *(result + 48) = v1 + 1;
    return !*(result + 19) && v1 < *(*result + 28);
  }

  return result;
}

uint64_t checkpoint_closure_context_handle_simulator_actions(uint64_t *a1, uint64_t a2, int *a3, __CFError **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_actions");
    return a2;
  }

  if (!checkpoint_chassis_context)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_actions");
    return a2;
  }

  v9 = *a1;
  v10 = checkpoint_chassis_context;

  return checkpoint_simulator_action(v10, v9, a2, a3, a4, a6, a7, a8);
}

uint64_t checkpoint_simulator_action(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, __CFError **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  if (a5 && checkpoint_error_is_cancel_error(*a5))
  {
    return 0;
  }

  v14 = v10;
  checkpoint_access_obtain(a1, a2, a3, a4, a5, a6, a7, a8);
  checkpoint_simulator_configure(a1, v15, v16, v17, v18, v19, v20, v21);
  if (!*(a1 + 2300) || !*(a1 + 2312))
  {
    goto LABEL_17;
  }

  v29 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
  Count = CFArrayGetCount(*(a1 + 2312));
  if (Count < 1)
  {
    v37 = 0;
    if (!v29)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v31 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), 0);
  if (CFStringCompare(v29, ValueAtIndex, 0) == kCFCompareEqualTo)
  {
    v37 = 1;
    if (!v29)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFRelease(v29);
    goto LABEL_13;
  }

  v33 = 1;
  do
  {
    v34 = v33;
    if (v31 == v33)
    {
      break;
    }

    v35 = CFArrayGetValueAtIndex(*(a1 + 2312), v33);
    v36 = CFStringCompare(v29, v35, 0);
    v33 = v34 + 1;
  }

  while (v36);
  v37 = v34 < v31;
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v37)
  {
    v38 = *(a1 + 2308);
    if (!v38)
    {
      if (v10)
      {
        checkpoint_history_add(a1, *(a1 + 2300), 1, 0, *a2, *(a2 + 8), *(a1 + 2304), *a4, *a5);
      }

      checkpoint_access_yield(a1, v22, v23, v24, v25, v26, v27, v28);
      v47 = 0;
      v39 = 0;
      switch(*(a1 + 2300))
      {
        case 9:
          goto LABEL_77;
        case 0xA:
          if (*(a1 + 2299) == v10)
          {
            *a4 = 181;
            ramrod_create_error_cf(a5, @"CheckpointErrorDomain", 181, 0, @"checkpoint simulator error", v44, v45, v46, v92);
          }

          goto LABEL_73;
        case 0xB:
          if (*(a1 + 2299) == v10)
          {
            abort();
          }

          goto LABEL_73;
        case 0xC:
          if (*(a1 + 2299) == v10)
          {
            exit(182);
          }

          goto LABEL_73;
        case 0xD:
          if (*(a1 + 2299) == v10)
          {
            _exit(183);
          }

          goto LABEL_73;
        case 0xE:
          if (*(a1 + 2299) == v10)
          {
            for (i = 0; ; ++i)
            {
              v97 = *i;
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator signal executing after dereference of %p [%d]\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
            }
          }

          goto LABEL_73;
        case 0xF:
          if (*(a1 + 2299) == v10)
          {
              ;
            }
          }

          goto LABEL_73;
        case 0x10:
          if (*(a1 + 2299) == v10)
          {
            memset(&v99, 0, sizeof(v99));
            v98.__sig = 0;
            *v98.__opaque = 0;
            pthread_mutexattr_init(&v98);
            pthread_mutex_init(&v99, &v98);
            pthread_mutex_lock(&v99);
            pthread_mutex_lock(&v99);
          }

          goto LABEL_73;
        case 0x11:
          if (*(a1 + 2299) != v10)
          {
            goto LABEL_73;
          }

          v66 = mach_host_self();
          v67 = 0;
          goto LABEL_72;
        case 0x12:
          goto LABEL_51;
        case 0x13:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator PAUSE not supported\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          goto LABEL_73;
        case 0x14:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator RESUME not supported\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          goto LABEL_73;
        case 0x15:
          if (*(a1 + 2299) != v10)
          {
            goto LABEL_73;
          }

          __break(1u);
LABEL_51:
          if (*(a1 + 2299) != v10)
          {
            goto LABEL_73;
          }

          v66 = mach_host_self();
          v67 = 4096;
LABEL_72:
          host_reboot(v66, v67);
LABEL_73:
          v39 = 0;
LABEL_74:
          v47 = v10;
LABEL_75:
          if (!v10)
          {
            goto LABEL_77;
          }

          v14 = v47;
          if (!v47)
          {
            goto LABEL_77;
          }

          goto LABEL_18;
        case 0x16:
          v39 = v10 == 0;
          goto LABEL_74;
        case 0x17:
          v39 = 0;
          if (*(a1 + 2299) == v10)
          {
            v47 = 0;
          }

          else
          {
            v47 = v10;
          }

          if (v10 || *(a1 + 2299))
          {
            goto LABEL_75;
          }

          v56 = *(a2 + 8);
          if (*a4)
          {
            v93 = *(a2 + 8);
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s result: %d\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
            *a4 = 0;
            if (*a5)
            {
              v57 = checkpoint_cferror_alloc_string(*a5);
              if (v57)
              {
                v65 = v57;
                v94 = *(a2 + 8);
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s error: %s\n", v58, v59, v60, v61, v62, v63, v64, "checkpoint_simulator_action");
                free(v65);
              }

              CFRelease(*a5);
              v47 = 0;
              v39 = 0;
              *a5 = 0;
LABEL_77:
              v76 = *(a1 + 2304);
              if (v76)
              {
                v77 = v76 - 1;
                *(a1 + 2304) = v77;
                if (!v77)
                {
                  *(a1 + 2300) = 0;
                }
              }

              v14 = v47;
              goto LABEL_18;
            }
          }

          else
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator to ignore error on step %s, but step was successful\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          }

          v47 = 0;
          v39 = 0;
          goto LABEL_77;
        case 0x18:
          if (*(a1 + 2299) == v10)
          {
            checkpoint_simulator_jetsam();
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): returned from checkpoint jetsam attempt; continuing engine\n", v68, v69, v70, v71, v72, v73, v74, "checkpoint_simulator_action");
          }

          goto LABEL_73;
        case 0x19:
          if (*(a1 + 2299) == v10)
          {
            v48 = fork();
            if (v48 < 1)
            {
              if (!v48)
              {
                checkpoint_simulator_jetsam();
                exit(0);
              }

              v95 = *__error();
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d attempting to fork jetsam child\n", v78, v79, v80, v81, v82, v83, v84, "checkpoint_simulator_action");
            }

            else
            {
              LODWORD(v99.__sig) = 0;
              if (waitpid(v48, &v99, 0) < 0)
              {
                v96 = *__error();
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d waiting for jetsam child\n", v85, v86, v87, v88, v89, v90, v91, "checkpoint_simulator_action");
              }

              else if ((v99.__sig & 0x7F) == 0x7F)
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unexpected status of jetsam child: %d\n", v49, v50, v51, v52, v53, v54, v55, "checkpoint_simulator_action");
              }

              else if ((v99.__sig & 0x7F) != 0)
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child signalled: %d\n", v49, v50, v51, v52, v53, v54, v55, "checkpoint_simulator_action");
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child exited: %d\n", v49, v50, v51, v52, v53, v54, v55, "checkpoint_simulator_action");
              }
            }
          }

          goto LABEL_73;
        default:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unknown simulator command ignored\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          v39 = 0;
          v47 = 1;
          goto LABEL_75;
      }
    }

    if (!v10)
    {
      *(a1 + 2308) = v38 - 1;
    }
  }

LABEL_17:
  checkpoint_access_yield(a1, v22, v23, v24, v25, v26, v27, v28);
  v39 = 0;
LABEL_18:
  if (v10)
  {
    return v14;
  }

  else
  {
    return v39;
  }
}

uint64_t checkpoint_closure_context_handle_simulator_match_name(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_match_name");
    return 0;
  }

  if (!checkpoint_chassis_context)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_match_name");
    return 0;
  }

  v8 = *a1;
  v9 = checkpoint_chassis_context;

  return checkpoint_simulator_action_match(v9, v8, a3, a4, a5, a6, a7, a8);
}

uint64_t checkpoint_simulator_action_match(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  checkpoint_access_obtain(a1, a2, a3, a4, a5, a6, a7, a8);
  checkpoint_simulator_configure(a1, v10, v11, v12, v13, v14, v15, v16);
  if (*(a1 + 2300))
  {
    Count = CFArrayGetCount(*(a1 + 2312));
    v32 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
    if (Count < 1)
    {
LABEL_6:
      v35 = 0;
    }

    else
    {
      v33 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), v33);
        if (CFStringCompare(v32, ValueAtIndex, 0) == kCFCompareEqualTo)
        {
          break;
        }

        if (Count == ++v33)
        {
          goto LABEL_6;
        }
      }

      v35 = 1;
    }

    checkpoint_access_yield(a1, v25, v26, v27, v28, v29, v30, v31);
    if (v32)
    {
      CFRelease(v32);
    }
  }

  else
  {
    checkpoint_access_yield(a1, v17, v18, v19, v20, v21, v22, v23);
    return 0;
  }

  return v35;
}

char *checkpoint_append_and_free_key_v(char *a1, const char *a2, const char *a3, int *a4)
{
  v11 = 0;
  v12 = 0;
  asprintf(&v12, "%s:%s", a2, a3);
  v6 = v12;
  if (!v12)
  {
    return a1;
  }

  if (!a1)
  {
    return v12;
  }

  v7 = strlen(a1);
  v8 = strlen(v12);
  v9 = 1;
  if (*a4 > 0)
  {
    v9 = 2;
  }

  if (v8 + v7 + v9 >= 0x81)
  {
    v11 = a1;
LABEL_13:
    free(v6);
    return v11;
  }

  if (*a4 <= 0)
  {
    asprintf(&v11, "%s%s");
  }

  else
  {
    asprintf(&v11, "%s;%s");
  }

  ++*a4;
  free(a1);
  v6 = v12;
  if (v12)
  {
    goto LABEL_13;
  }

  return v11;
}

char *checkpoint_append_and_free(char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = 0;
  v12[0] = 0;
  v12[1] = &a9;
  vasprintf(v12, a2, &a9);
  if (!v12[0])
  {
    return a1;
  }

  if (!a1)
  {
    return v12[0];
  }

  asprintf(&v11, "%s%s", a1, v12[0]);
  if (v11)
  {
    free(a1);
  }

  else
  {
    v11 = a1;
  }

  if (v12[0])
  {
    free(v12[0]);
    v12[0] = 0;
  }

  return v11;
}

char *checkpoint_append_and_free_id_v(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "0x%08X", a2);
  if (v8)
  {
    a1 = checkpoint_append_and_free_key_v(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

char *checkpoint_append_and_free_try_v(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "%d", a2);
  if (v8)
  {
    a1 = checkpoint_append_and_free_key_v(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

void checkpoint_outcome_init(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 1)
  {
    if (a2)
    {
      if (*(a1 + 104))
      {
        v9 = 17;
        goto LABEL_14;
      }

      v10 = *(a1 + 101) == 0;
      v9 = 5;
    }

    else
    {
      v10 = *(a1 + 88) == 2;
      v9 = 1;
    }
  }

  else if (a2)
  {
    if (*(a1 + 104))
    {
      v9 = 19;
      goto LABEL_14;
    }

    v10 = *(a1 + 101) == 0;
    v9 = 7;
  }

  else
  {
    v10 = *(a1 + 88) == 2;
    v9 = 3;
  }

  if (!v10)
  {
    ++v9;
  }

LABEL_14:
  *(a1 + 96) = v9;
  checkpoint_nvram_store_string(a1, 5, checkpoint_outcome_names[v9], a4, a5, a6, a7, a8);

  checkpoint_log_progress(a1, 1);
}

void checkpoint_nvram_collect_var(uint64_t a1, unsigned int a2, unsigned int a3, const __CFString **a4)
{
  cf = 0;
  bzero(buffer, 0x400uLL);
  bzero(v46, 0x400uLL);
  if (a3 < 0x30)
  {
    if (*(a1 + 88) == 1)
    {
      v16 = &checkpoint_nvram_map[4 * a3];
    }

    else
    {
      v16 = &checkpoint_nvram_map[4 * a3 + 1];
    }

    CFStringGetCString(*v16, buffer, 1024, 0x8000100u);
    v17 = ramrod_copy_NVRAM_variable();
    if (!v17)
    {
      return;
    }

    v15 = v17;
    v18 = CFGetTypeID(v17);
    if (v18 == CFStringGetTypeID())
    {
      CFStringGetCString(v15, v46, 1024, 0x8000100u);
      *a4 = v15;
      v15 = 0;
      goto LABEL_22;
    }

    if (v18 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr) = 0;
      if (!CFNumberGetValue(v15, kCFNumberIntType, &valuePtr))
      {
        v27 = "CHECKPOINT_INTERNAL_ERROR(%s): number that is not an int %s\n";
        goto LABEL_29;
      }

      v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", valuePtr);
      if (!v26)
      {
        v27 = "CHECKPOINT_INTERNAL_ERROR(%s): failed to get valid number for %s\n";
LABEL_29:
        ramrod_log_msg(v27, v19, v20, v21, v22, v23, v24, v25, "checkpoint_nvram_collect_var");
        goto LABEL_3;
      }
    }

    else
    {
      if (v18 != CFDataGetTypeID())
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unsupported nvram variable type for %s\n", v28, v29, v30, v31, v32, v33, v34, "checkpoint_nvram_collect_var");
        goto LABEL_3;
      }

      v26 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v15, 0x8000100u);
      if (!v26)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to get string from data %s\n", v35, v36, v37, v38, v39, v40, v41, "checkpoint_nvram_collect_var");
        goto LABEL_3;
      }
    }

    v42 = v26;
    CFStringGetCString(v26, v46, 1024, 0x8000100u);
    *a4 = v42;
LABEL_22:
    valuePtr = 0;
    if (a2 > 2)
    {
      v43 = "Unknown";
    }

    else
    {
      v43 = checkpoint_nvram_collection_name[a2];
    }

    asprintf(&valuePtr, "%s NVRAM variable: %s=%s", v43, buffer, v46);
    if (valuePtr)
    {
      checkpoint_history_add(a1, 2, 1, 0, 257, valuePtr, 0, 0, 0);
      free(valuePtr);
    }

    goto LABEL_3;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable id=%u\n", v8, v9, v10, v11, v12, v13, v14, "checkpoint_nvram_collect_var");
  v15 = 0;
LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t checkpoint_nvram_adjust_id(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      return 0;
    }

    else
    {
      return LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
    }
  }

  return a2;
}

uint64_t checkpoint_nvram_check_collection(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v39, 0, sizeof(v39));
  v9 = *a3;
  v10 = 1;
  v11 = 0;
  if (v9)
  {
    v12 = 0;
    v36 = a2;
    v13 = a2 + 8;
    v14 = a3 + 2;
    do
    {
      *(v39 + v9) = 1;
      if (*(v13 + 8 * v9))
      {
        if (*(v14 - 3))
        {
          v11 = 1;
        }

        if (*(v14 - 2))
        {
          v12 = 1;
        }

        if (*(v14 - 1))
        {
          v15 = v9 <= 0x2F && (LODWORD(checkpoint_nvram_map[4 * v9 + 3]) - 2) < 3;
          checkpoint_nvram_delete_var(a1, v9, v15, 1, a5, a6, a7, a8);
        }
      }

      else if (*(v14 - 4))
      {
        bzero(buffer, 0x400uLL);
        if (v9 >= 0x30)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", v16, v17, v18, v19, v20, v21, v22, "checkpoint_get_nvram_name");
          LODWORD(v9) = 0;
        }

        if (*(a1 + 88) == 1)
        {
          v23 = &checkpoint_nvram_map[4 * v9];
        }

        else
        {
          v23 = &checkpoint_nvram_map[4 * v9 + 1];
        }

        CFStringGetCString(*v23, buffer, 1024, 0x8000100u);
        checkpoint_nvram_store_anomaly(a1, v24, "[check_collection]%s(does_not_exist)", buffer);
      }

      v25 = *v14;
      v14 += 2;
      v9 = v25;
    }

    while (v25);
    v10 = v12 == 0;
    a2 = v36;
  }

  v26 = 0;
  v27 = a2 + 16;
  v28 = off_10004D7E0;
  do
  {
    if (!*(v39 + v26 + 1) && *(v27 + 8 * v26))
    {
      bzero(buffer, 0x400uLL);
      bzero(v37, 0x400uLL);
      if (*(a1 + 88) == 1)
      {
        v29 = v28;
      }

      else
      {
        v29 = (v28 + 1);
      }

      CFStringGetCString(*v29, buffer, 1024, 0x8000100u);
      checkpoint_get_nvram_value_string(*(v27 + 8 * v26), v37);
      checkpoint_nvram_store_anomaly(a1, v30, "[check_collection]%s=%s(exists_when_not_expected)", buffer, v37);
      checkpoint_nvram_delete_var(a1, (v26 + 1), 0, 1, v31, v32, v33, v34);
    }

    ++v26;
    v28 += 4;
  }

  while (v26 != 47);
  if (!v10)
  {
    checkpoint_history_add(a1, 2, 1, 0, 262, "Old restore failure indication(s)", 0, 0, 0);
  }

  return v11;
}

void checkpoint_nvram_delete_var_if_matches(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && CFStringCompare(v3, @"upgrade", 0) == kCFCompareEqualTo)
  {

    checkpoint_nvram_delete_var(a1, 2, 1, 0, v4, v5, v6, v7);
  }
}

void checkpoint_reboot_retry_chassis_aware(_BYTE *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1[100])
  {
    a1[104] = 1;
    a1[101] = 1;

    ramrod_log_msg("AP nonce will not be touched\n", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    bzero(v12, 0x400uLL);
    checkpoint_get_nvram_value_string(a2, v12);
    checkpoint_nvram_store_anomaly(a1, v11, "[reboot_retry_chassis]outcome=%s(pre_existing_reboot_retry_disabled)", v12);
  }
}

void checkpoint_nvram_delete_var_raw(const __CFString *a1)
{
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  ramrod_delete_NVRAM_variable();
}

void checkpoint_log_progress(uint64_t a1, int a2)
{
  v7 = 0;
  v3 = *(a1 + 92);
  if (v3 > 0x21)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = checkpoint_outcome_names[v3];
  }

  v5 = *(a1 + 96);
  if (v5 > 0x21)
  {
    v6 = "unknown";
  }

  else
  {
    v6 = checkpoint_outcome_names[v5];
  }

  asprintf(&v7, "%s (%s) -> (%s)", checkpoint_progress_names[a2], v4, v6);
  if (v7)
  {
    checkpoint_history_add(a1, 29, 1, 0, 260, v7, 0, 0, 0);
    if (v7)
    {
      free(v7);
    }
  }
}

uint64_t checkpoint_nvram_alloc_encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = checkpoint_nvram_adjust_id(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9 > 0x2F)
  {
    v10 = 0;
  }

  else
  {
    v10 = HIDWORD(checkpoint_nvram_map[4 * v9 + 2]);
  }

  v11 = checkpoint_nvram_encoder[v10];
  v12 = *(a1 + 16 * v9 + 1520);

  return (v11)(a1, v12);
}

void checkpoint_nvram_store_by_id(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v11 = 0;
      v12 = a1 + 1512;
      goto LABEL_7;
    }

    a2 = LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_18;
  }

  v11 = a2;
  v12 = a1 + 16 * a2 + 1512;
LABEL_7:
  if ((0x20420400uLL >> v11))
  {
    a2 = *(v12 + 8);
    if (a2)
    {
      goto LABEL_21;
    }
  }

  if ((0x1001100uLL >> v11))
  {
    v13 = *(v12 + 8);
    if (v13)
    {
      v14 = 0;
      a2 = v13 - 16;
      do
      {
        v16 = *(a2 + 16);
        a2 += 16;
        v15 = v16;
        if (v16)
        {
          v17 = v14 >= 7;
        }

        else
        {
          v17 = 1;
        }

        ++v14;
      }

      while (!v17);
      if (!v15)
      {
LABEL_21:
        *a2 = v9;
        checkpoint_nvram_store_set_string(a1 + 1480, (a2 + 8), a4, a4, a5, a6, a7, a8);
        *(v12 + 4) = 1;
        return;
      }
    }
  }

LABEL_18:
  v18 = *(a1 + 1500);
  if (!v18)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v18 = *(a1 + 1500);
  }

  *(a1 + 1500) = v18 + 1;
}

void checkpoint_nvram_store_long(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v10 = 0;
      v11 = a1 + 1512;
      goto LABEL_7;
    }

    a2 = LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_10;
  }

  v10 = a2;
  v11 = a1 + 16 * a2 + 1512;
LABEL_7:
  if ((0x3C03C0000uLL >> v10))
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      *v12 = a3;
      *(v11 + 4) = 1;
      return;
    }
  }

LABEL_10:
  v13 = *(a1 + 1500);
  if (!v13)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v13 = *(a1 + 1500);
  }

  *(a1 + 1500) = v13 + 1;
}

void checkpoint_nvram_store_by_id_try_int(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v12 = 0;
      v13 = a1 + 1512;
      goto LABEL_7;
    }

    a2 = LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v12 = a2;
  v13 = a1 + 16 * a2 + 1512;
LABEL_7:
  if (((0xA00A000uLL >> v12) & 1) != 0 && v9 <= 7)
  {
    v15 = *(v13 + 8);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = *(v13 + 8);
      do
      {
        v20 = *v18;
        v18 += 11;
        v19 = v20;
        if (v20)
        {
          v21 = v17;
        }

        else
        {
          v21 = v15;
        }

        v22 = v19 == v10;
        if (v19 == v10)
        {
          v23 = v15;
        }

        else
        {
          v23 = 0;
        }

        if (!v22)
        {
          v17 = v21;
        }

        if (v23)
        {
          v24 = 1;
        }

        else
        {
          v24 = v16 >= 7;
        }

        ++v16;
        v15 = v18;
      }

      while (!v24);
      if (v23)
      {
        v17 = v23;
      }

      if (v17)
      {
        *v17 = v10;
        v17[v9 + 1] = v8;
        *(v17 + v9 + 36) = 1;
        *(v13 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v14 = *(a1 + 1500);
  if (!v14)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v14 = *(a1 + 1500);
  }

  *(a1 + 1500) = v14 + 1;
}

void checkpoint_nvram_store_by_id_try(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v10 = a3;
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v12 = 0;
      v13 = a1 + 1512;
      goto LABEL_7;
    }

    a2 = LODWORD(checkpoint_nvram_map[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v12 = a2;
  v13 = a1 + 16 * a2 + 1512;
LABEL_7:
  if (((0x14014000uLL >> v12) & 1) != 0 && v9 <= 7)
  {
    v15 = *(v13 + 8);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = *(v13 + 8);
      do
      {
        v20 = *v18;
        v18 += 18;
        v19 = v20;
        if (v20)
        {
          v21 = v17;
        }

        else
        {
          v21 = v15;
        }

        v22 = v19 == v10;
        if (v19 == v10)
        {
          v23 = v15;
        }

        else
        {
          v23 = 0;
        }

        if (!v22)
        {
          v17 = v21;
        }

        if (v23)
        {
          v24 = 1;
        }

        else
        {
          v24 = v16 >= 7;
        }

        ++v16;
        v15 = v18;
      }

      while (!v24);
      if (v23)
      {
        v17 = v23;
      }

      if (v17)
      {
        *v17 = v10;
        checkpoint_nvram_store_set_string(a1 + 1480, &v17[2 * v9 + 2], a5, a4, a5, a6, a7, a8);
        *(v13 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v14 = *(a1 + 1500);
  if (!v14)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v14 = *(a1 + 1500);
  }

  *(a1 + 1500) = v14 + 1;
}

void checkpoint_nvram_store_set_string(uint64_t a1, char **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (*a2)
    {
      free(*a2);
      *a2 = 0;
    }

    if (a3)
    {
      asprintf(a2, "%s", a3);
    }
  }

  else
  {
    v11 = *(a1 + 20);
    if (!v11)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", 0, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
      v11 = *(a1 + 20);
    }

    *(a1 + 20) = v11 + 1;
  }
}

char *checkpoint_nvram_copy_encode_c_string(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = checkpoint_nvram_alloc_encode(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = 0;
  if (result)
  {
    v9 = result;
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v9, buffer, 1024, 0x8000100u);
    asprintf(&v10, "%s", buffer);
    CFRelease(v9);
    return v10;
  }

  return result;
}

char *checkpoint_nvram_copy_string(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  if (*(a1 + 104))
  {
    if (a3 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      LODWORD(a3) = 0;
    }

    else
    {
      LODWORD(a3) = checkpoint_nvram_map[4 * a3 + 2];
    }
  }

  v9 = *(a2 + 8 * a3 + 8);
  if (!v9)
  {
    return 0;
  }

  bzero(buffer, 0x400uLL);
  CFStringGetCString(v9, buffer, 1024, 0x8000100u);
  asprintf(&v11, "%s", buffer);
  return v11;
}

const __CFDictionary *checkpoint_tolerated_get_failed_entry(const __CFDictionary *a1, uint64_t a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v11 = v3;
      Value = CFDictionaryGetValue(v2, v3);
      if (Value)
      {
        v2 = *(Value + 2);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v11);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create step ID number for tolerated failure lookup\n", v4, v5, v6, v7, v8, v9, v10, "checkpoint_tolerated_get_failed_entry");
      return 0;
    }
  }

  return v2;
}

char *checkpoint_cferror_append(char *a1, char a2, const __CFString *a3, _BYTE *a4)
{
  if (a3)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(a3, buffer, 1024, 0x8000100u);
    if (*a4)
    {
      v14 = "|%s(%s)";
    }

    else
    {
      v14 = "%s(%s)";
    }

    a1 = checkpoint_append_and_free(a1, v14, v8, v9, v10, v11, v12, v13, a2);
    *a4 = 1;
  }

  return a1;
}

void checkpoint_simulator_configure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 2298) && checkpoint_nvram_is_available(a1, 0, 0, a4, a5, a6, a7, a8))
  {
    if (!*(a1 + 1016))
    {
      goto LABEL_23;
    }

    bzero(__s, 0x400uLL);
    bzero(v27, 0x400uLL);
    *(a1 + 2300) = 0;
    *(a1 + 2312) = 0;
    __strlcpy_chk();
    v9 = strlen(__s);
    CFStringGetCString(*(a1 + 1016), &__s[v9], 1024 - v9, 0x8000100u);
    __strlcpy_chk();
    v10 = strlen(v27);
    CFStringGetCString(*(a1 + 1016), &v27[v10], 1024 - v10, 0x8000100u);
    v11 = 0;
    while (1)
    {
      v12 = checkpoint_history_type_name[v11];
      if (!strncasecmp(__s, v12, 0x400uLL))
      {
        *(a1 + 2300) = v11;
        goto LABEL_11;
      }

      if (!strncasecmp(v27, v12, 0x400uLL))
      {
        break;
      }

      if (++v11 == 34)
      {
        LODWORD(v11) = *(a1 + 2300);
        goto LABEL_11;
      }
    }

    *(a1 + 2300) = v11;
    *(a1 + 2299) = 1;
LABEL_11:
    if (!v11)
    {
      goto LABEL_23;
    }

    v19 = *(a1 + 1040);
    if (v19)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v19, @",");
      *(a1 + 2312) = ArrayBySeparatingStrings;
      if (ArrayBySeparatingStrings)
      {
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        if (Count >= 1)
        {
          v22 = Count;
          for (i = 0; i != v22; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), i);
            CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
          }
        }

        v25 = *(a1 + 1024);
        if (v25)
        {
          *(a1 + 2304) = CFStringGetIntValue(v25);
        }

        v26 = *(a1 + 1032);
        if (v26)
        {
          *(a1 + 2308) = CFStringGetIntValue(v26);
        }

        goto LABEL_23;
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator command without stepName\n", 0, v13, v14, v15, v16, v17, v18, "checkpoint_simulator_configure");
    }

    *(a1 + 2300) = 0;
LABEL_23:
    *(a1 + 2298) = 1;
  }
}

void *checkpoint_simulator_jetsam()
{
  v5 = 0;
  v0 = &v5;
  v1 = 0x100000;
  do
  {
    v2 = malloc(v1);
    *v0 = v2;
    if (v2)
    {
      bzero(v2, v1);
      v0 = *v0;
    }

    else
    {
      v1 >>= 1;
    }
  }

  while (v1 > 4095);
  result = v5;
  if (v5)
  {
    do
    {
      v4 = *result;
      free(result);
      result = v4;
    }

    while (v4);
  }

  return result;
}

double ramrod_execute_config_alloc()
{
  v0 = calloc(1uLL, 0x30uLL);
  v0[18] = 0;
  result = NAN;
  *(v0 + 5) = 0x7FFFFFFF000000B4;
  return result;
}

void ramrod_execute_config_free(const void **a1)
{
  _Block_release(*a1);
  _Block_release(a1[1]);
  _Block_release(a1[2]);
  _Block_release(a1[3]);

  free(a1);
}

void ramrod_execute_config_set_output_block(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  _Block_release(*(a1 + 16));
  *(a1 + 16) = v3;
}

uint64_t ramrod_execute_command_with_config(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v126 = 0;
  ramrod_log_msg("entering ramrod_execute_command_with_config: %s\n", a2, a3, a4, a5, a6, a7, a8, *a1);
  *v132 = -1;
  *v133 = -1;
  ramrod_log_msg("executing %s", v10, v11, v12, v13, v14, v15, v16, *a1);
  v24 = a1[1];
  if (v24)
  {
    v25 = a1 + 2;
    v26 = 1;
    do
    {
      ramrod_log_msg(" %s", v17, v18, v19, v20, v21, v22, v23, v24);
      if (v26 > 8)
      {
        break;
      }

      ++v26;
      v27 = *v25++;
      LOBYTE(v24) = v27;
    }

    while (v27);
  }

  ramrod_log_msg("\n", v17, v18, v19, v20, v21, v22, v23, v122);
  if (pipe(v133) == -1)
  {
    v39 = *a1;
    v40 = __error();
    strerror(*v40);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v41, v42, v43, v44, v45, v46, v47, v39);
    v48 = 0;
    v49 = -1;
    goto LABEL_43;
  }

  if (pipe(v132) == -1)
  {
    v50 = *a1;
    v51 = __error();
    strerror(*v51);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v52, v53, v54, v55, v56, v57, v58, v50);
    v37 = 0xFFFFFFFFLL;
    v38 = -1;
  }

  else
  {
    v123 = 1;
    fcntl(v132[1], 73);
    v128 = 0;
    posix_spawn_file_actions_init(&v128);
    posix_spawn_file_actions_adddup2(&v128, v132[0], 0);
    posix_spawn_file_actions_adddup2(&v128, v133[1], 1);
    posix_spawn_file_actions_adddup2(&v128, 2, 2);
    v127 = 0;
    posix_spawnattr_init(&v127);
    posix_spawnattr_setflags(&v127, 0x4000);
    if (*(a2 + 8))
    {
      posix_spawnattr_set_qos_clamp_np();
    }

    if (*a2)
    {
      (*(*a2 + 16))(*a2, &v128);
    }

    v28 = posix_spawn(&v126, *a1, &v128, &v127, a1, 0);
    if (v28)
    {
      v29 = *a1;
      strerror(v28);
      ramrod_log_msg("posix_spawn %s failed: %s\n", v30, v31, v32, v33, v34, v35, v36, v29);
      close(v133[0]);
      close(v132[1]);
      v37 = 0xFFFFFFFFLL;
      v38 = -1;
    }

    else
    {
      v37 = v132[1];
      v38 = v133[0];
      v60 = v126;
      if (v126 != -1)
      {
        v61 = realpath_DARWIN_EXTSN(*a1, 0);
        if (v61)
        {
          v62 = v61;
          bzero(v135, 0x400uLL);
          v63 = basename_r(v62, v135);
          if (v63 && ((v64 = v63, v131 = 256, _get_image_exec_options_bootargs) || !sysctlbyname("kern.bootargs", &_get_image_exec_options_bootargs, &v131, 0, 0)) && (bzero(__str, 0x400uLL), v129 = 0, v130 = 0, snprintf(__str, 0x3FFuLL, "\\bramrod_exec-\\Q%s\\E=((0[0-7]+)|(([+-])?[[:digit:]]+)|(0[xX][[:xdigit:]]+))", v64), _find_tagged_regex(&_get_image_exec_options_bootargs, v131, __str, &v130, &v129)))
          {
            ramrod_log_msg("found ramrod_execute_command option in boot-args: ramrod_exec-%s=%.*s\n", v65, v66, v67, v68, v69, v70, v71, v64);
            v72 = strtol(v130, 0, 0);
            free(v62);
            v80 = v72 & 0x1F;
            if ((v72 & 0x1F) != 0)
            {
              ramrod_log_msg("sending signal %d to process %d in %d millisecond(s)...\n", v73, v74, v75, v76, v77, v78, v79, v80);
              usleep(1000 * (v72 >> 8));
              if (kill(v60, v80) == -1)
              {
                v125 = *__error();
                ramrod_log_msg("could not send signal %d to process %d: error %d\n", v81, v82, v83, v84, v85, v86, v87, v80);
              }
            }
          }

          else
          {
            free(v62);
          }
        }

        v121 = a2[3];
        if (v121)
        {
          (*(v121 + 16))(v121, v126);
        }
      }
    }

    posix_spawnattr_destroy(&v127);
    posix_spawn_file_actions_destroy(&v128);
    close(v132[0]);
  }

  close(v133[1]);
  v48 = 0;
  v49 = -1;
  if (v38 != -1 && v37 != -1)
  {
    bzero(v135, 0x400uLL);
    v59 = a2[1];
    if (v59)
    {
      v48 = (*(v59 + 16))(v59, v37) != 0;
    }

    else
    {
      v48 = 0;
    }

    close(v37);
    v88 = read(v38, v135, 0x3FFuLL);
    if (v88 >= 1)
    {
      for (i = v88; i > 0; i = read(v38, v135, 0x3FFuLL))
      {
        v135[i] = 0;
        v96 = a2[2];
        if (v96)
        {
          (*(v96 + 16))(v96, v135);
        }
      }
    }

    ramrod_log_msg("waiting for child to exit\n", v89, i, v91, v92, v93, v94, v95, v123);
    *__str = 0;
    if (waitpid(v126, __str, 0) == -1)
    {
      v111 = *a1;
      v112 = __error();
      strerror(*v112);
      ramrod_log_msg("waitpid failed for %s: %s\n", v113, v114, v115, v116, v117, v118, v119, v111);
    }

    else
    {
      ramrod_log_msg("child exited\n", v97, v98, v99, v100, v101, v102, v103, v124);
      if ((__str[0] & 0x7F) == 0x7F)
      {
        ramrod_log_msg("%s was stopped by signal %d\n", v104, v105, v106, v107, v108, v109, v110, *a1);
      }

      else
      {
        if ((__str[0] & 0x7F) == 0)
        {
          ramrod_log_msg("exit status: %d\n", v104, v105, v106, v107, v108, v109, v110, __str[1]);
          v49 = __str[1];
LABEL_42:
          close(v38);
          goto LABEL_43;
        }

        ramrod_log_msg("%s was terminated by signal %d\n", v104, v105, v106, v107, v108, v109, v110, *a1);
      }
    }

    v49 = -1;
    goto LABEL_42;
  }

LABEL_43:
  if (v49 == 0 && v48)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v49;
  }
}

uint64_t _ramrod_execute_command_with_input_data_output_block(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, const void *a5)
{
  v10 = calloc(1uLL, 0x30uLL);
  *(v10 + 18) = 0;
  v10[5] = 0x7FFFFFFF000000B4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = ___ramrod_execute_command_with_input_data_output_block_block_invoke;
  aBlock[3] = &__block_descriptor_33_e10_i16__0__v8l;
  v24 = a4;
  v11 = _Block_copy(aBlock);
  _Block_release(*v10);
  *v10 = v11;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = ___ramrod_execute_command_with_input_data_output_block_block_invoke_2;
  v22[3] = &__block_descriptor_48_e8_i12__0i8l;
  v22[4] = a2;
  v22[5] = a3;
  v12 = _Block_copy(v22);
  _Block_release(v10[1]);
  v10[1] = v12;
  v13 = _Block_copy(a5);
  _Block_release(v10[2]);
  v10[2] = v13;
  v20 = ramrod_execute_command_with_config(a1, v10, v14, v15, v16, v17, v18, v19);
  ramrod_execute_config_free(v10);
  return v20;
}

uint64_t ramrod_execute_command(uint64_t *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __ramrod_execute_command_with_callback_block_invoke;
  v2[3] = &__block_descriptor_48_e13_v24__0r_v8Q16l;
  v2[4] = log_output_buf;
  v2[5] = 0;
  return _ramrod_execute_command_with_input_data_output_block(a1, 0, 0, 1, v2);
}

uint64_t wait_for_device(char *a1, char *a2, size_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s: '%s'\n", a2, a3, a4, a5, a6, a7, a8, "wait_for_device");
  if (!a1)
  {
    wait_for_device_cold_4(a4, v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  if (!a2)
  {
    wait_for_device_cold_3(a4, v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  embedded_storage_service_query_dict = create_embedded_storage_service_query_dict(a1);
  if (!embedded_storage_service_query_dict)
  {
    wait_for_device_cold_2(a4, v20, v21, v22, v23, v24, v25, v26);
    return 0;
  }

  v27 = wait_for_io_service_matching_dict(embedded_storage_service_query_dict, 0x1Eu);
  if (!v27)
  {
    wait_for_device_cold_1(a4, a1, v28, v29, v30, v31, v32, v33);
    return 0;
  }

  v34 = v27;
  v99 = a4;
  IOObjectRetain(v27);
  v35 = v34;
  do
  {
    iterator.st_dev = 0;
    if (IORegistryEntryGetChildIterator(v35, "IOService", &iterator))
    {
      v78 = "Could not create child iterator\n";
LABEL_30:
      ramrod_log_msg(v78, v36, v37, v38, v39, v40, v41, v42, v98);
      st_dev = v35;
LABEL_35:
      IOObjectRelease(st_dev);
      ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: failed to lookup whole node for IO service for %s", v80, v81, v82, "wait_for_device");
      v83 = 0;
      goto LABEL_36;
    }

    v43 = IOIteratorNext(iterator.st_dev);
    v44 = 0;
    if (!v43)
    {
      st_dev = iterator.st_dev;
LABEL_29:
      IOObjectRelease(st_dev);
      v98 = v44;
      v78 = "Found %d child nodes (expected 1)\n";
      goto LABEL_30;
    }

    st_dev = 0;
    do
    {
      if (st_dev)
      {
        IOObjectRelease(v43);
      }

      else
      {
        st_dev = v43;
      }

      v43 = IOIteratorNext(iterator.st_dev);
      ++v44;
    }

    while (v43);
    IOObjectRelease(iterator.st_dev);
    if (v44 != 1)
    {
      goto LABEL_29;
    }

    IOObjectRelease(v35);
    v35 = st_dev;
  }

  while (!IOObjectConformsTo(st_dev, "IOMedia"));
  CFProperty = IORegistryEntryCreateCFProperty(st_dev, @"Whole", kCFAllocatorDefault, 0);
  v54 = CFProperty;
  if (!CFProperty)
  {
    v79 = "Did not find Whole property on IOMedia class\n";
LABEL_34:
    ramrod_log_msg(v79, v47, v48, v49, v50, v51, v52, v53, v98);
    CFRelease(v54);
    goto LABEL_35;
  }

  v55 = CFGetTypeID(CFProperty);
  if (v55 != CFBooleanGetTypeID())
  {
    v79 = "Expected Whole to be BOOLean\n";
    goto LABEL_34;
  }

  if (!CFBooleanGetValue(v54))
  {
    v79 = "Expected Whole=true\n";
    goto LABEL_34;
  }

  CFRelease(v54);
  v56 = IORegistryEntryCreateCFProperty(st_dev, @"BSD Name", kCFAllocatorDefault, 0);
  if (v56)
  {
    v60 = v56;
    v61 = CFGetTypeID(v56);
    if (v61 == CFStringGetTypeID())
    {
      strlcpy(a2, "/dev/", a3);
      v65 = strlen(a2);
      if (CFStringGetCString(v60, &a2[v65], a3 - v65, 0x8000100u))
      {
        ramrod_log_msg("Using device path %s for %s\n", v66, v67, v68, v69, v70, v71, v72, a2);
        v73 = -10;
        while (1)
        {
          memset(&iterator, 0, sizeof(iterator));
          if (!stat(a2, &iterator))
          {
            v83 = 1;
            goto LABEL_45;
          }

          if (*__error() != 2)
          {
            break;
          }

          sleep(3u);
          if (__CFADD__(v73++, 1))
          {
            goto LABEL_43;
          }
        }

        v85 = __error();
        strerror(*v85);
        ramrod_log_msg("stat error while waiting for device '%s': %s\n", v86, v87, v88, v89, v90, v91, v92, a2);
        v93 = *__error();
        v94 = __error();
        strerror(*v94);
        ramrod_create_error_cf(v99, kCFErrorDomainPOSIX, v93, 0, @"%s: stat error while waiting for device '%s': %s", v95, v96, v97, "wait_for_device");
LABEL_43:
        ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: timeout waiting for %s", v74, v75, v76, "wait_for_device");
      }

      else
      {
        ramrod_create_error_cf(v99, @"RamrodErrorDomain", 5, 0, @"%s: failed to create C string from BSD name", v70, v71, v72, "wait_for_device");
      }
    }

    else
    {
      ramrod_create_error_cf(v99, @"RamrodErrorDomain", 3, 0, @"%s: returnbed BSD device name for service %s is wrong type", v62, v63, v64, "wait_for_device");
    }

    v83 = 0;
LABEL_45:
    CFRelease(v60);
  }

  else
  {
    ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: no BSD device name for service %s", v57, v58, v59, "wait_for_device");
    v83 = 0;
  }

  IOObjectRelease(st_dev);
LABEL_36:
  IOObjectRelease(v34);
  return v83;
}

uint64_t ramrod_probe_media_internal(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  iterator = 0;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_probe_media_internal");
  storage_device_node_path_0 = 0;
  apfs_container_device_node_path_0 = 0;
  apfs_recovery_os_container_device_node_path_0 = 0;
  system_device_node_path_0 = 0;
  data_device_node_path_0 = 0;
  user_device_node_path_0 = 0;
  update_device_node_path_0 = 0;
  baseband_data_partition_device_node_path_0 = 0;
  log_partition_device_node_path = 0;
  xart_partition_node_path = 0;
  hardware_partition_node_path = 0;
  scratch_partition_node_path = 0;
  preboot_partition_device_node_path_0 = 0;
  recovery_os_volume_device_node_path_0 = 0;
  iboot_system_container_device_node_path_0 = 0;
  recovery_preboot_partition_device_node_path = 0;
  isc_preboot_partition_device_node_path = 0;
  isc_recovery_os_volume_device_node_path = 0;
  paired_recovery_os_volume_device_node_path = 0;
  if (additional_encrypted_volume_node_paths)
  {
    CFRelease(additional_encrypted_volume_node_paths);
    additional_encrypted_volume_node_paths = 0;
  }

  if (additional_eds_volume_node_paths)
  {
    CFRelease(additional_eds_volume_node_paths);
    additional_eds_volume_node_paths = 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    ramrod_probe_media_internal_cold_2(&cf, v10, v11, v12, v13, v14, v15, v16);
    v25 = 0;
    goto LABEL_12;
  }

  v25 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v25)
  {
    ramrod_probe_media_internal_cold_1(&cf, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_12;
  }

  if (!wait_for_device("EmbeddedDeviceTypeRoot", &storage_device_node_path_0, 0x20uLL, &cf, v21, v22, v23, v24))
  {
    ramrod_log_msg("Unable to find storage device node for service named: %s", v26, v27, v28, v29, v30, v31, v32, "EmbeddedDeviceTypeRoot");
LABEL_12:
    v47 = 0;
    v42 = 0;
    goto LABEL_13;
  }

  v33 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_100060095);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v33);
  v42 = MatchingService;
  if (!MatchingService)
  {
    ramrod_log_msg("unable to find service for %s\n", v35, v36, v37, v38, v39, v40, v41, byte_100060095);
LABEL_19:
    v47 = 0;
    goto LABEL_20;
  }

  IOServiceWaitQuiet(MatchingService, 0);
  v43 = IORegistryEntryCreateIterator(v42, "IOService", 1u, &iterator);
  if (v43)
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, v43, 0, @"%s: unable to create child iterator", v44, v45, v46, "ramrod_probe_media_internal");
    v47 = 0;
LABEL_13:
    v48 = 0;
    goto LABEL_14;
  }

  v160 = a1;
  v51 = IOIteratorNext(iterator);
  if (v51)
  {
    v47 = v51;
    LOBYTE(v52) = 0;
    v161 = 0;
    v53 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    __s2 = 0;
    do
    {
      if (!IOObjectConformsTo(v47, "IOMedia"))
      {
        if (IOObjectConformsTo(v47, "IOPartitionScheme"))
        {
          if (IOObjectConformsTo(v47, "IOGUIDPartitionScheme"))
          {
            ramrod_log_msg("device partitioning scheme is GPT\n", v102, v103, v104, v105, v106, v107, v108, v144);
            v158 = "Data";
            __s2 = "System";
            v156 = "Update";
            v157 = "User";
            v154 = "Logs";
            v155 = "Baseband Data";
            v152 = "Hardware";
            v153 = "xART";
            v151 = "Scratch";
          }

          else
          {
            if (!IOObjectConformsTo(v47, "AppleAPFSContainer"))
            {
              ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870201, 0, @"%s: unrecognized partitioning scheme", v124, v125, v126, "ramrod_probe_media_internal");
              goto LABEL_13;
            }

            ramrod_log_msg("device is APFS formatted\n", v120, v121, v122, v123, v124, v125, v126, v144);
            v158 = "Data";
            __s2 = "System";
            v156 = "Update";
            v157 = "User";
            v154 = "Logs";
            v155 = "Baseband Data";
            v152 = "Hardware";
            v153 = "xART";
            v150 = "Preboot";
            v151 = "Scratch";
            v148 = "Recovery";
            v149 = "iSCPreboot";
          }
        }

        goto LABEL_124;
      }

      properties = 0;
      memset(name, 0, sizeof(name));
      v54 = IORegistryEntryGetName(v47, name);
      if (v54)
      {
        v138 = kCFErrorDomainMach;
        v139 = v54;
        v140 = @"%s: unable to get name for media registry entry";
LABEL_169:
        ramrod_create_error_cf(&cf, v138, v139, 0, v140, v55, v56, v57, "ramrod_probe_media_internal");
        goto LABEL_170;
      }

      v58 = IORegistryEntryCreateCFProperties(v47, &properties, kCFAllocatorDefault, 0);
      if (v58)
      {
        v138 = kCFErrorDomainMach;
        v139 = v58;
        v140 = @"%s: unable to get properties for media registry entry";
        goto LABEL_169;
      }

      if (v52)
      {
        v52 = 1;
      }

      else
      {
        *buffer = 0u;
        v166 = 0u;
        Value = CFDictionaryGetValue(properties, @"BSD Name");
        v52 = Value && (v60 = Value, v61 = CFGetTypeID(Value), v61 == CFStringGetTypeID()) && CFStringGetCString(v60, buffer, 32, 0x600u) && (v62 = strlen(byte_100060095), !strncmp(buffer, byte_100060095, v62)) && strcmp("s1s1", &buffer[v62]) == 0;
      }

      v63 = CFDictionaryGetValue(properties, @"Content Hint");
      if (!v63 || (v71 = v63, !CFEqual(v63, @"7C3457EF-0000-11AA-AA11-00306543ECAC")) && !CFEqual(v71, @"52637672-7900-11AA-AA11-00306543ECAC") && !CFEqual(v71, @"69646961-6700-11AA-AA11-00306543ECAC") && !CFEqual(v71, @"EF57347C-0000-11AA-AA11-00306543ECAC"))
      {
        if (__s2 && (!strcmp(name, __s2) || strstr(name, "OS") || strstr(name, "System")))
        {
          if (!v52)
          {
            v145 = name;
            ramrod_log_msg("found system volume not at %ss1s1: %s\n", v64, v65, v66, v67, v68, v69, v70, &storage_device_node_path_0);
          }

          goto LABEL_84;
        }

        if (v158 && !strcmp(name, v158))
        {
          v109 = &data_device_node_path_0;
          goto LABEL_85;
        }

        if (v157 && !strcmp(name, v157))
        {
          v109 = &user_device_node_path_0;
          goto LABEL_85;
        }

        if (v156 && !strcmp(name, v156))
        {
          v109 = &update_device_node_path_0;
          goto LABEL_85;
        }

        if (v155 && !strcmp(name, v155))
        {
          v109 = &baseband_data_partition_device_node_path_0;
          goto LABEL_85;
        }

        if (v154 && !strcmp(name, v154))
        {
          v109 = &log_partition_device_node_path;
          goto LABEL_85;
        }

        if (v153 && !strcmp(name, v153))
        {
          if (!xart_partition_node_path || !ramrod_should_have_xart_partition())
          {
            v110 = 0;
            theArray = &xart_partition_node_path;
            goto LABEL_87;
          }

          v142 = kCFErrorDomainMach;
LABEL_178:
          v143 = @"%s: encountered second '%s' partition; original was '%s'";
LABEL_179:
          ramrod_create_error_cf(&cf, v142, -536870911, 0, v143, v68, v69, v70, "ramrod_probe_media_internal");
LABEL_173:
          v141 = 0;
LABEL_174:
          v48 = 0;
          if (v160 >= 1 && v141)
          {
            sleep(1u);
            v48 = ramrod_probe_media_internal(v160 - 1, 0);
          }

LABEL_14:
          v49 = cf;
          if (a2 && !v48 && cf)
          {
            v48 = 0;
            *a2 = CFRetain(cf);
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (v152 && !strcmp(name, v152))
        {
          v109 = &hardware_partition_node_path;
          goto LABEL_85;
        }

        if (v151 && !strcmp(name, v151))
        {
          v109 = &scratch_partition_node_path;
          goto LABEL_85;
        }

        if (v150 && !strcmp(name, v150))
        {
          if (v161 != 1)
          {
            if (v161 == 2)
            {
              ramrod_log_msg("Captured preboot partition on main OS container %d\n", v64, v65, v66, v67, v68, v69, v70, 2);
              v109 = &preboot_partition_device_node_path_0;
            }

            else
            {
              if (v161 != 3)
              {
                goto LABEL_155;
              }

              ramrod_log_msg("Captured preboot partition on recovery container %d\n", v64, v65, v66, v67, v68, v69, v70, 3);
              v109 = &recovery_preboot_partition_device_node_path;
            }

            goto LABEL_85;
          }

          v134 = 1;
        }

        else
        {
          if (!v149 || strcmp(name, v149))
          {
            if (v148 && !strcmp(name, v148))
            {
              v109 = &recovery_os_volume_device_node_path_0;
            }

            else
            {
              if (!v52 || system_device_node_path_0)
              {
                ramrod_log_msg("unexpected partition '%s' - skipping\n", v64, v65, v66, v67, v68, v69, v70, name);
LABEL_155:
                theArray = 0;
                v110 = 1;
                goto LABEL_87;
              }

              ramrod_log_msg("looking for a system volume, and found unknown volume '%s'. using it as the system volume.\n", v64, v65, v66, v67, v68, v69, v70, name);
LABEL_84:
              LOBYTE(v52) = 1;
              v109 = &system_device_node_path_0;
            }

LABEL_85:
            if (*v109)
            {
              v142 = kCFErrorDomainMach;
              goto LABEL_178;
            }

            theArray = v109;
            v110 = 0;
LABEL_87:
            while (1)
            {
              v111 = CFDictionaryGetValue(properties, @"Leaf");
              if (v111)
              {
                if (CFBooleanGetValue(v111) == 1)
                {
                  break;
                }
              }

              IOObjectRelease(v47);
              CFRelease(properties);
              v112 = IOIteratorNext(iterator);
              if (!v112)
              {
LABEL_172:
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870911, 0, @"%s: ran out of registry entries without finding a leaf media object", v113, v114, v115, "ramrod_probe_media_internal");
                v47 = 0;
                goto LABEL_173;
              }

              v47 = v112;
              while (!IOObjectConformsTo(v47, "IOMedia"))
              {
                IOObjectRelease(v47);
                v47 = IOIteratorNext(iterator);
                if (!v47)
                {
                  goto LABEL_172;
                }
              }

              v116 = IORegistryEntryCreateCFProperties(v47, &properties, kCFAllocatorDefault, 0);
              if (v116)
              {
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, v116, 0, @"%s: unable to get properties for media registry entry", v117, v118, v119, "ramrod_probe_media_internal");
                goto LABEL_173;
              }
            }

            if (v110)
            {
              if (CFDictionaryGetValue(properties, @"Encrypted") == kCFBooleanTrue)
              {
                v127 = CFDictionaryGetValue(properties, @"BSD Name");
                if (v127)
                {
                  v128 = v127;
                  *buffer = 0;
                  v129 = CFDictionaryGetValue(properties, @"RoleValue");
                  if (v129)
                  {
                    CFNumberGetValue(v129, kCFNumberSInt16Type, buffer);
                  }

                  if (*buffer == 576)
                  {
                    v130 = @"Found additional enterprise volume at %@\n";
                  }

                  else
                  {
                    v130 = @"Found additional encrypted volume at %@\n";
                  }

                  if (*buffer == 576)
                  {
                    v131 = Mutable;
                  }

                  else
                  {
                    v131 = v25;
                  }

                  theArraya = v131;
                  ramrod_log_msg_cf(v130, v128, v145);
                  v144 = "/dev/";
                  v145 = v128;
                  v132 = CFStringCreateWithFormat(0, 0, @"%s%@");
                  CFArrayAppendValue(theArraya, v132);
                  CFRelease(v132);
                }
              }
            }

            else
            {
              v133 = CFDictionaryGetValue(properties, @"BSD Name");
              if (!v133)
              {
                v142 = kCFErrorDomainMach;
                v143 = @"%s: leaf media object with no bsd name";
                goto LABEL_179;
              }

              *buffer = 0u;
              v166 = 0u;
              CFStringGetCString(v133, buffer, 32, 0x8000100u);
              snprintf(theArray, 0x20uLL, "%s%s", "/dev/", buffer);
            }

            CFRelease(properties);
LABEL_124:
            IOObjectRelease(v47);
            goto LABEL_73;
          }

          v134 = v161;
        }

        ramrod_log_msg("Captured preboot partition on ISC %d\n", v64, v65, v66, v67, v68, v69, v70, v134);
        v109 = &isc_preboot_partition_device_node_path;
        goto LABEL_85;
      }

      v72 = CFDictionaryGetValue(properties, @"BSD Name");
      if (!v72)
      {
        ramrod_log_msg("APFS Container object with no bsd name", v73, v74, v75, v76, v77, v78, v79, v144);
        goto LABEL_173;
      }

      *buffer = 0u;
      v166 = 0u;
      CFStringGetCString(v72, buffer, 32, 0x8000100u);
      if (CFEqual(v71, @"7C3457EF-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (strstr(name, "RecoveryOSContainer"))
        {
          v161 = 3;
          v53 = &apfs_recovery_os_container_device_node_path_0;
        }

        else
        {
          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v53 = &apfs_container_device_node_path_0;
          }

          else
          {
            v53 = &iboot_system_container_device_node_path_0;
          }

          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v87 = 2;
          }

          else
          {
            v87 = 1;
          }

          v161 = v87;
        }

        snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
        v145 = v53;
        ramrod_log_msg("APFS Container '%s' %s\n", v88, v89, v90, v91, v92, v93, v94, name);
LABEL_70:
        if (!*v53)
        {
          snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
          v145 = v53;
          ramrod_log_msg("APFS Container '%s' %s\n", v95, v96, v97, v98, v99, v100, v101, name);
        }

        goto LABEL_72;
      }

      if (CFEqual(v71, @"EF57347C-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (v53 && *v53)
        {
          ramrod_log_msg("Found synthesized APFS container. Using %s instead of %s\n", v80, v81, v82, v83, v84, v85, v86, buffer);
          snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
          v53 = 0;
          goto LABEL_72;
        }

        ramrod_log_msg("found synthesized container without original device node\n", v80, v81, v82, v83, v84, v85, v86, v144);
      }

      if (v53)
      {
        goto LABEL_70;
      }

LABEL_72:
      IOObjectRelease(v47);
      CFRelease(properties);
LABEL_73:
      v47 = IOIteratorNext(iterator);
    }

    while (v47);
  }

  if (!IOIteratorIsValid(iterator))
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870165, 0, @"%s: media iterator invalidated", v135, v136, v137, "ramrod_probe_media_internal");
    v47 = 0;
LABEL_170:
    v141 = 1;
    goto LABEL_174;
  }

  if (CFArrayGetCount(v25) >= 1)
  {
    additional_encrypted_volume_node_paths = CFRetain(v25);
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    goto LABEL_19;
  }

  v47 = 0;
  additional_eds_volume_node_paths = CFRetain(Mutable);
LABEL_20:
  v48 = 1;
LABEL_21:
  v49 = cf;
LABEL_22:
  if (v49)
  {
    CFRelease(v49);
  }

  if (v47)
  {
    IOObjectRelease(v47);
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v42)
  {
    IOObjectRelease(v42);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v48;
}

uint64_t ramrod_get_gestalt_BOOLean_answer()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v1);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v1);
  return Value;
}

uint64_t ramrod_should_have_xart_partition()
{
  v7 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/xART");
  if (v7)
  {
    ramrod_log_msg("IODeviceTree:/arm-io/sep/iop-sep-nub/xART found\n", v0, v1, v2, v3, v4, v5, v6, v47);
    IOObjectRelease(v7);
    v7 = 1;
  }

  v8 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen/has-xart");
  if (v8)
  {
    v16 = v8;
    ramrod_log_msg("IODeviceTree:/chosen/has-xart found\n", v9, v10, v11, v12, v13, v14, v15, v47);
    IOObjectRelease(v16);
    v7 = 1;
  }

  v17 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  if (!v17)
  {
    ramrod_log_msg("Failed to read IODeviceTree:/defaults\n", v18, v19, v20, v21, v22, v23, v24, v47);
    goto LABEL_22;
  }

  v25 = v17;
  CFProperty = IORegistryEntryCreateCFProperty(v17, @"has-xart", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v27 = CFProperty;
    v28 = CFGetTypeID(CFProperty);
    if (v28 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v27, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr)
      {
        v36 = "IODeviceTree:/defaults/has-xart found\n";
      }

      else
      {
        v36 = "IODeviceTree:/defaults/has-xart found but is zero\n";
      }

      if (valuePtr)
      {
        v7 = 1;
      }

      else
      {
        v7 = v7;
      }
    }

    else
    {
      v44 = CFGetTypeID(v27);
      if (v44 != CFDataGetTypeID())
      {
        goto LABEL_20;
      }

      *buffer = 0;
      if (CFDataGetLength(v27) == 4)
      {
        v50.location = 0;
        v50.length = 4;
        CFDataGetBytes(v27, v50, buffer);
        if (*buffer)
        {
          ramrod_log_msg("IODeviceTree:/defaults/has-xart found\n", v29, v30, v31, v32, v33, v34, v35, v47);
          v7 = 1;
          goto LABEL_20;
        }

        v36 = "IODeviceTree:/defaults/has-xart found but is zero\n";
      }

      else
      {
        v36 = "IODeviceTree:/defaults/has-xart found but is not int sized\n";
      }
    }

    ramrod_log_msg(v36, v29, v30, v31, v32, v33, v34, v35, v47);
LABEL_20:
    CFRelease(v27);
  }

  IOObjectRelease(v25);
LABEL_22:
  if (v7)
  {
    v45 = "We should have an xART partition.\n";
  }

  else
  {
    v45 = "We should not have an xART partition.\n";
  }

  ramrod_log_msg(v45, v37, v38, v39, v40, v41, v42, v43, v47);
  return v7;
}

uint64_t ramrod_get_preboot_partition_device_node(char *a1, size_t __size)
{
  if (!preboot_partition_device_node_path_0)
  {
    return 0;
  }

  strlcpy(a1, &preboot_partition_device_node_path_0, __size);
  return 1;
}

uint64_t ramrod_change_filesystem_permissions_opt_err(uint64_t a1, uint64_t a2, int a3, CFErrorRef *a4)
{
  v5 = a1;
  v19[0] = "/sbin/mount";
  v19[1] = "-u";
  v6 = "-r";
  if (!a3)
  {
    v6 = "-w";
  }

  v19[2] = v6;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = 0;
  v14 = ramrod_execute_command(v19);
  if (v14)
  {
    ramrod_log_msg("Failed to change permissions on %s mounted at %s to %s. Error: %d.\n", v7, v8, v9, v10, v11, v12, v13, v5);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Failed to change permissions on %s mounted at %s to %s. Error: %d.\n", v15, v16, v17, "ramrod_change_filesystem_permissions_opt_err");
  }

  else
  {
    ramrod_log_msg("Changed permissions on %s mounted at %s to %s\n", v7, v8, v9, v10, v11, v12, v13, v5);
  }

  return v14;
}

uint64_t ramrod_mount_filesystem_no_fsck_opt_err(uint64_t a1, char *a2, int a3, CFErrorRef *a4)
{
  bzero(v51, 0x400uLL);
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43[0] = "/sbin/mount_apfs";
  v43[1] = "-R";
  if (a3)
  {
    *&v44 = "-o";
    *(&v44 + 1) = "rdonly";
    v15 = 4;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 2;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  ramrod_log_msg("Creating temporary mount point to mount %s\n", v8, v9, v10, v11, v12, v13, v14, a1);
  a2 = v51;
  __strlcpy_chk();
  if (!mkdtemp(v51))
  {
    v16 = __error();
    ramrod_log_msg("unable to create temporary mount directory (%d). Using %s instead\n", v17, v18, v19, v20, v21, v22, v23, *v16);
    a2 = v51;
    __strlcpy_chk();
  }

LABEL_7:
  v43[v15] = a1;
  v43[v15 | 1u] = a2;
  v43[v15 + 2] = 0;
  mkdir(a2, 0x1C0u);
  if (ramrod_execute_command(v43))
  {
    ramrod_log_msg("mounting %s on %s failed\n", v24, v25, v26, v27, v28, v29, v30, a1);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: mounting %s on %s failed", v31, v32, v33, "ramrod_mount_filesystem_no_fsck_opt_err");
    ramrod_dump_mounted_filesystem_info(v34, v35, v36, v37, v38, v39, v40, v41);
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_log_msg("%s mounted on %s\n", v24, v25, v26, v27, v28, v29, v30, a1);
    return 0;
  }
}

void ramrod_dump_mounted_filesystem_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("%s:**********DUMPING MOUNTED FILESYSTEMS********\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_dump_mounted_filesystem_info");
  v26 = 0;
  v8 = getmntinfo(&v26, 2);
  ramrod_log_msg("%s: %d filesystems are mounted\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_dump_mounted_filesystem_info");
  if (v26)
  {
    if (v8 >= 1)
    {
      v23 = v8 + 1;
      v24 = 2168 * v8 - 2080;
      do
      {
        ramrod_log_msg("%s is mounted at %s\n", v16, v17, v18, v19, v20, v21, v22, v26 + v24);
        --v23;
        v24 -= 2168;
      }

      while (v23 > 1);
    }
  }

  else
  {
    ramrod_log_msg("Failed to get info regarding mounted filesystems\n", v16, v17, v18, v19, v20, v21, v22, v25);
  }

  ramrod_log_msg("%s: *********DONE DUMPING MOUNTED FILESYSTEMS********\n", v16, v17, v18, v19, v20, v21, v22, "ramrod_dump_mounted_filesystem_info");
}

uint64_t ramrod_get_mount_path(const char *a1, char *a2, size_t a3)
{
  v19 = 0;
  v6 = getmntinfo_r_np(&v19, 2);
  if (!v6)
  {
    ramrod_log_msg("Failed to get list of all mounted file systems\n", v7, v8, v9, v10, v11, v12, v13, v18);
    goto LABEL_8;
  }

  if (v6 < 1)
  {
LABEL_8:
    v16 = 1;
    goto LABEL_9;
  }

  v14 = v6;
  f_mntfromname = v19->f_mntfromname;
  while (strcmp(a1, f_mntfromname))
  {
    f_mntfromname += 2168;
    if (!--v14)
    {
      goto LABEL_8;
    }
  }

  strlcpy(a2, f_mntfromname - 1024, a3);
  v16 = 0;
LABEL_9:
  if (v19)
  {
    free(v19);
  }

  return v16;
}

uint64_t ramrod_force_unmount_filesystem(char *a1, int a2)
{
  v3 = (a2 != 0) << 19;
  v60 = off_10004E298;
  v61 = unk_10004E2A8;
  v4 = &v61;
  if (a2)
  {
    v5 = &v61;
    v4 = (&v61 + 8);
    *(&v60 + 1) = "-f";
  }

  else
  {
    v5 = (&v60 + 8);
  }

  *v5 = a1;
  *v4 = 0;
  v6 = 3;
  while (1)
  {
    v59 = 0;
    v58 = xmmword_100042F00;
    memset(v56, 0, sizeof(v56));
    v57 = 0;
    if (!getattrlist(a1, &v58, v56, 0x1CuLL, 8u) && (v57 & 1) == 0)
    {
      ramrod_log_msg("Tried to unmount a volume at '%s' that wasn't mounted. Ignoring the error.\n", v7, v8, v9, v10, v11, v12, v13, a1);
      return 0;
    }

    if (!unmount(a1, v3))
    {
      return 0;
    }

    v14 = __error();
    v15 = *v14;
    v16 = v15 == 35 || v15 == 16;
    v17 = *v14;
    if (!v16)
    {
      break;
    }

LABEL_15:
    strerror(v17);
    ramrod_log_msg("Unmounting '%s' failed with %d: %s.\n", v18, v19, v20, v21, v22, v23, v24, a1);
    ramrod_dump_mounted_filesystem_info(v25, v26, v27, v28, v29, v30, v31, v32);
    ramrod_log_msg("Will retry unmounting '%s' in %u seconds.\n", v33, v34, v35, v36, v37, v38, v39, a1);
    sleep(3u);
    if (!--v6)
    {
      return v15;
    }
  }

  if (v15 == 1)
  {
    if (!ramrod_execute_command(&v60))
    {
      return 0;
    }

    v17 = 1;
    goto LABEL_15;
  }

  strerror(*v14);
  ramrod_log_msg("Unmounting '%s' failed with %d: %s.\n", v41, v42, v43, v44, v45, v46, v47, a1);
  ramrod_dump_mounted_filesystem_info(v48, v49, v50, v51, v52, v53, v54, v55);
  return v15;
}

BOOL _find_tagged_regex(const char *a1, regoff_t a2, char *a3, void *a4, void *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  memset(&v20, 0, sizeof(v20));
  v9 = regcomp(&v20, a3, 265);
  if (v9)
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    __pmatch = 0;
    v22 = 0uLL;
    regerror(v9, &v20, &__pmatch, 0x80uLL);
    ramrod_log_msg("regcomp failed: %s\n", v13, v14, v15, v16, v17, v18, v19, &__pmatch);
    return 0;
  }

  else
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    __pmatch.rm_so = 0;
    v22 = 0uLL;
    __pmatch.rm_eo = a2;
    v10 = regexec(&v20, a1, 0xAuLL, &__pmatch, 7);
    v11 = v10 == 0;
    if (!v10)
    {
      if (a4)
      {
        *a4 = &a1[v22];
      }

      if (a5)
      {
        *a5 = *(&v22 + 1) - v22;
      }
    }

    regfree(&v20);
  }

  return v11;
}

uint64_t ramrod_stash_info_to_file(uint64_t a1, uint64_t a2, uint64_t a3, NSMutableDictionary *a4, int a5)
{
  ramrod_log_msg_cf(@"%s: Stashing info to mount:%s dir:%s file:%s\n", "ramrod_stash_info_to_file", a1, a2, a3);
  if (!a1 || !a2 || !a3 || !a4)
  {
    ramrod_log_msg_cf(@"%s: missing parameters\n", "ramrod_stash_info_to_file", v67, v68);
    return 0;
  }

  ramrod_log_msg_cf(@"%s: Dictionary is %@\n", "ramrod_stash_info_to_file", a4);
  v10 = [[NSString stringWithCString:?], "stringByAppendingPathComponent:", [NSString stringWithCString:a2]];
  if (!v10)
  {
    ramrod_log_msg("%s: Failed to allocate path string to save persisted state\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_stash_info_to_file");
    return 0;
  }

  v18 = v10;
  v19 = +[NSFileManager defaultManager];
  v73 = 0;
  if ([(NSFileManager *)v19 fileExistsAtPath:v18 isDirectory:&v73])
  {
    if ((v73 & 1) == 0)
    {
      ramrod_log_msg_cf(@"%s: Directory(%@) doesn't exist but a file exists with the same name at that location. Cannot proceed.\n", "ramrod_stash_info_to_file", v18, v68);
      return 0;
    }
  }

  else
  {
    ramrod_log_msg_cf(@"%s: Creating directory(%@) to save current state\n", "ramrod_stash_info_to_file", v18);
    v72 = 0;
    if (![(NSFileManager *)v19 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v72])
    {
      ramrod_log_msg_cf(@"%s: Failed to create directory. Error: %@\n", "ramrod_stash_info_to_file", v72, v68);
      return 0;
    }
  }

  v20 = [(NSString *)v18 stringByAppendingPathComponent:[NSString stringWithCString:a3]];
  if (v20)
  {
    v28 = v20;
    if (a5)
    {
      ramrod_log_msg("%s: Attempting to read the current file so we can modify it\n", v21, v22, v23, v24, v25, v26, v27, "ramrod_stash_info_to_file");
      v29 = [NSMutableDictionary dictionaryWithContentsOfFile:v28];
      if (v29)
      {
        v37 = v29;
        [(NSMutableDictionary *)v29 addEntriesFromDictionary:a4];
        a4 = v37;
      }

      else
      {
        ramrod_log_msg("%s: No existing file\n", v30, v31, v32, v33, v34, v35, v36, "ramrod_stash_info_to_file");
      }
    }

    ramrod_log_msg_cf(@"%s: Saving data to %@\n", "ramrod_stash_info_to_file", v28);
    if (([(NSMutableDictionary *)a4 writeToFile:v28 atomically:1]& 1) != 0)
    {
      ramrod_log_msg("%s: Updating file permissions\n", v38, v39, v40, v41, v42, v43, v44, "ramrod_stash_info_to_file");
      v45 = [(NSString *)v28 UTF8String];
      if (v45)
      {
        v53 = v45;
        if (chmod(v45, 0x1F8u))
        {
          v54 = *__error();
          v55 = __error();
          v70 = strerror(*v55);
          ramrod_log_msg_cf(@"%s: Failed to chmod bootedOsStateFile at %@ errno=%d: (%s)..Deleting the file", "fixup_permissions_for_bootedos_state_file", v28, v54, v70);
        }

        else
        {
          v64 = getpwnam("mobile");
          if (v64)
          {
            if (!chown(v53, v64->pw_uid, v64->pw_gid))
            {
              ramrod_log_msg_cf(@"%s: Successfully fixed up permissions for %@", "fixup_permissions_for_bootedos_state_file", v28);
              return 1;
            }

            v65 = *__error();
            v66 = __error();
            v71 = strerror(*v66);
            ramrod_log_msg_cf(@"%s: Failed to chown bootedOSStateFile at %@ errno=%d: (%s)..Deleting the file", "fixup_permissions_for_bootedos_state_file", v28, v65, v71);
          }

          else
          {
            ramrod_log_msg_cf(@"%s: Failed to get uid/gid for mobile user to chown the bootedOSState file..Deleting the file at %@", "fixup_permissions_for_bootedos_state_file", v28, v68, v69);
          }
        }
      }

      else
      {
        ramrod_log_msg("%s: Failed to get c string representation of the bootedOSStateFile path to fixup permissions..Deleting the file", v46, v47, v48, v49, v50, v51, v52, "fixup_permissions_for_bootedos_state_file");
      }

      ramrod_log_msg("%s: Failed to set permissions on stashed file..Deleting it\n", v56, v57, v58, v59, v60, v61, v62, "ramrod_stash_info_to_file");
      v72 = 0;
      [(NSFileManager *)v19 removeItemAtPath:v28 error:&v72];
      if (v72)
      {
        ramrod_log_msg_cf(@"%s: Failed to delete persisted file at %@. Error: %@", "ramrod_stash_info_to_file", v28, v72);
      }
    }

    else
    {
      ramrod_log_msg("%s: Failed to write env data to file\n", v38, v39, v40, v41, v42, v43, v44, "ramrod_stash_info_to_file");
    }
  }

  else
  {
    ramrod_log_msg("%s: Failed to allocate string for the stashed file path\n", v21, v22, v23, v24, v25, v26, v27, "ramrod_stash_info_to_file");
  }

  return 0;
}

uint64_t ___ramrod_execute_command_with_input_data_output_block_block_invoke(uint64_t a1, posix_spawn_file_actions_t *a2)
{
  if (*(a1 + 32) == 1)
  {
    posix_spawn_file_actions_adddup2(a2, 1, 2);
  }

  return 0;
}

uint64_t ___ramrod_execute_command_with_input_data_output_block_block_invoke_2(uint64_t a1, int __fd)
{
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    v4 = *(a1 + 32);
    while (1)
    {
      v5 = write(__fd, v4, v2);
      if (v5 == -1)
      {
        break;
      }

      v4 += v5;
      v6 = v2 <= v5;
      v2 -= v5;
      if (v6)
      {
        return 0;
      }
    }

    v7 = __error();
    v8 = strerror(*v7);
    ramrod_log_msg("write failed for subprocess: %s\n", v9, v10, v11, v12, v13, v14, v15, v8);
  }

  return 0;
}

void ramrod_create_error_internal_va(CFErrorRef *a1, const __CFString *a2, CFIndex a3, const void *a4, const __CFString *a5, va_list a6)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a5, a6);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(v13, kCFErrorDescriptionKey, v14);
        CFRelease(v15);
      }

      if (a4)
      {
        CFDictionaryAddValue(v13, kCFErrorUnderlyingErrorKey, a4);
      }

      *a1 = CFErrorCreate(kCFAllocatorDefault, a2, a3, v13);

      CFRelease(v13);
    }
  }
}

id _options_get_BOOL(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

uint64_t _remove_path_if_exists(void *a1, uint64_t a2)
{
  v4 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v4 fileExistsAtPath:a1])
  {
    return 1;
  }

  v5 = [a1 fileSystemRepresentation];
  ramrod_log_msg("Removing %s\n", v6, v7, v8, v9, v10, v11, v12, v5);
  result = [(NSFileManager *)v4 removeItemAtPath:a1 error:a2];
  if (result)
  {
    return 1;
  }

  return result;
}

id _get_os_preboot_path(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"PrebootDirOverride"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
  {
    v2 = [a1 objectForKeyedSubscript:@"PrebootMountpoint"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
    {
      ramrod_log_msg("%s: RAMROD_SPLAT_OPT_PREBOOT_MOUNTPOINT is required\n", v3, v4, v5, v6, v7, v8, v9, "_get_os_preboot_path");
      return 0;
    }
  }

  return v2;
}

BOOL _get_splat_preboot_paths(void *a1, void *a2, void *a3, void *a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (_options_get_BOOL(a2, @"SafariDownlevelUpdate"))
    {
      v11 = @"downlevel";
    }

    else
    {
      v11 = @"cryptex1";
    }

    v12 = [a1 stringByAppendingPathComponent:v11];
    v13 = v12;
    if (a3)
    {
      *a3 = [v12 stringByAppendingPathComponent:@"current"];
    }

    if (a4)
    {
      *a4 = [v13 stringByAppendingPathComponent:@"proposed"];
    }
  }

  else
  {
    ramrod_log_msg("%s: %s\n", a2, a3, a4, a5, a6, a7, a8, "_get_splat_preboot_paths");
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 2001, 0, @"%s", v15, v16, v17, "preboot directory is nil");
  }

  return a1 != 0;
}

uint64_t ramrod_splat_cleanup(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("%s: Cleaning up proposed directory in preboot\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_splat_cleanup");
  v14 = 0;
  os_preboot_path = _get_os_preboot_path(a1);
  result = _get_splat_preboot_paths(os_preboot_path, a1, 0, &v14, 0, v10, v11, v12);
  if (result)
  {
    return _remove_path_if_exists(v14, 0);
  }

  return result;
}

uint64_t ramrod_create_directory_with_class(_BYTE *a1, mode_t a2, uid_t a3, gid_t a4, int a5, int a6)
{
  if (!a1 || *a1 != 47)
  {
    return 22;
  }

  bzero(v70, 0x400uLL);
  __strlcpy_chk();
  for (i = v70; ; *i = 47)
  {
    v12 = strchr(i + 1, 47);
    i = v12;
    if (v12)
    {
      *v12 = 0;
    }

    memset(&v69, 0, sizeof(v69));
    if (lstat(v70, &v69))
    {
      if (*__error() != 2)
      {
        v20 = *__error();
        v21 = __error();
        strerror(*v21);
        ramrod_log_msg("lstat %s failed: %s\n", v22, v23, v24, v25, v26, v27, v28, v70);
        return v20;
      }

      if (a6)
      {
        ramrod_log_msg("creating directory (owner=%d group=%d mode=%o, class=%d) %s\n", v13, v14, v15, v16, v17, v18, v19, a3);
      }

      if (mkdir(v70, a2 & 0x1FF))
      {
        v20 = *__error();
        v29 = __error();
        v62 = strerror(*v29);
        ramrod_log_msg("mkdir failed: %s\n", v30, v31, v32, v33, v34, v35, v36, v62);
        return v20;
      }

      if (chmod(v70, a2))
      {
        v20 = *__error();
        v37 = __error();
        v63 = strerror(*v37);
        ramrod_log_msg("chmod failed: %s\n", v38, v39, v40, v41, v42, v43, v44, v63);
        return v20;
      }

      if (chown(v70, a3, a4))
      {
        v20 = *__error();
        v45 = __error();
        v64 = strerror(*v45);
        ramrod_log_msg("chown failed: %s\n", v46, v47, v48, v49, v50, v51, v52, v64);
        return v20;
      }

      if ((a5 & 0x80000000) == 0)
      {
        v68 = 0;
        v67 = xmmword_100042F18;
        v66 = a5;
        if (setattrlist(v70, &v67, &v66, 4uLL, 0))
        {
          break;
        }
      }
    }

    if (!i)
    {
      return 0;
    }
  }

  v20 = *__error();
  v53 = __error();
  v65 = strerror(*v53);
  ramrod_log_msg("setattrlist failed: %s\n", v54, v55, v56, v57, v58, v59, v60, v65);
  return v20;
}

void submitRestoreLogFileToLogDir_cold_1()
{
  v0 = *__error();
  _os_assert_log();
  _os_crash();
  __break(1u);
}

NSString *fetch_string_sysctl()
{
  size = 0;
  if (sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0))
  {
    return 0;
  }

  if (!size)
  {
    return 0;
  }

  v0 = malloc_type_malloc(size, 0xF2842898uLL);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (sysctlbyname("kern.bootsessionuuid", v0, &size, 0, 0))
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSString stringWithCString:v1 encoding:4];
  }

  free(v1);
  return v2;
}

uint64_t process_update_result_state(BOOL *a1, char *a2)
{
  string_sysctl = fetch_string_sysctl();
  if (string_sysctl)
  {
    v5 = MGCopyAnswer();
    if (v5)
    {
      v6 = [NSMutableDictionary dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/last_update_result.plist"];
      v12 = v6 != 0;
      if (!v6)
      {
        v44 = 1;
        logfunction("", 1, @"%s: no update result file, assuming 1st boot after a restore\n", v7, v8, v9, v10, v11, "process_update_result_state");
        v13 = [NSMutableDictionary dictionaryWithCapacity:4];
        [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
        [(NSMutableDictionary *)v13 setObject:+[NSDate forKey:"date"], @"PreviousRestoreDate"];
        clear_firmware_specific_data();
        v45 = 0;
        if (!v13)
        {
          string_sysctl = 1;
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v13 = v6;
      v14 = [(NSMutableDictionary *)v6 objectForKey:@"BootUUID"];
      if (v14)
      {
        if (([v14 isEqualToString:string_sysctl] & 1) == 0)
        {
          logfunction("", 1, @"%s: Boot UUID is different - 1st run after reboot\n", v20, v21, v22, v23, v24, "process_update_result_state");
          v25 = [(NSMutableDictionary *)v13 objectForKey:@"TargetOS"];
          if (v25)
          {
            [(NSMutableDictionary *)v13 objectForKey:@"SourceOS"];
            logfunction("", 1, @"%s: Update attempted (%@ -> %@)\n", v26, v27, v28, v29, v30, "process_update_result_state");
          }

          v88 = MGGetStringAnswer();
          v31 = [(NSMutableDictionary *)v13 objectForKey:@"TargetBootManifestHash"];
          v32 = [(NSMutableDictionary *)v13 objectForKey:@"OriginalBootManifestHash"];
          v89 = v32 == 0;
          if (v32)
          {
            if ([v32 isEqualToData:v5])
            {
              v89 = 1;
              if (!v31)
              {
                goto LABEL_11;
              }

              goto LABEL_32;
            }

            v47 = @"%s: Boot manifest hash differs - in different OS\n";
          }

          else
          {
            v47 = @"%s: No boot manifest hash in result state file - assuming same OS\n";
          }

          logfunction("", 1, v47, v33, v34, v35, v36, v37, "process_update_result_state");
          if (!v31)
          {
LABEL_11:
            if (v25)
            {
              logfunction("", 1, @"%s: Update was attempted, but no %@ boot manifest hash is present - using target OS version instead\n", v33, v34, v35, v36, v37, "process_update_result_state");
              if (!v88)
              {
                v43 = @"%s: Couldn't fetch current OS version to compare with target OS version - assuming we are in the target OS (%@)\n";
                goto LABEL_40;
              }

              if ([v25 isEqualToString:v88])
              {
                v43 = @"%s: in target OS [%@]\n";
LABEL_40:
                v83 = 1;
                logfunction("", 1, v43, v38, v39, v40, v41, v42, "process_update_result_state");
                goto LABEL_42;
              }

              logfunction("", 1, @"%s: in different OS than target (target: %@ - current: %@)\n", v38, v39, v40, v41, v42, "process_update_result_state");
              v83 = 0;
LABEL_42:
              v84 = v12;
              v85 = v5;
              v86 = a1;
              v87 = a2;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              v53 = [&off_100058858 countByEnumeratingWithState:&v90 objects:v94 count:16];
              if (v53)
              {
                v59 = v53;
                v60 = *v91;
                do
                {
                  for (i = 0; i != v59; i = i + 1)
                  {
                    if (*v91 != v60)
                    {
                      objc_enumerationMutation(&off_100058858);
                    }

                    v62 = *(*(&v90 + 1) + 8 * i);
                    v63 = copy_nvram_variable(v62);
                    [(NSMutableDictionary *)v13 removeObjectForKey:v62];
                    if (v63)
                    {
                      v64 = [NSString alloc];
                      BytePtr = CFDataGetBytePtr(v63);
                      v66 = [v64 initWithBytes:BytePtr length:CFDataGetLength(v63) encoding:4];
                      [(NSMutableDictionary *)v13 setObject:v66 forKey:v62];

                      CFRelease(v63);
                    }
                  }

                  v59 = [&off_100058858 countByEnumeratingWithState:&v90 objects:v94 count:16];
                }

                while (v59);
              }

              if (v89)
              {
                logfunction("", 1, @"%s: Failed Backward - in original OS after update was attempted\n", v54, v55, v56, v57, v58, "process_update_result_state");
                [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
                a1 = v86;
                a2 = v87;
                v5 = v85;
                v12 = v84;
                v45 = v88;
              }

              else
              {
                v5 = v85;
                v12 = v84;
                v45 = v88;
                if (v83)
                {
                  v67 = [(NSMutableDictionary *)v13 objectForKey:@"ota-result"];
                  a1 = v86;
                  a2 = v87;
                  if (v67)
                  {
                    if (![v67 isEqualToString:@"success"])
                    {
                      logfunction("", 1, @"%s: Failed Forward - made it to the new OS with a failure indicated in NVRAM [%@]\n", v73, v74, v75, v76, v77, "process_update_result_state");
                      [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
                      record_firmware_failures(v13);
                      goto LABEL_61;
                    }

                    logfunction("", 1, @"%s: Successful Update - made it to the new OS with success set in NVRAM\n", v73, v74, v75, v76, v77, "process_update_result_state");
                  }

                  else
                  {
                    logfunction("", 1, @"%s: made it to the new OS, but there is no ota-result set. Assuming success.\n", v68, v69, v70, v71, v72, "process_update_result_state");
                  }

                  [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
                  clear_firmware_specific_data();
                }

                else
                {
                  logfunction("", 1, @"%s: OS is different than target OS for update - update must have failed into recovery with a subsequent restore\n", v54, v55, v56, v57, v58, "process_update_result_state");
                  [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
                  [(NSMutableDictionary *)v13 setObject:+[NSDate forKey:"date"], @"PreviousRestoreDate"];
                  clear_firmware_specific_data();
                  a1 = v86;
                  a2 = v87;
                }
              }

LABEL_61:
              v44 = !v89;
              _clear_apply_state(v13);
              [(NSMutableDictionary *)v13 setObject:+[NSDate forKey:"date"], @"PreviousUpdateDate"];
              v94[0] = 0;
              if (![string_sysctl writeToFile:@"/var/run/FirstBootAfterUpdate" atomically:1 encoding:4 error:v94] || v94[0])
              {
                logfunction("", 1, @"%s: Failed to write firstBootAfterUpdate cookie file to /var/run (%@)\n", v78, v79, v80, v81, v82, "process_update_result_state");
              }

              else
              {
                logfunction("", 1, @"%s: Successfully wrote firstBootAfterUpdate cookie file to /var/run\n", v78, v79, v80, v81, v82, "process_update_result_state");
              }

              goto LABEL_19;
            }

            goto LABEL_36;
          }

LABEL_32:
          v83 = [v31 isEqualToData:v5];
          if (v83)
          {
            logfunction("", 1, @"%s: in target OS [%@] - target manifest hash matches current boot manifest hash\n", v48, v49, v50, v51, v52, "process_update_result_state");
          }

          else
          {
            logfunction("", 1, @"%s: not in target OS - target manifest hash does not match current boot manifest hash\n", v48, v49, v50, v51, v52, "process_update_result_state");
          }

          if (v25)
          {
            goto LABEL_42;
          }

LABEL_36:
          if (v89)
          {
            v44 = 0;
            v12 = 0;
            v45 = v88;
          }

          else
          {
            v45 = v88;
            v44 = 1;
            logfunction("", 1, @"%s: new OS booted without an update (%@) - tethered restore has been done\n", v33, v34, v35, v36, v37, "process_update_result_state");
            [(NSMutableDictionary *)v13 setObject:[NSNumber forKey:"numberWithLong:" numberWithLong:?], @"PreviousUpdateState"];
            [(NSMutableDictionary *)v13 setObject:+[NSDate forKey:"date"], @"PreviousRestoreDate"];
            clear_firmware_specific_data();
            v12 = 0;
          }

          goto LABEL_19;
        }
      }

      else
      {
        logfunction("", 1, @"%s: No boot UUID in result state file - assuming same boot\n", v15, v16, v17, v18, v19, "process_update_result_state");
      }

      v44 = 0;
      v12 = 0;
      v45 = 0;
LABEL_19:
      [(NSMutableDictionary *)v13 setObject:string_sysctl forKey:@"BootUUID"];
      [(NSMutableDictionary *)v13 setObject:v5 forKey:@"OriginalBootManifestHash"];
      string_sysctl = 1;
      [(NSMutableDictionary *)v13 writeToFile:@"/private/var/MobileSoftwareUpdate/last_update_result.plist" atomically:1];
      goto LABEL_20;
    }

    v45 = 0;
    v12 = 0;
    v44 = 0;
    string_sysctl = 0;
  }

  else
  {
    v5 = 0;
    v45 = 0;
    v12 = 0;
    v44 = 0;
  }

LABEL_20:
  if (a1)
  {
    *a1 = v12;
  }

  if (a2)
  {
    *a2 = v44;
  }

  if (v5)
  {
  }

  if (v45)
  {
    CFRelease(v45);
  }

  return string_sysctl;
}

uint64_t _AMRestorePartitionOpenFileWithURL_cold_2()
{
  v0 = __error();
  strerror(*v0);
  return AMSupportLogInternal();
}

void __os_cleanup_iorelease_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  OUTLINED_FUNCTION_1(v6, v3, v4, v5, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_iorelease_cold_1_0(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_ioclose_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_iorelease_cold_1_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1(v3, v4, v5, v6, &_mh_execute_header);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
}